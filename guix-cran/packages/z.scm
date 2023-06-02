(define-module (guix-cran packages z)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages v)
  #:use-module (guix-cran packages u)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages r)
  #:use-module (guix-cran packages q)
  #:use-module (guix-cran packages p)
  #:use-module (guix-cran packages o)
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages j)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-zoomr
  (package
    (name "r-zoomr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zoomr" version))
              (sha256
               (base32
                "0i0b4v204p9cpgpw3dn5b29hvmf7r2k7swld0n9iy77asmf5gnvs"))))
    (properties `((upstream-name . "zoomr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/chrisumphlett/zoomr")
    (synopsis "Connect to Your 'Zoom' Data")
    (description
     "Facilitates making a connection to the Zoom API and executing various queries.
You can use it to get data on Zoom webinars and Zoom meetings.  The Zoom
documentation is available at <https://developers.zoom.us/docs/api/>.  This
package is not supported by Zoom (owner of the software).")
    (license license:cc0)))

(define-public r-zonohedra
  (package
    (name "r-zonohedra")
    (version "0.2-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zonohedra" version))
              (sha256
               (base32
                "0bvlrbc3nkaw9pjzl65idw8ybk7frhyihr3cp93jby5rnip8xpyz"))))
    (properties `((upstream-name . "zonohedra")))
    (build-system r-build-system)
    (propagated-inputs (list r-logger))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=zonohedra")
    (synopsis "Compute and Plot Zonohedra from Vector Generators")
    (description
     "Computes a zonohedron from real vector generators.  The package also computes
zonogons (2D zonotopes) and zonosegs (1D zonotopes).  An elementary S3 class for
matroids is included, which supports matroids with rank 3, 2, and 1.
Optimization methods are taken from Heckbert (1985)
<https://www.cs.cmu.edu/~ph/zono.ps.gz>.")
    (license license:gpl2+)))

(define-public r-zoid
  (package
    (name "r-zoid")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zoid" version))
              (sha256
               (base32
                "0x37250fq3a3jbl1a2p8zkbacwzhc1xylk1nnfmx2fcgjif40lmq"))))
    (properties `((upstream-name . "zoid")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-gtools
                             r-compositions
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://nwfsc-cb.github.io/zoid/")
    (synopsis "Bayesian Zero-and-One Inflated Dirichlet Regression Modelling")
    (description
     "Fits Dirichlet regression and zero-and-one inflated Dirichlet regression with
Bayesian methods implemented in Stan.  These models are sometimes referred to as
trinomial mixture models; covariates and overdispersion can optionally be
included.")
    (license license:gpl3+)))

(define-public r-zmisc
  (package
    (name "r-zmisc")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zmisc" version))
              (sha256
               (base32
                "154qm0f2ds40gwxqv30nf2px26clkf2lw2y51ak12gxpj08b6mix"))))
    (properties `((upstream-name . "zmisc")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/torfason/zmisc/")
    (synopsis "Vector Look-Ups and Safer Sampling")
    (description
     "This package provides a collection of utility functions that facilitate looking
up vector values from a lookup table, and support a safer approach to vector
sampling, sequence generation, and aggregation.")
    (license license:expat)))

(define-public r-zipsae
  (package
    (name "r-zipsae")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipsae" version))
              (sha256
               (base32
                "03kwfpjpwxqlphdy7xyhsf7d0mcg67jhvm7yz4i73ckmjdmq7wrd"))))
    (properties `((upstream-name . "zipsae")))
    (build-system r-build-system)
    (home-page "https://github.com/dheel/zipsae")
    (synopsis "Small Area Estimation with Zero-Inflated Model")
    (description
     "This function produces empirical best linier unbiased predictions (EBLUPs) for
Zero-Inflated data and its Relative Standard Error.  Small Area Estimation with
Zero-Inflated Model (SAE-ZIP) is a model developed for Zero-Inflated data that
can lead us to overdispersion situation.  To handle this kind of situation, this
model is created.  The model in this package is based on Small Area Estimation
with Zero-Inflated Poisson model proposed by Dian Christien Arisona
(2018)<https://repository.ipb.ac.id/handle/123456789/92308>.  For the data
sample itself, we use combination method between Roberto Benavent and Domingo
Morales (2015)<doi:10.1016/j.csda.2015.07.013> and Sabine Krieg, Harm Jan
Boonstra and Marc Smeets (2016)<doi:10.1515/jos-2016-0051>.")
    (license license:gpl3)))

(define-public r-ziprop
  (package
    (name "r-ziprop")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZIprop" version))
              (sha256
               (base32
                "1gvf6z7mx543a0hiqcknwhkplqa3mfmw3swi8n9vma10bqmgysx7"))))
    (properties `((upstream-name . "ZIprop")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgenoud r-purrr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.paca.inrae.fr/meribaud/ziprop")
    (synopsis
     "Permutations Tests and Performance Indicator for Zero-Inflated Proportions Response")
    (description
     "Permutations tests to identify factor correlated to zero-inflated proportions
response.  Provide a performance indicator based on Spearman correlation to
quantify the part of correlation explained by the selected set of factors.  See
details for the method at the following preprint e.g.:
<https://hal.archives-ouvertes.fr/hal-02936779v3>.")
    (license license:gpl3)))

(define-public r-zipr
  (package
    (name "r-zipr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipR" version))
              (sha256
               (base32
                "1aaw3dslhsw3zgxvkc1v60vsk44x64i4qmjwx0gq4f7dad1rbiqp"))))
    (properties `((upstream-name . "zipR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leslie-huang/zipR")
    (synopsis "Pythonic Zip() for R")
    (description
     "This package implements Python-style zip for R. Is a more flexible version of
cbind.")
    (license license:gpl3)))

(define-public r-zipg
  (package
    (name "r-zipg")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZIPG" version))
              (sha256
               (base32
                "00dbxywmfkbi7svpnagqy49vfff33j9kychv6x4bpsm9inh8r94a"))))
    (properties `((upstream-name . "ZIPG")))
    (build-system r-build-system)
    (propagated-inputs (list r-pscl r-optimr r-mass))
    (home-page "https://github.com/roulan2000/ZIPG")
    (synopsis "Zero-Inflated Poisson-Gamma Regression")
    (description
     "We provide a flexible Zero-inflated Poisson-Gamma Model (ZIPG) by connecting
both the mean abundance and the variability to different covariates, and build
valid statistical inference procedures for both parameter estimation and
hypothesis testing.  These functions can be used to analyze microbiome count
data with zero-inflation and overdispersion.  The model is discussed in Jiang et
al (2023) <doi:10.1080/01621459.2022.2151447>.")
    (license license:gpl2+)))

(define-public r-zipfr
  (package
    (name "r-zipfr")
    (version "0.6-70")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipfR" version))
              (sha256
               (base32
                "15ng7rj7qbgxajx8jb9kv04xmbidg9wwzxr2xaskmlaxrxlqac8c"))))
    (properties `((upstream-name . "zipfR")))
    (build-system r-build-system)
    (home-page "https://zipfR.R-Forge.R-project.org/")
    (synopsis "Statistical Models for Word Frequency Distributions")
    (description
     "Statistical models and utilities for the analysis of word frequency
distributions.  The utilities include functions for loading, manipulating and
visualizing word frequency data and vocabulary growth curves.  The package also
implements several statistical models for the distribution of word frequencies
in a population. (The name of this package derives from the most famous word
frequency distribution, Zipf's law.)")
    (license license:gpl3)))

(define-public r-zipfextr
  (package
    (name "r-zipfextr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipfextR" version))
              (sha256
               (base32
                "03rlvvw7rfbhsbwd5njmgkkkrxq1lgjdydmpkn6h1hi97pc0gbhh"))))
    (properties `((upstream-name . "zipfextR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-tolerance r-copula))
    (home-page "https://github.com/ardlop/zipfextR")
    (synopsis "Zipf Extended Distributions")
    (description
     "Implementation of four extensions of the Zipf distribution: the Marshall-Olkin
Extended Zipf (MOEZipf) PÃ©rez-Casany, M., & Casellas, A. (2013)
<arXiv:1304.4540>, the Zipf-Poisson Extreme (Zipf-PE), the Zipf-Poisson Stopped
Sum (Zipf-PSS) and the Zipf-Polylog distributions.  In log-log scale, the two
first extensions allow for top-concavity and top-convexity while the third one
only allows for top-concavity.  All the extensions maintain the linearity
associated with the Zipf model in the tail.")
    (license license:gpl3)))

(define-public r-zipfa
  (package
    (name "r-zipfa")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZIPFA" version))
              (sha256
               (base32
                "134pkdn4slhiv27rdkkmh2z7xch30ns0jhzxgd7r05bky0z1iri1"))))
    (properties `((upstream-name . "ZIPFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-trustoptim r-optimx r-matrix r-foreach
                             r-doparallel))
    (home-page "https://zjph602xtc.github.io/ZIPFA/")
    (synopsis "Zero Inflated Poisson Factor Analysis")
    (description
     "Estimation methods for zero-inflated Poisson factor analysis (ZIPFA) on sparse
data.  It provides estimates of coefficients in a new type of zero-inflated
regression.  It provides a cross-validation method to determine the potential
rank of the data in the ZIPFA and conducts zero-inflated Poisson factor analysis
based on the determined rank.")
    (license license:gpl2+)))

(define-public r-zipcoder
  (package
    (name "r-zipcoder")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipcodeR" version))
              (sha256
               (base32
                "1fmjqfhxd0lgsn6l5jvi3qzhbq9865xcps3jm9iy72jx7jxr59lk"))))
    (properties `((upstream-name . "zipcodeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidycensus
                             r-stringr
                             r-rsqlite
                             r-rlang
                             r-raster
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-dbi
                             r-curl))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/gavinrozzi/zipcodeR/")
    (synopsis "Data & Functions for Working with US ZIP Codes")
    (description
     "Make working with ZIP codes in R painless with an integrated dataset of U.S. ZIP
codes and functions for working with them.  Search ZIP codes by multiple
geographies, including state, county, city & across time zones.  Also included
are functions for relating ZIP codes to Census data, geocoding & distance
calculations.")
    (license license:gpl3)))

(define-public r-zipbayes
  (package
    (name "r-zipbayes")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZIPBayes" version))
              (sha256
               (base32
                "0j56smgf44fki70jc6aypksbl70pyppc6s3xv82yrq5rndym077k"))))
    (properties `((upstream-name . "ZIPBayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=ZIPBayes")
    (synopsis
     "Bayesian Methods in the Analysis of Zero-Inflated Poisson Model")
    (description
     "Implementation of zero-inflated Poisson models under Bayesian framework using
data augmentation as discussed in Chapter 5 of Zhang (2020)
<https://hdl.handle.net/10012/16378>.  This package is constructed in
accommodating four different scenarios: the general scenario, the scenario with
measurement error in responses, the external validation scenario, and the
internal validation scenario.")
    (license license:gpl2+)))

(define-public r-zipangu
  (package
    (name "r-zipangu")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zipangu" version))
              (sha256
               (base32
                "0l5jhv0xl0rh7z546zn2p3gaci1v7d9d3ha6040kixclkmhb5dp6"))))
    (properties `((upstream-name . "zipangu")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-stringi
                             r-rlang
                             r-purrr
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-dplyr
                             r-arabic2kansuji))
    (home-page "https://uribo.github.io/zipangu/")
    (synopsis "Japanese Utility Functions and Data")
    (description
     "Some data treated by the Japanese R user require unique operations and
processing.  These are caused by address, Kanji, and traditional year
representations.  zipangu transforms specific to Japan into something more
general one.")
    (license license:expat)))

(define-public r-zinarp
  (package
    (name "r-zinarp")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZINARp" version))
              (sha256
               (base32
                "1s5nvxcc7nw2kz90i7fqw5fi2qzzbsm5ppn92695v44q38h8jw9s"))))
    (properties `((upstream-name . "ZINARp")))
    (build-system r-build-system)
    (propagated-inputs (list r-progress))
    (home-page "https://cran.r-project.org/package=ZINARp")
    (synopsis "Simulate INAR/ZINAR(p) Models and Estimate Its Parameters")
    (description
     "Simulation, exploratory data analysis and Bayesian analysis of the p-order
Integer-valued Autoregressive (INAR(p)) and Zero-inflated p-order Integer-valued
Autoregressive (ZINAR(p)) processes, as described in Garay et al. (2020)
<doi:10.1080/00949655.2020.1754819>.")
    (license license:gpl3+)))

(define-public r-zinar1
  (package
    (name "r-zinar1")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZINAR1" version))
              (sha256
               (base32
                "1didfjb4215k9q82n1vaqln6f7fszsycsflydak2zl7xwficwhy6"))))
    (properties `((upstream-name . "ZINAR1")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-statmod
                             r-scales
                             r-mass
                             r-gtools
                             r-gamlss-dist))
    (home-page "https://cran.r-project.org/package=ZINAR1")
    (synopsis
     "Simulates ZINAR(1) Model and Estimates Its Parameters Under Frequentist Approach")
    (description
     "Generates Realizations of First-Order Integer Valued Autoregressive Processes
with Zero-Inflated Innovations (ZINAR(1)) and Estimates its Parameters as
described in Garay et al. (2021) <doi:10.1007/978-3-030-82110-4_2>.")
    (license license:gpl3+)))

(define-public r-zillowr
  (package
    (name "r-zillowr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZillowR" version))
              (sha256
               (base32
                "1q0hdm654p6vkmajwrhx18ifm9sc4czdfd7cabhkqdky4p07c89r"))))
    (properties `((upstream-name . "ZillowR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcurl))
    (home-page "https://fascinatingfingers.gitlab.io/zillowr")
    (synopsis "R Interface to Zillow Real Estate and Mortgage Data API")
    (description
     "Zillow, an online real estate company, provides real estate and mortgage data
for the United States through a REST API. The ZillowR package provides an R
function for each API service, making it easy to make API calls and process the
response into convenient, R-friendly data structures.  See
<https://www.zillow.com/howto/api/APIOverview.htm> for the Zillow API
Documentation.  NOTE: Zillow deprecated their API on 2021-09-30, and this
package is now deprecated as a result.")
    (license license:gpl3+)))

(define-public r-zic
  (package
    (name "r-zic")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zic" version))
              (sha256
               (base32
                "1vd64ljigf6iwgzlgdxgj65nlwir176h7ddznddpaz2abh6n6zwp"))))
    (properties `((upstream-name . "zic")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-coda))
    (home-page "https://cran.r-project.org/package=zic")
    (synopsis "Bayesian Inference for Zero-Inflated Count Models")
    (description
     "This package provides MCMC algorithms for the analysis of zero-inflated count
models.  The case of stochastic search variable selection (SVS) is also
considered.  All MCMC samplers are coded in C++ for improved efficiency.  A data
set considering the demand for health care is provided.")
    (license license:gpl2+)))

(define-public r-zibseq
  (package
    (name "r-zibseq")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZIBseq" version))
              (sha256
               (base32
                "13rjy4jl9wil6hhpra4qmdis0iyqxchzsf9l7q6r0dz1f7dpd2nq"))))
    (properties `((upstream-name . "ZIBseq")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-gamlss-dist r-gamlss))
    (home-page "https://cran.r-project.org/package=ZIBseq")
    (synopsis
     "Differential Abundance Analysis for Metagenomic Data via Zero-Inflated Beta Regression")
    (description
     "Detects abundance differences across clinical conditions.  Besides, it takes the
sparse nature of metagenomic data into account and handles compositional data
efficiently.")
    (license license:gpl2+)))

(define-public r-zfit
  (package
    (name "r-zfit")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zfit" version))
              (sha256
               (base32
                "0qzfl1fvs3rw5fnf27d26arbi70bj2cgbg7b8jbnka2vb2c20kwm"))))
    (properties `((upstream-name . "zfit")))
    (build-system r-build-system)
    (home-page "https://torfason.github.io/zfit/")
    (synopsis "Fit Models in a Pipe")
    (description
     "The goal of zfit is to improve the usage of basic model fitting functions within
a piped work flow, in particular when passing and processing a data.frame using
dplyr or similar packages.")
    (license license:expat)))

(define-public r-zetasuite
  (package
    (name "r-zetasuite")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZetaSuite" version))
              (sha256
               (base32
                "10b0acz88vc80x49wwv581abym75wswi4z92mnl4xn0vw62vjpqa"))))
    (properties `((upstream-name . "ZetaSuite")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtsne
                             r-reshape2
                             r-rcolorbrewer
                             r-mixtools
                             r-gridextra
                             r-ggplot2
                             r-e1071
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ZetaSuite")
    (synopsis
     "Analyze High-Dimensional High-Throughput Dataset and Quality Control Single-Cell RNA-Seq")
    (description
     "The advent of genomic technologies has enabled the generation of two-dimensional
or even multi-dimensional high-throughput data, e.g., monitoring multiple
changes in gene expression in genome-wide siRNA screens across many different
cell types (E Robert McDonald 3rd (2017) <doi: 10.1016/j.cell.2017.07.005> and
Tsherniak A (2017) <doi: 10.1016/j.cell.2017.06.010>) or single cell
transcriptomics under different experimental conditions.  We found that simple
computational methods based on a single statistical criterion is no longer
adequate for analyzing such multi-dimensional data.  We herein introduce
ZetaSuite', a statistical package initially designed to score hits from
two-dimensional RNAi screens.We also illustrate a unique utility of ZetaSuite in
analyzing single cell transcriptomics to differentiate rare cells from damaged
ones (Vento-Tormo R (2018) <doi: 10.1038/s41586-018-0698-6>).  In ZetaSuite', we
have the following steps: QC of input datasets, normalization using
Z-transformation, Zeta score calculation and hits selection based on defined
Screen Strength.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-zetadiv
  (package
    (name "r-zetadiv")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zetadiv" version))
              (sha256
               (base32
                "0m147z864g2pca28gbna1bb7jqr2f74x15fj8v8hhs3a2lr8lh37"))))
    (properties `((upstream-name . "zetadiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-scam
                             r-nnls
                             r-mgcv
                             r-glm2
                             r-geodist
                             r-car))
    (home-page "https://cran.r-project.org/package=zetadiv")
    (synopsis
     "Functions to Compute Compositional Turnover Using Zeta Diversity")
    (description
     "This package provides functions to compute compositional turnover using
zeta-diversity, the number of species shared by multiple assemblages.  The
package includes functions to compute zeta-diversity for a specific number of
assemblages and to compute zeta-diversity for a range of numbers of assemblages.
 It also includes functions to explain how zeta-diversity varies with distance
and with differences in environmental variables between assemblages, using
generalised linear models, linear models with negative constraints, generalised
additive models,shape constrained additive models, and I-splines.")
    (license license:gpl3)))

(define-public r-zerotradeflow
  (package
    (name "r-zerotradeflow")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zerotradeflow" version))
              (sha256
               (base32
                "03fvhk3yd6grqs0d6m3j537xzy0n9s64947g7gagaqbrm3n8j1m6"))))
    (properties `((upstream-name . "zerotradeflow")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/AlexandreLoures/zerotradeflow")
    (synopsis "An Implementation for the Gravitational Models of Trade")
    (description
     "This package provides a system for creating the bilateral trade flow between a
country pair equal to zero.  You provide the data, tell get_zerotradeflow()
which variables are of interest and it expands the base by creating the
bilateral zero trade flow.  The bases on the flow of trade between countries
only report positive trade (greater than zero), however, for some analyzes of
gravitacional models, data on zero flow is also necessary.  Some examples for
Gravity Model: Figueiredo and Loures (2016) <doi:10.5935/0034-7140.20160015> and
Yotov, Piermartini, Monteiro and Larch
<https://vi.unctad.org/tpa/web/docs/vol2/book.pdf>.")
    (license license:expat)))

(define-public r-zeroeqpart
  (package
    (name "r-zeroeqpart")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zeroEQpart" version))
              (sha256
               (base32
                "1n24nqyl0irpyspwx4b73xy228a84aa8zsn9fcf2lrlni5vyzmm0"))))
    (properties `((upstream-name . "zeroEQpart")))
    (build-system r-build-system)
    (propagated-inputs (list r-ppcor r-mass))
    (home-page "https://github.com/djrichar92/zeroEQpart")
    (synopsis "Zero Order vs (Semi) Partial Correlation Test and CI")
    (description
     "Uses bootstrap to test zero order correlation being equal to a partial or
semi-partial correlation (one or two tailed).  Confidence intervals for the
parameter (zero order minus partial) can also be determined.  Implements the
bias-corrected and accelerated bootstrap method as described in \"An Introduction
to the Bootstrap\" Efron (1983) <0-412-04231-2>.")
    (license license:gpl2)))

(define-public r-zenplots
  (package
    (name "r-zenplots")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zenplots" version))
              (sha256
               (base32
                "1r105ay0p00wfly8z54dg18i1fq7ppvxzri49i7zrlimqawzv19s"))))
    (properties `((upstream-name . "zenplots")))
    (build-system r-build-system)
    (propagated-inputs (list r-pairviz r-mass r-loon r-graph))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/great-northern-diver/zenplots")
    (synopsis "Zigzag Expanded Navigation Plots")
    (description
     "Graphical tools for visualizing high-dimensional data along a path of
alternating one- and two-dimensional plots.  Note that this includes interactive
graphics plots based on loon in turn based on tcltk (included as part of the
standard R distribution).  It also requires graph from Bioconductor.  For more
detail on use and algorithms, see <doi:10.18637/jss.v095.i04>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-zendeskr
  (package
    (name "r-zendeskr")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zendeskR" version))
              (sha256
               (base32
                "06cjwk08w3x6dx717123psinid5bx6c563jnfn890373jw6xnfrk"))))
    (properties `((upstream-name . "zendeskR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-rcurl))
    (home-page "https://cran.r-project.org/package=zendeskR")
    (synopsis "Zendesk API Wrapper")
    (description "This package provides an R wrapper for the Zendesk API")
    (license license:gpl2)))

(define-public r-zen4r
  (package
    (name "r-zen4r")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zen4R" version))
              (sha256
               (base32
                "14psa7y6dh9iw2xcjrz4zjv4aclz9m2azr26v7xv42kd4jhk6fhv"))))
    (properties `((upstream-name . "zen4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-r6
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-atom4r))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eblondel/zen4R")
    (synopsis "Interface to 'Zenodo' REST API")
    (description
     "This package provides an Interface to Zenodo (<https://zenodo.org>) REST API,
including management of depositions, attribution of DOIs by Zenodo and upload
and download of files.")
    (license license:expat)))

(define-public r-zeitgebr
  (package
    (name "r-zeitgebr")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zeitgebr" version))
              (sha256
               (base32
                "1h2zx3ah1xdyyag40ragrv7gvpnlzqmappbnjp971dn9khqdxfqs"))))
    (properties `((upstream-name . "zeitgebr")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveletcomp r-pracma r-lomb r-data-table
                             r-behavr))
    (home-page "https://github.com/rethomics/zeitgebr")
    (synopsis "Analysis of Circadian Behaviours")
    (description
     "Use behavioural variables to compute period, rhythmicity and other circadian
parameters.  Methods include computation of chi square periodograms (Sokolove
and Bushell (1978) <DOI:10.1016/0022-5193(78)90022-X>), Lomb-Scargle
periodograms (Lomb (1976) <DOI:10.1007/BF00648343>, Scargle (1982)
<DOI:10.1086/160554>, Ruf (1999) <DOI:10.1076/brhm.30.2.178.1422>), and
autocorrelation-based periodograms.")
    (license license:gpl3)))

(define-public r-zebu
  (package
    (name "r-zebu")
    (version "0.2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zebu" version))
              (sha256
               (base32
                "0nd44j2zxsagg9sav3lm8gzbyq8cdk1kfgbn503hb3a58kcqyg0d"))))
    (properties `((upstream-name . "zebu")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcpp r-ggplot2 r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/oliviermfmartin/zebu")
    (synopsis "Local Association Measures")
    (description
     "This package implements the estimation of local (and global) association
measures: Lewontin's D, Ducher's Z, pointwise mutual information, normalized
pointwise mutual information and chi-squared residuals.  The significance of
local (and global) association is accessed using p-values estimated by
permutations.")
    (license license:gpl3)))

(define-public r-zebook
  (package
    (name "r-zebook")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ZeBook" version))
              (sha256
               (base32
                "0v98kbz9njjdx60x9dn8hl8mc6x19i5knjyg2gkwfd667yy1rkl6"))))
    (properties `((upstream-name . "ZeBook")))
    (build-system r-build-system)
    (propagated-inputs (list r-triangle r-desolve))
    (home-page "https://cran.r-project.org/package=ZeBook")
    (synopsis "Working with Dynamic Models for Agriculture and Environment")
    (description
     "R package accompanying the book Working with dynamic models for agriculture and
environment, by Daniel Wallach (INRA), David Makowski (INRA), James W. Jones
(U.of Florida), Francois Brun (ACTA).  3rd edition 2018-09-27.")
    (license license:lgpl3)))

(define-public r-zdeskr
  (package
    (name "r-zdeskr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zdeskR" version))
              (sha256
               (base32
                "0a22yhsvzc0z4xbj7cfy33gf73zi1a8ryp0x4na3kximwiiw6v09"))))
    (properties `((upstream-name . "zdeskR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-purrr
                             r-plyr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/chrisumphlett/zdeskR")
    (synopsis "Connect to Your 'Zendesk' Data")
    (description
     "Facilitates making a connection to the Zendesk API and executing various
queries.  You can use it to get ticket, ticket metrics, and user data.  The
Zendesk documentation is available at <https://developer.zendesk.com/rest_api
/docs/support/introduction>.  This package is not supported by Zendesk (owner of
the software).")
    (license license:cc0)))

(define-public r-zcurve
  (package
    (name "r-zcurve")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zcurve" version))
              (sha256
               (base32
                "1bgc2inc5wmimbhmxqlyg02hcf3n06z2fx26dnqr9baabmdgkpfa"))))
    (properties `((upstream-name . "zcurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpp r-nleqslv r-evmix))
    (home-page "https://fbartos.github.io/zcurve/")
    (synopsis "An Implementation of Z-Curves")
    (description
     "An implementation of z-curves - a method for estimating expected discovery and
replicability rates on the bases of test-statistics of published studies.  The
package provides functions for fitting the new density and EM version (BartoÅ¡ &
Schimmack, 2020, <doi:10.31234/osf.io/urgtn>), censored observations, as well as
the original density z-curve (Brunner & Schimmack, 2020,
<doi:10.15626/MP.2018.874>).  Furthermore, the package provides summarizing and
plotting functions for the fitted z-curve objects.  See the aforementioned
articles for more information about the z-curves, expected discovery and
replicability rates, validation studies, and limitations.")
    (license license:gpl3)))

(define-public r-zctacrosswalk
  (package
    (name "r-zctacrosswalk")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zctaCrosswalk" version))
              (sha256
               (base32
                "14yda45nqn9ywb7zpwp4kmjziglj0qjgm02lmi8ndvc5wi2r1ma7"))))
    (properties `((upstream-name . "zctaCrosswalk")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-readr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MarketBridge/zctaCrosswalk")
    (synopsis
     "Crosswalk Between 2020 Census ZIP Code Tabulation Areas (ZCTAs), States and Counties")
    (description
     "This package contains the US Census Bureau's 2020 ZCTA to County Relationship
File, as well as convenience functions to translate between States, Counties and
ZIP Code Tabulation Areas (ZCTAs).")
    (license license:expat)))

(define-public r-zalpha
  (package
    (name "r-zalpha")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "zalpha" version))
              (sha256
               (base32
                "04hi5lxgcqzmkbqppp5fv8x7wdgap3bgr8b8pv4pvavzh73jlmxs"))))
    (properties `((upstream-name . "zalpha")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=zalpha")
    (synopsis "Run a Suite of Selection Statistics")
    (description
     "This package provides a suite of statistics for identifying areas of the genome
under selective pressure.  See Jacobs, Sluckin and Kivisild (2016)
<doi:10.1534/genetics.115.185900>.")
    (license license:expat)))

(define-public r-z10
  (package
    (name "r-z10")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Z10" version))
              (sha256
               (base32
                "02kxlzplmss68zj1z97fvpcjyhhpic9hlx8f5j3gqn3m1mqm1dja"))))
    (properties `((upstream-name . "Z10")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rjson r-magrittr r-lubridate r-dplyr))
    (home-page "https://cran.r-project.org/package=Z10")
    (synopsis "Simple Ecological Statistics from the NEON Network")
    (description
     "This package provides simple statistics from instruments and observations at
sites in the NEON network, and acts as a simple interface for v0 of the National
Ecological Observatory Network (NEON) API. Statistics are generated for
meteorologic and soil-based observations, and are presented for daily, annual,
and one-time observations at all available NEON sites.  Users can also retrieve
any dataset publicly hosted by NEON. Metadata for NEON sites and data products
can be returned, as well as information on data product availability by site and
date.  For more information on NEON, please visit <https://www.neonscience.org>.
 For detailed data product information, please see the NEON data product catalog
at <https://data.neonscience.org/data-product-catalog>.")
    (license license:gpl3)))

