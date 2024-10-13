import sys
import pandas as pd

standard_df = pd.read_csv("data/standard_selection.tsv",sep = "\t",header = "infer")
values_df = pd.read_csv("data/values.tsv",sep = "\t",header = "infer")

standard_df.index = standard_df["count"]
values_df.index = values_df["val"]
print(standard_df)
print(values_df)

def get_all_runs_for_a_sample(wildcards):
    all_counts = values_df.loc[wildcards.val, "counts"].split(",")
    count_path_list = []
    for r in all_counts:
        p = standard_df.loc[r,"file_path"]
        count_path_list.append(p)
    return count_path_list

rule take_sorted_chr_from_shuf_a_and_b:
    input:
        all_counts= lambda wildcards: get_all_runs_for_a_sample(wildcards)
    output:
        sorted_file = "fully_sorted/sorted_bed_{val}_per_sample.bed"
    shell:
        "sh script_sort/get_sorted_file.sh \"{input.all_counts}\" {output.sorted_file}"
