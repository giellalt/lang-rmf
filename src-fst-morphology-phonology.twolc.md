# The Romany morphophonological/twolc rules file 

## Declarations and definitions

### Alphabet
a b c d e f g h i j k l m n o p q r s t u v w x y z æ ø å
á é ó ú í à è ò ù ì ä ë ö ü ï â ê ô û î ã ý þ ñ ð ß ç š ž ȟ

A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Æ Ø Å
Á É Ó Ú Í À È Ò Ù Ì Ä Ë Ö Ü Ï Â Ê Ô Û Î Ã Ý þ Ñ Ð Š Ž Ȟ

%>
%^V:0 vowel copy
%^CDEL:0 trigger to delete consonant in front of suffix
%^KK:0 archiphoneme for doubling k in kkiiro

### Sets

## Rules

### Consonant rules

* **Deleting stem-final s in instrumental** ...  probably to be generalised

* *rakl>es>^CDELha*
* *rakl>e0>0ha*

* **Voicing of k suffix after n** ...  probably to be generalised

* *kaal>ija^KK>kiiro*
* *kaal>ijak>kiiro*

* **Shortening stem-final geminate in final position** for bereȟȟ to bereȟ

* *bereȟȟ*
* *bere0ȟ*

* **Shortening stem-final geminate in front of suffix** for lurrela : lurna

## Vowel rules

* **Vowel lenghening** a vowel copying rule

* **Stem shortening** perhaps with a trigger ^VSH?

* * *

<small>This (part of) documentation was generated from [src/fst/morphology/phonology.twolc](https://github.com/giellalt/lang-rmf/blob/main/src/fst/morphology/phonology.twolc)</small>
