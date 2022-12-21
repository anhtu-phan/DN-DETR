#!/bin/bash
#
#SBATCH --job-name=dn
#SBATCH --output=dn-dab-detr-chick.txt
#SBATCH --ntasks=1
#SBATCH --partition=students
#SBATCH --gres=gpu:1
#SBATCH --nodelist=gpu08
#SBATCH --mem=32000
#SBATCH --mail-user=anhtu@cl.uni-heidelberg.de
#SBATCH --mail-type=ALL

~/anaconda3/bin/conda activate dab-detr
srun ./scripts/run.sh