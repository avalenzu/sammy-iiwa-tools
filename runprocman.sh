#!/bin/bash

set -e

me=$(python -c 'import os; print(os.path.realpath("'"$0"'"))')
MY_DIR=$(dirname $me)
echo $MY_DIR
. $MY_DIR/setup_environment.sh
set +e
. $SPARTAN_DIR/build/setup_environment.sh
set -e
export SPARTAN_SOURCE_DIR=/home/robot-lab/spartan-sammy
export SPARTAN_BUILD_DIR=/home/robot-lab/spartan-sammy/build
export SPARTAN_INSTALL_DIR=/home/robot-lab/spartan-sammy/build/install
export DRAKE_RESOURCE_ROOT=$DRAKE_DIR

cd $DRAKE_DIR

$SPARTAN_INSTALL_DIR/bin/bot-procman-sheriff -l $MY_DIR/dual_iiwa_hardware.pmd
