#!/bin/bash
#!/bin/bash

#to create files
zcat datas/shuf.a.bed.gz datas/shuf.b.bed.gz | awk '{print $0>>$1}'

#snakemake rule
snakemake --snakefile sort_files.smk fully_sorted/sorted_bed_file_per_sample.bed -j1
