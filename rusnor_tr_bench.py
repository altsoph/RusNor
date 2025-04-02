import re
import os
import json
import argparse
import anthropic
import json_repair


def query_anthropic(prompt: dict, system: str=None, tokens: int=8192, 
                    temp:float=0., model_id:str='claude-3-5-sonnet-20241022') -> str:
    if system:
        completion = anthropic.Anthropic().messages.create(
            model=model_id,
            max_tokens=tokens,
            system=system,
            temperature= temp,
            messages=prompt,
        )
    else:
        completion = anthropic.Anthropic().messages.create(
            model=model_id,
            max_tokens=tokens,
            temperature= temp,
            messages=prompt,
        )        
    return completion.content[0].text

def parse_res(raw_label: dict) -> dict:
    if re.search(r'<final_answer>(.*?)</final_answer>', raw_label, re.DOTALL):
        final_answer = re.search(r'<final_answer>(.*?)</final_answer>', raw_label, re.DOTALL).group(1)
    elif re.search(r'<final_answer>(.*?)<', raw_label, re.DOTALL):
        final_answer = re.search(r'<final_answer>(.*?)<', raw_label, re.DOTALL).group(1)
    elif "<final_answer>" in raw_label:
        final_answer = raw_label.split("<final_answer>",1)[1]
    else:
        return None
    final_answer = final_answer.strip().split('\n')
    res = []
    for idx, it in enumerate(final_answer):
        if '. ' in it:
            res.append( it.split('. ')[1] )
    return res


def flatten_vocab(vocab: dict) -> str:
    src_voc_lines = []
    for it in vocab:
        # print(it)
        for q in it['variants']:
            s = f"For the concept of '{it['entity']['english']}' the word '{q['word']}' can be used"
            cc = []
            for o in q['origin']:
                if o['lang'] == 'rus':
                    cc.append(f"'{o['word']} (from {o['lang']})'")
            if cc:
                s += ", possibly originated from " + ", ".join(cc)
            s += '.'
            src_voc_lines.append( s )
    return "\n".join(src_voc_lines)

def main(args):
    with open('tr_exp/tr_bench.json', 'r', encoding='utf-8') as f:
        data = json.loads(f.read())

    with open(args.vocabulary, 'r', encoding='utf-8') as f:
        vocabulary = json.load(f)

    with open(args.sentences, 'r', encoding='utf-8') as f:
        sentences = f.read()

    with open(args.lang_choice_rules, 'r', encoding='utf-8') as f:
        lang_choice_rules = f.read()

    with open(args.phonetic_rules, 'r', encoding='utf-8') as f:
        phonetic_rules = f.read()

    with open(args.grammar_rules, 'r', encoding='utf-8') as f:
        grammar_rules = f.read()

    with open(args.system_prompt, 'r', encoding='utf-8') as f:
        system = f.read()

    with open('prompts/tr_bench.tpl', 'r', encoding='utf-8') as f:
        prompt_tpl = f.read()

    ru_text = []
    rn_text = []
    no_text = []

    for idx, it in enumerate(data):
        ru_text.append( f'{idx+1}. {it["russian"]}' )
        rn_text.append( f'{idx+1}. {it["russenorsk"]}' )
        no_text.append( f'{idx+1}. {it["norwegian"]}' )

    ru_text = "\n".join(ru_text)
    rn_text = "\n".join(rn_text)
    no_text = "\n".join(no_text)

    for from_lang, to_lang, text, src_code, tgt_code in (('Russian', 'Russenorsk', ru_text, 'ru', 'rn'), ('Russenorsk', 'Norwegian', rn_text, 'rn', 'no'), ('Norwegian', 'Russenorsk', no_text, 'no', 'rn'), ('Russenorsk', 'Russian', rn_text, 'rn', 'ru')):
        pair = f'{src_code}2{tgt_code}'
        print(pair)
        prompt = prompt_tpl.format(text=text, source_lang=from_lang, target_lang=to_lang, vocabulary=flatten_vocab(vocabulary), examples=sentences, source_lang_rules=lang_choice_rules, word_adaptation_rules=phonetic_rules, grammar_rules=grammar_rules)
        with open(f'{args.output_file}.{pair}.prompt.tpl', 'w', encoding='utf-8') as f:
            f.write(prompt)
        res = query_anthropic([{"role": "user", "content": prompt}], system=system)
        with open(f'{args.output_file}.{pair}.raw_res.txt', 'w', encoding='utf-8') as f:
            f.write(res)
        res = parse_res(res)
        with open(f'{args.output_file}.{pair}.res.json', 'w', encoding='utf-8') as f:
            f.write(json.dumps(res))
        for idx, it in enumerate(res):
            data[idx][pair] = it
    with open(f'{args.output_file}.full_res.json', 'w', encoding='utf-8') as f:
        f.write(json.dumps(data, indent=4, ensure_ascii=False))

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-sys', '--system_prompt', type=str, 
                        default='prompts/system.txt',
                        help='system prompt')
    parser.add_argument('-voc', '--vocabulary', type=str, 
                        default='vocabulary/rusnor.v0.1.json',
                        help='vocabulary')
    parser.add_argument('-sent', '--sentences', type=str, 
                        default='vocabulary/sentence_examples.txt',
                        help='sentence examples')
    parser.add_argument('-lc', '--lang-choice-rules', type=str, 
                        default='rules/lang-choice.txt',
                        help='list of lang-choice rules.')
    parser.add_argument('-pr', '--phonetic-rules', type=str, 
                        default='rules/phonetic.txt',
                        help='list of phonetic rules.')
    parser.add_argument('-gr', '--grammar-rules', type=str, 
                        default='rules/grammar.txt',
                        help='list of grammar rules.')
    parser.add_argument('-o', '--output-file', type=str,
                        default=None, required=True,
                        help='Output file')
    args = parser.parse_args()
    main(args)
