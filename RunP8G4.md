### Run Pythia8, Geant4 simulation in <code>lfspd docker container</code>

#### Load <code>lfspd</code> docker image

<code>docker pull xtovo/lfspd</code>

#### Run <code>lfspd</code> container

<code>docker run -it -v $HOME/tmp:/root/tmp --user root --workdir /root lfspd /bin/bash</code>

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
read_podio_input.py\
</code>

#### Run each python script. For example:

<code>k4run geant_fastsim.py<code>
