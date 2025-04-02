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

</source_language_selection_rules>

<word_adaptation_rules>

</word_adaptation_rules>

<grammar_rules>

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