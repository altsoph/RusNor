Analyse this data inside the <vocabulary>, <examples>, <input_text>, <source_language_selection_rules>, <word_adaptation_rules>, and <grammar_rules> tags and solve the task described below inside <task> tags.

<vocabulary>

</vocabulary>

<examples>

</examples>

<input_text>
1. burman grot robotom
2. burman zakrepiko trosa lita gran’ nemnozko
3. da grot sainfærdi, tak njet schevaa
4. da, da — maaja kopom altsamma, davai paa skip kom
5. da, da! davai paa skip kom, brat, paa tjei driki
6. davai paa moia malenka tabaska presentom
7. davai! muki på halvpart belaja, på halvpart tjornja
8. davai! subadtka i paltus как treska, а у moja mala, mala, bjelaja moka
9. dåvåj paa moja skib kjai drikkom
10. gilbert, gammel gо ven sprek på måja tvåja grot rik
11. hos moja bolsjoi piksa og treska, lite subadtka og paltuska. kak pris på tvøya?
12. hår manga ålenej du fara
13. ist tvoja fiska na moj paluba!
14. kakai tovara kopisli?
15. kjøp i seika, træska, tiksa aa balduska?
16. kor ju ikke paa moja mokka klådi?
17. kristus grot vrei, tvoja ljugom
18. kåk våra ju prodatli
19. mangoli aar måja njet småtrom tvåja
20. mgja njét skaffom govedina paa den vekkel
21. moja ette ort perevoj ras paa norge stannom
22. moja paa ånder kantor, nokka vin drikkom, saa nokka lite pjan kom
23. moja ska si paa ju: как ju vina trinke, kristus grot vre
24. moja smotrom junga kralom tros
25. nogoli dag tvåja reisa på arckangel otsuda
26. nå gaima kanskje trovva på presentom
27. on blir korosjo rybak?
28. principal grot pjan i på kåna kludi, ja kanske på vater kastom
29. prinsipal sjisjas på dekk
30. tvoja siin bosjoi junka, krepkii junka
31. tyi kopite ryiba på morgen?
32. varsegо paa kajuta marsjirom!
33. vot moja pen’ga imej!
34. как ju leva?
35. как sprek po norsk
</input_text>

<source_language_selection_rules>
Rules for selecting source language and words in Russenorsk:

1. Primary Domain Rule:
- Use Norwegian for maritime/nautical terminology
- Use Russian for trade goods and household items
- Use both languages for crucial trade/interaction terms

2. Functional Necessity Rule:
- Core concepts (numbers, basic verbs, common nouns) should have variants from both languages
- Choose simpler pronunciation when multiple options exist

3. Cultural Context Rule:
- Use source language of the culture that dominates the concept's domain
- For shared cultural concepts, prefer the simpler or shorter term

4. Phonetic Integration Rule:
- Prefer words that:
  * Are shorter and easier to pronounce
  * Match existing Russenorsk phonetic patterns
  * Can be easily modified with Russenorsk suffixes

5. Trade Interaction Rule:
- Use Russian for seller-side terminology
- Use Norwegian for buyer-side terminology
- Use both for neutral trade terms

6. Modern Concept Rule:
- Use Norwegian for modern/urban/official concepts
- Use Russian for traditional/household items

7. Merger Preference Rule:
- When words are similar in both languages, create a hybrid form
- Preserve recognizable roots from source languages

These rules should be applied in order of priority, with functional necessity and trade interaction rules taking precedence over others when conflicts arise.
</source_language_selection_rules>

<word_adaptation_rules>
1. Phonological Rules:
- Replace Russian х → k
- Replace Russian в → v
- Replace Russian ш, щ, ж → s
- Simplify consonant clusters by:
  * Adding vowels between consonants
  * Dropping one of the consonants
  * Converting complex sounds to simple ones

2. Vowel Rules:
- Convert Russian о → å in stressed positions
- Preserve Norwegian å
- Simplify Russian ё → e/jo
- Keep basic vowels a, e, i, o, u
- Drop complex Russian vowel patterns

3. Morphological Rules:
For Verbs:
- Add -om to verb stems (primary rule)
- Alternative: use simplified stem + -a

For Nouns:
- Add -a to basic stems
- Add -ka to some stems (especially for tools/items)
- For Russian nouns: drop complex endings, add -a/-ka

For Adjectives:
- Convert Russian -ый/-ий → -i
- Convert Norwegian -ig → -i
- Use -li ending for some qualitative adjectives

4. Word Structure Rules:
- Prefer bisyllabic structure
- Keep stress on first syllable where possible
- Allow compound words but simplify their components
- Standardize number endings to -it (from Russian)

5. General Principles:
- Maintain semantic transparency
- Prefer simpler phonological patterns
- Use regular endings for word classes
- Allow variation but within predictable patterns
</word_adaptation_rules>

<grammar_rules>
1. Basic Sentence Structure:
- Use Subject-Verb-Object (SVO) order
- Keep sentences simple - no complex subordination
- Join simple sentences with "saa" (and/then)
- Use "paa" as universal preposition for:
  * location ("paa skib")
  * direction ("paa Norge")
  * possession ("paa moja")
  * time ("paa den dag")

2. Verb Rules:
- Add -om/-um to verb stem for general form
- Use same verb form for all persons/numbers
- No tense marking needed
- Exception: Some common verbs (har, skal, bli) used without -om

3. Noun Rules:
- Use singular form only - no plural marking
- No articles needed
- No case marking
- Place numbers and adjectives before nouns
- Mark possession with "paa" + pronoun

4. Pronoun Usage:
- Use basic forms: moja/måja (I), tvoja/tvåja (you), on (he/it)
- Same form for subject and object
- For possession, use "paa" + pronoun

5. Questions:
- Use question words: kak (how), kor (where), nogoli (how much)
- Optionally invert word order
- Add question mark or use rising intonation

6. Negation:
- Place "ikke" or "njet" before what is being negated
- Use single negation only

7. Adjectives:
- Place before nouns
- No agreement/inflection needed
- Common intensifiers: grot (very/big), lita (little)

8. Numbers:
- Place directly before nouns
- No agreement needed
</grammar_rules>

<task>
Your task is to translate the numerated list of sentences given inside the <input_text> tags from Russenorsk into Russian strictly following the instruction from <instructions> tags.
</task>

<instructions>
- First, enumerate all the words and concepts in the input text, so we will have a list of necessary concepts (you can write them down inside the <thinking> tags).
- Next, decide, which of these concepts are presented in the <vocabulary> or <examples> -- explicitly or maybe could be described as a construction of several existing. Write them down.
- Now, for each of the rest concepts (which are not covered by the <vocabulary> or <examples>), decide what word from what language should we borrow (based on the <choice_language_instruction>). Write them down.
- Then, for each of the borrowed word, simplify it to the form natural for Russenorsk, based on the <word_transformation_instruction>. Write them down.
- Compile the sentences based on <grammar_rules>.
- Finally, inside the <final_answer> tag, provide the numerated list of translated sentences and nothing else.
</instructions>