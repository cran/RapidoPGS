## ----eval = FALSE-------------------------------------------------------------
#  install.packages("RapidoPGS")

## ----eval=FALSE---------------------------------------------------------------
#  if (!requireNamespace("remotes", quietly = TRUE))
#      install.packages("remotes")
#  remotes::install_github("GRealesM/RapidoPGS")

## ----message=FALSE, warning = FALSE-------------------------------------------
library(RapidoPGS)

## ----eval =FALSE--------------------------------------------------------------
#  ds <- gwascat.download(29059683, hm_only = FALSE)

## -----------------------------------------------------------------------------
ds <- michailidou

## -----------------------------------------------------------------------------
summary(ds)

## -----------------------------------------------------------------------------
setnames(ds, old = c("hm_rsid", "hm_chrom", "hm_pos", "hm_other_allele", "hm_effect_allele", "hm_beta", "hm_effect_allele_frequency", "standard_error", "p_value"), new=c("SNPID","CHR", "BP","REF", "ALT", "BETA", "ALT_FREQ", "SE", "P"))

## -----------------------------------------------------------------------------
ds <- ds[CHR != "X",]

## -----------------------------------------------------------------------------
full_PGS <- rapidopgs_single(ds, trait = "cc", build = "hg38")

## -----------------------------------------------------------------------------
head(full_PGS)

## -----------------------------------------------------------------------------
PGS_1e4 <- rapidopgs_single(ds, trait ="cc", build = "hg38", filt_threshold = 1e-4)
head(PGS_1e4)

## -----------------------------------------------------------------------------
PGS_1e4_norecalc <- rapidopgs_single(ds, trait ="cc", build = "hg38", filt_threshold = 1e-4, recalc = FALSE)
head(PGS_1e4_norecalc)

## -----------------------------------------------------------------------------
PGS_top10 <- rapidopgs_single(ds, trait ="cc", build = "hg38", filt_threshold = 10)
head(PGS_top10)

