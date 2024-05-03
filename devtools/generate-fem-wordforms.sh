#!/bin/bash

# A short shell script to test word form generation for all continuation
# lexicons except the ones listed in the exception list.

# Path to $GIELLA_CORE - we don't use Autotools for these scripts:
if test -d "../giella-core" ; then
    giella_core="$(pwd)/../giella-core"
elif test "x$GTLANGS" != "x" -a -d "$GTLANGS/giella-core" ; then
    giella_core=$GTLANGS/giella-core
elif test "x$GIELLA_CORE" != "x" -a -d "$GIELLA_CORE" ; then
    giella_core=$GIELLA_CORE
elif test "x$GTCORE" != "x" -a -d "$GTCORE" ; then
    giella_core=$GTCORE
else	
    echo "ERROR: Neither of $$GIELLA_CORE, $$GTCORE or $$GTLANGS defined, and nothing found within the parent folder."
    exit 1
fi

######### USER Variables - change these to your liking: #########
# Codes for the word forms to be generated - list as many or few as needed:
morf_codes="+N+Fem+Sg+Nom \
            +N+Fem+Sg+Obl \
            +N+Fem+Sg+Dat \
            +N+Fem+Sg+Abl \
            +N+Fem+Sg+Ins \
            +N+Fem+Sg+Gen \
            +N+Fem+Sg+Gen+Kiiro \
            +N+Fem+Pl+Nom \
            +N+Fem+Pl+Obl \
            +N+Fem+Pl+Dat \
            +N+Fem+Pl+Abl \
            +N+Fem+Pl+Ins \
            +N+Fem+Pl+Gen \
            +N+Fem+Pl+Gen+Kiiro"

# Lexicon source file for lexicons and lemmas:
source_file=src/fst/morphology/stems/nouns.lexc

# Lexicons that should NOT be used to extract lemmas (egrep expression):
exception_lexicons="(RAKLO|LAU|BEREH|VUUDAR|GRAI|DZII|IBA|BEN|OS|NIS|RIS|TIS|SSIS|IS_PL|ES|US|YS)"

# FST used for generation, MINUS suffix:
generator_file=src/fst/generator-gt-norm

# How many lemmas maximally for each lexicon:
lemmacount=10

# Specify path to the dir containing the script used for generation:
script_dir=$giella_core/scripts

################## DO NOT CHANGE BELOW HERE!!! ##################
"$script_dir/generate-wordforms-for-cont_lexes.sh" \
        "$giella_core" \
        "$morf_codes" \
        "$source_file" \
        "$generator_file" \
        "$lemmacount" \
        "$exception_lexicons"