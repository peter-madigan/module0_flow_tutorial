#!/bin/bash
# Download necessary example files for running module0_flow on larnd-sim output
#
# Usage:
#   sourch fetch_tutorial_files.sh <directory to put files>
#

CWD=`pwd`
OUT_DIR=$1
cd $OUT_DIR

echo "Getting h5flow..."
git clone https://github.com/peter-madigan/h5flow.git

echo "Getting module0_flow..."
git clone https://github.com/peter-madigan/module0_flow.git
cd module0_flow
git checkout develop # use develop branch because I haven't updated main for quite some time

echo "Getting geometry..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/multi_tile_layout-2.2.16.yaml

echo "Getting particle range tables..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/merged/reco_data/PDG_muon_range_table_Ar.txt
curl -O https://portal.nersc.gov/project/dune/data/Module0/merged/reco_data/NIST_proton_range_table_Ar.txt

echo "Getting run list..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/runlist.txt

echo "Getting disabled channels list..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/TPC1+2/badChannelLists/selftrigger_masked/module0-run1-selftrigger-disabled-list.json
curl -O https://portal.nersc.gov/project/dune/data/Module0/TPC1+2/badChannelLists/module0-network-absent-ASICs.json

echo "Getting track reco PDF..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/merged/reco_data/joint_pdf-2_0_1.npz

echo "Getting pixel configurations..."
curl -O https://portal.nersc.gov/project/dune/data/Module0/TPC1+2/configFiles/datalog_2021_04_02_19_00_46_CESTevd_ped.json
curl -O https://portal.nersc.gov/project/dune/data/Module0/TPC1+2/configFiles/evd_config_21-03-31_12-36-13.json

echo "Getting example larnd-sim file..."
curl https://portal.nersc.gov/project/dune/data/Module0/simulation/larndsim/20211223/larndsim.6ke-m0.5ke.84.h5 -o larndsim.example.h5

echo "Done!"
echo "Tutorial files copied to ${OUT_DIR}"

cd $CWD

