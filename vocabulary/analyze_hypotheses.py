import json

DICTIONARY_PATH = "rusnor.v0.1.json"

DICTIONARY = json.load(open(DICTIONARY_PATH, "r"))

def few_single_source_synonyms():
    """
    Single-source synonymy appears to have gone unnoticed in the literature,
    though synonym groups of this type also occur,
    albeit not as frequently as multisource synonym groups

    (Was Russenorsk a Continuum?: Interpreting Synonyms in a Multi-Lexifier Pidgin)
    """
    print("Single-source synonyms:")
    for word in DICTIONARY:
        if any(len(variant["origin"]) != 1 for variant in word["variants"]):
            continue
        variant_origins = [variant["origin"][0]["lang"] for variant in word["variants"]]
        if len(variant_origins) == 1:
            continue
        if len(set(variant_origins)) == 1:
            synonyms = [variant["word"] for variant in word["variants"]]
            print(f'\tthe word {word["entity"]["english"]} has {len(variant_origins)} single-source {variant_origins[0]} synonyms ({", ".join(synonyms)})')
    """
    The results contain a lot of false positives, cause in many cases we are talking about many forms of the same word

    Single-source synonyms found:
       - the word friend, comrade has 2 single-source Norwegian synonyms (venn, kamerat)
       - the word goodbye, farewell has 2 single-source Russian synonyms (dosvidanie, prosjai) (also could be found in "Was Russenorsk a Continuum"?)
       - the word to go, walk has 1 single-source Norwegian synonyms (spaserom, gå) // well, maybe not quite, those are just two different words for to go and to walk
    
    The example ‘a little (indefinite pronoun)’ = nokka, litt (N.) from "Was Russenorsk a Continuum?" does not seem to be a single-source synonyms, cause we could also see the word "mala" with a clear Russian origin.

    Overall, we could CONFIRM that single-source synonyms exist, but are extremely rare.
    """

def goods_have_no_doublets():
    print("Goods (other than fish) with doublets:")
    for word in DICTIONARY:
        if "goods" not in word["classes"]:
            continue
        if "fish" in word["classes"]:
            continue
        if any(len(variant["origin"]) != 1 for variant in word["variants"]):
            continue
        variant_origins = [variant["origin"][0]["lang"] for variant in word["variants"]]
        if len(set(variant_origins)) >= 2:
            synonyms = [variant["word"] for variant in word["variants"]]
            print(f'\tthe word {word["entity"]["english"]} has {len(variant_origins)} multi-source ({", ".join(variant_origins)}) synonyms ({", ".join(synonyms)})')
        
    """As stated in "Was Russenorsk a Continuum?", doublets though exist, but are very rare,
        and both examples found in the dictionary are also mentioned in the article:
        the word birch bark has 2 multi-source (Russian, Norwegian Bokmål) synonyms (beresta, never)
        the word fox fur has 2 multi-source (German, Russian) synonyms (kiraganka, lisitska)
    """

def analyze_hypotheses():
    few_single_source_synonyms()
    goods_have_no_doublets()


if __name__ == "__main__":
    analyze_hypotheses()