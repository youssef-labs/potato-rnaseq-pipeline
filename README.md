# Potato RNA-seq Stress Response Pipeline (Bash + Python + R)

University of Birmingham MSc Bioinformatics project (graded assessment).

## Overview
This project builds a 3-step pipeline to analyse RNA-seq gene expression data from two potato varieties under control vs abiotic stress conditions.

## Workflow
1. **Bash** (`01_build_gem_matrices.sh`)
   - Build `GEM_X.csv` and `GEM_Y.csv`
   - Keep unique genes on chromosomes 1–12
   - Rename replicates (`-a/-b/-c` → `Rep.1/Rep.2/Rep.3`)

2. **Python** (`02_prepare_two_timepoints_and_degs.ipynb`)
   - Extract control + treatment 1 expression columns
   - Produce:
     - `all_VarX_TwoTimePoints.csv`
     - `all_VarY_TwoTimePoints.csv`
     - `Leaf_DEGs_VarX.csv`
     - `Leaf_DEGs_VarY.csv`

3. **R** (`03_rnaseq_analysis_notebook.Rmd`)
   - Perform downstream statistical analysis and visualisation of DEGs.

## Files in this repository
- `01_build_gem_matrices.sh`
- `02_prepare_two_timepoints_and_degs.ipynb`
- `03_rnaseq_analysis_notebook.Rmd`
- `.gitignore`
- `README.md`

## Notes
- This repo shares my code/workflow only.
- Course-provided datasets/assessment-only materials are not redistributed.
