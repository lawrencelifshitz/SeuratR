library(Seurat)
# will copy this to my github/SeuratR private repository (lawrencelifshitz/)

# https://mybinder.readthedocs.io/en/latest/index.html\n",

# I can make a github repository private (so everyone can't see our data)\n",
# https://help.github.com/en/github/administering-a-repository/setting-repository-visibility\n",
# and it says: Private repositories have unlimited collaborators . How well would mybinder\n",
# work with private repositories?\n",
# so github.com/lawrencelifshitz/heatmap-with-mybinder could be changed ...\n",
# I created a new repository, Seurat. It asked me up front if I wanted\n",
# it private, so I said yes. But https://mybinder.readthedocs.io/en/latest/introduction.html\n",
# says MyBinder needs: The repository is in a public location online (e.g., on GitHub or BitBucket)\n",
# So will this work? maybe just make the data private somehow (on dropbox?)?\n",

# I could also leave (large?) data on dropbox and get it via a url:\n",
# https://stackoverflow.com/questions/39496859/how-to-import-a-dataset-from-dropbox\n",
# I think anyone with the url could grab the data, but if my repository was also\n",
# private that would be ok.  Can I password protect the dropbox file?\n",

# note: https://satijalab.org/seurat/vignettes.html has a similar link to a dropbox\n",
# data set \"Seurat object\" in their first paragraph:\n",
# https://www.dropbox.com/s/63gnlw45jf7cje8/pbmc3k_final.rds?dl=0\n",
# that is not meant to be called from code (?) so that is why dl=0?\n",
# https://www.dropboxforum.com/t5/Dropbox-installs-integrations/dl-0-and-dl-1-does-the-same-thing/td-p/170029\n",
# https://help.dropbox.com/files-folders/share/force-download\n",

# the following is a link I generated inside dropbox to https://www.dropbox.com/work/test/pbmcS.rds
# right now its permissions are to allow only me to see it:
dataS = readRDS(url("https://www.dropbox.com/s/fk9zrvski1yfp2f/pbmcS.rds?dl=1")) # 60 MB
# the above works without me providing any ID. Does it know who I am somehow?


# from Seurat's dropbox, after processing steps are applied to dataS: 340 MB
finalS = readRDS(url("https://www.dropbox.com/s/63gnlw45jf7cje8/pbmc3k_final.rds?dl=1"))
meta = finalS@meta.data
Idents(finalS) = finalS$seurat_clusters
DimPlot(finalS)
igenes = head(rownames(finalS))  # AAAS is one gene
FeaturePlot(finalS,igenes)
