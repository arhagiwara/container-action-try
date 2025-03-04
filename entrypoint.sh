#!/bin/sh -l

# Use INPUT_<INPUT_NAME> to get the value of an input
GREETING="Hello, $INPUT_WHO_TO_GREET! $WHO_ARE_YOU"

# Use workflow commands to do things like set debug messages
echo "::notice file=entrypoint.sh,line=7::$GREETING"

# Write outputs to the $GITHUB_OUTPUT file
echo "greeting=$GREETING" >>"$GITHUB_OUTPUT"
echo "result=success" >> "$GITHUB_OUTPUT"

exit 0
