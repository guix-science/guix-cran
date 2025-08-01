(define-module (guix-cran packages q)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages web)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages java)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages v)
  #:use-module (guix-cran packages u)
  #:use-module (guix-cran packages t)
  #:use-module (guix-cran packages s)
  #:use-module (guix-cran packages r)
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

(define-public r-qz
  (package
    (name "r-qz")
    (version "0.2-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QZ" version))
       (sha256
        (base32 "1czsppcd2b81ylx1spzmphv6fdi9k17wbszvw9nsdkdqq1vbl4q7"))))
    (properties `((upstream-name . "QZ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=QZ")
    (synopsis "Generalized Eigenvalues and QZ Decomposition")
    (description
     "Generalized eigenvalues and eigenvectors use QZ decomposition (generalized Schur
decomposition).  The decomposition needs an N-by-N non-symmetric matrix A or
paired matrices (A,B) with eigenvalues reordering mechanism.  The decomposition
functions are mainly based Fortran subroutines in complex*16 and double
precision of LAPACK library (version 3.10.0 or later).")
    (license (license:fsdg-compatible "Mozilla Public License 2.0"))))

(define-public r-qwraps2
  (package
    (name "r-qwraps2")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qwraps2" version))
       (sha256
        (base32 "1zv3yg5b32irh3paz2qwwhj2cn3a9laqi4d5gwlk8qmjiacxq6bh"))))
    (properties `((upstream-name . "qwraps2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xfun r-rcpparmadillo r-rcpp r-knitr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dewittpe/qwraps2/")
    (synopsis "Quick Wraps 2")
    (description
     "This package provides a collection of (wrapper) functions the creator found
useful for quickly placing data summaries and formatted regression results into
.Rnw or .Rmd files.  Functions for generating commonly used graphics, such as
receiver operating curves or Bland-Altman plots, are also provided by qwraps2'.
qwraps2 is a updated version of a package qwraps'.  The original version qwraps
was never submitted to CRAN but can be found at
<https://github.com/dewittpe/qwraps/>.  The implementation and limited scope of
the functions within qwraps2 <https://github.com/dewittpe/qwraps2/> is
fundamentally different from qwraps'.")
    (license license:gpl3+)))

(define-public r-qwdap
  (package
    (name "r-qwdap")
    (version "1.1.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QWDAP" version))
       (sha256
        (base32 "1rqbj4m90x1cg32hjzck4gmpvfmz28pgqk83vr527bvhaxbr4vmb"))))
    (properties `((upstream-name . "QWDAP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp r-pls r-corelearn))
    (home-page "https://cran.r-project.org/package=QWDAP")
    (synopsis "Quantum Walk-Based Data Analysis and Prediction")
    (description
     "The modeling and prediction of graph-associated time series(GATS) based on
continuous time quantum walk.  This software is mainly used for feature
extraction, modeling, prediction and result evaluation of GATS, including
continuous time quantum walk simulation, feature selection, regression analysis,
time series prediction, and series fit calculation.  A paper is attached to the
package for reference.")
    (license license:gpl2)))

(define-public r-qwalkr
  (package
    (name "r-qwalkr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qwalkr" version))
       (sha256
        (base32 "0mxzx782lvdrm0hx0v6xgzvw3r9zlfp9bz1vss2l59fgdqlhavn4"))))
    (properties `((upstream-name . "qwalkr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lifecycle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vitormarquesr/qwalkr")
    (synopsis "Handle Continuous-Time Quantum Walks with R")
    (description
     "This package provides functions and tools for creating, visualizing, and
investigating properties of continuous-time quantum walks, including efficient
calculation of matrices such as the mixing matrix, average mixing matrix, and
spectral decomposition of the Hamiltonian.  E. Farhi (1997):
<@code{arXiv:quant-ph/9706062v2>}; C. Godsil (2011) <@code{arXiv:1103.2578v3>}.")
    (license license:expat)))

(define-public r-qvirus
  (package
    (name "r-qvirus")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qvirus" version))
       (sha256
        (base32 "1318pcp897nxazshp4marj8mkf62jf9r2879zqcbcjagm668gqjn"))))
    (properties `((upstream-name . "qvirus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=qvirus")
    (synopsis
     "Quantum Computing for Analyzing CD4 Lymphocytes and Antiretroviral Therapy")
    (description
     "Resources, tutorials, and code snippets dedicated to exploring the intersection
of quantum computing and artificial intelligence (AI) in the context of
analyzing Cluster of Differentiation 4 (CD4) lymphocytes and optimizing
antiretroviral therapy (ART) for human immunodeficiency virus (HIV).  With the
emergence of quantum artificial intelligence and the development of small-scale
quantum computers, there's an unprecedented opportunity to revolutionize the
understanding of HIV dynamics and treatment strategies.  This project leverages
the R package @code{qsimulatR} (Ostmeyer and Urbach, 2023,
<https://CRAN.R-project.org/package=@code{qsimulatR>}), a quantum computer
simulator, to explore these applications in quantum computing techniques,
addressing the challenges in studying CD4 lymphocytes and enhancing ART
efficacy.")
    (license license:expat)))

(define-public r-qvcalc
  (package
    (name "r-qvcalc")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qvcalc" version))
       (sha256
        (base32 "0ngvv9jr2q92cdd38x08nm81hwhcnbx9gwv7s2xsd0kflnnkqh4h"))))
    (properties `((upstream-name . "qvcalc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://davidfirth.github.io/qvcalc/")
    (synopsis "Quasi Variances for Factor Effects in Statistical Models")
    (description
     "This package provides functions to compute quasi variances and associated
measures of approximation error.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-qvarsel
  (package
    (name "r-qvarsel")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qVarSel" version))
       (sha256
        (base32 "0nmmrj8vwldk4n07q1dq3aym6a7pl8vadrf41kqc4kw9hkcawbcb"))))
    (properties `((upstream-name . "qVarSel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-lpsolveapi))
    (home-page "https://cran.r-project.org/package=qVarSel")
    (synopsis "Select Variables for Optimal Clustering")
    (description
     "Finding hidden clusters in structured data can be hindered by the presence of
masking variables.  If not detected, masking variables are used to calculate the
overall similarities between units, and therefore the cluster attribution is
more imprecise.  The algorithm q-vars implements an optimization method to find
the variables that most separate units between clusters.  In this way, masking
variables can be discarded from the data frame and the clustering is more
accurate.  Tests can be found in Benati et al.(2017)
<doi:10.1080/01605682.2017.1398206>.")
    (license license:gpl2+)))

(define-public r-qval
  (package
    (name "r-qval")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qval" version))
       (sha256
        (base32 "1kcd5sn49rmpzyvk8iqdz7cbxn36z9m5007dlrvfi53cjc4j4ljs"))))
    (properties `((upstream-name . "Qval")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp
                             r-plyr
                             r-nloptr
                             r-matrix
                             r-mass
                             r-glmnet
                             r-gdina))
    (home-page "https://haijiangqin.com/Qval/")
    (synopsis "The Q-Matrix Validation Methods Framework")
    (description
     "Provide a variety of Q-matrix validation methods for the generalized cognitive
diagnosis models, including the method based on the generalized deterministic
input, noisy, and gate model (G-DINA) by de la Torre (2011)
<DOI:10.1007/s11336-011-9207-7> discrimination index (the GDI method) by de la
Torre and Chiu (2016) <DOI:10.1007/s11336-015-9467-8>, the Hull method by Najera
et al. (2021) <DOI:10.1111/bmsp.12228>, the stepwise Wald test method (the Wald
method) by Ma and de la Torre (2020) <DOI:10.1111/bmsp.12156>, the multiple
logistic regressionâbased Qâmatrix validation method (the MLR-B method) by
Tu et al. (2022) <DOI:10.3758/s13428-022-01880-x>, the beta method based on
signal detection theory by Li and Chen (2024) <DOI:10.1111/bmsp.12371> and
Q-matrix validation based on relative fit index by Chen et al. (2013)
<DOI:10.1111/j.1745-3984.2012.00185.x>.  Different research methods and
iterative procedures during Q-matrix validating are available
<DOI:10.3758/s13428-024-02547-5>.")
    (license license:gpl3)))

(define-public r-qurve
  (package
    (name "r-qurve")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QurvE" version))
       (sha256
        (base32 "0md97jgyl7lkq46zsl6svgdhyg95is92f8yn5szkaylfdb2cglg3"))))
    (properties `((upstream-name . "QurvE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shiny
                             r-scales
                             r-rmarkdown
                             r-readxl
                             r-rcolorbrewer
                             r-purrr
                             r-plyr
                             r-minpack-lm
                             r-magrittr
                             r-labeling
                             r-knitr
                             r-kableextra
                             r-ggpubr
                             r-ggplot2
                             r-ggnewscale
                             r-ggh4x
                             r-foreach
                             r-dt
                             r-drc
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NicWir/QurvE")
    (synopsis
     "Robust and User-Friendly Analysis of Growth and Fluorescence Curves")
    (description
     "High-throughput analysis of growth curves and fluorescence data using three
methods: linear regression, growth model fitting, and smooth spline fit.
Analysis of dose-response relationships via smoothing splines or dose-response
models.  Complete data analysis workflows can be executed in a single step via
user-friendly wrapper functions.  The results of these workflows are summarized
in detailed reports as well as intuitively navigable R data containers.  A shiny
application provides access to all features without requiring any programming
knowledge.  The package is described in further detail in Wirth et al. (2023)
<doi:10.1038/s41596-023-00850-7>.")
    (license license:gpl3+)))

(define-public r-quran
  (package
    (name "r-quran")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quRan" version))
       (sha256
        (base32 "108d797l9ggggc5b61pl7f6avzknmnnib2ys5vrg385zfbx9srvw"))))
    (properties `((upstream-name . "quRan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/andrewheiss/quRan")
    (synopsis "Complete Text of the Qur'an")
    (description
     "Full text, in data frames containing one row per verse, of the Qur'an in Arabic
(with and without vowels) and in English (the Yusuf Ali and Saheeh International
translations), formatted to be convenient for text analysis.")
    (license license:expat)))

(define-public r-quotedargs
  (package
    (name "r-quotedargs")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quotedargs" version))
       (sha256
        (base32 "11cswg9bmddsl1axxcdz11flq46p1zkpv022526f2vgl4qsprwbm"))))
    (properties `((upstream-name . "quotedargs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=quotedargs")
    (synopsis "Way of Writing Functions that Quote their Arguments")
    (description
     "This package provides a facility for writing functions that quote their
arguments, may sometimes evaluate them in the environment where they were
quoted, and may pass them as quoted to other functions.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-quoradsr
  (package
    (name "r-quoradsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quoradsR" version))
       (sha256
        (base32 "1gdb5zvi7hs2mpzv07w1mbm9w4ksidbz28mjb6w20bfpy6casfz5"))))
    (properties `((upstream-name . "quoradsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get 'Quora' Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Quora Ads using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-quollr
  (package
    (name "r-quollr")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quollr" version))
       (sha256
        (base32 "0kfdf029j6r104bavjiq4k5h21fxdb4hy8x87ikv4x3plklv29dz"))))
    (properties `((upstream-name . "quollr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-proxy
                             r-plotly
                             r-patchwork
                             r-langevitour
                             r-interp
                             r-htmltools
                             r-ggplot2
                             r-dplyr
                             r-crosstalk
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://jayanilakshika.github.io/quollr/")
    (synopsis "Visualising How Nonlinear Dimension Reduction Warps Your Data")
    (description
     "To construct a model in 2-D space from 2-D nonlinear dimension reduction data
and then lift it to the high-dimensional space.  Additionally, provides tools to
visualise the model overlay the data in 2-D and high-dimensional space.
Furthermore, provides summaries and diagnostics to evaluate the nonlinear
dimension reduction layout.")
    (license license:expat)))

(define-public r-quitefastmst
  (package
    (name "r-quitefastmst")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quitefastmst" version))
       (sha256
        (base32 "1lyy6m1hvbf2a0wqsga7m7k6vjg0q6cwf6xlikxrksj2z4bdalm2"))))
    (properties `((upstream-name . "quitefastmst")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-rcpp))
    (home-page "https://quitefastmst.gagolewski.com/")
    (synopsis "Euclidean and Mutual Reachability Minimum Spanning Trees")
    (description
     "This package provides functions to compute Euclidean minimum spanning trees
using single-, sesqui-, and dual-tree Boruvka algorithms.  Thanks to K-d trees,
they are fast in spaces of low intrinsic dimensionality.  Mutual reachability
distances (used in the definition of the HDBSCAN* algorithm) are also supported.
 The package also features relatively fast fallback minimum spanning tree and
nearest-neighbours algorithms for spaces of higher dimensionality.  The Python
version of quitefastmst is available via @code{PyPI}'.")
    (license license:agpl3)))

(define-public r-quint
  (package
    (name "r-quint")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quint" version))
       (sha256
        (base32 "1fmzdnikskq8f70h6bh5ig5s6d227bzd6q93n2c05ymj1m5s9ban"))))
    (properties `((upstream-name . "quint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-partykit r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=quint")
    (synopsis "Qualitative Interaction Trees")
    (description
     "Grows a qualitative interaction tree.  Quint is a tool for subgroup analysis,
suitable for data from a two-arm randomized controlled trial.  More information
in Dusseldorp, E., Doove, L., & Van Mechelen, I. (2016)
<doi:10.3758/s13428-015-0594-z>.")
    (license license:gpl3+)))

(define-public r-quincunx
  (package
    (name "r-quincunx")
    (version "0.1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quincunx" version))
       (sha256
        (base32 "10qnp8avx09zhzzn64g2gbp4sl3jbxz569q4fhkf8d4ia3qhihm2"))))
    (properties `((upstream-name . "quincunx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexl
                             r-vroom
                             r-tidyr
                             r-tidyjson
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-progress
                             r-memoise
                             r-lubridate
                             r-httr
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/ramiromagno/quincunx")
    (synopsis "REST API Client for the 'PGS' Catalog")
    (description
     "Programmatic access to the PGS Catalog.  This package provides easy access to
PGS Catalog data by accessing the REST API <https://www.pgscatalog.org/rest/>.")
    (license license:expat)))

(define-public r-quiltr
  (package
    (name "r-quiltr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quiltr" version))
       (sha256
        (base32 "1my36y9kf52jm6w923qmffi3809d0xcc68sm5ngvfacszn665k23"))))
    (properties `((upstream-name . "quiltr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=quiltr")
    (synopsis "Qualtrics for Labelling Text using R")
    (description
     "This package provides functions to convert text data for labelling into format
appropriate for importing into Qualtrics.  Supports multiple language, including
right-to-left scripts as well as different response types.  Outputs an Advance
Format .txt file that read into Qualtrics.")
    (license license:expat)))

(define-public r-quietr
  (package
    (name "r-quietr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quietR" version))
       (sha256
        (base32 "1f923dllhchgf49bp2d9186v3cxzdya6i56ww6cj0n0mh8gfi27z"))))
    (properties `((upstream-name . "quietR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/thomascjohnson/quietR")
    (synopsis "Simplify Output Verbosity")
    (description
     "Simplifies output suppression logic in R packages, as it's common to develop
some form of it in R. @code{quietR} intends to simplify that problem and allow a
set of simple toggle functions to be used to suppress console output.")
    (license license:expat)))

(define-public r-quiddich
  (package
    (name "r-quiddich")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quiddich" version))
       (sha256
        (base32 "10kiyn1all58klyygmz6zw0w9nfl9vq19qybmkqh410rd5ryjz3p"))))
    (properties `((upstream-name . "quiddich")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ape))
    (home-page "https://cran.r-project.org/package=quiddich")
    (synopsis "QUick IDentification of DIagnostic CHaracters")
    (description
     "This package provides tools for an automated identification of diagnostic
molecular characters, i.e.  such columns in a given nucleotide or amino acid
alignment that allow to distinguish taxa from each other.  These characters can
then be used to complement the formal descriptions of the taxa, which are often
based on morphological and anatomical features.  Especially for morphologically
cryptic species, this will be helpful.  QUIDDICH distinguishes between four
different types of diagnostic characters.  For more information, see \"Kuehn,
A.L., Haase, M. 2019.  QUIDDICH: QUick IDentification of DIagnostic
CHaracters.\".")
    (license license:gpl3)))

(define-public r-quid
  (package
    (name "r-quid")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quid" version))
       (sha256
        (base32 "10qfby1w3q3z0vwqk3nnxxlf62cr5v60ipagx0wb79vanl318pp0"))))
    (properties `((upstream-name . "quid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-mcmcpack
                             r-matrix
                             r-magrittr
                             r-janitor
                             r-ggplot2
                             r-ellipsis
                             r-dplyr
                             r-checkmate
                             r-bayesfactor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=quid")
    (synopsis "Bayesian Mixed Models for Qualitative Individual Differences")
    (description
     "Test whether equality and order constraints hold for all individuals
simultaneously by comparing Bayesian mixed models through Bayes factors.  A
tutorial style vignette and a quickstart guide are available, via
vignette(\"manual\", \"quid\"), and vignette(\"quickstart\", \"quid\") respectively.
See Haaf and Rouder (2017) <doi:10.1037/met0000156>; Haaf, Klaassen and Rouder
(2019) <doi:10.31234/osf.io/a4xu9>; and Rouder & Haaf (2021)
<doi:10.5334/joc.131>.")
    (license license:gpl3)))

(define-public r-quicseedr
  (package
    (name "r-quicseedr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuICSeedR" version))
       (sha256
        (base32 "0ajl92rsp8kikpvslsg72g3jbnjhq8khmsirlr947mdzx7mab7fj"))))
    (properties `((upstream-name . "QuICSeedR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrs2
                             r-tidyselect
                             r-tidyr
                             r-rlang
                             r-readxl
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=QuICSeedR")
    (synopsis
     "Analyze Data for Fluorophore-Assisted Seed Amplification Assays")
    (description
     "This package provides a toolkit for analysis and visualization of data from
fluorophore-assisted seed amplification assays, such as Real-Time
Quaking-Induced Conversion (RT-@code{QuIC}) and Fluorophore-Assisted Protein
Misfolding Cyclic Amplification (PMCA). @code{QuICSeedR} addresses limitations
in existing software by automating data processing, supporting large-scale
analysis, and enabling comparative studies of analysis methods.  It incorporates
methods described in Henderson et al. (2015) <doi:10.1099/vir.0.069906-0>, Li et
al. (2020) <doi:10.1038/s41598-021-96127-8>, Rowden et al. (2023)
<doi:10.3390/pathogens12020309>, Haley et al. (2013)
<doi:10.1371/journal.pone.0081488>, and Mair and Wilcox (2020)
<doi:10.3758/s13428-019-01246-w>.  Please refer to the original publications for
details.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-quicr
  (package
    (name "r-quicr")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quicR" version))
       (sha256
        (base32 "04mf5yw533i2k1mnkwvygkky10nf9x7rrczqpdnj163lbc60r1w2"))))
    (properties `((upstream-name . "quicR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-slider
                             r-reshape2
                             r-readxl
                             r-purrr
                             r-openxlsx
                             r-janitor
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=quicR")
    (synopsis "RT-QuIC Data Formatting and Analysis")
    (description
     "Designed for the curation and analysis of data generated from real-time
quaking-induced conversion (RT-@code{QuIC}) assays first described by Atarashi
et al. (2011) <doi:10.1038/nm.2294>. @code{quicR} calculates useful metrics such
as maxpoint ratio: Rowden et al. (2023) <doi:10.1099/vir.0.069906-0>;
time-to-threshold: Shi et al. (2013) <doi:10.1186/2051-5960-1-44>; and maximum
slope.  Integration with the output from plate readers allows for seamless input
of raw data into the R environment.")
    (license license:gpl3)))

(define-public r-quickregression
  (package
    (name "r-quickregression")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickregression" version))
       (sha256
        (base32 "1z0sspi8q7dvgxqbj5na56v458pv6jhxrssnm6j23156dchgw39h"))))
    (properties `((upstream-name . "quickregression")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-car))
    (home-page "https://cran.r-project.org/package=quickregression")
    (synopsis "Quick Linear Regression")
    (description
     "Helps to perform linear regression analysis by reducing manual effort.  Reduces
the independent variables based on specified p-value and Variance Inflation
Factor (VIF) level.")
    (license license:gpl3)))

(define-public r-quickreg
  (package
    (name "r-quickreg")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickReg" version))
       (sha256
        (base32 "1l1v3k8albxlaz18l2b2x2ryifq4pbdq6n4q7555hnfcik9rqmw5"))))
    (properties `((upstream-name . "quickReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-rlang
                             r-psych
                             r-nortest
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=quickReg")
    (synopsis
     "Build Regression Models Quickly and Display the Results Using 'ggplot2'")
    (description
     "This package provides a set of functions to extract results from regression
models and plot the effect size using ggplot2 seamlessly.  While broom is useful
to convert statistical analysis objects into tidy data frames, coefplot is adept
at showing multivariate regression results.  With specific outcome, this package
could build regression models automatically, extract results into a data frame
and provide a quicker way to summarize models statistical findings using
ggplot2'.")
    (license license:gpl2)))

(define-public r-quickr
  (package
    (name "r-quickr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickr" version))
       (sha256
        (base32 "01hig7fc0p152qwa7zrr2a72s22ikshdw895qzxx955jikvlqplh"))))
    (properties `((upstream-name . "quickr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s7 r-glue r-dotty))
    (home-page "https://github.com/t-kalinowski/quickr")
    (synopsis "Compiler for R")
    (description
     "Compiles R functions annotated with type and shape declarations to provide
extremely fast performance and robust runtime type checking.  Supports both
just-in-time (JIT) and ahead-of-time (AOT) compilation.  Compilation is
performed by lowering R code to Fortran.")
    (license license:expat)))

(define-public r-quickpwcr
  (package
    (name "r-quickpwcr")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickPWCR" version))
       (sha256
        (base32 "0is6ay9p7dmqs9112zyzi145h3f5yl7nmydvj3acb59n6iwmz0bi"))))
    (properties `((upstream-name . "quickPWCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-pbmcapply r-dplyr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=quickPWCR")
    (synopsis "Quickly Construct and Rate Large Binary Pairwised Comparisons")
    (description
     "This package provides a collection of functions for constructing large pairwised
comparisons and rating them using Elo rating system with supporting parallel
processing.  The method of random sample pairs is based on Reservoir Sampling
proposed by JVitter (1985) <doi:10.1145/3147.3165>.")
    (license license:gpl3)))

(define-public r-quickpsy
  (package
    (name "r-quickpsy")
    (version "0.1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickpsy" version))
       (sha256
        (base32 "0dfqlpghnw79idw3ir03cxx9n88sqs5p14jz7jgpkdwvjpw1y4q9"))))
    (properties `((upstream-name . "quickpsy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mpdir r-ggplot2 r-dplyr r-deoptim))
    (home-page "http://dlinares.org/quickpsy.html")
    (synopsis "Fits Psychometric Functions for Multiple Groups")
    (description
     "Quickly fits and plots psychometric functions (normal, logistic, Weibull or any
or any function defined by the user) for multiple groups.")
    (license license:expat)))

(define-public r-quickplot
  (package
    (name "r-quickplot")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickPlot" version))
       (sha256
        (base32 "04rcplcxchrb9lhsvp22m8fl1wqgkficziqy6p02icp8lg5fx9v7"))))
    (properties `((upstream-name . "quickPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-ggplot2 r-fpcompare r-data-table))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://quickplot.predictiveecology.org")
    (synopsis "System of Plotting Optimized for Speed and Modularity")
    (description
     "This package provides a high-level plotting system, compatible with `ggplot2`
objects, maps from `sf`, `terra`, `raster`, `sp`.  It is built primarily on the
grid package.  The objective of the package is to provide a plotting system that
is built for speed and modularity.  This is useful for quick visualizations when
testing code and for plotting multiple figures to the same device from
independent sources that may be independent of one another (i.e., different
function or modules the create the visualizations).")
    (license license:gpl3)))

(define-public r-quicknmix
  (package
    (name "r-quicknmix")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickNmix" version))
       (sha256
        (base32 "01gnvnpfxry354qf772m187mfvjigqngjpi1k9y1g5nvlv7a4d62"))))
    (properties `((upstream-name . "quickNmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-optimparallel r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=quickNmix")
    (synopsis "Asymptotic N-Mixture Model Fitting")
    (description
     "For fitting N-mixture models using either FFT or asymptotic approaches.  FFT
N-mixture models extend the work of Cowen et al. (2017)
<doi:10.1111/biom.12701>.  Asymptotic N-mixture models extend the work of Dail
and Madsen (2011) <doi:10.1111/j.1541-0420.2010.01465.x>, to consider asymptotic
solutions to the open population N-mixture models.  The FFT models are derived
and described in \"Parker, M.R.P., Elliott, L., Cowen, L.L.E. (2022).
Computational efficiency and precision for replicated-count and batch-marked
hidden population models [Manuscript in preparation].  Department of Statistics
and Actuarial Sciences, Simon Fraser University.\".  The asymptotic models are
derived and described in: \"Parker, M.R.P., Elliott, L., Cowen, L.L.E., Cao, J.
(2022).  Fast asymptotic solutions for N-mixtures on large populations
[Manuscript in preparation].  Department of Statistics and Actuarial Sciences,
Simon Fraser University.\".")
    (license license:expat)))

(define-public r-quickmatch
  (package
    (name "r-quickmatch")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickmatch" version))
       (sha256
        (base32 "1r369153zfxy7xzwzixigpz6ai6avmc5kvcqrf7nvr210xbs72r1"))))
    (properties `((upstream-name . "quickmatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scclust r-sandwich r-distances))
    (home-page "https://github.com/fsavje/quickmatch")
    (synopsis "Quick Generalized Full Matching")
    (description
     "This package provides functions for constructing near-optimal generalized full
matching.  Generalized full matching is an extension of the original full
matching method to situations with more intricate study designs.  The package is
made with large data sets in mind and derives matches more than an order of
magnitude quicker than other methods.")
    (license license:gpl3+)))

(define-public r-quickcode
  (package
    (name "r-quickcode")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickcode" version))
       (sha256
        (base32 "05kjjllgjl7vbk70i9ahpz2v0a6a3p4k3czv3kq0qdyxb9bsdrd8"))))
    (properties `((upstream-name . "quickcode")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstudioapi r-polychrome r-fitdistrplus))
    (native-inputs (list r-knitr))
    (home-page "https://quickcode.rpkg.net")
    (synopsis "Quick and Essential 'R' Tricks for Better Scripts")
    (description
     "The NOT functions, R tricks and a compilation of some simple quick plus often
used R codes to improve your scripts.  Improve the quality and reproducibility
of R scripts.")
    (license license:expat)))

(define-public r-quickcheck
  (package
    (name "r-quickcheck")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickcheck" version))
       (sha256
        (base32 "0rm3pvhyqg1px8fp31cmbmv0zk9mvqhzl8qx9gm51kih2zfrksqy"))))
    (properties `((upstream-name . "quickcheck")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-testthat
                             r-purrr
                             r-magrittr
                             r-hms
                             r-hedgehog
                             r-data-table))
    (home-page "https://github.com/armcn/quickcheck")
    (synopsis "Property Based Testing")
    (description
     "Property based testing, inspired by the original @code{QuickCheck}'.  This
package builds on the property based testing framework provided by hedgehog and
is designed to seamlessly integrate with testthat'.")
    (license license:expat)))

(define-public r-quickblock
  (package
    (name "r-quickblock")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quickblock" version))
       (sha256
        (base32 "0xlx6g73qxrijxmjzbw980abvk60rvkm847b5in1izwf5fiv7m0p"))))
    (properties `((upstream-name . "quickblock")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scclust r-distances))
    (home-page "https://github.com/fsavje/quickblock")
    (synopsis "Quick Threshold Blocking")
    (description
     "This package provides functions for assigning treatments in randomized
experiments using near-optimal threshold blocking.  The package is made with
large data sets in mind and derives blocks more than an order of magnitude
quicker than other methods.")
    (license license:gpl3+)))

(define-public r-queueing
  (package
    (name "r-queueing")
    (version "0.2.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "queueing" version))
       (sha256
        (base32 "0hw1ykm24cjpfwh7ac7fjf7mhc59mq8wy2g07aacpy5ibwi8bbsf"))))
    (properties `((upstream-name . "queueing")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://www.r-project.org")
    (synopsis "Analysis of Queueing Networks and Models")
    (description
     "It provides versatile tools for analysis of birth and death based Markovian
Queueing Models and Single and Multiclass Product-Form Queueing Networks.  It
implements M/M/1, M/M/c, M/M/Infinite, M/M/1/K, M/M/c/K, M/M/c/c, M/M/1/K/K,
M/M/c/K/K, M/M/c/K/m, M/M/Infinite/K/K, Multiple Channel Open Jackson Networks,
Multiple Channel Closed Jackson Networks, Single Channel Multiple Class Open
Networks, Single Channel Multiple Class Closed Networks and Single Channel
Multiple Class Mixed Networks.  Also it provides a B-Erlang, C-Erlang and Engset
calculators.  This work is dedicated to the memory of D. Sixto Rios Insua.")
    (license license:gpl2)))

(define-public r-queuecomputer
  (package
    (name "r-queuecomputer")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "queuecomputer" version))
       (sha256
        (base32 "0qlcj4rqfkp8qanzwi1p2s7r89x5w6aa8zwkcl7rqapbd4nwayhc"))))
    (properties `((upstream-name . "queuecomputer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-rcpparmadillo r-rcpp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AnthonyEbert/queuecomputer")
    (synopsis "Computationally Efficient Queue Simulation")
    (description
     "Implementation of a computationally efficient method for simulating queues with
arbitrary arrival and service times.  Please see Ebert, Wu, Mengersen & Ruggeri
(2020, <doi:10.18637/jss.v095.i05>) for further details.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-questr
  (package
    (name "r-questr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuESTr" version))
       (sha256
        (base32 "1vvvraqgy570dj86km4qpiax4a0zhfym94am0fn6ld43p3iixg02"))))
    (properties `((upstream-name . "QuESTr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-kernlab r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/takakoizumi/QuESTr")
    (synopsis
     "Constructing Quantitative Environment Sensor using Transcriptomes")
    (description
     "This package provides a method for prediction of environmental conditions based
on transcriptome data linked with the environmental gradients.  This package
provides functions to overview gene-environment relationships, to construct the
prediction model, and to predict environmental conditions where the
transcriptomes were generated.  This package can quest for candidate genes for
the model construction even in non-model organisms transcriptomes without any
genetic information.")
    (license license:expat)))

(define-public r-questionr
  (package
    (name "r-questionr")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "questionr" version))
       (sha256
        (base32 "1mw7jwx8lvzs5cjqimdicidzi93i3k1z9pxn2axrs4w8z9ahxnx6"))))
    (properties `((upstream-name . "questionr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (inputs (list xclip))
    (propagated-inputs (list r-styler
                             r-shiny
                             r-rstudioapi
                             r-rlang
                             r-miniui
                             r-labelled
                             r-htmltools
                             r-highr
                             r-classint))
    (native-inputs (list r-knitr))
    (home-page "https://juba.github.io/questionr/")
    (synopsis "Functions to Make Surveys Processing Easier")
    (description
     "Set of functions to make the processing and analysis of surveys easier :
interactive shiny apps and addins for data recoding, contingency tables, dataset
metadata handling, and several convenience functions.")
    (license license:gpl2+)))

(define-public r-quest
  (package
    (name "r-quest")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quest" version))
       (sha256
        (base32 "0a3slzskacp0pj0whnnqysqiclf6fby5x81i4mjdvckidgdyjprf"))))
    (properties `((upstream-name . "quest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-str2str
                             r-psych
                             r-plyr
                             r-nlme
                             r-multilevel
                             r-mbess
                             r-lme4
                             r-lavaan
                             r-checkmate
                             r-car
                             r-boot
                             r-abind))
    (home-page "https://cran.r-project.org/package=quest")
    (synopsis "Prepare Questionnaire Data for Analysis")
    (description
     "Offers a suite of functions to prepare questionnaire data for analysis (perhaps
other types of data as well).  By data preparation, I mean data analytic tasks
to get your raw data ready for statistical modeling (e.g., regression).  There
are functions to investigate missing data, reshape data, validate responses,
recode variables, score questionnaires, center variables, aggregate by groups,
shift scores (i.e., leads or lags), etc.  It provides functions for both single
level and multilevel (i.e., grouped) data.  With a few exceptions (e.g.,
@code{ncases()}), functions without an \"s\" at the end of their primary word
(e.g., @code{center_by()}) act on atomic vectors, while functions with an \"s\" at
the end of their primary word (e.g., @code{centers_by()}) act on multiple
columns of a data.frame.")
    (license license:gpl2+)))

(define-public r-queryup
  (package
    (name "r-queryup")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "queryup" version))
       (sha256
        (base32 "0rl31vs1m7qjbix1qgmvnxrvjf2k2ikd8p9frz1yia7xxaq1m286"))))
    (properties `((upstream-name . "queryup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/VoisinneG/queryup")
    (synopsis "Query the 'UniProtKB' REST API")
    (description
     "Retrieve protein information from the @code{UniProtKB} REST API (see
<https://www.uniprot.org/help/api_queries>).")
    (license license:gpl3)))

(define-public r-queryparser
  (package
    (name "r-queryparser")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "queryparser" version))
       (sha256
        (base32 "0va2h1midvf8adymqwg79flpqq7ciznk285kmyqdskkn87argjd2"))))
    (properties `((upstream-name . "queryparser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/ianmcook/queryparser")
    (synopsis "Translate 'SQL' Queries into 'R' Expressions")
    (description
     "Translate SQL SELECT statements into lists of R expressions.")
    (license license:asl2.0)))

(define-public r-querybuilder
  (package
    (name "r-querybuilder")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "queryBuilder" version))
       (sha256
        (base32 "1d06qmnni2mbn63fxbfj23sql82wmn9ziqf5891wbb88xa0wp4mi"))))
    (properties `((upstream-name . "queryBuilder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-purrr r-magrittr r-glue r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=queryBuilder")
    (synopsis "Programmatic Way to Construct Complex Filtering Queries")
    (description
     "Syntax for defining complex filtering expressions in a programmatic way.  A
filtering query, built as a nested list configuration, can be easily stored in
other formats like YAML or JSON'.  What's more, it's possible to convert such
configuration to a valid expression that can be applied to popular dplyr package
operations.")
    (license license:expat)))

(define-public r-quclu
  (package
    (name "r-quclu")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuClu" version))
       (sha256
        (base32 "09fakiyj9kz9ac05jmis0zp9jmizvdyc8cid0js5xzm308dxnlsd"))))
    (properties `((upstream-name . "QuClu")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QuClu")
    (synopsis "Quantile-Based Clustering Algorithms")
    (description
     "Various quantile-based clustering algorithms: algorithm CU (Common theta and
Unscaled variables), algorithm CS (Common theta and Scaled variables through
lambda_j), algorithm VU (Variable-wise theta_j and Unscaled variables) and
algorithm VW (Variable-wise theta_j and Scaled variables through lambda_j).
Hennig, C., Viroli, C., Anderlucci, L. (2019) \"Quantile-based clustering.\"
Electronic Journal of Statistics.  13 (2) 4849 - 4883 <doi:10.1214/19-EJS1640>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-quaxnat
  (package
    (name "r-quaxnat")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quaxnat" version))
       (sha256
        (base32 "0aicg3b840rai7m6hkm5kanzj1zfq5qx9n2pkdxz4m205gy44xdj"))))
    (properties `((upstream-name . "quaxnat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra))
    (home-page "https://github.com/MaximilianAxer/quaxnat")
    (synopsis "Estimation of Natural Regeneration Potential")
    (description
     "This package provides functions for estimating the potential dispersal of tree
species using regeneration densities and dispersal distances to nearest seed
trees.  A quantile regression is implemented to determine the dispersal
potential.  Spatial prediction can be used to identify natural regeneration
potential for forest restoration as described in Axer et al (2021)
<doi:10.1016/j.foreco.2020.118802>.")
    (license license:gpl2+)))

(define-public r-quartose
  (package
    (name "r-quartose")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quartose" version))
       (sha256
        (base32 "15sc7c0m7l5vy2zgjxlbslbzz4nd8gcn5yrszx9d5d3sfpmzzgmy"))))
    (properties `((upstream-name . "quartose")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-purrr r-knitr r-cli))
    (home-page "https://github.com/djnavarro/quartose")
    (synopsis "Dynamically Generate Quarto Syntax")
    (description
     "This package provides helper functions to work programmatically within a quarto
document.  It allows the user to create section headers, tabsets, divs, and
spans, and formats these objects into quarto syntax when printed into a
document.")
    (license license:expat)))

(define-public r-quartets
  (package
    (name "r-quartets")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quartets" version))
       (sha256
        (base32 "0j5qgk3ha621l3njah54rnxf12ndafcai5bdvv96n888c3yki3nd"))))
    (properties `((upstream-name . "quartets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/r-causal/quartets")
    (synopsis "Datasets to Help Teach Statistics")
    (description
     "In the spirit of Anscombe's quartet, this package includes datasets that
demonstrate the importance of visualizing your data, the importance of not
relying on statistical summary measures alone, and why additional assumptions
about the data generating mechanism are needed when estimating causal effects.
The package includes \"Anscombe's Quartet\" (Anscombe 1973)
<doi:10.1080/00031305.1973.10478966>, D'Agostino @code{McGowan} & Barrett (2023)
\"Causal Quartet\" <doi:10.48550/@code{arXiv.2304.02683>}, \"Datasaurus Dozen\"
(Matejka & Fitzmaurice 2017), \"Interaction Triptych\" (Rohrer & Arslan 2021)
<doi:10.1177/25152459211007368>, \"Rashomon Quartet\" (Biecek et al.  2023)
<doi:10.48550/@code{arXiv.2302.13356>}, and Gelman \"Variation and Heterogeneity
Causal Quartets\" (Gelman et al.  2023) <doi:10.48550/@code{arXiv.2302.12878>}.")
    (license license:expat)))

(define-public r-quartet
  (package
    (name "r-quartet")
    (version "1.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Quartet" version))
       (sha256
        (base32 "082g4wxbvrkqwkaak29ngpd523d3ygxpffghf1vfp1r2v6761s9r"))))
    (properties `((upstream-name . "Quartet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-treetools
                             r-ternary
                             r-rdpack
                             r-rcpp
                             r-plottools
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/Quartet/")
    (synopsis
     "Comparison of Phylogenetic Trees Using Quartet and Split Measures")
    (description
     "Calculates the number of four-taxon subtrees consistent with a pair of
cladograms, calculating the symmetric quartet distance of Bandelt & Dress
(1986), Reconstructing the shape of a tree from observed dissimilarity data,
Advances in Applied Mathematics, 7, 309-343 <doi:10.1016/0196-8858(86)90038-2>,
and using the @code{tqDist} algorithm of Sand et al. (2014), @code{tqDist}: a
library for computing the quartet and triplet distances between binary or
general trees, Bioinformatics, 30, 2079â2080
<doi:10.1093/bioinformatics/btu157> for pairs of binary trees.")
    (license license:gpl2+)))

(define-public r-quartabs
  (package
    (name "r-quartabs")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quartabs" version))
       (sha256
        (base32 "0qif4fm3pmsqgli7xyszfai7xaxq1n49qm5c3mqiaq47f26nvn96"))))
    (properties `((upstream-name . "quartabs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://sayuks.github.io/quartabs/")
    (synopsis "Dynamically Generate Tabset Panels in 'Quarto' HTML Documents")
    (description
     "Dynamically generate tabset panels
<https://quarto.org/docs/output-formats/html-basics.html#tabsets> in Quarto HTML
documents using a data frame as input.")
    (license license:expat)))

(define-public r-quarrint
  (package
    (name "r-quarrint")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quarrint" version))
       (sha256
        (base32 "13fdmmrgn23xd9vpywmcl7pf729gmcxjfl1wxs30axsbp4h1s6rk"))))
    (properties `((upstream-name . "quarrint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-neuralnet))
    (home-page "https://github.com/jojo-/quarrint")
    (synopsis
     "Interaction Prediction Between Groundwater and Quarry Extension Using Discrete Choice Models and Artificial Neural Networks")
    (description
     "An implementation of two interaction indices between extractive activity and
groundwater resources based on hazard and vulnerability parameters used in the
assessment of natural hazards.  One index is based on a discrete choice model
and the other is relying on an artificial neural network.")
    (license license:gpl2)))

(define-public r-quarks
  (package
    (name "r-quarks")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quarks" version))
       (sha256
        (base32 "0srachhn2jxyz3i7ky5hb982232xnngaq66q76ffr3p1v4yfvgw3"))))
    (properties `((upstream-name . "quarks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yfr
                             r-xts
                             r-smoots
                             r-shinyjs
                             r-shiny
                             r-rugarch
                             r-progress
                             r-ggplot2
                             r-dygraphs))
    (home-page "https://cran.r-project.org/package=quarks")
    (synopsis
     "Simple Methods for Calculating and Backtesting Value at Risk and Expected Shortfall")
    (description
     "Enables the user to calculate Value at Risk (@code{VaR}) and Expected Shortfall
(ES) by means of various types of historical simulation.  Currently plain-,
age-, volatility-weighted- and filtered historical simulation are implemented in
this package.  Volatility weighting can be carried out via an exponentially
weighted moving average model (EWMA) or other GARCH-type models.  The
performance can be assessed via Traffic Light Test, Coverage Tests and Loss
Functions.  The methods of the package are described in Gurrola-Perez, P. and
Murphy, D. (2015) <https://@code{EconPapers.repec.org/RePEc:boe:boeewp:0525>} as
well as @code{McNeil}, J., Frey, R., and Embrechts, P. (2015)
<https://ideas.repec.org/b/pup/pbooks/10496.html>.")
    (license license:gpl3)))

(define-public r-quantumops
  (package
    (name "r-quantumops")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantumOps" version))
       (sha256
        (base32 "0gl1myf7q444imyvsjvxiaxaahf0n0bsggwbd0z3az73l6yf1gjh"))))
    (properties `((upstream-name . "QuantumOps")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QuantumOps")
    (synopsis
     "Performs Common Linear Algebra Operations Used in Quantum Computing and Implements Quantum Algorithms")
    (description
     "This package contains basic structures and operations used frequently in quantum
computing.  Intended to be a convenient tool to help learn quantum mechanics and
algorithms.  Can create arbitrarily sized kets and bras and implements quantum
gates, inner products, and tensor products.  Creates arbitrarily controlled
versions of all gates and can simulate complete or partial measurements of kets.
 Has functionality to convert functions into equivalent quantum gates and model
quantum noise.  Includes larger applications, such as Steane error correction
<DOI:10.1103/physrevlett.77.793>, Quantum Fourier Transform and Shor's algorithm
(Shor 1999), Grover's algorithm (1996), Quantum Approximation Optimization
Algorithm (QAOA) (Farhi, Goldstone, and Gutmann 2014) <@code{arXiv:1411.4028>},
and a variational quantum classifier (Schuld 2018) <@code{arXiv:1804.00633>}.
Can be used with the gridsynth algorithm <@code{arXiv:1212.6253>} to perform
decomposition into the Clifford+T set.")
    (license license:gpl3)))

(define-public r-quantspec
  (package
    (name "r-quantspec")
    (version "1.2-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantspec" version))
       (sha256
        (base32 "1azwxxn4831fdqfz36mb5bv5ji4das2wh0r6qakrycqj1zjilk6k"))))
    (properties `((upstream-name . "quantspec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-snowfall r-rcpp r-quantreg r-abind))
    (home-page "https://github.com/tobiaskley/quantspec")
    (synopsis "Quantile-Based Spectral Analysis of Time Series")
    (description
     "This package provides methods to determine, smooth and plot quantile
periodograms for univariate and multivariate time series.  See Kley (2016)
<doi:10.18637/jss.v070.i03> for a description and tutorial.")
    (license license:gpl2+)))

(define-public r-quantsig
  (package
    (name "r-quantsig")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantsig" version))
       (sha256
        (base32 "0mvlbhx74jjpqcyz032sgc4rz27sv4ppi4a29ql496ix0q22xsv2"))))
    (properties `((upstream-name . "quantsig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=quantsig")
    (synopsis "Sigmoidal Quantile Function Estimator")
    (description
     "This package provides a sigmoidal quantile function estimator based on a newly
defined generalized expectile function.  The generalized sigmoidal quantile
function can estimate quantiles beyond the range of the data, which is important
for certain applications given smaller sample sizes.  The package is based on
the method introduced in Hutson (2024) <doi:10.1080/03610918.2022.2032161>.")
    (license license:gpl3)))

(define-public r-quantregranger
  (package
    (name "r-quantregranger")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantregRanger" version))
       (sha256
        (base32 "1a9q2prr790bpw6s0y5ni5ppd3vqkjr0v4nqp6ywcj5n3sk69pvx"))))
    (properties `((upstream-name . "quantregRanger")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-ranger))
    (home-page "https://github.com/PhilippPro/quantregRanger")
    (synopsis "Quantile Regression Forests for 'ranger'")
    (description
     "This is the implementation of quantile regression forests for the fast random
forest package ranger'.")
    (license license:gpl3)))

(define-public r-quantreggrowth
  (package
    (name "r-quantreggrowth")
    (version "1.7-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantregGrowth" version))
       (sha256
        (base32 "07hj5kanas42kj70p03h77j5m9vnvsnsb02r31snai4smbaps4ad"))))
    (properties `((upstream-name . "quantregGrowth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsem r-quantreg))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=quantregGrowth")
    (synopsis
     "Non-Crossing Additive Regression Quantiles and Non-Parametric Growth Charts")
    (description
     "Fits non-crossing regression quantiles as a function of linear covariates and
multiple smooth terms, including varying coefficients, via B-splines with
L1-norm difference penalties.  Random intercepts and variable selection are
allowed via the lasso penalties.  The smoothing parameters are estimated as part
of the model fitting, see Muggeo and others (2021)
<doi:10.1177/1471082X20929802>.  Monotonicity and concavity constraints on the
fitted curves are allowed, see Muggeo and others (2013)
<doi:10.1007/s10651-012-0232-1>, and also <doi:10.13140/RG.2.2.12924.85122> or
<doi:10.13140/RG.2.2.29306.21445> some code examples.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-quantregglasso
  (package
    (name "r-quantregglasso")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantRegGLasso" version))
       (sha256
        (base32 "0jjjrkj45148s2rymvgzkqpbg2bw7nvf3851153qpl8kp13mxgr1"))))
    (properties `((upstream-name . "QuantRegGLasso")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://github.com/egpivo/SpatPCA")
    (synopsis
     "Adaptively Weighted Group Lasso for Semiparametric Quantile Regression Models")
    (description
     "This package implements an adaptively weighted group Lasso procedure for
simultaneous variable selection and structure identification in varying
coefficient quantile regression models and additive quantile regression models
with ultra-high dimensional covariates.  The methodology, grounded in a strong
sparsity condition, establishes selection consistency under certain weight
conditions.  To address the challenge of tuning parameter selection in practice,
a BIC-type criterion named high-dimensional information criterion (HDIC) is
proposed.  The Lasso procedure, guided by HDIC-determined tuning parameters,
maintains selection consistency.  Theoretical findings are strongly supported by
simulation studies. (Toshio Honda, Ching-Kang Ing, Wei-Ying Wu, 2019,
<DOI:10.3150/18-BEJ1091>).")
    (license license:gpl2+)))

(define-public r-quantregforest
  (package
    (name "r-quantregforest")
    (version "1.3-7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantregForest" version))
       (sha256
        (base32 "0b1xmjcv0wrad7il1gg1gaggq19v37akp8zh31dvsnnpmrk05zsp"))))
    (properties `((upstream-name . "quantregForest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-randomforest))
    (native-inputs (list gfortran))
    (home-page "https://github.com/lorismichel/quantregForest")
    (synopsis "Quantile Regression Forests")
    (description
     "Quantile Regression Forests is a tree-based ensemble method for estimation of
conditional quantiles.  It is particularly well suited for high-dimensional
data.  Predictor variables of mixed classes can be handled.  The package is
dependent on the package @code{randomForest}', written by Andy Liaw.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-quantreg-nonpar
  (package
    (name "r-quantreg-nonpar")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantreg.nonpar" version))
       (sha256
        (base32 "1f9120awnkwsgdiqg98lg7xs5l4y80930869x6k9q76595r5m92k"))))
    (properties `((upstream-name . "quantreg.nonpar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rearrangement r-quantreg r-mnormt r-fda))
    (home-page "https://cran.r-project.org/package=quantreg.nonpar")
    (synopsis "Nonparametric Series Quantile Regression")
    (description
     "This package implements the nonparametric quantile regression method developed
by Belloni, Chernozhukov, and Fernandez-Val (2011) to partially linear quantile
models.  Provides point estimates of the conditional quantile function and its
derivatives based on series approximations to the nonparametric part of the
model.  Provides pointwise and uniform confidence intervals using analytic and
resampling methods.")
    (license license:gpl2+)))

(define-public r-quantoptr
  (package
    (name "r-quantoptr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantoptr" version))
       (sha256
        (base32 "0f9vy9yhya4wpya8n345s6n7a5sb29chdkl5fz6dwa31lp1mvvj3"))))
    (properties `((upstream-name . "quantoptr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-rgenoud r-rdpack r-quantreg))
    (home-page "https://cran.r-project.org/package=quantoptr")
    (synopsis "Algorithms for Quantile- And Mean-Optimal Treatment Regimes")
    (description
     "Estimation methods for optimal treatment regimes under three different criteria,
namely marginal quantile, marginal mean, and mean absolute difference.  For the
first two criteria, both one-stage and two-stage estimation method are
implemented.  A doubly robust estimator for estimating the quantile-optimal
treatment regime is also included.")
    (license license:gpl2+)))

(define-public r-quantnorm
  (package
    (name "r-quantnorm")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantNorm" version))
       (sha256
        (base32 "1hds9ybwsgnmcpa22vlmgdq02ilhn0c6a7z1qjiq4i5iqjd4gwf6"))))
    (properties `((upstream-name . "QuantNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QuantNorm")
    (synopsis
     "Mitigating the Adverse Impact of Batch Effects in Sample Pattern Detection")
    (description
     "Modifies the distance matrix obtained from data with batch effects, so as to
improve the performance of sample pattern detection, such as clustering,
dimension reduction, and construction of networks between subjects.  The method
has been published in Bioinformatics (Fei et al, 2018,
<doi:10.1093/bioinformatics/bty117>).  Also available on @code{GitHub}
<https://github.com/tengfei-emory/@code{QuantNorm>}.")
    (license license:gpl2+)))

(define-public r-quantkriging
  (package
    (name "r-quantkriging")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantkriging" version))
       (sha256
        (base32 "0v6kckgzhgsn3158sc06xszdhmk8sfny10j1qyppxsl2hk89n8jf"))))
    (properties `((upstream-name . "quantkriging")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-matrix r-hetgp r-ggplot2))
    (home-page "https://cran.r-project.org/package=quantkriging")
    (synopsis "Quantile Kriging for Stochastic Simulations with Replication")
    (description
     "This package provides a re-implementation of quantile kriging.  Quantile kriging
was described by Plumlee and Tuo (2014) <doi:10.1080/00401706.2013.860919>.
With computational savings when dealing with replication from the recent paper
by Binois, Gramacy, and Ludovski (2018) <doi:10.1080/10618600.2018.1458625> it
is now possible to apply quantile kriging to a wider class of problems.  In
addition to fitting the model, other useful tools are provided such as the
ability to automatically perform leave-one-out cross validation.")
    (license license:expat)))

(define-public r-quantities
  (package
    (name "r-quantities")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantities" version))
       (sha256
        (base32 "1hvfabq11ji6llwh6kp2yvl0cfppf7k9fgm7bb30csqimbs188x1"))))
    (properties `((upstream-name . "quantities")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-units r-rcpp r-errors))
    (native-inputs (list r-knitr))
    (home-page "https://r-quantities.github.io/quantities/")
    (synopsis "Quantity Calculus for R Vectors")
    (description
     "Integration of the units and errors packages for a complete quantity calculus
system for R vectors, matrices and arrays, with automatic propagation,
conversion, derivation and simplification of magnitudes and uncertainties.
Documentation about units and errors is provided in the papers by Pebesma,
Mailund & Hiebert (2016, <doi:10.32614/RJ-2016-061>) and by Ucar, Pebesma &
Azcorra (2018, <doi:10.32614/RJ-2018-075>), included in those packages as
vignettes; see citation(\"quantities\") for details.")
    (license license:expat)))

(define-public r-quantilogram
  (package
    (name "r-quantilogram")
    (version "3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantilogram" version))
       (sha256
        (base32 "1r5fg0jj1f7knabbr7h13sjniy6f6jnk4lnq41acq5sllxm565ip"))))
    (properties `((upstream-name . "quantilogram")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-rlang r-quantreg r-np r-ggplot2))
    (home-page "https://cran.r-project.org/package=quantilogram")
    (synopsis "Cross-Quantilogram")
    (description
     "Estimation and inference methods for the cross-quantilogram.  The
cross-quantilogram is a measure of nonlinear dependence between two variables,
based on either unconditional or conditional quantile functions.  It can be
considered an extension of the correlogram, which is a correlation function over
multiple lag periods that mainly focuses on linear dependency.  One can use the
cross-quantilogram to detect the presence of directional predictability from one
time series to another.  This package provides a statistical inference method
based on the stationary bootstrap.  For detailed theoretical and empirical
explanations, see Linton and Whang (2007) for univariate time series analysis
and Han, Linton, Oka and Whang (2016) for multivariate time series analysis.
The full references for these key publications are as follows: (1) Linton, O.,
and Whang, Y. J. (2007).  The quantilogram: with an application to evaluating
directional predictability.  Journal of Econometrics, 141(1), 250-282
<doi:10.1016/j.jeconom.2007.01.004>; (2) Han, H., Linton, O., Oka, T., and
Whang, Y. J. (2016).  The cross-quantilogram: measuring quantile dependence and
testing directional predictability between time series.  Journal of
Econometrics, 193(1), 251-270 <doi:10.1016/j.jeconom.2016.03.001>.")
    (license license:gpl3+)))

(define-public r-quantilepeer
  (package
    (name "r-quantilepeer")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantilePeer" version))
       (sha256
        (base32 "0zrg37x5wgvys76xzz84gjidhjbqsx2dywrrs851g3ha1qnjcpfp"))))
    (properties `((upstream-name . "QuantilePeer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppnumerical
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-mass
                             r-formula-tools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ahoundetoungan/QuantilePeer")
    (synopsis "Quantile Peer Effect Models")
    (description
     "Simulating and estimating peer effect models including the quantile-based
specification (Houndetoungan, 2025 <doi:10.48550/@code{arXiv.2506.12920>}), and
the models with Constant Elasticity of Substitution (CES)-based social norm
(Boucher et al., 2024 <doi:10.3982/ECTA21048>).")
    (license license:gpl3)))

(define-public r-quantilenpci
  (package
    (name "r-quantilenpci")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantileNPCI" version))
       (sha256
        (base32 "043lkg1pyaja7a4f9lmcwrvdjpfly2z378s15snwnxj8vb5pgr38"))))
    (properties `((upstream-name . "QuantileNPCI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=QuantileNPCI")
    (synopsis "Nonparametric Confidence Intervals for Quantiles")
    (description
     "Based on Alan D. Hutson (1999) <doi:10.1080/02664769922458>, \"Calculating
nonparametric confidence intervals for quantiles using fractional order
statistics\", Journal of Applied Statistics, 26:3, 343-353.")
    (license license:gpl3)))

(define-public r-quantilegrader
  (package
    (name "r-quantilegrader")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantileGradeR" version))
       (sha256
        (base32 "1zwc6bg636gk8zll7wpznd3pzl611hcj2fmzp8b9505rra13p0g2"))))
    (properties `((upstream-name . "QuantileGradeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page
     "http://www.kingcounty.gov/depts/health/environmental-health/food-safety/inspection-system/food-safety-rating.aspx")
    (synopsis "Quantile-Adjusted Restaurant Grading")
    (description
     "Implementation of the food safety restaurant grading system adopted by Public
Health - Seattle & King County (see Ashwood, Z.C., Elias, B., and Ho.  D.E.
\"Improving the Reliability of Food Safety Disclosure: A Quantile Adjusted
Restaurant Grading System for Seattle-King County\" (working paper)).  As
reported in the accompanying paper, this package allows jurisdictions to easily
implement refinements that address common challenges with unadjusted grading
systems.  First, in contrast to unadjusted grading, where the most recent single
routine inspection is the primary determinant of a grade, grading inputs are
allowed to be flexible.  For instance, it is straightforward to base the grade
on average inspection scores across multiple inspection cycles.  Second, the
package can identify quantile cutoffs by inputting substantively meaningful
regulatory thresholds (e.g., the proportion of establishments receiving
sufficient violation points to warrant a return visit).  Third, the quantile
adjustment equalizes the proportion of establishments in a flexible number of
grading categories (e.g., A/B/C) across areas (e.g., ZIP codes, inspector areas)
to account for inspector differences.  Fourth, the package implements a refined
quantile adjustment that addresses two limitations with the
@code{stats::quantile()} function when applied to inspection score datasets with
large numbers of score ties.  The quantile adjustment algorithm iterates over
quantiles until, over all restaurants in all areas, grading proportions are
within a tolerance of desired global proportions.  In addition the package
allows a modified definition of \"quantile\" from \"Nearest Rank\".  Instead of
requiring that at least p[1]% of restaurants receive the top grade and at least
(p[1]+p[2])% of restaurants receive the top or second best grade for quantiles
p, the algorithm searches for cutoffs so that as close as possible p[1]% of
restaurants receive the top grade, and as close as possible to p[2]% of
restaurants receive the second top grade.")
    (license license:gpl2+)))

(define-public r-quantilegh
  (package
    (name "r-quantilegh")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantileGH" version))
       (sha256
        (base32 "0alnass0sjardbr3wfx483i1pqg8zjc18sffvayhi2wasb01dzh5"))))
    (properties `((upstream-name . "QuantileGH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tukeygh77 r-tclust r-mixtools r-fmx))
    (home-page "https://cran.r-project.org/package=QuantileGH")
    (synopsis
     "Quantile Least Mahalanobis Distance Estimator for Tukey g-&-h Mixture")
    (description
     "This package provides functions for simulation, estimation, and model selection
of finite mixtures of Tukey g-and-h distributions.")
    (license license:gpl2)))

(define-public r-quantileda
  (package
    (name "r-quantileda")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantileDA" version))
       (sha256
        (base32 "136rjrim7q07pl3w76xs77nhsv7xvi8isw2924ngxmfp35hbhq16"))))
    (properties `((upstream-name . "quantileDA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=quantileDA")
    (synopsis "Quantile Classifier")
    (description "Code for centroid, median and quantile classifiers.")
    (license license:gpl3)))

(define-public r-quantification
  (package
    (name "r-quantification")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantification" version))
       (sha256
        (base32 "116cp88q9cmizxc2a8lsysa1vwyp1y86457fx5qkq5dcm4g721g8"))))
    (properties `((upstream-name . "quantification")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-car))
    (home-page "https://cran.r-project.org/package=quantification")
    (synopsis "Quantification of Qualitative Survey Data")
    (description
     "This package provides different functions for quantifying qualitative survey
data.  It supports the Carlson-Parkin method, the regression approach, the
balance approach and the conditional expectations method.")
    (license license:gpl3)))

(define-public r-quantetrack
  (package
    (name "r-quantetrack")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuAnTeTrack" version))
       (sha256
        (base32 "0hgj99ylxfiqp12q5xwlqb9bm3p96wgsv6s8ijwhgnq1bl60l17g"))))
    (properties `((upstream-name . "QuAnTeTrack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trajr
                             r-stringr
                             r-splancs
                             r-similaritymeasures
                             r-shotgroups
                             r-schoolmath
                             r-nistunits
                             r-mclust
                             r-magrittr
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-geomorph
                             r-emmeans
                             r-dunn-test
                             r-dtw
                             r-dplyr
                             r-car
                             r-berryfunctions))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MacroFunUV/QuAnTeTrack")
    (synopsis "Quantitative Analysis of Tetrapod Trackways")
    (description
     "This package provides a quantitative and automated tool to extract
(palaeo)biological information (i.e., measurements, velocities, similarity
metrics, etc.) from the analysis of tetrapod trackways.  Methods implemented in
the package draw from several sources, including Alexander (1976)
<doi:10.1038/261129a0>, Batschelet (1981, ISBN:9780120810505), Benhamou (2004)
<doi:10.1016/j.jtbi.2004.03.016>, Bovet and Benhamou (1988)
<doi:10.1016/S0022-5193(88)80038-9>, Cheung et al. (2007)
<doi:10.1007/s00422-007-0158-0>, Cheung et al. (2008)
<doi:10.1007/s00422-008-0251-z>, Cleasby et al. (2019)
<doi:10.1007/s00265-019-2761-1>, Farlow et al. (1981) <doi:10.1038/294747a0>,
Ostrom (1972) <doi:10.1016/0031-0182(72)90049-1>, Rohlf (2008)
<https://sbmorphometrics.org/>, Rohlf (2009) <https://sbmorphometrics.org/>,
Ruiz and Torices (2013) <doi:10.1080/10420940.2012.759115>, Scrucca et al.
(2016) <doi:10.32614/RJ-2016-021>, Thulborn and Wade (1984)
<https://www.museum.qld.gov.au/collections-and-research/memoirs/nature-21/mqm-n21-2-11-thulborn-wade>.")
    (license license:cc0)))

(define-public r-quanteda-textstats
  (package
    (name "r-quanteda-textstats")
    (version "0.97.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quanteda.textstats" version))
       (sha256
        (base32 "0bzlbwjlwjrmwa1anzarhmbgzsg0gwynlwpwxv786yb235x8znrn"))))
    (properties `((upstream-name . "quanteda.textstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rcpparmadillo
                             r-rcpp
                             r-quanteda
                             r-proxyc
                             r-nsyllable
                             r-matrix))
    (home-page "https://quanteda.io")
    (synopsis
     "Textual Statistics for the Quantitative Analysis of Textual Data")
    (description
     "Textual statistics functions formerly in the quanteda package.  Textual
statistics for characterizing and comparing textual data.  Includes functions
for measuring term and document frequency, the co-occurrence of words,
similarity and distance between features and documents, feature entropy, keyword
occurrence, readability, and lexical diversity.  These functions extend the
quanteda package and are specially designed for sparse textual data.")
    (license license:gpl3)))

(define-public r-quanteda-textplots
  (package
    (name "r-quanteda-textplots")
    (version "0.95")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quanteda.textplots" version))
       (sha256
        (base32 "1lgardgbwc3rhla6bxq4cy4wif7w0s3s5pyvyswb9fz6yyfw0wrk"))))
    (properties `((upstream-name . "quanteda.textplots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-sna
                             r-rcpp
                             r-rcolorbrewer
                             r-quanteda
                             r-network
                             r-matrix
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-extrafont))
    (home-page "https://cran.r-project.org/package=quanteda.textplots")
    (synopsis "Plots for the Quantitative Analysis of Textual Data")
    (description
     "Plotting functions for visualising textual data.  Extends quanteda and related
packages with plot methods designed specifically for text data, textual
statistics, and models fit to textual data.  Plot types include word clouds,
lexical dispersion plots, scaling plots, network visualisations, and word
keyness plots.")
    (license license:gpl3)))

(define-public r-quanteda-textmodels
  (package
    (name "r-quanteda-textmodels")
    (version "0.9.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quanteda.textmodels" version))
       (sha256
        (base32 "0y8rl02r51wq3993i07dcj9ivfalvqm7q8jhiis5sa0ngdf3g0hi"))))
    (properties `((upstream-name . "quanteda.textmodels")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rspectra
                             r-rcpparmadillo
                             r-rcpp
                             r-quanteda
                             r-matrix
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/quanteda/quanteda.textmodels")
    (synopsis "Scaling Models and Classifiers for Textual Data")
    (description
     "Scaling models and classifiers for sparse matrix objects representing textual
data in the form of a document-feature matrix.  Includes original
implementations of Laver', Benoit', and Garry's (2003)
<doi:10.1017/S0003055403000698>, Wordscores model, the Perry and Benoit (2017)
<doi:10.48550/@code{arXiv.1710.08963>} class affinity scaling model, and the
Slapin and Proksch (2008) <doi:10.1111/j.1540-5907.2008.00338.x> wordfish model,
as well as methods for correspondence analysis, latent semantic analysis, and
fast Naive Bayes and linear SVMs specially designed for sparse textual data.")
    (license license:gpl3)))

(define-public r-quantdr
  (package
    (name "r-quantdr")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantdr" version))
       (sha256
        (base32 "14cim7j2qfngh5x9g06km7f7zfbnlzcgri5309gjqn033bq2gfdf"))))
    (properties `((upstream-name . "quantdr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-mvtnorm r-kernsmooth))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elianachristou/quantdr")
    (synopsis "Dimension Reduction Techniques for Conditional Quantiles")
    (description
     "An implementation of dimension reduction techniques for conditional quantiles.
Nonparametric estimation of conditional quantiles is also available.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-quantdates
  (package
    (name "r-quantdates")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantdates" version))
       (sha256
        (base32 "1xlrbxslm4i3cwhzw3xa67vib43gpfclz18hkjbvas5ij68axvap"))))
    (properties `((upstream-name . "quantdates")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/quantilma/quantdates")
    (synopsis "Manipulate Dates for Finance")
    (description
     "This package provides functions to manipulate dates and count days for
quantitative finance analysis.  The quantdates package considers leap, holidays
and business days for relevant calendars in a financial context to simplify
quantitative finance calculations, consistent with International Swaps and
Derivatives Association (ISDA) (2006)
<https://www.isda.org/book/2006-isda-definitions/> regulations.")
    (license license:gpl3)))

(define-public r-quantcurves
  (package
    (name "r-quantcurves")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quantCurves" version))
       (sha256
        (base32 "0z00agd4q157cjkc4gwyfw3kka043wcf5j7yzn8cqm281fqh1jny"))))
    (properties `((upstream-name . "quantCurves")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreggrowth r-quantreg r-np r-locpol
                             r-kernsmooth))
    (home-page "https://cran.r-project.org/package=quantCurves")
    (synopsis "Estimate Quantiles Curves")
    (description
     "Non-parametric methods as local normal regression, polynomial local regression
and penalized cubic B-splines regression are used to estimate quantiles curves.
See Fan and Gijbels (1996) <doi:10.1201/9780203748725> and Perperoglou et
al.(2019) <doi:10.1186/s12874-019-0666-3>.")
    (license license:cecill)))

(define-public r-quantbondcurves
  (package
    (name "r-quantbondcurves")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuantBondCurves" version))
       (sha256
        (base32 "0jkr1fmmv4hf3d07l723cyfbj8092gx8842fv6iwddzl0q9hs28v"))))
    (properties `((upstream-name . "QuantBondCurves")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp r-quantdates r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=QuantBondCurves")
    (synopsis "Calculates Bond Values and Interest Rate Curves for Finance")
    (description
     "Values different types of assets and calibrates discount curves for quantitative
financial analysis.  It covers fixed coupon assets, floating note assets,
interest and cross currency swaps with different payment frequencies.  Enables
the calibration of spot, instantaneous forward and basis curves, making it a
powerful tool for accurate and flexible bond valuation and curve generation.
The valuation and calibration techniques presented here are consistent with
industry standards and incorporates author's own calculations.  Tuckman, B.,
Serrat, A. (2022, ISBN: 978-1-119-83555-4).")
    (license license:gpl3+)))

(define-public r-quandl
  (package
    (name "r-quandl")
    (version "2.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Quandl" version))
       (sha256
        (base32 "1bsba6blbcq0my8wm0qcy0qabbgx344gjljnjwaqfrqkjcphf5xs"))))
    (properties `((upstream-name . "Quandl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-xts r-jsonlite r-httr))
    (home-page "https://github.com/quandl/quandl-r")
    (synopsis "API Wrapper for Quandl.com")
    (description
     "This package provides functions for interacting directly with the Quandl API to
offer data in a number of formats usable in R, downloading a zip with all data
from a Quandl database, and the ability to search.  This R package uses the
Quandl API. For more information go to <https://docs.quandl.com>.  For more help
on the package itself go to <https://www.quandl.com/tools/r>.")
    (license license:expat)))

(define-public r-qualypso
  (package
    (name "r-qualypso")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QUALYPSO" version))
       (sha256
        (base32 "1nbkbc5lcglrpp4k3jphdzqr9xl5kgdv6sg05ibdcwidn6bk3y5l"))))
    (properties `((upstream-name . "QUALYPSO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rfast r-mass r-expm))
    (home-page "https://cran.r-project.org/package=QUALYPSO")
    (synopsis
     "Partitioning Uncertainty Components of an Incomplete Ensemble of Climate Projections")
    (description
     "These functions use data augmentation and Bayesian techniques for the assessment
of single-member and incomplete ensembles of climate projections.  It provides
unbiased estimates of climate change responses of all simulation chains and of
all uncertainty variables.  It additionally propagates uncertainty due to
missing information in the estimates. - Evin, G., B. Hingray, J. Blanchet, N.
Eckert, S. Morin, and D. Verfaillie. (2019) <doi:10.1175/JCLI-D-18-0606.1>.")
    (license license:gpl3)))

(define-public r-qualvar
  (package
    (name "r-qualvar")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qualvar" version))
       (sha256
        (base32 "1c7b7lcyq2l46sslk185r6xfh5fb35z9qihrhnh294sw1k52bffa"))))
    (properties `((upstream-name . "qualvar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "http://joelgombin.github.io/qualvar/")
    (synopsis
     "Implements Indices of Qualitative Variation Proposed by Wilcox (1973)")
    (description
     "This package implements indices of qualitative variation proposed by Wilcox
(1973).")
    (license license:gpl3)))

(define-public r-qualtrics
  (package
    (name "r-qualtrics")
    (version "3.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qualtRics" version))
       (sha256
        (base32 "1f63524a4xwdd2wgv4b8ny24xqc4kgcca7ql9c0v71l7yx6ia06r"))))
    (properties `((upstream-name . "qualtRics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sjlabelled
                             r-rlang
                             r-readr
                             r-purrr
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-glue
                             r-fs
                             r-dplyr
                             r-cli
                             r-archive))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/qualtRics/")
    (synopsis "Download 'Qualtrics' Survey Data")
    (description
     "This package provides functions to access survey results directly into R using
the Qualtrics API. Qualtrics <https://www.qualtrics.com/about/> is an online
survey and data collection software platform.  See <https://api.qualtrics.com/>
for more information about the Qualtrics API. This package is
community-maintained and is not officially supported by Qualtrics'.")
    (license license:expat)))

(define-public r-qualpalr
  (package
    (name "r-qualpalr")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qualpalr" version))
       (sha256
        (base32 "13mahl7v1sldy35ssmr9k0anhx569g1rv44kgvdw5w5s8dm28512"))))
    (properties `((upstream-name . "qualpalr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-randtoolbox r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://jolars.github.io/qualpalr/")
    (synopsis "Automatic Generation of Qualitative Color Palettes")
    (description
     "Automatic generation of maximally distinct qualitative color palettes,
optionally tailored to color deficiency.  A list of colors or a subspace of a
color space is used as input and then projected to the DIN99d color space, where
colors that are maximally distinct are chosen algorithmically.")
    (license license:gpl3)))

(define-public r-qualmap
  (package
    (name "r-qualmap")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qualmap" version))
       (sha256
        (base32 "1ych61nb3jxvd23d13dlw5y47n94gs0k6ncq7i4rbk01594bk5al"))))
    (properties `((upstream-name . "qualmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf
                             r-rlang
                             r-purrr
                             r-leaflet
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://chris-prener.github.io/qualmap/")
    (synopsis
     "Opinionated Approach for Digitizing Semi-Structured Qualitative GIS Data")
    (description
     "This package provides a set of functions for taking qualitative GIS data, hand
drawn on a map, and converting it to a simple features object.  These tools are
focused on data that are drawn on a map that contains some type of polygon
features.  For each area identified on the map, the id numbers of these polygons
can be entered as vectors and transformed using qualmap.")
    (license license:gpl3)))

(define-public r-qualitycontrol
  (package
    (name "r-qualitycontrol")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qualitycontrol" version))
       (sha256
        (base32 "134dksflv43bixqa5lhcjgwqnahzpb2fnzl4dhc81wdb9pcqsg7v"))))
    (properties `((upstream-name . "qualitycontrol")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-readxl r-openxlsx r-janitor r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luisgarcez11/qualitycontrol")
    (synopsis "Unified Framework for Data Quality Control")
    (description
     "An easy framework to set a quality control workflow on a dataset.  Includes a
various range of functions that allow to establish an adaptable data quality
control.")
    (license license:expat)))

(define-public r-quadvar
  (package
    (name "r-quadvar")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadVAR" version))
       (sha256
        (base32 "1s0qlc6ji2345y72p0g4ng4qnr3d4kix1k3b1anva949mr737ix3"))))
    (properties `((upstream-name . "quadVAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shinythemes
                             r-shiny
                             r-rlang
                             r-ramp
                             r-qgraph
                             r-ncvreg
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/Sciurus365/quadVAR")
    (synopsis "Quadratic Vector Autoregression")
    (description
     "Estimate quadratic vector autoregression models with the strong hierarchy using
the Regularization Algorithm under Marginality Principle (RAMP) by Hao et al.
(2018) <doi:10.1080/01621459.2016.1264956>, compare the performance with linear
models, and construct networks with partial derivatives.")
    (license license:gpl3+)))

(define-public r-quadtree
  (package
    (name "r-quadtree")
    (version "0.1.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadtree" version))
       (sha256
        (base32 "15i68ykbr0ld8cfcha1ywf4lmsf7zpgi7qsn2rpf44k92fp6hzc7"))))
    (properties `((upstream-name . "quadtree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dfriend21/quadtree/")
    (synopsis "Region Quadtrees for Spatial Data")
    (description
     "This package provides functionality for working with raster-like quadtrees (also
called âregion quadtreesâ), which allow for variable-sized cells.  The
package allows for flexibility in the quadtree creation process.  Several
functions defining how to split and aggregate cells are provided, and custom
functions can be written for both of these processes.  In addition, quadtrees
can be created using other quadtrees as âtemplatesâ, so that the new
quadtree's structure is identical to the template quadtree.  The package also
includes functionality for modifying quadtrees, querying values, saving
quadtrees to a file, and calculating least-cost paths using the quadtree as a
resistance surface.")
    (license license:expat)))

(define-public r-quadrupen
  (package
    (name "r-quadrupen")
    (version "0.2-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadrupen" version))
       (sha256
        (base32 "1h05cywpi83saaqg1m8zb49nxn9ablzb8152yd5rynp877cc636h"))))
    (properties `((upstream-name . "quadrupen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-ggplot2))
    (home-page "https://github.com/jchiquet/quadrupenCRAN")
    (synopsis "Sparsity by Worst-Case Quadratic Penalties")
    (description
     "Fits classical sparse regression models with efficient active set algorithms by
solving quadratic problems as described by Grandvalet, Chiquet and Ambroise
(2017) <doi:10.48550/@code{arXiv.1210.2077>}.  Also provides a few methods for
model selection purpose (cross-validation, stability selection).")
    (license license:gpl3+)))

(define-public r-quadroot
  (package
    (name "r-quadroot")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuadRoot" version))
       (sha256
        (base32 "1ixh4ikp8pqa7py4di9fgmi5rhjgsvh57j2f59g6xdcyl068c3g6"))))
    (properties `((upstream-name . "QuadRoot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=QuadRoot")
    (synopsis "Quadratic Root for any Quadratic Equation")
    (description
     "It will assist the user to find simple quadratic roots from any quadratic
equation.")
    (license license:gpl2)))

(define-public r-quadratik
  (package
    (name "r-quadratik")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QuadratiK" version))
       (sha256
        (base32 "1f49hx9a5clif0d144k3vlkf101v1rasa6ayi7yxsw4xln5ifk59"))))
    (properties `((upstream-name . "QuadratiK")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sn
                             r-scatterplot3d
                             r-rrcov
                             r-rlecuyer
                             r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-moments
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=QuadratiK")
    (synopsis
     "Collection of Methods Constructed using Kernel-Based Quadratic Distances")
    (description
     "It includes test for multivariate normality, test for uniformity on the
d-dimensional Sphere, non-parametric two- and k-sample tests, random generation
of points from the Poisson kernel-based density and clustering algorithm for
spherical data.  For more information see Saraceno G., Markatou M., Mukhopadhyay
R. and Golzy M. (2024) <doi:10.48550/@code{arXiv.2402.02290>} Markatou, M. and
Saraceno, G. (2024) <doi:10.48550/@code{arXiv.2407.16374>}, Ding, Y., Markatou,
M. and Saraceno, G. (2023) <doi:10.5705/ss.202022.0347>, and Golzy, M. and
Markatou, M. (2020) <doi:10.1080/10618600.2020.1740713>.")
    (license license:gpl3+)))

(define-public r-quadraticsd
  (package
    (name "r-quadraticsd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadraticSD" version))
       (sha256
        (base32 "07v71anh0kz898x6j677bxx5lyarc4r0z1j0vx501ffi38icc1f0"))))
    (properties `((upstream-name . "quadraticSD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-ggplot2))
    (home-page "https://cran.r-project.org/package=quadraticSD")
    (synopsis "Visualizing the SD using a Quadratic Curve")
    (description
     "Given a dataset, the user is invited to utilize the Empirical Cumulative
Distribution Function (ECDF) to guess interactively the mean and the mean
deviation.  Thereafter, using the quadratic curve the user can guess the Root
Mean Squared Deviation (RMSD) and visualize the standard deviation (SD).  For
details, see Sarkar and Rashid (2019)<doi:10.3126/njs.v3i0.25574>, Have You Seen
the Standard Deviaton?, Nepalese Journal of Statistics, Vol.  3, 1-10.")
    (license license:gpl3)))

(define-public r-quadprogxt
  (package
    (name "r-quadprogxt")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadprogXT" version))
       (sha256
        (base32 "0jpv30i84n74bchg676vy62wzdlqidk3p51vnnfrdaqg77rs6zyr"))))
    (properties `((upstream-name . "quadprogXT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quadprog))
    (home-page "https://cran.r-project.org/package=quadprogXT")
    (synopsis "Quadratic Programming with Absolute Value Constraints")
    (description
     "Extends the quadprog package to solve quadratic programs with absolute value
constraints and absolute values in the objective function.")
    (license license:gpl2+)))

(define-public r-quadmesh
  (package
    (name "r-quadmesh")
    (version "0.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadmesh" version))
       (sha256
        (base32 "0af795r29976ir0ma48chmlm17001xg5wd29waz356cfhinzs2nk"))))
    (properties `((upstream-name . "quadmesh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp
                             r-scales
                             r-reproj
                             r-raster
                             r-png
                             r-palr
                             r-gridbase
                             r-geometry))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hypertidy/quadmesh")
    (synopsis "Quadrangle Mesh")
    (description
     "Create surface forms from matrix or raster data for flexible plotting and
conversion to other mesh types.  The functions quadmesh or triangmesh produce a
continuous surface as a mesh3d object as used by the rgl package.  This is used
for plotting raster data in 3D (optionally with texture), and allows the
application of a map projection without data loss and many processing
applications that are restricted by inflexible regular grid rasters.  There are
discrete forms of these continuous surfaces available with dquadmesh and
dtriangmesh functions.")
    (license license:gpl3)))

(define-public r-quadmatrix
  (package
    (name "r-quadmatrix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadmatrix" version))
       (sha256
        (base32 "0nngrvvbalmrr6g9bq9f5qrllvwfq5p1b9yhs4zb098s3wga8jms"))))
    (properties `((upstream-name . "quadmatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixcalc r-geigen))
    (home-page "https://cran.r-project.org/package=quadmatrix")
    (synopsis "Solving Quadratic Matrix Equations")
    (description
     "Given inputs A,B and C, this package solves the matrix equation A*X^2 - B*X - C
= 0.")
    (license license:gpl2)))

(define-public r-quadkeyr
  (package
    (name "r-quadkeyr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadkeyr" version))
       (sha256
        (base32 "1cyp084d0kjl1p9zqlp0wq5bpqvkz5hk6ls9zvn48kwjc0dmav06"))))
    (properties `((upstream-name . "quadkeyr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stars
                             r-shiny
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-lubridate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/quadkeyr/")
    (synopsis "Generate Raster Images from QuadKey-Identified Datasets")
    (description
     "This package provides a set of functions of increasing complexity allows users
to (1) convert @code{QuadKey-identified} datasets, based on Microsoft's Bing
Maps Tile System', into Simple Features data frames, (2) transform Simple
Features data frames into rasters, and (3) process multiple Meta ('Facebook')
@code{QuadKey-identified} human mobility files directly into raster files.  For
more details, see DâAndrea et al. (2024) <doi:10.21105/joss.06500>.")
    (license license:expat)))

(define-public r-quadform
  (package
    (name "r-quadform")
    (version "0.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadform" version))
       (sha256
        (base32 "0w01v688xfb9zl7yr2prr9hwpylbx2cc8qwidxkzyzxzk21ywdn3"))))
    (properties `((upstream-name . "quadform")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mathjaxr))
    (home-page "https://github.com/RobinHankin/quadform")
    (synopsis "Efficient Evaluation of Quadratic Forms")
    (description
     "This package provides a range of quadratic forms are evaluated, using efficient
methods.  Unnecessary transposes are not performed.  Complex values are handled
consistently.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-quadcleanr
  (package
    (name "r-quadcleanr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "quadcleanR" version))
       (sha256
        (base32 "1kiadc6wwq89yb6pdld646afqhh7i3xs1f667vab3svygfqn670x"))))
    (properties `((upstream-name . "quadcleanR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DominiqueMaucieri/quadcleanR")
    (synopsis "Cleanup and Visualization of Quadrat Data")
    (description
     "This package provides a tool that can be customized to aid in the clean up of
ecological data collected using quadrats and can crop quadrats to ensure
comparability between quadrats collected under different methodologies.")
    (license license:gpl3+)))

(define-public r-qtwacademic
  (package
    (name "r-qtwacademic")
    (version "2022.12.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtwAcademic" version))
       (sha256
        (base32 "1llckj25x2wr3g3wa1m43fqa6v9ddyf444wbwwjdfwc9ix9j5fkj"))))
    (properties `((upstream-name . "qtwAcademic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fs))
    (native-inputs (list r-knitr))
    (home-page "https://andreaczhang.github.io/qtwAcademic/")
    (synopsis "'Quarto' Website Templates for Academics")
    (description
     "This package provides three Quarto website templates as an R project, which are
commonly used by academics.  Templates for personal websites and course/workshop
websites are included, as well as a template with minimal content for
customization.")
    (license license:expat)))

(define-public r-qtools
  (package
    (name "r-qtools")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qtools" version))
       (sha256
        (base32 "02nda27829ckxzicvrn5iy70aypbgnihck0sc3ln0cmc29sj3fyl"))))
    (properties `((upstream-name . "Qtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-quantreg
                             r-quantdr
                             r-numderiv
                             r-np
                             r-matrix
                             r-mass
                             r-gtools
                             r-glmx
                             r-corpcor
                             r-conquer
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Qtools")
    (synopsis "Utilities for Quantiles")
    (description
     "This package provides functions for unconditional and conditional quantiles.
These include methods for transformation-based quantile regression,
quantile-based measures of location, scale and shape, methods for quantiles of
discrete variables, quantile-based multiple imputation, restricted quantile
regression, directional quantile classification, and quantile ratio regression.
A vignette is given in Geraci (2016, The R Journal) <doi:10.32614/RJ-2016-037>
and included in the package.")
    (license license:gpl2+)))

(define-public r-qtocen
  (package
    (name "r-qtocen")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTOCen" version))
       (sha256
        (base32 "0wlbxk1rd56k02jf3pfzbx6xx5mmf6sb7gvds0067cvb7m42ghcr"))))
    (properties `((upstream-name . "QTOCen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rgenoud r-rdpack r-quantreg
                             r-matrixmodels))
    (home-page "https://cran.r-project.org/package=QTOCen")
    (synopsis "Quantile-Optimal Treatment Regimes with Censored Data")
    (description
     "This package provides methods for estimation of mean- and quantile-optimal
treatment regimes from censored data.  Specifically, we have developed distinct
functions for three types of right censoring for static treatment using quantile
criterion: (1) independent/random censoring, (2) treatment-dependent random
censoring, and (3) covariates-dependent random censoring.  It also includes a
function to estimate quantile-optimal dynamic treatment regimes for independent
censored data.  Finally, this package also includes a simulation data generative
model of a dynamic treatment experiment proposed in literature.")
    (license license:gpl2+)))

(define-public r-qtlrel
  (package
    (name "r-qtlrel")
    (version "1.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTLRel" version))
       (sha256
        (base32 "1brxlvqlcax0f5l0bnc9cirn2v6xwhb851cvzkwrgsxi4m7xn839"))))
    (properties `((upstream-name . "QTLRel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lattice r-gdata))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=QTLRel")
    (synopsis
     "Tools for Mapping of Quantitative Traits of Genetically Related Individuals and Calculating Identity Coefficients from Pedigrees")
    (description
     "This software provides tools for quantitative trait mapping in populations such
as advanced intercross lines where relatedness among individuals should not be
ignored.  It can estimate background genetic variance components, impute missing
genotypes, simulate genotypes, perform a genome scan for putative quantitative
trait loci (QTL), and plot mapping results.  It also has functions to calculate
identity coefficients from pedigrees, especially suitable for pedigrees that
consist of a large number of generations, or estimate identity coefficients from
genotypic data in certain circumstances.")
    (license license:gpl2+)))

(define-public r-qtlpoly
  (package
    (name "r-qtlpoly")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlpoly" version))
       (sha256
        (base32 "1lcfb19akddxljwvgsryjvhks0lqkdg7f1br1l2szd6qyd4mmdvs"))))
    (properties `((upstream-name . "qtlpoly")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlrsim
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-quadprog
                             r-nlme
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-mappoly
                             r-gtools
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-compquadform
                             r-abind))
    (home-page "https://gabrielgesteira.github.io/QTLpoly/")
    (synopsis "Random-Effect Multiple QTL Mapping in Autopolyploids")
    (description
     "This package performs random-effect multiple interval mapping (REMIM) in
full-sib families of autopolyploid species based on restricted maximum
likelihood (REML) estimation and score statistics, as described in Pereira et
al. (2020) <doi:10.1534/genetics.120.303080>.")
    (license license:gpl3)))

(define-public r-qtlnet
  (package
    (name "r-qtlnet")
    (version "1.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlnet" version))
       (sha256
        (base32 "0jdf3hyzas0lyv2v4gqai9mhh7218a1mvm0nlwv9hfdbij0hi84v"))))
    (properties `((upstream-name . "qtlnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sem r-qtl r-pcalg r-igraph r-graph))
    (home-page "http://www.stat.wisc.edu/~yandell/sysgen")
    (synopsis "Causal Inference of QTL Networks")
    (description
     "This package provides functions to Simultaneously Infer Causal Graphs and
Genetic Architecture.  Includes acyclic and cyclic graphs for data from an
experimental cross with a modest number (<10) of phenotypes driven by a few
genetic loci (QTL).  Chaibub Neto E, Keller MP, Attie AD, Yandell BS (2010)
Causal Graphical Models in Systems Genetics: a unified framework for joint
inference of causal network and genetic architecture for correlated phenotypes.
Annals of Applied Statistics 4: 320-339. <doi:10.1214/09-AOAS288>.")
    (license license:gpl2+)))

(define-public r-qtlhot
  (package
    (name "r-qtlhot")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlhot" version))
       (sha256
        (base32 "0gf0fsq91g830vqg5kz01zznm40qpjncy964ccvmms3i6d3hxd9m"))))
    (properties `((upstream-name . "qtlhot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qtl r-mnormt r-corpcor))
    (home-page "http://www.stat.wisc.edu/~yandell/statgen")
    (synopsis "Inference for QTL Hotspots")
    (description
     "This package provides functions to infer co-mapping trait hotspots and causal
models.  Chaibub Neto E, Keller MP, Broman AF, Attie AD, Jansen RC, Broman KW,
Yandell BS (2012) Quantile-based permutation thresholds for QTL hotspots.
Genetics 191 : 1355-1365. <doi:10.1534/genetics.112.139451>.  Chaibub Neto E,
Broman AT, Keller MP, Attie AD, Zhang B, Zhu J, Yandell BS (2013) Modeling
causality for pairs of phenotypes in system genetics.  Genetics 193 : 1003-1013.
<doi:10.1534/genetics.112.147124>.")
    (license license:gpl2+)))

(define-public r-qtlemm
  (package
    (name "r-qtlemm")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTLEMM" version))
       (sha256
        (base32 "10dn9am7qhkv5xy1jb9sx1x9l27q9632f678bq94bgid9g43xlf8"))))
    (properties `((upstream-name . "QTLEMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-gtools))
    (home-page "https://github.com/py-chung/QTLEMM")
    (synopsis "QTL EM Algorithm Mapping and Hotspots Detection")
    (description
     "For QTL mapping, this package comprises several functions designed to execute
diverse tasks, such as simulating or analyzing data, calculating significance
thresholds, and visualizing QTL mapping results.  The single-QTL or multiple-QTL
method, which enables the fitting and comparison of various statistical models,
is employed to analyze the data for estimating QTL parameters.  The models
encompass linear regression, permutation tests, normal mixture models, and
truncated normal mixture models.  The Gaussian stochastic process is utilized to
compute significance thresholds for QTL detection on a genetic linkage map
within experimental populations.  Two types of data, complete genotyping, and
selective genotyping data from various experimental populations, including
backcross, F2, recombinant inbred (RI) populations, and advanced intercrossed
(AI) populations, are considered in the QTL mapping analysis.  For QTL hotspot
detection, statistical methods can be developed based on either utilizing
individual-level data or summarized data.  We have proposed a statistical
framework capable of handling both individual-level data and summarized QTL data
for QTL hotspot detection.  Our statistical framework can overcome the
underestimation of thresholds resulting from ignoring the correlation structure
among traits.  Additionally, it can identify different types of hotspots with
minimal computational cost during the detection process.  Here, we endeavor to
furnish the R codes for our QTL mapping and hotspot detection methods, intended
for general use in genes, genomics, and genetics studies.  The QTL mapping
methods for the complete and selective genotyping designs are based on the
multiple interval mapping (MIM) model proposed by Kao, C.-H. , Z.-B. Zeng and R.
D. Teasdale (1999) <doi: 10.1534/genetics.103.021642> and H.-I Lee, H.-A. Ho and
C.-H. Kao (2014) <doi: 10.1534/genetics.114.168385>, respectively.  The QTL
hotspot detection analysis is based on the method by Wu, P.-Y., M.-.H. Yang, and
C.-H. Kao (2021) <doi: 10.1093/g3journal/jkab056>.")
    (license license:gpl2)))

(define-public r-qtldesign
  (package
    (name "r-qtldesign")
    (version "0.953")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlDesign" version))
       (sha256
        (base32 "1lgdmkvmakad7w40pm79gdas1zraz2rcymdsysas0hyfvwxyly95"))))
    (properties `((upstream-name . "qtlDesign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.senresearch.org")
    (synopsis "Design of QTL (Quantitative Trait Locus) Experiments")
    (description
     "Design of QTL (quantitative trait locus) experiments involves choosing which
strains to cross, the type of cross, genotyping strategies, phenotyping
strategies, and the number of progeny to raise and phenotype.  This package
provides tools to help make such choices.  Sen and others (2007)
<doi:10.1007/s00335-006-0090-y>.")
    (license license:gpl3)))

(define-public r-qtlcharts
  (package
    (name "r-qtlcharts")
    (version "0.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlcharts" version))
       (sha256
        (base32 "1a1lafr40a9rd9wms9jkjyxbm9351pphdbgmy2vlx6bqhk35y2dg"))))
    (properties `((upstream-name . "qtlcharts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-qtl r-htmlwidgets))
    (native-inputs (list esbuild))
    (home-page "https://kbroman.org/qtlcharts/")
    (synopsis "Interactive Graphics for QTL Experiments")
    (description
     "Web-based interactive charts (using D3.js) for the analysis of experimental
crosses to identify genetic loci (quantitative trait loci, QTL) contributing to
variation in quantitative traits.  Broman (2015)
<doi:10.1534/genetics.114.172742>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-qtlc
  (package
    (name "r-qtlc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlc" version))
       (sha256
        (base32 "17ij4alx4qg556b5kq7qsjygj5jf8iyx1f0v52pvx1z2sm6nppww"))))
    (properties `((upstream-name . "qtlc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tiff r-rgl r-plot3d))
    (home-page "https://cran.r-project.org/package=qtlc")
    (synopsis "Densitometric Analysis of Thin-Layer Chromatography Plates")
    (description
     "Densitometric evaluation of the photo-archived quantitative thin-layer
chromatography (TLC) plates.")
    (license license:gpl2)))

(define-public r-qtlbook
  (package
    (name "r-qtlbook")
    (version "0.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtlbook" version))
       (sha256
        (base32 "1dh2x83kj57sv61g5c63ma1bim1v6lg08z35pwv8l8zjplm02xc7"))))
    (properties `((upstream-name . "qtlbook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://rqtl.org/book/")
    (synopsis "Datasets for the R/qtl Book")
    (description
     "Datasets for the book, A Guide to QTL Mapping with R/qtl.  Broman and Sen (2009)
<doi:10.1007/978-0-387-92125-9>.")
    (license license:gpl3)))

(define-public r-qtl2pleio
  (package
    (name "r-qtl2pleio")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtl2pleio" version))
       (sha256
        (base32 "0az71vgj1gv7rfz0hnc9rysh49ak2pnkvmih5mwmymr4an84c34k"))))
    (properties `((upstream-name . "qtl2pleio")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-rcppeigen
                             r-rcpp
                             r-mass
                             r-magrittr
                             r-ggplot2
                             r-gemma2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fboehm/qtl2pleio")
    (synopsis "Testing Pleiotropy in Multiparental Populations")
    (description
     "We implement an adaptation of Jiang & Zeng's (1995)
<https://www.genetics.org/content/140/3/1111> likelihood ratio test for testing
the null hypothesis of pleiotropy against the alternative hypothesis, two
separate quantitative trait loci.  The test differs from that in Jiang & Zeng
(1995) <https://www.genetics.org/content/140/3/1111> and that in Tian et al.
(2016) <doi:10.1534/genetics.115.183624> in that our test accommodates
multiparental populations.")
    (license license:expat)))

(define-public r-qtl2pattern
  (package
    (name "r-qtl2pattern")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtl2pattern" version))
       (sha256
        (base32 "12ysbqcf7bq1ibdyznlzc3kg71k7vd6cgy9xgmmhmdv8hkhdlf26"))))
    (properties `((upstream-name . "qtl2pattern")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-qtl2fst
                             r-qtl2
                             r-ggplot2
                             r-fst
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/byandell/qtl2pattern")
    (synopsis "Pattern Support for 'qtl2' Package")
    (description
     "Routines in qtl2 to study allele patterns in quantitative trait loci (QTL)
mapping over a chromosome.  Useful in crosses with more than two alleles to
identify how sets of alleles, genetically different strands at the same locus,
have different response levels.  Plots show profiles over a chromosome.  Can
handle multiple traits together.  See <https://github.com/byandell/qtl2pattern>.")
    (license license:gpl3)))

(define-public r-qtl2ggplot
  (package
    (name "r-qtl2ggplot")
    (version "1.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtl2ggplot" version))
       (sha256
        (base32 "1a51p184xsswiyswj0ww53sjbqr2cqfd9by5d5qq3fh4fkn1d6l4"))))
    (properties `((upstream-name . "qtl2ggplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-rcpp
                             r-rcolorbrewer
                             r-qtl2
                             r-purrr
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/byandell-sysgen/qtl2ggplot")
    (synopsis "Data Visualization for QTL Experiments")
    (description
     "This package provides functions to plot QTL (quantitative trait loci) analysis
results and related diagnostics.  Part of qtl2', an upgrade of the qtl package
to better handle high-dimensional data and complex cross designs.")
    (license license:gpl3)))

(define-public r-qtl2fst
  (package
    (name "r-qtl2fst")
    (version "0.30")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtl2fst" version))
       (sha256
        (base32 "1n1abgqw5q0l731ypzl02aar8n2hwp6japwhwijm0mh3zwfppb8n"))))
    (properties `((upstream-name . "qtl2fst")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qtl2 r-fst))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rqtl/qtl2fst")
    (synopsis "Database Storage of Genotype Probabilities for QTL Mapping")
    (description
     "Uses the fst package to store genotype probabilities on disk for the qtl2
package.  These genotype probabilities are a central data object for mapping
quantitative trait loci (QTL), but they can be quite large.  The facilities in
this package enable the genotype probabilities to be stored on disk, leading to
reduced memory usage with only a modest increase in computation time.")
    (license license:gpl3)))

(define-public r-qtl2convert
  (package
    (name "r-qtl2convert")
    (version "0.30")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtl2convert" version))
       (sha256
        (base32 "1rpg74gblh30qy0byxvyhlrimcgx7ml5jn7dxs032my7pa58mspf"))))
    (properties `((upstream-name . "qtl2convert")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-qtl2 r-qtl))
    (home-page "https://kbroman.org/qtl2/")
    (synopsis "Convert Data among QTL Mapping Packages")
    (description
     "This package provides functions to convert data structures among the qtl2',
qtl', and DOQTL packages for mapping quantitative trait loci (QTL).")
    (license license:gpl3)))

(define-public r-qtl-gcimapping-gui
  (package
    (name "r-qtl-gcimapping-gui")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTL.gCIMapping.GUI" version))
       (sha256
        (base32 "0a155vl869i3li2i67b89p056x50ycqp9yk0ll5g3fp3xcdl80zs"))))
    (properties `((upstream-name . "QTL.gCIMapping.GUI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-rcpp
                             r-qtl-gcimapping
                             r-qtl
                             r-openxlsx
                             r-mass
                             r-glmnet
                             r-foreach
                             r-doparallel
                             r-data-table))
    (home-page "https://cran.r-project.org/package=QTL.gCIMapping.GUI")
    (synopsis
     "QTL Genome-Wide Composite Interval Mapping with Graphical User Interface")
    (description
     "Conduct multiple quantitative trait loci (QTL) mapping under the framework of
random-QTL-effect linear mixed model.  First, each position on the genome is
detected in order to obtain a negative logarithm P-value curve against genome
position.  Then, all the peaks on each effect (additive or dominant) curve are
viewed as potential QTL, all the effects of the potential QTL are included in a
multi-QTL model, their effects are estimated by empirical Bayes in doubled
haploid population or by adaptive lasso in F2 population, and true QTL are
identified by likelihood radio test.  See Wen et al. (2018)
<doi:10.1093/bib/bby058>.")
    (license license:gpl2+)))

(define-public r-qtl-gcimapping
  (package
    (name "r-qtl-gcimapping")
    (version "3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTL.gCIMapping" version))
       (sha256
        (base32 "17f2xmgklbi8kicv7v951zm3bf1q4bdx9lcfbxpac3i7xm985fgr"))))
    (properties `((upstream-name . "QTL.gCIMapping")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-readxl
                             r-rcpp
                             r-qtl
                             r-openxlsx
                             r-mass
                             r-lars
                             r-glmnet
                             r-foreach
                             r-doparallel
                             r-data-table))
    (home-page "https://cran.r-project.org/package=QTL.gCIMapping")
    (synopsis "QTL Genome-Wide Composite Interval Mapping")
    (description
     "Conduct multiple quantitative trait loci (QTL) and QTL-by-environment
interaction (QEI) mapping via ordinary or compressed variance component mixed
models with random- or fixed QTL/QEI effects.  First, each position on the
genome is detected in order to obtain a negative logarithm P-value curve against
genome position.  Then, all the peaks on each effect (additive or dominant)
curve or on each locus curve are viewed as potential main-effect QTLs and QEIs,
all their effects are included in a multi-locus model, their effects are
estimated by both least angle regression and empirical Bayes (or adaptive lasso)
in backcross and F2 populations, and true QTLs and QEIs are identified by
likelihood radio test.  See Zhou et al. (2022) <doi:10.1093/bib/bbab596> and Wen
et al. (2018) <doi:10.1093/bib/bby058>.")
    (license license:gpl2+)))

(define-public r-qtkit
  (package
    (name "r-qtkit")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qtkit" version))
       (sha256
        (base32 "0qzi66i64zq12hll3mwj4cc6kg3whym7bzh8jlqxhvw7afm1yxlp"))))
    (properties `((upstream-name . "qtkit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-rlang
                             r-openai
                             r-matrix
                             r-knitr
                             r-kableextra
                             r-gutenbergr
                             r-ggplot2
                             r-dplyr
                             r-chromote))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qtkit")
    (synopsis "Quantitative Text Kit")
    (description
     "Support package for the textbook \"An Introduction to Quantitative Text Analysis
for Linguists: Reproducible Research Using R\" (Francom, 2024)
<doi:10.4324/9781003393764>.  Includes functions to acquire, clean, and analyze
text data as well as functions to document and share the results of text
analysis.  The package is designed to be used in conjunction with the book, but
can also be used as a standalone package for text analysis.")
    (license license:gpl3+)))

(define-public r-qte-rd
  (package
    (name "r-qte-rd")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QTE.RD" version))
       (sha256
        (base32 "13cs1l2x0lz36zpy8bpz0jwgq5yg4rm7vvjsaadzli5drky6ymip"))))
    (properties `((upstream-name . "QTE.RD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-plotrix))
    (home-page "https://cran.r-project.org/package=QTE.RD")
    (synopsis
     "Quantile Treatment Effects under the Regression Discontinuity Design")
    (description
     "This package provides comprehensive methods for testing, estimating, and
conducting uniform inference on quantile treatment effects (QTEs) in sharp
regression discontinuity (RD) designs, incorporating covariates and implementing
robust bias correction methods of Qu, Yoon, Perron (2024)
<doi:10.1162/rest_a_01168>.")
    (license license:gpl3+)))

(define-public r-qte
  (package
    (name "r-qte")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qte" version))
       (sha256
        (base32 "1hz3rwsi3w2b1xjigf5s3866djcxdkjz7jwcz0rin22v5h6sql80"))))
    (properties `((upstream-name . "qte")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-texreg
                             r-quantreg
                             r-pbapply
                             r-hmisc
                             r-ggplot2
                             r-formula-tools
                             r-data-table
                             r-bmisc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qte")
    (synopsis "Quantile Treatment Effects")
    (description
     "This package provides several methods for computing the Quantile Treatment
Effect (QTE) and Quantile Treatment Effect on the Treated (QTT).  The main cases
covered are (i) Treatment is randomly assigned, (ii) Treatment is as good as
randomly assigned after conditioning on some covariates (also called conditional
independence or selection on observables) using the methods developed in Firpo
(2007) <doi:10.1111/j.1468-0262.2007.00738.x>, (iii) Identification is based on
a Difference in Differences assumption (several varieties are available in the
package e.g. Athey and Imbens (2006) <doi:10.1111/j.1468-0262.2006.00668.x>
Callaway and Li (2019) <doi:10.3982/QE935>, Callaway, Li, and Oka (2018)
<doi:10.1016/j.jeconom.2018.06.008>).")
    (license license:gpl2)))

(define-public r-qsub
  (package
    (name "r-qsub")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qsub" version))
       (sha256
        (base32 "0ygys183pj420jr9bz13x009qis3qr1aqxgw3l2d4xx3xv90iy3g"))))
    (properties `((upstream-name . "qsub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-ssh
                             r-readr
                             r-random
                             r-purrr
                             r-processx
                             r-pbapply
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/rcannood/qsub")
    (synopsis "Running Commands Remotely on 'Gridengine' Clusters")
    (description
     "Run @code{lapply()} calls in parallel by submitting them to gridengine clusters
using the qsub command.")
    (license license:gpl3)))

(define-public r-qst
  (package
    (name "r-qst")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qst" version))
       (sha256
        (base32 "0f5c4088y9c5fxyy2dyfkp049lnzvys3zyizazxsa82xwkwsbc8a"))))
    (properties `((upstream-name . "qst")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rsqlite
                             r-magrittr
                             r-dplyr
                             r-dbplyr
                             r-dbi))
    (home-page "https://cran.r-project.org/package=qst")
    (synopsis "Store Tables in SQL Database")
    (description
     "This package provides functions for quickly writing (and reading back) a
data.frame to file in SQLite format.  The name stands for *Store Tables using
SQLite'*, or alternatively for *Quick Store Tables* (either way, it could be
pronounced as *Quest*).  For data.frames containing the supported data types it
is intended to work as a drop-in replacement for the @code{write_*()} and
@code{read_*()} functions provided by similar packages.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-qspray
  (package
    (name "r-qspray")
    (version "3.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qspray" version))
       (sha256
        (base32 "0i5sq29zdcvdrmzsd0xxrw200q6nhg8b00n2jwya8hq4al9xq2z6"))))
    (properties `((upstream-name . "qspray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gmp))
    (propagated-inputs (list r-ryacas
                             r-rcpp
                             r-rationalmatrix
                             r-purrr
                             r-partitions
                             r-gmp
                             r-desctools
                             r-bh))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/stla/qspray")
    (synopsis "Multivariate Polynomials with Rational Coefficients")
    (description
     "Symbolic calculation and evaluation of multivariate polynomials with rational
coefficients.  This package is strongly inspired by the spray package.  It
provides a function to compute GrÃ¶bner bases (reference
<doi:10.1007/978-3-319-16721-3>).  It also includes some features for symmetric
polynomials, such as the Hall inner product.  The header file of the C++ code
can be used by other packages.  It provides the templated class Qspray that can
be used to represent and to deal with multivariate polynomials with another type
of coefficients.")
    (license license:gpl3)))

(define-public r-qsplines
  (package
    (name "r-qsplines")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qsplines" version))
       (sha256
        (base32 "0zln3w2qx8ck9631hkq8ig5bc2l55wg5mdp3i0fm9amg8mhzq37i"))))
    (properties `((upstream-name . "qsplines")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-shiny r-rcpp r-onion r-bh))
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/qsplines")
    (synopsis "Quaternions Splines")
    (description
     "This package provides routines to create some quaternions splines: Barry-Goldman
algorithm, De Casteljau algorithm, and Kochanek-Bartels algorithm.  The
implementations are based on the Python library splines'.  Quaternions splines
allow to construct spherical curves.  References: Barry and Goldman
<doi:10.1145/54852.378511>, Kochanek and Bartels <doi:10.1145/800031.808575>.")
    (license license:gpl3)))

(define-public r-qsort
  (package
    (name "r-qsort")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qsort" version))
       (sha256
        (base32 "1xvp29dijfa2207wyw3z09rmffn61fngfy0f00qjk284n1jnnvrg"))))
    (properties `((upstream-name . "qsort")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr r-gridextra r-ggplot2 r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qsort")
    (synopsis "Scoring Q-Sort Data")
    (description
     "Computes scores from Q-sort data, using criteria sorts and derived scales from
subsets of items.  The qsort package includes descriptions and scoring
procedures for four different Q-sets commonly used in developmental psychology
research: Attachment Q-set (version 3.0) (Waters, 1995,
<doi:10.1111/j.1540-5834.1995.tb00214.x>); California Child Q-set (Block and
Block, 1969, <doi:10.1037/0012-1649.21.3.508>); Maternal Behaviour Q-set
(version 3.1) (Pederson et al., 1999,
<https://ir.lib.uwo.ca/cgi/viewcontent.cgi?article=1000&context=psychologypub>);
Preschool Q-set (Baumrind, 1968 revised by Wanda Bronson,
<doi:10.1111/j.1540-5834.1995.tb00214.x>).")
    (license license:gpl3)))

(define-public r-qslice
  (package
    (name "r-qslice")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qslice" version))
       (sha256
        (base32 "0df8988pr0kcz8xdi8sgl99mifs8djzjrannx52n42yck58g5hky"))))
    (properties `((upstream-name . "qslice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qslice")
    (synopsis "Implementations of Various Slice Samplers")
    (description
     "Implementations of the quantile slice sampler of Heiner et al. (2024+, in
preparation) as well as other popular slice samplers are provided.  Helper
functions for specifying pseudo-target distributions are included, both for
diagnostics and for tuning the quantile slice sampler.  Other implemented
methods include the generalized elliptical slice sampler of Nishihara et al.
(2014)<https://jmlr.org/papers/v15/nishihara14a.html}, latent slice sampler of
Li and Walker (2023)<doi:10.1016/j.csda.2022.107652>, and stepping-out slice
sampler of Neal (2003)<doi:10.1214/aos/1056562461>, and independence
Metropolis-Hastings sampler.")
    (license (list license:expat license:asl2.0))))

(define-public r-qsimulatr
  (package
    (name "r-qsimulatr")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qsimulatR" version))
       (sha256
        (base32 "00022yyfwpv7f28isbnqy8001nm6xvxnfb2sbjckl8vbv0sjvs9n"))))
    (properties `((upstream-name . "qsimulatR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HISKP-LQCD/qsimulatR")
    (synopsis "Quantum Computer Simulator")
    (description
     "This package provides a quantum computer simulator framework with up to 24
qubits.  It allows to define general single qubit gates and general controlled
single qubit gates.  For convenience, it currently provides the most common
gates (X, Y, Z, H, Z, S, T, Rx, Ry, Rz, CNOT, SWAP, Toffoli or CCNOT, Fredkin or
CSWAP). @code{qsimulatR} also implements noise models. @code{qsimulatR} supports
plotting of circuits and is able to export circuits to Qiskit
<https://qiskit.org/>, a python package which can be used to run on IBM's
hardware <https://quantum-computing.ibm.com/>.")
    (license license:gpl3)))

(define-public r-qsardata
  (package
    (name "r-qsardata")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QSARdata" version))
       (sha256
        (base32 "0dhldnh0jzzb4assycc0l14s45ymvha48w04jbnr34lrwgr9krh4"))))
    (properties `((upstream-name . "QSARdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://qsardata.r-forge.r-project.org/")
    (synopsis "Quantitative Structure Activity Relationship (QSAR) Data Sets")
    (description
     "Molecular descriptors and outcomes for several public domain data sets.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-qs2
  (package
    (name "r-qs2")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qs2" version))
       (sha256
        (base32 "06h3dm9hkr7g276vir955c0ynlzr82qnj0a1iy6gw8d0wqkis35d"))))
    (properties `((upstream-name . "qs2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringfish r-rcppparallel r-rcpp))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/qsbase/qs2")
    (synopsis "Efficient Serialization of R Objects")
    (description
     "Streamlines and accelerates the process of saving and loading R objects,
improving speed and compression compared to other methods.  The package provides
two compression formats: the qs2 format, which uses R serialization via the C
API while optimizing compression and disk I/O, and the qdata format, featuring
custom serialization for slightly faster performance and better compression.
Additionally, the qs2 format can be directly converted to the standard RDS
format, ensuring long-term compatibility with future versions of R.")
    (license license:gpl3)))

(define-public r-qryflow
  (package
    (name "r-qryflow")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qryflow" version))
       (sha256
        (base32 "03zly94ld976dv1imk4gr9d0n1a2whsxarwxq3an478qckihflq6"))))
    (properties `((upstream-name . "qryflow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://christian-million.github.io/qryflow/")
    (synopsis "Execute Multi-Step 'SQL' Workflows")
    (description
     "Execute multi-step SQL workflows by leveraging specially formatted comments to
define and control execution.  This enables users to mix queries, commands, and
metadata within a single script.  Results are returned as named objects for use
in downstream workflows.")
    (license license:expat)))

(define-public r-qrnn
  (package
    (name "r-qrnn")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrnn" version))
       (sha256
        (base32 "1jacj0ybcbfhll5nvx31h00jm1rlcyzw3kcbxffrmpa9hd1spxql"))))
    (properties `((upstream-name . "qrnn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qrnn")
    (synopsis "Quantile Regression Neural Network")
    (description
     "Fit quantile regression neural network models with optional left censoring,
partial monotonicity constraints, generalized additive model constraints, and
the ability to fit multiple non-crossing quantile functions following Cannon
(2011) <doi:10.1016/j.cageo.2010.07.005> and Cannon (2018)
<doi:10.1007/s00477-018-1573-6>.")
    (license license:gpl2)))

(define-public r-qrnlmm
  (package
    (name "r-qrnlmm")
    (version "4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrNLMM" version))
       (sha256
        (base32 "0ybd3kppzsgwg6wblsaajf12hjgdf51s0n5cnc476drk1x69jh37"))))
    (properties `((upstream-name . "qrNLMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg
                             r-psych
                             r-progress
                             r-mvtnorm
                             r-lqr
                             r-ald))
    (home-page "https://cran.r-project.org/package=qrNLMM")
    (synopsis "Quantile Regression for Nonlinear Mixed-Effects Models")
    (description
     "Quantile regression (QR) for Nonlinear Mixed-Effects Models via the asymmetric
Laplace distribution (ALD).  It uses the Stochastic Approximation of the EM
(SAEM) algorithm for deriving exact maximum likelihood estimates and full
inference result is for the fixed-effects and variance components.  It also
provides prediction and graphical summaries for assessing the algorithm
convergence and fitting results.")
    (license license:gpl2+)))

(define-public r-qrng
  (package
    (name "r-qrng")
    (version "0.0-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrng" version))
       (sha256
        (base32 "0j46rlxyfahz271hckcr42i437n0vc77bvg5p1fi5zb6pywlxvji"))))
    (properties `((upstream-name . "qrng")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qrng")
    (synopsis "(Randomized) Quasi-Random Number Generators")
    (description
     "Functionality for generating (randomized) quasi-random numbers in high
dimensions.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-qrmtools
  (package
    (name "r-qrmtools")
    (version "0.0-17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrmtools" version))
       (sha256
        (base32 "1vv9y6mmvqnlimghw3dl873r4l47imwcp2x58yzrn53fa2y7b6mi"))))
    (properties `((upstream-name . "qrmtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-xts
                             r-rugarch
                             r-quantmod
                             r-quandl
                             r-lattice
                             r-adgoftest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qrmtools")
    (synopsis "Tools for Quantitative Risk Management")
    (description
     "This package provides functions and data sets for reproducing selected results
from the book \"Quantitative Risk Management: Concepts, Techniques and Tools\".
Furthermore, new developments and auxiliary functions for Quantitative Risk
Management practice.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file LICENCE")))))

(define-public r-qrmix
  (package
    (name "r-qrmix")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrmix" version))
       (sha256
        (base32 "1r695d9bmmngvblh9jj0rnjymdaln9w0jywz51wla0bdssssf845"))))
    (properties `((upstream-name . "qrmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-mass))
    (home-page "https://cran.r-project.org/package=qrmix")
    (synopsis "Quantile Regression Mixture Models")
    (description
     "This package implements the robust algorithm for fitting finite mixture models
based on quantile regression proposed by Emir et al., 2017 (unpublished).")
    (license license:lgpl2.0+)))

(define-public r-qrmdata
  (package
    (name "r-qrmdata")
    (version "2024-03-04-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrmdata" version))
       (sha256
        (base32 "0982sm22dshg70sk62jgrsy5rryv0bb5sdhnkq6icg292z6p3mix"))))
    (properties `((upstream-name . "qrmdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xts))
    (home-page "https://cran.r-project.org/package=qrmdata")
    (synopsis "Data Sets for Quantitative Risk Management Practice")
    (description
     "Various data sets (stocks, stock indices, constituent data, FX, zero-coupon bond
yield curves, volatility, commodities) for Quantitative Risk Management
practice.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-qrm
  (package
    (name "r-qrm")
    (version "0.4-35")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QRM" version))
       (sha256
        (base32 "05b4jp451d7qk45s1bhp2q71bfaaqkazyc69aiss9h3qnjng2zrj"))))
    (properties `((upstream-name . "QRM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-rcpp
                             r-numderiv
                             r-mvtnorm
                             r-mgcv
                             r-matrix
                             r-gsl))
    (home-page "https://cran.r-project.org/package=QRM")
    (synopsis
     "Provides R-Language Code to Examine Quantitative Risk Management Concepts")
    (description
     "This package provides functions/methods to accompany the book Quantitative Risk
Management: Concepts, Techniques and Tools by Alexander J. @code{McNeil},
Ruediger Frey, and Paul Embrechts.")
    (license license:gpl2+)))

(define-public r-qrlmm
  (package
    (name "r-qrlmm")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrLMM" version))
       (sha256
        (base32 "0j42akh84jawjq4dslqcf0yg5k4r6dz8psgv812l4qmrl3s9frnz"))))
    (properties `((upstream-name . "qrLMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-psych r-mvtnorm r-lqr r-ald))
    (home-page "https://cran.r-project.org/package=qrLMM")
    (synopsis "Quantile Regression for Linear Mixed-Effects Models")
    (description
     "Quantile regression (QR) for Linear Mixed-Effects Models via the asymmetric
Laplace distribution (ALD).  It uses the Stochastic Approximation of the EM
(SAEM) algorithm for deriving exact maximum likelihood estimates and full
inference results for the fixed-effects and variance components.  It also
provides graphical summaries for assessing the algorithm convergence and fitting
results.")
    (license license:gpl2+)))

(define-public r-qrlabelr
  (package
    (name "r-qrlabelr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrlabelr" version))
       (sha256
        (base32 "1bv76d3fkficcaqg4kzkkxjq1p24c6hxd25jyfia96nkmxyds44m"))))
    (properties `((upstream-name . "qrlabelr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uuid
                             r-shinywidgets
                             r-shinyjs
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-readxl
                             r-reactable
                             r-raster
                             r-qrencoder
                             r-qbms
                             r-purrr
                             r-ggplot2
                             r-dplyr
                             r-desplot
                             r-bslib
                             r-assertthat
                             r-argonr
                             r-argondash))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qrlabelr")
    (synopsis
     "Generate Machine- And Human-Readable Plot Labels for Experiments")
    (description
     "This package provides a no-frills open-source solution for designing plot labels
affixed with QR codes.  It features @code{EasyQrlabelr}', a
@code{BrAPI-compliant} shiny app that simplifies the process of plot label
design for non-R users.  It builds on the methods described by Wu et al. (2020)
<doi:10.1111/2041-210X.13405>.")
    (license license:gpl3+)))

(define-public r-qrjoint
  (package
    (name "r-qrjoint")
    (version "2.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrjoint" version))
       (sha256
        (base32 "0dvz5adawy143r0ddgrblzac76igwmngnblr6vq57sxlvj1nsm7h"))))
    (properties `((upstream-name . "qrjoint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-matrix r-kernlab r-coda))
    (home-page "https://cran.r-project.org/package=qrjoint")
    (synopsis "Joint Estimation in Linear Quantile Regression")
    (description
     "Joint estimation of quantile specific intercept and slope parameters in a linear
regression setting.")
    (license license:gpl2)))

(define-public r-qrisk3
  (package
    (name "r-qrisk3")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QRISK3" version))
       (sha256
        (base32 "1qyipdmw7ygxlclnyf726bjkirskkkf4cygyv0y421c9x7dgznij"))))
    (properties `((upstream-name . "QRISK3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QRISK3")
    (synopsis "10-Year Cardiovascular Disease Risk Calculator (QRISK3 2017)")
    (description
     "This function aims to calculate risk of developing cardiovascular disease of
individual patients in next 10 years.  This unofficial package was based on
published open-sourced free risk prediction algorithm QRISK3-2017
<https://qrisk.org/src.php>.")
    (license license:gpl3)))

(define-public r-qris
  (package
    (name "r-qris")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qris" version))
       (sha256
        (base32 "0nx4x4ywgwg55fpv9cr30r09in4rzm6070fm0g88qpvgvrihs9a6"))))
    (properties `((upstream-name . "qris")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-stringr
                             r-rcpparmadillo
                             r-rcpp
                             r-quantreg
                             r-nleqslv
                             r-ggplot2))
    (home-page "https://github.com/Kyuhyun07/qris")
    (synopsis
     "Quantile Regression Model for Residual Lifetime Using an Induced Smoothing Approach")
    (description
     "This package provides a collection of functions is provided by this package to
fit quantiles regression models for censored residual lifetimes.  It provides
various options for regression parameters estimation: the induced smoothing
approach (smooth), and L1-minimization (non-smooth).  It also implements the
estimation methods for standard errors of the regression parameters estimates
based on an efficient partial multiplier bootstrap method and robust sandwich
estimator.  Furthermore, a simultaneous procedure of estimating regression
parameters and their standard errors via an iterative updating procedure is
implemented (iterative).  For more details, see Kim, K. H., Caplan, D. J., &
Kang, S. (2022), \"Smoothed quantile regression for censored residual life\",
Computational Statistics, 1-22 <doi:10.1007/s00180-022-01262-z>.")
    (license license:gpl3+)))

(define-public r-qripkg
  (package
    (name "r-qripkg")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QRIpkg" version))
       (sha256
        (base32 "0xqc72p3jm61kifha77c8sfk7b1p7cfdskzkm29w4j06009qd8a8"))))
    (properties `((upstream-name . "QRIpkg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-ggplot2))
    (home-page "https://cran.r-project.org/package=QRIpkg")
    (synopsis "Quantile Regression Index Score")
    (description
     "The @code{QRI_func()} function performs quantile regression analysis using age
and sex as predictors to calculate the Quantile Regression Index (QRI) score for
each individualâs regional brain imaging metrics and then averages across the
regional scores to generate an average tissue specific score for each subject.
The @code{QRI_plot()} is used to plot QRI and generate the normative curves for
individual measurements.")
    (license license:gpl2+)))

(define-public r-qreport
  (package
    (name "r-qreport")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qreport" version))
       (sha256
        (base32 "1szi0fs3mcw9qrgfb0pviyzcvn38824rjdq9sfa1jf3p0j7rysnm"))))
    (properties `((upstream-name . "qreport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-rms
                             r-knitr
                             r-htmltools
                             r-hmisc
                             r-ggplot2
                             r-formula
                             r-data-table))
    (home-page "https://hbiostat.org/R/qreport/")
    (synopsis "Statistical Reporting with 'Quarto'")
    (description
     "This package provides statistical components, tables, and graphs that are useful
in Quarto and RMarkdown reports and that produce Quarto elements for special
formatting such as tabs and marginal notes and graphs.  Some of the functions
produce entire report sections with tabs, e.g., the missing data report created
by @code{missChk()}.  Functions for inserting variables and tables inside
graphviz and mermaid diagrams are included, and so are special clinical trial
graphics for adverse event reporting.")
    (license license:gpl2+)))

(define-public r-qrencoder
  (package
    (name "r-qrencoder")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrencoder" version))
       (sha256
        (base32 "1lg60lg2fiqdw0m228i8pln2p0kqp9f21qmrx6r6rwxifvwlfhv8"))))
    (properties `((upstream-name . "qrencoder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-raster r-png r-base64enc))
    (home-page "http://github.com/hrbrmstr/qrencoder")
    (synopsis "Quick Response Code (QR Code) / Matrix Barcode Creator")
    (description
     "Quick Response codes (QR codes) are a type of matrix bar code and can be used to
authenticate transactions, provide access to multi-factor authentication
services and enable general data transfer in an image.  QR codes use four
standardized encoding modes (numeric, alphanumeric, byte/binary, and kanji) to
efficiently store data.  Matrix barcode generation is performed efficiently in C
via the included libqrencoder library created by Kentaro Fukuchi.")
    (license license:gpl2)))

(define-public r-qregbb
  (package
    (name "r-qregbb")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QregBB" version))
       (sha256
        (base32 "0rihfd2542wpfv43115pkxh233ma1qwkwxivawqs9f4faypyi5mh"))))
    (properties `((upstream-name . "QregBB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg))
    (home-page "https://cran.r-project.org/package=QregBB")
    (synopsis "Block Bootstrap Methods for Quantile Regression in Time Series")
    (description
     "This package implements moving-blocks bootstrap and extended tapered-blocks
bootstrap, as well as smooth versions of each, for quantile regression in time
series.  This package accompanies the paper: Gregory, K. B., Lahiri, S. N., &
Nordman, D. J. (2018).  A smooth block bootstrap for quantile regression with
time series.  The Annals of Statistics, 46(3), 1138-1166.")
    (license license:gpl3)))

(define-public r-qrcode
  (package
    (name "r-qrcode")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrcode" version))
       (sha256
        (base32 "0jzam1wb7mhjr35jq4xplnm3abbvhc0dngn0jaaqz87habd0v9wq"))))
    (properties `((upstream-name . "qrcode")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-assertthat))
    (home-page "https://thierryo.github.io/qrcode/")
    (synopsis "Generate QRcodes with R")
    (description
     "Create static QR codes in R. The content of the QR code is exactly what the user
defines.  We don't add a redirect URL, making it impossible for us to track the
usage of the QR code.  This allows to generate fast, free to use and privacy
friendly QR codes.")
    (license license:gpl3)))

(define-public r-qrcmnp
  (package
    (name "r-qrcmnp")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrcmNP" version))
       (sha256
        (base32 "0637mmg3vvvpblx2ghxi5jis9qiaywkj91n1gcgm2g778p6lric0"))))
    (properties `((upstream-name . "qrcmNP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-qrcm))
    (home-page "https://cran.r-project.org/package=qrcmNP")
    (synopsis
     "Nonlinear and Penalized Quantile Regression Coefficients Modeling")
    (description
     "Nonlinear and Penalized parametric modeling of quantile regression coefficient
functions.  Sottile G, Frumento P, Chiodi M and Bottai M (2020)
<doi:10.1177/1471082X19825523>.")
    (license license:gpl2)))

(define-public r-qrcm
  (package
    (name "r-qrcm")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qrcm" version))
       (sha256
        (base32 "0ci6949nkqhcn8d7mf5wb4c2wlnpi5qj3g7394c1q723grmaj5lh"))))
    (properties `((upstream-name . "qrcm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-pch r-icenreg))
    (home-page "https://cran.r-project.org/package=qrcm")
    (synopsis "Quantile Regression Coefficients Modeling")
    (description
     "Parametric modeling of quantile regression coefficient functions.")
    (license license:gpl2)))

(define-public r-qrank
  (package
    (name "r-qrank")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QRank" version))
       (sha256
        (base32 "1f924r5bf5vjfl12hk1n5m3f94g30f6vmvzq2bn8295dflyndck0"))))
    (properties `((upstream-name . "QRank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg))
    (home-page "https://cran.r-project.org/package=QRank")
    (synopsis "Novel Quantile Regression Approach for eQTL Discovery")
    (description
     "This package provides a Quantile Rank-score based test for the identification of
expression quantitative trait loci.")
    (license license:gpl2+)))

(define-public r-qragadget
  (package
    (name "r-qragadget")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QRAGadget" version))
       (sha256
        (base32 "06ka6n9sh7h8ka6mklbvk8f7sqmz50mk74fjaj1r4l774wribxaq"))))
    (properties `((upstream-name . "QRAGadget")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp
                             r-shinywidgets
                             r-shiny
                             r-scales
                             r-raster
                             r-miniui
                             r-magrittr
                             r-leaflet
                             r-htmlwidgets))
    (home-page "https://github.com/paulgovan/qragadget")
    (synopsis "'Shiny' Gadget for Interactive 'QRA' Visualizations")
    (description
     "Upload raster data and easily create interactive quantitative risk analysis QRA
visualizations.  Select from numerous color palettes, base-maps, and different
configurations.")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-qra
  (package
    (name "r-qra")
    (version "0.2.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qra" version))
       (sha256
        (base32 "0xw6y2ryg7j1j03j7rqllqzvcpwr8w7ixmcgb6lsivq1pja9fqvx"))))
    (properties `((upstream-name . "qra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown
                             r-lme4
                             r-latticeextra
                             r-lattice
                             r-knitr
                             r-ggplot2))
    (native-inputs (list r-rmarkdown r-prettydoc r-knitr r-bookdown))
    (home-page "https://github.com/jhmaindonald/qra")
    (synopsis "Quantal Response Analysis for Dose-Mortality Data")
    (description
     "This package provides functions are provided that implement the use of the
Fieller's formula methodology, for calculating a confidence interval for a ratio
of (commonly, correlated) means.  See Fieller (1954)
<doi:10.1111/j.2517-6161.1954.tb00159.x>.  Here, the application of primary
interest is to studies ofÂ insect mortality response toÂ increasing doses of a
fumigant, or, e.g., to time in coolstorage.  The formula is used to calculate a
confidence interval for the dose or time required to achieve a specified
mortality proportion, commonly 0.5 or 0.99.  Vignettes demonstrate link
functions that may be considered, checks on fitted models, and alternative
choices of error family.  Note in particular the betabinomial error family.  See
also Maindonald, Waddell, and Petry (2001) <doi:10.1016/S0925-5214(01)00082-5>.")
    (license license:gpl3)))

(define-public r-qr-break
  (package
    (name "r-qr-break")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QR.break" version))
       (sha256
        (base32 "0xjmy01wm51qm92jfrwywbngvznyb9sz9yhnb43iih71v4wc8bs9"))))
    (properties `((upstream-name . "QR.break")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg))
    (home-page "https://cran.r-project.org/package=QR.break")
    (synopsis "Structural Breaks in Quantile Regression")
    (description
     "This package provides methods for detecting structural breaks, determining the
number of breaks, and estimating break locations in linear quantile regression,
using one or multiple quantiles, based on Qu (2008) and Oka and Qu (2011).
Applicable to both time series and repeated cross-sectional data.  The main
function is @code{rq.break()}. .  References for detailed theoretical and
empirical explanations: . (1) Qu, Z. (2008). \"Testing for Structural Change in
Regression Quantiles.\" Journal of Econometrics, 146(1), 170-184
<doi:10.1016/j.jeconom.2008.08.006> . (2) Oka, T., and Qu, Z. (2011).
\"Estimating Structural Changes in Regression Quantiles.\" Journal of
Econometrics, 162(2), 248-267 <doi:10.1016/j.jeconom.2011.01.005>.")
    (license license:gpl3+)))

(define-public r-qr
  (package
    (name "r-qr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QR" version))
       (sha256
        (base32 "1xar0mj8s2nb8sks8dzf4wn1axc4rhmhx1qsjn2blsi4i8gfncka"))))
    (properties `((upstream-name . "QR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tinytest))
    (native-inputs (list r-knitr))
    (home-page
     "http://www.netlib.org/lapack/explore-html/df/dc5/group__variants_g_ecomputational_ga3766ea903391b5cf9008132f7440ec7b.html")
    (synopsis "QR Factorization without Pivoting")
    (description
     "This function performs QR factorization without pivoting to a real or complex
matrix.  It is based on Anderson.  E. and ten others (1999) \"LAPACK Users
Guide\".  Third Edition.  SIAM.")
    (license license:gpl3)))

(define-public r-qqvases
  (package
    (name "r-qqvases")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qqvases" version))
       (sha256
        (base32 "1fli4v1slmnwcmzmmfw84sa4mx3xzv3im1q0plb8811sbsgmwdvl"))))
    (properties `((upstream-name . "qqvases")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinythemes r-shiny))
    (home-page "https://cran.r-project.org/package=qqvases")
    (synopsis "Animated Normal Quantile-Quantile Plots")
    (description
     "Presents an explanatory animation of normal quantile-quantile plots based on a
water-filling analogy.  The animation presents a normal QQ plot as the
parametric plot of the water levels in vases defined by two distributions.  The
distributions decorate the axes in the normal QQ plot and are optionally shown
as vases adjacent to the plot.  The package draws QQ plots for several
distributions, either as samples or continuous functions.")
    (license license:gpl2)))

(define-public r-qqtest
  (package
    (name "r-qqtest")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qqtest" version))
       (sha256
        (base32 "1v0qbbp2dpqflpg7yif7hipwdbz27isfyfwcia1ln7z0nnvkjm8c"))))
    (properties `((upstream-name . "qqtest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rwoldford/qqtest")
    (synopsis "Self Calibrating Quantile-Quantile Plots for Visual Testing")
    (description
     "This package provides the function qqtest which incorporates uncertainty in its
qqplot display(s) so that the user might have a better sense of the evidence
against the specified distributional hypothesis.  qqtest draws a quantile
quantile plot for visually assessing whether the data come from a test
distribution that has been defined in one of many ways.  The vertical axis plots
the data quantiles, the horizontal those of a test distribution.  The default
behaviour generates 1000 samples from the test distribution and overlays the
plot with shaded pointwise interval estimates for the ordered quantiles from the
test distribution.  A small number of independently generated exemplar quantile
plots can also be overlaid.  Both the interval estimates and the exemplars
provide different comparative information to assess the evidence provided by the
qqplot for or against the hypothesis that the data come from the test
distribution (default is normal or gaussian).  Finally, a visual test of
significance (a lineup plot) can also be displayed to test the null hypothesis
that the data come from the test distribution.")
    (license license:gpl3)))

(define-public r-qqplotr
  (package
    (name "r-qqplotr")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qqplotr" version))
       (sha256
        (base32 "0kj1m7m04599d3b6227vja02zwq5d2vc0cyz2c7jvki4g3q2knxf"))))
    (properties `((upstream-name . "qqplotr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-robustbase
                             r-qqconf
                             r-opdisdownsampling
                             r-mass
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aloy/qqplotr")
    (synopsis "Quantile-Quantile Plot Extensions for 'ggplot2'")
    (description "Extensions of ggplot2 Q-Q plot functionalities.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-qqboxplot
  (package
    (name "r-qqboxplot")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qqboxplot" version))
       (sha256
        (base32 "1rsipw7cn2gqpqpa0ysj99ms5jpnbynjs4gkkmbr2w0c2466fhgx"))))
    (properties `((upstream-name . "qqboxplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qqboxplot")
    (synopsis "Implementation of the Q-Q Boxplot")
    (description
     "This package provides a system to implement the Q-Q boxplot.  It is implemented
as an extension to ggplot2'.  The Q-Q boxplot is an amalgam of the boxplot and
the Q-Q plot and allows the user to rapidly examine summary statistics and tail
behavior for multiple distributions in the same pane.  As an extension of the
ggplot2 implementation of the boxplot, possible modifications to the boxplot
extend to the Q-Q boxplot.")
    (license license:expat)))

(define-public r-qpraentry
  (package
    (name "r-qpraentry")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qPRAentry" version))
       (sha256
        (base32 "15cslh53cmx24xc4lwhwh48389kris3k14a4vn07fwi2m2l5a0ab"))))
    (properties `((upstream-name . "qPRAentry")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shinywidgets
                             r-shinyjs
                             r-shinycssloaders
                             r-shiny
                             r-sf
                             r-purrr
                             r-memoise
                             r-giscor
                             r-ggplot2
                             r-ggiraph
                             r-eurostat
                             r-dt
                             r-dplyr
                             r-bsplus))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mcendoya/qPRAentry")
    (synopsis "Quantitative Pest Risk Assessment at the Entry Step")
    (description
     "Supports risk assessors in performing the entry step of the quantitative Pest
Risk Assessment.  It allows the estimation of the amount of a plant pest
entering a risk assessment area (in terms of founder populations) through the
calculation of the imported commodities that could be potential pathways of pest
entry, and the development of a pathway model.  Two Shiny apps based on the
functionalities of the package are included, that simplify the process of
assessing the risk of entry of plant pests.  The approach is based on the work
of the European Food Safety Authority (EFSA PLH Panel et al., 2018)
<doi:10.2903/j.efsa.2018.5350>.")
    (license license:gpl3+)))

(define-public r-qpnca
  (package
    (name "r-qpnca")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qpNCA" version))
       (sha256
        (base32 "1mlv9yc929w8ypfzhfplhjbxxj1qdx4v9gh6dr68lylvm9ahx032"))))
    (properties `((upstream-name . "qpNCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-magrittr r-knitr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qpNCA")
    (synopsis "Noncompartmental Pharmacokinetic Analysis by qPharmetra")
    (description
     "Computes noncompartmental pharmacokinetic parameters for drug concentration
profiles.  For each profile, data imputations and adjustments are made as
necessary and basic parameters are estimated.  Supports single dose, multi-dose,
and multi-subject data.  Supports steady-state calculations and various routes
of drug administration.  See ?@code{qpNCA} and vignettes.  Methodology follows
Rowland and Tozer (2011, ISBN:978-0-683-07404-8), Gabrielsson and Weiner (1997,
ISBN:978-91-9765-100-4), and Gibaldi and Perrier (1982, ISBN:978-0824710422).")
    (license license:gpl3)))

(define-public r-qpmadr
  (package
    (name "r-qpmadr")
    (version "1.1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qpmadr" version))
       (sha256
        (base32 "0krv3zhr42z2mkkbn2bkglzfxbf06dmd9vnnc3rcyhm1r85n4fbq"))))
    (properties `((upstream-name . "qpmadr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp r-checkmate))
    (home-page "https://github.com/anderic1/qpmadr")
    (synopsis "Interface to the 'qpmad' Quadratic Programming Solver")
    (description
     "Efficiently solve quadratic problems with linear inequality, equality and box
constraints.  The method used is outlined in D. Goldfarb, and A. Idnani (1983)
<doi:10.1007/BF02591962>.")
    (license license:gpl3+)))

(define-public r-qploidy
  (package
    (name "r-qploidy")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qploidy" version))
       (sha256
        (base32 "1q0jpqvki46wdrr40hgj2kzv34jp2gdy5s5i0ppnv8n1ffvs3l2i"))))
    (properties `((upstream-name . "Qploidy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom
                             r-vcfr
                             r-tidyr
                             r-stringr
                             r-multtest
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Cristianetaniguti/Qploidy")
    (synopsis
     "Estimation of Ploidy and Detection of Aneuploidy Using Genotyping Data")
    (description
     "This package provides functions for estimating ploidy levels and detecting
aneuploidy in individuals using allele intensities or allele count data from
high-throughput genotyping platforms, including single nucleotide polymorphism
(SNP) arrays and sequencing-based technologies.  Implements an extended version
of the @code{PennCNV} signal standardization method by Wang et al. (2007)
<doi:10.1101/gr.6861907> for higher ploidy levels.  Computes B-allele
frequencies (BAF), z-scores, and identifies copy number variation patterns.")
    (license license:agpl3+)))

(define-public r-qpcrtools
  (package
    (name "r-qpcrtools")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qPCRtools" version))
       (sha256
        (base32 "1m9niwqva1b7spkk8xn4n6f7xnfv9zmh1ardahaq10wr7c0x11sy"))))
    (properties `((upstream-name . "qPCRtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rstatix
                             r-multcomp
                             r-magrittr
                             r-kableextra
                             r-ggthemes
                             r-ggpmisc
                             r-ggplot2
                             r-dplyr
                             r-broom))
    (home-page "https://github.com/lixiang117423/qPCRtools")
    (synopsis "Tools for qPCR")
    (description "PKG_DESC.")
    (license license:expat)))

(define-public r-qpcrhelper
  (package
    (name "r-qpcrhelper")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qPCRhelper" version))
       (sha256
        (base32 "0v1d4k2v2sgcy0xh2vq21yv9sw71bj44rc273g9ggg214zqdprxd"))))
    (properties `((upstream-name . "qPCRhelper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstatix r-magrittr r-ggpubr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qPCRhelper")
    (synopsis "qPCR Ct Values to Expression Values")
    (description
     "Computes normalized cycle threshold (Ct) values (delta Ct) from raw quantitative
polymerase chain reaction (@code{qPCR}) Ct values and conducts test of
significance using @code{t.test()}.  Plots expression values based from
log2(2^(-1*delta delta Ct)) across groups per gene of interest.  Methods for
calculation of delta delta Ct and relative expression (2^(-1*delta delta Ct))
values are described in: Livak & Schmittgen, (2001)
<doi:10.1006/meth.2001.1262>.")
    (license license:gpl3)))

(define-public r-qountstat
  (package
    (name "r-qountstat")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qountstat" version))
       (sha256
        (base32 "19dmn45q0db2g4kcwdwhnlvxpp8q8i8bfzsdi6lly4hm672ki13y"))))
    (properties `((upstream-name . "qountstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-multcomp))
    (home-page "https://cran.r-project.org/package=qountstat")
    (synopsis "Statistical Analysis of Count Data and Quantal Data")
    (description
     "This package provides methods for statistical analysis of count data and quantal
data.  For the analysis of count data an implementation of the Closure Principle
Computational Approach Test (\"CPCAT\") is provided (Lehmann, R et al. (2016)
<doi:10.1007/s00477-015-1079-4>), as well as an implementation of a \"Dunnett
GLM\" approach using a Quasi-Poisson regression (Hothorn, L, Kluxen, F (2020)
<doi:10.1101/2020.01.15.907881>).  For the analysis of quantal data an
implementation of the Closure Principle FisherâFreemanâHalton test
(\"CPFISH\") is provided (Lehmann, R et al. (2018)
<doi:10.1007/s00477-017-1392-1>).  P-values and no/lowest observed (adverse)
effect concentration values are calculated.  All implemented methods include
further functions to evaluate the power and the minimum detectable difference
using a bootstrapping approach.")
    (license license:expat)))

(define-public r-qolmiss
  (package
    (name "r-qolmiss")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QoLMiss" version))
       (sha256
        (base32 "00g1ykwlmc4w0bmzj0jg9ckr2bvkl8qcxd67wdc12alccqqd584v"))))
    (properties `((upstream-name . "QoLMiss")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-missmethods r-dplyr))
    (home-page "https://cran.r-project.org/package=QoLMiss")
    (synopsis "Scales Score Calculation from Quality of Life Data")
    (description
     "There are three functions: qol, miss_qol and miss_patient takes input of the
data set containing the answers of QOL questionnaire.  It will compute the three
types of domain based scale scores: Global, Functional, and Symptoms.  In case
of missing data, the miss_qol and miss_patient functions will make the required
changes and then calculate the domain-wise scale scores.  Finally, provide an
output replacing the question columns with the domain-based scale scores in the
original data set.")
    (license license:gpl3)))

(define-public r-qoi
  (package
    (name "r-qoi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qoi" version))
       (sha256
        (base32 "1zia8k95lmxpqfpkci6kln5d8n86fnnahyb8xd52ivqglifv5g56"))))
    (properties `((upstream-name . "qoi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/JohannesFriedrich/qoi4R")
    (synopsis "Read and Write QOI Images")
    (description
     "The new QOI file format offers a very simple but efficient image compression
algorithm.  This package provides an easy and simple way to read, write and
display bitmap images stored in the QOI (Quite Ok Image) format.  It can read
and write both files and in-memory raw vectors.")
    (license license:expat)))

(define-public r-qmvs
  (package
    (name "r-qmvs")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmvs" version))
       (sha256
        (base32 "11m42xw10vll9l1ij73f48ig9cwirnnz1rphpckfc33bm43vpn27"))))
    (properties `((upstream-name . "qmvs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qmvs")
    (synopsis "Queueing Model of Visual Search")
    (description
     "The queueing model of visual search models the accuracy and response time data
in a visual search experiment using queueing models with finite customer
population and stopping criteria of completing the service for finite number of
customers.  It implements the conceptualization of a hybrid model proposed by
Moore and Wolfe (2001), in which visual stimuli enter the processing one after
the other and then are identified in parallel.  This package provides functions
that simulate the specified queueing process and calculate the Wasserstein
distance between the empirical response times and the model prediction.")
    (license license:gpl3+)))

(define-public r-qmrparser
  (package
    (name "r-qmrparser")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmrparser" version))
       (sha256
        (base32 "0d17b64gzf5xlhc5z8qxjj759c1paiv8kxikk2r6ph6zfwvvxw0y"))))
    (properties `((upstream-name . "qmrparser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qmrparser")
    (synopsis "Parser Combinator in R")
    (description
     "Basic functions for building parsers, with an application to PC-AXIS format
files.")
    (license license:gpl3+)))

(define-public r-qmj
  (package
    (name "r-qmj")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmj" version))
       (sha256
        (base32 "18ks9b06xrd8zx9nlba7sdpvlj3bghdckcgw7lg93gv8f2krbw73"))))
    (properties `((upstream-name . "qmj")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-reticulate r-quantmod r-dplyr))
    (home-page "https://cran.r-project.org/package=qmj")
    (synopsis "Quality Scores for the Russell 3000")
    (description
     "This package produces quality scores for each of the US companies from the
Russell 3000, following the approach described in \"Quality Minus Junk\" (Asness,
Frazzini, & Pedersen, 2013)
<http://www.aqr.com/library/working-papers/quality-minus-junk>.  The package
includes datasets for users who wish to view the most recently uploaded quality
scores.  It also provides tools to automatically gather relevant financials and
stock price information, allowing users to update their data and customize their
universe for further analysis.")
    (license license:gpl3)))

(define-public r-qmethod
  (package
    (name "r-qmethod")
    (version "1.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmethod" version))
       (sha256
        (base32 "0smkqqq8pcxix4lf35skkf9p5jw9mc3llkmyr334qkk85kvgnwn6"))))
    (properties `((upstream-name . "qmethod")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-psych r-knitr r-digest))
    (home-page "https://github.com/aiorazabala/qmethod")
    (synopsis "Analysis of Subjective Perspectives Using Q Methodology")
    (description
     "Analysis of Q methodology, used to identify distinct perspectives existing
within a group.  This methodology is used across social, health and
environmental sciences to understand diversity of attitudes, discourses, or
decision-making styles (for more information, see <https://qmethod.org/>).  A
single function runs the full analysis.  Each step can be run separately using
the corresponding functions: for automatic flagging of Q-sorts (manual flagging
is optional), for statement scores, for distinguishing and consensus statements,
and for general characteristics of the factors.  The package allows to choose
either principal components or centroid factor extraction, manual or automatic
flagging, a number of mathematical methods for rotation (or none), and a number
of correlation coefficients for the initial correlation matrix, among many other
options.  Additional functions are available to import and export data (from raw
*.CSV, HTMLQ and @code{FlashQ} *.CSV, PQMethod *.DAT and easy-htmlq *.JSON
files), to print and plot, to import raw data from individual *.CSV files, and
to make printable cards.  The package also offers functions to print Q cards and
to generate Q distributions for study administration.  See further details in
the package documentation, and in the web pages below, which include a cookbook,
guidelines for more advanced analysis (how to perform manual flagging or change
the sign of factors), data management, and a graphical user interface (GUI) for
online and offline use.")
    (license license:gpl2+)))

(define-public r-qmd
  (package
    (name "r-qmd")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmd" version))
       (sha256
        (base32 "1kba81w6pql309qjfv9dgbvr7avhc6jf116v8nzmy1z6x5w0qnmk"))))
    (properties `((upstream-name . "qmd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-qad r-ggplot2 r-dplyr r-cowplot))
    (home-page "https://cran.r-project.org/package=qmd")
    (synopsis "Quantification of Multivariate Dependence")
    (description
     "This package provides a multivariate copula-based dependence measure.  For more
information, see Griessenberger, Junker, Trutschnig (2022), On a multivariate
copula-based dependence measure and its estimation, Electronic Journal of
Statistics, 16, 2206-2251.")
    (license license:gpl2+)))

(define-public r-qmap
  (package
    (name "r-qmap")
    (version "1.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qmap" version))
       (sha256
        (base32 "1fq26cbgfm9x6f535l2szxlpljy5n723gpzh3nq832bbjwzdbfjy"))))
    (properties `((upstream-name . "qmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fitdistrplus))
    (home-page "https://cran.r-project.org/package=qmap")
    (synopsis
     "Statistical Transformations for Post-Processing Climate Model Output")
    (description
     "Empirical adjustment of the distribution of variables originating from
(regional) climate model simulations using quantile mapping.")
    (license license:gpl2+)))

(define-public r-qlifetable
  (package
    (name "r-qlifetable")
    (version "0.0.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qlifetable" version))
       (sha256
        (base32 "1sda7wdagy7b32r4ibv4x1kcs26y0ii4xr8far717wipkj79dbzb"))))
    (properties `((upstream-name . "qlifetable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qlifetable")
    (synopsis "Managing and Building of Quarterly Life Tables")
    (description
     "Manages, builds and computes statistics and datasets for the construction of
quarterly (sub-annual) life tables by exploiting micro-data from either a
general or an insured population.  References: PavÃ­a and LledÃ³ (2022)
<doi:10.1111/rssa.12769>.  PavÃ­a and LledÃ³ (2023) <doi:10.1017/asb.2023.16>.
PavÃ­a and LledÃ³ (2025) <doi:10.1371/journal.pone.0315937>.  Acknowledgements:
The authors wish to thank Conselleria de EducaciÃ³n, Universidades y Empleo,
Generalitat Valenciana (grants AICO/2021/257; CIAICO/2024/031), Ministerio de
Ciencia e InnovaciÃ³n (grant PID2021-128228NB-I00) and FundaciÃ³n Mapfre (grant
ModelizaciÃ³n espacial e intra-anual de la mortalidad en EspaÃ±a.  Una
herramienta automÃ¡tica para el calculo de productos de vida') for supporting
this research.")
    (license (license:fsdg-compatible "EPL"))))

(define-public r-qlearning
  (package
    (name "r-qlearning")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QLearning" version))
       (sha256
        (base32 "1bx77yxsnzh0ny3ghala5fw54lxzrxqk9s32qk3dzvfbyp4paggn"))))
    (properties `((upstream-name . "QLearning")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QLearning")
    (synopsis "Reinforcement Learning using the Q Learning Algorithm")
    (description
     "This package implements Q-Learning, a model-free form of reinforcement learning,
described in work by Strehl, Li, Wiewiora, Langford & Littman (2006)
<doi:10.1145/1143844.1143955>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-qlcdata
  (package
    (name "r-qlcdata")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qlcData" version))
       (sha256
        (base32 "0zwmp5567v7mzjki8sf0xc7vzzyb3bfsnmr2liak5j2a7dsp81hb"))))
    (properties `((upstream-name . "qlcData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-stringi
                             r-shiny
                             r-phytools
                             r-docopt
                             r-data-tree
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qlcData")
    (synopsis "Processing Data for Quantitative Language Comparison")
    (description
     "Functionality to read, recode, and transcode data as used in quantitative
language comparison, specifically to deal with multilingual orthographic
variation (Moran & Cysouw (2018) <doi:10.5281/zenodo.1296780>) and with the
recoding of nominal data.")
    (license license:gpl3)))

(define-public r-qlcal
  (package
    (name "r-qlcal")
    (version "0.0.16")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qlcal" version))
       (sha256
        (base32 "07v4ardvpp6a9b1smn4fbsvyn6jmiplj1wsvrlidk26xxc1vwlm1"))))
    (properties `((upstream-name . "qlcal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-bh))
    (home-page "https://github.com/qlcal/qlcal-r")
    (synopsis "R Bindings to the Calendaring Functionality of 'QuantLib'")
    (description
     "@code{QuantLib} bindings are provided for R using Rcpp via an evolved version of
the initial header-only Quantuccia project offering an subset of @code{QuantLib}
(now maintained separately just for the calendaring subset).  See the included
file AUTHORS for a full list of contributors to @code{QuantLib} (and hence also
Quantuccia').")
    (license license:gpl2+)))

(define-public r-qkerntool
  (package
    (name "r-qkerntool")
    (version "1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qkerntool" version))
       (sha256
        (base32 "14inry2hqvkmy0y2y3cl75ri4vri0hirv98gw2rymny69lia5x0s"))))
    (properties `((upstream-name . "qkerntool")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-class))
    (home-page "https://cran.r-project.org/package=qkerntool")
    (synopsis
     "Q-Kernel-Based and Conditionally Negative Definite Kernel-Based Machine Learning Tools")
    (description
     "Nonlinear machine learning tool for classification, clustering and
dimensionality reduction.  It integrates 12 q-kernel functions and 15
conditional negative definite kernel functions and includes the q-kernel and
conditional negative definite kernel version of density-based spatial clustering
of applications with noise, spectral clustering, generalized discriminant
analysis, principal component analysis, multidimensional scaling, locally linear
embedding, sammon's mapping and t-Distributed stochastic neighbor embedding.")
    (license license:gpl2+)))

(define-public r-qindex-data
  (package
    (name "r-qindex-data")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qindex.data" version))
       (sha256
        (base32 "0a9y8b2pp4y8d6qvqmmakigz2bwa3i3iq8vndc8yg6dd4shjiybl"))))
    (properties `((upstream-name . "Qindex.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Qindex.data")
    (synopsis "Data for Package 'Qindex'")
    (description "Example data used in package Qindex'.")
    (license license:gpl2)))

(define-public r-qindex
  (package
    (name "r-qindex")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qindex" version))
       (sha256
        (base32 "0dx812cvpkhl8gz6wql6kmkcjx4dwdbmjr6gz1ddh1axldwdiy6b"))))
    (properties `((upstream-name . "Qindex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rpart r-plotly r-mgcv r-matrixstats))
    (home-page "https://cran.r-project.org/package=Qindex")
    (synopsis
     "Continuous and Dichotomized Index Predictors Based on Distribution Quantiles")
    (description
     "Select optimal functional regression or dichotomized quantile predictors for
survival/logistic/numeric outcome and perform optimistic bias correction for any
optimally dichotomized numeric predictor(s), as in Yi, et.  al. (2023)
<doi:10.1016/j.labinv.2023.100158>.")
    (license license:gpl2)))

(define-public r-qiitr
  (package
    (name "r-qiitr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qiitr" version))
       (sha256
        (base32 "0qbqx7g4np2ygyxiqmq5cww1az6ijjx6na6b1mp4ywmyxkjg3k29"))))
    (properties `((upstream-name . "qiitr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstudioapi r-purrr r-jsonlite r-httr))
    (home-page "https://github.com/yutannihilation/qiitr")
    (synopsis "R Interface to Qiita API")
    (description
     "Qiita is a technical knowledge sharing and collaboration platform for
programmers.  See <https://qiita.com/api/v2/docs> for more information.")
    (license license:expat)))

(define-public r-qif
  (package
    (name "r-qif")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qif" version))
       (sha256
        (base32 "12azs7c0anpd71d5663y1jrhirry6cr78wislp4fk64hmsbx7sx4"))))
    (properties `((upstream-name . "qif")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=qif")
    (synopsis "Quadratic Inference Function")
    (description
     "Developed to perform the estimation and inference for regression coefficient
parameters in longitudinal marginal models using the method of quadratic
inference functions.  Like generalized estimating equations, this method is also
a quasi-likelihood inference method.  It has been showed that the method gives
consistent estimators of the regression coefficients even if the correlation
structure is misspecified, and it is more efficient than GEE when the
correlation structure is misspecified.  Based on Qu, A., Lindsay, B.G. and Li,
B. (2000) <doi:10.1093/biomet/87.4.823>.")
    (license license:gpl2)))

(define-public r-qicharts2
  (package
    (name "r-qicharts2")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qicharts2" version))
       (sha256
        (base32 "1h2c9f3nv14a9cb69vvfcrrfskigpa229i52yvqcc5h899wf8xlc"))))
    (properties `((upstream-name . "qicharts2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/anhoej/qicharts2")
    (synopsis "Quality Improvement Charts")
    (description
     "This package provides functions for making run charts, Shewhart control charts
and Pareto charts for continuous quality improvement.  Included control charts
are: I, MR, Xbar, S, T, C, U, U', P, P', and G charts.  Non-random variation in
the form of minor to moderate persistent shifts in data over time is identified
by the Anhoej rules for unusually long runs and unusually few crossing [Anhoej,
Olesen (2014) <doi:10.1371/journal.pone.0113825>].  Non-random variation in the
form of larger, possibly transient, shifts is identified by Shewhart's 3-sigma
rule [Mohammed, Worthington, Woodall (2008) <doi:10.1136/qshc.2004.012047>].")
    (license license:gpl3)))

(define-public r-qicharts
  (package
    (name "r-qicharts")
    (version "0.5.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qicharts" version))
       (sha256
        (base32 "02ydz2mcf0rx4xwm4lx7g4g4qxx00mqb8ad191qg70r2frmmbizd"))))
    (properties `((upstream-name . "qicharts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-latticeextra r-lattice r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qicharts")
    (synopsis "Quality Improvement Charts")
    (description
     "This package provides functions for making run charts [Anhoej, Olesen (2014)
<doi:10.1371/journal.pone.0113825>] and basic Shewhart control charts [Mohammed,
Worthington, Woodall (2008) <doi:10.1136/qshc.2004.012047>] for measure and
count data.  The main function, @code{qic()}, creates run and control charts and
has a simple interface with a rich set of options to control data analysis and
plotting, including options for automatic data aggregation by subgroups, easy
analysis of before-and-after data, exclusion of one or more data points from
analysis, and splitting charts into sequential time periods.  Missing values and
empty subgroups are handled gracefully.")
    (license license:gpl3)))

(define-public r-qi
  (package
    (name "r-qi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QI" version))
       (sha256
        (base32 "1r65xq892mga54dfbh5va5zji5d1dx8k0fy611kbdviwqf0dfhx5"))))
    (properties `((upstream-name . "QI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=QI")
    (synopsis "Quantity-Intensity Relationship of Soil Potassium")
    (description
     "The quantity-intensity (Q/I) relationships, first introduced by Beckett (1964),
can be employed to assess the K supplying capacity of different soils based on
solid-solution exchange equilibria.  Such relationships describe the changes in
K+ concentration in the soil solution (or the intensity factor) in relation to
the corresponding changes in K+ at exchange sites of the soil (or the capacity
or quantity factor).  Activity ratio of K to Ca or Ca+Mg is generally used as
the variable denoting the intensity, whereas, change in exchangeable K is used
to denote the quantity factor.")
    (license license:gpl3+)))

(define-public r-qhscrnomo
  (package
    (name "r-qhscrnomo")
    (version "3.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QHScrnomo" version))
       (sha256
        (base32 "1jpn2fl324cgp63d8w8v9bnyji7nl1n8rpk4x9m65hivlzfqdsk2"))))
    (properties `((upstream-name . "QHScrnomo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rms r-hmisc r-cmprsk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ClevelandClinicQHS/QHScrnomo")
    (synopsis "Construct Nomograms for Competing Risks Regression Models")
    (description
     "Nomograms are constructed to predict the cumulative incidence rate which is
calculated after adjusting for competing causes to the event of interest.
K-fold cross-validation is implemented to validate predictive accuracy using a
competing-risk version of the concordance index.  Methods are as described in:
Kattan MW, Heller G, Brennan MF (2003).")
    (license license:gpl3+)))

(define-public r-qhot
  (package
    (name "r-qhot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QHOT" version))
       (sha256
        (base32 "02z0n2jawd6m7bvyvpcy0j13p1c0zm036g62n56xva18qnq5c9lb"))))
    (properties `((upstream-name . "QHOT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QHOT")
    (synopsis "QTL Hotspot Detection")
    (description
     "This function produces both the numerical and graphical summaries of the QTL
hotspot detection in the genomes that are available on the worldwide web
including the flanking markers of QTLs.")
    (license license:gpl3+)))

(define-public r-qgshiny
  (package
    (name "r-qgshiny")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qgshiny" version))
       (sha256
        (base32 "0ydhwg4abn8n9pwnjnwf1n1k854zw31z8f2splzdm5j279lsjg3r"))))
    (properties `((upstream-name . "qgshiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rmarkdown))
    (home-page "https://cran.r-project.org/package=qgshiny")
    (synopsis
     "'shiny' Application for Active Learning Instruction in Introductory Quantitative Genetics")
    (description
     "This package provides a shiny application for teaching introductory quantitative
genetics and plant breeding through interactive simulations.  The application
relies on established plant breeding and quantitative genetic theory found in
Falconer and Mackay (1996, ISBN:0582243025) and Bernardo (2010,
ISBN:978-0972072427).")
    (license license:expat)))

(define-public r-qgisprocess
  (package
    (name "r-qgisprocess")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qgisprocess" version))
       (sha256
        (base32 "0l3rql8w12kqgaz6fczmm4b7mxxagm60d3fvw1i2sv1wdqwlb269"))))
    (properties `((upstream-name . "qgisprocess")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rappdirs
                             r-processx
                             r-jsonlite
                             r-glue
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://r-spatial.github.io/qgisprocess/")
    (synopsis "Use 'QGIS' Processing Algorithms")
    (description
     "This package provides seamless access to the QGIS (<https://qgis.org>)
processing toolbox using the standalone qgis_process command-line utility.  Both
native and third-party (plugin) processing providers are supported.  Beside
referring data sources from file, also common objects from sf', terra and stars
are supported.  The native processing algorithms are documented by QGIS.org
(2024) <https://docs.qgis.org/latest/en/docs/user_manual/processing_algs/>.")
    (license license:gpl3+)))

(define-public r-qgglmm
  (package
    (name "r-qgglmm")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QGglmm" version))
       (sha256
        (base32 "199hyrbdgqfniby0fy651vqi86y6m0kkjmq18gn464aksmbr7c30"))))
    (properties `((upstream-name . "QGglmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cubature))
    (home-page "https://cran.r-project.org/package=QGglmm")
    (synopsis
     "Estimate Quantitative Genetics Parameters from Generalised Linear Mixed Models")
    (description
     "Compute various quantitative genetics parameters from a Generalised Linear Mixed
Model (GLMM) estimates.  Especially, it yields the observed phenotypic mean,
phenotypic variance and additive genetic variance.")
    (license license:gpl2)))

(define-public r-qgg
  (package
    (name "r-qgg")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qgg" version))
       (sha256
        (base32 "06bs565ylv4h8g0lp08x13si0lnjaj17a5znc172lql48qgnmw6z"))))
    (properties `((upstream-name . "qgg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-mcmcpack
                             r-matrix
                             r-mass
                             r-data-table
                             r-corpcor
                             r-coda))
    (native-inputs (list gfortran))
    (home-page "https://github.com/psoerensen/qgg")
    (synopsis "Statistical Tools for Quantitative Genetic Analyses")
    (description
     "This package provides an infrastructure for efficient processing of large-scale
genetic and phenotypic data including core functions for: 1) fitting linear
mixed models, 2) constructing marker-based genomic relationship matrices, 3)
estimating genetic parameters (heritability and correlation), 4) performing
genomic prediction and genetic risk profiling, and 5) single or multi-marker
association analyses.  Rohde et al. (2019) <doi:10.1101/503631>.")
    (license license:gpl3)))

(define-public r-qgcompint
  (package
    (name "r-qgcompint")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qgcompint" version))
       (sha256
        (base32 "1mripval0w7qdm1nzw56y18jrmb72f99h9fmfmzwi8kj42s4pk25"))))
    (properties `((upstream-name . "qgcompint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-rootsolve
                             r-qgcomp
                             r-numderiv
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-future-apply
                             r-future
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexpkeil1/qgcompint/")
    (synopsis
     "Quantile G-Computation Extensions for Effect Measure Modification")
    (description
     "G-computation for a set of time-fixed exposures with quantile-based basis
functions, possibly under linearity and homogeneity assumptions.  Effect measure
modification in this method is a way to assess how the effect of the mixture
varies by a binary, categorical or continuous variable.  Reference: Alexander P.
Keil, Jessie P. Buckley, Katie M. OBrien, Kelly K. Ferguson, Shanshan Zhao, and
Alexandra J. White (2019) A quantile-based g-computation approach to addressing
the effects of exposure mixtures; <doi:10.1289/EHP5838>.")
    (license license:gpl2+)))

(define-public r-qgcomp
  (package
    (name "r-qgcomp")
    (version "2.18.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qgcomp" version))
       (sha256
        (base32 "1pzd5v3xi9sksda8pr7rgrxg8fpdl5m3qfkdkww5sa77sccsk32v"))))
    (properties `((upstream-name . "qgcomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-survival
                             r-rootsolve
                             r-pscl
                             r-numderiv
                             r-nnet
                             r-gridextra
                             r-ggplot2
                             r-generics
                             r-future-apply
                             r-future
                             r-arm
                             r-aer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexpkeil1/qgcomp/")
    (synopsis "Quantile G-Computation")
    (description
     "G-computation for a set of time-fixed exposures with quantile-based basis
functions, possibly under linearity and homogeneity assumptions.  This approach
estimates a regression line corresponding to the expected change in the outcome
(on the link basis) given a simultaneous increase in the quantile-based category
for all exposures.  Works with continuous, binary, and right-censored
time-to-event outcomes.  Reference: Alexander P. Keil, Jessie P. Buckley, Katie
M. OBrien, Kelly K. Ferguson, Shanshan Zhao, and Alexandra J. White (2019) A
quantile-based g-computation approach to addressing the effects of exposure
mixtures; <doi:10.1289/EHP5838>.")
    (license license:gpl2+)))

(define-public r-qgaussian
  (package
    (name "r-qgaussian")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qGaussian" version))
       (sha256
        (base32 "02xy35xg4swr1ldnsbywnz2h0ga1pbsivnj0aqmpll7kvwl9qz4c"))))
    (properties `((upstream-name . "qGaussian")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zipfr r-robustbase r-rcpp))
    (home-page "https://cran.r-project.org/package=qGaussian")
    (synopsis "The q-Gaussian Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
q-gaussian distribution with parameters mu and sig.")
    (license license:gpl2+)))

(define-public r-qgametheory
  (package
    (name "r-qgametheory")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QGameTheory" version))
       (sha256
        (base32 "0h3qkb0zg6km3s89bjnv9503hgcng4wfywfy1x5dsbj5azs9hs5w"))))
    (properties `((upstream-name . "QGameTheory")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-r-utils r-dplyr))
    (home-page "https://github.com/indrag49/QGameTheory")
    (synopsis "Quantum Game Theory Simulator")
    (description
     "General purpose toolbox for simulating quantum versions of game theoretic models
(Flitney and Abbott 2002) <@code{arXiv:quant-ph/0208069>}.  Quantum (Nielsen and
Chuang 2010, ISBN:978-1-107-00217-3) versions of models that have been handled
are: Penny Flip Game (David A. Meyer 1998) <@code{arXiv:quant-ph/9804010>},
Prisoner's Dilemma (J. Orlin Grabbe 2005) <@code{arXiv:quant-ph/0506219>}, Two
Person Duel (Flitney and Abbott 2004) <@code{arXiv:quant-ph/0305058>}, Battle of
the Sexes (Nawaz and Toor 2004) <@code{arXiv:quant-ph/0110096>}, Hawk and Dove
Game (Nawaz and Toor 2010) <@code{arXiv:quant-ph/0108075>}, Newcomb's Paradox
(Piotrowski and Sladkowski 2002) <@code{arXiv:quant-ph/0202074>} and Monty Hall
Problem (Flitney and Abbott 2002) <@code{arXiv:quant-ph/0109035>}.")
    (license license:expat)))

(define-public r-qga
  (package
    (name "r-qga")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QGA" version))
       (sha256
        (base32 "1qwcm1x4qcfyrkwx16s1dgxnix2axh9w0qxwrv1j0iwdc8mp32g9"))))
    (properties `((upstream-name . "QGA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://barcaroli.github.io/QGA/")
    (synopsis "Quantum Genetic Algorithm")
    (description
     "Function that implements the Quantum Genetic Algorithm, first proposed by Han
and Kim in 2000.  This is an R implementation of the python application
developed by Lahoz-Beltra
(<https://github.com/@code{ResearchCodesHub/QuantumGeneticAlgorithms>}).  Each
optimization problem is represented as a maximization one, where each solution
is a sequence of (qu)bits.  Following the quantum paradigm, these qubits are in
a superposition state: when measuring them, they collapse in a 0 or 1 state.
After measurement, the fitness of the solution is calculated as in usual genetic
algorithms.  The evolution at each iteration is oriented by the application of
two quantum gates to the amplitudes of the qubits: (1) a rotation gate (always);
(2) a Pauli-X gate (optionally).  The rotation is based on the theta angle
values: higher values allow a quicker evolution, and lower values avoid local
maxima.  The Pauli-X gate is equivalent to the classical mutation operator and
determines the swap between alfa and beta amplitudes of a given qubit.  The
package has been developed in such a way as to permit a complete separation
between the engine, and the particular problem subject to combinatorial
optimization.")
    (license license:gpl2+)))

(define-public r-qfrm
  (package
    (name "r-qfrm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QFRM" version))
       (sha256
        (base32 "02fixwxc97lgdp1ajhk9z12qj1cdl79vyl6q3jy37i6k7xh9mdfl"))))
    (properties `((upstream-name . "QFRM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://Oleg.Rice.edu")
    (synopsis "Pricing of Vanilla and Exotic Option Contracts")
    (description
     "Option pricing (financial derivatives) techniques mainly following textbook
Options, Futures and Other Derivatives', 9ed by John C.Hull, 2014.  Prentice
Hall.  Implementations are via binomial tree option model (BOPM), Black-Scholes
model, Monte Carlo simulations, etc.  This package is a result of Quantitative
Financial Risk Management course (STAT 449 and STAT 649) at Rice University,
Houston, TX, USA, taught by Oleg Melnikov, statistics @code{PhD} student, as of
Spring 2015.")
    (license license:gpl2+)))

(define-public r-qfratio
  (package
    (name "r-qfratio")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qfratio" version))
       (sha256
        (base32 "06d0ixwp29h1xjdrdwv52ngpg1wszpkjhjqlax1r56c5mdjbrx19"))))
    (properties `((upstream-name . "qfratio")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-rcppeigen r-rcpp r-mass))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/watanabe-j/qfratio")
    (synopsis
     "Moments and Distributions of Ratios of Quadratic Forms Using Recursion")
    (description
     "Evaluates moments of ratios (and products) of quadratic forms in normal
variables, specifically using recursive algorithms developed by Bao and Kan
(2013) <doi:10.1016/j.jmva.2013.03.002> and Hillier et al. (2014)
<doi:10.1017/S0266466613000364>.  Also provides distribution, quantile, and
probability density functions of simple ratios of quadratic forms in normal
variables with several algorithms.  Originally developed as a supplement to
Watanabe (2023) <doi:10.1007/s00285-023-01930-8> for evaluating average
evolvability measures in evolutionary quantitative genetics, but can be used for
a broader class of statistics.  Generating functions for these moments are also
closely related to the top-order zonal and invariant polynomials of matrix
arguments.")
    (license license:gpl3+)))

(define-public r-qfasar
  (package
    (name "r-qfasar")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qfasar" version))
       (sha256
        (base32 "14370bmq4qx5j02va13wz52m2lgl4vb992p9587z9v2sxl1v4jjg"))))
    (properties `((upstream-name . "qfasar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qfasar")
    (synopsis "Quantitative Fatty Acid Signature Analysis in R")
    (description
     "An implementation of Quantitative Fatty Acid Signature Analysis (QFASA) in R.
QFASA is a method of estimating the diet composition of predators.  The
fundamental unit of information in QFASA is a fatty acid signature (signature),
which is a vector of proportions describing the composition of fatty acids
within lipids.  Signature data from at least one predator and from samples of
all potential prey types are required.  Calibration coefficients, which adjust
for the differential metabolism of individual fatty acids by predators, are also
required.  Given those data inputs, a predator signature is modeled as a mixture
of prey signatures and its diet estimate is obtained as the mixture that
minimizes a measure of distance between the observed and modeled signatures.  A
variety of estimation options and simulation capabilities are implemented.
Please refer to the vignette for additional details and references.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-qfasa
  (package
    (name "r-qfasa")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QFASA" version))
       (sha256
        (base32 "09rdlw30jlag9lyqdvmpcqxqsrwxwrarsqkp2vp4ay11nn6xi6ka"))))
    (properties `((upstream-name . "QFASA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-tmb
                             r-rsolnp
                             r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-mass
                             r-gamlss-dist
                             r-gamlss
                             r-futile-logger
                             r-dplyr
                             r-compositions
                             r-compositional
                             r-bootstrap
                             r-boot))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://CRAN.R-project.org/package=QFASA")
    (synopsis "Quantitative Fatty Acid Signature Analysis")
    (description
     "Accurate estimates of the diets of predators are required in many areas of
ecology, but for many species current methods are imprecise, limited to the last
meal, and often biased.  The diversity of fatty acids and their patterns in
organisms, coupled with the narrow limitations on their biosynthesis, properties
of digestion in monogastric animals, and the prevalence of large storage
reservoirs of lipid in many predators, led to the development of quantitative
fatty acid signature analysis (QFASA) to study predator diets.")
    (license license:expat)))

(define-public r-qfa
  (package
    (name "r-qfa")
    (version "4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qfa" version))
       (sha256
        (base32 "04yd9sdfhyzg5b9j2i16gpqm4yni8a0dlsl25djk1li82gn2cgm5"))))
    (properties `((upstream-name . "qfa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rhpcblasctl
                             r-quantreg
                             r-nlme
                             r-mgcv
                             r-mass
                             r-foreach
                             r-fields
                             r-doparallel
                             r-colorramps))
    (native-inputs (list gfortran))
    (home-page "https://github.com/IBM/qfa")
    (synopsis "Quantile-Frequency Analysis (QFA) of Time Series")
    (description
     "Quantile-frequency analysis (QFA) of time series based on trigonometric quantile
regression.  Spline quantile regression (SQR) for regression coefficient
estimation.  References: [1] Li, T.-H. (2012) \"Quantile periodograms,\" Journal
of the American Statistical Association, 107, 765â776,
<doi:10.1080/01621459.2012.682815>. [2] Li, T.-H. (2014) Time Series with Mixed
Spectra, CRC Press, <doi:10.1201/b15154> [3] Li, T.-H. (2022) \"Quantile Fourier
transform, quantile series, and nonparametric estimation of quantile spectra,\"
<doi:10.48550/@code{arXiv.2211.05844>}. [4] Li, T.-H. (2024) \"Quantile crossing
spectrum and spline autoregression estimation,\"
<doi:10.48550/@code{arXiv.2412.02513>}. [5] Li, T.-H. (2024) \"Spline
autoregression method for estimation of quantile spectrum,\"
<doi:10.48550/@code{arXiv.2412.17163>}. [6] Li, T.-H., and Megiddo, N. (2025)
\"Spline quantile regression,\" <doi:10.48550/@code{arXiv.2501.03883>}.")
    (license license:gpl2+)))

(define-public r-qf
  (package
    (name "r-qf")
    (version "0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QF" version))
       (sha256
        (base32 "0afbkv82a8hj91l1ss5jgym03f7vx37awhwzaw6hbxxyp6kfirl2"))))
    (properties `((upstream-name . "QF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-rcppgsl r-rcpp))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=QF")
    (synopsis "Density, Cumulative and Quantile Functions of Quadratic Forms")
    (description
     "The computation of quadratic form (QF) distributions is often not trivial and it
requires numerical routines.  The package contains functions aimed at evaluating
the exact distribution of quadratic forms (QFs) and ratios of QFs.  In
particular, we propose to evaluate density, quantile and distribution functions
of positive definite QFs and ratio of independent positive QFs by means of an
algorithm based on the numerical inversion of Mellin transforms.")
    (license license:gpl3)))

(define-public r-qest
  (package
    (name "r-qest")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qest" version))
       (sha256
        (base32 "18qx2vn8gl83hfvvcm20z57yj972pd8c8dxq0ksf7jbr2lf6jw3b"))))
    (properties `((upstream-name . "Qest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-pch r-matrixstats))
    (native-inputs (list gfortran))
    (home-page
     "https://www.sciencedirect.com/science/article/abs/pii/S0167947322000512")
    (synopsis "Quantile-Based Estimator")
    (description
     "Quantile-based estimators (Q-estimators) can be used to fit any parametric
distribution, using its quantile function.  Q-estimators are usually more robust
than standard maximum likelihood estimators.  The method is described in:
Sottile G. and Frumento P. (2022).  Robust estimation and regression with
parametric quantile functions. <doi:10.1016/j.csda.2022.107471>.")
    (license license:gpl2+)))

(define-public r-qeml
  (package
    (name "r-qeml")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qeML" version))
       (sha256
        (base32 "1pgrzahn1wlk5c8zy1zvfg07xqmmn5ky4y1ksgj48gvilzgjqjwk"))))
    (properties `((upstream-name . "qeML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tufte
                             r-toweranna
                             r-tm
                             r-rpart-plot
                             r-rpart
                             r-rmarkdown
                             r-regtools
                             r-partools
                             r-gtools
                             r-grf
                             r-gbm
                             r-foci))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/matloff/qeML")
    (synopsis "Quick and Easy Machine Learning Tools")
    (description
     "The letters qe in the package title stand for \"quick and easy,\" alluding to the
convenience goal of the package.  We bring together a variety of machine
learning (ML) tools from standard R packages, providing wrappers with a simple,
convenient, and uniform interface.")
    (license license:gpl2+)))

(define-public r-qdm
  (package
    (name "r-qdm")
    (version "0.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qdm" version))
       (sha256
        (base32 "0cfxyy8s5zfb7867f9xv9scq9blq2qnw68x66m7y7nqlrrff5xdr"))))
    (properties `((upstream-name . "qdm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qdm")
    (synopsis
     "Fitting a Quadrilateral Dissimilarity Model to Same-Different Judgments")
    (description
     "This package provides different specifications of a Quadrilateral Dissimilarity
Model which can be used to fit same-different judgments in order to get a
predicted matrix that satisfies regular minimality [Colonius & Dzhafarov, 2006,
Measurement and representations of sensations, Erlbaum].  From such a matrix,
Fechnerian distances can be computed.")
    (license license:gpl2+)))

(define-public r-qdiabetes
  (package
    (name "r-qdiabetes")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QDiabetes" version))
       (sha256
        (base32 "0r1rbg3azh7y4f5r9w0zj6qa658f63gyq6b007q514iivkzxib1c"))))
    (properties `((upstream-name . "QDiabetes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/Feakster/qdiabetes")
    (synopsis "Type 2 Diabetes Risk Calculator")
    (description
     "Calculate the risk of developing type 2 diabetes using risk prediction
algorithms derived by @code{ClinRisk}'.")
    (license (license:fsdg-compatible "AGPL-3 + file LICENSE"))))

(define-public r-qdcomparison
  (package
    (name "r-qdcomparison")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QDComparison" version))
       (sha256
        (base32 "0y4494r3ixkyh58xr9md7c6xgcj1hgbjzfybvqqdbawjxvy5p38i"))))
    (properties `((upstream-name . "QDComparison")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QDComparison")
    (synopsis
     "Modern Nonparametric Tools for Two-Sample Quantile and Distribution Comparisons")
    (description
     "Allows practitioners to determine (i) if two univariate distributions (which can
be continuous, discrete, or even mixed) are equal, (ii) how two distributions
differ (shape differences, e.g., location, scale, etc.), and (iii) where two
distributions differ (at which quantiles), all using nonparametric LP
statistics.  The primary reference is Jungreis, D. (2019, Technical Report).")
    (license license:gpl2)))

(define-public r-qdaptools
  (package
    (name "r-qdaptools")
    (version "1.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qdapTools" version))
       (sha256
        (base32 "1cf42lxzqha2ah0yjl144pch50imfr5rf6g0b59xr5jf9x96dsjp"))))
    (properties `((upstream-name . "qdapTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-rcurl r-data-table r-chron))
    (home-page "https://github.com/trinker/qdapTools")
    (synopsis "Tools for the 'qdap' Package")
    (description
     "This package provides a collection of tools associated with the qdap package
that may be useful outside of the context of text analysis.")
    (license license:gpl2)))

(define-public r-qdapdictionaries
  (package
    (name "r-qdapdictionaries")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qdapDictionaries" version))
       (sha256
        (base32 "0jdx7bxmvc4p41jb4fhaagg5jsbsi7gva870cmyia72li52grhyn"))))
    (properties `((upstream-name . "qdapDictionaries")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://trinker.github.com/qdapDictionaries/")
    (synopsis "Dictionaries and Word Lists for the 'qdap' Package")
    (description
     "This package provides a collection of text analysis dictionaries and word lists
for use with the qdap package.")
    (license license:gpl2)))

(define-public r-qdap
  (package
    (name "r-qdap")
    (version "2.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qdap" version))
       (sha256
        (base32 "1dr48b0187w003v98qckzi4zxb6r0yi3jh8f6krknv4c4qasfn9n"))))
    (properties `((upstream-name . "qdap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-wordcloud
                             r-venneuler
                             r-tm
                             r-tidyr
                             r-stringdist
                             r-scales
                             r-reshape2
                             r-rcurl
                             r-rcolorbrewer
                             r-qdaptools
                             r-qdapregex
                             r-qdapdictionaries
                             r-plotrix
                             r-openxlsx
                             r-opennlp
                             r-nlp
                             r-igraph
                             r-gridextra
                             r-ggplot2
                             r-gender
                             r-dplyr
                             r-chron))
    (home-page "https://trinker.github.io/qdap/")
    (synopsis
     "Bridging the Gap Between Qualitative Data and Quantitative Analysis")
    (description
     "Automates many of the tasks associated with quantitative discourse analysis of
transcripts containing discourse including frequency counts of sentence types,
words, sentences, turns of talk, syllables and other assorted analysis tasks.
The package provides parsing tools for preparing transcript data.  Many
functions enable the user to aggregate data by any number of grouping variables,
providing analysis and seamless integration with other R packages that undertake
higher level analysis and visualization of text.  This affords the user a more
efficient and targeted analysis.  qdap is designed for transcript analysis,
however, many functions are applicable to other areas of Text Mining/ Natural
Language Processing.")
    (license license:gpl2)))

(define-public r-qcv
  (package
    (name "r-qcv")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcv" version))
       (sha256
        (base32 "0hf02l9c1cpzs02mfn9swfc8l635qsvh6xrhj21g19h5rxaf8jwg"))))
    (properties `((upstream-name . "qcv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qcv")
    (synopsis "Quantifying Construct Validity")
    (description
     "Primarily, the qcv package computes key indices related to the Quantifying
Construct Validity procedure (QCV; Westen & Rosenthal, 2003
<doi:10.1037/0022-3514.84.3.608>; see also Furr & Heuckeroth, in press).  The
@code{qcv()} function is the heart of the qcv package, but additional functions
in the package provide useful ancillary information related to the QCV
procedure.")
    (license license:gpl2+)))

(define-public r-qcsis
  (package
    (name "r-qcsis")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCSIS" version))
       (sha256
        (base32 "0ibh3060jxf426svdfxiryvfhr8pwk991xs653d50ip4f9290y3a"))))
    (properties `((upstream-name . "QCSIS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.r-project.org")
    (synopsis
     "Sure Independence Screening via Quantile Correlation and Composite Quantile Correlation")
    (description
     "Quantile correlation-sure independence screening (QC-SIS) and composite quantile
correlation-sure independence screening (CQC-SIS) for ultrahigh-dimensional
data.")
    (license license:gpl2)))

(define-public r-qcsimulator
  (package
    (name "r-qcsimulator")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCSimulator" version))
       (sha256
        (base32 "1ff7xagnzibhrwrmkqyky4ik3kx7rrlajrs1ypm210sl1d73jwvs"))))
    (properties `((upstream-name . "QCSimulator")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/tvganesh/QCSimulator")
    (synopsis "5-Qubit Quantum Computing Simulator")
    (description
     "Simulates a 5 qubit Quantum Computer and evaluates quantum circuits with 1,2
qubit quantum gates.")
    (license license:expat)))

(define-public r-qcrlscr
  (package
    (name "r-qcrlscr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcrlscR" version))
       (sha256
        (base32 "0iz7jbir4f20qf3mb5zzdx4zc5kqj37y48lbyjaqgk0qgpvndpdh"))))
    (properties `((upstream-name . "qcrlscR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/wanchanglin/qcrlscR")
    (synopsis "Quality Controlâbased Robust LOESS Signal Correction")
    (description
     "An R implementation of quality controlâbased robust LOESS(local polynomial
regression fitting) signal correction for metabolomics data analysis, described
in Dunn, W., Broadhurst, D., Begley, P. et al. (2011)
<doi:10.1038/nprot.2011.335>.  The optimisation of LOESS's span parameter using
generalized cross-validation (GCV) is provided as an option.  In addition to
signal correction, @code{qcrlscR} includes some utility functions like batch
shifting and data filtering.")
    (license license:gpl2+)))

(define-public r-qcr
  (package
    (name "r-qcr")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcr" version))
       (sha256
        (base32 "14nilw60p2kcabh9w5k8bvdjqx4lm5lj79qiigg3i372byq5gb7r"))))
    (properties `((upstream-name . "qcr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qcc r-mvtnorm r-mass r-fda-usc))
    (home-page "https://github.com/mflores72000/qcr")
    (synopsis "Quality Control Review")
    (description
     "Univariate and multivariate SQC tools that completes and increases the SQC
techniques available in R. Apart from integrating different R packages devoted
to SQC ('qcc','MSQC'), provides nonparametric tools that are highly useful when
Gaussian assumption is not met.  This package computes standard univariate
control charts for individual measurements, X-bar', S', R', p', np', c', u',
EWMA and CUSUM'.  In addition, it includes functions to perform multivariate
control charts such as Hotelling T2', MEWMA and MCUSUM'.  As representative
feature, multivariate nonparametric alternatives based on data depth are
implemented in this package: r', Q and S control charts.  In addition, Phase I
and II control charts for functional data are included.  This package also
allows the estimation of the most complete set of capability indices from first
to fourth generation, covering the nonparametric alternatives, and performing
the corresponding capability analysis graphical outputs, including the process
capability plots.  See Flores et al. (2021) <doi:10.32614/RJ-2021-034>.")
    (license license:gpl2+)))

(define-public r-qcqpcr
  (package
    (name "r-qcqpcr")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcQpcr" version))
       (sha256
        (base32 "1298zla8z5w9z4idc07v3ca9rc1afx853y7iz3jmqnqnv8mr0s48"))))
    (properties `((upstream-name . "qcQpcr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=qcQpcr")
    (synopsis "Histone ChIP-Seq qPCR Analyzer")
    (description
     "Quality control of chromatin immunoprecipitation libraries (@code{ChIP-seq}) by
quantitative polymerase chain reaction (@code{qPCR}).  This function calculates
Enrichment value with respect to reference for each histone modification
(specific to Vii7 software
<http://www.thermofisher.com/ca/en/home/life-science/pcr/real-time-pcr/real-time-pcr-instruments/viia-7-real-time-pcr-system/viia-7-software.html>).
 This function is applicable to full panel of histone modifications described by
International Human Epigenomic Consortium (IHEC).")
    (license license:expat)))

(define-public r-qcpm
  (package
    (name "r-qcpm")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcpm" version))
       (sha256
        (base32 "09akywvxry40lgpbw1kvfilh40jd7ck8547idskqczsql232jn9d"))))
    (properties `((upstream-name . "qcpm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-csem r-broom))
    (home-page "https://cran.r-project.org/package=qcpm")
    (synopsis "Quantile Composite Path Modeling")
    (description
     "This package implements the Quantile Composite-based Path Modeling approach
(Davino and Vinzi, 2016 <doi:10.1007/s11634-015-0231-9>; Dolce et al., 2021
<doi:10.1007/s11634-021-00469-0>).  The method complements the traditional PLS
Path Modeling approach, analyzing the entire distribution of outcome variables
and, therefore, overcoming the classical exploration of only average effects.
It exploits quantile regression to investigate changes in the relationships
among constructs and between constructs and observed variables.")
    (license license:gpl3)))

(define-public r-qcluster
  (package
    (name "r-qcluster")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcluster" version))
       (sha256
        (base32 "0w6m2iasr0q2r8a1jy31x11cxjgkjb8f6l2lcxsh91c80p4g17jj"))))
    (properties `((upstream-name . "qcluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-iterators r-foreach r-doparallel r-cluster))
    (home-page "https://cran.r-project.org/package=qcluster")
    (synopsis "Clustering via Quadratic Scoring")
    (description
     "This package performs tuning of clustering models, methods and algorithms
including the problem of determining an appropriate number of clusters.
Validation of cluster analysis results is performed via quadratic scoring using
resampling methods, as in Coraggio, L. and Coretto, P. (2023)
<doi:10.1016/j.jmva.2023.105181>.")
    (license license:gpl2+)))

(define-public r-qch
  (package
    (name "r-qch")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qch" version))
       (sha256
        (base32 "0s0qxkahlyzpzvy5n94q9hk49kmlb39jzrjyqra8kr1l092avfhr"))))
    (properties `((upstream-name . "qch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rcpparmadillo
                             r-rcpp
                             r-qvalue
                             r-purrr
                             r-ks
                             r-dplyr
                             r-copula))
    (home-page "https://cran.r-project.org/package=qch")
    (synopsis "Query Composite Hypotheses")
    (description
     "This package provides functions for the joint analysis of Q sets of p-values
obtained for the same list of items.  This joint analysis is performed by
querying a composite hypothesis, i.e.  an arbitrary complex combination of
simple hypotheses, as described in Mary-Huard et al. (2021)
<doi:10.1093/bioinformatics/btab592> and De Walsche et al.(2023)
<doi:10.1101/2024.03.17.585412>.  In this approach, the Q-uplet of p-values
associated with each item is distributed as a multivariate mixture, where each
of the 2^Q components corresponds to a specific combination of simple
hypotheses.  The dependence between the p-value series is considered using a
Gaussian copula function.  A p-value for the composite hypothesis test is
derived from the posterior probabilities.")
    (license license:gpl3)))

(define-public r-qcgwas
  (package
    (name "r-qcgwas")
    (version "1.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCGWAS" version))
       (sha256
        (base32 "1ds129gvp5pvvm3v6ys5102d5g59mb6cb074zmz9fb3q3p4yknvd"))))
    (properties `((upstream-name . "QCGWAS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QCGWAS")
    (synopsis "Quality Control of Genome Wide Association Study Results")
    (description
     "This package provides tools for (automated and manual) quality control of the
results of Genome Wide Association Studies.")
    (license license:gpl3+)))

(define-public r-qcewas
  (package
    (name "r-qcewas")
    (version "1.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCEWAS" version))
       (sha256
        (base32 "02xl3ydh1mlf3jaixhm5wm5ndcbfhyqkagb4ywi46vs8dj2jl7q3"))))
    (properties `((upstream-name . "QCEWAS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=QCEWAS")
    (synopsis "Fast and Easy Quality Control of EWAS Results Files")
    (description
     "This package provides tools for (automated and manual) quality control of the
results of Epigenome-Wide Association Studies.")
    (license license:gpl3+)))

(define-public r-qccrs
  (package
    (name "r-qccrs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qccrs" version))
       (sha256
        (base32 "0lwrmf2809zzdj5f25bb1psh57ibyw90ra41fy2i9vjmgph9wgiq"))))
    (properties `((upstream-name . "qccrs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-purrr r-magrittr r-dplyr))
    (home-page "https://github.com/myaseen208/qccrs")
    (synopsis "Quality Control Charts under Repetitive Sampling")
    (description
     "This package provides functions to calculate Average Sample Numbers (ASN),
Average Run Length (ARL1) and value of k, k1 and k2 for quality control charts
under repetitive sampling as given in Aslam et al. (2014)
(<DOI:10.7232/iems.2014.13.1.101>).")
    (license license:gpl2)))

(define-public r-qcc
  (package
    (name "r-qcc")
    (version "2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcc" version))
       (sha256
        (base32 "0lc26w7p3d023lfr8v6v75m2vwqg9vi9pdipap19l4vbdq29l4zz"))))
    (properties `((upstream-name . "qcc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luca-scr/qcc")
    (synopsis "Quality Control Charts")
    (description
     "Shewhart quality control charts for continuous, attribute and count data.  Cusum
and EWMA charts.  Operating characteristic curves.  Process capability analysis.
 Pareto chart and cause-and-effect chart.  Multivariate control charts.")
    (license license:gpl2+)))

(define-public r-qcba
  (package
    (name "r-qcba")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qCBA" version))
       (sha256
        (base32 "1a6329x3zd8mgf5l38rrs9cz1yzmsf6whfa6h37iprpcxsmzz9n0"))))
    (properties `((upstream-name . "qCBA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-arulescba r-arules r-arc))
    (home-page "https://github.com/kliegr/QCBA")
    (synopsis
     "Postprocessing of Rule Classification Models Learnt on Quantized Data")
    (description
     "This package implements the Quantitative Classification-based on Association
Rules (QCBA) algorithm (<doi:10.1007/s10489-022-04370-x>).  QCBA postprocesses
rule classification models making them typically smaller and in some cases more
accurate.  Supported are CBA implementations from @code{rCBA}', @code{arulesCBA}
and arc packages, and CPAR', CMAR', FOIL2 and PRM implementations from
@code{arulesCBA} package and SBRL implementation from the sbrl package.  The
result of the post-processing is an ordered CBA-like rule list.")
    (license license:gpl3)))

(define-public r-qcauchyreg
  (package
    (name "r-qcauchyreg")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcauchyreg" version))
       (sha256
        (base32 "1jry8xg6q4d9bxznrw8jxlbivnf5y944xdzv320fv4milk22g30x"))))
    (properties `((upstream-name . "qcauchyreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg))
    (home-page "<https://www.r-project.org>")
    (synopsis "Quantile Regression Quasi-Cauchy")
    (description
     "Quasi-Cauchy quantile regression, proposed by de Oliveira, Ospina, Leiva,
Figueroa-Zuniga and Castro (2023) <doi:10.3390/fractalfract7090667>.  This
regression model is useful for the case where you want to model data of a nature
limited to the intervals [0,1], (0,1], [0,1) or (0,1) and you want to use a
quantile approach.")
    (license license:gpl3)))

(define-public r-qcatools
  (package
    (name "r-qcatools")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCAtools" version))
       (sha256
        (base32 "1q49l2mf02hqvz2ahqjdx7i3yxniy7dn2s74xjl9l6zdq8bypfw2"))))
    (properties `((upstream-name . "QCAtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-qca r-ggplot2 r-directlabels))
    (home-page "https://cran.r-project.org/package=QCAtools")
    (synopsis "Helper Functions for QCA in R")
    (description
     "Helper functions for Qualitative Comparative Analysis: evaluate and plot Boolean
formulae on fuzzy set score data, apply Boolean operations, compute consistency
and coverage measures.")
    (license license:gpl3+)))

(define-public r-qcapro
  (package
    (name "r-qcapro")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCApro" version))
       (sha256
        (base32 "1glfb1x1h05cs07nq5glqvlil58wp3c0kaxi1l7k94y797i8r7hq"))))
    (properties `((upstream-name . "QCApro")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=QCApro")
    (synopsis
     "Advanced Functionality for Performing and Evaluating Qualitative Comparative Analysis")
    (description
     "This package provides advanced functionality for performing configurational
comparative research with Qualitative Comparative Analysis (QCA), including
crisp-set, multi-value, and fuzzy-set QCA. It also offers advanced tools for
sensitivity diagnostics and methodological evaluations of QCA.")
    (license license:gpl3)))

(define-public r-qcapower
  (package
    (name "r-qcapower")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qcapower" version))
       (sha256
        (base32 "14vszidjvyi8namwv5k0hpgdw1dpns5ilvxfwa920ivdg35709ki"))))
    (properties `((upstream-name . "qcapower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-ggforce r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ingorohlfing/qcapower")
    (synopsis "Estimate Power and Required Sample Size in QCA")
    (description
     "Researchers working with Qualitative Comparative Analysis (QCA) can use the
package to estimate power of a sufficient term using permutation tests.  A term
can be anything: A condition, conjunction or disjunction of any combination of
these.  The package further allows users to plot the estimation results and to
estimate the number of cases required to achieve a certain level of power, given
a prespecified null and alternative hypothesis.  Reference for the article
introducing power estimation for QCA is: Rohlfing, Ingo (2018)
<doi:10.1017/pan.2017.30> (ungated version: <doi:10.17605/OSF.IO/PC4DF>).")
    (license license:gpl3)))

(define-public r-qca
  (package
    (name "r-qca")
    (version "3.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QCA" version))
       (sha256
        (base32 "016xvl4mwq51l55v3k5pvi996lvzvak71arggfjr7r0sfa6b1kym"))))
    (properties `((upstream-name . "QCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  (guix build minify-build-system)
                  (guix build utils)
                  (ice-9 match))
      #:imported-modules `(,@%r-build-system-modules (guix build
                                                      minify-build-system))
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'process-javascript
                    (lambda* (#:key inputs #:allow-other-keys)
                      (with-directory-excursion "inst/"
                        (for-each (match-lambda
                                    ((source . target) (minify source
                                                               #:target target)))
                                  '())))))))
    (propagated-inputs (list r-venn r-shiny r-lpsolve r-declared r-admisc))
    (native-inputs (list esbuild))
    (home-page "https://github.com/dusadrian/QCA")
    (synopsis "Qualitative Comparative Analysis")
    (description
     "An extensive set of functions to perform Qualitative Comparative Analysis: crisp
sets ('@code{csQCA}'), temporal ('@code{tQCA}'), multi-value ('@code{mvQCA}')
and fuzzy sets ('@code{fsQCA}'), using a GUI - graphical user interface.  QCA is
a methodology that bridges the qualitative and quantitative divide in social
science research.  It uses a Boolean minimization algorithm, resulting in a
minimal causal configuration associated with a given phenomenon.")
    (license license:gpl3+)))

(define-public r-qbr
  (package
    (name "r-qbr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qbr" version))
       (sha256
        (base32 "12ryph64x3219fcsnx59xpr9wf22d7akqz6y8znc52xz6ikmrkry"))))
    (properties `((upstream-name . "qbr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr2
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/BHII-KSC/qbr")
    (synopsis "Access the 'Quickbase' JSON API")
    (description
     "Programmatically access the Quickbase JSON API
<https://developer.quickbase.com>.  You supply parameters for an API call, qbr
delivers an http request to the API endpoint and returns its response.  Outputs
follow tidyverse philosophy.")
    (license license:gpl3+)))

(define-public r-qboxplot
  (package
    (name "r-qboxplot")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qboxplot" version))
       (sha256
        (base32 "07f05n7zxgwyxg2r5fz691ra64m218w9v874xfzjx6671c40y1q2"))))
    (properties `((upstream-name . "qboxplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=qboxplot")
    (synopsis "Quantile-Based Boxplot")
    (description "Produce quantile-based box-and-whisker plot(s).")
    (license license:gpl2)))

(define-public r-qbms
  (package
    (name "r-qbms")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QBMS" version))
       (sha256
        (base32 "1b75qvcwm7c1f0387igw5ayafl66k8yrp1b78cb0yczhmaxx3bvm"))))
    (properties `((upstream-name . "QBMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-rsqlite
                             r-rnetcdf
                             r-jsonlite
                             r-httr2
                             r-future-apply
                             r-future
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://icarda-git.github.io/QBMS/")
    (synopsis "Query the Breeding Management System(s)")
    (description
     "This R package assists breeders in linking data systems with their analytic
pipelines, a crucial step in digitizing breeding processes.  It supports
querying and retrieving phenotypic and genotypic data from systems like EBS
<https://ebs.excellenceinbreeding.org/>, BMS <https://bmspro.io>,
@code{BreedBase} <https://breedbase.org>, and GIGWA
<https://github.com/@code{SouthGreenPlatform/Gigwa2>} (using @code{BrAPI}
<https://brapi.org> calls).  Extra helper functions support environmental data
sources, including @code{TerraClimate}
<https://www.climatologylab.org/terraclimate.html> and FAO HWSDv2
<https://gaez.fao.org/pages/hwsd> soil database.")
    (license license:gpl3+)))

(define-public r-qbld
  (package
    (name "r-qbld")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qbld" version))
       (sha256
        (base32 "0zz2n8f4cn03k80wakfgjhablxhbr8hxj5ydl4m7zlya4kdkl5md"))))
    (properties `((upstream-name . "qbld")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stablegr
                             r-rmarkdown
                             r-rcppdist
                             r-rcpparmadillo
                             r-rcpp
                             r-mcmcse
                             r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=qbld")
    (synopsis "Quantile Regression for Binary Longitudinal Data")
    (description
     "This package implements the Bayesian quantile regression model for binary
longitudinal data (QBLD) developed in Rahman and Vossmeyer (2019)
<DOI:10.1108/S0731-90532019000040B009>.  The model handles both fixed and random
effects and implements both a blocked and an unblocked Gibbs sampler for
posterior inference.")
    (license license:gpl3)))

(define-public r-qbinplots
  (package
    (name "r-qbinplots")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qbinplots" version))
       (sha256
        (base32 "0h05bx09ws4kp82s7vwz5v99ghlgyg3zir11wmi5mydpwabahv0h"))))
    (properties `((upstream-name . "qbinplots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-patchwork r-ggplot2 r-data-table))
    (home-page "https://edwindj.github.io/qbinplots/")
    (synopsis "Quantile Binned Plots")
    (description
     "Create quantile binned and conditional plots for Exploratory Data Analysis.  The
package provides several plotting functions that are all based on quantile
binning.  The plots are created with ggplot2 and patchwork and can be further
adjusted.")
    (license license:expat)))

(define-public r-qapprox
  (package
    (name "r-qapprox")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Qapprox" version))
       (sha256
        (base32 "0mv3xfy847lqh95mpccjiw5jjbml7dwrna7i16532sdqcxaq4m02"))))
    (properties `((upstream-name . "Qapprox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Qapprox")
    (synopsis
     "Approximation to the Survival Functions of Quadratic Forms of Gaussian Variables")
    (description
     "Calculates the right-tail probability of quadratic forms of Gaussian variables
using the skewness-kurtosis ratio matching method, modified Liu-Tang-Zhang
method and Satterthwaite-Welch method.  The technical details can be found in
Hong Zhang, Judong Shen and Zheyang Wu (2020) <@code{arXiv:2005.00905>}.")
    (license license:gpl2)))

(define-public r-qape
  (package
    (name "r-qape")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qape" version))
       (sha256
        (base32 "18ryi0mxpm6rcfqj8dl4rvmkcpkch4yv001lwkbsipdm206704ys"))))
    (properties `((upstream-name . "qape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-plyr
                             r-mvtnorm
                             r-matrixcalc
                             r-matrix
                             r-lme4
                             r-future-apply
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=qape")
    (synopsis "Quantile of Absolute Prediction Errors")
    (description
     "Estimates QAPE using bootstrap procedures.  The residual, parametric and double
bootstrap is used.  The test of normality using Cholesky decomposition is added.
 Y pop is defined.")
    (license license:gpl2)))

(define-public r-qaig
  (package
    (name "r-qaig")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QAIG" version))
       (sha256
        (base32 "04ygizvplvrzhf1p0vwj75x7k8sl0ym5zbrsvn63y983awih2p6i"))))
    (properties `((upstream-name . "QAIG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shubh-b/QAIG")
    (synopsis
     "Automatic Item Generator for Quantitative Multiple-Choice Items")
    (description
     "This package provides a tool for automatic generation of sibling items from a
parent item model defined by the user.  It is an implementation of the process
automatic item generation (AIG) focused on generating quantitative
multiple-choice type of items (see Embretson, Kingston (2018)
<doi:10.1111/jedm.12166>).")
    (license license:gpl3)))

(define-public r-qaensemble
  (package
    (name "r-qaensemble")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "QAEnsemble" version))
       (sha256
        (base32 "1w4bw8h6glvl1g0p0kwykk36y19wp1kmm57sqisc5zgq4zxnhgdr"))))
    (properties `((upstream-name . "QAEnsemble")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=QAEnsemble")
    (synopsis
     "Ensemble Quadratic and Affine Invariant Markov Chain Monte Carlo")
    (description
     "The Ensemble Quadratic and Affine Invariant Markov chain Monte Carlo algorithms
provide an efficient way to perform Bayesian inference in difficult parameter
space geometries.  The Ensemble Quadratic Monte Carlo algorithm was developed by
Militzer (2023) <doi:10.3847/1538-4357/ace1f1>.  The Ensemble Affine Invariant
algorithm was developed by Goodman and Weare (2010)
<doi:10.2140/camcos.2010.5.65> and it was implemented in Python by
Foreman-Mackey et al (2013) <doi:10.48550/@code{arXiv.1202.3665>}.  The
Quadratic Monte Carlo method was shown to perform better than the Affine
Invariant method in the paper by Militzer (2023) <doi:10.3847/1538-4357/ace1f1>
and the Quadratic Monte Carlo method is the default method used.  The Chen-Shao
Highest Posterior Density Estimation algorithm is used for obtaining credible
intervals and the potential scale reduction factor diagnostic is used for
checking the convergence of the chains.")
    (license license:gpl2+)))

(define-public r-qad
  (package
    (name "r-qad")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qad" version))
       (sha256
        (base32 "1jn71nwnzib8rk102l5gqwz1dl1xdjrwlqzrqj2sx4jw37h718pr"))))
    (properties `((upstream-name . "qad")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-rcpp
                             r-ggplot2
                             r-ggextra
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-copula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/griefl/qad")
    (synopsis "Quantification of Asymmetric Dependence")
    (description
     "This package provides a copula-based measure for quantifying asymmetry in
dependence and associations.  Documentation and theory about qad is provided by
the paper by Junker, Griessenberger & Trutschnig (2021,
<doi:10.1016/j.csda.2020.107058>), and the paper by Trutschnig (2011,
<doi:10.1016/j.jmaa.2011.06.013>).")
    (license license:gpl2)))

(define-public r-qacbase
  (package
    (name "r-qacbase")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "qacBase" version))
       (sha256
        (base32 "0rmxmaaa162w1qrbkcm2fd2rnrp2kqjjh6mpszpv1lpfdaq7p4yq"))))
    (properties `((upstream-name . "qacBase")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-pmcmrplus
                             r-patchwork
                             r-multcompview
                             r-haven
                             r-ggplot2
                             r-ggextra
                             r-ggcorrplot
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rkabacoff/qacBase")
    (synopsis "Functions to Facilitate Exploratory Data Analysis")
    (description
     "This package provides functions for descriptive statistics, data management, and
data visualization.")
    (license license:expat)))

(define-public r-q7
  (package
    (name "r-q7")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Q7" version))
       (sha256
        (base32 "09jhqraajvlm7iiri4f7xlllkcx8q5h3sg472ishj47wg5qf2rym"))))
    (properties `((upstream-name . "Q7")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Q7")
    (synopsis "Types and Features for Object Oriented Programming")
    (description
     "Construct message-passing style objects with types and features.  Q7 types uses
composition instead of inheritance in creating derived types, allowing defining
any code segment as feature and associating any feature to any object.  Compared
to R6, Q7 is simpler and more flexible, and is more friendly in syntax.")
    (license license:gpl3)))

(define-public r-q2q
  (package
    (name "r-q2q")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Q2q" version))
       (sha256
        (base32 "0v50kc22cnkcwazwhclxsra7v8h023ih52mpwnrl2vj8cl58c9k2"))))
    (properties `((upstream-name . "Q2q")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/Farid-FLICI/Q2q")
    (synopsis "Interpolating Age-Specific Mortality Rates at All Ages")
    (description
     "Mortality rates are typically provided in an abridged format, i.e., by age
groups 0, [1, 5], [5, 10]', [10, 15]', and so on.  Some applications necessitate
a detailed (single) age description.  Despite the large number of proposed
approaches in the literature, only a few methods ensure great performance at
both younger and higher ages.  For example, the 6-term Lagrange interpolation
function is well suited to mortality interpolation at younger ages (with
irregular intervals), but not at older ages.  The Karup-King method, on the
other hand, performs well at older ages but is not suitable for younger ones.
Interested readers can find a full discussion of the two stated methods in the
book Shryock, Siegel, and Associates (1993).The Q2q package combines the two
methods to allow for the interpolation of mortality rates across all age groups.
 It begins by implementing each method independently, and then the resulting
curves are linked using a 5-age averaged error between the two partial curves.")
    (license license:gpl2+)))

