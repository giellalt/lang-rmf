#!/bin/bash

# A short shell script to test word form generation for all continuation
# lexicons except the ones listed in the exception list.

# Path to $GIELLA_CORE - we don't use Autotools for these scripts:
if test "x$GIELLA_CORE" != "x" -a -d "$GIELLA_CORE" ; then
    giella_core=$GIELLA_CORE
elif test "x$GTCORE" != "x" -a -d "$GTCORE" ; then
    giella_core=$GTCORE
elif test "x$GTHOME" != "x" -a -d "$GTHOME/giella-core" ; then
    giella_core=$GTHOME/giella-core
else
    echo "ERROR: Neither of $$GIELLA_CORE, $$GTCORE or $$GTHOME defined."
    exit 1
fi

######### USER Variables - change these to your liking: #########
# Codes for the word forms to be generated - list as many or few as needed:
morf_codes="+N+Msc+Sg+Nom
+N+Msc+Sg+Gen
+N+Msc+Sg+Dat
+N+Msc+Sg+Abl
+N+Msc+Sg+Ins
+N+Msc+Pl+Nom
+N+Msc+Pl+Gen
+N+Msc+Pl+Dat
+N+Msc+Pl+Abl
+N+Msc+Pl+Ins"

# Lexicon source file for lexicons and lemmas:
source_file=src/morphology/stems/nouns.lexc

# Continuation lexicons that should NOT be used to extract lemmas (egrep expression):
exception_lexicons="(nounstems|Rnoun)"

# FST used for generation, MINUS suffix:
generator_file=src/generator-gt-norm

# How many lemmas maximally for each lexicon:
lemmacount=20

# Specify path to the dir containing the script used for generation:
script_dir=$giella_core/scripts

################## DO NOT CHANGE BELOW HERE!!! ##################
source $script_dir/generate-wordforms-for-cont_lexes.sh \
        "$giella_core" \
        "$morf_codes" \
        "$source_file" \
        "$generator_file" \
        "$lemmacount" \
        "$exception_lexicons"
