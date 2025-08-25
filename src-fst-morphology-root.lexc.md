
# The Kalo Finnish Romany *root.lexc* file                    

This file defines all **multicharacter symbols**, and contains the initial lexicon **Root**.

## Analysis symbols
The morphological analyses of wordforms for the Romany
language are presented in this system in terms of the following symbols.
**Note that some of the tags still are copied from other language versions**

### Parts-of-speech tags:
* **+N +A +Adv +V** open POS
* **+Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +Num +Det** closed POS
* **+ABBR** abbreviations
* **+ACR** acronyms
* **+Prop +Pers +Dem +Interr +Refl +Recipr +Rel +Indef** POS subtags

### The number, gender and case tags:

* **+Msc +Fem** 
* **+Sg** singular
* **+Pl** plural
* **+Sg1 +Sg2 +Sg3 +Pl1 +Pl2 +Pl3** Verb personal tags
* **+Nom** Nominative
* **+Obl**  Obliikvi
* **+Dat** Dative
* **+Abl** Ablative
* **+Gen** Genitive
* **+Gen/Long**  name?
* **+Ins**  Instrumentaali
* **+Acc** Accusative

* **+Kiiro**  name?
* **+Kiire**  name?
* **+Kiiri**  name?

### Other sub-tags

* **+Pos** positive
* **+Comp +Superl** Comparative, superlative
* **+Attr** attribute 
* **+Card +Ord** Cardinal and ordinal numerals 
* **+Ind +Prs +Prt +Pot +Cond +Imprt** Verb tense andmood
* **+Inf +Ger +ConNeg +ConNegII +Neg +ImprtII +PrsPrc +PrfPrc +Sup +VGen +VAbess** From Sámi, probably delete several of these.
* **+TV +IV** transitivity tags
* **+Clt** clitic
* **+Der/Adv** transitivity tags

* **+Poss** possessive 

### Other tags

* **+Symbol** = independent symbols in the text stream, like £, €, ©
* **+CLB** clause boundary for period and comma
* **+PUNCT** other punctuation symbol
* **+LEFT +RIGHT +MIDDLE** paired symbols, parentheses
* **+Multi** multiword tag
* **+Guess** guess tag (not in use)

### Question and Focus particles (probably not needed)
* **+Qst +Foc** 

### Semantic tags

These are not yet in use

* **+Sem/Mal +Sem/Fem +Sem/Sur** 
* **+Sem/Plc** 
* **+Sem/Org** 
* **+Sem/Obj** 
* **+Sem/Ani** 
* **+Sem/Hum** 
* **+Sem/Plant** 
* **+Sem/Group** 
* **+Sem/Time** 
* **+Sem/Txt** 
* **+Sem/Route** 
* **+Sem/Measr** 
* **+Sem/Wthr** 
* **+Sem/Build** 
* **+Sem/Edu** 
* **+Sem/Veh** 
* **+Sem/Clth** 

### Derivation

Derivations are classified under the morphophonetic form of the suffix, the
source and target part-of-speech.

* **+V→N +V→V +V→A** 
* **+Der/xxx** 

### Usage tags
The Usage extents are marked using the following tags:
* **+Err/Orth** tagging non-standard forms
* **+Use/-Spell** tagging other forms not to be accepted by the speller

### Morphophonology
To represent phonologic variations in word forms we use the following
symbols in the lexicon files:

* **^V** for long vowel
* **^CDEL** for use in Ins.
* **^KK** archiphoneme for k doubling in kkiiro

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

**The flag diacritics are not yet in use**

| Flag | Explanation
| --- | --- 
|  @P.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@ | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@ | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| --- | ---  
|  @P.CmpFrst.FALSE@ | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@ | Block these words from making further compounds
|  @D.CmpLast.TRUE@ | Block such words from entering R
|  @D.CmpNone.TRUE@ | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@ | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@ | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@ | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Flag | Explanation
| --- | --- 
|  @U.Cap.Obl@ | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@ | Allowing downcasing of derived names: deatnulasj.

## The *Root* lexicon
LEXICON Root
The word forms in Romany language start from the lexeme roots of basic
word classes, or optionally from prefixes:

LEXICON **K** (for clitics, probably not needed)

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/root.lexc](https://github.com/giellalt/lang-rmf/blob/main/src/fst/morphology/root.lexc)</small>
