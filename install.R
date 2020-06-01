# not sure if I can "install" from other locations (eg. Bioconductor), mpan is the default. try it:
# https://github.com/jupyter/repo2docker/issues/24  - see comments near bottom.
# Seurat needs mutoss and mutoss needs multtest.  I suppose if I DO get installs from Bioconductor working I
# could just install Seurat from there too and it would all happen automatically. But I started by trying
# to install everything from mpan, but then I'm left with trying to grab multteest from Bioconductor:
install.packages("BiocManager")
BiocManager::install("multtest")  # no longer provided at rpan (or mpan), need to get it from Bioconductor.
install.packages("Seurat")
install.packages("ggplot2")
install.packages("cowplot")
install.packages("dplyr")
install.packages("tictoc")
install.packages("rdrop2")
install.packages("httpuv")   # already installed I think by rdrop2.  packs = installed.packages() to see them and their version info.
# install.packages("clusterProfiler")  # for CompareClusters2.R
# BiocManager::install("org.Hs.eg.db")  
