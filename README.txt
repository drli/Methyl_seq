BSMAP is a short reads mapping software for bisulfite sequencing reads. Bisulfite treatment converts unmethylated Cytosines into Uracils (sequenced as Thymine) and leave methylated Cytosines unchanged, hence provides a way to study DNA cytosine methylation at single nucleotide resolution. BSMAP aligns the Ts in the reads to both Cs and Ts in the reference.

RRBSMAP is a specifically designed version of BSMAP for reduced representation bisulfite sequencing (RRBS), it indexes the genome only on the enzyme digestion sites and therefore guarantees all reads were mapped to digestion sites, and greatly reduces the CPU/memory usage. 

1. run RRBS mode of the bsmap

-v: the number of mismatch, suggested to br 10% of the read length
-D: MspI digestion site

./bsmap -a s_1_1.fastq -b s_1_2.fastq -d genome.fa -o c57.sam  -v 7 -D C-CGG > log.txt &


2. change .sam to .bam 

3. extract methylation ratios from mapping result.

-u: unique mapped reads only
-z: report loci with 0 methylation ratio

python methratio.py -d genome.fa -u -z -o rrbs_meth_unique.txt -p c57.bam

4. downstream analysis 

see https://github.com/brentp/methylcode/blob/master/example/example.rst. It lists some downstream analysis.

