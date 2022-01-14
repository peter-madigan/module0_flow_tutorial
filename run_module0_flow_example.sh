#!/bin/bash
# Runs module0_flow on an example file
# (must be run from within module0_flow/)
#
# Usage:
#   source run_module0_flow_example.sh <example file>
#

INPUT_FILE=$1
OUTPUT_FILE=${INPUT_FILE//.h5/.out.h5}

# for running on a login node
H5FLOW_CMD='h5flow'
# for running on a single compute node with 32 cores
#H5FLOW_CMD='srun -n32 h5flow'

# run all stages
WORKFLOWS='h5flow_yamls/reco/charge/charge_event_building.yaml h5flow_yamls/reco/charge/charge_event_reconstruction.yaml h5flow_yamls/reco/combined/combined_reconstruction.yaml'
# just the event builder
#WORKFLOWS='h5flow_yamls/reco/charge/charge_event_building.yaml'

if [ -e $OUTPUT_FILE ]; then
    rm -i $OUTPUT_FILE
fi

$H5FLOW_CMD -c $WORKFLOWS -i $INPUT_FILE -o $OUTPUT_FILE

echo "Done!"
echo "Output can be found at $OUTPUT_FILE"
