(define-module (guix-cran packages z)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages compression)
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

(define-public r-ztils
  (package
    (name "r-ztils")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ztils" version))
       (sha256
        (base32 "0zm0rm4gshqnr3q4fz27d9f7mjj996lnsf14j7fqrjviy3c9c4c5"))))
    (properties `((upstream-name . "ztils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan r-scico r-mass r-ggplot2))
    (home-page "https://zachpeagler.github.io/ztils/")
    (synopsis "Various Common Statistical Utilities")
    (description
     "Utilities for simplifying common statistical operations including probability
density functions, cumulative distribution functions, Kolmogorov-Smirnov tests,
principal component analysis plots, and prediction plots.")
    (license license:expat)))

(define-public r-zoomr
  (package
    (name "r-zoomr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zoomr" version))
       (sha256
        (base32 "0l1ii1a0mk2drcrblfw5q4n5k2yihyh9pmn7nm0qs8al5zfkxfik"))))
    (properties `((upstream-name . "zoomr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-zoomerjoin
  (package
    (name "r-zoomerjoin")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zoomerjoin" version))
       (sha256
        (base32 "0z5nvpxmmawbjbw2iiah74h9pwn3p6s7lfn4apkz2ay0f9ynkwf8"))))
    (properties `((upstream-name . "zoomerjoin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-tidyr r-tibble r-dplyr r-collapse))
    (native-inputs (list r-knitr))
    (home-page "https://beniamino.org/zoomerjoin/")
    (synopsis "Superlatively Fast Fuzzy Joins")
    (description
     "Empowers users to fuzzily-merge data frames with millions or tens of millions of
rows in minutes with low memory usage.  The package uses the locality sensitive
hashing algorithms developed by Datar, Immorlica, Indyk and Mirrokni (2004)
<doi:10.1145/997817.997857>, and Broder (1998) <doi:10.1109/SEQUEN.1997.666900>
to avoid having to compare every pair of records in each dataset, resulting in
fuzzy-merges that finish in linear time.")
    (license license:gpl3+)))

(define-public r-zooid
  (package
    (name "r-zooid")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZooID" version))
       (sha256
        (base32 "0717gyn5r8gvrww840h592avqqxgf88wnabjnqvmqkaflzib5smy"))))
    (properties `((upstream-name . "ZooID")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magick))
    (home-page "https://github.com/arickGrootveld/ZooID_RPackage")
    (synopsis "Load, Segment and Classify Zooplankton Images")
    (description
     "This tool provides functions to load, segment and classify zooplankton images.
The image processing algorithms and the machine learning classifiers in this
package are (will be, since these have not been added yet) direct ports of an
early python implementation that can be found at
<https://github.com/@code{arickGrootveld/ZooID>}.  The model weights and
datasets (also not added yet) that are a part of this package can also be found
at Arick Grootveld, Eva R. Kozak, Carmen Franco-Gordo (2023)
<doi:10.5281/zenodo.7979996>.")
    (license license:gpl3+)))

(define-public r-zonohedra
  (package
    (name "r-zonohedra")
    (version "0.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zonohedra" version))
       (sha256
        (base32 "0b84ba66v17bindn43zr0s5a9sfb53wja45w2rvycvvs865f8204"))))
    (properties `((upstream-name . "zonohedra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zoid" version))
       (sha256
        (base32 "1yr958iqk2w0r2cmvh4v2k1d20lrz6l7h9vdmah12krc04nma675"))))
    (properties `((upstream-name . "zoid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-gtools
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://noaa-nwfsc.github.io/zoid/")
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
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zmisc" version))
       (sha256
        (base32 "1mkk8a93xqwzrs99g6zmd5x3yn0qrz3v44y35jas9wl8x92bzr9f"))))
    (properties `((upstream-name . "zmisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/torfason/zmisc/")
    (synopsis "Vector Look-Ups and Safer Sampling")
    (description
     "This package provides a collection of utility functions that facilitate looking
up vector values from a lookup table, annotate values in at table for clearer
viewing, and support a safer approach to vector sampling, sequence generation,
and aggregation.")
    (license license:expat)))

(define-public r-zlib
  (package
    (name "r-zlib")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zlib" version))
       (sha256
        (base32 "0fnx9dgcdgamh7a2grkrkzxsdpsj2zh6xvfh499fca97cbmpxs14"))))
    (properties `((upstream-name . "zlib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/sgeist-ionos/R-zlib")
    (synopsis "Compression and Decompression")
    (description
     "The zlib package for R aims to offer an R-based equivalent of Python's built-in
zlib module for data compression and decompression.  This package provides a
suite of functions for working with zlib compression, including utilities for
compressing and decompressing data streams, manipulating compressed files, and
working with gzip', zlib', and deflate formats.")
    (license license:expat)))

(define-public r-zlavian
  (package
    (name "r-zlavian")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZLAvian" version))
       (sha256
        (base32 "1bi3f8v0vlc5si9iz7iapw8h37i2084j576pm879lw16j18ka3v7"))))
    (properties `((upstream-name . "ZLAvian")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-performance r-lme4 r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CDr-er/ZLAvian")
    (synopsis "Zipf's Law of Abbreviation in Animal Vocalisations")
    (description
     "Assesses evidence for Zipf's Law of Abbreviation in animal vocalisation using
IDs, note class and note duration.  The package also provides a web plot
function for visualisation.")
    (license license:cc-by-sa4.0)))

(define-public r-zipsae
  (package
    (name "r-zipsae")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipsae" version))
       (sha256
        (base32 "03kwfpjpwxqlphdy7xyhsf7d0mcg67jhvm7yz4i73ckmjdmq7wrd"))))
    (properties `((upstream-name . "zipsae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIprop" version))
       (sha256
        (base32 "1gvf6z7mx543a0hiqcknwhkplqa3mfmw3swi8n9vma10bqmgysx7"))))
    (properties `((upstream-name . "ZIprop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipR" version))
       (sha256
        (base32 "1aaw3dslhsw3zgxvkc1v60vsk44x64i4qmjwx0gq4f7dad1rbiqp"))))
    (properties `((upstream-name . "zipR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leslie-huang/zipR")
    (synopsis "Pythonic Zip() for R")
    (description
     "This package implements Python-style zip for R. Is a more flexible version of
cbind.")
    (license license:gpl3)))

(define-public r-zipper
  (package
    (name "r-zipper")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zippeR" version))
       (sha256
        (base32 "1snypy2bf7hc12y61ynyilfjkj3p9863pymans6jc7w85607wc5p"))))
    (properties `((upstream-name . "zippeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tigris
                             r-tidyr
                             r-tidycensus
                             r-tibble
                             r-stringr
                             r-spatstat-univar
                             r-sf
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pfizer-opensource/zippeR")
    (synopsis
     "Working with United States ZIP Code and ZIP Code Tabulation Area Data")
    (description
     "This package provides a set of functions for working with American postal codes,
which are known as ZIP Codes.  These include accessing ZIP Code to ZIP Code
Tabulation Area (ZCTA) crosswalks, retrieving demographic data for ZCTAs, and
tabulating demographic data for three-digit ZCTAs.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-zipg
  (package
    (name "r-zipg")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIPG" version))
       (sha256
        (base32 "1g5viqqyl36xl43z7sbr9q4qgkwvv0pq308qw1rzdig4n1yxlwpj"))))
    (properties `((upstream-name . "ZIPG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pscl r-mass))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipfR" version))
       (sha256
        (base32 "15ng7rj7qbgxajx8jb9kv04xmbidg9wwzxr2xaskmlaxrxlqac8c"))))
    (properties `((upstream-name . "zipfR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://zipfR.R-Forge.R-project.org/")
    (synopsis "Statistical Models for Word Frequency Distributions")
    (description
     "Statistical models and utilities for the analysis of word frequency
distributions.  The utilities include functions for loading, manipulating and
visualizing word frequency data and vocabulary growth curves.  The package also
implements several statistical models for the distribution of word frequencies
in a population. (The name of this package derives from the most famous word
frequency distribution, Zipf's law.).")
    (license license:gpl3)))

(define-public r-zipfextr
  (package
    (name "r-zipfextr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipfextR" version))
       (sha256
        (base32 "03rlvvw7rfbhsbwd5njmgkkkrxq1lgjdydmpkn6h1hi97pc0gbhh"))))
    (properties `((upstream-name . "zipfextR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam r-tolerance r-copula))
    (home-page "https://github.com/ardlop/zipfextR")
    (synopsis "Zipf Extended Distributions")
    (description
     "Implementation of four extensions of the Zipf distribution: the Marshall-Olkin
Extended Zipf (MOEZipf) PÃ©rez-Casany, M., & Casellas, A. (2013)
<@code{arXiv:1304.4540>}, the Zipf-Poisson Extreme (Zipf-PE), the Zipf-Poisson
Stopped Sum (Zipf-PSS) and the Zipf-Polylog distributions.  In log-log scale,
the two first extensions allow for top-concavity and top-convexity while the
third one only allows for top-concavity.  All the extensions maintain the
linearity associated with the Zipf model in the tail.")
    (license license:gpl3)))

(define-public r-zipfa
  (package
    (name "r-zipfa")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIPFA" version))
       (sha256
        (base32 "134pkdn4slhiv27rdkkmh2z7xch30ns0jhzxgd7r05bky0z1iri1"))))
    (properties `((upstream-name . "ZIPFA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipcodeR" version))
       (sha256
        (base32 "1fmjqfhxd0lgsn6l5jvi3qzhbq9865xcps3jm9iy72jx7jxr59lk"))))
    (properties `((upstream-name . "zipcodeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIPBayes" version))
       (sha256
        (base32 "0j56smgf44fki70jc6aypksbl70pyppc6s3xv82yrq5rndym077k"))))
    (properties `((upstream-name . "ZIPBayes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zipangu" version))
       (sha256
        (base32 "1m68y8r691zdvg2n1mknhz6y58spiipdi7ip3za1laq2yzbg6wqq"))))
    (properties `((upstream-name . "zipangu")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZINARp" version))
       (sha256
        (base32 "1s5nvxcc7nw2kz90i7fqw5fi2qzzbsm5ppn92695v44q38h8jw9s"))))
    (properties `((upstream-name . "ZINARp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZINAR1" version))
       (sha256
        (base32 "1didfjb4215k9q82n1vaqln6f7fszsycsflydak2zl7xwficwhy6"))))
    (properties `((upstream-name . "ZINAR1")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-zim4rv
  (package
    (name "r-zim4rv")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIM4rv" version))
       (sha256
        (base32 "00d5h2h67iqkdyzr4rjm490micx63vjvp8681ns25pr05bh1hk68"))))
    (properties `((upstream-name . "ZIM4rv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-skat r-rnomni r-pscl r-data-table
                             r-compquadform))
    (home-page "https://github.com/fanx0037/ZIM4rv")
    (synopsis
     "Geneâbased Association Tests of Zeroâinflated Count Phenotype for Rare Variants")
    (description
     "Geneâbased association tests to model count data with excessive zeros and rare
variants using zero-inflated Poisson/zero-inflated negative Binomial regression
framework.  This method was originally described by Fan, Sun, and Li in Genetic
Epidemiology 46(1):73-86 <doi:10.1002/gepi.22438>.")
    (license license:gpl3)))

(define-public r-zillowr
  (package
    (name "r-zillowr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZillowR" version))
       (sha256
        (base32 "1q0hdm654p6vkmajwrhx18ifm9sc4czdfd7cabhkqdky4p07c89r"))))
    (properties `((upstream-name . "ZillowR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-rcurl))
    (home-page "https://fascinatingfingers.gitlab.io/zillowr")
    (synopsis "R Interface to Zillow Real Estate and Mortgage Data API")
    (description
     "Zillow, an online real estate company, provides real estate and mortgage data
for the United States through a REST API. The @code{ZillowR} package provides an
R function for each API service, making it easy to make API calls and process
the response into convenient, R-friendly data structures.  See
<https://www.zillow.com/howto/api/APIOverview.htm> for the Zillow API
Documentation.  NOTE: Zillow deprecated their API on 2021-09-30, and this
package is now deprecated as a result.")
    (license license:gpl3+)))

(define-public r-zic
  (package
    (name "r-zic")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zic" version))
       (sha256
        (base32 "1vd64ljigf6iwgzlgdxgj65nlwir176h7ddznddpaz2abh6n6zwp"))))
    (properties `((upstream-name . "zic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-coda))
    (home-page "https://cran.r-project.org/package=zic")
    (synopsis "Bayesian Inference for Zero-Inflated Count Models")
    (description
     "This package provides MCMC algorithms for the analysis of zero-inflated count
models.  The case of stochastic search variable selection (SVS) is also
considered.  All MCMC samplers are coded in C++ for improved efficiency.  A data
set considering the demand for health care is provided.")
    (license license:gpl2+)))

(define-public r-zibr
  (package
    (name "r-zibr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZIBR" version))
       (sha256
        (base32 "0c24g3s946nmm8m22wvmhdgh2ph9f9hmslfyx1s3cq139793grrz"))))
    (properties `((upstream-name . "ZIBR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PennChopMicrobiomeProgram/ZIBR")
    (synopsis "Zero-Inflated Beta Random Effect Model")
    (description
     "This package provides a two-part zero-inflated Beta regression model with random
effects (ZIBR) for testing the association between microbial abundance and
clinical covariates for longitudinal microbiome data.  Eric Z. Chen and Hongzhe
Li (2016) <doi:10.1093/bioinformatics/btw308>.")
    (license license:expat)))

(define-public r-zfit
  (package
    (name "r-zfit")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zfit" version))
       (sha256
        (base32 "1pzzzb55v16piy1p1pyjrriiifbgxqnpaxi200cyfd8m39gz9n1j"))))
    (properties `((upstream-name . "zfit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://torfason.github.io/zfit/")
    (synopsis "Fit Models in a Pipe")
    (description
     "Improve the usage of model fitting functions within a piped work flow.")
    (license license:expat)))

(define-public r-zfa
  (package
    (name "r-zfa")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zfa" version))
       (sha256
        (base32 "02xbyfc972i73006wxsblsf0mfl706vrfanq93igfpayfbwcbp07"))))
    (properties `((upstream-name . "zfa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-skat))
    (home-page "https://cran.r-project.org/package=zfa")
    (synopsis "Zoom-Focus Algorithm")
    (description
     "This package performs Zoom-Focus Algorithm (ZFA) to optimize testing regions for
rare variant association tests in exome sequencing data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-zetasuite
  (package
    (name "r-zetasuite")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZetaSuite" version))
       (sha256
        (base32 "10b0acz88vc80x49wwv581abym75wswi4z92mnl4xn0vw62vjpqa"))))
    (properties `((upstream-name . "ZetaSuite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
changes in gene expression in genome-wide @code{siRNA} screens across many
different cell types (E Robert @code{McDonald} 3rd (2017) <doi:
10.1016/j.cell.2017.07.005> and Tsherniak A (2017) <doi:
10.1016/j.cell.2017.06.010>) or single cell transcriptomics under different
experimental conditions.  We found that simple computational methods based on a
single statistical criterion is no longer adequate for analyzing such
multi-dimensional data.  We herein introduce @code{ZetaSuite}', a statistical
package initially designed to score hits from two-dimensional RNAi screens.We
also illustrate a unique utility of @code{ZetaSuite} in analyzing single cell
transcriptomics to differentiate rare cells from damaged ones (Vento-Tormo R
(2018) <doi: 10.1038/s41586-018-0698-6>).  In @code{ZetaSuite}', we have the
following steps: QC of input datasets, normalization using Z-transformation,
Zeta score calculation and hits selection based on defined Screen Strength.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-zetadiv
  (package
    (name "r-zetadiv")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zetadiv" version))
       (sha256
        (base32 "0rrnnb8fa6f5dkdy00c35fxbiqk3nk4aglc0qjkc30ldmsvb1akc"))))
    (properties `((upstream-name . "zetadiv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-zeroeqpart
  (package
    (name "r-zeroeqpart")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zeroEQpart" version))
       (sha256
        (base32 "1n24nqyl0irpyspwx4b73xy228a84aa8zsn9fcf2lrlni5vyzmm0"))))
    (properties `((upstream-name . "zeroEQpart")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-zephyr
  (package
    (name "r-zephyr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zephyr" version))
       (sha256
        (base32 "0ly3hsnv8kpsbc9ifwpiqfqrcdazqnm0g2ifmik7zgdxqi8gz949"))))
    (properties `((upstream-name . "zephyr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-glue r-cli))
    (home-page "https://novonordisk-opensource.github.io/zephyr/")
    (synopsis "Structured Messages and Options")
    (description
     "This package provides a structured framework for consistent user communication
and configuration management for package developers.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-zep
  (package
    (name "r-zep")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZEP" version))
       (sha256
        (base32 "043vlybpxyjczaq2i9s3gnrhdr5fll13d5g722h5brj8v7n4jn2z"))))
    (properties `((upstream-name . "ZEP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fuzzynumbers))
    (home-page "https://cran.r-project.org/package=ZEP")
    (synopsis
     "Procedures Related to the Zadeh's Extension Principle for Fuzzy Data")
    (description
     "Procedures for calculation, plotting, and approximation of the outputs for fuzzy
numbers (see A.I. Ban, L. Coroianu, P. Grzegorzewski \"Fuzzy Numbers:
Approximations, Ranking and Applications\" (2015)) based on the Zadeh's Extension
Principle (see de Barros, L.C., Bassanezi, R.C., Lodwick, W.A. (2017)
<doi:10.1007/978-3-662-53324-6_2>).")
    (license license:gpl3)))

(define-public r-zenstats
  (package
    (name "r-zenstats")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zenstats" version))
       (sha256
        (base32 "1ji4pqb0vh8ad8jr4pd6dkjr5cfckrlp24jncjc079wahw64fgs5"))))
    (properties `((upstream-name . "zenstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rvest
                             r-rlang
                             r-readr
                             r-rcurl
                             r-purrr
                             r-polite
                             r-curl
                             r-cli
                             r-checkmate))
    (home-page "https://rfsaldanha.github.io/zenstats/")
    (synopsis "Statistics from 'Zenodo' Deposits")
    (description
     "Fetch statistics about views, downloads and data volume from Zenodo deposits.
The package collects a Zenodo (<https://zenodo.org>) deposit file information,
respecting the website scrapping policies.")
    (license license:expat)))

(define-public r-zenplots
  (package
    (name "r-zenplots")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zenplots" version))
       (sha256
        (base32 "0rf690qip2x7w037cbq51cfzqmla398a6x857wpz8cy9fd26ns7p"))))
    (properties `((upstream-name . "zenplots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pairviz r-mass r-graph))
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

(define-public r-zendown
  (package
    (name "r-zendown")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zendown" version))
       (sha256
        (base32 "0xmz4m9c96dm79csxwh878vvjyq147fzcy833i6a5flc5z9asw3z"))))
    (properties `((upstream-name . "zendown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rcurl
                             r-httr2
                             r-glue
                             r-fs
                             r-curl
                             r-cli
                             r-checkmate))
    (home-page "https://rfsaldanha.github.io/zendown/")
    (synopsis "Access Files from 'Zenodo' Deposits")
    (description "Access, download and locally cache files deposited on Zenodo
<https://zenodo.org>.")
    (license license:expat)))

(define-public r-zendeskr
  (package
    (name "r-zendeskr")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zendeskR" version))
       (sha256
        (base32 "06cjwk08w3x6dx717123psinid5bx6c563jnfn890373jw6xnfrk"))))
    (properties `((upstream-name . "zendeskR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjson r-rcurl))
    (home-page "https://cran.r-project.org/package=zendeskR")
    (synopsis "Zendesk API Wrapper")
    (description "This package provides an R wrapper for the Zendesk API.")
    (license license:gpl2)))

(define-public r-zen4r
  (package
    (name "r-zen4r")
    (version "0.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zen4R" version))
       (sha256
        (base32 "19801lcnxy8g7c2pp1f1ris943xkb1ip9kkiim6zms079d39p1mr"))))
    (properties `((upstream-name . "zen4R")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xml
                             r-utf8
                             r-r6
                             r-plyr
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-cli
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
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zeitgebr" version))
       (sha256
        (base32 "03bgkhvv366fmsaa07gc674n6w3sgs6h70h5xc5ypl95bkvcvkxn"))))
    (properties `((upstream-name . "zeitgebr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zebu" version))
       (sha256
        (base32 "1bxzc110nxyssdvnk330qs8qbmf6m7v5gglcfdkxdzy5gcbs1bm6"))))
    (properties `((upstream-name . "zebu")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ZeBook" version))
       (sha256
        (base32 "0v98kbz9njjdx60x9dn8hl8mc6x19i5knjyg2gkwfd667yy1rkl6"))))
    (properties `((upstream-name . "ZeBook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zdeskR" version))
       (sha256
        (base32 "03lgg8hlv5wc2q7i9mc3nr9rpai5gxdnfyq6d69pssnzsg8mid11"))))
    (properties `((upstream-name . "zdeskR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
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
    (version "2.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zcurve" version))
       (sha256
        (base32 "18f3nb8hpc0b2i836j2jfcj0c31ba8xcjj8lwmhl05xr1vym4n3s"))))
    (properties `((upstream-name . "zcurve")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rdpack
                             r-rcpp
                             r-nleqslv
                             r-ggplot2
                             r-evmix))
    (home-page "https://fbartos.github.io/zcurve/")
    (synopsis "An Implementation of Z-Curves")
    (description
     "An implementation of z-curves - a method for estimating expected discovery and
replicability rates on the bases of test-statistics of published studies.  The
package provides functions for fitting the density, EM, and censored EM version
(BartoÅ¡ & Schimmack, 2022, <doi:10.15626/MP.2021.2720>; Schimmack & BartoÅ¡,
2023, <doi: 10.1371/journal.pone.0290084>), as well as the original density
z-curve (Brunner & Schimmack, 2020, <doi:10.15626/MP.2018.874>).  Furthermore,
the package provides summarizing and plotting functions for the fitted z-curve
objects.  See the aforementioned articles for more information about the
z-curves, expected discovery and replicability rates, validation studies, and
limitations.")
    (license license:gpl3)))

(define-public r-zctacrosswalk
  (package
    (name "r-zctacrosswalk")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zctaCrosswalk" version))
       (sha256
        (base32 "14yda45nqn9ywb7zpwp4kmjziglj0qjgm02lmi8ndvc5wi2r1ma7"))))
    (properties `((upstream-name . "zctaCrosswalk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "zalpha" version))
       (sha256
        (base32 "04hi5lxgcqzmkbqppp5fv8x7wdgap3bgr8b8pv4pvavzh73jlmxs"))))
    (properties `((upstream-name . "zalpha")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=zalpha")
    (synopsis "Run a Suite of Selection Statistics")
    (description
     "This package provides a suite of statistics for identifying areas of the genome
under selective pressure.  See Jacobs, Sluckin and Kivisild (2016)
<doi:10.1534/genetics.115.185900>.")
    (license license:expat)))

(define-public r-z22
  (package
    (name "r-z22")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "z22" version))
       (sha256
        (base32 "1bl20j0zm56siavqjigg6fn6rk276m3lfqzb1j065ljsgb77ycnd"))))
    (properties `((upstream-name . "z22")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr2 r-dplyr r-cli r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jslth/z22/")
    (synopsis "Official Gridded Data from the German Census 2022")
    (description
     "This package provides fast and easy access to German census grid data from the
2011 and 2022 censuses <https://www.zensus2022.de/>, including a wide range of
socio-economic indicators at multiple spatial resolutions (100m, 1km, 10km).
Enables efficient download, processing, and analysis of large census datasets
covering population, households, families, dwellings, and buildings.  Harmonized
data structures allow direct comparison with the 2011 census, supporting
temporal and spatial analyses.  Facilitates conversion of data into common
formats for spatial analysis and mapping ('terra', sf', ggplot2').")
    (license license:expat)))

(define-public r-z10
  (package
    (name "r-z10")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Z10" version))
       (sha256
        (base32 "02kxlzplmss68zj1z97fvpcjyhhpic9hlx8f5j3gqn3m1mqm1dja"))))
    (properties `((upstream-name . "Z10")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

