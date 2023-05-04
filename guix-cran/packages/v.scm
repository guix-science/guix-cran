(define-module (guix-cran packages v)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages web)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages compression)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
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

(define-public r-vwpre
  (package
    (name "r-vwpre")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VWPre" version))
              (sha256
               (base32
                "1hhpqxzh9h5dy45r04l1fa1k4a14s0m6z6fhfg22kpwpryszbc44"))))
    (properties `((upstream-name . "VWPre")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-rlang
                             r-mgcv
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VWPre")
    (synopsis "Tools for Preprocessing Visual World Data")
    (description
     "Gaze data from the Visual World Paradigm requires significant preprocessing
prior to plotting and analyzing the data.  This package provides functions for
preparing visual world eye-tracking data for statistical analysis and plotting.
It can prepare data for linear analyses (e.g., ANOVA, Gaussian-family LMER,
Gaussian-family GAMM) as well as logistic analyses (e.g., binomial-family LMER
and binomial-family GAMM).  Additionally, it contains various plotting functions
for creating grand average and conditional average plots.  See the vignette for
samples of the functionality.  Currently, the functions in this package are
designed for handling data collected with SR Research Eyelink eye trackers using
Sample Reports created in SR Research Data Viewer.  While we would like to add
functionality for data collected with other systems in the future, the current
package is considered to be feature-complete; further updates will mainly entail
maintenance and the addition of minor functionality.")
    (license license:gpl3)))

(define-public r-vwline
  (package
    (name "r-vwline")
    (version "0.2-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vwline" version))
              (sha256
               (base32
                "1hilr996xn5wh8kfyab55w2i1c02a8x909h4ahag5q6s7603qng5"))))
    (properties `((upstream-name . "vwline")))
    (build-system r-build-system)
    (propagated-inputs (list r-polyclip r-gridbezier))
    (home-page "https://github.com/pmur002/vwline")
    (synopsis "Draw Variable-Width Lines")
    (description
     "This package provides R functions to draw lines and curves with the width of the
curve allowed to vary along the length of the curve.")
    (license license:gpl2+)))

(define-public r-vvsculptor
  (package
    (name "r-vvsculptor")
    (version "0.4.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vvsculptor" version))
              (sha256
               (base32
                "076fdzhr5b39k1vavj3jf7897vpdjgfbf8fxxqi6y4cy0pz4iisi"))))
    (properties `((upstream-name . "vvsculptor")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=vvsculptor")
    (synopsis "Apply Manipulations to Data Frames")
    (description
     "This package provides a set of functions for manipulating data frames in
accordance with specific business rules.  In addition, it includes wrapper
functions for commonly used functions from the popular tidyverse package, making
it easy to integrate these functions into data analysis workflows.  The package
is designed to streamline data preprocessing and help users quickly and
efficiently perform data transformations that are specific to their business
needs.")
    (license license:expat)))

(define-public r-vvmover
  (package
    (name "r-vvmover")
    (version "1.5.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vvmover" version))
              (sha256
               (base32
                "1aaky8vs9yl9k3qfd3lm4wj234gp5z0pgff1lfqj2p0av18q6nn8"))))
    (properties `((upstream-name . "vvmover")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-readr r-dplyr))
    (home-page "https://cran.r-project.org/package=vvmover")
    (synopsis "Read and Write Data")
    (description
     "Offers a wide range of functions for reading and writing data in various file
formats, including CSV, RDS, Excel and ZIP files.  Additionally, it provides
functions for retrieving metadata associated with files, such as file size and
creation date, making it easy to manage and organize large data sets.  This
package is designed to simplify data import and export tasks, and provide users
with a comprehensive set of tools to work with different types of data files.")
    (license license:expat)))

(define-public r-vvfiller
  (package
    (name "r-vvfiller")
    (version "0.6.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vvfiller" version))
              (sha256
               (base32
                "0kknnnkfdw9h4wxs215pgmg1j0mbl5lqfw4xl0il8rw6n0yy7vsn"))))
    (properties `((upstream-name . "vvfiller")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-purrr r-dplyr))
    (home-page "https://github.com/vusaverse/vvfiller")
    (synopsis "Fill Data Points")
    (description
     "This package provides numerous functions to fill data.  These can be applied
either to missing or skewed data.  The functions are designed within the scope
of Student Analytics.")
    (license license:expat)))

(define-public r-vvconverter
  (package
    (name "r-vvconverter")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vvconverter" version))
              (sha256
               (base32
                "12bnrrvbad7njgqvkb0hp1a041qnyvfiqlg1aaqkym29wlc2zwk3"))))
    (properties `((upstream-name . "vvconverter")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-lubridate r-dplyr))
    (home-page "https://cran.r-project.org/package=vvconverter")
    (synopsis "Apply Transformations to Data")
    (description
     "This package provides a set of functions for data transformations.
Transformations are performed on character and numeric data.  As the scope of
the package is within Student Analytics, there are functions focused around the
academic year.")
    (license license:expat)))

(define-public r-vvauditor
  (package
    (name "r-vvauditor")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vvauditor" version))
              (sha256
               (base32
                "0b8gflvvhxasaxhkyc45qr6z07xk22kh3g4n9rgbsl4816g8x64m"))))
    (properties `((upstream-name . "vvauditor")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-magrittr r-findr r-dplyr))
    (home-page "https://cran.r-project.org/package=vvauditor")
    (synopsis "Creates Assertion Tests")
    (description
     "Offers a comprehensive set of assertion tests to help users validate the
integrity of their data.  These tests can be used to check for specific
conditions or properties within a dataset and help ensure that data is accurate
and reliable.  The package is designed to make it easy to add quality control
checks to data analysis workflows and to aid in identifying and correcting any
errors or inconsistencies in data.")
    (license license:expat)))

(define-public r-vurocs
  (package
    (name "r-vurocs")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VUROCS" version))
              (sha256
               (base32
                "1r4hq7az50v7lbyx5w6b4zs2kwi5cypqn9k6ac4kr8jr3jlyanr3"))))
    (properties `((upstream-name . "VUROCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=VUROCS")
    (synopsis "Volume under the ROC Surface for Multi-Class ROC Analysis")
    (description
     "Calculates the volume under the ROC surface and its (co)variance for ordered
multi-class ROC analysis as well as certain bivariate ordinal measures of
association.")
    (license license:gpl3)))

(define-public r-vulntoolkit
  (package
    (name "r-vulntoolkit")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VulnToolkit" version))
              (sha256
               (base32
                "01m8spmd4na7mxgnplnnq3n4pab9349z2dk44b455vcadll0fsdi"))))
    (properties `((upstream-name . "VulnToolkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/troyhill/VulnToolkit")
    (synopsis "Analysis of Tidal Datasets")
    (description
     "This package contains functions for analysis and summary of tidal datasets.
Also provides access to tidal data collected by the National Oceanic and
Atmospheric Administration's Center for Operational Oceanographic Products and
Services and the Permanent Service for Mean Sea Level.  For detailed description
and application examples, see Hill, T.D. and S.C. Anisfeld (2021)
<doi:10.6084/m9.figshare.14161202.v1> and Hill, T.D. and S.C. Anisfeld (2015)
<doi:10.1016/j.ecss.2015.06.004>.")
    (license license:gpl3)))

(define-public r-vuer
  (package
    (name "r-vuer")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vueR" version))
              (sha256
               (base32
                "0am4iwgadi9c9f7zm5zx3nrzyhy7w1qgp9rkyypzwb6bicjjb9cz"))))
    (properties `((upstream-name . "vueR")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/vue-r/vueR")
    (synopsis "'Vuejs' Helpers and 'Htmlwidget'")
    (description
     "Make it easy to use vue in R with helper dependency functions and examples.")
    (license license:expat)))

(define-public r-vudc
  (package
    (name "r-vudc")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vudc" version))
              (sha256
               (base32
                "0zxz6n3ixa3xjzcinky8ymqjx9w8y8z65mz8d84dl00mxzkmkz4h"))))
    (properties `((upstream-name . "vudc")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vudc")
    (synopsis "Visualization of Univariate Data for Comparison")
    (description
     "This package contains functions for visualization univariate data: ccdplot and
qddplot.")
    (license license:gpl2+)))

(define-public r-vtype
  (package
    (name "r-vtype")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vtype" version))
              (sha256
               (base32
                "0j070bn86a6hlg99h2qaf0dlbnjjsmx1zdcmvl3acymr31bqyvrj"))))
    (properties `((upstream-name . "vtype")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vtype")
    (synopsis "Estimates the Variable Type in Error Afflicted Data")
    (description
     "Estimates the type of variables in non-quality controlled data.  The prediction
is based on a random forest model, trained on over 5000 medical variables with
accuracy of 99%.  The accuracy can hardy depend on type and coding style of
data.")
    (license license:gpl3+)))

(define-public r-vtshiny
  (package
    (name "r-vtshiny")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VTShiny" version))
              (sha256
               (base32
                "1zq6irla3q7hqs8jpjdya7vy3frqrj72rwmd1sgxwrkgpmpxw6x7"))))
    (properties `((upstream-name . "VTShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rmarkdown r-envstats))
    (home-page "https://cran.r-project.org/package=VTShiny")
    (synopsis "Interactive Document for Working with Variance Analysis")
    (description
     "An interactive document on the topic of variance analysis using rmarkdown and
shiny packages.  Runtime examples are provided in the package function as well
as at <https://predanalyticssessions1.shinyapps.io/chisquareVarianceTest/>.")
    (license license:gpl2)))

(define-public r-vtree
  (package
    (name "r-vtree")
    (version "5.6.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vtree" version))
              (sha256
               (base32
                "0qszya11qh2xzq1blbrcli3l8hhf0dannhh2hn3gi59c9dn3jr16"))))
    (properties `((upstream-name . "vtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-utf8
                             r-shiny
                             r-rsvg
                             r-htmlwidgets
                             r-diagrammersvg
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nbarrowman/vtree")
    (synopsis "Display Information About Nested Subsets of a Data Frame")
    (description
     "This package provides a tool for calculating and drawing \"variable trees\".
Variable trees display information about nested subsets of a data frame.")
    (license license:gpl3)))

(define-public r-vtreat
  (package
    (name "r-vtreat")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vtreat" version))
              (sha256
               (base32
                "181nsjl811m3k1123bvgnnwr253sc2mbj4ljzmawz9wl7dfbwfij"))))
    (properties `((upstream-name . "vtreat")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrapr r-digest))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/WinVector/vtreat/")
    (synopsis "Statistically Sound 'data.frame' Processor/Conditioner")
    (description
     "This package provides a data.frame processor/conditioner that prepares
real-world data for predictive modeling in a statistically sound manner.  vtreat
prepares variables so that data has fewer exceptional cases, making it easier to
safely use models in production.  Common problems vtreat defends against: Inf',
NA', too many categorical levels, rare categorical levels, and new categorical
levels (levels seen during application, but not during training).  Reference:
\"'vtreat': a data.frame Processor for Predictive Modeling\", Zumel, Mount, 2016,
<DOI:10.5281/zenodo.1173313>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-vtable
  (package
    (name "r-vtable")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vtable" version))
              (sha256
               (base32
                "1fc8p4d7c7jy2sxpcbf1qjaq2qz678v0ivlmrxphbmdh6x2lscwy"))))
    (properties `((upstream-name . "vtable")))
    (build-system r-build-system)
    (propagated-inputs (list r-sjlabelled r-rstudioapi r-knitr r-kableextra
                             r-haven))
    (native-inputs (list r-knitr))
    (home-page "https://nickch-k.github.io/vtable/")
    (synopsis "Variable Table for Variable Documentation")
    (description
     "Automatically generates HTML variable documentation including variable names,
labels, classes, value labels (if applicable), value ranges, and summary
statistics.  See the vignette \"vtable\" for a package overview.")
    (license license:expat)))

(define-public r-vsurf
  (package
    (name "r-vsurf")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VSURF" version))
              (sha256
               (base32
                "14rkd1n7ffy7hz3xgqqysbphy89h6lpmkhjrlpsfmwb2jzhv29y0"))))
    (properties `((upstream-name . "VSURF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-randomforest r-foreach r-doparallel))
    (home-page "https://github.com/robingenuer/VSURF")
    (synopsis "Variable Selection Using Random Forests")
    (description
     "Three steps variable selection procedure based on random forests.  Initially
developed to handle high dimensional data (for which number of variables largely
exceeds number of observations), the package is very versatile and can treat
most dimensions of data, for regression and supervised classification problems.
First step is dedicated to eliminate irrelevant variables from the dataset.
Second step aims to select all variables related to the response for
interpretation purpose.  Third step refines the selection by eliminating
redundancy in the set of variables selected by the second step, for prediction
purpose.  Genuer, R. Poggi, J.-M. and Tuleau-Malot, C. (2015)
<https://journal.r-project.org/archive/2015-2/genuer-poggi-tuleaumalot.pdf>.")
    (license license:gpl2+)))

(define-public r-vstsr
  (package
    (name "r-vstsr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vstsr" version))
              (sha256
               (base32
                "071nfxkwwpbp2d8khxq7d1pp268pa1fcfj619bs6xwg4wk9srr3k"))))
    (properties `((upstream-name . "vstsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcurl r-r6 r-jsonlite r-httr))
    (home-page "https://github.com/ashbaldry/vstsr")
    (synopsis "Access to 'Azure DevOps' API via R")
    (description
     "Implementation of Azure DevOps <https://azure.microsoft.com/> API calls.  It
enables the extraction of information about repositories, build and release
definitions and individual releases.  It also helps create repositories and work
items within a project without logging into Azure DevOps'.  There is the ability
to use any API service with a shell for any non-predefined call.")
    (license license:gpl2)))

(define-public r-vsp
  (package
    (name "r-vsp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vsp" version))
              (sha256
               (base32
                "0aa3vqzazh0x5irbmqh9ac1xiprwnbgbrjl9bybxzynl91hwg9yw"))))
    (properties `((upstream-name . "vsp")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rspectra
                             r-rlang
                             r-matrix
                             r-magrittr
                             r-lrmf3
                             r-invertiforms
                             r-glue
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RoheLab/vsp")
    (synopsis "Vintage Sparse PCA for Semi-Parametric Factor Analysis")
    (description
     "This package provides fast spectral estimation of latent factors in random dot
product graphs using the vsp estimator.  Under mild assumptions, the vsp
estimator is consistent for (degree-corrected) stochastic blockmodels,
(degree-corrected) mixed-membership stochastic blockmodels, and degree-corrected
overlapping stochastic blockmodels.")
    (license license:expat)))

(define-public r-vsolassobag
  (package
    (name "r-vsolassobag")
    (version "0.99.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VSOLassoBag" version))
              (sha256
               (base32
                "1jmnm435x36jlhbzl7kgjiby7kb7yjhh013zdnnvf9pcjaallqn9"))))
    (properties `((upstream-name . "VSOLassoBag")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-summarizedexperiment
                             r-pot
                             r-pbapply
                             r-glmnet
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VSOLassoBag")
    (synopsis "Variable Selection Oriented LASSO Bagging Algorithm")
    (description
     "This package provides a wrapped LASSO approach by integrating an ensemble
learning strategy to help select efficient, stable, and high confidential
variables from omics-based data.  Using a bagging strategy in combination of a
parametric method or inflection point search method for cut-off threshold
determination.  This package can integrate and vote variables generated from
multiple LASSO models to determine the optimal candidates.  Luo H, Zhao Q, et al
(2020) <doi:10.1126/scitranslmed.aax7533> for more details.")
    (license license:gpl3)))

(define-public r-vsgoftest
  (package
    (name "r-vsgoftest")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vsgoftest" version))
              (sha256
               (base32
                "0vypi4cf04bljmx3jwq3ixs86ivd6p7a825ik189y71fyqg9g70v"))))
    (properties `((upstream-name . "vsgoftest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-fitdistrplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vsgoftest")
    (synopsis "Goodness-of-Fit Tests Based on Kullback-Leibler Divergence")
    (description
     "An implementation of Vasicek and Song goodness-of-fit tests.  Several functions
are provided to estimate differential Shannon entropy, i.e., estimate Shannon
entropy of real random variables with density, and test the goodness-of-fit of
some family of distributions, including uniform, Gaussian, log-normal,
exponential, gamma, Weibull, Pareto, Fisher, Laplace and beta distributions; see
Lequesne and Regnault (2020) <doi:10.18637/jss.v096.c01>.")
    (license license:gpl2+)))

(define-public r-vsdecomp
  (package
    (name "r-vsdecomp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VSdecomp" version))
              (sha256
               (base32
                "1vx68rhsxvi3kkrwr98hqhivhdmb9dm9rnmgspx74dskhkysjwbg"))))
    (properties `((upstream-name . "VSdecomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-reshape r-lfe r-hmisc r-ggplot2))
    (home-page "https://cran.r-project.org/package=VSdecomp")
    (synopsis "Variance and Skewness Decomposition")
    (description
     "This package provides decomposition methods for the skewness or variance of a
variable (e.g., wage).  By breaking distribution moments into independent
components, users can analyze changes in distributions across time or between
groups.")
    (license license:gpl3)))

(define-public r-vsd
  (package
    (name "r-vsd")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vsd" version))
              (sha256
               (base32
                "18whnvary4glblzx1vxf3yzsllnnnbnyijwhbw7bi3agppnwrf22"))))
    (properties `((upstream-name . "vsd")))
    (build-system r-build-system)
    (propagated-inputs (list r-survminer
                             r-survival
                             r-muhaz
                             r-magrittr
                             r-ggpubr
                             r-ggplot2
                             r-flexsurv
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=vsd")
    (synopsis "Graphical Shim for Visual Survival Data Analysis")
    (description
     "This package provides a shim command for survival analysis graphic generation.")
    (license license:expat)))

(define-public r-vscc
  (package
    (name "r-vscc")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vscc" version))
              (sha256
               (base32
                "0ym9wy661d6m2a9drix5jb6r2sm6kqs314yc46qgq7qmdscdw52b"))))
    (properties `((upstream-name . "vscc")))
    (build-system r-build-system)
    (propagated-inputs (list r-teigen r-mclust))
    (home-page "https://cran.r-project.org/package=vscc")
    (synopsis "Variable Selection for Clustering and Classification")
    (description
     "This package performs variable selection/feature reduction under a clustering or
classification framework.  In particular, it can be used in an automated fashion
using mixture model-based methods ('teigen and mclust are currently supported).
See Andrews and McNicholas (2014) <doi:10.1007/s00357-013-9139-2>.")
    (license license:gpl2+)))

(define-public r-vrtest
  (package
    (name "r-vrtest")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vrtest" version))
              (sha256
               (base32
                "136p6qhw7ick8dy7gkhv8dww7ici0zg47rk2qmvc9lc1q55j4kf1"))))
    (properties `((upstream-name . "vrtest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vrtest")
    (synopsis
     "Variance Ratio Tests and Other Tests for Martingale Difference Hypothesis")
    (description
     "This package provides a collection of statistical tests for martingale
difference hypothesis, including automatic portmanteau test (Escansiano and
Lobato, 2009) <doi:10.1016/j.jeconom.2009.03.001> and automatic variance ratio
test (Kim, 2009) <doi:10.1016/j.frl.2009.04.003>.")
    (license license:gpl2)))

(define-public r-vrnmf
  (package
    (name "r-vrnmf")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vrnmf" version))
              (sha256
               (base32
                "0n0kmzhygaii9kipcmr943s0vcf8brxgsk25m9illd4fij6nwpp2"))))
    (properties `((upstream-name . "vrnmf")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-nnls r-matrix r-lpsolveapi r-ica))
    (home-page "https://github.com/kharchenkolab/vrnmf")
    (synopsis "Volume-Regularized Structured Matrix Factorization")
    (description
     "This package implements a set of routines to perform structured matrix
factorization with minimum volume constraints.  The NMF procedure decomposes a
matrix X into a product C * D. Given conditions such that the matrix C is
non-negative and has sufficiently spread columns, then volume minimization of a
matrix D delivers a correct and unique, up to a scale and permutation, solution
(C, D).  This package provides both an implementation of volume-regularized NMF
and \"anchor-free\" NMF, whereby the standard NMF problem is reformulated in the
covariance domain.  This algorithm was applied in Vladimir B. Seplyarskiy Ruslan
A. Soldatov, et al. \"Population sequencing data reveal a compendium of
mutational processes in the human germ line\".  Science, 12 Aug 2021.
<doi:10.1126/science.aba7408>.  This package interacts with data available
through the simulatedNMF package, which is available in a drat repository.  To
access this data package, see the instructions at
<https://github.com/kharchenkolab/vrnmf>.  The size of the simulatedNMF package
is approximately 8 MB.")
    (license license:gpl3)))

(define-public r-vrcp
  (package
    (name "r-vrcp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vrcp" version))
              (sha256
               (base32
                "1wrch1dqy752gkj24h1dgi2x3kf1797xj4pf1s9mszf3x3ic905d"))))
    (properties `((upstream-name . "vrcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=vrcp")
    (synopsis
     "Change Point Estimation for Regression with Varying Segments and Heteroscedastic Variances")
    (description
     "Estimation of varying regression segments and a change point in 2-segment
regression models with heteroscedastic variances, and with or without a
smoothness constraint at the change point.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-vprr
  (package
    (name "r-vprr")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vprr" version))
              (sha256
               (base32
                "02hx3wbj921fsir8yldkgcygci01w1171bxsxi2khplck4gkqn9i"))))
    (properties `((upstream-name . "vprr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-usethis
                             r-tidyr
                             r-stringr
                             r-oce
                             r-metr
                             r-magick
                             r-lubridate
                             r-interp
                             r-gsw
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-cmocean))
    (native-inputs (list r-knitr))
    (home-page "https://eogrady21.github.io/vprr/")
    (synopsis "Processing and Visualization of Video Plankton Recorder Data")
    (description
     "An oceanographic data processing package for analyzing and visualizing Video
Plankton Recorder data.  This package was developed at Bedford Institute of
Oceanography'.  Functions are designed to process automated image classification
output and create organized and easily portable data products.")
    (license license:expat)))

(define-public r-vpdtw
  (package
    (name "r-vpdtw")
    (version "2.1-14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VPdtw" version))
              (sha256
               (base32
                "1pr8jrd7ymgf46h2gbvanqjrvpc4xs39sk86vvxhawzf3w31g257"))))
    (properties `((upstream-name . "VPdtw")))
    (build-system r-build-system)
    (home-page "https://github.com/ethanbass/VPdtw/")
    (synopsis "Variable Penalty Dynamic Time Warping")
    (description
     "Variable Penalty Dynamic Time Warping (VPdtw) for aligning chromatographic
signals.  With an appropriate penalty this method performs good alignment of
chromatographic data without deforming the peaks (Clifford, D., Stone, G.,
Montoliu, I., Rezzi S., Martin F., Guy P., Bruce S., and Kochhar S.(2009)
<doi:10.1021/ac802041e>; Clifford, D. and Stone, G. (2012)
<doi:10.18637/jss.v047.i08>).")
    (license license:gpl2)))

(define-public r-vpc
  (package
    (name "r-vpc")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vpc" version))
              (sha256
               (base32
                "15s9f6hmqawv2594xqv58hnqg2wm1fm8qaj8h9k4m55cx4sf1hik"))))
    (properties `((upstream-name . "vpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-stringr
                             r-readr
                             r-mass
                             r-ggplot2
                             r-dplyr
                             r-classint))
    (home-page "https://github.com/ronkeizer/vpc")
    (synopsis "Create Visual Predictive Checks")
    (description
     "Visual predictive checks are a commonly used diagnostic plot in pharmacometrics,
showing how certain statistics (percentiles) for observed data compare to those
same statistics for data simulated from a model.  The package can generate VPCs
for continuous, categorical, censored, and (repeated) time-to-event data.")
    (license license:expat)))

(define-public r-voxr
  (package
    (name "r-voxr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VoxR" version))
              (sha256
               (base32
                "16r9ggc5x889g8rjqvp1q2kgf5asjzhykd1ldjy3ny9m48p501ad"))))
    (properties `((upstream-name . "VoxR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-rfast
                             r-raster
                             r-geometry
                             r-fnn
                             r-fastcluster
                             r-dplyr
                             r-data-table
                             r-circular))
    (home-page "https://github.com/Blecigne/VoxR")
    (synopsis "Trees Geometry and Morphology from Unstructured TLS Data")
    (description
     "Tools for 3D point cloud voxelisation, projection, geometrical and morphological
description of trees (DBH, height, volume, crown diameter), analyses of temporal
changes between different measurement times, distance based clustering and
visualisation of 3D voxel clouds and 2D projection.  Most analyses and
algorithms provided in the package are based on the concept of space exploration
and are described in Lecigne et al. (2018, <doi:10.1093/aob/mcx095>).")
    (license license:gpl3)))

(define-public r-voxel
  (package
    (name "r-voxel")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voxel" version))
              (sha256
               (base32
                "1xlym8xc22dq67h0lylrr16z7b4zdidpgrkvbs7n9fnkh6vijw2j"))))
    (properties `((upstream-name . "voxel")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-oro-nifti
                             r-mgcv
                             r-lmertest
                             r-ggplot2
                             r-gamm4))
    (home-page "https://github.com/angelgar/voxel")
    (synopsis "Mass-Univariate Voxelwise Analysis of Medical Imaging Data")
    (description
     "This package provides functions for the mass-univariate voxelwise analysis of
medical imaging data that follows the NIfTI <http://nifti.nimh.nih.gov> format.")
    (license license:gpl2)))

(define-public r-vowels
  (package
    (name "r-vowels")
    (version "1.2-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vowels" version))
              (sha256
               (base32
                "0xhfn3avx9h6kg3jwd47n2x7w8q8c9h13wsxd74hhbbn2gkjrs84"))))
    (properties `((upstream-name . "vowels")))
    (build-system r-build-system)
    (home-page "http://blogs.uoregon.edu/vowels/")
    (synopsis "Vowel Manipulation, Normalization, and Plotting")
    (description
     "Procedures for the manipulation, normalization, and plotting of phonetic and
sociophonetic vowel formant data.  vowels is the backend for the NORM website.")
    (license license:gpl3)))

(define-public r-vov
  (package
    (name "r-vov")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vov" version))
              (sha256
               (base32
                "0hbb9zj33a98rv4grm644k650pq6kgmm6l01mkd4p0ic0mxa9fyh"))))
    (properties `((upstream-name . "vov")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-htmltools r-glue))
    (home-page "https://github.com/tyluRp/vov")
    (synopsis "CSS Animations for 'shiny' Elements")
    (description
     "This package provides a wrapper around a CSS library called vov.css', intended
for use in shiny applications.  Simply wrap a UI element in one of the animation
functions to see it move.")
    (license license:expat)))

(define-public r-vottrans
  (package
    (name "r-vottrans")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vottrans" version))
              (sha256
               (base32
                "1fp7jrw072ws39bqsg88bm2qndcv68aa2vdqwgnza58p1dfq3x9f"))))
    (properties `((upstream-name . "vottrans")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog))
    (home-page "https://cran.r-project.org/package=vottrans")
    (synopsis "Voter Transition Analysis")
    (description
     "Calculates voter transitions comparing two elections, using the function
solve.QP() in package quadprog'.")
    (license license:gpl3)))

(define-public r-votesys
  (package
    (name "r-votesys")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "votesys" version))
              (sha256
               (base32
                "1z7cx3rj3bfrkb6jkmf1m1wad5ff46zrab5vhk69wf3jbwd9h920"))))
    (properties `((upstream-name . "votesys")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-gtools r-data-table))
    (home-page "https://cran.r-project.org/package=votesys")
    (synopsis
     "Voting Systems, Instant-Runoff Voting, Borda Method, Various Condorcet Methods")
    (description
     "Various methods to count ballots in voting systems are provided.  Functions to
check validity of ballots are also provided to ensure flexibility.")
    (license license:gpl3)))

(define-public r-votesmart
  (package
    (name "r-votesmart")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "votesmart" version))
              (sha256
               (base32
                "184q553p8n76jch4xiyfsqbczbjza3v9s8xsd8zwckxq5j2cgyvp"))))
    (properties `((upstream-name . "votesmart")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-snakecase
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/decktools/votesmart/")
    (synopsis "Wrapper for the Project 'VoteSmart' API")
    (description
     "An R interface to the Project VoteSmart'<https://justfacts.votesmart.org/> API.")
    (license license:expat)))

(define-public r-voteogram
  (package
    (name "r-voteogram")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voteogram" version))
              (sha256
               (base32
                "16bhnf9p2sanbcsdmdjb4iqca7hx4ghd40psxavndv1vkhw3cv0r"))))
    (properties `((upstream-name . "voteogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-scales r-jsonlite r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hrbrmstr/voteogram")
    (synopsis "United States House and Senate Voting Cartogram Generators")
    (description
     "ProPublica <https://projects.propublica.org/represent/> makes United States
Congress member votes available and has developed their own unique cartogram to
visually represent this data.  Tools are provided to retrieve voting data,
prepare voting data for plotting with ggplot2', create vote cartograms and theme
them.")
    (license (license:fsdg-compatible "AGPL"))))

(define-public r-vote
  (package
    (name "r-vote")
    (version "2.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vote" version))
              (sha256
               (base32
                "12kvz83ncansrsvw4mrws6fafn9fy6c0nvqvknrzl08kv290c9dr"))))
    (properties `((upstream-name . "vote")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-formattable r-fields r-data-table))
    (home-page "https://cran.r-project.org/package=vote")
    (synopsis "Election Vote Counting")
    (description
     "Counting election votes and determining election results by different methods,
including the single transferable vote or ranked choice, approval, score,
plurality, condorcet and two-round runoff methods (Raftery et al. (2021)
<arXiv:2102.05801>).")
    (license license:gpl2+)))

(define-public r-voss
  (package
    (name "r-voss")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Voss" version))
              (sha256
               (base32
                "00f3ljm85z8gr1qyc6nj9g35ywzm78khy8r82wb5ys8fx68n0vwl"))))
    (properties `((upstream-name . "Voss")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields))
    (home-page "https://cran.r-project.org/package=Voss")
    (synopsis "Generic Voss Algorithm (Random Sequential Additions)")
    (description
     "Generating realizations of a fractal Brownian function on uniform 1D & 2D grid
with classic and generic versions of the Voss algorithm (random sequential
additions).")
    (license license:gpl3)))

(define-public r-vosonsml
  (package
    (name "r-vosonsml")
    (version "0.32.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vosonSML" version))
              (sha256
               (base32
                "1fs939zq2vnilc3fp6cplsqk0iz71i8xjdcbvspsccw7rsdp2qs8"))))
    (properties `((upstream-name . "vosonSML")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-textutils
                             r-stringr
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vosonlab/vosonSML")
    (synopsis
     "Collecting Social Media Data and Generating Networks for Analysis")
    (description
     "This package provides a suite of easy to use functions for collecting social
media data and generating networks for analysis.  Supports Twitter, YouTube,
Reddit and web site data sources.")
    (license license:gpl3+)))

(define-public r-vosondash
  (package
    (name "r-vosondash")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VOSONDash" version))
              (sha256
               (base32
                "1qivx5ddl9jsn6q6ic2w8jrczxlx23z087k5arfz2rixgj7rndyg"))))
    (properties `((upstream-name . "VOSONDash")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-vosonsml
                             r-tm
                             r-textutils
                             r-syuzhet
                             r-systemfonts
                             r-snowballc
                             r-shiny
                             r-rcolorbrewer
                             r-magrittr
                             r-lattice
                             r-igraph
                             r-httr
                             r-httpuv
                             r-data-table))
    (home-page "https://github.com/vosonlab/VOSONDash")
    (synopsis "User Interface for Collecting and Analysing Social Networks")
    (description
     "This package provides a Shiny application for the interactive visualisation and
analysis of networks that also provides a web interface for collecting social
media data using vosonSML'.")
    (license license:gpl3+)))

(define-public r-voson-tcn
  (package
    (name "r-voson-tcn")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voson.tcn" version))
              (sha256
               (base32
                "1fylp5770by5ybpda6n8c3y8n7zsmc62f5q11k0ndh5kp7ka11cb"))))
    (properties `((upstream-name . "voson.tcn")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-progress
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/vosonlab/voson.tcn")
    (synopsis "Twitter Conversation Networks and Analysis")
    (description
     "Collects tweets and metadata for threaded conversations and generates networks.")
    (license license:gpl3+)))

(define-public r-vortexrdata
  (package
    (name "r-vortexrdata")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vortexRdata" version))
              (sha256
               (base32
                "0b47q3aslz4110a1bfaa103i098y2ngzrjh01rwasq3gd6xbif9n"))))
    (properties `((upstream-name . "vortexRdata")))
    (build-system r-build-system)
    (home-page "https://github.com/carlopacioni/vortexRdata/")
    (synopsis "Example Data for R Package 'vortexR'")
    (description
     "This package contains selected data from two publications, Campbell et al'.
(2016) <DOI:10.1080/14486563.2015.1028486> and Pacioni et al'. (2017)
<DOI:10.1071/PC17002>.  The data is provided both as raw outputs from the
population viability analysis software Vortex and packaged as R objects.  The R
package vortexR uses the raw data provided here to illustrate its functionality
of parsing raw Vortex output into R objects.")
    (license license:gpl3)))

(define-public r-vorteksexport
  (package
    (name "r-vorteksexport")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VorteksExport" version))
              (sha256
               (base32
                "0r9wmd9bdarjkqmpwp85xz27nbyhjkcpxm8qb8bqjmxq4nds6nxx"))))
    (properties `((upstream-name . "VorteksExport")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VorteksExport")
    (synopsis "Export Dataframes to 'Vorteks' Software")
    (description
     "Export dataframes and automatically start importing into Vorteks'.  Vorteks
Visualization Environment (VVE) and Vorteks Data Manager (VDM) will start an
import.  Vorteks Processing Environment (VPE) will start a new project and add a
file reader with the dataframe file already set.  Warning: WINDOWS ONLY.
Requires installation of Vorteks software.")
    (license license:gpl3)))

(define-public r-voronoitreemap
  (package
    (name "r-voronoitreemap")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voronoiTreemap" version))
              (sha256
               (base32
                "1wvnqdrvba4ss4f3k8gzb720irdq2brv2aaq16ywifv8fnjf02r3"))))
    (properties `((upstream-name . "voronoiTreemap")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-rlang
                             r-htmlwidgets
                             r-dt
                             r-data-tree))
    (native-inputs (list esbuild))
    (home-page "https://github.com/uRosConf/voronoiTreemap")
    (synopsis "Voronoi Treemaps with Added Interactivity by Shiny")
    (description
     "The d3.js framework with the plugins d3-voronoi-map, d3-voronoi-treemap and
d3-weighted-voronoi are used to generate Voronoi treemaps in R and in a shiny
application.  The computation of the Voronoi treemaps are based on Nocaj and
Brandes (2012) <doi:10.1111/j.1467-8659.2012.03078.x>.")
    (license license:gpl3)))

(define-public r-volumodel
  (package
    (name "r-volumodel")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voluModel" version))
              (sha256
               (base32
                "1ym9cpx4ygzh9956y7sg1zl5kagamkg1wmr3ydzff1gz6ldg7gam"))))
    (properties `((upstream-name . "voluModel")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-terra
                             r-sf
                             r-rangebuilder
                             r-modeva
                             r-ggtext
                             r-ggplot2
                             r-fields
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://hannahlowens.github.io/voluModel/")
    (synopsis "Modeling Species Distributions in Three Dimensions")
    (description
     "Facilitates modeling species ecological niches and geographic distributions
based on occurrences and environments that have a vertical as well as horizontal
component, and projecting models into three-dimensional geographic space.
Working in three dimensions is useful in an aquatic context when the organisms
one wishes to model can be found across a wide range of depths in the water
column.  The package also contains functions to automatically generate marine
training model training regions using machine learning, and interpolate and
smooth patchily sampled environmental rasters using thin plate splines.  Davis
Rabosky AR, Cox CL, Rabosky DL, Title PO, Holmes IA, Feldman A, McGuire JA
(2016) <doi:10.1038/ncomms11484>.  Nychka D, Furrer R, Paige J, Sain S (2021)
<doi:10.5065/D6W957CT>.  Pateiro-Lopez B, Rodriguez-Casal A (2022)
<https://CRAN.R-project.org/package=alphahull>.")
    (license license:gpl3)))

(define-public r-volleystat
  (package
    (name "r-volleystat")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "volleystat" version))
              (sha256
               (base32
                "0n1r0bvvmba21cs3qgpnw9jxpgl2n82fhxa40sa1w2gav5rch5i6"))))
    (properties `((upstream-name . "volleystat")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://github.com/bozhinvi/volleystat")
    (synopsis "Detailed Statistics on Volleyball Matches")
    (description
     "Volleyball match statistics of the German volleyball first division league
(seasons 2013/2014 to 2018/2019).  The data has been collected from the official
volleyball first division homepage (<www.volleyball-bundesliga.de>) and contains
information on teams, staff, sets, matches, and player-in-match statistics
(extracted automatically from the official match reports).")
    (license license:cc0)))

(define-public r-volesti
  (package
    (name "r-volesti")
    (version "1.1.2-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "volesti" version))
              (sha256
               (base32
                "1ykmxl12ap21ds23nqlc861zn24hs9y7h0kkihyhpxnwfvyx1fbp"))))
    (properties `((upstream-name . "volesti")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-bh))
    (home-page "https://cran.r-project.org/package=volesti")
    (synopsis "Volume Approximation and Sampling of Convex Polytopes")
    (description
     "This package provides an R interface for volesti C++ package.  volesti computes
estimations of volume of polytopes given by (i) a set of points, (ii) linear
inequalities or (iii) Minkowski sum of segments (a.k.a.  zonotopes).  There are
three algorithms for volume estimation as well as algorithms for sampling,
rounding and rotating polytopes.  Moreover, volesti provides algorithms for
estimating copulas useful in computational finance.  Methods implemented in
volesti are described in A. Chalkis and V. Fisikopoulos (2022)
<doi:10.32614/RJ-2021-077> and references therein.")
    (license license:lgpl3)))

(define-public r-volcanoplot
  (package
    (name "r-volcanoplot")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "volcanoPlot" version))
              (sha256
               (base32
                "06nkv56c36wgnb7s6gkpp14syzhm5zm2wdfjx9wamxp5cf0wk3mk"))))
    (properties `((upstream-name . "volcanoPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-purrr
                             r-ggplot2
                             r-fmsb
                             r-dt
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=volcanoPlot")
    (synopsis "Volcano Plot for Clinical Trial Adverse Events")
    (description
     "Interactive adverse event (AE) volcano plot for monitoring clinical trial
safety.  This tool allows users to view the overall distribution of AEs in a
clinical trial using standard (e.g. MedDRA preferred term) or custom (e.g.
Gender) categories using a volcano plot similar to proposal by Zink et al.
(2013) <doi:10.1177/1740774513485311>.  This tool provides a stand-along shiny
application and flexible shiny modules allowing this tool to be used as a part
of more robust safety monitoring framework like the Shiny app from the
safetyGraphics R package.")
    (license license:expat)))

(define-public r-volatilitytrader
  (package
    (name "r-volatilitytrader")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "volatilityTrader" version))
              (sha256
               (base32
                "1zz6286kmzcj8k66mpj9nidsf86dkw2ms75ck6rrvnl5h1idcacj"))))
    (properties `((upstream-name . "volatilityTrader")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-magrittr r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=volatilityTrader")
    (synopsis "High Volatility Environment Option Trading Strategies Graphs")
    (description
     "Trading Strategies for high Option Volatility environment are represented here
through their Graphs.  The graphic indicators, strategies, calculations,
functions and all the discussions are for academic, research, and educational
purposes only and should not be construed as investment advice and come with
absolutely no Liability.  Guy Cohen (âThe Bible of Options Strategies (2nd
ed.)â, 2015, ISBN: 9780133964028).  Zura Kakushadze, Juan A. Serur (â151
Trading Strategiesâ, 2018, ISBN: 9783030027919).  John C. Hull (âOptions,
Futures, and Other Derivatives (11th ed.)â, 2022, ISBN: 9780136939979).")
    (license license:gpl3)))

(define-public r-voice
  (package
    (name "r-voice")
    (version "0.4.21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "voice" version))
              (sha256
               (base32
                "0fh1k0596npm6yah992g3hc79g6lh12b7k97nnxlm1pgpdbb503v"))))
    (properties `((upstream-name . "voice")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-wrassp
                             r-tuner
                             r-tidyselect
                             r-tibble
                             r-seewave
                             r-reticulate
                             r-r-utils
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/filipezabala/voice")
    (synopsis
     "Tools for Voice Analysis, Speaker Recognition and Mood Inference")
    (description
     "Tools for voice analysis, speaker recognition and mood inference.  Gathers R and
Python tools to solve problems concerning voice and audio in general.")
    (license license:gpl3)))

(define-public r-vocaldia
  (package
    (name "r-vocaldia")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vocaldia" version))
              (sha256
               (base32
                "1nr1w85m4xhk6777iqww94mb82c3smfhr96mybpi9m1kk7f6rv0i"))))
    (properties `((upstream-name . "vocaldia")))
    (build-system r-build-system)
    (home-page "https://git.ecdf.ed.ac.uk/sluzfil/vocaldia")
    (synopsis "Create and Manipulate Vocalisation Diagrams")
    (description
     "Create adjacency matrices of vocalisation graphs from dataframes containing
sequences of speech and silence intervals, transforming these matrices into
Markov diagrams, and generating datasets for classification of these diagrams by
flattening them and adding global properties (functionals) etc.  Vocalisation
diagrams date back to early work in psychiatry (Jaffe and Feldstein, 1970) and
social psychology (Dabbs and Ruback, 1987) but have only recently been employed
as a data representation method for machine learning tasks including meeting
segmentation (Luz, 2012) <doi:10.1145/2328967.2328970> and classification (Luz,
2013) <doi:10.1145/2522848.2533788>.")
    (license license:gpl3)))

(define-public r-vntrs
  (package
    (name "r-vntrs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vntrs" version))
              (sha256
               (base32
                "0ffjjzcs7i4zli7bn83gkgi0q7dmgyxrhv9l3gdambma9hsig45c"))))
    (properties `((upstream-name . "vntrs")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust))
    (home-page "https://cran.r-project.org/package=vntrs")
    (synopsis "Variable Neighborhood Trust Region Search")
    (description
     "An implementation of the variable neighborhood trust region algorithm Bierlaire
et al. (2009) \"A Heuristic for Nonlinear Global Optimization\"
<doi:10.1287/ijoc.1090.0343>.")
    (license license:gpl3)))

(define-public r-vmr
  (package
    (name "r-vmr")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vmr" version))
              (sha256
               (base32
                "0vm4wxf9zb2xgjd9xam3gy6mqr621x922ldshrxs4cibaag3lq5x"))))
    (properties `((upstream-name . "vmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/rstuff/vmr")
    (synopsis "Virtual Machines for R")
    (description
     "Manage, provision and use Virtual Machines pre-configured for R. Develop, test
and build package in a clean environment.  Vagrant tool and a provider (such as
Virtualbox') have to be installed.")
    (license license:gpl3+)))

(define-public r-vmf
  (package
    (name "r-vmf")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vMF" version))
              (sha256
               (base32
                "1sygiqyzqikrpdiav0117hnv6zynq1d415v73ygjfj4c1v5l05h0"))))
    (properties `((upstream-name . "vMF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ahoundetoungan/vMF")
    (synopsis "Sampling from von Mises-Fisher Distribution")
    (description
     "This package provides fast sampling from von Mises-Fisher distribution using the
method proposed by Andrew T.A Wood (1994) <doi:10.1080/03610919408813161>.")
    (license license:gpl3)))

(define-public r-vmeasur
  (package
    (name "r-vmeasur")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vmeasur" version))
              (sha256
               (base32
                "17rqr8zpfnq3f0d3yi9w09wvrbq79g4w7rkqf4l2wyd8ic5npwb0"))))
    (properties `((upstream-name . "vmeasur")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-svdialogs
                             r-stringr
                             r-scales
                             r-rlang
                             r-readr
                             r-purrr
                             r-progressr
                             r-pracma
                             r-pdftools
                             r-magrittr
                             r-imager
                             r-ggpubr
                             r-ggplot2
                             r-future
                             r-foreach
                             r-dplyr
                             r-dofuture
                             r-crayon
                             r-av))
    (home-page "https://cran.r-project.org/package=vmeasur")
    (synopsis
     "Quantify the Contractile Nature of Vessels Monitored under an Operating Microscope")
    (description
     "This package provides a variety of tools to allow the quantification of videos
of the lymphatic vasculature taken under an operating microscope.  Lymphatic
vessels that have been injected with a variety of blue dyes can be tracked
throughout the video to determine their width over time.  Code is optimised for
efficient processing of multiple large video files.  Functions to calculate
physiologically relevant parameters and generate graphs from these values are
also included.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-vmdtdnn
  (package
    (name "r-vmdtdnn")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vmdTDNN" version))
              (sha256
               (base32
                "08bdihlf2lj1wfxilshxww3sav7c35qiqzs468mdahbn4vnzbngr"))))
    (properties `((upstream-name . "vmdTDNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-vmdecomp r-nnfor r-forecast))
    (home-page "https://cran.r-project.org/package=vmdTDNN")
    (synopsis "VMD Based Time Delay Neural Network Model")
    (description
     "Forecasting univariate time series with Variational Mode Decomposition (VMD)
based time delay neural network models.For method details see Konstantin, D.and
Dominique, Z. (2014). <doi:10.1109/TSP.2013.2288675>.")
    (license license:gpl3)))

(define-public r-vmdml
  (package
    (name "r-vmdml")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VMDML" version))
              (sha256
               (base32
                "0syqikndvpbpms2b116iyzkm191x6q60azbmznr7mwc8xa9469ss"))))
    (properties `((upstream-name . "VMDML")))
    (build-system r-build-system)
    (propagated-inputs (list r-vmdecomp r-randomforest r-forecast r-e1071))
    (home-page "https://cran.r-project.org/package=VMDML")
    (synopsis "Variational Mode Decomposition Based Machine Learning Models")
    (description
     "Application of Variational Mode Decomposition based different Machine Learning
models for univariate time series forecasting.  For method details see (i) K.
Dragomiretskiy and D. Zosso (2014) <doi:10.1109/TSP.2013.2288675>; (ii) Pankaj
Das (2020) <http://krishi.icar.gov.in/jspui/handle/123456789/44138>.")
    (license license:gpl3)))

(define-public r-vmdecomp
  (package
    (name "r-vmdecomp")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VMDecomp" version))
              (sha256
               (base32
                "0iq2lj7n77qmryf95cjl2y869bhy6i0mx44qls7xc07g0qplwqx3"))))
    (properties `((upstream-name . "VMDecomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-glue r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/VMDecomp")
    (synopsis "Variational Mode Decomposition")
    (description
     "RcppArmadillo implementation for the Matlab code of the Variational Mode
Decomposition and Two-Dimensional Variational Mode Decomposition'.  For more
information, see (i) Variational Mode Decomposition by K. Dragomiretskiy and D.
Zosso in IEEE Transactions on Signal Processing, vol.  62, no.  3, pp.  531-544,
Feb.1, 2014, <doi:10.1109/TSP.2013.2288675>; (ii) Two-Dimensional Variational
Mode Decomposition by Dragomiretskiy, K., Zosso, D. (2015), In: Tai, XC., Bae,
E., Chan, T.F., Lysaker, M. (eds) Energy Minimization Methods in Computer Vision
and Pattern Recognition.  EMMCVPR 2015.  Lecture Notes in Computer Science, vol
8932.  Springer, <doi:10.1007/978-3-319-14612-6_15>.")
    (license license:gpl3)))

(define-public r-vltimecausality
  (package
    (name "r-vltimecausality")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VLTimeCausality" version))
              (sha256
               (base32
                "09fpjskdc3bz1qjqvcivk873jyl0mcjm4zds2xa6bd82ka8rb4b8"))))
    (properties `((upstream-name . "VLTimeCausality")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-rtransferentropy r-ggplot2 r-dtw))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DarkEyes/VLTimeSeriesCausality")
    (synopsis "Variable-Lag Time Series Causality Inference Framework")
    (description
     "This package provides a framework to infer causality on a pair of time series of
real numbers based on variable-lag Granger causality and transfer entropy.
Typically, Granger causality and transfer entropy have an assumption of a fixed
and constant time delay between the cause and effect.  However, for a
non-stationary time series, this assumption is not true.  For example,
considering two time series of velocity of person A and person B where B follows
A. At some time, B stops tying his shoes, then running to catch up A. The
fixed-lag assumption is not true in this case.  We propose a framework that
allows variable-lags between cause and effect in Granger causality and transfer
entropy to allow them to deal with variable-lag non-stationary time series.
Please see Chainarong Amornbunchornvej, Elena Zheleva, and Tanya Berger-Wolf
(2021) <doi:10.1145/3441452> when referring to this package in publications.")
    (license license:gpl3)))

(define-public r-vlmc
  (package
    (name "r-vlmc")
    (version "1.4-3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VLMC" version))
              (sha256
               (base32
                "0cwfpxcj8g68j9z9fl66i0amj8ypf199iv3yyxzsmniqv4w5x4ar"))))
    (properties `((upstream-name . "VLMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=VLMC")
    (synopsis "Variable Length Markov Chains ('VLMC') Models")
    (description
     "Functions, Classes & Methods for estimation, prediction, and simulation
(bootstrap) of Variable Length Markov Chain ('VLMC') Models.")
    (license license:gpl2+)))

(define-public r-vlf
  (package
    (name "r-vlf")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VLF" version))
              (sha256
               (base32
                "096a7nx60qm4b7fil4s3r4mlp8fq60v0lq893jh3ij6gm63mfcim"))))
    (properties `((upstream-name . "VLF")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VLF")
    (synopsis
     "Frequency Matrix Approach for Assessing Very Low Frequency Variants in Sequence Records")
    (description
     "Using frequency matrices, very low frequency variants (VLFs) are assessed for
amino acid and nucleotide sequences.  The VLFs are then compared to see if they
occur in only one member of a species, singleton VLFs, or if they occur in
multiple members of a species, shared VLFs.  The amino acid and nucleotide VLFs
are then compared to see if they are concordant with one another.  Amino acid
VLFs are also assessed to determine if they lead to a change in amino acid
residue type, and potential changes to protein structures.  Based on Stoeckle
and Kerr (2012) <doi:10.1371/journal.pone.0043992>.")
    (license license:gpl3+)))

(define-public r-vlda
  (package
    (name "r-vlda")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vlda" version))
              (sha256
               (base32
                "17xn8qqh043dm05ib3h4l1qx07wxncf5d06x9l1wl6jbkvnsm2nq"))))
    (properties `((upstream-name . "vlda")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggsci r-ggrepel r-ggplot2 r-ggiraph r-dplyr))
    (home-page "https://github.com/pnuwon/vlda")
    (synopsis "Visualization of Multidimensional Longitudinal Data")
    (description
     "Assists in producing a plot that more effectively expresses changes over time
for two different types (long format and wide format) using a consistent calling
scheme for longitudinal data.  It provides the ability to projection
supplementary information (supplementary objects and variables) that can often
occur in longitudinal data to graphs, as well as provides a new interactive
implementation to perform the additional interpretation, so it is also useful
for longitudinal data visuals analysis (see
<http://lib.pusan.ac.kr/resource/e-article/?app=eds&mod=detail&record_id=edsker.000004649097&db_id=edsker>
for more information).")
    (license license:expat)))

(define-public r-vlad
  (package
    (name "r-vlad")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vlad" version))
              (sha256
               (base32
                "0c3zfjm5nj7iisfnl822sk8wdszv6hcsaf51sn7aqnlp579hq2jk"))))
    (properties `((upstream-name . "vlad")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rcpparmadillo
                             r-rcpp
                             r-magrittr
                             r-dplyr
                             r-checkmate
                             r-bh))
    (home-page "https://github.com/wittenberg/vlad")
    (synopsis
     "Variable Life Adjusted Display and Other Risk-Adjusted Quality Control Charts")
    (description
     "This package contains functions to set up risk-adjusted quality control charts
in health care.  For the variable life adjusted display (VLAD) proposed by
Lovegrove et al. (1997) <doi:10.1016/S0140-6736(97)06507-0> signaling rules
derived in Wittenberg et al. (2018) <doi:10.1002/sim.7647> are implemented.
Additionally, for the risk-adjusted cumulative sum chart based on log-likelihood
ratio statistic introduced by Steiner et al. (2000)
<doi:10.1093/biostatistics/1.4.441> average run length and control limits can be
computed with fast and accurate Markov chain approximations developed in Knoth
et al. (2019) <doi:10.1002/sim.8104>.")
    (license license:gpl2+)))

(define-public r-vkr
  (package
    (name "r-vkr")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vkR" version))
              (sha256
               (base32
                "1pk444fcw4yyv2dnfrw9vynbpc4gwr5yv9jd41djp9yipdf6d53l"))))
    (properties `((upstream-name . "vkR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-purrr r-jsonlite r-httr))
    (home-page "https://github.com/Dementiy/vkR")
    (synopsis "Access to VK API via R")
    (description
     "This package provides an interface to the VK API <https://vk.com/dev/methods>.
VK <https://vk.com/> is the largest European online social networking service,
based in Russia.")
    (license license:gpl3)))

(define-public r-vizdraws
  (package
    (name "r-vizdraws")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vizdraws" version))
              (sha256
               (base32
                "1r4kn8ki4ymqg87j223fs6fs9vyscc5bsfbnc4v9gvjy96jjxy3h"))))
    (properties `((upstream-name . "vizdraws")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-magrittr r-htmlwidgets r-dplyr))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ignacio82/vizdraws/")
    (synopsis "Visualize Draws from the Prior and Posterior Distributions")
    (description
     "Interactive visualization for Bayesian prior and posterior distributions.  When
both distributions are provided the animation shows a transition from prior to
posterior.  Finally, the animation splits the distribution using the provided
breaks into bars that show the probability for each region.  If no breaks are
providers it will use zero by default.")
    (license license:gpl3)))

(define-public r-vivo
  (package
    (name "r-vivo")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vivo" version))
              (sha256
               (base32
                "1cfval06byviw7himr5nql34h4jaway9gb6dzya3v994p7v851cg"))))
    (properties `((upstream-name . "vivo")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/vivo")
    (synopsis "Variable Importance via Oscillations")
    (description
     "This package provides an easy to calculate local variable importance measure
based on Ceteris Paribus profile and global variable importance measure based on
Partial Dependence Profiles.")
    (license license:gpl2)))

(define-public r-vivid
  (package
    (name "r-vivid")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vivid" version))
              (sha256
               (base32
                "08ngzzni1dyfnfqn7y6f6xxb6lvf2p06nnzydwn6n0psfg5976lp"))))
    (properties `((upstream-name . "vivid")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rcolorbrewer
                             r-igraph
                             r-ggplot2
                             r-ggnewscale
                             r-ggalt
                             r-ggally
                             r-flashlight
                             r-dplyr
                             r-dendser
                             r-condvis2
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://alaninglis.github.io/vivid/")
    (synopsis "Variable Importance and Variable Interaction Displays")
    (description
     "This package provides a suite of plots for displaying variable importance and
two-way variable interaction jointly.  Can also display partial dependence plots
laid out in a pairs plot or zenplots style.")
    (license license:gpl2+)))

(define-public r-vivaldi
  (package
    (name "r-vivaldi")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vivaldi" version))
              (sha256
               (base32
                "1dvihjc6vjzg2w1j0q6vjhlhpwkknwsd97lpbqbfpacpp337mvx8"))))
    (properties `((upstream-name . "vivaldi")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcfr
                             r-tidyselect
                             r-tidyr
                             r-seqinr
                             r-plotly
                             r-magrittr
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GreshamLab/vivaldi")
    (synopsis "Viral Variant Location and Diversity")
    (description
     "Analysis of minor alleles in Illumina sequencing data of viral genomes.
Functions in vivaldi primarily operate on vcf files.")
    (license license:expat)))

(define-public r-vivainsights
  (package
    (name "r-vivainsights")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vivainsights" version))
              (sha256
               (base32
                "18xzk7ka4jfqxi5xzhivwjgqkhp1lrqa6cz6cggiz34x8p1aqlq8"))))
    (properties `((upstream-name . "vivainsights")))
    (build-system r-build-system)
    (propagated-inputs (list r-wpa
                             r-tidytext
                             r-tidyselect
                             r-tidyr
                             r-scales
                             r-rmarkdown
                             r-reshape2
                             r-purrr
                             r-networkd3
                             r-markdown
                             r-magrittr
                             r-igraph
                             r-htmltools
                             r-ggwordcloud
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table))
    (home-page "https://microsoft.github.io/vivainsights/")
    (synopsis "Analyze and Visualize Data from 'Microsoft Viva Insights'")
    (description
     "This package provides a versatile range of functions, including exploratory data
analysis, time-series analysis, and data validation, whilst at the same time
implements a set of best practices in analyzing and visualizing data specific to
Microsoft Viva Insights'.")
    (license license:expat)))

(define-public r-vitality
  (package
    (name "r-vitality")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vitality" version))
              (sha256
               (base32
                "17micfmlksnw167vavvhlk431fm20k74y5ggs47pgz5fwpm854zp"))))
    (properties `((upstream-name . "vitality")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vitality")
    (synopsis "Fitting Routines for the Vitality Family of Mortality Models")
    (description
     "This package provides fitting routines for four versions of the Vitality family
of mortality models.")
    (license license:gpl2+)))

(define-public r-vitae
  (package
    (name "r-vitae")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vitae" version))
              (sha256
               (base32
                "19qcympcs9w9klrvhz5ls4p6186dcddv5dv7kn7jkc0js84i9sbv"))))
    (properties `((upstream-name . "vitae")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xfun
                             r-vctrs
                             r-tibble
                             r-rmarkdown
                             r-rlang
                             r-pillar
                             r-knitr
                             r-jsonlite
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.mitchelloharawild.com/vitae/")
    (synopsis "Curriculum Vitae for R Markdown")
    (description
     "This package provides templates and functions to simplify the production and
maintenance of curriculum vitae.")
    (license license:gpl3)))

(define-public r-vita
  (package
    (name "r-vita")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vita" version))
              (sha256
               (base32
                "114p2lzcr8rn68f0z4kmjdnragqlmi18axda9ma4sbqh8mrmjs9v"))))
    (properties `((upstream-name . "vita")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-randomforest))
    (home-page "https://cran.r-project.org/package=vita")
    (synopsis "Variable Importance Testing Approaches")
    (description
     "This package implements the novel testing approach by Janitza et al.(2015)
<http://nbn-resolving.de/urn/resolver.pl?urn=nbn:de:bvb:19-epub-25587-4> for the
permutation variable importance measure in a random forest and the
PIMP-algorithm by Altmann et al.(2010) <doi:10.1093/bioinformatics/btq134>.
Janitza et al.(2015)
<http://nbn-resolving.de/urn/resolver.pl?urn=nbn:de:bvb:19-epub-25587-4> do not
use the \"standard\" permutation variable importance but the cross-validated
permutation variable importance for the novel test approach.  The
cross-validated permutation variable importance is not based on the out-of-bag
observations but uses a similar strategy which is inspired by the
cross-validation procedure.  The novel test approach can be applied for
classification trees as well as for regression trees.  However, the use of the
novel testing approach has not been tested for regression trees so far, so this
routine is meant for the expert user only and its current state is rather
experimental.")
    (license license:gpl2+)))

(define-public r-visxhclust
  (package
    (name "r-visxhclust")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visxhclust" version))
              (sha256
               (base32
                "1wx16mg5g58p4mgf5y776i5ahgpqqjy4wbfqhfjph36mrhs6qr22"))))
    (properties `((upstream-name . "visxhclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinyhelper
                             r-shinycssloaders
                             r-shiny
                             r-readr
                             r-rcolorbrewer
                             r-patchwork
                             r-knitr
                             r-kableextra
                             r-ggplot2
                             r-fastcluster
                             r-dunn-test
                             r-dt
                             r-dplyr
                             r-dendextend
                             r-complexheatmap
                             r-clvalid
                             r-cluster
                             r-circlize
                             r-bsplus))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhenkin/visxhclust")
    (synopsis "Shiny App for Visual Exploration of Hierarchical Clustering")
    (description
     "This package provides a Shiny application and functions for visual exploration
of hierarchical clustering with numeric datasets.  Allows users to iterative set
hyperparameters, select features and evaluate results through various plots and
computation of evaluation criteria.")
    (license license:gpl3)))

(define-public r-visvow
  (package
    (name "r-visvow")
    (version "1.3.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visvow" version))
              (sha256
               (base32
                "1nbhp1cmlk49p2fx1z21w5smxd11vhsly3rcswlqwkldn298692b"))))
    (properties `((upstream-name . "visvow")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexls
                             r-tikzdevice
                             r-tidyr
                             r-svglite
                             r-splitstackshape
                             r-shinybusy
                             r-shinybs
                             r-shiny
                             r-rtsne
                             r-readxl
                             r-rdpack
                             r-psych
                             r-pracma
                             r-plyr
                             r-plot3d
                             r-pbsmapping
                             r-mass
                             r-ggrepel
                             r-ggplot2
                             r-ggdendro
                             r-formattable
                             r-dt
                             r-dplyr
                             r-cairo))
    (native-inputs (list r-r-rsp))
    (home-page "https://www.visiblevowels.org/")
    (synopsis "Visible Vowels: Visualization of Vowel Variation")
    (description "Visualizes vowel variation in f0, F1, F2, F3 and duration.")
    (license (license:fsdg-compatible "GNU General Public License (>= 2)"))))

(define-public r-visualpred
  (package
    (name "r-visualpred")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visualpred" version))
              (sha256
               (base32
                "19jq9h9kiv4vbzqz8zrv5gqb1bprq5jy7mcxvdwpfnna2rja6q4z"))))
    (properties `((upstream-name . "visualpred")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest
                             r-proc
                             r-nnet
                             r-mltools
                             r-mba
                             r-mass
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-gbm
                             r-factominer
                             r-e1071
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visualpred")
    (synopsis "Visualization 2D of Binary Classification Models")
    (description
     "Visual 2D point and contour plots for binary classification modeling under
algorithms such as glm(), randomForest(), gbm(), nnet() and svm(), presented
over two dimensions generated by FAMD and MCA methods.  Package FactoMineR for
multivariate reduction functions and package MBA for interpolation functions are
used.  The package can be used to visualize the discriminant power of input
variables and algorithmic modeling, explore outliers, compare algorithm
behaviour, etc.  It has been created initially for teaching purposes, but it has
also many practical uses.")
    (license license:gpl3+)))

(define-public r-visualizesimon2stage
  (package
    (name "r-visualizesimon2stage")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VisualizeSimon2Stage" version))
              (sha256
               (base32
                "1xb001jdhf0z96zg51pkg9jng4nb4f7asqip7s5kx46fmzd1343s"))))
    (properties `((upstream-name . "VisualizeSimon2Stage")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=VisualizeSimon2Stage")
    (synopsis "Visualize Simon's Two-Stage Design")
    (description
     "This package provides functions for visualizing the probabilities of early
termination, fail and success of Simon's two-stage design.  Functions for
evaluating and visualizing the operating characteristics of Simon's two-stage
design.")
    (license license:gpl2)))

(define-public r-visualize-cran-downloads
  (package
    (name "r-visualize-cran-downloads")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Visualize.CRAN.Downloads" version))
              (sha256
               (base32
                "1jfj0qp4a6jxw423d6ik18r7gy6zzcxlp71mfhpam256xay0sq8f"))))
    (properties `((upstream-name . "Visualize.CRAN.Downloads")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotly r-htmlwidgets r-cranlogs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mponce0/Visualize.CRAN.Downloads")
    (synopsis "Visualize Downloads from 'CRAN' Packages")
    (description
     "Visualize the trends and historical downloads from packages in the CRAN
repository.  Data is obtained by using the API to query the database from the
RStudio CRAN mirror.")
    (license license:gpl2+)))

(define-public r-visualize
  (package
    (name "r-visualize")
    (version "4.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visualize" version))
              (sha256
               (base32
                "1k3jpvj1yysxc4g1a1w3m1y91104aqxqv8jh9qdd23gwy7a29525"))))
    (properties `((upstream-name . "visualize")))
    (build-system r-build-system)
    (home-page "https://github.com/coatless/visualize")
    (synopsis
     "Graph Probability Distributions with User Supplied Parameters and Statistics")
    (description
     "Graphs the pdf or pmf and highlights what area or probability is present in user
defined locations.  Visualize is able to provide lower tail, bounded, upper
tail, and two tail calculations.  Supports strict and equal to inequalities.
Also provided on the graph is the mean and variance of the distribution.")
    (license license:expat)))

(define-public r-visualfields
  (package
    (name "r-visualfields")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visualFields" version))
              (sha256
               (base32
                "1z62xappwjdv9f7ql5spydkb626rdj3hvpvzy3d71fwm0y3qwki3"))))
    (properties `((upstream-name . "visualFields")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-shinyjs
                             r-shiny
                             r-rlang
                             r-pracma
                             r-polyclip
                             r-plotrix
                             r-oro-dicom
                             r-htmltable
                             r-hmisc
                             r-gtools
                             r-dt
                             r-dplyr
                             r-deldir
                             r-combinat
                             r-boot))
    (home-page "https://www.optocom.es")
    (synopsis "Statistical Methods for Visual Fields")
    (description
     "This package provides a collection of tools for analyzing the field of vision.
It provides a framework for development and use of innovative methods for
visualization, statistical analysis, and clinical interpretation of visual-field
loss and its change over time.  It is intended to be a tool for collaborative
research.  The package is described in Marin-Franch and Swanson (2013)
<doi:10.1167/13.4.10> and is part of the Open Perimetry Initiative (OPI)
[Turpin, Artes, and McKendrick (2012) <doi:10.1167/12.11.22>].")
    (license license:gpl3)))

(define-public r-visualdom
  (package
    (name "r-visualdom")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VisualDom" version))
              (sha256
               (base32
                "14qg44sivfhnvjac5yq4n5llhwq669m3j7a2z84rlz0737x7x5xd"))))
    (properties `((upstream-name . "VisualDom")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim r-wavemulcor r-plot3d))
    (home-page "https://cran.r-project.org/package=VisualDom")
    (synopsis "Visualize Dominant Variables in Wavelet Multiple Correlation")
    (description
     "Estimates and plots as a heat map the correlation coefficients obtained via the
wavelet local multiple correlation WLMC (FernÃ¡ndez-Macho 2018) and the dominant
variable/s, i.e., the variable/s that maximizes the multiple correlation through
time and scale (Polanco-MartÃ­nez et al.  2020, Polanco-MartÃ­nez 2022).  We
improve the graphical outputs of WLMC proposing a didactic and useful way to
visualize the dominant variable(s) for a set of time series.  The WLMC was
designed for financial time series, but other kinds of data (e.g., climatic,
ecological, etc.) can be used.  The functions contained in VisualDom are highly
flexible since these contains several parameters to personalize the time series
under analysis and the heat maps.  In addition, we have also included two data
sets (named rdata_climate and rdata_Lorenz') to exemplify the use of the
functions contained in VisualDom'.  Methods derived from FernÃ¡ndez-Macho (2018)
<doi:10.1016/j.physa.2017.11.050>, Polanco-MartÃ­nez et al. (2020)
<doi:10.1038/s41598-020-77767-8> and Polanco-MartÃ­nez (2023, in press).")
    (license license:gpl2+)))

(define-public r-vistributions
  (package
    (name "r-vistributions")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vistributions" version))
              (sha256
               (base32
                "1nzkbyqks38n7gp55iqhrlxqyfwxk4fvqzi9vsb45h0m0hlmwhxr"))))
    (properties `((upstream-name . "vistributions")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rsquaredacademy/vistributions")
    (synopsis "Visualize Probability Distributions")
    (description
     "Visualize and compute percentiles/probabilities of normal, t, f, chi square and
binomial distributions.")
    (license license:expat)))

(define-public r-vistree
  (package
    (name "r-vistree")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visTree" version))
              (sha256
               (base32
                "1l07zfr2hagjpdxfw5290wa3ki4bl7iqxrrhda0d1bp3wmwfz0ai"))))
    (properties `((upstream-name . "visTree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-partykit r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visTree")
    (synopsis "Visualization of Subgroups for Decision Trees")
    (description
     "This package provides a visualization for characterizing subgroups defined by a
decision tree structure.  The visualization simplifies the ability to interpret
individual pathways to subgroups; each sub-plot describes the distribution of
observations within individual terminal nodes and percentile ranges for the
associated inner nodes.")
    (license license:gpl3)))

(define-public r-vistla
  (package
    (name "r-vistla")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vistla" version))
              (sha256
               (base32
                "1x5iighpdx1mf3gips1b5j39z2f52kjs2dd3b3l58v391j4q36sx"))))
    (properties `((upstream-name . "vistla")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vistla")
    (synopsis "Detecting Influence Paths with Information Theory")
    (description
     "Traces information spread through interactions between features, utilising
information theory measures and a higher-order generalisation of the concept of
widest paths in graphs.  In particular, vistla can be used to better understand
the results of high-throughput biomedical experiments, by organising the effects
of the investigated intervention in a tree-like hierarchy from direct to
indirect ones, following the plausible information relay circuits.  Due to its
higher-order nature, vistla can handle multi-modality and assign multiple roles
to a single feature.")
    (license license:gpl3+)))

(define-public r-vistime
  (package
    (name "r-vistime")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vistime" version))
              (sha256
               (base32
                "18gqx71mpjsccfnab11j3g8wl11x2sk7bbjbcpi23qsk5d7sy112"))))
    (properties `((upstream-name . "vistime")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rcolorbrewer
                             r-plotly
                             r-ggrepel
                             r-ggplot2
                             r-assertive-types))
    (native-inputs (list r-knitr))
    (home-page "https://shosaco.github.io/vistime/")
    (synopsis "Pretty Timelines in R")
    (description
     "This package provides a library for creating time based charts, like Gantt or
timelines.  Possible outputs include ggplot2 diagrams, plotly.js graphs,
Highcharts.js widgets and data.frames.  Results can be used in the RStudio
viewer pane, in RMarkdown documents or in Shiny apps.  In the interactive
outputs created by vistime() and hc_vistime(), you can interact with the plot
using mouse hover or zoom.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-visstatistics
  (package
    (name "r-visstatistics")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visStatistics" version))
              (sha256
               (base32
                "0lp6sf2wrjjp1zh77yhlgr9sfpls54z0bny0l36v98ik4qykky0f"))))
    (properties `((upstream-name . "visStatistics")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd r-nortest r-multcompview r-cairo))
    (home-page "https://cran.r-project.org/package=visStatistics")
    (synopsis "Automated Visualization of Statistical Tests")
    (description
     "Visualization of the most powerful statistical hypothesis test.  The function
vistat() visualizes the statistical hypothesis testing between the dependent
variable (response) varsample and the independent variable (feature) varfactor.
The statistical hypothesis test (including the eventual corresponding post-hoc
analysis) with the highest statistical power fulfilling the assumptions of the
corresponding test is chosen based on a decision tree.  A graph displaying the
raw data accordingly to the chosen test is generated, the test statistics
including eventual post-hoc-analysis are returned.  The automated workflow is
especially suited for browser based interfaces to server-based deployments of R.
Implemented tests: lm(), t.test(), wilcox.test(), aov(), kruskal.test(),
fisher.test(), chisqu.test().  Implemented tests to check the normal
distribution of standardized residuals: shapiro.test() and ad.test().
Implemented post-hoc tests: TukeyHSD() for aov() and pairwise.wilcox.test() for
kruskal.test().  For the comparison of averages, the following algorithm is
implemented: If the p-values of the standardized residuals of both
shapiro.test() or ad.test() are smaller than 1-conf.level, kruskal.test() resp.
wilcox.test() are performed, otherwise the oneway.test() and aov() resp.
t.test() are performed and displayed.  Exception: If the sample size is bigger
than 100, t.test() is always performed and wilcox.test() is never executed
(Lumley et al. (2002) <doi:10.1146/annurev.publhealth.23.100901.140546>).  For
the test of independence of count data, Cochran's rule (Cochran (1954)
<doi:10.2307/3001666>) is implemented: If more than 20 percent of all cells have
a count smaller than 5, fisher.test() is performed and displayed, otherwise
chisqu.test().  In both cases case an additional mosaic plot is generated.")
    (license license:expat)))

(define-public r-visreg
  (package
    (name "r-visreg")
    (version "2.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visreg" version))
              (sha256
               (base32
                "070yhyxxh3w16i54k790n47bgcjn4b10b6g1z553x6afjc3l3a6d"))))
    (properties `((upstream-name . "visreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (native-inputs (list r-knitr))
    (home-page "http://pbreheny.github.io/visreg")
    (synopsis "Visualization of Regression Models")
    (description
     "This package provides a convenient interface for constructing plots to visualize
the fit of regression models arising from a wide variety of models in R ('lm',
glm', coxph', rlm', gam', locfit', lmer', randomForest', etc.)")
    (license license:gpl3)))

(define-public r-visr
  (package
    (name "r-visr")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visR" version))
              (sha256
               (base32
                "0s403njzcasp6l55k1lzh3jmd5ajdfblg312pwl8b5w3zpqp32jg"))))
    (properties `((upstream-name . "visR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-rlang
                             r-kableextra
                             r-gtable
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/openpharma/visR")
    (synopsis "Clinical Graphs and Tables Adhering to Graphical Principles")
    (description
     "To enable fit-for-purpose, reusable clinical and medical research focused
visualizations and tables with sensible defaults and based on graphical
principles as described in: \"Vandemeulebroecke et al. (2018)\"
<doi:10.1002/pst.1912>, \"Vandemeulebroecke et al. (2019)\"
<doi:10.1002/psp4.12455>, and \"Morris et al. (2019)\"
<doi:10.1136/bmjopen-2019-030215>.")
    (license license:expat)))

(define-public r-visitorcounts
  (package
    (name "r-visitorcounts")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VisitorCounts" version))
              (sha256
               (base32
                "0qm5qccikwdkdc9pm0gck5id3rjicb07jbds4fbvn3db071bzrdy"))))
    (properties `((upstream-name . "VisitorCounts")))
    (build-system r-build-system)
    (propagated-inputs (list r-rssa))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VisitorCounts")
    (synopsis "Modeling and Forecasting Visitor Counts Using Social Media")
    (description
     "This package performs modeling and forecasting of park visitor counts using
social media data and (partial) on-site visitor counts.  Specifically, the model
is built based on an automatic decomposition of the trend and seasonal
components of the social media-based park visitor counts, from which short-term
forecasts of the visitor counts and percent changes in the visitor counts can be
made.  A reference for generating social media-based visitor counts can be found
at Wood, Guerry, Silver, and Lacayo (2013) <doi:10.1038/srep02976>.")
    (license license:gpl3)))

(define-public r-visit
  (package
    (name "r-visit")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visit" version))
              (sha256
               (base32
                "0kkspih7m18g5pqlwrxpgjdwqxpp23c3xyvcnvv247abl9aq81rd"))))
    (properties `((upstream-name . "visit")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-sqldf
                             r-rstan
                             r-rcppeigen
                             r-rcpp
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visit")
    (synopsis "Phase I Dose Escalation Study Design for Vaccines")
    (description
     "This package provides a Bayesian Phase I cancer vaccine trial design is
implemented in this package.  The design allows simultaneous evaluation of
safety and immunogenicity outcomes in the context of vaccine studies.  See Wang
(2019) <DOI:10.1002/sim.8021> for the details of the Phase I cancer vaccine
trial design.")
    (license license:gpl3+)))

(define-public r-visielse
  (package
    (name "r-visielse")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ViSiElse" version))
              (sha256
               (base32
                "1ay09dahlqnfrgf4gl4s45a4ahrk2xliagxqz5h826w2vzsawqcc"))))
    (properties `((upstream-name . "ViSiElse")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-matrix
                             r-ggplot2
                             r-colorspace
                             r-chron))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Re2SimLab/ViSiElse")
    (synopsis "Visual Tool for Behavior Analysis over Time")
    (description
     "This package provides a graphical R package designed to visualize behavioral
observations over time.  Based on raw time data extracted from video recorded
sessions of experimental observations, ViSiElse grants a global overview of a
process by combining the visualization of multiple actions timestamps for all
participants in a single graph.  Individuals and/or group behavior can easily be
assessed.  Supplementary features allow users to further inspect their data by
adding summary statistics (mean, standard deviation, quantile or statistical
test) and/or time constraints to assess the accuracy of the realized actions.")
    (license license:agpl3)))

(define-public r-viscomplexr
  (package
    (name "r-viscomplexr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "viscomplexr" version))
              (sha256
               (base32
                "1b45yi5xv4vq52pfa064ll3ghxgkwpbknzq94gg60vcvb7spd0if"))))
    (properties `((upstream-name . "viscomplexr")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rdpack
                             r-rcpp
                             r-plotrix
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://peterbiber.github.io/viscomplexr/")
    (synopsis "Phase Portraits of Functions in the Complex Number Plane")
    (description
     "Functionality for creating phase portraits of functions in the complex number
plane.  Works with R base graphics, whose full functionality is available.
Parallel processing is used for optimum performance.")
    (license license:gpl3)))

(define-public r-viscomp
  (package
    (name "r-viscomp")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "viscomp" version))
              (sha256
               (base32
                "18s9qapznc50xwjr3lx48nsn9prji8n13byqzvhy151wm4anak7k"))))
    (properties `((upstream-name . "viscomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-reshape2
                             r-qgraph
                             r-plyr
                             r-netmeta
                             r-mass
                             r-hmisc
                             r-ggplot2
                             r-ggnewscale
                             r-ggextra
                             r-dplyr
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/georgiosseitidis/viscomp")
    (synopsis
     "Visualize Multi-Component Interventions in Network Meta-Analysis")
    (description
     "This package provides a set of functions providing several visualization tools
for exploring the behavior of the components in a network meta-analysis of
multi-component (complex) interventions: - components descriptive analysis -
heat plot of the two-by-two component combinations - leaving one component
combination out scatter plot - violin plot for specific component combinations
effects - density plot for components effects - waterfall plot for the
interventions effects that differ by a certain component combination - network
graph of components - rank heat plot of components for multiple outcomes.  The
implemented tools are described by Seitidis et al. (2023)
<doi:10.1002/jrsm.1617>.")
    (license license:gpl3+)))

(define-public r-visaotr
  (package
    (name "r-visaotr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visaOTR" version))
              (sha256
               (base32
                "12ix8ljbykwf493hw6npli2ad665jip2mzb8p25j5v10f8ij88qm"))))
    (properties `((upstream-name . "visaOTR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-rglpk
                             r-randomforest
                             r-mboost
                             r-matrix
                             r-kernlab
                             r-e1071))
    (home-page "https://cran.r-project.org/package=visaOTR")
    (synopsis
     "Valid Improved Sparsity A-Learning for Optimal Treatment Decision")
    (description
     "Valid Improved Sparsity A-Learning (VISA) provides a new method for selecting
important variables involved in optimal treatment regime from a multiply robust
perspective.  The VISA estimator achieves its success by borrowing the strengths
of both model averaging (ARM, Yuhong Yang, 2001)
<doi:10.1198/016214501753168262> and variable selection (PAL, Chengchun Shi,
Ailin Fan, Rui Song and Wenbin Lu, 2018) <doi:10.1214/17-AOS1570>.  The package
is an implementation of Zishu Zhan and Jingxiao Zhang. (2022+).")
    (license license:gpl3)))

(define-public r-visae
  (package
    (name "r-visae")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visae" version))
              (sha256
               (base32
                "0ycwb380z8nb646w7w42952lwvdi8prmph7yv1lraswvp4wjfx3p"))))
    (properties `((upstream-name . "visae")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinyjs
                             r-shiny
                             r-rlang
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-ca))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visae")
    (synopsis "Visualization of Adverse Events")
    (description
     "Implementation of shiny app to visualize adverse events based on the Common
Terminology Criteria for Adverse Events (CTCAE) using stacked correspondence
analysis as described in Diniz et.  al (2021)<doi:10.1186/s12874-021-01368-w>.")
    (license license:gpl2+)))

(define-public r-visachartr
  (package
    (name "r-visachartr")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visachartR" version))
              (sha256
               (base32
                "1amizhkzqmvlagi4qpwwzjjwswd9f3mjvxiddq92cgj8rj5f4hjc"))))
    (properties `((upstream-name . "visachartR")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (home-page
     "https://github.com/visa/visa-chart-components/tree/master/packages/charts-R")
    (synopsis "Wrapper for 'Visa Chart Components'")
    (description
     "This package provides a set of wrapper functions for Visa Chart Components'.
Visa Chart Components <https://github.com/visa/visa-chart-components> is an
accessibility focused, framework agnostic set of data experience design systems
components for the web.")
    (license license:expat)))

(define-public r-visa
  (package
    (name "r-visa")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "visa" version))
              (sha256
               (base32
                "1mx7nbbpxs4fdp781a75qvffa42dx2n6anslbfs9bnprmvzmljqr"))))
    (properties `((upstream-name . "visa")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcolorbrewer r-matrix r-ggpmisc
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kang-yu/visa")
    (synopsis "Vegetation Imaging Spectroscopy Analyzer")
    (description
     "This package provides easy-to-use tools for data analysis and visualization for
hyperspectral remote sensing (also known as imaging spectroscopy), with a
particular focus on vegetation hyperspectral data analysis.  It consists of a
set of functions, ranging from the organization of hyperspectral data in the
proper data structure for spectral feature selection, calculation of vegetation
index, multivariate analysis, as well as to the visualization of spectra and
results of analysis in the ggplot2 style.")
    (license license:gpl3)))

(define-public r-virustotal
  (package
    (name "r-virustotal")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "virustotal" version))
              (sha256
               (base32
                "020kwhki5740857zd24xm18dg3whzhf527qhmfx1cxyqyld404wy"))))
    (properties `((upstream-name . "virustotal")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/themains/virustotal")
    (synopsis "R Client for the VirusTotal API")
    (description
     "Use VirusTotal, a Google service that analyzes files and URLs for viruses,
worms, trojans etc., provides category of the content hosted by a domain from a
variety of prominent services, provides passive DNS information, among other
things.  See <http://www.virustotal.com> for more information.")
    (license license:expat)))

(define-public r-virtuoso
  (package
    (name "r-virtuoso")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "virtuoso" version))
              (sha256
               (base32
                "1smb8sjfqcp3jflplgf92swasxzrp72fnnqwyisf87pjknm91qsc"))))
    (properties `((upstream-name . "virtuoso")))
    (build-system r-build-system)
    (propagated-inputs (list r-rappdirs
                             r-ps
                             r-processx
                             r-odbc
                             r-ini
                             r-fs
                             r-digest
                             r-dbi
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/virtuoso")
    (synopsis "Interface to 'Virtuoso' using 'ODBC'")
    (description
     "This package provides users with a simple and convenient mechanism to manage and
query a Virtuoso database using the DBI (Data-Base Interface) compatible ODBC
(Open Database Connectivity) interface.  Virtuoso is a high-performance
\"universal server,\" which can act as both a relational database, supporting
standard Structured Query Language ('SQL') queries, while also supporting data
following the Resource Description Framework ('RDF') model for Linked Data.  RDF
data can be queried using SPARQL ('SPARQL Protocol and RDF Query Language)
queries, a graph-based query that supports semantic reasoning.  This allows
users to leverage the performance of local or remote Virtuoso servers using
popular R packages such as DBI and dplyr', while also providing a
high-performance solution for working with large RDF triplestores from R. The
package also provides helper routines to install, launch, and manage a Virtuoso
server locally on Mac', Windows and Linux platforms using the standard
interactive installers from the R command-line.  By automatically handling these
setup steps, the package can make using Virtuoso considerably faster and easier
for a most users to deploy in a local environment.  Managing the bulk import of
triples from common serializations with a single intuitive command is another
key feature of this package.  Bulk import performance can be tens to hundreds of
times faster than the comparable imports using existing R tools, including
rdflib and redland packages.")
    (license license:expat)))

(define-public r-virtualspecies
  (package
    (name "r-virtualspecies")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "virtualspecies" version))
              (sha256
               (base32
                "0l86awcjq6i1lqax596xy5qfmzwiz3cwp2rczvgg37fdrym97cm3"))))
    (properties `((upstream-name . "virtualspecies")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rworldmap r-raster r-ade4))
    (home-page "http://borisleroy.com/virtualspecies")
    (synopsis "Generation of Virtual Species Distributions")
    (description
     "This package provides a framework for generating virtual species distributions,
a procedure increasingly used in ecology to improve species distribution models.
 This package integrates the existing methodological approaches with the
objective of generating virtual species distributions with increased ecological
realism.")
    (license license:gpl2+)))

(define-public r-virtualpop
  (package
    (name "r-virtualpop")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VirtualPop" version))
              (sha256
               (base32
                "0g3yzv9fqmxydqq6b56l6abz03slk7425aahixs3q26gwp587rz4"))))
    (properties `((upstream-name . "VirtualPop")))
    (build-system r-build-system)
    (propagated-inputs (list r-msm r-hmdhfdplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VirtualPop")
    (synopsis
     "Simulation of Populations by Sampling Waiting-Time Distributions")
    (description
     "Generates lifespans and fertility histories in continuous time using
individual-level state transition (multi-state) models and data from the Human
Mortality Database and the Human Fertility Database.  To facilitate virtual
population analysis, data on virtual individuals are stored in a data structure
commonly used in sample surveys.  Life histories are generated for multiple
generations.  The genealogies that result facilitate the study of family ties.")
    (license license:gpl2)))

(define-public r-virtualpollen
  (package
    (name "r-virtualpollen")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "virtualPollen" version))
              (sha256
               (base32
                "0caiyl7h9qn3nv34dafv5rs4v7n4avyjpng0rkz6aw3ri1zn8sa0"))))
    (properties `((upstream-name . "virtualPollen")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-plyr
                             r-mgcv
                             r-ggplot2
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BlasBenito/virtualPollen")
    (synopsis
     "Simulating Pollen Curves from Virtual Taxa with Different Life and Niche Traits")
    (description
     "Tools to generate virtual environmental drivers with a given temporal
autocorrelation, and to simulate pollen curves at annual resolution over
millennial time-scales based on these drivers and virtual taxa with different
life traits and niche features.  It also provides the means to simulate
quasi-realistic pollen-data conditions by applying simulated accumulation rates
and given depth intervals between consecutive samples.")
    (license license:gpl2+)))

(define-public r-virf
  (package
    (name "r-virf")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VIRF" version))
              (sha256
               (base32
                "0bdkmbmkmmj78h9x025qsdzjzcx8xr2s98wlspcsghlz4hxkzcas"))))
    (properties `((upstream-name . "VIRF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmgarch
                             r-mgarchbekk
                             r-matrixcalc
                             r-matlib
                             r-ks
                             r-gnm
                             r-expm
                             r-bigvar))
    (home-page "https://cran.r-project.org/package=VIRF")
    (synopsis
     "Computation of Volatility Impulse Response Function of Multivariate Time Series")
    (description
     "Computation of volatility impulse response function for multivariate time series
model using algorithm by Jin, Lin and Tamvakis (2012)
<doi.org/10.1016/j.eneco.2012.03.003>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-vip
  (package
    (name "r-vip")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vip" version))
              (sha256
               (base32
                "1qsvyfms79sn46jdmq7q5r0d6gwjqhr9pll1y776rx0bj7vx1ax5"))))
    (properties `((upstream-name . "vip")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-plyr r-magrittr r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/koalaverse/vip/")
    (synopsis "Variable Importance Plots")
    (description
     "This package provides a general framework for constructing variable importance
plots from various types of machine learning models in R. Aside from some
standard model- specific variable importance measures, this package also
provides model- agnostic approaches that can be applied to any supervised
learning algorithm.  These include 1) an efficient permutation-based variable
importance measure, 2) variable importance based on Shapley values (Strumbelj
and Kononenko, 2014) <doi:10.1007/s10115-013-0679-x>, and 3) the variance-based
approach described in Greenwell et al. (2018) <arXiv:1805.04755>.  A
variance-based method for quantifying the relative strength of interaction
effects is also included (see the previous reference for details).")
    (license license:gpl2+)))

(define-public r-violinplotter
  (package
    (name "r-violinplotter")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "violinplotter" version))
              (sha256
               (base32
                "1xy57mycdsr9qr48n1jrw0nzwz848r0xcns864d8gyc8zikp3x6a"))))
    (properties `((upstream-name . "violinplotter")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=violinplotter")
    (synopsis "Plotting and Comparing Means with Violin Plots")
    (description
     "This package produces violin plots with optional nonparametric (Mann-Whitney
test) and parametric (Tukey's honest significant difference) mean comparison and
linear regression.  This package aims to be a simple and quick visualization
tool for comparing means and assessing trends of categorical factors.")
    (license license:gpl3)))

(define-public r-vines
  (package
    (name "r-vines")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vines" version))
              (sha256
               (base32
                "057d2fdh03cq9kh4vz94arqscahmz14xbr2g59l0vn205lnyilf1"))))
    (properties `((upstream-name . "vines")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp r-cubature r-copula r-adgoftest))
    (home-page "https://github.com/yasserglez/vines")
    (synopsis "Multivariate Dependence Modeling with Vines")
    (description
     "Implementation of the vine graphical model for building high-dimensional
probability distributions as a factorization of bivariate copulas and marginal
density functions.  This package provides S4 classes for vines (C-vines and
D-vines) and methods for inference, goodness-of-fit tests, density/distribution
function evaluation, and simulation.")
    (license license:gpl2+)))

(define-public r-vinereg
  (package
    (name "r-vinereg")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vinereg" version))
              (sha256
               (base32
                "0d1ibrhjsbjaaz2cd9lg76cjplkys716i689khzaiv4sgbjhwdh1"))))
    (properties `((upstream-name . "vinereg")))
    (build-system r-build-system)
    (propagated-inputs (list r-wdm
                             r-rvinecopulib
                             r-rcppthread
                             r-rcppeigen
                             r-rcpp
                             r-kde1d
                             r-bh
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://tnagler.github.io/vinereg/")
    (synopsis "D-Vine Quantile Regression")
    (description
     "This package implements D-vine quantile regression models with parametric or
nonparametric pair-copulas.  See Kraus and Czado (2017)
<doi:10.1016/j.csda.2016.12.009> and Schallhorn et al. (2017)
<arXiv:1705.08310>.")
    (license license:gpl3)))

(define-public r-vinecopula
  (package
    (name "r-vinecopula")
    (version "2.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VineCopula" version))
              (sha256
               (base32
                "1k9k3kwzw7pdmr3hkhafyaqvnn2g5syys74r9kqcn9fm2iyzdf86"))))
    (properties `((upstream-name . "VineCopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mass r-lattice r-adgoftest))
    (home-page "https://github.com/tnagler/VineCopula")
    (synopsis "Statistical Inference of Vine Copulas")
    (description
     "This package provides tools for the statistical analysis of regular vine copula
models, see Aas et al. (2009) <doi:10.1016/j.insmatheco.2007.02.001> and Dissman
et al. (2013) <doi:10.1016/j.csda.2012.08.010>.  The package includes tools for
parameter estimation, model selection, simulation, goodness-of-fit tests, and
visualization.  Tools for estimation, selection and exploratory data analysis of
bivariate copula models are also provided.")
    (license license:gpl2+)))

(define-public r-vindecodr
  (package
    (name "r-vindecodr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vindecodr" version))
              (sha256
               (base32
                "0yvchdf90l8lkzyba5wrpma6vjcgf19li159s8s79y8sgp5pyx7p"))))
    (properties `((upstream-name . "vindecodr")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (home-page "https://cran.r-project.org/package=vindecodr")
    (synopsis
     "Provides an Interface to the Department of Transportation VIN Decoder")
    (description
     "This package provides a programmatic interface in R for the US Department of
Transportation (DOT) National Highway Transportation Safety Administration
(NHTSA) vehicle identification number (VIN) API, located at
<https://vpic.nhtsa.dot.gov/api/>.  The API can decode up to 50 vehicle
identification numbers in one call, and provides manufacturer information about
the vehicles, including make, model, model year, and gross vehicle weight rating
(GVWR).")
    (license license:expat)))

(define-public r-vimpclust
  (package
    (name "r-vimpclust")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vimpclust" version))
              (sha256
               (base32
                "0ly7piz7q88sh2g7zq5b2pqph9467b4fclgq9amm0m7xc8vrv4f9"))))
    (properties `((upstream-name . "vimpclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-polychrome r-pcamixdata r-mclust
                             r-ggplot2))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=vimpclust")
    (synopsis "Variable Importance in Clustering")
    (description
     "An implementation of methods related to sparse clustering and variable
importance in clustering.  The package currently allows to perform sparse
k-means clustering with a group penalty, so that it automatically selects groups
of numerical features.  It also allows to perform sparse clustering and variable
selection on mixed data (categorical and numerical features), by preprocessing
each categorical feature as a group of numerical features.  Several methods for
visualizing and exploring the results are also provided.  M. Chavent, J.
Lacaille, A. Mourer and M. Olteanu
(2020)<https://www.esann.org/sites/default/files/proceedings/2020/ES2020-103.pdf>.")
    (license license:gpl3)))

(define-public r-vimp
  (package
    (name "r-vimp")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vimp" version))
              (sha256
               (base32
                "1m88zjxv6zjbbln851kwj9wfam59q8z93s6dz6lmga530d7z4xja"))))
    (properties `((upstream-name . "vimp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-superlearner
                             r-rocr
                             r-rlang
                             r-mass
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://bdwilliamson.github.io/vimp/")
    (synopsis "Perform Inference on Algorithm-Agnostic Variable Importance")
    (description
     "Calculate point estimates of and valid confidence intervals for nonparametric,
algorithm-agnostic variable importance measures in high and low dimensions,
using flexible estimators of the underlying regression functions.  For more
information about the methods, please see Williamson et al. (Biometrics, 2020),
Williamson et al. (JASA, 2021), and Williamson and Feng (ICML, 2020).")
    (license license:expat)))

(define-public r-vimean
  (package
    (name "r-vimean")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VIMean" version))
              (sha256
               (base32
                "0kxrcigp94h2j1vx5pj24sp73iqxldc1ygm5bak4jrld66r0nb5b"))))
    (properties `((upstream-name . "VIMean")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VIMean")
    (synopsis "Variability Independent of Mean")
    (description
     "To computed the variability independent of mean (VIM) or variation independent
of mean (VIM).  The methodology can be found at Peter M Rothwell et al. (2010)
<doi:10.1016/S1474-4422(10)70067-3>.")
    (license license:gpl3)))

(define-public r-villager
  (package
    (name "r-villager")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "villager" version))
              (sha256
               (base32
                "0g72zpsqi39ax44n3s3x66b1fbgyx6w2wraf531jsy7vj95ivr2p"))))
    (properties `((upstream-name . "villager")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-readr r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zizroc/villager/")
    (synopsis "Framework for Designing and Running Agent Based Models")
    (description
     "This is a package for creating and running Agent Based Models (ABM).  It
provides a set of base classes with core functionality to allow bootstrapped
models.  For more intensive modeling, the supplied classes can be extended to
fit researcher needs.")
    (license license:expat)))

(define-public r-viking
  (package
    (name "r-viking")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "viking" version))
              (sha256
               (base32
                "0ggnp96igmdzp8acyj57mkkd2xd3ixcnakpwp417yzsdqqlg20sf"))))
    (properties `((upstream-name . "viking")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=viking")
    (synopsis "State-Space Models Inference by Kalman or Viking")
    (description
     "Inference methods for state-space models, relying on the Kalman Filter or on
Viking (Variational Bayesian VarIance tracKING).  See J. de Vilmarest (2022)
<https://tel.archives-ouvertes.fr/tel-03716104/>.")
    (license license:lgpl3)))

(define-public r-vigor
  (package
    (name "r-vigor")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VIGoR" version))
              (sha256
               (base32
                "1dpl9y86i8hcrbyvgfkix4vpg5rsz5y6g8m73jl8kzpi686r9ikv"))))
    (properties `((upstream-name . "VIGoR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VIGoR")
    (synopsis "Variational Bayesian Inference for Genome-Wide Regression")
    (description
     "Conducts linear regression using variational Bayesian inference, particularly
optimized for genome-wide association mapping and whole-genome prediction which
use a number of DNA markers as the explanatory variables.  Provides seven
regression models which select the important variables (i.e., the variables
related to response variables) among the given explanatory variables in
different ways (i.e., model structures).")
    (license license:expat)))

(define-public r-vifcp
  (package
    (name "r-vifcp")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VIFCP" version))
              (sha256
               (base32
                "0w41k25vss806m5vpwmmcfsmwaixmln0pliql3a6xlwsihha5i34"))))
    (properties `((upstream-name . "VIFCP")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=VIFCP")
    (synopsis "Detecting Change-Points via VIFCP Method")
    (description
     "This package contains a function to support the following paper: Xiaoping Shi,
Xiang-Sheng Wang, Dongwei Wei, Yuehua Wu (2016),
<DOI:10.1007/s00180-015-0587-5>, A sequential multiple change-point detection
procedure via VIF regression, Computational Statistics, 31(2): 671-691.")
    (license license:lgpl3)))

(define-public r-viewpoly
  (package
    (name "r-viewpoly")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "viewpoly" version))
              (sha256
               (base32
                "1say30d46vj67ng5mprhwl02jf9d0kv573j80r05z08szmcm4sxb"))))
    (properties `((upstream-name . "viewpoly")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-tidyr
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-reshape2
                             r-plotly
                             r-markdown
                             r-jbrowser
                             r-golem
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-curl
                             r-config
                             r-abind))
    (home-page "https://github.com/mmollina/viewpoly")
    (synopsis
     "Shiny App to Visualize Genetic Maps and QTL Analysis in Polyploid Species")
    (description
     "This package provides a graphical user interface to integrate, visualize and
explore results from linkage and quantitative trait loci analysis, together with
genomic information for autopolyploid species.  The app is meant for interactive
use and allows users to optionally upload different sources of information,
including gene annotation and alignment files, enabling the exploitation and
search for candidate genes in a genome browser.  In its current version,
VIEWpoly supports inputs from MAPpoly', polymapR', diaQTL', QTLpoly and polyqtlR
packages.")
    (license license:gpl3+)))

(define-public r-viewpipesteps
  (package
    (name "r-viewpipesteps")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ViewPipeSteps" version))
              (sha256
               (base32
                "0lcm7zzflbbjpb1mdy6pppdmg9gvlcn7hg42a4fgm0kxhniwnmyg"))))
    (properties `((upstream-name . "ViewPipeSteps")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rstudioapi r-dplyr))
    (home-page "https://cran.r-project.org/package=ViewPipeSteps")
    (synopsis "Create View Tabs of Pipe Chains")
    (description
     "Debugging pipe chains often consists of viewing the output after each step.
This package adds RStudio addins and two functions that allow outputing each or
select steps in a convenient way.")
    (license license:expat)))

(define-public r-vietnameseconverter
  (package
    (name "r-vietnameseconverter")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vietnameseConverter" version))
              (sha256
               (base32
                "1bnscv1yz4hr6cvpavdj2gjn6dqy96rbagxl9280a2xxav09mps3"))))
    (properties `((upstream-name . "vietnameseConverter")))
    (build-system r-build-system)
    (propagated-inputs (list r-utf8 r-sf r-gsubfn))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/jniedballa/vietnameseConverter")
    (synopsis "Convert Vietnamese Encodings")
    (description
     "Conversion of characters from unsupported Vietnamese character encodings to
Unicode characters.  These Vietnamese encodings (TCVN3, VISCII, VPS) are not
natively supported in R and lead to printing of wrong characters and garbled
text (mojibake).  This package fixes that problem and provides readable output
with the correct Unicode characters (with or without diacritics).")
    (license license:gpl2+)))

(define-public r-vietnamcode
  (package
    (name "r-vietnamcode")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vietnamcode" version))
              (sha256
               (base32
                "0vc0c1fg30afar2dkch5h27b8jbglcd9ja6d5hcypnibqz4c68vz"))))
    (properties `((upstream-name . "vietnamcode")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vietnamcode")
    (synopsis "Convert Vietnam Provincial Codes")
    (description
     "Converts Vietnam's provinces names and ID across different formats.  Handles
diacritics and different spellings.")
    (license license:gpl3)))

(define-public r-video
  (package
    (name "r-video")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "video" version))
              (sha256
               (base32
                "0h500mpbjiwggx1m8zfydhr9n4v27is9s46ay9856d2lgv2srlfg"))))
    (properties `((upstream-name . "video")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jsonlite r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ashbaldry/video")
    (synopsis "'Shiny' Extension of 'video.js'")
    (description
     "Video interactivity within shiny applications using video.js'.  Enables the
status of the video to be sent from the UI to the server, and allows events such
as playing and pausing the video to be triggered from the server.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-vicus
  (package
    (name "r-vicus")
    (version "0.99.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Vicus" version))
              (sha256
               (base32
                "1f4vmz34gms0vbvpn94rgdhbbvxbqmjxzhd9n4fxfm0dizmba004"))))
    (properties `((upstream-name . "Vicus")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-rann r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rikenbit/Vicus")
    (synopsis
     "Exploiting Local Structures to Improve Network-Based Analysis of Biological Data")
    (description
     "Compared with the similar graph embedding method such as Laplacian Eigenmaps,
Vicus can exploit more local structures of graph data.  For the details of the
methods, see the reference section of GitHub README.md
<https://github.com/rikenbit/Vicus>.")
    (license license:expat)))

(define-public r-vicmapr
  (package
    (name "r-vicmapr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VicmapR" version))
              (sha256
               (base32
                "0p10vj9d4x1ffv138zpr0c9lmlm23mxc6jm1yhyyf3xlivjmj45b"))))
    (properties `((upstream-name . "VicmapR")))
    (build-system r-build-system)
    (inputs (list proj geos gdal))
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-sf
                             r-rvest
                             r-rlang
                             r-purrr
                             r-mapview
                             r-magrittr
                             r-lubridate
                             r-leaflet
                             r-knitr
                             r-kableextra
                             r-httr
                             r-glue
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-curl
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://justincally.github.io/VicmapR/")
    (synopsis "Access Victorian Spatial Data Through Web File Services (WFS)")
    (description
     "Easily interfaces R to spatial datasets available through the Victorian
Government's WFS (Web Feature Service):
<https://opendata.maps.vic.gov.au/geoserver/ows?request=GetCapabilities&service=wfs>,
which allows users to read in sf data from these sources.  VicmapR uses the lazy
querying approach and code developed by Teucher et al. (2021) for the bcdata R
package <doi:10.21105/joss.02927>.")
    (license license:asl2.0)))

(define-public r-vici
  (package
    (name "r-vici")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vici" version))
              (sha256
               (base32
                "0fwqp5avnsyi07b9zw26qw30vkya28mlc3v1anhf6zq7hc7mgp54"))))
    (properties `((upstream-name . "vici")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shiny
                             r-scales
                             r-rcolorbrewer
                             r-numderiv
                             r-nlme
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=vici")
    (synopsis
     "Vaccine Induced Cellular Immunogenicity with Bivariate Modeling")
    (description
     "This package provides a shiny app for accurate estimation of vaccine induced
immunogenicity with bivariate linear modeling.  Method is detailed in: Lhomme,
Hejblum, Lacabaratz, Wiedemann, Lelievre, Levy, Thiebaut & Richert (2020).
Journal of Immunological Methods, 477:112711. <doi:10.1016/j.jim.2019.112711>.")
    (license license:gpl3)))

(define-public r-vicc
  (package
    (name "r-vicc")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vICC" version))
              (sha256
               (base32
                "13lcs7wwj1xfbjf3q7r8ssf00jg5hr1vjp2pyw0r42iz7mx47xjv"))))
    (properties `((upstream-name . "vICC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags r-rdpack r-nlme r-ggplot2 r-coda))
    (home-page "https://cran.r-project.org/package=vICC")
    (synopsis "Varying Intraclass Correlation Coefficients")
    (description
     "Compute group-specific intraclass correlation coefficients, Bayesian testing of
homogenous within-group variance, and spike-and-slab model selection to
determine which groups share a common within-group variance in a one-way random
effects model <10.31234/osf.io/hpq7w>.")
    (license license:gpl2)))

(define-public r-vic5
  (package
    (name "r-vic5")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VIC5" version))
              (sha256
               (base32
                "1zkvzkras94gyc43b9j4bq4mpyg9l1idx2pdd8a728gmq1daky0k"))))
    (properties `((upstream-name . "VIC5")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-lubridate r-foreach))
    (home-page "https://github.com/rpkgs/VIC5")
    (synopsis "The Variable Infiltration Capacity (VIC) Hydrological Model")
    (description
     "The Variable Infiltration Capacity (VIC) model is a macroscale hydrologic model
that solves full water and energy balances, originally developed by Xu Liang at
the University of Washington (UW).  The version of VIC source code used is of
5.0.1 on <https://github.com/UW-Hydro/VIC/>, see Hamman et al. (2018).
Development and maintenance of the current official version of the VIC model at
present is led by the UW Hydro (Computational Hydrology group) in the Department
of Civil and Environmental Engineering at UW. VIC is a research model and in its
various forms it has been applied to most of the major river basins around the
world, as well as globally
<http://vic.readthedocs.io/en/master/Documentation/References/>.  References:
\"Liang, X., D. P. Lettenmaier, E. F. Wood, and S. J. Burges (1994), A simple
hydrologically based model of land surface water and energy fluxes for general
circulation models, J. Geophys.  Res., 99(D7), 14415-14428,
<doi:10.1029/94JD00483>\"; \"Hamman, J. J., Nijssen, B., Bohn, T. J., Gergel, D.
R., and Mao, Y. (2018), The Variable Infiltration Capacity model version 5
(VIC-5): infrastructure improvements for new applications and reproducibility,
Geosci.  Model Dev., 11, 3481-3496, <doi:10.5194/gmd-11-3481-2018>\".")
    (license license:gpl3)))

(define-public r-viafr
  (package
    (name "r-viafr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "viafr" version))
              (sha256
               (base32
                "1cxmk82cr2ci99j7wgfp7slqwyk5rxv109mk2c09mxqn3pdavil9"))))
    (properties `((upstream-name . "viafr")))
    (build-system r-build-system)
    (propagated-inputs (list r-utf8
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-dplyr
                             r-crul
                             r-assertthat))
    (home-page "https://github.com/stefanieschneider/viafr")
    (synopsis
     "Interface to the 'VIAF' ('Virtual International Authority File') API")
    (description
     "This package provides direct access to linked names for the same entity across
the world's major name authority files, including national and regional
variations in language, character set, and spelling.  For more information go to
<https://viaf.org/>.")
    (license license:gpl3)))

(define-public r-via
  (package
    (name "r-via")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "via" version))
              (sha256
               (base32
                "0vb4hxfi4im3f4zvkl0zcak8mk49g9ypmga704klfwyx44aywml6"))))
    (properties `((upstream-name . "via")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=via")
    (synopsis "Virtual Arrays")
    (description
     "The base class VirtualArray is defined, which acts as a wrapper around lists
allowing users to fold arbitrary sequential data into n-dimensional, R-style
virtual arrays.  The derived XArray class is defined to be used for homogeneous
lists that contain a single class of objects.  The RasterArray and SfArray
classes enable the use of stacked spatial data instead of lists.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-vhica
  (package
    (name "r-vhica")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vhica" version))
              (sha256
               (base32
                "10785bx2wcnrfg77914r93fzlixhjpqz22sj3gfrh5n4qswzs91g"))))
    (properties `((upstream-name . "vhica")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vhica")
    (synopsis "Vertical and Horizontal Inheritance Consistence Analysis")
    (description
     "The \"Vertical and Horizontal Inheritance Consistence Analysis\" method is
described in the following publication: \"VHICA: a new method to discriminate
between vertical and horizontal transposon transfer: application to the mariner
family within Drosophila\" by G. Wallau.  et al. (2016)
<DOI:10.1093/molbev/msv341>.  The purpose of the method is to detect horizontal
transfers of transposable elements, by contrasting the divergence of
transposable element sequences with that of regular genes.")
    (license license:gpl2)))

(define-public r-vhdclassification
  (package
    (name "r-vhdclassification")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VHDClassification" version))
              (sha256
               (base32
                "1ij4h3gzxb9mm9q743kc3sg2q609mnqz6mhlrbim1wcjji2b7bv4"))))
    (properties `((upstream-name . "VHDClassification")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-e1071))
    (home-page "https://cran.r-project.org/package=VHDClassification")
    (synopsis
     "Discrimination/Classification in very high dimension with linear and quadratic rules")
    (description
     "This package provides an implementation of Linear discriminant analysis and
quadratic discriminant analysis that works fine in very high dimension (when
there are many more variables than observations).")
    (license license:gpl2)))

(define-public r-vhcub
  (package
    (name "r-vhcub")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vhcub" version))
              (sha256
               (base32
                "04a8hdm4pxl8fzwy9q2wqc9q0dl5r49xwbid70yj9qlflh683id0"))))
    (properties `((upstream-name . "vhcub")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-seqinr r-ggplot2 r-biostrings))
    (home-page "https://cran.r-project.org/package=vhcub")
    (synopsis "Virus-Host Codon Usage Co-Adaptation Analysis")
    (description
     "Analyze the co-adaptation of codon usage between a virus and its host, calculate
various codon usage bias measurements as: effective number of codons (ENc)
Novembre (2002) <doi:10.1093/oxfordjournals.molbev.a004201>, codon adaptation
index (CAI) Sharp and Li (1987) <doi:10.1093/nar/15.3.1281>, relative codon
deoptimization index (RCDI) PuigbÃ² et al (2010) <doi:10.1186/1756-0500-3-87>,
similarity index (SiD) Zhou et al (2013) <doi:10.1371/journal.pone.0077239>,
synonymous codon usage orderliness (SCUO) Wan et al (2004)
<doi:10.1186/1471-2148-4-19> and, relative synonymous codon usage (RSCU) Sharp
et al (1986) <doi:10.1093/nar/14.13.5125>.  Also, it provides a statistical
dinucleotide over- and underrepresentation with three different models.
Implement several methods for visualization of codon usage as ENc.GC3plot() and
PR2.plot().")
    (license license:gpl3)))

(define-public r-vglmer
  (package
    (name "r-vglmer")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vglmer" version))
              (sha256
               (base32
                "0wfl1n6xp6qiv34d4p5qy3mwzrvf3n324hrlksdpa68j5xfw9w0f"))))
    (properties `((upstream-name . "vglmer")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-mgcv
                             r-matrix
                             r-lmtest
                             r-lme4
                             r-cholwishart))
    (home-page "https://github.com/mgoplerud/vglmer")
    (synopsis
     "Variational Inference for Hierarchical Generalized Linear Models")
    (description
     "Estimates hierarchical models using mean-field variational Bayes.  At present,
it can estimate logistic, linear, and negative binomial models.  It can
accommodate models with an arbitrary number of random effects and requires no
integration to estimate.  It also provides the ability to improve the quality of
the approximation using marginal augmentation.  Goplerud (2022)
<doi:10.1214/21-BA1266> provides details on the variational algorithms.")
    (license license:gpl2+)))

(define-public r-vgamextra
  (package
    (name "r-vgamextra")
    (version "0.0-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VGAMextra" version))
              (sha256
               (base32
                "11s7s2dm2yf5s9qbwbyavz01l9fk86grp4mlhrh8hd6lfmxxxcxm"))))
    (properties `((upstream-name . "VGAMextra")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam))
    (home-page "https://cran.r-project.org/package=VGAMextra")
    (synopsis "Additions and Extensions of the 'VGAM' Package")
    (description
     "Extending the functionalities of the VGAM package with additional functions and
datasets.  At present, VGAMextra comprises new family functions (ffs) to
estimate several time series models by maximum likelihood using Fisher scoring,
unlike popular packages in CRAN relying on optim(), including ARMA-GARCH-like
models, the Order-(p, d, q) ARIMAX model (non- seasonal), the Order-(p) VAR
model, error correction models for cointegrated time series, and ARMA-structures
with Student-t errors.  For independent data, new ffs to estimate the inverse-
Weibull, the inverse-gamma, the generalized beta of the second kind and the
general multivariate normal distributions are available.  In addition, VGAMextra
incorporates new VGLM-links for the mean-function, and the quantile-function (as
an alternative to ordinary quantile modelling) of several 1-parameter
distributions, that are compatible with the class of VGLM/VGAM family functions.
 Currently, only fixed-effects models are implemented.  All functions are
subject to change; see the NEWS for further details on the latest changes.")
    (license license:gpl2)))

(define-public r-vgamdata
  (package
    (name "r-vgamdata")
    (version "1.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VGAMdata" version))
              (sha256
               (base32
                "1smxhydcg6qa3lpgfg2cl0qpkysfi7i5vnhnri4r8w7axms2vrj8"))))
    (properties `((upstream-name . "VGAMdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam))
    (home-page "https://www.stat.auckland.ac.nz/~yee/VGAMdata/")
    (synopsis "Data Supporting the 'VGAM' Package")
    (description
     "Mainly data sets to accompany the VGAM package and the book \"Vector Generalized
Linear and Additive Models: With an Implementation in R\" (Yee, 2015)
<DOI:10.1007/978-1-4939-2818-7>.  These are used to illustrate vector
generalized linear and additive models (VGLMs/VGAMs), and associated models
(Reduced-Rank VGLMs, Quadratic RR-VGLMs, Row-Column Interaction Models, and
constrained and unconstrained ordination models in ecology).  This package now
contains some old VGAM family functions which have been replaced by newer ones
(often because they are now special cases).")
    (license license:gpl2)))

(define-public r-vfs
  (package
    (name "r-vfs")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VFS" version))
              (sha256
               (base32
                "1b8sl8id2gj4iqkpjzd3giybbix2jvskwsbw1kqj3zqr77hygxwg"))))
    (properties `((upstream-name . "VFS")))
    (build-system r-build-system)
    (propagated-inputs (list r-nleqslv r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VFS")
    (synopsis "Vegetated Filter Strip and Erosion Model")
    (description
     "Empirical models for runoff, erosion, and phosphorus loss across a vegetated
filter strip, given slope, soils, climate, and vegetation (Gall et al., 2018)
<doi:10.1007/s00477-017-1505-x>.  It also includes functions for deriving
climate parameters from measured daily weather data, and for simulating
rainfall.  Models implemented include MUSLE (Williams, 1975) and APLE (Vadas et
al., 2009 <doi:10.2134/jeq2008.0337>).")
    (license license:gpl3)))

(define-public r-vfprogression
  (package
    (name "r-vfprogression")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vfprogression" version))
              (sha256
               (base32
                "0kgw1jx0rl9v8qy8qg7zjzdgvwqdi7k1lsvsx3lnpw4sfpkzsq23"))))
    (properties `((upstream-name . "vfprogression")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vfprogression")
    (synopsis "Visual Field (VF) Progression Analysis and Plotting Methods")
    (description
     "Realization of published methods to analyze visual field (VF) progression.
Introduction to the plotting methods (designed by author TE) for VF output
visualization.  A sample dataset for two eyes, each with 10 follow-ups is
included.  The VF analysis methods could be found in -- Musch et al. (1999)
<doi:10.1016/S0161-6420(99)90147-1>, Nouri-Mahdavi et at. (2012)
<doi:10.1167/iovs.11-9021>, Schell et at. (2014)
<doi:10.1016/j.ophtha.2014.02.021>, Aptel et al. (2015) <doi:10.1111/aos.12788>.")
    (license license:gpl2+)))

(define-public r-vfp
  (package
    (name "r-vfp")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VFP" version))
              (sha256
               (base32
                "14idww1vy695mp9v2h0nxqi6flmm41cr30i0yd2nwjsnriwqgzak"))))
    (properties `((upstream-name . "VFP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vca r-mass r-gnm))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=VFP")
    (synopsis "Variance Function Program")
    (description
     "Variance function estimation for models proposed by W. Sadler in his variance
function program ('VFP',
<http://www.aacb.asn.au/resources/useful-tools/variance-function-program-v14>).
Here, the idea is to fit multiple variance functions to a data set and
consequently assess which function reflects the relationship Var ~ Mean best.
For in-vitro diagnostic ('IVD') assays modeling this relationship is of great
importance when individual test-results are used for defining follow-up
treatment of patients.")
    (license license:gpl2+)))

(define-public r-vfinputs
  (package
    (name "r-vfinputs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vfinputs" version))
              (sha256
               (base32
                "10fh6ybsqy9xm7gwl0kska0pgk810sgq9kvf86gmnm0pmrcqzsdh"))))
    (properties `((upstream-name . "vfinputs")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-scales r-jsonlite r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/rhenkin/vfinputs")
    (synopsis "Visual Filter Inputs for Shiny")
    (description
     "This package provides a set of visual input controls for Shiny apps to
facilitate filtering across multiple outputs.")
    (license license:gpl3)))

(define-public r-vfcp
  (package
    (name "r-vfcp")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vfcp" version))
              (sha256
               (base32
                "0zj1ihqdx5x1695al1xyi8k001yw8x7gdss72myxlnh7b4flnp9m"))))
    (properties `((upstream-name . "vfcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-extradistr r-copula))
    (home-page "https://cran.r-project.org/package=vfcp")
    (synopsis "Computation of v Values for U and Copula C(U, v)")
    (description
     "Computation the value of one of two uniformly distributed marginals if the
copula probability value is known and the value of the second marginal is also
known.  Computation and plotting corresponding cumulative distribution function
or survival function.  The numerical definition of a common area limited by
lines of the cumulative distribution function and survival function.
Approximate quantification of the probability of this area.  In addition to
amh', the copula dimension may be larger than 2.")
    (license license:gpl3+)))

(define-public r-vewaningvariant
  (package
    (name "r-vewaningvariant")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VEwaningVariant" version))
              (sha256
               (base32
                "1w0d7z86gg16vjg3bd9flr53q02wjz5hzs0460hx167ixi13m5jv"))))
    (properties `((upstream-name . "VEwaningVariant")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://cran.r-project.org/package=VEwaningVariant")
    (synopsis "Vaccine Efficacy Over Time - Variant Aware")
    (description
     "This package implements methods for inference on potential waning of vaccine
efficacy and for estimation of vaccine efficacy at a user-specified time after
vaccination based on data from a randomized, double-blind, placebo-controlled
vaccine trial in which participants may be unblinded and placebo subjects may be
crossed over to the study vaccine.  The methods also for variant stratification
and allow adjustment for possible confounding via inverse probability weighting
through specification of models for the trial entry process, unblinding
mechanisms, and the probability an unblinded placebo participant accepts study
vaccine.")
    (license license:gpl2)))

(define-public r-vewaning
  (package
    (name "r-vewaning")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VEwaning" version))
              (sha256
               (base32
                "1438j8dlfmn2yacg1haa66fmmv11x49b38qyl03jvw9vcxi1gz4x"))))
    (properties `((upstream-name . "VEwaning")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-ggplot2))
    (home-page "https://cran.r-project.org/package=VEwaning")
    (synopsis "Vaccine Efficacy Over Time")
    (description
     "This package implements methods for inference on potential waning of vaccine
efficacy and for estimation of vaccine efficacy at a user-specified time after
vaccination based on data from a randomized, double-blind, placebo-controlled
vaccine trial in which participants may be unblinded and placebo subjects may be
crossed over to the study vaccine.  The methods also allow adjustment for
possible confounding via inverse probability weighting through specification of
models for the trial entry process, unblinding mechanisms, and the probability
an unblinded placebo participant accepts study vaccine: Tsiatis, A. A. and
Davidian, M. (2021) <arXiv:2102.13103> .")
    (license license:gpl2)))

(define-public r-vetresearchlmm
  (package
    (name "r-vetresearchlmm")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VetResearchLMM" version))
              (sha256
               (base32
                "1a7wm04bsr5shak7l8ypxlhlnx3qkq1jdpjnji1n05p6b00ih9h1"))))
    (properties `((upstream-name . "VetResearchLMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-multcomp r-lmertest r-lme4 r-ggplot2))
    (home-page "https://github.com/MYaseen208/VetResearchLMM")
    (synopsis
     "Linear Mixed Models - An Introduction with Applications in Veterinary Research")
    (description
     "R Codes and Datasets for Duchateau, L. and Janssen, P. and Rowlands, G. J.
(1998).  Linear Mixed Models.  An Introduction with applications in Veterinary
Research.  International Livestock Research Institute.")
    (license license:gpl2)))

(define-public r-vetr
  (package
    (name "r-vetr")
    (version "0.2.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vetr" version))
              (sha256
               (base32
                "0858wivgdbjs4qww6szi32ifc4l0a3nx0c0zf2778d4nxs9zgxk2"))))
    (properties `((upstream-name . "vetr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brodieG/vetr")
    (synopsis "Trust, but Verify")
    (description
     "Declarative template-based framework for verifying that objects meet structural
requirements, and auto-composing error messages when they do not.")
    (license license:gpl2+)))

(define-public r-vetiver
  (package
    (name "r-vetiver")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vetiver" version))
              (sha256
               (base32
                "1lyaq63wz4rdn2hi9rk7hl9wmq7jc0px7k8zj3gwvc1lmpcidkws"))))
    (properties `((upstream-name . "vetiver")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tibble
                             r-rlang
                             r-readr
                             r-rapidoc
                             r-purrr
                             r-pins
                             r-magrittr
                             r-lifecycle
                             r-hardhat
                             r-glue
                             r-generics
                             r-fs
                             r-cli
                             r-butcher
                             r-bundle))
    (native-inputs (list r-knitr))
    (home-page "https://vetiver.rstudio.com")
    (synopsis "Version, Share, Deploy, and Monitor Models")
    (description
     "The goal of vetiver is to provide fluent tooling to version, share, deploy, and
monitor a trained model.  Functions handle both recording and checking the
model's input data prototype, and predicting from a remote API endpoint.  The
vetiver package is extensible, with generics that can support many kinds of
models.")
    (license license:expat)))

(define-public r-vesselr
  (package
    (name "r-vesselr")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vesselr" version))
              (sha256
               (base32
                "1wzprnpiv04gxhqgki36gp1a0xj9l3mchllphwkfsdja4axq3prk"))))
    (properties `((upstream-name . "vesselr")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbmcapply r-pbapply r-oro-nifti))
    (home-page "https://github.com/jdwor/vesselr")
    (synopsis "Gradient and Vesselness Tools for Arrays and NIfTI Images")
    (description
     "Simple functions for calculating the image gradient, image hessian, volume ratio
filter, and Frangi vesselness filter of 3-dimensional volumes.")
    (license license:gpl2)))

(define-public r-verylargeintegers
  (package
    (name "r-verylargeintegers")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VeryLargeIntegers" version))
              (sha256
               (base32
                "08gpsi6vrink2dd1ngwbhi8yxrasgh0xi5klc64v7ig49hky9wma"))))
    (properties `((upstream-name . "VeryLargeIntegers")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=VeryLargeIntegers")
    (synopsis "Store and Operate with Arbitrarily Large Integers")
    (description
     "Multi-precision library that allows to store and operate with arbitrarily big
integers without loss of precision.  It includes a large list of tools to work
with them, like: - Arithmetic and logic operators - Modular-arithmetic operators
- Computer Number Theory utilities - Probabilistic primality tests -
Factorization algorithms - Random generators of diferent types of integers.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-vertexsort
  (package
    (name "r-vertexsort")
    (version "0.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VertexSort" version))
              (sha256
               (base32
                "0n9m5l85ylin6756rsksak94nv0626qd7czhhj6plz4nfrr27sgl"))))
    (properties `((upstream-name . "VertexSort")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall r-igraph))
    (home-page "https://cran.r-project.org/package=VertexSort")
    (synopsis "Network Hierarchical Structure and Randomization")
    (description
     "Permits to apply the Vertex Sort algorithm (Jothi et al. (2009)
<10.1038/msb.2009.52>) to a graph in order to elucidate its hierarchical
structure.  It also allows graphic visualization of the sorted graph by
exporting the results to a cytoscape friendly format.  Moreover, it offers five
different algorithms of graph randomization: 1) Randomize a graph with
preserving node degrees, 2) with preserving similar node degrees, 3) without
preserving node degrees, 4) with preserving node in-degrees and 5) with
preserving node out-degrees.")
    (license license:gpl2+)))

(define-public r-vertexsimilarity
  (package
    (name "r-vertexsimilarity")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VertexSimilarity" version))
              (sha256
               (base32
                "0f638y272dbmz5747wxqy9pxasxk3a9f9wf31gf297qx7268ab1m"))))
    (properties `((upstream-name . "VertexSimilarity")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=VertexSimilarity")
    (synopsis "Creates Vertex Similarity Matrix for an Undirected Graph")
    (description
     "This package creates Vertex Similarity matrix of an undirected graph based on
the method stated by E. A. Leicht, Petter Holme, AND M. E. J. Newman in their
paper <DOI:10.1103/PhysRevE.73.026120>.")
    (license license:gpl2)))

(define-public r-versionsort
  (package
    (name "r-versionsort")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "versionsort" version))
              (sha256
               (base32
                "00r0h2iqlfq0nidqbhx4fv29rlppfx43jv2n2zp38lpx5vbqjhnj"))))
    (properties `((upstream-name . "versionsort")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=versionsort")
    (synopsis "Sort and Order Version Codes")
    (description
     "This package provides a lightweight package for sorting version codes in various
forms.  No strong dependencies guaranteed.")
    (license license:gpl3+)))

(define-public r-vermeulen
  (package
    (name "r-vermeulen")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vermeulen" version))
              (sha256
               (base32
                "10jlgrwpgkfiwlyli6mpd0wavi71h39sj6mklnvfskhnblvqdrz8"))))
    (properties `((upstream-name . "vermeulen")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise))
    (home-page "https://github.com/ramiromagno/vermeulen")
    (synopsis "'Biomarker' Data Set by Vermeulen et al. (2009)")
    (description
     "The biomarker data set by Vermeulen et al. (2009)
<doi:10.1016/S1470-2045(09)70154-8> is provided.  The data source, however, is
by Ruijter et al. (2013) <doi:10.1016/j.ymeth.2012.08.011>.  The original data
set may be downloaded from
<https://medischebiologie.nl/wp-content/uploads/2019/02/qpcrdatamethods.zip>.
This data set is for a real-time quantitative polymerase chain reaction ('PCR')
experiment that comprises the raw fluorescence data of 24,576 amplification
curves.  This data set comprises 59 genes of interest and 5 reference genes.
Each gene was assessed on 366 neuroblastoma complementary DNA ('cDNA') samples
and on 18 standard dilution series samples (10-fold 5-point dilution series x 3
replicates + no template controls ('NTC') x 3 replicates).")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-verification
  (package
    (name "r-verification")
    (version "1.42")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "verification" version))
              (sha256
               (base32
                "0pdqvg7cm9gam49lhc2xy42w788hh2zd06apydc95q2gj95xnaiw"))))
    (properties `((upstream-name . "verification")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-fields r-dtw r-circstats r-boot))
    (home-page "https://cran.r-project.org/package=verification")
    (synopsis "Weather Forecast Verification Utilities")
    (description
     "Utilities for verifying discrete, continuous and probabilistic forecasts, and
forecasts expressed as parametric distributions are included.")
    (license license:gpl2+)))

(define-public r-verhoeff
  (package
    (name "r-verhoeff")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "verhoeff" version))
              (sha256
               (base32
                "0kpxpl5s5342ajg22cwb7y9ks240drp37q1g67n19krdy6ih14kz"))))
    (properties `((upstream-name . "verhoeff")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=verhoeff")
    (synopsis "Implementation of the 'Verhoeff' Check Digit Algorithm")
    (description
     "An implementation of the Verhoeff algorithm for calculating check digits
(Verhoeff, J. (1969) <doi:10.1002/zamm.19710510323>).  Functions are provided to
calculate a check digit given an input number, calculate and append a check
digit to an input number, and validate that a check digit is correct given an
input number.")
    (license license:gpl3)))

(define-public r-verbalisr
  (package
    (name "r-verbalisr")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "verbalisr" version))
              (sha256
               (base32
                "12qnjspn1y5sfjmicfc6wm1vcbyzhwqldx9n56xsnqsk9589690a"))))
    (properties `((upstream-name . "verbalisr")))
    (build-system r-build-system)
    (propagated-inputs (list r-ribd r-pedtools))
    (home-page "https://github.com/magnusdv/verbalisr")
    (synopsis "Describe Pedigree Relationships in Words")
    (description
     "Describe in words the genealogical relationship between two members of a given
pedigree.  verbalisr is part of the ped suite collection of packages for
pedigree analysis.  For a demonstration of verbalisr', see the online app
QuickPed at <https://magnusdv.shinyapps.io/quickped>.")
    (license license:gpl3)))

(define-public r-verbaliser
  (package
    (name "r-verbaliser")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "verbaliseR" version))
              (sha256
               (base32
                "16ndjpsfp700h5wz3y7hram6x8lp4piykcrz7y4ybrkgwyaik851"))))
    (properties `((upstream-name . "verbaliseR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://github.com/cararthompson/verbaliseR")
    (synopsis "Make your Text Mighty Fine")
    (description
     "Turn R analysis outputs into full sentences, by writing vectors into in-sentence
lists, pluralising words conditionally, spelling out numbers if they are at the
start of sentences, writing out dates in full following US or UK style, and
managing capitalisations in tidy data.")
    (license license:expat)))

(define-public r-vennplot
  (package
    (name "r-vennplot")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vennplot" version))
              (sha256
               (base32
                "0x59awa1zsjwk5qb1jzv6d2mn2fm4aq1lq8zlbnf1da0h4837yab"))))
    (properties `((upstream-name . "vennplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rgl r-rcpp))
    (home-page "https://cran.r-project.org/package=vennplot")
    (synopsis "Venn Diagrams in 2D and 3D")
    (description "Calculate and plot Venn diagrams in 2D and 3D.")
    (license license:gpl3+)))

(define-public r-vennlasso
  (package
    (name "r-vennlasso")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vennLasso" version))
              (sha256
               (base32
                "0maydvx0qhdn5alqzqxjn485y9hw9qdr1xvgkmgwnjq59vni6d31"))))
    (properties `((upstream-name . "vennLasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-venndiagram
                             r-survival
                             r-rcppnumerical
                             r-rcppeigen
                             r-rcpp
                             r-matrix
                             r-mass
                             r-igraph
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jaredhuling/vennLasso")
    (synopsis "Variable Selection for Heterogeneous Populations")
    (description
     "This package provides variable selection and estimation routines for models with
main effects stratified on multiple binary factors.  The vennLasso package is an
implementation of the method introduced in Huling, et al. (2017)
<doi:10.1111/biom.12769>.")
    (license license:gpl2+)))

(define-public r-venneuler
  (package
    (name "r-venneuler")
    (version "1.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "venneuler" version))
              (sha256
               (base32
                "0znr5l41mpappv2agji4nxr42vydhd35jbmjwzwapgahff2arlr1"))))
    (properties `((upstream-name . "venneuler")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava))
    (home-page "https://www.rforge.net/venneuler/")
    (synopsis "Venn and Euler Diagrams")
    (description "Calculates and displays Venn and Euler Diagrams.")
    (license (license:fsdg-compatible "MPL-1.1"))))

(define-public r-venn
  (package
    (name "r-venn")
    (version "1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "venn" version))
              (sha256
               (base32
                "054ky4sh47p5fw271ag79p84vdxm5bqa6gw0dvkz2y00r73ibn9k"))))
    (properties `((upstream-name . "venn")))
    (build-system r-build-system)
    (propagated-inputs (list r-admisc))
    (home-page "https://github.com/dusadrian/venn")
    (synopsis "Draw Venn Diagrams")
    (description
     "Draws and displays Venn diagrams up to 7 sets, and any Boolean union of set
intersections.")
    (license license:gpl3+)))

(define-public r-vembedr
  (package
    (name "r-vembedr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vembedr" version))
              (sha256
               (base32
                "1hmwgrp9vj7qwmsvnvgry8h707kj53wp5chpxqsbgxi9jryabpc0"))))
    (properties `((upstream-name . "vembedr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-magrittr
                             r-lifecycle
                             r-httr
                             r-htmltools
                             r-glue
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ijlyttle/vembedr")
    (synopsis "Embed Video in HTML")
    (description
     "This package provides a set of functions for generating HTML to embed hosted
video in your R Markdown documents or Shiny applications.")
    (license license:expat)))

(define-public r-velociraptr
  (package
    (name "r-velociraptr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "velociraptr" version))
              (sha256
               (base32
                "0a67vmv05cxc9f27aqzr6nkgy2mj3fhykwj5nb23qwfqa669a5hi"))))
    (properties `((upstream-name . "velociraptr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf))
    (home-page "https://cran.r-project.org/package=velociraptr")
    (synopsis "Fossil Analysis")
    (description
     "This package provides functions for downloading, reshaping, culling, cleaning,
and analyzing fossil data from the Paleobiology Database
<https://paleobiodb.org>.")
    (license license:gpl3)))

(define-public r-vein
  (package
    (name "r-vein")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vein" version))
              (sha256
               (base32
                "0g0j9whhli4hhv4minciyj0dpnms85lzy6parlppjb2wfsxyp2aa"))))
    (properties `((upstream-name . "vein")))
    (build-system r-build-system)
    (propagated-inputs (list r-units r-sf r-dotcall64 r-data-table r-cptcity))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/atmoschem/vein")
    (synopsis "Vehicular Emissions Inventories")
    (description
     "Elaboration of vehicular emissions inventories, consisting in four stages,
pre-processing activity data, preparing emissions factors, estimating the
emissions and post-processing of emissions in maps and databases.  More details
in Ibarra-Espinosa et al (2018) <doi:10.5194/gmd-11-2209-2018>.  Before using
VEIN you need to know the vehicular composition of your study area, in other
words, the combination of of type of vehicles, size and fuel of the fleet.
Then, it is recommended to start with the project to download a template to
create a structure of directories and scripts.")
    (license license:expat)))

(define-public r-vegtable
  (package
    (name "r-vegtable")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegtable" version))
              (sha256
               (base32
                "0q854isd0bm53xxj45h64cxnvkck0hm43vrxizyxxgqwqf0syg3z"))))
    (properties `((upstream-name . "vegtable")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegdata
                             r-taxlist
                             r-stringi
                             r-sp
                             r-qdapregex
                             r-foreign))
    (home-page "https://github.com/kamapu/vegtable")
    (synopsis "Handling Vegetation Data Sets")
    (description
     "Import and handling data from vegetation-plot databases, especially data stored
in Turboveg 2 (<https://www.synbiosys.alterra.nl/turboveg/>).  Also
import/export routines for exchange of data with Juice
(<https://www.sci.muni.cz/botany/juice/>) are implemented.")
    (license license:gpl2+)))

(define-public r-vegperiod
  (package
    (name "r-vegperiod")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegperiod" version))
              (sha256
               (base32
                "0m10m85cf0qk2q2ln1qziqicv79rbjqqi9py18r412j7m43pn013"))))
    (properties `((upstream-name . "vegperiod")))
    (build-system r-build-system)
    (home-page "https://rnuske.github.io/vegperiod/")
    (synopsis "Determine Thermal Vegetation Periods")
    (description
     "Collection of common methods to determine growing season length in a simple
manner.  Start and end dates of the vegetation periods are calculated solely
based on daily mean temperatures and the day of the year.")
    (license license:gpl3+)))

(define-public r-vegdata
  (package
    (name "r-vegdata")
    (version "0.9.11.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegdata" version))
              (sha256
               (base32
                "14vmxxpnq3kasciqzxipl21kdlqv7m3dmcr4v8wlm6q2l9cnpzdy"))))
    (properties `((upstream-name . "vegdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rsqlite
                             r-rcurl
                             r-plyr
                             r-magrittr
                             r-indicspecies
                             r-httr
                             r-hoardr
                             r-foreign
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://germansl.infinitenature.org")
    (synopsis "Access Vegetation Databases and Treat Taxonomy")
    (description
     "Handling of vegetation data from different sources ( Turboveg 2.0
<https://www.synbiosys.alterra.nl/turboveg/>; the German national repository
<https://www.vegetweb.de> and others.  Taxonomic harmonization (given
appropriate taxonomic lists, e.g. the German taxonomic standard list \"GermanSL\",
<https://germansl.infinitenature.org>).")
    (license license:gpl2+)))

(define-public r-vegclust
  (package
    (name "r-vegclust")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegclust" version))
              (sha256
               (base32
                "18v1iqgabhsdxi76kvy9wgp9h2i17aw4c43kcki7lzyqiyyql0nx"))))
    (properties `((upstream-name . "vegclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan))
    (native-inputs (list r-knitr))
    (home-page "https://emf-creaf.github.io/vegclust/")
    (synopsis "Fuzzy Clustering of Vegetation Data")
    (description
     "This package provides a set of functions to: (1) perform fuzzy clustering of
vegetation data (De Caceres et al, 2010) <doi:10.1111/j.1654-1103.2010.01211.x>;
(2) to assess ecological community similarity on the basis of structure and
composition (De Caceres et al, 2013) <doi:10.1111/2041-210X.12116>.")
    (license license:gpl2+)))

(define-public r-vegawidget
  (package
    (name "r-vegawidget")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegawidget" version))
              (sha256
               (base32
                "0rnr54h11gd2x2llypdvaai6v8z3nk5fbpb7zd0dcy7hh55ncfcs"))))
    (properties `((upstream-name . "vegawidget")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-glue
                             r-digest
                             r-assertthat))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://vegawidget.github.io/vegawidget/")
    (synopsis "'Htmlwidget' for 'Vega' and 'Vega-Lite'")
    (description
     "Vega and Vega-Lite parse text in JSON notation to render chart-specifications
into HTML'.  This package is used to facilitate the rendering.  It also provides
a means to interact with signals, events, and datasets in a Vega chart using
JavaScript or Shiny'.")
    (license license:expat)))

(define-public r-vegan3d
  (package
    (name "r-vegan3d")
    (version "1.2-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegan3d" version))
              (sha256
               (base32
                "15yb521l487krvhh0bnbawxxd03sqwha4njh9i0na4zx3hrlpqgi"))))
    (properties `((upstream-name . "vegan3d")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-scatterplot3d r-rgl r-cluster))
    (home-page "https://cran.r-project.org/")
    (synopsis "Static and Dynamic 3D Plots for the 'vegan' Package")
    (description
     "Static and dynamic 3D plots to be used with ordination results and in diversity
analysis, especially with the vegan package.")
    (license license:gpl2)))

(define-public r-vegalite
  (package
    (name "r-vegalite")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vegalite" version))
              (sha256
               (base32
                "0dlzhvrg3nj6knyycdgg3d1vzq3dn9vxb34fjin9hzilszqmarbk"))))
    (properties `((upstream-name . "vegalite")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-digest
                             r-clipr
                             r-base64))
    (native-inputs (list r-knitr esbuild))
    (home-page "http://github.com/hrbrmstr/vegalite")
    (synopsis
     "Tools to Encode Visualizations with the 'Grammar of Graphics'-Like 'Vega-Lite' 'Spec'")
    (description
     "The Vega-Lite JavaScript framework provides a higher-level grammar for visual
analysis, akin to ggplot or Tableau', that generates complete Vega
specifications.  Functions exist which enable building a valid spec from scratch
or importing a previously created spec file.  Functions also exist to export
spec files and to generate code which will enable plots to be embedded in
properly configured web pages.  The default behavior is to generate an
htmlwidget'.")
    (license (license:fsdg-compatible "AGPL + file LICENSE"))))

(define-public r-vedicdatetime
  (package
    (name "r-vedicdatetime")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VedicDateTime" version))
              (sha256
               (base32
                "0xhjw29zn2nmm6xq6s5j6ff9hfqh66q3zclga1w29vpcj7l7jb80"))))
    (properties `((upstream-name . "VedicDateTime")))
    (build-system r-build-system)
    (propagated-inputs (list r-swephr))
    (native-inputs (list r-knitr))
    (home-page "https://www.neerajbokde.in/viggnette/2022-09-05-VedicDateTime")
    (synopsis "Vedic Calendar System")
    (description
     "This package provides platform for Vedic calendar system having several
functionalities to facilitate conversion between Gregorian and Vedic calendar
systems, and helpful in examining its impact in the time series analysis domain.
 The background is described in Neeraj Dhanraj Bokde et al. (2021)
<doi:10.48550/arXiv.2111.03441>, Karanam L. Ramakumar et al. (2011)
<https:archive.org/details/PanchangamCalculations>, K. S. Charak et al. (2012,
ISBN:8190100807), Satish BD et al. (2013)
<https:github.com/webresh/drik-panchanga>.")
    (license license:gpl2+)))

(define-public r-vectorwavelet
  (package
    (name "r-vectorwavelet")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vectorwavelet" version))
              (sha256
               (base32
                "1z0gl28hgrqgx0ynv248a80fh190pm15c9cg1l1665acrw62kqs7"))))
    (properties `((upstream-name . "vectorwavelet")))
    (build-system r-build-system)
    (propagated-inputs (list r-spam
                             r-rcpp
                             r-maps
                             r-iterators
                             r-foreach
                             r-fields
                             r-biwavelet))
    (home-page "https://github.com/toygur/vectorwavelet")
    (synopsis "Vector Wavelet Coherence for Multiple Time Series")
    (description
     "New wavelet methodology (vector wavelet coherence) (Oygur, T., Unal, G, 2020
<doi:10.1007/s40435-020-00706-y>) to handle dynamic co-movements of multivariate
time series via extending multiple and quadruple wavelet coherence
methodologies.  This package can be used to perform multiple wavelet coherence,
quadruple wavelet coherence, and n-dimensional vector wavelet coherence
analyses.")
    (license license:gpl2+)))

(define-public r-vecstatgraphs2d
  (package
    (name "r-vecstatgraphs2d")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VecStatGraphs2D" version))
              (sha256
               (base32
                "0jjxdwcj0n6kk5l7hw4zibpikqxhkkik5819qv75z4gqdgg0fgch"))))
    (properties `((upstream-name . "VecStatGraphs2D")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "http://gim.unex.es/VecStatGraphs2D/")
    (synopsis "Vector Analysis using Graphical and Analytical Methods in 2D")
    (description
     "This package provides a 2D statistical analysis is performed, both numerical and
graphical, of a set of vectors.  Since a vector has two components (module and
azimuth) vector analysis is performed in three stages: modules are analyzed by
means of linear statistics, azimuths are analyzed by circular statistics, and
the joint analysis of modules and azimuths is done using density maps that allow
detecting another distribution properties (i.e.  anisotropy) and outliers.
Tests and circular statistic parameters have associated a full range of
graphing: histograms, maps of distributions, point maps, vector maps, density
maps, distribution modules and azimuths.")
    (license license:gpl3)))

(define-public r-vecsets
  (package
    (name "r-vecsets")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vecsets" version))
              (sha256
               (base32
                "1pc68v0vrn1fxh7x8cb45m0xfb0228naz4i1cnizbvll6almh5hr"))))
    (properties `((upstream-name . "vecsets")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=vecsets")
    (synopsis "Like Set Tools in 'Base' Package but Keeps Duplicate Elements")
    (description
     "The base tools union() intersect(), etc., follow the algebraic definition that
each element of a set must be unique.  Since it's often helpful to compare all
elements of two vectors, this toolset treats every element as unique for
counting purposes.  For ease of use, all functions in vecsets have an argument
multiple which, when set to FALSE, reverts them to the base::sets (alias for all
the items) tools functionality.")
    (license license:lgpl3)))

(define-public r-veccompare
  (package
    (name "r-veccompare")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "veccompare" version))
              (sha256
               (base32
                "03nyyxvhhwfxxg5w6qflk7q234ipbhj9fd4abcp50sxz3diabch1"))))
    (properties `((upstream-name . "veccompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-venndiagram
                             r-reshape2
                             r-qgraph
                             r-purrr
                             r-pander
                             r-gtools
                             r-corrplot))
    (home-page "https://github.com/publicus/r-veccompare")
    (synopsis
     "Perform Set Operations on Vectors, Automatically Generating All n-Wise Comparisons, and Create Markdown Output")
    (description
     "Automates set operations (i.e., comparisons of overlap) between multiple
vectors.  It also contains a function for automating reporting in RMarkdown', by
generating markdown output for easy analysis, as well as an RMarkdown template
for use with RStudio'.")
    (license license:bsd-3)))

(define-public r-vec2dtransf
  (package
    (name "r-vec2dtransf")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vec2dtransf" version))
              (sha256
               (base32
                "1diwj005b0mzcik2v7phdbn792qy907cna3mzwr4sj21igjrhkmx"))))
    (properties `((upstream-name . "vec2dtransf")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (home-page "https://github.com/gacarrillor/vec2dtransf")
    (synopsis "2D Cartesian Coordinate Transformation")
    (description
     "Applies affine and similarity transformations on vector spatial data (sp
objects).  Transformations can be defined from control points or directly from
parameters.  If redundant control points are provided Least Squares is applied
allowing to obtain residuals and RMSE.")
    (license license:gpl2+)))

(define-public r-vdspcalibration
  (package
    (name "r-vdspcalibration")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VDSPCalibration" version))
              (sha256
               (base32
                "1hrmmhvk3mhd3bdl0msnm5shcj4cjgd3pn1rkfkv8fh4llqvz7w8"))))
    (properties `((upstream-name . "VDSPCalibration")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VDSPCalibration")
    (synopsis
     "Statistical Methods for Designing and Analyzing a Calibration Study")
    (description
     "This package provides statistical methods for the design and analysis of a
calibration study, which aims for calibrating measurements using two different
methods.  The package includes sample size calculation, sample selection,
regression analysis with error-in measurements and change-point regression.  The
method is described in Tian, Durazo-Arvizu, Myers, et al. (2014)
<DOI:10.1002/sim.6235>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-vdsm
  (package
    (name "r-vdsm")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VDSM" version))
              (sha256
               (base32
                "09h09av2yydq1vwd77lgfjjk87432sas60905sxkw0mjixf6hq22"))))
    (properties `((upstream-name . "VDSM")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-plyr
                             r-knitr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=VDSM")
    (synopsis "Visualization of Distribution of Selected Model")
    (description
     "Although model selection is ubiquitous in scientific discovery, the stability
and uncertainty of the selected model is often hard to evaluate.  How to
characterize the random behavior of the model selection procedure is the key to
understand and quantify the model selection uncertainty.  This R package offers
several graphical tools to visualize the distribution of the selected model.
For example, Gplot(), Hplot(), VDSM_scatterplot() and VDSM_heatmap().  To the
best of our knowledge, this is the first attempt to visualize such a
distribution.  About what distribution of selected model is and how it work
please see Qin,Y.and Wang,L. (2021) \"Visualization of Model Selection
Uncertainty\" <https://homepages.uc.edu/~qinyn/VDSM/VDSM.html>.")
    (license license:gpl2+)))

(define-public r-vdra
  (package
    (name "r-vdra")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vdra" version))
              (sha256
               (base32
                "1ldl3wm55a5ywc5398lzky6l6x5a9djxwrqnrd570fg4iq6d30l1"))))
    (properties `((upstream-name . "vdra")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vdra")
    (synopsis "Vertical Distributed Regression Analysis")
    (description
     "This package implements linear, logistic, and Cox regression on vertically
partitioned data across several data partners.  Data is not shared between data
partners or the analysis center and the computations can be considered secure.
Three different protocols are implemented.  2-Party: two data partners which
communicate directly without an intermediate analysis center; 2T-Party: two data
partners communicate indirectly via an analysis center, and KT-Party: two or
more data partners plus an analysis center are all allowed to communicate
directly.  2-Party and 2^T-Party use a form of secure multiplication as found in
Karr, et.  al. (2009) \"Privacy-Preserving Analysis of Vertically Partitioned
Data Using Secure Matrix Products\" and Slavkovic et.  al. (2007) \"Secure
Logistic Regression of Horizontally and Vertically Partitioned Distributed
Databases\" <doi:10.1109/ICDMW.2007.114>.  Full details can be found in Samizo
(In preparation).")
    (license license:gpl3)))

(define-public r-vdjgermlines
  (package
    (name "r-vdjgermlines")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VDJgermlines" version))
              (sha256
               (base32
                "1aqjhkcj3bd5hk7iz0f2cy5nfp23gvhqsmg6nzlxd9klwc6xpq2h"))))
    (properties `((upstream-name . "VDJgermlines")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdist r-ape))
    (home-page "https://cran.r-project.org/package=VDJgermlines")
    (synopsis "Variable, Diversity and Joining Sequences from Various Species")
    (description
     "This package contains variable, diversity, and joining sequences and
accompanying functions that enable both the extraction of and comparison between
immune V-D-J genomic segments from a variety of species.  Sources include IMGT
from MP Lefranc (2009) <doi:10.1093/nar/gkn838> and Vgenerepertoire from
publication DN Olivieri (2014) <doi:10.1007/s00251-014-0784-3>.")
    (license license:gpl2)))

(define-public r-vdiver
  (package
    (name "r-vdiver")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vDiveR" version))
              (sha256
               (base32
                "19rdvpyvmvlmqkxalfgbxrkz6y48w779r42icraa348ph1dc1n7f"))))
    (properties `((upstream-name . "vDiveR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-rentrez
                             r-readr
                             r-plyr
                             r-maps
                             r-magrittr
                             r-gridextra
                             r-ggtext
                             r-ggpubr
                             r-ggplot2
                             r-gghalves
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=vDiveR")
    (synopsis "Visualization of Viral Protein Sequence Diversity Dynamics")
    (description
     "To ease the visualization of outputs from Diversity Motif Analyser ('DiMA';
<https://github.com/PU-SDS/DiMA>).  vDiveR allows visualization of the diversity
motifs (index and its variants â major, minor and unique) for elucidation of
the underlying inherent dynamics.  Please refer
<https://vdiver-manual.readthedocs.io/en/latest/> for more information.")
    (license license:expat)))

(define-public r-vdg
  (package
    (name "r-vdg")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vdg" version))
              (sha256
               (base32
                "0fdqmvzw6dd18w653kfvnw16489jpsyl1395xffhm8rz1dqkrhj1"))))
    (properties `((upstream-name . "vdg")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-proxy r-gridextra r-ggplot2))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=vdg")
    (synopsis "Variance Dispersion Graphs and Fraction of Design Space Plots")
    (description
     "Facilities for constructing variance dispersion graphs, fraction-
of-design-space plots and similar graphics for exploring the properties of
experimental designs.  The design region is explored via random sampling, which
allows for more flexibility than traditional variance dispersion graphs.  A
formula interface is leveraged to provide access to complex model formulae.
Graphics can be constructed simultaneously for multiple experimental designs
and/or multiple model formulae.  Instead of using pointwise optimization to find
the minimum and maximum scaled prediction variance curves, which can be
inaccurate and time consuming, this package uses quantile regression as an
alternative.")
    (license license:gpl2+)))

(define-public r-vdar
  (package
    (name "r-vdar")
    (version "0.1.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vdar" version))
              (sha256
               (base32
                "061ahwf8gyjqs5j9mkqnpn7899mivn4qbygnnzihmv065xj5vpd9"))))
    (properties `((upstream-name . "vdar")))
    (build-system r-build-system)
    (propagated-inputs (list r-compositions))
    (home-page "https://cran.r-project.org/package=vdar")
    (synopsis "Discriminant Analysis Incorporating Individual Uncertainties")
    (description
     "The qda() function from package MASS is extended to calculate a weighted linear
(LDA) and quadratic discriminant analysis (QDA) by changing the group variances
and group means based on cell-wise uncertainties.  The uncertainties can be
derived e.g. through relative errors for each individual measurement (cell), not
only row-wise or column-wise uncertainties.  The method can be applied
compositional data (e.g. portions of substances, concentrations) and
non-compositional data.")
    (license license:gpl3)))

(define-public r-vdap
  (package
    (name "r-vdap")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VDAP" version))
              (sha256
               (base32
                "134x4aisaim72xkyzb1vb8vhl2m4i12yzh6cj858a1ag7b0ing3n"))))
    (properties `((upstream-name . "VDAP")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-reshape2 r-ggplot2 r-drc))
    (home-page "https://cran.r-project.org/package=VDAP")
    (synopsis "Peptide Array Analysis Tools")
    (description
     "Analyze Peptide Array Data and characterize peptide sequence space.  Allows for
high level visualization of global signal, Quality control based on replicate
correlation and/or relative Kd, calculation of peptide Length/Charge/Kd
parameters, Hits selection based on RFU Signal, and amino acid composition/basic
motif recognition with RFU signal weighting.  Basic signal trends can be used to
generate peptides that follow the observed compositional trends.")
    (license license:gpl2)))

(define-public r-vcvcomp
  (package
    (name "r-vcvcomp")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcvComp" version))
              (sha256
               (base32
                "0mip0v8gv358aadc3b4913dcz27kscx3dv15nwns20pan5jvyhv2"))))
    (properties `((upstream-name . "vcvComp")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vcvComp")
    (synopsis "Comparison of Variance - Covariance Patterns")
    (description
     "Comparison of variance - covariance patterns using relative principal component
analysis (relative eigenanalysis), as described in Le Maitre and Mitteroecker
(2019) <doi:10.1111/2041-210X.13253>.  Also provides functions to compute group
covariance matrices, distance matrices, and perform proportionality tests.  A
worked sample on the body shape of cichlid fishes is included, based on the
dataset from Kerschbaumer et al. (2013) <doi:10.5061/dryad.fc02f>.")
    (license license:gpl3)))

(define-public r-vctsfr
  (package
    (name "r-vctsfr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vctsfr" version))
              (sha256
               (base32
                "0g436m3dkyli06asjr4kdbhdx7mq0pcclmfpvblb5bsqrh5944i1"))))
    (properties `((upstream-name . "vctsfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/franciscomartinezdelrio/vctsfr")
    (synopsis "Visualizing Collections of Time Series Forecasts")
    (description
     "This package provides a way of visualizing collections of time series and,
optionally their future values, forecasts for their future values and prediction
intervals for the forecasts.  A web-based GUI can be used to display the
information in a collection of time series.")
    (license license:expat)))

(define-public r-vcr
  (package
    (name "r-vcr")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcr" version))
              (sha256
               (base32
                "12xiw53dba7dcsdfb8c2cg4v6i9jzhf42plw6hwfp9v65bmq3b83"))))
    (properties `((upstream-name . "vcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-webmockr
                             r-urltools
                             r-rprojroot
                             r-r6
                             r-httr
                             r-crul
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/ropensci/vcr/https://books.ropensci.org/http-testing/")
    (synopsis "Record 'HTTP' Calls to Disk")
    (description
     "Record test suite HTTP requests and replays them during future runs.  A port of
the Ruby gem of the same name (<https://github.com/vcr/vcr/>).  Works by hooking
into the webmockr R package for matching HTTP requests by various rules ('HTTP
method, URL', query parameters, headers, body, etc.), and then caching real HTTP
responses on disk in cassettes'.  Subsequent HTTP requests matching any previous
requests in the same cassette use a cached HTTP response.")
    (license license:expat)))

(define-public r-vcpen
  (package
    (name "r-vcpen")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcpen" version))
              (sha256
               (base32
                "0gg5ln9r7i8rh91pf7789fic4aah22jc259qyg606bax2w57qmi5"))))
    (properties `((upstream-name . "vcpen")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vcpen")
    (synopsis "Penalized Variance Components Analysis")
    (description "Method to perform penalized variance component analysis.")
    (license license:gpl3+)))

(define-public r-vcov
  (package
    (name "r-vcov")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcov" version))
              (sha256
               (base32
                "1w89mr8dk6436bxap28rszajgm9k7sjfqsr1i4p68dlhw8zk4yq1"))))
    (properties `((upstream-name . "vcov")))
    (build-system r-build-system)
    (home-page "https://github.com/MichaelChirico/vcov")
    (synopsis "Variance-Covariance Matrices and Standard Errors")
    (description
     "This package provides methods for faster extraction (about 5x faster in a few
test cases) of variance-covariance matrices and standard errors from models.
Methods in the stats package tend to rely on the summary method, which may waste
time computing other summary statistics which are summarily ignored.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-vcmeta
  (package
    (name "r-vcmeta")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcmeta" version))
              (sha256
               (base32
                "02zfrdrl5ilaa7is1j8189p4f7n8zdy2jyzzh864zm1a4dkii2rk"))))
    (properties `((upstream-name . "vcmeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-mathjaxr r-ggplot2))
    (home-page "https://github.com/dgbonett/vcmeta")
    (synopsis "Varying Coefficient Meta-Analysis")
    (description
     "This package implements functions for varying coefficient meta-analysis methods.
 These methods do not assume effect size homogeneity.  Subgroup effect size
comparisons, general linear effect size contrasts, and linear models of effect
sizes based on varying coefficient methods can be used to describe effect size
heterogeneity.  Varying coefficient meta-analysis methods do not require the
unrealistic assumptions of the traditional fixed-effect and random-effects
meta-analysis methods.  For details see: Statistical Methods for Psychologists,
Volume 5, <https://dgbonett.sites.ucsc.edu/>.")
    (license license:gpl3)))

(define-public r-vcdextra
  (package
    (name "r-vcdextra")
    (version "0.8-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vcdExtra" version))
              (sha256
               (base32
                "0xvhnjd131jmhviknchhj5fz5np1g44csyzf0hf5617chf1v2kzb"))))
    (properties `((upstream-name . "vcdExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd
                             r-tidyr
                             r-stringr
                             r-readxl
                             r-purrr
                             r-mass
                             r-here
                             r-gnm
                             r-glue
                             r-dplyr
                             r-ca))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://friendly.github.io/vcdExtra/")
    (synopsis "'vcd' Extensions and Additions")
    (description
     "This package provides additional data sets, methods and documentation to
complement the vcd package for Visualizing Categorical Data and the gnm package
for Generalized Nonlinear Models.  In particular, vcdExtra extends mosaic, assoc
and sieve plots from vcd to handle glm() and gnm() models and adds a 3D version
in mosaic3d'.  Additionally, methods are provided for comparing and visualizing
lists of glm and loglm objects.  This package is now a support package for the
book, \"Discrete Data Analysis with R\" by Michael Friendly and David Meyer.")
    (license license:gpl2+)))

(define-public r-vccp
  (package
    (name "r-vccp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vccp" version))
              (sha256
               (base32
                "1c0mk46c74kj5y9rfniywbxxmwb2z16szzpq6b2sw8q0qi1cf5ji"))))
    (properties `((upstream-name . "vccp")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula r-mvtnorm r-mosum))
    (home-page "https://cran.r-project.org/package=vccp")
    (synopsis "Vine Copula Change Point Detection in Multivariate Time Series")
    (description
     "This package implements the Vine Copula Change Point (VCCP) methodology for the
estimation of the number and location of multiple change points in the vine
copula structure of multivariate time series.  The method uses vine copulas,
various state-of-the-art segmentation methods to identify multiple change
points, and a likelihood ratio test or the stationary bootstrap for inference.
The vine copulas allow for various forms of dependence between time series
including tail, symmetric and asymmetric dependence.  The functions have been
extensively tested on simulated multivariate time series data and fMRI data.
For details on the VCCP methodology, please see Xiong & Cribben (2021).")
    (license license:expat)))

(define-public r-vca
  (package
    (name "r-vca")
    (version "1.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VCA" version))
              (sha256
               (base32
                "07r2vdmg94knz2mjvrw1jisajjsv1nsyx80y20wwc8msxkp8lijh"))))
    (properties `((upstream-name . "VCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-matrix r-lme4))
    (native-inputs (list r-rmarkdown r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=VCA")
    (synopsis "Variance Component Analysis")
    (description
     "ANOVA and REML estimation of linear mixed models is implemented, once following
Searle et al. (1991, ANOVA for unbalanced data), once making use of the lme4
package.  The primary objective of this package is to perform a variance
component analysis (VCA) according to CLSI EP05-A3 guideline \"Evaluation of
Precision of Quantitative Measurement Procedures\" (2014).  There are plotting
methods for visualization of an experimental design, plotting random effects and
residuals.  For ANOVA type estimation two methods for computing ANOVA mean
squares are implemented (SWEEP and quadratic forms).  The covariance matrix of
variance components can be derived, which is used in estimating confidence
intervals.  Linear hypotheses of fixed effects and LS means can be computed.  LS
means can be computed at specific values of covariables and with custom
weighting schemes for factor variables.  See ?VCA for a more comprehensive
description of the features.")
    (license license:gpl3+)))

(define-public r-vc2copula
  (package
    (name "r-vc2copula")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VC2copula" version))
              (sha256
               (base32
                "1kbzscdblb3n7mkkhvd75h8hyd6xbfb0lcjgysvyip4v7zc7whvc"))))
    (properties `((upstream-name . "VC2copula")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula r-copula))
    (home-page "https://github.com/tnagler/VC2copula")
    (synopsis
     "Extend the 'copula' Package with Families and Models from 'VineCopula'")
    (description
     "This package provides new classes for (rotated) BB1, BB6, BB7, BB8, and Tawn
copulas, extends the existing Gumbel and Clayton families with rotations, and
allows to set up a vine copula model using the copula API. Corresponding objects
from the VineCopula API can easily be converted.")
    (license license:gpl3)))

(define-public r-vbv
  (package
    (name "r-vbv")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VBV" version))
              (sha256
               (base32
                "1nrdcvkdv38xl67qi9igcp3l5j4hckiyg3klg7z0rfj6zzpszm71"))))
    (properties `((upstream-name . "VBV")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VBV")
    (synopsis "The Generalized Berlin Method for Time Series Decomposition")
    (description
     "Time series decomposition for univariate time series using the \"Verallgemeinerte
Berliner Verfahren\" (Generalized Berlin Method) as described in Kontinuierliche
MessgrÃ¶Ãen und Stichprobenstrategien in Raum und Zeit mit Anwendungen in den
Natur-, Umwelt-, Wirtschafts- und Finanzwissenschaften', by Hebbel and Steuer,
Springer Berlin Heidelberg, 2022 <doi:10.1007/978-3-662-65638-9>, or
Decomposition of Time Series using the Generalised Berlin Method (VBV) by Hebbel
and Steuer, in Jan Beran, Yuanhua Feng, Hartmut Hebbel (Eds.): Empirical
Economic and Financial Research - Theory, Methods and Practice, Festschrift in
Honour of Prof. Siegfried Heiler.  Series: Advanced Studies in Theoretical and
Applied Econometrics.  Springer 2014, p.  9-40.")
    (license license:gpl3+)))

(define-public r-vbsparsepca
  (package
    (name "r-vbsparsepca")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VBsparsePCA" version))
              (sha256
               (base32
                "0h1kzz7rjh4wn4nbq1v3r4f6nrmlh0lscww2vwfz886x1w2c9sys"))))
    (properties `((upstream-name . "VBsparsePCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-mass))
    (home-page "https://cran.r-project.org/package=VBsparsePCA")
    (synopsis "The Variational Bayesian Method for Sparse PCA")
    (description
     "This package contains functions for a variational Bayesian method for sparse PCA
proposed by Ning (2020) <arXiv:2102.00305>.  There are two algorithms: the
PX-CAVI algorithm (if assuming the loadings matrix is jointly row-sparse) and
the batch PX-CAVI algorithm (if without this assumption).  The outputs of the
main function, VBsparsePCA(), include the mean and covariance of the loadings
matrix, the score functions, the variable selection results, and the estimated
variance of the random noise.")
    (license license:gpl3)))

(define-public r-vblpcm
  (package
    (name "r-vblpcm")
    (version "2.4.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VBLPCM" version))
              (sha256
               (base32
                "13qwqpnhdxd5lriz5p4w1dcng7msxbm4z2lfj93w7wcwidl93jw9"))))
    (properties `((upstream-name . "VBLPCM")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-sna r-network r-mclust r-ergm))
    (home-page "https://www.r-project.org")
    (synopsis "Variational Bayes Latent Position Cluster Model for Networks")
    (description
     "Fit and simulate latent position and cluster models for network data, using a
fast Variational Bayes approximation developed in Salter-Townshend and Murphy
(2013) <doi:10.1016/j.csda.2012.08.004>.")
    (license license:gpl2+)))

(define-public r-vaultr
  (package
    (name "r-vaultr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vaultr" version))
              (sha256
               (base32
                "1ahn79ixwmnglib3cllha941pvhg1jgk89qcxq4gi7ip8zj0v7sj"))))
    (properties `((upstream-name . "vaultr")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-r6 r-jsonlite r-httr r-getpass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vimc/vaultr")
    (synopsis "Vault Client for Secrets and Sensitive Data")
    (description
     "This package provides an interface to a HashiCorp vault server over its http API
(typically these are self-hosted; see <https://www.vaultproject.io>).  This
allows for secure storage and retrieval of secrets over a network, such as
tokens, passwords and certificates.  Authentication with vault is supported
through several backends including user name/password and authentication via
GitHub'.")
    (license license:expat)))

(define-public r-vasicekreg
  (package
    (name "r-vasicekreg")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vasicekreg" version))
              (sha256
               (base32
                "0hlac3p6mm7x88wdlqc93byx1s2a287kvhwzhz01pz4anap30683"))))
    (properties `((upstream-name . "vasicekreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mvtnorm r-gamlss-dist r-gamlss))
    (home-page "https://cran.r-project.org/package=vasicekreg")
    (synopsis "Regression Modeling Using Vasicek Distribution")
    (description
     "Vasicek density, cumulative distribution, quantile functions and random deviate
generation of Vasicek distribution.  In addition, there are two functions for
fitting the Generalized Additive Models for Location Scale and Shape introduced
by Rigby and Stasinopoulos (2005, <doi:10.1111/j.1467-9876.2005.00510.x>).  Some
functions are written in C++ using Rcpp', developed by Eddelbuettel and Francois
(2011, <doi:10.18637/jss.v040.i08>).")
    (license license:expat)))

(define-public r-vasicek
  (package
    (name "r-vasicek")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vasicek" version))
              (sha256
               (base32
                "04g5dfn8zlm8n8sxmdq9xgkf0qbvvznqx27nyan268s5wlnnabd6"))))
    (properties `((upstream-name . "vasicek")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://github.com/statcompute/vasicek")
    (synopsis "Miscellaneous Functions for Vasicek Distribution")
    (description
     "Provide a collection of miscellaneous R functions related to the Vasicek
distribution with the intent to make the lives of risk modelers easier.")
    (license license:gpl2+)))

(define-public r-varycoef
  (package
    (name "r-varycoef")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varycoef" version))
              (sha256
               (base32
                "1dfych3qhqq4qadizxjgh4lswnm47m2g59gv14c8j349ji94i8qh"))))
    (properties `((upstream-name . "varycoef")))
    (build-system r-build-system)
    (propagated-inputs (list r-spam
                             r-smoof
                             r-pbapply
                             r-paramhelpers
                             r-optimparallel
                             r-mlrmbo
                             r-mlr
                             r-lhs
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jakobdambon/varycoef")
    (synopsis "Modeling Spatially Varying Coefficients")
    (description
     "This package implements a maximum likelihood estimation (MLE) method for
estimation and prediction of Gaussian process-based spatially varying
coefficient (SVC) models (Dambon et al. (2021a)
<doi:10.1016/j.spasta.2020.100470>).  Covariance tapering (Furrer et al. (2006)
<doi:10.1198/106186006X132178>) can be applied such that the method scales to
large data.  Further, it implements a joint variable selection of the fixed and
random effects (Dambon et al. (2021b) <doi:10.1080/13658816.2022.2097684>).  The
package and its capabilities are described in (Dambon et al. (2021c)
<arXiv:2106.02364>).")
    (license license:gpl2)))

(define-public r-vartestnlme
  (package
    (name "r-vartestnlme")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varTestnlme" version))
              (sha256
               (base32
                "0pl6nqlljv4nxcxcpaad62qpna1hixi7c757vf3i81xiyr75vy79"))))
    (properties `((upstream-name . "varTestnlme")))
    (build-system r-build-system)
    (propagated-inputs (list r-saemix
                             r-quadprog
                             r-nlme
                             r-mvtnorm
                             r-msm
                             r-merderiv
                             r-matrix
                             r-lmeresampler
                             r-lme4
                             r-foreach
                             r-doparallel
                             r-corpcor
                             r-anocva
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/baeyc/varTestnlme/")
    (synopsis
     "Variance Components Testing for Linear and Nonlinear Mixed Effects Models")
    (description
     "An implementation of the Likelihood ratio Test (LRT) for testing that, in a
(non)linear mixed effects model, the variances of a subset of the random effects
are equal to zero.  There is no restriction on the subset of variances that can
be tested: for example, it is possible to test that all the variances are equal
to zero.  Note that the implemented test is asymptotic.  This package should be
used on model fits from packages nlme', lmer', and saemix'.  Charlotte Baey,
Paul-Henry CournÃ¨de and Estelle Kuhn (2019) <doi:10.1016/j.csda.2019.01.014>.")
    (license license:gpl2+)))

(define-public r-varshrink
  (package
    (name "r-varshrink")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VARshrink" version))
              (sha256
               (base32
                "09hysmxxawcbyfx6bia546aqydryl2r5p3ai7bvl6ghdckw5mnpl"))))
    (properties `((upstream-name . "VARshrink")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars
                             r-strucchange
                             r-mvtnorm
                             r-mass
                             r-corpcor
                             r-ars))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/namgillee/VARshrink/")
    (synopsis "Shrinkage Estimation Methods for Vector Autoregressive Models")
    (description
     "Vector autoregressive (VAR) model is a fundamental and effective approach for
multivariate time series analysis.  Shrinkage estimation methods can be applied
to high-dimensional VAR models with dimensionality greater than the number of
observations, contrary to the standard ordinary least squares method.  This
package is an integrative package delivering nonparametric, parametric, and
semiparametric methods in a unified and consistent manner, such as the
multivariate ridge regression in Golub, Heath, and Wahba (1979)
<doi:10.2307/1268518>, a James-Stein type nonparametric shrinkage method in
Opgen-Rhein and Strimmer (2007) <doi:10.1186/1471-2105-8-S2-S3>, and Bayesian
estimation methods using noninformative and informative priors in Lee, Choi, and
S.-H. Kim (2016) <doi:10.1016/j.csda.2016.03.007> and Ni and Sun (2005)
<doi:10.1198/073500104000000622>.")
    (license license:gpl3)))

(define-public r-varsexplore
  (package
    (name "r-varsexplore")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varsExplore" version))
              (sha256
               (base32
                "0d18wqq7fbs5ljdphsdgqmv8ab0wrzzykjhf4lqksi7n78s1fa2r"))))
    (properties `((upstream-name . "varsExplore")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rstudioapi
                             r-rio
                             r-purrr
                             r-magrittr
                             r-glue
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=varsExplore")
    (synopsis "Searchable Variable Explorer with Labelled Variables")
    (description
     "This package creates a summary dataframe that can be used in RStudio similar to
the variable explorer in Stata', but which also includes the summary statistics.
 By default the result is shown in the RStudio Viewer Pane as a searchable data
table.  This is useful particularly if you have a large dataset with a very
large number of labelled variables with hard to remember names.  Can also be
used to generate a table of summary statistics.")
    (license license:expat)))

(define-public r-varsellcm
  (package
    (name "r-varsellcm")
    (version "2.1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarSelLCM" version))
              (sha256
               (base32
                "03rg7zh1cq55vfc0ak6j7crs4n7fnbsxz8nllmplklx8wm47krf5"))))
    (properties `((upstream-name . "VarSelLCM")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rcpparmadillo r-rcpp r-mgcv r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "http://varsellcm.r-forge.r-project.org/")
    (synopsis
     "Variable Selection for Model-Based Clustering of Mixed-Type Data Set with Missing Values")
    (description
     "Full model selection (detection of the relevant features and estimation of the
number of clusters) for model-based clustering (see reference here
<doi:10.1007/s11222-016-9670-1>).  Data to analyze can be continuous,
categorical, integer or mixed.  Moreover, missing values can occur and do not
necessitate any pre-processing.  Shiny application permits an easy
interpretation of the results.")
    (license license:gpl2+)))

(define-public r-varselectexposure
  (package
    (name "r-varselectexposure")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VARSELECTEXPOSURE" version))
              (sha256
               (base32
                "0hfcy00zynrg2vfqym17zfs3ggm4wvsvjf2qib4pbd53qfhzabwa"))))
    (properties `((upstream-name . "VARSELECTEXPOSURE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=VARSELECTEXPOSURE")
    (synopsis "Variable Selection Methods Including an Exposure Variable")
    (description
     "Utilizes multiple variable selection methods to estimate Average Treatment
Effect.")
    (license license:gpl2)))

(define-public r-varsel
  (package
    (name "r-varsel")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varSel" version))
              (sha256
               (base32
                "05dk2s4lzd4sxrwsfs2yqsj08qrdrfwx1fs07nb9a8sd0in6vlpj"))))
    (properties `((upstream-name . "varSel")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=varSel")
    (synopsis
     "Sequential Forward Floating Selection using Jeffries-Matusita Distance")
    (description
     "Feature selection using Sequential Forward Floating feature Selection and
Jeffries-Matusita distance.  It returns a suboptimal set of features to use for
image classification.  Reference: Dalponte, M., Oerka, H.O., Gobakken, T.,
Gianelle, D. & Naesset, E. (2013).  Tree Species Classification in Boreal
Forests With Hyperspectral Data.  IEEE Transactions on Geoscience and Remote
Sensing, 51, 2632-2645, <DOI:10.1109/TGRS.2012.2216272>.")
    (license license:gpl3)))

(define-public r-vars
  (package
    (name "r-vars")
    (version "1.5-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vars" version))
              (sha256
               (base32
                "1b3w2vi0szpps7kzy30s1n8h2iaj4jxg82ym6zrza0z7msgmypi8"))))
    (properties `((upstream-name . "vars")))
    (build-system r-build-system)
    (propagated-inputs (list r-urca r-strucchange r-sandwich r-mass r-lmtest))
    (home-page "https://www.pfaffikus.de")
    (synopsis "VAR Modelling")
    (description
     "Estimation, lag selection, diagnostic testing, forecasting, causality analysis,
forecast error variance decomposition and impulse response functions of VAR
models and estimation of SVAR and SVEC models.")
    (license license:gpl2+)))

(define-public r-varreg
  (package
    (name "r-varreg")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarReg" version))
              (sha256
               (base32
                "04235hr0r6sp7r3ccvcfb8l6p8yapcdrn6zl7mmvbyc4qb70gawh"))))
    (properties `((upstream-name . "VarReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-sn))
    (home-page "https://cran.r-project.org/package=VarReg")
    (synopsis "Semi-Parametric Variance Regression")
    (description
     "This package provides methods for fitting semi-parametric mean and variance
models, with normal or censored data.  Also extended to allow a regression in
the location, scale and shape parameters.")
    (license license:gpl3)))

(define-public r-varredopt
  (package
    (name "r-varredopt")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarRedOpt" version))
              (sha256
               (base32
                "0h44m8850q4aksrqj11yr2a2qj37w8fhv0plpvdzcl087ifyj0g9"))))
    (properties `((upstream-name . "VarRedOpt")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VarRedOpt")
    (synopsis "Framework for Variance Reduction")
    (description
     "In order to make it easy to use variance reduction algorithms for any
simulation, this framework can help you.  We propose user friendly and easy to
extend framework.  Antithetic Variates, Inner Control Variates, Outer Control
Variates and Importance Sampling algorithms are available in the framework.
User can write its own simulation function and use the Variance Reduction
techniques in this package to obtain more efficient simulations.  An
implementation of Asian Option simulation is already available within the
package.  See Kemal DinÃ§er DingeÃ§ & Wolfgang HÃ¶rmann (2012)
<doi:10.1016/j.ejor.2012.03.046>.")
    (license license:gpl2)))

(define-public r-varrank
  (package
    (name "r-varrank")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varrank" version))
              (sha256
               (base32
                "0f2k18v6ygb5cwd6jri9ws97zq47znrqacv2adkd2yqp3jhwd24f"))))
    (properties `((upstream-name . "varrank")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://www.math.uzh.ch/pages/varrank/")
    (synopsis
     "Heuristics Tools Based on Mutual Information for Variable Ranking")
    (description
     "This package provides a computational toolbox of heuristics approaches for
performing variable ranking and feature selection based on mutual information
well adapted for multivariate system epidemiology datasets.  The core function
is a general implementation of the minimum redundancy maximum relevance model.
R. Battiti (1994) <doi:10.1109/72.298224>.  Continuous variables are discretized
using a large choice of rule.  Variables ranking can be learned with a
sequential forward/backward search algorithm.  The two main problems that can be
addressed by this package is the selection of the most representative variable
within a group of variables of interest (i.e.  dimension reduction) and variable
ranking with respect to a set of features of interest.")
    (license license:gpl3)))

(define-public r-varjmcm
  (package
    (name "r-varjmcm")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varjmcm" version))
              (sha256
               (base32
                "1xgy3n57pxhv6wrsw9h4dranxbw6hdpm1f9ra3kwlzrpz5c3289x"))))
    (properties `((upstream-name . "varjmcm")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-jmcm r-expm))
    (home-page "https://cran.r-project.org/package=varjmcm")
    (synopsis
     "Estimations for the Covariance of Estimated Parameters in Joint Mean-Covariance Models")
    (description
     "The goal of the package is to equip the jmcm package (current version 0.2.1)
with estimations of the covariance of estimated parameters.  Two methods are
provided.  The first method is to use the inverse of estimated Fisher's
information matrix, see M. Pourahmadi (2000) <doi:10.1093/biomet/87.2.425>, M.
Maadooliat, M. Pourahmadi and J. Z. Huang (2013)
<doi:10.1007/s11222-011-9284-6>, and W. Zhang, C. Leng, C. Tang (2015)
<doi:10.1111/rssb.12065>.  The second method is bootstrap based, see Liu, R.Y.
(1988) <doi:10.1214/aos/1176351062> for reference.")
    (license license:gpl2+)))

(define-public r-varitas
  (package
    (name "r-varitas")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varitas" version))
              (sha256
               (base32
                "16y0fcisdf4pypwqshy9c45v57axa25k8cpp1pr2ij95zycs3g1k"))))
    (properties `((upstream-name . "varitas")))
    (build-system r-build-system)
    (inputs (list perl bwa bedtools))
    (propagated-inputs (list r-yaml
                             r-venndiagram
                             r-tidyr
                             r-stringr
                             r-openxlsx
                             r-magrittr
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=varitas")
    (synopsis "Variant Calling in Targeted Analysis Sequencing Data")
    (description
     "Multi-caller variant analysis pipeline for targeted analysis sequencing (TAS)
data.  Features a modular, automated workflow that can start with raw reads and
produces a user-friendly PDF summary and a spreadsheet containing consensus
variant information.")
    (license license:gpl2)))

(define-public r-variskscore
  (package
    (name "r-variskscore")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vaRiskScore" version))
              (sha256
               (base32
                "1nqm7c0wamr0alp610jdllnzr83bi5cjx1vllza5y458zlcpwnnk"))))
    (properties `((upstream-name . "vaRiskScore")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=vaRiskScore")
    (synopsis "VA CVD Risk Score")
    (description
     "Estimates the predicted 10-year cardiovascular (CVD) risk score (in probability)
for women military service members and veterans by inputting patient profiles.
The proposed women CVD risk score improves the accuracy of the existing American
College of Cardiology/American Heart Association CVD risk assessment tool in
predicting longâterm CVD risk for VA women, particularly in young and
racial/ethnic minority women.  See the reference: JeonâSlaughter, H., Chen,
X., Tsai, S., Ramanan, B., & Ebrahimi, R. (2021) <doi:10.1161/JAHA.120.019217>.")
    (license license:gpl3)))

(define-public r-variosig
  (package
    (name "r-variosig")
    (version "0.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "variosig" version))
              (sha256
               (base32
                "09cxigii0sj78yqd18p4mm9jjqvd1k2cgjy43pxpmqdhia0q2pmv"))))
    (properties `((upstream-name . "variosig")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-sp r-gstat))
    (home-page "https://cran.r-project.org/package=variosig")
    (synopsis "Testing Spatial Dependence Using Empirical Variogram")
    (description
     "Applying Monte Carlo permutation to generate pointwise variogram envelope and
checking for spatial dependence at different scales using permutation test.
Empirical Brown's method and Fisher's method are used to compute overall p-value
for hypothesis test.")
    (license license:gpl3+)))

(define-public r-varimp
  (package
    (name "r-varimp")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varImp" version))
              (sha256
               (base32
                "1bxlfqxi8iiv6raawl9668yhlmbak96ahd0ljzwrilnciqbclc2b"))))
    (properties `((upstream-name . "varImp")))
    (build-system r-build-system)
    (propagated-inputs (list r-party r-measures))
    (home-page "https://cran.r-project.org/package=varImp")
    (synopsis "RF Variable Importance for Arbitrary Measures")
    (description
     "Computes the random forest variable importance (VIMP) for the conditional
inference random forest (cforest) of the party package.  Includes a function
(varImp) that computes the VIMP for arbitrary measures from the measures
package.  For calculating the VIMP regarding the measures accuracy and AUC two
extra functions exist (varImpACC and varImpAUC).")
    (license license:gpl3)))

(define-public r-variantspark
  (package
    (name "r-variantspark")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "variantspark" version))
              (sha256
               (base32
                "13hkp6l64hi7xlll09gin7kdlkqrkn0lggrw8147zy9ivhknhk59"))))
    (properties `((upstream-name . "variantspark")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparklyr))
    (home-page "https://cran.r-project.org/package=variantspark")
    (synopsis "'Sparklyr' Extension for 'VariantSpark'")
    (description
     "This is a sparklyr extension integrating VariantSpark and R. VariantSpark is a
framework based on scala and spark to analyze genome datasets, see
<https://bioinformatics.csiro.au/>.  It was tested on datasets with 3000 samples
each one containing 80 million features in either unsupervised clustering
approaches and supervised applications, like classification and regression.  The
genome datasets are usually writing in VCF, a specific text file format used in
bioinformatics for storing gene sequence variations.  So, VariantSpark is a
great tool for genome research, because it is able to read VCF files, run
analyses and return the output in a spark data frame.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-variancegamma
  (package
    (name "r-variancegamma")
    (version "0.4-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarianceGamma" version))
              (sha256
               (base32
                "0n3vmyxfn0sid6zax4n8508li7gnfdd4gghpf3i296dm3w8wn8ip"))))
    (properties `((upstream-name . "VarianceGamma")))
    (build-system r-build-system)
    (propagated-inputs (list r-generalizedhyperbolic r-distributionutils))
    (home-page "https://cran.r-project.org/package=VarianceGamma")
    (synopsis "The Variance Gamma Distribution")
    (description
     "This package provides functions for the variance gamma distribution.  Density,
distribution and quantile functions.  Functions for random number generation and
fitting of the variance gamma to data.  Also, functions for computing moments of
the variance gamma distribution of any order about any location.  In addition,
there are functions for checking the validity of parameters and to interchange
different sets of parameterizations for the variance gamma distribution.")
    (license license:gpl2+)))

(define-public r-varian
  (package
    (name "r-varian")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varian" version))
              (sha256
               (base32
                "0jyw46qx2w19h02mrwv3w3n8qc1n4b3ckm38qly1y4a4w9ib6c2i"))))
    (properties `((upstream-name . "varian")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan r-mass r-gridextra r-ggplot2 r-formula))
    (home-page "https://github.com/ElkhartGroup/varian")
    (synopsis "Variability Analysis in R")
    (description
     "Uses a Bayesian model to estimate the variability in a repeated measure outcome
and use that as an outcome or a predictor in a second stage model.")
    (license license:expat)))

(define-public r-variablescreening
  (package
    (name "r-variablescreening")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VariableScreening" version))
              (sha256
               (base32
                "0djfpv46fhc3x4jvmjr93lyh4fxfzzvyrs3wjncx3h0z0s9n6w45"))))
    (properties `((upstream-name . "VariableScreening")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-gee r-expm r-energy))
    (home-page "https://cran.r-project.org/package=VariableScreening")
    (synopsis
     "High-Dimensional Screening for Semiparametric Longitudinal Regression")
    (description
     "This package implements variable screening techniques for ultra-high dimensional
regression settings.  Techniques for independent (iid) data, varying-coefficient
models, and longitudinal data are implemented.  The package currently contains
three screen functions: screenIID(), screenLD() and screenVCM(), and six methods
for simulating dataset: simulateDCSIS(), simulateLD, simulateMVSIS(),
simulateMVSISNY(), simulateSIRS() and simulateVCM().  The package is based on
the work of Li-Ping ZHU, Lexin LI, Runze LI, and Li-Xing ZHU (2011)
<DOI:10.1198/jasa.2011.tm10563>, Runze LI, Wei ZHONG, & Liping ZHU (2012)
<DOI:10.1080/01621459.2012.695654>, Jingyuan LIU, Runze LI, & Rongling WU (2014)
<DOI:10.1080/01621459.2013.850086> Hengjian CUI, Runze LI, & Wei ZHONG (2015)
<DOI:10.1080/01621459.2014.920256>, and Wanghuan CHU, Runze LI and Matthew
REIMHERR (2016) <DOI:10.1214/16-AOAS912>.")
    (license license:gpl2+)))

(define-public r-variables
  (package
    (name "r-variables")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "variables" version))
              (sha256
               (base32
                "13hji43m9nb7rpc8p4bz1qva5jhxwdk16mcprvhb5pxp78w7clyf"))))
    (properties `((upstream-name . "variables")))
    (build-system r-build-system)
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Variable Descriptions")
    (description "Abstract descriptions of (yet) unobserved variables.")
    (license license:gpl2)))

(define-public r-variability
  (package
    (name "r-variability")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "variability" version))
              (sha256
               (base32
                "1nwb6jlkgzmnhkfcfww3gci5p9g21wwg4z78n8xiq6r760byaz67"))))
    (properties `((upstream-name . "variability")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=variability")
    (synopsis "Genetic Variability Analysis for Plant Breeding Research")
    (description
     "This package performs analysis of various genetic parameters like genotypic and
phenotypic coefficient of variance, heritability, genetic advance, genetic
advance as a percentage of mean.  The package also has functions for genotypic
and phenotypic covariance, correlation and path analysis.  Dataset has been
added to facilitate example.  For more information refer Singh, R.K. and
Chaudhary, B.D. (1977, ISBN:81766330709788176633079).")
    (license license:gpl3)))

(define-public r-varfrompdb
  (package
    (name "r-varfrompdb")
    (version "2.2.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarfromPDB" version))
              (sha256
               (base32
                "09j8y6n0bwsj3n620nbni6b7f4pmb91q41770sfpc5v3l5i3jc7c"))))
    (properties `((upstream-name . "VarfromPDB")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2r
                             r-xml
                             r-stringr
                             r-stringi
                             r-rismed
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VarfromPDB")
    (synopsis
     "Disease-Gene-Variant Relations Mining from the Public Databases and Literature")
    (description
     "Captures and compiles the genes and variants related to a disease, a phenotype
or a clinical feature from the public databases including HPO (Human Phenotype
Ontology, <http://human-phenotype-ontology.github.io/about.html>), Orphanet
<http://www.orpha.net/consor/cgi-bin/index.php>, OMIM (Online Mendelian
Inheritance in Man, <http://www.omim.org>), ClinVar
<http://www.ncbi.nlm.nih.gov/clinvar>, and UniProt (Universal Protein Resource,
<http://www.uniprot.org>) and PubMed abstracts.  HPO provides a standardized
vocabulary of phenotypic abnormalities encountered in human disease.  HPO
currently contains approximately 11,000 terms and over 115,000 annotations to
hereditary diseases.  Orphanet is the reference portal for information on rare
diseases and orphan drugs, whose aim is to help improve the diagnosis, care and
treatment of patients with rare diseases.  OMIM is a continuously updated
catalog of human genes and genetic disorders and traits, with particular focus
on the molecular relationship between genetic variation and phenotypic
expression.  ClinVar is a freely accessible, public archive of reports of the
relationships among human variations and phenotypes, with supporting evidence.
UniProt focuses on amino acid altering variants imported from Ensembl Variation
databases.  For Homo sapiens, the variants including human polymorphisms and
disease mutations in the UniProt are manually curated from UniProtKB/Swiss-Prot.
 Additionally, PubMed provides the primary and latest source of the information.
 Text mining was employed to capture the information from PubMed abstracts.")
    (license license:gpl2)))

(define-public r-varest
  (package
    (name "r-varest")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varEst" version))
              (sha256
               (base32
                "0i6nsxl5w4zipzrmdvx8plmxr33n405w2qhks3s7zzs3kcys32v6"))))
    (properties `((upstream-name . "varEst")))
    (build-system r-build-system)
    (propagated-inputs (list r-sam r-lm-beta r-glmnet r-caret))
    (home-page "https://cran.r-project.org/package=varEst")
    (synopsis "Variance Estimation")
    (description
     "Error variance estimation in ultrahigh dimensional datasets with four different
methods, viz.  Refitted cross validation, k-fold refitted cross validation,
Bootstrap-refitted cross validation, Ensemble method.")
    (license license:gpl3)))

(define-public r-vares
  (package
    (name "r-vares")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VaRES" version))
              (sha256
               (base32
                "0k65ip5q4zgyklvn8mbc1ykz7kpfr5xvz041g1pq88f43g2sgv4b"))))
    (properties `((upstream-name . "VaRES")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VaRES")
    (synopsis
     "Computes Value at Risk and Expected Shortfall for over 100 Parametric Distributions")
    (description
     "Computes Value at risk and expected shortfall, two most popular measures of
financial risk, for over one hundred parametric distributions, including all
commonly known distributions.  Also computed are the corresponding probability
density function and cumulative distribution function.  See Chan, Nadarajah and
Afuecheta (2015) <doi:10.1080/03610918.2014.944658> for more details.")
    (license license:gpl2+)))

(define-public r-vared
  (package
    (name "r-vared")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VarED" version))
              (sha256
               (base32
                "16j9p2a143y4hqclsv1mig0fccrzjx2r0lll0wz8isjp9x1wzjv8"))))
    (properties `((upstream-name . "VarED")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VarED")
    (synopsis "Variance Estimation using Difference-Based Methods")
    (description
     "Generating functions for both optimal and ordinary difference sequences, and the
difference-based estimation functions.")
    (license license:gpl2)))

(define-public r-vardpoor
  (package
    (name "r-vardpoor")
    (version "0.20.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vardpoor" version))
              (sha256
               (base32
                "0jqls76xhhxc5hppy3pq5wkj9gjx3g3pzfbhnis7k10ysn76a1qj"))))
    (properties `((upstream-name . "vardpoor")))
    (build-system r-build-system)
    (propagated-inputs (list r-surveyplanning
                             r-stringr
                             r-mass
                             r-laeken
                             r-foreach
                             r-data-table))
    (home-page "https://csblatvia.github.io/vardpoor/")
    (synopsis
     "Variance Estimation for Sample Surveys by the Ultimate Cluster Method")
    (description
     "Generation of domain variables, linearization of several non-linear population
statistics (the ratio of two totals, weighted income percentile, relative median
income ratio, at-risk-of-poverty rate, at-risk-of-poverty threshold, Gini
coefficient, gender pay gap, the aggregate replacement ratio, the relative
median income ratio, median income below at-risk-of-poverty gap, income quintile
share ratio, relative median at-risk-of-poverty gap), computation of regression
residuals in case of weight calibration, variance estimation of sample surveys
by the ultimate cluster method (Hansen, Hurwitz and Madow, Sample Survey Methods
And Theory, vol.  I: Methods and Applications; vol.  II: Theory.  1953, New
York: John Wiley and Sons), variance estimation for longitudinal,
cross-sectional measures and measures of change for single and multistage stage
cluster sampling designs (Berger, Y. G., 2015, <doi:10.1111/rssa.12116>).
Several other precision measures are derived - standard error, the coefficient
of variation, the margin of error, confidence interval, design effect.")
    (license (list (license:fsdg-compatible "EUPL")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-vardiag
  (package
    (name "r-vardiag")
    (version "0.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vardiag" version))
              (sha256
               (base32
                "07i0wv84sw035bpjil3cfw69fdgbcf2j8wq4k22narkrz83iyi2z"))))
    (properties `((upstream-name . "vardiag")))
    (build-system r-build-system)
    (home-page "https://github.com/edzer/vardiag/")
    (synopsis "Variogram Diagnostics")
    (description "Interactive variogram diagnostics.")
    (license license:gpl2+)))

(define-public r-vardetect
  (package
    (name "r-vardetect")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VARDetect" version))
              (sha256
               (base32
                "1yrlyg4b53bdmfjcqi07l0gr3f01h8jwj6g6av3plyk96cvl4svb"))))
    (properties `((upstream-name . "VARDetect")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsevar
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-mvtnorm
                             r-mts
                             r-lattice
                             r-igraph))
    (home-page "https://cran.r-project.org/package=VARDetect")
    (synopsis "Multiple Change Point Detection in Structural VAR Models")
    (description
     "Implementations of Thresholded Block Segmentation Scheme (TBSS) and Low-rank
plus Sparse Two Step Procedure (LSTSP) algorithms for detecting multiple changes
in structural VAR models.  The package aims to address the problem of change
point detection in piece-wise stationary VAR models, under different settings
regarding the structure of their transition matrices (autoregressive dynamics);
specifically, the following cases are included: (i) (weakly) sparse, (ii)
structured sparse, and (iii) low rank plus sparse.  It includes multiple
algorithms and related extensions from Safikhani and Shojaie (2020)
<doi:10.1080/01621459.2020.1770097> and Bai, Safikhani and Michailidis (2020)
<doi:10.1109/TSP.2020.2993145>.")
    (license license:gpl2)))

(define-public r-varclust
  (package
    (name "r-varclust")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varclust" version))
              (sha256
               (base32
                "0knmfq3pn38j8p29j6sqapdv3g5335si3gwiw932ml5z49a8ga5m"))))
    (properties `((upstream-name . "varclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-pesel r-foreach r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=varclust")
    (synopsis "Variables Clustering")
    (description
     "This package performs clustering of quantitative variables, assuming that
clusters lie in low-dimensional subspaces.  Segmentation of variables, number of
clusters and their dimensions are selected based on BIC. Candidate models are
identified based on many runs of K-means algorithm with different random
initializations of cluster centers.")
    (license license:gpl3)))

(define-public r-varbvs
  (package
    (name "r-varbvs")
    (version "2.6-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varbvs" version))
              (sha256
               (base32
                "1bn7i1dz6gbmvv6k178l233gnixay32r5n6k2z20lqi2i096a5qa"))))
    (properties `((upstream-name . "varbvs")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-nor1mix r-matrix r-latticeextra
                             r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pcarbo/varbvs")
    (synopsis
     "Large-Scale Bayesian Variable Selection Using Variational Methods")
    (description
     "Fast algorithms for fitting Bayesian variable selection models and computing
Bayes factors, in which the outcome (or response variable) is modeled using a
linear regression or a logistic regression.  The algorithms are based on the
variational approximations described in \"Scalable variational inference for
Bayesian variable selection in regression, and its accuracy in genetic
association studies\" (P. Carbonetto & M. Stephens, 2012,
<DOI:10.1214/12-BA703>).  This software has been applied to large data sets with
over a million variables and thousands of samples.")
    (license license:gpl3+)))

(define-public r-varbin
  (package
    (name "r-varbin")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varbin" version))
              (sha256
               (base32
                "0gcynwc0vx7qlp3z0pcc4i7mjlnxkwy8ydxz2wr244fw32qgp4kq"))))
    (properties `((upstream-name . "varbin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart))
    (home-page "https://cran.r-project.org/package=varbin")
    (synopsis "Optimal Binning of Continuous and Categorical Variables")
    (description
     "Tool for easy and efficient discretization of continuous and categorical data.
The package calculates the most optimal binning of a given explanatory variable
with respect to a user-specified target variable.  The purpose is to assign a
unique Weight-of-Evidence value to each of the calculated binpoints in order to
recode the original variable.  The package allows users to impose certain
restrictions on the functional form on the resulting binning while maximizing
the overall information value in the original data.  The package is well suited
for logistic scoring models where input variables may be subject to restrictions
such as linearity by e.g. regulatory authorities.  An excellent source
describing in detail the development of scorecards, and the role of
Weight-of-Evidence coding in credit scoring is (Siddiqi 2006, ISBN:
978â0-471â75451â0).  The package utilizes the discrete nature of decision
trees and Isotonic Regression to accommodate the trade-off between flexible
functional forms and maximum information value.")
    (license license:gpl2+)))

(define-public r-varband
  (package
    (name "r-varband")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "varband" version))
              (sha256
               (base32
                "16z66rx7xq5zan8pnw100c9r5syw1ml4hgzi9mch52aia23v21p9"))))
    (properties `((upstream-name . "varband")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/hugogogo/varband")
    (synopsis "Variable Banding of Large Precision Matrices")
    (description
     "Implementation of the variable banding procedure for modeling local dependence
and estimating precision matrices that is introduced in Yu & Bien (2016) and is
available at <https://arxiv.org/abs/1604.07451>.")
    (license license:gpl3)))

(define-public r-var-etp
  (package
    (name "r-var-etp")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VAR.etp" version))
              (sha256
               (base32
                "0pm2m1wwsyrfwvqibf4mn6wbnslynvb1964i79iqhy5qp4nflajp"))))
    (properties `((upstream-name . "VAR.etp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=VAR.etp")
    (synopsis "VAR Modelling: Estimation, Testing, and Prediction")
    (description
     "This package provides a collection of the functions for estimation, hypothesis
testing, prediction for stationary vector autoregressive models.")
    (license license:gpl2)))

(define-public r-vapour
  (package
    (name "r-vapour")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vapour" version))
              (sha256
               (base32
                "0m4mqx3chd7w98ky6man0ynvh7i310bw0bk5gg1cs4gm2myzs20p"))))
    (properties `((upstream-name . "vapour")))
    (build-system r-build-system)
    (inputs (list zlib proj gdal curl))
    (propagated-inputs (list r-rcpp r-nanoarrow r-jsonlite))
    (native-inputs (list r-knitr pkg-config))
    (home-page "https://github.com/hypertidy/vapour")
    (synopsis "Access to the 'Geospatial Data Abstraction Library' ('GDAL')")
    (description
     "This package provides low-level access to GDAL functionality.  GDAL is the
Geospatial Data Abstraction Library a translator for raster and vector
geospatial data formats that presents a single raster abstract data model and
single vector abstract data model to the calling application for all supported
formats <https://gdal.org/>.  This package is focussed on providing exactly and
only what GDAL does, to enable developing further tools.")
    (license license:gpl3)))

(define-public r-vanquish
  (package
    (name "r-vanquish")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vanquish" version))
              (sha256
               (base32
                "01di1j36npl7vnyhgsagvyf6j8bxcw867dwf9dgi7l1328s7lf0l"))))
    (properties `((upstream-name . "vanquish")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-ggplot2 r-e1071 r-changepoint))
    (home-page "https://cran.r-project.org/package=vanquish")
    (synopsis "Variant Quality Investigation Helper")
    (description
     "Imports Variant Calling Format file into R. It can detect whether a sample
contains contaminant from the same species.  In the first stage of the approach,
a change-point detection method is used to identify copy number variations for
filtering.  Next, features are extracted from the data for a support vector
machine model.  For log-likelihood calculation, the deviation parameter is
estimated by maximum likelihood method.  Using a radial basis function kernel
support vector machine, the contamination of a sample can be detected.")
    (license license:gpl2)))

(define-public r-vannstats
  (package
    (name "r-vannstats")
    (version "1.3.4.14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vannstats" version))
              (sha256
               (base32
                "0fzs2w2rqmdl4a595xi34l7b0sw68yik3yv4mxzqfznwsxiaj8m4"))))
    (properties `((upstream-name . "vannstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rstatix
                             r-rlang
                             r-purrr
                             r-plm
                             r-gplots
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-gdata
                             r-formula-tools
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=vannstats")
    (synopsis "Simplified Statistics for PA 606")
    (description
     "Simplifies functions assess normality for bivariate and multivariate statistical
techniques.  Includes functions designed to replicate plots and tables that
would result from similar calls in SPSS', including hst(), box(), qq(), tab(),
cormat(), and residplot().  Also includes simplified formulae, such as mode(),
scatter(), p.corr(), ow.anova(), and rm.anova().")
    (license license:gpl3)))

(define-public r-vangogh
  (package
    (name "r-vangogh")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vangogh" version))
              (sha256
               (base32
                "1ny4dgwkk54pgwgg3lwcv8vcdnizlajdck68ihpzh2s1yz4n38bm"))))
    (properties `((upstream-name . "vangogh")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cherylisabella/vangogh")
    (synopsis "Vincent Van Gogh Color Palette Generator")
    (description "Palettes generated from Vincent van Gogh's paintings.")
    (license license:expat)))

(define-public r-vandalico
  (package
    (name "r-vandalico")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vandalico" version))
              (sha256
               (base32
                "0ipx9yq5wgpwphy1wzpa8jh605k3b5nkhplj4k0bym107010s3qd"))))
    (properties `((upstream-name . "vandalico")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr))
    (home-page "https://cran.r-project.org/package=vandalico")
    (synopsis "Evaluation of Presence-Absence Models")
    (description
     "Collection of functions to evaluate presence-absence models.  The main function
corrects discrimination for the representativeness effect following:
JimÃ©nez-Valverde (2022) \"The uniform AUC: dealing with the representativeness
effect in presence-absence models.  Methods Ecol.  Evol, accepted on 28 January
2022.")
    (license license:gpl3)))

(define-public r-vancouvr
  (package
    (name "r-vancouvr")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VancouvR" version))
              (sha256
               (base32
                "12njm15ah307rsncnmckpx05d4cncqj0paa40xdgp7mfz821s36c"))))
    (properties `((upstream-name . "VancouvR")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-tibble
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-httr
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mountainMath/VancouvR")
    (synopsis "Access the 'City of Vancouver' Open Data API")
    (description
     "Wrapper around the City of Vancouver Open Data API
<https://opendata.vancouver.ca/api/v2/console> to simplify and standardize
access to City of Vancouver open data.  Functionality to list the data catalogue
and access data and geographic records.")
    (license license:expat)))

(define-public r-vampyr
  (package
    (name "r-vampyr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vampyr" version))
              (sha256
               (base32
                "137sdv4shmjg1cpndjknrys2jkvyq3p9l11nrdh0bzp9xxc1wkh1"))))
    (properties `((upstream-name . "vampyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-semplot
                             r-psych
                             r-pcovr
                             r-moments
                             r-lavaan
                             r-gparotation
                             r-fungible
                             r-efa-mrfa
                             r-corpcor))
    (home-page "https://cran.r-project.org/package=vampyr")
    (synopsis "Factor Analysis Controlling the Effects of Response Bias")
    (description
     "Vampirize the response biases from a dataset! Performs factor analysis
controlling the effects of social desirability and acquiescence using the method
described in Ferrando, Lorenzo-Seva & Chico (2009)
<doi:10.1080/10705510902751374>.")
    (license license:gpl3)))

(define-public r-vamc
  (package
    (name "r-vamc")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vamc" version))
              (sha256
               (base32
                "04kkli4xzf3gzvs215lzch8bl877cdq3awh3mz1k321zhsa1d0jn"))))
    (properties `((upstream-name . "vamc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vamc")
    (synopsis "Monte Carlo Valuation Framework for Variable Annuities")
    (description
     "Implementation of a Monte Carlo simulation engine for valuing synthetic
portfolios of variable annuities, which reflect realistic features of common
annuity contracts in practice.  It aims to facilitate the development and
dissemination of research related to the efficient valuation of a portfolio of
large variable annuities.  The main valuation methodology was proposed by Gan
(2017) <doi:10.1515/demo-2017-0021>.")
    (license license:gpl2)))

(define-public r-vam
  (package
    (name "r-vam")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VAM" version))
              (sha256
               (base32
                "04lq8i4zwdc9a4n4hvabdyv4a4cmmqbf534cdnnck7jc0dk5rphr"))))
    (properties `((upstream-name . "VAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=VAM")
    (synopsis "Variance-Adjusted Mahalanobis")
    (description
     "This package contains logic for cell-specific gene set scoring of single cell
RNA sequencing data.")
    (license license:gpl2+)))

(define-public r-valuemap
  (package
    (name "r-valuemap")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valuemap" version))
              (sha256
               (base32
                "1mmk60njwbylgp3nn5lkbkvyw6xkq4gg9k18smjlr47ys6bn6k4p"))))
    (properties `((upstream-name . "valuemap")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-leaflet
                             r-htmltools
                             r-h3jsr
                             r-dplyr
                             r-devtools))
    (home-page "https://github.com/Curycu/valuemap")
    (synopsis "Making Choropleth Map")
    (description
     "You can easily visualize your sf polygons or data.frame with h3 address.  While
leaflet package is too raw for data analysis, this package can save data
analysts efforts & time with pre-set visualize options.")
    (license license:gpl3+)))

(define-public r-valueeq5d
  (package
    (name "r-valueeq5d")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valueEQ5D" version))
              (sha256
               (base32
                "1w1l07s1rfxc1ba6kdq0l1vmb2qib6gmdm91706cmy1azfa92n4d"))))
    (properties `((upstream-name . "valueEQ5D")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=valueEQ5D")
    (synopsis "Scoring EQ-5d Descriptive System")
    (description
     "EQ-5D is a standard instrument (<https://euroqol.org/eq-5d-instruments/>) that
measures the quality of life often used in clinical and economic evaluations of
health care technologies.  Both adult versions of EQ-5D (EQ-5D-3L and EQ-5D-5L)
contain a descriptive system and visual analog scale.  The descriptive system
measures the patient's health in 5 dimensions: the 5L versions has 5 levels and
3L version has 3 levels.  The descriptive system scores are usually converted to
index values using country specific values sets (that incorporates the country
preferences).  This package allows the calculation of both descriptive system
scores to the index value scores.  The value sets for EQ-5D-3L are from the
references mentioned in the website
<https://euroqol.org/eq-5d-instruments/eq-5d-3l-about/valuation/> The value sets
for EQ-5D-3L for a total of 31 countries are used for the valuation (see the
user guide for a complete list of references).  The value sets for EQ-5D-5L are
obtained from references mentioned in the
<https://euroqol.org/eq-5d-instruments/eq-5d-5l-about/valuation-standard-value-sets/>
and other sources.  The value sets for EQ-5D-5L for a total of 17 countries are
used for the valuation (see the user guide for a complete list of references).
The package can also be used to map 5L scores to 3L index values for 10
countries: Denmark, France, Germany, Japan, Netherlands, Spain, Thailand, UK,
USA, and Zimbabwe.  The value set and method for mapping are obtained from Van
Hout et al (2012) <doi: 10.1016/j.jval.2012.02.008>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-valse
  (package
    (name "r-valse")
    (version "0.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valse" version))
              (sha256
               (base32
                "0l3fdsgrmalifcxscjsxsfq07v8vipg0rdw6xh94q7xw5gdfsms0"))))
    (properties `((upstream-name . "valse")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-mass r-ggplot2 r-cowplot))
    (home-page "https://git.auder.net/?p=valse.git")
    (synopsis "Variable Selection with Mixture of Models")
    (description
     "Two methods are implemented to cluster data with finite mixture regression
models.  Those procedures deal with high-dimensional covariates and responses
through a variable selection procedure based on the Lasso estimator.  A low-rank
constraint could be added, computed for the Lasso-Rank procedure.  A collection
of models is constructed, varying the level of sparsity and the number of
clusters, and a model is selected using a model selection criterion (slope
heuristic, BIC or AIC).  Details of the procedure are provided in \"Model-based
clustering for high-dimensional data.  Application to functional data\" by Emilie
Devijver (2016) <arXiv:1409.1333v2>, published in Advances in Data Analysis and
Clustering.")
    (license license:expat)))

(define-public r-valottery
  (package
    (name "r-valottery")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valottery" version))
              (sha256
               (base32
                "0rlv8agm9ng4jcb9ixqifh7kjczvkx7047brq8yf9kg7rb8mzgpz"))))
    (properties `((upstream-name . "valottery")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=valottery")
    (synopsis "Results from the Virginia Lottery Draw Games")
    (description
     "Historical results for the state of Virginia lottery draw games.  Data were
downloaded from https://www.valottery.com/.")
    (license license:cc0)))

(define-public r-valorate
  (package
    (name "r-valorate")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valorate" version))
              (sha256
               (base32
                "06vczszpkipsxfs7h6ld33vvxb5ci62rwg3cglwy3lcfifhbnsfi"))))
    (properties `((upstream-name . "valorate")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "http://bioinformatica.mty.itesm.mx/valorate")
    (synopsis "Velocity and Accuracy of the LOg-RAnk TEst")
    (description
     "The algorithm implemented in this package was designed to quickly estimates the
distribution of the log-rank especially for heavy unbalanced groups.  VALORATE
estimates the null distribution and the p-value of the log-rank test based on a
recent formulation.  For a given number of alterations that define the size of
survival groups, the estimation involves a weighted sum of distributions that
are conditional on a co-occurrence term where mutations and events are both
present.  The estimation of conditional distributions is quite fast allowing the
analysis of large datasets in few minutes
<http://bioinformatica.mty.itesm.mx/valorate>.")
    (license license:gpl2+)))

(define-public r-valmetrics
  (package
    (name "r-valmetrics")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valmetrics" version))
              (sha256
               (base32
                "1fdaljdfvfmqarxdyjs9pcd8ji2z9i379vcxf65jvnhiaqlsms57"))))
    (properties `((upstream-name . "valmetrics")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=valmetrics")
    (synopsis "Metrics and Plots for Model Evaluation")
    (description
     "This package provides functions for metrics and plots for model evaluation.
Based on vectors of observed and predicted values.  Method: Kristin Piikki,
Johanna Wetterlind, Mats Soderstrom and Bo Stenberg (2021).
<doi:10.1111/SUM.12694>.")
    (license license:expat)))

(define-public r-validiclust
  (package
    (name "r-validiclust")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VALIDICLUST" version))
              (sha256
               (base32
                "1glcvzrbc7glxmbmas3zzb114a5cfl7gsf7xlxaifrrgvcahrvnx"))))
    (properties `((upstream-name . "VALIDICLUST")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr r-diptest))
    (home-page "https://cran.r-project.org/package=VALIDICLUST")
    (synopsis "VALID Inference for Clusters Separation Testing")
    (description
     "Given a partition resulting from any clustering algorithm, the implemented tests
allow valid post-clustering inference by testing if a given variable
significantly separates two of the estimated clusters.  Methods are detailed in:
Hivert B, Agniel D, Thiebaut R & Hejblum BP (2022). \"Post-clustering difference
testing: valid inference and practical considerations\", <arXiv:2210.13172>.")
    (license license:expat)))

(define-public r-validatetools
  (package
    (name "r-validatetools")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "validatetools" version))
              (sha256
               (base32
                "10wardp2c70zx5ii940sjql3xh5p3vqxv4ayyifhhlr8vzvr5cj0"))))
    (properties `((upstream-name . "validatetools")))
    (build-system r-build-system)
    (propagated-inputs (list r-validate r-lpsolveapi))
    (home-page "https://github.com/data-cleaning/validatetools")
    (synopsis "Checking and Simplifying Validation Rule Sets")
    (description
     "Rule sets with validation rules may contain redundancies or contradictions.
Functions for finding redundancies and problematic rules are provided, given a
set a rules formulated with validate'.")
    (license license:expat)))

(define-public r-validaters
  (package
    (name "r-validaters")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "validateRS" version))
              (sha256
               (base32
                "1ivw9ddr6z2wrsqvhbn87p5pikhkxlz8p45pb5nq13dvs359vkww"))))
    (properties `((upstream-name . "validateRS")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm r-triangle r-reshape2 r-data-table))
    (home-page "https://cran.r-project.org/package=validateRS")
    (synopsis "One-Sided Multivariate Testing Procedures for Rating Systems")
    (description
     "An implementation of statistical tests for the validation of rating systems as
described in the ECB Working paper Advances in multivariate back-testing for
credit risk underestimation'', by F. Coppens, M. Mayer, L. Millischer, F. Resch,
S. Sauer, K. Schulze (ECB WP series, forthcoming).")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-validate
  (package
    (name "r-validate")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "validate" version))
              (sha256
               (base32
                "020l46qd4fyqr7hksgvsvzlh2ibppwgpfasv8a0schl4vjf29a7j"))))
    (properties `((upstream-name . "validate")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-settings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/data-cleaning/validate")
    (synopsis "Data Validation Infrastructure")
    (description
     "Declare data validation rules and data quality indicators; confront data with
them and analyze or visualize the results.  The package supports rules that are
per-field, in-record, cross-record or cross-dataset.  Rules can be automatically
analyzed for rule type and connectivity.  Supports checks implied by an SDMX DSD
file as well.  See also Van der Loo and De Jonge (2018)
<doi:10.1002/9781118897126>, Chapter 6 and the JSS paper (2021)
<doi:10.18637/jss.v097.i10>.")
    (license license:gpl3)))

(define-public r-validata
  (package
    (name "r-validata")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "validata" version))
              (sha256
               (base32
                "01ghnkkhqgjllpwdvphcqymps7jq3wd919rplk092iiwwq1mpb9m"))))
    (properties `((upstream-name . "validata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlist
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-listviewer
                             r-janitor
                             r-gtools
                             r-framecleaner
                             r-dplyr
                             r-data-table
                             r-bbmisc
                             r-badger))
    (native-inputs (list r-knitr))
    (home-page "https://harrison4192.github.io/validata/")
    (synopsis "Validate Data Frames")
    (description
     "This package provides functions for validating the structure and properties of
data frames.  Answers essential questions about a data set after initial import
or modification.  What are the unique or missing values? What columns form a
primary key? What are the properties of the numeric or categorical columns? What
kind of overlap or mapping exists between 2 columns?")
    (license license:expat)))

(define-public r-validann
  (package
    (name "r-validann")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "validann" version))
              (sha256
               (base32
                "00c0hkjiv8n7mksx6sknb4xkkivxr1ml31k697csv4imwrk09dy5"))))
    (properties `((upstream-name . "validann")))
    (build-system r-build-system)
    (propagated-inputs (list r-moments))
    (home-page "http://github.com/gbhumphrey1/validann")
    (synopsis "Validation Tools for Artificial Neural Networks")
    (description
     "This package provides methods and tools for analysing and validating the outputs
and modelled functions of artificial neural networks (ANNs) in terms of
predictive, replicative and structural validity.  Also provides a method for
fitting feed-forward ANNs with a single hidden layer.")
    (license license:gpl2+)))

(define-public r-valhallr
  (package
    (name "r-valhallr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valhallr" version))
              (sha256
               (base32
                "1lgdcvbk5g8xq9b18aqfq434cvdcshl3b6s28sx4r3jb8fxkia26"))))
    (properties `((upstream-name . "valhallr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-leaflet
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-ggspatial
                             r-ggplot2
                             r-geojsonio
                             r-dplyr
                             r-cairo))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chris31415926535/valhallr")
    (synopsis "Tidy Interface to the 'Valhalla' Routing Engine")
    (description
     "An interface to the Valhalla routing engineâs application programming
interfaces (APIs) for turn-by-turn routing, isochrones, and origin-destination
analyses.  Also includes several user-friendly functions for plotting outputs,
and strives to follow \"tidy\" design principles.  Please note that this package
requires access to a running instance of Valhalla', which is open source and can
be downloaded from <https://github.com/valhalla/valhalla>.")
    (license license:gpl3+)))

(define-public r-valet
  (package
    (name "r-valet")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valet" version))
              (sha256
               (base32
                "0xgp3rzwyshjw8s9ncpals8naja7fc2yk81abl08gh43zp294scm"))))
    (properties `((upstream-name . "valet")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "runkelcorey.github.io/valet")
    (synopsis "Provide R Client to the Bank of Canada's Valet API")
    (description
     "The Bank of Canada updated their Valet API
<https://www.bankofcanada.ca/valet/docs>, and no R client currently exists.
This provides access to all of Valet's endpoints and serves responses in wide
format easy for researchers to handle but also provides tools to access API
responses as a list.")
    (license license:expat)))

(define-public r-valerie
  (package
    (name "r-valerie")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VALERIE" version))
              (sha256
               (base32
                "15z8234jhh7hv3gijrvy8hap6gdgvm6qll9b00qbji7vyc3dg4pg"))))
    (properties `((upstream-name . "VALERIE")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rsamtools
                             r-plyr
                             r-pheatmap
                             r-iranges
                             r-ggpubr
                             r-ggplotify
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VALERIE")
    (synopsis "Visualising Splicing at Single-Cell Resolution")
    (description
     "Alternative splicing produces a variety of different protein products from a
given gene.  VALERIE enables visualisation of alternative splicing events from
high-throughput single-cell RNA-sequencing experiments.  VALERIE computes
percent spliced-in (PSI) values for user-specified genomic coordinates
corresponding to alternative splicing events.  PSI is the proportion of
sequencing reads supporting the included exon/intron as defined by Shiozawa
(2018) <doi:10.1038/s41467-018-06063-x>.  PSI are inferred from sequencing reads
data based on specialised infrastructures for representing and computing
annotated genomic ranges by Lawrence (2013) <doi:10.1371/journal.pcbi.1003118>.
Computed PSI for each single cell are subsequently presented in the form of a
heatmap implemented using the pheatmap package by Kolde (2010)
<https://CRAN.R-project.org/package=pheatmap>.  Board overview of the mean PSI
difference and associated p-values across different user-defined groups of
single cells are presented in the form of a line graph using the ggplot2 package
by Wickham (2007) <https://CRAN.R-project.org/package=ggplot2>.")
    (license license:gpl3)))

(define-public r-valection
  (package
    (name "r-valection")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valection" version))
              (sha256
               (base32
                "0104zcg3cw57ksgmb321hnyv095mn3frxci9vikj1smwarpnrpzc"))))
    (properties `((upstream-name . "valection")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-testthat))
    (home-page "http://labs.oicr.on.ca/boutros-lab/software/valection")
    (synopsis "Sampler for Verification Studies")
    (description
     "This package provides a binding for the valection program which offers various
ways to sample the outputs of competing algorithms or parameterizations, and
fairly assess their performance against each other.  The valection C library is
required to use this package and can be downloaded from:
<http://labs.oicr.on.ca/boutros-lab/software/valection>.  Cooper CI, et al;
Valection: Design Optimization for Validation and Verification Studies; Biorxiv
2018; <doi:10.1101/254839>.")
    (license license:gpl3)))

(define-public r-valaddin
  (package
    (name "r-valaddin")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "valaddin" version))
              (sha256
               (base32
                "15j1zkmxf11706hrjhn6vh2h9zmlcdihrxqyxflp3kah9an0hldm"))))
    (properties `((upstream-name . "valaddin")))
    (build-system r-build-system)
    (propagated-inputs (list r-lazyeval))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/egnha/valaddin")
    (synopsis "Functional Input Validation")
    (description
     "This package provides a set of basic tools to transform functions into functions
with input validation checks, in a manner suitable for both programmatic and
interactive use.")
    (license license:expat)))

(define-public r-vajointsurv
  (package
    (name "r-vajointsurv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "VAJointSurv" version))
              (sha256
               (base32
                "19ib4b1kf1zg4l571f2asxkwbab44pzs954agj0wx1p6kb2v608q"))))
    (properties `((upstream-name . "VAJointSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-survival
                             r-simsurvnmarker
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-psqn
                             r-matrix
                             r-lme4))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/boennecd/VAJointSurv")
    (synopsis "Variational Approximation for Joint Survival and Marker Models")
    (description
     "Estimates joint marker (longitudinal) and and survival (time-to-event) outcomes
using variational approximations.  The package supports multivariate markers
allowing for correlated error terms and multiple types of survival outcomes
which may be left-truncated, right-censored, and recurrent.  Time-varying fixed
and random covariate effects are supported along with non-proportional hazards.")
    (license license:expat)))

(define-public r-vagam
  (package
    (name "r-vagam")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vagam" version))
              (sha256
               (base32
                "1bgpf0z23yqyaz7dfmqilyqvr5v4w891027xrlr0mk9grj4srmiq"))))
    (properties `((upstream-name . "vagam")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm r-mvtnorm r-mgcv r-matrix r-gamm4))
    (home-page "https://cran.r-project.org/package=vagam")
    (synopsis "Variational Approximations for Generalized Additive Models")
    (description
     "Fits generalized additive models (GAMs) using a variational approximations (VA)
framework.  In brief, the VA framework provides a fully or at least closed to
fully tractable lower bound approximation to the marginal likelihood of a GAM
when it is parameterized as a mixed model (using penalized splines, say).  In
doing so, the VA framework aims offers both the stability and natural inference
tools available in the mixed model approach to GAMs, while achieving computation
times comparable to that of using the penalized likelihood approach to GAMs. See
Hui et al. (2018) <doi:10.1080/01621459.2018.1518235>.")
    (license license:gpl3)))

(define-public r-vagalumer
  (package
    (name "r-vagalumer")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vagalumeR" version))
              (sha256
               (base32
                "0zakpg5p9kif61d35as08f2dac3wncyvhpc83rqjp96g99wjf701"))))
    (properties `((upstream-name . "vagalumeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/r-music/vagalumeR")
    (synopsis "Access to the 'Vagalume' API")
    (description
     "This package provides access to the Vagalume API <https://api.vagalume.com.br>.
The data extracted is basically lyrics of songs and information about
artists/bands.")
    (license license:gpl2)))

(define-public r-vaersvax
  (package
    (name "r-vaersvax")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vaersvax" version))
              (sha256
               (base32
                "0bfbpdjnykvb9r0p28bz8lrqxksy4jvwnd28y6gdlprpisiipiic"))))
    (properties `((upstream-name . "vaersvax")))
    (build-system r-build-system)
    (home-page "https://gitlab.com/iembry/vaers")
    (synopsis
     "US Vaccine Adverse Event Reporting System (VAERS) Vaccine Data for Present")
    (description
     "US VAERS vaccine data for 01/01/2018 - 06/14/2018.  If you want to explore the
full VAERS data for 1990 - Present (data, symptoms, and vaccines), then check
out the vaers package from the URL below.  The URL and BugReports below
correspond to the vaers package, of which vaersvax is a small subset (2018
only).  vaers is not hosted on CRAN due to the large size of the data set.  To
install the Suggested vaers and vaersND packages, use the following R code:
devtools::install_git(\"<https://gitlab.com/iembry/vaers.git>\", build_vignettes =
TRUE) and devtools::install_git(\"<https://gitlab.com/iembry/vaersND.git>\",
build_vignettes = TRUE)'. \"The Vaccine Adverse Event Reporting System (VAERS) is
a national early warning system to detect possible safety problems in
U.S.-licensed vaccines.  VAERS is co-managed by the Centers for Disease Control
and Prevention (CDC) and the U.S. Food and Drug Administration (FDA).\" For more
information about the data, visit <https://vaers.hhs.gov/>.  For information
about vaccination/immunization hazards, visit
<http://www.questionuniverse.com/rethink.html#vaccine>.")
    (license license:cc0)))

(define-public r-vaersndvax
  (package
    (name "r-vaersndvax")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vaersNDvax" version))
              (sha256
               (base32
                "0hvw7vbxs87c9xkdv3617fkjwz2dbawscbd7dgaixhdhcr3k823a"))))
    (properties `((upstream-name . "vaersNDvax")))
    (build-system r-build-system)
    (home-page "https://gitlab.com/iembry/vaersND")
    (synopsis
     "Non-Domestic Vaccine Adverse Event Reporting System (VAERS) Vaccine Data for Present")
    (description
     "Non-Domestic VAERS vaccine data for 01/01/2016 - 06/14/2016.  If you want to
explore the full VAERS data for 1990 - Present (data, symptoms, and vaccines),
then check out the vaersND package from the URL below.  The URL and BugReports
below correspond to the vaersND package, of which vaersNDvax is a small subset
(2016 only).  vaersND is not hosted on CRAN due to the large size of the data
set.  To install the Suggested vaers and vaersND packages, use the following R
code: devtools::install_git(\"https://gitlab.com/iembry/vaers.git\",
build_vignettes = TRUE) and
devtools::install_git(\"https://gitlab.com/iembry/vaersND.git\", build_vignettes =
TRUE)'. \"VAERS is a national vaccine safety surveillance program co-sponsored by
the US Centers for Disease Control and Prevention (CDC) and the US Food and Drug
Administration (FDA).  VAERS is a post-marketing safety surveillance program,
collecting information about adverse events (possible side effects) that occur
after the administration of vaccines licensed for use in the United States.\" For
more information about the data, visit <https://vaers.hhs.gov/index>.  For
information about vaccination/immunization hazards, visit
<http://www.questionuniverse.com/rethink.html/#vaccine>.")
    (license license:cc0)))

(define-public r-vader
  (package
    (name "r-vader")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vader" version))
              (sha256
               (base32
                "1xjak5xlgpk0ds4l825kq90dg6kk5i5al5zmjqjqn8b7xdgix8mf"))))
    (properties `((upstream-name . "vader")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm))
    (home-page "https://cran.r-project.org/package=vader")
    (synopsis "Valence Aware Dictionary and sEntiment Reasoner (VADER)")
    (description
     "This package provides a lexicon and rule-based sentiment analysis tool that is
specifically attuned to sentiments expressed in social media, and works well on
texts from other domains.  Hutto & Gilbert (2014)
<https://www.aaai.org/ocs/index.php/ICWSM/ICWSM14/paper/view/8109/8122>.")
    (license license:expat)))

(define-public r-vacuum
  (package
    (name "r-vacuum")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "vacuum" version))
              (sha256
               (base32
                "0cmlvlz83gyga05g71hrnq4kpck9flq0qlhjviqqz9zrmljzin0x"))))
    (properties `((upstream-name . "vacuum")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Sielinski/vacuum")
    (synopsis "Tukey's Vacuum Cleaner")
    (description
     "An implementation of three procedures developed by John Tukey: FUNOP (FUll
NOrmal Plot), FUNOR-FUNOM (FUll NOrmal Rejection-FUll NOrmal Modification), and
vacuum cleaner.  Combined, they provide a way to identify, treat, and analyze
outliers in two-way (i.e., contingency) tables, as described in his landmark
paper \"The Future of Data Analysis\", Tukey, John W. (1962)
<https://www.jstor.org/stable/2237638>.")
    (license license:expat)))

