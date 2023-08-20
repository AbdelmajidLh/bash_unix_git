# List of required libraries
required_libraries <- c("microbiome", "phyloseq", "microbiomeutilities", "RColorBrewer", "ggpubr", "DT", "data.table", "dplyr")

# Check and install missing libraries
missing_libraries <- required_libraries[!sapply(required_libraries, requireNamespace, quietly = TRUE)]

if (length(missing_libraries) > 0) {
  message("Installing missing libraries:")
  install.packages(missing_libraries, dependencies = TRUE, repos = "https://cran.rstudio.com/")
} else {
  message("All required libraries are already installed.")
}

# Load libraries
lapply(required_libraries, library, character.only = TRUE)
