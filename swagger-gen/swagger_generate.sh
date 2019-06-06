#!/usr/bin/env bash
set -o errexit #abort if any command fails

#Requires minumum JDK 7 or 8 on $PATH
#https://github.com/swagger-api/swagger-codegen/blob/master/README.md

#location of swagger codegen install
SWAGGER_CODEGEN=$HOME/swagger-codegen

#location of generated output
SWAGGER_CODEGEN_OUTPUT=cds_swagger_gen

#TODO Command line parse
# format <filename> <cli_output_format> <ext> <output-dir>
INPUT_SWAGGER="$1"
OUTPUT_FORMAT="$2"
OUTPUT_EXT="$3"
OUTPUT_DIR="$4"

echo "*** Input Swagger: " $INPUT_SWAGGER
echo "*** Output Format: " $OUTPUT_FORMAT
echo "*** Output Extension" $OUTPUT_EXT
echo "*** Output Dir:" $OUTPUT_DIR

echo "*** Checking if Swagger is valid: " $1
CHECK=$(curl -X "POST" "http://online.swagger.io/validator/debug" --silent -d @$1)
if [[ $CHECK != "{}" ]]; then
echo -e "\n*** Validator check returned invalid Swagger:\n$CHECK\n"
exit 1
fi

echo "*** Validator check: " $CHECK

#codegen validator
#java -jar $SWAGGER_CODEGEN/swagger-codegen-cli.jar validate -i $INPUT_SWAGGER

# generate
echo "*** Generating $OUTPUT_FORMAT"
java -jar $SWAGGER_CODEGEN/swagger-codegen-cli.jar generate -i $INPUT_SWAGGER -l $OUTPUT_FORMAT -o $SWAGGER_CODEGEN_OUTPUT

echo `cat $SWAGGER_CODEGEN_OUTPUT/README.md`

FILENAME=`basename $INPUT_SWAGGER .json`
OUTFILE="${FILENAME}.$OUTPUT_EXT"
#echo "Changing Extension \"$FILENAME\" --> \"$OUTFILE\" ."

# move it to output dir
echo "*** Moving to output dir " $OUTPUT_DIR
cp $SWAGGER_CODEGEN_OUTPUT/swagger.$OUTPUT_EXT $OUTPUT_DIR/$OUTFILE
echo "*** Outfile: $OUTPUT_DIR/$OUTFILE "
#ls -la $OUTPUT_DIR/$OUTFILE

# cleanup output
echo "*** Removing temporary swagger gen output dir" $SWAGGER_CODEGEN_OUTPUT
rm -Rf $SWAGGER_CODEGEN_OUTPUT


echo "*** Complete ***"
