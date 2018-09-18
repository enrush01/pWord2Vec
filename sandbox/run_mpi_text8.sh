#!/bin/bash

#PBS -W group_list=cades-ccsd 
#PBS -A ccsd
#PBS -N word2vec
#PBS -M rusheniii@ornl.gov
#PBS -l nodes=1:ppn=16
#PBS -l walltime=00:00:60
#PBS -l qos=burst
#PBS -V
# example run on 2 nodes, each node with 4 threads
# please specify the host file accordingly

nprocs=2
SOURCE_DIR=$HOME/vcs/pWord2Vec/sandbox
mpirun -np $nprocs $SOURCE_DIR/mpi_job.sh

