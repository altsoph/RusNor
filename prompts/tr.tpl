Analyse this data inside the <vocabulary>, <examples>, <<input_text>, <source_language_selection_rules>, <word_adaptation_rules>, and <> tags and solve the task described below inside <task> tags.

<vocabulary>
{vocabulary}
</vocabulary>

<examples>
{examples}
</examples>

<input_text>
{text}
</input_text>

<source_language_selection_rules>
{source_lang_rules}
</source_language_selection_rules>

<word_adaptation_rules>
{word_adaptation_rules}
</word_adaptation_rules>

<grammar_rules>
{grammar_rules}
</grammar_rules>


<task>
Your task is to translate the text from <input_text> tags into Russenorsk strcitly following the instruction from <instructions> tags.
</task>

<instructions>
- First, enumerate all the words and concepts in the input text, so we will have a list of necessary concepts (you can write them down inside the <thinking> tags).
- Next, decide, which of these concepts are presented in the <vocabulary> or <examples> -- explicitly or maybe could be described as a construction of several existing. Write them down.
- Now, for each of the rest concepts (which are not covered by the <vocabulary> or <examples>), decide what word from what language should we borrow (based on the <choice_language_instruction>). Write them down.
- Then, for each of the borrowed word, simplify it to the form natural for Russenorsk, based on the <word_transformation_instruction>. Write them down.
- Compile the sentences based on <grammar_rules>.
- Finally, in <final_answer> tag, merge information into the translation, and try to save the original style, rhythm and rhymes if they are exist.
</instructions>