#!/bin/bash
#SBATCH --job-name=predictDannce
# Job name
#SBATCH --mem=10000
# Job memory request
#SBATCH -t 0-03:00
# Time limit hrs:min:sec
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -p scavenger-gpu
#SBATCH --gres=gpu:1
#SBATCH --exclude=dcc-tdunn-gpu-01,dcc-tdunn-gpu-02,dcc-mastatlab-gpu-01,dcc-gehmlab-gpu-04,dcc-dhvi-gpu-01,dcc-dhvi-gpu-02,dcc-allenlab-gpu-03,dcc-allenlab-gpu-04,dcc-pbenfeylab-gpu-04,dcc-allenlab-gpu-02,dcc-youlab-gpu-01,dcc-youlab-gpu-22,dcc-youlab-gpu-51,dcc-youlab-gpu-55
#SBATCH --account=tadrosslab
module load Anaconda3/5.1.0
source activate dannce
dannce-predict-single-batch "$@"
