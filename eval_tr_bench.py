import sys
import json
import unicodedata
import nltk
from nltk.translate.meteor_score import meteor_score
from sacrebleu.metrics import CHRF
# nltk.download('wordnet')  # for METEOR


def strip_diacritics(text):
    normalized = unicodedata.normalize("NFD", text)
    return ''.join(c for c in normalized if unicodedata.category(c) != 'Mn')

def preprocess(text):
    text = strip_diacritics(text)
    return text.lower()

input_fn = sys.argv[1]

data = json.load(open(input_fn, encoding='utf-8'))
chrf = CHRF()

for tr, tgt in (('rn2ru', 'russian'), ('ru2rn', 'russenorsk'), ('no2rn', 'russenorsk'), ('rn2no', 'norwegian'), ('russenorsk', 'norwegian'), ('norwegian', 'russenorsk')):
    preds_clean = [preprocess(it[tr]) for it in data]
    refs_clean = [preprocess(it[tgt]) for it in data]
    print(f'=== {tr} ===')
    chrf_score = chrf.corpus_score(preds_clean, [refs_clean])
    print(f"chrF score: {chrf_score.score:.2f}")
    meteor_scores = [
        meteor_score([ref.split()], pred.split())
        for pred, ref in zip(preds_clean, refs_clean)
    ]
    avg_meteor = sum(meteor_scores) / len(meteor_scores)
    print(f"METEOR score: {avg_meteor:.4f}")

