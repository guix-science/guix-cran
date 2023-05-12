(define-module (guix-cran packages x)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages julia)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages java)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages web)
  #:use-module (gnu packages perl)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
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

(define-public r-xxirt
  (package
    (name "r-xxirt")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xxIRT" version))
              (sha256
               (base32
                "0b8yv8ixmcjiv9hlvpfdknx815smy7df7f2ixifnvhxxafgf1fwq"))))
    (properties `((upstream-name . "xxIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-lpsolveapi r-glpkapi r-ggplot2))
    (home-page "https://github.com/xluo11/xxIRT")
    (synopsis "Item Response Theory and Computer-Based Testing in R")
    (description
     "This package provides a suite of psychometric analysis tools for research and
operation, including: (1) computation of probability, information, and
likelihood for the 3PL, GPCM, and GRM; (2) parameter estimation using joint or
marginal likelihood estimation method; (3) simulation of computerized adaptive
testing using built-in or customized algorithms; (4) assembly and simulation of
multistage testing.  The full documentation and tutorials are at
<https://github.com/xluo11/xxIRT>.")
    (license license:gpl3+)))

(define-public r-xwf
  (package
    (name "r-xwf")
    (version "0.2-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xwf" version))
              (sha256
               (base32
                "1byj6vjk2abm9j919107xsa3nd40zbsvxaldvv4ml3c47k1fg3kc"))))
    (properties `((upstream-name . "xwf")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (home-page "https://cran.r-project.org/package=xwf")
    (synopsis "Extrema-Weighted Feature Extraction")
    (description
     "Extrema-weighted feature extraction for varying length functional data.
Functional data analysis method that performs dimensionality reduction based on
predefined features and allows for quantile weighting.  Method implemented as
presented in van den Boom et al. (2018) <doi:10.1093/bioinformatics/bty120>.")
    (license license:expat)))

(define-public r-xva
  (package
    (name "r-xva")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xVA" version))
              (sha256
               (base32
                "06y9qhly14y5r8d1g85jdzz8x5lwzfjkiy5zak6146mknl4nzz11"))))
    (properties `((upstream-name . "xVA")))
    (build-system r-build-system)
    (propagated-inputs (list r-trading r-saccr r-data-table))
    (home-page "https://openriskcalculator.com/")
    (synopsis "Calculates Credit Risk Valuation Adjustments")
    (description
     "Calculates a number of valuation adjustments including CVA, DVA, FBA, FCA, MVA
and KVA. A two-way margin agreement has been implemented.  For the KVA
calculation three regulatory frameworks are supported: CEM, (simplified) SA-CCR,
OEM and IMM. The probability of default is implied through the credit spreads
curve.  The package supports an exposure calculation based on SA-CCR which
includes several trade types and a simulated path which is currently available
only for IRSwaps.  The latest regulatory capital charge methodologies have been
implementing including BA-CVA & SA-CVA.")
    (license license:gpl3)))

(define-public r-xutils
  (package
    (name "r-xutils")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xutils" version))
              (sha256
               (base32
                "1h07gs8pj7hn64r35ld1j1zakc243aiiwdrz92viqrg7z75czdzl"))))
    (properties `((upstream-name . "xutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fangzhou-xie/xutils")
    (synopsis "Utility Functions of Fangzhou Xie")
    (description
     "This is a collection of some useful functions when dealing with text data.
Currently it only contains a very efficient function of decoding HTML entities
in character vectors by Rcpp routine.")
    (license license:expat)))

(define-public r-xtranat
  (package
    (name "r-xtranat")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xtranat" version))
              (sha256
               (base32
                "1gv0kc1gj305iwwhv7wrfrh45rqwaks696q6q39a55m2vxw11xl1"))))
    (properties `((upstream-name . "xtranat")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fdepaolis/xtranat")
    (synopsis "Network Metrics Based on Random Walks")
    (description
     "There are two new network metrics, RWC (random walk centrality) and CBET
(counting betweenness).  Also available are the normalized versions of those
metrics.  These measures of centrality and betweenness are particularly useful
for the analysis of very dense weighted networks which include loops.
Traditional measures do not work as well for those network characteristics.  The
main reference is DePaolis at al (2022) <doi:10.1007/s41109-022-00519-2>.")
    (license license:gpl3)))

(define-public r-xtermstyle
  (package
    (name "r-xtermstyle")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xtermStyle" version))
              (sha256
               (base32
                "1q4qq8w4sgxbbb1x0i4k5xndvwisvjszg830wspwb37wigxz8xvz"))))
    (properties `((upstream-name . "xtermStyle")))
    (build-system r-build-system)
    (home-page "https://github.com/backlin/xtermStyle")
    (synopsis "Terminal Text Formatting Using Escape Sequences")
    (description
     "Can be used for coloring output in terminals.  It was developed for the standard
Ubuntu terminal but should be compatible with any terminal using xterm or ANSI
escape sequences.  If run in windows, RStudio, or any other platform not
supporting such escape sequences it gracefully passes on any output without
modifying it.")
    (license license:gpl2+)))

(define-public r-xtensor
  (package
    (name "r-xtensor")
    (version "0.14.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xtensor" version))
              (sha256
               (base32
                "1qni98kxyaggb1ixmmj1hh1jmbz8rhji91nifgrjxc1wsvmvswh0"))))
    (properties `((upstream-name . "xtensor")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/xtensor-stack/xtensor")
    (synopsis "Headers for the 'xtensor' Library")
    (description
     "The xtensor C++ library for numerical analysis with multi-dimensional array
expressions is provided as a header-only C++14 library.  It offers an extensible
expression system enabling lazy broadcasting; an API following the idioms of the
C++ standard library; and tools to manipulate array expressions and build upon
xtensor'.")
    (license license:bsd-3)))

(define-public r-xtal
  (package
    (name "r-xtal")
    (version "1.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xtal" version))
              (sha256
               (base32
                "1zq3vd5x3vw6acn47yd2x7kflr9sm3znmdkm68cs64ha54jbl3vs"))))
    (properties `((upstream-name . "xtal")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=xtal")
    (synopsis "Crystallization Toolset")
    (description
     "This is the tool set for crystallographer to design and analyze crystallization
experiments, especially for ribosome from Mycobacterium tuberculosis.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-xsub
  (package
    (name "r-xsub")
    (version "3.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xSub" version))
              (sha256
               (base32
                "07mib63zbvffr4w8klpv017d13wvqy3mwrpssr0vydcj8475gjfx"))))
    (properties `((upstream-name . "xSub")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcurl r-haven r-countrycode))
    (home-page "https://github.com/zhukovyuri/xSub")
    (synopsis "Cross-National Data on Sub-National Violence")
    (description
     "Tools to download and merge data files on sub-national conflict, violence and
protests from <http://www.x-sub.org>.")
    (license license:gpl3)))

(define-public r-xsp
  (package
    (name "r-xsp")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xsp" version))
              (sha256
               (base32
                "1jbmxa234v52qji8sz4bkg24c2n65b0zh9py1wyyfzw9n1wx5w0r"))))
    (properties `((upstream-name . "xsp")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2))
    (home-page "https://cran.r-project.org/package=xsp")
    (synopsis "The Chi-Square Periodogram")
    (description
     "The circadian period of a time series data is predicted and the statistical
significance of the periodicity are calculated using the chi-square periodogram.")
    (license license:expat)))

(define-public r-xslt
  (package
    (name "r-xslt")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xslt" version))
              (sha256
               (base32
                "0caci3mhqkl1bg1pzjhi22c431vgcy4ibsg2mg1p9d5c5pzwmak4"))))
    (properties `((upstream-name . "xslt")))
    (build-system r-build-system)
    (inputs (list libxml2))
    (propagated-inputs (list r-xml2 r-rcpp))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=xslt")
    (synopsis "Extensible Style-Sheet Language Transformations")
    (description
     "An extension for the xml2 package to transform XML documents by applying an xslt
style-sheet.")
    (license license:gpl2+)))

(define-public r-xrscc
  (package
    (name "r-xrscc")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XRSCC" version))
              (sha256
               (base32
                "0hs2whjsd02avaz79zkrd8gjw9qd7l6ysxmhx4w1r7gb1cj9rr7c"))))
    (properties `((upstream-name . "XRSCC")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=XRSCC")
    (synopsis "Statistical Quality Control Simulation")
    (description
     "This is a set of statistical quality control functions, that allows plotting
control charts and its iterations, process capability for variable and attribute
control, highlighting the xrs_gr() function, like a first iteration for variable
chart, meanwhile the we_rules() function detects non random patterns in sample.")
    (license license:gpl2+)))

(define-public r-xrpython
  (package
    (name "r-xrpython")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XRPython" version))
              (sha256
               (base32
                "0alg33spiaqf3jwg1qn543nxvbfaqv8gvf5px3grhbgrcmi5mcmj"))))
    (properties `((upstream-name . "XRPython")))
    (build-system r-build-system)
    (propagated-inputs (list r-xr r-reticulate))
    (home-page "https://cran.r-project.org/package=XRPython")
    (synopsis "Structured Interface to 'Python'")
    (description
     "This package provides a Python interface structured according to the general
form described in package XR and in the book \"Extending R\".")
    (license license:gpl2+)))

(define-public r-xroi
  (package
    (name "r-xroi")
    (version "0.9.20")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xROI" version))
              (sha256
               (base32
                "0xa12qsw5xbbfqyv60apr4f9gx7q6rad4ywayvw8l2zla2wnhq5h"))))
    (properties `((upstream-name . "xROI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiff
                             r-stringr
                             r-sp
                             r-shinyjs
                             r-shiny
                             r-rjson
                             r-rgdal
                             r-rcurl
                             r-raster
                             r-moments
                             r-lubridate
                             r-jpeg
                             r-data-table
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=xROI")
    (synopsis
     "Delineate Region of Interests (ROI's) and Extract Time-Series Data from Digital Repeat Photography Images")
    (description
     "Digital repeat photography and near-surface remote sensing have been used by
environmental scientists to study the environmental change for nearly a decade.
However, a user-friendly, reliable, and robust platform to extract color-based
statistics and time-series from a large stack of images is still lacking.  Here,
we present an interactive open-source toolkit, called xROI', that facilitate the
process time-series extraction and improve the quality of the final data.  xROI
provides a responsive environment for scientists to interactively a) delineate
regions of interest (ROI), b) handle field of view (FOV) shifts, and c) extract
and export time series data characterizing image color (i.e.  red, green and
blue channel digital numbers for the defined ROI).  Using xROI', user can detect
FOV shifts without minimal difficulty.  The software gives user the opportunity
to readjust the mask files or redraw new ones every time an FOV shift occurs.
xROI helps to significantly improve data accuracy and continuity.")
    (license license:agpl3)))

(define-public r-xrnet
  (package
    (name "r-xrnet")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xrnet" version))
              (sha256
               (base32
                "136aadrvsdg9hizjg4q12h56ih0s3w88j3jpfb54ajgdmqw3pldi"))))
    (properties `((upstream-name . "xrnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-foreach r-bigmemory r-bh))
    (home-page "https://github.com/USCbiostats/xrnet")
    (synopsis "Hierarchical Regularized Regression")
    (description
     "Fits hierarchical regularized regression models to incorporate potentially
informative external data, Weaver and Lewinger (2019) <doi:10.21105/joss.01761>.
 Utilizes coordinate descent to efficiently fit regularized regression models
both with and without external information with the most common penalties used
in practice (i.e.  ridge, lasso, elastic net).  Support for standard R matrices,
sparse matrices and big.matrix objects.")
    (license license:gpl2)))

(define-public r-xrjulia
  (package
    (name "r-xrjulia")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XRJulia" version))
              (sha256
               (base32
                "0s3g6fkam6hj03mxvw75nzsq3zvz84b71jhrw3v64mdngazdv7zm"))))
    (properties `((upstream-name . "XRJulia")))
    (build-system r-build-system)
    (inputs (list julia))
    (propagated-inputs (list r-xr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=XRJulia")
    (synopsis "Structured Interface to Julia")
    (description
     "This package provides a Julia interface structured according to the general form
described in package XR and in the book \"Extending R\".")
    (license license:gpl2+)))

(define-public r-xring
  (package
    (name "r-xring")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xRing" version))
              (sha256
               (base32
                "1k4yhqvmixnjvzbw1ymq4brwn9n71vqsqpqw33p79kn98n4fj7z0"))))
    (properties `((upstream-name . "xRing")))
    (build-system r-build-system)
    (propagated-inputs (list r-tkrplotr r-tcltk2 r-imager r-dplr))
    (home-page "https://cran.r-project.org/package=xRing")
    (synopsis
     "Identify and Measure Tree Rings on X-Ray Micro-Density Profiles")
    (description
     "This package contains functions to identify tree-ring borders based on X-ray
micro-density profiles and a Graphical User Interface (GUI) to visualize density
profiles and correct tree-ring borders.  Campelo F, Mayer K, Grabner M. (2019)
<doi:10.1016/j.dendro.2018.11.002>.")
    (license license:gpl2+)))

(define-public r-xrf
  (package
    (name "r-xrf")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xrf" version))
              (sha256
               (base32
                "0917chdkl6b20fdbwwj5b6wyihn9p444anwjspd0zqxmp8ag0i5f"))))
    (properties `((upstream-name . "xrf")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-rlang
                             r-matrix
                             r-glmnet
                             r-fuzzyjoin
                             r-dplyr))
    (home-page "https://github.com/holub008/xrf")
    (synopsis "eXtreme RuleFit")
    (description
     "An implementation of the RuleFit algorithm as described in Friedman & Popescu
(2008) <doi:10.1214/07-AOAS148>.  eXtreme Gradient Boosting ('XGBoost') is used
to build rules, and glmnet is used to fit a sparse linear model on the raw and
rule features.  The result is a model that learns similarly to a tree ensemble,
while often offering improved interpretability and achieving improved scoring
runtime in live applications.  Several algorithms for reducing rule complexity
are provided, most notably hyperrectangle de-overlapping.  All algorithms scale
to several million rows and support sparse representations to handle tens of
thousands of dimensions.")
    (license license:expat)))

(define-public r-xray
  (package
    (name "r-xray")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xray" version))
              (sha256
               (base32
                "1ibj92ljlj8a5rmbrci691yhpd4kwrfyl944nzl2dcbf58l01dzq"))))
    (properties `((upstream-name . "xray")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-lubridate r-ggplot2 r-foreach r-dplyr))
    (home-page "https://github.com/sicarul/xray/")
    (synopsis "X Ray Vision on your Datasets")
    (description
     "Tools to analyze datasets previous to any statistical modeling.  Has various
functions designed to find inconsistencies and understanding the distribution of
the data.")
    (license license:expat)))

(define-public r-xr
  (package
    (name "r-xr")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XR" version))
              (sha256
               (base32
                "0j8rkjw9y7mb0yj24nlisfd84148pnnakz8i2y35y2b8gmh5zhvz"))))
    (properties `((upstream-name . "XR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://cran.r-project.org/package=XR")
    (synopsis "Structure for Interfaces from R")
    (description
     "Support for interfaces from R to other languages, built around a class for
evaluators and a combination of functions, classes and methods for
communication.  Will be used through a specific language interface package.
Described in the book \"Extending R\".")
    (license license:gpl2+)))

(define-public r-xqtlbiolinks
  (package
    (name "r-xqtlbiolinks")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xQTLbiolinks" version))
              (sha256
               (base32
                "0s2zar4zav9a3q2w5cn915mr2k7mcd570fjaw0yj6q89c74mlw82"))))
    (properties `((upstream-name . "xQTLbiolinks")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-summarizedexperiment
                             r-stringr
                             r-rmysql
                             r-jsonlite
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-genomicranges
                             r-genomicfeatures
                             r-genomeinfodb
                             r-dbi
                             r-data-table
                             r-curl
                             r-cowplot
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dingruofan/xQTLbiolinks")
    (synopsis
     "Integrative Analysis of Quantitative Trait Locus Data of 'xQTL'")
    (description
     "Enables users-customized data retrieval, processing, analysis, and data
visualization of molecular quantitative trait locus and gene expression data
from public resources through the application programming interface
<https://gtexportal.org/home/api-docs/index.html> of GTEx and
<http://www.ebi.ac.uk/eqtl/api> of eQTL cagalogue'.")
    (license license:gpl3+)))

(define-public r-xpose4
  (package
    (name "r-xpose4")
    (version "4.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xpose4" version))
              (sha256
               (base32
                "149ridxvbbkyxlnyhvw31gh2574cdycrrn89qwzvi4b5wb0p7psi"))))
    (properties `((upstream-name . "xpose4")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-readr
                             r-lazyeval
                             r-lattice
                             r-hmisc
                             r-gam
                             r-dplyr))
    (home-page "https://uupharmacometrics.github.io/xpose4/")
    (synopsis "Diagnostics for Nonlinear Mixed-Effect Models")
    (description
     "This package provides a model building aid for nonlinear mixed-effects
(population) model analysis using NONMEM, facilitating data set checkout,
exploration and visualization, model diagnostics, candidate covariate
identification and model comparison.  The methods are described in Keizer et al.
(2013) <doi:10.1038/psp.2013.24>, and Jonsson et al. (1999)
<doi:10.1016/s0169-2607(98)00067-4>.")
    (license license:lgpl3+)))

(define-public r-xpose-nlmixr2
  (package
    (name "r-xpose-nlmixr2")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xpose.nlmixr2" version))
              (sha256
               (base32
                "0scq6brd7sn1ybmacxlpdlmkwxbn9sc2gpzw6438fwfjss6sza8s"))))
    (properties `((upstream-name . "xpose.nlmixr2")))
    (build-system r-build-system)
    (propagated-inputs (list r-xpose
                             r-vpc
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-nlmixr2est
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-crayon))
    (home-page "https://cran.r-project.org/package=xpose.nlmixr2")
    (synopsis
     "Graphical Diagnostics for Pharmacometric Models: Extension to 'nlmixr2'")
    (description
     "Extension to xpose to support nlmixr2'.  Provides functions to import nlmixr2
fit data into an xpose data object, allowing the use of xpose for nlmixr2 model
diagnostics.")
    (license license:gpl2+)))

(define-public r-xpose
  (package
    (name "r-xpose")
    (version "0.4.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xpose" version))
              (sha256
               (base32
                "1lxfrmr051b5kzr7763lny3hwf4g6hhlqfib48yf8xhr587jwvv0"))))
    (properties `((upstream-name . "xpose")))
    (build-system r-build-system)
    (propagated-inputs (list r-vpc
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-ggplot2
                             r-ggforce
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://uupharmacometrics.github.io/xpose/")
    (synopsis "Diagnostics for Pharmacometric Models")
    (description
     "Diagnostics for non-linear mixed-effects (population) models from NONMEM
<https://www.iconplc.com/solutions/technologies/nonmem/>.  xpose facilitates
data import, creation of numerical run summary and provide ggplot2'-based
graphics for data exploration and model diagnostics.")
    (license license:lgpl3)))

(define-public r-xportr
  (package
    (name "r-xportr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xportr" version))
              (sha256
               (base32
                "0dfa666mimva5gzzi9rwsah7i4p4l0ycbkzqcb4mrad5j4sbdm1j"))))
    (properties `((upstream-name . "xportr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm
                             r-tidyselect
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-janitor
                             r-haven
                             r-glue
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/atorus-research/xportr")
    (synopsis "Utilities to Output CDISC SDTM/ADaM XPT Files")
    (description
     "Tools to build CDISC compliant data sets and check for CDISC compliance.")
    (license license:expat)))

(define-public r-xplortext
  (package
    (name "r-xplortext")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Xplortext" version))
              (sha256
               (base32
                "149frkkmpxhpcbjdqkjvdlqd6k95hjdydnvgfq4bhi4d8gz2sgzi"))))
    (properties `((upstream-name . "Xplortext")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tm
                             r-stringr
                             r-stringi
                             r-slam
                             r-plotly
                             r-mass
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-ggdendro
                             r-flexclust
                             r-flashclust
                             r-factominer))
    (home-page "https://xplortext.unileon.es")
    (synopsis "Statistical Analysis of Textual Data")
    (description
     "This package provides a set of functions devoted to multivariate exploratory
statistics on textual data.  Classical methods such as correspondence analysis
and agglomerative hierarchical clustering are available.  Chronologically
constrained agglomerative hierarchical clustering enriched with
labelled-by-words trees is offered.  Given a division of the corpus into parts,
their characteristic words and documents are identified.  Further, accessing to
FactoMineR functions is very easy.  Two of them are relevant in textual domain.
MFA() addresses multiple lexical table allowing applications such as dealing
with multilingual corpora as well as simultaneously analyzing both open-ended
and closed questions in surveys.  See <http://xplortext.unileon.es> for
examples.")
    (license license:gpl2+)))

(define-public r-xplorerr
  (package
    (name "r-xplorerr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xplorerr" version))
              (sha256
               (base32
                "0sca6nngjs6f51di4dgzx868p75bzas0msr0kgivavsv6rj5fz0r"))))
    (properties `((upstream-name . "xplorerr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rcpp))
    (home-page "https://github.com/rsquaredacademy/xplorerr")
    (synopsis "Tools for Interactive Data Exploration")
    (description
     "Tools for interactive data exploration built using shiny'.  Includes apps for
descriptive statistics, visualizing probability distributions, inferential
statistics, linear regression, logistic regression and RFM analysis.")
    (license license:expat)))

(define-public r-xplain
  (package
    (name "r-xplain")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xplain" version))
              (sha256
               (base32
                "152a83ckmhns6yniy87mmjva5bkv5x3phv63l1kkcmrr9bclfgz0"))))
    (properties `((upstream-name . "xplain")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-readr r-rcurl r-httr))
    (home-page "https://github.com/jsugarelli/xplain/")
    (synopsis
     "Providing Interactive Interpretations and Explanations of Statistical Results")
    (description
     "Allows to provide live interpretations and explanations of statistical functions
in R. These interpretations and explanations are shown when the explained
function is called by the user.  They can interact with the values of the
explained function's actual results to offer relevant, meaningful insights.  The
xplain interpretations and explanations are based on an easy-to-use XML format
that allows to include R code to interact with the returns of the explained
function.")
    (license license:gpl3)))

(define-public r-xpectr
  (package
    (name "r-xpectr")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xpectr" version))
              (sha256
               (base32
                "0qpv2r4dz5g37v2b6y5jscsxm1hdmimq8pm0dwwf8df0pp351r3b"))))
    (properties `((upstream-name . "xpectr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-testthat
                             r-rstudioapi
                             r-rlang
                             r-plyr
                             r-lifecycle
                             r-fansi
                             r-dplyr
                             r-clipr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ludvigolsen/xpectr")
    (synopsis "Generates Expectations for 'testthat' Unit Testing")
    (description
     "Helps systematize and ease the process of building unit tests with the testthat
package by providing tools for generating expectations.")
    (license license:expat)))

(define-public r-xoi
  (package
    (name "r-xoi")
    (version "0.72")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xoi" version))
              (sha256
               (base32
                "0q1q43540qz97qad36dcwmcmgdci3sbhxk9li897gnjv9gjazdlr"))))
    (properties `((upstream-name . "xoi")))
    (build-system r-build-system)
    (propagated-inputs (list r-qtl))
    (home-page "https://github.com/kbroman/xoi")
    (synopsis "Tools for Analyzing Crossover Interference")
    (description
     "Analysis of crossover interference in experimental crosses, particularly
regarding the gamma model.  See, for example, Broman and Weber (2000)
<doi:10.1086/302923>.")
    (license license:gpl3)))

(define-public r-xnet
  (package
    (name "r-xnet")
    (version "0.1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xnet" version))
              (sha256
               (base32
                "18lda1gv53awsbkk5p4bzrbilndgybdz8xc6lhl6wy647fw9q9hv"))))
    (properties `((upstream-name . "xnet")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CenterForStatistics-UGent/xnet")
    (synopsis "Two-Step Kernel Ridge Regression for Network Predictions")
    (description
     "Fit a two-step kernel ridge regression model for predicting edges in networks,
and carry out cross-validation using shortcuts for swift and accurate
performance assessment (Stock et al, 2018 <doi:10.1093/bib/bby095> ).")
    (license license:gpl3)))

(define-public r-xmrr
  (package
    (name "r-xmrr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmrr" version))
              (sha256
               (base32
                "1kb4kzxb9rcx9fp1answln0sv9c3wdrk82gz79k0i9ypq7dls2ah"))))
    (properties `((upstream-name . "xmrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-qpdf
                             r-purrr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=xmrr")
    (synopsis "Generate XMR Control Chart Data from Time-Series Data")
    (description
     "XMRs combine X-Bar control charts and Moving Range control charts.  These
functions also will recalculate the reference lines when significant change has
occurred.")
    (license license:gpl3)))

(define-public r-xmpdf
  (package
    (name "r-xmpdf")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmpdf" version))
              (sha256
               (base32
                "140h6dymap3dh5a68z2mdij6163fzqix4md9mfynghz4ckj1cfbq"))))
    (properties `((upstream-name . "xmpdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-r6 r-purrr r-jsonlite r-datetimeoffset))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://trevorldavis.com/R/xmpdf/dev/")
    (synopsis "Edit 'XMP' Metadata and 'PDF' Bookmarks and Documentation Info")
    (description
     "Edit XMP metadata <https://en.wikipedia.org/wiki/Extensible_Metadata_Platform>
in a variety of media file formats as well as edit bookmarks (aka outline aka
table of contents) and documentation info entries in pdf files.  Can detect and
use a variety of command-line tools to perform these operations such as exiftool
<https://exiftool.org/>, ghostscript <https://www.ghostscript.com/>, and/or
pdftk <https://gitlab.com/pdftk-java/pdftk>.")
    (license license:gpl3+)))

(define-public r-xmlrpc2
  (package
    (name "r-xmlrpc2")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmlrpc2" version))
              (sha256
               (base32
                "13rfw0civp3hzi4hn31x1idliid1qb73495x4c31z5msd35lzxrs"))))
    (properties `((upstream-name . "xmlrpc2")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-curl r-base64enc))
    (home-page "https://cran.r-project.org/package=xmlrpc2")
    (synopsis
     "Implementation of the Remote Procedure Call Protocol ('XML-RPC')")
    (description
     "The XML-RPC is a remote procedure call protocol based on XML'.  The xmlrpc2
package is inspired by the XMLRPC package but uses the curl and xml2 packages
instead RCurl and XML'.")
    (license license:gpl3)))

(define-public r-xmlr
  (package
    (name "r-xmlr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmlr" version))
              (sha256
               (base32
                "00mxdb4899sx5py0ngzh3dvhz1sqsar2hmsrkm4jf0b3q9psc86w"))))
    (properties `((upstream-name . "xmlr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Alipsa/xmlr")
    (synopsis "Read, Write and Work with 'XML' Data")
    (description
     "XML package for creating and reading and manipulating XML', with an object model
based on Reference Classes'.")
    (license license:expat)))

(define-public r-xmlconvert
  (package
    (name "r-xmlconvert")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmlconvert" version))
              (sha256
               (base32
                "0vj5ar61i94if141jzqk7jq091mb2xwzl0x86dj7ddk8y3c1w9dv"))))
    (properties `((upstream-name . "xmlconvert")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-stringr
                             r-readr
                             r-lubridate
                             r-httr))
    (home-page "https://github.com/jsugarelli/xmlconvert/")
    (synopsis
     "Comfortably Converting XML Documents to Dataframes and Vice Versa")
    (description
     "Converts XML documents to R dataframes and dataframes to XML documents.  A wide
variety of options allows for different XML formats and flexible control of the
conversion process.  Results can be exported to CSV and Excel, if desired.  Also
converts XML data to R lists.")
    (license license:gpl3)))

(define-public r-xml2relational
  (package
    (name "r-xml2relational")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xml2relational" version))
              (sha256
               (base32
                "05nykrmwqa43f9h6wpk6m1spmqr22r0ffiki4hp3jsyw8k7i78hv"))))
    (properties `((upstream-name . "xml2relational")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-lubridate
                             r-fs))
    (home-page "https://github.com/jsugarelli/xml2relational/")
    (synopsis "Converting XML Documents into Relational Data Models")
    (description
     "Import an XML document with nested object structures and convert it into a
relational data model.  The result is a set of R dataframes with foreign key
relationships.  The data model and the data can be exported as SQL code of
different SQL flavors.")
    (license license:gpl3)))

(define-public r-xml2r
  (package
    (name "r-xml2r")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XML2R" version))
              (sha256
               (base32
                "0azfh950r2b7ck3n1vzk3mdll7zy844nx3mbk676jxnj8gg7nxk5"))))
    (properties `((upstream-name . "XML2R")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcurl r-plyr))
    (home-page "http://cpsievert.github.com/XML2R")
    (synopsis "EasieR XML data collection")
    (description
     "XML2R is a framework that reduces the effort required to transform XML content
into number of tables while preserving parent to child relationships.")
    (license license:gpl2+)))

(define-public r-xmeta
  (package
    (name "r-xmeta")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xmeta" version))
              (sha256
               (base32
                "1jl83qpf01h7smgpdkbv434gyimxknk423ri0yy09bxr5smbq7ch"))))
    (properties `((upstream-name . "xmeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix
                             r-numderiv
                             r-mvmeta
                             r-metafor
                             r-mass
                             r-glmmml
                             r-aod))
    (home-page "https://github.com/Penncil/xmeta")
    (synopsis "Toolbox for Multivariate Meta-Analysis")
    (description
     "This package provides a toolbox for meta-analysis.  This package includes: 1,a
robust multivariate meta-analysis of continuous or binary outcomes; 2, a
bivariate Egger's test for detecting small study effects; 3, Galaxy Plot: A New
Visualization Tool of Bivariate Meta-Analysis Studies; 4, a bivariate T&F method
accounting for publication bias in bivariate meta-analysis, based on symmetry of
the galaxy plot.  Hong C. et al(2020) <doi:10.1093/aje/kwz286>, Chongliang L. et
al(2020) <doi:10.1101/2020.07.27.20161562>.")
    (license license:gpl2+)))

(define-public r-xlutils3
  (package
    (name "r-xlutils3")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xlutils3" version))
              (sha256
               (base32
                "1cxishi62bd36zlsy5qhzix1p68akdf9kpjg9gfm9aqpcijzccb9"))))
    (properties `((upstream-name . "xlutils3")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-magrittr))
    (home-page "https://cran.r-project.org/package=xlutils3")
    (synopsis "Extract Multiple Excel Files at Once")
    (description
     "Extract Excel files from folder.  Also display extracted data and compute a
summary of it.  Based on the readxl package.")
    (license license:gpl3)))

(define-public r-xlsxjars
  (package
    (name "r-xlsxjars")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xlsxjars" version))
              (sha256
               (base32
                "1rka5smm7yqnhhlblpihhciydfap4i6kjaa4a7isdg7qjmzm3h9p"))))
    (properties `((upstream-name . "xlsxjars")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava))
    (home-page "https://cran.r-project.org/package=xlsxjars")
    (synopsis "Package required POI jars for the xlsx package")
    (description
     "The xlsxjars package collects all the external jars required for the xlxs
package.  This release corresponds to POI 3.10.1.")
    (license license:gpl3)))

(define-public r-xlsx2dfs
  (package
    (name "r-xlsx2dfs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xlsx2dfs" version))
              (sha256
               (base32
                "0bdawr80grks91sy221d33fsk75g20zh3wjg6gvd0zj0m1zvvwvd"))))
    (properties `((upstream-name . "xlsx2dfs")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=xlsx2dfs")
    (synopsis
     "Read and Write 'Excel' Sheets into and from List of Data Frames")
    (description
     "Reading and writing sheets of a single Excel file into and from a list of data
frames.  Eases I/O of tabular data in bioinformatics while keeping them in a
human readable format.")
    (license license:expat)))

(define-public r-xlsx
  (package
    (name "r-xlsx")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xlsx" version))
              (sha256
               (base32
                "01r1ngdm51w18bdan8h94r91m731knkf04zal4g67mx3fpa5x31p"))))
    (properties `((upstream-name . "xlsx")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-xlsxjars r-rjava))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/colearendt/xlsx")
    (synopsis "Read, Write, Format Excel 2007 and Excel 97/2000/XP/2003 Files")
    (description
     "Provide R functions to read/write/format Excel 2007 and Excel 97/2000/XP/2003
file formats.")
    (license license:gpl3)))

(define-public r-xls
  (package
    (name "r-xls")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XLS" version))
              (sha256
               (base32
                "0a4jbfz9x9rn4k5v7qh3r9p7pal4piqg01469237lkq00m3lijy5"))))
    (properties `((upstream-name . "XLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-mpoly))
    (home-page "https://cran.r-project.org/package=XLS")
    (synopsis
     "Modeling Approach that Optimizes Future Errors in Least Squares")
    (description
     "Given the date column as an ascending entry, future errors are included in the
sum of squares of error that should be minimized based on the number of steps
and weights you determine.  Thus, it is prevented that the variables affect each
other's coefficients unrealistically.")
    (license license:gpl3+)))

(define-public r-xllim
  (package
    (name "r-xllim")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xLLiM" version))
              (sha256
               (base32
                "0gmy3jy1nf0fixgwcgfhrwcd85ran5ic7srzcx46akad828a4znq"))))
    (properties `((upstream-name . "xLLiM")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest
                             r-progress
                             r-mda
                             r-matrix
                             r-mass
                             r-igraph
                             r-glmnet
                             r-e1071
                             r-corpcor
                             r-capushe
                             r-abind))
    (home-page "https://cran.r-project.org/package=xLLiM")
    (synopsis "High Dimensional Locally-Linear Mapping")
    (description
     "This package provides a tool for non linear mapping (non linear regression)
using a mixture of regression model and an inverse regression strategy.  The
methods include the GLLiM model (see Deleforge et al (2015)
<DOI:10.1007/s11222-014-9461-5>) based on Gaussian mixtures and a robust version
of GLLiM, named SLLiM (see Perthame et al (2016)
<https://hal.archives-ouvertes.fr/hal-01347455>) based on a mixture of
Generalized Student distributions.  The methods also include BLLiM (see Devijver
et al (2017) <arXiv:1701.07899>) which is an extension of GLLiM with a sparse
block diagonal structure for large covariance matrices (particularly interesting
for transcriptomic data).")
    (license license:gpl2+)))

(define-public r-xlink
  (package
    (name "r-xlink")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xlink" version))
              (sha256
               (base32
                "02ahgjampy92gcwhv269px5w8651a7j50dn1295zwqxj44lk4g9q"))))
    (properties `((upstream-name . "xlink")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/qiuanzhu/xlink")
    (synopsis
     "Genetic Association Models for X-Chromosome SNPS on Continuous, Binary and Survival Outcomes")
    (description
     "The expression of X-chromosome undergoes three possible biological processes:
X-chromosome inactivation (XCI), escape of the X-chromosome inactivation
(XCI-E),and skewed X-chromosome inactivation (XCI-S).  To analyze the X-linked
genetic association for phenotype such as continuous, binary, and time-to-event
outcomes with the actual process unknown, we propose a unified approach of
maximizing the likelihood or partial likelihood over all of the potential
biological processes.  The methods are described in Wei Xu, Meiling Hao (2017)
<doi:10.1002/gepi.22097>.  And also see Dongxiao Han, Meiling Hao, Lianqiang Qu,
Wei Xu (2019) <doi:10.1177/0962280219859037>.")
    (license license:gpl2)))

(define-public r-xlconnect
  (package
    (name "r-xlconnect")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XLConnect" version))
              (sha256
               (base32
                "0xz65nrp82cxa77bff66hhch1p75a6di29bmbr2lfc9w3hivl7c2"))))
    (properties `((upstream-name . "XLConnect")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (home-page "https://cran.r-project.org/package=XLConnect")
    (synopsis "Excel Connector for R")
    (description
     "This package provides comprehensive functionality to read, write and format
Excel data.")
    (license license:gpl3)))

(define-public r-xkcddata
  (package
    (name "r-xkcddata")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XKCDdata" version))
              (sha256
               (base32
                "1lx9frlbc549qrh4d3m79r3l9icfzqkgfgp8raa8x46a2havi0a5"))))
    (properties `((upstream-name . "XKCDdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-glue
                             r-dplyr
                             r-assertthat))
    (home-page "https://cran.r-project.org/package=XKCDdata")
    (synopsis "Get XKCD Comic Data")
    (description
     "Download data from individual XKCD comics, written by Randall Munroe
<https://xkcd.com/>.")
    (license license:expat)))

(define-public r-xkcdcolors
  (package
    (name "r-xkcdcolors")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xkcdcolors" version))
              (sha256
               (base32
                "07fnjv01r3b951dqca2zs9b9f6hsgbpbpsrggvb8rps53kpid0i7"))))
    (properties `((upstream-name . "xkcdcolors")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (home-page "https://cran.r-project.org/package=xkcdcolors")
    (synopsis "Color Names from the XKCD Color Survey")
    (description
     "The XKCD color survey asked participants to name colours.  Randall Munroe
published the top thousand(roughly) names and their sRGB hex values.  This
package lets you use them.")
    (license license:expat)))

(define-public r-ximple
  (package
    (name "r-ximple")
    (version "0.11-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XiMpLe" version))
              (sha256
               (base32
                "1i75c4jp8yklbqhc2wkhpxnv97kz2sdndzdcyrhjvr87wgr7dffh"))))
    (properties `((upstream-name . "XiMpLe")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://reaktanz.de/?c=hacking&s=XiMpLe")
    (synopsis "Simple XML Tree Parser and Generator")
    (description
     "This package provides a simple XML tree parser/generator.  It includes functions
to read XML files into R objects, get information out of and into nodes, and
write R objects back to XML code.  It's not as powerful as the XML package and
doesn't aim to be, but for simple XML handling it could be useful.  It was
originally developed for the R GUI and IDE RKWard <https://rkward.kde.org>, to
make plugin development easier.")
    (license license:gpl3+)))

(define-public r-xicor
  (package
    (name "r-xicor")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XICOR" version))
              (sha256
               (base32
                "0c9s0sriiasbdanmijgy41gvpwf8hlqy34avalvimyll7y206v1r"))))
    (properties `((upstream-name . "XICOR")))
    (build-system r-build-system)
    (propagated-inputs (list r-psychtools))
    (home-page "https://cran.r-project.org/package=XICOR")
    (synopsis "Association Measurement Through Cross Rank Increments")
    (description
     "Computes robust association measures that do not presuppose linearity.  The xi
correlation (xicor) is based on cross correlation between ranked increments.
The reference for the methods implemented here is Chatterjee, Sourav (2020)
<arXiv:1909.10140> This package includes the Galton peas example.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-xhaz
  (package
    (name "r-xhaz")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xhaz" version))
              (sha256
               (base32
                "1kipqscniyb4s7p29pdkg8hg95wb78jpnax8qh058vzrk5vqz181"))))
    (properties `((upstream-name . "xhaz")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-survexp-fr
                             r-stringr
                             r-statmod
                             r-optimparallel
                             r-numderiv
                             r-gtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=xhaz")
    (synopsis
     "Excess Hazard Modelling Considering Inappropriate Mortality Rates")
    (description
     "Fits relative survival regression models with or without proportional excess
hazards and with the additional possibility to correct for background mortality
by one or more parameter(s).  These models are relevant when the observed
mortality in the studied group is not comparable to that of the general
population or in population-based studies where the available life tables used
for net survival estimation are insufficiently stratified.  In the latter case,
the proposed model by Touraine et al. (2020) <doi:10.1177/0962280218823234> can
be used.  The user can also fit a model that relax the proportional expected
hazards assumption considered in the Touraine et al.  excess hazard model.  This
extension was proposed by Mba et al. (2020) <doi:10.1186/s12874-020-01139-z> to
allow non-proportional effects of the additional variable on the general
population mortality.  In non-population-based studies, researchers can identify
non-comparability source of bias in terms of expected mortality of selected
individuals.  A proposed excess hazard model correcting this selection bias is
presented in Goungounga et al. (2019) <doi:10.1186/s12874-019-0747-3>.")
    (license license:agpl3+)))

(define-public r-xgxr
  (package
    (name "r-xgxr")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xgxr" version))
              (sha256
               (base32
                "0mmnh6zab7qllbfpl3vn5sd7hcznm83v5rxi1pw5zv96ax0ikagv"))))
    (properties `((upstream-name . "xgxr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-scales
                             r-readr
                             r-rcurl
                             r-png
                             r-pander
                             r-minpack-lm
                             r-magrittr
                             r-labeling
                             r-hmisc
                             r-gtable
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-desctools
                             r-deriv
                             r-binom
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://opensource.nibr.com/xgx/")
    (synopsis "Exploratory Graphics for Pharmacometrics")
    (description
     "Supports a structured approach for exploring PKPD data
<https://opensource.nibr.com/xgx/>.  It also contains helper functions for
enabling the modeler to follow best R practices (by appending the program name,
figure name location, and draft status to each plot).  In addition, it enables
the modeler to follow best graphical practices (by providing a theme that
reduces chart ink, and by providing time-scale, log-scale, and
reverse-log-transform-scale functions for more readable axes).  Finally, it
provides some data checking and summarizing functions for rapidly exploring
pharmacokinetics and pharmacodynamics (PKPD) datasets.")
    (license license:expat)))

(define-public r-xgb2sql
  (package
    (name "r-xgb2sql")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xgb2sql" version))
              (sha256
               (base32
                "1gw5dw0ck5hip8mv347zaswrggk395bg2hgn02bvqs0d31jhmgvi"))))
    (properties `((upstream-name . "xgb2sql")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chengjunhou/xgb2sql")
    (synopsis "Convert Trained 'XGBoost' Model to SQL Query")
    (description
     "This tool enables in-database scoring of XGBoost models built in R, by
translating trained model objects into SQL query.  XGBoost
<https://xgboost.readthedocs.io/en/latest/index.html> provides parallel tree
boosting (also known as gradient boosting machine, or GBM) algorithms in a
highly efficient, flexible and portable way.  GBM algorithm is introduced by
Friedman (2001) <doi:10.1214/aos/1013203451>, and more details on XGBoost can be
found in Chen & Guestrin (2016) <doi:10.1145/2939672.2939785>.")
    (license license:expat)))

(define-public r-xesreadr
  (package
    (name "r-xesreadr")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xesreadR" version))
              (sha256
               (base32
                "1pvdx0mxg2f885bhy4hb3kqzcgva4q7hzzaipkfzyi5lnjdsbc81"))))
    (properties `((upstream-name . "xesreadR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-tidyr
                             r-stringr
                             r-purrr
                             r-lubridate
                             r-dplyr
                             r-data-table
                             r-bupar))
    (native-inputs (list r-knitr))
    (home-page "http://www.bupar.net")
    (synopsis "Read and Write XES Files")
    (description
     "Read and write XES Files to create event log objects used by the bupaR
framework.  XES (Extensible Event Stream) is the `IEEE` standard for storing and
sharing event data (see
<http://standards.ieee.org/findstds/standard/1849-2016.html> for more info).")
    (license license:expat)))

(define-public r-xergm-common
  (package
    (name "r-xergm-common")
    (version "1.7.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xergm.common" version))
              (sha256
               (base32
                "03mjpafwfkmyj5ba84jydap9rp0i602izjlbd511xbxcw6dx2k0b"))))
    (properties `((upstream-name . "xergm.common")))
    (build-system r-build-system)
    (propagated-inputs (list r-network r-ergm))
    (home-page "http://github.com/leifeld/xergm.common")
    (synopsis
     "Common Infrastructure for Extensions of Exponential Random Graph Models")
    (description
     "Datasets and definitions of generic functions used in dependencies of the xergm
package.")
    (license license:gpl2+)))

(define-public r-xefun
  (package
    (name "r-xefun")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xefun" version))
              (sha256
               (base32
                "18bps0a1qrcz8a6zvy4vpxklyh507pmsfky2jphfb9f58ccdkmih"))))
    (properties `((upstream-name . "xefun")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/ShichenXie/xefun")
    (synopsis "X-Engineering or Supporting Functions")
    (description
     "Miscellaneous functions used for x-engineering (feature engineering) or for
supporting in other packages maintained by Shichen Xie'.")
    (license license:expat)))

(define-public r-xdcclarge
  (package
    (name "r-xdcclarge")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xdcclarge" version))
              (sha256
               (base32
                "1j8wsidwmfjygqlwavxinv4bqc6rddy42jdmlknsjfrrs49yj8kn"))))
    (properties `((upstream-name . "xdcclarge")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-nlshrink))
    (home-page "https://cran.r-project.org/package=xdcclarge")
    (synopsis "Estimating a (c)DCC-GARCH Model in Large Dimensions")
    (description
     "This package provides functions for Estimating a (c)DCC-GARCH Model in large
dimensions based on a publication by Engle et,al (2017)
<doi:10.1080/07350015.2017.1345683> and Nakagawa et,al (2018)
<doi:10.3390/ijfs6020052>.  This estimation method is consist of composite
likelihood method by Pakel et al. (2014)
<http://paneldataconference2015.ceu.hu/Program/Cavit-Pakel.pdf> and (Non-)linear
shrinkage estimation of covariance matrices by Ledoit and Wolf (2004,2015,2016).
(<doi:10.1016/S0047-259X(03)00096-4>, <doi:10.1214/12-AOS989>,
<doi:10.1016/j.jmva.2015.04.006>).")
    (license license:gpl2+)))

(define-public r-xbrl
  (package
    (name "r-xbrl")
    (version "0.99.19.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "XBRL" version))
              (sha256
               (base32
                "0mwpk84kp6r7f6fmlby0ka58fj50y592afxzp0wcrzmx65abp7md"))))
    (properties `((upstream-name . "XBRL")))
    (build-system r-build-system)
    (inputs (list libxml2 libxml2))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=XBRL")
    (synopsis
     "Extraction of Business Financial Information from 'XBRL' Documents")
    (description
     "This package provides functions to extract business financial information from
an Extensible Business Reporting Language ('XBRL') instance file and the
associated collection of files that defines its Discoverable Taxonomy Set
('DTS').")
    (license license:gpl2+)))

(define-public r-xbreed
  (package
    (name "r-xbreed")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xbreed" version))
              (sha256
               (base32
                "032i04ginyf9dyabfkygnhrkq7lqdvvyw7s41vjimy2kvjrnkkkx"))))
    (properties `((upstream-name . "xbreed")))
    (build-system r-build-system)
    (propagated-inputs (list r-bglr))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=xbreed")
    (synopsis "Genomic Simulation of Purebred and Crossbred Populations")
    (description
     "Simulation of purebred and crossbred genomic data as well as pedigree and
phenotypes are possible by this package.  xbreed can be used for the simulation
of populations with flexible genome structures and trait genetic architectures.
It can also be used to evaluate breeding schemes and generate genetic data to
test statistical tools.")
    (license license:gpl3)))

(define-public r-xaringanthemer
  (package
    (name "r-xaringanthemer")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xaringanthemer" version))
              (sha256
               (base32
                "074lq9m61647ac7crjmpf8qjj4l60ps0ic4c4b83g47drar79v2z"))))
    (properties `((upstream-name . "xaringanthemer")))
    (build-system r-build-system)
    (propagated-inputs (list r-whisker r-purrr r-glue r-colorspace))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://pkg.garrickadenbuie.com/xaringanthemer/")
    (synopsis "Custom 'xaringan' CSS Themes")
    (description
     "Create beautifully color-coordinated and customized themes for your xaringan
slides, without writing any CSS. Complete your slide theme with ggplot2 themes
that match the font and colors used in your slides.  Customized styles can be
created directly in your slides R Markdown source file or in a separate external
script.")
    (license license:expat)))

(define-public r-xaringanextra
  (package
    (name "r-xaringanextra")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xaringanExtra" version))
              (sha256
               (base32
                "1snj4yf5mxn419d3qbm2pixj7gvhmf133sxvjbirjrr3ib6iyn84"))))
    (properties `((upstream-name . "xaringanExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-knitr r-jsonlite r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://pkg.garrickadenbuie.com/xaringanExtra/")
    (synopsis "Extras and Extensions for 'xaringan' Slides")
    (description
     "Extras and extensions for xaringan slides.  Navigate your slides with tile view.
 Make your slides editable, live! Announce slide changes with subtle tones.
Animate slide transitions with animate.css'.  Add tabbed panels to slides with
panelset'.  Use the Tachyons CSS utility toolkit for rapid slide development.
Scribble on your slides.  Add a copy button to your code chunks with clipboard'.
 Add a logo or top or bottom banner to every slide.  Broadcast slides to stay in
sync with remote viewers.  Include yourself in your slides with webcam'.  Plus a
whole lot more!")
    (license license:expat)))

(define-public r-xaringan
  (package
    (name "r-xaringan")
    (version "0.28")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xaringan" version))
              (sha256
               (base32
                "1cv1bplk4awzqr5dwmndf4ig75a3bwvx8lfbyv0q0nxzd759d3za"))))
    (properties `((upstream-name . "xaringan")))
    (build-system r-build-system)
    (propagated-inputs (list r-xfun r-servr r-rmarkdown r-knitr r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yihui/xaringan")
    (synopsis "Presentation Ninja")
    (description
     "Create HTML5 slides with R Markdown and the JavaScript library remark.js
(<https://remarkjs.com>).")
    (license license:expat)))

(define-public r-xadmix
  (package
    (name "r-xadmix")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "xadmix" version))
              (sha256
               (base32
                "0vrk40q9nn40aisvgj3pq9q6z5kb68j614wpg7bx98fx3gqnxzxv"))))
    (properties `((upstream-name . "xadmix")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-magrittr
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SpaceCowboy-71/xadmix")
    (synopsis "Subsetting and Plotting Optimized for Admixture Data")
    (description
     "This package provides a few functions which provide a quick way of subsetting
genomic admixture data and generating customizable stacked barplots.")
    (license license:gpl3+)))

(define-public r-x3ptools
  (package
    (name "r-x3ptools")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "x3ptools" version))
              (sha256
               (base32
                "04j40nkwlsaga6kp60rf1grk76dw2i1sqivfm2sj017n0v6mj017"))))
    (properties `((upstream-name . "x3ptools")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xml2
                             r-rgl
                             r-readr
                             r-pracma
                             r-png
                             r-mass
                             r-dplyr
                             r-digest
                             r-assertthat))
    (home-page "https://github.com/heike/x3ptools")
    (synopsis "Tools for Working with 3D Surface Measurements")
    (description
     "The x3p file format is specified in ISO standard 5436:2000 to describe 3d
surface measurements.  x3ptools allows reading, writing and basic modifications
to the 3D surface measurements.")
    (license license:expat)))

(define-public r-x13binary
  (package
    (name "r-x13binary")
    (version "1.1.57-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "x13binary" version))
              (sha256
               (base32
                "0sp0mwjxpaxlhfv94zb8n9grsq9ssp308c55q8ipkxn116d58ldm"))))
    (properties `((upstream-name . "x13binary")))
    (build-system r-build-system)
    (home-page "https://github.com/x13org/x13binary")
    (synopsis "Provide the 'x13ashtml' Seasonal Adjustment Binary")
    (description
     "The US Census Bureau provides a seasonal adjustment program now called
X-13ARIMA-SEATS building on both earlier programs called X-11 and X-12 as well
as the SEATS program by the Bank of Spain.  The US Census Bureau offers both
source and binary versions -- which this package integrates for use by other R
packages.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-x12
  (package
    (name "r-x12")
    (version "1.10.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "x12" version))
              (sha256
               (base32
                "0f0bbnnv4wbrx6c90rg8s284mh8i3mfcfpbwscv0xviaa7fvlsm6"))))
    (properties `((upstream-name . "x12")))
    (build-system r-build-system)
    (propagated-inputs (list r-x13binary r-stringr))
    (home-page "https://github.com/statistikat/x12")
    (synopsis
     "Interface to 'X12-ARIMA'/'X13-ARIMA-SEATS' and Structure for Batch Processing of Seasonal Adjustment")
    (description
     "The X13-ARIMA-SEATS <https://www.census.gov/data/software/x13as.html>
methodology and software is a widely used software and developed by the US
Census Bureau.  It can be accessed from R with this package and X13-ARIMA-SEATS
binaries are provided by the R package x13binary'.")
    (license license:gpl2+)))

(define-public r-x-ent
  (package
    (name "r-x-ent")
    (version "1.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "x.ent" version))
              (sha256
               (base32
                "15qra77dqhj27g3qx92gram4mq4n9fdidygdpvxfmcx7ww3vc6yh"))))
    (properties `((upstream-name . "x.ent")))
    (build-system r-build-system)
    (inputs (list perl))
    (propagated-inputs (list r-xtable r-stringr r-statmod r-jsonlite r-ggplot2))
    (home-page "https://github.com/win-stub/x.ent")
    (synopsis "eXtraction of ENTity")
    (description
     "This package provides a tool for extracting information (entities and relations
between them) in text datasets.  It also emphasizes the results exploration with
graphical displays.  It is a rule-based system and works with hand-made
dictionaries and local grammars defined by users.  x.ent uses parsing with Perl
functions and JavaScript to define user preferences through a browser and R to
display and support analysis of the results extracted.  Local grammars are
defined and compiled with the tool Unitex, a tool developed by University Paris
Est that supports multiple languages.  See ?xconfig for an introduction.")
    (license license:gpl3)))

