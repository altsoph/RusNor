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

</source_language_selection_rules>

<word_adaptation_rules>

</word_adaptation_rules>

<grammar_rules>

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