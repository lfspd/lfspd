### Run Pythia8, Geant4 simulation in <code>lfspd docker container</code>

#### Load <code>lfspd</code> docker image

<code>docker pull xtovo/lfspd</code>

#### Run <code>lfspd</code> container

<code>docker run -it -v $HOME/tmp:/root/tmp --user root --workdir /root xtovo/lfspd /bin/bash</code>

#### Clone FCCSW repository

<code>git clone https://github.com/HEP-FCC/FCCSW</code>

#### Goto python examples directory

<code>cd FCCSW/Examples/options</code>

<code> <b>ls</b>\
Pythia_standard.cmd\
export_detector_gdml.py\
geant_fastsim.py\
geant_fastsim_tklayout.py\
geant_fullsim.py\
geant_fullsim_fccee_cld_hepevt.py\
geant_fullsim_fccee_cld_pgun.py\
geant_fullsim_fccee_idea_hepevt.py\
geant_fullsim_fccee_idea_pgun.py\
geant_fullsim_fccee_lar_pgun.py\
geant_fullsim_fcchh_main.py\
geant_fullsim_fcchh_tracker.py\
geant_fullsim_field.py\
geant_fullsim_userlimits.py\
input_example_GuineaPig.hepevt\
k4_workflow_blocks\
material_scan.py\
particle_gun.py\
pythia.py\
read_podio_input.py</code>

#### Try to run each python script. For example:
<code>k4run geant_fullsim.py</code>

You will see a lot of info messages, but at the end the file <code><b>out_geant_fullsim.root</b></code> is created.

#### Save it on the <code><b>host system</b></code>

<code>cp out_geant_fullsim.root /root/tmp</code> 

<b>/root/tmp</b> corresponds to <b>$HOME/tmp</b> on host system

#### Exiting docker prompt will still have the docker container available. One can re-enter the same container by

<code>docker start `docker ps -q -l`
docker attach `docker ps -q -l`</code>


#### The list of working examples:

- geant_fastsim.py
- geant_fastsim_tklayout.py
- geant_fullsim.py
- geant_fullsim_field.py
- geant_fullsim_userlimits.py
- geant_fullsim_userlimits.py
- material_scan.py
- particle_gun.py

#### All examples of full simulation of FCC-hh, FCC-ee - failed  

<code>geant_fullsim_fccee_\*.py
geant_fullsim_fcchh_\*.py</code>

