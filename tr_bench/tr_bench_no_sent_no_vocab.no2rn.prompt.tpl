Analyse this data inside the <vocabulary>, <examples>, <input_text>, <source_language_selection_rules>, <word_adaptation_rules>, and <grammar_rules> tags and solve the task described below inside <task> tags.

<vocabulary>

</vocabulary>

<examples>

</examples>

<input_text>
1. fiskeren arbeider meget
2. fisker, gjør trossen litt fast
3. ja meget sandt, det gjør ingenting
4. ja, ja, jeg kjøper alt, værsaagod at komme ombord
5. ja, ja! yærsaagod kom ombord, bror, og drik the
6. vær saa snild give mig lidt tobak
7. men la gå. du får halvparten hvetemel og halvparten rugmel
8. la gå! steinbit og kveite veies som torsk, men hos meg har jeg lite hvetemel
9. vær saa god at drikke te om bord hos mig
10. min gamle gode ven hilbert har fortalt mig, at du er meget rik
11. jeg har stor hyse og torsk, litt steinbit og småkveite. hvilken pris betaler du?
12. med huru många renar reser du
13. er din fisk på min båt!
14. hvadslags varer vil du kjøpe?
15. kjøber de sei, torsk, hyse og kveite
16. hvorfor bragte du mig ikke mel?
17. kristus er svært vred fordi du ljuger
18. hvad varer har du at sælge
19. mange år har jeg ikke seet dig
20. jeg spiser ikke saltkjøtt i denne uke
21. jeg er iaar for første gang i norge
22. jeg var paa et andet kontor, drak noget vin; saa blev jeg litt fuld
23. jeg skal si dig: naar du drikker vin, er kristus meget vred
24. jeg så, det, gutten stjal trossen
25. hvor mange dage har du brugt på reisen fra archangel og hertil
26. nå navnebror, gi meg litt ved
27. han skal bli en god fisker?
28. kapteinen var svært full og slo kona, og kanskje kasta han henne i vannet
29. skipperen kommer snart på dekk
30. din sønn er blitt en stor gut, sterk gut
31. du kjøper fisk på morgenkvisten?
32. vær saa god at gaa ned i kahytten!
33. her har du pengene mine!
34. hvorledes lever de?
35. hvad heter det på norsk
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
Your task is to translate the numerated list of sentences given inside the <input_text> tags from Norwegian into Russenorsk strictly following the instruction from <instructions> tags.
</task>

<instructions>
- First, enumerate all the words and concepts in the input text, so we will have a list of necessary concepts (you can write them down inside the <thinking> tags).
- Next, decide, which of these concepts are presented in the <vocabulary> or <examples> -- explicitly or maybe could be described as a construction of several existing. Write them down.
- Now, for each of the rest concepts (which are not covered by the <vocabulary> or <examples>), decide what word from what language should we borrow (based on the <choice_language_instruction>). Write them down.
- Then, for each of the borrowed word, simplify it to the form natural for Russenorsk, based on the <word_transformation_instruction>. Write them down.
- Compile the sentences based on <grammar_rules>.
- Finally, inside the <final_answer> tag, provide the numerated list of translated sentences and nothing else.
</instructions>