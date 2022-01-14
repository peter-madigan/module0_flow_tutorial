# Module0 flow tutorial

This repo contains a few scripts to help you get started with running
``module0_flow``.

First clone this directory::

      git clone <>

Then download the necessary data::

     cd <>
     mkdir tutorial
     source fetch_tutorial_files.sh tutorial/

Then create a new conda environment for tutorial::

     cd tutorial
     source ../install_module0_flow-login_node.sh module0-flow-tutorial

Finally run a test example::

     cd module0_flow
     source ../../run_module0_flow_example.sh larndsim.example.h5
