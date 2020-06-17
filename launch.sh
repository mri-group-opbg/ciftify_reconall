#!/bin/bash

export FREESURFER_HOME=/usr/local/freesurfer
source $FREESURFER_HOME/SetUpFreeSurfer.sh

export FSL_HOME=/usr/local/fsl
source $FSL_HOME/etc/fslconf/fsl.sh

export PATH=$PATH:/usr/local/workbench/bin_rh_linux64

ciftify_recon_all         --fs-subjects-dir /pcdh_fs_in         --ciftify-work-dir /pcdh_hcp_out         --resample-to-T1w32k         --verbose         --debug          germano_sofia

