#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --time=20:00:00
#SBATCH --mem=50GB
#SBATCH --gres=gpu:a100:1
#SBATCH --job-name=neus_t5_large
#SBATCH --mail-type=END
#SBATCH --mail-user=yw5326@nyu.edu
#SBATCH --output=t5_filter_1-1.out

module purge
RUNPATH=/scratch/yw5326/framing-bias-metric
cd $RUNPATH
module load anaconda3/2020.07
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh
conda activate /scratch/yw5326/neus_nlp
bash finetune_neus_script.sh