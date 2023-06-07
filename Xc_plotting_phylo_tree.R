#libraries
library(phyloseq)
library(dplyr)
library(ggplot2)
library(ggtree)
#load data 
filepath = "C:/Users/madel/OneDrive - NTNU/Doktorgrad/Project 8 Phage therapy and AB in semi-cont/R-analysis"
data = readRDS(file = paste0(filepath, "/data/2023-02-02_ASV_raw_dataset_rna_dna.rds") ) 
ggtree(data) + layout_circular() + geom_tiplab()
ggtree(data)  + geom_tiplab()
ggsave(filename = paste0(filepath, "/figures/2022-09-15_phylogenetic_three_DNAcDNA.svg"), width = 500, height = 500, units = "mm")

data_dna = subset_samples(data, Extraction == "DNA")
data_dna = prune_taxa(taxa_sums(data_dna) > 0, data_dna) 
ggtree(data_dna) + layout_circular() + geom_tiplab()
ggsave(filename = paste0(filepath, "/figures/2023-02-02_phylogenetic_three_DNA.svg"), width = 500, height = 500, units = "mm")
