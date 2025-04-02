Analyse this data inside the <vocabulary>, <examples>, <input_text>, <source_language_selection_rules>, <word_adaptation_rules>, and <grammar_rules> tags and solve the task described below inside <task> tags.

<vocabulary>

</vocabulary>

<examples>

</examples>

<input_text>
1. рыбак много работает
2. рыбак, сделай леску немного прочнее
3. да, совершенно верно, это ничего не дает
4. да-да, я все куплю, пожалуйста, заходите на борт
5. да, да! поднимайся на борт, брат, и выпей
6. пожалуйста, дай мне немного табака
7. но отпусти. вы получаете половину пшеничной муки и половину ржаной муки.
8. давай! сом и палтус весят столько же, сколько треска, но пшеничной муки у меня мало.
9. пожалуйста, выпейте чай на борту со мной.
10. мой старый добрый друг гильберт сказал мне, что ты очень богат.
11. у меня есть крупная пикша и треска, немного сома и небольшой палтус. какую цену вы платите?
12. со сколькими оленями вы путешествуете?
13. твоя рыба в моей лодке!
14. какие товары вы хотите купить?
15. вы покупаете сей, треску, пикшу и палтус.
16. почему ты не принес мне муки?
17. христос очень злится, потому что ты лжешь
18. какие товары вам нужно продать
19. много лет я не видел тебя
20. я не ем соленое мясо на этой неделе
21. в этом году я впервые в норвегии.
22. я был в другой конторе и пил вино; потом я немного напился
23. я вам скажу: когда вы пьете вино, христос очень гневается
24. я видел, что мальчик украл веревку
25. сколько дней вы потратили на дорогу из архангельска сюда?
26. а теперь тезка, дай мне немного дров
27. станет ли он хорошим рыбаком?
28. капитан был сильно пьян и избил жену, а возможно, и бросил ее в воду
29. шкипер скоро выйдет на палубу
30. твой сын стал большим мальчиком, сильным мальчиком
31. вы покупаете рыбу рано утром?
32. пожалуйста, спуститесь в каюту!
33. вот мои деньги!
34. как поживаешь?
35. как это называется по-норвежски?
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
Your task is to translate the numerated list of sentences given inside the <input_text> tags from Russian into Russenorsk strictly following the instruction from <instructions> tags.
</task>

<instructions>
- First, enumerate all the words and concepts in the input text, so we will have a list of necessary concepts (you can write them down inside the <thinking> tags).
- Next, decide, which of these concepts are presented in the <vocabulary> or <examples> -- explicitly or maybe could be described as a construction of several existing. Write them down.
- Now, for each of the rest concepts (which are not covered by the <vocabulary> or <examples>), decide what word from what language should we borrow (based on the <choice_language_instruction>). Write them down.
- Then, for each of the borrowed word, simplify it to the form natural for Russenorsk, based on the <word_transformation_instruction>. Write them down.
- Compile the sentences based on <grammar_rules>.
- Finally, inside the <final_answer> tag, provide the numerated list of translated sentences and nothing else.
</instructions>