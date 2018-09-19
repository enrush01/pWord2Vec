# pWord2Vec
This is a C++ implementation of word2vec by Jonathan Shihao Ji. This implementation supports the "HogBatch" parallel SGD as described in a NIPS workshop paper "[Parallelizing Word2Vec in Multi-Core and Many-Core Architectures](https://arxiv.org/abs/1611.06172)". It also uses data parallelism to distribute the computation via MPI over a CPU cluster. 

The code is developed based on the [original word2vec](https://code.google.com/archive/p/word2vec/) implementation from Google.

## License
All source code files in the package are under [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Prerequisites
The code is developed and tested on UNIX-based systems with the following software dependencies:

- [g++] For compiling the single node source
- [mpic++] This is for compiling the MPI version. You must have MPI_THREAD_MULTIPLE support. 
```ompi_info | grep -i thread```


## Environment Setup
* Install g++ development environment 
* Install MPI development environment

## Reference
[Parallelizing Word2Vec in Multi-Core and Many-Core Architectures](https://arxiv.org/abs/1611.06172), in NIPS workshop on Efficient Methods for Deep Neural Networks, Dec. 2016.
