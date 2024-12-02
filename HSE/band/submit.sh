#!/bin/bash
#SBATCH -J H
#SBATCH -p cpu
#SBATCH -N 1
#SBATCH -n 8
#SBATCH --mem 64G

ulimit -s unlimited
ulimit -v unlimited
# Directory for aims binary and the env
AIMS_DIR="/home/27735A_group/shared/bin"
AIMS_BIN="$AIMS_DIR/aims.221103.scalapack.mpi.x"
AIMS_ENV="$AIMS_DIR/aims_env.sh"

source $AIMS_ENV

export OMP_NUM_THREADS=1
mpirun -np 8 $AIMS_BIN > aims.out
