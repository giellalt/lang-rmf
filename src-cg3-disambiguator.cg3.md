

# Kalo Finnish Romani  disambiguator 

This is a file for automatic syntactic analysis of Kalo Finnish  Romani.
It is written within the *Constraint grammar* formalism.
It is in an initial state, containing only a handful of rules.

## Tags and sets 

This section just defines all grammatical tags from the morphology.

# Rule section

## Adposition rules

Rule **Po**: Pre or post? Removes Pr reading when Gen is to the left and not to the right.

## Adjective rules

Rule **Msc** selects masculine adjective if following noun is masculine
Rule **Fem** selects feminine adjective if following noun is feminine

## Pronoun rules

Rule **Pers** removes Poss if next word is verb (to be refined)

## Determiner rules

Rule **DetSg** removes Pl reading of Det if next word is singular noun.

Rule **DetSgNP** removes Pl reading of Det if to the left is singular noun and only pre-np words inbetween

## Verb rules

Rule **Sg1** selects Sg1 if nominative *me* to the left. 

Rule **Sg3** removes Pl3 reading for verb if word to the left is singular nominative N or Pron.

* * *
<small>This (part of) documentation was generated from [src/cg3/disambiguator.cg3](https://github.com/giellalt/lang-rmf/blob/main/src/cg3/disambiguator.cg3)</small>