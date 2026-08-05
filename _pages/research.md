---
layout: archive
title: "Research"
permalink: /research/
author_profile: false
---

{% include base_path %}

## Biological interactions

Much of the lab's work is built on the concept of biological interactions, in which multiple factors (say, a genetic variant and some lifestyle behavior) synergistically affect a trait of interest — a risk factor for disease, or the disease itself. This added complexity contributes to problems across biological and medical science, from the "missing heritability" in genomics (why can't our predictive models account for the known heritability of many traits?) to the inconsistency of individual responses in dietary trials. It also forms the basis for precision medicine, by describing the ways that particular characteristics of an individual determine which behaviors, drugs, or environments will be most effective for them.

We focus in particular on gene-environment interactions (GxE): cases where the impact of a basic trait (e.g., biological sex), behavior (e.g., physical activity), or environmental exposure (e.g., pollution) on some outcome depends on an individual's genetic makeup. Equivalently, we can think of the exposure as modifying the genetic effect on that outcome — the two framings are statistically identical.

<p align="center">
<img src='/images/GxE_diagram.png' width='450'>
</p>

We are fortunate to collaborate on these problems with other groups in the GxE field, including [Alisa Manning](https://www.manning-lab.info/), [Arun Durvasula](https://keck.usc.edu/faculty-search/arun-durvasula/), [Han Chen](https://sbmi.uth.edu/faculty-and-staff/han-chen.htm), [Joanne Cole](https://scholar.harvard.edu/joannebcole), [Tamar Sofer](https://www.hsph.harvard.edu/profile/tamar-sofer/), [Miriam Udler](https://www.massgeneral.org/doctors/22163/miriam-udler), and the CHARGE Gene-Lifestyle Interactions Working Group.

---

## Large-scale genome-wide interaction studies

GxE identification provides a key foundation for genome-based precision medicine, but interaction analysis in increasingly large samples carries both statistical and computational challenges. We contribute to overcoming these challenges through both methods development and applied discovery studies.

We led the development and publication of [GEM](https://github.com/large-scale-gxe-methods/GEM), a tool for computationally efficient and statistically rigorous genome-wide GxE testing, which supports robust sandwich-based variance estimation and multi-exposure interaction testing at biobank scale. In the process, we showed that gene-environment interactions may be as common across the genome as genetic main effects.

Working closely with [Joanne Cole](https://scholar.harvard.edu/joannebcole), we put this program to work in an "exposome-wide" interaction study in the UK Biobank, systematically mapping interactions across many genetic variants, exposures, and metabolic biomarkers. Part of this effort involved searching the genome for variance-quantitative trait loci (vQTLs) — genetic variants associated with the *variance* rather than the *mean* of a trait — as a computationally efficient first-pass filter that enriches for true GxE signal before exposome-wide testing. The resulting catalog of vQTL and GxE summary statistics is publicly available through the [Common Metabolic Diseases Knowledge Portal](https://hugeamp.org/).

<p align="center">
<img src='/images/vqtl_workflow.png' width='450'>
</p>

Applied work in this area has identified gene-diet interactions impacting glycemic traits in the UK Biobank and TOPMed. A substantial challenge for studies like these is defining a dietary exposure that is both biologically meaningful and reliably measurable from dietary questionnaires; we have approached this both by defining data-driven, food group-based dietary patterns and by assessing macronutrient consumption, such as an exchange of fat for carbohydrate.

<p align="center">
<img src='/images/diet_hba1c_manhattan.jpg' width='500'>
</p>

---

## Polygenic scores for interaction and response

Single-variant GxE effects are difficult to find and replicate because the individual effects are so small. Polygenic scores (PGS) offer a way to aggregate genetic information across the genome, but standard PGS are designed to predict *risk* of disease — a continuous trait value or binary trait liability — rather than *response* to an intervention. We develop and apply PGS-based methods that target response heterogeneity directly, with the goal of identifying individuals most likely to benefit from a given preventive strategy.

This line of work began with a gene-diet application in the Women's Health Initiative Dietary Modification Trial, where aggregating thousands of genetic variants into a single "responder score" predicted the LDL-cholesterol response to a low-fat dietary intervention. It was an early demonstration that polygenic aggregation can capture response to a dietary exposure rather than baseline disease risk, and it motivates much of the interaction-focused score development below.

**Interaction PGS (iPGS)** aggregate genome-wide GxE effect estimates into a single score representing genetic predisposition to differential response to an exposure. This is conceptually distinct from a standard PGS, and builds on single-variant GxE discovery.

<p align="center">
<img src='/images/ipgs_concept.png' width='450'>
</p>

**Pathway-specific PGS (pPGS)** test the hypothesis that scores constructed from biologically coherent gene sets — lipid metabolism, insulin signaling, and so on — show stronger and more interpretable interactions with relevant exposures than genome-wide PGS. We are also working on the methodological foundations of pPGS construction, including the variant-gene-pathway linkage required to annotate variants against existing gene sets.

This work connects to the broader sub-field of genetic clustering, which aims to uncover disease subtypes from genetic signatures of underlying endophenotypes. We have helped generalize and partially automate the [codebase](https://github.com/gwas-partitioning/bnmf-clustering) for the Bayesian non-negative matrix factorization clustering pipeline developed with [Miriam Udler](https://www.massgeneral.org/doctors/22163/miriam-udler), which has since been used in multiple follow-up papers on genetic clustering of type 2 diabetes.

These two ways of grouping variants — annotation-based pathways and data-driven genetic clusters — are rarely considered together, and we are interested in the relationship between them. Annotation-based groupings are biologically interpretable but inherit the gaps and biases of curated gene set databases, while data-driven clusters emerge directly from genetic association structure but require post hoc interpretation. We want to understand where the two converge and where they disagree, whether clusters can be read as empirically derived pathways, and which of the two yields pathway-specific scores that interact more strongly and more interpretably with relevant exposures.

<p align="center">
<img src='/images/bnmf_t2d_clusters.png' width='450'>
</p>

---

## Molecular mechanisms of gene-environment interaction

GxE interactions are statistical signals. Understanding and translating them requires conceptual frameworks and follow-up testing that get at the molecular processes generating them. Molecular omics data, increasingly collected in biobanks and cohort studies, provide the opportunity to do this — with intermediate molecular phenotypes such as metabolites and lipid species playing a central role.

With [Tamar Sofer](https://www.hsph.harvard.edu/profile/tamar-sofer/), we described a taxonomy of five distinct molecular mechanisms that can produce a detectable GxE signal. Several of these involve a combination of genetic and environmental main effects together with nonlinearity in the exposure-outcome or mediator-outcome relationship. An example is illustrated below, in which an interaction emerges from (1) linear genetic and environmental effects on a mediator and (2) a nonlinear relationship between that mediator and the outcome.

<p align="center">
<img src='/images/gxe_phenomenon2_nlm.jpg' width='450'>
</p>

We have also developed a **decomposition** approach to improve both detection and interpretation of GxE, which sequentially tests for interaction upstream of a mediator (genetic modification of the exposure-mediator relationship, e.g., absorption or bioaccumulation) and downstream of it (modification of the mediator-outcome relationship, e.g., signaling). This provides mechanistic traction well beyond a single interaction p-value.

<p align="center">
<img src='/images/gxe_decomposition_concept.png' width='450'>
</p>

Ongoing work in this direction uses metabolomic data to scan for mediators of previously identified genetic interactions affecting the relationship between physical activity and HDL cholesterol, with a particular focus on how longitudinal data and mixed modeling can improve discovery.

---

## Heterogeneity in response to omega-3 fatty acids

Long-chain omega-3 fatty acids (LCN3FA) are among the most widely studied dietary supplements for cardiometabolic disease prevention, yet their effects on lipid and inflammatory traits vary substantially across individuals. We investigate the genetic and biological basis for that variability.

Variants in the **FADS1/FADS2** gene cluster, which encodes rate-limiting desaturase enzymes in long-chain PUFA synthesis, are among the strongest genetic determinants of circulating fatty acid profiles. We examine how FADS genotype modifies cardiometabolic response to omega-3 intake, including effects on circulating LCN3FA levels, lipid fractions, and downstream outcomes.

FADS allele frequencies and linkage disequilibrium structure also differ substantially across ancestral populations, with downstream implications for fatty acid metabolism and response to omega-3 intake. We are characterizing this **ancestry-associated heterogeneity** using the UK Biobank for discovery and TOPMed for ancestry-diverse replication.

Beyond FADS, we apply genome-wide interaction testing to systematically identify additional loci modifying the relationship between omega-3 intake and both circulating LCN3FA and cardiometabolic outcomes. This agnostic approach may reveal biology outside established fatty acid metabolism pathways.

---

## Heterogeneity in response to adiposity and weight loss

Adiposity is a major driver of cardiometabolic risk, but the metabolic consequences of excess weight — and conversely, the benefits of weight loss — vary substantially across individuals. We ask which individuals are most likely to experience cardiometabolic benefit from adiposity reduction, and why.

We apply genome-wide interaction testing to identify variants that modify the relationship between adiposity measures (BMI, visceral fat, waist-to-hip ratio) and cardiometabolic traits. We are also interested in genetic predictors of weight loss response specifically: dietary and lifestyle interventions that reduce body weight produce heterogeneous effects on downstream cardiometabolic risk factors, and we leverage intervention trial data where available to identify the genetic basis of that heterogeneity.

---

## Exploratory directions

### Genetic prioritization for polygenic somatic gene editing

Somatic gene editing is an emerging therapeutic modality for cardiometabolic disease, with early clinical applications demonstrating feasibility for single large-effect loci (such as PCSK9-targeting base editors in Phase 1b trials). Extending this approach to polygenic targets requires a principled strategy for target prioritization. We are developing computational methods to address two sources of mismatch between standard GWAS effect estimates and the somatic editing context: the age-dependence of genetic effects (GWAS reflect lifetime germline variation, not adult-onset perturbation), and tissue specificity (current delivery platforms are largely liver-constrained, rendering many GWAS loci mechanistically inaccessible).

### Exposome, metabolome, and cardiometabolic risk

An early-stage interest in how environmental and social determinants of health — captured through exposome-wide approaches — interact with genetic and epigenomic factors to influence cardiometabolic disease risk. Kenny co-convenes the TOPMed Environmental and Social Determinants of Health working group, which provides infrastructure for this work.

---

## Earlier work

### Epigenomics of cardiovascular disease risk

DNA methylation can integrate biological information from genetic variants and environmental inputs, and may therefore act as a useful biomarker for cardiovascular disease. A series of investigations using bioinformatic approaches explored connections between DNA methylation in blood cells and incident cardiovascular events in epidemiological cohorts. Beyond highlighting specific genes and pathways, these studies provided proof-of-concept for three ideas: that DNA methylation can act as a molecular readout of cumulative exposure to cardiovascular risk factors; that a methylation-based cardiovascular risk score may be differentially useful across strata of traditional or genetic risk; and that cross-study prediction of disease risk is viable in the context of cardiovascular epigenomics.

<p align="center">
<img src='/images/mrs_interaction_plot.png' width='400'>
</p>

### Biomedical cloud computing platforms

Genomic science is increasingly migrating to cloud computing platforms, for both scalability and improved data security, but this migration requires substantial infrastructure work. We have developed [workflows](https://dockstore.org/organizations/LSGxE) in Workflow Description Language that conduct GxE tests with a variety of software tools in a way that is portable across cloud platforms, including [Terra](https://terra.bio/), [DNAnexus](https://www.dnanexus.com/), and NHLBI's [BioData Catalyst](https://biodatacatalyst.nhlbi.nih.gov/).
