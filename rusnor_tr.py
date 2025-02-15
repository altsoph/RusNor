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
    return final_answer


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
    with open(args.input_file, 'r', encoding='utf-8') as f:
        text = f.read()

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

    with open('prompts/tr.tpl', 'r', encoding='utf-8') as f:
        prompt_tpl = f.read()

    prompt = prompt_tpl.format(text=text, vocabulary=flatten_vocab(vocabulary), examples=sentences, source_lang_rules=lang_choice_rules, word_adaptation_rules=phonetic_rules, grammar_rules=grammar_rules)
    with open(f'{args.output_file}.prompt.tpl', 'w', encoding='utf-8') as f:
        f.write(prompt)
    res = query_anthropic([{"role": "user", "content": prompt}], system=system)
    with open(f'{args.output_file}.raw_res.txt', 'w', encoding='utf-8') as f:
        f.write(res)
    res = parse_res(res)
    with open(f'{args.output_file}.res.txt', 'w', encoding='utf-8') as f:
        f.write(res)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-sys', '--system_prompt', type=str, 
                        default='prompts/system.txt',
                        help='vocabulary')
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
    parser.add_argument('-i', '--input-file', type=str, 
                        default=None, required=True,
                        help='Text to translate')
    parser.add_argument('-o', '--output-file', type=str,
                        default=None, required=True,
                        help='Output file')
    args = parser.parse_args()
    main(args)
