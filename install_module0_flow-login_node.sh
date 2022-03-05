#!/bin/bash
# Demonstrates how to install module0_flow into an environment for a CORI login node
# (must be run from a directory containing h5flow and module0_flow)
#
# Usage:
#   source install_module0_flow-login_node.sh <conda environment to create>
#

ENV_NAME=$1
CWD=`pwd`

conda deactivate

echo "Installing h5flow..."
cd h5flow/
conda env create -n $ENV_NAME -f environment-nompi.yml || \
    conda env update -n $ENV_NAME -f environment-nompi.yml
conda activate $ENV_NAME
pip install .

echo "Installing module0_flow..."
cd ../module0_flow
conda env update -n $ENV_NAME -f env-nompi.yaml
pip install .

echo "Done!"
cd $CWD

