
# The Kalo Finnish Romany *root.lexc* file                    

This file defines all **multicharacter symbols**, and contains the initial lexicon **Root**.


## Analysis symbols
The morphological analyses of wordforms for the Romany
language are presented in this system in terms of the following symbols.
**Note that some of the tags still are copied from other language versions**

### Parts-of-speech tags:
* **+N +A +Adv +VPOS** open POS
* **+Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +NumPOS** closed POS
* **+ABBRabbreviations** abbreviations
* **+ACRacronyms** acronyms
* **+Prop +Pers +Dem +Interr +Refl +Recipr +Rel +Indefsubtags** POS subtags


### The number, gender and case tags:

* **+Msc +Fem** 
* **+Sgsingular** singular
* **+Plplural** plural
* **+Sg1 +Sg2 +Sg3 +Pl1 +Pl2 +Pl3tags** Verb personal tags
* **+NomNominative** Nominative
* **+OblObliikvi**  Obliikvi
* **+DatDative** Dative
* **+AblAblative** Ablative
* **+GenGenitive** Genitive
* **+Gen/Longname?**  name?
* **+InsInstrumentaali**  Instrumentaali
* **+AccAccusative** Accusative

### Other sub-tags

* **+Comp +Superlsuperlative** Comparative, superlative
* **+Attr** attribute 
* **+Card +Ord** Cardinal and ordinal numerals 
* **+Ind +Prs +Prt +Pot +Cond +Imprtandmood** Verb tense andmood
* **+Inf +Ger +ConNeg +ConNegII +Neg +ImprtII +PrsPrc +PrfPrc +Sup +VGen +VAbessthese.** From Sámi, probably delete several of these.
* **+TV +IVtags** transitivity tags


### Other tags

* **+Symbol©** = independent symbols in the text stream, like £, €, ©
* **+CLBcomma** clause boundary for period and comma
* **+PUNCTsymbol** other punctuation symbol
* **+LEFT +RIGHTparentheses** paired symbols, parentheses
* **+Multitag** multiword tag
* **+Guessuse)** guess tag (not in use)

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
* **+Err/Orthforms** tagging non-standard forms
* **+Use/-Spellspeller** tagging other forms not to be accepted by the speller


### Morphophonology
To represent phonologic variations in word forms we use the following
symbols in the lexicon files:

**No such symbols so far**

## Flag diacritics
We have manually optimised the structure of our lexicon using following
flag diacritics to restrict morhpological combinatorics - only allow compounds
with verbs if the verb is further derived into a noun again:

**The flag diacritics are not yet in use**

| Flag | Explanation
| --- | --- 
|  @P.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @D.NeedNoun.ON@nominalised | (Dis)allow compounds with verbs unless nominalised
|  @C.NeedNoun@nominalised | (Dis)allow compounds with verbs unless nominalised

For languages that allow compounding, the following flag diacritics are needed
to control position-based compounding restrictions for nominals. Their use is
handled automatically if combined with +CmpN/xxx tags. If not used, they will
do no harm.

| Flag | Explanation
| --- | ---  
|  @P.CmpFrst.FALSE@first | Require that words tagged as such only appear first
|  @D.CmpPref.TRUE@ENDLEX | Block such words from entering ENDLEX
|  @P.CmpPref.FALSE@compounds | Block these words from making further compounds
|  @D.CmpLast.TRUE@R | Block such words from entering R
|  @D.CmpNone.TRUE@compounding | Combines with the next tag to prohibit compounding
|  @U.CmpNone.FALSE@compounding | Combines with the prev tag to prohibit compounding
|  @P.CmpOnly.TRUE@R | Sets a flag to indicate that the word has passed R
|  @D.CmpOnly.FALSE@root. | Disallow words coming directly from root.

Use the following flag diacritics to control downcasing of derived proper
nouns (e.g. Finnish Pariisi -> pariisilainen). See e.g. North Sámi for how to use
these flags. There exists a ready-made regex that will do the actual down-casing
given the proper use of these flags.

| Flag | Explanation
| --- | --- 
|  @U.Cap.Obl@deatnulasj. | Allowing downcasing of derived names: deatnulasj.
|  @U.Cap.Opt@deatnulasj. | Allowing downcasing of derived names: deatnulasj.


## The *Root* lexicon
LEXICON Root
The word forms in Romany language start from the lexeme roots of basic
word classes, or optionally from prefixes:

LEXICON **K** (for clitics, probably not needed)

* * *
<small>This (part of) documentation was generated from [../src/fst/root.lexc](http://github.com/giellalt/lang-rmf/blob/main/../src/fst/root.lexc)</small>