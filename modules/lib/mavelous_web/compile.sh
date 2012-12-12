#!/bin/sh
set -o xtrace
CLOSURE_LIBRARY_DIR=$(dirname "$0")/third_party/closure-library

python $CLOSURE_LIBRARY_DIR/closure/bin/build/closurebuilder.py \
  --root=${CLOSURE_LIBRARY_DIR}/closure/goog \
  --root=${CLOSURE_LIBRARY_DIR}/third_party/closure \
  --root=script/ \
  --namespace="Mavelous.App" \
  --output_mode=compiled \
  --compiler_flags="--compilation_level=SIMPLE_OPTIMIZATIONS" \
  --compiler_flags="--summary_detail_level=3" \
  --compiler_flags="--warning_level=VERBOSE" \
  --compiler_flags="--externs=externs/backbone-0.9.1.js" \
  --compiler_flags="--externs=externs/jquery-1.7.js" \
  --compiler_flags="--externs=externs/underscore-1.3.1.js" \
  --compiler_jar=/home/jwiseman/home/bin/closure-compiler.jar \
  > script/mavelous-compiled.js


#python $CLOSURE_LIBRARY_DIR/closure/bin/calcdeps.py \
#  --path $CLOSURE_LIBRARY_DIR \
#  --input script/pfd.js \
#  --compiler_jar ~/bin/closure-compiler.jar \
#  --output_mode compiled > script/pfd-compiled.js

