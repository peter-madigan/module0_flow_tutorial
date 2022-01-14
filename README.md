# Module0 flow tutorial

This repo contains a few scripts to help you get started with running
``module0_flow``.

First clone this directory::

      git clone https://github.com/peter-madigan/module0_flow_tutorial.git

Then download the necessary data::

     cd module0_flow_tutorial
     mkdir tutorial
     source fetch_tutorial_files.sh tutorial/

Then create a new conda environment for tutorial::

     cd tutorial
     source ../install_module0_flow-login_node.sh module0-flow-tutorial

Finally run a test example::

     cd module0_flow
     source ../../run_module0_flow_example.sh larndsim.example.h5

# Helpful links:

``module0_flow`` source code: https://github.com/peter-madigan/module0_flow (don't forget to switch to the develop branch)

``module0_flow`` docs: https://module0-flow.readthedocs.io/en/latest/index.html

``h5flow`` source code: https://github.com/peter-madigan/h5flow

``h5flow`` docs: https://h5flow.readthedocs.io/en/latest/

NERSC portal for public access to Module0 data: https://portal.nersc.gov/project/dune/data/Module0/