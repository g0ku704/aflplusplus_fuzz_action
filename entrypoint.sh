#!/usr/bin/env sh

set -eu

ROOT_DIR="afl"

CAMPAIGN_NAME=$1
FUZZ_TARGET=$2
INPUT_FOLDER=$3
OUTPUT_FOLDER=$4
TIMEOUT=$5
TIME=$6
QEMU_MODE=$7

# Print out the AFL++ fuzzing command before executing it
echo "Running AFL++ fuzzing command:"

if [ "$QEMU_MODE" = true ]; then
	echo "afl-fuzz -Q -M \"$CAMPAIGN_NAME\" -t \"$TIMEOUT\" -i \"$INPUT_FOLDER\" -o \"$OUTPUT_FOLDER\" -- \"$FUZZ_TARGET\" @@"
	afl-fuzz -Q -M $CAMPAIGN_NAME -t $TIMEOUT -i $INPUT_FOLDER -o $OUTPUT_FOLDER -- $FUZZ_TARGET @@ 
else
	echo "afl-fuzz -M \"$CAMPAIGN_NAME\" -t \"$TIMEOUT\" -i \"$INPUT_FOLDER\" -o \"$OUTPUT_FOLDER\" -- \"$FUZZ_TARGET\" @@"
	afl-fuzz -M $CAMPAIGN_NAME -t $TIMEOUT -i $INPUT_FOLDER -o $OUTPUT_FOLDER -- $FUZZ_TARGET @@ 
fi