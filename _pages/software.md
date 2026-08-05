---
layout: archive
title: "Software"
permalink: /software/
author_profile: false
---

{% include base_path %}

We build and maintain open-source tools for gene-environment interaction analysis at biobank scale, along with portable cloud workflows that make these analyses reproducible across platforms.

## Gene-environment interaction analysis

**[GEM](https://github.com/large-scale-gxe-methods/GEM)** — Efficient and statistically rigorous genome-wide GxE testing for large datasets, with robust sandwich-based variance estimation and multi-exposure interaction testing.  
[Documentation and installation](https://github.com/large-scale-gxe-methods/GEM) · [Manuscript](https://doi.org/10.1093/bioinformatics/btab223)

**[METAGEM](https://github.com/large-scale-gxe-methods/METAGEM)** — Flexible meta-analysis of GxE summary statistics across studies and consortia.  
[Documentation and installation](https://github.com/large-scale-gxe-methods/METAGEM) · [Manuscript](https://doi.org/10.1093/bioinformatics/btad730)

**[REGEM](https://github.com/large-scale-gxe-methods/REGEM)** — Re-analysis of existing GxE summary statistics under alternative model specifications, without returning to individual-level data.  
[Documentation and installation](https://github.com/large-scale-gxe-methods/REGEM) · [Manuscript](https://doi.org/10.1093/bioinformatics/btad730)

**[ESPRESSO.GxE.RV](https://github.com/kwesterman/ESPRESSO.GxE.RV)** — Simulation-based power estimation for set-based GxE tests.  
[Documentation and installation](https://github.com/kwesterman/ESPRESSO.GxE.RV) · [Original ESPRESSO manuscript](https://doi.org/10.1093/bioinformatics/btv219)

## Genetic clustering

**[bNMF clustering](https://github.com/gwas-partitioning/bnmf-clustering)** — Bayesian non-negative matrix factorization pipeline for partitioning GWAS loci into mechanistically interpretable clusters, including summary statistic preprocessing.

## Nutrition and cheminformatics

**[PhyteByte](https://github.com/kwesterman/phytebyte)** — Structure-based prediction of food compound bioactivity, using chemical similarity to drugs of known action.  
[Documentation and installation](https://github.com/kwesterman/phytebyte) · [Manuscript](https://doi.org/10.1186/s12859-020-03582-7)

## Cloud-based analysis workflows

Portable [WDL workflows](https://dockstore.org/organizations/LSGxE) that run across Terra, DNAnexus, and NHLBI BioData Catalyst:

* [GEM workflow](https://github.com/large-scale-gxe-methods/gem-workflow)
* [MAGEE workflow](https://github.com/large-scale-gxe-methods/magee-workflow)
* [dbGaP data download and decryption](https://github.com/manning-lab/fetch-dbgap-data-workflow)
