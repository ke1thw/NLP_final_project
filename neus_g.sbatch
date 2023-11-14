#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=4
#SBATCH --cpus-per-task=4
#SBATCH --time=10:00:00
#SBATCH --mem=50GB
#SBATCH --gres=gpu:rtx8000:2
#SBATCH --job-name=neus_g
#SBATCH --mail-type=END
#SBATCH --mail-user=yw5326@nyu.edu
#SBATCH --output=slurm_%j.out

module purge
RUNPATH=/scratch/yw5326/framing-bias-metric
cd $RUNPATH
module load anaconda3/2020.07
source /share/apps/anaconda3/2020.07/etc/profile.d/conda.sh
conda activate /scratch/yw5326/neus_nlp
bash generate_script.sh