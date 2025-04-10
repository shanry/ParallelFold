CC=g++
CFLAGS=-std=c++11

all: rna rnamp

rna: rna.cpp
	mkdir -p bin
	$(CC) $(CFLAGS) rna.cpp -o ./bin/rna

rnamp: rna_mp.cpp
	mkdir -p bin
	$(CC) $(CFLAGS) -fopenmp rna_mp.cpp -o ./bin/rna_mp

clean:
	rm -f ./bin/rna ./bin/rna_mp
