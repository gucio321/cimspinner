#!/bin/bash

# this script must be executed in this directory
# all the output goes to generator/output folder
# .cpp and .h files:
# cimgui.h and cimgui.cpp with gcc preprocess
# cimgui_nopreprocess.h and cimgui_nopreprocess.cpp generated without preprocess
# cimgui_impl.h with implementation function cdefs
# lua and json files:
# definitions.lua for function definitions
# structs_and_enums.lua with struct and enum information-definitions
# impl_definitions.lua for implementation function definitions

#process  files
# arg[1] compiler name gcc, clang, or cl
# arg[2] "" or "comments"
#

# parse command line arguments
# ref: https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash
POSITIONAL_ARGS=()

TARGETS=""

help() {
        cat <<EOF
Usage of generator.sh:
   -t --target    specify which imgui features should be generated
                  (default: \"$TARGETS\")
   -h --help      show this message and exit
EOF
}

while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--target)
      TARGETS="$2"
      shift # past argument
      shift # past value
      ;;
    -h|--help)
      help
      exit 0
      ;;
    -*|--*)
      echo "Unknown option $1"
      help
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

set -- "${POSITIONAL_ARGS[@]}" # restore positional parameters

echo "TARGETS: " $TARGETS

luajit$suffix ./generator.lua g++ "$TARGETS"
