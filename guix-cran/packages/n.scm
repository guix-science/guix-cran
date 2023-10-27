(define-module (guix-cran packages n)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages web)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages java)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages c)
  #:use-module (gnu packages python)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages pkg-config)
  #:use-module (guix-cran packages z)
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

(define-public r-nzpullover
  (package
    (name "r-nzpullover")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nzpullover" version))
       (sha256
        (base32 "0b3mz5i58m48fa1x7gv4l3gqj0gvrar201ph2l1gkbcnfmazwjp8"))))
    (properties `((upstream-name . "nzpullover")))
    (build-system r-build-system)
    (home-page "https://github.com/nacnudus/nzpullover")
    (synopsis "Driving Offences in New Zealand Between 2009 and 2016")
    (description
     "Datasets of driving offences and fines in New Zealand between 2009 and 2017.
Originally published by the New Zealand Police at
<http://www.police.govt.nz/about-us/publication/road-policing-driver-offence-data-january-2009-december-2017>.")
    (license license:cc0)))

(define-public r-nzilbb-labbcat
  (package
    (name "r-nzilbb-labbcat")
    (version "1.3-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nzilbb.labbcat" version))
       (sha256
        (base32 "1nrd67d78klhnbslrpqaigbv1qrvl2nr6l9qhmgm2j34qpjrv7n5"))))
    (properties `((upstream-name . "nzilbb.labbcat")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rstudioapi r-jsonlite r-httr))
    (home-page "https://nzilbb.github.io/labbcat-R/")
    (synopsis "Accessing Data Stored in 'LaBB-CAT' Instances")
    (description
     "@code{LaBB-CAT} is a web-based language corpus management system developed by
the New Zealand Institute of Language, Brain and Behaviour (NZILBB) - see
<https://labbcat.canterbury.ac.nz>.  This package defines functions for
accessing corpus data in a @code{LaBB-CAT} instance.  You must have at least
version 20230224.1731 of @code{LaBB-CAT} to use this package.  For more
information about @code{LaBB-CAT}', see Robert Fromont and Jennifer Hay (2008)
<doi:10.3366/E1749503208000142> or Robert Fromont (2017)
<doi:10.1016/j.csl.2017.01.004>.")
    (license license:gpl3+)))

(define-public r-nzffdr
  (package
    (name "r-nzffdr")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nzffdr" version))
       (sha256
        (base32 "14s2dfrrknaswg4l69lncsdbd7algpd9pzgrhpip0vbmyq9pa2ni"))))
    (properties `((upstream-name . "nzffdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringi
                             r-rlang
                             r-httr
                             r-curl))
    (home-page "https://flee598.github.io/nzffdr/")
    (synopsis
     "Import, Clean and Update Data from the New Zealand Freshwater Fish Database")
    (description
     "Access the New Zealand Freshwater Fish Database from R and a few functions to
clean the data once in R.")
    (license license:expat)))

(define-public r-nzelect
  (package
    (name "r-nzelect")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nzelect" version))
       (sha256
        (base32 "19kcbq454yg9g76ix7v3nibgw2203d7vv6f2d6d2zkcc0h08bjm7"))))
    (properties `((upstream-name . "nzelect")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nzelect")
    (synopsis "New Zealand Election Data")
    (description
     "Convenient access to New Zealand election results by voting place.  Voting
places have been matched to Regional Council, Territorial Authority, and Area
Unit, to facilitate matching with additional data.  Opinion polls since 2002 and
some convenience analytical function are also supplied.")
    (license license:gpl3)))

(define-public r-nycflights13
  (package
    (name "r-nycflights13")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nycflights13" version))
       (sha256
        (base32 "07aa76c77pm1wpzkwjmzv8n6ir5i6fxawx8wx586gwc5wajcb1qf"))))
    (properties `((upstream-name . "nycflights13")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/hadley/nycflights13")
    (synopsis "Flights that Departed NYC in 2013")
    (description
     "Airline on-time data for all flights departing NYC in 2013.  Also includes
useful metadata on airlines, airports, weather, and planes.")
    (license license:cc0)))

(define-public r-nvmix
  (package
    (name "r-nvmix")
    (version "0.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nvmix" version))
       (sha256
        (base32 "12lhch9sib2nx8j7500dchfi27fvpabbcdkcw9qh194fx22ycknx"))))
    (properties `((upstream-name . "nvmix")))
    (build-system r-build-system)
    (propagated-inputs (list r-qrng
                             r-pracma
                             r-pcapp
                             r-mnormt
                             r-matrix
                             r-copula
                             r-adgoftest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nvmix")
    (synopsis "Multivariate Normal Variance Mixtures")
    (description
     "This package provides functions for working with (grouped) multivariate normal
variance mixture distributions (evaluation of distribution functions and
densities, random number generation and parameter estimation), including
Student's t distribution for non-integer degrees-of-freedom as well as the
grouped t distribution and copula with multiple degrees-of-freedom parameters.
See <doi:10.18637/jss.v102.i02> for a high-level description of select
functionality.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file LICENCE")))))

(define-public r-nvctr
  (package
    (name "r-nvctr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nvctr" version))
       (sha256
        (base32 "1r7q9snr9ya1586fwbyvnk8rlb9yikl4yp3bn9kni0sw820npk1d"))))
    (properties `((upstream-name . "nvctr")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/euctrl-pru/nvctr")
    (synopsis
     "The n-vector Approach to Geographical Position Calculations using an Ellipsoidal Model of Earth")
    (description
     "The n-vector framework uses the normal vector to the Earth ellipsoid (called
n-vector) as a non-singular position representation that turns out to be very
convenient for practical position calculations.  The n-vector is simple to use
and gives exact answers for all global positions, and all distances, for both
ellipsoidal and spherical Earth models.  This package is a translation of the
Matlab library from FFI, the Norwegian Defence Research Establishment, as
described in Gade (2010) <doi:10.1017/S0373463309990415>.")
    (license license:expat)))

(define-public r-nvcssl
  (package
    (name "r-nvcssl")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NVCSSL" version))
       (sha256
        (base32 "1nsdhmay2blfa07ri1kfb204di8s5i7zk7qwwlbkhdjjl0qa3vd7"))))
    (properties `((upstream-name . "NVCSSL")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-mvtnorm
                             r-mcmcpack
                             r-matrix
                             r-mass
                             r-grpreg
                             r-gigrvg
                             r-dae))
    (home-page "https://cran.r-project.org/package=NVCSSL")
    (synopsis "Nonparametric Varying Coefficient Spike-and-Slab Lasso")
    (description
     "Fits Bayesian regularized varying coefficient models with the Nonparametric
Varying Coefficient Spike-and-Slab Lasso (NVC-SSL) introduced by Bai et al.
(2023) <@code{arXiv:1907.06477>}.  Functions to fit frequentist penalized
varying coefficients are also provided, with the option of employing the group
lasso penalty of Yuan and Lin (2006) <doi:10.1111/j.1467-9868.2005.00532.x>, the
group minimax concave penalty (MCP) of Breheny and Huang
<doi:10.1007/s11222-013-9424-2>, or the group smoothly clipped absolute
deviation (SCAD) penalty of Breheny and Huang (2015)
<doi:10.1007/s11222-013-9424-2>.")
    (license license:gpl3)))

(define-public r-nutrition
  (package
    (name "r-nutrition")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nutrition" version))
       (sha256
        (base32 "061rgb8vdpq971k3g0jhr0mq6gqib25rz010b5sbq9ynb5x66995"))))
    (properties `((upstream-name . "nutrition")))
    (build-system r-build-system)
    (home-page "https://wleoncio.github.io/nutrition/")
    (synopsis "Useful Functions for People on a Diet")
    (description
     "This package contains a collection of functions for performing different kinds
of calculation that are of interest to someone following a diet plan.
Calculators for the Basal Metabolic Rate are based on Mifflin et al. (1990)
<doi:10.1093/ajcn/51.2.241> and @code{McArdle}, W. D., Katch, F. I., & Katch, V.
L. (2010, ISBN:9780812109917).")
    (license license:gpl3+)))

(define-public r-nutrinetwork
  (package
    (name "r-nutrinetwork")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nutriNetwork" version))
       (sha256
        (base32 "0wmprgibx9jzaav93m3kqx1h8cflvx287yjfi3b8pvmgna7q8fsy"))))
    (properties `((upstream-name . "nutriNetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm r-matrix r-igraph r-huge r-glasso))
    (home-page "https://cran.r-project.org/package=nutriNetwork")
    (synopsis "Structure Learning with Copula Graphical Model")
    (description
     "Statistical tool for learning the structure of direct associations among
variables for continuous data, discrete data and mixed discrete-continuous data.
 The package is based on the copula graphical model in Behrouzi and Wit (2017)
<doi:10.1111/rssc.12287>.")
    (license license:gpl3)))

(define-public r-nutrientracker
  (package
    (name "r-nutrientracker")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NutrienTrackeR" version))
       (sha256
        (base32 "0s7ax1aqvlph92y0pfs5ji2b4fjig2ig2zcl5vlffcilwm4ccrpp"))))
    (properties `((upstream-name . "NutrienTrackeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NutrienTrackeR")
    (synopsis "Food Composition Information and Dietary Assessment")
    (description
     "This package provides a tool set for food information and dietary assessment.
It uses food composition data from several reference databases, including: USDA
(United States), CIQUAL (France), BEDCA (Spain), CNF (Canada) and STFCJ (Japan).
@code{NutrienTrackeR} calculates the intake levels for both macronutrient and
micronutrients, and compares them with the recommended dietary allowances (RDA).
 It includes a number of visualization tools, such as time series plots of
nutrient intake, and pie-charts showing the main foods contributing to the
intake level of a given nutrient.  A shiny app exposing the main functionalities
of the package is also provided.")
    (license license:gpl3)))

(define-public r-numosl
  (package
    (name "r-numosl")
    (version "2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numOSL" version))
       (sha256
        (base32 "05h73s5xspccx0wr8g5a7a3m3gnhj4qvisjykl4dwmsh80gh1r95"))))
    (properties `((upstream-name . "numOSL")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://CRAN.R-project.org/package=numOSL")
    (synopsis "Numeric Routines for Optically Stimulated Luminescence Dating")
    (description
     "Optimizing regular numeric problems in optically stimulated luminescence dating,
such as: equivalent dose calculation, dose rate determination, growth curve
fitting, decay curve decomposition, statistical age model optimization, and
statistical plot visualization.")
    (license license:gpl3)))

(define-public r-numkm
  (package
    (name "r-numkm")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numKM" version))
       (sha256
        (base32 "0g5jw12fmfc6nl6a3ghpslkjd2d7pbihl70sks35r7dalmr6ihzk"))))
    (properties `((upstream-name . "numKM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=numKM")
    (synopsis "Create a Kaplan-Meier Plot with Numbers at Risk")
    (description
     "To add the table of numbers at risk below the Kaplan-Meier plot.")
    (license license:gpl3)))

(define-public r-numgen
  (package
    (name "r-numgen")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numGen" version))
       (sha256
        (base32 "1y41wq31r8126dz1sj23smq2k6v9yqczq4ddgzqb73dsrx9dmmc0"))))
    (properties `((upstream-name . "numGen")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=numGen")
    (synopsis "Number Series Generator")
    (description
     "This package provides a number series generator that creates number series items
based on cognitive models.")
    (license license:gpl3)))

(define-public r-numform
  (package
    (name "r-numform")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numform" version))
       (sha256
        (base32 "0n96jm141h4awazr8sads9d99faw8kdy3vbhmjr58d8iqf7793f8"))))
    (properties `((upstream-name . "numform")))
    (build-system r-build-system)
    (propagated-inputs (list r-glue))
    (home-page "https://github.com/trinker/numform")
    (synopsis "Tools to Format Numbers for Publication")
    (description
     "Format numbers and plots for publication; includes the removal of leading zeros,
standardization of number of digits, addition of affixes, and a p-value
formatter.  These tools combine the functionality of several base functions such
as paste()', format()', and sprintf() into specific use case functions that are
named in a way that is consistent with usage, making their names easy to
remember and easy to deploy.")
    (license license:gpl2)))

(define-public r-numero
  (package
    (name "r-numero")
    (version "1.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Numero" version))
       (sha256
        (base32 "0bii7d4hggdhid81a7scp1lwbw8pi0vh2j9cb3z8hfpp88j2g16j"))))
    (properties `((upstream-name . "Numero")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=Numero")
    (synopsis "Statistical Framework to Define Subgroups in Complex Datasets")
    (description
     "High-dimensional datasets that do not exhibit a clear intrinsic clustered
structure pose a challenge to conventional clustering algorithms.  For this
reason, we developed an unsupervised framework that helps scientists to better
subgroup their datasets based on visual cues, please see Gao S, Mutter S, Casey
A, Makinen V-P (2019) Numero: a statistical framework to define multivariable
subgroups in complex population-based datasets, Int J Epidemiology, 48:369-37,
<doi:10.1093/ije/dyy113>.  The framework includes the necessary functions to
construct a self-organizing map of the data, to evaluate the statistical
significance of the observed data patterns, and to visualize the results.")
    (license license:gpl2+)))

(define-public r-numbersbr
  (package
    (name "r-numbersbr")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numbersBR" version))
       (sha256
        (base32 "0ihxlny745gpz1ngq862rydn1zwn8zni1xw9mmgw8hkylsrnjfq8"))))
    (properties `((upstream-name . "numbersBR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=numbersBR")
    (synopsis
     "Validate, Compare and Format Identification Numbers from Brazil")
    (description
     "Validate, format and compare identification numbers used in Brazil.  These
numbers are used to identify individuals (CPF), vehicles (RENAVAN), companies
(CNPJ) and etc.  Functions to format, validate and compare these numbers have
been implemented in a vectorized way in order to speed up validations and
comparisons in big datasets.")
    (license license:expat)))

(define-public r-numbers
  (package
    (name "r-numbers")
    (version "0.8-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numbers" version))
       (sha256
        (base32 "02r2mlq3jygvwi7anbrrid6693qc7iklxhc9ksmqjdlmgzdxxmbp"))))
    (properties `((upstream-name . "numbers")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=numbers")
    (synopsis "Number-Theoretic Functions")
    (description
     "This package provides number-theoretic functions for factorization, prime
numbers, twin primes, primitive roots, modular logarithm and inverses, extended
GCD, Farey series and continued fractions.  Includes Legendre and Jacobi
symbols, some divisor functions, Euler's Phi function, etc.")
    (license license:gpl3+)))

(define-public r-numberofalleles
  (package
    (name "r-numberofalleles")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "numberofalleles" version))
       (sha256
        (base32 "0rjl21844yqp2503gy71c6vg8xywc4lcx7qr9vwvkjw5wiwxls11"))))
    (properties `((upstream-name . "numberofalleles")))
    (build-system r-build-system)
    (propagated-inputs (list r-ribd r-rcpp r-pedtools r-partitions))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=numberofalleles")
    (synopsis
     "Compute the Probability Distribution of the Number of Alleles in a DNA Mixture")
    (description
     "The number of distinct alleles observed in a DNA mixture is informative of the
number of contributors to the mixture.  The package provides methods for
computing the probability distribution of the number of distinct alleles in a
mixture for a given set of allele frequencies.  The mixture contributors may be
related according to a provided pedigree.")
    (license license:gpl2+)))

(define-public r-nullabor
  (package
    (name "r-nullabor")
    (version "0.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nullabor" version))
       (sha256
        (base32 "19nfmsnzndg9pdjg7m9w4vm4c3209ny52cpjdhmmhggvf7dxaiyg"))))
    (properties `((upstream-name . "nullabor")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tsibble
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-moments
                             r-mass
                             r-magrittr
                             r-ggplot2
                             r-fpc
                             r-forecast
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/dicook/nullabor")
    (synopsis "Tools for Graphical Inference")
    (description
     "This package provides tools for visual inference.  Generate null data sets and
null plots using permutation and simulation.  Calculate distance metrics for a
lineup, and examine the distributions of metrics.")
    (license license:gpl2+)))

(define-public r-nucombog
  (package
    (name "r-nucombog")
    (version "1.0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NUCOMBog" version))
       (sha256
        (base32 "0s6gm3adc9qdh94pxzgccbxx1f1lbgqyvd4xk37xp6f3b5hwljdz"))))
    (properties `((upstream-name . "NUCOMBog")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/jeroenpullens/NUCOMBog/")
    (synopsis
     "NUtrient Cycling and COMpetition Model Undisturbed Open Bog Ecosystems in a Temperate to Sub-Boreal Climate")
    (description
     "Modelling the vegetation, carbon, nitrogen and water dynamics of undisturbed
open bog ecosystems in a temperate to sub-boreal climate.  The executable of the
model can downloaded from <https://github.com/jeroenpullens/NUCOMBog>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nucim
  (package
    (name "r-nucim")
    (version "1.0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nucim" version))
       (sha256
        (base32 "12qfs4xd8lnkjhb0gkvxym07rndrwh5idvppj16v78amrk96rj5z"))))
    (properties `((upstream-name . "nucim")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-fields r-ebimage r-bioimagetools))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://bioimaginggroup.github.io/nucim/")
    (synopsis "Nucleome Imaging Toolbox")
    (description
     "This package provides tools for 4D nucleome imaging.  Quantitative analysis of
the 3D nuclear landscape recorded with super-resolved fluorescence microscopy.
See Volker J. Schmid, Marion Cremer, Thomas Cremer (2017)
<doi:10.1016/j.ymeth.2017.03.013>.")
    (license license:gpl3)))

(define-public r-nu-learning
  (package
    (name "r-nu-learning")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NU.Learning" version))
       (sha256
        (base32 "03g6hy9x9r9ydld14qpglxh09amm65hinq8i4wbnqhvg4b3wqbjx"))))
    (properties `((upstream-name . "NU.Learning")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-cluster))
    (home-page "https://www.r-project.org")
    (synopsis
     "Nonparametric and Unsupervised Learning from Cross-Sectional Observational Data")
    (description
     "Especially when cross-sectional data are observational, effects of treatment
selection bias and confounding are best revealed by using Nonparametric and
Unsupervised methods to \"Design\" the analysis of the given data ...rather than
the collection of \"designed data\".  Specifically, the \"effect-size distribution\"
that best quantifies a potentially causal relationship between a numeric
y-Outcome variable and either a binary t-Treatment or continuous e-Exposure
variable needs to consist of BLOCKS of relatively well-matched experimental
units (e.g. patients) that have the most similar X-confounder characteristics.
Since our NU Learning approach will form BLOCKS by \"clustering\" experimental
units in confounder X-space, the implicit statistical model for learning is
One-Way ANOVA. Within Block measures of effect-size are then either [a] LOCAL
Treatment Differences (LTDs) between Within-Cluster y-Outcome Means (\"new\" minus
\"control\") when treatment choice is Binary or else [b] LOCAL Rank Correlations
(LRCs) when the e-Exposure variable is numeric with (hopefully many) more than
two levels.  An Instrumental Variable (IV) method is also provided so that Local
Average y-Outcomes (LAOs) within BLOCKS may also contribute information for
effect-size inferences when X-Covariates are assumed to influence Treatment
choice or Exposure level but otherwise have no direct effects on y-Outcomes.
Finally, a \"Most-Like-Me\" function provides histograms of effect-size
distributions to aid Doctor-Patient (or Researcher-Society) communications about
Heterogeneous Outcomes.  Obenchain and Young (2013)
<doi:10.1080/15598608.2013.772821>; Obenchain, Young and Krstic (2019)
<doi:10.1016/j.yrtph.2019.104418>.")
    (license license:gpl2)))

(define-public r-ntss
  (package
    (name "r-ntss")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NTSS" version))
       (sha256
        (base32 "1i3y3psr17p8p7s799sdki3pndb82pydl2g3dcz18snynjpmd31j"))))
    (properties `((upstream-name . "NTSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random
                             r-spatstat-model
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatstat
                             r-ks
                             r-get
                             r-geor))
    (home-page "https://cran.r-project.org/package=NTSS")
    (synopsis "Nonparametric Tests in Spatial Statistics")
    (description
     "Nonparametric test of independence between a pair of spatial objects (random
fields, point processes) based on random shifts with torus or variance
correction.  See @code{MrkviÄka} et al. (2021)
<doi:10.1016/j.spasta.2020.100430>, @code{DvoÅÃ¡k} et al. (2022)
<doi:10.1111/insr.12503>, @code{DvoÅÃ¡k} and @code{MrkviÄka} (2022)
<arxiv:2210.05424>.")
    (license license:gpl3)))

(define-public r-ntsdists
  (package
    (name "r-ntsdists")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ntsDists" version))
       (sha256
        (base32 "1vjzqbwqdg8drgbsxazlaalmzb2phsb9261pmpkiy4k0fcan7qzj"))))
    (properties `((upstream-name . "ntsDists")))
    (build-system r-build-system)
    (home-page "https://github.com/dmazarei/ntsDists")
    (synopsis "Neutrosophic Distributions")
    (description
     "Computes the pdf, cdf, quantile function and generating random numbers for
neutrosophic distributions.  This family have been developed by different
authors in the recent years.  See Patro and Smarandache (2016)
<doi:10.5281/zenodo.571153> and Rao et al (2023) <doi:10.5281/zenodo.7832786>.")
    (license license:gpl2+)))

(define-public r-nts
  (package
    (name "r-nts")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NTS" version))
       (sha256
        (base32 "0scj05h2r3sg34n0lmarbrgavz6q2n23gvs2v4w5q249q2cx6iis"))))
    (properties `((upstream-name . "NTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensor r-rdpack r-mswm r-mass r-dlm))
    (home-page "https://cran.r-project.org/package=NTS")
    (synopsis "Nonlinear Time Series Analysis")
    (description
     "Simulation, estimation, prediction procedure, and model identification methods
for nonlinear time series analysis, including threshold autoregressive models,
Markov-switching models, convolutional functional autoregressive models,
nonlinearity tests, Kalman filters and various sequential Monte Carlo methods.
More examples and details about this package can be found in the book \"Nonlinear
Time Series Analysis\" by Ruey S. Tsay and Rong Chen, John Wiley & Sons, 2018
(ISBN: 978-1-119-26407-1).")
    (license license:gpl2+)))

(define-public r-ntdr
  (package
    (name "r-ntdr")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ntdr" version))
       (sha256
        (base32 "1v8lwsp9c81pg0i140fc9zfng6cf4a0p0jyc2k8gdg7hsl9dwks1"))))
    (properties `((upstream-name . "ntdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rvest
                             r-readxl
                             r-purrr
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://vgxhc.github.io/ntdr/")
    (synopsis "Retrieve Data from the National Transit Database")
    (description
     "Downloads the latest National Transit Database data, processes it, and returns
in a tidy data format.")
    (license license:expat)))

(define-public r-nsyllable
  (package
    (name "r-nsyllable")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsyllable" version))
       (sha256
        (base32 "1rxzfivg5pkx8485l4bxxrdnvik31g5jps5l386x0w7mfs6498jg"))))
    (properties `((upstream-name . "nsyllable")))
    (build-system r-build-system)
    (home-page "https://github.com/quanteda/nsyllable")
    (synopsis "Count Syllables in Character Vectors")
    (description
     "Counts syllables in character vectors for English words.  Imputes syllables as
the number of vowel sequences for words not found.")
    (license license:gpl3)))

(define-public r-nswgeo
  (package
    (name "r-nswgeo")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nswgeo" version))
       (sha256
        (base32 "0nny1dh0c3nkwglqi6rgwgri8hx1h66bzfpy388bjcyc31nkmihr"))))
    (properties `((upstream-name . "nswgeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-cartographer))
    (home-page "https://github.com/cidm-ph/nswgeo")
    (synopsis "Geospatial Data and Maps for New South Wales, Australia")
    (description
     "Geospatial data for creating maps of New South Wales (NSW), Australia, and some
helpers to work with common problems like normalising postcodes.  Registers its
data with cartographer'.")
    (license license:expat)))

(define-public r-nst
  (package
    (name "r-nst")
    (version "3.1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NST" version))
       (sha256
        (base32 "1ycpccg7hcg84ygjzksbi0fcrkisvis5165bbnj64h52gjifgxh7"))))
    (properties `((upstream-name . "NST")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-permute
                             r-icamp
                             r-dirichletreg
                             r-bigmemory
                             r-ape))
    (home-page "https://github.com/DaliangNing/NST")
    (synopsis "Normalized Stochasticity Ratio")
    (description
     "To estimate ecological stochasticity in community assembly.  Understanding the
community assembly mechanisms controlling biodiversity patterns is a central
issue in ecology.  Although it is generally accepted that both deterministic and
stochastic processes play important roles in community assembly, quantifying
their relative importance is challenging.  The new index, normalized
stochasticity ratio (NST), is to estimate ecological stochasticity, i.e.
relative importance of stochastic processes, in community assembly.  With
functions in this package, NST can be calculated based on different similarity
metrics and/or different null model algorithms, as well as some previous
indexes, e.g. previous Stochasticity Ratio (ST), Standard Effect Size (SES),
modified Raup-Crick metrics (RC).  Functions for permutational test and
bootstrapping analysis are also included.  Previous ST is published by Zhou et
al (2014) <doi:10.1073/pnas.1324044111>.  NST is modified from ST by considering
two alternative situations and normalizing the index to range from 0 to 1 (Ning
et al 2019) <doi:10.1073/pnas.1904623116>.  A modified version, MST, is a
special case of NST, used in some recent or upcoming publications, e.g. Liang et
al (2020) <doi:10.1016/j.soilbio.2020.108023>.  SES is calculated as described
in Kraft et al (2011) <doi:10.1126/science.1208584>.  RC is calculated as
reported by Chase et al (2011) <doi:10.1890/ES10-00117.1> and Stegen et al
(2013) <doi:10.1038/ismej.2013.93>.  Version 3 added NST based on phylogenetic
beta diversity, used by Ning et al (2020) <doi:10.1038/s41467-020-18560-z>.")
    (license license:gpl2)))

(define-public r-nsroc
  (package
    (name "r-nsroc")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsROC" version))
       (sha256
        (base32 "1fi7k61fja98kpn528jprjdycwz01rnqm368m82anxh21k7q4s1m"))))
    (properties `((upstream-name . "nsROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-sde))
    (home-page "https://cran.r-project.org/package=nsROC")
    (synopsis "Non-Standard ROC Curve Analysis")
    (description
     "This package provides tools for estimating Receiver Operating Characteristic
(ROC) curves, building confidence bands, comparing several curves both for
dependent and independent data, estimating the cumulative-dynamic ROC curve in
presence of censored data, and performing meta-analysis studies, among others.")
    (license license:gpl3+)))

(define-public r-nspmix
  (package
    (name "r-nspmix")
    (version "1.5-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nspmix" version))
       (sha256
        (base32 "1jaaw5ibn614yhlid0csnzj31npdx5zivm2nhnvyghzcmvyxavr8"))))
    (properties `((upstream-name . "nspmix")))
    (build-system r-build-system)
    (propagated-inputs (list r-lsei))
    (home-page "https://www.stat.auckland.ac.nz/~yongwang/")
    (synopsis "Nonparametric and Semiparametric Mixture Estimation")
    (description
     "Mainly for maximum likelihood estimation of nonparametric and semiparametric
mixture models, but can also be used for fitting finite mixtures.  The
algorithms are developed in Wang (2007) <doi:10.1111/j.1467-9868.2007.00583.x>
and Wang (2010) <doi:10.1007/s11222-009-9117-z>.")
    (license license:gpl2+)))

(define-public r-nsp
  (package
    (name "r-nsp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsp" version))
       (sha256
        (base32 "1dbq6i79r3rlf69scgczv0p940mcza1l90l42af7xdhan0gh6z99"))))
    (properties `((upstream-name . "nsp")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=nsp")
    (synopsis "Inference for Multiple Change-Points in Linear Models")
    (description
     "Implementation of Narrowest Significance Pursuit, a general and flexible
methodology for automatically detecting localised regions in data sequences
which each must contain a change-point (understood as an abrupt change in the
parameters of an underlying linear model), at a prescribed global significance
level.  Narrowest Significance Pursuit works with a wide range of distributional
assumptions on the errors, and yields exact desired finite-sample coverage
probabilities, regardless of the form or number of the covariates.  For details,
see P. Fryzlewicz (2021) <https://stats.lse.ac.uk/fryzlewicz/nsp/nsp.pdf>.")
    (license license:gpl3+)))

(define-public r-nso1212
  (package
    (name "r-nso1212")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NSO1212" version))
       (sha256
        (base32 "1wxp7rp43gl3xgwln8d1s7b7a5zhz4dlshf9dzgb2ippvjxjqbmc"))))
    (properties `((upstream-name . "NSO1212")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/galaamn/NSO1212")
    (synopsis
     "National Statistical Office of Mongolia's Open Data API Handler")
    (description
     "National Statistical Office of Mongolia (NSO) is the national statistical
service and an organization of Mongolian government.  NSO provides open access
to official data via its API <http://opendata.1212.mn/en/doc>.  The package
NSO1212 has functions for accessing the API service.  The functions are
compatible with the API v2.0 and get data sets and its detailed informations
from the API.")
    (license license:gpl3)))

(define-public r-nsm3data
  (package
    (name "r-nsm3data")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsm3data" version))
       (sha256
        (base32 "15m3x7jmwmh3rs65v5j39672253crc379zq3k6xigi6p7qnba7sn"))))
    (properties `((upstream-name . "nsm3data")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nsm3data")
    (synopsis "Datasets to Accompany Hollander, Wolfe, and Chicken NSM3")
    (description
     "Designed to add datasets which are used in the Nonparametric Statistical Methods
textbook, 3rd edition.")
    (license license:gpl2)))

(define-public r-nsm3
  (package
    (name "r-nsm3")
    (version "1.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NSM3" version))
       (sha256
        (base32 "0m0ijafjlw9pili0hxfrv5blj9ysxhhwj6c4hpnp5ry97a4gkib9"))))
    (properties `((upstream-name . "NSM3")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim
                             r-survival
                             r-suppdists
                             r-rfit
                             r-quantreg
                             r-partitions
                             r-np
                             r-nortest
                             r-metafor
                             r-mass
                             r-km-ci
                             r-hmisc
                             r-gtools
                             r-fancova
                             r-combinat
                             r-coin
                             r-bsda
                             r-binom
                             r-ash
                             r-agricolae))
    (home-page "https://cran.r-project.org/package=NSM3")
    (synopsis
     "Functions and Datasets to Accompany Hollander, Wolfe, and Chicken - Nonparametric Statistical Methods, Third Edition")
    (description
     "Designed to replace the tables which were in the back of the first two editions
of Hollander and Wolfe - Nonparametric Statistical Methods.  Exact procedures
are performed when computationally possible.  Monte Carlo and Asymptotic
procedures are performed otherwise.  For those procedures included in the base
packages, our code simply provides a wrapper to standardize the output with the
other procedures in the package.")
    (license license:gpl2)))

(define-public r-nsga3
  (package
    (name "r-nsga3")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsga3" version))
       (sha256
        (base32 "1jv3kw22jw24n7lnwhq3857mygr2yfv8c5xp3lbqqgz5840cdfa1"))))
    (properties `((upstream-name . "nsga3")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-rpref r-parallelmap r-mlr))
    (home-page "https://cran.r-project.org/package=nsga3")
    (synopsis
     "An Implementation of Non-Dominated Sorting Genetic Algorithm III for Feature Selection")
    (description
     "An adaptation of Non-dominated Sorting Genetic Algorithm III for multi objective
feature selection tasks.  Non-dominated Sorting Genetic Algorithm III is a
genetic algorithm that solves multiple optimization problems simultaneously by
applying a non-dominated sorting technique.  It uses a reference points based
selection operator to explore solution space and preserve diversity.  See the
original paper by K. Deb and H. Jain (2014) <DOI:10.1109/TEVC.2013.2281534> for
a detailed description.")
    (license license:gpl3)))

(define-public r-nsga2r
  (package
    (name "r-nsga2r")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsga2R" version))
       (sha256
        (base32 "1b3kkd1mi6g13bl2mkzqyvz0ki296fa9pv055r8mpkdm6gk12lb4"))))
    (properties `((upstream-name . "nsga2R")))
    (build-system r-build-system)
    (propagated-inputs (list r-mco))
    (home-page "https://cran.r-project.org/package=nsga2R")
    (synopsis "Elitist Non-Dominated Sorting Genetic Algorithm")
    (description
     "Box-constrained multiobjective optimization using the elitist non-dominated
sorting genetic algorithm - NSGA-II. Fast non-dominated sorting, crowding
distance, tournament selection, simulated binary crossover, and polynomial
mutation are called in the main program.  The methods are described in Deb et
al. (2002) <doi:10.1109/4235.996017>.")
    (license license:lgpl3)))

(define-public r-nseval
  (package
    (name "r-nseval")
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nseval" version))
       (sha256
        (base32 "07pabn4msb6q50x67z84flb8fpzf43s1dy61cnqd7rn4l7zgc181"))))
    (properties `((upstream-name . "nseval")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nseval")
    (synopsis "Tools for Lazy and Non-Standard Evaluation")
    (description
     "This package provides functions to capture, inspect, manipulate, and create lazy
values (promises), \"...\" lists, and active calls.")
    (license license:gpl2+)))

(define-public r-nser
  (package
    (name "r-nser")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nser" version))
       (sha256
        (base32 "0l03qkh6b2n2vq4piz583vb3b8jmgh1m5rm47fs2w2faqxxs2y9f"))))
    (properties `((upstream-name . "nser")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rvest
                             r-reticulate
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-googlevis
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nandp1/nser/")
    (synopsis
     "Bhavcopy and Live Market Data from National Stock Exchange (NSE) & Bombay Stock Exchange (BSE) India")
    (description
     "Download Current & Historical Bhavcopy.  Get Live Market data from NSE India of
Equities and Derivatives (F&O) segment.  Data source
<https://www.nseindia.com/>.")
    (license license:gpl3)))

(define-public r-nse
  (package
    (name "r-nse")
    (version "1.21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nse" version))
       (sha256
        (base32 "0mw2ijc6z0l8sa7z5fbcapp1rl87zhh5v32iw1mcjw4khwc93bk7"))))
    (properties `((upstream-name . "nse")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-rcpp
                             r-np
                             r-mcmcse
                             r-mcmc
                             r-coda))
    (home-page "https://github.com/keblu/nse")
    (synopsis "Numerical Standard Errors Computation in R")
    (description
     "Collection of functions designed to calculate numerical standard error (NSE) of
univariate time series as described in Ardia et al. (2018)
<doi:10.1515/jtse-2017-0011> and Ardia and Bluteau (2017)
<doi:10.21105/joss.00172>.")
    (license license:gpl2+)))

(define-public r-nscluster
  (package
    (name "r-nscluster")
    (version "1.3.6-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NScluster" version))
       (sha256
        (base32 "0qaf36pf5gd91ivy4ns5gppmrzxcha7ghyih4hcbnxs2291jck0x"))))
    (properties `((upstream-name . "NScluster")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=NScluster")
    (synopsis
     "Simulation and Estimation of the Neyman-Scott Type Spatial Cluster Models")
    (description
     "Simulation and estimation for Neyman-Scott spatial cluster point process models
and their extensions, based on the methodology in Tanaka, Ogata, and Stoyan
(2008) <doi:10.1002/bimj.200610339>.  To estimate parameters by the simplex
method, parallel computation using @code{OpenMP} application programming
interface is available.  For more details see Tanaka, Saga and Nakano
<doi:10.18637/jss.v098.i06>.")
    (license license:gpl2+)))

(define-public r-nscancor
  (package
    (name "r-nscancor")
    (version "0.7.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nscancor" version))
       (sha256
        (base32 "1fcw3qpsc7kpg2ha1qkp2277ir2kyhy71vjwypfp49y7nqiwm7kh"))))
    (properties `((upstream-name . "nscancor")))
    (build-system r-build-system)
    (home-page "https://sigg-iten.ch/research/")
    (synopsis "Non-Negative and Sparse CCA")
    (description
     "Two implementations of canonical correlation analysis (CCA) that are based on
iterated regression.  By choosing the appropriate regression algorithm for each
data domain, it is possible to enforce sparsity, non-negativity or other kinds
of constraints on the projection vectors.  Multiple canonical variables are
computed sequentially using a generalized deflation scheme, where the additional
correlation not explained by previous variables is maximized.  nscancor() is
used to analyze paired data from two domains, and has the same interface as
cancor() from the stats package (plus some extra parameters).  mcancor() is
appropriate for analyzing data from three or more domains.  See
<https://sigg-iten.ch/learningbits/2014/01/20/canonical-correlation-analysis-under-constraints/>
and Sigg et al. (2007) <doi:10.1109/MLSP.2007.4414315> for more details.")
    (license license:gpl2+)))

(define-public r-nsarfima
  (package
    (name "r-nsarfima")
    (version "0.2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nsarfima" version))
       (sha256
        (base32 "0sv63anrsh0ajfvvkb44zsvc7sxws3xpsgwxqa951gy98w8h58g5"))))
    (properties `((upstream-name . "nsarfima")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nsarfima")
    (synopsis
     "Methods for Fitting and Simulating Non-Stationary ARFIMA Models")
    (description
     "Routines for fitting and simulating data under autoregressive fractionally
integrated moving average (ARFIMA) models, without the constraint of covariance
stationarity.  Two fitting methods are implemented, a pseudo-maximum likelihood
method and a minimum distance estimator.  Mayoral, L. (2007)
<doi:10.1111/j.1368-423X.2007.00202.x>.  Beran, J. (1995)
<doi:10.1111/j.2517-6161.1995.tb02054.x>.")
    (license license:gpl3+)))

(define-public r-nsae
  (package
    (name "r-nsae")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NSAE" version))
       (sha256
        (base32 "1pig0b2g6z1pc6is3nw7m88zwvwpg3pwvifvyc6p38kbin57m1pb"))))
    (properties `((upstream-name . "NSAE")))
    (build-system r-build-system)
    (propagated-inputs (list r-spgwr
                             r-semipar
                             r-rlist
                             r-numderiv
                             r-nlme
                             r-matrix
                             r-mass
                             r-lattice
                             r-cluster))
    (home-page "https://cran.r-project.org/package=NSAE")
    (synopsis "Nonstationary Small Area Estimation")
    (description
     "Executes nonstationary Fay-Herriot model and nonstationary generalized linear
mixed model for small area estimation.The empirical best linear unbiased
predictor (EBLUP) under stationary and nonstationary Fay-Herriot models and
empirical best predictor (EBP) under nonstationary generalized linear mixed
model along with the mean squared error estimation are included.  EBLUP for
prediction of non-sample area is also included under both stationary and
nonstationary Fay-Herriot models.  This extension to the Fay-Herriot model that
accounts for the presence of spatial nonstationarity was developed by Hukum
Chandra, Nicola Salvati and Ray Chambers (2015) <doi:10.1093/jssam/smu026> and
nonstationary generalized linear mixed model was developed by Hukum Chandra,
Nicola Salvati and Ray Chambers (2017) <doi:10.1016/j.spasta.2017.01.004>.  This
package is dedicated to the memory of Dr. Hukum Chandra who passed away while
the package creation was in progress.")
    (license license:gpl3)))

(define-public r-nricens
  (package
    (name "r-nricens")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nricens" version))
       (sha256
        (base32 "0fpgp6k3mhb0qxbx6248k9bscnmlzwj70mqh631a1nc4cpdjvw3q"))))
    (properties `((upstream-name . "nricens")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=nricens")
    (synopsis
     "NRI for Risk Prediction Models with Time to Event and Binary Response Data")
    (description
     "Calculating the net reclassification improvement (NRI) for risk prediction
models with time to event and binary data.")
    (license license:gpl2)))

(define-public r-nrejections
  (package
    (name "r-nrejections")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NRejections" version))
       (sha256
        (base32 "0lzj7kyn4s8l306a6xwkgkv1z4dlfsr61i902lvdxv4ln4m6a5kq"))))
    (properties `((upstream-name . "NRejections")))
    (build-system r-build-system)
    (propagated-inputs (list r-stepwisetest r-mvtnorm r-matrixcalc r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=NRejections")
    (synopsis "Metrics for Multiple Testing with Correlated Outcomes")
    (description
     "This package implements methods in Mathur and @code{VanderWeele} (in
preparation) to characterize global evidence strength across W correlated
ordinary least squares (OLS) hypothesis tests.  Specifically, uses resampling to
estimate a null interval for the total number of rejections in, for example, 95%
of samples generated with no associations (the global null), the excess hits
(the difference between the observed number of rejections and the upper limit of
the null interval), and a test of the global null based on the number of
rejections.")
    (license license:gpl2)))

(define-public r-nregression
  (package
    (name "r-nregression")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nRegression" version))
       (sha256
        (base32 "0d02zgb25g67vgbilwvx7qqqaznzbhqfnllp41fn4rr5ysrc01l0"))))
    (properties `((upstream-name . "nRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-simitation r-data-table r-covr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nRegression")
    (synopsis
     "Simulation-Based Calculations of Sample Size for Linear and Logistic Regression")
    (description
     "This package provides a function designed to estimate the minimal sample size
required to attain a specific statistical power in the context of linear
regression and logistic regression models through simulations.")
    (license license:gpl3)))

(define-public r-nrba
  (package
    (name "r-nrba")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nrba" version))
       (sha256
        (base32 "0vlc0w2x2rpddgwxsr5zi2kgfzpvnkfskznjm2q77svigpb3lpc2"))))
    (properties `((upstream-name . "nrba")))
    (build-system r-build-system)
    (propagated-inputs (list r-svrep r-survey r-magrittr r-dplyr r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nrba")
    (synopsis "Methods for Conducting Nonresponse Bias Analysis (NRBA)")
    (description
     "Facilitates nonresponse bias analysis (NRBA) for survey data.  Such data may
arise from a complex sampling design with features such as stratification,
clustering, or unequal probabilities of selection.  Multiple types of analyses
may be conducted: comparisons of response rates across subgroups; comparisons of
estimates before and after weighting adjustments; comparisons of sample-based
estimates to external population totals; tests of systematic differences in
covariate means between respondents and full samples; tests of independence
between response status and covariates; and modeling of outcomes and response
status as a function of covariates.  Extensive documentation and references are
provided for each type of analysis.  Krenzke, Van de Kerckhove, and Mohadjer
(2005) <http://www.asasrms.org/Proceedings/y2005/files/JSM2005-000572.pdf> and
Lohr and Riddles (2016)
<https://www150.statcan.gc.ca/n1/en/pub/12-001-x/2016002/article/14677-eng.pdf?st=q7@code{PyNsGR>}
provide an overview of the methods implemented in this package.")
    (license license:gpl3+)))

(define-public r-npwbs
  (package
    (name "r-npwbs")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npwbs" version))
       (sha256
        (base32 "029vxc6iy1p6nv0vw6097rvpkwlf0a24643gr6dbycpbail9qlqg"))))
    (properties `((upstream-name . "npwbs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npwbs")
    (synopsis "Nonparametric Multiple Change Point Detection Using WBS")
    (description
     "This package implements the procedure from G. J. Ross (2021) - \"Nonparametric
Detection of Multiple Location-Scale Change Points via Wild Binary Segmentation\"
<arxiv:2107.01742>.  This uses a version of Wild Binary Segmentation to detect
multiple location-scale (i.e.  mean and/or variance) change points in a sequence
of univariate observations, with a strict control on the probability of
incorrectly detecting a change point in a sequence which does not contain any.")
    (license license:gpl3)))

(define-public r-nptest
  (package
    (name "r-nptest")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nptest" version))
       (sha256
        (base32 "1yfxpw3xlscv0maqgvadxj93qgs25w027lk2br1zlckll8dvdakz"))))
    (properties `((upstream-name . "nptest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nptest")
    (synopsis "Nonparametric Bootstrap and Permutation Tests")
    (description
     "Robust nonparametric bootstrap and permutation tests for location, correlation,
and regression problems, as described in Helwig (2019a) <doi:10.1002/wics.1457>
and Helwig (2019b) <doi:10.1016/j.neuroimage.2019.116030>.  Univariate and
multivariate tests are supported.  For each problem, exact tests and Monte Carlo
approximations are available.  Five different nonparametric bootstrap confidence
intervals are implemented.  Parallel computing is implemented via the parallel
package.")
    (license license:gpl2+)))

(define-public r-npsurvss
  (package
    (name "r-npsurvss")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npsurvSS" version))
       (sha256
        (base32 "0k9xvxii5527vynf7yy50j7z4jhxgk5ydhdcaaygm9ynx5yq14ip"))))
    (properties `((upstream-name . "npsurvSS")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://github.com/godwinyung/npsurvSS")
    (synopsis
     "Sample Size and Power Calculation for Common Non-Parametric Tests in Survival Analysis")
    (description
     "This package provides a number of statistical tests have been proposed to
compare two survival curves, including the difference in (or ratio of) t-year
survival, difference in (or ratio of) p-th percentile survival, difference in
(or ratio of) restricted mean survival time, and the weighted log-rank test.
Despite the multitude of options, the convention in survival studies is to
assume proportional hazards and to use the unweighted log-rank test for design
and analysis.  This package provides sample size and power calculation for all
of the above statistical tests with allowance for flexible accrual, censoring,
and survival (eg.  Weibull, piecewise-exponential, mixture cure).  It is the
companion R package to the paper by Yung and Liu (2019)
<doi:10.1111/biom.13196>.  Specific to the weighted log-rank test, users may
specify which approximations they wish to use to estimate the large-sample mean
and variance.  The default option has been shown to provide substantial
improvement over the conventional sample size and power equations based on
Schoenfeld (1981) <doi:10.1093/biomet/68.1.316>.")
    (license license:gpl2)))

(define-public r-npsr
  (package
    (name "r-npsr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npsr" version))
       (sha256
        (base32 "1fzvilzjg9z05991sr1s1bdp17kfl6d1580qdllk8is9ac06np0v"))))
    (properties `((upstream-name . "npsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-infotheo r-gmp))
    (home-page "https://cran.r-project.org/package=npsr")
    (synopsis "Validate Instrumental Variables using NPS")
    (description
     "An R implementation of the Necessary and Probably Sufficient (NPS) test for
finding valid instrumental variables, as suggested by Amit Sharma (2016, Working
Paper) <http://amitsharma.in/pubs/necessary_probably_sufficient_iv_test.pdf>.
The NPS test, compares the likelihood that a given set of observational data of
the three variables Z, X and Y is generated by a valid instrumental variable
model (Z -> X -> Y) to the likelihood that the data is generated by an invalid
IV model.")
    (license license:gpl2)))

(define-public r-npsf
  (package
    (name "r-npsf")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npsf" version))
       (sha256
        (base32 "011y8k3sdhhgzf4yn0wdxx55yv4kdpgyhj0bbm6krjdpphnr9557"))))
    (properties `((upstream-name . "npsf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-formula))
    (home-page "https://cran.r-project.org/package=npsf")
    (synopsis
     "Nonparametric and Stochastic Efficiency and Productivity Analysis")
    (description
     "Nonparametric efficiency measurement and statistical inference via DEA type
estimators (see FÃ¤re, Grosskopf, and Lovell (1994)
<doi:10.1017/CBO9780511551710>, Kneip, Simar, and Wilson (2008)
<doi:10.1017/S0266466608080651> and Badunenko and Mozharovskyi (2020)
<doi:10.1080/01605682.2019.1599778>) as well as Stochastic Frontier estimators
for both cross-sectional data and 1st, 2nd, and 4th generation models for panel
data (see Kumbhakar and Lovell (2003) <doi:10.1017/CBO9781139174411>, Badunenko
and Kumbhakar (2016) <doi:10.1016/j.ejor.2016.04.049>).  The stochastic frontier
estimators can handle both half-normal and truncated normal models with
conditional mean and heteroskedasticity.  The marginal effects of determinants
can be obtained.")
    (license license:gpl2)))

(define-public r-nprotreg
  (package
    (name "r-nprotreg")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nprotreg" version))
       (sha256
        (base32 "152z2wsm4gwqw51imk80vxg9spvl9293vqsja8d8gh1rmsm6m5r2"))))
    (properties `((upstream-name . "nprotreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach))
    (home-page "https://cran.r-project.org/package=nprotreg")
    (synopsis "Nonparametric Rotations for Sphere-Sphere Regression")
    (description
     "Fits sphere-sphere regression models by estimating locally weighted rotations.
Simulation of sphere-sphere data according to non-rigid rotation models.
Provides methods for bias reduction applying iterative procedures within a
Newton-Raphson learning scheme.  Cross-validation is exploited to select
smoothing parameters.  See Marco Di Marzio, Agnese Panzera & Charles C. Taylor
(2018) <doi:10.1080/01621459.2017.1421542>.")
    (license license:expat)))

(define-public r-nprocregression
  (package
    (name "r-nprocregression")
    (version "1.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npROCRegression" version))
       (sha256
        (base32 "0fl10gj6s09gfmb7wl1y62fr49qnckjqxbzhjkyx029v9klbfvp7"))))
    (properties `((upstream-name . "npROCRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=npROCRegression")
    (synopsis "Kernel-Based Nonparametric ROC Regression Modelling")
    (description
     "This package implements several nonparametric regression approaches for the
inclusion of covariate information on the receiver operating characteristic
(ROC) framework.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nproc
  (package
    (name "r-nproc")
    (version "2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nproc" version))
       (sha256
        (base32 "1p5wjz0rafg27fsl48l9pmki3px1k0pav3ignz4swik5i1nhnc8w"))))
    (properties `((upstream-name . "nproc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tree
                             r-rocr
                             r-randomforest
                             r-naivebayes
                             r-mass
                             r-glmnet
                             r-e1071
                             r-ada))
    (native-inputs (list r-knitr))
    (home-page "http://advances.sciencemag.org/content/4/2/eaao1659")
    (synopsis
     "Neyman-Pearson (NP) Classification Algorithms and NP Receiver Operating Characteristic (NP-ROC) Curves")
    (description
     "In many binary classification applications, such as disease diagnosis and spam
detection, practitioners commonly face the need to limit type I error (i.e., the
conditional probability of misclassifying a class 0 observation as class 1) so
that it remains below a desired threshold.  To address this need, the
Neyman-Pearson (NP) classification paradigm is a natural choice; it minimizes
type II error (i.e., the conditional probability of misclassifying a class 1
observation as class 0) while enforcing an upper bound, alpha, on the type I
error.  Although the NP paradigm has a century-long history in hypothesis
testing, it has not been well recognized and implemented in classification
schemes.  Common practices that directly limit the empirical type I error to no
more than alpha do not satisfy the type I error control objective because the
resulting classifiers are still likely to have type I errors much larger than
alpha.  As a result, the NP paradigm has not been properly implemented for many
classification scenarios in practice.  In this work, we develop the first
umbrella algorithm that implements the NP paradigm for all scoring-type
classification methods, including popular methods such as logistic regression,
support vector machines and random forests.  Powered by this umbrella algorithm,
we propose a novel graphical tool for NP classification methods: NP receiver
operating characteristic (NP-ROC) bands, motivated by the popular receiver
operating characteristic (ROC) curves.  NP-ROC bands will help choose in a data
adaptive way and compare different NP classifiers.")
    (license license:gpl2)))

(define-public r-nprobust
  (package
    (name "r-nprobust")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nprobust" version))
       (sha256
        (base32 "1vry64r3xms6xls6bqq918prjyhs5svhl2yjvq0jxycaaqw2sgyp"))))
    (properties `((upstream-name . "nprobust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://cran.r-project.org/package=nprobust")
    (synopsis
     "Nonparametric Robust Estimation and Inference Methods using Local Polynomial Regression and Kernel Density Estimation")
    (description
     "This package provides tools for data-driven statistical analysis using local
polynomial regression and kernel density estimation methods as described in
Calonico, Cattaneo and Farrell (2018, <doi:10.1080/01621459.2017.1285776>):
lprobust() for local polynomial point estimation and robust bias-corrected
inference, lpbwselect() for local polynomial bandwidth selection, kdrobust() for
kernel density point estimation and robust bias-corrected inference,
kdbwselect() for kernel density bandwidth selection, and nprobust.plot() for
plotting results.  The main methodological and numerical features of this
package are described in Calonico, Cattaneo and Farrell (2019,
<doi:10.18637/jss.v091.i08>).")
    (license license:gpl2)))

(define-public r-npregfast
  (package
    (name "r-npregfast")
    (version "1.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npregfast" version))
       (sha256
        (base32 "1d2p23qqwa06rxfl5v9bcvq2j6pcsvjywq74qgrflkjk45g2kjb5"))))
    (properties `((upstream-name . "npregfast")))
    (build-system r-build-system)
    (propagated-inputs (list r-wesanderson
                             r-shinyjs
                             r-shiny
                             r-sfsmisc
                             r-mgcv
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=npregfast")
    (synopsis
     "Nonparametric Estimation of Regression Models with Factor-by-Curve Interactions")
    (description
     "This package provides a method for obtaining nonparametric estimates of
regression models with or without factor-by-curve interactions using local
polynomial kernel smoothers or splines.  Additionally, a parametric model
(allometric model) can be estimated.")
    (license license:expat)))

(define-public r-npregderiv
  (package
    (name "r-npregderiv")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npregderiv" version))
       (sha256
        (base32 "1k873cs3rs15l13z8017n4anacandx7di6yk1zlamcc5p3vlh59n"))))
    (properties `((upstream-name . "npregderiv")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npregderiv")
    (synopsis
     "Nonparametric Estimation of the Derivatives of a Regression Function")
    (description
     "Estimating the first and second derivatives of a regression function by the
method of Wang and Lin (2015) <http://www.jmlr.org/papers/v16/wang15b.html>.")
    (license license:gpl2+)))

(define-public r-npreg
  (package
    (name "r-npreg")
    (version "1.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npreg" version))
       (sha256
        (base32 "10pgcjhiannvxkbsw3ywkjzmgsq2m7dqwqhxkfcdnbc052n7s6di"))))
    (properties `((upstream-name . "npreg")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npreg")
    (synopsis "Nonparametric Regression via Smoothing Splines")
    (description
     "Multiple and generalized nonparametric regression using smoothing spline ANOVA
models and generalized additive models, as described in Helwig (2020)
<doi:10.4135/9781526421036885885>.  Includes support for Gaussian and
non-Gaussian responses, smoothers for multiple types of predictors, interactions
between smoothers of mixed types, eight different methods for smoothing
parameter selection, and flexible tools for prediction and inference.")
    (license license:gpl2+)))

(define-public r-npred
  (package
    (name "r-npred")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPRED" version))
       (sha256
        (base32 "0nkfgc9zy3gszmnay77yj7i0p8w1q8j1m9wb05hkrmhiacp4mbn4"))))
    (properties `((upstream-name . "NPRED")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/zejiang-unsw/NPRED#readme")
    (synopsis "Predictor Identifier: Nonparametric Prediction")
    (description
     "Partial informational correlation (PIC) is used to identify the meaningful
predictors to the response from a large set of potential predictors.  Details of
methodologies used in the package can be found in Sharma, A., Mehrotra, R.
(2014). <doi:10.1002/2013WR013845>, Sharma, A., Mehrotra, R., Li, J., & Jha, S.
(2016). <doi:10.1016/j.envsoft.2016.05.021>, and Mehrotra, R., & Sharma, A.
(2006). <doi:10.1016/j.advwatres.2005.08.007>.")
    (license license:gpl3)))

(define-public r-npphen
  (package
    (name "r-npphen")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npphen" version))
       (sha256
        (base32 "17q9zhh7abpsddb25km1y6kyijlf6lh8j43lqv58jsjig98rrk6w"))))
    (properties `((upstream-name . "npphen")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-lubridate r-ks))
    (home-page "https://github.com/labGRS/npphen")
    (synopsis
     "Vegetation Phenological Cycle and Anomaly Detection using Remote Sensing Data")
    (description
     "Calculates phenological cycle and anomalies using a non-parametric approach
applied to time series of vegetation indices derived from remote sensing data or
field measurements.  The package implements basic and high-level functions for
manipulating vector data (numerical series) and raster data (satellite derived
products).  Processing of very large raster files is supported.  For more
information, please check the following paper: @code{ChÃ¡vez} et al. (2023)
<doi:10.3390/rs15010073>.")
    (license license:gpl3+)))

(define-public r-nppbib
  (package
    (name "r-nppbib")
    (version "1.2-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nppbib" version))
       (sha256
        (base32 "1nn6wf89jhr3gy4rcd6px0cd5b1bsr7pbaxng4adba8n3yrss7vs"))))
    (properties `((upstream-name . "nppbib")))
    (build-system r-build-system)
    (home-page "https://github.com/dalling1")
    (synopsis
     "Nonparametric Partially-Balanced Incomplete Block Design Analysis")
    (description
     "This package implements a nonparametric statistical test for rank or score data
from partially-balanced incomplete block-design experiments.")
    (license license:gpl3)))

(define-public r-npp
  (package
    (name "r-npp")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPP" version))
       (sha256
        (base32 "1c45gkqx27685am2qfiyq7rnlz809lmyi3jhffgf3jhqcyg9mwm7"))))
    (properties `((upstream-name . "NPP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NPP")
    (synopsis "Normalized Power Prior Bayesian Analysis")
    (description
     "Posterior sampling in several commonly used distributions using normalized power
prior as described in Duan, Ye and Smith (2006) <doi:10.1002/env.752> and
Ibrahim et.al. (2015) <doi:10.1002/sim.6728>.  Sampling of the power parameter
is achieved via either independence Metropolis-Hastings or random walk
Metropolis-Hastings based on transformation.")
    (license license:gpl2+)))

(define-public r-npordtests
  (package
    (name "r-npordtests")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npordtests" version))
       (sha256
        (base32 "1axzcyy45h3rs67m0i3cvwbmza1mnmraxan9j4zlpxdd5x9nz4h8"))))
    (properties `((upstream-name . "npordtests")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npordtests")
    (synopsis
     "Nonparametric Tests for Equality of Location Against Ordered Alternatives")
    (description
     "This package performs nonparametric tests for equality of location against
ordered alternatives.")
    (license license:gpl2+)))

(define-public r-npmv
  (package
    (name "r-npmv")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npmv" version))
       (sha256
        (base32 "04lfks2rlax59gxdnbgkpmk2vaax718z6hkgsvmyxf52iby6rvlr"))))
    (properties `((upstream-name . "npmv")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula))
    (home-page "https://cran.r-project.org/package=npmv")
    (synopsis "Nonparametric Comparison of Multivariate Samples")
    (description
     "This package performs analysis of one-way multivariate data, for small samples
using Nonparametric techniques.  Using approximations for ANOVA Type, Wilks
Lambda, Lawley Hotelling, and Bartlett Nanda Pillai Test statics, the package
compares the multivariate distributions for a single explanatory variable.  The
comparison is also performed using a permutation test for each of the four test
statistics.  The package also performs an all-subsets algorithm regarding
variables and regarding factor levels.")
    (license license:gpl2)))

(define-public r-npmr
  (package
    (name "r-npmr")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npmr" version))
       (sha256
        (base32 "1h5cqbkmmswnmaf0b67akiybab9zpi1nvjj5wkdxiwiss7n1an7z"))))
    (properties `((upstream-name . "npmr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npmr")
    (synopsis "Nuclear Penalized Multinomial Regression")
    (description
     "Fit multinomial logistic regression with a penalty on the nuclear norm of the
estimated regression coefficient matrix, using proximal gradient descent.")
    (license license:gpl2)))

(define-public r-npmlreg
  (package
    (name "r-npmlreg")
    (version "0.46-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npmlreg" version))
       (sha256
        (base32 "1f0bzccmral2y56aih37gmi6mjww6wmp2a8z6yxm501fgj2lgzfc"))))
    (properties `((upstream-name . "npmlreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod))
    (home-page "https://cran.r-project.org/package=npmlreg")
    (synopsis
     "Nonparametric Maximum Likelihood Estimation for Random Effect Models")
    (description
     "Nonparametric maximum likelihood estimation or Gaussian quadrature for
overdispersed generalized linear models and variance component models.")
    (license license:gpl2+)))

(define-public r-npmlecmprsk
  (package
    (name "r-npmlecmprsk")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPMLEcmprsk" version))
       (sha256
        (base32 "0nm88fsxgrfk0j0lmir57bhxy4p8ah503gpj6jdlvjqw862jigiq"))))
    (properties `((upstream-name . "NPMLEcmprsk")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NPMLEcmprsk")
    (synopsis
     "Type-Specific Failure Rate and Hazard Rate on Competing Risks Data")
    (description
     "Given a failure type, the function computes covariate-specific probability of
failure over time and covariate-specific conditional hazard rate based on
possibly right-censored competing risk data.  Specifically, it computes the
non-parametric maximum-likelihood estimates of these quantities and their
asymptotic variances in a semi-parametric mixture model for competing-risks
data, as described in Chang et al. (2007a).")
    (license license:artistic2.0)))

(define-public r-npmlda
  (package
    (name "r-npmlda")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npmlda" version))
       (sha256
        (base32 "1dr25an7cac89jyb8zhmj3ry6lq7sh7zxci1injplnk4gzy17mc5"))))
    (properties `((upstream-name . "npmlda")))
    (build-system r-build-system)
    (home-page "https://github.com/npmldabook/npmlda/")
    (synopsis "Nonparametric Models for Longitudinal Data")
    (description
     "Support the book: Wu CO and Tian X (2018).  Nonparametric Models for
Longitudinal Data.  Chapman & Hall/CRC (to appear); and provide fit for using
global and local smoothing methods for the conditional-mean and
conditional-distribution based models with longitudinal Data.")
    (license license:gpl2+)))

(define-public r-nplyr
  (package
    (name "r-nplyr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nplyr" version))
       (sha256
        (base32 "0n9pl6igjpdvsp39d7h5xr64c1ixlhc8bcxpbl70mz95p7jrld8h"))))
    (properties `((upstream-name . "nplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rlang r-purrr r-dplyr r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/markjrieke/nplyr")
    (synopsis "Grammar of Nested Data Manipulation")
    (description
     "This package provides functions for manipulating nested data frames in a
list-column using dplyr <https://dplyr.tidyverse.org/> syntax.  Rather than
unnesting, then manipulating a data frame, nplyr allows users to manipulate each
nested data frame directly.  nplyr is a wrapper for dplyr functions that provide
tools for common data manipulation steps: filtering rows, selecting columns,
summarising grouped data, among others.")
    (license license:expat)))

(define-public r-nplr
  (package
    (name "r-nplr")
    (version "0.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nplr" version))
       (sha256
        (base32 "1h3qv9dlw2gx8km3slyvrl588nif1n87df8xwmm6p75ziqhn2f56"))))
    (properties `((upstream-name . "nplr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fredcommo/nplr")
    (synopsis "N-Parameter Logistic Regression")
    (description
     "Performing drug response analyses and IC50 estimations using n-Parameter
logistic regression.  Can also be applied to proliferation analyses.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nplplot
  (package
    (name "r-nplplot")
    (version "4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nplplot" version))
       (sha256
        (base32 "1sxmz0cl15fdc0s987nwjnl6ywxg4fqs8qnm5nkcbyj6b9jzcbwy"))))
    (properties `((upstream-name . "nplplot")))
    (build-system r-build-system)
    (home-page "https://watson.hgen.pitt.edu/register/")
    (synopsis "Plotting Linkage and Association Results")
    (description
     "This package provides routines for plotting linkage and association results
along a chromosome, with marker names displayed along the top border.  There are
also routines for generating BED and @code{BedGraph} custom tracks for viewing
in the UCSC genome browser.  The data reformatting program Mega2 uses this
package to plot output from a variety of programs.")
    (license license:gpl3+)))

(define-public r-npistats
  (package
    (name "r-npistats")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPIstats" version))
       (sha256
        (base32 "0hbx2mzz1z2158c943dqfn0pq1aybj1xxy55mmvld4djr5zrlz9w"))))
    (properties `((upstream-name . "NPIstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NPIstats")
    (synopsis "Nonparametric Predictive Inference")
    (description
     "An implementation of the Nonparametric Predictive Inference approach in R. It
provides tools for quantifying uncertainty via lower and upper probabilities.
It includes useful functions for pairwise and multiple comparisons: comparing
two groups with and without terminated tails, selecting the best group,
selecting the subset of best groups, selecting the subset including the best
group.")
    (license license:gpl3)))

(define-public r-npintfactrep
  (package
    (name "r-npintfactrep")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npIntFactRep" version))
       (sha256
        (base32 "14ms66ppzb4jjsa3fparic6gdn913f6wv2ccjyb02j1ahs4iaa4g"))))
    (properties `((upstream-name . "npIntFactRep")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ez))
    (home-page "https://cran.r-project.org/package=npIntFactRep")
    (synopsis
     "Nonparametric Interaction Tests for Factorial Designs with Repeated Measures")
    (description
     "Returns nonparametric aligned rank tests for the interaction in two-way
factorial designs, on R data sets with repeated measures in wide format.  Five
ANOVAs tables are reported.  A PARAMETRIC one on the original data, one for a
CHECK upon the interaction alignments, and three aligned rank tests: one on the
aligned REGULAR, one on the FRIEDMAN, and one on the KOCH ranks.  In these rank
tests, only the resulting values for the interaction are relevant.")
    (license license:gpl2+)))

(define-public r-npi
  (package
    (name "r-npi")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npi" version))
       (sha256
        (base32 "0akf9m46iy18nqm678sga1dxq1135jj33yrxz30yhd75w6nicgri"))))
    (properties `((upstream-name . "npi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-httr
                             r-glue
                             r-dplyr
                             r-curl
                             r-checkmate
                             r-checkluhn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/npi/")
    (synopsis "Access the U.S. National Provider Identifier Registry API")
    (description
     "Access the United States National Provider Identifier Registry API
<https://npiregistry.cms.hhs.gov/api/>.  Obtain and transform administrative
data linked to a specific individual or organizational healthcare provider, or
perform advanced searches based on provider name, location, type of service,
credentials, and other attributes exposed by the API.")
    (license license:expat)))

(define-public r-nphrct
  (package
    (name "r-nphrct")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nphRCT" version))
       (sha256
        (base32 "0b29izx3rz17g0jx72s33jj8ps0z3kq8fj2v0035hcjacnswz9ya"))))
    (properties `((upstream-name . "nphRCT")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-purrr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nphRCT")
    (synopsis "Non-Proportional Hazards in Randomized Controlled Trials")
    (description
     "Perform a stratified weighted log-rank test in a randomized controlled trial.
Tests can be visualized as a difference in average score on the two treatment
arms.  These methods are described in Magirr and Burman (2018)
<@code{arXiv:1807.11097v1>}, Magirr (2020) <@code{arXiv:2007.04767v1>}, and
Magirr and Jimenez (2022) <@code{arXiv:2201.10445v1>}.")
    (license license:gpl3+)))

(define-public r-nphpower
  (package
    (name "r-nphpower")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nphPower" version))
       (sha256
        (base32 "0jqrbjm56nmhrmhsidz0bzyifq6kpqch8r64j8vd98b7xgcb6w4h"))))
    (properties `((upstream-name . "nphPower")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-survival r-mvtnorm r-mass))
    (home-page "https://github.com/hcheng99/nphPower")
    (synopsis "Sample Size Calculation under Non-Proportional Hazards")
    (description
     "This package performs combination tests and sample size calculation for fixed
design with survival endpoints using combination tests under either proportional
hazards or non-proportional hazards.  The combination tests include maximum
weighted log-rank test and projection test.  The sample size calculation
procedure is very flexible, allowing for user-defined hazard ratio function and
considering various trial conditions like staggered entry, drop-out etc.  Trial
simulation function is also provided to facilitate the empirical power
calculation.  The references for projection test and maximum weighted logrank
test include Brendel et al. (2014) <doi:10.1111/sjos.12059> and Cheng and He
(2021) <@code{arXiv:2110.03833>}.  The references for sample size calculation
under proportional hazard include Schoenfeld (1981)
<doi:10.1093/biomet/68.1.316> and Freedman (1982) <doi:10.1002/sim.4780010204>.
The references for calculation under non-proportional hazards include Lakatos
(1988) <doi:10.2307/2531910> and Cheng and He (2021) (under review).")
    (license license:gpl2+)))

(define-public r-nphmc
  (package
    (name "r-nphmc")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPHMC" version))
       (sha256
        (base32 "0mi92rnpm96nc2ip10022qa7cjrlry9aibw8yx9xmn826bqipwir"))))
    (properties `((upstream-name . "NPHMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-smcure))
    (home-page "https://cran.r-project.org/package=NPHMC")
    (synopsis
     "Sample Size Calculation for the Proportional Hazards Mixture Cure Model")
    (description
     "An R-package for calculating sample size of a survival trial with or without
cure fractions.")
    (license license:gpl2)))

(define-public r-nphazardrate
  (package
    (name "r-nphazardrate")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPHazardRate" version))
       (sha256
        (base32 "0na4iphva1dadz457ii8kxrhnki2asaxpbwr824rljyrldj9rcgg"))))
    (properties `((upstream-name . "NPHazardRate")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=NPHazardRate")
    (synopsis "Nonparametric Hazard Rate Estimation")
    (description
     "This package provides functions and examples for histogram, kernel (classical,
variable bandwidth and transformations based), discrete and semiparametric
hazard rate estimators.")
    (license license:gpl2+)))

(define-public r-nph
  (package
    (name "r-nph")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nph" version))
       (sha256
        (base32 "100x7ar498s18rs8m4bx0kf4h8vqk1clb4z4kdnlni16lrpc90hy"))))
    (properties `((upstream-name . "nph")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mvtnorm r-multcomp r-muhaz r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nph")
    (synopsis
     "Planning and Analysing Survival Studies under Non-Proportional Hazards")
    (description
     "Piecewise constant hazard functions are used to flexibly model survival
distributions with non-proportional hazards and to simulate data from the
specified distributions.  A function to calculate weighted log-rank tests for
the comparison of two hazard functions is included.  Also, a function to
calculate a test using the maximum of a set of test statistics from weighted
log-rank tests (@code{MaxCombo} test) is provided.  This test utilizes the
asymptotic multivariate normal joint distribution of the separate test
statistics.  The correlation is estimated from the data.  These methods are
described in Ristl et al. (2021) <doi:10.1002/pst.2062>.  Finally, a function is
provided for the estimation and inferential statistics of various parameters
that quantify the difference between two survival curves.  Eligible parameters
are differences in survival probabilities, log survival probabilities,
complementary log log (cloglog) transformed survival probabilities, quantiles of
the survival functions, log transformed quantiles, restricted mean survival
times, as well as an average hazard ratio, the Cox model score statistic
(logrank statistic), and the Cox-model hazard ratio.  Adjustments for multiple
testing and simultaneous confidence intervals are calculated using a
multivariate normal approximation to the set of selected parameters.")
    (license license:gpl3)))

(define-public r-npflow
  (package
    (name "r-npflow")
    (version "0.13.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPflow" version))
       (sha256
        (base32 "1bgdkm82pmzjv46pkxpvh5ffffmc6q68x5jjl7k330w9vwgx2kf0"))))
    (properties `((upstream-name . "NPflow")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-pheatmap
                             r-ggplot2
                             r-fastcluster
                             r-ellipse))
    (home-page "https://cran.r-project.org/package=NPflow")
    (synopsis
     "Bayesian Nonparametrics for Automatic Gating of Flow-Cytometry Data")
    (description
     "Dirichlet process mixture of multivariate normal, skew normal or skew
t-distributions modeling oriented towards flow-cytometry data preprocessing
applications.  Method is detailed in: Hejblum, Alkhassimn, Gottardo, Caron &
Thiebaut (2019) <doi: 10.1214/18-AOAS1209>.")
    (license (list license:lgpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-npexact
  (package
    (name "r-npexact")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npExact" version))
       (sha256
        (base32 "055wm5lcj98wb71lqp2zdyl8kkwvi6lwmnaylynvr907xqabaqvd"))))
    (properties `((upstream-name . "npExact")))
    (build-system r-build-system)
    (home-page "https://github.com/zauster/npExact")
    (synopsis
     "Exact Nonparametric Hypothesis Tests for the Mean, Variance and Stochastic Inequality")
    (description
     "This package provides several novel exact hypothesis tests with minimal
assumptions on the errors.  The tests are exact, meaning that their p-values are
correct for the given sample sizes (the p-values are not derived from asymptotic
analysis).  The test for stochastic inequality is for ordinal comparisons based
on two independent samples and requires no assumptions on the errors.  The other
tests include tests for the mean and variance of a single sample and comparing
means in independent samples.  All these tests only require that the data has
known bounds (such as percentages that lie in [0,100].  These bounds are part of
the input.")
    (license license:gpl2)))

(define-public r-npde
  (package
    (name "r-npde")
    (version "3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npde" version))
       (sha256
        (base32 "1zhf48wg8cfki5z0mv7k56s03km2n7c9gr2q70lvm2k7lz57amwq"))))
    (properties `((upstream-name . "npde")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-rlang r-mclust r-gridextra r-ggplot2))
    (home-page "https://cran.r-project.org/package=npde")
    (synopsis
     "Normalised Prediction Distribution Errors for Nonlinear Mixed-Effect Models")
    (description
     "This package provides routines to compute normalised prediction distribution
errors, a metric designed to evaluate non-linear mixed effect models such as
those used in pharmacokinetics and pharmacodynamics.")
    (license license:gpl2+)))

(define-public r-npcurepk
  (package
    (name "r-npcurepk")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npcurePK" version))
       (sha256
        (base32 "1p1vl9w8z8xq6bfsn1kgq5cnzyf4aiax8iis0vb4xcxrb2wl0mav"))))
    (properties `((upstream-name . "npcurePK")))
    (build-system r-build-system)
    (propagated-inputs (list r-npcure r-foreach r-doparallel r-desctools
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=npcurePK")
    (synopsis "Mixture Cure Model Estimation with Cure Status Partially Known")
    (description
     "This package performs nonparametric estimation in mixture cure models when the
cure status is partially known.  For details, see Safari et al (2021)
<doi:10.1002/bimj.202100156>, Safari et al (2022)
<doi:10.1177/09622802221115880> and Safari et al (2023)
<doi:10.1007/s10985-023-09591-x>.")
    (license license:gpl2+)))

(define-public r-npcure
  (package
    (name "r-npcure")
    (version "0.1-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npcure" version))
       (sha256
        (base32 "0hf6w8w76qmjdsd6zgg85jj5ypmmg1a1ryzqwnxcypsdjxaq539z"))))
    (properties `((upstream-name . "npcure")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-permute))
    (home-page "https://cran.r-project.org/package=npcure")
    (synopsis "Nonparametric Estimation in Mixture Cure Models")
    (description
     "This package performs nonparametric estimation in mixture cure models, and
significance tests for the cure probability.  For details, see LÃ³pez-Cheda et
al. (2017a) <doi:10.1016/j.csda.2016.08.002> and LÃ³pez-Cheda et al. (2017b)
<doi:10.1007/s11749-016-0515-1>.")
    (license license:gpl2+)))

(define-public r-npcs
  (package
    (name "r-npcs")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npcs" version))
       (sha256
        (base32 "0bd81fi1zg06s39msdrnhh0yv7y7zr2nn110w8fm9vdlcx100gam"))))
    (properties `((upstream-name . "npcs")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-smotefamily
                             r-nnet
                             r-magrittr
                             r-ggplot2
                             r-formatr
                             r-foreach
                             r-forcats
                             r-dplyr
                             r-dfoptim
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=npcs")
    (synopsis "Neyman-Pearson Classification via Cost-Sensitive Learning")
    (description
     "We connect the multi-class Neyman-Pearson classification (NP) problem to the
cost-sensitive learning (CS) problem, and propose two algorithms (NPMC-CX and
NPMC-ER) to solve the multi-class NP problem through cost-sensitive learning
tools.  Under certain conditions, the two algorithms are shown to satisfy
multi-class NP properties.  More details are available in the paper
\"Neyman-Pearson Multi-class Classification via Cost-sensitive Learning\" (Ye Tian
and Yang Feng, 2021).")
    (license license:gpl2)))

(define-public r-npcp
  (package
    (name "r-npcp")
    (version "0.2-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npcp" version))
       (sha256
        (base32 "0mh5z4flksj7v1klylwqn2dxn5sbvs16sdy46l7y7n93i4v3pqvi"))))
    (properties `((upstream-name . "npcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich))
    (home-page "https://cran.r-project.org/package=npcp")
    (synopsis
     "Some Nonparametric CUSUM Tests for Change-Point Detection in Possibly Multivariate Observations")
    (description
     "This package provides nonparametric CUSUM tests for detecting changes in
possibly serially dependent univariate or low-dimensional multivariate
observations.  Retrospective tests sensitive to changes in the expectation, the
variance, the covariance, the autocovariance, the distribution function,
Spearman's rho, Kendall's tau, Gini's mean difference, and the copula are
provided, as well as a test for detecting changes in the distribution of
independent block maxima (with environmental studies in mind).  The package also
contains a test sensitive to changes in the autocopula and a combined test of
stationarity sensitive to changes in the distribution function and the
autocopula.  The latest additions are an open-end sequential test based on the
retrospective CUSUM statistic that can be used for monitoring changes in the
mean of possibly serially dependent univariate observations, as well as
closed-end and open-end sequential tests based on empirical distribution
functions that can be used for monitoring changes in the contemporary
distribution of possibly serially dependent univariate or low-dimensional
multivariate observations.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file LICENCE")))))

(define-public r-npcox
  (package
    (name "r-npcox")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPCox" version))
       (sha256
        (base32 "09cyaj2xlad8277bw5nbdi51imhw5dr78zqks0cz3513igc262sa"))))
    (properties `((upstream-name . "NPCox")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NPCox")
    (synopsis "Nonparametric and Semiparametric Proportional Hazards Model")
    (description
     "An estimation procedure for the analysis of nonparametric proportional hazards
model (e.g. h(t) = h0(t)exp(b(t)'Z)), providing estimation of b(t) and its
pointwise standard errors, and semiparametric proportional hazards model (e.g.
h(t) = h0(t)exp(b(t)'Z1 + c*Z2)), providing estimation of b(t), c and their
standard errors.  More details can be found in Lu Tian et al. (2005)
<doi:10.1198/016214504000000845>.")
    (license license:gpl3)))

(define-public r-npcoptest
  (package
    (name "r-npcoptest")
    (version "1.03")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npcopTest" version))
       (sha256
        (base32 "1kpa3avi95aa93y038f4zqhhdp8vdscdk0c6397qmqjg34hf1dnr"))))
    (properties `((upstream-name . "npcopTest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=npcopTest")
    (synopsis "Non Parametric Test for Detecting Changes in the Copula")
    (description
     "This package provides a non parametric test for change points detection in the
dependence between the components of multivariate data, with or without
(multiple) changes in the marginal distributions.  The full details,
justification and examples are published in Rohmer (2016)
<doi:10.1016/j.spl.2016.06.026>.")
    (license license:gpl3+)))

(define-public r-npclust
  (package
    (name "r-npclust")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npclust" version))
       (sha256
        (base32 "0a1las0vxm4mhwvds66lvq87kb140sjrnjq5sihbrrh7wpbq31zg"))))
    (properties `((upstream-name . "npclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-ggplot2))
    (home-page "https://cran.r-project.org/package=npclust")
    (synopsis "Nonparametric Tests for Incomplete Clustered Data")
    (description
     "Nonparametric tests for clustered data in pre-post intervention design
documented in Cui and Harrar (2021) <doi:10.1002/bimj.201900310> and Harrar and
Cui (2022) <doi:10.1016/j.jspi.2022.05.009>.  Other than the main test results
mentioned in the reference paper, this package also provides a function to
calculate the sample size allocations for the input long format data set, and
also a function for adjusted/unadjusted confidence intervals calculations.
There are also functions to visualize the distribution of data across different
intervention groups over time, and also the adjusted/unadjusted confidence
intervals.")
    (license license:gpl2+)))

(define-public r-npcirc
  (package
    (name "r-npcirc")
    (version "3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPCirc" version))
       (sha256
        (base32 "0qcam9n9llsblrpa2w0yj0axh79qwinz4wwbf4gvyrajfv935i8i"))))
    (properties `((upstream-name . "NPCirc")))
    (build-system r-build-system)
    (propagated-inputs (list r-shape
                             r-rgl
                             r-rcpparmadillo
                             r-rcpp
                             r-plotrix
                             r-movmf
                             r-misc3d
                             r-circular
                             r-bolstad2))
    (home-page "https://www.jstatsoft.org/v61/i09/")
    (synopsis "Nonparametric Circular Methods")
    (description
     "Nonparametric smoothing methods for density and regression estimation involving
circular data, including the estimation of the mean regression function and
other conditional characteristics.")
    (license license:gpl2+)))

(define-public r-npcd
  (package
    (name "r-npcd")
    (version "1.0-11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPCD" version))
       (sha256
        (base32 "107i33z4q5w2828sm0pm8234kmp1v3a2w72lmhvi0rpnjhg0x120"))))
    (properties `((upstream-name . "NPCD")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-methodss3 r-bb))
    (home-page "https://cran.r-project.org/package=NPCD")
    (synopsis "Nonparametric Methods for Cognitive Diagnosis")
    (description
     "An array of nonparametric and parametric estimation methods for cognitive
diagnostic models, including nonparametric classification of examinee attribute
profiles, joint maximum likelihood estimation (JMLE) of examinee attribute
profiles and item parameters, and nonparametric refinement of the Q-matrix, as
well as conditional maximum likelihood estimation (CMLE) of examinee attribute
profiles given item parameters and CMLE of item parameters given examinee
attribute profiles.  Currently the nonparametric methods in the package support
both conjunctive and disjunctive models, and the parametric methods in the
package support the DINA model, the DINO model, the NIDA model, the G-NIDA
model, and the R-RUM model.")
    (license license:lgpl2.1+)))

(define-public r-npbr
  (package
    (name "r-npbr")
    (version "1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npbr" version))
       (sha256
        (base32 "1mvl16z4s517a87ljl1ksr1ixrz3c6v22hv36s6x60f9rcs96jj8"))))
    (properties `((upstream-name . "npbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rglpk r-quadprog r-np r-benchmarking))
    (home-page "https://cran.r-project.org/package=npbr")
    (synopsis "Nonparametric Boundary Regression")
    (description
     "This package provides a variety of functions for the best known and most
innovative approaches to nonparametric boundary estimation.  The selected
methods are concerned with empirical, smoothed, unrestricted as well as
constrained fits under both separate and multiple shape constraints.  They cover
robust approaches to outliers as well as data envelopment techniques based on
piecewise polynomials, splines, local linear fitting, extreme values and kernel
smoothing.  The package also seamlessly allows for Monte Carlo comparisons among
these different estimation methods.  Its use is illustrated via a number of
empirical applications and simulated examples.")
    (license license:gpl2+)))

(define-public r-npboottprm
  (package
    (name "r-npboottprm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "npboottprm" version))
       (sha256
        (base32 "0a2c846vhvpz8nc4f1ar91px275y9fs570v7k9pdny4dw0kq1zqh"))))
    (properties `((upstream-name . "npboottprm")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinythemes r-shiny r-ggplot2))
    (home-page "https://github.com/mightymetrika/npboottprm")
    (synopsis "Nonparametric Bootstrap Test with Pooled Resampling")
    (description
     "Addressing crucial research questions often necessitates a small sample size due
to factors such as distinctive target populations, rarity of the event under
study, time and cost constraints, ethical concerns, or group-level unit of
analysis.  Many readily available analytic methods, however, do not accommodate
small sample sizes, and the choice of the best method can be unclear.  The
npboottprm package enables the execution of nonparametric bootstrap tests with
pooled resampling to help fill this gap.  Grounded in the statistical methods
for small sample size studies detailed in Dwivedi, Mallawaarachchi, and Alvarado
(2017) <doi:10.1002/sim.7263>, the package facilitates a range of statistical
tests, encompassing independent t-tests, paired t-tests, and one-way Analysis of
Variance (ANOVA) F-tests.  The nonparboot() function undertakes essential
computations, yielding detailed outputs which include test statistics, effect
sizes, confidence intervals, and bootstrap distributions.  Further, npboottprm
incorporates an interactive shiny web application, nonparboot_app(), offering
intuitive, user-friendly data exploration.")
    (license license:expat)))

(define-public r-npbayesimputecat
  (package
    (name "r-npbayesimputecat")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NPBayesImputeCat" version))
       (sha256
        (base32 "05zwa7hhf8p1icgdvvla0r70fgvjm7s38gp69h7wgsq8yl6vd876"))))
    (properties `((upstream-name . "NPBayesImputeCat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-reshape2
                             r-rcpp
                             r-ggplot2
                             r-dplyr
                             r-bayesplot))
    (home-page "https://cran.r-project.org/package=NPBayesImputeCat")
    (synopsis
     "Non-Parametric Bayesian Multiple Imputation for Categorical Data")
    (description
     "These routines create multiple imputations of missing at random categorical
data, and create multiply imputed synthesis of categorical data, with or without
structural zeros.  Imputations and syntheses are based on Dirichlet process
mixtures of multinomial distributions, which is a non-parametric Bayesian
modeling approach that allows for flexible joint modeling, described in
Manrique-Vallier and Reiter (2014) <doi:10.1080/10618600.2013.844700>.")
    (license license:gpl3+)))

(define-public r-nparsurv
  (package
    (name "r-nparsurv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nparsurv" version))
       (sha256
        (base32 "1qy9qkkpqrk49vjxbyvl25i4kfk0py6v64izd8lmaw38dynybpy2"))))
    (properties `((upstream-name . "nparsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-th-data r-survival))
    (home-page "https://cran.r-project.org/package=nparsurv")
    (synopsis
     "Nonparametric Tests for Main Effects, Simple Effects and Interaction Effect in a Factorial Design with Censored Data")
    (description
     "Nonparametric Tests for Main Effects, Simple Effects and Interaction Effect with
Censored Data and Two Factorial Influencing Variables.")
    (license license:gpl2)))

(define-public r-nparmd
  (package
    (name "r-nparmd")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nparMD" version))
       (sha256
        (base32 "0wfmw1d4w8frbimq62749siy28bzci3h3lhsl5jx7zl7mxpl0q9a"))))
    (properties `((upstream-name . "nparMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats r-matrixcalc r-mass r-gtools
                             r-formula))
    (home-page "https://cran.r-project.org/package=nparMD")
    (synopsis
     "Nonparametric Analysis of Multivariate Data in Factorial Designs")
    (description
     "Analysis of multivariate data with two-way completely randomized factorial
design.  The analysis is based on fully nonparametric, rank-based methods and
uses test statistics based on the Dempster's ANOVA, Wilk's Lambda,
Lawley-Hotelling and Bartlett-Nanda-Pillai criteria.  The multivariate response
is allowed to be ordinal, quantitative, binary or a mixture of the different
variable types.  The package offers two functions performing the analysis, one
for small and the other for large sample sizes.  The underlying methodology is
largely described in Bathke and Harrar (2016) <doi:10.1007/978-3-319-39065-9_7>
and in Munzel and Brunner (2000) <doi:10.1016/S0378-3758(99)00212-8>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-nparld
  (package
    (name "r-nparld")
    (version "2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nparLD" version))
       (sha256
        (base32 "0c5iih0hy25kpg781sxmgq6x68g46ymsqjcg4lh3sff5bw5x08lk"))))
    (properties `((upstream-name . "nparLD")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=nparLD")
    (synopsis
     "Nonparametric Analysis of Longitudinal Data in Factorial Experiments")
    (description
     "This package performs nonparametric analysis of longitudinal data in factorial
experiments.  Longitudinal data are those which are collected from the same
subjects over time, and they frequently arise in biological sciences.
Nonparametric methods do not require distributional assumptions, and are
applicable to a variety of data types (continuous, discrete, purely ordinal, and
dichotomous).  Such methods are also robust with respect to outliers and for
small sample sizes.")
    (license license:gpl2+)))

(define-public r-nparcomp
  (package
    (name "r-nparcomp")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nparcomp" version))
       (sha256
        (base32 "1cs1idaylxdajb9vwpp6rkk56178i4c9nd0rxj8jbmdr56w4nrgq"))))
    (properties `((upstream-name . "nparcomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-multcomp))
    (home-page "https://cran.r-project.org/package=nparcomp")
    (synopsis "Multiple Comparisons and Simultaneous Confidence Intervals")
    (description
     "With this package, it is possible to compute nonparametric simultaneous
confidence intervals for relative contrast effects in the unbalanced one way
layout.  Moreover, it computes simultaneous p-values.  The simultaneous
confidence intervals can be computed using multivariate normal distribution,
multivariate t-distribution with a Satterthwaite Approximation of the degree of
freedom or using multivariate range preserving transformations with Logit or
Probit as transformation function.  2 sample comparisons can be performed with
the same methods described above.  There is no assumption on the underlying
distribution function, only that the data have to be at least ordinal numbers.
See Konietschke et al. (2015) <doi:10.18637/jss.v064.i09> for details.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nparact
  (package
    (name "r-nparact")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nparACT" version))
       (sha256
        (base32 "0zwhz52j526n3xd21s7kghjaby56a8g296bkkc6scaa23zn1xg4b"))))
    (properties `((upstream-name . "nparACT")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-stringr r-ggplot2))
    (home-page "https://www.r-project.org")
    (synopsis "Non-Parametric Measures of Actigraphy Data")
    (description
     "Computes interdaily stability (IS), intradaily variability (IV) & the relative
amplitude (RA) from actigraphy data as described in Blume et al. (2016) <doi:
10.1016/j.mex.2016.05.006> and van Someren et al. (1999) <doi:
10.3109/07420529908998724>.  Additionally, it also computes L5 (i.e.  the 5
hours with lowest average actigraphy amplitude) and M10 (the 10 hours with
highest average amplitude) as well as the respective start times.  The flex
versions will also compute the L-value for a user-defined number of minutes.  IS
describes the strength of coupling of a rhythm to supposedly stable zeitgebers.
It varies between 0 (Gaussian Noise) and 1 for perfect IS. IV describes the
fragmentation of a rhythm, i.e.  the frequency and extent of transitions between
rest and activity.  It is near 0 for a perfect sine wave, about 2 for Gaussian
noise and may be even higher when a definite ultradian period of about 2 hrs is
present.  RA is the relative amplitude of a rhythm.  Note that to obtain
reliable results, actigraphy data should cover a reasonable number of days.")
    (license license:gpl2)))

(define-public r-nozzle-r1
  (package
    (name "r-nozzle-r1")
    (version "1.1-1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Nozzle.R1" version))
       (sha256
        (base32 "0fanf7cl8dlb8iqw8ww03dd5s6mrpr97m2c511clqkaavbd0yzkp"))))
    (properties `((upstream-name . "Nozzle.R1")))
    (build-system r-build-system)
    (native-inputs (list esbuild))
    (home-page "http://github.com/parklab/nozzle")
    (synopsis "Nozzle Reports")
    (description
     "The Nozzle package provides an API to generate HTML reports with dynamic user
interface elements based on @code{JavaScript} and CSS (Cascading Style Sheets).
Nozzle was designed to facilitate summarization and rapid browsing of complex
results in data analysis pipelines where multiple analyses are performed
frequently on big data sets.  The package can be applied to any project where
user-friendly reports need to be created.")
    (license license:lgpl2.0)))

(define-public r-noweb
  (package
    (name "r-noweb")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noweb" version))
       (sha256
        (base32 "1h0v92l5jzgiy5rz33pan1l6rb3mykckmvn5c8jm3hhph6ipgqad"))))
    (properties `((upstream-name . "noweb")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=noweb")
    (synopsis "The 'noweb' System for R")
    (description "The noweb system for source code, implemented in R.")
    (license license:lgpl2.0)))

(define-public r-novelqualcodes
  (package
    (name "r-novelqualcodes")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "novelqualcodes" version))
       (sha256
        (base32 "0mgmjd7zrknnsg8a4kjkdk98pnm0z1k73mim40ivb1qfp0pxmn0g"))))
    (properties `((upstream-name . "novelqualcodes")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-naturalsort r-ggplot2 r-ggpattern))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DesiQuintans/novelqualcodes")
    (synopsis
     "Visualise the Path to a Stopping Point in Qualitative Interviews Based on Novel Codes")
    (description
     "In semi-structured interviews that use the framework method, it is not always
clear how refinements to interview questions affect the decision of when to stop
interviews.  The trend of novel and duplicate interview codes (novel codes are
information that other interviewees have not previously mentioned) provides
insight into the richness of qualitative information.  This package provides
tools to visualise when refinements occur and how that affects the trends of
novel and duplicate codes.  These visualisations, when used progressively as new
interviews are finished, can help the researcher to decide on a stopping point
for their interviews.")
    (license license:expat)))

(define-public r-novelforestsg
  (package
    (name "r-novelforestsg")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "novelforestSG" version))
       (sha256
        (base32 "0mpf645gimahn1sayminas2fam839s8v05g8qkxjywr4gdq5wflz"))))
    (properties `((upstream-name . "novelforestSG")))
    (build-system r-build-system)
    (home-page "https://hrlai.github.io/novelforestSG/")
    (synopsis "Dataset from the Novel Forests of Singapore")
    (description
     "The raw dataset and model used in Lai et al. (2021) Decoupled responses of
native and exotic tree diversities to distance from old-growth forest and soil
phosphorous in novel secondary forests.  Applied Vegetation Science, 24, e12548.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-noveldistns
  (package
    (name "r-noveldistns")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NovelDistns" version))
       (sha256
        (base32 "073969vk2vg58fx5h0v92m3zb1rdzlvv809vyahy3gxrj9n13lmh"))))
    (properties `((upstream-name . "NovelDistns")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-gsl r-adequacymodel))
    (home-page "https://cran.r-project.org/package=NovelDistns")
    (synopsis
     "Computes PDF, CDF, Quantile, Random Numbers and Measures of Inference for 3 General Families of Distributions")
    (description
     "Computes the probability density function, the cumulative density function,
quantile function, random numbers and measures of inference for the following
families exponentiated generalized gull alpha power family, exponentiated gull
alpha powerfamily, gull alpha power family.")
    (license license:expat)))

(define-public r-notifyme
  (package
    (name "r-notifyme")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "notifyme" version))
       (sha256
        (base32 "0b6xrv6c4id7rs0dafg96pl4brn4yma5xh9wjz78ql44bg3w5s91"))))
    (properties `((upstream-name . "notifyme")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-httr r-dplyr))
    (home-page "https://github.com/epijim/notifyme")
    (synopsis "Send Alerts to your Cellphone and Phillips Hue Lights")
    (description
     "This package provides functions to flash your hue lights, or text yourself, from
R. Designed to be used with long running scripts.")
    (license license:gpl2+)))

(define-public r-notebookutils
  (package
    (name "r-notebookutils")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "notebookutils" version))
       (sha256
        (base32 "0f1vwc4y91k3yxsbbr7c47z3gwr3zk9dlyp3xx2ggrk4nnqhlafb"))))
    (properties `((upstream-name . "notebookutils")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=notebookutils")
    (synopsis
     "Dummy R APIs Used in 'Azure Synapse Analytics' for Local Developments")
    (description
     "This is a pure dummy interfaces package which mirrors @code{MsSparkUtils} APIs
<https://learn.microsoft.com/en-us/azure/synapse-analytics/spark/microsoft-spark-utilities?pivots=programming-language-r>
of Azure Synapse Analytics
<https://learn.microsoft.com/en-us/azure/synapse-analytics/> for R users,
customer of Azure Synapse can download this package from CRAN for local
development.")
    (license license:expat)))

(define-public r-not
  (package
    (name "r-not")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "not" version))
       (sha256
        (base32 "0g40500h2cwimzf7w3zqas924i4cvxddmqv0ysqrm4r7y2dpv48i"))))
    (properties `((upstream-name . "not")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=not")
    (synopsis "Narrowest-Over-Threshold Change-Point Detection")
    (description
     "This package provides efficient implementation of the Narrowest-Over-Threshold
methodology for detecting an unknown number of change-points occurring at
unknown locations in one-dimensional data following deterministic signal + noise
model.  Currently implemented scenarios are: piecewise-constant signal,
piecewise-constant signal with a heavy-tailed noise, piecewise-linear signal,
piecewise-quadratic signal, piecewise-constant signal and with
piecewise-constant variance of the noise.  For details, see Baranowski, Chen and
Fryzlewicz (2019) <doi:10.1111/rssb.12322>.")
    (license license:gpl2)))

(define-public r-nostalgir
  (package
    (name "r-nostalgir")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NostalgiR" version))
       (sha256
        (base32 "0rpvwi815sdhaxqpji1y6g0vy8mkn5k6wci0a4jf54pkywwkwrwp"))))
    (properties `((upstream-name . "NostalgiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-txtplot))
    (home-page "https://cran.r-project.org/package=NostalgiR")
    (synopsis "Advanced Text-Based Plots")
    (description
     "This package provides functions to produce advanced ascii graphics, directly to
the terminal window.  This package utilizes the txtplot() function from the
txtplot package, to produce text-based histograms, empirical cumulative
distribution function plots, scatterplots with fitted and regression lines,
quantile plots, density plots, image plots, and contour plots.")
    (license license:lgpl3)))

(define-public r-nosoi
  (package
    (name "r-nosoi")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nosoi" version))
       (sha256
        (base32 "1b7csrgax5ig9ibiwbhh2cl357hvdc6my4408vld498c8jjf0lyw"))))
    (properties `((upstream-name . "nosoi")))
    (build-system r-build-system)
    (propagated-inputs (list r-raster r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/slequime/nosoi")
    (synopsis "Forward Agent-Based Transmission Chain Simulator")
    (description
     "The aim of nosoi (pronounced no.si) is to provide a flexible agent-based
stochastic transmission chain/epidemic simulator (Lequime et al.  Methods in
Ecology and Evolution 11:1002-1007).  It is named after the daimones of plague,
sickness and disease that escaped Pandora's jar in the Greek mythology.  nosoi
is able to take into account the influence of multiple variable on the
transmission process (e.g. dual-host systems (such as arboviruses), within-host
viral dynamics, transportation, population structure), alone or taken together,
to create complex but relatively intuitive epidemiological simulations.")
    (license license:gpl3)))

(define-public r-nose
  (package
    (name "r-nose")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nose" version))
       (sha256
        (base32 "17l78vmfqc22inq6zaqpnk2m91wp0nfjbbwfcpfqykf8lk9ipqna"))))
    (properties `((upstream-name . "nose")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nose")
    (synopsis "nose Package for R")
    (description
     "The nose package consists of a collection of three functions for classifying
sparseness in typical 2 x 2 data sets with at least one cell should have zero
count.  These functions are based on the three widely applied summary measures
for 2 x 2 categorical data viz, Risk Difference (RD), Relative Risk (RR), Odds
Ratio (OR).  This package helps to identify suitable continuity correction for
zero cells when a multi centre analysis or a meta analysis is carried out.
Further, it can be considered as a tool for sensitivity analysis for adding a
continuity correction and to identify the presence of Simpson's paradox.")
    (license license:gpl2)))

(define-public r-nortstest
  (package
    (name "r-nortstest")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nortsTest" version))
       (sha256
        (base32 "0wn4xljczy4z9j95mxisi7gyn2j262zzhp2skz4wj8c5kxj1pc6g"))))
    (properties `((upstream-name . "nortsTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-uroot
                             r-tseries
                             r-nortest
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-forecast))
    (home-page "https://github.com/asael697/nortsTest")
    (synopsis "Assessing Normality of Stationary Process")
    (description
     "Despite that several tests for normality in stationary processes have been
proposed in the literature, consistent implementations of these tests in
programming languages are limited.  Four normality test are implemented.  The
Lobato and Velasco's, Epps, Psaradakis and Vavra, and the random projections
tests for stationary process.  Some other diagnostics such as, unit root test
for stationarity, seasonal tests for seasonality, and arch effect test for
volatility; are also performed.  The package also offers residual diagnostic for
linear time series models developed in several packages.")
    (license license:gpl2)))

(define-public r-nortestarma
  (package
    (name "r-nortestarma")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nortestARMA" version))
       (sha256
        (base32 "11ala9z0snsbn1xmj9yzs4kyh9js1w19x0dnnmh5cbr9bi7aag50"))))
    (properties `((upstream-name . "nortestARMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-astsa))
    (home-page "https://cran.r-project.org/package=nortestARMA")
    (synopsis "Neyman Smooth Tests of Normality for the Errors of ARMA Models")
    (description
     "Tests the goodness-of-fit to the Normal distribution for the errors of an ARMA
model.")
    (license license:gpl3+)))

(define-public r-normpsy
  (package
    (name "r-normpsy")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NormPsy" version))
       (sha256
        (base32 "13w4xjdjjg9mzmfaflc0gp306kazyvxshpj4vnl6gym3vpi9qax8"))))
    (properties `((upstream-name . "NormPsy")))
    (build-system r-build-system)
    (propagated-inputs (list r-lcmm))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=NormPsy")
    (synopsis "Normalisation of Psychometric Tests")
    (description
     "This package provides functions for normalizing psychometric test scores.  The
normalization aims at correcting the metrological properties of the psychometric
tests such as the ceiling and floor effects and the curvilinearity (unequal
interval scaling).  Functions to compute and plot predictions in the natural
scale of the psychometric test from the estimates of a linear mixed model
estimated on the normalized scores are also provided.  See Philipps et al (2014)
<doi:10.1159/000365637> for details.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-normfluodbf
  (package
    (name "r-normfluodbf")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "normfluodbf" version))
       (sha256
        (base32 "0slmkqpqi3c3mrjd0ybg2bij1cgrn03ixs6mizjq048r3qbxgipq"))))
    (properties `((upstream-name . "normfluodbf")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-foreign r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AlphaPrime7/normfluodbf")
    (synopsis "Cleans and Normalizes 'FLUOstar' 'DBF' Files")
    (description
     "Converts a FLUOstar DBF File into a Normalized Data Frame, Ready for Analysis.")
    (license license:expat)))

(define-public r-normexpression
  (package
    (name "r-normexpression")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NormExpression" version))
       (sha256
        (base32 "1j4q8mb70ig40acfd9kfy12vxdvq3qpf53rxh47kkw8mywnd0449"))))
    (properties `((upstream-name . "NormExpression")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NormExpression")
    (synopsis "Normalize Gene Expression Data using Evaluated Methods")
    (description
     "It provides a framework and a fast and simple way for researchers to evaluate
methods (particularly some data-driven methods or their own methods) and then
select a best one for data normalization in the gene expression analysis, based
on the consistency of metrics and the consistency of datasets.  Zhenfeng Wu,
Weixiang Liu, Xiufeng Jin, Deshui Yu, Hua Wang, Gustavo Glusman, Max Robinson,
Lin Liu, Jishou Ruan and Shan Gao (2018) <doi:10.1101/251140>.")
    (license license:artistic2.0)))

(define-public r-normdata
  (package
    (name "r-normdata")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NormData" version))
       (sha256
        (base32 "122l1v4kmgbamix2gdbz2zdv4ng7zba05rxh1j4z0ffficmax4nq"))))
    (properties `((upstream-name . "NormData")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-openxlsx
                             r-mass
                             r-lmtest
                             r-dplyr
                             r-doby
                             r-car))
    (home-page "https://cran.r-project.org/package=NormData")
    (synopsis "Derivation of Regression-Based Normative Data")
    (description
     "Normative data are often used to estimate the relative position of a raw test
score in the population.  This package allows for deriving regression-based
normative data.  It includes functions that enable the fitting of regression
models for the mean and residual (or variance) structures, test the model
assumptions, derive the normative data in the form of normative tables or
automatic scoring sheets, and estimate confidence intervals for the norms.")
    (license license:gpl2+)))

(define-public r-normalr
  (package
    (name "r-normalr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "normalr" version))
       (sha256
        (base32 "1ahrg188vbhnrnwag0zi6lcb3g0y1mbz06sl3j1wyllq5l918cc7"))))
    (properties `((upstream-name . "normalr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rlang r-purrr r-mass r-magrittr))
    (home-page "https://github.com/kcha193/normalr")
    (synopsis "Normalisation of Multiple Variables in Large-Scale Datasets")
    (description
     "The robustness of many of the statistical techniques, such as factor analysis,
applied in the social sciences rests upon the assumption of item-level
normality.  However, when dealing with real data, these assumptions are often
not met.  The Box-Cox transformation (Box & Cox, 1964)
<http://www.jstor.org/stable/2984418> provides an optimal transformation for
non-normal variables.  Yet, for large datasets of continuous variables, its
application in current software programs is cumbersome with analysts having to
take several steps to normalise each variable.  We present an R package normalr
that enables researchers to make convenient optimal transformations of multiple
variables in datasets.  This R package enables users to quickly and accurately:
(1) anchor all of their variables at 1.00, (2) select the desired precision with
which the optimal lambda is estimated, (3) apply each unique exponent to its
variable, (4) rescale resultant values to within their original X1 and X(n)
ranges, and (5) provide original and transformed estimates of skewness,
kurtosis, and other inferential assessments of normality.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-normalp
  (package
    (name "r-normalp")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "normalp" version))
       (sha256
        (base32 "0fqpz6v9v3xjmyh7mh2yvkjdn3v4d0nk93x7s0gj28kazl7137kz"))))
    (properties `((upstream-name . "normalp")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis "Routines for Exponential Power Distribution")
    (description
     "This package provides a collection of utilities referred to Exponential Power
distribution, also known as General Error Distribution (see Mineo, A.M. and
Ruggieri, M. (2005), A software Tool for the Exponential Power Distribution: The
normalp package.  In Journal of Statistical Software, Vol.  12, Issue 4).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-normallaplace
  (package
    (name "r-normallaplace")
    (version "0.3-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NormalLaplace" version))
       (sha256
        (base32 "0njgjdx2yvvy5jb5zn6zr7jdz5hck5bbkicv15z4ai4ibmckqjmh"))))
    (properties `((upstream-name . "NormalLaplace")))
    (build-system r-build-system)
    (propagated-inputs (list r-generalizedhyperbolic r-distributionutils))
    (home-page "https://cran.r-project.org/package=NormalLaplace")
    (synopsis "The Normal Laplace Distribution")
    (description
     "This package provides functions for the normal Laplace distribution.  The
package is under development and provides only limited functionality.  Density,
distribution and quantile functions, random number generation, and moments are
provided.")
    (license license:gpl2+)))

(define-public r-normalizeh
  (package
    (name "r-normalizeh")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "normalizeH" version))
       (sha256
        (base32 "19lychfrv57yk245rzais4hx17csz1s6wm5vk6p7ypr6h9slf2cq"))))
    (properties `((upstream-name . "normalizeH")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=normalizeH")
    (synopsis "Normalize Hadamard Matrix")
    (description
     "Normalize a given Hadamard matrix.  A Hadamard matrix is said to be normalized
when its first row and first column entries are all 1, see Hedayat, A. and
Wallis, W. D. (1978) \"Hadamard matrices and their applications.  The Annals of
Statistics, 1184-1238.\" <doi:10.1214/aos/1176344370>.")
    (license license:gpl2+)))

(define-public r-normalityassessment
  (package
    (name "r-normalityassessment")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NormalityAssessment" version))
       (sha256
        (base32 "0r9a51z614si3b45g01lfgapmgc4smjf2hylgy5kvq8w0yh0w5y6"))))
    (properties `((upstream-name . "NormalityAssessment")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-shinybs
                             r-shinyalert
                             r-shiny
                             r-rmatio
                             r-rio
                             r-ggplot2
                             r-dt
                             r-dplyr))
    (home-page "https://github.com/ccasement/NormalityAssessment")
    (synopsis "Graphical User Interface for Testing Normality Visually")
    (description
     "Package including an interactive Shiny application for testing normality
visually.")
    (license license:expat)))

(define-public r-norma
  (package
    (name "r-norma")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NORMA" version))
       (sha256
        (base32 "193q6dwn8v7k8xq0amjpvb3v6mn7c6agqa487gvjj78dy1qz720a"))))
    (properties `((upstream-name . "NORMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve))
    (home-page "http://link.springer.com/chapter/10.1007/978-3-319-19222-2_47")
    (synopsis "Builds General Noise SVRs")
    (description
     "Builds general noise SVR models using Naive Online R Minimization Algorithm,
NORMA, an optimization method based on classical stochastic gradient descent
suitable for computing SVR models in an online setting.")
    (license license:gpl2)))

(define-public r-norgeo
  (package
    (name "r-norgeo")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "norgeo" version))
       (sha256
        (base32 "1437b49ig7j5c3ympb8mjn0qz43szpmwqd3s8rlqmlfhycnh9maw"))))
    (properties `((upstream-name . "norgeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-rsqlite
                             r-odbc
                             r-magrittr
                             r-httr2
                             r-dbi
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/helseprofil/norgeo")
    (synopsis "Tracking Geo Code Change of Regional Granularity in Norway")
    (description
     "Regional granularity levels in Norway which are depicted by different codes,
have undergone several changes over the years.  Identifying when codes have
changed and how many changes have taken place can be troublesome.  This package
will help to identify these changes and when the changes have taken place.  One
of the limitation of this package is that it is heavily depending on the codes
available from SSB website <https://data.ssb.no/api/klass/v1/api-guide.html>.")
    (license license:expat)))

(define-public r-nordklimdata1
  (package
    (name "r-nordklimdata1")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nordklimdata1" version))
       (sha256
        (base32 "0c2hbh3qy8nrs275lxpzfgqsfgwp81m4kv0layvnjj09fcybm54x"))))
    (properties `((upstream-name . "nordklimdata1")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nordklimdata1")
    (synopsis "Dataset for Climate Analysis with Data from the Nordic Region")
    (description
     "The Nordklim dataset 1.0 is a unique and useful achievement for climate
analysis.  It includes observations of twelve different climate elements from
more than 100 stations in the Nordic region, in time span over 100 years.  The
project contractors were NORDKLIM/NORDMET on behalf of the National
meteorological services in Denmark (DMI), Finland (FMI), Iceland (VI), Norway
(DNMI) and Sweden (SMHI).")
    (license license:gpl3+)))

(define-public r-nord
  (package
    (name "r-nord")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nord" version))
       (sha256
        (base32 "1gisqca85vzbqq5hs5bgqjgrjyksxj176x97kv9vv6mwll8kijl9"))))
    (properties `((upstream-name . "nord")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=nord")
    (synopsis
     "Arctic Ice Studio's Nord and Group of Seven Inspired Colour Palettes for 'ggplot2'")
    (description
     "This package provides the Arctic Ice Studio's Nord and Group of Seven inspired
colour palettes for use with ggplot2 via custom functions.")
    (license license:expat)))

(define-public r-nopp
  (package
    (name "r-nopp")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nopp" version))
       (sha256
        (base32 "1kcgwhwj02bivqqd86l9gk3gqiws9c4kjcsjmd0arcfd1bcygbj2"))))
    (properties `((upstream-name . "nopp")))
    (build-system r-build-system)
    (propagated-inputs (list r-mlogit r-mass))
    (home-page "https://cran.r-project.org/package=nopp")
    (synopsis "Nash Optimal Party Positions")
    (description
     "Estimation of party/candidate ideological positions that correspond to a Nash
equilibrium along a one-dimensional space.")
    (license license:gpl2+)))

(define-public r-nopaco
  (package
    (name "r-nopaco")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nopaco" version))
       (sha256
        (base32 "0ffcbrk3l2xprd4jiilvk6i5l39x4mi7vrx4irzqnf3m9nwsz6w5"))))
    (properties `((upstream-name . "nopaco")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=nopaco")
    (synopsis "Non-Parametric Concordance Coefficient")
    (description
     "This package provides a non-parametric test for multi-observer concordance and
differences between concordances in (un)balanced data.")
    (license license:gpl3+)))

(define-public r-nonprobest
  (package
    (name "r-nonprobest")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NonProbEst" version))
       (sha256
        (base32 "1w2ihnwwdnxlnphyd26261lsxaknpi51c15rmn9m183djz9gsvdv"))))
    (properties `((upstream-name . "NonProbEst")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampling r-matrix r-glmnet r-e1071 r-caret))
    (home-page "https://cran.r-project.org/package=NonProbEst")
    (synopsis "Estimation in Nonprobability Sampling")
    (description
     "Different inference procedures are proposed in the literature to correct for
selection bias that might be introduced with non-random selection mechanisms.  A
class of methods to correct for selection bias is to apply a statistical model
to predict the units not in the sample (super-population modeling).  Other
studies use calibration or Statistical Matching (statistically match
nonprobability and probability samples).  To date, the more relevant methods are
weighting by Propensity Score Adjustment (PSA).  The Propensity Score Adjustment
method was originally developed to construct weights by estimating response
probabilities and using them in HorvitzâThompson type estimators.  This method
is usually used by combining a non-probability sample with a reference sample to
construct propensity models for the non-probability sample.  Calibration can be
used in a posterior way to adding information of auxiliary variables.
Propensity scores in PSA are usually estimated using logistic regression models.
 Machine learning classification algorithms can be used as alternatives for
logistic regression as a technique to estimate propensities.  The package
@code{NonProbEst} implements some of these methods and thus provides a wide
options to work with data coming from a non-probabilistic sample.")
    (license license:gpl2+)))

(define-public r-nonparrolcor
  (package
    (name "r-nonparrolcor")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NonParRolCor" version))
       (sha256
        (base32 "1rh345vydbg31pbkagyb2xmsy8riam9zj7sc86m6dqvl19lglvg5"))))
    (properties `((upstream-name . "NonParRolCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-pracma
                             r-gtools
                             r-foreach
                             r-doparallel
                             r-colorspace))
    (home-page "https://cran.r-project.org/package=NonParRolCor")
    (synopsis
     "a Non-Parametric Statistical Significance Test for Rolling Window Correlation")
    (description
     "Estimates and plots (as a single plot and as a heat map) the rolling window
correlation coefficients between two time series and computes their statistical
significance, which is carried out through a non-parametric computing-intensive
method.  This method addresses the effects due to the multiple testing
(inflation of the Type I error) when the statistical significance is estimated
for the rolling window correlation coefficients.  The method is based on Monte
Carlo simulations by permuting one of the variables (e.g., the dependent) under
analysis and keeping fixed the other variable (e.g., the independent).  We
improve the computational efficiency of this method to reduce the computation
time through parallel computing.  The @code{NonParRolCor} package also provides
examples with synthetic and real-life environmental time series to exemplify its
use.  Methods derived from R. Telford (2013)
<https://quantpalaeo.wordpress.com/2013/01/04/> and J.M. Polanco-Martinez and
J.L. Lopez-Martinez (2021) <doi:10.1016/j.ecoinf.2021.101379>.")
    (license license:gpl2+)))

(define-public r-nonpareil
  (package
    (name "r-nonpareil")
    (version "3.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Nonpareil" version))
       (sha256
        (base32 "130aags0pgry0d34mj1n4lavc8q43hls7c3jhmkr8k6vyg3ij372"))))
    (properties `((upstream-name . "Nonpareil")))
    (build-system r-build-system)
    (home-page "http://enve-omics.ce.gatech.edu/nonpareil/")
    (synopsis "Metagenome Coverage Estimation and Projections for 'Nonpareil'")
    (description "Plot, process, and analyze NPO files produced by Nonpareil
<http://enve-omics.ce.gatech.edu/nonpareil/>.")
    (license license:artistic2.0)))

(define-public r-nonparametric-bayes
  (package
    (name "r-nonparametric-bayes")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonparametric.bayes" version))
       (sha256
        (base32 "1acrjh0fcr15b9k2hpg0ihfav0w2lzjdpjyayz3f4hx596j32vi8"))))
    (properties `((upstream-name . "nonparametric.bayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-progress r-mvtnorm))
    (home-page "https://cran.r-project.org/package=nonparametric.bayes")
    (synopsis "Project Code - Nonparametric Bayes")
    (description
     "Basic implementation of a Gibbs sampler for a Chinese Restaurant Process along
with some visual aids to help understand how the sampling works.  This is
developed as part of a postgraduate school project for an Advanced Bayesian
Nonparametric course.  It is inspired by Tamara Broderick's presentation on
Nonparametric Bayesian statistics given at the Simons institute.")
    (license license:expat)))

(define-public r-nonparaeff
  (package
    (name "r-nonparaeff")
    (version "0.5-13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonparaeff" version))
       (sha256
        (base32 "04ya0b4nwfcyw7asby8j5npa59p8w8ri3cifpigvqmdg47v9kzmc"))))
    (properties `((upstream-name . "nonparaeff")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve r-hmisc r-geometry))
    (home-page "https://www.r-project.org")
    (synopsis
     "Nonparametric Methods for Measuring Efficiency and Productivity")
    (description
     "Efficiency and productivity indices are measured using this package.  This
package contains functions for measuring efficiency and productivity of decision
making units (DMUs) under the framework of Data Envelopment Analysis (DEA) and
its variations.")
    (license license:gpl2+)))

(define-public r-nonpar
  (package
    (name "r-nonpar")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonpar" version))
       (sha256
        (base32 "0gflldd3kjbpdlvbwi073igj6shcqr9g5x6zcp5gfa12404qpflq"))))
    (properties `((upstream-name . "nonpar")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nonpar")
    (synopsis "Collection of Nonparametric Hypothesis Tests")
    (description
     "This package contains the following 5 nonparametric hypothesis tests: The Sign
Test, The 2 Sample Median Test, Miller's Jackknife Procedure, Cochran's Q Test,
& The Stuart-Maxwell Test.")
    (license license:gpl3)))

(define-public r-nonnormvtdist
  (package
    (name "r-nonnormvtdist")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NonNorMvtDist" version))
       (sha256
        (base32 "11xqdrx03q3anavyxpzb0hz6mcbdy252rzzjlpa2byfdlrfvn178"))))
    (properties `((upstream-name . "NonNorMvtDist")))
    (build-system r-build-system)
    (propagated-inputs (list r-cubature))
    (home-page "https://cran.r-project.org/package=NonNorMvtDist")
    (synopsis
     "Multivariate Lomax (Pareto Type II) and Its Related Distributions")
    (description
     "This package implements calculation of probability density function, cumulative
distribution function, equicoordinate quantile function and survival function,
and random numbers generation for the following multivariate distributions:
Lomax (Pareto Type II), generalized Lomax, Mardiaâs Pareto of Type I,
Logistic, Burr, Cook-Johnsonâs uniform, F and Inverted Beta.  See Tapan Nayak
(1987) <doi:10.2307/3214068>.")
    (license license:gpl3)))

(define-public r-nonneg-cg
  (package
    (name "r-nonneg-cg")
    (version "0.1.6-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonneg.cg" version))
       (sha256
        (base32 "1ppwv5yad8v7qhjr4z5p5vl51ry3sxqbmg0ynkx11j67byggn6xf"))))
    (properties `((upstream-name . "nonneg.cg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/david-cortes/nonneg_cg")
    (synopsis "Non-Negative Conjugate-Gradient Minimizer")
    (description
     "Minimize a differentiable function subject to all the variables being
non-negative (i.e. >= 0), using a Conjugate-Gradient algorithm based on a
modified Polak-Ribiere-Polyak formula as described in (Li, Can, 2013,
<https://www.hindawi.com/journals/jam/2013/986317/abs/>).")
    (license license:bsd-2)))

(define-public r-nonmemica
  (package
    (name "r-nonmemica")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonmemica" version))
       (sha256
        (base32 "000pjp7zk3pw7xhg0w8363b1q52l6ikqjpvdxjd1kb61y99bi6m2"))))
    (properties `((upstream-name . "nonmemica")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-spec
                             r-rlang
                             r-metaplot
                             r-magrittr
                             r-lazyeval
                             r-encode
                             r-dplyr
                             r-csv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nonmemica")
    (synopsis "Create and Evaluate NONMEM Models in a Project Context")
    (description
     "Systematically creates and modifies NONMEM(R) control streams.  Harvests NONMEM
output, builds run logs, creates derivative data, generates diagnostics.  NONMEM
(ICON Development Solutions <https://www.iconplc.com/>) is software for
nonlinear mixed effects modeling.  See package?nonmemica'.")
    (license license:gpl3)))

(define-public r-nonmem2rx
  (package
    (name "r-nonmem2rx")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonmem2rx" version))
       (sha256
        (base32 "0z4mx08ajnqsq6lqhkvskxsiskpm05c5095mc874774s04qzs8by"))))
    (properties `((upstream-name . "nonmem2rx")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-rxode2parse
                             r-rxode2
                             r-rcpp
                             r-qs
                             r-magrittr
                             r-lotri
                             r-ggplot2
                             r-ggforce
                             r-dparser
                             r-digest
                             r-data-table
                             r-crayon
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://nlmixr2.github.io/nonmem2rx/")
    (synopsis "'nonmem2rx' Converts 'NONMEM' Models to 'rxode2'")
    (description
     "NONMEM has been a tool for running nonlinear mixed effects models since the 80s
and is still used today (Bauer 2019 <doi:10.1002/psp4.12404>).  This tool allows
you to convert NONMEM models to rxode2 (Wang, Hallow and James (2016)
<doi:10.1002/psp4.12052>) and with simple models nlmixr2 syntax (Fidler et al
(2019) <doi:10.1002/psp4.12445>).  The nlmixr2 syntax requires the residual
specification to be included and it is not always translated.  If available, the
rxode2 model will read in the NONMEM data and compare the simulation for the
population model ('PRED') individual model ('IPRED') and residual model
('IWRES') to immediately show how well the translation is performing.  This
saves the model development time for people who are creating an rxode2 model
manually.  Additionally, this package reads in all the information to allow
simulation with uncertainty (that is the number of observations, the number of
subjects, and the covariance matrix) with a rxode2 model.  This is complementary
to the babelmixr2 package that translates nlmixr2 models to NONMEM and can
convert the objects converted from nonmem2rx to a full nlmixr2 fit.")
    (license license:gpl3+)))

(define-public r-nonmem2r
  (package
    (name "r-nonmem2r")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonmem2R" version))
       (sha256
        (base32 "1lnm2mniccpsk30njmi0b18aizblg5wadm3k2kdviyxi8j2735rw"))))
    (properties `((upstream-name . "nonmem2R")))
    (build-system r-build-system)
    (propagated-inputs (list r-splines2
                             r-reshape2
                             r-mvtnorm
                             r-mass
                             r-latticeextra
                             r-lattice
                             r-gridextra
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nonmem2R")
    (synopsis
     "Loading NONMEM Output Files with Functions for Visual Predictive Checks (VPC) and Goodness of Fit (GOF) Plots")
    (description
     "Loading NONMEM (NONlinear Mixed-Effect Modeling,
<https://www.iconplc.com/innovation/nonmem/>) and PSN (Perl-speaks-NONMEM,
<https://uupharmacometrics.github.io/@code{PsN/>}) output files to extract
parameter estimates, provide visual predictive check (VPC) and goodness of fit
(GOF) plots, and simulate with parameter uncertainty.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-nonlineartseries
  (package
    (name "r-nonlineartseries")
    (version "0.2.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonlinearTseries" version))
       (sha256
        (base32 "0fdyr7a5pac40wrrn6frj0q8pn03dic5a2rls3zr85yj48mimyfs"))))
    (properties `((upstream-name . "nonlinearTseries")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tseries
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-lifecycle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/constantino-garcia/nonlinearTseries")
    (synopsis "Nonlinear Time Series Analysis")
    (description
     "This package provides functions for nonlinear time series analysis.  This
package permits the computation of the most-used nonlinear statistics/algorithms
including generalized correlation dimension, information dimension, largest
Lyapunov exponent, sample entropy and Recurrence Quantification Analysis (RQA),
among others.  Basic routines for surrogate data testing are also included.
Part of this work was based on the book \"Nonlinear time series analysis\" by
Holger Kantz and Thomas Schreiber (ISBN: 9780521529020).")
    (license license:gpl3)))

(define-public r-nonlineartsa
  (package
    (name "r-nonlineartsa")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NonlinearTSA" version))
       (sha256
        (base32 "1z3fqw19kksadc31f1idrj37gzajrx91pprd07xdar7j6hddf4sn"))))
    (properties `((upstream-name . "NonlinearTSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsdyn r-minpack-lm r-car))
    (home-page "https://cran.r-project.org/package=NonlinearTSA")
    (synopsis "Nonlinear Time Series Analysis")
    (description
     "Function and data sets in the book entitled \"Nonlinear Time Series Analysis with
R Applications\" B.Guris (2020).  The book will be published in Turkish and the
original name of this book will be \"R Uygulamali Dogrusal Olmayan Zaman Serileri
Analizi\".  It is possible to perform nonlinearity tests, nonlinear unit root
tests, nonlinear cointegration tests and estimate nonlinear error correction
models by using the functions written in this package.  The Momentum Threshold
Autoregressive (MTAR), the Smooth Threshold Autoregressive (STAR) and the Self
Exciting Threshold Autoregressive (SETAR) type unit root tests can be performed
using the functions written.  In addition, cointegration tests using the
Momentum Threshold Autoregressive (MTAR), the Smooth Threshold Autoregressive
(STAR) and the Self Exciting Threshold Autoregressive (SETAR) models can be
applied.  It is possible to estimate nonlinear error correction models.  The
Granger causality test performed using nonlinear models can also be applied.")
    (license license:gpl2+)))

(define-public r-nonlinearicp
  (package
    (name "r-nonlinearicp")
    (version "0.1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonlinearICP" version))
       (sha256
        (base32 "1m9a1f0yrbjl0nx2l7r76pyi78b2bxj8v4jx92yga91f975mw6np"))))
    (properties `((upstream-name . "nonlinearICP")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-data-tree r-condindtests
                             r-catools))
    (home-page
     "https://github.com/christinaheinze/nonlinearICP-and-CondIndTests")
    (synopsis "Invariant Causal Prediction for Nonlinear Models")
    (description
     "This package performs nonlinear Invariant Causal Prediction to estimate the
causal parents of a given target variable from data collected in different
experimental or environmental conditions, extending Invariant Causal Prediction
from Peters, Buehlmann and Meinshausen (2016), <@code{arXiv:1501.01332>}, to
nonlinear settings.  For more details, see C. Heinze-Deml, J. Peters and N.
Meinshausen: Invariant Causal Prediction for Nonlinear Models',
<@code{arXiv:1706.08576>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nonlineardotplot
  (package
    (name "r-nonlineardotplot")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonLinearDotPlot" version))
       (sha256
        (base32 "073qgada7bqz8jnpac4f3qb9iwsaiyb5m5y0fjgvyrjnjij29zxk"))))
    (properties `((upstream-name . "nonLinearDotPlot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nonLinearDotPlot")
    (synopsis "Non Linear Dot Plots")
    (description
     "Non linear dot plots are diagrams that allow dots of varying size to be
constructed, so that columns with a large number of samples are reduced in
height.  Implementation of algorithm described in: Nils Rodrigues and Daniel
Weiskopf, \"Nonlinear Dot Plots\", IEEE Transactions on Visualization and Computer
Graphics, vol.  24, no.  1, pp.  616-625, 2018. <doi:10.1109/TVCG.2017.2744018>.")
    (license license:expat)))

(define-public r-nonet
  (package
    (name "r-nonet")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nonet" version))
       (sha256
        (base32 "1043vplj8libbzll172h82dfwnz2lsdba5na2g9liryg8p08h4v8"))))
    (properties `((upstream-name . "nonet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-rlist
                             r-rlang
                             r-randomforest
                             r-purrr
                             r-proc
                             r-glmnet
                             r-ggplot2
                             r-e1071
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://open.gslab.com/nonet/")
    (synopsis "Weighted Average Ensemble without Training Labels")
    (description
     "It provides ensemble capabilities to supervised and unsupervised learning models
predictions without using training labels.  It decides the relative weights of
the different models predictions by using best models predictions as response
variable and rest of the mo.  User can decide the best model, therefore, It
provides freedom to user to ensemble models based on their design solutions.")
    (license license:expat)))

(define-public r-noncomplyr
  (package
    (name "r-noncomplyr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noncomplyR" version))
       (sha256
        (base32 "1a9m6r9cizw42nmy24jdsrsbllg5z84fs8b239axnh1fxzskg2qy"))))
    (properties `((upstream-name . "noncomplyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcmcpack))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=noncomplyR")
    (synopsis
     "Bayesian Analysis of Randomized Experiments with Non-Compliance")
    (description
     "This package provides functions for Bayesian analysis of data from randomized
experiments with non-compliance.  The functions are based on the models
described in Imbens and Rubin (1997) <doi:10.1214/aos/1034276631>.  Currently
only two types of outcome models are supported: binary outcomes and normally
distributed outcomes.  Models can be fit with and without the exclusion
restriction and/or the strong access monotonicity assumption.  Models are fit
using the data augmentation algorithm as described in Tanner and Wong (1987)
<doi:10.2307/2289457>.")
    (license license:gpl2)))

(define-public r-noncompliance
  (package
    (name "r-noncompliance")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noncompliance" version))
       (sha256
        (base32 "1lcybgj95z7lz7p26xbsdiv0vvms4ab4f8kad0pclacf1l43v0j6"))))
    (properties `((upstream-name . "noncompliance")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (home-page "https://www.stat.washington.edu/~wloh/")
    (synopsis
     "Causal Inference in the Presence of Treatment Noncompliance Under the Binary Instrumental Variable Model")
    (description
     "This package provides a finite-population significance test of the sharp causal
null hypothesis that treatment exposure X has no effect on final outcome Y,
within the principal stratum of Compliers.  A generalized likelihood ratio test
statistic is used, and the resulting p-value is exact.  Currently, it is assumed
that there are only Compliers and Never Takers in the population.")
    (license license:gpl3+)))

(define-public r-noncompart
  (package
    (name "r-noncompart")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NonCompart" version))
       (sha256
        (base32 "0cda8rd45irx8q33zs9hcfhsanq09hnx3fpkpa9173pn0j6iw0zv"))))
    (properties `((upstream-name . "NonCompart")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NonCompart")
    (synopsis "Noncompartmental Analysis for Pharmacokinetic Data")
    (description
     "Conduct a noncompartmental analysis with industrial strength.  Some features are
1) Use of CDISC SDTM terms 2) Automatic or manual slope selection 3) Supporting
both linear-up linear-down and linear-up log-down method 4) Interval(partial)
AUCs with linear or log interpolation method * Reference: Gabrielsson J, Weiner
D. Pharmacokinetic and Pharmacodynamic Data Analysis - Concepts and
Applications.  5th ed.  2016. (ISBN:9198299107).")
    (license license:gpl3)))

(define-public r-nomordr
  (package
    (name "r-nomordr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomordR" version))
       (sha256
        (base32 "02d5gk5pd4vpd61ys9x81maxjrmbshx1wdv6xxsvafrnz7a7pmks"))))
    (properties `((upstream-name . "nomordR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nomordR")
    (synopsis "Randomization Test for Sequences of Nominal Values")
    (description
     "This package implements the nomord_probe() function, which performs a
statistical analysis on an input vector (sequence) of nominal (categorical)
values.")
    (license license:gpl3)))

(define-public r-nomogramformula
  (package
    (name "r-nomogramformula")
    (version "1.2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomogramFormula" version))
       (sha256
        (base32 "1j6g5kndl0n2g8acwq8pn09sk0bjcsphbcd77ha1j5dnwdmy73c0"))))
    (properties `((upstream-name . "nomogramFormula")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-hmisc r-do))
    (home-page "https://github.com/yikeshu0611/nomogramFormula")
    (synopsis "Calculate Total Points and Probabilities for Nomogram")
    (description
     "This package provides a nomogram, which can be carried out in rms package,
provides a graphical explanation of a prediction process.  However, it is not
very easy to draw straight lines, read points and probabilities accurately.
Even, it is hard for users to calculate total points and probabilities for all
subjects.  This package provides formula_rd() and formula_lp() functions to fit
the formula of total points with raw data and linear predictors respectively by
polynomial regression.  Function points_cal() will help you calculate the total
points.  prob_cal() can be used to calculate the probabilities after lrm(),
cph() or psm() regression.  For more complex condition, interaction or
restricted cubic spine, @code{TotalPoints.rms}() can be used.")
    (license license:gpl3)))

(define-public r-nomogramex
  (package
    (name "r-nomogramex")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomogramEx" version))
       (sha256
        (base32 "16235rwblnzn8k53817llwy2pzhnpifh6ij159nxymjm8ar9qpbp"))))
    (properties `((upstream-name . "nomogramEx")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-pracma))
    (home-page "https://cran.r-project.org/package=nomogramEx")
    (synopsis "Extract Equations from a Nomogram")
    (description
     "This package provides a nomogram can not be easily applied, because it is
difficult to calculate the points or even the survival probability.  The
package, including a function of @code{nomogramEx}(), is to extract the
polynomial equations to calculate the points of each variable, and the survival
probability corresponding to the total points.")
    (license license:gpl3)))

(define-public r-nomnoml
  (package
    (name "r-nomnoml")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomnoml" version))
       (sha256
        (base32 "0dbn03agq02d28agzgwz92m2lr76c7xzpa7p5bj684fzw7zsks3w"))))
    (properties `((upstream-name . "nomnoml")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot r-rlang r-png r-lifecycle r-htmlwidgets))
    (home-page "https://github.com/rstudio/nomnoml")
    (synopsis "Sassy 'UML' Diagrams")
    (description
     "This package provides a tool for drawing sassy UML (Unified Modeling Language)
diagrams based on a simple syntax, see <https://www.nomnoml.com>.  Supports
styling, R Markdown and exporting diagrams in the PNG format.")
    (license license:expat)))

(define-public r-nomisr
  (package
    (name "r-nomisr")
    (version "0.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomisr" version))
       (sha256
        (base32 "0mf301nhsl71h79jxfkwa27j5nifsxp7y6vxbnx87rybr80b3hg1"))))
    (properties `((upstream-name . "nomisr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-snakecase
                             r-rsdmx
                             r-rlang
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/nomisr")
    (synopsis "Access 'Nomis' UK Labour Market Data")
    (description
     "Access UK official statistics from the Nomis database.  Nomis includes data from
the Census, the Labour Force Survey, DWP benefit statistics and other economic
and demographic data from the Office for National Statistics, based around
statistical geographies.  See <https://www.nomisweb.co.uk/api/v01/help> for full
API documentation.")
    (license license:expat)))

(define-public r-nominatimlite
  (package
    (name "r-nominatimlite")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nominatimlite" version))
       (sha256
        (base32 "1lz4bnml9vs8rc7p71kiwwr0g38lvawbhsfj62a5cy8g1fxpghjw"))))
    (properties `((upstream-name . "nominatimlite")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-jsonlite r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://dieghernan.github.io/nominatimlite/")
    (synopsis "Interface with 'Nominatim' API Service")
    (description
     "Lite interface for getting data from OSM service Nominatim
<https://nominatim.org/release-docs/latest/>.  Extract coordinates from
addresses, find places near a set of coordinates, search for amenities and
return spatial objects on sf format.")
    (license license:expat)))

(define-public r-nomclust
  (package
    (name "r-nomclust")
    (version "2.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nomclust" version))
       (sha256
        (base32 "1bl92zaf4iidm48xjxj0v812lx7gk3i3frvb59xr71y91ranwjpv"))))
    (properties `((upstream-name . "nomclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-clvalid r-cluster))
    (home-page "https://cran.r-project.org/package=nomclust")
    (synopsis "Hierarchical Cluster Analysis of Nominal Data")
    (description
     "Similarity measures for hierarchical clustering of objects characterized by
nominal (categorical) variables.  Evaluation criteria for nominal data
clustering.")
    (license license:gpl2+)))

(define-public r-nombre
  (package
    (name "r-nombre")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nombre" version))
       (sha256
        (base32 "16hpr628j8rzxg5k71qsgc9xhz1w4gpi3fry5vp1mbwvalmlish2"))))
    (properties `((upstream-name . "nombre")))
    (build-system r-build-system)
    (propagated-inputs (list r-fracture))
    (home-page "https://nombre.rossellhayes.com")
    (synopsis "Number Names")
    (description
     "Converts numeric vectors to character vectors of English number names.  Provides
conversion to cardinals, ordinals, numerators, and denominators.  Supports
negative and non-integer numbers.")
    (license license:expat)))

(define-public r-nolock
  (package
    (name "r-nolock")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nolock" version))
       (sha256
        (base32 "1n62fjnscfflvxya4j2km2vbg352gw3irlh8p2mrfil8k157vpnp"))))
    (properties `((upstream-name . "nolock")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rstudioapi r-pacman r-crayon))
    (home-page "https://cran.r-project.org/package=nolock")
    (synopsis "Append 'WITH (NOLOCK)' to 'SQL' Queries")
    (description
     "Automatically appends WITH (nolock) to all tables in SQL queries using a utility
function.  This facilitates reading from databases in scenarios where
non-blocking reads are preferable, such as in high-transaction environments.")
    (license license:gpl3)))

(define-public r-noisysbm
  (package
    (name "r-noisysbm")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noisySBM" version))
       (sha256
        (base32 "1zdkxr48kvpqs49figxxznq3d45nalja92lyal71m066s1blc6dg"))))
    (properties `((upstream-name . "noisySBM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-gtools r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=noisySBM")
    (synopsis
     "Noisy Stochastic Block Mode: Graph Inference by Multiple Testing")
    (description
     "Variational Expectation-Maximization algorithm to fit the noisy stochastic block
model to an observed dense graph and to perform a node clustering.  Moreover, a
graph inference procedure to recover the underlying binary graph.  This
procedure comes with a control of the false discovery rate.  The method is
described in the article \"Powerful graph inference with false discovery rate
control\" by T. Rebafka, E. Roquain, F. Villers (2020) <@code{arXiv:1907.10176>}.")
    (license license:gpl2)))

(define-public r-noisyr
  (package
    (name "r-noisyr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noisyr" version))
       (sha256
        (base32 "05nvxz5qa4lsi62va74yq4m68nlacjkl8xj5nsq7dik3357y53dr"))))
    (properties `((upstream-name . "noisyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rsamtools
                             r-preprocesscore
                             r-philentropy
                             r-magrittr
                             r-iranges
                             r-ggplot2
                             r-genomicranges
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Core-Bioinformatics/noisyR")
    (synopsis "Noise Quantification in High Throughput Sequencing Output")
    (description
     "Quantifies and removes technical noise from high-throughput sequencing data.
Two approaches are used, one based on the count matrix, and one using the
alignment BAM files directly.  Contains several options for every step of the
process, as well as tools to quality check and assess the stability of output.")
    (license license:gpl2)))

(define-public r-noisyce2
  (package
    (name "r-noisyce2")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noisyCE2" version))
       (sha256
        (base32 "02zkkyys9qknwm39gz4j4pvlvkd5qlvxqaprklzsd40dgz39cwq4"))))
    (properties `((upstream-name . "noisyCE2")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "https://www.flaviosanti.it/software/noisyCE2")
    (synopsis "Cross-Entropy Optimisation of Noisy Functions")
    (description
     "Cross-Entropy optimisation of unconstrained deterministic and noisy functions
illustrated in Rubinstein and Kroese (2004, ISBN: 978-1-4419-1940-3) through a
highly flexible and customisable function which allows user to define custom
variable domains, sampling distributions, updating and smoothing rules, and
stopping criteria.  Several built-in methods and settings make the package very
easy-to-use under standard optimisation problems.")
    (license license:gpl2+)))

(define-public r-noisemodel
  (package
    (name "r-noisemodel")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noisemodel" version))
       (sha256
        (base32 "1p5rripvpcgxikgy84jaxbx0spyrclidv17i2pkf3i6712ap3m81"))))
    (properties `((upstream-name . "noisemodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rsnns
                             r-rcolorbrewer
                             r-nnet
                             r-lsr
                             r-ggplot2
                             r-fnn
                             r-extdist
                             r-e1071
                             r-classint
                             r-caret
                             r-c50))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=noisemodel")
    (synopsis "Noise Models for Classification Datasets")
    (description
     "Implementation of models for the controlled introduction of errors in
classification datasets.  This package contains the noise models described in
Saez (2022) <doi:10.3390/math10203736> that allow corrupting class labels,
attributes and both simultaneously.")
    (license license:gpl3+)))

(define-public r-noise
  (package
    (name "r-noise")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noise" version))
       (sha256
        (base32 "0xqcg79v03d5x783pby6gqxrhylm67xk4ic9ib4jmjyrrbqklad1"))))
    (properties `((upstream-name . "noise")))
    (build-system r-build-system)
    (propagated-inputs (list r-preprocesscore))
    (home-page "https://cran.r-project.org/package=noise")
    (synopsis
     "Estimation of Intrinsic and Extrinsic Noise from Single-Cell Data")
    (description
     "This package provides functions to calculate estimates of intrinsic and
extrinsic noise from the two-reporter single-cell experiment, as in Elowitz, M.
B., A. J. Levine, E. D. Siggia, and P. S. Swain (2002) Stochastic gene
expression in a single cell.  Science, 297, 1183-1186.  Functions implement
multiple estimators developed for unbiasedness or min Mean Squared Error (MSE)
in Fu, A. Q. and Pachter, L. (2016).  Estimating intrinsic and extrinsic noise
from single-cell gene expression measurements.  Statistical Applications in
Genetics and Molecular Biology, 15(6), 447-471.")
    (license license:gpl2+)))

(define-public r-noia
  (package
    (name "r-noia")
    (version "0.97.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noia" version))
       (sha256
        (base32 "18n2pmjmx1xqmshfvan1s7hlaciz05xhplg8zphcjhm2hfq7svv2"))))
    (properties `((upstream-name . "noia")))
    (build-system r-build-system)
    (home-page "https://github.com/lerouzic/noia")
    (synopsis
     "Implementation of the Natural and Orthogonal InterAction (NOIA) Model")
    (description
     "The NOIA model, as described extensively in Alvarez-Castro & Carlborg (2007), is
a framework facilitating the estimation of genetic effects and
genotype-to-phenotype maps.  This package provides the basic tools to perform
linear and multilinear regressions from real populations (provided the phenotype
and the genotype of every individuals), estimating the genetic effects from
different reference points, the genotypic values, and the decomposition of
genetic variances in a multi-locus, 2 alleles system.  This package is presented
in Le Rouzic & Alvarez-Castro (2008).")
    (license license:gpl2)))

(define-public r-nofrills
  (package
    (name "r-nofrills")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nofrills" version))
       (sha256
        (base32 "1sclrzn7m0r4pxmv9vs0ay0l892p6kdz3yzdqwfkzzp8z45n6yzk"))))
    (properties `((upstream-name . "nofrills")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang))
    (home-page "https://github.com/egnha/nofrills")
    (synopsis "Low-Cost Anonymous Functions")
    (description
     "This package provides a compact variation of the usual syntax of function
declaration, in order to support tidyverse-style quasiquotation of a function's
arguments and body.")
    (license license:expat)))

(define-public r-nodiv
  (package
    (name "r-nodiv")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nodiv" version))
       (sha256
        (base32 "1yz2ynn7cfwjim3bmwvf4v7fflghc2kfx9frwz2m85l9pcr3qlx0"))))
    (properties `((upstream-name . "nodiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-sp r-raster r-picante r-ape))
    (home-page "https://github.com/mkborregaard/nodiv")
    (synopsis "Compares the Distribution of Sister Clades Through a Phylogeny")
    (description
     "An implementation of the nodiv algorithm, see Borregaard, M.K., Rahbek, C.,
Fjeldsaa, J., Parra, J.L., Whittaker, R.J. & Graham, C.H. 2014.  Node-based
analysis of species distributions.  Methods in Ecology and Evolution 5(11):
1225-1235. <DOI:10.1111/2041-210X.12283>.  Package for phylogenetic analysis of
species distributions.  The main function goes through each node in the
phylogeny, compares the distributions of the two descendant nodes, and compares
the result to a null model.  This highlights nodes where major distributional
divergence have occurred.  The distributional divergence for these nodes is
mapped.")
    (license license:expat)))

(define-public r-node2vec
  (package
    (name "r-node2vec")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "node2vec" version))
       (sha256
        (base32 "03gfpn4xgmdwlrpwi9pdpnh6k75mwp85j6vywkj0jsxhz3rbg95g"))))
    (properties `((upstream-name . "node2vec")))
    (build-system r-build-system)
    (propagated-inputs (list r-word2vec
                             r-vegan
                             r-vctrs
                             r-rlist
                             r-igraph
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=node2vec")
    (synopsis "Algorithmic Framework for Representational Learning on Graphs")
    (description
     "Given any graph, the node2vec algorithm can learn continuous feature
representations for the nodes, which can then be used for various downstream
machine learning tasks.The techniques are detailed in the paper \"node2vec:
Scalable Feature Learning for Networks\" by Aditya Grover, Jure
Leskovec(2016),available at <@code{arXiv:1607.00653>}.")
    (license license:gpl3+)))

(define-public r-noctua
  (package
    (name "r-noctua")
    (version "2.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noctua" version))
       (sha256
        (base32 "1j7ikcviapdddyi71zwybcjyj6f1kyszb44vmbcq7jmvm7iazvmx"))))
    (properties `((upstream-name . "noctua")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-paws r-dbi r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DyfanJones/noctua")
    (synopsis
     "Connect to 'AWS Athena' using R 'AWS SDK' 'paws' ('DBI' Interface)")
    (description
     "Designed to be compatible with the R package DBI (Database Interface) when
connecting to Amazon Web Service ('AWS') Athena
<https://aws.amazon.com/athena/>.  To do this the R AWS Software Development Kit
('SDK') paws <https://github.com/paws-r/paws> is used as a driver.")
    (license license:expat)))

(define-public r-noah
  (package
    (name "r-noah")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noah" version))
       (sha256
        (base32 "1ln23lp4c70fin9sjjhm4ngy47f8sk2mcljp5q449b7hq8gqi12c"))))
    (properties `((upstream-name . "noah")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-r6
                             r-purrr
                             r-magrittr
                             r-hash
                             r-dplyr
                             r-digest
                             r-crayon
                             r-assertthat))
    (home-page "https://github.com/Teebusch/noah")
    (synopsis "Create Unique Pseudonymous Animal Names")
    (description
     "Generate pseudonymous animal names that are delightful and easy to remember like
the Likable Leech and the Proud Chickadee.  A unique pseudonym can be created
for every unique element in a vector or row in a data frame.  Pseudonyms can be
customized and tracked over time, so that the same input is always assigned the
same pseudonym.")
    (license license:expat)))

(define-public r-noaastormevents
  (package
    (name "r-noaastormevents")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noaastormevents" version))
       (sha256
        (base32 "1d93h8av0bbv7a56g6m000qpsnzqpfdla0fmcj5y8fbbqkipxnfr"))))
    (properties `((upstream-name . "noaastormevents")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcurl
                             r-rcolorbrewer
                             r-plyr
                             r-maps
                             r-magrittr
                             r-lubridate
                             r-hurricaneexposure
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-data-table
                             r-choroplethrmaps
                             r-choroplethr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/geanders/noaastormevents")
    (synopsis "Explore NOAA Storm Events Database")
    (description
     "Allows users to explore and plot data from the National Oceanic and Atmospheric
Administration (NOAA) Storm Events database through R for United States
counties.  Functionality includes matching storm event listings by time and
location to hurricane best tracks data.  This work was supported by grants from
the Colorado Water Center, the National Institute of Environmental Health
Sciences (R00ES022631) and the National Science Foundation (1331399).")
    (license license:gpl2+)))

(define-public r-noaaoceans
  (package
    (name "r-noaaoceans")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "noaaoceans" version))
       (sha256
        (base32 "0pxsddzkrprzjch173shhmd7c2h6rh5xzs3n5bbs97l51ni8m60m"))))
    (properties `((upstream-name . "noaaoceans")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rvest r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=noaaoceans")
    (synopsis "Collect Ocean Data from NOAA")
    (description
     "This package provides a small set of tools for collecting data from National
Oceanic and Atmospheric Administration (NOAA) data sources.  The functions
provided in the package are wrappers around NOAA's existing APIs which is found
at <https://api.tidesandcurrents.noaa.gov/api/prod/>.")
    (license license:expat)))

(define-public r-no-ping-pong
  (package
    (name "r-no-ping-pong")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NO.PING.PONG" version))
       (sha256
        (base32 "1i8pwk4p43yqmk8irkmvza080sngmng0wv1yr847253a0frjg9mr"))))
    (properties `((upstream-name . "NO.PING.PONG")))
    (build-system r-build-system)
    (propagated-inputs (list r-metafor r-mcmcglmm r-mass))
    (home-page "https://cran.r-project.org/package=NO.PING.PONG")
    (synopsis "Incorporating Previous Findings When Evaluating New Data")
    (description
     "This package provides functions for revealing what happens when effect size
estimates from previous studies are taken into account when evaluating each new
dataset in a study sequence.  The analyses can be conducted for cumulative
meta-analyses and for Bayesian data analyses.  The package contains sample data
for a wide selection of research topics.  Jointly considering previous findings
along with new data is more likely to result in correct conclusions than does
the traditional practice of not incorporating previous findings, which often
results in a back and forth ping-pong of conclusions when evaluating a sequence
of studies.  O'Connor & Ermacora (2021, <doi:10.3758/bf03200807>).")
    (license license:gpl2+)))

(define-public r-nntensor
  (package
    (name "r-nntensor")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnTensor" version))
       (sha256
        (base32 "1anyqk1pafvw20rgsbxcl604qdhnbcymfin3yz9nv2v4mv4sf1ci"))))
    (properties `((upstream-name . "nnTensor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tagcloud
                             r-rtensor
                             r-plot3d
                             r-mass
                             r-ggplot2
                             r-fields))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rikenbit/nnTensor")
    (synopsis "Non-Negative Tensor Decomposition")
    (description
     "Some functions for performing non-negative matrix factorization, non-negative
CANDECOMP/PARAFAC (CP) decomposition, non-negative Tucker decomposition, and
generating toy model data.  See Andrzej Cichock et al (2009) and the reference
section of @code{GitHub} README.md
<https://github.com/rikenbit/@code{nnTensor>}, for details of the methods.")
    (license license:expat)))

(define-public r-nntbiomarker
  (package
    (name "r-nntbiomarker")
    (version "0.29.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NNTbiomarker" version))
       (sha256
        (base32 "0sqlf7vzhpmq2g98c2qlrcqn3ba4ycfxbczgcjiqqhqsvgkpacc1"))))
    (properties `((upstream-name . "NNTbiomarker")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-stringr r-shiny r-mvbutils r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NNTbiomarker")
    (synopsis "Calculate Design Parameters for Biomarker Validation Studies")
    (description
     "Helps a clinical trial team discuss the clinical goals of a well-defined
biomarker with a diagnostic, staging, prognostic, or predictive purpose.  From
this discussion will come a statistical plan for a (non-randomized) validation
trial.  Both prospective and retrospective trials are supported.  In a specific
focused discussion, investigators should determine the range of \"discomfort\" for
the NNT, number needed to treat.  The meaning of the discomfort range,
[NNTlower, NNTupper], is that within this range most physicians would feel
discomfort either in treating or withholding treatment.  A pair of NNT values
bracketing that range, NNTpos and NNTneg, become the targets of the study's
design.  If the trial can demonstrate that a positive biomarker test yields an
NNT less than NNTlower, and that a negative biomarker test yields an NNT less
than NNTlower, then the biomarker may be useful for patients.  A highlight of
the package is visualization of a \"contra-Bayes\" theorem, which produces
criteria for retrospective case-controls studies.")
    (license license:gpl3)))

(define-public r-nnt
  (package
    (name "r-nnt")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnt" version))
       (sha256
        (base32 "1rrqq8m3plsq13hsh53h948wbx37gl87hplj4ms2pxxf1zwqsmnj"))))
    (properties `((upstream-name . "nnt")))
    (build-system r-build-system)
    (propagated-inputs (list r-survrm2 r-survival))
    (home-page "https://cran.r-project.org/package=nnt")
    (synopsis "The Number Needed to Treat (NNT) for Survival Endpoint")
    (description
     "Estimate the NNT using the proposed method in Yang and Yin's paper (2019)
<doi:10.1371/journal.pone.0223301>, in which the NNT-RMST (number needed to
treat based on the restricted mean survival time) is defined as the RMST
(restricted mean survival time) in the control group divided by the difference
in RMSTs between the treatment and control groups up to a chosen time t.")
    (license license:gpl3)))

(define-public r-nnspat
  (package
    (name "r-nnspat")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnspat" version))
       (sha256
        (base32 "0h17p87fzsqizldgxvmis4s8wyyhc0f95amdl8j7fw2kcmrivnay"))))
    (properties `((upstream-name . "nnspat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-pcds r-mass))
    (home-page "https://cran.r-project.org/package=nnspat")
    (synopsis "Nearest Neighbor Methods for Spatial Patterns")
    (description
     "This package contains the functions for testing the spatial patterns (of
segregation, spatial symmetry, association, disease clustering, species
correspondence and reflexivity) based on nearest neighbor relations, especially
using contingency tables such as nearest neighbor contingency tables (Ceyhan
(2010) <doi:10.1007/s10651-008-0104-x> and Ceyhan (2017)
<doi:10.1016/j.jkss.2016.10.002> and references therein), nearest neighbor
symmetry contingency tables (Ceyhan (2014) <doi:10.1155/2014/698296>), species
correspondence contingency tables and reflexivity contingency tables (Ceyhan
(2018) <doi:10.2436/20.8080.02.72>) for two (or higher) dimensional data.  Also
contains functions for generating patterns of segregation, association,
uniformity in a multi-class setting (Ceyhan (2014)
<doi:10.1007/s00477-013-0824-9>), and various non-random labeling patterns for
disease clustering in two dimensional cases (Ceyhan (2014)
<doi:10.1002/sim.6053>), and for visualization of all these patterns for the two
dimensional data.  The tests are usually (asymptotic) normal z-tests and
chi-square tests.")
    (license license:gpl2)))

(define-public r-nns
  (package
    (name "r-nns")
    (version "10.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NNS" version))
       (sha256
        (base32 "0q6zgs15nm4jlg5mwd3a0g0rqh8665gqd33farxx00zzq0d8gv6c"))))
    (properties `((upstream-name . "NNS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-stringr
                             r-rgl
                             r-rfast
                             r-rcppparallel
                             r-rcpp
                             r-quantmod
                             r-meboot
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NNS")
    (synopsis "Nonlinear Nonparametric Statistics")
    (description
     "Nonlinear nonparametric statistics using partial moments.  Partial moments are
the elements of variance and asymptotically approximate the area of f(x).  These
robust statistics provide the basis for nonlinear analysis while retaining
linear equivalences.  NNS offers: Numerical integration, Numerical
differentiation, Clustering, Correlation, Dependence, Causal analysis, ANOVA,
Regression, Classification, Seasonality, Autoregressive modeling, Normalization
and Stochastic dominance.  All routines based on: Viole, F. and Nawrocki, D.
(2013), Nonlinear Nonparametric Statistics: Using Partial Moments (ISBN:
1490523995).")
    (license license:gpl3)))

(define-public r-nnmis
  (package
    (name "r-nnmis")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NNMIS" version))
       (sha256
        (base32 "1w2i4xlx249p589yqdgbx1ra406ycxw729vbk1lqadbn71m6blaz"))))
    (properties `((upstream-name . "NNMIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=NNMIS")
    (synopsis
     "Nearest Neighbor Based Multiple Imputation for Survival Data with Missing Covariates")
    (description
     "Imputation for both missing covariates and censored observations (optional) for
survival data with missing covariates by the nearest neighbor based multiple
imputation algorithm as described in Hsu et al. (2006) <doi:10.1002/sim.2452>,
and Hsu and Yu (2018) <doi: 10.1177/0962280218772592>.  Note that the current
version can only impute for a situation with one missing covariate.")
    (license license:lgpl2.0+)))

(define-public r-nnlib2rcpp
  (package
    (name "r-nnlib2rcpp")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnlib2Rcpp" version))
       (sha256
        (base32 "02vjfidbpkd38zsikd63wkx091rm481js3a7pgryv768ddia728g"))))
    (properties `((upstream-name . "nnlib2Rcpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/VNNikolaidis/nnlib2Rcpp")
    (synopsis
     "Tool for Creating Custom Neural Networks in C++ and using Them in R")
    (description
     "This package contains a module to define neural networks from custom components
and versions of Autoencoder, BP, LVQ, MAM NN.")
    (license license:expat)))

(define-public r-nnlasso
  (package
    (name "r-nnlasso")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnlasso" version))
       (sha256
        (base32 "1n7karlmgq61z9ywfx9xb5wvmxx40ydpnzzazj1xr70qlv5m0qk4"))))
    (properties `((upstream-name . "nnlasso")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nnlasso")
    (synopsis
     "Non-Negative Lasso and Elastic Net Penalized Generalized Linear Models")
    (description
     "Estimates of coefficients of lasso penalized linear regression and generalized
linear models subject to non-negativity constraints on the parameters using
multiplicative iterative algorithm.  Entire regularization path for a sequence
of lambda values can be obtained.  Functions are available for creating plots of
regularization path, cross validation and estimating coefficients at a given
lambda value.  There is also provision for obtaining standard error of
coefficient estimates.")
    (license license:gpl2+)))

(define-public r-nngeo
  (package
    (name "r-nngeo")
    (version "0.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nngeo" version))
       (sha256
        (base32 "0scfclw2prjfgm1liwbbys9ds00pyb0fk8q0mw6d6nqnbrw9kfnd"))))
    (properties `((upstream-name . "nngeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-units r-sf r-nabor r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://michaeldorman.github.io/nngeo/")
    (synopsis "k-Nearest Neighbor Join for Spatial Data")
    (description
     "K-nearest neighbor search for projected and non-projected sf spatial layers.
Nearest neighbor search uses (1) C code from @code{GeographicLib} for lon-lat
point layers, (2) function knn() from package nabor for projected point layers,
or (3) function st_distance() from package sf for line or polygon layers.  The
package also includes several other utility functions for spatial analysis.")
    (license license:expat)))

(define-public r-nngarrote
  (package
    (name "r-nngarrote")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnGarrote" version))
       (sha256
        (base32 "0km7vx9qkfijj2af5ma4q88mhgkrw361hpv3n8dyzpr8654hrw4v"))))
    (properties `((upstream-name . "nnGarrote")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet))
    (home-page "https://cran.r-project.org/package=nnGarrote")
    (synopsis
     "Non-Negative Garrote Estimation with Penalized Initial Estimators")
    (description
     "This package provides functions to compute the non-negative garrote estimator as
proposed by Breiman (1995) <https://www.jstor.org/stable/1269730> with the
penalized initial estimators extension as proposed by Yuan and Lin (2007)
<https://www.jstor.org/stable/4623260>.")
    (license license:gpl2+)))

(define-public r-nnfor
  (package
    (name "r-nnfor")
    (version "0.9.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nnfor" version))
       (sha256
        (base32 "0333c7h8lx1r9brw4dabyd28hyqvsr14hpsykbgx646k0xfkhrkr"))))
    (properties `((upstream-name . "nnfor")))
    (build-system r-build-system)
    (propagated-inputs (list r-uroot
                             r-tsutils
                             r-plotrix
                             r-neuralnet
                             r-mass
                             r-glmnet
                             r-generics
                             r-forecast))
    (home-page
     "https://kourentzes.com/forecasting/2019/01/16/tutorial-for-the-nnfor-r-package/")
    (synopsis "Time Series Forecasting with Neural Networks")
    (description
     "Automatic time series modelling with neural networks.  Allows fully automatic,
semi-manual or fully manual specification of networks.  For details of the
specification methodology see: (i) Crone and Kourentzes (2010)
<doi:10.1016/j.neucom.2010.01.017>; and (ii) Kourentzes et al. (2014)
<doi:10.1016/j.eswa.2013.12.011>.")
    (license license:gpl3)))

(define-public r-nndiagram
  (package
    (name "r-nndiagram")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nndiagram" version))
       (sha256
        (base32 "0x6gv8rmvnqvvwxgqmkybmvmf4g94im0lardkmb5a043krvgh3i4"))))
    (properties `((upstream-name . "nndiagram")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://github.com/ccfang2/nndiagram")
    (synopsis
     "Generator of 'LaTeX' Code for Drawing Neural Network Diagrams with 'TikZ'")
    (description
     "Generates @code{LaTeX} code for drawing well-formatted neural network diagrams
with @code{TikZ}'.  Users have to define number of neurons on each layer, and
optionally define neuron connections they would like to keep or omit, layers
they consider to be oversized and neurons they would like to draw with lighter
color.  They can also specify the title of diagram, color, opacity of figure,
labels of layers, input and output neurons.  In addition, this package helps to
produce @code{LaTeX} code for drawing activation functions which are crucial in
neural network analysis.  To make the code work in a @code{LaTeX} editor, users
need to install and import some @code{TeX} packages including @code{TikZ} in the
setting of @code{TeX} file.")
    (license license:expat)))

(define-public r-nncc
  (package
    (name "r-nncc")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nncc" version))
       (sha256
        (base32 "131mka187q7367ba0ac0ad45hfwnbfmdlxikjdqkbi7ci234yj8l"))))
    (properties `((upstream-name . "nncc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-mice
                             r-mgcv
                             r-igraph
                             r-ggplot2
                             r-furrr
                             r-formula-tools
                             r-dplyr
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nncc")
    (synopsis "Nearest Neighbors Matching of Case-Control Data")
    (description
     "This package provides nearest-neighbors matching and analysis of case-control
data.  Cui, Z., Marder, E. P., Click, E. S., Hoekstra, R. M., & Bruce, B. B.
(2022) <doi:10.1097/EDE.0000000000001504>.")
    (license license:gpl3+)))

(define-public r-nnbenchmark
  (package
    (name "r-nnbenchmark")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NNbenchmark" version))
       (sha256
        (base32 "086smk3xy6p6ianw41h3gx806q7h28v1dg9d3khsrwyyf9gn8xyp"))))
    (properties `((upstream-name . "NNbenchmark")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-pkgload))
    (home-page "https://github.com/pkR-pkR/NNbenchmark")
    (synopsis "Datasets and Functions to Benchmark Neural Network Packages")
    (description
     "Datasets and functions to benchmark (convergence, speed, ease of use) R packages
dedicated to regression with neural networks (no classification in this
version).  The templates for the tested packages are available in the R, R
Markdown and HTML formats at
<https://github.com/@code{pkR-pkR/NNbenchmarkTemplates>} and
<https://theairbend3r.github.io/N@code{NbenchmarkWeb/index.html>}.  The
submitted article to the R-Journal can be read at
<https://www.inmodelia.com/gsoc2020.html>.")
    (license license:gpl2)))

(define-public r-nna
  (package
    (name "r-nna")
    (version "0.0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nna" version))
       (sha256
        (base32 "17cz1jf7iv61wspqldfdwbdjhlr0wq09idkzlivfb8aik5w9f0z5"))))
    (properties `((upstream-name . "nna")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nna")
    (synopsis "Nearest-Neighbor Analysis")
    (description
     "Calculates spatial pattern analysis using a T-square sample procedure.  This
method is based on two measures \"x\" and \"y\". \"x\" - Distance from the random
point to the nearest individual. \"y\" - Distance from individual to its nearest
neighbor.  This is a methodology commonly used in phytosociology or marine
benthos ecology to analyze the species distribution (random, uniform or clumped
patterns).  Ludwig & Reynolds (1988, ISBN:0471832359).")
    (license license:gpl2+)))

(define-public r-nmw
  (package
    (name "r-nmw")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmw" version))
       (sha256
        (base32 "1wzqdg7cc5q9yw2axvzzlh60az1x6f7ycaqwadns1xr416x0kwfw"))))
    (properties `((upstream-name . "nmw")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=nmw")
    (synopsis
     "Understanding Nonlinear Mixed Effects Modeling for Population Pharmacokinetics")
    (description
     "This shows how NONMEM(R) software works.  NONMEM's classical estimation methods
like First Order(FO) approximation', First Order Conditional Estimation(FOCE)',
and Laplacian approximation are explained.")
    (license license:gpl3)))

(define-public r-nmvanova
  (package
    (name "r-nmvanova")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMVANOVA" version))
       (sha256
        (base32 "1jlqyg5vn7j8srvifjghd5a7820kadl8kbwib4qxalrfprq81h8p"))))
    (properties `((upstream-name . "NMVANOVA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NMVANOVA")
    (synopsis "Novice Model Variation ANOVA")
    (description
     "Due to Rstudio's status as open source software, we believe it will be utilized
frequently for future data analysis by users whom lack formal training or
experience with R'.  The NMVANOVA (Novice Model Variation ANOVA) a streamlined
variation of experimental design functions that allows novice Rstudio users to
perform different model variations one-way analysis of variance without
downloading multiple libraries or packages.  Users can easily manipulate the
data block, and needed inputs so that users only have to plugin the four
designed variables/values.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-nmtox
  (package
    (name "r-nmtox")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMTox" version))
       (sha256
        (base32 "1slz6bq57l3f2wqd2nhm3b7dag6vg7wy9zi5rpl7ld1yyqfb0wfp"))))
    (properties `((upstream-name . "NMTox")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-iso
                             r-gridextra
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=NMTox")
    (synopsis "Dose-Response Relationship Analysis of Nanomaterial Toxicity")
    (description
     "Perform an exploration and a preliminary analysis on the dose- response
relationship of nanomaterial toxicity.  Several functions are provided for data
exploration, including functions for creating a subset of dataset, frequency
tables and plots.  Inference for order restricted dose- response data is
performed by testing the significance of monotonic dose-response relationship,
using Williams, Marcus, M, Modified M and Likelihood ratio tests.  Several
methods of multiplicity adjustment are also provided.  Description of the
methods can be found in
<https://github.com/rahmasarina/dose-response-analysis/blob/main/Methodology.pdf>.")
    (license license:gpl3)))

(define-public r-nmslibr
  (package
    (name "r-nmslibr")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmslibR" version))
       (sha256
        (base32 "0658j1rir16s84aw7xw698pr8j2xp7j70rd306w04f3dxynsrrqm"))))
    (properties `((upstream-name . "nmslibR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-matrix
                             r-lifecycle
                             r-kernelknn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/nmslibR")
    (synopsis "Non Metric Space (Approximate) Library")
    (description
     "This package provides a Non-Metric Space Library ('NMSLIB
<https://github.com/nmslib/nmslib>) wrapper, which according to the authors \"is
an efficient cross-platform similarity search library and a toolkit for
evaluation of similarity search methods.  The goal of the NMSLIB
<https://github.com/nmslib/nmslib> Library is to create an effective and
comprehensive toolkit for searching in generic non-metric spaces.  Being
comprehensive is important, because no single method is likely to be sufficient
in all cases.  Also note that exact solutions are hardly efficient in high
dimensions and/or non-metric spaces.  Hence, the main focus is on approximate
methods\".  The wrapper also includes Approximate Kernel k-Nearest-Neighbor
functions based on the NMSLIB <https://github.com/nmslib/nmslib> Python Library.")
    (license license:asl2.0)))

(define-public r-nmsim
  (package
    (name "r-nmsim")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMsim" version))
       (sha256
        (base32 "1k6ifkkjl2dzravj2l0nfhf4aycy4hwk2gpvhl4jxfapbcr083vb"))))
    (properties `((upstream-name . "NMsim")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-nmdata r-mass r-data-table))
    (home-page "https://philipdelff.github.io/NMsim/")
    (synopsis "Seamless 'Nonmem' Simulation Platform")
    (description
     "This package provides a complete and seamless Nonmem simulation interface from
within R. Turns Nonmem control streams into simulation control streams, executes
them with specified simulation input data and returns the results.  The
simulation is performed by Nonmem', eliminating time spent and risks of
re-implementation of models in other tools.")
    (license license:expat)))

(define-public r-nmrrr
  (package
    (name "r-nmrrr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmrrr" version))
       (sha256
        (base32 "031rh5m52gznl65r7cxh0p6l7qdaygbda7kcx352958dycmnxfs1"))))
    (properties `((upstream-name . "nmrrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-ggplot2 r-desctools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaizadp/nmrrr")
    (synopsis "Binning and Visualizing NMR Spectra in Environmental Samples")
    (description
     "This package provides a reproducible workflow for binning and visualizing NMR
(nuclear magnetic resonance) spectra from environmental samples.  The nmrrr
package is intended for post-processing of NMR data, including importing,
merging and, cleaning data from multiple files, visualizing NMR spectra,
performing binning/integrations for compound classes, and relative abundance
calculations.  This package can be easily inserted into existing analysis
workflows by users to help with analyzing and interpreting NMR data.")
    (license license:expat)))

(define-public r-nmrphasing
  (package
    (name "r-nmrphasing")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMRphasing" version))
       (sha256
        (base32 "007xxgpq9nw646x1vim0j2ci7r077iww7z6n1g7gm3p5928x9l99"))))
    (properties `((upstream-name . "NMRphasing")))
    (build-system r-build-system)
    (propagated-inputs (list r-massspecwavelet r-baseline))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NMRphasing")
    (synopsis
     "Phase Error Correction and Baseline Correction for One Dimensional ('1D') 'NMR' Data")
    (description
     "There are three distinct approaches for phase error correction, they are: a
single linear model with a choice of optimization functions, multiple linear
models with optimization function choices and a shrinkage-based method.  The
methodology is based on our new algorithms and various references (Binczyk et
al. (2015) <doi:10.1186/1475-925X-14-S2-S5>,Chen et al. (2002)
<doi:10.1016/S1090-7807(02)00069-1>, de Brouwer (2009)
<doi:10.1016/j.jmr.2009.09.017>, DÅ¾akula (2000) <doi:10.1006/jmre.2000.2123>,
Ernst (1969) <doi:10.1016/0022-2364(69)90003-1>, Liland et al. (2010)
<doi:10.1366/000370210792434350>).")
    (license license:expat)))

(define-public r-nmof
  (package
    (name "r-nmof")
    (version "2.8-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMOF" version))
       (sha256
        (base32 "12n2dsgng39q9jn8m6q7bx2va389ham869yb5ydkwrqywjdkmibd"))))
    (properties `((upstream-name . "NMOF")))
    (build-system r-build-system)
    (home-page "http://enricoschumann.net/NMOF.htm")
    (synopsis "Numerical Methods and Optimization in Finance")
    (description
     "Functions, examples and data from the first and the second edition of \"Numerical
Methods and Optimization in Finance\" by M. Gilli, D. Maringer and E. Schumann
(2019, ISBN:978-0128150658).  The package provides implementations of
optimisation heuristics (Differential Evolution, Genetic Algorithms, Particle
Swarm Optimisation, Simulated Annealing and Threshold Accepting), and other
optimisation tools, such as grid search and greedy search.  There are also
functions for the valuation of financial instruments such as bonds and options,
for portfolio selection and functions that help with stochastic simulations.")
    (license license:gpl3)))

(define-public r-nmmipw
  (package
    (name "r-nmmipw")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMMIPW" version))
       (sha256
        (base32 "13mv6dpmlldqxkxq6kiydsfwyys5w7i8ws80a5l3377i5chdqi2c"))))
    (properties `((upstream-name . "NMMIPW")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-nloptr r-lava))
    (home-page "https://cran.r-project.org/package=NMMIPW")
    (synopsis "Inverse Probability Weighting under Non-Monotone Missing")
    (description
     "We fit inverse probability weighting estimator and the augmented inverse
probability weighting for non-monotone missing at random data.")
    (license license:gpl2+)))

(define-public r-nmixgof
  (package
    (name "r-nmixgof")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmixgof" version))
       (sha256
        (base32 "0cbwrsxrcf8pn4ycn6r0z8jdidw5l6kdvwyrks69fq4pjzx988d6"))))
    (properties `((upstream-name . "nmixgof")))
    (build-system r-build-system)
    (propagated-inputs (list r-unmarked r-rcpp))
    (home-page "https://github.com/jknape/nmixgof")
    (synopsis "Goodness of Fit Checks for Binomial N-Mixture Models")
    (description
     "This package provides residuals and overdispersion metrics to assess the fit of
N-mixture models obtained using the package unmarked'.  Details on the methods
are given in Knape et al. (2017) <doi:10.1101/194340>.")
    (license license:gpl3)))

(define-public r-nmix
  (package
    (name "r-nmix")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Nmix" version))
       (sha256
        (base32 "03zc2g9jlxp4nn78c7l7z9jf83l8xsw57aiz9p62dw7vxjj318xd"))))
    (properties `((upstream-name . "Nmix")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=Nmix")
    (synopsis "Bayesian Inference on Univariate Normal Mixtures")
    (description
     "This package provides a program for Bayesian analysis of univariate normal
mixtures with an unknown number of components, following the approach of
Richardson and Green (1997) <doi:10.1111/1467-9868.00095>.  This makes use of
reversible jump Markov chain Monte Carlo methods that are capable of jumping
between the parameter sub-spaces corresponding to different numbers of
components in the mixture.  A sample from the full joint distribution of all
unknown variables is thereby generated, and this can be used as a basis for a
thorough presentation of many aspects of the posterior distribution.")
    (license license:gpl2+)))

(define-public r-nmisc
  (package
    (name "r-nmisc")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Nmisc" version))
       (sha256
        (base32 "1k43cp63h96xv3f28fpvw7p2yh3lv1jbhq9bdp3yk6cg0870vya7"))))
    (properties `((upstream-name . "Nmisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rappdirs
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (home-page "https://github.com/numeract/Nmisc")
    (synopsis "Miscellaneous Functions Used at 'Numeract LLC'")
    (description
     "This package contains functions useful for debugging, set operations on vectors,
and UTC date and time functionality.  It adds a few vector manipulation verbs to
purrr and dplyr packages.  It can also generate an R file to install and update
packages to simplify deployment into production.  The functions were developed
at the data science firm Numeract LLC and are used in several packages and
projects.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-nmi
  (package
    (name "r-nmi")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMI" version))
       (sha256
        (base32 "1rxphy9rhy9zhdiz48dvl9m26x6k681lnyn39lqxs0a6jhrxg7y3"))))
    (properties `((upstream-name . "NMI")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NMI")
    (synopsis
     "Normalized Mutual Information of Community Structure in Network")
    (description
     "Calculates the normalized mutual information (NMI) of two community structures
in network analysis.")
    (license license:gpl2)))

(define-public r-nmfn
  (package
    (name "r-nmfn")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMFN" version))
       (sha256
        (base32 "1fdrw69zz2ri6wi1kd7v960kykacjxyr37iv8q5h7kwiidl0ha76"))))
    (properties `((upstream-name . "NMFN")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NMFN")
    (synopsis "Non-Negative Matrix Factorization")
    (description "Non-negative Matrix Factorization.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nmfbin
  (package
    (name "r-nmfbin")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmfbin" version))
       (sha256
        (base32 "1g2yhb2g11fd0dl4xiq2xhjizyzg7f8x3rm01gjbdp1c68vlsf8q"))))
    (properties `((upstream-name . "nmfbin")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://michalovadek.github.io/nmfbin/")
    (synopsis "Non-Negative Matrix Factorization for Binary Data")
    (description
     "Factorize binary matrices into rank-k components using the logistic function in
the updating process.  See e.g. @code{TomÃ©} et al (2015)
<doi:10.1007/s11045-013-0240-9> .")
    (license license:expat)))

(define-public r-nmdata
  (package
    (name "r-nmdata")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMdata" version))
       (sha256
        (base32 "0r9rzq4qi2i49b03ap8s2cqx5vbbrdsh3xmqancq62r8fiydvzbd"))))
    (properties `((upstream-name . "NMdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-fst r-data-table))
    (home-page "https://philipdelff.github.io/NMdata/")
    (synopsis
     "Preparation, Checking and Post-Processing Data for PK/PD Modeling")
    (description
     "Efficient tools for preparation, checking and post-processing of data in PK/PD
(pharmacokinetics/pharmacodynamics) modeling, with focus on use of Nonmem.
Attention is paid to ensure consistency, traceability, and Nonmem compatibility
of Data.  Rigorously checks final Nonmem datasets.  Implemented in data.table',
but easily integrated with base and tidyverse'.")
    (license license:expat)))

(define-public r-nmcalc
  (package
    (name "r-nmcalc")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMcalc" version))
       (sha256
        (base32 "15jf38yvyiasq6bvnv23znp64njag432f1jb9zayghsny63m3dcl"))))
    (properties `((upstream-name . "NMcalc")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://cran.r-project.org/package=NMcalc")
    (synopsis "Basic Calculations for PK/PD Modeling")
    (description
     "Essentials for PK/PD (pharmacokinetics/pharmacodynamics) such as area under the
curve, (geometric) coefficient of variation, and other calculations that are not
part of base R. This is not a noncompartmental analysis (NCA) package.")
    (license license:expat)))

(define-public r-nmathresh
  (package
    (name "r-nmathresh")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmathresh" version))
       (sha256
        (base32 "1jrf7k7an5y867k40aj28ib7vrjyqky2cslwzmfx28snp8ns1vd3"))))
    (properties `((upstream-name . "nmathresh")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnls r-matrix r-gtable r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nmathresh")
    (synopsis "Thresholds and Invariant Intervals for Network Meta-Analysis")
    (description
     "Calculation and presentation of decision-invariant bias adjustment thresholds
and intervals for Network Meta-Analysis, as described by Phillippo et al. (2018)
<doi:10.1111/rssa.12341>.  These describe the smallest changes to the data that
would result in a change of decision.")
    (license license:gpl3)))

(define-public r-nmarank
  (package
    (name "r-nmarank")
    (version "0.3-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmarank" version))
       (sha256
        (base32 "1i2vagjq96q2vhr2lxbm3hqspddfq9qkqjcr8smni6ikmw32akil"))))
    (properties `((upstream-name . "nmarank")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-netmeta
                             r-mvtnorm
                             r-meta
                             r-mass
                             r-dplyr
                             r-data-tree))
    (home-page "https://github.com/tpapak/nmarank")
    (synopsis "Complex Hierarchy Questions in Network Meta-Analysis")
    (description
     "Derives the most frequent hierarchies along with their probability of
occurrence.  One can also define complex hierarchy criteria and calculate their
probability.  Methodology based on Papakonstantinou et al. (2021)
<DOI:10.21203/rs.3.rs-858140/v1>.")
    (license license:gpl3)))

(define-public r-nmaplateplot
  (package
    (name "r-nmaplateplot")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmaplateplot" version))
       (sha256
        (base32 "1k6i4d1n2cadhp1nzb7ij1d58wrgyhrqpwq1flixgkyrzz375z9g"))))
    (properties `((upstream-name . "nmaplateplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nmaplateplot")
    (synopsis "The Plate Plot for Network Meta-Analysis Results")
    (description
     "This package provides a graphical display of results from network meta-analysis
(NMA).  It is suitable for outcomes like odds ratio (OR), risk ratio (RR), risk
difference (RD) and standardized mean difference (SMD).  It also has an option
to visually display and compare the surface under the cumulative ranking (SUCRA)
of different treatments.")
    (license license:gpl2+)))

(define-public r-nmaoutlier
  (package
    (name "r-nmaoutlier")
    (version "0.1.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMAoutlier" version))
       (sha256
        (base32 "0h0pxjg6ppz9zv7wcv1dka5g0f9wxk3bnwicfpsv1advcam4vmmn"))))
    (properties `((upstream-name . "NMAoutlier")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-netmeta
                             r-meta
                             r-mass
                             r-gridextra
                             r-ggplot2))
    (home-page "https://github.com/petropouloumaria/NMAoutlier")
    (synopsis "Detecting Outliers in Network Meta-Analysis")
    (description
     "This package provides a set of functions providing several outlier (i.e.,
studies with extreme findings) and influential detection measures and
methodologies in network meta-analysis : - simple outlier and influential
detection measures - outlier and influential detection measures by considering
study deletion (shift the mean) - plots for outlier and influential detection
measures - Q-Q plot for network meta-analysis - Forward Search algorithm in
network meta-analysis. - forward plots to monitor statistics in each step of the
forward search algorithm - forward plots for summary estimates and their
confidence intervals in each step of forward search algorithm.")
    (license license:gpl2+)))

(define-public r-nmainla
  (package
    (name "r-nmainla")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmaINLA" version))
       (sha256
        (base32 "1qjb5n1qr89rv2a5ay2p74cs3i6swkn8wllklgn57fnahb9pcrgi"))))
    (properties `((upstream-name . "nmaINLA")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gunhanb/nmaINLA")
    (synopsis
     "Network Meta-Analysis using Integrated Nested Laplace Approximations")
    (description
     "This package performs network meta-analysis using integrated nested Laplace
approximations ('INLA') which is described in Guenhan, Held, and Friede (2018)
<doi:10.1002/jrsm.1285>.  Includes methods to assess the heterogeneity and
inconsistency in the network.  Contains more than ten different network
meta-analysis dataset.  INLA package can be obtained from
<https://www.r-inla.org>.")
    (license license:gpl2+)))

(define-public r-nmadiagt
  (package
    (name "r-nmadiagt")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMADiagT" version))
       (sha256
        (base32 "0fskc3ldfdl17gazpfr2hixy79n7db4c1f5yl1jalhwxiabnxjwp"))))
    (properties `((upstream-name . "NMADiagT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags
                             r-reshape2
                             r-rdpack
                             r-plotrix
                             r-mcmcpack
                             r-mass
                             r-ks
                             r-imgur
                             r-ggplot2
                             r-coda))
    (home-page "https://cran.r-project.org/package=NMADiagT")
    (synopsis "Network Meta-Analysis of Multiple Diagnostic Tests")
    (description
     "This package implements HSROC (hierarchical summary receiver operating
characteristic) model developed by Ma, Lian, Chu, Ibrahim, and Chen (2018)
<doi:10.1093/biostatistics/kxx025> and hierarchical model developed by Lian,
Hodges, and Chu (2019) <doi:10.1080/01621459.2018.1476239> for performing
meta-analysis for 1-5 diagnostic tests to simultaneously compare multiple tests
within a missing data framework.  This package evaluates the accuracy of
multiple diagnostic tests and also gives graphical representation of the
results.")
    (license license:gpl2+)))

(define-public r-nmadb
  (package
    (name "r-nmadb")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nmadb" version))
       (sha256
        (base32 "17r5vc57ilhy6cfcqpfyp9nzzjaa5gc8qkgfn3y8sppqh1g1mi40"))))
    (properties `((upstream-name . "nmadb")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-rcurl r-jsonlite r-devtools))
    (home-page "https://cran.r-project.org/package=nmadb")
    (synopsis "Network Meta-Analysis Database API")
    (description
     "Set of functions for accessing database of network meta-analyses described in
Petropoulou M, et al.  Bibliographic study showed improving statistical
methodology of network meta-analyses published between 1999 and 2015
<doi:10.1016/j.jclinepi.2016.11.002>.  The database is hosted in a REDcap
database at the Institute of Social and Preventive Medicine (ISPM) in the
University of Bern.")
    (license license:gpl3)))

(define-public r-nma
  (package
    (name "r-nma")
    (version "1.3-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NMA" version))
       (sha256
        (base32 "037a6m7lg1k4pjcrad4p4vcjx82v1r1j5yh1kncx95wgf441jmr4"))))
    (properties `((upstream-name . "NMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-metafor r-mass r-ggplot2 r-forestplot))
    (home-page "https://cran.r-project.org/package=NMA")
    (synopsis
     "Network Meta-Analysis Based on Multivariate Meta-Analysis Models")
    (description
     "Network meta-analysis tools based on contrast-based approach using the
multivariate meta-analysis and meta-regression models (Noma et al. (2023)
<Forthcoming>).  Standard analysis tools for network meta-analysis and
meta-regression (e.g., synthesis analysis, ranking analysis, and creating league
table) are available by simple commands.  For inconsistency analyses, the local
and global inconsistency tests based on the Higgins design-by-treatment
interaction model can be applied.  Also, the side-splitting and the Jackson's
random inconsistency model are available.  Standard graphical tools for network
meta-analysis (e.g., network plot, ranked forest plot, and transitivity
analysis) can also be utilized.  For the synthesis analyses, the Noma-Hamura's
improved REML (restricted maximum likelihood)-based methods (Noma et al. (2023)
<doi:10.1002/jrsm.1652> <doi:10.1002/jrsm.1651>) are adopted as the default
methods.")
    (license license:gpl3)))

(define-public r-nlwaldtest
  (package
    (name "r-nlwaldtest")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlWaldTest" version))
       (sha256
        (base32 "1cppdz8qvigjdz4sgr1gm2j09zi407xxmryc28zc7ps7rvgy344h"))))
    (properties `((upstream-name . "nlWaldTest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nlWaldTest")
    (synopsis "Wald Test of Nonlinear Restrictions and Nonlinear CI")
    (description
     "Wald Test for nonlinear restrictions on model parameters and confidence
intervals for nonlinear functions of parameters using delta-method.  Applicable
after ANY model, provided parameters estimates and their covariance matrix are
available.")
    (license license:gpl2+)))

(define-public r-nltt
  (package
    (name "r-nltt")
    (version "1.4.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nLTT" version))
       (sha256
        (base32 "1h87iwzy988jx1i70nxv24c3gjirrga5c3fw5al86m7qr1nz4sps"))))
    (properties `((upstream-name . "nLTT")))
    (build-system r-build-system)
    (propagated-inputs (list r-testit r-coda r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thijsjanzen/nLTT")
    (synopsis "Calculate the NLTT Statistic")
    (description
     "This package provides functions to calculate the normalised Lineage-Through-
Time (@code{nLTT}) statistic, given two phylogenetic trees.  The @code{nLTT}
statistic measures the difference between two Lineage-Through-Time curves, where
each curve is normalised both in time and in number of lineages.")
    (license license:gpl2)))

(define-public r-nlts
  (package
    (name "r-nlts")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlts" version))
       (sha256
        (base32 "0s49qjwavl9ns2746nn4zy4h4dh0njfcvznm3qd61qhs7np9w1db"))))
    (properties `((upstream-name . "nlts")))
    (build-system r-build-system)
    (propagated-inputs (list r-locfit r-acepack))
    (home-page "http://ento.psu.edu/directory/onb1")
    (synopsis "Nonlinear Time Series Analysis")
    (description
     "R functions for (non)linear time series analysis with an emphasis on
nonparametric autoregression and order estimation, and tests for linearity /
additivity.")
    (license license:gpl3)))

(define-public r-nltm
  (package
    (name "r-nltm")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nltm" version))
       (sha256
        (base32 "0ps6rl0yafg8ajwfk3iqbgjngq354bfbys619p5c94i498bigwcf"))))
    (properties `((upstream-name . "nltm")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://github.com/mclements/nltm")
    (synopsis "Non-Linear Transformation Models")
    (description
     "Fits a non-linear transformation model ('nltm') for analyzing survival data, see
Tsodikov (2003) <doi:10.1111/1467-9868.00414>.  The class of nltm includes the
following currently supported models: Cox proportional hazard, proportional
hazard cure, proportional odds, proportional hazard - proportional hazard cure,
proportional hazard - proportional odds cure, Gamma frailty, and proportional
hazard - proportional odds.")
    (license license:gpl2)))

(define-public r-nlt
  (package
    (name "r-nlt")
    (version "2.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlt" version))
       (sha256
        (base32 "10wf00qzf28dxjfvv12wsqxlfn6xz15wk8njrzgsgm9px1g6s21f"))))
    (properties `((upstream-name . "nlt")))
    (build-system r-build-system)
    (propagated-inputs (list r-ebayesthresh r-adlift))
    (home-page "https://cran.r-project.org/package=nlt")
    (synopsis "Nondecimated Lifting Transform for Signal Denoising")
    (description
     "Uses a modified lifting algorithm on which it builds the nondecimated lifting
transform.  It has applications in wavelet shrinkage.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nlsylinks
  (package
    (name "r-nlsylinks")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NlsyLinks" version))
       (sha256
        (base32 "19w7jgvdz77lmwks0a4icrkarjfnwx6bcjkj4ss90zjs7nsfyafb"))))
    (properties `((upstream-name . "NlsyLinks")))
    (build-system r-build-system)
    (propagated-inputs (list r-lavaan))
    (native-inputs (list r-knitr))
    (home-page "https://nlsy-links.github.io/NlsyLinks/")
    (synopsis "Utilities and Kinship Information for Research with the NLSY")
    (description
     "Utilities and kinship information for behavior genetics and developmental
research using the National Longitudinal Survey of Youth (NLSY;
<https://www.nlsinfo.org/>).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nlstools
  (package
    (name "r-nlstools")
    (version "2.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlstools" version))
       (sha256
        (base32 "1pbsdmg1gaf0v0w5ij75l381f8h91dnc7vlbl8za3aws1cxhjaw5"))))
    (properties `((upstream-name . "nlstools")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aursiber/nlstools")
    (synopsis "Tools for Nonlinear Regression Analysis")
    (description
     "Several tools for assessing the quality of fit of a gaussian nonlinear model are
provided.")
    (license license:gpl3)))

(define-public r-nlstac
  (package
    (name "r-nlstac")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlstac" version))
       (sha256
        (base32 "0q62bnwdnw4jjzj1gk74il4k5bc2lvaixckaqdqk9q4rkyx6p0z5"))))
    (properties `((upstream-name . "nlstac")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-foreach r-deriv))
    (home-page "https://cran.r-project.org/package=nlstac")
    (synopsis "An R Package for Fitting Separable Nonlinear Models")
    (description
     "Set of functions implementing the algorithm described in Fernandez Torvisco et
al. (2018) for fitting separable nonlinear regression curves.  See Fernandez
Torvisco, Rodriguez-Arias Fernandez and Cabello Sanchez (2018)
<doi:10.2298/FIL1812233T>.")
    (license license:gpl3)))

(define-public r-nlsr
  (package
    (name "r-nlsr")
    (version "2023.8.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlsr" version))
       (sha256
        (base32 "0df3q1lmqy9abbfqxffssy0vkaizsmfqyr8fx88a2id4dbj5j6xl"))))
    (properties `((upstream-name . "nlsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nlsr")
    (synopsis "Functions for Nonlinear Least Squares Solutions - Updated 2022")
    (description
     "This package provides tools for working with nonlinear least squares problems.
For the estimation of models reliable and robust tools than nls(), where the the
Gauss-Newton method frequently stops with singular gradient messages.  This is
accomplished by using, where possible, analytic derivatives to compute the
matrix of derivatives and a stabilization of the solution of the estimation
equations.  Tools for approximate or externally supplied derivative matrices are
included.  Bounds and masks on parameters are handled properly.")
    (license license:gpl2)))

(define-public r-nlsmsn
  (package
    (name "r-nlsmsn")
    (version "0.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlsmsn" version))
       (sha256
        (base32 "1wrqfmsb3l4bsdncyjl7hh3vwj9s6l43p7klww6f4k21asvh4p5s"))))
    (properties `((upstream-name . "nlsmsn")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nlsmsn")
    (synopsis
     "Fitting Nonlinear Models with Scale Mixture of Skew-Normal Distributions")
    (description
     "Fit univariate non-linear scale mixture of skew-normal(NL-SMSN) regression,
details in Garay, Lachos and Abanto-Valle (2011)
<doi:10.1016/j.jkss.2010.08.003> and Lachos, Bandyopadhyay and Garay (2011)
<doi:10.1016/j.spl.2011.03.019>.")
    (license license:gpl3+)))

(define-public r-nlsmicrobio
  (package
    (name "r-nlsmicrobio")
    (version "0.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlsMicrobio" version))
       (sha256
        (base32 "0vn0yv1h8idv91g7qhx8qfyvsvw4rbx7i8r8kfv13d40j1w4cfab"))))
    (properties `((upstream-name . "nlsMicrobio")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlstools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nlsMicrobio")
    (synopsis "Nonlinear Regression in Predictive Microbiology")
    (description
     "Data sets and nonlinear regression models dedicated to predictive microbiology.")
    (license license:gpl3)))

(define-public r-nlsic
  (package
    (name "r-nlsic")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlsic" version))
       (sha256
        (base32 "02xvmzq1yv8bz6wksx4nck9ljxkprsn8xk39chjilir6jddkh6fq"))))
    (properties `((upstream-name . "nlsic")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnls))
    (home-page "https://github.com/MathsCell/nlsic")
    (synopsis "Non Linear Least Squares with Inequality Constraints")
    (description
     "We solve non linear least squares problems with optional equality and/or
inequality constraints.  Non linear iterations are globalized with back-tracking
method.  Linear problems are solved by dense QR decomposition from LAPACK which
can limit the size of treated problems.  On the other side, we avoid condition
number degradation which happens in classical quadratic programming approach.
Inequality constraints treatment on each non linear iteration is based on NNLS
method (by Lawson and Hanson).  We provide an original function lsi_ln for
solving linear least squares problem with inequality constraints in least norm
sens.  Thus if Jacobian of the problem is rank deficient a solution still can be
provided.  However, truncation errors are probable in this case.  Equality
constraints are treated by using a basis of Null-space.  User defined function
calculating residuals must return a list having residual vector (not their
squared sum) and Jacobian.  If Jacobian is not in the returned list, package
@code{numDeriv} is used to calculated finite difference version of Jacobian.
The NLSIC method was fist published in Sokol et al. (2012)
<doi:10.1093/bioinformatics/btr716>.")
    (license license:gpl2)))

(define-public r-nlshrink
  (package
    (name "r-nlshrink")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlshrink" version))
       (sha256
        (base32 "0adnr7g3n3brwlvyix8wa7h59gj036l5anv8abqy80ysmfcmsp0y"))))
    (properties `((upstream-name . "nlshrink")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr r-mass))
    (home-page "https://cran.r-project.org/package=nlshrink")
    (synopsis
     "Non-Linear Shrinkage Estimation of Population Eigenvalues and Covariance Matrices")
    (description
     "Non-linear shrinkage estimation of population eigenvalues and covariance
matrices, based on publications by Ledoit and Wolf (2004, 2015, 2016).")
    (license license:gpl3)))

(define-public r-nlshelper
  (package
    (name "r-nlshelper")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlshelper" version))
       (sha256
        (base32 "02xnx0j8p1im1hdwnia3n51dicscjf8s33y475i3dczvhmivvbmf"))))
    (properties `((upstream-name . "nlshelper")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-mgcv r-magicaxis r-dplyr r-broom))
    (home-page "https://cran.r-project.org/package=nlshelper")
    (synopsis "Convenient Functions for Non-Linear Regression")
    (description
     "This package provides a few utilities for summarizing, testing, and plotting
non-linear regression models fit with nls(), @code{nlsList}() or nlme().")
    (license license:gpl2)))

(define-public r-nlsem
  (package
    (name "r-nlsem")
    (version "0.8-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlsem" version))
       (sha256
        (base32 "0xw32bpd2snxyxl90sjdn5c0447jq9s6c58vxq40prg738mfqx06"))))
    (properties `((upstream-name . "nlsem")))
    (build-system r-build-system)
    (propagated-inputs (list r-orthopolynom r-nlme r-mvtnorm r-lavaan
                             r-gaussquad))
    (home-page "https://github.com/nwickel/nlsem")
    (synopsis "Fitting Structural Equation Mixture Models")
    (description
     "Estimation of structural equation models with nonlinear effects and underlying
nonnormal distributions.")
    (license license:gpl2+)))

(define-public r-nls2
  (package
    (name "r-nls2")
    (version "0.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nls2" version))
       (sha256
        (base32 "05miqxfpg29jpf1p3bi347w5565bd3cih8dpvnc3p0i0hcbzmlkl"))))
    (properties `((upstream-name . "nls2")))
    (build-system r-build-system)
    (propagated-inputs (list r-proto))
    (home-page "https://github.com/ggrothendieck/nls2")
    (synopsis "Non-Linear Regression with Brute Force")
    (description "Adds brute force and multiple starting values to nls.")
    (license license:gpl2)))

(define-public r-nls-multstart
  (package
    (name "r-nls-multstart")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nls.multstart" version))
       (sha256
        (base32 "1fv6zw87n6fkblfn8q5mj957j9gx0qgjnkpypjdlircafb849gkf"))))
    (properties `((upstream-name . "nls.multstart")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-purrr r-minpack-lm r-dplyr))
    (home-page "https://cran.r-project.org/package=nls.multstart")
    (synopsis "Robust Non-Linear Regression using AIC Scores")
    (description
     "Non-linear least squares regression with the Levenberg-Marquardt algorithm using
multiple starting values for increasing the chance that the minimum found is the
global minimum.")
    (license license:gpl3)))

(define-public r-nlrx
  (package
    (name "r-nlrx")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlrx" version))
       (sha256
        (base32 "1ki8jhaa6ngqk046p61ssi0q9bskvc7vlz9j3d5ax0n118j5gx2q"))))
    (properties `((upstream-name . "nlrx")))
    (build-system r-build-system)
    (inputs (list udunits
                  proj.4
                  pandoc
                  openssl
                  openjdk
                  libxml2
                  geos
                  gdal))
    (propagated-inputs (list r-xml
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-sensitivity
                             r-rstudioapi
                             r-readr
                             r-raster
                             r-purrr
                             r-progressr
                             r-magrittr
                             r-lhs
                             r-igraph
                             r-gensa
                             r-genalg
                             r-furrr
                             r-easyabc
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/nlrx/")
    (synopsis
     "Setup, Run and Analyze 'NetLogo' Model Simulations from 'R' via 'XML'")
    (description
     "Setup, run and analyze @code{NetLogo} (<https://ccl.northwestern.edu/netlogo/>)
model simulations in R'.  nlrx experiments use a similar structure as
@code{NetLogos} Behavior Space experiments.  However, nlrx offers more
flexibility and additional tools for running and analyzing complex simulation
designs and sensitivity analyses.  The user defines all information that is
needed in an intuitive framework, using class objects.  Experiments are
submitted from R to @code{NetLogo} via XML files that are dynamically written,
based on specifications defined by the user.  By nesting model calls in future
environments, large simulation design with many runs can be executed in
parallel.  This also enables simulating @code{NetLogo} experiments on remote
high performance computing machines.  In order to use this package, Java and
@code{NetLogo} (>= 5.3.1) need to be available on the executing system.")
    (license license:gpl3)))

(define-public r-nlrr
  (package
    (name "r-nlrr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlrr" version))
       (sha256
        (base32 "09wm8s5sadkhkq9pb3fjk66cb2xn8py46w1d7yp7fjhczh31bjsq"))))
    (properties `((upstream-name . "nlrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-hmisc))
    (home-page "https://cran.r-project.org/package=nlrr")
    (synopsis "Non-Linear Relative Risk Estimation and Plotting")
    (description
     "Estimate the non-linear odds ratio and plot it against a continuous exposure.")
    (license license:gpl2+)))

(define-public r-nlroot
  (package
    (name "r-nlroot")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NLRoot" version))
       (sha256
        (base32 "1x8mcdgqqrhyykr12bv4hl4wbh1zw2qgpnd2yrm68kb92iy95rh4"))))
    (properties `((upstream-name . "NLRoot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NLRoot")
    (synopsis "searching for the root of equation")
    (description
     "This is a package which can help you search for the root of a equation.")
    (license license:gpl2+)))

(define-public r-nlreg
  (package
    (name "r-nlreg")
    (version "1.2-2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlreg" version))
       (sha256
        (base32 "0gkcxg5m287axhvkl00xy26vidawhhb1ii1s13rh49v0yccwvvqh"))))
    (properties `((upstream-name . "nlreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod))
    (home-page "https://www.r-project.org")
    (synopsis "Higher Order Inference for Nonlinear Heteroscedastic Models")
    (description
     "Likelihood inference based on higher order approximations for nonlinear models
with possibly non constant variance.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file LICENCE")))))

(define-public r-nlraa
  (package
    (name "r-nlraa")
    (version "1.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlraa" version))
       (sha256
        (base32 "0bwlx9hv8a2a6220lsvwlgn0jwq9r3mbn095gffk5s6g80lgmm8r"))))
    (properties `((upstream-name . "nlraa")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme
                             r-mgcv
                             r-matrix
                             r-mass
                             r-knitr
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nlraa")
    (synopsis "Nonlinear Regression for Agricultural Applications")
    (description
     "Additional nonlinear regression functions using self-start (SS) algorithms.  One
of the functions is the Beta growth function proposed by Yin et al. (2003)
<doi:10.1093/aob/mcg029>.  There are several other functions with breakpoints
(e.g. linear-plateau, plateau-linear, exponential-plateau, plateau-exponential,
quadratic-plateau, plateau-quadratic and bilinear), a non-rectangular hyperbola
and a bell-shaped curve.  Twenty eight (28) new self-start (SS) functions in
total.  This package also supports the publication Nonlinear regression Models
and applications in agricultural research by Archontoulis and Miguez (2015)
<doi:10.2134/agronj2012.0506>, a book chapter with similar material
<doi:10.2134/appliedstatistics.2016.0003.c15> and a publication by Oddi et.  al.
(2019) in Ecology and Evolution <doi:10.1002/ece3.5543>.  The function
@code{nlsLMList} uses @code{nlsLM} for fitting, but it is otherwise almost
identical to nlme::@code{nlsList'.In} addition, this release of the package
provides functions for conducting simulations for nlme and gnls objects as well
as bootstrapping.  These functions are intended to work with the modeling
framework of the nlme package.  It also provides four vignettes with extended
examples.")
    (license license:gpl3)))

(define-public r-nlputils
  (package
    (name "r-nlputils")
    (version "0.0-5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NLPutils" version))
       (sha256
        (base32 "1ca7cqfjzrhn0idgw8viqlr2w4lkzng64bqk8hvd08qm7bgg5vjl"))))
    (properties `((upstream-name . "NLPutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowballc r-qdap r-nlp))
    (home-page "https://cran.r-project.org/package=NLPutils")
    (synopsis "Natural Language Processing Utilities")
    (description "Utilities for Natural Language Processing.")
    (license license:gpl2)))

(define-public r-nlpsem
  (package
    (name "r-nlpsem")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlpsem" version))
       (sha256
        (base32 "0i6skpmnbi99dkcdam61rq5rfk6wv41q0r1q357qm66wbqyj30fr"))))
    (properties `((upstream-name . "nlpsem")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-readr
                             r-openmx
                             r-nnet
                             r-matrix
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Veronica0206/nlpsem")
    (synopsis
     "Linear and Nonlinear Longitudinal Process in Structural Equation Modeling Framework")
    (description
     "This package provides computational tools for nonlinear longitudinal models, in
particular the intrinsically nonlinear models, in four scenarios: (1) univariate
longitudinal processes with growth factors, with or without covariates including
time-invariant covariates (TICs) and time-varying covariates (TVCs); (2)
multivariate longitudinal processes that facilitate the assessment of
correlation or causation between multiple longitudinal variables; (3)
multiple-group models for scenarios (1) and (2) to evaluate differences among
manifested groups, and (4) longitudinal mixture models for scenarios (1) and
(2), with an assumption that trajectories are from multiple latent classes.  The
methods implemented are introduced in Jin Liu (2023)
<@code{arXiv:2302.03237v2>}.")
    (license license:gpl3+)))

(define-public r-nlpred
  (package
    (name "r-nlpred")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlpred" version))
       (sha256
        (base32 "05jna8hzd5v36a0dwag6zr8ms1pkryas3qarwb946bkxlslffp27"))))
    (properties `((upstream-name . "nlpred")))
    (build-system r-build-system)
    (propagated-inputs (list r-superlearner
                             r-rocr
                             r-rdpack
                             r-np
                             r-data-table
                             r-cvauc
                             r-bde
                             r-assertthat))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=nlpred")
    (synopsis
     "Estimators of Non-Linear Cross-Validated Risks Optimized for Small Samples")
    (description
     "This package provides methods for obtaining improved estimates of non-linear
cross-validated risks are obtained using targeted minimum loss-based estimation,
estimating equations, and one-step estimation (Benkeser, Petersen, van der Laan
(2019), <doi:10.1080/01621459.2019.1668794>).  Cross-validated area under the
receiver operating characteristics curve (@code{LeDell}, Petersen, van der Laan
(2015), <doi:10.1214/15-EJS1035>) and other metrics are included.")
    (license license:expat)))

(define-public r-nlpclient
  (package
    (name "r-nlpclient")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NLPclient" version))
       (sha256
        (base32 "0jhlz9mqziyk5574vl8qjjs4g75x27rlk90wvzm3q9kjrjyvad35"))))
    (properties `((upstream-name . "NLPclient")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-nlp r-curl))
    (home-page "https://cran.r-project.org/package=NLPclient")
    (synopsis "Stanford 'CoreNLP' Annotation Client")
    (description
     "Stanford @code{CoreNLP} annotation client.  Stanford @code{CoreNLP}
<https://stanfordnlp.github.io/@code{CoreNLP/index.html>} integrates all NLP
tools from the Stanford Natural Language Processing Group, including a
part-of-speech (POS) tagger, a named entity recognizer (NER), a parser, and a
coreference resolution system, and provides model files for the analysis of
English.  More information can be found in the README.")
    (license license:gpl2)))

(define-public r-nlnet
  (package
    (name "r-nlnet")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlnet" version))
       (sha256
        (base32 "13lv4b6chsjrhimny3wc1y9ljgbxmm1byj4j04n4vj8icn87gyfd"))))
    (properties `((upstream-name . "nlnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp
                             r-rocr
                             r-randomforest
                             r-igraph
                             r-fdrtool
                             r-earth
                             r-e1071
                             r-coin))
    (home-page "https://cran.r-project.org/package=nlnet")
    (synopsis
     "Nonlinear Network, Clustering, and Variable Selection Based on DCOL")
    (description
     "It includes four methods: DCOL-based K-profiles clustering, non-linear network
reconstruction, non-linear hierarchical clustering, and variable selection for
generalized additive model.  References: Tianwei Yu (2018)<DOI:
10.1002/sam.11381>; Haodong Liu and others (2016)<DOI:
10.1371/journal.pone.0158247>; Kai Wang and others (2015)<DOI:
10.1155/2015/918954>; Tianwei Yu and others (2010)<DOI: 10.1109/TCBB.2010.73>.")
    (license license:gpl2+)))

(define-public r-nlms
  (package
    (name "r-nlms")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlMS" version))
       (sha256
        (base32 "01ijg1bp3r0dg8ph7qpsx3hqzrrvfhbykml20hqchxk7c5n2w9wz"))))
    (properties `((upstream-name . "nlMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=nlMS")
    (synopsis "Non-Linear Model Selection")
    (description
     "Package to select best model among several linear and nonlinear models.  The
main function uses the gnls() function from the nlme package to fit the data to
nine regression models, named: \"linear\", \"quadratic\", \"cubic\", \"logistic\",
\"exponential\", \"power\", \"monod\", \"haldane\", \"logit\".")
    (license license:gpl3)))

(define-public r-nlmrt
  (package
    (name "r-nlmrt")
    (version "2016.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmrt" version))
       (sha256
        (base32 "1g0qq0a933ay65gkp04qgn2wqk6vw79pj2a228c2ski4rcmkjxyn"))))
    (properties `((upstream-name . "nlmrt")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nlmrt")
    (synopsis "Functions for Nonlinear Least Squares Solutions")
    (description
     "Replacement for nls() tools for working with nonlinear least squares problems.
The calling structure is similar to, but much simpler than, that of the nls()
function.  Moreover, where nls() specifically does NOT deal with small or zero
residual problems, nlmrt is quite happy to solve them.  It also attempts to be
more robust in finding solutions, thereby avoiding singular gradient messages
that arise in the Gauss-Newton method within nls().  The Marquardt-Nash approach
in nlmrt generally works more reliably to get a solution, though this may be one
of a set of possibilities, and may also be statistically unsatisfactory.  Added
print and summary as of August 28, 2012.")
    (license license:gpl2)))

(define-public r-nlmm
  (package
    (name "r-nlmm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmm" version))
       (sha256
        (base32 "0pmw3a8mqmdli2rx8pgmq8i5l045jvcdidx9a7pgcfyymv9sqfpv"))))
    (properties `((upstream-name . "nlmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-qtools
                             r-numderiv
                             r-nlme
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-lqmm
                             r-bh))
    (home-page "https://cran.r-project.org/package=nlmm")
    (synopsis "Generalized Laplace Mixed-Effects Models")
    (description
     "This package provides functions to fit linear mixed models based on convolutions
of the generalized Laplace (GL) distribution.  The GL mixed-effects model
includes four special cases with normal random effects and normal errors (NN),
normal random effects and Laplace errors (NL), Laplace random effects and normal
errors (LN), and Laplace random effects and Laplace errors (LL).  The methods
are described in Geraci and Farcomeni (2020, Statistical Methods in Medical
Research) <doi:10.1177/0962280220903763>.")
    (license license:gpl2+)))

(define-public r-nlmixr2rpt
  (package
    (name "r-nlmixr2rpt")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2rpt" version))
       (sha256
        (base32 "1lc7pmh97wggfms2in37f5bdrri914ninr58ah92215p3fxcqmls"))))
    (properties `((upstream-name . "nlmixr2rpt")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xpose-nlmixr2
                             r-xpose
                             r-stringr
                             r-rxode2
                             r-onbrand
                             r-nlmixr2extra
                             r-nlmixr2
                             r-ggpubr
                             r-ggplot2
                             r-ggforce
                             r-flextable
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://nlmixr2.github.io/nlmixr2rpt/")
    (synopsis
     "Templated Word and PowerPoint Reporting of 'nlmixr2' Fitting Results")
    (description
     "This allows you to generate reporting workflows around nlmixr2 analyses with
outputs in Word and @code{PowerPoint}.  You can specify figures, tables and
report structure in a user-definable YAML file.  Also you can use the internal
functions to access the figures and tables to allow their including in other
outputs (e.g. R Markdown).")
    (license license:gpl3+)))

(define-public r-nlmixr2plot
  (package
    (name "r-nlmixr2plot")
    (version "2.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2plot" version))
       (sha256
        (base32 "0bpb9pxdjpwg3kqldbmw8vlq2w843dgyv0q13265kbcpwqhqmnma"))))
    (properties `((upstream-name . "nlmixr2plot")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgxr
                             r-vpc
                             r-rxode2
                             r-nlmixr2extra
                             r-nlmixr2est
                             r-ggplot2))
    (home-page "https://github.com/nlmixr2/nlmixr2plot")
    (synopsis
     "Nonlinear Mixed Effects Models in Population PK/PD, Plot Functions")
    (description
     "Fit and compare nonlinear mixed-effects models in differential equations with
flexible dosing information commonly seen in pharmacokinetics and
pharmacodynamics (Almquist, Leander, and Jirstrand 2015
<doi:10.1007/s10928-015-9409-1>).  Differential equation solving is by compiled
C code provided in the rxode2 package (Wang, Hallow, and James 2015
<doi:10.1002/psp4.12052>).  This package is for ggplot2 plotting methods for
nlmixr2 objects.")
    (license license:gpl3+)))

(define-public r-nlmixr2lib
  (package
    (name "r-nlmixr2lib")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2lib" version))
       (sha256
        (base32 "1clar5nw77dc07q1l014ajc5avfdd2n82chdpbv1gcs2mfyrwr9r"))))
    (properties `((upstream-name . "nlmixr2lib")))
    (build-system r-build-system)
    (propagated-inputs (list r-rxode2 r-nlmixr2est r-cli r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nlmixr2/nlmixr2lib")
    (synopsis "Model Library for 'nlmixr2'")
    (description
     "This package provides a model library for nlmixr2'.  The models include (and
plan to include) pharmacokinetic, pharmacodynamic, and disease models used in
pharmacometrics.  Where applicable, references for each model are included in
the meta-data for each individual model.  The package also includes model
composition and modification functions to make model updates easier.")
    (license license:gpl2+)))

(define-public r-nlmixr2extra
  (package
    (name "r-nlmixr2extra")
    (version "2.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2extra" version))
       (sha256
        (base32 "1sxbkqwhj6lg49c3ah4kylvak1lgj2was6mqsh82klvp72fd61fd"))))
    (properties `((upstream-name . "nlmixr2extra")))
    (build-system r-build-system)
    (propagated-inputs (list r-symengine
                             r-rxode2
                             r-rcpparmadillo
                             r-rcpp
                             r-nlmixr2est
                             r-nlme
                             r-lotri
                             r-ggtext
                             r-ggplot2
                             r-digest
                             r-data-table
                             r-crayon
                             r-cli
                             r-checkmate))
    (home-page "https://nlmixr2.github.io/nlmixr2extra/")
    (synopsis
     "Nonlinear Mixed Effects Models in Population PK/PD, Extra Support Functions")
    (description
     "Fit and compare nonlinear mixed-effects models in differential equations with
flexible dosing information commonly seen in pharmacokinetics and
pharmacodynamics (Almquist, Leander, and Jirstrand 2015
<doi:10.1007/s10928-015-9409-1>).  Differential equation solving is by compiled
C code provided in the rxode2 package (Wang, Hallow, and James 2015
<doi:10.1002/psp4.12052>).  This package is for support functions like
preconditioned fits <doi:10.1208/s12248-016-9866-5>, boostrap and stepwise
covariate selection.")
    (license license:gpl3+)))

(define-public r-nlmixr2est
  (package
    (name "r-nlmixr2est")
    (version "2.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2est" version))
       (sha256
        (base32 "1lxlma1yij9mnycgsbqdz6mp5fvvjs69x198gs1qdg12g5n2wb5x"))))
    (properties `((upstream-name . "nlmixr2est")))
    (build-system r-build-system)
    (propagated-inputs (list r-symengine
                             r-rxode2random
                             r-rxode2parse
                             r-rxode2
                             r-rex
                             r-rcpparmadillo
                             r-rcpp
                             r-nlmixr2data
                             r-nlme
                             r-n1qn1
                             r-minqa
                             r-matrix
                             r-magrittr
                             r-lotri
                             r-lbfgsb3c
                             r-knitr
                             r-cli
                             r-checkmate
                             r-bh
                             r-backports))
    (home-page "https://github.com/nlmixr2/nlmixr2est")
    (synopsis
     "Nonlinear Mixed Effects Models in Population PK/PD, Estimation Routines")
    (description
     "Fit and compare nonlinear mixed-effects models in differential equations with
flexible dosing information commonly seen in pharmacokinetics and
pharmacodynamics (Almquist, Leander, and Jirstrand 2015
<doi:10.1007/s10928-015-9409-1>).  Differential equation solving is by compiled
C code provided in the rxode2 package (Wang, Hallow, and James 2015
<doi:10.1002/psp4.12052>).")
    (license license:gpl3+)))

(define-public r-nlmixr2data
  (package
    (name "r-nlmixr2data")
    (version "2.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2data" version))
       (sha256
        (base32 "1szf14wda6gagp32qm3w7dv5yyk91vs105q69b29x6nc6zi1zkxv"))))
    (properties `((upstream-name . "nlmixr2data")))
    (build-system r-build-system)
    (home-page "https://nlmixr2.github.io/nlmixr2data/")
    (synopsis "Nonlinear Mixed Effects Models in Population PK/PD, Data")
    (description
     "Datasets for nlmixr2 and rxode2'.  nlmixr2 is used for fitting and comparing
nonlinear mixed-effects models in differential equations with flexible dosing
information commonly seen in pharmacokinetics and pharmacodynamics (Almquist,
Leander, and Jirstrand 2015 <doi:10.1007/s10928-015-9409-1>).  Differential
equation solving is by compiled C code provided in the rxode2 package (Wang,
Hallow, and James 2015 <doi:10.1002/psp4.12052>).")
    (license license:gpl3+)))

(define-public r-nlmixr2
  (package
    (name "r-nlmixr2")
    (version "2.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmixr2" version))
       (sha256
        (base32 "1mfbm053jkmqkg7hdvzczpfx35r9xc6113vxl20561pk2zxh9fq7"))))
    (properties `((upstream-name . "nlmixr2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rxode2
                             r-nlmixr2plot
                             r-nlmixr2extra
                             r-nlmixr2est
                             r-nlmixr2data
                             r-magrittr
                             r-lotri
                             r-crayon
                             r-cli))
    (home-page "https://nlmixr2.org/")
    (synopsis "Nonlinear Mixed Effects Models in Population PK/PD")
    (description
     "Fit and compare nonlinear mixed-effects models in differential equations with
flexible dosing information commonly seen in pharmacokinetics and
pharmacodynamics (Almquist, Leander, and Jirstrand 2015
<doi:10.1007/s10928-015-9409-1>).  Differential equation solving is by compiled
C code provided in the rxode2 package (Wang, Hallow, and James 2015
<doi:10.1002/psp4.12052>).")
    (license license:gpl3+)))

(define-public r-nlmevpc
  (package
    (name "r-nlmevpc")
    (version "2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmeVPC" version))
       (sha256
        (base32 "0ymiif377c6rjplzvs3s4bgc62ymw2l3cigx8rh779blb0w90qf8"))))
    (properties `((upstream-name . "nlmeVPC")))
    (build-system r-build-system)
    (propagated-inputs (list r-timedate
                             r-rcpparmadillo
                             r-rcpp
                             r-quantreg
                             r-optimx
                             r-hmisc
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=nlmeVPC")
    (synopsis "Visual Model Checking for Nonlinear Mixed Effect Model")
    (description
     "Various visual and numerical diagnosis methods for the nonlinear mixed effect
model, including visual predictive checks, numerical predictive checks, and
coverage plots (Karlsson and Holford, 2008,
<https://www.page-meeting.org/?abstract=1434>).")
    (license license:expat)))

(define-public r-nlmeu
  (package
    (name "r-nlmeu")
    (version "0.70-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlmeU" version))
       (sha256
        (base32 "10vk098mv8h9hv6cn8sih2fmg9cjsqmvndqzqm8bbaahla1v6n7q"))))
    (properties `((upstream-name . "nlmeU")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "http://www-personal.umich.edu/~agalecki/")
    (synopsis
     "Datasets and Utility Functions Enhancing Functionality of 'nlme' Package")
    (description
     "Datasets and utility functions enhancing functionality of nlme package.
Datasets, functions and scripts are described in book titled Linear
Mixed-Effects Models: A Step-by-Step Approach by Galecki and Burzykowski (2013).
 Package is under development.")
    (license license:gpl2+)))

(define-public r-nlive
  (package
    (name "r-nlive")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlive" version))
       (sha256
        (base32 "03nxazkb0ndriafh28dfqmyrzcpxa0fqflnlpbkjaa83g4im75j3"))))
    (properties `((upstream-name . "nlive")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf
                             r-sitar
                             r-saemix
                             r-rmisc
                             r-nlraa
                             r-lcmm
                             r-knitr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/MaudeWagner/nlive")
    (synopsis
     "Automated Estimation of Sigmoidal and Piecewise Linear Mixed Models")
    (description
     "Estimation of relatively complex nonlinear mixed-effects models, including the
Sigmoidal Mixed Model and the Piecewise Linear Mixed Model with abrupt or smooth
transition, through a single intuitive line of code and with automated
generation of starting values.")
    (license license:expat)))

(define-public r-nlist
  (package
    (name "r-nlist")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlist" version))
       (sha256
        (base32 "1wq7bp834c7cl37wbrgd9ars3mm0s5c3l3fxlrry728a27c27f9h"))))
    (properties `((upstream-name . "nlist")))
    (build-system r-build-system)
    (propagated-inputs (list r-universals
                             r-tibble
                             r-term
                             r-purrr
                             r-lifecycle
                             r-generics
                             r-extras
                             r-coda
                             r-chk
                             r-abind))
    (home-page "https://github.com/poissonconsulting/nlist")
    (synopsis "Lists of Numeric Atomic Objects")
    (description
     "Create and manipulate numeric list ('nlist') objects.  An nlist is an S3 list of
uniquely named numeric objects.  An numeric object is an integer or double
vector, matrix or array.  An nlists object is a S3 class list of nlist objects
with the same names, dimensionalities and typeofs.  Numeric list objects are of
interest because they are the raw data inputs for analytic engines such as
JAGS', STAN and TMB'.  Numeric lists objects, which are useful for storing
multiple realizations of of simulated data sets, can be converted to coda::mcmc
and coda::mcmc.list objects.")
    (license license:expat)))

(define-public r-nlints
  (package
    (name "r-nlints")
    (version "1.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NlinTS" version))
       (sha256
        (base32 "045gqsy9q64mh10swm9a1bh8jvr41rjks3024cc195lad6jhj441"))))
    (properties `((upstream-name . "NlinTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-rdpack r-rcpp))
    (home-page "https://cran.r-project.org/package=NlinTS")
    (synopsis "Models for Non Linear Causality Detection in Time Series")
    (description
     "Models for non-linear time series analysis and causality detection.  The main
functionalities of this package consist of an implementation of the classical
causality test (C.W.J.Granger 1980) <doi:10.1016/0165-1889(80)90069-X>, and a
non-linear version of it based on feed-forward neural networks.  This package
contains also an implementation of the Transfer Entropy
<doi:10.1103/@code{PhysRevLett.85.461>}, and the continuous Transfer Entropy
using an approximation based on the k-nearest neighbors
<doi:10.1103/@code{PhysRevE.69.066138>}.  There are also some other useful
tools, like the VARNN (Vector Auto-Regressive Neural Network) prediction model,
the Augmented test of stationarity, and the discrete and continuous entropy and
mutual information.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nlgm
  (package
    (name "r-nlgm")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlgm" version))
       (sha256
        (base32 "03byqqj8ayq7hbaab4cfrk0nbxmiiq2c2i98szfydzkimhrw922a"))))
    (properties `((upstream-name . "nlgm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast2 r-rfast r-ggplot2))
    (home-page "https://cran.r-project.org/package=nlgm")
    (synopsis "Non Linear Growth Models")
    (description
     "Six growth models are fitted using non-linear least squares.  These are the
Richards, the 3, 4 and 5 parameter logistic, the Gompetz and the Weibull growth
models.  Reference: Reddy T., Shkedy Z., van Rensburg C. J., Mwambi H., Debba
P., Zuma K. and Manda, S. (2021). \"Short-term real-time prediction of total
number of reported COVID-19 cases and deaths in South Africa: a data driven
approach\".  BMC medical research methodology, 21(1), 1-11.
<doi:10.1186/s12874-020-01165-x>.")
    (license license:gpl2+)))

(define-public r-nlcv
  (package
    (name "r-nlcv")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nlcv" version))
       (sha256
        (base32 "1ywnm8a13ifqa1bxnf659h1j6mg9iy02vaszyh9p966ps9c1pjab"))))
    (properties `((upstream-name . "nlcv")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-rocr
                             r-rcolorbrewer
                             r-randomforest
                             r-pamr
                             r-multtest
                             r-mlinterfaces
                             r-mass
                             r-limma
                             r-kernlab
                             r-ipred
                             r-e1071
                             r-biobase
                             r-a4core))
    (home-page "https://cran.r-project.org/package=nlcv")
    (synopsis "Nested Loop Cross Validation")
    (description
     "Nested loop cross validation for classification purposes for misclassification
error rate estimation.  The package supports several methodologies for feature
selection: random forest, Student t-test, limma, and provides an interface to
the following classification methods in the MLInterfaces package: linear,
quadratic discriminant analyses, random forest, bagging, prediction analysis for
microarray, generalized linear model, support vector machine (svm and ksvm).
Visualizations to assess the quality of the classifier are included: plot of the
ranks of the features, scores plot for a specific classification algorithm and
number of features, misclassification rate for the different number of features
and classification algorithms tested and ROC plot.  For further details about
the methodology, please check: Markus Ruschhaupt, Wolfgang Huber, Annemarie
Poustka, and Ulrich Mansmann (2004) <doi:10.2202/1544-6115.1078>.")
    (license license:gpl3)))

(define-public r-nlcoptim
  (package
    (name "r-nlcoptim")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NlcOptim" version))
       (sha256
        (base32 "121njnbfww6qijbc9x6prw35glyzm18di01qvvjn62z4kgq4f7vi"))))
    (properties `((upstream-name . "NlcOptim")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-mass))
    (home-page "https://cran.r-project.org/package=NlcOptim")
    (synopsis "Solve Nonlinear Optimization with Nonlinear Constraints")
    (description
     "Optimization for nonlinear objective and constraint functions.  Linear or
nonlinear equality and inequality constraints are allowed.  It accepts the input
parameters as a constrained matrix.")
    (license license:gpl3)))

(define-public r-njtr1
  (package
    (name "r-njtr1")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "njtr1" version))
       (sha256
        (base32 "1fyp9myzlx670xjpzxq4ivbl1qs7f3rz6n424ydp1ml994mz709a"))))
    (properties `((upstream-name . "njtr1")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-stringr
                             r-stringi
                             r-readr
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://gavinrozzi.github.io/njtr1/")
    (synopsis "Download, Analyze & Clean New Jersey Car Crash Data")
    (description
     "Download and analyze motor vehicle crash data released by the New Jersey
Department of Transportation (NJDOT).  The data in this package is collected
through the filing of NJTR-1 form by police officers, which provide a
standardized way of documenting a motor vehicle crash that occurred in New
Jersey.  3 different data tables containing data on crashes, vehicles &
pedestrians released from 2001 to the present can be downloaded & cleaned using
this package.")
    (license license:gpl3)))

(define-public r-njira
  (package
    (name "r-njira")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nJira" version))
       (sha256
        (base32 "0vh167kxljp68f0dx307wl6fp8nlp34vgrkr815z30mhx03p8j9r"))))
    (properties `((upstream-name . "nJira")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-plyr r-httr))
    (home-page "https://cran.r-project.org/package=nJira")
    (synopsis "SQL Like Query Interface for 'Jira'")
    (description
     "SQL like query interface to fetch data from any Jira installation.  The data is
fetched using Jira REST API, which can be found at the following URL:
<https://developer.atlassian.com/cloud/jira/platform/rest/v2>.")
    (license license:expat)))

(define-public r-njgeo
  (package
    (name "r-njgeo")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "njgeo" version))
       (sha256
        (base32 "1cc6gm0l5z31hqif2d8wd503pb48xsmyr28pbildkxgy9z022af5"))))
    (properties `((upstream-name . "njgeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-jsonlite r-httr r-dplyr r-curl))
    (home-page "https://cran.r-project.org/package=njgeo")
    (synopsis
     "Tools for Geocoding Addresses in New Jersey using the 'NJOGIS' API")
    (description
     "This package provides an R interface to free geocoding REST APIs maintained by
the New Jersey Office of GIS
<https://njgin.nj.gov/njgin/edata/geocoding/index.html#!/> and commonly used
shapefiles.")
    (license license:gpl3+)))

(define-public r-nixmass
  (package
    (name "r-nixmass")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nixmass" version))
       (sha256
        (base32 "0g8hm0mnbwahbnk44rfciiggxn5bscfni5gqc6y3za496cf9wlk1"))))
    (properties `((upstream-name . "nixmass")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-lubridate))
    (home-page "https://cran.r-project.org/package=nixmass")
    (synopsis
     "Snow Water Equivalent Modeling with the 'Delta.snow' Model and Empirical Regression Models")
    (description
     "Snow water equivalent is modeled with the process based delta.snow model and
empirical regression models using relationships between density and diverse
at-site parameters.  The methods are described in Winkler et al. (2021)
<doi:10.5194/hess-25-1165-2021>, Guyennon et al. (2019)
<doi:10.1016/j.coldregions.2019.102859>, Pistocchi (2016)
<doi:10.1016/j.ejrh.2016.03.004>, Jonas et al. (2009)
<doi:10.1016/j.jhydrol.2009.09.021> and Sturm et al. (2010)
<doi:10.1175/2010JHM1202.1>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-nivm
  (package
    (name "r-nivm")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nivm" version))
       (sha256
        (base32 "111jkgirgsl1j36xgwi81wzwxial3vdw8mqzi1faldxxd9a2cixm"))))
    (properties `((upstream-name . "nivm")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssanv r-bpcp))
    (home-page "https://cran.r-project.org/package=nivm")
    (synopsis "Noninferiority Tests with Variable Margins")
    (description
     "Noninferiority tests for difference in failure rates at a prespecified control
rate or prespecified time.")
    (license license:gpl3+)))

(define-public r-nitrogenuptake2016
  (package
    (name "r-nitrogenuptake2016")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NitrogenUptake2016" version))
       (sha256
        (base32 "13mh63z3x8yqd31v5a4d10bhzk4y67ac38flwk2msv7qcx37sny6"))))
    (properties `((upstream-name . "NitrogenUptake2016")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-mass r-car))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/troyhill/NitrogenUptake2016")
    (synopsis
     "Data and Source Code From: Nitrogen Uptake and Allocation Estimates for Spartina Alterniflora and Distichlis Spicata")
    (description
     "This package contains data, code, and figures from Hill et al.  2018a (Journal
of Experimental Marine Biology and Ecology; <DOI: 10.1016/j.jembe.2018.07.006>)
and Hill et al.  2018b (Data In Brief <DOI: 10.1016/j.dib.2018.09.133>).
Datasets document plant allometry, stem heights, nutrient and stable isotope
content, and sediment denitrification enzyme assays.  The data and analysis
offer an examination of nitrogen uptake and allocation in two salt marsh plant
species.")
    (license license:gpl3)))

(define-public r-nistunits
  (package
    (name "r-nistunits")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NISTunits" version))
       (sha256
        (base32 "0km9l3k9p35sb1qrhrz4ijjsdihvsp6j7cz5kh46lgf7nn6xdk7a"))))
    (properties `((upstream-name . "NISTunits")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NISTunits")
    (synopsis "Fundamental Physical Constants and Unit Conversions from NIST")
    (description
     "Fundamental physical constants (Quantity, Value, Uncertainty, Unit) for SI
(International System of Units) and non-SI units, plus unit conversions Based on
the data from NIST (National Institute of Standards and Technology, USA)")
    (license license:gpl3+)))

(define-public r-nistnls
  (package
    (name "r-nistnls")
    (version "0.9-13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NISTnls" version))
       (sha256
        (base32 "03a1c8a5dr5l5x4wbclnsh3vmx3dy7migfdzdx7d7p3s7hj3ibif"))))
    (properties `((upstream-name . "NISTnls")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NISTnls")
    (synopsis "Nonlinear least squares examples from NIST")
    (description "Datasets for testing nonlinear regression routines.")
    (license license:gpl2+)))

(define-public r-nirstat
  (package
    (name "r-nirstat")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NIRStat" version))
       (sha256
        (base32 "07l4ca7d9q840iy5a80sqafrlv20534jw65wzxs90j2d0jx4acs9"))))
    (properties `((upstream-name . "NIRStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-gridextra r-ggplot2))
    (home-page "https://cran.r-project.org/package=NIRStat")
    (synopsis
     "Novel Statistical Methods for Studying Near-Infrared Spectroscopy (NIRS) Time Series Data")
    (description
     "This package provides transfusion-related differential tests on Near-infrared
spectroscopy (NIRS) time series with detection limit, which contains two testing
statistics: Mean Area Under the Curve (MAUC) and slope statistic.  This package
applied a penalized spline method within imputation setting.  Testing is
conducted by a nested permutation approach within imputation.  Refer to Guo et
al (2018) <doi:10.1177/0962280218786302> for further details.")
    (license license:gpl2)))

(define-public r-nipter
  (package
    (name "r-nipter")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NIPTeR" version))
       (sha256
        (base32 "0ll6amqyw33a93xiccihidrnbaqlx1q7kqcd4wks7cvqawd8pgv1"))))
    (properties `((upstream-name . "NIPTeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sets r-s4vectors r-rsamtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NIPTeR")
    (synopsis
     "Fast and Accurate Trisomy Prediction in Non-Invasive Prenatal Testing")
    (description
     "Fast and Accurate Trisomy Prediction in Non-Invasive Prenatal Testing.")
    (license license:lgpl2.0+)))

(define-public r-nipponmap
  (package
    (name "r-nipponmap")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NipponMap" version))
       (sha256
        (base32 "0jk3zz05vhximbbm15h7ngb0ffxp5w8zhisifipkdgvg1hpi7pb7"))))
    (properties `((upstream-name . "NipponMap")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-sf))
    (home-page "https://cran.r-project.org/package=NipponMap")
    (synopsis "Japanese Map Data and Functions")
    (description
     "Digital map data of Japan for choropleth mapping, including a circle cartogram.")
    (license license:gpl2+)))

(define-public r-nipntk
  (package
    (name "r-nipntk")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nipnTK" version))
       (sha256
        (base32 "0imy2x1h9d842ssw7hmmh21c4mj7s6y05mmjin1270skbnrk2zmr"))))
    (properties `((upstream-name . "nipnTK")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-bbw))
    (native-inputs (list r-knitr))
    (home-page "https://nutriverse.io/nipnTK/")
    (synopsis
     "National Information Platforms for Nutrition Anthropometric Data Toolkit")
    (description
     "An implementation of the National Information Platforms for Nutrition or
@code{NiPN's} analytic methods for assessing quality of anthropometric datasets
that include measurements of weight, height or length, middle upper arm
circumference, sex and age.  The focus is on anthropometric status but many of
the presented methods could be applied to other variables.")
    (license license:gpl3)))

(define-public r-nipals
  (package
    (name "r-nipals")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nipals" version))
       (sha256
        (base32 "0nv7h68hysxnpiinmgw6v3bz4ya53c0p96k9bfvcmalfb7hs8j5z"))))
    (properties `((upstream-name . "nipals")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://kwstat.github.io/nipals/")
    (synopsis
     "Principal Components Analysis using NIPALS or Weighted EMPCA, with Gram-Schmidt Orthogonalization")
    (description
     "Principal Components Analysis of a matrix using Non-linear Iterative Partial
Least Squares or weighted Expectation Maximization PCA with Gram-Schmidt
orthogonalization of the scores and loadings.  Optimized for speed.  See
Andrecut (2009) <doi:10.1089/cmb.2008.0221>.")
    (license license:gpl3)))

(define-public r-nimblesmc
  (package
    (name "r-nimblesmc")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleSMC" version))
       (sha256
        (base32 "14ps01rphi31570m2qhmgpjhdn73aldhm5a20y6fqf3j24k86jys"))))
    (properties `((upstream-name . "nimbleSMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (home-page "https://r-nimble.org")
    (synopsis "Sequential Monte Carlo Methods for 'nimble'")
    (description
     "Includes five particle filtering algorithms for use with state space models in
the nimble system: Auxiliary', Bootstrap', Ensemble Kalman filter', Iterated
Filtering 2', and Liu-West', as described in Michaud et al. (2021),
<doi:10.18637/jss.v100.i03>.  A full User Manual is available at
<https://r-nimble.org>.")
    (license (list license:bsd-3 license:gpl2+))))

(define-public r-nimblescr
  (package
    (name "r-nimblescr")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleSCR" version))
       (sha256
        (base32 "1gyc93isivvq0b8fv4pb2g3mpr1n7jfpj9bs86a417iwbf34x4a4"))))
    (properties `((upstream-name . "nimbleSCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nimbleSCR")
    (synopsis "Spatial Capture-Recapture (SCR) Methods Using 'nimble'")
    (description
     "This package provides utility functions, distributions, and fitting methods for
Bayesian Spatial Capture-Recapture (SCR) and Open Population Spatial
Capture-Recapture (OPSCR) modelling using the nimble package (de Valpine et al.
2017 <doi:10.1080/10618600.2016.1172487 >).  Development of the package was
motivated primarily by the need for flexible and efficient analysis of
large-scale SCR data (Bischof et al.  2020 <doi:10.1073/pnas.2011383117 >).
Computational methods and techniques implemented in @code{nimbleSCR} include
those discussed in Turek et al.  2021 <doi:10.1002/ecs2.3385>; among others.
For a recent application of @code{nimbleSCR}, see Milleret et al. (2021)
<doi:10.1098/rsbl.2021.0128>.")
    (license license:gpl3)))

(define-public r-nimblenobounds
  (package
    (name "r-nimblenobounds")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleNoBounds" version))
       (sha256
        (base32 "1sbaj1ayvqn86av045h5n7rrlw5r3zyk1i6v5v9sjm3f9pxyffgw"))))
    (properties `((upstream-name . "nimbleNoBounds")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DRJP/nimbleNoBounds")
    (synopsis "Transformed Distributions for Improved MCMC Efficiency")
    (description
     "This package provides a collection of common univariate bounded probability
distributions transformed to the unbounded real line, for the purpose of
increased MCMC efficiency.")
    (license license:bsd-3)))

(define-public r-nimblehmc
  (package
    (name "r-nimblehmc")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleHMC" version))
       (sha256
        (base32 "09cnfnrm7f8zdih5f7d8zsxlr8bxhymk5cji812s658m2g8w9n6n"))))
    (properties `((upstream-name . "nimbleHMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (home-page "https://cran.r-project.org/package=nimbleHMC")
    (synopsis
     "Hamiltonian Monte Carlo and Other Gradient-Based MCMC Sampling Algorithms for 'nimble'")
    (description
     "This package provides gradient-based MCMC sampling algorithms for use with the
MCMC engine provided by the nimble package.  This includes two versions of
Hamiltonian Monte Carlo (HMC) No-U-Turn (NUTS) sampling, and (under development)
Langevin samplers.  The `NUTS_classic` sampler implements the original HMC-NUTS
algorithm as described in Hoffman and Gelman (2014) <@code{arXiv:1111.4246>}.
The `NUTS` sampler is a modern version of HMC-NUTS sampling matching the HMC
sampler available in version 2.32.2 of Stan (Stan Development Team, 2023).  In
addition, convenience functions are provided for generating and modifying MCMC
configuration objects which employ HMC sampling.")
    (license (list license:bsd-3 license:gpl2+))))

(define-public r-nimbleecology
  (package
    (name "r-nimbleecology")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleEcology" version))
       (sha256
        (base32 "1z4byxsana1fa2y7qhmiqbb8ana6zbas0cmbgcc703mqh1642jb2"))))
    (properties `((upstream-name . "nimbleEcology")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nimble-dev/nimbleEcology")
    (synopsis "Distributions for Ecological Models in 'nimble'")
    (description
     "Common ecological distributions for nimble models in the form of
@code{nimbleFunction} objects.  Includes Cormack-Jolly-Seber, occupancy, dynamic
occupancy, hidden Markov, dynamic hidden Markov, and N-mixture models. (Jolly
(1965) <DOI: 10.2307/2333826>, Seber (1965) <DOI: 10.2307/2333827>, Turek et al.
(2016) <doi:10.1007/s10651-016-0353-z>).")
    (license license:gpl3)))

(define-public r-nimblecarbon
  (package
    (name "r-nimblecarbon")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleCarbon" version))
       (sha256
        (base32 "0gqzdiid3x5k8286j3wy31pha76diniyj7si0mzrmq13kw77lsls"))))
    (properties `((upstream-name . "nimbleCarbon")))
    (build-system r-build-system)
    (propagated-inputs (list r-snow
                             r-rcarbon
                             r-nimble
                             r-foreach
                             r-dosnow
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nimbleCarbon")
    (synopsis "Bayesian Analyses of Radiocarbon Dates with NIMBLE")
    (description
     "This package provides utility functions and custom probability distribution for
Bayesian analyses of radiocarbon dates within the nimble modelling framework.
It includes various population growth models, @code{nimbleFunction} objects, as
well as a suite of functions for prior and posterior predictive checks for
demographic inference (Crema and Shoda (2021)
<doi:10.1371/journal.pone.0251695>) and other analyses.")
    (license license:gpl2+)))

(define-public r-nimbleapt
  (package
    (name "r-nimbleapt")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimbleAPT" version))
       (sha256
        (base32 "0615fm6sa6nf607ay98r81m0pp8yvydpwzn3972imf87irps2k3l"))))
    (properties `((upstream-name . "nimbleAPT")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DRJP/nimbleAPT")
    (synopsis "Adaptive Parallel Tempering for 'NIMBLE'")
    (description
     "This package provides functions for adaptive parallel tempering (APT) with
NIMBLE models.  Adapted from Lacki & Miasojedow (2016)
<DOI:10.1007/s11222-015-9579-0> and Miasojedow, Moulines and Vihola (2013)
<DOI:10.1080/10618600.2013.778779>.")
    (license license:bsd-3)))

(define-public r-nimble
  (package
    (name "r-nimble")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nimble" version))
       (sha256
        (base32 "0f2jshyvs40284bhv837aziw7k3f6yfh7kkrcyh8vyabmy6yfzqh"))))
    (properties `((upstream-name . "nimble")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-pracma r-numderiv r-igraph r-coda))
    (home-page "https://r-nimble.org")
    (synopsis
     "MCMC, Particle Filtering, and Programmable Hierarchical Modeling")
    (description
     "This package provides a system for writing hierarchical statistical models
largely compatible with BUGS and JAGS', writing @code{nimbleFunctions} to
operate models and do basic R-style math, and compiling both models and
@code{nimbleFunctions} via custom-generated C++.  NIMBLE includes default
methods for MCMC, Monte Carlo Expectation Maximization, and some other tools.
The @code{nimbleFunction} system makes it easy to do things like implement new
MCMC samplers from R, customize the assignment of samplers to different parts of
a model from R, and compile the new samplers automatically via C++ alongside the
samplers NIMBLE provides.  NIMBLE extends the BUGS'/'JAGS language by making it
extensible: New distributions and functions can be added, including as calls to
external compiled code.  Although most people think of MCMC as the main goal of
the BUGS'/'JAGS language for writing models, one can use NIMBLE for writing
arbitrary other kinds of model-generic algorithms as well.  A full User Manual
is available at <https://r-nimble.org>.")
    (license (list license:bsd-3 license:gpl2+))))

(define-public r-nimaa
  (package
    (name "r-nimaa")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NIMAA" version))
       (sha256
        (base32 "1lnxh9mak25mji38bifrif6qg0rjg3fj0lacjdgpk8iqjallvq7y"))))
    (properties `((upstream-name . "NIMAA")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-tidytext
                             r-tidyr
                             r-tibble
                             r-softimpute
                             r-skimr
                             r-scales
                             r-rcolorbrewer
                             r-purrr
                             r-plotly
                             r-networkd3
                             r-missmda
                             r-mice
                             r-igraph
                             r-ggplot2
                             r-fpc
                             r-dplyr
                             r-crayon
                             r-bnstruct
                             r-bipartite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jafarilab/NIMAA")
    (synopsis "Nominal Data Mining Analysis")
    (description
     "This package provides functions for nominal data mining based on bipartite
graphs, which build a pipeline for analysis and missing values imputation.
Methods are mainly from the paper: Jafari, Mohieddin, et al. (2021)
<doi:10.1101/2021.03.18.436040>, some new ones are also included.")
    (license license:gpl3+)))

(define-public r-nima
  (package
    (name "r-nima")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nima" version))
       (sha256
        (base32 "0n8r8h1m0v0ssbpv6p32jby49f45qbicwr0awm7x054p48qk49cy"))))
    (properties `((upstream-name . "nima")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-gtools
                             r-gridextra
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-assertthat))
    (home-page "https://github.com/nhejazi/nima")
    (synopsis "Nima Hejazi's R Toolbox")
    (description
     "Miscellaneous R functions developed as collateral damage over the course of work
in statistical and scientific computing for research.  These include, for
example, utilities that supplement existing idiosyncrasies of the R language,
extend existing plotting functionality and aesthetics, help prepare data objects
for imputation, and extend access to command line tools and systems-level
information.")
    (license license:expat)))

(define-public r-niledam
  (package
    (name "r-niledam")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NiLeDAM" version))
       (sha256
        (base32 "1xqj33182fz6x633vs9iy3rxr7m13bqn1773fphs1sb8mvxwdvzq"))))
    (properties `((upstream-name . "NiLeDAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-thematic
                             r-shinythemes
                             r-shinyjs
                             r-shiny
                             r-scales
                             r-rlang
                             r-nleqslv
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NiLeDAM")
    (synopsis "Monazite Dating for the NiLeDAM Team")
    (description
     "Th-U-Pb electron microprobe age dating of monazite, as originally described in
<doi:10.1016/0009-2541(96)00024-1>.")
    (license license:gpl2+)))

(define-public r-nilde
  (package
    (name "r-nilde")
    (version "1.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nilde" version))
       (sha256
        (base32 "014scmwhq9i66i2mhvrb71y6ccv0xzjqfgm2sqff9lzjv9smy2im"))))
    (properties `((upstream-name . "nilde")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nilde")
    (synopsis
     "Nonnegative Integer Solutions of Linear Diophantine Equations with Applications")
    (description
     "Routines for enumerating all existing nonnegative integer solutions of a linear
Diophantine equation.  The package provides routines for solving 0-1, bounded
and unbounded knapsack problems; 0-1, bounded and unbounded subset sum problems;
additive partitioning of natural numbers; and one-dimensional bin-packing
problem.")
    (license license:gpl2+)))

(define-public r-nightday
  (package
    (name "r-nightday")
    (version "1.0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NightDay" version))
       (sha256
        (base32 "1gwwxk428gkvci4dhfb3zikvidalpqkl0q2r6qpm58c12j14jk1h"))))
    (properties `((upstream-name . "NightDay")))
    (build-system r-build-system)
    (propagated-inputs (list r-maps))
    (home-page "https://cran.r-project.org/package=NightDay")
    (synopsis "Night and Day Boundary Plot Function")
    (description "Computes and plots the boundary between night and day.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nifti-io
  (package
    (name "r-nifti-io")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nifti.io" version))
       (sha256
        (base32 "03p0gn6id5bkn0qxf7v3splykpi9wpbasrhf2937gp25bsynrpjm"))))
    (properties `((upstream-name . "nifti.io")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nifti.io")
    (synopsis "Read and Write NIfTI Files")
    (description
     "This package provides tools for reading and writing N@code{IfTI-1.1} (NII)
files, including optimized voxelwise read/write operations and a simplified
method to write dataframes to NII. Specification of the N@code{IfTI-1.1} format
can be found here <https://nifti.nimh.nih.gov/nifti-1>.  Scientific publication
first using these tools Koscik TR, Man V, Jahn A, Lee CH, Cunningham WA (2020)
<doi:10.1016/j.neuroimage.2020.116764> \"Decomposing the neural pathways in a
simple, value-based choice.\" Neuroimage, 214, 116764.")
    (license license:expat)))

(define-public r-nieve
  (package
    (name "r-nieve")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nieve" version))
       (sha256
        (base32 "0r1acnb771wvxnpjzgrvxfs8fc6xibgggxk4smhq62nnyjlp0big"))))
    (properties `((upstream-name . "nieve")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yvesdeville/nieve/")
    (synopsis "Miscellaneous Utilities for Extreme Value Analysis")
    (description
     "This package provides utility functions and objects for Extreme Value Analysis.
These include probability functions with their exact derivatives w.r.t.  the
parameters that can be used for estimation and inference, even with censored
observations.  The transformations exchanging the two parameterizations of Peaks
Over Threshold (POT) models: Poisson-GP and Point-Process are also provided with
their derivatives.")
    (license license:gpl2+)))

(define-public r-nichevol
  (package
    (name "r-nichevol")
    (version "0.1.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nichevol" version))
       (sha256
        (base32 "18c3l9mm4dh0pxpliv2sx7nyijdhmzgcd36xkzclhhh067lxifrs"))))
    (properties `((upstream-name . "nichevol")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-stringr r-geiger r-castor r-ape))
    (home-page "https://github.com/marlonecobos/nichevol")
    (synopsis
     "Tools for Ecological Niche Evolution Assessment Considering Uncertainty")
    (description
     "This package provides a collection of tools that allow users to perform critical
steps in the process of assessing ecological niche evolution over phylogenies,
with uncertainty incorporated explicitly in reconstructions.  The method
proposed here for ancestral reconstruction of ecological niches characterizes
species niches using a bin-based approach that incorporates uncertainty in
estimations.  Compared to other existing methods, the approaches presented here
reduce risk of overestimation of amounts and rates of ecological niche
evolution.  The main analyses include: initial exploration of environmental data
in occurrence records and accessible areas, preparation of data for phylogenetic
analyses, executing comparative phylogenetic analyses of ecological niches, and
plotting for interpretations.  Details on the theoretical background and methods
used can be found in: Owens et al. (2020) <doi:10.1002/ece3.6359>, Peterson et
al. (1999) <doi:10.1126/science.285.5431.1265>, @code{SoberÃ³n} and Peterson
(2005) <doi:10.17161/bi.v2i0.4>, Peterson (2011)
<doi:10.1111/j.1365-2699.2010.02456.x>, Barve et al. (2011)
<doi:10.1111/ecog.02671>, Machado-Stredel et al. (2021)
<doi:10.21425/F5FBG48814>, Owens et al. (2013)
<doi:10.1016/j.ecolmodel.2013.04.011>, Saupe et al. (2018)
<doi:10.1093/sysbio/syx084>, and Cobos et al. (2021) <doi:10.1111/jav.02868>.")
    (license license:gpl3)))

(define-public r-nicherover
  (package
    (name "r-nicherover")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nicheROVER" version))
       (sha256
        (base32 "03xal1bm4wfvq6943v1n3d0782yxcmlqjwxj4i0dgr3yi72759x2"))))
    (properties `((upstream-name . "nicheROVER")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlysy/nicheROVER")
    (synopsis
     "Niche Region and Niche Overlap Metrics for Multidimensional Ecological Niches")
    (description
     "Implementation of a probabilistic method to calculate @code{nicheROVER} (_niche_
_r_egion and niche _over_lap) metrics using multidimensional niche indicator
data (e.g., stable isotopes, environmental variables, etc.).  The niche region
is defined as the joint probability density function of the multidimensional
niche indicators at a user-defined probability alpha (e.g., 95%).  Uncertainty
is accounted for in a Bayesian framework, and the method can be extended to
three or more indicator dimensions.  It provides directional estimates of niche
overlap, accounts for species-specific distributions in multivariate niche
space, and produces unique and consistent bivariate projections of the
multivariate niche region.  The article by Swanson et al. (2015)
<doi:10.1890/14-0235.1> provides a detailed description of the methodology.  See
the package vignette for a worked example using fish stable isotope data.")
    (license license:gpl3)))

(define-public r-nichebarcoding
  (package
    (name "r-nichebarcoding")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NicheBarcoding" version))
       (sha256
        (base32 "16jkznc4624ww7vwid6f3m90wm2ds2c7zf1j1sw16dyrqmlyk9w3"))))
    (properties `((upstream-name . "NicheBarcoding")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-spider
                             r-rjava
                             r-raster
                             r-randomforest
                             r-proc
                             r-maps
                             r-e1071
                             r-dismo
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Yangcq-Ivy/NicheBarcoding")
    (synopsis "Niche-model-Based Species Identification")
    (description
     "Species Identification using DNA Barcodes Integrated with Environmental Niche
Models.")
    (license license:gpl3+)))

(define-public r-nice
  (package
    (name "r-nice")
    (version "0.4-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nice" version))
       (sha256
        (base32 "1p8vmimiq9sbjvbx6c2wqwwkpnzw4kkdvjry6qyadmm3frwhj5qb"))))
    (properties `((upstream-name . "nice")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nice")
    (synopsis "Get or Set UNIX Niceness")
    (description "Get or set UNIX priority (niceness) of running R process.")
    (license license:expat)))

(define-public r-nic
  (package
    (name "r-nic")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nic" version))
       (sha256
        (base32 "1bsmwdnkxmpp1wr7w4qmpm1x8vgllif0yqbn4n0k477bzlm9p7m4"))))
    (properties `((upstream-name . "nic")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thiyangt/nic")
    (synopsis "Nature Inspired Colours")
    (description
     "Color palettes based on nature inspired colours in \"Sri Lanka\".")
    (license license:cc0)))

(define-public r-niaidmi
  (package
    (name "r-niaidmi")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "niaidMI" version))
       (sha256
        (base32 "0cg349qdlbixdyfzs5ahaf218a8gcpb2rvm0xaabsq9ray9gmq1a"))))
    (properties `((upstream-name . "niaidMI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=niaidMI")
    (synopsis "Markov Model Multiple Imputation for NIAID OS")
    (description
     "The implementation of Markov Model Multiple Imputation with the application to
COVID-19 scale, NIAID OS.")
    (license license:expat)))

(define-public r-nhstplot
  (package
    (name "r-nhstplot")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhstplot" version))
       (sha256
        (base32 "1m06w5mys5qwhah7hg3fwrzlbpckgvhn17jqzg36cyprpd02zx52"))))
    (properties `((upstream-name . "nhstplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nhstplot")
    (synopsis "Plot Null Hypothesis Significance Tests")
    (description
     "Illustrate graphically the most common Null Hypothesis Significance Testing
procedures.  More specifically, this package provides functions to plot
Chi-Squared, F, t (one- and two-tailed) and z (one- and two-tailed) tests, by
plotting the probability density under the null hypothesis as a function of the
different test statistic values.  Although highly flexible (color theme, fonts,
etc.), only the minimal number of arguments (observed test statistic, degrees of
freedom) are necessary for a clear and useful graph to be plotted, with the
observed test statistic and the p value, as well as their corresponding value
labels.  The axes are automatically scaled to present the relevant part and the
overall shape of the probability density function.  This package is especially
intended for education purposes, as it provides a helpful support to help
explain the Null Hypothesis Significance Testing process, its use and/or
shortcomings.")
    (license license:gpl3)))

(define-public r-nhsrplotthedots
  (package
    (name "r-nhsrplotthedots")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHSRplotthedots" version))
       (sha256
        (base32 "1rqryqaxyb3d6kws8mznsnzv19h8nhn1323vkh9zq59la9r3kiai"))))
    (properties `((upstream-name . "NHSRplotthedots")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rlang
                             r-nhsrdatasets
                             r-ggplot2
                             r-dplyr
                             r-crayon
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://nhs-r-community.github.io/NHSRplotthedots/")
    (synopsis "Draw XmR Charts for NHSE/I 'Making Data Count' Programme")
    (description
     "This package provides tools for drawing Statistical Process Control (SPC)
charts.  This package supports the NHSE/I programme Making Data Count', and
allows users to draw @code{XmR} charts, use change points and apply rules with
summary indicators for when rules are breached.")
    (license license:expat)))

(define-public r-nhsrdatasets
  (package
    (name "r-nhsrdatasets")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHSRdatasets" version))
       (sha256
        (base32 "1l4zrprnb3fsb2mibq8749a15xbvhn1g5yajbjf7gls81c8f2r7p"))))
    (properties `((upstream-name . "NHSRdatasets")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nhs-r-community/NHSRdatasets")
    (synopsis "NHS and Healthcare-Related Data for Education and Training")
    (description
     "Free United Kingdom National Health Service (NHS) and other healthcare, or
population health-related data for education and training purposes.  This
package contains synthetic data based on real healthcare datasets, or cuts of
open-licenced official data.  This package exists to support skills development
in the NHS-R community: <https://nhsrcommunity.com/>.")
    (license license:cc0)))

(define-public r-nhsnumber
  (package
    (name "r-nhsnumber")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhsnumber" version))
       (sha256
        (base32 "10vm3591gjr13ggnagjkh0v2915yl05mwyphpckimmrrbc3zsdip"))))
    (properties `((upstream-name . "nhsnumber")))
    (build-system r-build-system)
    (home-page "https://github.com/sellorm/nhsnumber")
    (synopsis "Tools for Working with NHS Number Checksums")
    (description
     "This package provides functions for working with NHS number checksums.  The UK's
National Health Service issues NHS numbers to all users of its services and this
package implements functions for verifying that the numbers are valid according
to the checksum scheme the NHS use.  Numbers can be validated and checksums
created.")
    (license license:expat)))

(define-public r-nhsdatadictionary
  (package
    (name "r-nhsdatadictionary")
    (version "1.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHSDataDictionaRy" version))
       (sha256
        (base32 "17jvyjxc28bmxadvcjhal4shklh24636zw6hrc7p7m71lbcw86aw"))))
    (properties `((upstream-name . "NHSDataDictionaRy")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-stringr
                             r-rvest
                             r-purrr
                             r-magrittr
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NHSDataDictionaRy")
    (synopsis "NHS Data Dictionary Toolset for NHS Lookups")
    (description
     "Providing a common set of simplified web scraping tools for working with the NHS
Data Dictionary <https://datadictionary.nhs.uk/data_elements_overview.html>.
The intended usage is to access the data elements section of the NHS Data
Dictionary to access key lookups.  The benefits of having it in this package are
that the lookups are the live lookups on the website and will not need to be
maintained.  This package was commissioned by the NHS-R community
<https://nhsrcommunity.com/> to provide this consistency of lookups.  The
@code{OpenSafely} lookups have now been added
<https://www.opencodelists.org/docs/>.")
    (license license:expat)))

(define-public r-nhs-predict
  (package
    (name "r-nhs-predict")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhs.predict" version))
       (sha256
        (base32 "0lgyi1v940pjqfpwligw5ml6vagiz8wwsxbr9kfd1j70b5i0kjwd"))))
    (properties `((upstream-name . "nhs.predict")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nhs.predict")
    (synopsis "Breast Cancer Survival and Therapy Benefits")
    (description
     "Calculate Overall Survival or Recurrence-Free Survival for breast cancer
patients, using NHS Predict'.  The time interval for the estimation can be set
up to 15 years, with default at 10.  Incremental therapy benefits are estimated
for hormone therapy, chemotherapy, trastuzumab, and bisphosphonates.  An
additional function, suited for SCAN audits, features a more user-friendly
version of the code, with fewer inputs, but necessitates the correct
standardised inputs.  This work is not affiliated with the development of NHS
Predict and its underlying statistical model.  Details on NHS Predict can be
found at: <doi:10.1186/bcr2464>.  The web version of NHS Predict':
<https://breast.predict.nhs.uk/>.  A small dataset of 50 fictional patient
observations is provided for the purpose of running examples with the main two
functions, and an additional dataset is provided for running example with the
dedicated SCAN function.")
    (license license:gpl2)))

(define-public r-nhpoisson
  (package
    (name "r-nhpoisson")
    (version "3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHPoisson" version))
       (sha256
        (base32 "1i6n59ckcxk1hwyz97jmnv4yb96ianjma6ka8lpz79ivs41jniad"))))
    (properties `((upstream-name . "NHPoisson")))
    (build-system r-build-system)
    (propagated-inputs (list r-car))
    (home-page "https://cran.r-project.org/package=NHPoisson")
    (synopsis "Modelling and Validation of Non Homogeneous Poisson Processes")
    (description
     "This package provides tools for modelling, ML estimation, validation analysis
and simulation of non homogeneous Poisson processes in time.")
    (license license:gpl2+)))

(define-public r-nhmsar
  (package
    (name "r-nhmsar")
    (version "1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHMSAR" version))
       (sha256
        (base32 "0xbnzq3zlpda1xcfiz1lsa5q5frvrsf87z3xc41fvk1n5viak5fk"))))
    (properties `((upstream-name . "NHMSAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf r-ncvreg r-lars r-glasso))
    (home-page "https://cran.r-project.org/package=NHMSAR")
    (synopsis "Non-Homogeneous Markov Switching Autoregressive Models")
    (description
     "Calibration, simulation, validation of (non-)homogeneous Markov switching
autoregressive models with Gaussian or von Mises innovations.  Penalization
methods are implemented for Markov Switching Vector Autoregressive Models of
order 1 only.  Most functions of the package handle missing values.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nhm
  (package
    (name "r-nhm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhm" version))
       (sha256
        (base32 "1yf9hnbmfb7xj8mbhnq40wvd0pd88x9qspy1jr3x0n8nb75i3jlp"))))
    (properties `((upstream-name . "nhm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-maxlik r-desolve))
    (home-page "https://cran.r-project.org/package=nhm")
    (synopsis "Non-Homogeneous Markov and Hidden Markov Multistate Models")
    (description
     "Fits non-homogeneous Markov multistate models and misclassification-type hidden
Markov models in continuous time to intermittently observed data.  Implements
the methods in Titman (2011) <doi:10.1111/j.1541-0420.2010.01550.x>.  Uses
direct numerical solution of the Kolmogorov forward equations to calculate the
transition probabilities.")
    (license license:gpl2+)))

(define-public r-nhlscrape
  (package
    (name "r-nhlscrape")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhlscrape" version))
       (sha256
        (base32 "0x6y747j6lha3jw4v2wavgd12xw5nx4m8biv9rmq9z0qy53vncjc"))))
    (properties `((upstream-name . "nhlscrape")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-rvest
                             r-rsqlite
                             r-jsonlite
                             r-httr
                             r-dbi))
    (home-page "https://github.com/adamazoulay/nhlscrape")
    (synopsis "Scrapes the 'NHL' API for Statistical Analysis")
    (description
     "Add game events to a database file to use for statistical analysis of hockey
games.  This means we only call the NHL API once for each game we want to add.
We will have very fast retrieval of data once games have been added since the
data is stored locally.  We use the API located at
<https://statsapi.web.nhl.com/api/v1/teams> with supplemental data from
<https://www.nhl.com/scores/>.  Other endpoints can be found at
<https://gitlab.com/dword4/nhlapi>.")
    (license license:expat)))

(define-public r-nhldata
  (package
    (name "r-nhldata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHLData" version))
       (sha256
        (base32 "0dfqalccbkmqrn3h1z6s78l818c8sqn7d6yc8mg872ygmszryci7"))))
    (properties `((upstream-name . "NHLData")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NHLData")
    (synopsis "Scores for Every Season Since the Founding of the NHL in 1917")
    (description
     "Each dataset contains scores for every game during a specific season of the NHL.")
    (license license:cc0)))

(define-public r-nhlapi
  (package
    (name "r-nhlapi")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhlapi" version))
       (sha256
        (base32 "1c5s7fd9agzk20xi8v38dk8ih6lmn8c90mxncyr996bhipgr7vl3"))))
    (properties `((upstream-name . "nhlapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jozefhajnala/nhlapi")
    (synopsis "Minimum-Dependency 'R' Interface to the 'NHL' API")
    (description
     "Retrieves and processes the data exposed by the open NHL API. This includes
information on players, teams, games, tournaments, drafts, standings, schedules
and other endpoints.  A lower-level interface to access the data via URLs
directly is also provided.")
    (license license:agpl3)))

(define-public r-nhdr
  (package
    (name "r-nhdr")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhdR" version))
       (sha256
        (base32 "1cf3lfkflwbvswdqnp74zrb7ndc2vbm9jj8dny1gqq3x9ciiy8gw"))))
    (properties `((upstream-name . "nhdR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-units
                             r-stringr
                             r-sf
                             r-rvest
                             r-rlang
                             r-rappdirs
                             r-purrr
                             r-memoise
                             r-maps
                             r-httr
                             r-ggplot2
                             r-foreign
                             r-dplyr
                             r-digest
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsta/nhdR")
    (synopsis "Tools for Working with the National Hydrography Dataset")
    (description
     "This package provides tools for working with the National Hydrography Dataset,
with functions for querying, downloading, and networking both the NHD
<https://www.usgs.gov/national-hydrography> and NHDPlus
<https://www.epa.gov/waterdata/nhdplus-national-hydrography-dataset-plus>
datasets.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nhdplustools
  (package
    (name "r-nhdplustools")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhdplusTools" version))
       (sha256
        (base32 "109gipkpmszipljm19c1f9mrjpf647vk9kyz7dwcpwlra7x21ay3"))))
    (properties `((upstream-name . "nhdplusTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-xml2
                             r-units
                             r-tidyr
                             r-sf
                             r-r-utils
                             r-pbapply
                             r-maptiles
                             r-mapsf
                             r-magrittr
                             r-jsonlite
                             r-hydroloom
                             r-httr
                             r-fst
                             r-dplyr
                             r-dataretrieval
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nhdplusTools")
    (synopsis "NHDPlus Tools")
    (description
     "This package provides tools for traversing and working with National Hydrography
Dataset Plus (NHDPlus) data.  All methods implemented in @code{nhdplusTools} are
available in the NHDPlus documentation available from the US Environmental
Protection Agency <https://www.epa.gov/waterdata/basic-information>.")
    (license license:cc0)))

(define-public r-nhanesa
  (package
    (name "r-nhanesa")
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nhanesA" version))
       (sha256
        (base32 "0f0qjjndd4nl9rzmapn98hlzv5fzvvg88ls97rim7vnr6l4c7mqq"))))
    (properties `((upstream-name . "nhanesA")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rvest
                             r-plyr
                             r-magrittr
                             r-foreign))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nhanesA")
    (synopsis "NHANES Data Retrieval")
    (description
     "Utility to retrieve data from the National Health and Nutrition Examination
Survey (NHANES) website <https://www.cdc.gov/nchs/nhanes/index.htm>.")
    (license license:gpl2+)))

(define-public r-nhanes
  (package
    (name "r-nhanes")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NHANES" version))
       (sha256
        (base32 "0aphv3rakfcfrv2km1xyxpj1bxiazy6gwrvs7lyhxmq468fk4c9a"))))
    (properties `((upstream-name . "NHANES")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NHANES")
    (synopsis
     "Data from the US National Health and Nutrition Examination Study")
    (description
     "Body Shape and related measurements from the US National Health and Nutrition
Examination Survey (NHANES, 1999-2004).  See http://www.cdc.gov/nchs/nhanes.htm
for details.")
    (license license:gpl2+)))

(define-public r-ngspatial
  (package
    (name "r-ngspatial")
    (version "1.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ngspatial" version))
       (sha256
        (base32 "09hdvmbna4m62zv18k5kj9718wzw7p43wnal2j6aa0m5sd2rx9rz"))))
    (properties `((upstream-name . "ngspatial")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-batchmeans))
    (home-page "https://cran.r-project.org/package=ngspatial")
    (synopsis
     "Fitting the Centered Autologistic and Sparse Spatial Generalized Linear Mixed Models for Areal Data")
    (description
     "This package provides tools for analyzing spatial data, especially non- Gaussian
areal data.  The current version supports the sparse restricted spatial
regression model of Hughes and Haran (2013)
<DOI:10.1111/j.1467-9868.2012.01041.x>, the centered autologistic model of
Caragea and Kaiser (2009) <DOI:10.1198/jabes.2009.07032>, and the Bayesian
spatial filtering model of Hughes (2017) <@code{arXiv:1706.04651>}.")
    (license license:gpl2+)))

(define-public r-ngramrr
  (package
    (name "r-ngramrr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ngramrr" version))
       (sha256
        (base32 "1p8s4p3h27g647rxx9qjfad5dzbngjbmvhw4gz0jbsmfqrsf72by"))))
    (properties `((upstream-name . "ngramrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-tau))
    (home-page "https://github.com/chainsawriot/ngramrr")
    (synopsis "Simple General Purpose N-Gram Tokenizer")
    (description
     "This package provides a simple n-gram (contiguous sequences of n items from a
given sequence of text) tokenizer to be used with the tm package with no
@code{rJava'/'RWeka} dependency.")
    (license license:gpl2)))

(define-public r-ngramr
  (package
    (name "r-ngramr")
    (version "1.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ngramr" version))
       (sha256
        (base32 "0iiaw8w3z8r45i129r78jwj4yicrp3lfzp7im6qmfn9k6v2bpsfv"))))
    (properties `((upstream-name . "ngramr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-textutils
                             r-stringr
                             r-scales
                             r-rlang
                             r-rjson
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-curl
                             r-cli))
    (home-page "https://github.com/seancarmody/ngramr")
    (synopsis "Retrieve and Plot Google n-Gram Data")
    (description
     "Retrieve and plot word frequencies through time from the \"Google Ngram Viewer\"
<https://books.google.com/ngrams>.")
    (license license:expat)))

(define-public r-ngram
  (package
    (name "r-ngram")
    (version "3.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ngram" version))
       (sha256
        (base32 "04cafc0i3605vlxmiwfyf91572ppg3wmm0hi50y9x7ai12bznchc"))))
    (properties `((upstream-name . "ngram")))
    (build-system r-build-system)
    (home-page "https://github.com/wrathematics/ngram")
    (synopsis "Fast n-Gram 'Tokenization'")
    (description
     "An n-gram is a sequence of n \"words\" taken, in order, from a body of text.  This
is a collection of utilities for creating, displaying, summarizing, and
\"babbling\" n-grams.  The tokenization and \"babbling\" are handled by very
efficient C code, which can even be built as its own standalone library.  The
babbler is a simple Markov chain.  The package also offers a vignette with
complete example workflows and information about the utilities offered in the
package.")
    (license (license:fsdg-compatible "BSD 2-clause License + file LICENSE"))))

(define-public r-nglviewer
  (package
    (name "r-nglviewer")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NGLVieweR" version))
       (sha256
        (base32 "15azdlr3a6gaacjcjpi61rwmx7c3idfn3w1zpgbaqmhxd9a4m6f0"))))
    (properties `((upstream-name . "NGLVieweR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-magrittr r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nvelden/NGLVieweR")
    (synopsis "Interactive 3D Visualization of Molecular Structures")
    (description
     "This package provides an htmlwidgets <https://www.htmlwidgets.org/> interface to
NGL.js <http://nglviewer.org/ngl/api/>.  NG@code{LvieweR} can be used to
visualize and interact with protein databank ('PDB') and structural files in R
and Shiny applications.  It includes a set of API functions to manipulate the
viewer after creation in Shiny.")
    (license license:expat)))

(define-public r-ngbvs
  (package
    (name "r-ngbvs")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NGBVS" version))
       (sha256
        (base32 "09pmqbmmn2ym2r61xqd86dv831x94gv8z7cga5863lcjy93mpy2a"))))
    (properties `((upstream-name . "NGBVS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast))
    (home-page "https://cran.r-project.org/package=NGBVS")
    (synopsis "Bayesian Variable Selection for SNP Data using Normal-Gamma")
    (description
     "Posterior distribution of case-control fine-mapping.  Specifically, Bayesian
variable selection for single-nucleotide polymorphism (SNP) data using the
normal-gamma prior.  Alenazi A.A., Cox A., Juarez M,.  Lin W-Y. and Walters, K.
(2019) Bayesian variable selection using partially observed categorical prior
information in fine-mapping association studies, Genetic Epidemiology.
<doi:10.1002/gepi.22213>.")
    (license license:gpl2+)))

(define-public r-ngboostforecast
  (package
    (name "r-ngboostforecast")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ngboostForecast" version))
       (sha256
        (base32 "019l9w7m6lkbf0m9mlsd24agjasbzi7dmy72faq1s4xg49a5xa9a"))))
    (properties `((upstream-name . "ngboostForecast")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-reticulate r-r6 r-magrittr r-forecast r-dplyr))
    (home-page "https://github.com/Akai01/ngboostForecast")
    (synopsis "Probabilistic Time Series Forecasting")
    (description
     "Probabilistic time series forecasting via Natural Gradient Boosting for
Probabilistic Prediction.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-nfwdist
  (package
    (name "r-nfwdist")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NFWdist" version))
       (sha256
        (base32 "0833lg0pd763awrc6ibidwf2ldl79w9lmm5acq4bnpd2hzsx60l8"))))
    (properties `((upstream-name . "NFWdist")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NFWdist")
    (synopsis "The Standard Distribution Functions for the 3D NFW Profile")
    (description
     "Density, distribution function, quantile function and random generation for the
3D Navarro, Frenk & White (NFW) profile.  For details see Robotham & Howlett
(2018) <@code{arXiv:1805.09550>}.")
    (license license:gpl3)))

(define-public r-nftbart
  (package
    (name "r-nftbart")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nftbart" version))
       (sha256
        (base32 "193507ii4f78g81937dixk7mja23sdicb0fvi0g3ryi0xjh913q0"))))
    (properties `((upstream-name . "nftbart")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpp r-nnet))
    (home-page "https://cran.r-project.org/package=nftbart")
    (synopsis "Nonparametric Failure Time Bayesian Additive Regression Trees")
    (description
     "Nonparametric Failure Time (NFT) Bayesian Additive Regression Trees (BART):
Time-to-event Machine Learning with Heteroskedastic Bayesian Additive Regression
Trees (HBART) and Low Information Omnibus (LIO) Dirichlet Process Mixtures
(DPM).  An NFT BART model is of the form Y = mu + f(x) + sd(x) E where functions
f and sd have BART and HBART priors, respectively, while E is a nonparametric
error distribution due to a DPM LIO prior hierarchy.  See the following for a
complete description of the model at <doi:10.1111/biom.13857>.")
    (license license:gpl2+)))

(define-public r-nflverse
  (package
    (name "r-nflverse")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nflverse" version))
       (sha256
        (base32 "1pamkg80b83gb5ab3zshh36xsr31ihv6qbh1aa42m6k4g1wk5g3r"))))
    (properties `((upstream-name . "nflverse")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi
                             r-rlang
                             r-nflseedr
                             r-nflreadr
                             r-nflplotr
                             r-nflfastr
                             r-nfl4th
                             r-magrittr
                             r-crayon
                             r-cli))
    (home-page "https://nflverse.nflverse.com/")
    (synopsis "Easily Install and Load the 'nflverse'")
    (description
     "The nflverse is a set of packages dedicated to data of the National Football
League.  This package is designed to make it easy to install and load multiple
nflverse packages in a single step.  Learn more about the nflverse at
<https://nflverse.nflverse.com/>.")
    (license license:expat)))

(define-public r-nflsimulator
  (package
    (name "r-nflsimulator")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NFLSimulatoR" version))
       (sha256
        (base32 "1s11jr684dvc25rapdi1mslk4z8ajrcf20ibnz6rr22ga3pylxyn"))))
    (properties `((upstream-name . "NFLSimulatoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-progress r-nflfastr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rtelmore/NFLSimulatoR/")
    (synopsis "Simulating Plays and Drives in the NFL")
    (description
     "The intent here is to enable the simulation of plays/drives and evaluate
game-play strategies in the National Football League (NFL).  Built-in strategies
include going for it on fourth down and varying the proportion of
passing/rushing plays during a drive.  The user should be familiar with
@code{nflscrapR} data before trying to write his/her own strategies.  This work
is inspired by a blog post by Mike Lopez, currently the Director of Data and
Analytics at the NFL, Lopez (2019)
<https://statsbylopez.netlify.app/post/resampling-nfl-drives/>.")
    (license license:expat)))

(define-public r-nflseedr
  (package
    (name "r-nflseedr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nflseedR" version))
       (sha256
        (base32 "0nk6264alv0d8d1wj7xqk4m57rl1w185jj5qj58d9hwiy2wmzvqz"))))
    (properties `((upstream-name . "nflseedR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-progressr
                             r-nflreadr
                             r-magrittr
                             r-gsubfn
                             r-future
                             r-furrr
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://nflseedr.com")
    (synopsis "Functions to Efficiently Simulate and Evaluate NFL Seasons")
    (description
     "This package provides a set of functions to simulate National Football League
seasons including the sophisticated tie-breaking procedures.")
    (license license:expat)))

(define-public r-nflreadr
  (package
    (name "r-nflreadr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nflreadr" version))
       (sha256
        (base32 "1437nzvqj0w5p3wxb0zfwjkn34ssd4q9zbsw0lmrbs0afifaf6dd"))))
    (properties `((upstream-name . "nflreadr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rappdirs
                             r-memoise
                             r-glue
                             r-data-table
                             r-curl
                             r-cli
                             r-cachem))
    (native-inputs (list r-knitr))
    (home-page "https://nflreadr.nflverse.com")
    (synopsis "Download 'nflverse' Data")
    (description
     "This package provides a minimal package for downloading data from @code{GitHub}
repositories of the nflverse project.")
    (license license:expat)))

(define-public r-nflplotr
  (package
    (name "r-nflplotr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nflplotR" version))
       (sha256
        (base32 "0rnzhfp1msmiqci6g37l9half8bc410g5vmbkzqk8v35vxml6r49"))))
    (properties `((upstream-name . "nflplotR")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rlang
                             r-rappdirs
                             r-nflreadr
                             r-memoise
                             r-magrittr
                             r-magick
                             r-ggplot2
                             r-ggpath
                             r-data-table
                             r-cli
                             r-cachem))
    (home-page "https://nflplotr.nflverse.com")
    (synopsis "NFL Logo Plots in 'ggplot2'")
    (description
     "This package provides a set of functions to visualize National Football League
analysis in ggplot2'.")
    (license license:expat)))

(define-public r-nflfastr
  (package
    (name "r-nflfastr")
    (version "4.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nflfastR" version))
       (sha256
        (base32 "1zbl8khwhf9g4bw5fbcr73wa17g8jia6w23ziqq5pvsc1ygabyga"))))
    (properties `((upstream-name . "nflfastR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-progressr
                             r-nflreadr
                             r-mgcv
                             r-janitor
                             r-glue
                             r-future
                             r-furrr
                             r-fastrmodels
                             r-dplyr
                             r-data-table
                             r-curl
                             r-cli))
    (home-page "https://www.nflfastr.com/")
    (synopsis "Functions to Efficiently Access NFL Play by Play Data")
    (description
     "This package provides a set of functions to access National Football League
play-by-play data from <https://www.nfl.com/>.")
    (license license:expat)))

(define-public r-nfl4th
  (package
    (name "r-nfl4th")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nfl4th" version))
       (sha256
        (base32 "1ilvchs7g26ks6wgb8s8av0pm10s161fqiahcwbsm5xfy9bh8q78"))))
    (properties `((upstream-name . "nfl4th")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-nflreadr
                             r-nflfastr
                             r-mgcv
                             r-magrittr
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-glue
                             r-dplyr
                             r-curl
                             r-backports))
    (home-page "https://www.nfl4th.com/")
    (synopsis
     "Functions to Calculate Optimal Fourth Down Decisions in the National Football League")
    (description
     "This package provides a set of functions to estimate outcomes of fourth down
plays in the National Football League and obtain fourth down plays from
<https://www.nfl.com/> and <https://www.espn.com/>.")
    (license license:expat)))

(define-public r-nfer
  (package
    (name "r-nfer")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nfer" version))
       (sha256
        (base32 "0s19ks4ildxqdbm4nv40f6c0rs1a6h9vx46654k8n0q18bgia448"))))
    (properties `((upstream-name . "nfer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://nfer.io/")
    (synopsis "Event Stream Abstraction using Interval Logic")
    (description
     "This is the R API for the nfer formalism (<http://nfer.io/>).  nfer was
developed to specify event stream abstractions for spacecraft telemetry such as
the Mars Science Laboratory.  Users write rules using a syntax that borrows
heavily from Allen's Temporal Logic that, when applied to an event stream,
construct a hierarchy of temporal intervals with data.  The R API supports
loading rules from a file or mining them from historical data.  Traces of events
or pools of intervals are provided as data frames.")
    (license license:gpl3+)))

(define-public r-nfcp
  (package
    (name "r-nfcp")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NFCP" version))
       (sha256
        (base32 "16dvk8jiyzd94lfif0nkwc0ix05is8bhyykaaa6p1irwgzk8cia4"))))
    (properties `((upstream-name . "NFCP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgenoud
                             r-rdpack
                             r-numderiv
                             r-mathjaxr
                             r-mass
                             r-lsmrealoptions
                             r-fkf-sp
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NFCP")
    (synopsis "N-Factor Commodity Pricing Through Term Structure Estimation")
    (description
     "Commodity pricing models are (systems of) stochastic differential equations that
are utilized for the valuation and hedging of commodity contingent claims (i.e.
derivative products on the commodity) and other commodity related investments.
Commodity pricing models that capture market dynamics are of great importance to
commodity market participants in order to exercise sound investment and
risk-management strategies.  Parameters of commodity pricing models are
estimated through maximum likelihood estimation, using available term structure
futures data of a commodity.  NFCP (n-factor commodity pricing) provides a
framework for the modeling, parameter estimation, probabilistic forecasting,
option valuation and simulation of commodity prices through state space and
Monte Carlo methods, risk-neutral valuation and Kalman filtering.  NFCP allows
the commodity pricing model to consist of n correlated factors, with both random
walk and mean-reverting elements.  The n-factor commodity pricing model
framework was first presented in the work of Cortazar and Naranjo (2006)
<doi:10.1002/fut.20198>.  Examples presented in NFCP replicate the two-factor
crude oil commodity pricing model presented in the prolific work of Schwartz and
Smith (2000) <doi:10.1287/mnsc.46.7.893.12034> with the approximate term
structure futures data applied within this study provided in the NFCP package.")
    (license license:gpl3)))

(define-public r-nfactors
  (package
    (name "r-nfactors")
    (version "2.4.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nFactors" version))
       (sha256
        (base32 "08gydk231zijw3inp6d3hnc5mz0zywi4vzlvqb4jmibhv0hncdxv"))))
    (properties `((upstream-name . "nFactors")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-mass r-lattice))
    (home-page "https://cran.r-project.org/package=nFactors")
    (synopsis
     "Parallel Analysis and Other Non Graphical Solutions to the Cattell Scree Test")
    (description
     "Indices, heuristics and strategies to help determine the number of
factors/components to retain: 1.  Acceleration factor (af with or without
Parallel Analysis); 2.  Optimal Coordinates (noc with or without Parallel
Analysis); 3.  Parallel analysis (components, factors and bootstrap); 4.  lambda
> mean(lambda) (Kaiser, CFA and related); 5.  Cattell-Nelson-Gorsuch (CNG); 6.
Zoski and Jurs multiple regression (b, t and p); 7.  Zoski and Jurs standard
error of the regression coeffcient (sescree); 8.  Nelson R2; 9.  Bartlett khi-2;
10.  Anderson khi-2; 11.  Lawley khi-2 and 12.  Bentler-Yuan khi-2.")
    (license (license:fsdg-compatible "GPL (>= 3.5.0)"))))

(define-public r-nextgenshinyapps
  (package
    (name "r-nextgenshinyapps")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nextGenShinyApps" version))
       (sha256
        (base32 "0yvjchdxd8zxilq05x5ihjh10wzn9cz8cp6sr6jrnxgkiyrgh46q"))))
    (properties `((upstream-name . "nextGenShinyApps")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://nextgenshinyapps.obi.obianom.com")
    (synopsis
     "Advanced Tools for Building the Next Generation of 'Shiny' Applications and Dashboards")
    (description
     "Responsive tools for designing and developing Shiny dashboards and applications.
 The scripts and style sheets are based on @code{jQuery} <https://jquery.com/>
and Bootstrap <https://getbootstrap.com/>.")
    (license license:expat)))

(define-public r-newtestsurvrec
  (package
    (name "r-newtestsurvrec")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newTestSurvRec" version))
       (sha256
        (base32 "06p782md33wqh5wa1735yg5i01d42p74kl7h5qhqs9cd732ls6pz"))))
    (properties `((upstream-name . "newTestSurvRec")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis "Statistical Tests to Compare Curves with Recurrent Events")
    (description
     "This package implements the routines to compare the survival curves with
recurrent events, including the estimations of survival curves.  The first model
is a model for recurrent event, when the data are correlated or not correlated.
It was proposed by Wang and Chang (1999) <doi:10.2307/2669690>.  In the
independent case, the survival function can be estimated by the generalization
of the limit product model of Pena (2001) <doi:10.1198/016214501753381922>.")
    (license license:gpl2+)))

(define-public r-newsmd
  (package
    (name "r-newsmd")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newsmd" version))
       (sha256
        (base32 "06iq628ysfbaawhx5yxkxh8a9d3nmzq87n80l88kj84k1lg1s5ph"))))
    (properties `((upstream-name . "newsmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Dschaykib/newsmd")
    (synopsis "Creation of NEWS.md File")
    (description
     "Adding updates (version or bullet points) to the NEWS.md file.")
    (license license:expat)))

(define-public r-newsmap
  (package
    (name "r-newsmap")
    (version "0.8.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newsmap" version))
       (sha256
        (base32 "08gdjszasfc62yz7q4s6a5971v0c0ddncryyfq1blpi6qqikjyhj"))))
    (properties `((upstream-name . "newsmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-quanteda-textstats r-quanteda
                             r-matrix))
    (home-page "https://github.com/koheiw/newsmap")
    (synopsis "Semi-Supervised Model for Geographical Document Classification")
    (description
     "Semissupervised model for geographical document classification (Watanabe 2018)
<doi:10.1080/21670811.2017.1293487>.  This package currently contains seed
dictionaries in English, German, French, Spanish, Italian, Russian, Hebrew,
Arabic Japanese and Chinese (Simplified and Traditional).")
    (license license:expat)))

(define-public r-newscatcher
  (package
    (name "r-newscatcher")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newscatcheR" version))
       (sha256
        (base32 "18r9lmg9q6fj0ggnpqggqywsbycblsdc42mdcpc2abzp98dsvww9"))))
    (properties `((upstream-name . "newscatcheR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyrss))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/discindo/newscatcheR/")
    (synopsis
     "Programmatically Collect Normalized News from (Almost) Any Website")
    (description
     "Programmatically collect normalized news from (almost) any website.  An R clone
of the <https://github.com/kotartemiy/newscatcher> Python module.")
    (license license:expat)))

(define-public r-newsanchor
  (package
    (name "r-newsanchor")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newsanchor" version))
       (sha256
        (base32 "1s8qhq9jk5gnsimnvy7kdayya0ks0ly309l7zxm5rafj5x7k5vwn"))))
    (properties `((upstream-name . "newsanchor")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-devtools
                             r-askpass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=newsanchor")
    (synopsis "Client for the News API")
    (description
     "Interface to gather news from the News API', based on a multilevel query
<https://newsapi.org/>.  A personal API key is required.")
    (license license:expat)))

(define-public r-newmanomics
  (package
    (name "r-newmanomics")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NewmanOmics" version))
       (sha256
        (base32 "16lhs1wq4593yj5q1kw0rq085i4dja6x3pw5crnj4l4zib8gpdb1"))))
    (properties `((upstream-name . "NewmanOmics")))
    (build-system r-build-system)
    (propagated-inputs (list r-oompabase))
    (native-inputs (list r-knitr))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis
     "Extending the Newman Studentized Range Statistic to Transcriptomics")
    (description
     "Extends the classical Newman studentized range statistic in various ways that
can be applied to genome-scale transcriptomic or other expression data.")
    (license license:asl2.0)))

(define-public r-newfocus
  (package
    (name "r-newfocus")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "newFocus" version))
       (sha256
        (base32 "0j7wl4yf4dnz4vbbnhsk39w9zqbnad2lhxwqbns1plhdd02hzsfr"))))
    (properties `((upstream-name . "newFocus")))
    (build-system r-build-system)
    (propagated-inputs (list r-ctgt))
    (home-page "https://cran.r-project.org/package=newFocus")
    (synopsis "True Discovery Guarantee by Combining Partial Closed Testings")
    (description
     "Closed testing has been proved powerful for true discovery guarantee.  The
computation of closed testing is, however, quite burdensome.  A general way to
reduce computational complexity is to combine partial closed testings for some
prespecified feature sets of interest.  Partial closed testings are performed at
Bonferroni-corrected alpha level to guarantee the lower bounds for the number of
true discoveries in prespecified sets are simultaneously valid.  For any post
hoc chosen sets of interest, coherence property is used to get the lower bound.
In this package, we implement closed testing with globaltest to calculate the
lower bound for number of true discoveries, see Ningning Xu et.al (2021)
<@code{arXiv:2001.01541>} for detailed description.")
    (license license:gpl2+)))

(define-public r-newdistns
  (package
    (name "r-newdistns")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Newdistns" version))
       (sha256
        (base32 "1b5njkzj8b0wrvvfv904di0933k9d320gadmfm5zl6pzdp34bh1i"))))
    (properties `((upstream-name . "Newdistns")))
    (build-system r-build-system)
    (propagated-inputs (list r-adequacymodel))
    (home-page "https://cran.r-project.org/package=Newdistns")
    (synopsis
     "Computes Pdf, Cdf, Quantile and Random Numbers, Measures of Inference for 19 General Families of Distributions")
    (description
     "Computes the probability density function, cumulative distribution function,
quantile function, random numbers and measures of inference for the following
general families of distributions (each family defined in terms of an arbitrary
cdf G): Marshall Olkin G distributions, exponentiated G distributions, beta G
distributions, gamma G distributions, Kumaraswamy G distributions, generalized
beta G distributions, beta extended G distributions, gamma G distributions,
gamma uniform G distributions, beta exponential G distributions, Weibull G
distributions, log gamma G I distributions, log gamma G II distributions,
exponentiated generalized G distributions, exponentiated Kumaraswamy G
distributions, geometric exponential Poisson G distributions,
truncated-exponential skew-symmetric G distributions, modified beta G
distributions, and exponentiated exponential Poisson G distributions.")
    (license license:gpl2+)))

(define-public r-neverhpfilter
  (package
    (name "r-neverhpfilter")
    (version "0.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neverhpfilter" version))
       (sha256
        (base32 "097nfz30pf4bd95l943ccsvndni0n8c6gpcdk5dv02802mcg0h81"))))
    (properties `((upstream-name . "neverhpfilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts))
    (native-inputs (list r-knitr))
    (home-page "https://justinmshea.github.io/neverhpfilter/")
    (synopsis "An Alternative to the Hodrick-Prescott Filter")
    (description
     "In the working paper titled \"Why You Should Never Use the Hodrick-Prescott
Filter\", James D. Hamilton proposes a new alternative to economic time series
filtering.  The neverhpfilter package provides functions and data for
reproducing his work.  Hamilton (2017) <doi:10.3386/w23429>.")
    (license license:gpl3)))

(define-public r-nevada
  (package
    (name "r-nevada")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nevada" version))
       (sha256
        (base32 "0ba5wbjsgd77f20flp9zqiasmypbxsmqg2yfw0qqwzjrkp3rvfqi"))))
    (properties `((upstream-name . "nevada")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-umap
                             r-tsne
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rgeomstats
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-igraph
                             r-ggplot2
                             r-furrr
                             r-forcats
                             r-flipr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://astamm.github.io/nevada/")
    (synopsis "Network-Valued Data Analysis")
    (description
     "This package provides a flexible statistical framework for network-valued data
analysis.  It leverages the complexity of the space of distributions on graphs
by using the permutation framework for inference as implemented in the flipr
package.  Currently, only the two-sample testing problem is covered and
generalization to k samples and regression will be added in the future as well.
It is a 4-step procedure where the user chooses a suitable representation of the
networks, a suitable metric to embed the representation into a metric space, one
or more test statistics to target specific aspects of the distributions to be
compared and a formula to compute the permutation p-value.  Two types of
inference are provided: a global test answering whether there is a difference
between the distributions that generated the two samples and a local test for
localizing differences on the network structure.  The latter is assumed to be
shared by all networks of both samples.  References: Lovato, I., Pini, A.,
Stamm, A., Vantini, S. (2020) \"Model-free two-sample test for network-valued
data\" <doi:10.1016/j.csda.2019.106896>; Lovato, I., Pini, A., Stamm, A., Taquet,
M., Vantini, S. (2021) \"Multiscale null hypothesis testing for network-valued
data: Analysis of brain networks of patients with autism\"
<doi:10.1111/rssc.12463>.")
    (license license:gpl3+)))

(define-public r-neutralitytestr
  (package
    (name "r-neutralitytestr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neutralitytestr" version))
       (sha256
        (base32 "1660v7nng6dj9gwn04ynirms0g10wpsz33i26va229zdviqm5cyy"))))
    (properties `((upstream-name . "neutralitytestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-pracma
                             r-ggpmisc
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/marcjwilliams1/neutralitytestr")
    (synopsis
     "Test for a Neutral Evolutionary Model in Cancer Sequencing Data")
    (description
     "Package takes frequencies of mutations as reported by high throughput sequencing
data from cancer and fits a theoretical neutral model of tumour evolution.
Package outputs summary statistics and contains code for plotting the data and
model fits.  See Williams et al 2016 <doi:10.1038/ng.3489> and Williams et al
2017 <doi:10.1101/096305> for further details of the method.")
    (license license:expat)))

(define-public r-neurosim
  (package
    (name "r-neurosim")
    (version "0.2-14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuRosim" version))
       (sha256
        (base32 "1ndgpx748q7flqbb0bbjzdnynd5vp85k6wi4karxgvgihsxn9hkz"))))
    (properties `((upstream-name . "neuRosim")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve))
    (home-page "https://cran.r-project.org/package=neuRosim")
    (synopsis "Simulate fMRI Data")
    (description
     "Generates functional Magnetic Resonance Imaging (@code{fMRI}) time series or 4D
data.  Some high-level functions are created for fast data generation with only
a few arguments and a diversity of functions to define activation and noise.
For more advanced users it is possible to use the low-level functions and
manipulate the arguments.  See Welvaert et al. (2011)
<doi:10.18637/jss.v044.i10>.")
    (license license:gpl2+)))

(define-public r-neuronorm
  (package
    (name "r-neuronorm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuronorm" version))
       (sha256
        (base32 "1bypspygib963n255q6j5pmm14sw67ipmkq54faz8w2i3mdb845v"))))
    (properties `((upstream-name . "neuronorm")))
    (build-system r-build-system)
    (inputs (list cmake))
    (propagated-inputs (list r-oro-nifti r-knitr r-fslr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neuronorm")
    (synopsis
     "Preprocessing of Structural MRI for Multiple Neurodegenerative Diseases")
    (description
     "Preprocessing pipeline for normalizing and cleaning T1-weighted, T2-weighted and
FLAIR MRI images coming from different sources, diseases, patients, scanners and
sites.")
    (license license:gpl2)))

(define-public r-neuromplex
  (package
    (name "r-neuromplex")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuromplex" version))
       (sha256
        (base32 "1zj7x528qv4bp24fx546jj9kf0q0n26jyi65v6h2bl3c61rrb6bz"))))
    (properties `((upstream-name . "neuromplex")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-bayeslogit))
    (home-page "https://cran.r-project.org/package=neuromplex")
    (synopsis "Neural Multiplexing Analysis")
    (description
     "Statistical methods for whole-trial and time-domain analysis of single cell
neural response to multiple stimuli presented simultaneously.  The package is
based on the paper by C Glynn, ST Tokdar, A Zaman, VC Caruso, JT Mohl, SM
Willett, and JM Groh (2021) \"Analyzing second order stochasticity of neural
spiking under stimuli-bundle exposure\", is in press for publication by the
Annals of Applied Statistics.  A preprint may be found at
<@code{arXiv:1911.04387>}.")
    (license license:gpl2)))

(define-public r-neuroim
  (package
    (name "r-neuroim")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuroim" version))
       (sha256
        (base32 "00cjr6pkip6zi2d0q3qbn3lb3k0z82v6c19qslvgpa9n0g63dr5p"))))
    (properties `((upstream-name . "neuroim")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaimpute
                             r-stringr
                             r-rgl
                             r-readr
                             r-rcpp
                             r-matrix
                             r-iterators
                             r-hash
                             r-assertthat
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neuroim")
    (synopsis "Data Structures and Handling for Neuroimaging Data")
    (description
     "This package provides a collection of data structures that represent volumetric
brain imaging data.  The focus is on basic data handling for 3D and 4D
neuroimaging data.  In addition, there are function to read and write NIFTI
files and limited support for reading AFNI files.")
    (license license:gpl2+)))

(define-public r-neurohcp
  (package
    (name "r-neurohcp")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neurohcp" version))
       (sha256
        (base32 "02z0lhmw2mr2fk8d8wp7nfcrfl8izds68zskm5j0xfabfb4dwkbx"))))
    (properties `((upstream-name . "neurohcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-httr r-digest r-base64enc r-aws-s3))
    (native-inputs (list r-knitr))
    (home-page "https://db.humanconnectome.org")
    (synopsis "Human 'Connectome' Project Interface")
    (description
     "Downloads and reads data from Human Connectome Project
<https://db.humanconnectome.org> using Amazon Web Services ('AWS') S3 buckets.")
    (license license:gpl2)))

(define-public r-neurodecoder
  (package
    (name "r-neurodecoder")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NeuroDecodeR" version))
       (sha256
        (base32 "0awz4kf8pdrb4jfh4x1cpawhijnvkkz58b0nshbvi6cx5r4122z3"))))
    (properties `((upstream-name . "NeuroDecodeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tictoc
                             r-tibble
                             r-stringr
                             r-scales
                             r-r-matlab
                             r-purrr
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-forcats
                             r-e1071
                             r-dplyr
                             r-dosnow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/emeyers/NeuroDecodeR")
    (synopsis "Decode Information from Neural Activity")
    (description
     "Neural decoding is method of analyzing neural data that uses a pattern
classifiers to predict experimental conditions based on neural activity.
@code{NeuroDecodeR} is a system of objects that makes it easy to run neural
decoding analyses.  For more information on neural decoding see Meyers & Kreiman
(2004) <doi:10.7551/mitpress/8404.003.0024>.")
    (license license:gpl3)))

(define-public r-neurocinstall
  (package
    (name "r-neurocinstall")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neurocInstall" version))
       (sha256
        (base32 "1fkb6ji9gigqdjl50hbgdgfidqpjgqlh1aidf6vn4qnfr92bsvqf"))))
    (properties `((upstream-name . "neurocInstall")))
    (build-system r-build-system)
    (propagated-inputs (list r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neurocInstall")
    (synopsis "'Neuroconductor' Installer")
    (description
     "Installs Neuroconductor packages from the release repository
<https://neuroconductor.org/releases/> or from @code{GitHub}'.")
    (license license:gpl2)))

(define-public r-neuroblastoma
  (package
    (name "r-neuroblastoma")
    (version "2023.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuroblastoma" version))
       (sha256
        (base32 "18n2ysrxb47wn5xpf906i5hn84f45r3ijla7sravyrsh8lbx6xih"))))
    (properties `((upstream-name . "neuroblastoma")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=neuroblastoma")
    (synopsis "Neuroblastoma Copy Number Profiles")
    (description
     "Annotated neuroblastoma copy number profiles, a benchmark data set for
change-point detection algorithms, as described by Hocking et al.
<doi:10.1186/1471-2105-14-164>.")
    (license license:gpl3)))

(define-public r-neurobase
  (package
    (name "r-neurobase")
    (version "1.32.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neurobase" version))
       (sha256
        (base32 "0jg4fspqmdbrisxxwbpql5kv9am3d02m5j2dp8305p8dl0wz5vyj"))))
    (properties `((upstream-name . "neurobase")))
    (build-system r-build-system)
    (propagated-inputs (list r-rnifti r-r-utils r-oro-nifti r-matrixstats
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neurobase")
    (synopsis
     "'Neuroconductor' Base Package with Helper Functions for 'nifti' Objects")
    (description
     "Base package for Neuroconductor', which includes many helper functions that
interact with objects of class nifti', implemented by package oro.nifti', for
reading/writing and also other manipulation functions.")
    (license license:gpl2)))

(define-public r-neuralsens
  (package
    (name "r-neuralsens")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NeuralSens" version))
       (sha256
        (base32 "0awghzv463xlawqs20z505yc9hz35h9bpnz0rq5k1720vdy9jq30"))))
    (properties `((upstream-name . "NeuralSens")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-scales
                             r-reshape2
                             r-neuralnettools
                             r-magrittr
                             r-hmisc
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-ggnewscale
                             r-ggforce
                             r-fastdummies
                             r-caret))
    (home-page "https://github.com/JaiPizGon/NeuralSens")
    (synopsis "Sensitivity Analysis of Neural Networks")
    (description
     "Analysis functions to quantify inputs importance in neural network models.
Functions are available for calculating and plotting the inputs importance and
obtaining the activation function of each neuron layer and its derivatives.  The
importance of a given input is defined as the distribution of the derivatives of
the output with respect to that input in each training data point
<doi:10.18637/jss.v102.i07>.")
    (license license:gpl2+)))

(define-public r-neuralnettools
  (package
    (name "r-neuralnettools")
    (version "1.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NeuralNetTools" version))
       (sha256
        (base32 "1q3q3vc1f0lglyx5ydv5nx6ywpvz50a9w7cql2j7cjvh4pd3pibs"))))
    (properties `((upstream-name . "NeuralNetTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-scales r-reshape2 r-nnet r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NeuralNetTools")
    (synopsis "Visualization and Analysis Tools for Neural Networks")
    (description
     "Visualization and analysis tools to aid in the interpretation of neural network
models.  Functions are available for plotting, quantifying variable importance,
conducting a sensitivity analysis, and obtaining a simple list of model weights.")
    (license license:cc0)))

(define-public r-neuralnet
  (package
    (name "r-neuralnet")
    (version "1.44.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuralnet" version))
       (sha256
        (base32 "09l808vgjh059a3f94vgsprfyp5c1hrbjn6i1cn34cxnbljwsrjz"))))
    (properties `((upstream-name . "neuralnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-deriv))
    (home-page "https://github.com/bips-hb/neuralnet")
    (synopsis "Training of Neural Networks")
    (description
     "Training of neural networks using backpropagation, resilient backpropagation
with (Riedmiller, 1994) or without weight backtracking (Riedmiller and Braun,
1993) or the modified globally convergent version by Anastasiadis et al. (2005).
 The package allows flexible settings through custom-choice of error and
activation function.  Furthermore, the calculation of generalized weights
(Intrator O & Intrator N, 1993) is implemented.")
    (license license:gpl2+)))

(define-public r-neuralgam
  (package
    (name "r-neuralgam")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neuralGAM" version))
       (sha256
        (base32 "10v47gqr2y7md9j4807zsnckavlv4p9lggj5ywkizhwgmdfn4bxx"))))
    (properties `((upstream-name . "neuralGAM")))
    (build-system r-build-system)
    (inputs (list tensorflow python))
    (propagated-inputs (list r-tensorflow
                             r-reticulate
                             r-magrittr
                             r-keras
                             r-gridextra
                             r-ggplot2
                             r-formula-tools))
    (home-page "https://inesortega.github.io/neuralGAM/")
    (synopsis
     "Interpretable Neural Network Based on Generalized Additive Models")
    (description
     "Neural network framework based on Generalized Additive Models from Hastie &
Tibshirani (1990, ISBN:9780412343902), which trains a different neural network
to estimate the contribution of each feature to the response variable.  The
networks are trained independently leveraging the local scoring and backfitting
algorithms to ensure that the Generalized Additive Model converges and it is
additive.  The resultant Neural Network is a highly accurate and interpretable
deep learning model, which can be used for high-risk AI practices where
decision-making should be based on accountable and interpretable algorithms.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-networktree
  (package
    (name "r-networktree")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networktree" version))
       (sha256
        (base32 "0hkrqpx7b6sxalw1qyrncck70mx6p5gr57mf558l5mlqi52v7hg0"))))
    (properties `((upstream-name . "networktree")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-qgraph
                             r-partykit
                             r-mvtnorm
                             r-matrix
                             r-gridbase
                             r-formula))
    (home-page "https://paytonjjones.github.io/networktree/")
    (synopsis "Recursive Partitioning of Network Models")
    (description
     "Network trees recursively partition the data with respect to covariates.  Two
network tree algorithms are available: model-based trees based on a multivariate
normal model and nonparametric trees based on covariance structures.  After
partitioning, correlation-based networks (psychometric networks) can be fit on
the partitioned data.  For details see Jones, Mair, Simon, & Zeileis (2020)
<doi:10.1007/s11336-020-09731-4>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-networktools
  (package
    (name "r-networktools")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networktools" version))
       (sha256
        (base32 "0y5sfqn0ijgclm191kxfkqs6l8vnmdjsnjjsawq3nl4ziw7zlpfy"))))
    (properties `((upstream-name . "networktools")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-smacof
                             r-reshape2
                             r-rcolorbrewer
                             r-r-utils
                             r-qgraph
                             r-psych
                             r-igraph
                             r-gridextra
                             r-ggplot2
                             r-eigenmodel
                             r-cocor))
    (home-page "https://CRAN.R-project.org/package=networktools")
    (synopsis "Tools for Identifying Important Nodes in Networks")
    (description
     "Includes assorted tools for network analysis.  Bridge centrality; goldbricker;
MDS, PCA, & eigenmodel network plotting.")
    (license license:gpl3)))

(define-public r-networktoolbox
  (package
    (name "r-networktoolbox")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkToolbox" version))
       (sha256
        (base32 "026gizms1xsmlpzgssgqi2y5lfhvvbqkwy5q3a0d4xvzbmyan3y7"))))
    (properties `((upstream-name . "NetworkToolbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-matlab
                             r-qgraph
                             r-pwr
                             r-psych
                             r-ppcor
                             r-pbapply
                             r-mass
                             r-isingfit
                             r-igraph
                             r-foreach
                             r-fdrtool
                             r-doparallel
                             r-corrplot))
    (home-page "https://cran.r-project.org/package=NetworkToolbox")
    (synopsis
     "Methods and Measures for Brain, Cognitive, and Psychometric Network Analysis")
    (description
     "This package implements network analysis and graph theory measures used in
neuroscience, cognitive science, and psychology.  Methods include various
filtering methods and approaches such as threshold, dependency (Kenett,
Tumminello, Madi, Gur-Gershgoren, Mantegna, & Ben-Jacob, 2010
<doi:10.1371/journal.pone.0015032>), Information Filtering Networks (Barfuss,
Massara, Di Matteo, & Aste, 2016 <doi:10.1103/@code{PhysRevE.94.062306>}), and
Efficiency-Cost Optimization (Fallani, Latora, & Chavez, 2017
<doi:10.1371/journal.pcbi.1005305>).  Brain methods include the recently
developed Connectome Predictive Modeling (see references in package).  Also
implements several network measures including local network characteristics
(e.g., centrality), community-level network characteristics (e.g., community
centrality), global network characteristics (e.g., clustering coefficient), and
various other measures associated with the reliability and reproducibility of
network analysis.")
    (license license:gpl3+)))

(define-public r-networkscaleup
  (package
    (name "r-networkscaleup")
    (version "0.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkscaleup" version))
       (sha256
        (base32 "02ywmmj95xlgdavs81m0gbzyfwf9ac2wrbfwq2kcxgc0la4aimvc"))))
    (properties `((upstream-name . "networkscaleup")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-laplacesdemon
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=networkscaleup")
    (synopsis "Network Scale-Up Models for Aggregated Relational Data")
    (description
     "This package provides a variety of Network Scale-up Models for researchers to
analyze Aggregated Relational Data, mostly through the use of Stan.  In this
version, the package implements models from Laga, I., Bao, L., and Niu, X (2021)
<@code{arXiv:2109.10204>}, Zheng, T., Salganik, M. J., and Gelman, A. (2006)
<doi:10.1198/016214505000001168>, Killworth, P. D., Johnsen, E. C.,
@code{McCarty}, C., Shelley, G. A., and Bernard, H. R. (1998)
<doi:10.1016/S0378-8733(96)00305-X>, and Killworth, P. D., @code{McCarty}, C.,
Bernard, H. R., Shelley, G. A., and Johnsen, E. C. (1998)
<doi:10.1177/0193841X9802200205>.")
    (license license:gpl3+)))

(define-public r-networkriskmeasures
  (package
    (name "r-networkriskmeasures")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkRiskMeasures" version))
       (sha256
        (base32 "1121ma43jxc4p9rw0sc8w32shf9xrmn5qd1xsqgzr8diymc49zhg"))))
    (properties `((upstream-name . "NetworkRiskMeasures")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-ggplot2 r-expm r-dplyr))
    (home-page "https://github.com/carloscinelli/NetworkRiskMeasures")
    (synopsis "Risk Measures for (Financial) Networks")
    (description
     "This package implements some risk measures for (financial) networks, such as
@code{DebtRank}, Impact Susceptibility, Impact Diffusion and Impact Fluidity.")
    (license license:gpl3)))

(define-public r-networkr
  (package
    (name "r-networkr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkR" version))
       (sha256
        (base32 "07dq3syk0hr1kc2mqd70g0ih09hamd7rxxms60dyvnpm8978c1wz"))))
    (properties `((upstream-name . "networkR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix r-fastmatch
                             r-data-table))
    (home-page "https://cran.r-project.org/package=networkR")
    (synopsis "Network Analysis and Visualization")
    (description
     "Collection of functions for fast manipulation, handling, and analysis of
large-scale networks based on family and social data.  Functions are utility
functions used to manipulate data in three \"formats\": sparse adjacency matrices,
pedigree trio family data, and pedigree family data.  When possible, the
functions should be able to handle millions of data points quickly for use in
combination with data from large public national registers and databases.
Kenneth Lange (2003, ISBN:978-8181281135).")
    (license license:gpl2+)))

(define-public r-networklite
  (package
    (name "r-networklite")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkLite" version))
       (sha256
        (base32 "12vifn3vnhk0nk357759zp154v3l8hyapjqygkz31czhz3a5baxa"))))
    (properties `((upstream-name . "networkLite")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-statnet-common r-network r-dplyr))
    (home-page "https://github.com/EpiModel/networkLite/")
    (synopsis
     "An Simplified Implementation of the 'network' Package Functionality")
    (description
     "An implementation of some of the core network package functionality based on a
simplified data structure that is faster in many research applications.  This
package is designed for back-end use in the statnet family of packages,
including @code{EpiModel}'.  Support is provided for binary and weighted,
directed and undirected, bipartite and unipartite networks; no current support
for multigraphs, hypergraphs, or loops.")
    (license license:gpl3)))

(define-public r-networkinference
  (package
    (name "r-networkinference")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkInference" version))
       (sha256
        (base32 "1x63szbns8wf3k89ibk2p66prngw4fr2ckfn1568mnxdwnzvhrb4"))))
    (properties `((upstream-name . "NetworkInference")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress
                             r-rcpp
                             r-ggrepel
                             r-ggplot2
                             r-checkmate
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NetworkInference")
    (synopsis "Inferring Latent Diffusion Networks")
    (description
     "This is an R implementation of the netinf algorithm (Gomez Rodriguez, Leskovec,
and Krause, 2010)<doi:10.1145/1835804.1835933>.  Given a set of events that
spread between a set of nodes the algorithm infers the most likely stable
diffusion network that is underlying the diffusion process.")
    (license license:expat)))

(define-public r-networkgen
  (package
    (name "r-networkgen")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkGen" version))
       (sha256
        (base32 "1vnh5dajiaf47kx1sxyp744mlk3yvl4sxj380i3b3ic1wlgyd2h1"))))
    (properties `((upstream-name . "networkGen")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-igraph))
    (home-page "https://cran.r-project.org/package=networkGen")
    (synopsis "Network Maze Generator")
    (description
     "This package provides a network Maze generator that creates different types of
network mazes.")
    (license license:gpl3)))

(define-public r-networkextinction
  (package
    (name "r-networkextinction")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkExtinction" version))
       (sha256
        (base32 "1y2f715y077bwj8ymamrskwhbc7adg7q9ijkks2yr2gwj8i47xy4"))))
    (properties `((upstream-name . "NetworkExtinction")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sna
                             r-scales
                             r-rlang
                             r-purrr
                             r-patchwork
                             r-network
                             r-mass
                             r-magrittr
                             r-igraph
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-doparallel
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://derek-corcoran-barrios.github.io/NetworkExtinction/")
    (synopsis "Extinction Simulation in Ecological Networks")
    (description
     "Simulates the extinction of species in ecological networks and it analyzes its
cascading effects, described in Dunne et al. (2002)
<doi:10.1073/pnas.192407699>.")
    (license license:gpl2+)))

(define-public r-networkdynamicdata
  (package
    (name "r-networkdynamicdata")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkDynamicData" version))
       (sha256
        (base32 "176al8jp0gha6yzhyn5flmyackmmdnh1h8sasqrdcmba7ha7cya6"))))
    (properties `((upstream-name . "networkDynamicData")))
    (build-system r-build-system)
    (propagated-inputs (list r-networkdynamic r-network))
    (home-page "http://statnet.org")
    (synopsis "Dynamic (Longitudinal) Network Datasets")
    (description
     "This package provides a collection of dynamic network data sets from various
sources and multiple authors represented as @code{networkDynamic'-formatted}
objects.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-networkdynamic
  (package
    (name "r-networkdynamic")
    (version "0.11.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkDynamic" version))
       (sha256
        (base32 "0nwfcis6hxca99kbcqv90g0hrfxgwqc7mml0jh4xq32wv384yric"))))
    (properties `((upstream-name . "networkDynamic")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common r-networklite r-network))
    (home-page "https://statnet.org/")
    (synopsis "Dynamic Extensions for Network Objects")
    (description
     "Simple interface routines to facilitate the handling of network objects with
complex intertemporal data.  This is a part of the \"statnet\" suite of packages
for network analysis.")
    (license license:gpl3)))

(define-public r-networkdistance
  (package
    (name "r-networkdistance")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkDistance" version))
       (sha256
        (base32 "0z3q15aq5jqwbyxr4464nq74ib7644f185h8wfzvfi491xkrl4cr"))))
    (properties `((upstream-name . "NetworkDistance")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-network
                             r-matrix
                             r-igraph
                             r-graphon
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NetworkDistance")
    (synopsis "Distance Measures for Networks")
    (description
     "Network is a prevalent form of data structure in many fields.  As an object of
analysis, many distance or metric measures have been proposed to define the
concept of similarity between two networks.  We provide a number of distance
measures for networks.  See Jurman et al (2011)
<doi:10.3233/978-1-60750-692-8-227> for an overview on spectral class of
inter-graph distance measures.")
    (license license:expat)))

(define-public r-networkcomparr
  (package
    (name "r-networkcomparr")
    (version "0.0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkComparr" version))
       (sha256
        (base32 "11vzcm80dvrk0cadiwg1zy7iml6q43777rzq2phg7dc3s0p1fian"))))
    (properties `((upstream-name . "NetworkComparr")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-qgraph
                             r-networktools
                             r-igraph
                             r-gdata
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=NetworkComparr")
    (synopsis "Statistical Comparison of Networks")
    (description
     "This package provides a permutation-based hypothesis test for statistical
comparison of two networks based on the invariance measures of the R package
@code{NetworkComparisonTest} by van Borkulo et al. (2022),
<doi:10.1037/met0000476>: network structure invariance, global strength
invariance, edge invariance, and various centrality measures.  Edgelists from
dependent or independent samples are used as input.  These edgelists are
generated from concept maps and summed into two comparable group networks.  The
networks can be directed or undirected.")
    (license license:gpl2)))

(define-public r-networkcomparisontest
  (package
    (name "r-networkcomparisontest")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkComparisonTest" version))
       (sha256
        (base32 "08v29q7shygbbdbfrw6vpdhbs2qb4x8hycg0vhlfsm0w0fwivxhi"))))
    (properties `((upstream-name . "NetworkComparisonTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-qgraph r-networktools r-matrix
                             r-isingfit))
    (home-page "https://cran.r-project.org/package=NetworkComparisonTest")
    (synopsis
     "Statistical Comparison of Two Networks Based on Several Invariance Measures")
    (description
     "This permutation based hypothesis test, suited for several types of data
supported by the @code{estimateNetwork} function of the bootnet package (Epskamp
& Fried, 2018), assesses the difference between two networks based on several
invariance measures (network structure invariance, global strength invariance,
edge invariance, several centrality measures, etc.).  Network structures are
estimated with l1-regularization.  The Network Comparison Test is suited for
comparison of independent (e.g., two different groups) and dependent samples
(e.g., one group that is measured twice).  See van Borkulo et al. (2021),
available from <doi:10.1037/met0000476>.")
    (license license:gpl2)))

(define-public r-networkchange
  (package
    (name "r-networkchange")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetworkChange" version))
       (sha256
        (base32 "03rzyfiwbqpr4jj3wdg3s1gnfizz39j07yk0q2fkq3a8pfx4w306"))))
    (properties `((upstream-name . "NetworkChange")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rmpfr
                             r-rlang
                             r-reshape
                             r-rcolorbrewer
                             r-qgraph
                             r-network
                             r-mvtnorm
                             r-mcmcpack
                             r-mass
                             r-igraph
                             r-gridextra
                             r-ggvis
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-abind))
    (home-page "https://github.com/jongheepark/NetworkChange")
    (synopsis "Bayesian Package for Network Changepoint Analysis")
    (description
     "Network changepoint analysis for undirected network data.  The package
implements a hidden Markov network change point model (Park and Sohn (2020)).
Functions for break number detection using the approximate marginal likelihood
and WAIC are also provided.")
    (license license:gpl3)))

(define-public r-networkabc
  (package
    (name "r-networkabc")
    (version "0.8-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "networkABC" version))
       (sha256
        (base32 "0754770z3db7faadh8bxk0h70frjk6v8zjklkhclxnach1vag2k6"))))
    (properties `((upstream-name . "networkABC")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna r-rcolorbrewer r-network))
    (native-inputs (list r-knitr))
    (home-page "https://fbertran.github.io/networkABC/")
    (synopsis
     "Network Reverse Engineering with Approximate Bayesian Computation")
    (description
     "We developed an inference tool based on approximate Bayesian computation to
decipher network data and assess the strength of the inferred links between
network's actors.  It is a new multi-level approximate Bayesian computation
(ABC) approach.  At the first level, the method captures the global properties
of the network, such as a scale-free structure and clustering coefficients,
whereas the second level is targeted to capture local properties, including the
probability of each couple of genes being linked.  Up to now, Approximate
Bayesian Computation (ABC) algorithms have been scarcely used in that setting
and, due to the computational overhead, their application was limited to a small
number of genes.  On the contrary, our algorithm was made to cope with that
issue and has low computational cost.  It can be used, for instance, for
elucidating gene regulatory network, which is an important step towards
understanding the normal cell physiology and complex pathological phenotype.
Reverse-engineering consists in using gene expressions over time or over
different experimental conditions to discover the structure of the gene network
in a targeted cellular process.  The fact that gene expression data are usually
noisy, highly correlated, and have high dimensionality explains the need for
specific statistical methods to reverse engineer the underlying network.")
    (license license:gpl3)))

(define-public r-netweaver
  (package
    (name "r-netweaver")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetWeaver" version))
       (sha256
        (base32 "058fi3vbp11mbg69n4yp1zf48akfdl6s2p0qpa0v6ngmk2zjk0bq"))))
    (properties `((upstream-name . "NetWeaver")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mw201608/NetWeaver/")
    (synopsis
     "Graphic Presentation of Complex Genomic and Network Data Analysis")
    (description
     "This package implements various simple function utilities and flexible pipelines
to generate circular images for visualizing complex genomic and network data
analysis features.")
    (license license:gpl3)))

(define-public r-netutils
  (package
    (name "r-netutils")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netUtils" version))
       (sha256
        (base32 "0laha093wxkvs06wh2hsmyxypn89n7vlh183zw6k26d67vl15a6j"))))
    (properties `((upstream-name . "netUtils")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-igraph))
    (home-page "https://github.com/schochastics/netUtils/")
    (synopsis "Collection of Tools for Network Analysis")
    (description
     "This package provides a collection of network analytic (convenience) functions
which are missing in other standard packages.  This includes triad census with
attributes <doi:10.1016/j.socnet.2019.04.003>, core-periphery models
<doi:10.1016/S0378-8733(99)00019-2>, and several graph generators.  Most
functions are build upon igraph'.")
    (license license:expat)))

(define-public r-nettskjemar
  (package
    (name "r-nettskjemar")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nettskjemar" version))
       (sha256
        (base32 "0cghjk9hw3m0b6xalqg0p7v60jvshcfy6z5sfl4p2z6y17pkf72b"))))
    (properties `((upstream-name . "nettskjemar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-usethis
                             r-tidyr
                             r-rvest
                             r-purrr
                             r-pbapply
                             r-jsonlite
                             r-httr
                             r-here
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LCBC-UiO/nettskjemar")
    (synopsis "Connect to the 'nettskjema.no' API of the University of Oslo")
    (description
     "Enables users to retrieve data, meta-data, and codebooks from
<https://nettskjema.no/>.  The data from the API is richer than from the online
data portal.  Mowinckel (2021) <doi:10.5281/zenodo.4745481>.")
    (license license:expat)))

(define-public r-nett
  (package
    (name "r-nett")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nett" version))
       (sha256
        (base32 "1prb1zskhc50jzqmh1cdk4lljr4xqp4aaaaw1r66hmpy0d9ghhph"))))
    (properties `((upstream-name . "nett")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix r-magrittr
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aaamini/nett")
    (synopsis "Network Analysis and Community Detection")
    (description
     "Features tools for the network data analysis and community detection.  Provides
multiple methods for fitting, model selection and goodness-of-fit testing in
degree-corrected stochastic blocks models.  Most of the computations are fast
and scalable for sparse networks, esp.  for Poisson versions of the models.
Implements the following: Amini, Chen, Bickel and Levina (2013)
<doi:10.1214/13-AOS1138> Bickel and Sarkar (2015) <doi:10.1111/rssb.12117> Lei
(2016) <doi:10.1214/15-AOS1370> Wang and Bickel (2017) <doi:10.1214/16-AOS1457>
Zhang and Amini (2020) <@code{arXiv:2012.15047>} Le and Levina (2022)
<doi:10.1214/21-EJS1971>.")
    (license license:expat)))

(define-public r-netswan
  (package
    (name "r-netswan")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetSwan" version))
       (sha256
        (base32 "1mwdy3ahagiifj2bd1ajrafvnxzi74a1x1d3i2laf1hqpz3fbgld"))))
    (properties `((upstream-name . "NetSwan")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=NetSwan")
    (synopsis "Network Strengths and Weaknesses Analysis")
    (description
     "This package provides a set of functions for studying network robustness,
resilience and vulnerability.")
    (license license:gpl2+)))

(define-public r-netstat
  (package
    (name "r-netstat")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netstat" version))
       (sha256
        (base32 "0d26w0xyi5645132bxybsy8zadfcfifbwp5s22r0cnd546czjvz8"))))
    (properties `((upstream-name . "netstat")))
    (build-system r-build-system)
    (home-page "https://github.com/stevecondylios/netstat")
    (synopsis "Retrieve Network Statistics Including Available TCP Ports")
    (description
     "R interface for the netstat command line utility used to retrieve and parse
commonly used network statistics, including available and in-use transmission
control protocol (TCP) ports.  Primers offering technical background information
on the netstat command line utility are available in the \"Linux System
Administrator's Manual\" by Michael Kerrisk (2014)
<https://man7.org/linux/man-pages/man8/netstat.8.html>, and on the Microsoft
website (2017)
<https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/netstat>.")
    (license license:expat)))

(define-public r-netsimr
  (package
    (name "r-netsimr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetSimR" version))
       (sha256
        (base32 "1w2mhmjpzlzy86250wlmwvcl7p3qasdfabhysfrcnkp0ndff966y"))))
    (properties `((upstream-name . "NetSimR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shinybusy
                             r-shiny
                             r-scales
                             r-rsqlite
                             r-rpostgresql
                             r-rodbc
                             r-rmysql
                             r-rmarkdown
                             r-plotly
                             r-mass
                             r-future-apply
                             r-future
                             r-fitdistrplus
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NetSimR")
    (synopsis "Actuarial Functions for Non-Life Insurance Modelling")
    (description
     "Assists actuaries and other insurance modellers in pricing, reserving and
capital modelling for non-life insurance and reinsurance modelling.  Provides
functions that help model excess levels, capping and pure Incurred but not
reported claims (pure IBNR).  Includes capped mean, exposure curves and
increased limit factor curves (ILFs) for @code{LogNormal}, Gamma, Pareto, Sliced
@code{LogNormal-Pareto} and Sliced Gamma-Pareto distributions.  Includes mean,
probability density function (pdf), cumulative probability function (cdf) and
inverse cumulative probability function for Sliced @code{LogNormal-Pareto} and
Sliced Gamma-Pareto distributions.  Includes calculating pure IBNR exposure with
@code{LogNormal} and Gamma distribution for reporting delay.  Includes three
shiny tools, one to simulate insurance claims applying reinsurance structures,
fit generalised linear models and fit claims frequency or severity
distributions.  Methods used in the package refer to Free for All by Yiannis
Parizas (2023) <https://www.theactuary.com/2023/03/02/free-all>; Escaping the
triangle by Yiannis Parizas (2019)
<https://www.theactuary.com/features/2019/06/2019/06/05/escaping-triangle>; Take
to excess by Yiannis Parizas (2019)
<https://www.theactuary.com/features/2019/03/2019/03/06/taken-excess>.")
    (license license:gpl3)))

(define-public r-netshiny
  (package
    (name "r-netshiny")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netShiny" version))
       (sha256
        (base32 "1k6dmhkjf29ww31c15jms0yxwyiqq1z7a9115zwbg620cjd3m6fm"))))
    (properties `((upstream-name . "netShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-shinywidgets
                             r-shinyscreenshot
                             r-shinyjs
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-readxl
                             r-promises
                             r-plotly
                             r-netgwas
                             r-matrix
                             r-magrittr
                             r-ipc
                             r-igraph
                             r-ggvenndiagram
                             r-ggplot2
                             r-future-callr
                             r-future
                             r-dt
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=netShiny")
    (synopsis "Tool for Comparison and Visualization of Multiple Networks")
    (description
     "We developed a comprehensive tool that helps with visualization and analysis of
networks with the same variables across multiple factor levels.  The
@code{netShiny} contains most of the popular network features such as centrality
measures, modularity, and other summary statistics (e.g. clustering
coefficient).  It also contains known tools to look at the (dis)similarities
between two networks, such as pairwise distance measures between networks, set
operations on the nodes of the networks, distribution of the weights of the
edges and a network representing the difference between two correlation
matrices.  The package @code{netShiny} also contains tools to perform
bootstrapping and find clusters in networks.  See the @code{netShiny} manual for
more information, documentation and examples.")
    (license license:gpl3+)))

(define-public r-netsem
  (package
    (name "r-netsem")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netSEM" version))
       (sha256
        (base32 "1znb3r8jc1ms4ajzb3ryr89wjx6f3rw1f410msh46d5h08wsjn9n"))))
    (properties `((upstream-name . "netSEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-svglite
                             r-segmented
                             r-rsvg
                             r-png
                             r-mass
                             r-magrittr
                             r-knitr
                             r-htmlwidgets
                             r-gtools
                             r-diagrammersvg
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=netSEM")
    (synopsis "Network Structural Equation Modeling")
    (description
     "The network structural equation modeling conducts a network statistical analysis
on a data frame of coincident observations of multiple continuous variables [1].
 It builds a pathway model by exploring a pool of domain knowledge guided
candidate statistical relationships between each of the variable pairs,
selecting the best fit on the basis of a specific criteria such as adjusted
r-squared value.  This material is based upon work supported by the U.S.
National Science Foundation Award EEC-2052776 and EEC-2052662 for the MDS-Rely
IUCRC Center, under the NSF Solicitation: NSF 20-570 Industry-University
Cooperative Research Centers Program [1] Bruckman, Laura S., Nicholas R.
Wheeler, Junheng Ma, Ethan Wang, Carl K. Wang, Ivan Chou, Jiayang Sun, and Roger
H. French. (2013) <doi:10.1109/ACCESS.2013.2267611>.")
    (license license:gpl2+)))

(define-public r-netseg
  (package
    (name "r-netseg")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netseg" version))
       (sha256
        (base32 "1idj5xgd3yacy92qf4836vl18d93g4xn0za6qk722qbxa069mfyi"))))
    (properties `((upstream-name . "netseg")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://mbojan.github.io/netseg/")
    (synopsis "Measures of Network Segregation and Homophily")
    (description
     "Segregation is a network-level property such that edges between predefined
groups of vertices are relatively less likely.  Network homophily is a
individual-level tendency to form relations with people who are similar on some
attribute (e.g. gender, music taste, social status, etc.).  In general homophily
leads to segregation, but segregation might arise without homophily.  This
package implements descriptive indices measuring homophily/segregation.  It is a
computational companion to Bojanowski & Corten (2014)
<doi:10.1016/j.socnet.2014.04.001>.")
    (license license:gpl2)))

(define-public r-netsci
  (package
    (name "r-netsci")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetSci" version))
       (sha256
        (base32 "1fliilk5z7lldkry5kijwab0k6ysqy87fcfrnwyywxkpxxrv1578"))))
    (properties `((upstream-name . "NetSci")))
    (build-system r-build-system)
    (propagated-inputs (list r-wto
                             r-rfast
                             r-magrittr
                             r-igraph
                             r-dplyr
                             r-cubature
                             r-binr))
    (home-page "https://cran.r-project.org/package=NetSci")
    (synopsis
     "Calculates Basic Network Measures Commonly Used in Network Medicine")
    (description
     "Calculates network measures such as Largest Connected Component (LCC),
Proximity, Separation, Jaccard Index, along with permutation, when needed.")
    (license license:gpl2)))

(define-public r-nets
  (package
    (name "r-nets")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nets" version))
       (sha256
        (base32 "00adkyd2hm8aynpnk4avzss8fxkbaai74n5cf03vpwyc306jq0d7"))))
    (properties `((upstream-name . "nets")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://github.com/ctbrownlees/R-Package-nets")
    (synopsis "Network Estimation for Time Series")
    (description "Sparse VAR estimation based on LASSO.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-netropy
  (package
    (name "r-netropy")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netropy" version))
       (sha256
        (base32 "1c7gmv4lm2i2bmvhan5v0w3s3qvaxq0l7f4q76jhcc9mlz0plbh1"))))
    (properties `((upstream-name . "netropy")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-ggraph r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=netropy")
    (synopsis "Statistical Entropy Analysis of Network Data")
    (description
     "Statistical entropy analysis of network data as introduced by Frank and Shafie
(2016) <doi:10.1177/0759106315615511>, and in a forthcoming book by Nowicki,
Shafie and Frank (2022).")
    (license license:expat)))

(define-public r-netregr
  (package
    (name "r-netregr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netregR" version))
       (sha256
        (base32 "0n5absjra0imddz1spy1piij5rdz76wi4g568yby3rbhkm1896rs"))))
    (properties `((upstream-name . "netregR")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=netregR")
    (synopsis "Regression of Network Responses")
    (description
     "Regress network responses (both directed and undirected) onto covariates of
interest that may be actor-, relation-, or network-valued.  In addition, compute
principled variance estimates of the coefficients assuming that the errors are
jointly exchangeable.  Missing data is accommodated.  Additionally implements
building and inversion of covariance matrices under joint exchangeability, and
generates random covariance matrices from this class.  For more detail on
methods, see Marrs, Fosdick, and @code{McCormick} (2017)
<@code{arXiv:1701.05530>}.")
    (license license:expat)))

(define-public r-netrankr
  (package
    (name "r-netrankr")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netrankr" version))
       (sha256
        (base32 "14r5xy4j7d2vkbfrlylipx17n66kk7fl1n0hipx5hn6na5slxkfi"))))
    (properties `((upstream-name . "netrankr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/schochastics/netrankr/")
    (synopsis "Analyzing Partial Rankings in Networks")
    (description
     "This package implements methods for centrality related analyses of networks.
While the package includes the possibility to build more than 20 indices, its
main focus lies on index-free assessment of centrality via partial rankings
obtained by neighborhood-inclusion or positional dominance.  These partial
rankings can be analyzed with different methods, including probabilistic methods
like computing expected node ranks and relative rank probabilities (how likely
is it that a node is more central than another?).  The methodology is described
in depth in the vignettes and in Schoch (2018)
<doi:10.1016/j.socnet.2017.12.003>.")
    (license license:expat)))

(define-public r-netpreproc
  (package
    (name "r-netpreproc")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetPreProc" version))
       (sha256
        (base32 "07drrgvgl3msbcxi113hinqss30lkzrv9hqkzwa41bpssfq8x68c"))))
    (properties `((upstream-name . "NetPreProc")))
    (build-system r-build-system)
    (propagated-inputs (list r-graph))
    (home-page "https://cran.r-project.org/package=NetPreProc")
    (synopsis "Network Pre-Processing and Normalization")
    (description
     "Network Pre-Processing and normalization.  Methods for normalizing graphs,
including Chua normalization, Laplacian normalization, Binary magnification,
min-max normalization and others.  Methods to sparsify adjacency matrices.
Methods for graph pre-processing and for filtering edges of the graph.")
    (license license:gpl2+)))

(define-public r-netplot
  (package
    (name "r-netplot")
    (version "0.2-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netplot" version))
       (sha256
        (base32 "0l4sy8wn2fd04fpkrh853r923dajpqldc78ws4kmh6ixn1l43c21"))))
    (properties `((upstream-name . "netplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna r-network r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCCANA/netplot")
    (synopsis "Beautiful Graph Drawing")
    (description
     "This package provides a graph visualization engine that puts an emphasis on
aesthetics at the same time of providing default parameters that yield
out-of-the-box-nice visualizations.  The package is built on top of The Grid
Graphics Package and seamlessly work with igraph and network objects.")
    (license license:expat)))

(define-public r-netorigin
  (package
    (name "r-netorigin")
    (version "1.1-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetOrigin" version))
       (sha256
        (base32 "0brjg6w79r6bkga9dpqph9l7k6wq5hvsjfhrwx7dnyr437f7z4hk"))))
    (properties `((upstream-name . "NetOrigin")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-plyr
                             r-mvtnorm
                             r-igraph
                             r-hmisc
                             r-dplyr
                             r-corpcor
                             r-colorspace))
    (home-page "https://netorigin.manitz.org/")
    (synopsis
     "Origin Estimation for Propagation Processes on Complex Networks")
    (description
     "This package performs network-based source estimation.  Different approaches are
available: effective distance median, recursive backtracking, and
centrality-based source estimation.  Additionally, we provide public
transportation network data as well as methods for data preparation, source
estimation performance analysis and visualization.")
    (license license:gpl3)))

(define-public r-netmix
  (package
    (name "r-netmix")
    (version "0.2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetMix" version))
       (sha256
        (base32 "0363z06y7ildk7bifhj2lmva0hf591nyp10x9ccd6csj387n968p"))))
    (properties `((upstream-name . "NetMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-poisbinom
                             r-matrix
                             r-mass
                             r-lda
                             r-igraph
                             r-gtools
                             r-clue))
    (home-page "https://cran.r-project.org/package=NetMix")
    (synopsis "Dynamic Mixed-Membership Network Regression Model")
    (description
     "Stochastic collapsed variational inference on mixed-membership stochastic
blockmodel for networks, incorporating node-level predictors of mixed-membership
vectors, as well as dyad-level predictors.  For networks observed over time, the
model defines a hidden Markov process that allows the effects of node-level
predictors to evolve in discrete, historical periods.  In addition, the package
offers a variety of utilities for exploring results of estimation, including
tools for conducting posterior predictive checks of goodness-of-fit and several
plotting functions.  The package implements methods described in Olivella, Pratt
and Imai (2019) Dynamic Stochastic Blockmodel Regression for Social Networks:
Application to International Conflicts', available at
<https://www.santiagoolivella.info/pdfs/socnet.pdf>.")
    (license license:gpl2+)))

(define-public r-netmeta
  (package
    (name "r-netmeta")
    (version "2.8-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netmeta" version))
       (sha256
        (base32 "132qkvpkami568w276qc269844z0d1l3yjbj71if4r2w8ra3p5wy"))))
    (properties `((upstream-name . "netmeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-metafor r-meta r-mass r-magic r-ggplot2))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=netmeta")
    (synopsis "Network Meta-Analysis using Frequentist Methods")
    (description
     "This package provides a comprehensive set of functions providing frequentist
methods for network meta-analysis (Balduzzi et al., 2023)
<doi:10.18637/jss.v106.i02> and supporting Schwarzer et al. (2015)
<doi:10.1007/978-3-319-21416-0>, Chapter 8 \"Network Meta-Analysis\": -
frequentist network meta-analysis following RÃ¼cker (2012)
<doi:10.1002/jrsm.1058>; - additive network meta-analysis for combinations of
treatments (RÃ¼cker et al., 2020) <doi:10.1002/bimj.201800167>; - network
meta-analysis of binary data using the Mantel-Haenszel or non-central
hypergeometric distribution method (Efthimiou et al., 2019)
<doi:10.1002/sim.8158>; - rankograms and ranking of treatments by the Surface
under the cumulative ranking curve (SUCRA) (Salanti et al., 2013)
<doi:10.1016/j.jclinepi.2010.03.016>; - ranking of treatments using P-scores
(frequentist analogue of SUCRAs without resampling) according to RÃ¼cker &
Schwarzer (2015) <doi:10.1186/s12874-015-0060-8>; - split direct and indirect
evidence to check consistency (Dias et al., 2010) <doi:10.1002/sim.3767>,
(Efthimiou et al., 2019) <doi:10.1002/sim.8158>; - league table with network
meta-analysis results; - comparison-adjusted funnel plot (Chaimani & Salanti,
2012) <doi:10.1002/jrsm.57>; - net heat plot and design-based decomposition of
Cochran's Q according to Krahn et al. (2013) <doi:10.1186/1471-2288-13-35>; -
measures characterizing the flow of evidence between two treatments by KÃ¶nig et
al. (2013) <doi:10.1002/sim.6001>; - automated drawing of network graphs
described in RÃ¼cker & Schwarzer (2016) <doi:10.1002/jrsm.1143>; - partial order
of treatment rankings ('poset') and Hasse diagram for poset (Carlsen &
Bruggemann, 2014) <doi:10.1002/cem.2569>; (RÃ¼cker & Schwarzer, 2017)
<doi:10.1002/jrsm.1270>; - contribution matrix as described in Papakonstantinou
et al. (2018) <doi:10.12688/f1000research.14770.3> and Davies et al. (2022)
<doi:10.1002/sim.9346>.")
    (license license:gpl2+)))

(define-public r-netmediate
  (package
    (name "r-netmediate")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netmediate" version))
       (sha256
        (base32 "13yrc0sfq5vl6md3jwmzyrzqnkr68f6hksvlj834md1gx29rwj2q"))))
    (properties `((upstream-name . "netmediate")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-sna
                             r-rsiena
                             r-plyr
                             r-plm
                             r-network
                             r-mass
                             r-lme4
                             r-intergraph
                             r-gam
                             r-ergmargins
                             r-ergm
                             r-btergm))
    (home-page "https://cran.r-project.org/package=netmediate")
    (synopsis "Micro-Macro Analysis for Social Networks")
    (description
     "Estimates micro effects on macro structures (MEMS) and average micro mediated
effects (AMME).  URL: <https://github.com/sduxbury/netmediate>.
@code{BugReports}: <https://github.com/sduxbury/netmediate/issues>.  Robins,
Garry, Phillipa Pattison, and Jodie Woolcock (2005) <doi:10.1086/427322>.
Snijders, Tom A. B., and Christian E. G. Steglich (2015)
<doi:10.1177/0049124113494573>.  Imai, Kosuke, Luke Keele, and Dustin Tingley
(2010) <doi:10.1037/a0020761>.")
    (license license:gpl2+)))

(define-public r-netmap
  (package
    (name "r-netmap")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netmap" version))
       (sha256
        (base32 "02b3qb0yk6hawd23x44p5d14dvxryf0c7ydlj6d75dgpsddnfj1n"))))
    (properties `((upstream-name . "netmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna
                             r-sf
                             r-rlang
                             r-network
                             r-igraph
                             r-ggnetwork))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/artod83/netmap")
    (synopsis "Represent Network Objects on a Map")
    (description
     "Represent network or igraph objects whose vertices can be represented by
features in an sf object as a network graph surmising a sf plot.  Fits into
ggplot2 grammar.")
    (license license:gpl3+)))

(define-public r-netint
  (package
    (name "r-netint")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetInt" version))
       (sha256
        (base32 "08vmqjai1lakbb4zs895fn0hn3gw2q7zsdkx6yxidfff5qn4mq6b"))))
    (properties `((upstream-name . "NetInt")))
    (build-system r-build-system)
    (propagated-inputs (list r-mathjaxr))
    (home-page "https://cran.r-project.org/package=NetInt")
    (synopsis "Methods for Unweighted and Weighted Network Integration")
    (description
     "Implementation of network integration approaches comprising unweighted and
weighted integration methods.  Unweighted integration is performed considering
the average, per-edge average, maximum and minimum of networks edges.  Weighted
integration takes into account a weight for each network during the fusion
process, where the weights express the predictiveness strength of each network
considering a specific predictive task.  Weights can be learned using a machine
learning algorithm able to associate the weights to the assessment of the
accuracy of the learning algorithm trained on the network itself.  The
implemented methods can be applied to effectively integrate different biological
networks modelling a wide range of problems in bioinformatics (e.g. disease gene
prioritization, protein function prediction, drug repurposing, clinical outcome
prediction).")
    (license license:gpl2+)))

(define-public r-netindices
  (package
    (name "r-netindices")
    (version "1.4.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetIndices" version))
       (sha256
        (base32 "0zi3b9i2apfdcm85k7ah6r6ad0v6rji5gysb410vc3bgrixa03lk"))))
    (properties `((upstream-name . "NetIndices")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=NetIndices")
    (synopsis
     "Estimating Network Indices, Including Trophic Structure of Foodwebs in R")
    (description
     "Given a network (e.g. a food web), estimates several network indices.  These
include: Ascendency network indices, Direct and indirect dependencies, Effective
measures, Environ network indices, General network indices, Pathway analysis,
Network uncertainty indices and constraint efficiencies and the trophic level
and omnivory indices of food webs.")
    (license license:gpl2+)))

(define-public r-netie
  (package
    (name "r-netie")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netie" version))
       (sha256
        (base32 "0ja59rfg576z8rbv073aaab32qazlrqhvyvxpssibwsvbfcrhklm"))))
    (properties `((upstream-name . "netie")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=netie")
    (synopsis "Antigen T Cell Interaction Estimation")
    (description
     "The Bayesian hierarchical model named antigen-T cell interaction estimation is
to estimate the history of the immune pressure on the evolution of the tumor
clones.The model is based on the estimation result from Andrew Roth (2014)
<doi:10.1038/nmeth.2883>.")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-netgwas
  (package
    (name "r-netgwas")
    (version "1.14.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netgwas" version))
       (sha256
        (base32 "0xa3nc7by7v360n6s8fym65fpaz0am4yym3m653nkcr545s0rc5n"))))
    (properties `((upstream-name . "netgwas")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-qtl
                             r-matrix
                             r-mass
                             r-igraph
                             r-huge
                             r-glasso))
    (home-page "https://cran.r-project.org/package=netgwas")
    (synopsis "Network-Based Genome Wide Association Studies")
    (description
     "This package provides a multi-core R package that contains a set of tools based
on copula graphical models for accomplishing the three interrelated goals in
genetics and genomics in an unified way: (1) linkage map construction, (2)
constructing linkage disequilibrium networks, and (3) exploring high-dimensional
genotype-phenotype network and genotype- phenotype-environment interactions
networks.  The netgwas package can deal with biparental inbreeding and
outbreeding species with any ploidy level, namely diploid (2 sets of
chromosomes), triploid (3 sets of chromosomes), tetraploid (4 sets of
chromosomes) and so on.  We target on high-dimensional data where number of
variables p is considerably larger than number of sample sizes (p >> n).  The
computations is memory-optimized using the sparse matrix output.  The netgwas
implements the methodological developments in Behrouzi and Wit (2017)
<doi:10.1111/rssc.12287> and Behrouzi and Wit (2017)
<doi:10.1093/bioinformatics/bty777>.")
    (license license:gpl3)))

(define-public r-netgsa
  (package
    (name "r-netgsa")
    (version "4.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netgsa" version))
       (sha256
        (base32 "02127r3vskcksrd893qrs1wqwkbw3b8p33ybgvbwd9j4lxgifmr2"))))
    (properties `((upstream-name . "netgsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-reshape2
                             r-rcppeigen
                             r-rcpp
                             r-quadprog
                             r-org-hs-eg-db
                             r-msigdbr
                             r-matrix
                             r-magrittr
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-graphite
                             r-graph
                             r-glmnet
                             r-glassofast
                             r-genefilter
                             r-dplyr
                             r-data-table
                             r-corpcor
                             r-annotationdbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mikehellstern/netgsa")
    (synopsis "Network-Based Gene Set Analysis")
    (description
     "Carry out network-based gene set analysis by incorporating external information
about interactions among genes, as well as novel interactions learned from data.
 Implements methods described in Shojaie A, Michailidis G (2010)
<doi:10.1093/biomet/asq038>, Shojaie A, Michailidis G (2009)
<doi:10.1089/cmb.2008.0081>, and Ma J, Shojaie A, Michailidis G (2016)
<doi:10.1093/bioinformatics/btw410>.")
    (license license:gpl3+)))

(define-public r-netgen
  (package
    (name "r-netgen")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netgen" version))
       (sha256
        (base32 "1yqi4rb6w9ipxgbl1j1s2s81cg7nzrn65irn5gs82hsq94d6vv2j"))))
    (properties `((upstream-name . "netgen")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-mvtnorm
                             r-lhs
                             r-igraph
                             r-ggplot2
                             r-checkmate
                             r-bbmisc))
    (home-page "https://github.com/jakobbossek/netgen")
    (synopsis "Network Generator for Combinatorial Graph Problems")
    (description
     "This package provides methods for the generation of a wide range of network
geographies, e.g., grid networks or clustered networks.  Useful for the
generation of benchmarking instances for the investigation of, e.g.,
Vehicle-Routing-Problems or Travelling Salesperson Problems.")
    (license license:bsd-3)))

(define-public r-netfacs
  (package
    (name "r-netfacs")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetFACS" version))
       (sha256
        (base32 "05lqfawirdw4fh0hawm815hjdpyli7025dz3a5fsm6jh3l906z9i"))))
    (properties `((upstream-name . "NetFACS")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-rlang
                             r-rfast
                             r-picante
                             r-patchwork
                             r-magrittr
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-dplyr
                             r-doparallel
                             r-arrangements))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NetFACS")
    (synopsis "Network Applications to Facial Communication Data")
    (description
     "This package provides functions to analyze and visualize communication data,
based on network theory and resampling methods.  Farine, D. R. (2017)
<doi:10.1111/2041-210X.12772>; Carsey, T., & Harden, J. (2014)
<doi:10.4135/9781483319605>.  Primarily targeted at datasets of facial
expressions coded with the Facial Action Coding System.  Ekman, P., Friesen, W.
V., & Hager, J. C. (2002). \"Facial action coding system - investigator's guide\"
<https://www.paulekman.com/facial-action-coding-system/>.")
    (license license:asl2.0)))

(define-public r-netexplorer
  (package
    (name "r-netexplorer")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetExplorer" version))
       (sha256
        (base32 "0k8jhl0p2dp45lx4h77r0bkcff8vn1f9gvr475cshpmyipziiwnq"))))
    (properties `((upstream-name . "NetExplorer")))
    (build-system r-build-system)
    (native-inputs (list esbuild))
    (home-page "https://cran.r-project.org/package=NetExplorer")
    (synopsis "Network Explorer")
    (description
     "Social network analysis has become an essential tool in the study of complex
systems. @code{NetExplorer} allows to visualize and explore complex systems.  It
is based on d3js library that brings 1) Graphical user interface; 2) Circular,
linear, multilayer and force Layout; 3) Network live exploration and 4) SVG
exportation.")
    (license license:gpl3+)))

(define-public r-netdiffuser
  (package
    (name "r-netdiffuser")
    (version "1.22.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netdiffuseR" version))
       (sha256
        (base32 "0f4d0x03970iqxkbr0r9jm8gf28r79rimfnfr1djcajzihxaj7l6"))))
    (properties `((upstream-name . "netdiffuseR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-sparsem
                             r-sna
                             r-rcpparmadillo
                             r-rcpp
                             r-networkdynamic
                             r-network
                             r-matrix
                             r-matchit
                             r-mass
                             r-igraph
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCCANA/netdiffuseR")
    (synopsis "Analysis of Diffusion and Contagion Processes on Networks")
    (description
     "Empirical statistical analysis, visualization and simulation of diffusion and
contagion processes on networks.  The package implements algorithms for
calculating network diffusion statistics such as transmission rate, hazard
rates, exposure models, network threshold levels, infectiousness (contagion),
and susceptibility.  The package is inspired by work published in Valente, et
al., (2015) <DOI:10.1016/j.socscimed.2015.10.001>; Valente (1995) <ISBN:
9781881303213>, Myers (2000) <DOI:10.1086/303110>, Iyengar and others (2011)
<DOI:10.1287/mksc.1100.0566>, Burt (1987) <DOI:10.1086/228667>; among others.")
    (license license:expat)))

(define-public r-netda
  (package
    (name "r-netda")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetDA" version))
       (sha256
        (base32 "149wadsw6h2nlw8fpn1n9ami484zyzhbss5fdhc84bvcs21ivl81"))))
    (properties `((upstream-name . "NetDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-glasso))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NetDA")
    (synopsis
     "Network-Based Discriminant Analysis Subject to Multi-Label Classes")
    (description
     "Implementation of discriminant analysis with network structures in predictors
accommodated to do classification and prediction.")
    (license license:gpl2)))

(define-public r-netcox
  (package
    (name "r-netcox")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netcox" version))
       (sha256
        (base32 "04biaynmvqrilp0kdxw55b990j7iqnvn8gr07dhzm9f7r9sr7xk6"))))
    (properties `((upstream-name . "netcox")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpp r-glmnet))
    (home-page "https://cran.r-project.org/package=netcox")
    (synopsis
     "Structural Learning in Cox Models with Time-Dependent Covariates")
    (description
     "Efficient procedures for fitting and cross-validating the overlapping group
Lasso (implemented in C++) for Cox models with time-dependent covariates.  The
penalty term is a weighted sum of infinity norms of (overlapping) groups of
coefficients, which can select variables structurally with a specific grouping
structure.")
    (license license:gpl3+)))

(define-public r-netcoupler
  (package
    (name "r-netcoupler")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetCoupler" version))
       (sha256
        (base32 "1xycg179anf78kd1xfwzlmfp8igrl7k2bv105w3s2df5pd8gnpbg"))))
    (properties `((upstream-name . "NetCoupler")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidygraph
                             r-tibble
                             r-rlang
                             r-purrr
                             r-ppcor
                             r-pcalg
                             r-magrittr
                             r-lifecycle
                             r-igraph
                             r-ids
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NetCoupler/NetCoupler")
    (synopsis
     "Inference of Causal Links Between a Network and an External Variable")
    (description
     "The @code{NetCoupler} algorithm identifies potential direct effects of
correlated, high-dimensional variables formed as a network with an external
variable.  The external variable may act as the dependent/response variable or
as an independent/predictor variable to the network.")
    (license license:expat)))

(define-public r-netcontrol
  (package
    (name "r-netcontrol")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netcontrol" version))
       (sha256
        (base32 "1gskb728ycnhz9a9g9ghm0dz3ajf3dzgyv23bsk9i01wj9hrxhc0"))))
    (properties `((upstream-name . "netcontrol")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-matrix
                             r-mass
                             r-expm))
    (home-page "https://cran.r-project.org/package=netcontrol")
    (synopsis "Control Theory Methods for Networks")
    (description
     "Implementations of various control theory methods for use in brain and
psychological networks.  Contains controllability statistics from Pasqualetti,
Zampieri & Bullo (2014) <doi:10.1109/TCNS.2014.2310254>, optimal control
algorithms from Lewis, Vrabie & Syrmos (2012, ISBN:978-0-470-63349-6), and
various utilities.")
    (license license:expat)))

(define-public r-netcom
  (package
    (name "r-netcom")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netcom" version))
       (sha256
        (base32 "1i9d7w497qqjkwqvskbm1k5jj03pf84am8jifhhmxmmvd9sk6ldw"))))
    (properties `((upstream-name . "netcom")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tibble
                             r-rlang
                             r-reshape2
                             r-pracma
                             r-pdist
                             r-optimx
                             r-matrix
                             r-magrittr
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-ggfortify
                             r-gensa
                             r-foreach
                             r-expm
                             r-dplyr
                             r-doparallel
                             r-clue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/langendorfr/netcom")
    (synopsis "NETwork COMparison Inference")
    (description
     "Infer system functioning with empirical NETwork COMparisons.  These methods are
part of a growing paradigm in network science that uses relative comparisons of
networks to infer mechanistic classifications and predict systemic
interventions.  They have been developed and applied in Langendorf and Burgess
(2021) <doi:10.1038/s41598-021-99251-7>, Langendorf (2020)
<doi:10.1201/9781351190831-6>, and Langendorf and Goldberg (2019)
<@code{arXiv:1912.12551>}.")
    (license license:gpl3)))

(define-public r-netcoin
  (package
    (name "r-netcoin")
    (version "2.0.48")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netCoin" version))
       (sha256
        (base32 "03rmi75rjjy03jy0cv6qzz46q06027zvbwy4vp13748vq49aql1s"))))
    (properties `((upstream-name . "netCoin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rd3plot
                             r-matrix
                             r-mass
                             r-igraph
                             r-haven
                             r-gparotation))
    (native-inputs (list r-knitr))
    (home-page "https://modesto-escobar.github.io/netCoin-2.x/")
    (synopsis "Interactive Analytic Networks")
    (description
     "Create interactive analytic networks.  It joins the data analysis power of R to
obtain coincidences, co-occurrences and correlations, and the visualization
libraries of @code{JavaScript} in one package.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-netcmc
  (package
    (name "r-netcmc")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netcmc" version))
       (sha256
        (base32 "0w5xnnfglg0nm59wwqh2dpwkz0zlly3r2997wncf5whz5j4vcy88"))))
    (properties `((upstream-name . "netcmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-mcmcpack
                             r-mass
                             r-ggplot2
                             r-coda))
    (home-page "https://cran.r-project.org/package=netcmc")
    (synopsis
     "Spatio-Network Generalised Linear Mixed Models for Areal Unit and Network Data")
    (description
     "This package implements a class of univariate and multivariate spatio-network
generalised linear mixed models for areal unit and network data, with inference
in a Bayesian setting using Markov chain Monte Carlo (MCMC) simulation.  The
response variable can be binomial, Gaussian, or Poisson.  Spatial
autocorrelation is modelled by a set of random effects that are assigned a
conditional autoregressive (CAR) prior distribution following the Leroux model
(Leroux et al. (2000) <doi:10.1007/978-1-4612-1284-3_4>).  Network structures
are modelled by a set of random effects that reflect a multiple membership
structure (Browne et al. (2001) <doi:10.1177/1471082X0100100202>).")
    (license license:gpl2+)))

(define-public r-netcluster
  (package
    (name "r-netcluster")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NetCluster" version))
       (sha256
        (base32 "0aby8kfniw07jap795cwk69z83p45q5rap73zp1qbmkm3qcb31g4"))))
    (properties `((upstream-name . "NetCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna))
    (home-page "https://cran.r-project.org/package=NetCluster")
    (synopsis "Clustering for networks")
    (description
     "Facilitates network clustering and evaluation of cluster configurations.")
    (license license:gpl2)))

(define-public r-netclust
  (package
    (name "r-netclust")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netClust" version))
       (sha256
        (base32 "1h58ispdx8ddsnqrrmcxn2rbqb0hb89gpjg4p14mr7vhxw5c9zva"))))
    (properties `((upstream-name . "netClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=netClust")
    (synopsis "Model-Based Clustering of Network Data")
    (description
     "Clustering unilayer and multilayer network data by means of finite mixtures is
the main utility of @code{netClust}'.")
    (license license:gpl2+)))

(define-public r-netchain
  (package
    (name "r-netchain")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netchain" version))
       (sha256
        (base32 "1skpf1n6a17mjkcxqpl6vrskk04yvqa0v4n2zw9x5r1h46q9m6qk"))))
    (properties `((upstream-name . "netchain")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcpp r-matrix r-igraph r-gtools))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=netchain")
    (synopsis
     "Inferring Causal Effects on Collective Outcomes under Interference")
    (description
     "In networks, treatments may spill over from the treated individual to his or her
social contacts and outcomes may be contagious over time.  Under this setting,
causal inference on the collective outcome observed over all network is often of
interest.  We use chain graph models approximating the projection of the full
longitudinal data onto the observed data to identify the causal effect of the
intervention on the whole outcome.  Justification of such approximation is
demonstrated in Ogburn et al. (2018) <@code{arXiv:1812.04990>}.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-netassoc
  (package
    (name "r-netassoc")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "netassoc" version))
       (sha256
        (base32 "0hbyg31r9sjp0dyxlbsbw7r1kb1dwr0apilsw8saf1vlqwsiasga"))))
    (properties `((upstream-name . "netassoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-infotheo r-igraph r-huge r-corpcor))
    (home-page "https://cran.r-project.org/package=netassoc")
    (synopsis "Inference of Species Associations from Co-Occurrence Data")
    (description
     "This package infers species associations from community matrices.  Uses local
and (optional) regional-scale co-occurrence data by comparing observed partial
correlation coefficients between species to those estimated from regional
species distributions.  Extends Gaussian graphical models to a null modeling
framework.  Provides interface to a variety of inverse covariance matrix
estimation methods.")
    (license license:gpl3)))

(define-public r-net4pg
  (package
    (name "r-net4pg")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "net4pg" version))
       (sha256
        (base32 "1a00bqskgl053wcwgmg7xsccybrq76bqaipdnf5zbm1dslir0jdv"))))
    (properties `((upstream-name . "net4pg")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-magrittr r-graph r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/laurafancello/net4pg")
    (synopsis
     "Handle Ambiguity of Protein Identifications from Shotgun Proteomics")
    (description
     "In shotgun proteomics, shared peptides (i.e., peptides that might originate from
different proteins sharing homology, from different proteoforms due to
alternative @code{mRNA} splicing, post-translational modifications, proteolytic
cleavages, and/or allelic variants) represent a major source of ambiguity in
protein identifications.  The net4pg package allows to assess and handle
ambiguity of protein identifications.  It implements methods for two main
applications.  First, it allows to represent and quantify ambiguity of protein
identifications by means of graph connected components (CCs).  In graph theory,
CCs are defined as the largest subgraphs in which any two vertices are connected
to each other by a path and not connected to any other of the vertices in the
supergraph.  Here, proteins sharing one or more peptides are thus gathered in
the same CC (multi-protein CC), while unambiguous protein identifications
constitute CCs with a single protein vertex (single-protein CCs).  Therefore,
the proportion of single-protein CCs and the size of multi-protein CCs can be
used to measure the level of ambiguity of protein identifications.  The package
implements a strategy to efficiently calculate graph connected components on
large datasets and allows to visually inspect them.  Secondly, the net4pg
package allows to exploit the increasing availability of matched transcriptomic
and proteomic datasets to reduce ambiguity of protein identifications.  More
precisely, it implement a transcriptome-based filtering strategy fundamentally
consisting in the removal of those proteins whose corresponding transcript is
not expressed in the sample-matched transcriptome.  The underlying assumption is
that, according to the central dogma of biology, there can be no proteins
without the corresponding transcript.  Most importantly, the package allows to
visually inspect the effect of the filtering on protein identifications and
quantify ambiguity before and after filtering by means of graph connected
components.  As such, it constitutes a reproducible and transparent method to
exploit transcriptome information to enhance protein identifications.  All
methods implemented in the net4pg package are fully described in Fancello and
Burger (2022) <doi:10.1186/s13059-022-02701-2>.")
    (license license:gpl3)))

(define-public r-nestr
  (package
    (name "r-nestr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestr" version))
       (sha256
        (base32 "0qgd1sl6x5y70r3l4vf0qqynlrkdyq7mmpb8mwjn7f1hjnym1gaj"))))
    (properties `((upstream-name . "nestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-tidyselect r-rlang r-magrittr))
    (home-page "https://cran.r-project.org/package=nestr")
    (synopsis "Build Nesting or Hierarchical Structures")
    (description
     "Facilitates building a nesting or hierarchical structure as a list or data frame
by using a human friendly syntax.")
    (license license:expat)))

(define-public r-nestmrmc
  (package
    (name "r-nestmrmc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NestMRMC" version))
       (sha256
        (base32 "08zk9g3mkwyli94ry1s762ddniwzjlf89plh86sgxfrcrhx1m908"))))
    (properties `((upstream-name . "NestMRMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mvtnorm r-magrittr r-imrmc r-dplyr))
    (home-page "https://cran.r-project.org/package=NestMRMC")
    (synopsis "Single Reader Between-Cases AUC Estimator in Nested Data")
    (description
     "This R package provides a calculation of between-cases AUC estimate,
corresponding covariance, and variance estimate in the nested data problem.
Also, the package has the function to simulate the nested data.  The calculated
between-cases AUC estimate is used to evaluate the reader's diagnostic
performance in clinical tasks with nested data.  For more details on the above
methods, please refer to the paper by H Du, S Wen, Y Guo, F Jin, BD Gallas
(2022) <doi:10.1177/09622802221111539>.")
    (license license:cc0)))

(define-public r-nestfs
  (package
    (name "r-nestfs")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestfs" version))
       (sha256
        (base32 "0qaxkg8m64admpw3zpwrd6z5lxdn0i5kl7dlixrp5r7c1j40aw3l"))))
    (properties `((upstream-name . "nestfs")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc r-dgof))
    (home-page "https://github.com/mcol/nestfs")
    (synopsis "Cross-Validated (Nested) Forward Selection")
    (description
     "Implementation of forward selection based on cross-validated linear and logistic
regression.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-nestedpp
  (package
    (name "r-nestedpp")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestedpp" version))
       (sha256
        (base32 "0maw7ik209vdmm1fdnbi7chqy8wb1j1ql8jnry1y3af1g80lpa78"))))
    (properties `((upstream-name . "nestedpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-reshape2 r-ggplot2))
    (home-page "https://cran.r-project.org/package=nestedpp")
    (synopsis "Performance Profiles and Nested Performance Profiles")
    (description
     "Library to plot performance profiles (Dolan and More (2002)
<doi:10.1007/s101070100263>) and nested performance profiles (Hekmati and
Mirhajianmoghadam (2019) <doi:10.19139/soic-2310-5070-679>) for a given data
frame.")
    (license license:gpl3)))

(define-public r-nestedmodels
  (package
    (name "r-nestedmodels")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestedmodels" version))
       (sha256
        (base32 "09qdfzcm3xv3ilh7awsi5anyra7cwb4xyxs4z30yxc28ll6dh9mf"))))
    (properties `((upstream-name . "nestedmodels")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rsample
                             r-rlang
                             r-recipes
                             r-purrr
                             r-parsnip
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-generics
                             r-foreach
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ashbythorpe/nestedmodels")
    (synopsis "Tidy Modelling for Nested Data")
    (description
     "This package provides a modelling framework for nested data using the tidymodels
ecosystem.  Specify how to nest data using the recipes package, create testing
and training splits using rsample', and fit models to this data using the
parsnip and workflows packages.  Allows any model to be fit to nested data.")
    (license license:expat)))

(define-public r-nestedmenu
  (package
    (name "r-nestedmenu")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NestedMenu" version))
       (sha256
        (base32 "1115wgzpbkgyvccngg0pigq52xnsi86b08ykycnlrpy1sjj7qfp6"))))
    (properties `((upstream-name . "NestedMenu")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jquerylib r-htmlwidgets r-htmltools
                             r-fontawesome))
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/NestedMenu")
    (synopsis "Nested Menu Widget for 'Shiny' Applications")
    (description
     "This package provides a nested menu widget for usage in Shiny applications.
This is useful for hierarchical choices (e.g. continent, country, city).")
    (license license:gpl3)))

(define-public r-nestedlogit
  (package
    (name "r-nestedlogit")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestedLogit" version))
       (sha256
        (base32 "0lyqqxvh85zpvbcq4qp3cywr70312lw4xgas47hzybcrzqz9r63r"))))
    (properties `((upstream-name . "nestedLogit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-effects
                             r-dplyr
                             r-car
                             r-broom))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/friendly/nestedLogit")
    (synopsis "Nested Dichotomy Logistic Regression Models")
    (description
     "This package provides functions for specifying and fitting nested dichotomy
logistic regression models for a multi-category response and methods for
summarising and plotting those models.  Nested dichotomies are statistically
independent, and hence provide an additive decomposition of tests for the
overall polytomous response.  When the dichotomies make sense substantively,
this method can be a simpler alternative to the standard multinomial logistic
model which compares response categories to a reference level.  See: J. Fox
(2016), \"Applied Regression Analysis and Generalized Linear Models\", 3rd Ed.,
ISBN 1452205663.")
    (license license:gpl2+)))

(define-public r-nestedcv
  (package
    (name "r-nestedcv")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestedcv" version))
       (sha256
        (base32 "0jpg4il1niyizfq8kkk391x7anhp2s38mrfypa86skr08ca46zss"))))
    (properties `((upstream-name . "nestedcv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rfast
                             r-proc
                             r-matrixtests
                             r-matrixstats
                             r-glmnet
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/myles-lewis/nestedcv")
    (synopsis "Nested Cross-Validation with 'glmnet' and 'caret'")
    (description
     "This package implements nested k*l-fold cross-validation for lasso and
elastic-net regularised linear models via the glmnet package and other machine
learning models via the caret package.  Cross-validation of glmnet alpha mixing
parameter and embedded fast filter functions for feature selection are provided.
 Described as double cross-validation by Stone (1977)
<doi:10.1111/j.2517-6161.1977.tb01603.x>.  Also implemented is a method using
outer CV to measure unbiased model performance metrics when fitting Bayesian
linear and logistic regression shrinkage models using the horseshoe prior over
parameters to encourage a sparse model as described by Piironen & Vehtari (2017)
<doi:10.1214/17-EJS1337SI>.")
    (license license:expat)))

(define-public r-nestedcategbayesimpute
  (package
    (name "r-nestedcategbayesimpute")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NestedCategBayesImpute" version))
       (sha256
        (base32 "15j54whvhqy26v1iikpk8ys75d7m5b188ggdzrlgzhjg0f9j45fl"))))
    (properties `((upstream-name . "NestedCategBayesImpute")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpp r-dplyr r-coda))
    (home-page "https://cran.r-project.org/package=NestedCategBayesImpute")
    (synopsis
     "Modeling, Imputing and Generating Synthetic Versions of Nested Categorical Data in the Presence of Impossible Combinations")
    (description
     "This tool set provides a set of functions to fit the nested Dirichlet process
mixture of products of multinomial distributions (NDPMPM) model for nested
categorical household data in the presence of impossible combinations.  It has
direct applications in imputing missing values for and generating synthetic
versions of nested household data.")
    (license license:gpl3+)))

(define-public r-nestcolor
  (package
    (name "r-nestcolor")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nestcolor" version))
       (sha256
        (base32 "1d5fajwh59raw1nxaw6ibh92qrazsgrn7kjph3sv87zq8aqy3snn"))))
    (properties `((upstream-name . "nestcolor")))
    (build-system r-build-system)
    (propagated-inputs (list r-lifecycle r-ggplot2 r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/insightsengineering/nestcolor/")
    (synopsis "Colors for NEST Graphs")
    (description
     "Clinical reporting figures require to use consistent colors and configurations.
As a part of the Roche open-source clinical reporting project, namely the NEST
project, the nestcolor package specifies the color code and default theme with
specifying ggplot2 theme parameters.  Users can easily customize color and theme
settings before using the reset of NEST packages to ensure consistent settings
in both static and interactive output at the downstream.")
    (license license:asl2.0)))

(define-public r-nesrdata
  (package
    (name "r-nesrdata")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nesRdata" version))
       (sha256
        (base32 "1lxvg11g8nizfn8sghirq2749fs9i4w1wiaz3v1djqbkzqcqfrcj"))))
    (properties `((upstream-name . "nesRdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-rappdirs r-purrr r-dplyr r-dataone))
    (home-page "https://github.com/jsta/nesRdata")
    (synopsis "National Eutrophication Survey Data")
    (description
     "Serves data from the United States Environmental Protection Agency (USEPA)
National Eutrophication Survey
<https://www.epa.gov/national-aquatic-resource-surveys>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-neptune
  (package
    (name "r-neptune")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neptune" version))
       (sha256
        (base32 "04d5rdcvnik9rj58npvs5z1r6ngs9hzc24wzix64czcynkkvkad0"))))
    (properties `((upstream-name . "neptune")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-this-path
                             r-rstudioapi
                             r-reticulate
                             r-plotly
                             r-htmlwidgets
                             r-ggplot2))
    (home-page "https://github.com/neptune-ai/neptune-r")
    (synopsis
     "MLOps Metadata Store - Experiment Tracking and Model Registry for Production Teams")
    (description
     "An interface to Neptune.  A metadata store for MLOps, built for teams that run a
lot of experiments.  It gives you a single place to log, store, display,
organize, compare, and query all your model-building metadata.  Neptune is used
for: â¢ Experiment tracking: Log, display, organize, and compare ML experiments
in a single place.  â¢ Model registry: Version, store, manage, and query
trained models, and model building metadata.  â¢ Monitoring ML runs live:
Record and monitor model training, evaluation, or production runs live For more
information see <https://neptune.ai/>.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-nepic
  (package
    (name "r-nepic")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NEpiC" version))
       (sha256
        (base32 "11zf112xcsg3k93vks2fnsflw2v2d56a0bsjpd460d21k3gipfz8"))))
    (properties `((upstream-name . "NEpiC")))
    (build-system r-build-system)
    (propagated-inputs (list r-paireddata r-igraph))
    (home-page "https://cran.r-project.org/package=NEpiC")
    (synopsis
     "Network Assisted Algorithm for Epigenetic Studies Using Mean and Variance Combined Signals")
    (description
     "Package for a Network assisted algorithm for Epigenetic studies using mean and
variance Combined signals: N@code{EpiC}.  N@code{EpiC} combines both signals in
mean and variance differences in methylation level between case and control
groups searching for differentially methylated sub-networks (modules) using the
protein-protein interaction network.")
    (license license:gpl2)))

(define-public r-nephro
  (package
    (name "r-nephro")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nephro" version))
       (sha256
        (base32 "12rrc46dniw09a6402ns868h9c6f0grpsk3wv29z4l92338waiwb"))))
    (properties `((upstream-name . "nephro")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=nephro")
    (synopsis "Utilities for Nephrology")
    (description
     "Set of functions to estimate kidney function and other phenotypes of interest in
nephrology based on different biomechimal traits.")
    (license license:gpl3+)))

(define-public r-neotoma2
  (package
    (name "r-neotoma2")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neotoma2" version))
       (sha256
        (base32 "120alfpd3k53pc0rwqz0d5z4mgsqzcfvg0z550p3sy3iagz9c02v"))))
    (properties `((upstream-name . "neotoma2")))
    (build-system r-build-system)
    (propagated-inputs (list r-wk
                             r-uuid
                             r-tidyr
                             r-stringr
                             r-sf
                             r-rlang
                             r-purrr
                             r-progress
                             r-mapview
                             r-magrittr
                             r-lubridate
                             r-leaflet
                             r-jsonlite
                             r-httr
                             r-gtools
                             r-geojsonsf
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NeotomaDB/neotoma2")
    (synopsis "Working with the Neotoma Paleoecology Database")
    (description
     "Access and manipulation of data using the Neotoma Paleoecology Database.
<https://api.neotomadb.org/api-docs/>.")
    (license license:expat)))

(define-public r-neonutilities
  (package
    (name "r-neonutilities")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neonUtilities" version))
       (sha256
        (base32 "00f7zqr0jh4g31v1c8zv5n3pwfxqrx9m93rl59fwi276ivgcx60h"))))
    (properties `((upstream-name . "neonUtilities")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-r-utils
                             r-pbapply
                             r-jsonlite
                             r-httr
                             r-downloader
                             r-data-table
                             r-curl))
    (home-page "https://github.com/NEONScience/NEON-utilities")
    (synopsis "Utilities for Working with NEON Data")
    (description
     "NEON data packages can be accessed through the NEON Data Portal
<https://www.neonscience.org> or through the NEON Data API (see
<https://data.neonscience.org/data-api> for documentation).  Data delivered from
the Data Portal are provided as monthly zip files packaged within a parent zip
file, while individual files can be accessed from the API. This package provides
tools that aid in discovering, downloading, and reformatting data prior to use
in analyses.  This includes downloading data via the API, merging data tables by
type, and converting formats.  For more information, see the readme file at
<https://github.com/NEONScience/NEON-utilities>.")
    (license license:agpl3)))

(define-public r-neonstore
  (package
    (name "r-neonstore")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neonstore" version))
       (sha256
        (base32 "0fhjm6513kd4y3lry8dwcwk13ns92yk5h3san7ww2ahhdhy4hx9c"))))
    (properties `((upstream-name . "neonstore")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-vroom
                             r-thor
                             r-r-utils
                             r-progress
                             r-httr
                             r-duckdb
                             r-dbi))
    (home-page "https://cran.r-project.org/package=neonstore")
    (synopsis "NEON Data Store")
    (description
     "The National Ecological Observatory Network (NEON) provides access to its
numerous data products through its REST API,
<https://data.neonscience.org/data-api/>.  This package provides a high-level
user interface for downloading and storing NEON data products.  Unlike
@code{neonUtilities}', this package will avoid repeated downloading, provides
persistent storage, and improves performance.  neonstore can also construct a
local duckdb database of stacked tables, making it possible to work with tables
that are far to big to fit into memory.")
    (license license:expat)))

(define-public r-neonos
  (package
    (name "r-neonos")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neonOS" version))
       (sha256
        (base32 "11jgsf8c7rjfdbn9qljirzwvpnn4wckid4p4syx6py3dqjb4r19f"))))
    (properties `((upstream-name . "neonOS")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-data-table r-curl))
    (home-page "https://github.com/NEONScience/NEON-OS-data-processing")
    (synopsis "Basic Data Wrangling for NEON Observational Data")
    (description
     "NEON observational data are provided via the NEON Data Portal
<https://www.neonscience.org> and NEON API, and can be downloaded and
reformatted by the @code{neonUtilities} package.  NEON observational data
(human-observed measurements, and analyses derived from human-collected samples,
such as tree diameters and algal chemistry) are published in a format consisting
of one or more tabular data files.  This package provides tools for performing
common operations on NEON observational data, including checking for duplicates
and joining tables.")
    (license license:agpl3)))

(define-public r-neoniso
  (package
    (name "r-neoniso")
    (version "0.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NEONiso" version))
       (sha256
        (base32 "0fwz6clfl9l38pmks1qq3sys8jnb7mib81nfq1k1hdwhjknr76hz"))))
    (properties `((upstream-name . "NEONiso")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-rlang
                             r-rhdf5
                             r-r-utils
                             r-neonutilities
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lanl/NEONiso")
    (synopsis "Tools to Calibrate and Work with NEON Atmospheric Isotope Data")
    (description
     "This package provides functions for downloading, calibrating, and analyzing
atmospheric isotope data bundled into the eddy covariance data products of the
National Ecological Observatory Network (NEON) <https://www.neonscience.org>.
Calibration tools are provided for carbon and water isotope products.  Carbon
isotope calibration details are found in Fiorella et al. (2021)
<doi:10.1029/2020JG005862>, and the readme file at
<https://github.com/lanl/NEONiso>.  Tools for calibrating water isotope products
have been added as of 0.6.0, but have known deficiencies and should be
considered very experimental currently.")
    (license license:gpl3)))

(define-public r-neojags
  (package
    (name "r-neojags")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neojags" version))
       (sha256
        (base32 "10z5x78a3mjy5jbxlzfzsixp6w8y0v0mkxnwf5bq3rk5dgnga0g0"))))
    (properties `((upstream-name . "neojags")))
    (build-system r-build-system)
    (propagated-inputs (list r-runjags r-rjags r-coda))
    (native-inputs (list r-knitr pkg-config))
    (home-page "https://github.com/madsyair/neojags")
    (synopsis
     "Neo-Normal Distributions Family for Markov Chain Monte Carlo (MCMC) Models in 'JAGS'")
    (description
     "This package provides a JAGS extension module provides neo-normal distributions
family including MSNBurr, MSNBurr-IIa, GMSNBurr, Lunetta Exponential Power,
Fernandez-Steel Skew t, Fernandez-Steel Skew Normal, Fernandez-Osiewalski-Steel
Skew Exponential Power, Jones Skew Exponential Power.  References: Choir, A. S.
(2020). \"The New Neo-Normal Distributions and Their Properties\".Unpublished
Dissertation.  Denwood, M.J. (2016) <doi:10.18637/jss.v071.i09>.  Fernandez, C.,
Osiewalski, J., & Steel, M. F. (1995) <doi:10.1080/01621459.1995.10476637>.
Fernandez, C., & Steel, M. F. (1998) <doi:10.1080/01621459.1998.10474117>.
Iriawan, N. (2000). \"Computationally Intensive Approaches to Inference in
@code{NeoNormal} Linear Models\".Unpublished Dissertation.  Mineo, A., &
Ruggieri, M. (2005) <doi:10.18637/jss.v012.i04>.  Rigby, R. A., & Stasinopoulos,
D. M. (2005) <doi:10.1111/j.1467-9876.2005.00510.x>.  Lunetta, G. (1963). \"Di
una Generalizzazione dello Schema della Curva Normale\".  Rigby, R. A.,
Stasinopoulos, M. D., Heller, G. Z., & Bastiani, F. D. (2019)
<doi:10.1201/9780429298547>.")
    (license license:gpl2)))

(define-public r-neo4r
  (package
    (name "r-neo4r")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neo4r" version))
       (sha256
        (base32 "0s4rjhn2mc8ca4p8p474a83dc277vrf7l968xwxkiac0d4fgbra7"))))
    (properties `((upstream-name . "neo4r")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-shiny
                             r-rstudioapi
                             r-rlang
                             r-r6
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-glue
                             r-data-table
                             r-attempt))
    (home-page "https://github.com/neo4j-rstats/neo4r")
    (synopsis "'Neo4J' Driver")
    (description
     "This package provides a Modern and Flexible Neo4J Driver, allowing you to query
data on a Neo4J server and handle the results in R. It's modern in the sense it
provides a driver that can be easily integrated in a data analysis workflow,
especially by providing an API working smoothly with other data analysis and
graph packages.  It's flexible in the way it returns the results, by trying to
stay as close as possible to the way Neo4J returns data.  That way, you have the
control over the way you will compute the results.  At the same time, the result
is not too complex, so that the \"heavy lifting\" of data wrangling is not left to
the user.")
    (license license:expat)))

(define-public r-neo4jshell
  (package
    (name "r-neo4jshell")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neo4jshell" version))
       (sha256
        (base32 "0dkdg8ljyv7pi6zkpsq5akkl35vrhkr78xvc2ky99gwjsr0z77hf"))))
    (properties `((upstream-name . "neo4jshell")))
    (build-system r-build-system)
    (propagated-inputs (list r-sys r-ssh r-r-utils r-magrittr r-fs))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neo4jshell")
    (synopsis "Querying and Managing 'Neo4J' Databases in 'R'")
    (description
     "Sends queries to a specified Neo4J graph database, capturing results in a
dataframe where appropriate.  Other useful functions for the importing and
management of data on the Neo4J server and basic local server admin.")
    (license license:expat)))

(define-public r-neo2r
  (package
    (name "r-neo2r")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neo2R" version))
       (sha256
        (base32 "185x98616kpc7zk9ifka22g8v4zyck0v5svl3swajf605rpgqzmp"))))
    (properties `((upstream-name . "neo2R")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-jsonlite r-httr r-base64enc))
    (home-page "https://github.com/patzaw/neo2r")
    (synopsis "Neo4j to R")
    (description
     "The aim of neo2R is to provide simple and low level connectors for querying
neo4j graph databases (<https://neo4j.com/>).  The objects returned by the query
functions are either lists or data.frames with very few post-processing.  It
allows fast processing of queries returning many records.  And it let the user
handle post-processing according to the data model and his needs.")
    (license license:gpl3)))

(define-public r-nemtr
  (package
    (name "r-nemtr")
    (version "0.0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nemtr" version))
       (sha256
        (base32 "0vh6zagfldpir8dwxrk0h24dmzbvcik0vkj8cpx7rp324iv66mrn"))))
    (properties `((upstream-name . "nemtr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-magrittr r-ggplot2 r-dplyr))
    (home-page "https://github.com/calebgreski/nemtr")
    (synopsis
     "Nonparametric Extended Median Test - Cumulative Summation Method")
    (description
     "Calculates a cumulative summation nonparametric extended median test based on
the work of Brown & Schaffer (2020) <DOI:10.1080/03610926.2020.1738492>.  It
then generates a control chart to assess processes and determine if any streams
are out of control.")
    (license license:expat)))

(define-public r-nembm
  (package
    (name "r-nembm")
    (version "1.00.01")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nemBM" version))
       (sha256
        (base32 "0zr2bxrla436yj5qba0jnrxw94alq9cp7zfkrvjwiyil4byj0a6c"))))
    (properties `((upstream-name . "nemBM")))
    (build-system r-build-system)
    (propagated-inputs (list r-ergm r-blockmodeling))
    (home-page "https://cran.r-project.org/package=nemBM")
    (synopsis
     "Using Network Evolution Models to Generate Networks with Selected Blockmodel Type")
    (description
     "To study network evolution models and different blockmodeling approaches.
Various functions enable generating (temporal) networks with a selected
blockmodel type, taking into account selected local network mechanisms.  The
development of this package is financially supported the Slovenian Research
Agency (www.arrs.gov.si) within the research program P5<96>0168 and the research
project J5-2557 (Comparison and evaluation of different approaches to
blockmodeling dynamic networks by simulations with application to Slovenian
co-authorship networks).")
    (license license:gpl2)))

(define-public r-neldermead
  (package
    (name "r-neldermead")
    (version "1.0-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neldermead" version))
       (sha256
        (base32 "0ws2knrq3b3icv6fzimypzwvzvqf0sayi2ndhacn6lk4snms5pm3"))))
    (properties `((upstream-name . "neldermead")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimsimplex r-optimbase))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neldermead")
    (synopsis "R Port of the 'Scilab' Neldermead Module")
    (description
     "This package provides several direct search optimization algorithms based on the
simplex method.  The provided algorithms are direct search algorithms, i.e.
algorithms which do not use the derivative of the cost function.  They are based
on the update of a simplex.  The following algorithms are available: the fixed
shape simplex method of Spendley, Hext and Himsworth (unconstrained optimization
with a fixed shape simplex, 1962) <doi:10.1080/00401706.1962.10490033>, the
variable shape simplex method of Nelder and Mead (unconstrained optimization
with a variable shape simplex made, 1965) <doi:10.1093/comjnl/7.4.308>, and
Box's complex method (constrained optimization with a variable shape simplex,
1965) <doi: 10.1093/comjnl/8.1.42>.")
    (license (license:fsdg-compatible "CeCILL-2"))))

(define-public r-neighbr
  (package
    (name "r-neighbr")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neighbr" version))
       (sha256
        (base32 "1rmglfjmx6bfd4w1cpx4rvp7hy2vqvcamy854h5dq0l3kwk4pjcm"))))
    (properties `((upstream-name . "neighbr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neighbr")
    (synopsis
     "Classification, Regression, Clustering with K Nearest Neighbors")
    (description
     "Classification, regression, and clustering with k nearest neighbors algorithm.
Implements several distance and similarity measures, covering continuous and
logical features.  Outputs ranked neighbors.  Most features of this package are
directly based on the PMML specification for KNN.")
    (license (license:fsdg-compatible "GPL (>= 2.1)"))))

(define-public r-neighbours
  (package
    (name "r-neighbours")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neighbours" version))
       (sha256
        (base32 "0q0d8504kjvsgik7pdhsgh9n1xszxa7p4mzpxajki2ym0x7hqx9k"))))
    (properties `((upstream-name . "neighbours")))
    (build-system r-build-system)
    (home-page "http://enricoschumann.net/R/packages/neighbours/")
    (synopsis "Neighbourhood Functions for Local-Search Algorithms")
    (description
     "Neighbourhood functions are key components of local-search algorithms such as
Simulated Annealing or Threshold Accepting.  These functions take a solution and
return a slightly-modified copy of it, i.e.  a neighbour.  The package provides
a function neighbourfun() that constructs such neighbourhood functions, based on
parameters such as admissible ranges for elements in a solution.  Supported are
numeric and logical solutions.  The algorithms were originally created for
portfolio-optimisation applications, but can be used for other models as well.
Several recipes for neighbour computations are taken from \"Numerical Methods and
Optimization in Finance\" by M. Gilli, D. Maringer and E. Schumann (2019,
ISBN:978-0128150658).")
    (license license:gpl3)))

(define-public r-neighboot
  (package
    (name "r-neighboot")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Neighboot" version))
       (sha256
        (base32 "18r6cww9g4fchf6hlwkw1lajh0lg4ch6msvx54zqgkrnhpixchnc"))))
    (properties `((upstream-name . "Neighboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdstreeboot r-rds r-igraph r-dplyr))
    (home-page "https://cran.r-project.org/package=Neighboot")
    (synopsis "Neighborhood Bootstrap Method for RDS")
    (description
     "This package provides a bootstrap method for Respondent-Driven Sampling (RDS)
that relies on the underlying structure of the RDS network to estimate
uncertainty.")
    (license license:gpl3)))

(define-public r-negligible
  (package
    (name "r-negligible")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "negligible" version))
       (sha256
        (base32 "131bgvac2dk8alnmjymdx6l7cgmz2cncsyg62zgc6asfrh90nrqc"))))
    (properties `((upstream-name . "negligible")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrs2
                             r-tidyr
                             r-rockchalk
                             r-nptest
                             r-mbess
                             r-lavaan
                             r-ggplot2
                             r-fungible
                             r-dplyr
                             r-desctools))
    (home-page "https://cran.r-project.org/package=negligible")
    (synopsis
     "Collection of Functions for Negligible Effect/Equivalence Testing")
    (description
     "Researchers often want to evaluate whether there is a negligible relationship
among variables.  The negligible package provides functions that are useful for
conducting negligible effect testing (also called equivalence testing).  For
example, there are functions for evaluating the equivalence of means or the
presence of a negligible association (correlation/ regression).  Beribisky, N.,
Mara, C., & Cribbie, R. A. (2020) <doi:10.20982/tqmp.16.4.p424>.  Beribisky, N.,
Davidson, H., Cribbie, R. A. (2019) <doi:10.7717/peerj.6853>.  Shiskina, T.,
Farmus, L., & Cribbie, R. A. (2018) <doi:10.20982/tqmp.14.3.p167>.  Mara, C. &
Cribbie, R. A. (2017) <doi:10.1080/00220973.2017.1301356>.  Counsell, A. &
Cribbie, R. A. (2015) <doi:10.1111/bmsp.12045>.  van Wieringen, K. & Cribbie, R.
A. (2014) <doi:10.1111/bmsp.12015>.  Goertzen, J. R. & Cribbie, R. A. (2010)
<doi:10.1348/000711009x475853>.  Cribbie, R. A., Gruman, J. & Arpin-Cribbie, C.
(2004) <doi:10.1002/jclp.10217>.")
    (license license:gpl3)))

(define-public r-negenes
  (package
    (name "r-negenes")
    (version "1.0-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "negenes" version))
       (sha256
        (base32 "0b82822vl86gni0pv5f6pjfzmks35i7q2rqkhgyb9z9c677g991q"))))
    (properties `((upstream-name . "negenes")))
    (build-system r-build-system)
    (home-page "https://github.com/kbroman/negenes")
    (synopsis "Estimating the Number of Essential Genes in a Genome")
    (description
     "Estimating the number of essential genes in a genome on the basis of data from a
random transposon mutagenesis experiment, through the use of a Gibbs sampler.
Lamichhane et al. (2003) <doi:10.1073/pnas.1231432100>.")
    (license license:gpl3+)))

(define-public r-negbinbetabinreg
  (package
    (name "r-negbinbetabinreg")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NegBinBetaBinreg" version))
       (sha256
        (base32 "0ryi9gdf4sis77c0qxm6r86mfkk1nq9djs297y64nr6ng3rv9p9d"))))
    (properties `((upstream-name . "NegBinBetaBinreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrix r-boot))
    (home-page "https://cran.r-project.org/package=NegBinBetaBinreg")
    (synopsis "Negative Binomial and Beta Binomial Bayesian Regression Models")
    (description
     "The Negative Binomial regression with mean and shape modeling and mean and
variance modeling and Beta Binomial regression with mean and dispersion
modeling.")
    (license license:gpl2+)))

(define-public r-negativecontroloutcomeadjustment
  (package
    (name "r-negativecontroloutcomeadjustment")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NegativeControlOutcomeAdjustment" version))
       (sha256
        (base32 "02p19pc0pkw0dfac0hp1jdcm3g18sriizhqj73jp2yj66xlx1z52"))))
    (properties `((upstream-name . "NegativeControlOutcomeAdjustment")))
    (build-system r-build-system)
    (home-page
     "https://cran.r-project.org/package=NegativeControlOutcomeAdjustment")
    (synopsis "Estimation of Vaccine Efficacy using Negative Control Outcomes")
    (description
     "This package provides methods to reduce confounding bias from unmeasured
confounders in observational studies of vaccine efficacy using negative control
outcomes.")
    (license license:gpl2)))

(define-public r-needs
  (package
    (name "r-needs")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "needs" version))
       (sha256
        (base32 "16dkjpijz3rz7kd5ggxsdg55iwd42nll1vk6g5ix4xdbqrx6cp9x"))))
    (properties `((upstream-name . "needs")))
    (build-system r-build-system)
    (home-page "https://github.com/joshkatz/needs")
    (synopsis "Attaches and Installs Packages")
    (description
     "This package provides a simple function for easier package loading and
auto-installation.")
    (license license:expat)))

(define-public r-needmining
  (package
    (name "r-needmining")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "needmining" version))
       (sha256
        (base32 "0qsj0ihjchrnl4s44rpsizbcz033z00dmzvic2y1msv0bnfawl6p"))))
    (properties `((upstream-name . "needmining")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm
                             r-tau
                             r-stringr
                             r-sparsem
                             r-snowballc
                             r-rtweet
                             r-randomforest))
    (home-page "https://cran.r-project.org/package=needmining")
    (synopsis "Simple Needmining Implementation")
    (description
     "Showcasing needmining (the semi-automatic extraction of customer needs from
social media data) with Twitter data.  It uses the handling of the Twitter API
provided by the package rtweet and the textmining algorithms provided by the
package tm'.  Niklas Kuehl (2016) <doi:10.1007/978-3-319-32689-4_14> wrote an
introduction to the topic of needmining.")
    (license license:gpl3)))

(define-public r-necklaces
  (package
    (name "r-necklaces")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Necklaces" version))
       (sha256
        (base32 "0caq7l3xqhxssag42qi122j2ixmzng8hi4qjb0f114d9r88x64l7"))))
    (properties `((upstream-name . "Necklaces")))
    (build-system r-build-system)
    (propagated-inputs (list r-kstatistics))
    (home-page "https://cran.r-project.org/package=Necklaces")
    (synopsis "Necklaces and Bracelets")
    (description
     "This package provides tools to generate Necklaces, Bracelets, Lyndon words and
de Bruijn sequences.  The generation relies on integer partitions and uses the
KStatistics package.  Methods used in the package refers to E. Di Nardo and G.
Guarino (2022) <@code{arXiv:2208.06855>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nebula
  (package
    (name "r-nebula")
    (version "1.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nebula" version))
       (sha256
        (base32 "11z8b3vzpi3iahyf7idy2l1a24w7zz9pg8hxz24h00rbkqxawxq3"))))
    (properties `((upstream-name . "nebula")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust
                             r-rspectra
                             r-rfast
                             r-rcppeigen
                             r-rcpp
                             r-nloptr
                             r-matrix
                             r-future
                             r-foreach
                             r-dorng
                             r-dofuture))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nebula")
    (synopsis
     "Negative Binomial Mixed Models Using Large-Sample Approximation for Differential Expression Analysis of ScRNA-Seq Data")
    (description
     "This package provides a fast negative binomial mixed model for conducting
association analysis of multi-subject single-cell data.  It can be used for
identifying marker genes, differential expression and co-expression analyses.
The model includes subject-level random effects to account for the hierarchical
structure in multi-subject single-cell data.  See He et al. (2021)
<doi:10.1038/s42003-021-02146-6>.")
    (license license:gpl3)))

(define-public r-neatstats
  (package
    (name "r-neatstats")
    (version "1.13.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neatStats" version))
       (sha256
        (base32 "1fj042mwmmjza8giv0f2m7y11j8rnzrcmifyxrv4z9rfqddcvh2s"))))
    (properties `((upstream-name . "neatStats")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-proc
                             r-mbess
                             r-logspline
                             r-ggpubr
                             r-ggplot2
                             r-fbasics
                             r-ez
                             r-exact
                             r-data-table
                             r-car
                             r-bayestestr
                             r-bayesfactor))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gasparl/neatstats")
    (synopsis "Neat and Painless Statistical Reporting")
    (description
     "User-friendly, clear and simple statistics, primarily for publication in
psychological science.  The main functions are wrappers for other packages, but
there are various additions as well.  Every relevant step from data aggregation
to reportable printed statistics is covered for basic experimental designs.")
    (license license:bsd-2)))

(define-public r-neatranges
  (package
    (name "r-neatranges")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neatRanges" version))
       (sha256
        (base32 "0673lg8mihz8xwh12q12wfn19w8vvnjb7pnz4x3cn2xhkyzwhxq5"))))
    (properties `((upstream-name . "neatRanges")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (home-page "https://github.com/arg0naut91/neatRanges")
    (synopsis "Tidy Up Date/Time Ranges")
    (description
     "Collapse, partition, combine, fill gaps in and expand date/time ranges.")
    (license license:expat)))

(define-public r-neatr
  (package
    (name "r-neatr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neatR" version))
       (sha256
        (base32 "064mil95f4jd43gkpx0rdvxgf4ffxjpn8z31vc5yg98516hgcqb1"))))
    (properties `((upstream-name . "neatR")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=neatR")
    (synopsis "Neat Data for Presentation")
    (description
     "Utilities for unambiguous, neat and legible representation of data (date, time
stamp, numbers, percentages and strings) for presentation of analysis , aiming
for elegance and consistency.  The purpose of this package is to format data,
that is better for presentation and any automation jobs that reports numbers.")
    (license license:expat)))

(define-public r-neatmaps
  (package
    (name "r-neatmaps")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neatmaps" version))
       (sha256
        (base32 "1kz1na3fzpd8vkxmpp5rz8ksyf8q2wk456csiii82winv9a2zxc9"))))
    (properties `((upstream-name . "neatmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-heatmaply r-ggplot2 r-dplyr
                             r-consensusclusterplus))
    (home-page "https://github.com/PhilBoileau/neatmaps")
    (synopsis "Heatmaps for Multiple Network Data")
    (description
     "Simplify the exploratory data analysis process for multiple network data sets
with the help of hierarchical clustering, consensus clustering and heatmaps.
Multiple network data consists of multiple disjoint networks that have common
variables (e.g. ego networks).  This package contains the necessary tools for
exploring such data, from the data pre-processing stage to the creation of
dynamic visualizations.")
    (license license:expat)))

(define-public r-neat
  (package
    (name "r-neat")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "neat" version))
       (sha256
        (base32 "0mdv47l50wzxnjfk1sway7gzpkyf57svqip16fqn0hrc1fsrifbn"))))
    (properties `((upstream-name . "neat")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://mirkosignorelli.github.io/r")
    (synopsis "Efficient Network Enrichment Analysis Test")
    (description
     "Includes functions and examples to compute NEAT, the Network Enrichment Analysis
Test described in Signorelli et al. (2016, <DOI:10.1186/s12859-016-1203-6>).")
    (license license:gpl3)))

(define-public r-ndtv
  (package
    (name "r-ndtv")
    (version "0.13.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ndtv" version))
       (sha256
        (base32 "05kaqd7p77rfls0s1gqv74j3svh5xdvqni0jin5vxl8y900yc56j"))))
    (properties `((upstream-name . "ndtv")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common
                             r-sna
                             r-networkdynamic
                             r-network
                             r-mass
                             r-jsonlite
                             r-base64
                             r-animation))
    (native-inputs (list esbuild))
    (home-page "https://github.com/statnet/ndtv")
    (synopsis "Network Dynamic Temporal Visualizations")
    (description
     "Renders dynamic network data from @code{networkDynamic} objects as movies,
interactive animations, or other representations of changing relational
structures and attributes.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ndp
  (package
    (name "r-ndp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NDP" version))
       (sha256
        (base32 "0wmld7g4w3d7d8lyj4132h3jpr8ng8kpy4ssqjp8r0lqwif2i86b"))))
    (properties `((upstream-name . "NDP")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rmarkdown))
    (home-page "https://cran.r-project.org/package=NDP")
    (synopsis "Interactive Presentation for Working with Normal Distribution")
    (description
     "An interactive presentation on the topic of normal distribution using rmarkdown
and shiny packages.  It is helpful to those who want to learn normal
distribution quickly and get a hands on experience.  The presentation has a
template for solving problems on normal distribution.  Runtime examples are
provided in the package function as well as at
<https://kartikeyastat.shinyapps.io/@code{NormalDistribution/>}.")
    (license license:gpl2)))

(define-public r-ndl
  (package
    (name "r-ndl")
    (version "0.2.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ndl" version))
       (sha256
        (base32 "0b235v6jf98rrqp5aqw3jkk7mq8dbqmhb758zbzza1mavh4n2k7s"))))
    (properties `((upstream-name . "ndl")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass r-hmisc))
    (home-page "https://cran.r-project.org/package=ndl")
    (synopsis "Naive Discriminative Learning")
    (description
     "Naive discriminative learning implements learning and classification models
based on the Rescorla-Wagner equations and their equilibrium equations.")
    (license license:gpl3)))

(define-public r-ndi
  (package
    (name "r-ndi")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ndi" version))
       (sha256
        (base32 "1ydj6lvycm6awvrddmq9a9s24rd4xw86mzk8hfhrqx8plz8pj4k4"))))
    (properties `((upstream-name . "ndi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidycensus
                             r-stringr
                             r-sf
                             r-psych
                             r-matrix
                             r-mass
                             r-dplyr
                             r-car))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/idblr/ndi")
    (synopsis "Neighborhood Deprivation Indices")
    (description
     "Computes various metrics of socio-economic deprivation and disparity in the
United States.  Some metrics are considered \"spatial\" because they consider the
values of neighboring (i.e., adjacent) census geographies in their computation,
while other metrics are \"aspatial\" because they only consider the value within
each census geography.  Two types of aspatial neighborhood deprivation indices
(NDI) are available: including: (1) based on Messer et al. (2006)
<doi:10.1007/s11524-006-9094-x> and (2) based on Andrews et al. (2020)
<doi:10.1080/17445647.2020.1750066> and Slotman et al. (2022)
<doi:10.1016/j.dib.2022.108002> who use variables chosen by Roux and Mair (2010)
<doi:10.1111/j.1749-6632.2009.05333.x>.  Both are a decomposition of multiple
demographic characteristics from the U.S. Census Bureau American Community
Survey 5-year estimates (ACS-5; 2006-2010 onward).  Using data from the ACS-5
(2005-2009 onward), the package can also (1) compute the spatial Racial
Isolation Index (RI) based on Anthopolos et al. (2011)
<doi:10.1016/j.sste.2011.06.002>, (2) compute the spatial Educational Isolation
Index (EI) based on Bravo et al. (2021) <doi:10.3390/ijerph18179384>, (3)
compute the aspatial Index of Concentration at the Extremes (ICE) based on
Feldman et al. (2015) <doi:10.1136/jech-2015-205728> and Krieger et al. (2016)
<doi:10.2105/AJPH.2015.302955>, (4) compute the aspatial racial/ethnic
Dissimilarity Index based on Duncan & Duncan (1955) <doi:10.2307/2088328>, (5)
compute the aspatial income or racial/ethnic Atkinson Index based on Atkinson
(1970) <doi:10.1016/0022-0531(70)90039-6>, (6) aspatial racial/ethnic Isolation
Index (II) based on Shevky & Williams (1949; ISBN-13:978-0-837-15637-8) and Bell
(1954) <doi:10.2307/2574118>, (7) aspatial racial/ethnic Correlation Ratio based
on Bell (1954) <doi:10.2307/2574118> and White (1986) <doi:10.2307/3644339>, (8)
aspatial racial/ethnic Location Quotient (LQ) based on Merton (1939)
<doi:10.2307/2084686> and Sudano et al. (2013)
<doi:10.1016/j.healthplace.2012.09.015>, and (9) aspatial racial/ethnic Local
Exposure and Isolation metric based on Bemanian & Beyer (2017)
<doi:10.1158/1055-9965.EPI-16-0926>.  Also using data from the ACS-5 (2005-2009
onward), the package can retrieve the aspatial Gini Index based Gini (1921)
<doi:10.2307/2223319>.")
    (license license:asl2.0)))

(define-public r-nda
  (package
    (name "r-nda")
    (version "0.1.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nda" version))
       (sha256
        (base32 "1v3nfjq0v0vjv3871qsx7sxl5b6p74187cvacj3jfjyxbzghb8pc"))))
    (properties `((upstream-name . "nda")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-psych
                             r-ppcor
                             r-matrix
                             r-mass
                             r-igraph
                             r-energy))
    (home-page "https://github.com/kzst/nda")
    (synopsis
     "Generalized Network-Based Dimensionality Reduction and Analysis")
    (description
     "Non-parametric dimensionality reduction function.  Reduction with and without
feature selection.  Plot functions.  Automated feature selections.  Kosztyan et.
 al. (2022) <doi:10.1016/j.knosys.2022.109180>.")
    (license license:gpl2+)))

(define-public r-ncvreg
  (package
    (name "r-ncvreg")
    (version "3.14.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncvreg" version))
       (sha256
        (base32 "1q6klmyf7gbzkinjhv83k8gn95jgn3vkc927wsmffqjqc3d71rd7"))))
    (properties `((upstream-name . "ncvreg")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://pbreheny.github.io/ncvreg/")
    (synopsis
     "Regularization Paths for SCAD and MCP Penalized Regression Models")
    (description
     "Fits regularization paths for linear regression, GLM, and Cox regression models
using lasso or nonconvex penalties, in particular the minimax concave penalty
(MCP) and smoothly clipped absolute deviation (SCAD) penalty, with options for
additional L2 penalties (the \"elastic net\" idea).  Utilities for carrying out
cross-validation as well as post-fitting visualization, summarization,
inference, and prediction are also provided.  For more information, see Breheny
and Huang (2011) <doi:10.1214/10-AOAS388> or visit the ncvreg homepage
<https://pbreheny.github.io/ncvreg/>.")
    (license license:gpl3)))

(define-public r-ncutyx
  (package
    (name "r-ncutyx")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCutYX" version))
       (sha256
        (base32 "0r2ghnvrbya3p1d8rb5bsnz5v852vvc6rq65yafn2xzr7886wrg2"))))
    (properties `((upstream-name . "NCutYX")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-mass
                             r-glmnet
                             r-fields))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Seborinos/NCutYX")
    (synopsis
     "Clustering of Omics Data of Multiple Types with a Multilayer Network Representation")
    (description
     "Omics data come in different forms: gene expression, methylation, copy number,
protein measurements and more.  N@code{CutYX} allows clustering of variables, of
samples, and both variables and samples (biclustering), while incorporating the
dependencies across multiple types of Omics data. (SJ Teran Hidalgo et al
(2017), <doi:10.1186/s12864-017-3990-1>).")
    (license license:gpl3)))

(define-public r-ncscopula
  (package
    (name "r-ncscopula")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCSCopula" version))
       (sha256
        (base32 "0amxp9daqp9bhz61hrq1dk88ai5xfd5sp3538rf3xwgs6walycr4"))))
    (properties `((upstream-name . "NCSCopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-copula))
    (home-page "https://cran.r-project.org/package=NCSCopula")
    (synopsis "Non-Central Squared Copula Models Estimation")
    (description
     "Inference and dependence measure for the non-central squared Gaussian, Student,
Clayton, Gumbel, and Frank copula models.The description of the methodology is
taken from Section 3 of Nasri, Remillard and Bouezmarni (2019)
<doi:10.1016/j.jmva.2019.03.007>.")
    (license license:gpl2+)))

(define-public r-ncsampling
  (package
    (name "r-ncsampling")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCSampling" version))
       (sha256
        (base32 "0bv93xffnzvbip86b3pg7apxzh3410mxff77q119m0z7f6vm3fam"))))
    (properties `((upstream-name . "NCSampling")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaimpute r-randomforest r-lattice))
    (home-page "https://cran.r-project.org/package=NCSampling")
    (synopsis "Nearest Centroid (NC) Sampling")
    (description
     "This package provides functionality for performing Nearest Centroid (NC)
Sampling.  The NC sampling procedure was developed for forestry applications and
selects plots for ground measurement so as to maximize the efficiency of
imputation estimates.  It uses multiple auxiliary variables and multivariate
clustering to search for an optimal sample.  Further details are given in
Melville G. & Stone C. (2016) <doi:10.1080/00049158.2016.1218265>.")
    (license license:gpl2)))

(define-public r-ncpen
  (package
    (name "r-ncpen")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncpen" version))
       (sha256
        (base32 "0vl4cbrsifr5s1691gacmp0lk3aqyq0yfafafzv6g3zygi4igrsa"))))
    (properties `((upstream-name . "ncpen")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/zeemkr/ncpen")
    (synopsis
     "Unified Algorithm for Non-convex Penalized Estimation for Generalized Linear Models")
    (description
     "An efficient unified nonconvex penalized estimation algorithm for Gaussian
(linear), binomial Logit (logistic), Poisson, multinomial Logit, and Cox
proportional hazard regression models.  The unified algorithm is implemented
based on the convex concave procedure and the algorithm can be applied to most
of the existing nonconvex penalties.  The algorithm also supports convex
penalty: least absolute shrinkage and selection operator (LASSO).  Supported
nonconvex penalties include smoothly clipped absolute deviation (SCAD), minimax
concave penalty (MCP), truncated LASSO penalty (TLP), clipped LASSO (CLASSO),
sparse ridge (SRIDGE), modified bridge (MBRIDGE) and modified log (MLOG).  For
high-dimensional data (data set with many variables), the algorithm selects
relevant variables producing a parsimonious regression model.  Kim, D., Lee, S.
and Kwon, S. (2018) <@code{arXiv:1811.05061>}, Lee, S., Kwon, S. and Kim, Y.
(2016) <doi:10.1016/j.csda.2015.08.019>, Kwon, S., Lee, S. and Kim, Y. (2015)
<doi:10.1016/j.csda.2015.07.001>. (This research is funded by Julian Virtue
Professorship from Center for Applied Research at Pepperdine Graziadio Business
School and the National Research Foundation of Korea.)")
    (license license:gpl3+)))

(define-public r-ncopula
  (package
    (name "r-ncopula")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nCopula" version))
       (sha256
        (base32 "03qbfvx0lg9prg52fk1jxar2bng2x6scac4g2c64kvp6vmf6x4mv"))))
    (properties `((upstream-name . "nCopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-stringi r-deriv r-copula))
    (home-page "https://cran.r-project.org/package=nCopula")
    (synopsis
     "Hierarchical Archimedean Copulas Constructed with Multivariate Compound Distributions")
    (description
     "Construct and manipulate hierarchical Archimedean copulas with multivariate
compound distributions.  The model used is the one of Cossette et al. (2017)
<doi:10.1016/j.insmatheco.2017.06.001>.")
    (license license:gpl2+)))

(define-public r-ncoder
  (package
    (name "r-ncoder")
    (version "0.2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncodeR" version))
       (sha256
        (base32 "1pxiqxhq2rxs8rxxhw1hbds7z2qkf7ws26a8wsbw815yn6jm10n8"))))
    (properties `((upstream-name . "ncodeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rhor r-r6 r-cli))
    (home-page "https://cran.r-project.org/package=ncodeR")
    (synopsis "Techniques for Automated Classifiers")
    (description
     "This package provides a set of techniques that can be used to develop, validate,
and implement automated classifiers.  A powerful tool for transforming raw data
into meaningful information, @code{ncodeR} (Shaffer, D. W. (2017) Quantitative
Ethnography.  ISBN: 0578191687) is designed specifically for working with big
data: large document collections, logfiles, and other text data.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ncmisc
  (package
    (name "r-ncmisc")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCmisc" version))
       (sha256
        (base32 "10wzznqa26fxyj6bl979qmq29p3dkr8yap4s70l3mwhhk33zpz16"))))
    (properties `((upstream-name . "NCmisc")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NCmisc")
    (synopsis
     "Miscellaneous Functions for Creating Adaptive Functions and Scripts")
    (description
     "This package provides a set of handy functions.  Includes a versatile one line
progress bar, one line function timer with detailed output, time delay function,
text histogram, object preview, CRAN package search, simpler package installer,
Linux command install check, a flexible Mode function, top function, simulation
of correlated data, and more.")
    (license license:gpl2+)))

(define-public r-ncmeta
  (package
    (name "r-ncmeta")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncmeta" version))
       (sha256
        (base32 "1w47dn04brqac98k5s8a88nh6d6qnkcilq3w4pfczbdff1rv2xlk"))))
    (properties `((upstream-name . "ncmeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-rnetcdf r-rlang r-dplyr))
    (home-page "https://github.com/hypertidy/ncmeta")
    (synopsis "Straightforward 'NetCDF' Metadata")
    (description
     "Extract metadata from @code{NetCDF} data sources, these can be files, file
handles or servers.  This package leverages and extends the lower level
functions of the R@code{NetCDF} package providing a consistent set of functions
that all return data frames.  We introduce named concepts of grid', axis and
source which are all meaningful entities without formal definition in the
@code{NetCDF} library <https://www.unidata.ucar.edu/software/netcdf/>.
R@code{NetCDF} matches the library itself with only the named concepts of
variables', dimensions and attributes'.")
    (license license:gpl3)))

(define-public r-ncf
  (package
    (name "r-ncf")
    (version "1.3-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncf" version))
       (sha256
        (base32 "1lqswih19g76aswnf6xygficzf7ri3yayqicifj8cqx8iwvrk91y"))))
    (properties `((upstream-name . "ncf")))
    (build-system r-build-system)
    (home-page "https://ento.psu.edu/directory/onb1")
    (synopsis "Spatial Covariance Functions")
    (description
     "Spatial (cross-)covariance and related geostatistical tools: the nonparametric
(cross-)covariance function , the spline correlogram, the nonparametric phase
coherence function, local indicators of spatial association (LISA), (Mantel)
correlogram, (Partial) Mantel test.")
    (license license:gpl3)))

(define-public r-ncdump
  (package
    (name "r-ncdump")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncdump" version))
       (sha256
        (base32 "09g98mzpky32z41jf23ahzhyv34l34y1gqq99j2hl4pqlvvhxs9i"))))
    (properties `((upstream-name . "ncdump")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncdf4 r-dplyr))
    (home-page "https://github.com/r-gris/ncdump")
    (synopsis "Extract Metadata from 'NetCDF' Files as Data Frames")
    (description
     "This package provides tools for handling @code{NetCDF} metadata in data frames.
The metadata is provided as relations in tabular form, to avoid having to scan
printed header output or to navigate nested lists of raw metadata.")
    (license license:gpl3)))

(define-public r-ncdfgeom
  (package
    (name "r-ncdfgeom")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncdfgeom" version))
       (sha256
        (base32 "0v53nns8xq2w6rbn11man8kgr4dqpy2glj2rhn9817lvk9pz8x18"))))
    (properties `((upstream-name . "ncdfgeom")))
    (build-system r-build-system)
    (propagated-inputs (list r-stars r-sf r-rnetcdf r-ncmeta r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://code.usgs.gov/water/ncdfgeom")
    (synopsis "'NetCDF' Geometry and Time Series")
    (description
     "This package provides tools to create time series and geometry @code{NetCDF}
files.")
    (license license:cc0)))

(define-public r-ncdf4-helpers
  (package
    (name "r-ncdf4-helpers")
    (version "0.3-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncdf4.helpers" version))
       (sha256
        (base32 "0qnm41rbxb6v7aqh1mdkjhcc2rhs4wg6wmrllldzd99mzz8slv1r"))))
    (properties `((upstream-name . "ncdf4.helpers")))
    (build-system r-build-system)
    (propagated-inputs (list r-pcict r-ncdf4 r-abind))
    (home-page "https://www.r-project.org")
    (synopsis "Helper Functions for Use with the 'ncdf4' Package")
    (description
     "This package contains a collection of helper functions for dealing with
@code{NetCDF} files <https://www.unidata.ucar.edu/software/netcdf/> opened using
ncdf4', particularly @code{NetCDF} files that conform to the Climate and
Forecast (CF) Metadata Conventions
<http://cfconventions.org/Data/cf-conventions/cf-conventions-1.7/cf-conventions.html>.")
    (license license:lgpl2.1)))

(define-public r-ncc
  (package
    (name "r-ncc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCC" version))
       (sha256
        (base32 "0zp854m5ig8w5xag4a1s56b33kfjds3wqydjxacvj5fkpr1y586d"))))
    (properties `((upstream-name . "NCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-spamm
                             r-rlang
                             r-rjags
                             r-rbest
                             r-parallelly
                             r-mgcv
                             r-magick
                             r-lmertest
                             r-iterators
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://pavlakrotka.github.io/NCC/")
    (synopsis
     "Simulation and Analysis of Platform Trials with Non-Concurrent Controls")
    (description
     "Design and analysis of flexible platform trials with non-concurrent controls.
Functions for data generation, analysis, visualization and running simulation
studies are provided.  The implemented analysis methods are described in: Bofill
Roig et al. (2022) <doi:10.1186/s12874-022-01683-w>, Saville et al. (2022)
<doi:10.1177/17407745221112013> and Schmidli et al. (2014)
<doi:10.1111/biom.12242>.")
    (license license:expat)))

(define-public r-ncbit
  (package
    (name "r-ncbit")
    (version "2013.03.29.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncbit" version))
       (sha256
        (base32 "01352byijhwhcb7jji7bf5cm6v2yfz925f8wbivrx12x0c65fzw4"))))
    (properties `((upstream-name . "ncbit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ncbit")
    (synopsis "Retrieve and Build NBCI Taxonomic Data")
    (description
     "Makes NCBI taxonomic data locally available and searchable as an R object.")
    (license license:gpl2+)))

(define-public r-ncar
  (package
    (name "r-ncar")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncar" version))
       (sha256
        (base32 "1ymxb3av7vd7vljr8h3ga6v01z6nf5j9mc095z0hi31d1khwrd02"))))
    (properties `((upstream-name . "ncar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtf r-noncompart))
    (home-page "https://cran.r-project.org/package=ncar")
    (synopsis "Noncompartmental Analysis for Pharmacokinetic Report")
    (description
     "Conduct a noncompartmental analysis with industrial strength.  Some features are
1) CDISC SDTM terms 2) Automatic or manual slope selection 3) Supporting both
linear-up linear-down and linear-up log-down method 4) Interval(partial) AUCs
with linear or log interpolation method 5) Produce pdf, rtf, text report files.
* Reference: Gabrielsson J, Weiner D. Pharmacokinetic and Pharmacodynamic Data
Analysis - Concepts and Applications.  5th ed.  2016. (ISBN:9198299107).")
    (license license:gpl3)))

(define-public r-ncappc
  (package
    (name "r-ncappc")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ncappc" version))
       (sha256
        (base32 "0bf00iskrd3x43839bwn957mi3qvm2dhcmqa7hl1ib0gp2r1cnzx"))))
    (properties `((upstream-name . "ncappc")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-reshape2
                             r-readr
                             r-purrr
                             r-poped
                             r-magrittr
                             r-lazyeval
                             r-knitr
                             r-gtable
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-cairo
                             r-bookdown))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ncappc")
    (synopsis "NCA Calculations and Population Model Diagnosis")
    (description
     "This package provides a flexible tool that can perform (i) traditional
non-compartmental analysis (NCA) and (ii) Simulation-based posterior predictive
checks for population pharmacokinetic (PK) and/or pharmacodynamic (PKPD) models
using NCA metrics.")
    (license license:gpl3)))

(define-public r-nca
  (package
    (name "r-nca")
    (version "3.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NCA" version))
       (sha256
        (base32 "0a464k1gqn5546wfsjfg6la3g0q54pn4v5ngf9qbafxishjlavhx"))))
    (properties `((upstream-name . "NCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg
                             r-plotly
                             r-lpsolve
                             r-kernsmooth
                             r-iterators
                             r-gplots
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (home-page "https://www.erim.eur.nl/necessary-condition-analysis/")
    (synopsis "Necessary Condition Analysis")
    (description
     "This package performs a Necessary Condition Analysis (NCA). (Dul, J. 2016.
Necessary Condition Analysis (NCA).  Logic and Methodology of Necessary but not
Sufficient causality.\" Organizational Research Methods 19(1), 10-52)
<doi:10.1177/1094428115584005>.  NCA identifies necessary (but not sufficient)
conditions in datasets, where x causes (e.g. precedes) y.  Instead of drawing a
regression line through the middle of the data in an xy-plot, NCA draws the
ceiling line.  The ceiling line y = f(x) separates the area with observations
from the area without observations. (Nearly) all observations are below the
ceiling line: y <= f(x).  The empty zone is in the upper left hand corner of the
xy-plot (with the convention that the x-axis is horizontal and the y-axis is
vertical and that values increase upwards and to the right'').  The ceiling line
is a (piecewise) linear non-decreasing line: a linear step function or a
straight line.  It indicates which level of x (e.g. an effort or input) is
necessary but not sufficient for a (desired) level of y (e.g. good performance
or output).  A quick start guide for using this package can be found here:
<https://repub.eur.nl/pub/78323/> or
<https://papers.ssrn.com/sol3/papers.cfm?abstract_id=2624981>.")
    (license license:gpl3+)))

(define-public r-nc
  (package
    (name "r-nc")
    (version "2023.8.24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nc" version))
       (sha256
        (base32 "158vn3ivypx6gpbx1mpz1kw7lv9ifk76k1hcz4zv84jss2a1q135"))))
    (properties `((upstream-name . "nc")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tdhock/nc")
    (synopsis "Named Capture to Data Tables")
    (description
     "User-friendly functions for extracting a data table (row for each match, column
for each group) from non-tabular text data using regular expressions, and for
melting columns that match a regular expression.  Patterns are defined using a
readable syntax that makes it easy to build complex patterns in terms of
simpler, re-usable sub-patterns.  Named R arguments are translated to column
names in the output; capture groups without names are used internally in order
to provide a standard interface to three regular expression C libraries (PCRE,
RE2, ICU).  Output can also include numeric columns via user-specified type
conversion functions.")
    (license license:gpl3)))

(define-public r-nbtsvarsel
  (package
    (name "r-nbtsvarsel")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBtsVarSel" version))
       (sha256
        (base32 "0dwmi69ahyrq54nx1xi591i3g87r4aiv9l5k81lhqwa2aniv6snh"))))
    (properties `((upstream-name . "NBtsVarSel")))
    (build-system r-build-system)
    (propagated-inputs (list r-mpath r-matrix r-mass r-glmnet r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NBtsVarSel")
    (synopsis
     "Variable Selection in a Specific Regression Time Series of Counts")
    (description
     "This package performs variable selection in sparse negative binomial GLARMA
(Generalised Linear Autoregressive Moving Average) models.  For further details
we refer the reader to the paper Gomtsyan (2023), <@code{arXiv:2307.00929>}.")
    (license license:gpl2)))

(define-public r-nbtransmission
  (package
    (name "r-nbtransmission")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbTransmission" version))
       (sha256
        (base32 "0vaj2zfyvm2vm1ly1419ysxxrqkv73802n96ifajknh1pair31zk"))))
    (properties `((upstream-name . "nbTransmission")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-poisbinom
                             r-lubridate
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://sarahleavitt.github.io/nbTransmission/")
    (synopsis "Naive Bayes Transmission Analysis")
    (description
     "Estimates the relative transmission probabilities between cases in an infectious
disease outbreak or cluster using naive Bayes.  Included are various functions
to use these probabilities to estimate transmission parameters such as the
generation/serial interval and reproductive number as well as finding the
contribution of covariates to the probabilities and visualizing results.  The
ideal use is for an infectious disease dataset with metadata on the majority of
cases but more informative data such as contact tracing or pathogen whole genome
sequencing on only a subset of cases.  For a detailed description of the methods
see Leavitt et al. (2020) <doi:10.1093/ije/dyaa031>.")
    (license license:expat)))

(define-public r-nbshiny3
  (package
    (name "r-nbshiny3")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBShiny3" version))
       (sha256
        (base32 "1p0n4jpzdaqwpidxairwpgc8qrdvr1r7cammpgnzc6a9ar2hcw1g"))))
    (properties `((upstream-name . "NBShiny3")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-e1071
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=NBShiny3")
    (synopsis
     "Interactive Document for Working with Naive Bayes Classification")
    (description
     "An interactive document on the topic of naive Bayes classification analysis
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://kartikeyab.shinyapps.io/NBShiny/>.")
    (license license:gpl2)))

(define-public r-nbshiny2
  (package
    (name "r-nbshiny2")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBShiny2" version))
       (sha256
        (base32 "0w4f19av8zl220zq3flmlqn86ivikclnsnkd7bc1wafhr12hmygp"))))
    (properties `((upstream-name . "NBShiny2")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-e1071
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=NBShiny2")
    (synopsis
     "Interactive Document for Working with Naive Bayes Classification")
    (description
     "An interactive document on the topic of naive Bayes classification analysis
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://kartikeyab.shinyapps.io/NBShiny/>.")
    (license license:gpl2)))

(define-public r-nbshiny
  (package
    (name "r-nbshiny")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBShiny" version))
       (sha256
        (base32 "0hcmdhj26hc3c8d5nb6yb7amv0rbdxywima0l0jqkxipx56idlcx"))))
    (properties `((upstream-name . "NBShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-e1071
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=NBShiny")
    (synopsis
     "Interactive Document for Working with Naive Bayes Classification")
    (description
     "An interactive document on the topic of naive Bayes classification analysis
using rmarkdown and shiny packages.  Runtime examples are provided in the
package function as well as at <https://kartikeyab.shinyapps.io/NBShiny/>.")
    (license license:gpl2)))

(define-public r-nbr
  (package
    (name "r-nbr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBR" version))
       (sha256
        (base32 "1jaqlh40vda9jj4pzf13rsq8zj5s9vz8ggf74wm63dfy6lgfjjk8"))))
    (properties `((upstream-name . "NBR")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NBR")
    (synopsis "Network-Based R-Statistics using Mixed Effects Models")
    (description
     "An implementation of network-based statistics in R using mixed effects models.
Theoretical background for Network-Based Statistics can be found in Zalesky et
al. (2010) <doi:10.1016/j.neuroimage.2010.06.041>.  For Mixed Effects Models
check the R package <https://CRAN.R-project.org/package=nlme>.")
    (license license:gpl3+)))

(define-public r-nbpmatching
  (package
    (name "r-nbpmatching")
    (version "1.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbpMatching" version))
       (sha256
        (base32 "0f7avg06lr5a1yixrl6mhcs98ywa91qbfkc7qlz2pxzpc1v13ffb"))))
    (properties `((upstream-name . "nbpMatching")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-hmisc))
    (native-inputs (list gfortran))
    (home-page "https://biostat.app.vumc.org/wiki/Main/MatchedRandomization")
    (synopsis "Functions for Optimal Non-Bipartite Matching")
    (description
     "Perform non-bipartite matching and matched randomization.  A \"bipartite\"
matching utilizes two separate groups, e.g. smokers being matched to nonsmokers
or cases being matched to controls.  A \"non-bipartite\" matching creates mates
from one big group, e.g. 100 hospitals being randomized for a two-arm cluster
randomized trial or 5000 children who have been exposed to various levels of
secondhand smoke and are being paired to form a greater exposure vs. lesser
exposure comparison.  At the core of a non-bipartite matching is a N x N
distance matrix for N potential mates.  The distance between two units expresses
a measure of similarity or quality as mates (the lower the better).  The
gendistance() and distancematrix() functions assist in creating this.  The
nonbimatch() function creates the matching that minimizes the total sum of
distances between mates; hence, it is referred to as an \"optimal\" matching.  The
assign.grp() function aids in performing a matched randomization.  Note
bipartite matching can be performed using the prevent option in gendistance()'.")
    (license license:gpl2+)))

(define-public r-nbody
  (package
    (name "r-nbody")
    (version "1.33")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbody" version))
       (sha256
        (base32 "1ky07bi830z3c2fvxq0fmicsllm736b510q4zphff4rwljx1awf2"))))
    (properties `((upstream-name . "nbody")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magicaxis))
    (home-page "https://cran.r-project.org/package=nbody")
    (synopsis "Gravitational N-Body Simulation")
    (description
     "This package provides tools to run simple direct gravitational N-body
simulations.  It can access different external N-body simulators, but also has a
simple built-in default simulator.  This default simulator uses a variable block
time step and lets the user choose between a range of integrators, including 4th
and 6th order integrators for high-accuracy simulations.  Basic top-hat
smoothing is available as an option.  The code also allows the definition of
background particles that are fixed or in uniform motion, not subject to
acceleration by other particles.")
    (license license:gpl3)))

(define-public r-nblr
  (package
    (name "r-nblr")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nblR" version))
       (sha256
        (base32 "1p1m1jml7grpjfp5qibffm3dx8zz37h216bpcwybm293naprmbfr"))))
    (properties `((upstream-name . "nblR")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-cli))
    (home-page "https://github.com/JaseZiv/nblR")
    (synopsis "Data Extraction of Australian NBL Basketball Statistics")
    (description
     "Allow users to obtain basketball statistics for the Australian basketball league
NBL'<https://nbl.com.au/>.  Stats include play-by-play, shooting locations,
results and box scores for teams and players.")
    (license license:gpl3)))

(define-public r-nblda
  (package
    (name "r-nblda")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBLDA" version))
       (sha256
        (base32 "0h71c3kgqaijpnrz2cx2k4311j61paxnj96kwpv2dcdy9rhkbwar"))))
    (properties `((upstream-name . "NBLDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=NBLDA")
    (synopsis "Negative Binomial Linear Discriminant Analysis")
    (description
     "We proposed a package for the classification task which uses Negative Binomial
distribution within Linear Discriminant Analysis (NBLDA).  It is an extension of
the @code{PoiClaClu} package to Negative Binomial distribution.  The
classification algorithms are based on the papers Dong et al. (2016, ISSN:
1471-2105) and Witten, DM (2011, ISSN: 1932-6157) for NBLDA and PLDA,
respectively.  Although PLDA is a sparse algorithm and can be used for variable
selection, the algorithm proposed by Dong et al.  is not sparse.  Therefore, it
uses all variables in the classifier.  Here, we extend Dong et al.'s algorithm
to the sparse case by shrinking overdispersion towards 0 (Yu et al., 2013, ISSN:
1367-4803) and offset parameter towards 1 (as proposed by Witten DM, 2011).  We
support only the classification task with this version.")
    (license license:gpl2+)))

(define-public r-nbfar
  (package
    (name "r-nbfar")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbfar" version))
       (sha256
        (base32 "1gr9q83ff950x2lcyv9apsnjah4kpi8805mci9m0s3gvr7llpjq4"))))
    (properties `((upstream-name . "nbfar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rrpack
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-mpath
                             r-mass
                             r-magrittr
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/amishra-stats/nbfar")
    (synopsis "Negative Binomial Factor Regression Models ('nbfar')")
    (description
     "We developed a negative binomial factor regression model to estimate structured
(sparse) associations between a feature matrix X and overdispersed count data Y.
With nbfar', microbiome count data Y can be used, for example, to associate host
or environmental covariates with microbial abundances.  Currently, two models
are available: a) Negative Binomial reduced rank regression (NB-RRR), b)
Negative Binomial co-sparse factor regression (NB-FAR).  Please refer the
manuscript Mishra, A. K., & MÃ¼ller, C. L. (2021).  Negative Binomial factor
regression with application to microbiome data analysis. @code{bioRxiv}.  for
more details.")
    (license license:gpl3+)))

(define-public r-nberwp
  (package
    (name "r-nberwp")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nberwp" version))
       (sha256
        (base32 "0v1y51rmm0h3w0v5y97wprhdhyc14r4iprdpkmdh8q9ajj1ds1c0"))))
    (properties `((upstream-name . "nberwp")))
    (build-system r-build-system)
    (home-page "https://github.com/bldavies/nberwp")
    (synopsis "NBER Working Papers")
    (description
     "Catalogue of NBER working papers published between June 1973 and December 2021.")
    (license license:cc0)))

(define-public r-nbdesign
  (package
    (name "r-nbdesign")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBDesign" version))
       (sha256
        (base32 "0593rh2lf8wlxzjmwh2xx3jsb6miqx0wipqw9di10cbxbf6binb1"))))
    (properties `((upstream-name . "NBDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-pweall r-mass))
    (home-page "https://cran.r-project.org/package=NBDesign")
    (synopsis
     "Design and Monitoring of Clinical Trials with Negative Binomial Endpoint")
    (description
     "Calculate various functions needed for design and monitoring clinical trials
with negative binomial endpoint with variable follow-up.  This version has a few
changes compared to the previous version 1.0.0, including (1) correct a typo in
Type 1 censoring, mtbnull=bnull and (2) restructure the code to account for
shape parameter equal to zero, i.e.  Poisson scenario.")
    (license license:gpl2+)))

(define-public r-nbddirichlet
  (package
    (name "r-nbddirichlet")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBDdirichlet" version))
       (sha256
        (base32 "11iqn74k7q6g7if35237jzabknjcdaanbq83hjicb2m0l5h31vvn"))))
    (properties `((upstream-name . "NBDdirichlet")))
    (build-system r-build-system)
    (home-page
     "https://ani.stat.fsu.edu/~fchen/statistics/R-package-NBDdirichlet/how-to-use-Dirichlet-marketing-model.html")
    (synopsis
     "NBD-Dirichlet Model of Consumer Buying Behavior for Marketing Research")
    (description
     "The Dirichlet (aka NBD-Dirichlet) model describes the purchase incidence and
brand choice of consumer products.  We estimate the model and summarize various
theoretical quantities of interest to marketing researchers.  Also provides
functions for making tables that compare observed and theoretical statistics.")
    (license license:gpl3+)))

(define-public r-nbconv
  (package
    (name "r-nbconv")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbconv" version))
       (sha256
        (base32 "1gmvkci1bbrhb4rffddr5z3fg628jfx62nzx7xs6bqcn9syg5fpb"))))
    (properties `((upstream-name . "nbconv")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (home-page "https://github.com/gbedwell/nbconv")
    (synopsis "Evaluate Arbitrary Negative Binomial Convolutions")
    (description
     "Three distinct methods are implemented for evaluating the sums of arbitrary
negative binomial distributions.  These methods are: Furman's exact probability
mass function (Furman (2007) <doi:10.1016/j.spl.2006.06.007>), saddlepoint
approximation, and a method of moments approximation.  Functions are provided to
calculate the density function, the distribution function and the quantile
function of the convolutions in question given said evaluation methods.
Functions for generating random deviates from negative binomial convolutions and
for directly calculating the mean, variance, skewness, and excess kurtosis of
said convolutions are also provided.")
    (license license:gpl3+)))

(define-public r-nbc4va
  (package
    (name "r-nbc4va")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbc4va" version))
       (sha256
        (base32 "1xf9nmaycxs1d8xz30lciflhqjfyyx72gaa05kssqnlv90f5cy08"))))
    (properties `((upstream-name . "nbc4va")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=nbc4va")
    (synopsis "Bayes Classifier for Verbal Autopsy Data")
    (description
     "An implementation of the Naive Bayes Classifier (NBC) algorithm used for Verbal
Autopsy (VA) built on code from Miasnikof et al (2015)
<DOI:10.1186/s12916-015-0521-2>.")
    (license license:gpl3)))

(define-public r-nbbttest
  (package
    (name "r-nbbttest")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBBttest" version))
       (sha256
        (base32 "13p6kkakg2hd27xmh6vjnn8w161qaw23xzsx99pjgvz7w0n9idv3"))))
    (properties `((upstream-name . "NBBttest")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtools r-gplots))
    (home-page "https://cran.r-project.org/package=NBBttest")
    (synopsis "Negative Binomial Beta t-Test")
    (description
     "We constructed NBBttest for identifying genes or RNA isoforms differentially
expressed between two conditions on RNA-seq count data.  Package NBBttest can
perform data quality check, data normalization, differential analysis,
annotation and graphic analysis.  In differential analysis, NBBttest can
identify differentially expressed genes and differential RNA isoforms in
alternative splicing sites and alternative polyadenylation sites, differential
@code{sgRNA}, and differential CRISPR (clustered regularly interspaced short
palindromic repeats) screening genes.  In graphic analysis, NBBttest provides
two types of heatmaps to visualize differential expression at gene or isoform
level using z-score and n-score and creates pathway heatmap.  NBBttest can plot
differentially expressed exons within a specified gene.  In addition, NBBttest
provides a tool for annotation of genes and exons.  The methods used in NBBttest
were new statistical methods developed from Tan and others (2015)
<doi:10.1371/journal.pone.0123658>.  The statistical methods are robust and very
powerful in identifying genes or RNA isoforms differentially expressed between
two conditions in small samples.")
    (license license:gpl3)))

(define-public r-nbbdesigns
  (package
    (name "r-nbbdesigns")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBBDesigns" version))
       (sha256
        (base32 "0fm7i6cvwy7b29d1ig3s7akpb2kqf5xm5nqarhwmy79c1kll9jyb"))))
    (properties `((upstream-name . "NBBDesigns")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=NBBDesigns")
    (synopsis "Neighbour Balanced Block Designs (NBBDesigns)")
    (description
     "Neighbour-balanced designs ensure that no treatment is disadvantaged unfairly by
its surroundings.  The treatment allocation in these designs is such that every
treatment appears equally often as a neighbour with every other treatment.
Neighbour Balanced Designs are employed when there is a possibility of neighbour
effects from treatments used in adjacent experimental units.  In the literature,
a vast number of such designs have been developed.  This package generates some
efficient neighbour balanced block designs which are balanced and partially
variance balanced for estimating the contrast pertaining to direct and neighbour
effects, as well as provides a function for analysing the data obtained from
such trials (Azais, J.M., Bailey, R.A. and Monod, H. (1993). \"A catalogue of
efficient neighbour designs with border plots\".  Biometrics, 49, 1252-1261 ;
Tomar, J. S., Jaggi, Seema and Varghese, Cini (2005)<DOI:
10.1080/0266476042000305177>. \"On totally balanced block designs for competition
effects\").  This package contains functions named
nbbd1(),nbbd2(),nbbd3(),pnbbd1() and pnbbd2() which generates neighbour balanced
block designs within a specified range of number of treatment (v).  It contains
another function named anlys()for performing the analysis of data generated from
such trials.")
    (license license:gpl2+)))

(define-public r-nbapalettes
  (package
    (name "r-nbapalettes")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nbapalettes" version))
       (sha256
        (base32 "1wrh2qcm90fcybhcc8wvs2s4a4z8y3mrhc28dvrkwynqwzsbalzs"))))
    (properties `((upstream-name . "nbapalettes")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://github.com/murrayjw/nbapalettes")
    (synopsis "An NBA Jersey Palette Generator")
    (description "Palettes generated from NBA jersey colorways.")
    (license license:expat)))

(define-public r-nbalover
  (package
    (name "r-nbalover")
    (version "0.1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NBAloveR" version))
       (sha256
        (base32 "0k1f14srzks26x5wnhj8mrfwcq7wgbywcklr804lxsh04h4d6pwp"))))
    (properties `((upstream-name . "NBAloveR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NBAloveR")
    (synopsis "Help Basketball Data Analysis")
    (description
     "This package provides interface to the online basketball data resources such as
Basketball reference API <https://www.basketball-reference.com/> and helps R
users analyze basketball data.")
    (license license:gpl2)))

(define-public r-nb-mclust
  (package
    (name "r-nb-mclust")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NB.MClust" version))
       (sha256
        (base32 "0hzmrszxgx3pylf9pjjwk2ryjhwz7naxxkhcqpnfjv337vv5dg0i"))))
    (properties `((upstream-name . "NB.MClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=NB.MClust")
    (synopsis "Negative Binomial Model-Based Clustering")
    (description
     "Model-based clustering of high-dimensional non-negative data that follow
Generalized Negative Binomial distribution.  All functions in this package
applies to either continuous or integer data.  Correlation between variables are
allowed, while samples are assumed to be independent.")
    (license license:gpl2+)))

(define-public r-nawtilus
  (package
    (name "r-nawtilus")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nawtilus" version))
       (sha256
        (base32 "1agqx9wiiypkpjrwahwlw5qkvqgkh01swyzc75csf9698x0779pm"))))
    (properties `((upstream-name . "nawtilus")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=nawtilus")
    (synopsis "Navigated Weighting for the Inverse Probability Weighting")
    (description
     "This package implements the navigated weighting (NAWT) proposed by Katsumata
(2020) <@code{arXiv:2005.10998>}, which improves the inverse probability
weighting by utilizing estimating equations suitable for a specific
pre-specified parameter of interest (e.g., the average treatment effects or the
average treatment effects on the treated) in propensity score estimation.  It
includes the covariate balancing propensity score proposed by Imai and Ratkovic
(2014) <doi:10.1111/rssb.12027>, which uses covariate balancing conditions in
propensity score estimation.  The point estimate of the parameter of interest as
well as coefficients for propensity score estimation and their uncertainty are
produced using the M-estimation.  The same functions can be used to estimate
average outcomes in missing outcome cases.")
    (license license:gpl3)))

(define-public r-navigatr
  (package
    (name "r-navigatr")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "navigatr" version))
       (sha256
        (base32 "0qlrzv17nlichfncynl710bs9yjqbx860dgqc4lnsh9l3mv5qjjl"))))
    (properties `((upstream-name . "navigatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-stickyr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-lifecycle
                             r-cli))
    (home-page "https://github.com/UchidaMizuki/navigatr")
    (synopsis "Navigation Menu for Pipe-Friendly Data Processing")
    (description
     "This package provides a navigation menu to enable pipe-friendly data processing
for hierarchical data structures.  By activating the menu items, you can perform
operations on each item while maintaining the overall structure in attributes.")
    (license license:expat)))

(define-public r-navigation
  (package
    (name "r-navigation")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "navigation" version))
       (sha256
        (base32 "129f2snh2mjp9mcifcxzh37zjhny8wlqhq00225pakl79kfzyyim"))))
    (properties `((upstream-name . "navigation")))
    (build-system r-build-system)
    (propagated-inputs (list r-simts
                             r-rcpparmadillo
                             r-rcpp
                             r-rbenchmark
                             r-plotly
                             r-pbmcapply
                             r-mass
                             r-magrittr
                             r-leaflet
                             r-expm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SMAC-Group/navigation")
    (synopsis
     "Analyze the Impact of Sensor Error Modelling on Navigation Performance")
    (description
     "This package implements the framework presented in Cucci, D. A., Voirol, L.,
Khaghani, M. and Guerrier, S. (2023) <doi:10.1109/TIM.2023.3267360> which allows
to analyze the impact of sensor error modeling on the performance of integrated
navigation (sensor fusion) based on inertial measurement unit (IMU), Global
Positioning System (GPS), and barometer data.  The framework relies on Monte
Carlo simulations in which a Vanilla Extended Kalman filter is coupled with
realistic and user-configurable noise generation mechanisms to recover a
reference trajectory from noisy measurements.  The evaluation of several
statistical metrics of the solution, aggregated over hundreds of simulated
realizations, provides reasonable estimates of the expected performances of the
system in real-world conditions.")
    (license license:agpl3)))

(define-public r-naturesounds
  (package
    (name "r-naturesounds")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NatureSounds" version))
       (sha256
        (base32 "1l8c0zn0bbrcdf098pcbr8fvrl614cl6iq820q0sd7sr36n3k1jr"))))
    (properties `((upstream-name . "NatureSounds")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/maRce10/NatureSounds")
    (synopsis "Animal Sounds for Bioacustic Analysis")
    (description
     "Collection of example animal sounds for bioacoustic analysis.")
    (license license:gpl2+)))

(define-public r-naturalist
  (package
    (name "r-naturalist")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naturaList" version))
       (sha256
        (base32 "0692bd7sdf3rlcp7sgjkvm7w5gyd3qv4390f7bz286krimsxaqzq"))))
    (properties `((upstream-name . "naturaList")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tm
                             r-tidytext
                             r-stringr
                             r-stringi
                             r-sp
                             r-shinywidgets
                             r-shinydashboard
                             r-shiny
                             r-sf
                             r-rlang
                             r-raster
                             r-magrittr
                             r-leaflet-extras
                             r-leaflet
                             r-htmltools
                             r-fasterize
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/avrodrigues/naturaList")
    (synopsis "Classify Occurrences by Confidence Levels in the Species ID")
    (description
     "Classify occurrence records based on confidence levels of species
identification.  In addition, implement tools to filter occurrences inside grid
cells and to manually check for possibles errors with an interactive shiny
application.")
    (license license:expat)))

(define-public r-natural
  (package
    (name "r-natural")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "natural" version))
       (sha256
        (base32 "0zxwbf3gg2h0bhl2w0md3rd162vlsgg0dv3187hc0ax7333cc4cx"))))
    (properties `((upstream-name . "natural")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://arxiv.org/abs/1712.02412")
    (synopsis
     "Estimating the Error Variance in a High-Dimensional Linear Model")
    (description
     "Implementation of the two error variance estimation methods in high-dimensional
linear models of Yu, Bien (2017) <@code{arXiv:1712.02412>}.")
    (license license:gpl3)))

(define-public r-natstrat
  (package
    (name "r-natstrat")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "natstrat" version))
       (sha256
        (base32 "1i3qjd787clbafpkjd0mkp6i540061q9xl9kxlgh9f517ksg8zpz"))))
    (properties `((upstream-name . "natstrat")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam
                             r-sampling
                             r-rlang
                             r-rglpk
                             r-ramify
                             r-pps
                             r-plyr
                             r-ggplot2
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kkbrum/natstrat")
    (synopsis "Obtain Unweighted Natural Strata that Balance Many Covariates")
    (description
     "Natural strata can be used in observational studies to balance the distributions
of many covariates across any number of treatment groups and any number of
comparisons.  These strata have proportional amounts of units within each
stratum across the treatments, allowing for simple interpretation and
aggregation across strata.  Within each stratum, the units are chosen using
randomized rounding of a linear program that balances many covariates.  To solve
the linear program, the Gurobi commercial optimization software is recommended,
but not required.  The gurobi R package can be installed following the
instructions at
<https://www.gurobi.com/documentation/9.1/refman/ins_the_r_package.html>.")
    (license license:gpl3)))

(define-public r-natserv
  (package
    (name "r-natserv")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "natserv" version))
       (sha256
        (base32 "1j6m0fddrhq36qfjmj99zs77vxk5waqkshxi37pr2ccnis9hzy9h"))))
    (properties `((upstream-name . "natserv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-jsonlite r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/natserv")
    (synopsis "'NatureServe' Interface")
    (description
     "Interface to @code{NatureServe} (<https://www.natureserve.org/>).  Includes
methods to get data, image metadata, search taxonomic names, and make maps.")
    (license license:expat)))

(define-public r-natparkspalettes
  (package
    (name "r-natparkspalettes")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NatParksPalettes" version))
       (sha256
        (base32 "1arh6w08c0y6dzixza912rkhanid9c8rxlcqrmv6h98mqmsip9cf"))))
    (properties `((upstream-name . "NatParksPalettes")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/kevinsblake/NatParksPalettes")
    (synopsis "Color Palettes Inspired by National Parks")
    (description
     "Color palettes for data visualization inspired by National Parks.  Currently
contains 15 color schemes and checks for colorblind-friendliness of palettes.")
    (license license:expat)))

(define-public r-natmanager
  (package
    (name "r-natmanager")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "natmanager" version))
       (sha256
        (base32 "1lfz73zg95bv2wfk5pk0jb1r9n0w8ikfsza1cldfgffa93ii9ivd"))))
    (properties `((upstream-name . "natmanager")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-usethis
                             r-remotes
                             r-pak
                             r-gh
                             r-curl))
    (home-page "https://github.com/natverse/natmanager")
    (synopsis "Install the 'Natverse' Packages from Scratch")
    (description
     "This package provides streamlined installation for packages from the natverse',
a suite of R packages for computational neuroanatomy built on top of the nat
@code{NeuroAnatomy} Toolbox package.  Installation of the complete natverse
suite requires a @code{GitHub} user account and personal access token
GITHUB_PAT'.  natmanager will help the end user set this up if necessary.")
    (license license:gpl3)))

(define-public r-natcpp
  (package
    (name "r-natcpp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "natcpp" version))
       (sha256
        (base32 "0fy27dq6w9i9rir2v22zimzxibsaj9n4gbsl70ca4q57mgprl1hn"))))
    (properties `((upstream-name . "natcpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/natverse/natcpp")
    (synopsis "Fast C++ Primitives for the 'NeuroAnatomy Toolbox'")
    (description
     "Fast functions implemented in C++ via Rcpp to support the @code{NeuroAnatomy}
Toolbox ('nat') ecosystem.  These functions provide large speed-ups for basic
manipulation of neuronal skeletons over pure R functions found in the nat
package.  The expectation is that end users will not use this package directly,
but instead the nat package will automatically use routines from this package
when it is available to enable large performance gains.")
    (license license:gpl3+)))

(define-public r-nat-utils
  (package
    (name "r-nat-utils")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nat.utils" version))
       (sha256
        (base32 "0d1d1525izy8jmk9jkp9x9zw4ln04bbg56gvfddm1jaxwa5aciqc"))))
    (properties `((upstream-name . "nat.utils")))
    (build-system r-build-system)
    (propagated-inputs (list r-checkmate))
    (home-page "https://github.com/natverse/nat.utils")
    (synopsis "File System Utility Functions for 'NeuroAnatomy Toolbox'")
    (description
     "Utility functions that may be of general interest but are specifically required
by the @code{NeuroAnatomy} Toolbox ('nat').  Includes functions to provide a
basic make style system to update files based on timestamp information, file
locking and touch utility.  Convenience functions for working with file paths
include abs2rel', split_path and common_path'.  Finally there are utility
functions for working with zip and gzip files including integrity tests.")
    (license license:gpl3+)))

(define-public r-nat-templatebrains
  (package
    (name "r-nat-templatebrains")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nat.templatebrains" version))
       (sha256
        (base32 "13fwh9lqd7yz3j8ndhx650a6mf5hn2f0w3lqfha24vb2zrv0crsg"))))
    (properties `((upstream-name . "nat.templatebrains")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-rappdirs
                             r-nat
                             r-morpho
                             r-memoise
                             r-igraph
                             r-digest))
    (home-page "http://natverse.org/nat.templatebrains/")
    (synopsis
     "NeuroAnatomy Toolbox ('nat') Extension for Handling Template Brains")
    (description
     "Extends package nat (@code{NeuroAnatomy} Toolbox) by providing objects and
functions for handling template brains.")
    (license license:gpl3)))

(define-public r-nat-nblast
  (package
    (name "r-nat-nblast")
    (version "1.6.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nat.nblast" version))
       (sha256
        (base32 "0m3x69m366ir5r2cf0msbwkrz32ds1cjyychw5l9z9cmdd8gmlsw"))))
    (properties `((upstream-name . "nat.nblast")))
    (build-system r-build-system)
    (propagated-inputs (list r-spam
                             r-rgl
                             r-plyr
                             r-nat
                             r-nabor
                             r-dendroextras))
    (native-inputs (list r-knitr))
    (home-page "https://natverse.org/nat.nblast/")
    (synopsis
     "NeuroAnatomy Toolbox ('nat') Extension for Assessing Neuron Similarity and Clustering")
    (description
     "Extends package nat (@code{NeuroAnatomy} Toolbox) by providing a collection of
NBLAST-related functions for neuronal morphology comparison (Costa et al. (2016)
<doi: 10.1016/j.neuron.2016.06.012>).")
    (license license:gpl3)))

(define-public r-nat
  (package
    (name "r-nat")
    (version "1.8.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nat" version))
       (sha256
        (base32 "0wcn2dz44vfn475frir9fgj7hb45jvpkf2sxz7pd2m9a9p9idraf"))))
    (properties `((upstream-name . "nat")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-rgl
                             r-plyr
                             r-nat-utils
                             r-nabor
                             r-igraph
                             r-filehash
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/natverse/nat")
    (synopsis "NeuroAnatomy Toolbox for Analysis of 3D Image Data")
    (description
     "@code{NeuroAnatomy} Toolbox (nat) enables analysis and visualisation of 3D
biological image data, especially traced neurons.  Reads and writes 3D images in
NRRD and Amira @code{AmiraMesh} formats and reads surfaces in Amira hxsurf
format.  Traced neurons can be imported from and written to SWC and Amira
@code{LineSet} and @code{SkeletonGraph} formats.  These data can then be
visualised in 3D via rgl', manipulated including applying calculated
registrations, e.g. using the CMTK registration suite, and analysed.  There is
also a simple representation for neurons that have been subjected to 3D
skeletonisation but not formally traced; this allows morphological comparison
between neurons including searches and clustering (via the nat.nblast extension
package).")
    (license license:gpl3)))

(define-public r-naspaclust
  (package
    (name "r-naspaclust")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naspaclust" version))
       (sha256
        (base32 "1p4ilv2z5140h4kdix2w1v32vz1n8v33wq0fhc8n8mi7baknhd1i"))))
    (properties `((upstream-name . "naspaclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-stabledist r-rdpack r-rdist r-beepr))
    (home-page "https://cran.r-project.org/package=naspaclust")
    (synopsis "Nature-Inspired Spatial Clustering")
    (description
     "Implement and enhance the performance of spatial fuzzy clustering using Fuzzy
Geographically Weighted Clustering with various optimization algorithms, mainly
from Xin She Yang (2014) <ISBN:9780124167438> with book entitled Nature-Inspired
Optimization Algorithms.  The optimization algorithm is useful to tackle the
disadvantages of clustering inconsistency when using the traditional approach.
The distance measurements option is also provided in order to increase the
quality of clustering results.  The Fuzzy Geographically Weighted Clustering
with nature inspired optimisation algorithm was firstly developed by Arie Wahyu
Wijayanto and Ayu Purwarianti (2014) <doi:10.1109/CITSM.2014.7042178> using
Artificial Bee Colony algorithm.")
    (license license:gpl3)))

(define-public r-nasdaqdatalink
  (package
    (name "r-nasdaqdatalink")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NasdaqDataLink" version))
       (sha256
        (base32 "1dxsp8dq0r7zvl5rlx8x068lx30v06zzyapzq2zv207shhwgd9lq"))))
    (properties `((upstream-name . "NasdaqDataLink")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-jsonlite r-httr))
    (home-page "https://github.com/nasdaq/data-link-r")
    (synopsis "API Wrapper for Nasdaq Data Link")
    (description
     "This package provides functions for interacting directly with the Nasdaq Data
Link API to offer data in a number of formats usable in R, downloading a zip
with all data from a Nasdaq Data Link database, and the ability to search.  This
R package uses the Nasdaq Data Link API. For more information go to
<https://docs.data.nasdaq.com/>.  For more help on the package itself go to
<https://data.nasdaq.com/tools/r>.")
    (license license:expat)))

(define-public r-nasaweather
  (package
    (name "r-nasaweather")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nasaweather" version))
       (sha256
        (base32 "05pqrsf2vmkzc7l4jvvqbi8wf9f46854y73q2gilag62s85vm9xb"))))
    (properties `((upstream-name . "nasaweather")))
    (build-system r-build-system)
    (home-page "http://github.com/hadley/nasaweather")
    (synopsis "Collection of datasets from the ASA 2006 data expo")
    (description
     "This package contains tidied data from the ASA 2006 data expo, as well as a
number of useful other related data sets.")
    (license license:gpl3)))

(define-public r-nasapower
  (package
    (name "r-nasapower")
    (version "4.0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nasapower" version))
       (sha256
        (base32 "0md4y2fpjvx56j2a9v00n86x5gwvka07j4a53h80a6rdfyf21cnb"))))
    (properties `((upstream-name . "nasapower")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-readr r-lubridate r-jsonlite r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/nasapower/")
    (synopsis "NASA POWER API Client")
    (description
     "An API client for NASA POWER global meteorology, surface solar energy and
climatology data API. POWER (Prediction Of Worldwide Energy Resource) data are
freely available for download with varying spatial resolutions dependent on the
original data and with several temporal resolutions depending on the POWER
parameter and community.  This work is funded through the NASA Earth Science
Directorate Applied Science Program.  For more on the data themselves, the
methodologies used in creating, a web- based data viewer and web access, please
see <https://power.larc.nasa.gov/>.")
    (license license:expat)))

(define-public r-nasadata
  (package
    (name "r-nasadata")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nasadata" version))
       (sha256
        (base32 "0y88qdy8c1y0prsajxic5vdqfixv9knjsbhw3vbfac8wv3a69bjl"))))
    (properties `((upstream-name . "nasadata")))
    (build-system r-build-system)
    (propagated-inputs (list r-png r-plyr r-jsonlite r-dplyr))
    (home-page "https://cran.r-project.org/package=nasadata")
    (synopsis "Interface to Various NASA API's")
    (description
     "This package provides functions to access NASA's Earth Imagery and Assets API
and the Earth Observatory Natural Event Tracker (EONET) webservice.")
    (license license:cc0)))

(define-public r-naryn
  (package
    (name "r-naryn")
    (version "2.6.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naryn" version))
       (sha256
        (base32 "0b0dgpamm86llk7vxazgzfdby2y7ks95msq3046b2kp524nihmqb"))))
    (properties `((upstream-name . "naryn")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://tanaylab.github.io/naryn/")
    (synopsis
     "Native Access Medical Record Retriever for High Yield Analytics")
    (description
     "This package provides a toolkit for medical records data analysis.  The naryn
package implements an efficient data structure for storing medical records, and
provides a set of functions for data extraction, manipulation and analysis.")
    (license license:expat)))

(define-public r-narray
  (package
    (name "r-narray")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "narray" version))
       (sha256
        (base32 "0vpx1fl24ba1c5x3bw0n8bx5yp77gsqybaxgbq6mj6by29ggq73l"))))
    (properties `((upstream-name . "narray")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcpp r-progress))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mschubert/narray")
    (synopsis "Subset- And Name-Aware Array Utility Functions")
    (description
     "Stacking arrays according to dimension names, subset-aware splitting and mapping
of functions, intersecting along arbitrary dimensions, converting to and from
data.frames, and many other helper functions.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-nardl
  (package
    (name "r-nardl")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nardl" version))
       (sha256
        (base32 "1vf8im4zs4j0v3k617aaskq9n2fg8sn3j5bllcbz2ircrpijr21m"))))
    (properties `((upstream-name . "nardl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-strucchange
                             r-mass
                             r-gtools
                             r-formula
                             r-car))
    (home-page "https://github.com/zedtaha/nardl")
    (synopsis "Nonlinear Cointegrating Autoregressive Distributed Lag Model")
    (description
     "Computes the nonlinear cointegrating autoregressive distributed lag model with
automatic bases aic and bic lags selection of independent variables proposed by
(Shin, Yu & Greenwood-Nimmo, 2014 <doi:10.1007/978-1-4899-8008-3_9>).")
    (license license:gpl3)))

(define-public r-naptime
  (package
    (name "r-naptime")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naptime" version))
       (sha256
        (base32 "1cadfv5sdsmz61kf96hf2gbnghf24q40g5c3h9b8prvkxslap691"))))
    (properties `((upstream-name . "naptime")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=naptime")
    (synopsis "Flexible and Robust Sys.sleep() Replacement")
    (description
     "This package provides a near drop-in replacement for base::Sys.sleep() that
allows more types of input to produce delays in the execution of code and can
silence/prevent typical sources of error.")
    (license license:gpl2)))

(define-public r-naptanr
  (package
    (name "r-naptanr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naptanr" version))
       (sha256
        (base32 "074pxm1c8k24b3gbn3ibbwpsixbmjq3wx9agxg3ljflny2s6hhqp"))))
    (properties `((upstream-name . "naptanr")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr r-data-table))
    (home-page "https://cran.r-project.org/package=naptanr")
    (synopsis "Call the 'NaPTAN' API Through R")
    (description
     "An R wrapper for pulling data from the National Public Transport Access Nodes
('@code{NaPTAN}') API
(<https://www.api.gov.uk/dft/national-public-transport-access-nodes-naptan-api/#national-public-transport-access-nodes-naptan-api>).
 This allows users to download @code{NaPTAN} transport information, for the full
dataset, by ATCO region code, or by name of region.")
    (license license:expat)))

(define-public r-nap
  (package
    (name "r-nap")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NAP" version))
       (sha256
        (base32 "19j1ngl92vqjqsk893zfsgk6fard2aswcm1553kh9fzv2idvr36s"))))
    (properties `((upstream-name . "NAP")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=NAP")
    (synopsis "Non-Local Alternative Priors in Psychology")
    (description
     "Conducts Bayesian Hypothesis tests of a point null hypothesis against a
two-sided alternative using Non-local Alternative Prior (NAP) for one- and
two-sample z- and t-tests (Pramanik and Johnson, 2022).  Under the alternative,
the NAP is assumed on the standardized effects size in one-sample tests and on
their differences in two-sample tests.  The package considers two types of NAP
densities: (1) the normal moment prior, and (2) the composite alternative.  In
fixed design tests, the functions calculate the Bayes factors and the expected
weight of evidence for varied effect size and sample size.  The package also
provides a sequential testing framework using the Sequential Bayes Factor (SBF)
design.  The functions calculate the operating characteristics (OC) and the
average sample number (ASN), and also conducts sequential tests for a
sequentially observed data.")
    (license license:gpl2+)))

(define-public r-nanotime
  (package
    (name "r-nanotime")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nanotime" version))
       (sha256
        (base32 "05fbdhbax6k1glidmgl0zjc7y7v1ppbpz4422q3jmxmfack7hwd7"))))
    (properties `((upstream-name . "nanotime")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-rcppdate r-rcppcctz r-rcpp r-bit64))
    (home-page "https://github.com/eddelbuettel/nanotime")
    (synopsis "Nanosecond-Resolution Time Support for R")
    (description
     "Full 64-bit resolution date and time functionality with nanosecond granularity
is provided, with easy transition to and from the standard POSIXct type.  Three
additional classes offer interval, period and duration functionality for
nanosecond-resolution timestamps.")
    (license license:gpl2+)))

(define-public r-nanostringr
  (package
    (name "r-nanostringr")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nanostringr" version))
       (sha256
        (base32 "1sivaycgg1j3q9iapy2nq7mp8cak316rgn475sv7pa57ig6g9b7b"))))
    (properties `((upstream-name . "nanostringr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-dplyr
                             r-ccapp
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TalhoukLab/nanostringr/")
    (synopsis
     "Performs Quality Control, Data Normalization, and Batch Effect Correction for 'NanoString nCounter' Data")
    (description
     "This package provides quality control (QC), normalization, and batch effect
correction operations for @code{NanoString} @code{nCounter} data, Talhouk et al.
(2016) <doi:10.1371/journal.pone.0153844>.  Various metrics are used to
determine which samples passed or failed QC. Gene expression should first be
normalized to housekeeping genes, before a reference-based approach is used to
adjust for batch effects.  Raw @code{NanoString} data can be imported in the
form of Reporter Code Count (RCC) files.")
    (license license:expat)))

(define-public r-nanonext
  (package
    (name "r-nanonext")
    (version "0.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nanonext" version))
       (sha256
        (base32 "1fcgxbin1sx9cahc6575x3b883fslqckgsli0r1dlc3bk7sx2fxk"))))
    (properties `((upstream-name . "nanonext")))
    (build-system r-build-system)
    (home-page "https://shikokuchuo.net/nanonext/")
    (synopsis "NNG (Nanomsg Next Gen) Lightweight Messaging Library")
    (description
     "R binding for NNG (Nanomsg Next Gen), a successor to @code{ZeroMQ}.  NNG is a
socket library providing high-performance scalability protocols, a
cross-platform standard for messaging and communications.  Serves as a
concurrency framework for building distributed applications, utilising aio
objects which resolve automatically upon completion of asynchronous operations.
Implements connections with transport layer security, and synchronisation
primitives, which allow R execution to wait upon events being signalled by
concurrent messaging threads.")
    (license license:gpl3+)))

(define-public r-nanoarrow
  (package
    (name "r-nanoarrow")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nanoarrow" version))
       (sha256
        (base32 "07cq9qhpg9fdsdaj6as1cyvwaf9x4r9c2zs4p0i2whfcvs1lxkjv"))))
    (properties `((upstream-name . "nanoarrow")))
    (build-system r-build-system)
    (home-page "https://github.com/apache/arrow-nanoarrow")
    (synopsis "Interface to the 'nanoarrow' 'C' Library")
    (description
     "This package provides an R interface to the nanoarrow C library and the Apache
Arrow application binary interface.  Functions to import and export
@code{ArrowArray}', @code{ArrowSchema}', and @code{ArrowArrayStream} C
structures to and from R objects are provided alongside helpers to facilitate
zero-copy data transfer among R bindings to libraries implementing the Arrow C
data interface.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-nandb
  (package
    (name "r-nandb")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nandb" version))
       (sha256
        (base32 "1rbn4nibjzvwpccpmqn84w9a167f1avyl18kjlapy5dhafvixgbz"))))
    (properties `((upstream-name . "nandb")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-viridis
                             r-stringr
                             r-rlang
                             r-reshape2
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-ijtiff
                             r-glue
                             r-ggplot2
                             r-filesstrings
                             r-dplyr
                             r-detrendr
                             r-checkmate
                             r-bbmisc
                             r-autothresholdr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://rorynolan.github.io/nandb/")
    (synopsis "Number and Brightness Image Analysis")
    (description
     "Calculation of molecular number and brightness from fluorescence microscopy
image series.  The software was published in a 2016 paper
<doi:10.1093/bioinformatics/btx434>.  The seminal paper for the technique is
Digman et al.  2008 <doi:10.1529/biophysj.107.114645>.  A review of the
technique was published in 2017 <doi:10.1016/j.ymeth.2017.12.001>.")
    (license license:bsd-3)))

(define-public r-nametagger
  (package
    (name "r-nametagger")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nametagger" version))
       (sha256
        (base32 "1m6g8fx9fvd8zzvv4c9dh1dw63dkvl9i5mz8rqgvwqgqdvvvw1vi"))))
    (properties `((upstream-name . "nametagger")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/nametagger")
    (synopsis "Named Entity Recognition in Texts using 'NameTag'")
    (description
     "Wraps the nametag library <https://github.com/ufal/nametag>, allowing users to
find and extract entities (names, persons, locations, addresses, ...) in raw
text and build your own entity recognition models.  Based on a maximum entropy
Markov model which is described in Strakova J., Straka M. and Hajic J. (2013)
<https://ufal.mff.cuni.cz/~straka/papers/2013-tsd_ner.pdf>.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-namer
  (package
    (name "r-namer")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "namer" version))
       (sha256
        (base32 "1h3nfxdhvjjiki1rqjpmiih9vj1hz9j8m5wkazskz8asza23898i"))))
    (properties `((upstream-name . "namer")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rstudioapi
                             r-purrr
                             r-magrittr
                             r-glue
                             r-fs
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jumpingrivers/namer")
    (synopsis "Names Your 'R Markdown' Chunks")
    (description
     "It names the R Markdown chunks of files based on the filename.")
    (license license:gpl3+)))

(define-public r-nameneedle
  (package
    (name "r-nameneedle")
    (version "1.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NameNeedle" version))
       (sha256
        (base32 "14w8amhaar6wksnpkssdgjlmyqb4n7qxda29vy6rps2dxfvi6klc"))))
    (properties `((upstream-name . "NameNeedle")))
    (build-system r-build-system)
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Using Needleman-Wunsch to Match Sample Names")
    (description
     "The Needleman-Wunsch global alignment algorithm can be used to find approximate
matches between sample names in different data sets.  See Wang et al. (2010)
<doi:10.4137/CIN.S5613>.")
    (license license:asl2.0)))

(define-public r-namedropr
  (package
    (name "r-namedropr")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "namedropR" version))
       (sha256
        (base32 "06lg381imi8xnm6jlsxfffjyhzban6z29zwkw8bamglnk0frvzza"))))
    (properties `((upstream-name . "namedropR")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot
                             r-stringr
                             r-readr
                             r-r-utils
                             r-qrcode
                             r-lubridate
                             r-htmltools
                             r-dplyr
                             r-bib2df))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nucleic-acid/namedropR")
    (synopsis "Create Visual Citations for Presentations and Posters")
    (description
     "This package provides visual citations containing the metadata of a scientific
paper and a QR code.  A visual citation is a banner containing title, authors,
journal and year of a publication.  This package can create such banners based
on @code{BibTeX} and @code{BibLaTeX} references or call the reference metadata
from Crossref'-API. The banners include a QR code pointing to the DOI'.  The
resulting HTML object or PNG image can be included in a presentation to point
the audience to good resources for further reading.  Styling is possible via
predefined designs or via custom CSS'.  This package is not intended as
replacement for proper reference manager packages, but a tool to enrich
scientific presentation slides and conference posters.")
    (license license:expat)))

(define-public r-namedcapture
  (package
    (name "r-namedcapture")
    (version "2020.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "namedCapture" version))
       (sha256
        (base32 "0zdw3h3n4qjv9cpidb3g523ld6rrh49l2c1yhfqhk5wb7vddrs46"))))
    (properties `((upstream-name . "namedCapture")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tdhock/namedCapture")
    (synopsis "Named Capture Regular Expressions")
    (description
     "User-friendly wrappers for named capture regular expressions.  Introduction and
comparison in research paper by Hocking (2019), R Journal.
<doi:10.32614/RJ-2019-050> RE2 engine ('re2r package)
<https://github.com/qinwf/re2r> was removed from CRAN in Mar 2020 so must be
installed from github.")
    (license license:gpl3)))

(define-public r-name
  (package
    (name "r-name")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "name" version))
       (sha256
        (base32 "1va2qqcxgvc4nzkylxyyzz8yx6ndgb1hx7af3qjzf8m4mzg8qnvm"))))
    (properties `((upstream-name . "name")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-stringr
                             r-rlang
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/christopherkenny/name")
    (synopsis "Tools for Working with Names")
    (description
     "This package provides a system for organizing column names in data.  Aimed at
supporting a prefix-based and suffix-based column naming scheme.  Extends dplyr
functionality to add ordering by function and more explicit renaming.")
    (license license:expat)))

(define-public r-nam
  (package
    (name "r-nam")
    (version "1.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NAM" version))
       (sha256
        (base32 "12d2yjl0af2ailvwk30fswalx1wzyj500qbrhiczsg1vr4rcqhkh"))))
    (properties `((upstream-name . "NAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NAM")
    (synopsis "Nested Association Mapping")
    (description
     "Designed for association studies in nested association mapping (NAM) panels,
experimental and random panels.  The method is described by Xavier et al. (2015)
<doi:10.1093/bioinformatics/btv448>.  It includes tools for genome-wide
associations of multiple populations, marker quality control, population
genetics analysis, genome-wide prediction, solving mixed models and finding
variance components through likelihood and Bayesian methods.")
    (license license:gpl3)))

(define-public r-nakagami
  (package
    (name "r-nakagami")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nakagami" version))
       (sha256
        (base32 "0bxsg5k51x7qrw34l16da79ck212drkgvzgn9d5zanx5dwv5asl2"))))
    (properties `((upstream-name . "nakagami")))
    (build-system r-build-system)
    (propagated-inputs (list r-assertthat))
    (home-page "https://github.com/JonasMoss/nakagami")
    (synopsis "Functions for the Nakagami Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
Nakagami distribution of Nakagami (1960)
<doi:10.1016/B978-0-08-009306-2.50005-4>.")
    (license license:expat)))

(define-public r-naivereg
  (package
    (name "r-naivereg")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naivereg" version))
       (sha256
        (base32 "1cxfl419pp7xh1xrad29gvpn6hm0rhk40vylj97ypndh6gmnynzz"))))
    (properties `((upstream-name . "naivereg")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncvreg r-grpreg r-gmm r-glmnet))
    (home-page "https://cran.r-project.org/package=naivereg")
    (synopsis
     "Nonparametric Additive Instrumental Variable Estimator and Related IV Methods")
    (description
     "In empirical studies, instrumental variable (IV) regression is the signature
method to solve the endogeneity problem.  If we enforce the exogeneity condition
of the IV, it is likely that we end up with a large set of IVs without knowing
which ones are good.  Also, one could face the model uncertainty for structural
equation, as large micro dataset is commonly available nowadays.  This package
uses adaptive group lasso and B-spline methods to select the nonparametric
components of the IV function, with the linear function being a special case
(naivereg).  The package also incorporates two stage least squares estimator
(2SLS), generalized method of moment (GMM), generalized empirical likelihood
(GEL) methods post instrument selection, logistic-regression instrumental
variables estimator (LIVE, for dummy endogenous variable problem),
double-selection plus instrumental variable estimator (DS-IV) and double
selection plus logistic regression instrumental variable estimator (DS-LIVE),
where the double selection methods are useful for high-dimensional structural
equation models.  The naivereg is nonparametric version of ivregress in Stata
with IV selection and high dimensional features.  The package is based on the
paper by Q. Fan and W. Zhong, \"Nonparametric Additive Instrumental Variable
Estimator: A Group Shrinkage Estimation Perspective\" (2018), Journal of Business
& Economic Statistics <doi:10.1080/07350015.2016.1180991> as well as a series of
working papers led by the same authors.")
    (license license:gpl2+)))

(define-public r-naivebayes
  (package
    (name "r-naivebayes")
    (version "0.9.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naivebayes" version))
       (sha256
        (base32 "070m78d8hsbqfbapb6g8vvh91gyznqfdpqsaq6z3raps8zlybsag"))))
    (properties `((upstream-name . "naivebayes")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/majkamichal/naivebayes")
    (synopsis "High Performance Implementation of the Naive Bayes Algorithm")
    (description
     "In this implementation of the Naive Bayes classifier following class conditional
distributions are available: Bernoulli, Categorical, Gaussian, Poisson and
non-parametric representation of the class conditional density estimated via
Kernel Density Estimation.  Implemented classifiers handle missing data and can
take advantage of sparse data.")
    (license license:gpl2)))

(define-public r-naive
  (package
    (name "r-naive")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naive" version))
       (sha256
        (base32 "0ha54lc6g6yvh5g3kw5hdp2l7y2xi85b3ills3w1x092gma1q2cy"))))
    (properties `((upstream-name . "naive")))
    (build-system r-build-system)
    (propagated-inputs (list r-tictoc
                             r-scales
                             r-rfast
                             r-readr
                             r-purrr
                             r-philentropy
                             r-moments
                             r-modeest
                             r-lubridate
                             r-imputets
                             r-greybox
                             r-ggplot2
                             r-fastdummies
                             r-fancova
                             r-entropy))
    (home-page "https://rpubs.com/giancarlo_vercellino/naive")
    (synopsis "Empirical Extrapolation of Time Feature Patterns")
    (description
     "An application for the empirical extrapolation of time features selecting and
summarizing the most relevant patterns in time sequences.")
    (license license:gpl3)))

(define-public r-nair
  (package
    (name "r-nair")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NAIR" version))
       (sha256
        (base32 "0zcjv7siimxjc87qzq5948kifzkz6f1idmdr7625aa126k2kgk1s"))))
    (properties `((upstream-name . "NAIR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-lifecycle
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page
     "https://mlizhangx.github.io/Network-Analysis-for-Repertoire-Sequencing-/")
    (synopsis "Network Analysis of Immune Repertoire")
    (description
     "Pipelines for studying the adaptive immune repertoire of T cells and B cells via
network analysis based on receptor sequence similarity.  Relate clinical
outcomes to immune repertoires based on their network properties, or to
particular clusters and clones within a repertoire.  Yang et al. (2023)
<doi:10.3389/fimmu.2023.1181825>.")
    (license license:gpl3+)))

(define-public r-naijr
  (package
    (name "r-naijr")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naijR" version))
       (sha256
        (base32 "1108fz4rhckmb2d9s63rjb44dpfazhvhsqprgx82akbssr7xf9br"))))
    (properties `((upstream-name . "naijR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-sf
                             r-rlang
                             r-rcolorbrewer
                             r-maps
                             r-mapdata
                             r-lifecycle
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://brovic.github.io/naijR/")
    (synopsis "Operations to Ease Data Analyses Specific to Nigeria")
    (description
     "This package provides a set of convenience functions as well as
geographical/political data about Nigeria, aimed at simplifying work with data
and information that are specific to the country.")
    (license license:gpl3)))

(define-public r-naflex
  (package
    (name "r-naflex")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naflex" version))
       (sha256
        (base32 "18fqfhm6p38z4h8dznac5v8yz53n86cw2x6ma29kvcbvdp4r3yd2"))))
    (properties `((upstream-name . "naflex")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dannyparsons/naflex")
    (synopsis "Flexible Options for Handling Missing Values")
    (description
     "For use in summary functions to omit missing values conditionally using
specified checks.")
    (license license:lgpl3+)))

(define-public r-naepprimer
  (package
    (name "r-naepprimer")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NAEPprimer" version))
       (sha256
        (base32 "19p1livdnayfcl88f8r9x1vg30x522q8lgx66pfgwpkxjzvrqa2l"))))
    (properties `((upstream-name . "NAEPprimer")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NAEPprimer")
    (synopsis "The NAEP Primer")
    (description
     "This package contains a sample of the 2005 Grade 8 Mathematics data from the
National Assessment of Educational Progress (NAEP).  This data set is called the
NAEP Primer.")
    (license license:gpl2)))

(define-public r-naepirtparams
  (package
    (name "r-naepirtparams")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NAEPirtparams" version))
       (sha256
        (base32 "0qhfmkhi38z27ky3xbkvra5r6lw3kj9p3xrblm9j2657rj9kxc9j"))))
    (properties `((upstream-name . "NAEPirtparams")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=NAEPirtparams")
    (synopsis
     "IRT Parameters for the National Assessment of Education Progress")
    (description
     "This data package contains the Item Response Theory (IRT) parameters for the
National Center for Education Statistics (NCES) items used on the National
Assessment of Education Progress (NAEP) from 1990 to 2015.  The values in these
tables are used along with NAEP data to turn student item responses into scores
and include information about item difficulty, discrimination, and guessing
parameter for 3 parameter logit (3PL) items.  Parameters for Generalized Partial
Credit Model (GPCM) items are also included.  The adjustments table contains the
information regarding the treatment of items (e.g., deletion of an item or a
collapsing of response categories), when these items did not appear to fit the
item response models used to describe the NAEP data.  Transformation constants
change the score estimates that are obtained from the IRT scaling program to the
NAEP reporting metric.  Values from the years 2000 - 2013 were taken from the
NCES website <https://nces.ed.gov/nationsreportcard/> and values from 1990 -
1998 and 2015 were extracted from their NAEP data files.  All subtest names were
reduced and homogenized to one word (e.g. \"Reading to gain information\" became
\"information\").  The various subtest names for univariate transformation
constants were all homogenized to \"univariate\".")
    (license license:gpl2)))

(define-public r-nadiv
  (package
    (name "r-nadiv")
    (version "2.17.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "nadiv" version))
       (sha256
        (base32 "0v2jw0md4bjn15g6slx2bx7ipr3r0s1zv3frjach3rd7b1bs9z7k"))))
    (properties `((upstream-name . "nadiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://github.com/matthewwolak/nadiv")
    (synopsis "(Non)Additive Genetic Relatedness Matrices")
    (description
     "Constructs (non)additive genetic relationship matrices, and their inverses, from
a pedigree to be used in linear mixed effect models (A.K.A. the animal model').
Also includes other functions to facilitate the use of animal models.  Some
functions have been created to be used in conjunction with the R package asreml
for the ASReml software, which can be obtained upon purchase from VSN
international (<https://vsni.co.uk/software/asreml>).")
    (license license:gpl2+)))

(define-public r-nadia
  (package
    (name "r-nadia")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NADIA" version))
       (sha256
        (base32 "19545sc75a82smjvvyd353wjlh3wwzhwapcrk9fkg3ffjv9p4a3n"))))
    (properties `((upstream-name . "NADIA")))
    (build-system r-build-system)
    (propagated-inputs (list r-vim
                             r-testthat
                             r-softimpute
                             r-rpart
                             r-paradox
                             r-mlr3pipelines
                             r-mlr3learners
                             r-mlr3
                             r-missranger
                             r-missmda
                             r-missforest
                             r-mice
                             r-glmnet
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-amelia))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=NADIA")
    (synopsis "NA Data Imputation Algorithms")
    (description
     "This package creates a uniform interface for several advanced imputations
missing data methods.  Every available method can be used as a part of mlr3
pipelines which allows easy tuning and performance evaluation.  Most of the used
functions work separately on the training and test sets (imputation is trained
on the training set and impute training data.  After that imputation is again
trained on the test set and impute test data).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-nada2
  (package
    (name "r-nada2")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NADA2" version))
       (sha256
        (base32 "15jv7pr36l5n3anf772vz5w5aj0lxx6fswsyj59rh54ap8a77jxb"))))
    (properties `((upstream-name . "NADA2")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-survminer
                             r-survival
                             r-perm
                             r-nada
                             r-multcomp
                             r-mgcv
                             r-kendall
                             r-fitdistrplus
                             r-envstats
                             r-coin
                             r-cengam))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SwampThingPaul/NADA2")
    (synopsis "Data Analysis for Censored Environmental Data")
    (description
     "This package contains methods described by Dennis Helsel in his book \"Statistics
for Censored Environmental Data using Minitab and R\" (2011) and courses and
videos at <https://practicalstats.com>.  This package adds new functions to the
`NADA` Package.")
    (license license:expat)))

(define-public r-nacho
  (package
    (name "r-nacho")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "NACHO" version))
       (sha256
        (base32 "1w32gnpi9hna2icrv5ig1qkpdrz6n3x79hkjz5fqschicg7fx4z4"))))
    (properties `((upstream-name . "NACHO")))
    (build-system r-build-system)
    (inputs (list pandoc pandoc))
    (propagated-inputs (list r-shinywidgets
                             r-shiny
                             r-rmarkdown
                             r-knitr
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mcanouil/NACHO/")
    (synopsis "NanoString Quality Control Dashboard")
    (description
     "@code{NanoString} @code{nCounter} data are gene expression assays where there is
no need for the use of enzymes or amplification protocols and work with
fluorescent barcodes (Geiss et al. (2018) <doi:10.1038/nbt1385>).  Each barcode
is assigned a messenger-RNA/micro-RNA (@code{mRNA/miRNA}) which after bonding
with its target can be counted.  As a result each count of a specific barcode
represents the presence of its target @code{mRNA/miRNA}.  NACHO
(N@code{AnoString} quality Control @code{dasHbOard}) is able to analyse the
exported @code{NanoString} @code{nCounter} data and facilitates the user in
performing a quality control.  NACHO does this by visualising quality control
metrics, expression of control genes, principal components and sample specific
size factors in an interactive web application.")
    (license license:gpl3)))

(define-public r-naaccr
  (package
    (name "r-naaccr")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "naaccr" version))
       (sha256
        (base32 "1j30fb7qvxzpx0y7hq8sbqvszwjfnc4r2g0j8885fmn2wxvcgzdx"))))
    (properties `((upstream-name . "naaccr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-stringi r-data-table))
    (home-page "https://github.com/WerthPADOH/naaccr")
    (synopsis "Read Cancer Records in the NAACCR Format")
    (description
     "This package provides functions for reading cancer record files which follow a
format defined by the North American Association of Central Cancer Registries
(NAACCR).")
    (license license:expat)))

(define-public r-na-tools
  (package
    (name "r-na-tools")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "na.tools" version))
       (sha256
        (base32 "1lbzsckfg297n85kzbin65x1l6qgg9l50hd3xi2gflxc7n2xb8bw"))))
    (properties `((upstream-name . "na.tools")))
    (build-system r-build-system)
    (home-page "https://github.com/decisionpatterns/na.tools")
    (synopsis
     "Comprehensive Library for Working with Missing (NA) Values in Vectors")
    (description
     "This comprehensive toolkit provide a consistent and extensible framework for
working with missing values in vectors.  The companion package tidyimpute
provides similar functionality for list-like and table-like structures).
Functions exist for detection, removal, replacement, imputation, recollection,
etc.  of NAs'.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-n2h4
  (package
    (name "r-n2h4")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "N2H4" version))
       (sha256
        (base32 "1bqkjfw14jlk3hr10g5djp358qj07c8x4xyjsrcs86zx6yq2gbda"))))
    (properties `((upstream-name . "N2H4")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rvest
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr2))
    (home-page "https://github.com/forkonlp/N2H4")
    (synopsis "Handling Methods for Naver News Text Crawling")
    (description
     "This package provides some functions to get Korean text sample from news
articles in Naver which is popular news portal service <https://news.naver.com/>
in Korea.")
    (license license:expat)))

(define-public r-n1qn1
  (package
    (name "r-n1qn1")
    (version "6.0.1-11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "n1qn1" version))
       (sha256
        (base32 "17p48wm0wcw46lk9382yd9xpzx4rygdjyrbfdi6xnph1k5phjxpj"))))
    (properties `((upstream-name . "n1qn1")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/nlmixr2/n1qn1c")
    (synopsis
     "Port of the 'Scilab' 'n1qn1' Module for Unconstrained BFGS Optimization")
    (description
     "This package provides Scilab n1qn1'.  This takes more memory than traditional
L-BFGS. The n1qn1 routine is useful since it allows prespecification of a
Hessian.  If the Hessian is near enough the truth in optimization it can speed
up the optimization problem.  The algorithm is described in the Scilab
optimization documentation located at
<https://www.scilab.org/sites/default/files/optimization_in_scilab.pdf>.  This
version uses manually modified code from f2c to make this a C only binary.")
    (license (license:fsdg-compatible "CeCILL-2"))))

