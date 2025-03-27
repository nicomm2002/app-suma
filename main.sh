#!/bin/bash
 #PBS -l nodes=1:ppn=16
 #PBS -l walltime=00:1:00
 #PBS -l walltime=00:10:00
 
 # Copyright (c) 2020 brainlife.io at University of Texas at Austin and Indiana University
 # 
 # This is the main file run by the brainlife.io orchestration system
 #
 # Author: Guiomar Niso
 mkdir -p out_dir
 # run the actual matlab code
 singularity run -e docker://brainlife/brainstorm:220526 main.m 
