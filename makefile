CC = g++
MPICC = mpic++

CFLAGS = -std=c++11 -fopenmp -O3 -Wall -lm -lstdc++
all: pWord2Vec pWord2Vec_mpi 

pWord2Vec: pWord2Vec.cpp
	$(CC) pWord2Vec.cpp -o bin/pWord2Vec $(CFLAGS)
pWord2Vec_mpi: pWord2Vec_mpi.cpp
	$(MPICC) pWord2Vec_mpi.cpp -o bin/pWord2Vec_mpi $(CFLAGS)
clean:
	rm -f bin/*
