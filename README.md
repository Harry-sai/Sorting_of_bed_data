Instructions for PROJ 01: Quick_bed_sort

1. **File Preparation:**
    Created `values.tsv` and `standard_selection.tsv` to store the file paths for the bed files.

2. **File Creation Using Linux Commands:**
    firstally upload `shuf.a.bed.gz` and `shuf.b.bed.gz` files in the datas directory.
    with linux commands differnt chr files were create

3. **Data Processing with Python and Snakemake:**
   Wrote a Python program and defined Snakemake rules to process the files and separate them into different outputs.
   A shell script within Snakemake handled the sorting of the data.
     
Running the Program:

1. **Creating and Executing the Script:**
    A script named `Scripts.sh` was created to include all the required steps, including running the Python program.
    The Snakemake file used is `sort_files.smk`, and a folder named `script_sort` was set up to store a script called `get_sorted_file.sh`.

2. **Execution Steps:**
    Made `Scripts.sh` executable with, chmod +x 
    Ran the script using bash "sh Scripts.sh"
    This completed the sorting process and generated the output file sorted_bed_file_per_sample.

   '''
   sh Scripts
   '''
   
