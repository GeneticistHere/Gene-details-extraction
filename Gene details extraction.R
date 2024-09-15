# Load necessary libraries
library(rtracklayer)
library(dplyr)

# Path to your GFF3 file
gff3_file <- "/Users/macbook/Downloads/PitayaGenomic (2).gff3"

# Read the GFF3 file
gff3_data <- import(gff3_file, format = "gff3")

# List of gene IDs to extract
gene_ids <- c("HU10G01510.1", "HU01G01634.1", "HU05G01931.1", "HU02G02777.1", 
              "HU09G01343.1", "HU05G01710.1", "HU06G00411.1", "HU05G00106.1", 
              "HU05G00484.1", "HU09G01339.1", "HU03G01517.1", "HU08G00283.1", 
              "HU01G02705.1", "HU07G00041.1", "HU04G01891.1", "HU10G00045.1", 
              "HU08G01332.1", "HU02G02539.1", "HU06G02562.1", "HU04G00262.1", 
              "HU11G01744.1", "HU10G00405.1", "HU04G00301.1", "HU08G01942.1", 
              "HU09G01332.1", "HU04G01010.1", "HU02G01423.1", "HU03G01848.1", 
              "HU10G00322.1", "HU07G00077.1", "HU04G01916.1", "HU06G01192.1", 
              "HU01G00584.1", "HU05G00064.1", "HU01G01699.1", "HU10G00427.1", 
              "HU06G02430.1", "HU01G01395.1", "HU11G01694.1", "HU08G00218.1", 
              "HU06G02188.1", "HU09G01312.1", "HU09G01525.1", "HU11G00035.1", 
              "HU06G02594.1", "HU09G01148.1", "HU06G00952.1", "HU11G01740.1", 
              "HU02G00385.1", "HU02G00374.1", "HU02G03012.1", "HU10G01980.1", 
              "HU03G00514.1", "HU04G02201.1", "HU07G01666.1", "HU05G01336.1", 
              "HU08G01085.1", "HU08G01913.1", "HU01G02778.1", "HU10G01349.1", 
              "HU02G03246.1", "HU01G00960.1", "HU04G00611.1", "HU02G02628.1", 
              "HU08G01835.1", "HU06G01151.1", "HU03G01032.1", "HU01G02174.1", 
              "HU02G00037.1", "HU09G01313.1")

# Filter the GFF3 data to extract information for the specified genes
gene_details <- gff3_data %>%
  as.data.frame() %>%
  filter(ID %in% gene_ids)
