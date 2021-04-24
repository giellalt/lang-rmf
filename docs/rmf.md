
# The Kalo Finnish Romany *root.lexc* file                    

This file defines all **multicharacter symbols**, and contains the initial lexicon **Root**.


## Analysis symbols
The morphological analyses of wordforms for the Romany
language are presented in this system in terms of the following symbols.
**Note that some of the tags still are copied from other language versions**

### Parts-of-speech tags:
 * **+N +A +Adv +V** open POS
 * **+Pron +CS +CC +Adp +Po +Pr +Interj +Pcle +Num** closed POS
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

### Other sub-tags

 * **+Comp +Superl** Comparative, superlative
 * **+Attr** attribute 
 * **+Card +Ord** Cardinal and ordinal numerals 
 * **+Ind +Prs +Prt +Pot +Cond +Imprt** Verb tense andmood
 * **+Inf +Ger +ConNeg +ConNegII +Neg +ImprtII +PrsPrc +PrfPrc +Sup +VGen +VAbess** From Sámi, probably delete several of these.
 * **+TV +IV** transitivity tags


### Other tags

 * **+Symbol** = independent symbols in the text stream, like £, €, ©
 * **+CLB** clause boundary for period and comma
 * **+PUNCT** other punctuation symbol
 * **+LEFT +RIGHT** paired symbols, parentheses
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

**No such symbols so far**

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




We describe here how abbreviations are in Kalo Finnish Romani are read out, e.g.
for text-to-speech systems.

For example:

 * s.:syntynyt # ;  
 * os.:omaa% sukua # ;  
 * v.:vuosi # ;  
 * v.:vuonna # ;  
 * esim.:esimerkki # ; 
 * esim.:esimerkiksi # ; 


# The Romany morphophonological/twolc rules file 

## Declarations and definitions

### Alphabet
 a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å
 á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç š ž ȟ

 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å
 Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð Š Ž Ȟ

 %>:0 ;

### Sets


## Rules

 * **Deleting stem-final s in s genitive** ... this is probably just a dummy rule

 * **Shortening stem-final ȟȟ in final position** for bereȟȟ to bereȟ

* *bereȟȟ*
* *bere0ȟ*

# Adjective inflection
Nothing done.

TSUORO Just adding +A tag.



# Adjectives
Not worked on.

Adjectives two so far, no subclasses.


# Adverbs

adv gives tag

Adverbs The list, one so far.
# Noun inflection
The inflection first gives N, Nom and gender tags, then point to oblique cases.

## The noun continuation lexica

### Masculines

RAKLO 

LAU 

BEREH 

VUUDAR 


### Feminines

DZUULI 


BAAR 

KUKLA 


## Morphology

### Masculine morphology

MSCOBL 

MSCOBL_SG 

MSCOBL_PL 

### Feminine morphology

To be written


### The oblique cases *-ke, -ta, -ha*

OBLCASES 

GENCASES 


# Nouns


Nouns 

## maskuliinit
*-o, -os, -is, -es, us; -iba, -ben*

### o-vartalo: raklo

### tunnuksettomia anguš, lau






## feminiinit

### i-loppuiset: butti, ...


### tunnuksettomia: baar, ...


### a-loppuisia: kamana, ..



## The long list

To be added šhen basis is in place.
# Numerals
Numerals in the Romany language are numbers.

Numerals 

Arabic  shall be common files

Numbers preparing for composing


11to19 combining 11, 12, ..


1to10 


NUMCASE gets tag

# Pronouns
Two pronouns so far

Pronouns me, jou
# Proper noun inflection
Nothing done so far.


# Verb inflection
Not worked on

Persons just dummy entries, to be replaced.


Verbs
Verbs in the Romany language are actions.

Verbs no verbs yet.

