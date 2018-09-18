#!/bin/bash

SOURCE_DIR=$HOME/vcs/pWord2Vec
DATA_DIR=$SOURCE_DIR/data
data=$DATA_DIR/text8.txt
binary=$SOURCE_DIR/bin/pWord2Vec_mpi

ncores=8
niters=2
window=8
dims=200
#export KMP_AFFINITY=explicit,proclist=[0-$(($ncores-1))],granularity=fine
numactl --interleave=all $binary -train $data -output $DATA_DIR/vectors.txt -size $dims -window $window -negative 5 -sample 1e-4 -threads $ncores -binary 0 -iter $niters -min-count 5 -save-vocab $DATA_DIR/vocab.txt -batch-size 17 -alpha 0.05

#note: batch-size is usually set to 2*window+1
