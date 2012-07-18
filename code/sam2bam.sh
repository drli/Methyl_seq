

 #!/bin/bash  

echo "SAM to BAM ..."
samtools view -bS mysample.sam > mysample.unsorted.bam

echo "Sorting BAM ..."
samtools sort mysample.unsorted.bam mysample
rm mysample.unsorted.bam
echo "Indexing BAM ..."
samtools index mysample.bam

