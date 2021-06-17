## ----eval=FALSE---------------------------------------------------------------
#  if (!requireNamespace("remotes", quietly = TRUE))
#      install.packages("remotes")
#  remotes::install_github("GRealesM/RapidoPGS")

## ----message=FALSE, warning = FALSE-------------------------------------------
library(RapidoPGS)

## ----eval=FALSE---------------------------------------------------------------
#  create_1000G(directory = "ref-data", remove.related=TRUE, qc.maf = 0.01, qc.hwe=1e-10, qc.geno=0, autosomes.only=TRUE)

## ----eval=FALSE---------------------------------------------------------------
#  
#  dir.create("ukbb")  # Or whatever you like
#  download.file("https://ndownloader.figshare.com/articles/13034123/versions/3", destfile="ukbb/LD_ukbb.zip", mode="wb")
#  unzip(zipfile="ukbb/LD_ukbb.zip", exdir="ukbb/")
#  

## ----eval=FALSE---------------------------------------------------------------
#  ds <- michailidou19

## ----eval=FALSE---------------------------------------------------------------
#  model.LDmat <- rapidopgs_multi(ds ,trait="cc", LDmatrices = "ukbb")

## ----eval=FALSE---------------------------------------------------------------
#  model.refpanel <- rapidopgs_multi(ds, trait="cc", reference = "ref-data", ncores=8)

