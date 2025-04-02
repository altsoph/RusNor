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

</source_language_selection_rules>

<word_adaptation_rules>

</word_adaptation_rules>

<grammar_rules>

</grammar_rules>

<task>
Your task is to translate the numerated list of sentences given inside the <input_text> tags from Russenorsk into Norwegian strictly following the instruction from <instructions> tags.
</task>

<instructions>
- First, enumerate all the words and concepts in the input text, so we will have a list of necessary concepts (you can write them down inside the <thinking> tags).
- Next, decide, which of these concepts are presented in the <vocabulary> or <examples> -- explicitly or maybe could be described as a construction of several existing. Write them down.
- Now, for each of the rest concepts (which are not covered by the <vocabulary> or <examples>), decide what word from what language should we borrow (based on the <choice_language_instruction>). Write them down.
- Then, for each of the borrowed word, simplify it to the form natural for Russenorsk, based on the <word_transformation_instruction>. Write them down.
- Compile the sentences based on <grammar_rules>.
- Finally, inside the <final_answer> tag, provide the numerated list of translated sentences and nothing else.
</instructions>