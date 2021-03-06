#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=24
#SBATCH --time=1-12
#SBATCH --mem=80000 # Memory pool for all cores (see also --mem-per-cpu)
#SBATCH --partition=production
#SBATCH --reservation=meta_workshop
#SBATCH --account=workshop
#SBATCH --output=slurmout/krk_%A_%a.out # File to which STDOUT will be written
#SBATCH --error=slurmout/krk_%A_%a.err # File to which STDERR will be written
#SBATCH --mail-user=nasiegel@ucdavis.edu        # email address to recieve notification
#SBATCH --mail-type=ALL                         # NOTIFICATIONS OF SLURM JOB STATUS

start=`date +%s`
hostname

export baseP=/share/workshop/meta_workshop/noahs/2021-metagenomics_metatranscriptomics-workshop
export seqP=$baseP/02-DNA-rmhost
export refP=$baseP/References
export outP=$baseP/03-Kraken-test


SAMPLE=`head -n ${SLURM_ARRAY_TASK_ID} samples.txt | tail -1 `

echo $SAMPLE

if [ ! -e "$outP/$SAMPLE" ]; then
    mkdir -p $outP/$SAMPLE
fi

module load kraken2/2.1.2

call="kraken2 --db $refP/krakendb --threads 24 --output $outP/${SAMPLE}/${SAMPLE}.kraken.out --report $outP/${SAMPLE}/${SAMPLE}.kraken_report.out --paired $seqP/${SAMPLE}/${SAMPLE}_hostrmvd_R1.fastq $seqP/${SAMPLE}/${SAMPLE}_hostrmvd_R2.fastq"

echo $call
eval $call

end=`date +%s`
runtime=$((end-start))
echo Runtime: $runtime seconds

