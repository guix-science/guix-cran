(define-module (guix-cran packages i)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages web)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages java)
  #:use-module (gnu packages pdf)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages image)
  #:use-module (gnu packages compression)
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
  #:use-module (guix-cran packages n)
  #:use-module (guix-cran packages m)
  #:use-module (guix-cran packages l)
  #:use-module (guix-cran packages k)
  #:use-module (guix-cran packages j)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-izmir
  (package
    (name "r-izmir")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "izmir" version))
              (sha256
               (base32
                "1kkzia7470gsi3yhb1rak493vz965v5v5aj3cq4ginhjd7y0glfz"))))
    (properties `((upstream-name . "izmir")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rvest
                             r-readr
                             r-openxlsx
                             r-magrittr
                             r-jsonlite
                             r-dplyr))
    (home-page "https://github.com/ozancanozdemir/izmir")
    (synopsis "R Wrapper for Izmir Municipality Open Data Portal")
    (description
     "Call the data wrappers for Izmir Metropolitan Municipality's Open Data Portal.
This will return all datasets formatted as Excel files (.csv or .xlsx), as well
as datasets that require an API key.")
    (license license:expat)))

(define-public r-izid
  (package
    (name "r-izid")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iZID" version))
              (sha256
               (base32
                "1jaqdh6i5xyfw4y2wd9qivzjklf4j2xxnya8ssn7rv5bz6misgcz"))))
    (properties `((upstream-name . "iZID")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-foreach r-extradistr r-doparallel))
    (home-page "https://cran.r-project.org/package=iZID")
    (synopsis "Identify Zero-Inflated Distributions")
    (description
     "Computes bootstrapped Monte Carlo estimate of p value of Kolmogorov-Smirnov (KS)
test and likelihood ratio test for zero-inflated count data, based on the work
of Aldirawi et al. (2019) <doi:10.1109/BHI.2019.8834661>.  With the package,
user can also find tools to simulate random deviates from zero inflated or
hurdle models and obtain maximum likelihood estimate of unknown parameters in
these models.")
    (license license:expat)))

(define-public r-ixpopdymod
  (package
    (name "r-ixpopdymod")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IxPopDyMod" version))
              (sha256
               (base32
                "0qnxf9a0d9lmvna5rzmddp5gsq9scpk9aw0kamhbmrxbxaxm4q9l"))))
    (properties `((upstream-name . "IxPopDyMod")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-igraph
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/dallenmidd/IxPopDyMod")
    (synopsis "Framework for Tick Population and Infection Modeling")
    (description
     "Code to specify, run, and then visualize and analyze the results of Ixodidae
(hard-bodied ticks) population and infection dynamics models.  Such models exist
in the literature, but the source code to run them is not always available.
IxPopDyMod provides an easy way for these models to be written and shared.")
    (license license:expat)))

(define-public r-ixplorer
  (package
    (name "r-ixplorer")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ixplorer" version))
              (sha256
               (base32
                "0h0kmcaj783kmnlxnzw0gvf7gg4f6lcyn6l4hz8rz216d98qzxwp"))))
    (properties `((upstream-name . "ixplorer")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-shinywidgets
                             r-shiny-i18n
                             r-shiny
                             r-rcolorbrewer
                             r-purrr
                             r-miniui
                             r-lubridate
                             r-keyring
                             r-kableextra
                             r-gitear
                             r-gert
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ixpantia/ixplorer")
    (synopsis "Easy DataOps for R Users")
    (description
     "Create and view tickets in gitea', a self-hosted git service <https://gitea.io>,
using an RStudio addin, and use helper functions to publish documentation and
use git.")
    (license license:agpl3+)))

(define-public r-iwisa
  (package
    (name "r-iwisa")
    (version "1.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iWISA" version))
              (sha256
               (base32
                "0jqi1kh7jlc04nb9d1w711q4i8j1vgwbxjls09z7853kv22wxfyz"))))
    (properties `((upstream-name . "iWISA")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim r-ggplot2 r-fda))
    (home-page "https://cran.r-project.org/package=iWISA")
    (synopsis "Wavelet-Based Index of Storm Activity")
    (description
     "This package provides a powerful system for estimating an improved wavelet-based
index of magnetic storm activity, storm activity preindex (from individual
station) and SQ variations.  It also serves as a flexible visualization tool.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-iweigreg
  (package
    (name "r-iweigreg")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iWeigReg" version))
              (sha256
               (base32
                "077ymd271biyjhq2sbbbnla73anv8z8f953jh06m9abnx7rai9i6"))))
    (properties `((upstream-name . "iWeigReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust r-mass))
    (home-page "http://www.stat.rutgers.edu/~ztan")
    (synopsis
     "Improved Methods for Causal Inference and Missing Data Problems")
    (description
     "Improved methods based on inverse probability weighting and outcome regression
for causal inference and missing data problems.")
    (license license:gpl2+)))

(define-public r-ivyplot
  (package
    (name "r-ivyplot")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IVYplot" version))
              (sha256
               (base32
                "1v739xlim3mcw09cyp4z3cbb25ipkpwm9h378fwy2ycp8lmq32gy"))))
    (properties `((upstream-name . "IVYplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr))
    (home-page "https://cran.r-project.org/package=IVYplot")
    (synopsis
     "Produces an IVY Plot (Similar to Dot Plot) with/without Frequencies")
    (description
     "For a single variable, the IVY Plot stacks tied values in the form of leaflets.
Five leaflets join to form a leaf.  Leaves are stacked vertically.  At most
twenty leaves are shown; For high frequency, each leaflet may represent more
than one observation with multiplicity declared in the subtitle.")
    (license license:gpl3)))

(define-public r-ivx
  (package
    (name "r-ivx")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivx" version))
              (sha256
               (base32
                "1dg09aajk9rqmrlwq4xw7qd5ra1z8wjxipy5l85sl1nzii250drq"))))
    (properties `((upstream-name . "ivx")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/kvasilopoulos/ivx")
    (synopsis "Robust Econometric Inference")
    (description
     "Drawing statistical inference on the coefficients of a short- or long-horizon
predictive regression with persistent regressors by using the IVX method of
Magdalinos and Phillips (2009) <doi:10.1017/S0266466608090154> and Kostakis,
Magdalinos and Stamatogiannis (2015) <doi:10.1093/rfs/hhu139>.")
    (license license:gpl3)))

(define-public r-ivtools
  (package
    (name "r-ivtools")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivtools" version))
              (sha256
               (base32
                "1wv0r9dy893hafbbrjcjrphb8dgql71ya4zfbkl5dfp7d4ncfxl0"))))
    (properties `((upstream-name . "ivtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpp
                             r-numderiv
                             r-nleqslv
                             r-data-table
                             r-ahaz))
    (home-page "https://cran.r-project.org/package=ivtools")
    (synopsis "Instrumental Variables")
    (description
     "This package contains tools for instrumental variables estimation.  Currently,
non-parametric bounds, two-stage estimation and G-estimation are implemented.
Balke, A. and Pearl, J. (1997) <doi:10.2307/2965583>, Vansteelandt S., Bowden
J., Babanezhad M., Goetghebeur E. (2011) <doi:10.1214/11-STS360>.")
    (license license:lgpl3+)))

(define-public r-ivsacim
  (package
    (name "r-ivsacim")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivsacim" version))
              (sha256
               (base32
                "0pldg086kaaqc2wab1m61anabqaf0mffv1hsb8plz1qn2f8gdcp3"))))
    (properties `((upstream-name . "ivsacim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=ivsacim")
    (synopsis "Structural Additive Cumulative Intensity Models with IV")
    (description
     "An instrumental variable estimator under structural cumulative additive
intensity model is fitted, that leverages initial randomization as the IV. The
estimator can be used to fit an additive hazards model under time to event data
which handles treatment switching (treatment crossover) correctly.  We also
provide a consistent variance estimate.")
    (license license:gpl2+)))

(define-public r-ivs
  (package
    (name "r-ivs")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivs" version))
              (sha256
               (base32
                "06gjlmqqwlp86l708lk36vnxj83r082mbcccvp3x6g0apiy8ak98"))))
    (properties `((upstream-name . "ivs")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-rlang r-lifecycle r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavisVaughan/ivs")
    (synopsis "Interval Vectors")
    (description
     "This package provides a library for generic interval manipulations using a new
interval vector class.  Capabilities include: locating various kinds of
relationships between two interval vectors, merging overlaps within a single
interval vector, splitting an interval vector on its overlapping endpoints, and
applying set theoretical operations on interval vectors.  Many of the operations
in this package were inspired by James Allen's interval algebra, Allen (1983)
<doi:10.1145/182.358434>.")
    (license license:expat)))

(define-public r-ivregex
  (package
    (name "r-ivregex")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivregEX" version))
              (sha256
               (base32
                "0zh3rqvhn8ald6lxv9kywy2v1p0nr9ijv6plhpbxc6k51zzsgyl8"))))
    (properties `((upstream-name . "ivregEX")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich r-lmtest r-formula r-aer))
    (home-page "https://cran.r-project.org/package=ivregEX")
    (synopsis
     "Create Independent Evidence in IV Analyses and Do Sensitivity Analysis in Regression and IV Analysis")
    (description
     "Allows you to create an evidence factor (EX analysis) in an instrumental
variables regression model.  Additionally, performs Sensitivity analysis for OLS
analysis, 2SLS analysis and EX analysis with interpretable plotting and printing
features.")
    (license license:gpl2+)))

(define-public r-ivreg
  (package
    (name "r-ivreg")
    (version "0.6-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivreg" version))
              (sha256
               (base32
                "15iqj8rzmb1hybvnw8h6v321sj4pv7bg67nfk8g9bpzyds3zm9xl"))))
    (properties `((upstream-name . "ivreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lmtest r-formula r-car))
    (native-inputs (list r-knitr))
    (home-page "https://zeileis.github.io/ivreg/")
    (synopsis
     "Instrumental-Variables Regression by '2SLS', '2SM', or '2SMM', with Diagnostics")
    (description
     "Instrumental variable estimation for linear models by two-stage least-squares
(2SLS) regression or by robust-regression via M-estimation (2SM) or
MM-estimation (2SMM).  The main ivreg() model-fitting function is designed to
provide a workflow as similar as possible to standard lm() regression.  A wide
range of methods is provided for fitted ivreg model objects, including extensive
functionality for computing and graphing regression diagnostics in addition to
other standard model tools.")
    (license license:gpl2+)))

(define-public r-ivprobit
  (package
    (name "r-ivprobit")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivprobit" version))
              (sha256
               (base32
                "05b5gf5gmi2yrkg61n7w12qlgpnjakd1z8hhqxy6py8hahsf84gm"))))
    (properties `((upstream-name . "ivprobit")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula))
    (home-page "https://cran.r-project.org/package=ivprobit")
    (synopsis "Instrumental Variables Probit Model")
    (description
     "Compute the instrumental variables probit model using the Amemiya's Generalized
Least Squares estimators (Amemiya, Takeshi, (1978) <doi: 10.2307/1911443>).")
    (license license:gpl3)))

(define-public r-ivmte
  (package
    (name "r-ivmte")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivmte" version))
              (sha256
               (base32
                "1bwvkw04pn4mf7iyfvaiabgx0qd83si13sr9jpqim9zqqhf1c1dc"))))
    (properties `((upstream-name . "ivmte")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ivmte")
    (synopsis
     "Instrumental Variables: Extrapolation by Marginal Treatment Effects")
    (description
     "The marginal treatment effect was introduced by Heckman and Vytlacil (2005)
<doi:10.1111/j.1468-0262.2005.00594.x> to provide a choice-theoretic
interpretation to instrumental variables models that maintain the monotonicity
condition of Imbens and Angrist (1994) <doi:10.2307/2951620>.  This
interpretation can be used to extrapolate from the compliers to estimate
treatment effects for other subpopulations.  This package provides a flexible
set of methods for conducting this extrapolation.  It allows for parametric or
nonparametric sieve estimation, and allows the user to maintain shape
restrictions such as monotonicity.  The package operates in the general
framework developed by Mogstad, Santos and Torgovitsky (2018)
<doi:10.3982/ECTA15463>, and accommodates either point identification or partial
identification (bounds).  In the partially identified case, bounds are computed
using either linear programming or quadratically constrained quadratic
programming.  Support for four solvers is provided.  Gurobi and the Gurobi R API
can be obtained from <http://www.gurobi.com/index>.  CPLEX can be obtained from
<https://www.ibm.com/analytics/cplex-optimizer>.  CPLEX R APIs Rcplex and
cplexAPI are available from CRAN. MOSEK and the MOSEK R API can be obtained from
<https://www.mosek.com/>.  The lp_solve library is freely available from
<http://lpsolve.sourceforge.net/5.5/>, and is included when installing its API
lpSolveAPI', which is available from CRAN.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ivmodel
  (package
    (name "r-ivmodel")
    (version "1.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivmodel" version))
              (sha256
               (base32
                "1glm4nwlzyzwbv3nbi23qslnnqf47ps7iyd3wbr1bfdln0sr2s0l"))))
    (properties `((upstream-name . "ivmodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-matrix r-ggplot2 r-formula))
    (home-page "https://cran.r-project.org/package=ivmodel")
    (synopsis
     "Statistical Inference and Sensitivity Analysis for Instrumental Variables Model")
    (description
     "Carries out instrumental variable estimation of causal effects, including power
analysis, sensitivity analysis, and diagnostics.  See Kang, Jiang, Zhao, and
Small (2020) <http://pages.cs.wisc.edu/~hyunseung/> for details.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ivitr
  (package
    (name "r-ivitr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivitr" version))
              (sha256
               (base32
                "0fc5svmkxv0s20ipwbvkvmmh1w5gb1g6va496fa9qbf99wifnmrx"))))
    (properties `((upstream-name . "ivitr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-randomforest r-nnet r-dplyr))
    (home-page "https://cran.r-project.org/package=ivitr")
    (synopsis "Estimate IV-Optimal Individualized Treatment Rules")
    (description
     "This package provides a method that estimates an IV-optimal individualized
treatment rule.  An individualized treatment rule is said to be IV-optimal if it
minimizes the maximum risk with respect to the putative IV and the set of IV
identification assumptions.  Please refer to <arXiv:2002.02579> for more details
on the methodology and some theory underpinning the method.  Function IV-PILE()
uses functions in the package locClass'.  Package locClass can be accessed and
installed from the R-Forge repository via the following link:
<https://r-forge.r-project.org/projects/locclass/>.  Alternatively, one can
install the package by entering the following in R: install.packages(\"locClass\",
repos=\"<http://R-Forge.R-project.org>\")'.")
    (license license:gpl3)))

(define-public r-ivgets
  (package
    (name "r-ivgets")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivgets" version))
              (sha256
               (base32
                "19bqfasrvdqvs2fvxh7h2l16qkm3rmcsv6m83x726i1i6adqj2bq"))))
    (properties `((upstream-name . "ivgets")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-ivreg r-gets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jkurle/ivgets")
    (synopsis
     "General to Specific Modeling and Indicator Saturation in 2SLS Models")
    (description
     "This package provides facilities of general to specific model selection for
exogenous regressors in 2SLS models.  Furthermore, indicator saturation methods
can be used to detect outliers and structural breaks in the sample.")
    (license license:gpl3+)))

(define-public r-ivdoctr
  (package
    (name "r-ivdoctr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivdoctr" version))
              (sha256
               (base32
                "0204blq5yxpwz00vf49k678ccnyih0lbglbxhm1c69hx5p4a62qn"))))
    (properties `((upstream-name . "ivdoctr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-rgl
                             r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-data-table
                             r-coda
                             r-aer))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ivdoctr")
    (synopsis "Ensures Mutually Consistent Beliefs When Using IVs")
    (description
     "Uses data and researcher's beliefs on measurement error and instrumental
variable (IV) endogeneity to generate the space of consistent beliefs across
measurement error, instrument endogeneity, and instrumental relevance for IV
regressions.  Package based on DiTraglia and Garcia-Jimeno (2020)
<doi:10.1080/07350015.2020.1753528>.")
    (license license:cc0)))

(define-public r-ivdiag
  (package
    (name "r-ivdiag")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivDiag" version))
              (sha256
               (base32
                "1kr6svbi4r3dfgx448q523c3ymfiwpg5k729n2bh19say4z6wk88"))))
    (properties `((upstream-name . "ivDiag")))
    (build-system r-build-system)
    (propagated-inputs (list r-wcorr
                             r-testthat
                             r-patchwork
                             r-lfe
                             r-haven
                             r-glue
                             r-ggplot2
                             r-ggfortify
                             r-future
                             r-foreach
                             r-fixest
                             r-doparallel))
    (home-page "https://yiqingxu.org/packages/ivDiag/")
    (synopsis
     "Estimation and Diagnostic Tools for Instrumental Variables Designs")
    (description
     "Estimation and diagnostic tools for instrumental variables designs, which
implements the guidelines proposed in Lal et al. (2023) <arXiv:2303.11399>,
including bootstrapped standard errors, effective F-statistics, Anderson-Rubin
test, valid-t ratio test, and local-to-zero tests.")
    (license license:expat)))

(define-public r-ivdesign
  (package
    (name "r-ivdesign")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivdesign" version))
              (sha256
               (base32
                "02v2cnljz3gk7mb8q3p1i54rj6l02r4pirznnrshy092zvrvr26m"))))
    (properties `((upstream-name . "ivdesign")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ivdesign")
    (synopsis "Hypothesis Testing in Cluster-Randomized Encouragement Designs")
    (description
     "An implementation of randomization-based hypothesis testing for three different
estimands in a cluster-randomized encouragement experiment.  The three estimands
include (1) testing a cluster-level constant proportional treatment effect
(Fisher's sharp null hypothesis), (2) pooled effect ratio, and (3) average
cluster effect ratio.  To test the third estimand, user needs to install Gurobi
(>= 9.0.1) optimizer via its R API. Please refer to
<https://www.gurobi.com/documentation/9.0/refman/ins_the_r_package.html>.")
    (license license:gpl3)))

(define-public r-ivdesc
  (package
    (name "r-ivdesc")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivdesc" version))
              (sha256
               (base32
                "0b28xghncvq182kl19m8k1frnr2cqj7nvnhcd831kfd84bk2sz13"))))
    (properties `((upstream-name . "ivdesc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsample r-purrr r-knitr))
    (home-page "https://github.com/sumtxt/ivdesc/")
    (synopsis
     "Profiling Compliers and Non-Compliers for Instrumental Variable Analysis")
    (description
     "Estimating the mean and variance of a covariate for the complier, never-taker
and always-taker subpopulation in the context of instrumental variable
estimation.  This package implements the method described in Marbach and
Hangartner (2020) <doi:10.1017/pan.2019.48> and Hangartner, Marbach, Henckel,
Maathuis, Kelz and Keele (2021) <arXiv:2103.06328>.")
    (license license:gpl3)))

(define-public r-ivabss
  (package
    (name "r-ivabss")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ivaBSS" version))
              (sha256
               (base32
                "1pcls9lgj6i7qad5y28bvj2nra8kpnjslcdkjvl1q1aq8ig1yb98"))))
    (properties `((upstream-name . "ivaBSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-bssprep))
    (home-page "https://cran.r-project.org/package=ivaBSS")
    (synopsis "Tools for Independent Vector Analysis")
    (description
     "Independent vector analysis (IVA) is a blind source separation (BSS) model where
several datasets are jointly unmixed.  This package provides several methods for
the unmixing together with some performance measures.  For details, see Anderson
et al. (2011) <doi:10.1109/TSP.2011.2181836> and Lee et al. (2007)
<doi:10.1016/j.sigpro.2007.01.010>.")
    (license license:gpl3+)))

(define-public r-itsmr
  (package
    (name "r-itsmr")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itsmr" version))
              (sha256
               (base32
                "1dr8n95rjbsfvw82v2r8rsahxa26f75icp9fn3hfr0d6g0xpkb69"))))
    (properties `((upstream-name . "itsmr")))
    (build-system r-build-system)
    (home-page "https://georgeweigt.github.io/itsmr-refman.pdf")
    (synopsis "Time Series Analysis Using the Innovations Algorithm")
    (description
     "This package provides functions for modeling and forecasting time series data.
Forecasting is based on the innovations algorithm.  A description of the
innovations algorithm can be found in the textbook \"Introduction to Time Series
and Forecasting\" by Peter J. Brockwell and Richard A. Davis.
<https://link.springer.com/book/10.1007/b97391>.")
    (license (license:fsdg-compatible "FreeBSD"))))

(define-public r-itsdm
  (package
    (name "r-itsdm")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itsdm" version))
              (sha256
               (base32
                "0n5x4zjqs6a3r8mpd2n6g16alfq42m9j70lm67lwwhiycpwvy1w5"))))
    (properties `((upstream-name . "itsdm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-stringr
                             r-stars
                             r-sf
                             r-rocit
                             r-rlang
                             r-raster
                             r-patchwork
                             r-outliertree
                             r-ncdf4
                             r-mgcv
                             r-isotree
                             r-ggplot2
                             r-fastshap
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LLeiSong/itsdm")
    (synopsis
     "Isolation Forest-Based Presence-Only Species Distribution Modeling")
    (description
     "Collection of R functions to do purely presence-only species distribution
modeling with isolation forest (iForest) and its variations such as Extended
isolation forest and SCiForest.  See the details of these methods in references:
Liu, F.T., Ting, K.M. and Zhou, Z.H. (2008) <doi:10.1109/ICDM.2008.17>, Hariri,
S., Kind, M.C. and Brunner, R.J. (2019) <doi:10.1109/TKDE.2019.2947676>, Liu,
F.T., Ting, K.M. and Zhou, Z.H. (2010) <doi:10.1007/978-3-642-15883-4_18>, Guha,
S., Mishra, N., Roy, G. and Schrijvers, O. (2016)
<https://proceedings.mlr.press/v48/guha16.html>, Cortes, D. (2021)
<arXiv:2110.13402>.  Additionally, Shapley values are used to explain model
inputs and outputs.  See details in references: Shapley, L.S. (1953)
<doi:10.1515/9781400881970-018>, Lundberg, S.M. and Lee, S.I. (2017)
<https://dl.acm.org/doi/abs/10.5555/3295222.3295230>, Molnar, C. (2020)
<ISBN:978-0-244-76852-2>, Å trumbelj, E. and Kononenko, I. (2014)
<doi:10.1007/s10115-013-0679-x>.  itsdm also provides functions to diagnose
variable response, analyze variable importance, draw spatial dependence of
variables and examine variable contribution.  As utilities, the package includes
a few functions to download bioclimatic variables including WorldClim version
2.0 (see Fick, S.E. and Hijmans, R.J. (2017) <doi:10.1002/joc.5086>) and
CMCC-BioClimInd (see Noce, S., Caporaso, L. and Santini, M. (2020)
<doi:10.1038/s41597-020-00726-5>.")
    (license license:expat)))

(define-public r-itscalledsoccer
  (package
    (name "r-itscalledsoccer")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itscalledsoccer" version))
              (sha256
               (base32
                "089zsqk5s1ny62jjgc77y64k0w47p81gd2606f3ys0qm1yl7bsfm"))))
    (properties `((upstream-name . "itscalledsoccer")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringi
                             r-rlang
                             r-r6
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-httpcache
                             r-glue
                             r-dplyr
                             r-data-table
                             r-crayon
                             r-clisymbols))
    (home-page "https://github.com/American-Soccer-Analysis/itscalledsoccer-r")
    (synopsis "American Soccer Analysis API Client")
    (description
     "This package provides a wrapper around the same API
<https://app.americansocceranalysis.com/api/v1/__docs__/> that powers the
American Soccer Analysis app.")
    (license license:expat)))

(define-public r-its-analysis
  (package
    (name "r-its-analysis")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "its.analysis" version))
              (sha256
               (base32
                "1ig7yq59y5xl1z182bbvgx8vsqs9sb1xscf6zxqn1qmy9f0ggf7v"))))
    (properties `((upstream-name . "its.analysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ggplot2 r-forecast r-car r-boot))
    (home-page "https://cran.r-project.org/package=its.analysis")
    (synopsis "Running Interrupted Time Series Analysis")
    (description
     "Two functions for running and then post-estimating an Interrupted Time Series
Analysis model.  This is a solution for running time series analyses on
temporally short data.  See English (2019) The its.analysis R package -
Modelling short time series data
<https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3398189> for an overview of
the method.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-itrselect
  (package
    (name "r-itrselect")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ITRSelect" version))
              (sha256
               (base32
                "0llr4hrlbnb728j5rw7vd3r9qlqf571hrldnm72kicis5di2v5di"))))
    (properties `((upstream-name . "ITRSelect")))
    (build-system r-build-system)
    (propagated-inputs (list r-svmisc r-rglpk r-ncvreg r-matrix r-formula))
    (home-page "https://cran.r-project.org/package=ITRSelect")
    (synopsis
     "Variable Selection for Optimal Individualized Dynamic Treatment Regime")
    (description
     "Sequential advantage selection (SAS, Fan, Lu and Song, 2016) <arXiv:1405.5239>
and penalized A-learning (PAL, Shi, et al., 2018) methods are implement for
selecting important variables involved in optimal individualized (dynamic)
treatment regime in both single-stage or multi-stage studies.")
    (license license:gpl2)))

(define-public r-itrlearn
  (package
    (name "r-itrlearn")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ITRLearn" version))
              (sha256
               (base32
                "03xdbpn3qddcq9krdpnywd3xbzfh2viym2qqx6rcqs7w7bdhhlk6"))))
    (properties `((upstream-name . "ITRLearn")))
    (build-system r-build-system)
    (propagated-inputs (list r-kernlab r-formula))
    (home-page "https://cran.r-project.org/package=ITRLearn")
    (synopsis "Statistical Learning for Individualized Treatment Regime")
    (description
     "Maximin-projection learning (MPL, Shi, et al., 2018) is implemented for
recommending a meaningful and reliable individualized treatment regime for
future groups of patients based on the observed data from different populations
with heterogeneity in individualized decision making.  Q-learning and A-learning
are implemented for estimating the groupwise contrast function that shares the
same marginal treatment effects.  The packages contains classical Q-learning and
A-learning algorithms for a single stage study as a byproduct.  More functions
will be added at later versions.")
    (license license:gpl2)))

(define-public r-itraxr
  (package
    (name "r-itraxr")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itraxR" version))
              (sha256
               (base32
                "1fl843dwvn92i4h0ccdp4xn5jwkkhzng367mmrr1ilwa3bq6ziqr"))))
    (properties `((upstream-name . "itraxR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiff
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-munsellinterpol
                             r-janitor
                             r-ggplot2
                             r-ggcorrplot
                             r-dplyr
                             r-compositions
                             r-broom))
    (home-page "https://thomasbishop.uk")
    (synopsis "Itrax Data Analysis Tools")
    (description
     "Parse, trim, join, visualise and analyse data from Itrax sediment core
multi-parameter scanners manufactured by Cox Analytical Systems, Sweden.
Functions are provided for parsing XRF-peak area files, line-scan optical
images, and radiographic images, alongside accompanying metadata.  A variety of
data wrangling tasks like trimming, joining and reducing XRF-peak area data are
simplified.  Multivariate methods are implemented with appropriate data
transformation.")
    (license license:gpl3)))

(define-public r-itp
  (package
    (name "r-itp")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itp" version))
              (sha256
               (base32
                "0vh5rpl88v5b6s2vfv42ahaphlspiapx82xa74ynic4rmc2ffjis"))))
    (properties `((upstream-name . "itp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://paulnorthrop.github.io/itp/")
    (synopsis
     "The Interpolate, Truncate, Project (ITP) Root-Finding Algorithm")
    (description
     "This package implements the Interpolate, Truncate, Project (ITP) root-finding
algorithm developed by Oliveira and Takahashi (2021) <doi:10.1145/3423597>.  The
user provides the function, from the real numbers to the real numbers, and an
interval with the property that the values of the function at its endpoints have
different signs.  If the function is continuous over this interval then the ITP
method estimates the value at which the function is equal to zero.  If the
function is discontinuous then a point of discontinuity at which the function
changes sign may be found.  The function can be supplied using either an R
function or an external pointer to a C++ function.  Tuning parameters of the ITP
algorithm can be set by the user.  Default values are set based on arguments in
Oliveira and Takahashi (2021).")
    (license license:gpl2+)))

(define-public r-itop
  (package
    (name "r-itop")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iTOP" version))
              (sha256
               (base32
                "1n6nlmmx2h63nksycgzr7qsnd1j6bxa629av7cfd3ihriim7dj47"))))
    (properties `((upstream-name . "iTOP")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-corpcor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iTOP")
    (synopsis "Inferring the Topology of Omics Data")
    (description
     "This package infers a topology of relationships between different datasets, such
as multi-omics and phenotypic data recorded on the same samples.  We based this
methodology on the RV coefficient (Robert & Escoufier, 1976,
<doi:10.2307/2347233>), a measure of matrix correlation, which we have extended
for partial matrix correlations and binary data (Aben et al., 2018,
<doi:10.1101/293993>).")
    (license license:gpl2)))

(define-public r-itol-toolkit
  (package
    (name "r-itol-toolkit")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itol.toolkit" version))
              (sha256
               (base32
                "0akmjzp65vsl8hnh195lhm58f0qs1c3vy8ljd6njmq2f9fvjgxpj"))))
    (properties `((upstream-name . "itol.toolkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-wesanderson
                             r-tidyr
                             r-stringr
                             r-shiny
                             r-seqinr
                             r-rstudioapi
                             r-rcolorbrewer
                             r-purrr
                             r-miniui
                             r-ggsci
                             r-dplyr
                             r-data-table
                             r-colourpicker
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=itol.toolkit")
    (synopsis "Helper Functions for 'Interactive Tree Of Life'")
    (description
     "The Interactive Tree Of Life <https://itol.embl.de/> online server can edit and
annotate trees interactively.  The itol.toolkit package can support all types of
annotation templates.")
    (license license:expat)))

(define-public r-itnr
  (package
    (name "r-itnr")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ITNr" version))
              (sha256
               (base32
                "0zpyrg4vcn17k75x1i1dp2hw8n2fp34qf4skywx3wrchjpxmsra8"))))
    (properties `((upstream-name . "ITNr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xergm-common
                             r-wdi
                             r-tnet
                             r-sna
                             r-reshape2
                             r-rcolorbrewer
                             r-plyr
                             r-networkdynamic
                             r-network
                             r-maps
                             r-intergraph
                             r-igraph
                             r-ggplot2
                             r-ggally
                             r-fastmatch
                             r-dplyr
                             r-cowplot
                             r-circlize
                             r-blockmodeling))
    (home-page "https://cran.r-project.org/package=ITNr")
    (synopsis "Analysis of the International Trade Network")
    (description
     "This package provides functions to clean and process international trade data
into an international trade network (ITN) are provided.  It then provides a set
a functions to undertake analysis and plots of the ITN (extract the backbone,
centrality, blockmodels, clustering).  Examining the key players in the ITN and
regional trade patterns.")
    (license license:gpl3)))

(define-public r-itertools2
  (package
    (name "r-itertools2")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itertools2" version))
              (sha256
               (base32
                "0yra3x9ddvn5pp3jibm69205zazv81bz0cflw4mdvxpqadaf9f96"))))
    (properties `((upstream-name . "itertools2")))
    (build-system r-build-system)
    (propagated-inputs (list r-iterators))
    (home-page "https://github.com/ramhiser/itertools2")
    (synopsis "itertools2: Functions creating iterators for efficient looping")
    (description
     "This package provides a port of Python's excellent itertools module to R for
efficient looping.")
    (license license:expat)))

(define-public r-iterpc
  (package
    (name "r-iterpc")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iterpc" version))
              (sha256
               (base32
                "06q7l8mz8ws4nn6gb0whnlqs8my2n8z2d2g8fvv3cxd28904dg9q"))))
    (properties `((upstream-name . "iterpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-iterators r-gmp r-arrangements))
    (native-inputs (list r-knitr))
    (home-page "https://randy3k.github.io/iterpc")
    (synopsis "Efficient Iterator for Permutations and Combinations")
    (description
     "Iterator for generating permutations and combinations.  They can be either drawn
with or without replacement, or with distinct/ non-distinct items (multiset).
The generated sequences are in lexicographical order (dictionary order).  The
algorithms to generate permutations and combinations are memory efficient.
These iterative algorithms enable users to process all sequences without putting
all results in the memory at the same time.  The algorithms are written in C/C++
for faster performance.  Note: iterpc is no longer being maintained.  Users are
recommended to switch to arrangements'.")
    (license license:gpl2)))

(define-public r-iterlap
  (package
    (name "r-iterlap")
    (version "1.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iterLap" version))
              (sha256
               (base32
                "079d4hxf1ha8pgibzb4r1yk7xqpzndd7hjbp8294qb26jvvcnd8q"))))
    (properties `((upstream-name . "iterLap")))
    (build-system r-build-system)
    (propagated-inputs (list r-randtoolbox r-quadprog))
    (home-page "https://cran.r-project.org/package=iterLap")
    (synopsis
     "Approximate Probability Densities by Iterated Laplace Approximations")
    (description
     "The iterLap (iterated Laplace approximation) algorithm approximates a general
(possibly non-normalized) probability density on R^p, by repeated Laplace
approximations to the difference between current approximation and true density
(on log scale).  The final approximation is a mixture of multivariate normal
distributions and might be used for example as a proposal distribution for
importance sampling (eg in Bayesian applications).  The algorithm can be seen as
a computational generalization of the Laplace approximation suitable for skew or
multimodal densities.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-iterator
  (package
    (name "r-iterator")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iteratoR" version))
              (sha256
               (base32
                "0d0hc2669dsv1v4g5hz7n9rd4y502r4vw9795mi19jfgk662p2ml"))))
    (properties `((upstream-name . "iteratoR")))
    (build-system r-build-system)
    (home-page "https://github.com/stevecondylios/iteratoR")
    (synopsis "Print Loop Iterations at Exponentially Disparate Intervals")
    (description
     "Know which loop iteration the code execution is up to by including a single,
convenient function call inside the loop.")
    (license license:expat)))

(define-public r-iterativehardthresholding
  (package
    (name "r-iterativehardthresholding")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IterativeHardThresholding" version))
              (sha256
               (base32
                "0vv8v61pzlykdyjivl19q8nr9p22c845y902yljgrvc9ayidczqm"))))
    (properties `((upstream-name . "IterativeHardThresholding")))
    (build-system r-build-system)
    (propagated-inputs (list r-parallellogger r-cyclops))
    (home-page "https://cran.r-project.org/package=IterativeHardThresholding")
    (synopsis "Iterative Hard Thresholding Extensions to Cyclops")
    (description
     "Fits large-scale regression models with a penalty that restricts the maximum
number of non-zero regression coefficients to a prespecified value.  While Chu
et al (2020) <doi:10.1093/gigascience/giaa044> describe the basic algorithm,
this package uses Cyclops for an efficient implementation.")
    (license license:asl2.0)))

(define-public r-itensor
  (package
    (name "r-itensor")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iTensor" version))
              (sha256
               (base32
                "09js2kiw1prrkn03srz4xas37mwbx85zkawfb93wgl292r31j2x9"))))
    (properties `((upstream-name . "iTensor")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtensor
                             r-mixomics
                             r-mgcv
                             r-mass
                             r-jointdiag
                             r-groupica
                             r-geigen
                             r-einsum))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rikenbit/iTensor")
    (synopsis "ICA-Based Matrix/Tensor Decomposition")
    (description
     "Some functions for performing ICA, MICA, Group ICA, and Multilinear ICA are
implemented.  ICA, MICA/Group ICA, and Multilinear ICA extract statistically
independent components from single matrix, multiple matrices, and single tensor,
respectively.  For the details of these methods, see the reference section of
GitHub README.md <https://github.com/rikenbit/iTensor>.")
    (license license:expat)))

(define-public r-itemanalysis
  (package
    (name "r-itemanalysis")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itemanalysis" version))
              (sha256
               (base32
                "0spnf28ighcvg2haicxf8y88c6myxj3xdrpbiiyajpgivm8pzqqp"))))
    (properties `((upstream-name . "itemanalysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-polycor r-ggplot2 r-car))
    (home-page "https://cengiz.me/")
    (synopsis "Classical Test Theory Item Analysis")
    (description
     "Runs classical item analysis for multiple-choice test items and polytomous items
(e.g., rating scales).  The statistics reported in this package can be found in
any measurement textbook such as Crocker and Algina (2006, ISBN:9780495395911).")
    (license license:gpl2+)))

(define-public r-itdr
  (package
    (name "r-itdr")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itdr" version))
              (sha256
               (base32
                "1yq9ij608319h4r3y29y7vym055w5v7iyh9i1amrppba581z81di"))))
    (properties `((upstream-name . "itdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=itdr")
    (synopsis "Integral Transformation Methods for SDR in Regression")
    (description
     "The routine, itdr(), which allows to estimate the sufficient dimension reduction
subspaces, i.e., central mean subspace or central subspace in regression, using
Fourier transformation proposed by Zhu and Zeng (2006)
<https:doi.org/10.1198/016214506000000140>, convolution transformation proposed
by Zeng and Zhu (2010) <https:doi.org/10.1016/j.jmva.2009.08.004> and iterative
Hessian transformation methods proposed by Cook and Li (2002)
<https:doi.org/10.1214/aos/1021379861>.  The predictor variables can be consider
to have a multivariate normal distribution or an elliptical contoured
distribution.  If the distribution of the predictor variables is unknown, then
the predictors distribution can be estimated by the kernel density estimation
method.  Moreover, each of these routines is supported with a bootstrap
procedure to estimate their tuning parameters.  That is, wx() estimates the
tuning parameter for the predictor variables, wy() estimates the tuning
parameter for the response variable, and wh() estimates the bandwidth parameter
for the kernel density estimation method.  The function invFM() estimates the
central subspace using Fourier transform approach for inverse dimension
reduction method proposed by Weng and Yin (2018)
<https:doi.org/10.1080/10485252.2018.1515432>.  The function d.test() estimates
the dimension of the central mean subspace using hypothesis under invFM().
Moreover, the dsp() function provides the two distance measures between two
subspaces spanned by the columns of two matrices; Vector correlation proposed by
Hooper (1959) <https:doi.org/10.2307/1909445>, and Trace correlation proposed by
Hotelling (1936) <https:doi.org/10.2307/2333955>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-itcsegment
  (package
    (name "r-itcsegment")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itcSegment" version))
              (sha256
               (base32
                "032wj34313m3wigdfalq356srdzg0cvnvxnaxwxws6bc44r78izf"))))
    (properties `((upstream-name . "itcSegment")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rgeos r-raster r-maptools))
    (home-page "https://cran.r-project.org/package=itcSegment")
    (synopsis "Individual Tree Crowns Segmentation")
    (description
     "Three methods for Individual Tree Crowns (ITCs) delineation on remote sensing
data: one is based on LiDAR data in x,y,z format and one on imagery data in
raster format.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-itan
  (package
    (name "r-itan")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "itan" version))
              (sha256
               (base32
                "14aabrwvmqiyn8mypiaz80m24a0bczz2fl00f4dk9ham6hww4v1q"))))
    (properties `((upstream-name . "itan")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arielarmijo/itan")
    (synopsis "Item Analysis for Multiple Choice Tests")
    (description
     "This package provides functions for analyzing multiple choice items.  These
analyses include the convertion of student response into binaty data
(correct/incorrect), the computation of the number of corrected responses and
grade for each subject, the calculation of item difficulty and discrimination,
the computation of the frecuency and point-biserial correlation for each
distractor and the graphical analysis of each item.")
    (license license:expat)))

(define-public r-italy
  (package
    (name "r-italy")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "italy" version))
              (sha256
               (base32
                "0is90xp6980ja12jzi3816jq1y90ifcw6cvfmybb7invj6rr1cks"))))
    (properties `((upstream-name . "italy")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=italy")
    (synopsis "The Italian Survey on Household and Wealth, 2008 and 2010")
    (description
     "This package provides two record linkage data sets on the Italian Survey on
Household and Wealth, 2008 and 2010, a sample survey conducted by the Bank of
Italy every two years.  The 2010 survey covered 13,702 individuals, while the
2008 survey covered 13,734 individuals.  The following categorical variables are
included in this data set: year of birth, working status, employment status,
branch of activity, town size, geographical area of birth, sex, whether or not
Italian national, and highest educational level obtained.  Unique identifiers
are available to assess the accuracy of oneâs method.  Please see Steorts
(2015) <DOI:10.1214/15-BA965SI> to find more details about the data set.")
    (license license:cc0)))

(define-public r-iswr
  (package
    (name "r-iswr")
    (version "2.0-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISwR" version))
              (sha256
               (base32
                "1bay7na68awq68bw82dwhcfxp2d3di2dg33islq0mgrhd4sfdfza"))))
    (properties `((upstream-name . "ISwR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ISwR")
    (synopsis "Introductory Statistics with R")
    (description
     "Data sets and scripts for text examples and exercises in P. Dalgaard (2008),
`Introductory Statistics with R', 2nd ed., Springer Verlag, ISBN 978-0387790534.")
    (license license:gpl2+)))

(define-public r-isubgen
  (package
    (name "r-isubgen")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iSubGen" version))
              (sha256
               (base32
                "0kfrgh4399x71mwa5j36nfszd65ybp61fwpc7qj3j9ypmgidwbaj"))))
    (properties `((upstream-name . "iSubGen")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorflow r-philentropy r-keras
                             r-consensusclusterplus r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iSubGen")
    (synopsis "Integrative Subtype Generation")
    (description
     "Multi-data type subtyping, which is data type agnostic and accepts missing data.
 Subtyping is performed using intermediary assessments created with autoencoders
and similarity calculations.")
    (license license:gpl2)))

(define-public r-istats
  (package
    (name "r-istats")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iSTATS" version))
              (sha256
               (base32
                "14pd3k8w8hh7gl2iskax2pck6z96hdfrws5l69zdw02867bny404"))))
    (properties `((upstream-name . "iSTATS")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinybs
                             r-shiny
                             r-rstudioapi
                             r-plotly
                             r-gtools
                             r-ggplot2
                             r-data-table
                             r-cairo))
    (home-page "https://cran.r-project.org/package=iSTATS")
    (synopsis "Graphical Interface to Perform STOCSY Analyses on NMR Data")
    (description
     "Launches a shiny based application for Nuclear Magnetic Resonance (NMR)data
importation and Statistical TOtal Correlation SpectroscopY (STOCSY) analyses in
a full interactive approach.  The theoretical background and applications of
STOCSY method could be found at Cloarec, O., Dumas, M. E., Craig, A., Barton, R.
H., Trygg, J., Hudson, J., Blancher, C., Gauguier, D., Lindon, J. C., Holmes, E.
& Nicholson, J. (2005) <doi:10.1021/ac048630x>.")
    (license license:gpl3)))

(define-public r-istacr
  (package
    (name "r-istacr")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "istacr" version))
              (sha256
               (base32
                "1hg94p0b5zkj50ckxrgas2a8rdwh0avspykscincxkfi0wk1cx0r"))))
    (properties `((upstream-name . "istacr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://cran.r-project.org/package=istacr")
    (synopsis
     "Obtaining Open Data from Instituto Canario De Estadistica (ISTAC) API")
    (description
     "You can access to open data published in Instituto Canario De Estadistica
(ISTAC) APIs at <https://datos.canarias.es/api/estadisticas/>.")
    (license license:gpl3+)))

(define-public r-isr
  (package
    (name "r-isr")
    (version "2022.4.22")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISR" version))
              (sha256
               (base32
                "0j31qicbpjgl0igmk37qg10zng31xk6w4dd1izz5pzjwb3w9qkli"))))
    (properties `((upstream-name . "ISR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=ISR")
    (synopsis "The Iterated Score Regression-Based Estimation Algorithm")
    (description
     "Algorithm to handle with PCA-based missing data, where ISR is for PCA-based
missing data with high correlation and DISR is for distributed PCA-based missing
data.  The philosophy of the package is described in Guo G. (2020)
<doi:10.1080/02331888.2020.1823979>.")
    (license license:expat)))

(define-public r-ispdata
  (package
    (name "r-ispdata")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ispdata" version))
              (sha256
               (base32
                "1bs2qff15qh45wp3v6kyx4b1gd5vg36cj4cjzlxdfmgdjqjjwd3m"))))
    (properties `((upstream-name . "ispdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-readr r-openxlsx r-janitor r-dplyr))
    (home-page "https://cran.r-project.org/package=ispdata")
    (synopsis
     "Access Data from the Public Security Institute of the State of Rio De Janeiro")
    (description
     "Allows access to data from the Rio de Janeiro Public Security Institute (ISP),
such as criminal statistics, data on gun seizures and femicide.  The package
also contains the spatial data of Pacifying Police Units (UPPs) and Integrated
Public Safety Regions, Areas and Circumscriptions.")
    (license license:expat)))

(define-public r-ispd
  (package
    (name "r-ispd")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ispd" version))
              (sha256
               (base32
                "06h4z342d17rkpr2wwck4sq79kprdq6fgqf10jg8cs1f52q6pq0h"))))
    (properties `((upstream-name . "ispd")))
    (build-system r-build-system)
    (propagated-inputs (list r-ibd))
    (home-page "https://cran.r-project.org/package=ispd")
    (synopsis "Incomplete Split-Plot Designs")
    (description
     "This package provides a collection of several functions related to construction
and analysis of incomplete split-plot designs.  The package contains functions
to obtain and analyze incomplete split-plot designs for three kinds of
situations namely (i) when blocks are complete with respect to main plot
treatments and main plots are incomplete with respect to subplot treatments,
(ii) when blocks are incomplete with respect to main plot treatments and main
plots are complete with respect to subplot treatments and (iii) when blocks are
incomplete with respect to main plot treatments and main plots are incomplete
with respect to subplot treatments.")
    (license license:gpl2+)))

(define-public r-isoweek
  (package
    (name "r-isoweek")
    (version "0.6-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISOweek" version))
              (sha256
               (base32
                "1f1h8pgjaa14cvaj8ldl87b4vslxwvyfj46m0hkylwp73sv3g2mm"))))
    (properties `((upstream-name . "ISOweek")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=ISOweek")
    (synopsis "Week of the year and weekday according to ISO 8601")
    (description
     "This is an substitute for the %V and %u formats which are not implemented on
Windows.  In addition, the package offers functions to convert from standard
calender format yyyy-mm-dd to and from ISO 8601 week format yyyy-Www-d.")
    (license license:gpl2+)))

(define-public r-isowater
  (package
    (name "r-isowater")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isoWater" version))
              (sha256
               (base32
                "07ggvx6myiqfr8lqvgwgaiyq1rrgyi5y1v8pbcpf5j34i8y02v4y"))))
    (properties `((upstream-name . "isoWater")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2winbugs
                             r-r2jags
                             r-jsonlite
                             r-httr
                             r-foreach
                             r-doparallel
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=isoWater")
    (synopsis "Discovery, Retrieval, and Analysis of Water Isotope Data")
    (description
     "The wiDB...() functions provide an interface to the public API of the wiDB
<https://github.com/SPATIAL-Lab/isoWater/blob/master/Protocol.md>: build, check
and submit queries, and receive and unpack responses.  Data analysis functions
support Bayesian inference of the source and source isotope composition of water
samples that may have experienced evaporation.  Algorithms adapted from Bowen et
al. (2018, <doi:10.1007/s00442-018-4192-5>).")
    (license license:gpl3)))

(define-public r-isotree
  (package
    (name "r-isotree")
    (version "0.5.19-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isotree" version))
              (sha256
               (base32
                "1l42dgfr51k6dnm07yxpawwqwy9a4rsc6k90fviw4sf71byazqa0"))))
    (properties `((upstream-name . "isotree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/david-cortes/isotree")
    (synopsis "Isolation-Based Outlier Detection")
    (description
     "Fast and multi-threaded implementation of isolation forest (Liu, Ting, Zhou
(2008) <doi:10.1109/ICDM.2008.17>), extended isolation forest (Hariri, Kind,
Brunner (2018) <arXiv:1811.02141>), SCiForest (Liu, Ting, Zhou (2010)
<doi:10.1007/978-3-642-15883-4_18>), fair-cut forest (Cortes (2021)
<arXiv:2110:13402>), robust random-cut forest (Guha, Mishra, Roy, Schrijvers
(2016) <http://proceedings.mlr.press/v48/guha16.html>), and customizable
variations of them, for isolation-based outlier detection, clustered outlier
detection, distance or similarity approximation (Cortes (2019)
<arXiv:1910.12362>), isolation kernel calculation (Ting, Zhu, Zhou (2018)
<doi:10.1145/3219819.3219990>), and imputation of missing values (Cortes (2019)
<arXiv:1911.06646>), based on random or guided decision tree splitting, and
providing different metrics for scoring anomalies based on isolation depth or
density (Cortes (2021) <arXiv:2111.11639>).  Provides simple heuristics for
fitting the model to categorical columns and handling missing data, and offers
options for varying between random and guided splits, and for using different
splitting criteria.")
    (license license:bsd-2)))

(define-public r-isotracer
  (package
    (name "r-isotracer")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isotracer" version))
              (sha256
               (base32
                "0wyvzfz0layh525fdn769x6nnm5d2447vjldnli49gasqb7g49nr"))))
    (properties `((upstream-name . "isotracer")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-pillar
                             r-magrittr
                             r-latex2exp
                             r-dplyr
                             r-data-table
                             r-coda
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/matthieu-bruneaux/isotracer")
    (synopsis "Isotopic Tracer Analysis Using MCMC")
    (description
     "This package implements Bayesian models to analyze data from tracer addition
experiments.  The implemented method was originally described in the article \"A
New Method to Reconstruct Quantitative Food Webs and Nutrient Flows from Isotope
Tracer Addition Experiments\" by LÃ³pez-Sepulcre et al. (2020)
<doi:10.1086/708546>.")
    (license license:gpl3)))

(define-public r-isotoper
  (package
    (name "r-isotoper")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsotopeR" version))
              (sha256
               (base32
                "0xgha5alh5y5qfz00rl73q4xlamnmrwij7kckljmy6zgrlrdnl6x"))))
    (properties `((upstream-name . "IsotopeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-runjags r-plotrix r-fgui r-ellipse r-colorspace))
    (home-page "https://cran.r-project.org/package=IsotopeR")
    (synopsis "Stable Isotope Mixing Model")
    (description
     "Estimates diet contributions from isotopic sources using JAGS. Includes
estimation of concentration dependence and measurement error.")
    (license license:gpl2+)))

(define-public r-isotonic-pen
  (package
    (name "r-isotonic-pen")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isotonic.pen" version))
              (sha256
               (base32
                "1lgw15df08f4dhrjjfr0jqkcvxwad92kflj2px526pcxwkj7cj3i"))))
    (properties `((upstream-name . "isotonic.pen")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-coneproj))
    (home-page "https://cran.r-project.org/package=isotonic.pen")
    (synopsis "Penalized Isotonic Regression in one and two dimensions")
    (description
     "Given a response y and a one- or two-dimensional predictor, the isotonic
regression estimator is calculated with the usual orderings.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-isotone
  (package
    (name "r-isotone")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isotone" version))
              (sha256
               (base32
                "0kpzcfxac3yrvw4rszzc99r1mw78pq6bsgg0h332jamwvffhasgn"))))
    (properties `((upstream-name . "isotone")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnls))
    (home-page "https://r-forge.r-project.org/projects/psychor/")
    (synopsis "Active Set and Generalized PAVA for Isotone Optimization")
    (description
     "This package contains two main functions: one for solving general isotone
regression problems using the pool-adjacent-violators algorithm (PAVA); another
one provides a framework for active set methods for isotone optimization
problems with arbitrary order restrictions.  Various types of loss functions are
prespecified.")
    (license license:gpl2)))

(define-public r-isosurv
  (package
    (name "r-isosurv")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isoSurv" version))
              (sha256
               (base32
                "1y6wdmxzzdl1dkvab72s2smm3brqfl0y3b9al8fnj3h2b8lw502j"))))
    (properties `((upstream-name . "isoSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-iso))
    (home-page "https://cran.r-project.org/package=isoSurv")
    (synopsis "Isotonic Regression on Survival Analysis")
    (description
     "Nonparametric estimation on survival analysis under order restrictions.  It
estimates monotone increasing or decreasing covariate effects in the
proportional hazards model.  Yunro Chung et al. (2018)
<doi:10.1093/biomet/asx064>.")
    (license license:gpl2+)))

(define-public r-isospecr
  (package
    (name "r-isospecr")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoSpecR" version))
              (sha256
               (base32
                "0cy9y3lh20xxj9sah8s2zrwnbzk39s5xmscj4mskvn897bmlksh6"))))
    (properties `((upstream-name . "IsoSpecR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "http://matteolacki.github.io/IsoSpec/")
    (synopsis "The IsoSpec Algorithm")
    (description
     "IsoSpec is a fine structure calculator used for obtaining the most probable
masses of a chemical compound given the frequencies of the composing isotopes
and their masses.  It finds the smallest set of isotopologues with a given
probability.  The probability is assumed to be that of the product of
multinomial distributions, each corresponding to one particular element and
parametrized by the frequencies of finding these elements in nature.  These
numbers are supplied by IUPAC - the International Union of Pure and Applied
Chemistry.  See: Lacki, Valkenborg, Startek (2020)
<DOI:10.1021/acs.analchem.0c00959> and Lacki, Startek, Valkenborg, Gambin (2017)
<DOI:10.1021/acs.analchem.6b01459> for the description of the algorithms used.")
    (license (license:fsdg-compatible "BSD_2_clause + file LICENCE"))))

(define-public r-isorix
  (package
    (name "r-isorix")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoriX" version))
              (sha256
               (base32
                "0pm51jxw16264nf5wdpjhyydrb16ydyw76h45madw5nf6bibhgsp"))))
    (properties `((upstream-name . "IsoriX")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-spamm
                             r-sp
                             r-rastervis
                             r-raster
                             r-numderiv
                             r-latticeextra
                             r-lattice
                             r-elevatr))
    (home-page "https://github.com/courtiol/IsoriX/")
    (synopsis
     "Isoscape Computation and Inference of Spatial Origins using Mixed Models")
    (description
     "Building isoscapes using mixed models and inferring the geographic origin of
samples based on their isotopic ratios.  This package is essentially a
simplified interface to several other packages which implements a new
statistical framework based on mixed models.  It uses spaMM for fitting and
predicting isoscapes, and assigning an organism's origin depending on its
isotopic ratio.  IsoriX also relies heavily on the package rasterVis for
plotting the maps produced with raster using lattice'.")
    (license license:gpl2+)))

(define-public r-isopurer
  (package
    (name "r-isopurer")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISOpureR" version))
              (sha256
               (base32
                "1ydhsh3v6n7prrg0dm7hsg8wx1244g791xnz1sjyhljhm31hgwc0"))))
    (properties `((upstream-name . "ISOpureR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-futile-logger))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ISOpureR")
    (synopsis "Deconvolution of Tumour Profiles")
    (description
     "Deconvolution of mixed tumour profiles into normal and cancer for each patient,
using the ISOpure algorithm in Quon et al.  Genome Medicine, 2013 5:29.
Deconvolution requires mixed tumour profiles and a set of unmatched \"basis\"
normal profiles.")
    (license license:gpl2)))

(define-public r-isoplotrgui
  (package
    (name "r-isoplotrgui")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoplotRgui" version))
              (sha256
               (base32
                "00v2vlfzqbwdgpp2mrqcizzs6zkrjcrv6kj7l24ghplvljmz33lk"))))
    (properties `((upstream-name . "IsoplotRgui")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinylight r-isoplotr))
    (native-inputs (list esbuild))
    (home-page "https://www.ucl.ac.uk/~ucfbpve/isoplotr/")
    (synopsis "Web Interface to 'IsoplotR'")
    (description
     "This package provides a graphical user interface to the IsoplotR package for
radiometric geochronology.  The GUI runs in an internet browser and can either
be used offline, or hosted on a server to provide online access to the IsoplotR
toolbox.")
    (license license:gpl3)))

(define-public r-isoplotr
  (package
    (name "r-isoplotr")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoplotR" version))
              (sha256
               (base32
                "1c2raxaayks7vzp71xb8xzd95gjm101xi85r23q52lkzjjrj164h"))))
    (properties `((upstream-name . "IsoplotR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://www.ucl.ac.uk/~ucfbpve/isoplotr/")
    (synopsis "Statistical Toolbox for Radiometric Geochronology")
    (description
     "Plots U-Pb data on Wetherill and Tera-Wasserburg concordia diagrams.  Calculates
concordia and discordia ages.  Performs linear regression of measurements with
correlated errors using York', Titterington and Ludwig approaches.  Generates
Kernel Density Estimates (KDEs) and Cumulative Age Distributions (CADs).
Produces Multidimensional Scaling (MDS) configurations and Shepard plots of
multi-sample detrital datasets using the Kolmogorov-Smirnov distance as a
dissimilarity measure.  Calculates 40Ar/39Ar ages, isochrons, and age spectra.
Computes weighted means accounting for overdispersion.  Calculates U-Th-He
(single grain and central) ages, logratio plots and ternary diagrams.  Processes
fission track data using the external detector method and LA-ICP-MS, calculates
central ages and plots fission track and other data on radial (a.k.a.
Galbraith') plots.  Constructs total Pb-U, Pb-Pb, Th-Pb, K-Ca, Re-Os, Sm-Nd,
Lu-Hf, Rb-Sr and 230Th-U isochrons as well as 230Th-U evolution plots.")
    (license license:gpl3)))

(define-public r-isopleuros
  (package
    (name "r-isopleuros")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isopleuros" version))
              (sha256
               (base32
                "19hn9ydby2wi6aim6vb7wjj93f95md0g8sy41djlhr94m5v9xw3d"))))
    (properties `((upstream-name . "isopleuros")))
    (build-system r-build-system)
    (home-page "https://packages.tesselle.org/isopleuros/")
    (synopsis "Ternary Plots")
    (description
     "Ternary plots made simple.  This package allows to create ternary plots using
graphics'.  It provides functions to display the data in the ternary space, to
add or tune graphical elements and to display statistical summaries.  It also
includes common ternary diagrams which are useful for the archaeologist (e.g.
soil texture charts, ceramic phase diagram).")
    (license license:gpl3+)))

(define-public r-isopat
  (package
    (name "r-isopat")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isopat" version))
              (sha256
               (base32
                "0fznvgycyd35dh7pbq1xhp667gsficlmycn5pcrqcbs89069xr1s"))))
    (properties `((upstream-name . "isopat")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=isopat")
    (synopsis "Calculation of isotopic pattern for a given molecular formula")
    (description
     "The function calculates the isotopic pattern (fine structures) for a given
chemical formula.")
    (license license:gpl2)))

(define-public r-isopam
  (package
    (name "r-isopam")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isopam" version))
              (sha256
               (base32
                "0cj8gn5m7r1fs4riiw1d3cmpg7zy3dyfpcr40dy18zmp4kg6ff7m"))))
    (properties `((upstream-name . "isopam")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-proxy
                             r-progressr
                             r-future-apply
                             r-future
                             r-cluster))
    (home-page "https://cran.r-project.org/package=isopam")
    (synopsis "Clustering of Sites with Species Data")
    (description
     "Clustering algorithm developed for use with plot inventories of species.  It
groups plots by subsets of species rather than overall species composition.
There is an unsupervised and a supervised mode, the latter accepting suggestions
for species with greater weight and cluster medoids.")
    (license license:gpl2+)))

(define-public r-isoorbi
  (package
    (name "r-isoorbi")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isoorbi" version))
              (sha256
               (base32
                "1087k2xyfmbnwid787q0zypa788bixnmrjs3zm04gr5qhdbixc74"))))
    (properties `((upstream-name . "isoorbi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/isoverse/isoorbi")
    (synopsis "Process Orbitrap Iso Data")
    (description
     "Read and process isotopocule data from an Orbitrap Iso mass spectrometer.
Hilkert et al. (2021) <doi:10.1021/acs.analchem.1c00944>.")
    (license license:expat)))

(define-public r-isomemo
  (package
    (name "r-isomemo")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoMemo" version))
              (sha256
               (base32
                "1srs8iiy1w18gyzkw60gxw90mdmywmlnfsw3da4izl42x0ngqjww"))))
    (properties `((upstream-name . "IsoMemo")))
    (build-system r-build-system)
    (propagated-inputs (list r-modules r-jsonlite r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IsoMemo")
    (synopsis "Retrieve Data using the 'IsoMemo' API")
    (description
     "API wrapper that contains functions to retrieve data from the IsoMemo
partnership databases.  Web services for API:
<https://isomemodb.com/api/v1/iso-data>.")
    (license license:gpl3+)))

(define-public r-isokernel
  (package
    (name "r-isokernel")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isokernel" version))
              (sha256
               (base32
                "04mrbq2822yhcq4q82xwm61a38zsk6w55jgjkp0xnardpv8a39pb"))))
    (properties `((upstream-name . "isokernel")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-matrix))
    (home-page "https://github.com/zhuye88/isokernel")
    (synopsis "Isolation Kernel")
    (description "Implementation of Isolation kernel (Qin et al. (2019)
<doi:10.1609/aaai.v33i01.33014755>).")
    (license license:gpl3)))

(define-public r-isogeochem
  (package
    (name "r-isogeochem")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isogeochem" version))
              (sha256
               (base32
                "112pcgbafjkgbfdkqvgz5i5iscfkjasq88k58az50cf47bqsqg0g"))))
    (properties `((upstream-name . "isogeochem")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://davidbajnai.github.io/isogeochem/")
    (synopsis "Tools for Stable Isotope Geochemistry")
    (description
     "This toolbox makes working with oxygen, carbon, and clumped isotope data
reproducible and straightforward.  Use it to quickly calculate isotope
fractionation factors, and apply paleothermometry equations.")
    (license license:gpl3+)))

(define-public r-isogene
  (package
    (name "r-isogene")
    (version "1.0-24")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoGene" version))
              (sha256
               (base32
                "0flm0mszankvl3aizwsazyhvz2xkr4gfqiqywpc0r1swqj19610r"))))
    (properties `((upstream-name . "IsoGene")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-iso r-ff r-biobase r-affy))
    (home-page "https://cran.r-project.org/package=IsoGene")
    (synopsis "Order-Restricted Inference for Microarray Experiments")
    (description
     "Offers framework for testing for monotonic relationship between gene expression
and doses in a microarray experiment.  Several testing procedures including the
global likelihood-ratio test (Bartholomew, 1961), Williams (1971, 1972), Marcus
(1976), M (Hu et al.  2005) and the modified M (Lin et al.  2007) are used to
test for the monotonic trend in gene expression with respect to doses.  BH
(Benjamini and Hochberg 1995) and BY (Benjamini and Yekutieli 2004) FDR
controlling procedures are applied to adjust the raw p-values obtained from the
permutations.")
    (license license:gpl3)))

(define-public r-isodistrreg
  (package
    (name "r-isodistrreg")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isodistrreg" version))
              (sha256
               (base32
                "0na7jipwzr16afvz2l6wxh62mv0mrq1ma1qwxnys83zhr0dca099"))))
    (properties `((upstream-name . "isodistrreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-osqp r-matrix))
    (home-page "https://github.com/AlexanderHenzi/isodistrreg")
    (synopsis "Isotonic Distributional Regression (IDR)")
    (description
     "Distributional regression under stochastic order restrictions for numeric and
binary response variables and partially ordered covariates.  See Henzi, Ziegel,
Gneiting (2020) <arXiv:1909.03725>.")
    (license license:gpl2+)))

(define-public r-isocorr
  (package
    (name "r-isocorr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoCorr" version))
              (sha256
               (base32
                "0rhbclbpfd9d0dawbwwprlzx2j9k59gsmrb11yabiv5305b7vpx8"))))
    (properties `((upstream-name . "IsoCorr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IsoCorr")
    (synopsis
     "Correcting Drift and Carry-over in Continuous Isotopic Measurements")
    (description
     "This package provides a series of functions that allow an easy and fast
correction for drift and carry-over in continuous isotopic measurements.  This
implementation provides queries allowing users to perform the implemented
corrections according to their needs.  These functions further enable the
processing of large datasets and can provides apt visualizations of the
corrections performed.")
    (license license:artistic2.0)))

(define-public r-isocor
  (package
    (name "r-isocor")
    (version "0.1.40")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoCor" version))
              (sha256
               (base32
                "191y51mg6kii4x99c7437888kkacml0ch53qh1gbwv10gl2c4w8z"))))
    (properties `((upstream-name . "IsoCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyjs
                             r-shinyalert
                             r-shiny
                             r-rmarkdown
                             r-plyr
                             r-markdown
                             r-maldiquant
                             r-htmltools
                             r-golem
                             r-dt
                             r-bsplus))
    (home-page "https://jali.shinyapps.io/isocor")
    (synopsis "Analyze Isotope Ratios in a 'Shiny'-App")
    (description
     "Analyzing Inductively Coupled Plasma - Mass Spectrometry (ICP-MS) measurement
data to evaluate isotope ratios (IRs) is a complex process.  The IsoCor package
facilitates this process and renders it reproducible by providing a function to
run a Shiny'-App locally in any web browser.  In this App the user can upload
data files of various formats, select ion traces, apply peak detection and
perform calculation of IRs and delta values.  Results are provided as figures
and tables and can be exported.  The App, therefore, facilitates data processing
of ICP-MS experiments to quickly obtain optimal processing parameters compared
to traditional Excel worksheet based approaches.  A more detailed description
can be found in the corresponding article \"Data processing made easy: standalone
tool for automated calculation of isotope ratio from transient signals â
IsoCor\" by Tukhmetova et al.  in Journal of Analytical Atomic Spectrometry
(JAAS).  The most recent version of IsoCor can be tested online at
<https://jali.shinyapps.io/isocor>.")
    (license license:gpl3+)))

(define-public r-isocir
  (package
    (name "r-isocir")
    (version "2.0-7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isocir" version))
              (sha256
               (base32
                "09cy79zxxj96a3q0izm83yrsmfxkpnqg7w1mcibfglgjg83a8lz3"))))
    (properties `((upstream-name . "isocir")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp r-combinat r-circular))
    (home-page "https://cran.r-project.org/package=isocir")
    (synopsis "Isotonic Inference for Circular Data")
    (description
     "This package provides a bunch of functions to deal with circular data under
order restrictions.")
    (license license:gpl3+)))

(define-public r-isocheck
  (package
    (name "r-isocheck")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsoCheck" version))
              (sha256
               (base32
                "06g0srp14yiha95mbmifaqf5yr5ppjnc20nyr237ah3l776mhsif"))))
    (properties `((upstream-name . "IsoCheck")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-gtools r-dplyr))
    (home-page "https://cran.r-project.org/package=IsoCheck")
    (synopsis
     "Isomorphism Check for Multi-Stage Factorial Designs with Randomization Restrictions")
    (description
     "This package contains functions to check the isomorphism of multi-stage
factorial designs with randomisation restrictions based on balanced spreads and
balanced covering stars of PG(n-1,2) as described in Spencer, Ranjan and
Mendivil (2019) <doi:10.1007/s42519-019-0064-5>.")
    (license license:gpl2)))

(define-public r-isocat
  (package
    (name "r-isocat")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isocat" version))
              (sha256
               (base32
                "1d6pi2l1lfi4226890lsfa02v0df1mc8gi214icsbk4fid4jygsx"))))
    (properties `((upstream-name . "isocat")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-raster r-plyr r-magrittr r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=isocat")
    (synopsis "Isotope Origin Clustering and Assignment Tools")
    (description
     "This resource provides tools to create, compare, and post-process spatial
isotope assignment models of animal origin.  It generates probability-of-origin
maps for individuals based on user-provided tissue and environment isotope
values (e.g., as generated by IsoMAP, Bowen et al. [2013]
<doi:10.1111/2041-210X.12147>) using the framework established in Bowen et al.
(2010) <doi:10.1146/annurev-earth-040809-152429>).  The package isocat can then
quantitatively compare and cluster these maps to group individuals by similar
origin.  It also includes techniques for applying four approaches (cumulative
sum, odds ratio, quantile only, and quantile simulation) with which users can
summarize geographic origins and probable distance traveled by individuals.
Campbell et al. [2020] establishes several of the functions included in this
package <doi:10.1515/ami-2020-0004>.")
    (license license:cc0)))

(define-public r-isocalcr
  (package
    (name "r-isocalcr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isocalcR" version))
              (sha256
               (base32
                "1nn7pd0xj2j3xi5bvd6fvm062h1j0g1nxmp374r313fi2b0qcp0c"))))
    (properties `((upstream-name . "isocalcR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/justinmathias/isocalcR")
    (synopsis "Isotope Calculations in R")
    (description
     "Perform common calculations based on published stable isotope theory, such as
calculating carbon isotope discrimination and intrinsic water use efficiency
from wood or leaf carbon isotope composition.  See Mathias and Hudiburg (2022)
in Global Change Biology <doi:10.1111/gcb.16407>.")
    (license license:gpl3)))

(define-public r-isobxr
  (package
    (name "r-isobxr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isobxr" version))
              (sha256
               (base32
                "18kjymp7lkdnmzsl9cdgqk6x1njqwgp9rsf7z3gi683yfjli7p3g"))))
    (properties `((upstream-name . "isobxr")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-stringr
                             r-shinythemes
                             r-shinyjs
                             r-shinyfiles
                             r-shiny
                             r-rlang
                             r-readxl
                             r-r-utils
                             r-qgraph
                             r-metr
                             r-ggrepel
                             r-ggplot2
                             r-fs
                             r-dt
                             r-dplyr
                             r-desolve
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ttacail/isobxr")
    (synopsis "Stable Isotope Box Modelling in R")
    (description
     "This package provides a set of functions to run simple and composite box-models
to describe the dynamic or static distribution of stable isotopes in open or
closed systems.  The package also allows the sweeping of many parameters in both
static and dynamic conditions.  It also comes with a post-run plotting interface
built under shiny.  The mathematical models used in this package are derived
from Albarede, 1995, Introduction to Geochemical Modelling, Cambridge University
Press, Cambridge <doi:10.1017/CBO9780511622960>.")
    (license license:gpl3)))

(define-public r-isoboost
  (package
    (name "r-isoboost")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isoboost" version))
              (sha256
               (base32
                "1c239l9rfjr8scpfq5c9rl55jabk64jchcdndjsb9s5qyx2x0qdr"))))
    (properties `((upstream-name . "isoboost")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-isotone r-iso))
    (home-page "https://cran.r-project.org/package=isoboost")
    (synopsis "Isotonic Boosting Classification Rules")
    (description
     "In classification problems a monotone relation between some predictors and the
classes may be assumed.  In this package isoboost we propose new boosting
algorithms, based on LogitBoost, that incorporate this isotonicity information,
yielding more accurate and easily interpretable rules.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-iso11784tools
  (package
    (name "r-iso11784tools")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISO11784Tools" version))
              (sha256
               (base32
                "0nl7la7g6028bal6swnfplny81ngpfcrac46nlnpk2d99bpfvfs6"))))
    (properties `((upstream-name . "ISO11784Tools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-stringi r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ISO11784Tools")
    (synopsis "ISO11784 PIT Tag ID Format Converters")
    (description
     "Some tools to assist with converting International Organization for
Standardization (ISO) standard 11784 (ISO11784) animal ID codes between 4
recognised formats commonly displayed on Passive Integrated Transponder (PIT)
tag readers.  The most common formats are 15 digit decimal, e.g.,
999123456789012, and 13 character hexadecimal dot format, e.g., 3E7.1CBE991A14.
These are referred to in this package as isodecimal and isodothex.  The other
two formats are the raw hexadecimal representation of the ISO11784 binary
structure (see <https://en.wikipedia.org/wiki/ISO_11784_and_ISO_11785>).  There
are two flavours of this format, a left and a right variation.  Which flavour a
reader happens to output depends on if the developers decided to reverse the
binary number or not before converting to hexadecimal, a decision based on the
fact that the PIT tags will transmit their binary code Least Significant Bit
(LSB) first, or backwards basically.")
    (license license:gpl3)))

(define-public r-isnullptr
  (package
    (name "r-isnullptr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isnullptr" version))
              (sha256
               (base32
                "0kwjxq59n3qncdw63vsdvz7v5mzbl5lmckdfgiiw35pzmahnxzh9"))))
    (properties `((upstream-name . "isnullptr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=isnullptr")
    (synopsis "Check if an 'externalptr' is a Null Pointer")
    (description
     "Check if an externalptr is a null pointer.  R does currently not have a native
function for that purpose.  This package contains a C function that returns TRUE
in case of a null pointer.")
    (license license:gpl3)))

(define-public r-isni
  (package
    (name "r-isni")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isni" version))
              (sha256
               (base32
                "02a4vbhk26w796kxsyzqfp3bqxn64byfd5x5qma09lmdaxzmm71m"))))
    (properties `((upstream-name . "isni")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnet
                             r-nlme
                             r-mvtnorm
                             r-matrixcalc
                             r-lme4
                             r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=isni")
    (synopsis "Index of Local Sensitivity to Nonignorability")
    (description
     "The current version provides functions to compute, print and summarize the Index
of Sensitivity to Nonignorability (ISNI) in the generalized linear model for
independent data, and in the marginal multivariate Gaussian model and the
mixed-effects models for continuous and binary longitudinal/clustered data.  It
allows for arbitrary patterns of missingness in the regression outcomes caused
by dropout and/or intermittent missingness.  One can compute the sensitivity
index without estimating any nonignorable models or positing specific magnitude
of nonignorability.  Thus ISNI provides a simple quantitative assessment of how
robust the standard estimates assuming missing at random is with respect to the
assumption of ignorability.  For a tutorial, download at
<https://huixie.people.uic.edu/Research/ISNI_R_tutorial.pdf>.	For more details,
see Troxel Ma and Heitjan (2004) and Xie and Heitjan (2004)
<doi:10.1191/1740774504cn005oa> and Ma Troxel and Heitjan (2005)
<doi:10.1002/sim.2107> and Xie (2008) <doi:10.1002/sim.3117> and Xie (2012)
<doi:10.1016/j.csda.2010.11.021> and Xie and Qian (2012) <doi:10.1002/jae.1157>.")
    (license license:gpl2)))

(define-public r-ismev
  (package
    (name "r-ismev")
    (version "1.42")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ismev" version))
              (sha256
               (base32
                "19giigxwf62cdkf7mglsca649n2ignb9bxyg9zl7im1vm3ngnmqd"))))
    (properties `((upstream-name . "ismev")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (home-page "http://www.ral.ucar.edu/~ericg/softextreme.php")
    (synopsis "An Introduction to Statistical Modeling of Extreme Values")
    (description
     "This package provides functions to support the computations carried out in `An
Introduction to Statistical Modeling of Extreme Values by Stuart Coles.  The
functions may be divided into the following groups; maxima/minima, order
statistics, peaks over thresholds and point processes.")
    (license license:gpl2+)))

(define-public r-ism
  (package
    (name "r-ism")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISM" version))
              (sha256
               (base32
                "0by0w6zgnwcwzbmxx16s8mb1avhc6aiavqp0qkxx6hr70vrgb997"))))
    (properties `((upstream-name . "ISM")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsxjars r-xlsx r-rjava))
    (home-page "https://cran.r-project.org/package=ISM")
    (synopsis "Interpretive Structural Modelling (ISM)")
    (description
     "The development of ISM was made by Warfield in 1974.  ISM is the process of
collaborating distinct or related essentials into a simplified and an organized
format.  Hence, ISM is a methodology that seeks the interrelationships among the
various elements considered and endows with a hierarchical and multilevel
structure.  To run this package user needs to provide a matrix (VAXO) converted
into 0's and 1's.  Warfield,J.N. (1974) <doi:10.1109/TSMC.1974.5408524>
Warfield,J.N. (1974, E-ISSN:2168-2909).")
    (license license:gpl3)))

(define-public r-islr2
  (package
    (name "r-islr2")
    (version "1.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISLR2" version))
              (sha256
               (base32
                "0ljz5lb5srilziyqgka4rcp7d5r4hs6jq9fm3gi1g57agn896vyn"))))
    (properties `((upstream-name . "ISLR2")))
    (build-system r-build-system)
    (home-page "https://www.statlearning.com")
    (synopsis "Introduction to Statistical Learning, Second Edition")
    (description
     "We provide the collection of data-sets used in the book An Introduction to
Statistical Learning with Applications in R, Second Edition'.  These include
many data-sets that we used in the first edition (some with minor changes), and
some new datasets.")
    (license license:gpl2)))

(define-public r-islr
  (package
    (name "r-islr")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISLR" version))
              (sha256
               (base32
                "1hr0r00m9y39gzb4q7nip07mhxmaly12zwmwkisyx641h0vcclbi"))))
    (properties `((upstream-name . "ISLR")))
    (build-system r-build-system)
    (home-page "https://www.statlearning.com")
    (synopsis
     "Data for an Introduction to Statistical Learning with Applications in R")
    (description
     "We provide the collection of data-sets used in the book An Introduction to
Statistical Learning with Applications in R'.")
    (license license:gpl2)))

(define-public r-islasso
  (package
    (name "r-islasso")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "islasso" version))
              (sha256
               (base32
                "1dq8i1b7n78nl1hnx0g80gc16ryqpf7x6mv4pz4f6n5fc24c6vx3"))))
    (properties `((upstream-name . "islasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-glmnet))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=islasso")
    (synopsis "The Induced Smoothed Lasso")
    (description
     "An implementation of the induced smoothing (IS) idea to lasso regularization
models to allow estimation and inference on the model coefficients (currently
hypothesis testing only).  Linear, logistic, Poisson and gamma regressions with
several link functions are implemented.  The algorithm is described in the
original paper; see <doi:10.1177/0962280219842890> and discussed in a tutorial
<doi:10.13140/RG.2.2.16360.11521>.")
    (license license:gpl2+)))

(define-public r-island
  (package
    (name "r-island")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "island" version))
              (sha256
               (base32
                "0s76f1i22cnc5c1dzswflq43qgcpssdkb32xc2j0ajy4r8xak7kz"))))
    (properties `((upstream-name . "island")))
    (build-system r-build-system)
    (inputs (list gsl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=island")
    (synopsis "Stochastic Island Biogeography Theory Made Easy")
    (description
     "Develops stochastic models based on the Theory of Island Biogeography (TIB) of
MacArthur and Wilson (1967) <doi:10.1023/A:1016393430551> and extensions.  It
implements methods to estimate colonization and extinction rates (including
environmental variables) given presence-absence data, simulates community
assembly, and performs model selection.")
    (license license:gpl3)))

(define-public r-isingsampler
  (package
    (name "r-isingsampler")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsingSampler" version))
              (sha256
               (base32
                "1cs4vk53b5fy6kywvycfjf62571yx92nvgp5i8hlvms1362ir7gv"))))
    (properties `((upstream-name . "IsingSampler")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-plyr r-nnet r-magrittr r-dplyr))
    (home-page "github.com/SachaEpskamp/IsingSampler")
    (synopsis
     "Sampling Methods and Distribution Functions for the Ising Model")
    (description
     "Sample states from the Ising model and compute the probability of states.
Sampling can be done for any number of nodes, but due to the intractibility of
the Ising model the distribution can only be computed up to ~10 nodes.")
    (license license:gpl2)))

(define-public r-isinglenzmc
  (package
    (name "r-isinglenzmc")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isingLenzMC" version))
              (sha256
               (base32
                "1pd1s3a1rv7vlxd5db1pgwdjps8w5im4zz2h3qzal9cwbis0hb51"))))
    (properties `((upstream-name . "isingLenzMC")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=isingLenzMC")
    (synopsis "Monte Carlo for Classical Ising Model")
    (description
     "Classical Ising Model is a land mark system in statistical physics.The model
explains the physics of spin glasses and magnetic materials, and cooperative
phenomenon in general, for example phase transitions and neural networks.This
package provides utilities to simulate one dimensional Ising Model with
Metropolis and Glauber Monte Carlo with single flip dynamics in periodic
boundary conditions.  Utility functions for exact solutions are provided.")
    (license license:gpl3+)))

(define-public r-isinglandr
  (package
    (name "r-isinglandr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Isinglandr" version))
              (sha256
               (base32
                "1ag8xs2fb3y90gsbgvb3ls6lzbvymdlqfi6kdfh96vxj2hlbf7sb"))))
    (properties `((upstream-name . "Isinglandr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-simlandr
                             r-shinythemes
                             r-shinycssloaders
                             r-shiny
                             r-rlang
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-glue
                             r-ggplot2
                             r-gganimate
                             r-dplyr))
    (home-page "https://sciurus365.github.io/Isinglandr/")
    (synopsis "Landscape Construction and Simulation for Ising Networks")
    (description
     "This package provides a toolbox for constructing potential landscapes for Ising
networks.  The parameters of the networks can be directly supplied by users or
estimated by the IsingFit package by van Borkulo and Epskamp (2016)
<https://CRAN.R-project.org/package=IsingFit> from empirical data.  The Ising
model's Boltzmann distribution is preserved for the potential landscape
function.  The landscape functions can be used for quantifying and visualizing
the stability of network states, as well as visualizing the simulation process.")
    (license license:gpl3+)))

(define-public r-isingfit
  (package
    (name "r-isingfit")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IsingFit" version))
              (sha256
               (base32
                "1prdzzp15klkdy72379bjksdgxr15nk16pqm35w95341cddxchc7"))))
    (properties `((upstream-name . "IsingFit")))
    (build-system r-build-system)
    (propagated-inputs (list r-qgraph r-matrix r-glmnet))
    (home-page "https://cran.r-project.org/package=IsingFit")
    (synopsis "Fitting Ising Models Using the ELasso Method")
    (description
     "This network estimation procedure eLasso, which is based on the Ising model,
combines l1-regularized logistic regression with model selection based on the
Extended Bayesian Information Criterion (EBIC).  EBIC is a fit measure that
identifies relevant relationships between variables.  The resulting network
consists of variables as nodes and relevant relationships as edges.  Can deal
with binary data.")
    (license license:gpl2)))

(define-public r-isfun
  (package
    (name "r-isfun")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iSFun" version))
              (sha256
               (base32
                "14m9wzvs4knq80kvrdqck9f0pyk7hricdclz0f8z9nq85djl4vim"))))
    (properties `((upstream-name . "iSFun")))
    (build-system r-build-system)
    (propagated-inputs (list r-irlba r-caret))
    (home-page "https://cran.r-project.org/package=iSFun")
    (synopsis "Integrative Dimension Reduction Analysis for Multi-Source Data")
    (description
     "The implement of integrative analysis methods based on a two-part penalization,
which realizes dimension reduction analysis and mining the heterogeneity and
association of multiple studies with compatible designs.  The software package
provides the integrative analysis methods including integrative sparse principal
component analysis (Fang et al., 2018), integrative sparse partial least squares
(Liang et al., 2021) and integrative sparse canonical correlation analysis, as
well as corresponding individual analysis and meta-analysis versions.
References: (1) Fang, K., Fan, X., Zhang, Q., and Ma, S. (2018).  Integrative
sparse principal component analysis.  Journal of Multivariate Analysis,
<doi:10.1016/j.jmva.2018.02.002>. (2) Liang, W., Ma, S., Zhang, Q., and Zhu, T.
(2021).  Integrative sparse partial least squares.  Statistics in Medicine,
<doi:10.1002/sim.8900>.")
    (license license:gpl2+)))

(define-public r-isetools
  (package
    (name "r-isetools")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISEtools" version))
              (sha256
               (base32
                "1dj8q1072j7sn7j9s2mjxm12k6kn5gcqpic8jp2k1f3f7b85dbij"))))
    (properties `((upstream-name . "ISEtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-coda))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=ISEtools")
    (synopsis "Ion Selective Electrodes Analysis Methods")
    (description
     "Characterisation and calibration of single or multiple Ion Selective Electrodes
(ISEs); activity estimation of experimental samples.  Implements methods
described in: Dillingham, P.W., Radu, T., Diamond, D., Radu, A. and McGraw, C.M.
(2012) <doi:10.1002/elan.201100510>, Dillingham, P.W., Alsaedi, B.S.O. and
McGraw, C.M. (2017) <doi:10.1109/ICSENS.2017.8233898>, Dillingham, P.W.,
Alsaedi, B.S.O., Radu, A., and McGraw, C.M. (2019) <doi:10.3390/s19204544>, and
Dillingham, P.W., Alsaedi, B.S.O., Granados-Focil, S., Radu, A., and McGraw,
C.M. (2020) <doi:10.1021/acssensors.9b02133>.")
    (license license:gpl2)))

(define-public r-isdparser
  (package
    (name "r-isdparser")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isdparser" version))
              (sha256
               (base32
                "05xkffmiiyhas5hzdjdylbrvh6fjc2fjh7s00iwjxkp4ba7rwq3g"))))
    (properties `((upstream-name . "isdparser")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-lubridate r-data-table))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/isdparserhttps://github.com/ropensci/isdparser")
    (synopsis "Parse 'NOAA' Integrated Surface Data Files")
    (description
     "Tools for parsing NOAA Integrated Surface Data ('ISD') files, described at
<https://www.ncdc.noaa.gov/isd>.  Data includes for example, wind speed and
direction, temperature, cloud data, sea level pressure, and more.  Includes data
from approximately 35,000 stations worldwide, though best coverage is in North
America/Europe/Australia.  Data is stored as variable length ASCII character
strings, with most fields optional.  Included are tools for parsing entire
files, or individual lines of data.")
    (license license:expat)))

(define-public r-isdm
  (package
    (name "r-isdm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iSDM" version))
              (sha256
               (base32
                "1hzs187mwv3k2wx6dpvkizjhkcx63mznd06wiw6047lf5jrlif0a"))))
    (properties `((upstream-name . "iSDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-virtualspecies
                             r-sp
                             r-rgl
                             r-rgdal
                             r-raster
                             r-pdist
                             r-mass
                             r-maptools
                             r-geosphere
                             r-geometry
                             r-colorramps
                             r-ade4))
    (home-page "https://cran.r-project.org/package=iSDM")
    (synopsis "Invasive Species Distribution Modelling")
    (description
     "This package provides functions for predicting and mapping potential and
realized distributions of invasive species within the invaded range.")
    (license license:gpl3)))

(define-public r-isdals
  (package
    (name "r-isdals")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isdals" version))
              (sha256
               (base32
                "04s2w482qpz3ww7hws4plhz9h60py75asm1f40bpqmbffwka57ms"))))
    (properties `((upstream-name . "isdals")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=isdals")
    (synopsis
     "Provides Datasets for Introduction to Statistical Data Analysis for the Life Sciences")
    (description
     "This package provides datasets for the book \"Introduction to Statistical Data
Analysis for the Life Sciences, Second edition\" by EkstrÃ¸m and SÃ¸rensen
(2014).")
    (license license:gpl2)))

(define-public r-iscores
  (package
    (name "r-iscores")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Iscores" version))
              (sha256
               (base32
                "01xv3003yni984dyn0iwnn3kkl05ij8j21cxbmj9jl9zbw44pzi1"))))
    (properties `((upstream-name . "Iscores")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger r-kernlab))
    (home-page "https://cran.r-project.org/package=Iscores")
    (synopsis "Proper Scoring Rules for Missing Value Imputation")
    (description
     "Implementation of a KL-based scoring rule to assess the quality of different
missing value imputations in the broad sense as introduced in Michel et al.
(2021) <arXiv:2106.03742>.")
    (license license:gpl3)))

(define-public r-iscocrosswalks
  (package
    (name "r-iscocrosswalks")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iscoCrosswalks" version))
              (sha256
               (base32
                "00pzz0fy0k7zvi5pf389w4g5z96rbc4gzjvhghcmbq71z319wwcn"))))
    (properties `((upstream-name . "iscoCrosswalks")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-labourr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eworx-org/iscoCrosswalks")
    (synopsis "Crosswalks Between Classifications of Occupations")
    (description
     "Allows the user to perform approximate matching between the occupational
classifications using concordances provided by the Institute for Structural
Research and Faculty of Economics, University of Warsaw,
<doi:10.1111/ecot.12145>.  The crosswalks offer a complete step-by-step mapping
of Standard Occupational Classification (2010) data to the International
Standard Classification of Occupations (2008).  We propose a mapping method
based on the aforementioned research that converts measurements to the smallest
possible unit of the target taxonomy, and then performs an aggregation/estimate
to the requested degree Occupational Hierarchical level.")
    (license license:expat)))

(define-public r-isco08conversions
  (package
    (name "r-isco08conversions")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISCO08ConveRsions" version))
              (sha256
               (base32
                "1vqg28alpjb1m33hzh4ixfd6f3gzc6l9989gpszvl3ishki05xqf"))))
    (properties `((upstream-name . "ISCO08ConveRsions")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ISCO08ConveRsions")
    (synopsis "Converts ISCO-08 to Job Prestige Scores, ISCO-88 and Job Name")
    (description
     "Implementation of functions to assign corresponding common job prestige scores
(SIOPS, ISEI), the official job or group title and the ISCO-88 code to given
ISCO-08 codes.  ISCO-08 is the latest version of the International Standard
Classification of Occupations which is used to organise information on labour
and jobs.")
    (license license:gpl2+)))

(define-public r-isatabr
  (package
    (name "r-isatabr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isatabr" version))
              (sha256
               (base32
                "1qlc6007pbjgzmzii0bwifr0npdhlwnipk0c9yhxc2d85qid5a9m"))))
    (properties `((upstream-name . "isatabr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Biometris/isatabr/")
    (synopsis "Implementation for the ISA Abstract Model")
    (description
     "ISA is a metadata framework to manage an increasingly diverse set of life
science, environmental and biomedical experiments.  In isatabr methods for
reading, modifying and writing of files in the ISA-Tab format are implemented.
It also contains methods for processing assay data.")
    (license license:gpl3)))

(define-public r-isat
  (package
    (name "r-isat")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISAT" version))
              (sha256
               (base32
                "0xlq568spfz527jxbqamrn1j87hnasg0kp2bcyjycaghmhsc6zmg"))))
    (properties `((upstream-name . "ISAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-gtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ISAT")
    (synopsis
     "Extract Cell Density and Nearest Distance Based on 'PerkinElmer InForm' Software Output")
    (description
     "Reads the output of the PerkinElmer InForm software
<http://www.perkinelmer.com/product/inform-cell-analysis-one-seat-cls135781>.
In addition to cell-density count, it can derive statistics of intercellular
spatial distance for each cell-type.")
    (license license:gpl2)))

(define-public r-isar
  (package
    (name "r-isar")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ISAR" version))
              (sha256
               (base32
                "1khcs0azjbmrnn4i6wikrjr92x1w9z0jlrv4an5v59y25i0hwmvb"))))
    (properties `((upstream-name . "ISAR")))
    (build-system r-build-system)
    (home-page "https://github.com/rtelmore/ISAR")
    (synopsis "Introduction to Sports Analytics using R (ISAR) Data")
    (description
     "We provide data sets used in the forthcoming textbook \"Introduction to Sports
Analytics using R\" by Elmore and Urbaczweski (2024).  The package currently
contains sixteen datasets and should be published in early 2024.")
    (license license:expat)))

(define-public r-isa2
  (package
    (name "r-isa2")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "isa2" version))
              (sha256
               (base32
                "0rjwnvmqmzwnch8j2zdh2b0drr76bq3c4f18h2glj44svn2dlmk2"))))
    (properties `((upstream-name . "isa2")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://github.com/gaborcsardi/ISA")
    (synopsis "The Iterative Signature Algorithm")
    (description
     "The ISA is a biclustering algorithm that finds modules in an input matrix.  A
module or bicluster is a block of the reordered input matrix.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-irtshiny
  (package
    (name "r-irtshiny")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRTShiny" version))
              (sha256
               (base32
                "094ax94y6k5z4vlxfla2w19f57q0z32nwwd5npjbgmnkhvfhhl9v"))))
    (properties `((upstream-name . "IRTShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyace
                             r-shiny
                             r-psych
                             r-ltm
                             r-ctt
                             r-beeswarm))
    (home-page "https://cran.r-project.org/package=IRTShiny")
    (synopsis "Item Response Theory via Shiny")
    (description
     "Interactive shiny application for running Item Response Theory analysis.
Provides graphics for characteristic and information curves.")
    (license license:gpl3)))

(define-public r-irtreliability
  (package
    (name "r-irtreliability")
    (version "0.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtreliability" version))
              (sha256
               (base32
                "15qs8bvgrwajj5kfd57rd34l1p2805ilyd7w60ngrqc14d6az9d2"))))
    (properties `((upstream-name . "irtreliability")))
    (build-system r-build-system)
    (propagated-inputs (list r-mirt r-ltm r-fastghquad))
    (home-page "https://cran.r-project.org/package=irtreliability")
    (synopsis "Item Response Theory Reliability")
    (description
     "Estimation of reliability coefficients for ability estimates and sum scores from
item response theory models as defined in Cheng, Y., Yuan, K.-H. and Liu, C.
(2012) <doi:10.1177/0013164411407315> and Kim, S. and Feldt, L. S. (2010)
<doi:10.1007/s12564-009-9062-8>.  The package supports the 3-PL and generalized
partial credit models and includes estimates of the standard errors of the
reliability coefficient estimators, derived in Andersson, B. and Xin, T. (2018)
<doi:10.1177/0013164417713570>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-irtrees
  (package
    (name "r-irtrees")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtrees" version))
              (sha256
               (base32
                "003gmnv2d0xsqd54chadkbd8c8kf8fwr4lza86k6qkfs7d3ifkjm"))))
    (properties `((upstream-name . "irtrees")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=irtrees")
    (synopsis "Estimation of Tree-Based Item Response Models")
    (description
     "Helper functions and example data sets to facilitate the estimation of IRTree
models from data with different shape and using different software.")
    (license license:gpl2+)))

(define-public r-irtq
  (package
    (name "r-irtq")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtQ" version))
              (sha256
               (base32
                "0l46zknn683p8p5p066p27dxmbnddj74ni0s29nipb1c2rp95sqz"))))
    (properties `((upstream-name . "irtQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-statmod
                             r-rlang
                             r-rfast
                             r-reshape2
                             r-purrr
                             r-mirt
                             r-matrix
                             r-janitor
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=irtQ")
    (synopsis "Unidimensional Item Response Theory Modeling")
    (description
     "Fit unidimensional item response theory (IRT) models to a mixture of dichotomous
and polytomous data, calibrate online item parameters (i.e., pretest and
operational items), estimate examinees abilities, and examine the IRT model-data
fit on item-level in different ways as well as provide useful functions related
to IRT analyses such as IRT model-data fit evaluation and differential item
functioning analysis.  The bring.flexmirt() and write.flexmirt() functions were
written by modifying the read.flexmirt() function (Pritikin & Falk (2022)
<doi:10.1177/0146621620929431>).  The bring.bilog() and bring.parscale()
functions were written by modifying the read.bilog() and read.parscale()
functions, respectively (Weeks (2010) <doi:10.18637/jss.v035.i12>).  The
bisection() function was written by modifying the bisection() function (Howard
(2017, ISBN:9780367657918)).  The code of the inverse test characteristic curve
scoring in the est_score() function was written by modifying the irt.eq.tse()
function (GonzÃ¡lez (2014) <doi:10.18637/jss.v059.i07>).")
    (license license:gpl2+)))

(define-public r-irtpwr
  (package
    (name "r-irtpwr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtpwr" version))
              (sha256
               (base32
                "009m14v1frwwqxi0vlvxk740ky34xj4k7pn4csl69yk429r8l9a2"))))
    (properties `((upstream-name . "irtpwr")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random r-mirt r-ggplot2 r-digest
                             r-deriv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/flxzimmer/irtpwr")
    (synopsis
     "Power Analysis for IRT Models Using the Wald, LR, Score, and Gradient Statistics")
    (description
     "Implementation of analytical and sampling-based power analyses for the Wald,
likelihood ratio (LR), score, and gradient tests.  Can be applied to item
response theory (IRT) models that are fitted using marginal maximum likelihood
estimation.  The methods are described in our paper (Zimmer et al. (2022)
<doi:10.1007/s11336-022-09883-5>).")
    (license license:gpl3+)))

(define-public r-irtgui
  (package
    (name "r-irtgui")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtGUI" version))
              (sha256
               (base32
                "1hyabm9wvld1b1gvcn02yyd8j1wrpfmpxkcj505az64lqj4p7yj0"))))
    (properties `((upstream-name . "irtGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-wrightmap
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-readxl
                             r-psych
                             r-mirt
                             r-magrittr
                             r-irtoys))
    (home-page "https://cran.r-project.org/package=irtGUI")
    (synopsis "Item Response Theory Analysis with a Graphic User Interface")
    (description
     "Performing Item Response Theory analysis such as parameter estimation, ability
estimation, data generation, item and model fit analyse, local independence
assumption, dimensionality assumption, wright map, characteristic and
information curves under various models with a user-friendly Graphic User
Interface.")
    (license license:gpl3+)))

(define-public r-irtest
  (package
    (name "r-irtest")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRTest" version))
              (sha256
               (base32
                "0p7xzl02xq0h8ryib18c57i28dcg8z7xqj28xr6ylhs8c7cknvs8"))))
    (properties `((upstream-name . "IRTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-dcurver r-betafunctions))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SeewooLi/IRTest")
    (synopsis
     "Parameter Estimation of Item Response Theory with Estimation of Latent Distribution")
    (description
     "Item response theory (IRT) parameter estimation using marginal maximum
likelihood and expectation-maximization algorithm (Bock & Aitkin, 1981
<doi:10.1007/BF02293801>).  Within parameter estimation algorithm, several
methods for latent distribution estimation are available (Li, 2022
<http://www.riss.kr/link?id=T16374105>).  Reflecting some features of the true
latent distribution, these latent distribution estimation methods can possibly
free the normality assumption on the latent distribution.")
    (license license:gpl3+)))

(define-public r-irtdemo
  (package
    (name "r-irtdemo")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtDemo" version))
              (sha256
               (base32
                "0rpwryybnj7b4bxn0mn1m496y85s2fpqdd78lmdl6jg1ck4j4pb3"))))
    (properties `((upstream-name . "irtDemo")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-fgarch))
    (home-page "https://cran.r-project.org/package=irtDemo")
    (synopsis "Item Response Theory Demo Collection")
    (description
     "Includes a collection of shiny applications to demonstrate or to explore
fundamental item response theory (IRT) concepts such as estimation, scoring, and
multidimensional IRT models.")
    (license license:gpl2+)))

(define-public r-irtbemm
  (package
    (name "r-irtbemm")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRTBEMM" version))
              (sha256
               (base32
                "09siwm2shjb8hhk64r66fspzykzr2r0m011pv8qcl9k7g040mxpi"))))
    (properties `((upstream-name . "IRTBEMM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IRTBEMM")
    (synopsis "Family of Bayesian EMM Algorithm for Item Response Models")
    (description
     "Applying the family of the Bayesian Expectation-Maximization-Maximization (BEMM)
algorithm to estimate: (1) Three parameter logistic (3PL) model proposed by
Birnbaum (1968, ISBN:9780201043105); (2) four parameter logistic (4PL) model
proposed by Barton & Lord (1981) <doi:10.1002/j.2333-8504.1981.tb01255.x>; (3)
one parameter logistic guessing (1PLG) and (4) one parameter logistic
ability-based guessing (1PLAG) models proposed by San MartÃ­n et al (2006)
<doi:10.1177/0146621605282773>.  The BEMM family includes (1) the BEMM algorithm
for 3PL model proposed by Guo & Zheng (2019) <doi:10.3389/fpsyg.2019.01175>; (2)
the BEMM algorithm for 1PLG model and (3) the BEMM algorithm for 1PLAG model
proposed by Guo, Wu, Zheng, & Wang (2018)
<https:www.ncme.org/news/past-meetings/2018-recap>; (4) the BEMM algorithm for
4PL model proposed by Zhang, Guo, & Zheng (2018)
<https:www.ncme.org/news/past-meetings/2018-recap>; and (5) their maximum
likelihood estimation versions proposed by Zheng, Meng, Guo, & Liu (2018)
<doi:10.3389/fpsyg.2017.02302>.  Thus, both Bayesian modal estimates and maximum
likelihood estimates are available.")
    (license license:gpl2+)))

(define-public r-irtawsi
  (package
    (name "r-irtawsi")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irtawsi" version))
              (sha256
               (base32
                "1fxz0k9pyf1h0mv64lj8p1n5yhgmrzs5q0vq8l77sg3zd8gv66pf"))))
    (properties `((upstream-name . "irtawsi")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinycssloaders
                             r-shiny
                             r-rmarkdown
                             r-readxl
                             r-psych
                             r-mirt
                             r-gt
                             r-dt
                             r-diagram
                             r-bs4dash))
    (home-page "https://cran.r-project.org/package=irtawsi")
    (synopsis "Items Response Theory Analysis with Steps and Interpretation")
    (description
     "Analysis of Dichotomous and polytomous data using unidimensional Item Response
Theory model (Chalmers (2012) <doi:10.18637/jss.v048.i06>) with user friendly
Graphical User Interface.  Suitable for beginners who are learning Item Response
Theory.")
    (license license:gpl3+)))

(define-public r-irt
  (package
    (name "r-irt")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irt" version))
              (sha256
               (base32
                "1qckf91pady8gbp0bdbskijyqmmv2d9icb6ihmf0d2r49f37q4fh"))))
    (properties `((upstream-name . "irt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/egonulates/irt")
    (synopsis
     "Item Response Theory and Computerized Adaptive Testing Functions")
    (description
     "This package provides a collection of Item Response Theory (IRT) and
Computerized Adaptive Testing (CAT) functions that are used in psychometrics.")
    (license license:agpl3+)))

(define-public r-irrna
  (package
    (name "r-irrna")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irrNA" version))
              (sha256
               (base32
                "1s50k0vygqh3zcvy5j6h5krv9gfiv8sakmnbf90hpkh0rlirgf88"))))
    (properties `((upstream-name . "irrNA")))
    (build-system r-build-system)
    (home-page "https://CRAN.R-project.org/package=irrNA")
    (synopsis
     "Coefficients of Interrater Reliability â Generalized for Randomly Incomplete Datasets")
    (description
     "This package provides coefficients of interrater reliability that are
generalized to cope with randomly incomplete (i.e.  unbalanced) datasets without
any imputation of missing values or any (row-wise or column-wise) omissions of
actually available data.  Applied to complete (balanced) datasets, these
generalizations yield the same results as the common procedures, namely the
Intraclass Correlation according to McGraw & Wong (1996)
\\doi{10.1037/1082-989X.1.1.30} and the Coefficient of Concordance according to
Kendall & Babington Smith (1939) \\doi{10.1214/aoms/1177732186}.")
    (license license:gpl3)))

(define-public r-irricc
  (package
    (name "r-irricc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irrICC" version))
              (sha256
               (base32
                "0vi5g97kbyhwxz242d1hpqf11izd3kmlzh3997v07md1llcsp6s3"))))
    (properties `((upstream-name . "irrICC")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=irrICC")
    (synopsis
     "Intraclass Correlations for Quantifying Inter-Rater Reliability")
    (description
     "Calculates various intraclass correlation coefficients used to quantify
inter-rater and intra-rater reliability.  The assumption here is that the raters
produced quantitative ratings.  Most of the statistical procedures implemented
in this package are described in details in Gwet, K.L. (2014,
ISBN:978-0970806284): \"Handbook of Inter-Rater Reliability,\" 4th edition,
Advanced Analytics, LLC.")
    (license license:gpl2+)))

(define-public r-irreglong
  (package
    (name "r-irreglong")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IrregLong" version))
              (sha256
               (base32
                "0gavbvmn9m1kamlyg9sb5zxpwq9gc32xcz14m6aqqrdps2xyv3kn"))))
    (properties `((upstream-name . "IrregLong")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-geepack r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://epullenayegum.github.io/IrregLong/")
    (synopsis "Analysis of Longitudinal Data with Irregular Observation Times")
    (description
     "This package provides functions to help with analysis of longitudinal data
featuring irregular observation times, where the observation times may be
associated with the outcome process.  There are functions to quantify the degree
of irregularity, fit inverse-intensity weighted Generalized Estimating Equations
(Lin H, Scharfstein DO, Rosenheck RA (2004)
<doi:10.1111/j.1467-9868.2004.b5543.x>), perform multiple outputation
(Pullenayegum EM (2016) <doi:10.1002/sim.6829>) and fit semi-parametric joint
models (Liang Y (2009) <doi: 10.1111/j.1541-0420.2008.01104.x>).")
    (license license:gpl3)))

(define-public r-irrcac
  (package
    (name "r-irrcac")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irrCAC" version))
              (sha256
               (base32
                "1j9z8vz5zcl51a8qq6maf9sw0dqaknkrai7gp31mzag7b6vwms06"))))
    (properties `((upstream-name . "irrCAC")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=irrCAC")
    (synopsis "Computing Chance-Corrected Agreement Coefficients (CAC)")
    (description
     "Calculates various chance-corrected agreement coefficients (CAC) among 2 or more
raters are provided.  Among the CAC coefficients covered are Cohen's kappa,
Conger's kappa, Fleiss kappa, Brennan-Prediger coefficient, Gwet's AC1/AC2
coefficients, and Krippendorff's alpha.  Multiple sets of weights are proposed
for computing weighted analyses.  All of these statistical procedures are
described in details in Gwet, K.L. (2014,ISBN:978-0970806284): \"Handbook of
Inter-Rater Reliability,\" 4th edition, Advanced Analytics, LLC.")
    (license license:gpl2+)))

(define-public r-irr
  (package
    (name "r-irr")
    (version "0.84.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irr" version))
              (sha256
               (base32
                "1hs4ylqm51smrmgsph7z9arwkz5px2a320acar324fkjdd3yifp7"))))
    (properties `((upstream-name . "irr")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://www.r-project.org")
    (synopsis "Various Coefficients of Interrater Reliability and Agreement")
    (description
     "Coefficients of Interrater Reliability and Agreement for quantitative, ordinal
and nominal data: ICC, Finn-Coefficient, Robinson's A, Kendall's W, Cohen's
Kappa, ...")
    (license license:gpl2+)))

(define-public r-iron
  (package
    (name "r-iron")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRon" version))
              (sha256
               (base32
                "1yl9i6gxzwy5f4qva3a14flzlk1xk7v2m02n0mg8ddchc5n6j3bc"))))
    (properties `((upstream-name . "IRon")))
    (build-system r-build-system)
    (propagated-inputs (list r-scam
                             r-robustbase
                             r-rcpp
                             r-gridextra
                             r-ggpubr
                             r-ggplot2))
    (home-page "https://github.com/nunompmoniz/IRon")
    (synopsis "Solving Imbalanced Regression Tasks")
    (description
     "Imbalanced domain learning has almost exclusively focused on solving
classification tasks, where the objective is to predict cases labelled with a
rare class accurately.  Such a well-defined approach for regression tasks lacked
due to two main factors.  First, standard regression tasks assume that each
value is equally important to the user.  Second, standard evaluation metrics
focus on assessing the performance of the model on the most common cases.  This
package contains methods to tackle imbalanced domain learning problems in
regression tasks, where the objective is to predict extreme (rare) values.  The
methods contained in this package are: 1) an automatic and non-parametric method
to obtain such relevance functions; 2) visualisation tools; 3) suite of
evaluation measures for optimisation/validation processes; 4) the squared-error
relevance area measure, an evaluation metric tailored for imbalanced regression
tasks.  More information can be found in Ribeiro and Moniz (2020)
<doi:10.1007/s10994-020-05900-9>.")
    (license license:cc0)))

(define-public r-irocode
  (package
    (name "r-irocode")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iRoCoDe" version))
              (sha256
               (base32
                "1m2cin8yxpirdnkw6v1lb4w04939dy9qwkaw5w2k8rqjsflr17ay"))))
    (properties `((upstream-name . "iRoCoDe")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iRoCoDe")
    (synopsis "Incomplete Row-Column Designs")
    (description
     "The Row-column designs are widely recommended for experimental situations when
there are two well-identified factors that are cross-classified representing
known sources of variability.  These designs are expected to result a gain in
accuracy of estimating treatment comparisons in an experiment as they eliminate
the effects of the row and column factors.  However, these designs are not
readily available when the number of treatments is more than the levels of row
and column blocking factors.  This package named iRoCoDe generates row-column
designs with incomplete rows and columns, by amalgamating two incomplete block
designs (D1 and D2).  The selection of D1 and D2 (the input designs) can be done
from the available incomplete block designs, viz., balanced incomplete block
designs/ partially balanced incomplete block designs/ t-designs. (Mcsorley,
J.P., Phillips, N.C., Wallis, W.D. and Yucas, J.L.
(2005).<doi:10.1007/s10623-003-6149-9>).")
    (license license:gpl2+)))

(define-public r-irisseismic
  (package
    (name "r-irisseismic")
    (version "1.6.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRISSeismic" version))
              (sha256
               (base32
                "0da4bh5kvlp3dchsz0dyddwpwdvss7aij2xsi2kkppi3hrfwja7j"))))
    (properties `((upstream-name . "IRISSeismic")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-signal
                             r-seismicroll
                             r-rcurl
                             r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IRISSeismic")
    (synopsis "Classes and Methods for Seismic Data Analysis")
    (description
     "This package provides classes and methods for seismic data analysis.  The base
classes and methods are inspired by the python code found in the ObsPy python
toolbox <https://github.com/obspy/obspy>.  Additional classes and methods
support data returned by web services provided by the IRIS DMC
<http://service.iris.edu/>.")
    (license license:gpl2+)))

(define-public r-irismustangmetrics
  (package
    (name "r-irismustangmetrics")
    (version "2.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRISMustangMetrics" version))
              (sha256
               (base32
                "1gcz9s7vxpvfxljkjn4f54m5cmiji4j3v2f7vk6wdc7hm904afzp"))))
    (properties `((upstream-name . "IRISMustangMetrics")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-signal
                             r-seismicroll
                             r-rcurl
                             r-pracma
                             r-irisseismic
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=IRISMustangMetrics")
    (synopsis "Statistics and Metrics for Seismic Data")
    (description
     "Classes and functions for metrics calculation as part of the IRIS DMC MUSTANG
project.  The functionality in this package builds upon the base classes of the
IRISSeismic package.  Metrics include basic statistics as well as higher level
health metrics that can help identify problematic seismometers.")
    (license license:gpl2+)))

(define-public r-irishdirectorates
  (package
    (name "r-irishdirectorates")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IrishDirectorates" version))
              (sha256
               (base32
                "1mwjrmqga7f0p5w2m4f0i6mb68jimx6791pz03r8iqj3yx0vzkh0"))))
    (properties `((upstream-name . "IrishDirectorates")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=IrishDirectorates")
    (synopsis
     "Dynamic Bipartite Latent Space Model to Analyse Irish Companies' Boards from 2003 to 2013")
    (description
     "This package provides the dataset and an implementation of the method
illustrated in Friel, N., Rastelli, R., Wyse, J. and Raftery, A.E. (2016)
<DOI:10.1073/pnas.1606295113>.")
    (license license:gpl3)))

(define-public r-irg
  (package
    (name "r-irg")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irg" version))
              (sha256
               (base32
                "1c9v5yk1512ga51356fjyl8zblw61p9m55vx89fy81qi0vcwxrgj"))))
    (properties `((upstream-name . "irg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpproll r-data-table r-chk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/robitalec/irg")
    (synopsis "Instantaneous Rate of Green Up")
    (description
     "Fits a double logistic function to NDVI time series and calculates instantaneous
rate of green (IRG) according to methods described in Bischoff et al. (2012)
<doi:10.1086/667590>.")
    (license license:gpl3)))

(define-public r-irexamples
  (package
    (name "r-irexamples")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRexamples" version))
              (sha256
               (base32
                "0a8b5bfjg0f5l2awg1q80xb9i0fbvss466z7j61lzpps83059w9r"))))
    (properties `((upstream-name . "IRexamples")))
    (build-system r-build-system)
    (propagated-inputs (list r-twang
                             r-tigris
                             r-tidygeocoder
                             r-tidycensus
                             r-survey
                             r-sf
                             r-rvest
                             r-rstanarm
                             r-rselenium
                             r-maps
                             r-ggthemes
                             r-ggplot2
                             r-geodist
                             r-forcats
                             r-dplyr
                             r-disimpact))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vinhdizzo/IRexamples")
    (synopsis
     "Collection of Practical Institutional Research Examples and Tutorials")
    (description
     "This package provides examples of code for analyzing data or accomplishing tasks
that may be useful to institutional or educational researchers.")
    (license license:gpl3)))

(define-public r-irescale
  (package
    (name "r-irescale")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Irescale" version))
              (sha256
               (base32
                "037bzli0zwlfbf5xmllqg2pi0shs33ggrnw69kzyw2sf780y3hs2"))))
    (properties `((upstream-name . "Irescale")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-reshape2
                             r-rdpack
                             r-imager
                             r-ggplot2
                             r-fbasics
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://github.tamu.edu/jivfur/rectifiedI")
    (synopsis "Calculate and Rectify Moran's I")
    (description
     "This package provides a scaling method to obtain a standardized Moran's I
measure.  Moran's I is a measure for the spatial autocorrelation of a data set,
it gives a measure of similarity between data and its surrounding.  The range of
this value must be [-1,1], but this does not happen in practice.  This package
scale the Moran's I value and map it into the theoretical range of [-1,1].  Once
the Moran's I value is rescaled, it facilitates the comparison between projects,
for instance, a researcher can calculate Moran's I in a city in China, with a
sample size of n1 and area of interest a1.  Another researcher runs a similar
experiment in a city in Mexico with different sample size, n2, and an area of
interest a2.  Due to the differences between the conditions, it is not possible
to compare Moran's I in a straightforward way.  In this version of the package,
the spatial autocorrelation Moran's I is calculated as proposed in Chen(2013)
<arXiv:1606.03658>.")
    (license license:gpl2+)))

(define-public r-irepro
  (package
    (name "r-irepro")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iRepro" version))
              (sha256
               (base32
                "1sqg1n83m1308v6bk8ilra8w01frqyd8vpvmv63rllxz38r3vyhz"))))
    (properties `((upstream-name . "iRepro")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iRepro")
    (synopsis "Reproducibility for Interval-Censored Data")
    (description
     "Calculates intraclass correlation coefficient (ICC) for assessing
reproducibility of interval-censored data with two repeated measurements
(Kovacic and Varnai (2014) <doi:10.1097/EDE.0000000000000139>).  ICC is
estimated by maximum likelihood from model with one fixed and one random effect
(both intercepts).  Help in model checking (normality of subjects means and
residuals) is provided.")
    (license license:gpl3)))

(define-public r-iregression
  (package
    (name "r-iregression")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iRegression" version))
              (sha256
               (base32
                "1kwsrmsflmqan96aj0dczlszfww1dlg6rwycyid52f7ghg9810rn"))))
    (properties `((upstream-name . "iRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (home-page "https://cran.r-project.org/package=iRegression")
    (synopsis "Regression Methods for Interval-Valued Variables")
    (description
     "This package contains some important regression methods for interval-valued
variables.  For each method, it is available the fitted values, residuals and
some goodness-of-fit measures.")
    (license license:gpl2+)))

(define-public r-ircor
  (package
    (name "r-ircor")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ircor" version))
              (sha256
               (base32
                "07apa4l4ib11xw25d44b403s3la29sqlid13q41hjrlfxafm91ld"))))
    (properties `((upstream-name . "ircor")))
    (build-system r-build-system)
    (home-page "https://github.com/julian-urbano/ircor/")
    (synopsis "Correlation Coefficients for Information Retrieval")
    (description
     "This package provides implementation of various correlation coefficients of
common use in Information Retrieval.  In particular, it includes Kendall (1970,
isbn:0852641990) tau coefficient as well as tau_a and tau_b for the treatment of
ties.  It also includes Yilmaz et al. (2008) <doi:10.1145/1390334.1390435> tauAP
correlation coefficient, and versions tauAP_a and tauAP_b developed by Urbano
and Marrero (2017) <doi:10.1145/3121050.3121106> to cope with ties.")
    (license license:expat)))

(define-public r-irccheck
  (package
    (name "r-irccheck")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IRCcheck" version))
              (sha256
               (base32
                "035sx36qf5hdnc51h8251qwxfm30r8h2v2qs2x161ip4cqghw019"))))
    (properties `((upstream-name . "IRCcheck")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-mass r-glmnet r-ggmncv r-corpcor))
    (home-page "https://cran.r-project.org/package=IRCcheck")
    (synopsis "Irrepresentable Condition Check")
    (description
     "Check the irrepresentable condition (IRC) in both L1-regularized regression
<doi:10.1109/TIT.2006.883611> and Gaussian graphical models.  The IRC requires
that the important and unimportant variables are not correlated, at least not
all that much, and it is necessary for consistent model selection.  Exploring
the IRC as a function of the number of variables, assumed sparsity, and effect
size can provide valuable insights into the model selection properties of
L1-regularization.")
    (license license:expat)))

(define-public r-irboost
  (package
    (name "r-irboost")
    (version "0.1-1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irboost" version))
              (sha256
               (base32
                "179l9693b2x1nxmj60gml4rsqa6kwvfhpf43gwwgwm12r918hjcc"))))
    (properties `((upstream-name . "irboost")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-mpath))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=irboost")
    (synopsis "Iteratively Reweighted Boosting for Robust Analysis")
    (description
     "Fit a predictive model with the iteratively reweighted boosting (IRBoost) that
minimizes the robust loss functions in the CC-family (concave-convex).  The
convex optimization is conducted by functional descent boosting algorithm in the
R package xgboost'.  The IRBoost reduces the weight of the observation that
leads to a large loss; it also provides weights to help identify outliers.
Applications include the robust generalized linear models and extensions, where
the mean is related to the predictors by boosting, and robust accelerated
failure time models.  The package supersedes the R package ccboost'.  Wang
(2021) <arXiv:2101.07718>.")
    (license license:gpl3+)))

(define-public r-irafnet
  (package
    (name "r-irafnet")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iRafNet" version))
              (sha256
               (base32
                "0w9bry49apkrrrabglnv5w9l47jakmc30jh8q22a8gazwss293fb"))))
    (properties `((upstream-name . "iRafNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr))
    (home-page "https://www.r-project.org")
    (synopsis
     "Integrative Random Forest for Gene Regulatory Network Inference")
    (description
     "This package provides a flexible integrative algorithm that allows information
from prior data, such as protein protein interactions and gene knock-down, to be
jointly considered for gene regulatory network inference.")
    (license license:gpl2+)))

(define-public r-iraceplot
  (package
    (name "r-iraceplot")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iraceplot" version))
              (sha256
               (base32
                "1cnhpbgv04d8nm4qj1ayc927hd9yjiasg7xcx8aigl6fli01qddq"))))
    (properties `((upstream-name . "iraceplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-viridislite
                             r-truncnorm
                             r-tidyr
                             r-tibble
                             r-rmarkdown
                             r-rlang
                             r-plotly
                             r-matrixstats
                             r-knitr
                             r-irace
                             r-gridextra
                             r-ggplot2
                             r-ggforce
                             r-forcats
                             r-dt
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://auto-optimization.github.io/iraceplot/")
    (synopsis "Plots for Visualizing the Data Produced by the 'irace' Package")
    (description
     "Graphical visualization tools for analyzing the data produced by irace'.  The
iraceplot package enables users to analyze the performance and the parameter
space data sampled by the configuration during the search process.  It provides
a set of functions that generate different plots to visualize the configurations
sampled during the execution of irace and their performance.  The functions just
require the log file generated by irace and, in some cases, they can be used
with user-provided data.")
    (license license:expat)))

(define-public r-irace
  (package
    (name "r-irace")
    (version "3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "irace" version))
              (sha256
               (base32
                "1x0b0qr1ccq3s4d6k3z6dz94z4caxsmaywwdalw4isd7lm28d4nr"))))
    (properties `((upstream-name . "irace")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://mlopez-ibanez.github.io/irace/")
    (synopsis "Iterated Racing for Automatic Algorithm Configuration")
    (description
     "Iterated race is an extension of the Iterated F-race method for the automatic
configuration of optimization algorithms, that is, (offline) tuning their
parameters by finding the most appropriate settings given a set of instances of
an optimization problem.  M. LÃ³pez-IbÃ¡Ã±ez, J. Dubois-Lacoste, L. PÃ©rez
CÃ¡ceres, T. StÃ¼tzle, and M. Birattari (2016) <doi:10.1016/j.orp.2016.09.002>.")
    (license license:gpl2+)))

(define-public r-ir
  (package
    (name "r-ir")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ir" version))
              (sha256
               (base32
                "1ck5247w5lxffd2x3jrslfx13jigik48xmcnkr7my2kzjmnqiyr1"))))
    (properties `((upstream-name . "ir")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-signal
                             r-rlang
                             r-rdpack
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-hyperspec
                             r-ggplot2
                             r-dplyr
                             r-chemospec
                             r-baseline))
    (native-inputs (list r-knitr))
    (home-page "https://henningte.github.io/ir/")
    (synopsis "Functions to Handle and Preprocess Infrared Spectra")
    (description
     "This package provides functions to import and handle infrared spectra (import
from .csv and Thermo Galactic's .spc', baseline correction, binning, clipping,
interpolating, smoothing, averaging, adding, subtracting, dividing, multiplying,
plotting).")
    (license license:gpl3)))

(define-public r-iqcc
  (package
    (name "r-iqcc")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IQCC" version))
              (sha256
               (base32
                "1zalpmyywkrnci0jd8irakjhiqmr52zhj1sbxf9pz5c7wks2rdbc"))))
    (properties `((upstream-name . "IQCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-qcc r-misctools r-mass))
    (home-page "https://flaviobarros.github.io/IQCC")
    (synopsis "Improved Quality Control Charts")
    (description
     "Builds statistical control charts with exact limits for univariate and
multivariate cases.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-iq
  (package
    (name "r-iq")
    (version "1.9.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iq" version))
              (sha256
               (base32
                "0nklhggsh8z8r7s39ssw22fkiy52wwgggpx2majsi6bmyj2w3arh"))))
    (properties `((upstream-name . "iq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tvpham/iq")
    (synopsis "Protein Quantification in Mass Spectrometry-Based Proteomics")
    (description
     "An implementation of the MaxLFQ algorithm by Cox et al. (2014)
<doi:10.1074/mcp.M113.031591> in a comprehensive pipeline for processing
proteomics data in data-independent acquisition mode (Pham et al.  2020
<doi:10.1093/bioinformatics/btz961>).  It offers additional options for protein
quantification using the N most intense fragment ions, using all fragment ions,
and a wrapper for the median polish algorithm by Tukey (1977, ISBN:0201076160).
In general, the tool can be used to integrate multiple proportional observations
into a single quantitative value.")
    (license license:bsd-3)))

(define-public r-ipwerrory
  (package
    (name "r-ipwerrory")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipwErrorY" version))
              (sha256
               (base32
                "14p22mwc120kdlf6r1hfx4kp7nqrz2nl2vpvy45j8rbrc571b6ka"))))
    (properties `((upstream-name . "ipwErrorY")))
    (build-system r-build-system)
    (propagated-inputs (list r-nleqslv))
    (home-page "https://cran.r-project.org/package=ipwErrorY")
    (synopsis
     "Inverse Probability Weighted Estimation of Average Treatment Effect with Misclassified Binary Outcome")
    (description
     "An implementation of the correction methods proposed by Shu and Yi (2017)
<doi:10.1177/0962280217743777> for the inverse probability weighted (IPW)
estimation of average treatment effect (ATE) with misclassified binary outcomes.
 Logistic regression model is assumed for treatment model for all implemented
correction methods, and is assumed for the outcome model for the implemented
doubly robust correction method.  Misclassification probability given a true
value of the outcome is assumed to be the same for all individuals.")
    (license license:gpl2+)))

(define-public r-ipwcoxcsv
  (package
    (name "r-ipwcoxcsv")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipwCoxCSV" version))
              (sha256
               (base32
                "0avnvf4pnpxnik3iwwglpwkc8h0vsx9v6fxldkbvq7l9bphdbba1"))))
    (properties `((upstream-name . "ipwCoxCSV")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=ipwCoxCSV")
    (synopsis
     "Inverse Probability Weighted Cox Model with Corrected Sandwich Variance")
    (description
     "An implementation of corrected sandwich variance (CSV) estimation method for
making inference of marginal hazard ratios (HR) in inverse probability weighted
(IPW) Cox model without and with clustered data, proposed by Shu, Young, Toh,
and Wang (2019) in their paper under revision for Biometrics.  Both conventional
inverse probability weights and stabilized weights are implemented.  Logistic
regression model is assumed for propensity score model.")
    (license license:gpl2+)))

(define-public r-ipwboxplot
  (package
    (name "r-ipwboxplot")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPWboxplot" version))
              (sha256
               (base32
                "07qvdflwmyy0406xkkgja31cggfv4pak2hhnhh8fwggj2zkj9z8n"))))
    (properties `((upstream-name . "IPWboxplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-isotone))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IPWboxplot")
    (synopsis "Adapted Boxplot to Missing Observations")
    (description
     "Boxplots adapted to the happenstance of missing observations where drop-out
probabilities can be given by the practitioner or modelled using auxiliary
covariates.  The paper of \"Zhang, Z., Chen, Z., Troendle, J. F. and Zhang,
J.(2012) <doi:10.1111/j.1541-0420.2011.01712.x>\", proposes estimators of
marginal quantiles based on the Inverse Probability Weighting method.")
    (license license:gpl2+)))

(define-public r-ipw
  (package
    (name "r-ipw")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipw" version))
              (sha256
               (base32
                "12acf71pc0xxpr5h1vhx8kxjlr5kymyhld97pp4bkikw5jykfl2a"))))
    (properties `((upstream-name . "ipw")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-nnet r-mass r-geepack))
    (home-page "https://cran.r-project.org/package=ipw")
    (synopsis "Estimate Inverse Probability Weights")
    (description
     "This package provides functions to estimate the probability to receive the
observed treatment, based on individual characteristics.  The inverse of these
probabilities can be used as weights when estimating causal effects from
observational data via marginal structural models.  Both point treatment
situations and longitudinal studies can be analysed.  The same functions can be
used to correct for informative censoring.")
    (license license:gpl2+)))

(define-public r-ipv
  (package
    (name "r-ipv")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPV" version))
              (sha256
               (base32
                "0h1x2scmwgzl7i0kk4pf7kfq55yiqn065s5r944rrfk09y9g2vgy"))))
    (properties `((upstream-name . "IPV")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-matrix
                             r-lavaan
                             r-ggplot2
                             r-ggforce))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NilsPetras/IPV")
    (synopsis "Item Pool Visualization")
    (description
     "Generate plots based on the Item Pool Visualization concept for latent
constructs.  Item Pool Visualizations are used to display the conceptual
structure of a set of items (self-report or psychometric).  Dantlgraber,
Stieger, & Reips (2019) <doi:10.1177/2059799119884283>.")
    (license license:gpl2)))

(define-public r-ipumsr
  (package
    (name "r-ipumsr")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipumsr" version))
              (sha256
               (base32
                "1zyd5yvasz8012hhwqihvbbsw8jc6si51gi8zzsqb4vvjwlp5ch3"))))
    (properties `((upstream-name . "ipumsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zeallot
                             r-xml2
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-readr
                             r-r6
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-hipread
                             r-haven
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://www.ipums.org")
    (synopsis "Read 'IPUMS' Extract Files")
    (description
     "An easy way to import census, survey and geographic data provided by IPUMS into
R plus tools to help use the associated metadata to make analysis easier.  IPUMS
data describing 1.4 billion individuals drawn from over 750 censuses and surveys
is available free of charge from our website <https://www.ipums.org>.")
    (license (license:fsdg-compatible "Mozilla Public License 2.0"))))

(define-public r-ipsfs
  (package
    (name "r-ipsfs")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipsfs" version))
              (sha256
               (base32
                "1cpa0m19nddpp852vyiqw0azx8idyaqv225akfyrych9y8kw9n4d"))))
    (properties `((upstream-name . "ipsfs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ipsfs")
    (synopsis
     "Intuitionistic, Pythagorean, and Spherical Fuzzy Similarity Measure")
    (description
     "Advanced fuzzy logic based techniques are implemented to compute the similarity
among different objects or items.  Typically, application areas consist of
transforming raw data into the corresponding advanced fuzzy logic representation
and determining the similarity between two objects using advanced fuzzy
similarity techniques in various fields of research, such as text
classification, pattern recognition, software projects, decision-making, medical
diagnosis, and market prediction.  Functions are designed to compute the
membership, non-membership, hesitant-membership, indeterminacy-membership, and
refusal-membership for the input matrices.  Furthermore, it also includes a
large number of advanced fuzzy logic based similarity measure functions to
compute the Intuitionistic fuzzy similarity (IFS), Pythagorean fuzzy similarity
(PFS), and Spherical fuzzy similarity (SFS) between two objects or items based
on their fuzzy relationships.  It also includes working examples for each
function with sample data sets.")
    (license license:gpl2)))

(define-public r-ipsecr
  (package
    (name "r-ipsecr")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipsecr" version))
              (sha256
               (base32
                "103qifpm0bgqqkx9r67h8bgd2i8nd05k90lflvxzcb8n6vfrzicv"))))
    (properties `((upstream-name . "ipsecr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-secr
                             r-rcpparmadillo
                             r-rcpp
                             r-nlme
                             r-mass
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MurrayEfford/ipsecr/")
    (synopsis "Spatially Explicit Capture-Recapture by Inverse Prediction")
    (description
     "Estimates the density of a spatially distributed animal population sampled with
an array of passive detectors, such as traps.  Models incorporating
distance-dependent detection are fitted by simulation and inverse prediction as
proposed by Efford (2004) <doi:10.1111/j.0030-1299.2004.13043.x>.")
    (license license:gpl2+)))

(define-public r-iprior
  (package
    (name "r-iprior")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iprior" version))
              (sha256
               (base32
                "15qzqwikxy85fcd7psz363b5wb0kpi85icfyb47hbgdhln8fi2qb"))))
    (properties `((upstream-name . "iprior")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-ggplot2
                             r-foreach
                             r-dosnow))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/haziqj/iprior")
    (synopsis "Regression Modelling using I-Priors")
    (description
     "This package provides methods to perform and analyse I-prior regression models.
Estimation is done either via direct optimisation of the log-likelihood or an EM
algorithm.")
    (license license:gpl3+)))

(define-public r-ipr
  (package
    (name "r-ipr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipr" version))
              (sha256
               (base32
                "1db06r784c6jga0anp6p5b3k47yfhr84nzxyjn52pc9zkg3yifjm"))))
    (properties `((upstream-name . "ipr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ipr")
    (synopsis "Iterative Proportional Repartition Algorithm")
    (description
     "Let us consider a sample of patients who can suffer from several diseases
simultaneously, in a given set of diseases.  The goal of the implemented
algorithm is to estimate the individual average cost of each disease, starting
from the global health costs available for each patient.")
    (license license:gpl2+)))

(define-public r-ippp
  (package
    (name "r-ippp")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPPP" version))
              (sha256
               (base32
                "19ccs25fd56ns7ssi51w2jzjd4d57vyimwmfvf27mmigb537bd5y"))))
    (properties `((upstream-name . "IPPP")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IPPP")
    (synopsis "Inhomogeneous Poisson Point Processes")
    (description
     "Generates random numbers corresponding to the events on a Poisson point process
with changing event rates.  This includes the possibility to incorporate
additional information such as the number of events occurring or the location of
an already known event.  It can also generate the probability density functions
of specific events in the cases where additional information is available.
Based on Hohmann (2019) <arXiv:1901.10754>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-ipmr
  (package
    (name "r-ipmr")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipmr" version))
              (sha256
               (base32
                "0zpw73bqv9gblyxaprkhb8f9dva0ivv47bjriyb3265vlzyd088c"))))
    (properties `((upstream-name . "ipmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpp r-purrr r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://padrinoDB.github.io/ipmr/")
    (synopsis "Integral Projection Models")
    (description
     "Flexibly implements Integral Projection Models using a mathematical(ish) syntax.
 This package will not help with the vital rate modeling process, but will help
convert those regression models into an IPM. ipmr handles density dependence and
environmental stochasticity, with a couple of options for implementing the
latter.  In addition, provides functions to avoid unintentional eviction of
individuals from models.  Additionally, provides model diagnostic tools,
plotting functionality, stochastic/deterministic simulations, and analysis
tools.  Integral projection models are described in depth by Easterling et al.
(2000) <doi:10.1890/0012-9658(2000)081[0694:SSSAAN]2.0.CO;2>, Merow et al.
(2013) <doi:10.1111/2041-210X.12146>, Rees et al. (2014)
<doi:10.1111/1365-2656.12178>, and Metcalf et al. (2015)
<doi:10.1111/2041-210X.12405>.  Williams et al. (2012) <doi:10.1890/11-2147.1>
discuss the problem of unintentional eviction.")
    (license license:expat)))

(define-public r-ipmbook
  (package
    (name "r-ipmbook")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPMbook" version))
              (sha256
               (base32
                "152y6d949jjfdfmcjfi0g4p2d02pmqgamxmx5bi3wb352jbjxl08"))))
    (properties `((upstream-name . "IPMbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-abind))
    (home-page "https://www.vogelwarte.ch/de/projekte/publikationen/ipm/")
    (synopsis "Functions and Data for the Book 'Integrated Population Models'")
    (description
     "This package provides functions and data sets to accompany the book Integrated
Population Models: Theory and Ecological Applications with R and JAGS by Michael
Schaub and Marc KÃ©ry (ISBN: 9780128205648).")
    (license license:gpl3+)))

(define-public r-iplots
  (package
    (name "r-iplots")
    (version "1.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iplots" version))
              (sha256
               (base32
                "01s8a43s2spxgmp6px5dpd96p8f4sfp98nxmxk763hg2868rksx3"))))
    (properties `((upstream-name . "iplots")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava r-png))
    (home-page "http://www.iPlots.org/")
    (synopsis "iPlots - Interactive Graphics for R")
    (description "Interactive plots for R.")
    (license license:gpl2)))

(define-public r-iplookupapi
  (package
    (name "r-iplookupapi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iplookupapi" version))
              (sha256
               (base32
                "1lkla7jz4jhpxb9bd1nzgr4ks5r6i0ng2dxidyv3072fxlpvih5p"))))
    (properties `((upstream-name . "iplookupapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://iplookupapi.com")
    (synopsis "Client for the 'iplookupapi.com' IP Lookup API")
    (description
     "An R client for the iplookupapi.com IP Lookup API. The API requires registration
of an API key.  Basic features are free, some require a paid subscription.  You
can find the full API documentation at <https://iplookupapi.com/docs> .")
    (license license:expat)))

(define-public r-iplgp
  (package
    (name "r-iplgp")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPLGP" version))
              (sha256
               (base32
                "0sv4zl6kn72ajnp32k9xg011y0bjxsq3a0vcj3s0w4wwkcr1h2w5"))))
    (properties `((upstream-name . "IPLGP")))
    (build-system r-build-system)
    (propagated-inputs (list r-sommer r-ggplot2))
    (home-page "https://github.com/py-chung/IPLGP")
    (synopsis "Identification of Parental Lines via Genomic Prediction")
    (description
     "Combining genomic prediction with Monte Carlo simulation, three different
strategies are implemented to select parental lines for multiple traits in plant
breeding.  The selection strategies include (i) GEBV-O considers only genomic
estimated breeding values (GEBVs) of the candidate individuals; (ii) GD-O
considers only genomic diversity (GD) of the candidate individuals; and (iii)
GEBV-GD considers both GEBV and GD. The above method can be seen in Chung PY,
Liao CT (2020) <doi:10.1371/journal.pone.0243159>.  Multi-trait genomic best
linear unbiased prediction (MT-GBLUP) model is used to simultaneously estimate
GEBVs of the target traits, and then a selection index is adopted to evaluate
the composite performance of an individual.")
    (license license:gpl2)))

(define-public r-ipkg
  (package
    (name "r-ipkg")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipkg" version))
              (sha256
               (base32
                "0y1gqc61fqjai3vfsn0rdjd0r8g46ls2jvb97h6gfhdafgfxrq7f"))))
    (properties `((upstream-name . "ipkg")))
    (build-system r-build-system)
    (propagated-inputs (list r-remotes))
    (home-page "https://gitlab.com/chuxinyuan/ipkg")
    (synopsis "Install R Packages on GitHub from Hub.fastgit.xyz")
    (description
     "When you want to install an R package on GitHub, but you can't access GitHub,
this function helps you download and install the package from another website
<https://hub.fastgit.xyz/>, which is in real-time sync with GitHub.")
    (license license:expat)))

(define-public r-ipft
  (package
    (name "r-ipft")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipft" version))
              (sha256
               (base32
                "0jifmkwac5yfl110200ljm3pas3321j068af9xqzqs0av20m8hps"))))
    (properties `((upstream-name . "ipft")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2 r-dplyr r-cluster r-apcluster))
    (home-page "https://cran.r-project.org/package=ipft")
    (synopsis "Indoor Positioning Fingerprinting Toolset")
    (description
     "Algorithms and utility functions for indoor positioning using fingerprinting
techniques.  These functions are designed for manipulation of RSSI (Received
Signal Strength Intensity) data sets, estimation of positions,comparison of the
performance of different models, and graphical visualization of data.  Machine
learning algorithms and methods such as k-nearest neighbors or probabilistic
fingerprinting are implemented in this package to perform analysis and
estimations over RSSI data sets.")
    (license license:gpl2+)))

(define-public r-ipfr
  (package
    (name "r-ipfr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipfr" version))
              (sha256
               (base32
                "0q44zw5g76qfqrqv6w2a8p905n4ljxab9jmyqk6fv9vs8j2kyivg"))))
    (properties `((upstream-name . "ipfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-mlr r-magrittr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dkyleward/ipfr")
    (synopsis "List Balancing for Reweighting and Population Synthesis")
    (description
     "This package performs iterative proportional updating given a seed table and an
arbitrary number of marginal distributions.  This is commonly used in population
synthesis, survey raking, matrix rebalancing, and other applications.  For
example, a household survey may be weighted to match the known distribution of
households by size from the census.  An origin/ destination trip matrix might be
balanced to match traffic counts.  The approach used by this package is based on
a paper from Arizona State University (Ye, Xin, et.  al. (2009)
<http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.537.723&rep=rep1&type=pdf>).
 Some enhancements have been made to their work including primary and secondary
target balance/importance, general marginal agreement, and weight restriction.")
    (license license:asl2.0)))

(define-public r-ipfp
  (package
    (name "r-ipfp")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipfp" version))
              (sha256
               (base32
                "00588swwr7gz7gjx0clz55fgi4rm2h715fdmhsgm171bdmakh20r"))))
    (properties `((upstream-name . "ipfp")))
    (build-system r-build-system)
    (home-page "https://github.com/awblocker/ipfp")
    (synopsis
     "Fast Implementation of the Iterative Proportional Fitting Procedure in C")
    (description
     "This package provides a fast (C) implementation of the iterative proportional
fitting procedure.")
    (license license:asl2.0)))

(define-public r-ipflasso
  (package
    (name "r-ipflasso")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipflasso" version))
              (sha256
               (base32
                "0gf1yj35vr92qi59hffcf4hzrh2b439kfd6m745wgpxq6wic1hs3"))))
    (properties `((upstream-name . "ipflasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-glmnet))
    (home-page "https://cran.r-project.org/package=ipflasso")
    (synopsis "Integrative Lasso with Penalty Factors")
    (description
     "The core of the package is cvr2.ipflasso(), an extension of glmnet to be used
when the (large) set of available predictors is partitioned into several
modalities which potentially differ with respect to their information content in
terms of prediction.  For example, in biomedical applications patient outcome
such as survival time or response to therapy may have to be predicted based on,
say, mRNA data, miRNA data, methylation data, CNV data, clinical data, etc.  The
clinical predictors are on average often much more important for outcome
prediction than the mRNA data.  The ipflasso method takes this problem into
account by using different penalty parameters for predictors from different
modalities.  The ratio between the different penalty parameters can be chosen
from a set of optional candidates by cross-validation or alternatively generated
from the input data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ipedsuploadables
  (package
    (name "r-ipedsuploadables")
    (version "2.7.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPEDSuploadables" version))
              (sha256
               (base32
                "0rj1d87im7jxw9kyb82irxsanrqmn9fa29347yjn51lj8wqdgkwm"))))
    (properties `((upstream-name . "IPEDSuploadables")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-svdialogs
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AlisonLanski/IPEDSuploadables")
    (synopsis
     "Transforms Institutional Data into Text Files for IPEDS Automated Import/Upload")
    (description
     "Starting from user-supplied institutional data, these scripts transform,
aggregate, and reshape the information to produce key-value pair data files that
are able to be uploaded to IPEDS (Integrated Postsecondary Education Data
System) through their submission portal <https://surveys.nces.ed.gov/ipeds/>.
Starting data specifications can be found in the vignettes.  Final files are
saved locally to a location of the user's choice.  User-friendly readable files
can also be produced for purposes of data review and validation.")
    (license license:expat)))

(define-public r-ipeds
  (package
    (name "r-ipeds")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPEDS" version))
              (sha256
               (base32
                "122v4m3lf5ix10a1ihw1qi8w975iamscaqg2vc5f5k6z8dy9s6ph"))))
    (properties `((upstream-name . "IPEDS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rlang r-readr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IPEDS")
    (synopsis "Data from the Integrated Post-Secondary Education Data System")
    (description
     "This package contains data on Post-Secondary Institution Statistics in 2020
<https://nces.ed.gov/ipeds/use-the-data>.  The package allows easy access to a
wide variety of information regarding Post-secondary Institutions, its students,
faculty, and their demographics, financial aid, educational and recreational
offerings, and completions.  This package can be used by students, college
counselors, or involved parents interested in pursuing higher education,
considering their options, and securing admission into their school of choice.")
    (license license:expat)))

(define-public r-ipec
  (package
    (name "r-ipec")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPEC" version))
              (sha256
               (base32
                "1f5draxw3q26d03h6mcyc8zrd1gmizmc0v01sppdnx8a21878rqz"))))
    (properties `((upstream-name . "IPEC")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mass))
    (home-page "https://cran.r-project.org/package=IPEC")
    (synopsis "Root Mean Square Curvature Calculation")
    (description
     "Calculates the RMS intrinsic and parameter-effects curvatures of a nonlinear
regression model.  The curvatures are global measures of assessing whether a
model/data set combination is close-to-linear or not.  See Bates and Watts
(1980) <doi:10.1002/9780470316757> and Ratkowsky and Reddy (2017)
<doi:10.1093/aesa/saw098> for details.")
    (license license:gpl2+)))

(define-public r-ipeadatar
  (package
    (name "r-ipeadatar")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipeadatar" version))
              (sha256
               (base32
                "1j600mhvy023ry9hx8ib6wqdv4mip1cjbwzs9190v8qpc9r2a460"))))
    (properties `((upstream-name . "ipeadatar")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sjlabelled
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gomesleduardo/ipeadatar")
    (synopsis "API Wrapper for 'Ipeadata'")
    (description
     "Allows direct access to the macroeconomic, financial and regional database
maintained by Brazilian Institute for Applied Economic Research ('Ipea').  This
R package uses the Ipeadata API. For more information, see
<http://www.ipeadata.gov.br/>.")
    (license license:expat)))

(define-public r-ipdw
  (package
    (name "r-ipdw")
    (version "2.0-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipdw" version))
              (sha256
               (base32
                "0lgxassvdd8vc4fyc84rbwwgdis7h4p5psqxxyb7xznm3zdzxc7h"))))
    (properties `((upstream-name . "ipdw")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-raster r-gdistance))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsta/ipdw")
    (synopsis "Spatial Interpolation by Inverse Path Distance Weighting")
    (description
     "This package provides functions are provided to interpolate geo-referenced point
data via Inverse Path Distance Weighting.  Useful for coastal marine
applications where barriers in the landscape preclude interpolation with
Euclidean distances.")
    (license license:gpl2+)))

(define-public r-ipdfromkm
  (package
    (name "r-ipdfromkm")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPDfromKM" version))
              (sha256
               (base32
                "1pqi6cshiha4gnra25fgpggyi42mn2hg25s9m9mh091rn5km44q0"))))
    (properties `((upstream-name . "IPDfromKM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-readbitmap r-gridextra r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=IPDfromKM")
    (synopsis "Map Digitized Survival Curves Back to Individual Patient Data")
    (description
     "An implementation to reconstruct individual patient data from Kaplan-Meier (K-M)
survival curves, visualize and assess the accuracy of the reconstruction, then
perform secondary analysis on the reconstructed data.  We involve a simple
function to extract the coordinates form the published K-M curves.  The function
is developed based on Poisot T. âs digitize package (2011)
<doi:10.32614/RJ-2011-004> .  For more complex and tangled together graphs,
digitizing software, such as DigitizeIt (for MAC or windows) or ScanIt'(for
windows) can be used to get the coordinates.  Additional information should also
be involved to increase the accuracy, like numbers of patients at risk (often
reported at 5-10 time points under the x-axis of the K-M graph), total number of
patients, and total number of events.  The package implements the modified
iterative K-M estimation algorithm (modified-iKM) improved upon the approach
proposed by Guyot (2012) <doi:10.1186/1471-2288-12-9> with some modifications.")
    (license license:gpl2)))

(define-public r-ipdfilecheck
  (package
    (name "r-ipdfilecheck")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPDFileCheck" version))
              (sha256
               (base32
                "1y0qq6q98lq1srsp1mlb7mr9zn2v4j7gpzim9fgh3xarw6a89i0h"))))
    (properties `((upstream-name . "IPDFileCheck")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyverse
                             r-tidyselect
                             r-testthat
                             r-stringr
                             r-lubridate
                             r-lmtest
                             r-kableextra
                             r-hash
                             r-gtsummary
                             r-gmodels
                             r-effsize
                             r-eeptools
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IPDFileCheck")
    (synopsis
     "Basic Functions to Check Readability, Consistency, and Content of an Individual Participant Data File")
    (description
     "Basic checks needed with an individual level participant data from randomised
controlled trial.  This checks files for existence, read access and individual
columns for formats.  The checks on format is currently implemented for gender
and age formats.")
    (license license:gpl3)))

(define-public r-ipcwswitch
  (package
    (name "r-ipcwswitch")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipcwswitch" version))
              (sha256
               (base32
                "12z16c8sv1nhdv70kwx1a0wh588znkv5y5r0s9kcws0n3rjhzh9p"))))
    (properties `((upstream-name . "ipcwswitch")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=ipcwswitch")
    (synopsis
     "Inverse Probability of Censoring Weights to Deal with Treatment Switch in Randomized Clinical Trials")
    (description
     "This package contains functions for formatting clinical trials data and
implementing inverse probability of censoring weights to handle treatment
switches when estimating causal treatment effect in randomized clinical trials.")
    (license license:gpl3)))

(define-public r-ipcwk
  (package
    (name "r-ipcwk")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPCWK" version))
              (sha256
               (base32
                "0hah1xl6zli0346jh57rjc5x8vynhaysj0l481rmvznsghv6im23"))))
    (properties `((upstream-name . "IPCWK")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mass))
    (home-page "https://cran.r-project.org/package=IPCWK")
    (synopsis "Kendall's Tau Partial Corr. for Survival Trait and Biomarkers")
    (description
     "We propose the inverse probability-of-censoring weighted (IPCW) Kendall's tau to
measure the association of the survival trait with biomarkers and Kendall's
partial correlation to reflect the relationship of the survival trait with
interaction variable conditional on main effects, as described in Wang and Chen
(2020) <doi:10.1093/bioinformatics/btaa017>.")
    (license license:gpl2+)))

(define-public r-ipcaps
  (package
    (name "r-ipcaps")
    (version "1.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IPCAPS" version))
              (sha256
               (base32
                "17ifkgjjnvvcc8dp065ng4ad9lr85lcdcb401vi84yy8m2llbypw"))))
    (properties `((upstream-name . "IPCAPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmixmod
                             r-matrix
                             r-mass
                             r-lpcm
                             r-kris
                             r-fpc
                             r-expm
                             r-apcluster))
    (home-page "https://gitlab.com/kris.ccp/ipcaps")
    (synopsis "Iterative Pruning to Capture Population Structure")
    (description
     "An unsupervised clustering algorithm based on iterative pruning is for capturing
population structure.  This version supports ordinal data which can be applied
directly to SNP data to identify fine-level population structure and it is built
on the iterative pruning Principal Component Analysis ('ipPCA') algorithm as
explained in Intarapanich et al. (2009) <doi:10.1186/1471-2105-10-382>.  The
IPCAPS involves an iterative process using multiple splits based on multivariate
Gaussian mixture modeling of principal components and Expectation-Maximization
clustering as explained in Lebret et al. (2015) <doi:10.18637/jss.v067.i06>.  In
each iteration, rough clusters and outliers are also identified using the
function rubikclust() from the R package KRIS'.")
    (license license:gpl3)))

(define-public r-ipc
  (package
    (name "r-ipc")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipc" version))
              (sha256
               (base32
                "07bl1yj1y0dd56zmqip73rvbzzciwi5lafvqfhz0zxlk6pzyqfpj"))))
    (properties `((upstream-name . "ipc")))
    (build-system r-build-system)
    (propagated-inputs (list r-txtq r-shiny r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fellstat/ipc")
    (synopsis "Tools for Message Passing Between Processes")
    (description
     "This package provides tools for passing messages between R processes.  Shiny
examples are provided showing how to perform useful tasks such as: updating
reactive values from within a future, progress bars for long running async
tasks, and interrupting async tasks based on user input.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-ipbase
  (package
    (name "r-ipbase")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipbase" version))
              (sha256
               (base32
                "0adddq34pvgwf535sliy455y9mlk1qfjln8w9wjjjjlg8vi166bg"))))
    (properties `((upstream-name . "ipbase")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://ipbase.com")
    (synopsis "Client for the 'ipbase.com' IP Geolocation API")
    (description
     "An R client for the ipbase.com IP Geolocation API. The API requires registration
of an API key.  Basic features are free, some require a paid subscription.  You
can find the full API documentation at <https://ipbase.com/docs> .")
    (license license:expat)))

(define-public r-ipadmixture
  (package
    (name "r-ipadmixture")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipADMIXTURE" version))
              (sha256
               (base32
                "1fl7nyxg7gakjdggdc311wf037zaxwpqsw3ax7liq1pvw6flb9h7"))))
    (properties `((upstream-name . "ipADMIXTURE")))
    (build-system r-build-system)
    (propagated-inputs (list r-treemap r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DarkEyes/ipADMIXTURE")
    (synopsis "Iterative Pruning Population Admixture Inference Framework")
    (description
     "This package provides a data clustering package based on admixture ratios (Q
matrix) of population structure.  The framework is based on iterative Pruning
procedure that performs data clustering by splitting a given population into
subclusters until meeting the condition of stopping criteria the same as ipPCA,
iNJclust, and IPCAPS frameworks.  The package also provides a function to
retrieve phylogeny tree that construct a neighbor-joining tree based on a
similar matrix between clusters.  By given multiple Q matrices with varying a
number of ancestors (K), the framework define a similar value between clusters
i,j as a minimum number K* that makes majority of members of two clusters are in
the different clusters.  This K* reflexes a minimum number of ancestors we need
to splitting cluster i,j into different clusters if we assign K* clusters based
on maximum admixture ratio of individuals.  The publication of this package is
at Chainarong Amornbunchornvej, Pongsakorn Wangkumhang, and Sissades Tongsima
(2020) <doi:10.1101/2020.03.21.001206>.")
    (license license:gpl3)))

(define-public r-ipaddress
  (package
    (name "r-ipaddress")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipaddress" version))
              (sha256
               (base32
                "1b3w2iq3zbfmnch9wi26l0jra4784ykazimxdd4gkkqf972yk4vf"))))
    (properties `((upstream-name . "ipaddress")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-rlang r-rcpp r-cli r-asioheaders))
    (native-inputs (list r-knitr))
    (home-page "https://davidchall.github.io/ipaddress/")
    (synopsis "Data Analysis for IP Addresses and Networks")
    (description
     "Classes and functions for working with IP (Internet Protocol) addresses and
networks, inspired by the Python ipaddress module.  Offers full support for both
IPv4 and IPv6 (Internet Protocol versions 4 and 6) address spaces.  It is
specifically designed to work well with the tidyverse'.")
    (license license:expat)))

(define-public r-ipa
  (package
    (name "r-ipa")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ipa" version))
              (sha256
               (base32
                "029vz7pb37vnqm7x6h53p0y7z0nx2s36yklyfn9sz21gknsi983j"))))
    (properties `((upstream-name . "ipa")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi))
    (home-page "https://github.com/rossellhayes/ipa")
    (synopsis "Convert Between Phonetic Alphabets")
    (description
     "Converts character vectors between phonetic representations.  Supports IPA
(International Phonetic Alphabet), X-SAMPA (Extended Speech Assessment Methods
Phonetic Alphabet), and ARPABET (used by the CMU Pronouncing Dictionary).")
    (license license:expat)))

(define-public r-ip2proxy
  (package
    (name "r-ip2proxy")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ip2proxy" version))
              (sha256
               (base32
                "0h0krm4sli400mmk8jw9jnxlp773barnyx3z66y45iqr3m23z6lx"))))
    (properties `((upstream-name . "ip2proxy")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-reticulate r-maps r-jsonlite r-ggplot2))
    (home-page "https://cran.r-project.org/package=ip2proxy")
    (synopsis "Lookup for IP Address Proxy Information")
    (description
     "Enable user to find the IP addresses which are used as VPN anonymizer, open
proxies, web proxies and Tor exits.  The package lookup the proxy IP address
from IP2Proxy BIN Data file.  You may visit <https://lite.ip2location.com> for
free database download.")
    (license license:expat)))

(define-public r-ip2location
  (package
    (name "r-ip2location")
    (version "8.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ip2location" version))
              (sha256
               (base32
                "1nbqg4nnhxwcwi9kgbyjkikdwh8djglxkrw0lcqfvaqn4n7qf1i5"))))
    (properties `((upstream-name . "ip2location")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-reticulate r-maps r-jsonlite r-ggplot2))
    (home-page "https://github.com/ip2location/ip2location-r")
    (synopsis "Lookup for IP Address Information")
    (description
     "Enables the user to find the country, region, district, city, coordinates, zip
code, time zone, ISP, domain name, connection type, area code, weather, Mobile
Country Code, Mobile Network Code, mobile brand name, elevation, usage type,
address type, IAB category and Autonomous system information that any IP address
or hostname originates from.  Supported IPv4 and IPv6.  Please visit
<https://www.ip2location.com> to learn more.  You may also want to visit
<https://lite.ip2location.com> for free database download.  This package
requires IP2Location Python module.  At the terminal, please run pip install
IP2Location to install the module.")
    (license license:expat)))

(define-public r-iotarelr
  (package
    (name "r-iotarelr")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iotarelr" version))
              (sha256
               (base32
                "0bs2m5528cq4lsq33cs77n16hpd72bcbv64axyw95jbk71s48zrx"))))
    (properties `((upstream-name . "iotarelr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpp r-gridextra r-ggplot2 r-ggalluvial))
    (native-inputs (list r-knitr))
    (home-page "https://fberding.github.io/iotarelr/")
    (synopsis "Iota Inter Coder Reliability for Content Analysis")
    (description
     "Routines and tools for assessing the quality of content analysis on the basis of
the Iota Reliability Concept.  The concept is inspired by item response theory
and can be applied to any kind of content analysis which uses a standardized
coding scheme and discrete categories.  It is also applicable for content
analysis conducted by artificial intelligence.  The package provides reliability
measures for a complete scale as well as for every single category.  Analysis of
subgroup-invariance and error corrections are implemented.  This information can
support the development process of a coding scheme and allows a detailed
inspection of the quality of the generated data.  Equations and formulas working
in this package are part of Berding et al. (2022)<doi:10.3389/feduc.2022.818365>
and Berding and Pargmann (2022) <doi:10.30819/5581>.")
    (license license:gpl3)))

(define-public r-iotables
  (package
    (name "r-iotables")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iotables" version))
              (sha256
               (base32
                "1xs6hfr1h8mpm2ksbrx7kjqi01rvgfczsnxmv70czwpsc3lbzrdf"))))
    (properties `((upstream-name . "iotables")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-readxl
                             r-plyr
                             r-magrittr
                             r-lubridate
                             r-knitr
                             r-kableextra
                             r-glue
                             r-forcats
                             r-eurostat
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://iotables.dataobservatory.eu/")
    (synopsis
     "Reproducible Input-Output Economics Analysis, Economic and Environmental Impact Assessment with Empirical Data")
    (description
     "Pre-processing and basic analytical tasks related to working with Eurostat's
symmetric input-output tables and provide basic input-output economics
calculations.  The package is part of rOpenGov <http://ropengov.github.io/> to
open source open government initiatives.")
    (license license:expat)))

(define-public r-iosmooth
  (package
    (name "r-iosmooth")
    (version "0.94")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iosmooth" version))
              (sha256
               (base32
                "06xgzhjgb6pznjzfli193q7kn8sh5jmqsssgymwj98bw7iwn4q3z"))))
    (properties `((upstream-name . "iosmooth")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iosmooth")
    (synopsis "Functions for Smoothing with Infinite Order Flat-Top Kernels")
    (description
     "Density, spectral density, and regression estimation using infinite order
flat-top kernels.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-iopsych
  (package
    (name "r-iopsych")
    (version "0.90.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iopsych" version))
              (sha256
               (base32
                "0adxwxnb1zdlld3icdggx7cq6cp8z4h1jf105485w322a8c6s9ik"))))
    (properties `((upstream-name . "iopsych")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mco))
    (home-page "https://cran.r-project.org/package=iopsych")
    (synopsis "Methods for Industrial/Organizational Psychology")
    (description "Collection of functions for IO Psychologists.")
    (license license:bsd-3)))

(define-public r-ionr
  (package
    (name "r-ionr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ionr" version))
              (sha256
               (base32
                "18rv5n5gihb6pz36s45yj17sdjsbj4485k4lnggdjj1gbbjkz2ni"))))
    (properties `((upstream-name . "ionr")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-gplots))
    (home-page "www.ut.ee/uku.vainik/ion/")
    (synopsis "Test for Indifference of Indicator")
    (description
     "This package provides item exclusion procedure, which is a formal method to test
Indifference Of iNdicator (ION).  When a latent personality trait-outcome
association is assumed, then the association strength should not depend on which
subset of indicators (i.e.  items) has been chosen to reflect the trait.
Personality traits are often measured (reflected) by a sum-score of a certain
set of indicators.  Item exclusion procedure randomly excludes items from a
sum-score and tests, whether the sum-score - outcome correlation changes.  ION
has been achieved, when any item can be excluded from the sum-score without the
sum-score - outcome correlation substantially changing .  For more details, see
Vainik, Mottus et.  al, (2015) \"Are Trait-Outcome Associations Caused by Scales
or Particular Items? Example Analysis of Personality Facets and BMI\",European
Journal of Personality DOI: <10.1002/per.2009> .")
    (license license:gpl2+)))

(define-public r-ioncopy
  (package
    (name "r-ioncopy")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ioncopy" version))
              (sha256
               (base32
                "133ay7xvdigs4q9yx5bcwdgsgrgzk2n6xn412dkq3bg95pp1angr"))))
    (properties `((upstream-name . "ioncopy")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip r-shiny))
    (home-page "https://cran.r-project.org/package=ioncopy")
    (synopsis "Calling Copy Number Alterations in Amplicon Sequencing Data")
    (description
     "Method for the calculation of copy numbers and calling of copy number
alterations.  The algorithm uses coverage data from amplicon sequencing of a
sample cohort as input.  The method includes significance assessment, correction
for multiple testing and does not depend on normal DNA controls.  Budczies (2016
Mar 15) <doi:10.18632/oncotarget.7451>.")
    (license license:gpl3)))

(define-public r-iols
  (package
    (name "r-iols")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IOLS" version))
              (sha256
               (base32
                "0s7yrkps61czsf1avvmb1xcq53v92pfikq949a4i46lsyidl69ib"))))
    (properties `((upstream-name . "IOLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-sandwich r-randomcolor r-matlib
                             r-boot))
    (home-page "https://cran.r-project.org/package=IOLS")
    (synopsis "Iterated Ordinary Least Squares Regression")
    (description
     "Addresses the log of zero by developing a new family of estimators called
iterated Ordinary Least Squares.  This family nests standard approaches such as
log-linear and Poisson regressions, offers several computational advantages, and
corresponds to the correct way to perform the popular log(Y + 1) transformation.
 For more details about how to use it, see the notebook at:
<https://www.davidbenatia.com/>.")
    (license license:gpl3)))

(define-public r-iohexperimenter
  (package
    (name "r-iohexperimenter")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IOHexperimenter" version))
              (sha256
               (base32
                "0aacliznncl488rjsnx02pfj1mchhcyb36v816g959ll38pvc6bk"))))
    (properties `((upstream-name . "IOHexperimenter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magrittr r-bh r-assertthat))
    (home-page "https://github.com/IOHprofiler/IOHexperimenter")
    (synopsis "Benchmarking Part of the 'IOHprofiler'")
    (description
     "The benchmarking module for the Iterative Optimization Heuristics Profiler
('IOHprofiler').  This module provides benchmarking in the IOHprofiler format,
which can be visualized using the IOHanalyzer module.")
    (license license:bsd-3)))

(define-public r-iohanalyzer
  (package
    (name "r-iohanalyzer")
    (version "0.1.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IOHanalyzer" version))
              (sha256
               (base32
                "1y8qvjm9mrdfxzgxyn5w8798gay0mf4l5lw7s845bcglpyr91q6p"))))
    (properties `((upstream-name . "IOHanalyzer")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-shiny
                             r-reshape2
                             r-rcpp
                             r-rcolorbrewer
                             r-plotly
                             r-magrittr
                             r-knitr
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-colorspace
                             r-colorramps))
    (home-page "http://iohprofiler.liacs.nl")
    (synopsis "Data Analysis Part of 'IOHprofiler'")
    (description
     "The data analysis module for the Iterative Optimization Heuristics Profiler
('IOHprofiler').  This module provides statistical analysis methods for the
benchmark data generated by optimization heuristics, which can be visualized
through a web-based interface.  The benchmark data is usually generated by the
experimentation module, called IOHexperimenter'.  IOHanalyzer also supports the
widely used COCO (Comparing Continuous Optimisers) data format for benchmarking.")
    (license license:bsd-3)))

(define-public r-ioanalysis
  (package
    (name "r-ioanalysis")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ioanalysis" version))
              (sha256
               (base32
                "0nprfqhwy5j11f5xgzaz8iw991cvgdcdmfca8sdvw8mci0cwkh5m"))))
    (properties `((upstream-name . "ioanalysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-plot3d r-lpsolve r-ggplot2))
    (home-page "http://www.real.illinois.edu")
    (synopsis "Input Output Analysis")
    (description
     "Calculates fundamental IO matrices (Leontief, Wassily W. (1951)
<doi:10.1038/scientificamerican1051-15>); within period analysis via various
rankings and coefficients (Sonis and Hewings (2006)
<doi:10.1080/09535319200000013>, Blair and Miller (2009)
<ISBN:978-0-521-73902-3>, Antras et al (2012) <doi:10.3386/w17819>, Hummels,
Ishii, and Yi (2001) <doi:10.1016/S0022-1996(00)00093-3>); across period
analysis with impact analysis (Dietzenbacher, van der Linden, and Steenge (2006)
<doi:10.1080/09535319300000017>, Sonis, Hewings, and Guo (2006)
<doi:10.1080/09535319600000002>); and a variety of table operators.")
    (license license:gpl2+)))

(define-public r-io
  (package
    (name "r-io")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "io" version))
              (sha256
               (base32
                "1cyl8wvbngdrdkkckng1bs699rjp737j99kbd8r155fjj0370nx4"))))
    (properties `((upstream-name . "io")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-filenamer))
    (home-page "https://bitbucket.org/djhshih/io")
    (synopsis "Unified Framework for Input-Output Operations in R")
    (description
     "One function to read files.  One function to write files.  One function to
direct plots to screen or file.  Automatic file format inference and directory
structure creation.")
    (license license:gpl3+)))

(define-public r-inzightts
  (package
    (name "r-inzightts")
    (version "1.5.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNZightTS" version))
              (sha256
               (base32
                "0mzyyl5a6ii7s84bzm7wqm0amdxpjc421vka28bd7884f5f5v791"))))
    (properties `((upstream-name . "iNZightTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-patchwork
                             r-magrittr
                             r-gridextra
                             r-glue
                             r-ggtext
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-colorspace))
    (home-page "http://inzight.nz")
    (synopsis "Time Series for 'iNZight'")
    (description
     "This package provides a collection of functions for working with time series
data, including functions for drawing, decomposing, and forecasting.  Includes
capabilities to compare multiple series and fit both additive and multiplicative
models.  Used by iNZight', a graphical user interface providing easy exploration
and visualisation of data for students of statistics, available in both desktop
and online versions.  Holt (1957) <doi:10.1016/j.ijforecast.2003.09.015>,
Winters (1960) <doi:10.1287/mnsc.6.3.324>, Cleveland, Cleveland, & Terpenning
(1990) \"STL: A Seasonal-Trend Decomposition Procedure Based on Loess\".")
    (license license:gpl3)))

(define-public r-inzighttools
  (package
    (name "r-inzighttools")
    (version "1.13.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNZightTools" version))
              (sha256
               (base32
                "1cla8s690wf219q33qw8s5zzlpjgq7k27i9am4wxl59ycgn4p7n3"))))
    (properties `((upstream-name . "iNZightTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-units
                             r-tidyr
                             r-tibble
                             r-survey
                             r-stringr
                             r-srvyr
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-forcats
                             r-dplyr
                             r-dbplyr
                             r-dbi))
    (home-page "https://inzight.nz")
    (synopsis "Tools for 'iNZight'")
    (description
     "This package provides a collection of wrapper functions for common variable and
dataset manipulation workflows primarily used by iNZight', a graphical user
interface providing easy exploration and visualisation of data for students of
statistics, available in both desktop and online versions.  Additionally, many
of the functions return the tidyverse code used to obtain the result in an
effort to bridge the gap between GUI and coding.")
    (license license:gpl3)))

(define-public r-inzightregression
  (package
    (name "r-inzightregression")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNZightRegression" version))
              (sha256
               (base32
                "1qlakpx509cfj9r6g0pw28s5wwjg9i0srvhjhzarq4myxzqd78yq"))))
    (properties `((upstream-name . "iNZightRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-patchwork
                             r-multcomp
                             r-inzightplots
                             r-ggtext
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-dplyr
                             r-car))
    (home-page "https://inzight.nz")
    (synopsis "Tools for Exploring Regression Models with 'iNZight'")
    (description
     "This package provides a suite of functions to use with regression models,
including summaries, residual plots, and factor comparisons.  Used as part of
the Model Fitting module of iNZight', a graphical user interface providing easy
exploration and visualisation of data for students of statistics, available in
both desktop and online versions.")
    (license license:gpl3)))

(define-public r-inzightplots
  (package
    (name "r-inzightplots")
    (version "2.15.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNZightPlots" version))
              (sha256
               (base32
                "0h4s7wgia8knkksjvidjkkyzvwmr4w7qhc36f6ppjhlyzik0dmkp"))))
    (properties `((upstream-name . "iNZightPlots")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-survey
                             r-stringr
                             r-scales
                             r-s20x
                             r-rlang
                             r-quantreg
                             r-magrittr
                             r-lubridate
                             r-inzighttools
                             r-inzightmr
                             r-hms
                             r-hexbin
                             r-expss
                             r-emmeans
                             r-dichromat
                             r-colorspace
                             r-chron
                             r-boot))
    (home-page "https://inzight.nz")
    (synopsis "Graphical Tools for Exploring Data with 'iNZight'")
    (description
     "Simple plotting function(s) for exploratory data analysis with flexible options
allowing for easy plot customisation.  The goal is to make it easy for beginners
to start exploring a dataset through simple R function calls, as well as provide
a similar interface to summary statistics and inference information.  Includes
functionality to generate interactive HTML-driven graphs.  Used by iNZight', a
graphical user interface providing easy exploration and visualisation of data
for students of statistics, available in both desktop and online versions.")
    (license license:gpl3)))

(define-public r-inzightmr
  (package
    (name "r-inzightmr")
    (version "2.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNZightMR" version))
              (sha256
               (base32
                "0c37bdpypl4kv3s4hxc7xzxiwa6fsbqxwhyi98hh3mfdj329p1m8"))))
    (properties `((upstream-name . "iNZightMR")))
    (build-system r-build-system)
    (home-page "https://inzight.nz")
    (synopsis "Tools for Exploring Multiple Response Data")
    (description
     "Interaction and analysis of multiple response data, along with other tools for
analysing these types of data including missing value analysis and calculation
of standard errors for a range of covariance matrix results (proportions,
multinomial, independent samples, and multiple response).")
    (license license:gpl3)))

(define-public r-invstableprior
  (package
    (name "r-invstableprior")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InvStablePrior" version))
              (sha256
               (base32
                "1nkbly897prbffdrcrxdvr16f6ipm3if1dg3rm35jcl2ksya6snd"))))
    (properties `((upstream-name . "InvStablePrior")))
    (build-system r-build-system)
    (propagated-inputs (list r-nimble r-fdrtool))
    (home-page "https://cran.r-project.org/package=InvStablePrior")
    (synopsis "Inverse Stable Prior for Widely-Used Exponential Models")
    (description
     "This package contains functions that allow Bayesian inference on a parameter of
some widely-used exponential models.  The functions can generate independent
samples from the closed-form posterior distribution using the inverse stable
prior.  Inverse stable is a non-conjugate prior for a parameter of an
exponential subclass of discrete and continuous data distributions (e.g.
Poisson, exponential, inverse gamma, double exponential (Laplace),
half-normal/half-Gaussian, etc.).  The prior class provides flexibility in
capturing a wide array of prior beliefs (right-skewed and left-skewed) as
modulated by a parameter that is bounded in (0,1).  The generated samples can be
used to simulate the prior and posterior predictive distributions.  More details
can be found in Cahoy and Sedransk (2019) <doi:10.1007/s42519-018-0027-2>.  The
package can also be used as a teaching demo for introductory Bayesian courses.")
    (license license:gpl3+)))

(define-public r-invlt
  (package
    (name "r-invlt")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "invLT" version))
              (sha256
               (base32
                "0dcr2cclgzkvsw1lysmjrkwgahas96rjc328yc7a1a56pf62kw2v"))))
    (properties `((upstream-name . "invLT")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=invLT")
    (synopsis "Inversion of Laplace-Transformed Functions")
    (description
     "This package provides two functions for the numerical inversion of
Laplace-Transformed functions, returning the value of the standard (time) domain
function at a specified value.  The first algorithm is the first optimum contour
algorithm described by Evans and Chung (2000)[1].  The second algorithm uses the
Bromwich contour as per the definition of the inverse Laplace Transform.  The
latter is unstable for numerical inversion and mainly included for comparison or
interest.  There are also some additional functions provided for utility,
including plotting and some simple Laplace Transform examples, for which there
are known analytical solutions.  Polar-cartesian conversion functions are
included in this package and are used by the inversion functions. [1] Evans &
Chung, 2000: Laplace transform inversions using optimal contours in the complex
plane; International Journal of Computer Mathematics v73 pp531-543.")
    (license license:expat)))

(define-public r-invgauss
  (package
    (name "r-invgauss")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "invGauss" version))
              (sha256
               (base32
                "0zpyn5cb0mv4095flvgsy5p34f03xkm13r4yqfy0gfqy92xm26fz"))))
    (properties `((upstream-name . "invGauss")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-optimx))
    (home-page "http://www.uib.no/smis/gjessing/projects/invgauss/")
    (synopsis
     "Threshold Regression that Fits the (Randomized Drift) Inverse Gaussian Distribution to Survival Data")
    (description
     "Fits the (randomized drift) inverse Gaussian distribution to survival data.  The
model is described in Aalen OO, Borgan O, Gjessing HK. Survival and Event
History Analysis.  A Process Point of View.  Springer, 2008.  It is based on
describing time to event as the barrier hitting time of a Wiener process, where
drift towards the barrier has been randomized with a Gaussian distribution.  The
model allows covariates to influence starting values of the Wiener process
and/or average drift towards a barrier, with a user-defined choice of link
functions.")
    (license license:gpl2+)))

(define-public r-investr
  (package
    (name "r-investr")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "investr" version))
              (sha256
               (base32
                "12hrvi3gi3hwianjnzfir4771kbrfbcy35xmfksp0lxrfxvm61ra"))))
    (properties `((upstream-name . "investr")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bgreenwell/investr")
    (synopsis "Inverse Estimation/Calibration Functions")
    (description
     "This package provides functions to facilitate inverse estimation (e.g.,
calibration) in linear, generalized linear, nonlinear, and (linear)
mixed-effects models.  A generic function is also provided for plotting fitted
regression models with or without confidence/prediction bands that may be of use
to the general user.  For a general overview of these methods, see Greenwell and
Schubert Kabban (2014) <doi:10.32614/RJ-2014-009>.")
    (license license:gpl2+)))

(define-public r-invertiforms
  (package
    (name "r-invertiforms")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "invertiforms" version))
              (sha256
               (base32
                "0n3ksfdryk0g6f60acxh4i9f5z6gi9bsbal95z9pcd1vgvyhr1xw"))))
    (properties `((upstream-name . "invertiforms")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparselrmatrix r-matrix r-glue))
    (home-page "https://rohelab.github.io/invertiforms/")
    (synopsis "Invertible Transforms for Matrices")
    (description
     "This package provides composable invertible transforms for (sparse) matrices.")
    (license license:expat)))

(define-public r-inverseregex
  (package
    (name "r-inverseregex")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inverseRegex" version))
              (sha256
               (base32
                "1ca6adv602mh6fgkjy4qvmradki3wp44iak27i1k4cp3fi9cm986"))))
    (properties `((upstream-name . "inverseRegex")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=inverseRegex")
    (synopsis "Reverse Engineers Regular Expression Patterns for R Objects")
    (description
     "Reverse engineer a regular expression pattern for the characters contained in an
R object.  Individual characters can be categorised into digits, letters,
punctuation or spaces and encoded into run-lengths.  This can be used to
summarise the structure of a dataset or identify non-standard entries.  Many
non-character inputs such as numeric vectors and data frames are supported.")
    (license license:expat)))

(define-public r-inventorymodel
  (package
    (name "r-inventorymodel")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Inventorymodel" version))
              (sha256
               (base32
                "1l87xghdksgmb2k3a8j382p7ffi2pma38a6pn31sfjsa6bgmrdnk"))))
    (properties `((upstream-name . "Inventorymodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-gametheoryallocation r-e1071))
    (home-page "https://cran.r-project.org/package=Inventorymodel")
    (synopsis "Inventory Models")
    (description
     "Determination of the optimal policy in inventory problems from a game-theoretic
perspective.")
    (license license:gpl2)))

(define-public r-inventorize
  (package
    (name "r-inventorize")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inventorize" version))
              (sha256
               (base32
                "0pbm9iw4v6wqr4qs5g2nfkgiaq75qdfcdicazy94fwwfvx5xbgbv"))))
    (properties `((upstream-name . "inventorize")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-plyr
                             r-plotly
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=inventorize")
    (synopsis "Inventory Analytics, Pricing and Markdowns")
    (description
     "Simulate inventory policies with and without forecasting, facilitate inventory
analysis calculations such as stock levels and re-order points,pricing and
promotions calculations.  The package includes calculations of inventory
metrics, stock-out calculations and ABC analysis calculations.  The package
includes revenue management techniques such as Multi-product optimization,logit
and polynomial model optimization.  The functions are referenced from :
1-Harris, Ford W. (1913). \"How many parts to make at once\".  Factory, The
Magazine of Management. <isbn10: 135â136, 152>.  2- Nahmias, S. Production and
Operations Analysis.  McGraw-Hill International Edition. <isbn: 0-07- 2231265-3.
 Chapter 4>.  3-Silver, E.A., Pyke, D.F., Peterson, R. Inventory Management and
Production Planning and Scheduling. <isbn: 978-0471119470>.  4-Ballou, R.H.
Business Logistics Management. <isbn: 978-0130661845>.  Chapter 9.  5-MIT
Micromasters Program.  6- Columbia University course for supply and demand
analysis.  8- Price Elasticity of Demand MATH 104,Mark Mac Lean (with assistance
from Patrick Chan) 2011W For further details or correspondence
:<www.linkedin.com/in/haythamomar>, <www.rescaleanalytics.com>.")
    (license license:gpl3)))

(define-public r-invctr
  (package
    (name "r-invctr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "invctr" version))
              (sha256
               (base32
                "1sywjw078rc6nqiz1j77sd7c15nbjjpwqqni3363zzw5c3hgrpx5"))))
    (properties `((upstream-name . "invctr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FredHasselman/invctr")
    (synopsis "Infix Functions For Vector Operations")
    (description
     "Vector operations between grapes: An infix-only package! The invctr functions
perform common and less common operations on vectors, data frames matrices and
list objects: - Extracting a value (range), or, finding the indices of a value
(range). - Trimming, or padding a vector with a value of your choice. - Simple
polynomial regression. - Set and membership operations. - General check &
replace function for NAs, Inf and other values.")
    (license license:gpl3)))

(define-public r-invasioncorrection
  (package
    (name "r-invasioncorrection")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InvasionCorrection" version))
              (sha256
               (base32
                "1wwx2kssjysl1lraac36pvxq34vg8qm0vwi861rs1iipfc35i84j"))))
    (properties `((upstream-name . "InvasionCorrection")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=InvasionCorrection")
    (synopsis "Invasion Correction")
    (description
     "The correction is achieved under the assumption that non-migrating cells of the
essay approximately form a quadratic flow profile due to frictional effects,
compare law of Hagen-Poiseuille for flow in a tube.  The script fits a conical
plane to give xyz-coordinates of the cells.  It outputs the number of migrated
cells and the new corrected coordinates.")
    (license license:gpl3)))

(define-public r-invariantcausalprediction
  (package
    (name "r-invariantcausalprediction")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InvariantCausalPrediction" version))
              (sha256
               (base32
                "01ckyvjl9lxdpkr0v1da4n4lw3b5z1bxlmf0v6ibqly1mhfwybjl"))))
    (properties `((upstream-name . "InvariantCausalPrediction")))
    (build-system r-build-system)
    (propagated-inputs (list r-mboost r-glmnet))
    (home-page "https://cran.r-project.org/package=InvariantCausalPrediction")
    (synopsis "Invariant Causal Prediction")
    (description
     "Confidence intervals for causal effects, using data collected in different
experimental or environmental conditions.  Hidden variables can be included in
the model with a more experimental version.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-invacost
  (package
    (name "r-invacost")
    (version "1.1-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "invacost" version))
              (sha256
               (base32
                "0qh1illwkcr2hi9hcns08xw8xpqd9d9134mdznw91a5qisnl9wkk"))))
    (properties `((upstream-name . "invacost")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-sandwich
                             r-robustbase
                             r-quantreg
                             r-mgcv
                             r-lmtest
                             r-ggplot2
                             r-earth
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=invacost")
    (synopsis "Analyse Biological Invasion Costs with the 'InvaCost' Database")
    (description
     "This package provides an up-to-date version of the InvaCost database
(<doi:10.6084/m9.figshare.12668570>) in R, and several functions to analyse the
costs of invasive alien species (<doi:10.1111/2041-210X.13929>).")
    (license license:gpl2+)))

(define-public r-intsvy
  (package
    (name "r-intsvy")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intsvy" version))
              (sha256
               (base32
                "014c8vsbf52xrsdjb39pl4lvcz05ns3k2fywh7m7cffnxbc5fwak"))))
    (properties `((upstream-name . "intsvy")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape
                             r-plyr
                             r-memisc
                             r-hmisc
                             r-ggplot2
                             r-foreign
                             r-dplyr))
    (home-page "https://daniel-caro.com/r-intsvy/")
    (synopsis "International Assessment Data Manager")
    (description
     "This package provides tools for importing, merging, and analysing data from
international assessment studies (TIMSS, PIRLS, PISA, ICILS, and PIAAC).")
    (license license:gpl2)))

(define-public r-intsurv
  (package
    (name "r-intsurv")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intsurv" version))
              (sha256
               (base32
                "02ds4gikrgg19knylg68ziani702dyhqc37fhf9j7awa1qxy2r9l"))))
    (properties `((upstream-name . "intsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://wwenjie.org/intsurv")
    (synopsis "Integrative Survival Modeling")
    (description
     "This package contains implementations of integrative survival analysis routines,
including regular Cox cure rate model proposed by Kuk and Chen (1992)
<doi:10.1093/biomet/79.3.531> via an EM algorithm proposed by Sy and Taylor
(2000) <doi:10.1111/j.0006-341X.2000.00227.x>, regularized Cox cure rate model
with elastic net penalty following Masud et al. (2018)
<doi:10.1177/0962280216677748>, and Zou and Hastie (2005)
<doi:10.1111/j.1467-9868.2005.00503.x>, and weighted concordance index for cure
models proposed by Asano and Hirakawa (2017)
<doi:10.1080/10543406.2017.1293082>.")
    (license license:gpl3+)))

(define-public r-intsdm
  (package
    (name "r-intsdm")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intSDM" version))
              (sha256
               (base32
                "098cq4sav84kckgdl8i9szkygnmiqbch4qfs90686wjkva5nk6my"))))
    (properties `((upstream-name . "intSDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-spocc
                             r-sp
                             r-raster
                             r-pointedsdms
                             r-maps
                             r-inlabru
                             r-ggplot2
                             r-geodata
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intSDM")
    (synopsis
     "Reproducible Integrated Species Distribution Models Across Norway using 'INLA'")
    (description
     "Integration of disparate datasets is needed in order to make efficient use of
all available data and thereby address the issues currently threatening
biodiversity.  Data integration is a powerful modeling framework which allows us
to combine these datasets together into a single model, yet retain the strengths
of each individual dataset.  We therefore introduce the package, intSDM': an R
package designed to help ecologists develop a reproducible workflow of
integrated species distribution models, using data both provided from the user
as well as data obtained freely online.  An introduction to data integration
methods is discussed in Issac, Jarzyna, Keil, Dambly, Boersch-Supan, Browning,
Freeman, Golding, Guillera-Arroita, Henrys, Jarvis, Lahoz-Monfort, Pagel,
Pescott, Schmucki, Simmonds and OâHara (2020)
<doi:10.1016/j.tree.2019.08.006>.")
    (license license:gpl3+)))

(define-public r-intrvals
  (package
    (name "r-intrvals")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intRvals" version))
              (sha256
               (base32
                "013n0qp12dqnnk931rvs6lql2r13z5j4jf27s4aqfyd80mnl5w7k"))))
    (properties `((upstream-name . "intRvals")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-lme4))
    (home-page "https://cran.r-project.org/package=intRvals")
    (synopsis "Analysis of Time-Ordered Event Data with Missed Observations")
    (description
     "Calculates event rates and compares means and variances of groups of interval
data corrected for missed arrival observations.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-intrval
  (package
    (name "r-intrval")
    (version "0.1-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intrval" version))
              (sha256
               (base32
                "1fbgl2r359aml6cfz8x7h0381kxfx1dy0hr0c7012vr66f6c2lhi"))))
    (properties `((upstream-name . "intrval")))
    (build-system r-build-system)
    (home-page "https://github.com/psolymos/intrval")
    (synopsis "Relational Operators for Intervals")
    (description
     "Evaluating if values of vectors are within different open/closed intervals (`x
%[]% c(a, b)`), or if two closed intervals overlap (`c(a1, b1) %[]o[]% c(a2,
b2)`).  Operators for negation and directional relations also implemented.")
    (license license:gpl2)))

(define-public r-intrinsicfrp
  (package
    (name "r-intrinsicfrp")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intrinsicFRP" version))
              (sha256
               (base32
                "1pjf3xkbqph40xxj51ddln1fq53dvndbp9hk6hyy6kkikdw22gi5"))))
    (properties `((upstream-name . "intrinsicFRP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/a91quaini/intrinsicFRP")
    (synopsis "Adaptive Estimation of Intrinsic Factor Risk Premia")
    (description
     "Efficient computation of intrinsic and adaptive intrinsic factor risk premia and
their standard errors.  Intrinsic factor risk premia are defined as the negative
factor covariance with the SDF projection on test asset returns.  As opposed to
benchmark notions of factor risk premia, they are well-defined even in presence
of useless and weak factors, they do not depend on the degree of
misspecification of the factor model, and are one-to-one linked to two-pass
mimicking factor risk premia coefficients, whenever the latter are also
well-defined.")
    (license license:gpl3+)))

(define-public r-intrinsicdimension
  (package
    (name "r-intrinsicdimension")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intrinsicDimension" version))
              (sha256
               (base32
                "0cka20ifxx9njnvp18bzhrvmh3cwjnxkc0a23qzi43dahc51ijbc"))))
    (properties `((upstream-name . "intrinsicDimension")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaimpute))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intrinsicDimension")
    (synopsis "Intrinsic Dimension Estimation")
    (description
     "This package provides a variety of methods for estimating intrinsic dimension of
data sets (i.e the manifold or Hausdorff dimension of the support of the
distribution that generated the data) as reviewed in Johnsson, K. (2016,
ISBN:978-91-7623-921-6) and Johnsson, K., Soneson, C. and Fontes, M. (2015)
<doi:10.1109/TPAMI.2014.2343220>.  Furthermore, to evaluate the performance of
these estimators, functions for generating data sets with given intrinsic
dimensions are provided.")
    (license license:expat)))

(define-public r-intrinsic
  (package
    (name "r-intrinsic")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intRinsic" version))
              (sha256
               (base32
                "0kx40w1228ppvvi3g54pw7552637azix809rpijqcfnps7p7kj1p"))))
    (properties `((upstream-name . "intRinsic")))
    (build-system r-build-system)
    (propagated-inputs (list r-salso
                             r-rlang
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-mcmcpack
                             r-latex2exp
                             r-knitr
                             r-ggplot2
                             r-fnn
                             r-dplyr))
    (home-page "https://github.com/Fradenti/intRinsic")
    (synopsis "Likelihood-Based Intrinsic Dimension Estimators")
    (description
     "This package provides functions to estimate the intrinsic dimension of a dataset
via likelihood-based approaches.  Specifically, the package implements the
TWO-NN and Gride estimators and the Hidalgo Bayesian mixture model.  In
addition, the first reference contains an extended vignette on the usage of the
TWO-NN and Hidalgo models.  References: Denti (2023,
<doi:10.18637/jss.v106.i09>); Allegra et al. (2020,
<doi:10.1038/s41598-020-72222-0>); Denti et al. (2022,
<doi:10.1038/s41598-022-20991-1>); Facco et al. (2017,
<doi:10.1038/s41598-017-11873-y>); Santos-Fernandez et al. (2021,
<doi:10.1038/s41598-022-20991-1>).")
    (license license:expat)))

(define-public r-intrigue
  (package
    (name "r-intrigue")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INTRIGUE" version))
              (sha256
               (base32
                "1l1vfl0m4iqniwp4bp1bfjpqhwahg341fpyxhryr0j8lypqaw7si"))))
    (properties `((upstream-name . "INTRIGUE")))
    (build-system r-build-system)
    (propagated-inputs (list r-squarem r-rlist r-dplyr))
    (home-page "https://cran.r-project.org/package=INTRIGUE")
    (synopsis
     "Quantify and Control Reproducibility in High-Throughput Experiments")
    (description
     "Estimate the proportions of the null and the reproducibility and
non-reproducibility of the signal group for the input data set.  The Bayes
factor calculation and EM (Expectation Maximization) algorithm procedures are
also included.")
    (license license:gpl2)))

(define-public r-intreggof
  (package
    (name "r-intreggof")
    (version "0.85-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intRegGOF" version))
              (sha256
               (base32
                "0xjq8vdlgqlzrvp752gd4qfrpnpapx7k6xzfsvfril8ngvm9a162"))))
    (properties `((upstream-name . "intRegGOF")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=intRegGOF")
    (synopsis "Integrated Regression Goodness of Fit")
    (description
     "This package performs Goodness of Fit for regression models using Integrated
Regression method.  Works for several different fitting techniques.")
    (license license:gpl2+)))

(define-public r-intrees
  (package
    (name "r-intrees")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inTrees" version))
              (sha256
               (base32
                "1afyjh2winb591am1cawchkysyslzv01nwyihvjb7n844pqr5s2j"))))
    (properties `((upstream-name . "inTrees")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xgboost
                             r-rrf
                             r-gbm
                             r-data-table
                             r-arules))
    (home-page "https://cran.r-project.org/package=inTrees")
    (synopsis "Interpret Tree Ensembles")
    (description
     "For tree ensembles such as random forests, regularized random forests and
gradient boosted trees, this package provides functions for: extracting,
measuring and pruning rules; selecting a compact rule set; summarizing rules
into a learner; calculating frequent variable interactions; formatting rules in
latex code.  Reference: Interpreting tree ensembles with inTrees (Houtao Deng,
2019, <doi:10.1007/s41060-018-0144-8>).")
    (license license:gpl3+)))

(define-public r-intnmf
  (package
    (name "r-intnmf")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntNMF" version))
              (sha256
               (base32
                "09qzyvv7d4wr68qrlhcd4ivr65is3mypv1vaxpswwcjmcmyr4gzp"))))
    (properties `((upstream-name . "IntNMF")))
    (build-system r-build-system)
    (propagated-inputs (list r-nmf r-mclust r-mass r-intersim r-cluster))
    (home-page "https://cran.r-project.org/package=IntNMF")
    (synopsis "Integrative Clustering of Multiple Genomic Dataset")
    (description
     "Carries out integrative clustering analysis using multiple types of genomic
dataset using integrative Non-negative Matrix factorization.")
    (license license:gpl2)))

(define-public r-intmed
  (package
    (name "r-intmed")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intmed" version))
              (sha256
               (base32
                "0amcqzinj35yvb9nfy808bz098dqmnds13z335lgqm6sykriyjpl"))))
    (properties `((upstream-name . "intmed")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-mice
                             r-mass
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intmed")
    (synopsis "Mediation Analysis using Interventional Effects")
    (description
     "Implementing the interventional effects for mediation analysis for up to 3
mediators.  The methods used are based on VanderWeele, Vansteelandt and Robins
(2014) <doi:10.1097/ede.0000000000000034>, Vansteelandt and Daniel (2017)
<doi:10.1097/ede.0000000000000596> and Chan and Leung (2020; unpublished
manuscript, available on request from the author of this package).  Linear
regression, logistic regression and Poisson regression are used for continuous,
binary and count mediator/outcome variables respectively.")
    (license license:expat)))

(define-public r-intmap
  (package
    (name "r-intmap")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intmap" version))
              (sha256
               (base32
                "1fxq0jkahangv4pwsvnrr4iq2y6qp61l81b28yzwl74b0lmx6hbf"))))
    (properties `((upstream-name . "intmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-r6 r-maybe r-bh))
    (home-page "https://github.com/stla/intmap")
    (synopsis "Ordered Containers with Integer Keys")
    (description
     "This package provides a key-value store data structure.  The keys are integers
and the values can be any R object.  This is like a list but indexed by a set of
integers, not necessarily contiguous and possibly negative.  The implementation
uses a R6 class.  These containers are not faster than lists but their usage can
be more convenient for certain situations.")
    (license license:gpl3)))

(define-public r-intlim
  (package
    (name "r-intlim")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntLIM" version))
              (sha256
               (base32
                "04kjmp6akbw9yjg0lr19aripm5vjzm4bk7xqxm38hq9wn9cgli4g"))))
    (properties `((upstream-name . "IntLIM")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-shinyjs
                             r-shinyfiles
                             r-shinydashboard
                             r-shiny
                             r-rmarkdown
                             r-reshape2
                             r-rcolorbrewer
                             r-mass
                             r-margins
                             r-kernsmooth
                             r-htmltools
                             r-highcharter
                             r-heatmaply
                             r-ggplot2
                             r-dt
                             r-complexheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IntLIM")
    (synopsis "Integration of Omics Data Using Linear Modeling")
    (description
     "This workflow takes analyte levels from two different types of analytes (e.g.
gene expression and metabolite abundance), meta-information on each analyte
type, and sample outcome and metadata to identify analyte pairs that are
significantly associated with a continuous or discrete outcome (e.g. drug
response or tumor type).  The following references describe the methods in this
package: (1) Jalal K. Siddiqui, et al. (2018) <doi:10.1186/s12859-018-2085-6>,
(2) Andrew Patt, et al. (2019) <doi:10.1007/978-1-4939-9027-6_23>.")
    (license license:gpl2)))

(define-public r-intkrige
  (package
    (name "r-intkrige")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intkrige" version))
              (sha256
               (base32
                "1p3fn5nzn1iliy025187k590qrsw3z3d47p67gzwwd6h050yrl86"))))
    (properties `((upstream-name . "intkrige")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-gstat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intkrige")
    (synopsis "Numerical Implementation of Interval-Valued Kriging")
    (description
     "An interval-valued extension of ordinary and simple kriging.  Optimization of
the function is based on a generalized interval distance.  This creates a
non-differentiable cost function that requires a differentiable approximation to
the absolute value function.  This differentiable approximation is optimized
using a Newton-Raphson algorithm with a penalty function to impose the
constraints.  Analyses in the package are driven by the intsp and intgrd
classes, which are interval-valued extensions of SpatialPointsDataFrame and
SpatialPixelsDataFrame respectively.  The package includes several wrappers to
functions in the gstat and sp packages.")
    (license license:expat)))

(define-public r-inti
  (package
    (name "r-inti")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inti" version))
              (sha256
               (base32
                "13zqb4az77frxnj7sna95aj86q7ridqaa14shmlbvwm7aqr7iwn1"))))
    (properties `((upstream-name . "inti")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-shiny
                             r-purrr
                             r-lme4
                             r-ggplot2
                             r-factominer
                             r-emmeans
                             r-dt
                             r-dplyr
                             r-agricolae))
    (native-inputs (list r-knitr))
    (home-page "https://inkaverse.com/")
    (synopsis "Tools and Statistical Procedures in Plant Science")
    (description
     "The inti package is part of the inkaverse project for developing different
procedures and tools used in plant science and experimental designs.  The mean
aim of the package is to support researchers during the planning of experiments
and data collection (tarpuy()), data analysis and graphics (yupana()) , and
technical writing.  Learn more about the inkaverse project at
<https://inkaverse.com/>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-intextsummarytable
  (package
    (name "r-intextsummarytable")
    (version "3.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inTextSummaryTable" version))
              (sha256
               (base32
                "0dlb6icamw1arhh92hmgj5wj7a6lv1c8j95gdrqzxgqgkawrl582"))))
    (properties `((upstream-name . "inTextSummaryTable")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-plyr
                             r-officer
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-flextable
                             r-cowplot
                             r-clinutils))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/openanalytics/inTextSummaryTable")
    (synopsis "Creation of in-Text Summary Table")
    (description
     "Creation of tables of summary statistics or counts for clinical data (for
TLFs').  These tables can be exported as in-text table (with the flextable
package) for a Clinical Study Report (Word format) or a topline presentation
(PowerPoint format), or as interactive table (with the DT package) to an html
document for clinical data review.")
    (license license:expat)))

(define-public r-intervcomp
  (package
    (name "r-intervcomp")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intervcomp" version))
              (sha256
               (base32
                "1l6x1fl84li6is3b92b96q3fbv0rpgqy2lvw9cbi2cq8nh9imnyx"))))
    (properties `((upstream-name . "intervcomp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=intervcomp")
    (synopsis "Hypothesis Testing Using the Overlapping Interval Estimates")
    (description
     "This package performs hypothesis testing using the interval estimates (e.g.,
confidence intervals).  The non-overlapping interval estimates indicates the
statistical significance.  References to these procedures can be found at
Noguchi and Marmolejo-Ramos (2016) <doi:10.1080/00031305.2016.1200487>, Bonett
and Seier (2003) <doi:10.1198/0003130032323>, and Lemm (2006)
<doi:10.1300/J082v51n02_05>.")
    (license license:gpl3)))

(define-public r-intervalsurgeon
  (package
    (name "r-intervalsurgeon")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntervalSurgeon" version))
              (sha256
               (base32
                "02l2r83mz4x9x40p8gxwyrqa25qk0cy22k39lv93plvcpadcs8a5"))))
    (properties `((upstream-name . "IntervalSurgeon")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IntervalSurgeon")
    (synopsis "Operating on Integer-Bounded Intervals")
    (description
     "Manipulate integer-bounded intervals including finding overlaps, piling and
merging.")
    (license license:gpl2+)))

(define-public r-intervalquestionstat
  (package
    (name "r-intervalquestionstat")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntervalQuestionStat" version))
              (sha256
               (base32
                "0pvz5l0pvw8akmvv51c48fx1ppms9iq6s4bwscja8jk56akx2wlq"))))
    (properties `((upstream-name . "IntervalQuestionStat")))
    (build-system r-build-system)
    (home-page "https://github.com/garciagarjose/IntervalQuestionStat/")
    (synopsis "Tools to Deal with Interval-Valued Responses in Questionnaires")
    (description
     "This package provides a user-friendly toolbox for doing the statistical analysis
of interval-valued responses in questionnaires measuring intrinsically imprecise
human attributes or features (attitudes, perceptions, opinions, feelings, etc.).
 In particular, this package provides S4 classes, methods, and functions in
order to compute basic arithmetic and statistical operations with
interval-valued data; prepare customized plots; associate each interval-valued
response to its equivalent Likert-type and visual analogue scales answers
through the minimum theta-distance and the mid-point criteria; analyze the
reliability of respondents answers from the internal consistency point of view
by means of Cronbach's alpha coefficient; and simulate interval-valued responses
in this type of questionnaires.  The package also incorporates some real-life
data that can be used to illustrate its working with several non-trivial
reproducible examples.  The methodology used in this package is based in many
theoretical and applied publications from SMIRE+CoDiRE (Statistical Methods with
Imprecise Random Elements and Comparison of Distributions of Random Elements)
Research Group (<https://bellman.ciencias.uniovi.es/smire+codire/>) from the
University of Oviedo (Spain).")
    (license license:lgpl3+)))

(define-public r-intervalaverage
  (package
    (name "r-intervalaverage")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intervalaverage" version))
              (sha256
               (base32
                "07p9r358q3jxm8n7nypxmvpfnh61njivcwaplgzzxrlcbway6fq9"))))
    (properties `((upstream-name . "intervalaverage")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intervalaverage")
    (synopsis "Time-Weighted Averaging for Interval Data")
    (description
     "Perform fast and memory efficient time-weighted averaging of values measured
over intervals into new arbitrary intervals.  This package is useful in the
context of data measured or represented as constant values over intervals on a
one-dimensional discrete axis (e.g. time-integrated averages of a curve over
defined periods).  This package was written specifically to deal with air
pollution data recorded or predicted as averages over sampling periods.  Data in
this format often needs to be shifted to non-aligned periods or averaged up to
periods of longer duration (e.g. averaging data measured over sequential
non-overlapping periods to calendar years).")
    (license license:gpl3)))

(define-public r-interva5
  (package
    (name "r-interva5")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InterVA5" version))
              (sha256
               (base32
                "08cnhbq1048z7qcvvj0d1br7d8jljzf48ci94aixs0y0vs8lgvvz"))))
    (properties `((upstream-name . "InterVA5")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-curl))
    (home-page "https://cran.r-project.org/package=InterVA5")
    (synopsis "Replicate and Analyse 'InterVA5'")
    (description
     "This package provides an R version of the InterVA5 software
(<http://www.byass.uk/interva/>) for coding cause of death from verbal
autopsies.  It also provides simple graphical representation of individual and
population level statistics.")
    (license license:gpl3)))

(define-public r-interva4
  (package
    (name "r-interva4")
    (version "1.7.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InterVA4" version))
              (sha256
               (base32
                "02fci1p8im8jpalv1mbrhrwhvpi23mzhwhpd1knpxyv7h6l9x0kg"))))
    (properties `((upstream-name . "InterVA4")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=InterVA4")
    (synopsis "Replicate and Analyse 'InterVA4'")
    (description
     "This package provides an R version of the InterVA4 software
(<http://www.interva.net>) for coding cause of death from verbal autopsies.  It
also provides simple graphical representation of individual and population level
statistics.")
    (license license:gpl3)))

(define-public r-intersim
  (package
    (name "r-intersim")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InterSIM" version))
              (sha256
               (base32
                "14yccan88szf26w1hg1lkvmssids961gng7il3bjr2f1l0k8vd3b"))))
    (properties `((upstream-name . "InterSIM")))
    (build-system r-build-system)
    (propagated-inputs (list r-nmf r-mass))
    (home-page "https://cran.r-project.org/package=InterSIM")
    (synopsis "Simulation of Inter-Related Genomic Datasets")
    (description
     "Generates three inter-related genomic datasets : methylation, gene expression
and protein expression.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-inters
  (package
    (name "r-inters")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inters" version))
              (sha256
               (base32
                "1is65lid6v5ip6858i7mxjqaj0hgcr1xgk92zsh3qxpr8gn07cij"))))
    (properties `((upstream-name . "inters")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-fixest))
    (native-inputs (list r-knitr))
    (home-page "https://mattblackwell.github.io/inters/")
    (synopsis "Flexible Tools for Estimating Interactions")
    (description
     "This package provides a set of functions to estimate interactions flexibly in
the face of possibly many controls.  Implements the procedures described in
Blackwell and Olson (2022) <doi:10.1017/pan.2021.19>.")
    (license license:gpl2+)))

(define-public r-interpretr
  (package
    (name "r-interpretr")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interpretR" version))
              (sha256
               (base32
                "0nfh3pyr7nn0r41xk0mfb4fs5rjkbh43lbw14x7pdmbgzpgsc22c"))))
    (properties `((upstream-name . "interpretR")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-auc))
    (home-page "https://cran.r-project.org/package=interpretR")
    (synopsis
     "Binary Classifier and Regression Model Interpretation Functions")
    (description
     "Compute permutation- based performance measures and create partial dependence
plots for (cross-validated) randomForest and ada models.")
    (license license:gpl2+)))

(define-public r-interpretmsspectrum
  (package
    (name "r-interpretmsspectrum")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InterpretMSSpectrum" version))
              (sha256
               (base32
                "1nvi5l0m5118b0m65l52mby34vw05nhp37pl6rba1220a10iasih"))))
    (properties `((upstream-name . "InterpretMSSpectrum")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-envipat))
    (home-page "<doi:10.1021/acs.analchem.6b02743>")
    (synopsis "Interpreting High Resolution Mass Spectra")
    (description
     "High resolution mass spectrometry yields often large data sets of spectra from
compounds which are not present in available libraries.  These spectra need to
be annotated and interpreted.'InterpretMSSpectrum provides a set of functions to
perform such tasks for Electrospray-Ionization and
Atmospheric-Pressure-Chemical-Ionization derived data in positive and negative
ionization mode.")
    (license license:gpl3)))

(define-public r-interpretci
  (package
    (name "r-interpretci")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interpretCI" version))
              (sha256
               (base32
                "1jg2dpfrhb1kij2z0gq4sw1lrb4v2sky13dpfmdnaz2k5xqnih2s"))))
    (properties `((upstream-name . "interpretCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rstudioapi
                             r-rmarkdown
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-patchwork
                             r-officer
                             r-moonbook
                             r-ggplot2
                             r-ggbeeswarm
                             r-flextable
                             r-english
                             r-dplyr
                             r-aplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cardiomoon/interpretCI")
    (synopsis "Estimate the Confidence Interval and Interpret Step by Step")
    (description
     "Estimate confidence intervals for mean, proportion, mean difference for unpaired
and paired samples and proportion difference.  Plot the confidence intervals.
Generate documents explaining the statistical result step by step.")
    (license license:gpl3)))

(define-public r-interpret
  (package
    (name "r-interpret")
    (version "0.1.33")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interpret" version))
              (sha256
               (base32
                "17619lyfbvkssls5l3ymlvq72b2162w0n9r7xa5n8wjnnx8mlipz"))))
    (properties `((upstream-name . "interpret")))
    (build-system r-build-system)
    (home-page "https://github.com/interpretml/interpret")
    (synopsis "Fit Interpretable Machine Learning Models")
    (description
     "Package for training interpretable machine learning models.  Historically, the
most interpretable machine learning models were not very accurate, and the most
accurate models were not very interpretable.  Microsoft Research has developed
an algorithm called the Explainable Boosting Machine (EBM) which has both high
accuracy and interpretable characteristics.  EBM uses machine learning
techniques like bagging and boosting to breathe new life into traditional GAMs
(Generalized Additive Models).  This makes them as accurate as random forests
and gradient boosted trees, and also enhances their intelligibility and
editability.  Details on the EBM algorithm can be found in the paper by Rich
Caruana, Yin Lou, Johannes Gehrke, Paul Koch, Marc Sturm, and Noemie Elhadad
(2015, <doi:10.1145/2783258.2788613>).")
    (license license:expat)))

(define-public r-interpolation
  (package
    (name "r-interpolation")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interpolation" version))
              (sha256
               (base32
                "12rxbpyi6hn2lijlxl3yaqp0fvxw3ipyk6x1hyl7dp3r8i5q4qy5"))))
    (properties `((upstream-name . "interpolation")))
    (build-system r-build-system)
    (inputs (list gmp))
    (propagated-inputs (list r-rcppcgal r-rcpp r-bh))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/stla/interpolation")
    (synopsis "Interpolation of Bivariate Functions")
    (description
     "This package provides two different methods, linear and nonlinear, to
interpolate a bivariate function, scalar-valued or vector-valued.  The
interpolated data are not necessarily gridded.  The algorithms are performed by
the C++ library CGAL (<https://www.cgal.org/>).")
    (license license:gpl3)))

(define-public r-interplot
  (package
    (name "r-interplot")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interplot" version))
              (sha256
               (base32
                "1qs0ni16rbjilkahn15yn9sil3ba4n935bxpdbpwlsjina504jqj"))))
    (properties `((upstream-name . "interplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-interactiontest
                             r-ggplot2
                             r-dplyr
                             r-arm
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=interplot")
    (synopsis "Plot the Effects of Variables in Interaction Terms")
    (description
     "Plots the conditional coefficients (\"marginal effects\") of variables included in
multiplicative interaction terms.")
    (license license:expat)))

(define-public r-interlinear
  (package
    (name "r-interlinear")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interlineaR" version))
              (sha256
               (base32
                "0y1ym6iwly8sv94pdzwv2qy1g7z4hpqlrbcrpb1ds5a62a6axqj5"))))
    (properties `((upstream-name . "interlineaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-reshape2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sylvainloiseau/interlineaR")
    (synopsis
     "Importing Interlinearized Corpora and Dictionaries as Produced by Descriptive Linguistics Software")
    (description
     "Interlinearized glossed texts (IGT) are used in descriptive linguistics for
representing a morphological analysis of a text through a morpheme-by-morpheme
gloss.  InterlineaR provide a set of functions that targets several popular
formats of IGT ('SIL Toolbox', EMELD XML') and that turns an IGT into a set of
data frames following a relational model (the tables represent the different
linguistic units: texts, sentences, word, morphems).  The same pieces of
software ('SIL FLEX', SIL Toolbox') typically produce dictionaries of the
morphemes used in the glosses.  InterlineaR provide a function for turning the
LIFT XML dictionary format into a set of data frames following a relational
model in order to represent the dictionary entries, the sense(s) attached to the
entries, the example(s) attached to senses, etc.")
    (license license:bsd-3)))

(define-public r-interleave
  (package
    (name "r-interleave")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interleave" version))
              (sha256
               (base32
                "0316nzcms9hawjvslvbkpb5rg3jbmzsy1dzvmy1hi80zlyrm891v"))))
    (properties `((upstream-name . "interleave")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-geometries))
    (home-page "https://cran.r-project.org/package=interleave")
    (synopsis "Converts Tabular Data to Interleaved Vectors")
    (description
     "Converts matrices and lists of matrices into a single vector by interleaving
their values.  That is, each element of the result vector is filled from the
input matrices one row at a time.  This is the same as transposing a matrix,
then removing the dimension attribute, but is designed to operate on matrices in
nested list structures.")
    (license license:expat)))

(define-public r-interimapp
  (package
    (name "r-interimapp")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interimApp" version))
              (sha256
               (base32
                "1g2f1plsgzqf277jy2afhchjlcamr9znm02rj4rvky7nnp63gph0"))))
    (properties `((upstream-name . "interimApp")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinybs r-shiny r-interim))
    (home-page "https://cran.r-project.org/package=interimApp")
    (synopsis "App for Scheduling Interim Analyses in Clinical Trials")
    (description
     "Allows an interactive assessment of the timing of interim analyses.  The
algorithm simulates both the recruitment and treatment/event phase of a clinical
trial based on the package interim'.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-interim
  (package
    (name "r-interim")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interim" version))
              (sha256
               (base32
                "1hcq1cx6fv4ivvyd3ww3gsbw12g6rw83qqqbrcgzlnjl1q0jh3nf"))))
    (properties `((upstream-name . "interim")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=interim")
    (synopsis "Scheduling Interim Analyses in Clinical Trials")
    (description
     "Allows the simulation of the recruitment and both the event and treatment phase
of a clinical trial.  Based on these simulations, the timing of interim analyses
can be assessed.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-interfr
  (package
    (name "r-interfr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interfr" version))
              (sha256
               (base32
                "1wn7i8dsll1qq3v39hgpbqnkjc8f4wlffy73453rw9lpq61y2fgj"))))
    (properties `((upstream-name . "interfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-colorspec r-circstats))
    (home-page "https://cran.r-project.org/package=interfr")
    (synopsis "Interference Color Charts for Polarized Light Microscopy")
    (description
     "Computes interference color tables and plots customized Michel-Levy or
Raith-Sorensen charts.  Automatic interpretation of polarized-light microscopy
images is still under development and will come soon.")
    (license license:gpl2+)))

(define-public r-interflex
  (package
    (name "r-interflex")
    (version "1.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interflex" version))
              (sha256
               (base32
                "0crijwb076b3hprjnji52l8qnd5pp3w7pxy214sfqrg2g3y4gcfl"))))
    (properties `((upstream-name . "interflex")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-proc
                             r-pcse
                             r-mvtnorm
                             r-modelmetrics
                             r-mgcv
                             r-mass
                             r-lmtest
                             r-lmoments
                             r-lfe
                             r-gtable
                             r-gridextra
                             r-ggplotify
                             r-ggplot2
                             r-future
                             r-foreach
                             r-doparallel
                             r-aer))
    (home-page "http://yiqingxu.org/software/interaction/RGuide.html")
    (synopsis
     "Multiplicative Interaction Models Diagnostics and Visualization")
    (description
     "This package performs diagnostic tests of multiplicative interaction models and
plots non-linear marginal effects of a treatment on an outcome across different
values of a moderator.")
    (license license:expat)))

(define-public r-interfaceqpcr
  (package
    (name "r-interfaceqpcr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InterfaceqPCR" version))
              (sha256
               (base32
                "12nmkv6qnzh2dnbhk1656dla6mrznh24gqblmn4xai7wg4p92fbx"))))
    (properties `((upstream-name . "InterfaceqPCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx r-tkrplot r-reshape2 r-plyr))
    (home-page "https://cran.r-project.org/package=InterfaceqPCR")
    (synopsis "GUI to Analyse qPCR Results after PMA Treatment or not")
    (description
     "Graphical User Interface allowing to determine the concentration in the sample
in CFU per mL or in number of copies per mL provided to qPCR results after with
or without PMA treatment.  This package is simply to use because no knowledge in
R commands is necessary.  A graphic represents the standard curve, and a table
containing the result for each sample is created.")
    (license license:gpl2)))

(define-public r-interep
  (package
    (name "r-interep")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interep" version))
              (sha256
               (base32
                "1a4ws8wsrlkiq8dxrx85cq758dim3ym0sirag1k7hhv6pl825cxs"))))
    (properties `((upstream-name . "interep")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass))
    (home-page "https://github.com/feizhoustat/interep")
    (synopsis "Interaction Analysis of Repeated Measure Data")
    (description
     "Extensive penalized variable selection methods have been developed in the past
two decades for analyzing high dimensional omics data, such as gene expressions,
single nucleotide polymorphisms (SNPs), copy number variations (CNVs) and
others.  However, lipidomics data have been rarely investigated by using high
dimensional variable selection methods.  This package incorporates our recently
developed penalization procedures to conduct interaction analysis for high
dimensional lipidomics data with repeated measurements.  The core module of this
package is developed in C++.  The development of this software package and the
associated statistical methods have been partially supported by an Innovative
Research Award from Johnson Cancer Research Center, Kansas State University.")
    (license license:gpl2)))

(define-public r-interd
  (package
    (name "r-interd")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InteRD" version))
              (sha256
               (base32
                "18grg2pyn0p3dwqhm2251d47sd97wcjr858y64lf5chkhvcz09nk"))))
    (properties `((upstream-name . "InteRD")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rcpp
                             r-pheatmap
                             r-mgcv
                             r-limsolve
                             r-ggplot2
                             r-desctools
                             r-cowplot
                             r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chencxxy28/InteRD")
    (synopsis "The Integrated and Robust Deconvolution")
    (description
     "We developed the Integrated and Robust Deconvolution algorithm to infer
cell-type proportions from target bulk RNA-seq data.  This package is able to
effectively integrate deconvolution results from multiple scRNA-seq datasets and
calibrates estimates from reference-based deconvolution by taking into account
extra biological information as priors.  Moreover, the proposed algorithm is
robust to inaccurate external information imposed in the deconvolution system.")
    (license license:artistic2.0)))

(define-public r-interca
  (package
    (name "r-interca")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interca" version))
              (sha256
               (base32
                "1ddv1rphdpvxbqbmrj3bgsdpksq84yjxdgygms5pw8jdz8yjyirs"))))
    (properties `((upstream-name . "interca")))
    (build-system r-build-system)
    (propagated-inputs (list r-waiter
                             r-shinywidgets
                             r-shinyfeedback
                             r-shiny
                             r-rmarkdown
                             r-readxl
                             r-readr
                             r-openxlsx
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-factominer
                             r-factoextra
                             r-dt
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=interca")
    (synopsis
     "Multiple Correspondence Analysis Based on Interpretive Coordinates")
    (description
     "Various functions and a Shiny app to enrich the results of Multiple
Correspondence Analysis with interpretive axes and planes (see Moschidis,
Markos, and Thanopoulos, 2022; <doi:10.1108/ACI-07-2022-0191>).")
    (license license:gpl3)))

(define-public r-interatrix
  (package
    (name "r-interatrix")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Interatrix" version))
              (sha256
               (base32
                "1pjyfg5p6081hng9h6wcmfnlfkcs300c3x9ksdj01587b97ph9s1"))))
    (properties `((upstream-name . "Interatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=Interatrix")
    (synopsis "Compute Chi-Square Measures with Corrections")
    (description "Chi-square tests are computed with corrections.")
    (license license:gpl2+)))

(define-public r-interactiontest
  (package
    (name "r-interactiontest")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interactionTest" version))
              (sha256
               (base32
                "0ycr839l07xahakr4r2jvlmd0fcxfm4qi3g8agnyh24c2kwl3ck2"))))
    (properties `((upstream-name . "interactionTest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=interactionTest")
    (synopsis
     "Calculates Critical Test Statistics to Control False Discovery Rates in Marginal Effects Plots")
    (description
     "This package implements the procedures suggested in Esarey and Sumner (2017)
<http://justinesarey.com/interaction-overconfidence.pdf> for controlling the
false discovery rate when constructing marginal effects plots for models with
interaction terms.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-interactions
  (package
    (name "r-interactions")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interactions" version))
              (sha256
               (base32
                "16lrlj0rc9bkxgmackpvcx8wx9pbsnr55vak6zx022ss820h3ljj"))))
    (properties `((upstream-name . "interactions")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-jtools
                             r-ggplot2
                             r-generics
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://interactions.jacob-long.com")
    (synopsis "Comprehensive, User-Friendly Toolkit for Probing Interactions")
    (description
     "This package provides a suite of functions for conducting and interpreting
analysis of statistical interaction in regression models that was formerly part
of the jtools package.  Functionality includes visualization of two- and
three-way interactions among continuous and/or categorical variables as well as
calculation of \"simple slopes\" and Johnson-Neyman intervals (see e.g., Bauer &
Curran, 2005 <doi:10.1207/s15327906mbr4003_5>).  These capabilities are
implemented for generalized linear models in addition to the standard linear
regression context.")
    (license license:expat)))

(define-public r-interactionrcs
  (package
    (name "r-interactionrcs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interactionRCS" version))
              (sha256
               (base32
                "07yhcgp9jc0fd29drsvdcpg8hw3zafr3njkx4qa5qhp3jsn0m3pm"))))
    (properties `((upstream-name . "interactionRCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rms
                             r-pspline
                             r-pryr
                             r-msm
                             r-mlbench
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=interactionRCS")
    (synopsis "Calculate Estimates in Models with Interaction")
    (description
     "This package provides a tool to calculate and plot estimates from models in
which an interaction between the main predictor and a continuous covariate has
been specified.  Methods used in the package refer to Harrell Jr FE (2015,
ISBN:9783319330396); Durrleman S, Simon R. (1989) <doi:10.1002/sim.4780080504>;
Greenland S. (1995) <doi:10.1097/00001648-199507000-00005>.")
    (license license:gpl3)))

(define-public r-interactionr
  (package
    (name "r-interactionr")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "interactionR" version))
              (sha256
               (base32
                "1k6fn0y69s8dq14yqqai4qm97cdyp7sfn8ni19xs2h8hwgmxdhf9"))))
    (properties `((upstream-name . "interactionR")))
    (build-system r-build-system)
    (propagated-inputs (list r-officer r-msm r-flextable r-car))
    (home-page "https://github.com/epi-zen/interactionR")
    (synopsis "Full Reporting of Interaction Analyses")
    (description
     "This package produces a publication-ready table that includes all effect
estimates necessary for full reporting effect modification and interaction
analysis as recommended by Knol and Vanderweele (2012)
[<doi:10.1093/ije/dyr218>].  It also estimates confidence interval for the trio
of additive interaction measures using the delta method (see Hosmer and Lemeshow
(1992), [<doi:10.1097/00001648-199209000-00012>]), variance recovery method (see
Zou (2008), [<doi:10.1093/aje/kwn104>]), or percentile bootstrapping (see
Assmann et al. (1996), [<doi:10.1097/00001648-199605000-00012>]).")
    (license license:gpl3)))

(define-public r-interactionpower
  (package
    (name "r-interactionpower")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InteractionPoweR" version))
              (sha256
               (base32
                "1mff2kasdrkk56xqvw66m8sn6186dk0nbv8bx0izpr5qf9dz308q"))))
    (properties `((upstream-name . "InteractionPoweR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-polynom
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-ggbeeswarm
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-chngpt))
    (home-page "https://dbaranger.github.io/InteractionPoweR/")
    (synopsis
     "Power Analyses for Interaction Effects in Cross-Sectional Regressions")
    (description
     "Power analysis for regression models which test the interaction of two
independent variables on a single dependent variable.  Includes options for
continuous, binary, or ordinal variables, as well as correlated interacting
variables.  Also includes options to specify variable reliability.  Power
analyses can be done either analytically or via simulation.  Includes tools for
simulating single data sets and visualizing power analysis results.  The primary
functions are power_interaction_r2() and power_interaction().  Please cite as:
Baranger DAA, Finsaas MC, Goldstein BL, Vize CE, Lynam DR, Olino TM (2022).
\"Tutorial: Power analyses for interaction effects in cross-sectional
regressions.\" <doi:10.31234/osf.io/5ptd7>.")
    (license license:gpl3+)))

(define-public r-intensitynet
  (package
    (name "r-intensitynet")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intensitynet" version))
              (sha256
               (base32
                "0rgm8rj95r269ww7snwv6czqdxabhzwxyaf3587scprhhn7pncy3"))))
    (properties `((upstream-name . "intensitynet")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-spdep
                             r-spatstat-geom
                             r-sna
                             r-matrix
                             r-intergraph
                             r-igraph
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=intensitynet")
    (synopsis
     "Intensity Analysis of Spatial Point Patterns on Complex Networks")
    (description
     "Tools to analyze point patterns in space occurring over planar network
structures derived from graph-related intensity measures for undirected,
directed, and mixed networks.  This package is based on the following research:
Eckardt and Mateu (2018) <doi:10.1080/10618600.2017.1391695>.  Eckardt and Mateu
(2021) <doi:10.1007/s11749-020-00720-4>.")
    (license license:gpl3)))

(define-public r-intensity-analysis
  (package
    (name "r-intensity-analysis")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intensity.analysis" version))
              (sha256
               (base32
                "1ydmn7njqk6i2667zaha8mvfndss4im39czadg1f3z6sndp2lsji"))))
    (properties `((upstream-name . "intensity.analysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgdal r-reshape2 r-raster r-ggplot2 r-differ))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=intensity.analysis")
    (synopsis
     "Intensity of Change for Comparing Categorical Maps from Sequential Intervals")
    (description
     "Calculate metrics of change intensity for category, transition and interval
levels in categorical maps from sequential intervals.  For more information
please consult: Aldwaik,Safaa Zakaria and Robert Gilmore Pontius Jr. (2012).
\"Intensity analysis to unify measurements of size and stationarity of land
changes by interval, category, and transition\".  Landscape and Urban Planning.
106, 103-114. <doi:10.1016/j.landurbplan.2012.02.010>.")
    (license license:gpl2+)))

(define-public r-intensegrid
  (package
    (name "r-intensegrid")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intensegRid" version))
              (sha256
               (base32
                "1dhk14rxy7c2pawcg89bhbnx30nzi5hppywmf41aa7f40x2m7wxs"))))
    (properties `((upstream-name . "intensegRid")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KKulma/intensegRid")
    (synopsis "R Wrapper for the Carbon Intensity API")
    (description
     "Electricity is not made equal and it vary in its carbon footprint (or carbon
intensity) depending on its source.  This package enables to access and query
data provided by the Carbon Intensity API (<https://carbonintensity.org.uk/>).
National Gridâs Carbon Intensity API provides an indicative trend of regional
carbon intensity of the electricity system in Great Britain.")
    (license license:cc0)))

(define-public r-intendo
  (package
    (name "r-intendo")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intendo" version))
              (sha256
               (base32
                "1qkgb0yrlq2k9cg934v5pj8bb6kla911v3z7sadd1p7m8a10kdyw"))))
    (properties `((upstream-name . "intendo")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=intendo")
    (synopsis
     "Group of Fun Datasets of Various Sizes and Differing Levels of Quality")
    (description
     "Four datasets are provided here from the Intendo game Super Jetroid'.  It is
data from the 2015 year of operation and it comprises a revenue table
('all_revenue'), a daily users table ('users_daily'), a user summary table
('user_summary'), and a table with data on all user sessions ('all_sessions').
These core datasets come in different sizes, and, each of them has a variant
that was intentionally made faulty (totally riddled with errors and
inconsistencies).  This suite of tables is useful for testing with packages that
focus on data validation and data documentation.")
    (license license:expat)))

(define-public r-integratedmrf
  (package
    (name "r-integratedmrf")
    (version "1.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntegratedMRF" version))
              (sha256
               (base32
                "0kklgc48cib4bjfs9qbw13nkp8xyjdazrg6z15x69jylnxyakic7"))))
    (properties `((upstream-name . "IntegratedMRF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-multivariaterandomforest r-limsolve
                             r-ggplot2 r-bootstrap))
    (home-page "https://cran.r-project.org/package=IntegratedMRF")
    (synopsis
     "Integrated Prediction using Uni-Variate and Multivariate Random Forests")
    (description
     "An implementation of a framework for drug sensitivity prediction from various
genetic characterizations using ensemble approaches.  Random Forests or
Multivariate Random Forest predictive models can be generated from each genetic
characterization that are then combined using a Least Square Regression
approach.  It also provides options for the use of different error estimation
approaches of Leave-one-out, Bootstrap, N-fold cross validation and
0.632+Bootstrap along with generation of prediction confidence interval using
Jackknife-after-Bootstrap approach.")
    (license license:gpl3)))

(define-public r-integratedjm
  (package
    (name "r-integratedjm")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntegratedJM" version))
              (sha256
               (base32
                "0fv24z7vidhn09ljk09pjzkrlg2rlwxcrhfjc53ybjjgsgay99z6"))))
    (properties `((upstream-name . "IntegratedJM")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-ggplot2 r-biobase))
    (home-page "https://cran.r-project.org/package=IntegratedJM")
    (synopsis
     "Joint Modeling of the Gene-Expression and Bioassay Data, Taking Care of the Effect Due to a Fingerprint Feature")
    (description
     "Offers modeling the association between gene-expression and bioassay data,
taking care of the effect due to a fingerprint feature and helps with several
plots to better understand the analysis.")
    (license license:gpl3)))

(define-public r-integratebs
  (package
    (name "r-integratebs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntegrateBs" version))
              (sha256
               (base32
                "1pkx4wpahd1sabzx55law3710x3vbh9yi6kii8gs2xfq3cb1llmq"))))
    (properties `((upstream-name . "IntegrateBs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IntegrateBs")
    (synopsis "Integration for B-Spline")
    (description "Integrated B-spline function.")
    (license license:gpl2)))

(define-public r-integr
  (package
    (name "r-integr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "integr" version))
              (sha256
               (base32
                "172vj29bdk42ibgwj7dl06wslpg2dccp1i8iscbz1yd0j5kw36sq"))))
    (properties `((upstream-name . "integr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsvg r-gtools r-dplyr r-diagrammersvg
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/peleplay/integr")
    (synopsis "An Implementation of Interaction Graphs of Aleks Jakulin")
    (description
     "Generates a Graphviz graph of the most significant 3-way interaction gains (i.e.
 conditional information gains) based on a provided discrete data frame.
Various output formats are supported ('Graphviz', SVG, PNG, PDF, PS).  For
references, see the webpage of Aleks Jakulin
<http://stat.columbia.edu/~jakulin/Int/>.")
    (license license:gpl3)))

(define-public r-integirty
  (package
    (name "r-integirty")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "integIRTy" version))
              (sha256
               (base32
                "15f04p97fvqdq971adyafm3ljirfxz90lv096fdqn2vk0sq5dwyj"))))
    (properties `((upstream-name . "integIRTy")))
    (build-system r-build-system)
    (propagated-inputs (list r-mclust
                             r-mass
                             r-ltm
                             r-foreach
                             r-doparallel
                             r-abind))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis
     "Integrating Multiple Modalities of High Throughput Assays Using Item Response Theory")
    (description
     "This package provides a systematic framework for integrating multiple modalities
of assays profiled on the same set of samples.  The goal is to identify genes
that are altered in cancer either marginally or consistently across different
assays.  The heterogeneity among different platforms and different samples are
automatically adjusted so that the overall alteration magnitude can be
accurately inferred.  See Tong and Coombes (2012)
<doi:10.1093/bioinformatics/bts561>.")
    (license license:asl2.0)))

(define-public r-intcensroc
  (package
    (name "r-intcensroc")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intcensROC" version))
              (sha256
               (base32
                "1raqjc3g9fgyd01iax7hrmkk3nzzfi34a1ywhjrkwv1n9gsc58ns"))))
    (properties `((upstream-name . "intcensROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.oit.duke.edu/dcibioinformatics/soft/intcensroc")
    (synopsis "AUC Estimation of Interval Censored Survival Data")
    (description
     "The kernel of this Rcpp based package is an efficient implementation of the
generalized gradient projection method for spline function based constrained
maximum likelihood estimator for interval censored survival data (Wu, Yuan;
Zhang, Ying.  Partially monotone tensor spline estimation of the joint
distribution function with bivariate current status data.  Ann.  Statist.  40,
2012, 1609-1636 <doi:10.1214/12-AOS1016>).  The key function computes the
density function of the joint distribution of event time and the marker and
returns the receiver operating characteristic (ROC) curve for the interval
censored survival data as well as area under the curve (AUC).")
    (license license:gpl2+)))

(define-public r-intccr
  (package
    (name "r-intccr")
    (version "3.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intccr" version))
              (sha256
               (base32
                "1bpzsik6yypkxskp7ar8a1j0wmndsx41xn4kaffz0fni988l23hc"))))
    (properties `((upstream-name . "intccr")))
    (build-system r-build-system)
    (propagated-inputs (list r-splines2 r-mass r-foreach r-doparallel
                             r-alabama))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=intccr")
    (synopsis
     "Semiparametric Competing Risks Regression under Interval Censoring")
    (description
     "Semiparametric regression models on the cumulative incidence function for
interval-censored competing risks data as described in Bakoyannis, Yu, &
Yiannoutsos (2017) /doi{10.1002/sim.7350} and the models with missing event
types as described in Park, Bakoyannis, Zhang, & Yiannoutsos (2021)
\\doi{10.1093/biostatistics/kxaa052}.  The proportional subdistribution hazards
model (Fine-Gray model), the proportional odds model, and other models that
belong to the class of semiparametric generalized odds rate transformation
models.")
    (license license:gpl2+)))

(define-public r-intcal
  (package
    (name "r-intcal")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IntCal" version))
              (sha256
               (base32
                "0d5sd63ajmksafxfrfbd8jsgkbcxirjgd1532blylbcnwjlcws15"))))
    (properties `((upstream-name . "IntCal")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IntCal")
    (synopsis "Radiocarbon Calibration Curves")
    (description
     "The IntCal20 radiocarbon calibration curves (Reimer et al.  2020
<doi:10.1017/RDC.2020.68>) are provided here in a single data package, together
with previous IntCal curves (IntCal13, IntCal09, IntCal04, IntCal98) and
postbomb curves.  Also provided are functions to copy the curves into memory,
and to plot the curves and their underlying data, as well as functions to
calibrate radiocarbon dates.")
    (license license:gpl2+)))

(define-public r-intamap
  (package
    (name "r-intamap")
    (version "1.5-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "intamap" version))
              (sha256
               (base32
                "1d269rg1wf431v6p9blxspnnps8lyzcc8wid5qgy6hj3wrya0a37"))))
    (properties `((upstream-name . "intamap")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-sf
                             r-mvtnorm
                             r-mba
                             r-mass
                             r-gstat
                             r-foreach
                             r-evd
                             r-doparallel
                             r-automap))
    (home-page "https://cran.r-project.org/package=intamap")
    (synopsis "Procedures for Automated Interpolation")
    (description
     "Geostatistical interpolation has traditionally been done by manually fitting a
variogram and then interpolating.  Here, we introduce classes and methods that
can do this interpolation automatically.  Pebesma et al (2010) gives an overview
of the methods behind and possible usage <doi:10.1016/j.cageo.2010.03.019>.")
    (license license:gpl2+)))

(define-public r-insurancerating
  (package
    (name "r-insurancerating")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insurancerating" version))
              (sha256
               (base32
                "0yllp7r1jmv09py3v8blir7nc3vpd8y5a8b3r8k5ncyx7k56nbwh"))))
    (properties `((upstream-name . "insurancerating")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-scales
                             r-patchwork
                             r-mgcv
                             r-magrittr
                             r-lubridate
                             r-insight
                             r-ggplot2
                             r-fitdistrplus
                             r-evtree
                             r-dplyr
                             r-dharma
                             r-data-table
                             r-colorspace
                             r-classint
                             r-citools))
    (home-page "https://github.com/mharinga/insurancerating")
    (synopsis "Analytic Insurance Rating Techniques")
    (description
     "This package provides methods for insurance rating.  It helps actuaries to
implement GLMs within all relevant steps needed to construct a risk premium from
raw data.  It provides a data driven strategy for the construction of insurance
tariff classes.  This strategy is based on the work by Antonio and Valdez (2012)
<doi:10.1007/s10182-011-0152-7>.  It also provides recipes on how to easily
perform one-way, or univariate, analyses on an insurance portfolio.  In addition
it adds functionality to include reference categories in the levels of the
coefficients in the output of a generalized linear regression analysis.")
    (license license:gpl2+)))

(define-public r-insurancedata
  (package
    (name "r-insurancedata")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insuranceData" version))
              (sha256
               (base32
                "0wryh8i1v3bnpbqn6d6dpxr9bwwl6mnh5cb5igz0yanh4m1rx96w"))))
    (properties `((upstream-name . "insuranceData")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=insuranceData")
    (synopsis
     "Collection of Insurance Datasets Useful in Risk Classification in Non-life Insurance.")
    (description
     "Insurance datasets, which are often used in claims severity and claims frequency
modelling.  It helps testing new regression models in those problems, such as
GLM, GLMM, HGLM, non-linear mixed models etc.  Most of the data sets are applied
in the project \"Mixed models in ratemaking\" supported by grant NN 111461540 from
Polish National Science Center.")
    (license license:gpl2)))

(define-public r-instar
  (package
    (name "r-instar")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "instaR" version))
              (sha256
               (base32
                "0c4m471ragkpksr0h21cdgnjxcknf01xqz543dahxgzjg9ncjwhg"))))
    (properties `((upstream-name . "instaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/pablobarbera/instaR")
    (synopsis "Access to Instagram API via R")
    (description
     "This package provides an interface to the Instagram API <https://instagram.com/
developer/>, which allows R users to download public pictures filtered by
hashtag, popularity, user or location, and to access public users profile data.")
    (license license:gpl2)))

(define-public r-installr
  (package
    (name "r-installr")
    (version "0.23.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "installr" version))
              (sha256
               (base32
                "1qlwcww3bgbdfqk2qi1vvis11bnvkkwa6h2l195knhx0i0ha8pfj"))))
    (properties `((upstream-name . "installr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://talgalili.github.io/installr/")
    (synopsis
     "Using R to Install Stuff on Windows OS (Such As: R, 'Rtools', 'RStudio', 'Git', and More!)")
    (description
     "R is great for installing software.  Through the installr package you can
automate the updating of R (on Windows, using updateR()) and install new
software.  Software installation is initiated through a GUI (just run
installr()), or through functions such as: install.Rtools(), install.pandoc(),
install.git(), and many more.  The updateR() command performs the following:
finding the latest R version, downloading it, running the installer, deleting
the installation file, copy and updating old packages to the new R installation.")
    (license license:gpl2)))

(define-public r-install-load
  (package
    (name "r-install-load")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "install.load" version))
              (sha256
               (base32
                "0ylis31bxyqhjpwb1fwadgb8wwrcjq4p8mrznqckrx6a0f6sai0m"))))
    (properties `((upstream-name . "install.load")))
    (build-system r-build-system)
    (propagated-inputs (list r-fastmatch r-checkmate r-assertthat))
    (home-page "https://gitlab.com/iembry/install.load")
    (synopsis "Check, Install and Load CRAN & USGS GRAN Packages")
    (description
     "The function install_load checks the local R library(ies) to see if the required
package(s) is/are installed or not.  If the package(s) is/are not installed,
then the package(s) will be installed along with the required dependency(ies).
This function pulls source or binary packages from the Rstudio-sponsored CRAN
mirror and/or the USGS GRAN Repository.  Lastly, the chosen package(s) is/are
loaded.  The function load_package simply loads the provided packages.  If this
package does not fit your needs, then you may want to consider these other R
packages: needs', easypackages', pacman', pak', anyLib', and/or librarian'.")
    (license (list license:cc-by-sa4.0 license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-instagramadsr
  (package
    (name "r-instagramadsr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "instagramadsR" version))
              (sha256
               (base32
                "1g2gikps3qraa12x8vfxsyanxg2mkcix57pcsh5myi1lcp5r2y5z"))))
    (properties `((upstream-name . "instagramadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Access to Instagram Ads via the 'Windsor.ai' API")
    (description
     "Collect marketing data from Instagram Ads using the Windsor.ai API
<https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-inspire
  (package
    (name "r-inspire")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INSPIRE" version))
              (sha256
               (base32
                "0938l50yxnb5q628mp874ayx9ybvcjddis20y1hzm5cmlsg0hqhg"))))
    (properties `((upstream-name . "INSPIRE")))
    (build-system r-build-system)
    (propagated-inputs (list r-missmda))
    (home-page "inspire.cs.washington.edu")
    (synopsis
     "Inferring Shared Modules from Multiple Gene Expression Datasets with Partially Overlapping Gene Sets")
    (description
     "This package provides a method to infer modules of co-expressed genes and the
dependencies among the modules from multiple expression datasets that may
contain different sets of genes.  Please refer to: Extracting a low-dimensional
description of multiple gene expression datasets reveals a potential driver for
tumor-associated stroma in ovarian cancer, Safiye Celik, Benjamin A. Logsdon,
Stephanie Battle, Charles W. Drescher, Mara Rendi, R. David Hawkins and Su-In
Lee (2016) <DOI:10.1186/s13073-016-0319-7>.")
    (license license:gpl2+)))

(define-public r-inspectumours
  (package
    (name "r-inspectumours")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INSPECTumours" version))
              (sha256
               (base32
                "1jh6p3bgnrjixqzvjl0z3nv6lh01fx3x925h3na2pi3scqx5gx0s"))))
    (properties `((upstream-name . "INSPECTumours")))
    (build-system r-build-system)
    (propagated-inputs (list r-waiter
                             r-vroom
                             r-tippy
                             r-tidyr
                             r-tidybayes
                             r-shinyvalidate
                             r-shinytoastr
                             r-shinyjs
                             r-shinyfeedback
                             r-shinyalert
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-readxl
                             r-purrr
                             r-plotly
                             r-pander
                             r-modelr
                             r-lme4
                             r-knitr
                             r-ggplot2
                             r-ggeffects
                             r-dt
                             r-dplyr
                             r-brms))
    (home-page "https://cran.r-project.org/package=INSPECTumours")
    (synopsis "IN-vivo reSPonsE Classification of Tumours")
    (description
     "This is a shiny app used for the statistical classifying and analysing
pre-clinical tumour responses.")
    (license (license:fsdg-compatible "Apache License (== 2)"))))

(define-public r-inspector
  (package
    (name "r-inspector")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inspector" version))
              (sha256
               (base32
                "16gc98af6wmwf32fz8zml5v17g5lkiybzyzsqgphx0k19hrbc6kr"))))
    (properties `((upstream-name . "inspector")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (home-page "https://ptfonseca.github.io/inspector/")
    (synopsis "Validation of Arguments and Objects in User-Defined Functions")
    (description
     "Utility functions that implement and automate common sets of validation tasks.
These functions are particularly useful to validate inputs, intermediate objects
and output values in user-defined functions, resulting in tidier and less
verbose functions.")
    (license license:expat)))

(define-public r-inspectdf
  (package
    (name "r-inspectdf")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inspectdf" version))
              (sha256
               (base32
                "1k9dszjfpvpc10qr9nbw5r55mdwslgblhlrgnqjnwx9i89j03mlk"))))
    (properties `((upstream-name . "inspectdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-rcpp
                             r-progress
                             r-magrittr
                             r-ggplot2
                             r-ggfittext
                             r-dplyr))
    (home-page "https://alastairrushworth.github.io/inspectdf/")
    (synopsis "Inspection, Comparison and Visualisation of Data Frames")
    (description
     "This package provides a collection of utilities for columnwise summary,
comparison and visualisation of data frames.  Functions report missingness,
categorical levels, numeric distribution, correlation, column types and memory
usage.")
    (license license:gpl2)))

(define-public r-inspectchangepoint
  (package
    (name "r-inspectchangepoint")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InspectChangepoint" version))
              (sha256
               (base32
                "084ji77z0dnbjrhy6z40kjbblsgk3z00z256pfknkqxd3v7sawvc"))))
    (properties `((upstream-name . "InspectChangepoint")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=InspectChangepoint")
    (synopsis "High-Dimensional Changepoint Estimation via Sparse Projection")
    (description
     "This package provides a data-driven projection-based method for estimating
changepoints in high-dimensional time series.  Multiple changepoints are
estimated using a (wild) binary segmentation scheme.")
    (license license:gpl3)))

(define-public r-insilicova
  (package
    (name "r-insilicova")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InSilicoVA" version))
              (sha256
               (base32
                "15x6d928rk9in2swbaal6hcw2nikj153fgqyd7nhdkcbs1agrsl1"))))
    (properties `((upstream-name . "InSilicoVA")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-interva5 r-ggplot2 r-coda))
    (home-page "https://github.com/verbal-autopsy-software/InSilicoVA")
    (synopsis
     "Probabilistic Verbal Autopsy Coding with 'InSilicoVA' Algorithm")
    (description
     "Computes individual causes of death and population cause-specific mortality
fractions using the InSilicoVA algorithm from McCormick et al. (2016)
<DOI:10.1080/01621459.2016.1152191>.  It uses data derived from verbal autopsy
(VA) interviews, in a format similar to the input of the widely used InterVA
method.  This package provides general model fitting and customization for
InSilicoVA algorithm and basic graphical visualization of the output.")
    (license license:gpl2)))

(define-public r-insee
  (package
    (name "r-insee")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insee" version))
              (sha256
               (base32
                "1f6y19dysm0mh3fkrwnqcgi5j1lzy08m3ij3wrx26q2vgwv5lkfg"))))
    (properties `((upstream-name . "insee")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyselect
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rappdirs
                             r-purrr
                             r-openssl
                             r-httr
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://pyr-opendatafr.github.io/R-Insee-Data/")
    (synopsis "Tools to Easily Download Data from INSEE BDM Database")
    (description
     "Using embedded sdmx queries, get the data of more than 150 000 insee series from
bdm macroeconomic database.")
    (license license:gpl3)))

(define-public r-insectdisease
  (package
    (name "r-insectdisease")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insectDisease" version))
              (sha256
               (base32
                "1ncj5fgmx19caf8m2p3ij5iamk941m9y725gs0nqpa9m6zfnzgf8"))))
    (properties `((upstream-name . "insectDisease")))
    (build-system r-build-system)
    (propagated-inputs (list r-taxize r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=insectDisease")
    (synopsis "Ecological Database of the World's Insect Pathogens")
    (description
     "David Onstad provided us with this insect disease database, sometimes referred
to as the Ecological Database of the Worlds Insect Pathogens or EDWIP. Files
have been converted from SQL to csv, and ported into R for easy exploration and
analysis.  Thanks to the Macroecology of Infectious Disease Research
Coordination Network (RCN) for funding and support.  Data are also served online
in a static format at <https://edwip.ecology.uga.edu/>.")
    (license license:gpl3)))

(define-public r-insect
  (package
    (name "r-insect")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insect" version))
              (sha256
               (base32
                "0pbac9il1jrhii0hxvvqjc3phyr2iamxwzanxx5mrkyjh2wsl3jh"))))
    (properties `((upstream-name . "insect")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-seqinr
                             r-rann
                             r-phylogram
                             r-openssl
                             r-kmer
                             r-aphid
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shaunpwilkinson/insect/")
    (synopsis "Informatic Sequence Classification Trees")
    (description
     "This package provides tools for probabilistic taxon assignment with informatic
sequence classification trees.  See Wilkinson et al (2018)
<doi:10.7287/peerj.preprints.26812v1>.")
    (license license:gpl3)))

(define-public r-insane
  (package
    (name "r-insane")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "insane" version))
              (sha256
               (base32
                "1i8lijxa78i76dicdvcpp5c12il0341dsfjccn8m8axnsq7qg81h"))))
    (properties `((upstream-name . "insane")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-readxl
                             r-purrr
                             r-patchwork
                             r-glue
                             r-ggthemes
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mcanouil/insane/")
    (synopsis "INsulin Secretion ANalysEr")
    (description
     "This package provides a user-friendly interface, using Shiny, to analyse
glucose-stimulated insulin secretion (GSIS) assays in pancreatic beta cells or
islets.  The package allows the user to import several sets of experiments from
different spreadsheets and to perform subsequent steps: summarise in a tidy
format, visualise data quality and compare experimental conditions without
omitting to account for technical confounders such as the date of the experiment
or the technician.  Together, insane is a comprehensive method that optimises
pre-processing and analyses of GSIS experiments in a friendly-user interface.
The Shiny App was initially designed for EndoC-betaH1 cell line following method
described in Ndiaye et al., 2017 (<doi:10.1016/j.molmet.2017.03.011>).")
    (license license:expat)))

(define-public r-inqc
  (package
    (name "r-inqc")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INQC" version))
              (sha256
               (base32
                "1gz7gyq5n2bmh18yrg29nz8kmdc0b35chwqxr6y2sggdm8j28akd"))))
    (properties `((upstream-name . "INQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-suncalc r-gdata r-evd))
    (home-page "https://github.com/INDECIS-Project/INQC")
    (synopsis "Quality Control of Climatological Daily Time Series")
    (description
     "Collection of functions for quality control (QC) of climatological daily time
series (e.g. the ECA&D station data).")
    (license license:gpl3+)))

(define-public r-inposition
  (package
    (name "r-inposition")
    (version "0.12.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InPosition" version))
              (sha256
               (base32
                "0d9c7dwaa1v0j8p5ff9223fc2gkbmbvyqylma2d8l4x5m92jmkv0"))))
    (properties `((upstream-name . "InPosition")))
    (build-system r-build-system)
    (propagated-inputs (list r-prettygraphs r-exposition))
    (home-page "https://cran.r-project.org/package=InPosition")
    (synopsis "Inference Tests for ExPosition")
    (description
     "Non-parametric resampling-based inference tests for ExPosition.")
    (license license:gpl2)))

(define-public r-inplace
  (package
    (name "r-inplace")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inplace" version))
              (sha256
               (base32
                "06jb8xzjqywdww8j2i59c8663dfbrhnvj0lh3xm73j39sig6vh7l"))))
    (properties `((upstream-name . "inplace")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/privefl/inplace")
    (synopsis "In-place Operators for R")
    (description
     "It provides in-place operators for R that are equivalent to +=', -=', *=', /= in
C++.  Those can be applied on integer|double vectors|matrices.  You have also
access to sweep operations (in-place).")
    (license license:gpl3)))

(define-public r-inpdfr
  (package
    (name "r-inpdfr")
    (version "0.1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inpdfr" version))
              (sha256
               (base32
                "1wnz73ggc7xcgynvdlvgz26qkfjmxxy0xg8gkf1far5346g4qd9y"))))
    (properties `((upstream-name . "inpdfr")))
    (build-system r-build-system)
    (inputs (list xpdf))
    (propagated-inputs (list r-wordcloud
                             r-tm
                             r-stringi
                             r-snowballc
                             r-rcolorbrewer
                             r-r-devices
                             r-metacom
                             r-entropart
                             r-cluster
                             r-ca))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/frareb/inpdfr/")
    (synopsis "Analyse Text Documents Using Ecological Tools")
    (description
     "This package provides a set of functions to analyse and compare texts, using
classical text mining	functions, as well as those from theoretical ecology.")
    (license license:gpl2)))

(define-public r-inops
  (package
    (name "r-inops")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inops" version))
              (sha256
               (base32
                "1y402a9r542hpwd1nfdc07mbgnf9alpnykl9di1v8fy0qly8s0an"))))
    (properties `((upstream-name . "inops")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/moodymudskipper/inops")
    (synopsis "Infix Operators for Detection, Subsetting and Replacement")
    (description
     "Infix operators to detect, subset, and replace the elements matched by a given
condition.  The functions have several variants of operator types, including
subsets, ranges, regular expressions and others.  Implemented operators work on
vectors, matrices, and lists.")
    (license license:gpl3)))

(define-public r-innsight
  (package
    (name "r-innsight")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "innsight" version))
              (sha256
               (base32
                "0ckhxicgvvrwzsm1x396xp2fj6g7v2m2ga4gzvqrw4my10w4y3di"))))
    (properties `((upstream-name . "innsight")))
    (build-system r-build-system)
    (propagated-inputs (list r-torch r-r6 r-ggplot2 r-cli r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bips-hb.github.io/innsight/")
    (synopsis "Get the Insights of your Neural Network")
    (description
     "Interpretability methods to analyze the behavior and individual predictions of
modern neural networks.  Implemented methods are: Connection Weights described
by Olden et al. (2004) <doi:10.1016/j.ecolmodel.2004.03.013>, Layer-wise
Relevance Propagation ('LRP') described by Bach et al. (2015)
<doi:10.1371/journal.pone.0130140>, Deep Learning Important Features
('DeepLIFT') described by Shrikumar et al. (2017) <arXiv:1704.02685> and
gradient-based methods like SmoothGrad described by Smilkov et al. (2017)
<arXiv:1706.03825>, Gradient x Input described by Baehrens et al. (2009)
<arXiv:0912.1128> or Vanilla Gradient'.")
    (license license:expat)))

(define-public r-inlpubs
  (package
    (name "r-inlpubs")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inlpubs" version))
              (sha256
               (base32
                "0yzi5x4kyjnb6mjfknqs6415ryf44r55qifh9d2s9nzbhk5y11mg"))))
    (properties `((upstream-name . "inlpubs")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://code.usgs.gov/inl/inlpubs")
    (synopsis "USGS INL Project Office Publications")
    (description
     "This package contains bibliographic information for the U.S. Geological Survey
(USGS) Idaho National Laboratory (INL) Project Office.")
    (license license:cc0)))

(define-public r-inlinedocs
  (package
    (name "r-inlinedocs")
    (version "2019.12.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inlinedocs" version))
              (sha256
               (base32
                "11d8cnrzgq95w7hn234rcwrr1mmrv63f69807pnzxizxbgnp7wz3"))))
    (properties `((upstream-name . "inlinedocs")))
    (build-system r-build-system)
    (home-page "http://github.com/tdhock/inlinedocs")
    (synopsis "Convert Inline Comments to Documentation")
    (description
     "Generates Rd files from R source code with comments.  The main features of the
default syntax are that (1) docs are defined in comments near the relevant code,
(2) function argument names are not repeated in comments, and (3) examples are
defined in R code, not comments.  It is also easy to define a new syntax.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-inlcolor
  (package
    (name "r-inlcolor")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inlcolor" version))
              (sha256
               (base32
                "0998smgzkspij2fa5si1sk5dfpas3645crk5hqkdg9ip228cqn16"))))
    (properties `((upstream-name . "inlcolor")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-rlang r-checkmate))
    (home-page "https://rconnect.usgs.gov/INLPO/inlcolor-main/")
    (synopsis
     "Color Schemes for the USGS Idaho National Laboratory Project Office")
    (description
     "This package provides a collection of functions for creating color schemes.
Used to support packages and scripts written by researchers at the United States
Geological Survey (USGS) Idaho National Laboratory Project Office.")
    (license license:cc0)))

(define-public r-inlaspacetime
  (package
    (name "r-inlaspacetime")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INLAspacetime" version))
              (sha256
               (base32
                "11kkmmz4lm0qdqmbnx1j719kdwmq3zrvmd5kh099x3gmrmi90ivd"))))
    (properties `((upstream-name . "INLAspacetime")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-sf r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eliaskrainski/INLAspacetime")
    (synopsis "Spatial and Spatio-Temporal Models using 'INLA'")
    (description
     "Prepare objects to implement models over spatial and spacetime domains with the
INLA package (<https://www.r-inla.org>).  These objects contain data to for the
cgeneric interface in INLA', enabling fast parallel computations.  We
implemented the spatial barrier model, see Bakka et.  al. (2019)
<doi:10.1016/j.spasta.2019.01.002>, and some of the spatio-temporal models in
Lindgren et.  al. (2023) <arXiv:2006.04917>.  Details are provided in the
available vignettes and from the URL bellow.")
    (license license:gpl2+)))

(define-public r-inlabru
  (package
    (name "r-inlabru")
    (version "2.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inlabru" version))
              (sha256
               (base32
                "1b6ykgb1l1bq8mz4b40li6ypxh1r9yxl4jlcv8mwmkkfrgmz9rvp"))))
    (properties `((upstream-name . "inlabru")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-sp
                             r-sf
                             r-rlang
                             r-rgdal
                             r-plyr
                             r-patchwork
                             r-matrixmodels
                             r-matrix
                             r-magrittr
                             r-lifecycle))
    (native-inputs (list r-knitr))
    (home-page "http://www.inlabru.org")
    (synopsis "Bayesian Latent Gaussian Modelling using INLA and Extensions")
    (description
     "Facilitates spatial and general latent Gaussian modeling using integrated nested
Laplace approximation via the INLA package (<https://www.r-inla.org>).
Additionally, extends the GAM-like model class to more general nonlinear
predictor expressions, and implements a log Gaussian Cox process likelihood for
modeling univariate and spatial point processes based on ecological survey data.
 Model components are specified with general inputs and mapping methods to the
latent variables, and the predictors are specified via general R expressions,
with separate expressions for each observation likelihood model in
multi-likelihood models.  A prediction method based on fast Monte Carlo sampling
allows posterior prediction of general expressions of the latent variables.
Ecology-focused introduction in Bachl, Lindgren, Borchers, and Illian (2019)
<doi:10.1111/2041-210X.13168>.")
    (license license:gpl2+)))

(define-public r-inlabma
  (package
    (name "r-inlabma")
    (version "0.1-11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INLABMA" version))
              (sha256
               (base32
                "0wzyb3c7zpksqz198kigi4rpblvk0rjamngmyabw5xdpizxdg6zi"))))
    (properties `((upstream-name . "INLABMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdep r-sp r-matrix))
    (home-page "https://cran.r-project.org/package=INLABMA")
    (synopsis "Bayesian Model Averaging with INLA")
    (description
     "Fit Spatial Econometrics models using Bayesian model averaging on models fitted
with INLA. The INLA package can be obtained from <http://www.r-inla.org>.")
    (license license:gpl2+)))

(define-public r-injurytools
  (package
    (name "r-injurytools")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "injurytools" version))
              (sha256
               (base32
                "01fachbqa4m56anas1j0my0ifl3n675lzzf8lv6q4im4axn072b4"))))
    (properties `((upstream-name . "injurytools")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-metr
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lzumeta/injurytools")
    (synopsis "Toolkit for Sports Injury Data Analysis")
    (description
     "Sports Injury Data analysis aims to identify and describe the magnitude of the
injury problem, and to gain more insights (e.g. determine potential risk
factors) by statistical modelling approaches.  The injurytools package provides
standardized routines and utilities that simplify such analyses.  It offers
functions for data preparation, informative visualizations and descriptive and
model-based analyses.")
    (license license:expat)))

(define-public r-injuryseverityscore
  (package
    (name "r-injuryseverityscore")
    (version "0.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InjurySeverityScore" version))
              (sha256
               (base32
                "0g52cksa774in18ykrym61l3my9zm343bgsq5mg7mki9x65xd35z"))))
    (properties `((upstream-name . "InjurySeverityScore")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rlang r-dplyr))
    (home-page "https://github.com/dajuntian/InjurySeverityScore")
    (synopsis "Translate ICD-9 into Injury Severity Score")
    (description
     "Calculate the injury severity score (ISS) based on the dictionary in ICDPIC from
<https://ideas.repec.org/c/boc/bocode/s457028.html>.  The original code was
written in STATA 11'.  The original STATA code was written by David Clark,
Turner Osler and David Hahn.  I implement the same logic for easier access.
Ref: David E. Clark & Turner M. Osler & David R. Hahn, 2009. \"ICDPIC: Stata
module to provide methods for translating International Classification of
Diseases (Ninth Revision) diagnosis codes into standard injury categories and/or
scores,\" Statistical Software Components S457028, Boston College Department of
Economics, revised 29 Oct 2010.")
    (license license:gpl3)))

(define-public r-injector
  (package
    (name "r-injector")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "injectoR" version))
              (sha256
               (base32
                "0sa32cspp6y3m04yfmd02kxx55mk7l9jxf4r9pk1a6k3sqnj6fl8"))))
    (properties `((upstream-name . "injectoR")))
    (build-system r-build-system)
    (home-page "https://github.com/dfci-cccb/injectoR")
    (synopsis "R Dependency Injection")
    (description
     "R dependency injection framework.  Dependency injection allows a program design
to follow the dependency inversion principle.  The user delegates to external
code (the injector) the responsibility of providing its dependencies.  This
separates the responsibilities of use and construction.")
    (license license:lgpl3+)))

(define-public r-infusion
  (package
    (name "r-infusion")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Infusion" version))
              (sha256
               (base32
                "0dmbqwgavbfp54l47p6zdy75k9wi9zw3ai18q4gy8l4ag5vldzhi"))))
    (properties `((upstream-name . "Infusion")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-spamm
                             r-ranger
                             r-proxy
                             r-pbapply
                             r-numderiv
                             r-mvtnorm
                             r-matrixstats
                             r-foreach
                             r-blackbox))
    (home-page "https://www.R-project.org")
    (synopsis "Inference Using Simulation")
    (description
     "This package implements functions for simulation-based inference.  In
particular, implements functions to perform likelihood inference from data
summaries whose distributions are simulated.  A first approach was described in
Rousset et al. (2017 <doi:10.1111/1755-0998.12627>) but the package implements
more advanced methods.")
    (license (license:fsdg-compatible "CeCILL-2"))))

(define-public r-infrafdtd-assist
  (package
    (name "r-infrafdtd-assist")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "infraFDTD.assist" version))
              (sha256
               (base32
                "04j5nl5vxk79iciz6s9bpiyn319c2dbh7fdahgwira2r30w2fxv9"))))
    (properties `((upstream-name . "infraFDTD.assist")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields))
    (home-page "https://cran.r-project.org/package=infraFDTD.assist")
    (synopsis "IO Help for infraFDTD Model")
    (description
     "Facilitates the generation of input files for infraFDTD and processes snapshot
output.  infraFDTD is a finite-difference model written by Keehoon Kim for
simulating infrasound that considers topography and a 1-D atmosphere (see Kim et
al., 2015 <doi:10.1002/2015GL064466>).")
    (license license:gpl2+)))

(define-public r-infotrad
  (package
    (name "r-infotrad")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InfoTrad" version))
              (sha256
               (base32
                "0blfn59w73hjga15sw8plwvn6yq9fj95nxwp018mp1harl8wa5db"))))
    (properties `((upstream-name . "InfoTrad")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr))
    (home-page "https://cran.r-project.org/package=InfoTrad")
    (synopsis "Calculates the Probability of Informed Trading (PIN)")
    (description
     "Estimates the probability of informed trading (PIN) initially introduced by
Easley et.  al. (1996) <doi:10.1111/j.1540-6261.1996.tb04074.x> .  Contribution
of the package is that it uses likelihood factorizations of Easley et.  al.
(2010) <doi:10.1017/S0022109010000074> (EHO factorization) and Lin and Ke (2011)
<doi:10.1016/j.finmar.2011.03.001> (LK factorization).  Moreover, the package
uses different estimation algorithms.  Specifically, the grid-search algorithm
proposed by Yan and Zhang (2012) <doi:10.1016/j.jbankfin.2011.08.003> ,
hierarchical agglomerative clustering approach proposed by Gan et.  al. (2015)
<doi:10.1080/14697688.2015.1023336> and later extended by Ersan and Alici (2016)
<doi:10.1016/j.intfin.2016.04.001> .")
    (license license:gpl3)))

(define-public r-informedsen
  (package
    (name "r-informedsen")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "informedSen" version))
              (sha256
               (base32
                "1zb93289jszyj57ji00r35hx8ralxw2n6i384h6myxddgl377qfv"))))
    (properties `((upstream-name . "informedSen")))
    (build-system r-build-system)
    (propagated-inputs (list r-sensitivitymult))
    (home-page "https://cran.r-project.org/package=informedSen")
    (synopsis "Sensitivity Analysis Informed by a Test for Bias")
    (description
     "After testing for biased treatment assignment in an observational study using an
unaffected outcome, the sensitivity analysis is constrained to be compatible
with that test.  The package uses the optimization software gurobi obtainable
from <https://www.gurobi.com/>, together with its associated R package, also
called gurobi; see:
<https://www.gurobi.com/documentation/7.0/refman/installing_the_r_package.html>.
 The method is a substantial computational and practical enhancement of a
concept introduced in Rosenbaum (1992) Detecting bias with confidence in
observational studies Biometrika, 79(2), 367-374 <doi:10.1093/biomet/79.2.367>.")
    (license license:gpl2)))

(define-public r-informativecensoring
  (package
    (name "r-informativecensoring")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InformativeCensoring" version))
              (sha256
               (base32
                "1c8mfb82px9z27lc7br514mcbl65q7lfa3df9w3vvnk5g7ljswha"))))
    (properties `((upstream-name . "InformativeCensoring")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-dplyr r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jwb133/InformativeCensoring")
    (synopsis "Multiple Imputation for Informative Censoring")
    (description
     "Multiple Imputation for Informative Censoring.  This package implements two
methods.  Gamma Imputation described in <DOI:10.1002/sim.6274> and Risk Score
Imputation described in <DOI:10.1002/sim.3480>.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-information
  (package
    (name "r-information")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Information" version))
              (sha256
               (base32
                "0pszwzj3r7vdvdsy9w1qz95zxp7y2bsyg36b58mm4qcvcvymd4kn"))))
    (properties `((upstream-name . "Information")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-iterators
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Information")
    (synopsis
     "Data Exploration with Information Theory (Weight-of-Evidence and Information Value)")
    (description
     "This package performs exploratory data analysis and variable screening for
binary classification models using weight-of-evidence (WOE) and information
value (IV).  In order to make the package as efficient as possible, aggregations
are done in data.table and creation of WOE vectors can be distributed across
multiple cores.  The package also supports exploration for uplift models (NWOE
and NIV).")
    (license license:gpl3+)))

(define-public r-infodecompute
  (package
    (name "r-infodecompute")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "infoDecompuTE" version))
              (sha256
               (base32
                "0r1capiv4zr31dsy0sqly9zb00i86zq2ihbgsmb5g4cy0f04xlqz"))))
    (properties `((upstream-name . "infoDecompuTE")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://github.com/kcha193/infoDecompuTE")
    (synopsis "Information Decomposition of Two-Phase Experiments")
    (description
     "The main purpose of this package is to generate the structure of the analysis of
variance (ANOVA) table of the two-phase experiments.  The user only need to
input the design and the relationships of the random and fixed factors using the
Wilkinson-Rogers syntax, this package can then quickly generate the structure of
the ANOVA table with the coefficients of the variance components for the
expected mean squares.  Thus, the balanced incomplete block design and provides
the efficiency factors of the fixed effects can also be studied and compared
much easily.")
    (license license:gpl3+)))

(define-public r-influxdbr
  (package
    (name "r-influxdbr")
    (version "0.14.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influxdbr" version))
              (sha256
               (base32
                "03dzw86mvbc8w38q9skjki1z17vc04k9q8dx7sd3xg6xbr10f9d9"))))
    (properties `((upstream-name . "influxdbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/dleutnant/influxdbr")
    (synopsis "R Interface to InfluxDB")
    (description
     "An R interface to the InfluxDB time series database
<https://www.influxdata.com>.  This package allows you to fetch and write time
series data from/to an InfluxDB server.  Additionally, handy wrappers for the
Influx Query Language (IQL) to manage and explore a remote database are
provided.")
    (license license:gpl3)))

(define-public r-influxdbclient
  (package
    (name "r-influxdbclient")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influxdbclient" version))
              (sha256
               (base32
                "0zyb6ycyw03kwg8f27vhy14i0bh58j040bjbi9vm1m692hcvcqcd"))))
    (properties `((upstream-name . "influxdbclient")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-plyr
                             r-nanotime
                             r-jsonlite
                             r-httr
                             r-bit64))
    (home-page "https://github.com/influxdata/influxdb-client-r")
    (synopsis "'InfluxDB' 2.x Client")
    (description
     "InfluxDB 2.x time-series database client.  Supports both InfluxDB OSS
(<https://portal.influxdata.com/downloads/>) and Cloud
(<https://cloud2.influxdata.com/>) version.")
    (license (license:fsdg-compatible "MIT License + file LICENSE"))))

(define-public r-influential
  (package
    (name "r-influential")
    (version "2.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influential" version))
              (sha256
               (base32
                "19ha1hcirvxpp5nfmgk86jhlq0zprb81rzghijcjb8vpz80ldcdm"))))
    (properties `((upstream-name . "influential")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger
                             r-janitor
                             r-igraph
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-data-table
                             r-coop))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/asalavaty/influential")
    (synopsis
     "Identification and Classification of the Most Influential Nodes")
    (description
     "This package contains functions for the classification and ranking of top
candidate features, reconstruction of networks from adjacency matrices and data
frames, analysis of the topology of the network and calculation of centrality
measures, and identification of the most influential nodes.  Also, a function is
provided for running SIRIR model, which is the combination of leave-one-out
cross validation technique and the conventional SIR model, on a network to
unsupervisedly rank the true influence of vertices.  Additionally, some
functions have been provided for the assessment of dependence and correlation of
two network centrality measures as well as the conditional probability of
deviation from their corresponding means in opposite direction.  Fred Viole and
David Nawrocki (2013, ISBN:1490523995).  Csardi G, Nepusz T (2006). \"The igraph
software package for complex network research.\" InterJournal, Complex Systems,
1695.  Adopted algorithms and sources are referenced in function document.")
    (license license:gpl3)))

(define-public r-influenceauc
  (package
    (name "r-influenceauc")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influenceAUC" version))
              (sha256
               (base32
                "0pscwfxs2y780lzd5sxldnnkzzs2lsjdwz71z44kn7884wqmikpm"))))
    (properties `((upstream-name . "influenceAUC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr r-ggrepel r-ggplot2 r-geigen r-dplyr))
    (home-page "https://cran.r-project.org/package=influenceAUC")
    (synopsis "Identify Influential Observations in Binary Classification")
    (description
     "Ke, B. S., Chiang, A. J., & Chang, Y. C. I. (2018)
<doi:10.1080/10543406.2017.1377728> provide two theoretical methods (influence
function and local influence) based on the area under the receiver operating
characteristic curve (AUC) to quantify the numerical impact of each observation
to the overall AUC. Alternative graphical tools, cumulative lift charts, are
proposed to reveal the existences and approximate locations of those influential
observations through data visualization.")
    (license license:gpl3)))

(define-public r-influence-sem
  (package
    (name "r-influence-sem")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influence.SEM" version))
              (sha256
               (base32
                "0z83rvlri9g30291p0wv4s0jhiy6445lcrqrd4n1crach9672yzy"))))
    (properties `((upstream-name . "influence.SEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-lavaan))
    (home-page "https://cran.r-project.org/package=influence.SEM")
    (synopsis "Case Influence in Structural Equation Models")
    (description
     "This package provides a set of tools for evaluating several measures of case
influence for structural equation models.")
    (license license:gpl2+)))

(define-public r-influence-me
  (package
    (name "r-influence-me")
    (version "0.9-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "influence.ME" version))
              (sha256
               (base32
                "0f6d2hvs9qllyfpsp2cgh7w8yjxafclbk47n8av7j9zpp7s5yg9v"))))
    (properties `((upstream-name . "influence.ME")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-lme4 r-lattice))
    (home-page "http://www.rensenieuwenhuis.nl/r-project/influenceme/")
    (synopsis "Tools for Detecting Influential Data in Mixed Effects Models")
    (description
     "This package provides a collection of tools for detecting influential cases in
generalized mixed effects models.  It analyses models that were estimated using
lme4'.  The basic rationale behind identifying influential data is that when
single units are omitted from the data, models based on these data should not
produce substantially different estimates.  To standardize the assessment of how
influential a (single group of) observation(s) is, several measures of influence
are common practice, such as Cook's Distance.  In addition, we provide a measure
of percentage change of the fixed point estimates and a simple procedure to
detect changing levels of significance.")
    (license license:gpl3)))

(define-public r-inflectssp
  (package
    (name "r-inflectssp")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InflectSSP" version))
              (sha256
               (base32
                "14i53bsy693yh28y1akg4xd6srz077v9a8i7hx07qf73w2m84v1z"))))
    (properties `((upstream-name . "InflectSSP")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx
                             r-tidyr
                             r-svglite
                             r-readxl
                             r-rcolorbrewer
                             r-plotrix
                             r-network
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-ggally
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=InflectSSP")
    (synopsis "Melt Curve Fitting and Melt Shift Analysis")
    (description
     "Analyzes raw abundance data from a cellular thermal shift experiment and
calculates melt temperatures and melt shifts for each protein in the experiment.
 McCracken (2022) <doi:10.1101/2022.12.30.522131>.")
    (license license:gpl2)))

(define-public r-inflection
  (package
    (name "r-inflection")
    (version "1.3.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inflection" version))
              (sha256
               (base32
                "11kiclf3jd08im5lkm12p9winkcqp4y8897syvccx07qc99kifn8"))))
    (properties `((upstream-name . "inflection")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=inflection")
    (synopsis "Finds the Inflection Point of a Curve")
    (description
     "Implementation of methods Extremum Surface Estimator (ESE) and Extremum Distance
Estimator (EDE) to identify the inflection point of a curve .  Christopoulos, DT
(2014) <doi:10.48550/arXiv.1206.5478> .  Christopoulos, DT (2016)
<https://veltech.edu.in/wp-content/uploads/2016/04/Paper-04-2016.pdf> .
Christopoulos, DT (2016) <doi:10.2139/ssrn.3043076> .")
    (license license:gpl2+)))

(define-public r-inflect
  (package
    (name "r-inflect")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Inflect" version))
              (sha256
               (base32
                "09904nn33libjv29n74n5nq1hj6ka8a4h3jllwpbxk9hsmnlmf9h"))))
    (properties `((upstream-name . "Inflect")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-upsetr
                             r-tidyr
                             r-readxl
                             r-plotrix
                             r-optimr
                             r-ggplot2
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Inflect")
    (synopsis "Melt Curve Fitting and Melt Shift Analysis")
    (description
     "This program analyzes raw abundance data from a cellular thermal shift
experiment and calculates melt temperatures and melt shifts for each protein in
the experiment.  Reference to software development can be found at
<doi:10.1021/acs.jproteome.0c00872>.")
    (license license:gpl2)))

(define-public r-inflation
  (package
    (name "r-inflation")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Inflation" version))
              (sha256
               (base32
                "0ikhsslbg32kr9vcaxq8qwaa7ahiwvq91xwv53550wci2vyzmybp"))))
    (properties `((upstream-name . "Inflation")))
    (build-system r-build-system)
    (propagated-inputs (list r-seasonal))
    (home-page "https://github.com/fernote7/Inflation")
    (synopsis "Core Inflation")
    (description
     "This package provides access to core inflation functions.  Four different core
inflation functions are provided.  The well known trimmed means, exclusion and
double weighing methods, alongside the new Triple Filter method introduced in
Ferreira et al. (2016) <https://goo.gl/UYLhcj>.")
    (license license:bsd-3)))

(define-public r-infix
  (package
    (name "r-infix")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "infix" version))
              (sha256
               (base32
                "1zgy8f8b9pmpvpgqh3niczkr94xkc53xcjim73djmd10azw3kgrk"))))
    (properties `((upstream-name . "infix")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "http://github.com/ebeneditos/infix")
    (synopsis "Basic Infix Binary Operators")
    (description
     "This package contains a number of infix binary operators that may be useful in
day to day practices.")
    (license license:gpl3)))

(define-public r-infiniumpurify
  (package
    (name "r-infiniumpurify")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InfiniumPurify" version))
              (sha256
               (base32
                "0yqah4rwpishas0xyv5a7cn4v18brj33cd7f494g21b9brggafq1"))))
    (properties `((upstream-name . "InfiniumPurify")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (home-page "https://cran.r-project.org/package=InfiniumPurify")
    (synopsis
     "Estimate and Account for Tumor Purity in Cancer Methylation Data Analysis")
    (description
     "The proportion of cancer cells in solid tumor sample, known as the tumor purity,
has adverse impact on a variety of data analyses if not properly accounted for.
We develop InfiniumPurify', which is a comprehensive R package for estimating
and accounting for tumor purity based on DNA methylation Infinium 450k array
data.  InfiniumPurify provides functionalities for tumor purity estimation.  In
addition, it can perform differential methylation detection and tumor sample
clustering with the consideration of tumor purities.")
    (license license:gpl2)))

(define-public r-infinitefactor
  (package
    (name "r-infinitefactor")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "infinitefactor" version))
              (sha256
               (base32
                "0j6f9q8z81znwakyx4h0l8ypz0y4yv11d7l3rwljmn4rgspyjl5c"))))
    (properties `((upstream-name . "infinitefactor")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://cran.r-project.org/package=infinitefactor")
    (synopsis "Bayesian Infinite Factor Models")
    (description
     "Sampler and post-processing functions for semi-parametric Bayesian infinite
factor models, motivated by the Multiplicative Gamma Shrinkage Prior of
Bhattacharya and Dunson (2011)
<https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3419391/>.  Contains component C++
functions for building samplers for linear and 2-way interaction factor models
using the multiplicative gamma and Dirichlet-Laplace shrinkage priors.  The
package also contains post processing functions to return matrices that display
rotational ambiguity to identifiability through successive application of
orthogonalization procedures and resolution of column label and sign switching.
This package was developed with the support of the National Institute of
Environmental Health Sciences grant 1R01ES028804-01.")
    (license license:gpl2)))

(define-public r-inferr
  (package
    (name "r-inferr")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inferr" version))
              (sha256
               (base32
                "1ma90f31jcd65l5v3wqbx4x61gw3iay1a2hwjsd5aln1ivbgmzsv"))))
    (properties `((upstream-name . "inferr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magrittr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://rsquaredacademy.github.io/inferr/")
    (synopsis "Inferential Statistics")
    (description
     "Select set of parametric and non-parametric statistical tests.  inferr builds
upon the solid set of statistical tests provided in stats package by including
additional data types as inputs, expanding and restructuring the test results.
The tests included are t tests, variance tests, proportion tests, chi square
tests, Levene's test, McNemar Test, Cochran's Q test and Runs test.")
    (license license:expat)))

(define-public r-inferference
  (package
    (name "r-inferference")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inferference" version))
              (sha256
               (base32
                "171h9zhvaza7fklcg07wk9sm8k2fy39k3cdjkzb3vk8p8acd051v"))))
    (properties `((upstream-name . "inferference")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-lme4 r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=inferference")
    (synopsis "Methods for Causal Inference with Interference")
    (description
     "This package provides methods for estimating causal effects in the presence of
interference described in B. Saul and M. Hugdens (2017)
<doi:10.18637/jss.v082.i02>.  Currently it implements the inverse-probability
weighted (IPW) estimators proposed by E.J. Tchetgen Tchetgen and T.J.
Vanderweele (2012) <doi:10.1177/0962280210386779>.")
    (license license:gpl2+)))

(define-public r-inferencesmr
  (package
    (name "r-inferencesmr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InferenceSMR" version))
              (sha256
               (base32
                "1dxq1dsmrx9kx8vqxlbg22a91iv4skck4jhmmfk3kxi5znl121zc"))))
    (properties `((upstream-name . "InferenceSMR")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=InferenceSMR")
    (synopsis
     "Inference About the Standardized Mortality Ratio when Evaluating the Effect of a Screening Program on Survival")
    (description
     "This package provides functions to make inference about the standardized
mortality ratio (SMR) when evaluating the effect of a screening program.  The
package is based on methods described in Sasieni (2003) <doi:
10.1097/00001648-200301000-00026> and Talbot et al. (2011) <doi:
10.1002/sim.4334>.")
    (license license:gpl2+)))

(define-public r-inext
  (package
    (name "r-inext")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iNEXT" version))
              (sha256
               (base32
                "1yfvadvdwgby047svj9sjwkm7hhrni2ifn6d2g5bv9djcvi22msh"))))
    (properties `((upstream-name . "iNEXT")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcpp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "http://chao.stat.nthu.edu.tw/wordpress/software_download/")
    (synopsis "Interpolation and Extrapolation for Species Diversity")
    (description
     "This package provides simple functions to compute and plot two types
(sample-size- and coverage-based) rarefaction and extrapolation curves for
species diversity (Hill numbers) based on individual-based abundance data or
sampling-unit- based incidence data; see Chao and others (2014, Ecological
Monographs) for pertinent theory and methodologies, and Hsieh, Ma and Chao
(2016, Methods in Ecology and Evolution) for an introduction of the R package.")
    (license license:gpl3+)))

(define-public r-inet
  (package
    (name "r-inet")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inet" version))
              (sha256
               (base32
                "1kjy2kgi5v29yk6pv776gwdqzkscjh96p3iv1j906vh47zp8wrag"))))
    (properties `((upstream-name . "inet")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-hdi r-glmnet))
    (home-page "https://cran.r-project.org/package=inet")
    (synopsis "Performing Inference on Networks with Regularization")
    (description
     "This package performs inference with the lasso in Gaussian Graphical Models.
The package consists of wrappers for functions from the hdi package.")
    (license license:gpl2+)))

(define-public r-ineqjd
  (package
    (name "r-ineqjd")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ineqJD" version))
              (sha256
               (base32
                "0anv384jwzn5gkc0jqsl81bkmrjd21br99c5q30xd6ncxavj4s57"))))
    (properties `((upstream-name . "ineqJD")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ineqJD")
    (synopsis "Inequality Joint Decomposition")
    (description
     "Computes and decomposes Gini, Bonferroni and Zenga 2007 point and synthetic
concentration indexes.  Decompositions are intended: by sources, by
subpopulations and by sources and subpopulations jointly.  References, Zenga M.
M.(2007) <doi:10.1400/209575> Zenga M. (2015) <doi:10.1400/246627> Zenga M.,
Valli I. (2017) <doi:10.26350/999999_000005> Zenga M., Valli I. (2018)
<doi:10.26350/999999_000011>.")
    (license license:gpl2+)))

(define-public r-inegir
  (package
    (name "r-inegir")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inegiR" version))
              (sha256
               (base32
                "1rhkdmpz7mxi7ddyygss5rlh3c8hgxhzdk3fnvnlizc1l55cc6c0"))))
    (properties `((upstream-name . "inegiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xml
                             r-tibbletime
                             r-plyr
                             r-lubridate
                             r-jsonlite))
    (home-page "https://cran.r-project.org/package=inegiR")
    (synopsis "Integrate INEGIâs (Mexican Stats Office) API with R")
    (description
     "This package provides functions to download and parse information from INEGI
(Official Mexican statistics agency).  To learn more about the API, see
<https://www.inegi.org.mx/servicios/api_indicadores.html>.")
    (license license:cc0)))

(define-public r-industrial
  (package
    (name "r-industrial")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "industRial" version))
              (sha256
               (base32
                "0zgnykbr71pi3nii178ijmzd8ijwf3g8y8yz6g3jy4c0by7w676s"))))
    (properties `((upstream-name . "industRial")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sixsigma
                             r-rlang
                             r-magrittr
                             r-lattice
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/J-Ramalho/industRial")
    (synopsis
     "Data, Functions and Support Materials from the Book \"industRial Data Science\"")
    (description
     "Companion package to the book \"industRial data science\", J.Ramalho (2021)
<https://j-ramalho.github.io/industRial/>.  Provides data sets and functions to
complete the case studies and contains the book original Rmd files and
tutorials.")
    (license license:gpl3+)))

(define-public r-indtestpp
  (package
    (name "r-indtestpp")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndTestPP" version))
              (sha256
               (base32
                "1z48pr8znbk1gdvjfdvszxlzhj7v88p3y7zhi1f0xw75dkfpnwwy"))))
    (properties `((upstream-name . "IndTestPP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IndTestPP")
    (synopsis
     "Tests of Independence and Analysis of Dependence Between Point Processes in Time")
    (description
     "It provides a general framework to analyse dependence between point processes in
time.  It includes parametric and non-parametric tests to study independence,
and functions for generating and analysing different types of dependence.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-indisc
  (package
    (name "r-indisc")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "InDisc" version))
              (sha256
               (base32
                "0halx4m503b9d4vk5y0qmx6qyvc6lwjr4ys4xdcj6bnzv8wi8ymw"))))
    (properties `((upstream-name . "InDisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-matrixstats))
    (home-page "https://cran.r-project.org/package=InDisc")
    (synopsis
     "Obtaining and Estimating Unidimensional and Multidimensional IRT Dual Models")
    (description
     "This package performs a unified approach for obtaining and estimating
unidimensional and multidimensional Item Response Theory (IRT) Dual Models
(DMs), proposed by Ferrando (2019 <doi:10.1177/0146621618817779>).")
    (license license:gpl3)))

(define-public r-indirect
  (package
    (name "r-indirect")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "indirect" version))
              (sha256
               (base32
                "1iaks18xcxqr2afzbzgxj4jr77p6gw2zmgb1398cgqkgdwb1yj13"))))
    (properties `((upstream-name . "indirect")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-gplots))
    (home-page "https://cran.r-project.org/package=indirect")
    (synopsis
     "Elicitation of Independent Conditional Means Priors for Generalised Linear Models")
    (description
     "This package provides functions are provided to facilitate prior elicitation for
Bayesian generalised linear models using independent conditional means priors.
The package supports the elicitation of multivariate normal priors for
generalised linear models.  The approach can be applied to indirect elicitation
for a generalised linear model that is linear in the parameters.  The package is
designed such that the facilitator executes functions within the R console
during the elicitation session to provide graphical and numerical feedback at
each design point.  Various methodologies for eliciting fractiles (equivalently,
percentiles or quantiles) are supported, including versions of the approach of
Hosack et al. (2017) <doi:10.1016/j.ress.2017.06.011>.  For example, experts may
be asked to provide central credible intervals that correspond to a certain
probability.  Or experts may be allowed to vary the probability allocated to the
central credible interval for each design point.  Additionally, a median may or
may not be elicited.")
    (license license:gpl3)))

(define-public r-indiedown
  (package
    (name "r-indiedown")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "indiedown" version))
              (sha256
               (base32
                "0r46r6s0asd182gs5map4wilhfb7jhgrcinnl36ib3q1xxn06457"))))
    (properties `((upstream-name . "indiedown")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-rlang r-gfonts r-fs r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cynkra.github.io/indiedown/")
    (synopsis "Individual R Markdown Templates")
    (description
     "Simplifies the generation of customized R Markdown PDF templates.  A template
may include an individual logo, typography, geometry or color scheme.  The
package provides a skeleton with detailed instructions for customizations.  The
skeleton can be modified by changing defaults in the YAML header, by adding
additional LaTeX commands or by applying dynamic adjustments in R. Individual
corporate design elements, such as a title page, can be added as R functions
that produce LaTeX code.")
    (license license:expat)))

(define-public r-indicspecies
  (package
    (name "r-indicspecies")
    (version "1.7.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "indicspecies" version))
              (sha256
               (base32
                "12hcy5hadwf4gi9vs649r2msb35a0i9prwsrn7ng5fb4p6vhcq0c"))))
    (properties `((upstream-name . "indicspecies")))
    (build-system r-build-system)
    (propagated-inputs (list r-permute))
    (native-inputs (list r-knitr))
    (home-page "https://emf-creaf.github.io/indicspecies/")
    (synopsis "Relationship Between Species and Groups of Sites")
    (description
     "This package provides functions to assess the strength and statistical
significance of the relationship between species occurrence/abundance and groups
of sites [De Caceres & Legendre (2009) <doi:10.1890/08-1823.1>].  Also includes
functions to measure species niche breadth using resource categories [De Caceres
et al. (2011) <doi:10.1111/J.1600-0706.2011.19679.x>].")
    (license license:gpl2+)))

(define-public r-indiantaxcalc
  (package
    (name "r-indiantaxcalc")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndianTaxCalc" version))
              (sha256
               (base32
                "1fxw884wj9n8drk2xz3rgr4f7b4fckh5firrf5gdz6d1nk9hdvc1"))))
    (properties `((upstream-name . "IndianTaxCalc")))
    (build-system r-build-system)
    (home-page "https://github.com/iamsulthan/IndianTaxCalc")
    (synopsis "Indian Income Tax Calculator")
    (description
     "Calculate Indian Income Tax liability for Financial years of Individual resident
aged below 60 years,Senior Citizen,Super Senior Citizen, Firm, Local Authority,
Any Non Resident Individual / Hindu Undivided Family / Association of Persons
/Body of Individuals / Artificial Judicial Person, Co-operative Society.")
    (license license:gpl2+)))

(define-public r-indexnumr
  (package
    (name "r-indexnumr")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndexNumR" version))
              (sha256
               (base32
                "15rjhzwygs4an51lxn66jlfww4j361b1jw4a6q3dz31bmlc9i5pg"))))
    (properties `((upstream-name . "IndexNumR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/grahamjwhite/IndexNumR")
    (synopsis "Index Number Calculation")
    (description
     "Computes bilateral and multilateral index numbers.  It has support for many
standard bilateral indexes as well as multilateral index number methods such as
GEKS, GEKS-Tornqvist (or CCDI), Geary-Khamis and the weighted time product dummy
(for details on these methods see Diewert and Fox (2020)
<doi:10.1080/07350015.2020.1816176>).  It also supports updating of multilateral
indexes using several splicing methods.")
    (license license:gpl2)))

(define-public r-indexnumber
  (package
    (name "r-indexnumber")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndexNumber" version))
              (sha256
               (base32
                "0ff6fnkgbfwn3sasglr1aygvm9bawrvcj432xgka1vk28qnns0if"))))
    (properties `((upstream-name . "IndexNumber")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IndexNumber")
    (synopsis "Index Numbers in Social Sciences")
    (description
     "We provide an R tool for teaching in Social Sciences.  It allows the computation
of index numbers.  It is a measure of the evolution of a fixed magnitude for
only a product of for several products.  It is very useful in Social Sciences.
Among others, we obtain simple index numbers (in chain or in serie), index
numbers for not only a product or weighted index numbers as the Laspeyres index
(Laspeyres, 1864), the Paasche index (Paasche, 1874) or the Fisher index
(Lapedes, 1978).")
    (license license:gpl2)))

(define-public r-indexconstruction
  (package
    (name "r-indexconstruction")
    (version "0.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndexConstruction" version))
              (sha256
               (base32
                "08bi3x7a9plxshgj6hq58mzkf1117a7p0fd1akqjh7k8mgywifwf"))))
    (properties `((upstream-name . "IndexConstruction")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-rcppbdt
                             r-lubridate
                             r-kernsmooth
                             r-fgarch))
    (home-page "https://cran.r-project.org/package=IndexConstruction")
    (synopsis "Index Construction for Time Series Data")
    (description
     "Derivation of indexes for benchmarking purposes.  A methodology with flexible
number of constituents is implemented.  Also functions for market capitalization
and volume weighted indexes with fixed number of constituents are available.
The main function of the package, indexComp(), provides the derived index,
suitable for analysis purposes.  The functions indexUpdate(),
indexMemberSelection() and indexMembersUpdate() are components of indexComp()
and enable one to construct and continuously update an index, e.g. for display
on a website.  The methodology behind the functions provided gets introduced in
Trimborn and Haerdle (2018) <doi:10.1016/j.jempfin.2018.08.004>.")
    (license license:gpl3+)))

(define-public r-index0
  (package
    (name "r-index0")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "index0" version))
              (sha256
               (base32
                "1kdjc86312a9x800h0i7z0z7bwbxyrqds8wnrm15aljkvk83xwxl"))))
    (properties `((upstream-name . "index0")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=index0")
    (synopsis "Zero-Based Indexing in R")
    (description
     "Extract and replace elements using indices that start from zero (rather than
one), as is common in mathematical notation and other programming languages.")
    (license license:expat)))

(define-public r-indeptest
  (package
    (name "r-indeptest")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IndepTest" version))
              (sha256
               (base32
                "017jasqsxm5m13rhfy9gxvd8nfib5k5y5c8520p3hcffqrxr683p"))))
    (properties `((upstream-name . "IndepTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-mvtnorm r-fnn))
    (home-page "https://cran.r-project.org/package=IndepTest")
    (synopsis "Nonparametric Independence Tests Based on Entropy Estimation")
    (description
     "Implementations of the weighted Kozachenko-Leonenko entropy estimator and
independence tests based on this estimator, (Kozachenko and Leonenko (1987)
<http://mi.mathnet.ru/eng/ppi797>).  Also includes a goodness-of-fit test for a
linear model which is an independence test between covariates and errors.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-independenceweights
  (package
    (name "r-independenceweights")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "independenceWeights" version))
              (sha256
               (base32
                "07650hc93dxfx0sl2mdjzg2r84117q7ylbb9yfm3lh7dlb014lxp"))))
    (properties `((upstream-name . "independenceWeights")))
    (build-system r-build-system)
    (propagated-inputs (list r-osqp r-locfit))
    (home-page "https://cran.r-project.org/package=independenceWeights")
    (synopsis
     "Estimates Weights for Confounding Control for Continuous-Valued Exposures")
    (description
     "Estimates weights to make a continuous-valued exposure statistically independent
of a vector of pre-treatment covariates using the method proposed in Huling,
Greifer, and Chen (2021) <arxiv:2107.07086>.")
    (license license:expat)))

(define-public r-independence
  (package
    (name "r-independence")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "independence" version))
              (sha256
               (base32
                "0yln5wd8m5fgh4h7k80vq22byf06k4d6574zxyqcig63hls7v568"))))
    (properties `((upstream-name . "independence")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=independence")
    (synopsis "Fast Rank-Based Independence Testing")
    (description
     "This package performs three ranking-based nonparametric tests for the
independence of two continuous variables: (1) the classical Hoeffding's D test;
(2) a refined variant of it, named R; (3) the Bergsma-Dassios T* sign
covariance.  The first test is consistent assuming an absolutely continuous
bivariate distribution, i.e., the population coefficient D=0 iff the variables
are independent.  The latter two are consistent under no restriction on the
distribution.  All three statistics are computed in time O(n log n) given n iid
paired samples.  The computation of R and T* uses a new algorithm, following
work of Even-Zohar and Leng (2019), see <arXiv:2010.09712>, <arXiv:1911.01414>.")
    (license license:gpl3+)))

(define-public r-indelmiss
  (package
    (name "r-indelmiss")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "indelmiss" version))
              (sha256
               (base32
                "0i4qnvc0xb3ngnk8xdscmx7qnicfs7s6czawf6schb1nh2pjpzyq"))))
    (properties `((upstream-name . "indelmiss")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-phangorn r-numderiv r-ape))
    (home-page "https://cran.r-project.org/package=indelmiss")
    (synopsis
     "Insertion Deletion Analysis While Accounting for Possible Missing Data")
    (description
     "Genome-wide gene insertion and deletion rates can be modelled in a maximum
likelihood framework with the additional flexibility of modelling potential
missing data using the models included within.  These models simultaneously
estimate insertion and deletion (indel) rates of gene families and proportions
of \"missing\" data for (multiple) taxa of interest.  The likelihood framework is
utilized for parameter estimation.  A phylogenetic tree of the taxa and gene
presence/absence patterns (with data ordered by the tips of the tree) are
required.  See Dang et al. (2016) <doi:10.1534/genetics.116.191973> for more
details.")
    (license license:gpl2+)))

(define-public r-incubate
  (package
    (name "r-incubate")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incubate" version))
              (sha256
               (base32
                "1l1ahcw8nad6jmhxzl5vlswl2kvyfv3lwchhckbhwbahplkna5vs"))))
    (properties `((upstream-name . "incubate")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-rlang
                             r-purrr
                             r-mass
                             r-glue
                             r-future-apply
                             r-future))
    (home-page "https://gitlab.com/imb-dev/incubate/")
    (synopsis
     "Parametric Time-to-Event Analysis with Variable Incubation Phases")
    (description
     "Fit parametric models for time-to-event data that show an initial incubation
period', i.e., a variable delay phase where the hazard is zero.  The delayed
Weibull distribution serves as the foundational data model.  The specific method
of MPSE (maximum product of spacings estimation) is used for parameter
estimation.  Bootstrap confidence intervals for parameters and significance
tests in a two group setting are provided.")
    (license license:lgpl3+)))

(define-public r-inctools
  (package
    (name "r-inctools")
    (version "1.0.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inctools" version))
              (sha256
               (base32
                "0ikldiwgizs2p9vcalk5729dr6krysnyr4ni0ybg9gljw7iafdlf"))))
    (properties `((upstream-name . "inctools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-tibble
                             r-rlang
                             r-pracma
                             r-plyr
                             r-magrittr
                             r-glm2
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cubature
                             r-binom))
    (native-inputs (list r-knitr))
    (home-page "http://www.incidence-estimation.org/page/inctools")
    (synopsis "Incidence Estimation Tools")
    (description
     "Tools for estimating incidence from biomarker data in cross- sectional surveys,
and for calibrating tests for recent infection.  Implements and extends the
method of Kassanjee et al. (2012) <doi:10.1097/EDE.0b013e3182576c07>.")
    (license license:gpl3)))

(define-public r-incr
  (package
    (name "r-incr")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incR" version))
              (sha256
               (base32
                "0mis4hwd9mw7ji322yqidiz8d9qsb4jkpndfdskxrrmpfpha9r91"))))
    (properties `((upstream-name . "incR")))
    (build-system r-build-system)
    (propagated-inputs (list r-suncalc r-lubridate r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=incR")
    (synopsis "Analysis of Incubation Data")
    (description
     "Suite of functions to study animal incubation.  At the core of incR lies an
algorithm that allows for the scoring of incubation behaviour.  Additionally,
several functions extract biologically relevant metrics of incubation such as
off-bout number and off-bout duration - for a review of avian incubation
studies, see Nests, Eggs, and Incubation: New ideas about avian reproduction
(2015) edited by D. Charles Deeming and S. James Reynolds
<doi:10.1093/acprof:oso/9780198718666.001.0001>.")
    (license license:gpl3)))

(define-public r-incompair
  (package
    (name "r-incompair")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IncomPair" version))
              (sha256
               (base32
                "156mc4csbxz976md7ikjd6sqamzsfc8ik9xf1qbhrfl8y7957kbb"))))
    (properties `((upstream-name . "IncomPair")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IncomPair")
    (synopsis "Comparison of Means for the Incomplete Paired Data")
    (description
     "This package implements a variety of nonparametric and parametric methods that
are commonly used when the data set is a mixture of paired observations and
independent samples.  The package also calculates and returns values of
different tests with their corresponding p-values.  Bhoj, D. S. (1991)
<doi:10.1002/bimj.4710330108> \"Testing equality of means in the presence of
correlation and missing data\".  Dubnicka, S. R., Blair, R. C., and
Hettmansperger, T. P. (2002) <doi:10.22237/jmasm/1020254460> \"Rank-based
procedures for mixed paired and two-sample designs\".  Einsporn, R. L. and
Habtzghi, D. (2013)
<https://pdfs.semanticscholar.org/89a3/90bafeb2bc41ed4414533cfd5ab84a6b54b6.pdf>
\"Combining paired and two-sample data using a permutation test\".  Ekbohm, G.
(1976) <doi:10.1093/biomet/63.2.299> \"On comparing means in the paired case with
incomplete data on both responses\".  Lin, P. E. and Stivers, L. E. (1974)
<doi:10.1093/biomet/61.2.325> On difference of means with incomplete data\".
Maritz, J. S. (1995) <doi:10.1111/j.1467-842x.1995.tb00649.x> \"A permutation
paired test allowing for missing values\".")
    (license license:gpl2+)))

(define-public r-incidentally
  (package
    (name "r-incidentally")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incidentally" version))
              (sha256
               (base32
                "063m672ym9w5zmzvdhr17smqy1mffkl3vls7nhpsxc4bjswqls2g"))))
    (properties `((upstream-name . "incidentally")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-matrix r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://www.zacharyneal.com/backbone")
    (synopsis "Generates Incidence Matrices and Bipartite Graphs")
    (description
     "This package provides functions to generate incidence matrices and bipartite
graphs that have (1) a fixed fill rate, (2) given marginal sums, (3) marginal
sums that follow given distributions, or (4) represent bill sponsorships in the
US Congress <doi:10.31219/osf.io/ectms>.  It can also generate an incidence
matrix from an adjacency matrix, or bipartite graph from a unipartite graph, via
a social process mirroring team, group, or organization formation
<doi:10.48550/arXiv.2204.13670>.")
    (license license:gpl3)))

(define-public r-incidental
  (package
    (name "r-incidental")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incidental" version))
              (sha256
               (base32
                "012pdwrkzlbnrrkvy67l6nvs1lrjgrzhfh3v4rqzk2ypdvfm3wmx"))))
    (properties `((upstream-name . "incidental")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-matrixstats r-mass r-ggplot2 r-dlnm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=incidental")
    (synopsis "Implements Empirical Bayes Incidence Curves")
    (description
     "Make empirical Bayes incidence curves from reported case data using a specified
delay distribution.")
    (license license:expat)))

(define-public r-incidenceprevalence
  (package
    (name "r-incidenceprevalence")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IncidencePrevalence" version))
              (sha256
               (base32
                "0kiqwqb2pivl6yhkd50k4w9gqswk8r34xlkrma4xgrpv28vlplay"))))
    (properties `((upstream-name . "IncidencePrevalence")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-cli
                             r-checkmate
                             r-cdmconnector))
    (native-inputs (list r-knitr))
    (home-page "https://darwin-eu.github.io/IncidencePrevalence/")
    (synopsis
     "Estimate Incidence and Prevalence using the OMOP Common Data Model")
    (description
     "Calculate incidence and prevalence using data mapped to the Observational
Medical Outcomes Partnership (OMOP) common data model.  Incidence and prevalence
can be estimated for the total population in a database or for a stratification
cohort.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-incidence2
  (package
    (name "r-incidence2")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incidence2" version))
              (sha256
               (base32
                "0ycc1kv1jnzywwzm5smrvvw7rvgbpk989yp77v3vgsqf6wgfyi8r"))))
    (properties `((upstream-name . "incidence2")))
    (build-system r-build-system)
    (propagated-inputs (list r-pillar r-grates r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reconverse/incidence2")
    (synopsis "Compute, Handle and Plot Incidence of Dated Events")
    (description
     "This package provides functions and classes to compute, handle and visualise
incidence from dated events for a defined time interval.  Dates can be provided
in various standard formats.  The class incidence2 is used to store computed
incidence and can be easily manipulated, subsetted, and plotted.  This package
is part of the RECON (<https://www.repidemicsconsortium.org/>) toolkit for
outbreak analysis (<https://www.reconverse.org>).")
    (license license:expat)))

(define-public r-incidence
  (package
    (name "r-incidence")
    (version "1.7.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incidence" version))
              (sha256
               (base32
                "1wdxh2p7scm419fqki0i7vsz45rd7557h5n3zf9fshb8x1fdf2z7"))))
    (properties `((upstream-name . "incidence")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-aweek))
    (native-inputs (list r-knitr))
    (home-page "https://www.repidemicsconsortium.org/incidence/")
    (synopsis "Compute, Handle, Plot and Model Incidence of Dated Events")
    (description
     "This package provides functions and classes to compute, handle and visualise
incidence from dated events for a defined time interval.  Dates can be provided
in various standard formats.  The class incidence is used to store computed
incidence and can be easily manipulated, subsetted, and plotted.  In addition,
log-linear models can be fitted to incidence objects using fit'.  This package
is part of the RECON (<https://www.repidemicsconsortium.org/>) toolkit for
outbreak analysis.")
    (license license:expat)))

(define-public r-incgraph
  (package
    (name "r-incgraph")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incgraph" version))
              (sha256
               (base32
                "0zjvxk2krdlm5bcr0m80nxy46f69a1xadfjw5sjw249b28wdclml"))))
    (properties `((upstream-name . "incgraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-testthat
                             r-rcpp
                             r-purrr
                             r-orca
                             r-dplyr
                             r-bh))
    (home-page "http://www.github.com/rcannood/incgraph")
    (synopsis "Incremental Graphlet Counting for Network Optimisation")
    (description
     "An efficient and incremental approach for calculating the differences in orbit
counts when performing single edge modifications in a network.  Calculating the
differences in orbit counts is much more efficient than recalculating all orbit
counts from scratch for each time point.")
    (license license:gpl3)))

(define-public r-incdtw
  (package
    (name "r-incdtw")
    (version "1.1.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IncDTW" version))
              (sha256
               (base32
                "0q8ssv86gbp3v6gznzm5vkc8qhny6ycbh85jg5z4izldpx8a4fq6"))))
    (properties `((upstream-name . "IncDTW")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2
                             r-data-table))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=IncDTW")
    (synopsis "Incremental Calculation of Dynamic Time Warping")
    (description
     "The Dynamic Time Warping (DTW) distance measure for time series allows
non-linear alignments of time series to match similar patterns in time series of
different lengths and or different speeds.  IncDTW is characterized by (1) the
incremental calculation of DTW (reduces runtime complexity to a linear level for
updating the DTW distance) - especially for life data streams or subsequence
matching, (2) the vector based implementation of DTW which is faster because no
matrices are allocated (reduces the space complexity from a quadratic to a
linear level in the number of observations) - for all runtime intensive DTW
computations, (3) the subsequence matching algorithm runDTW, that efficiently
finds the k-NN to a query pattern in a long time series, and (4) C++ in the
heart.  For details about DTW see the original paper \"Dynamic programming
algorithm optimization for spoken word recognition\" by Sakoe and Chiba (1978)
<DOI:10.1109/TASSP.1978.1163055>.  For details about this package, Dynamic Time
Warping and Incremental Dynamic Time Warping please see \"IncDTW: An R Package
for Incremental Calculation of Dynamic Time Warping\" by Leodolter et al. (2021)
<doi:10.18637/jss.v099.i09>.")
    (license license:gpl2+)))

(define-public r-incatome
  (package
    (name "r-incatome")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "INCATome" version))
              (sha256
               (base32
                "1gbmcirs49ydmk5rg2vl5gdy39dfx9psw5mijibzjszcfjar3kqs"))))
    (properties `((upstream-name . "INCATome")))
    (build-system r-build-system)
    (propagated-inputs (list r-siggenes r-multtest r-limma r-genefilter))
    (home-page "https://cran.r-project.org/package=INCATome")
    (synopsis
     "Internal Control Analysis of Translatome Studies by Microarrays")
    (description
     "Data analysis, normalisation and differential expression for Translatome studies
by microarrays (T Sbarrato et al.  RNA. 2017 Aug 25;
<DOI:10.1261/rna.060525.116>).")
    (license (license:fsdg-compatible "CC BY-NC 4.0"))))

(define-public r-incase
  (package
    (name "r-incase")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "incase" version))
              (sha256
               (base32
                "01x1alrk3pp4zi7r4nxnn9y16129ggmiqjys5sfhlybs505yq5vw"))))
    (properties `((upstream-name . "incase")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-plu r-magrittr r-backports))
    (home-page "https://incase.rossellhayes.com")
    (synopsis "Pipe-Friendly Vector Replacement with Case Statements")
    (description
     "Offers a pipe-friendly alternative to the dplyr functions case_when() and
if_else(), as well as a number of user-friendly simplifications for common use
cases.  These functions accept a vector as an optional first argument, allowing
conditional statements to be built using the magrittr dot operator.  The
functions also coerce all outputs to the same type, meaning you no longer have
to worry about using specific typed variants of NA or explicitly declaring
integer outputs, and evaluate outputs somewhat lazily, so you don't waste time
on long operations that won't be used.")
    (license license:expat)))

(define-public r-inca
  (package
    (name "r-inca")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inca" version))
              (sha256
               (base32
                "1r3niibd6pja59am8in9gpyvxi2g5bh8bqqhdixzwaj3xzyyipii"))))
    (properties `((upstream-name . "inca")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix))
    (home-page "https://cran.r-project.org/package=inca")
    (synopsis "Integer Calibration")
    (description
     "Specific functions are provided for rounding real weights to integers and
performing an integer programming algorithm for calibration problems.  They are
useful for census-weights adjustments, or for performing linear regression with
integer parameters.  This research was supported in part by the U.S. Department
of Agriculture, National Agriculture Statistics Service.  The findings and
conclusions in this publication are those of the authors and should not be
construed to represent any official USDA, or US Government determination or
policy.")
    (license license:gpl2+)))

(define-public r-inbreedr
  (package
    (name "r-inbreedr")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inbreedR" version))
              (sha256
               (base32
                "0g7h4jgmnbpm4c6pb6fkmpzdg4adkc0k72444jpxbvyddq3hqh24"))))
    (properties `((upstream-name . "inbreedR")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=inbreedR")
    (synopsis "Analysing Inbreeding Based on Genetic Markers")
    (description
     "This package provides a framework for analysing inbreeding and
heterozygosity-fitness correlations (HFCs) based on microsatellite and SNP
markers.")
    (license license:gpl2)))

(define-public r-inaparc
  (package
    (name "r-inaparc")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "inaparc" version))
              (sha256
               (base32
                "0y3m2g5y12wj4af1wiqyi7nlb11avissd59g202rha0wqwzd8q3f"))))
    (properties `((upstream-name . "inaparc")))
    (build-system r-build-system)
    (propagated-inputs (list r-lhs r-kpeaks))
    (home-page "https://cran.r-project.org/package=inaparc")
    (synopsis "Initialization Algorithms for Partitioning Cluster Analysis")
    (description
     "Partitioning clustering algorithms divide data sets into k subsets or partitions
so-called clusters.  They require some initialization procedures for starting
the algorithms.  Initialization of cluster prototypes is one of such kind of
procedures for most of the partitioning algorithms.  Cluster prototypes are the
centers of clusters, i.e.  centroids or medoids, representing the clusters in a
data set.  In order to initialize cluster prototypes, the package inaparc
contains a set of the functions that are the implementations of several linear
time-complexity and loglinear time-complexity methods in addition to some novel
techniques.  Initialization of fuzzy membership degrees matrices is another
important task for starting the probabilistic and possibilistic partitioning
algorithms.  In order to initialize membership degrees matrices required by
these algorithms, a number of functions based on some traditional and novel
initialization techniques are also available in the package inaparc'.")
    (license license:gpl2+)))

(define-public r-in2extremes
  (package
    (name "r-in2extremes")
    (version "1.0-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "in2extRemes" version))
              (sha256
               (base32
                "1lgsqm29zmjyf8kynyra2p3q7bs4fyd7ac4v6s3pbahzhhzdk94y"))))
    (properties `((upstream-name . "in2extRemes")))
    (build-system r-build-system)
    (propagated-inputs (list r-extremes))
    (home-page "http://www.assessment.ucar.edu/toolkit/")
    (synopsis "Into the extRemes Package")
    (description
     "Graphical User Interface (GUI) to some of the functions in the package extRemes
version >= 2.0 are included.")
    (license license:gpl2+)))

(define-public r-imtest
  (package
    (name "r-imtest")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMTest" version))
              (sha256
               (base32
                "0n0swbi051cr7mrjmszqg79hxa38ccyq69ws8c37ixwb0lpxmx48"))))
    (properties `((upstream-name . "IMTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-mass r-ltm r-lme4))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IMTest")
    (synopsis "Information Matrix Test for Generalized Partial Credit Models")
    (description
     "Implementation of the information matrix test for generalized partial credit
models.")
    (license license:gpl2+)))

(define-public r-imsig
  (package
    (name "r-imsig")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imsig" version))
              (sha256
               (base32
                "175is0b39grc609dskv9274czv4iwnmlg81dl4nr01xdp6f7g487"))))
    (properties `((upstream-name . "imsig")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcolorbrewer
                             r-igraph
                             r-hiclimr
                             r-gridextra
                             r-ggplot2))
    (home-page "https://github.com/ajitjohnson/imsig/")
    (synopsis
     "Immune Cell Gene Signatures for Profiling the Microenvironment of Solid Tumours")
    (description
     "Estimate the relative abundance of tissue-infiltrating immune subpopulations
abundances using gene expression data.")
    (license license:gpl3)))

(define-public r-imrmc
  (package
    (name "r-imrmc")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iMRMC" version))
              (sha256
               (base32
                "0a99arybhv5awlkrmzyv6m4cbdszw77qjw90ywwbddkccq1fq2h2"))))
    (properties `((upstream-name . "iMRMC")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (home-page "https://cran.r-project.org/package=iMRMC")
    (synopsis
     "Multi-Reader, Multi-Case Analysis Methods (ROC, Agreement, and Other Metrics)")
    (description
     "Do Multi-Reader, Multi-Case (MRMC) analyses of data from imaging studies where
clinicians (readers) evaluate patient images (cases).  What does this mean? ...
Many imaging studies are designed so that every reader reads every case in all
modalities, a fully-crossed study.  In this case, the data is cross-correlated,
and we consider the readers and cases to be cross-correlated random effects.  An
MRMC analysis accounts for the variability and correlations from the readers and
cases when estimating variances, confidence intervals, and p-values.  The
functions in this package can treat arbitrary study designs and studies with
missing data, not just fully-crossed study designs.  The initial package
analyzes the reader-average area under the receiver operating characteristic
(ROC) curve with U-statistics according to Gallas, Bandos, Samuelson, and Wagner
2009 <doi:10.1080/03610920802610084>.  Additional functions analyze other
endpoints with U-statistics (binary performance and score differences) following
the work by Gallas, Pennello, and Myers 2007 <doi:10.1364/JOSAA.24.000B70>.
Package development and documentation is at
<https://github.com/DIDSR/iMRMC/tree/master>.")
    (license license:cc0)))

(define-public r-imputets
  (package
    (name "r-imputets")
    (version "3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeTS" version))
              (sha256
               (base32
                "0y5nam1flciw4sbnzbjsjakmvznfvlpxh1y5d48g4pn5173bxzgx"))))
    (properties `((upstream-name . "imputeTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-stinepack
                             r-rcpp
                             r-magrittr
                             r-ggtext
                             r-ggplot2
                             r-forecast))
    (native-inputs (list r-rmarkdown r-r-rsp r-knitr))
    (home-page "https://github.com/SteffenMoritz/imputeTS")
    (synopsis "Time Series Missing Value Imputation")
    (description
     "Imputation (replacement) of missing values in univariate time series.  Offers
several imputation functions and missing data plots.  Available imputation
algorithms include: Mean', LOCF', Interpolation', Moving Average', Seasonal
Decomposition', Kalman Smoothing on Structural Time Series models', Kalman
Smoothing on ARIMA models'.  Published in Moritz and Bartz-Beielstein (2017)
<doi:10.32614/RJ-2017-009>.")
    (license license:gpl3)))

(define-public r-imputetestbench
  (package
    (name "r-imputetestbench")
    (version "3.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeTestbench" version))
              (sha256
               (base32
                "0yc1l3r7g7x2pgyli6j08ikvsbvr24kijnn7pdj54blw7c0pdmm2"))))
    (properties `((upstream-name . "imputeTestbench")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-reshape2
                             r-imputets
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=imputeTestbench")
    (synopsis "Test Bench for the Comparison of Imputation Methods")
    (description
     "This package provides a test bench for the comparison of missing data imputation
methods in uni-variate time series.  Imputation methods are compared using
different error metrics.  Proposed imputation methods and alternative error
metrics can be used.")
    (license license:cc0)))

(define-public r-imputerobust
  (package
    (name "r-imputerobust")
    (version "1.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ImputeRobust" version))
              (sha256
               (base32
                "1zvwlpffpm4gqysz57clf8jkqr72yjbzx90pdy95la51m0b6cdbd"))))
    (properties `((upstream-name . "ImputeRobust")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-mice
                             r-lattice
                             r-gamlss-dist
                             r-gamlss
                             r-extremevalues))
    (home-page "https://cran.r-project.org/package=ImputeRobust")
    (synopsis
     "Robust Multiple Imputation with Generalized Additive Models for Location Scale and Shape")
    (description
     "This package provides new imputation methods for the mice package based on
generalized additive models for location, scale, and shape (GAMLSS) as described
in de Jong, van Buuren and Spiess <doi:10.1080/03610918.2014.911894>.")
    (license license:gpl3)))

(define-public r-imputeree
  (package
    (name "r-imputeree")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeREE" version))
              (sha256
               (base32
                "1b9zqkaj3nagiiqlbqnmkz84cq5zdd5g2065yij9wdq5k4kky3yc"))))
    (properties `((upstream-name . "imputeREE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-broom))
    (home-page "https://cran.r-project.org/package=imputeREE")
    (synopsis
     "Impute Missing Rare Earth Element Data Using a Lattice-Strain Derived Method")
    (description
     "Set of functions that fit a linear regression to calculate missing Rare Earth
Element (REE) in zircon based on a method derived from the lattice strain theory
of Blundy and Wood (1994)<doi:10.1038/372452a0>.")
    (license license:expat)))

(define-public r-imputer
  (package
    (name "r-imputer")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeR" version))
              (sha256
               (base32
                "0jfyl6k285x4lc58q13fhi004l4yaqas0d4g08rx78ml7p6l1r48"))))
    (properties `((upstream-name . "imputeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2))
    (home-page "http://github.com/SteffenMoritz/imputeR")
    (synopsis "General Multivariate Imputation Framework")
    (description
     "Multivariate Expectation-Maximization (EM) based imputation framework that
offers several different algorithms.  These include regularisation methods like
Lasso and Ridge regression, tree-based models and dimensionality reduction
methods like PCA and PLS.")
    (license license:gpl3)))

(define-public r-imputemulti
  (package
    (name "r-imputemulti")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeMulti" version))
              (sha256
               (base32
                "0192wzmz5114aq0nxlysjjkcylfkgpz3f214wqry5lpz0219lr79"))))
    (properties `((upstream-name . "imputeMulti")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-gtools r-data-table))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=imputeMulti")
    (synopsis "Imputation Methods for Multivariate Multinomial Data")
    (description
     "This package implements imputation methods using EM and Data Augmentation for
multinomial data following the work of Schafer 1997 <ISBN: 978-0-412-04061-0>.")
    (license license:gpl3)))

(define-public r-imputemissings
  (package
    (name "r-imputemissings")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeMissings" version))
              (sha256
               (base32
                "1dfhi235j1qz2mv89j92b903j5mdwlzisiyvvi9mmiacdj5ln89z"))))
    (properties `((upstream-name . "imputeMissings")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest))
    (home-page "https://cran.r-project.org/package=imputeMissings")
    (synopsis "Impute Missing Values in a Predictive Context")
    (description
     "Compute missing values on a training data set and impute them on a new data set.
 Current available options are median/mode and random forest.")
    (license license:gpl2+)))

(define-public r-imputelcmd
  (package
    (name "r-imputelcmd")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeLCMD" version))
              (sha256
               (base32
                "0w6wn9b74phiz9f58b6p95fymgrrlh94avhas046ngzaax6ay71n"))))
    (properties `((upstream-name . "imputeLCMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm r-pcamethods r-norm r-impute))
    (home-page "https://cran.r-project.org/package=imputeLCMD")
    (synopsis
     "Collection of Methods for Left-Censored Missing Data Imputation")
    (description
     "This package provides a collection of functions for left-censored missing data
imputation.  Left-censoring is a special case of missing not at random (MNAR)
mechanism that generates non-responses in proteomics experiments.  The package
also contains functions to artificially generate peptide/protein expression data
(log-transformed) as random draws from a multivariate Gaussian distribution as
well as a function to generate missing data (both randomly and non-randomly).
For comparison reasons, the package also contains several wrapper functions for
the imputation of non-responses that are missing at random. * New functionality
has been added: a hybrid method that allows the imputation of missing values in
a more complex scenario where the missing data are both MAR and MNAR.")
    (license license:gpl2+)))

(define-public r-imputegeneric
  (package
    (name "r-imputegeneric")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeGeneric" version))
              (sha256
               (base32
                "16680bkx1p5w0l5jh6g8f0qbcv0alw9xr2gkbhfs0rpbv5canl7f"))))
    (properties `((upstream-name . "imputeGeneric")))
    (build-system r-build-system)
    (propagated-inputs (list r-parsnip r-gower))
    (home-page "https://github.com/torockel/imputeGeneric")
    (synopsis "Ease the Implementation of Imputation Methods")
    (description
     "The general workflow of most imputation methods is quite similar.  The aim of
this package is to provide parts of this general workflow to make the
implementation of imputation methods easier.  The heart of an imputation method
is normally the used model.  These models can be defined using the parsnip
package or customized specifications.  The rest of an imputation method are more
technical specification e.g. which columns and rows should be used for
imputation and in which order.  These technical specifications can be set inside
the imputation functions.")
    (license license:gpl3+)))

(define-public r-imputefin
  (package
    (name "r-imputefin")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imputeFin" version))
              (sha256
               (base32
                "11qd43zs8gd3fg3f47lrb6b4r0w7kxczain61bxc67ppzflrafmd"))))
    (properties `((upstream-name . "imputeFin")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-mvtnorm r-mass r-magrittr))
    (native-inputs (list r-rmarkdown r-r-rsp r-knitr))
    (home-page "https://CRAN.R-project.org/package=imputeFin")
    (synopsis
     "Imputation of Financial Time Series with Missing Values and/or Outliers")
    (description
     "Missing values often occur in financial data due to a variety of reasons (errors
in the collection process or in the processing stage, lack of asset liquidity,
lack of reporting of funds, etc.).  However, most data analysis methods expect
complete data and cannot be employed with missing values.  One convenient way to
deal with this issue without having to redesign the data analysis method is to
impute the missing values.  This package provides an efficient way to impute the
missing values based on modeling the time series with a random walk or an
autoregressive (AR) model, convenient to model log-prices and log-volumes in
financial data.  In the current version, the imputation is univariate-based (so
no asset correlation is used).  In addition, outliers can be detected and
removed.  The package is based on the paper: J. Liu, S. Kumar, and D. P. Palomar
(2019).  Parameter Estimation of Heavy-Tailed AR Model With Missing Data Via
Stochastic EM. IEEE Trans.  on Signal Processing, vol.  67, no.  8, pp.
2159-2172. <doi:10.1109/TSP.2019.2899816>.")
    (license license:gpl3)))

(define-public r-imptree
  (package
    (name "r-imptree")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imptree" version))
              (sha256
               (base32
                "0f087000092ydnpj3ch4mbip8wp32scn8xw4vlkq5lf6130gfs1b"))))
    (properties `((upstream-name . "imptree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=imptree")
    (synopsis "Classification Trees with Imprecise Probabilities")
    (description
     "Creation of imprecise classification trees.  They rely on probability estimation
within each node by means of either the imprecise Dirichlet model or the
nonparametric predictive inference approach.  The splitting variable is selected
by the strategy presented in Fink and Crossman (2013)
<http://www.sipta.org/isipta13/index.php?id=paper&paper=014.html>, but also the
original imprecise information gain of Abellan and Moral (2003)
<doi:10.1002/int.10143> is covered.")
    (license license:gpl2+)))

(define-public r-imprinting
  (package
    (name "r-imprinting")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imprinting" version))
              (sha256
               (base32
                "0s2qrby2sx7ikalfagvqaz0cx953m44x0fms3pcmjdgyvfzhdyvz"))))
    (properties `((upstream-name . "imprinting")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect r-tidyr r-ggplot2 r-dplyr r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cobeylab.github.io/imprinting/")
    (synopsis
     "Calculate Birth Year-Specific Probabilities of Immune Imprinting to Influenza")
    (description
     "Reconstruct birth-year specific probabilities of immune imprinting to influenza
A, using the methods of Gostic et al. (2016) <doi:10.1126/science.aag1322>.
Plot, save, or export the calculated probabilities for use in your own research.
 By default, the package calculates subtype-specific imprinting probabilities,
but with user-provided frequency data, it is possible to calculate probabilities
for arbitrary kinds of primary exposure to influenza A, including primary
vaccination and exposure to specific clades, strains, etc.")
    (license license:expat)))

(define-public r-impressionist-colors
  (package
    (name "r-impressionist-colors")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "impressionist.colors" version))
              (sha256
               (base32
                "03z5w7y7vbvlnn30r9y3ip93h364f87nhwdb9hcki26csiq2bnlv"))))
    (properties `((upstream-name . "impressionist.colors")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=impressionist.colors")
    (synopsis "Impressionism's Color Palettes")
    (description
     "This package provides color palettes from Impressionism and post-Impressionism
artworks.  This package allows to select colors combinations while looking at
the original paintings where colors were sampled from.")
    (license license:gpl3)))

(define-public r-imprecise101
  (package
    (name "r-imprecise101")
    (version "0.2.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imprecise101" version))
              (sha256
               (base32
                "1558fxg8i5ifbvnww3wlfq79d9lgy7kg5z98i73q7q64rc2pxs82"))))
    (properties `((upstream-name . "imprecise101")))
    (build-system r-build-system)
    (propagated-inputs (list r-tolerance r-pscl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=imprecise101")
    (synopsis "Introduction to Imprecise Probabilities")
    (description
     "An imprecise inference presented in the study of Walley (1996)
<doi:10.1111/j.2517-6161.1996.tb02065.x> is one of the statistical reasoning
methods when prior information is unavailable.  Functions and utils needed for
illustrating this inferential paradigm are implemented for classroom teaching
and further comprehensive research.  Two imprecise models are demonstrated using
multinomial data and 2x2 contingency table data.  The concepts of prior
ignorance and imprecision are discussed in lower and upper probabilities.
Representation invariance principle, hypothesis testing, decision-making, and
further generalization are also illustrated.")
    (license license:gpl3)))

(define-public r-importinegi
  (package
    (name "r-importinegi")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "importinegi" version))
              (sha256
               (base32
                "1m9415ymjvymr73z8cjb1kdycf93pykl4yngqp2h06wppwn7506a"))))
    (properties `((upstream-name . "importinegi")))
    (build-system r-build-system)
    (propagated-inputs (list r-rio
                             r-rgdal
                             r-haven
                             r-foreign
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=importinegi")
    (synopsis "Download and Manage Open Data from INEGI")
    (description
     "Download and manage data sets of statistical projects and geographic data
created by Instituto Nacional de Estadistica y Geografia (INEGI).  See
<https://www.inegi.org.mx/>.")
    (license license:cc0)))

(define-public r-importexport
  (package
    (name "r-importexport")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ImportExport" version))
              (sha256
               (base32
                "07i7p9xha1f23r07lw87ak13hd4wavdvwh8vb8sg2gyvnpa5njwp"))))
    (properties `((upstream-name . "ImportExport")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-rodbc
                             r-readxl
                             r-hmisc
                             r-haven
                             r-gdata
                             r-chron))
    (home-page "https://cran.r-project.org/package=ImportExport")
    (synopsis "Import and Export Data")
    (description
     "Import and export data from the most common statistical formats by using R
functions that guarantee the least loss of the data information, giving special
attention to the date variables and the labelled ones.")
    (license license:gpl2+)))

(define-public r-importar
  (package
    (name "r-importar")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "importar" version))
              (sha256
               (base32
                "0xv445fmjhsbdlsq03k2rlycnggn3rcyq5a49zrg4jvjamzr0rgr"))))
    (properties `((upstream-name . "importar")))
    (build-system r-build-system)
    (home-page "https://github.com/andreaphsz/importar")
    (synopsis
     "Enables Importing/Loading of Packages or Functions While Creating an Alias for Them")
    (description
     "Enables Python'-like importing/loading of packages or functions with aliasing to
prevent namespace conflicts.")
    (license license:gpl3)))

(define-public r-importanceindice
  (package
    (name "r-importanceindice")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ImportanceIndice" version))
              (sha256
               (base32
                "1rxjb4nmpwpf018k0rwf2gs993dz3dq120x0b78y4r8jkkccyphq"))))
    (properties `((upstream-name . "ImportanceIndice")))
    (build-system r-build-system)
    (propagated-inputs (list r-crayon))
    (home-page "https://cran.r-project.org/package=ImportanceIndice")
    (synopsis
     "Analyzing Data Through of Percentage of Importance Indice and Its Derivations")
    (description
     "The Percentage of Importance Indice (Percentage_I.I.) bases in magnitudes,
frequencies, and distributions of occurrence of an event (DEMOLIN-LEITE, 2021)
<http://cjascience.com/index.php/CJAS/article/view/1009/1350>.  This index can
detect the key loss sources (L.S) and solution sources (S.S.), classifying them
according to their importance in terms of loss or income gain, on the productive
system.  The Percentage_I.I. = [(ks1 x c1 x ds1)/SUM (ks1 x c1 x ds1) + (ks2 x
c2 x ds2) + (ksn x cn x dsn)] x 100.  key source (ks) is obtained using simple
regression analysis and magnitude (abundance).  Constancy (c) is SUM of
occurrence of L.S. or S.S. on the samples (absence = 0 or presence = 1), and
distribution source (ds) is obtained using chi-square test.  This index has
derivations: i.e., i) Loss estimates and solutions effectiveness and ii)
Attention and non-attention levels (DEMOLIN-LEITE,2024) <DOI:
10.1590/1519-6984.253215>.")
    (license license:gpl3)))

(define-public r-implyr
  (package
    (name "r-implyr")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "implyr" version))
              (sha256
               (base32
                "0rblsmx1z2n4g3fims5wa3wyf5znr0gkwd2yfz3130bcm6346da0"))))
    (properties `((upstream-name . "implyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-rlang
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-assertthat))
    (home-page "https://github.com/ianmcook/implyr")
    (synopsis "R Interface for Apache Impala")
    (description
     "SQL back-end to dplyr for Apache Impala, the massively parallel processing query
engine for Apache Hadoop'.  Impala enables low-latency SQL queries on data
stored in the Hadoop Distributed File System (HDFS)', Apache HBase', Apache
Kudu', Amazon Simple Storage Service (S3)', Microsoft Azure Data Lake Store
(ADLS)', and Dell EMC Isilon'.  See <https://impala.apache.org> for more
information about Impala.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-implied
  (package
    (name "r-implied")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "implied" version))
              (sha256
               (base32
                "186071njvkizqycb8byvzfx23m8yrjw6dy9zajdf69wy7aq3w0z6"))))
    (properties `((upstream-name . "implied")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=implied")
    (synopsis "Convert Between Bookmaker Odds and Probabilities")
    (description
     "Convert between bookmaker odds and probabilities.  Eight different algorithms
are available, including basic normalization, Shin's method (Hyun Song Shin,
(1992) <doi:10.2307/2234526>), and others.")
    (license license:gpl3)))

(define-public r-implicitmeasures
  (package
    (name "r-implicitmeasures")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "implicitMeasures" version))
              (sha256
               (base32
                "177d69fbyzrg28ddxqlqbf7hm25mj5rpmpslh0mad2xqzyvdylvn"))))
    (properties `((upstream-name . "implicitMeasures")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-tidyr r-stringr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=implicitMeasures")
    (synopsis "Compute Scores for Different Implicit Measures")
    (description
     "This package provides a tool for computing the scores for the Implicit
Association Test (IAT; Greenwald, McGhee & Schwartz (1998)
<doi:10.1037/0022-3514.74.6.1464>) and the Single Category-IAT (SC-IAT:
Karpinski & Steinman (2006) <doi:10.1037/0022-3514.91.1.16>).  Functions for
preparing the data (both for the IAT and the SC-IAT), plotting the results, and
obtaining a table with the scores of implicit measures descriptive statistics
are provided.")
    (license license:expat)))

(define-public r-implicitexpansion
  (package
    (name "r-implicitexpansion")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "implicitExpansion" version))
              (sha256
               (base32
                "1b701f5lc5lr1drr1qyjzmgrasg4sys9wnk9i6f12ckfcxspczng"))))
    (properties `((upstream-name . "implicitExpansion")))
    (build-system r-build-system)
    (home-page "https://github.com/ManuelHentschel/implicitExpansion")
    (synopsis "Array Operations for Arrays of Mismatching Sizes")
    (description
     "Support for implicit expansion of arrays in operations involving arrays of
mismatching sizes.  This pattern is known as \"broadcasting\" in Python and
\"implicit expansion\" in Matlab and is explained for example in the article
\"Array programming with NumPy\" by C. R. Harris et al. (2020)
<doi:10.1038/s41586-020-2649-2>.")
    (license license:expat)))

(define-public r-impimp
  (package
    (name "r-impimp")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "impimp" version))
              (sha256
               (base32
                "0xkxph4f1rcpkryx9v339bfbsnq3xwdj1flb4j2dgh99apj126sq"))))
    (properties `((upstream-name . "impimp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=impimp")
    (synopsis "Imprecise Imputation for Statistical Matching")
    (description
     "Imputing blockwise missing data by imprecise imputation, featuring a
domain-based, variable-wise, and case-wise strategy.  Furthermore, the
estimation of lower and upper bounds for unconditional and conditional
probabilities based on the obtained imprecise data is implemented.
Additionally, two utility functions are supplied: one to check whether variables
in a data set contain set-valued observations; and another to merge two already
imprecisely imputed data.  The method is described in a technical report by
Endres, Fink and Augustin (2018, <doi:10.5282/ubm/epub.42423>).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-impactr
  (package
    (name "r-impactr")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "impactr" version))
              (sha256
               (base32
                "08pb38wk5g6vy0iq2xajycdfv0h0pflxlbai4l0q8i1h8ssgb54z"))))
    (properties `((upstream-name . "impactr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-toordinal
                             r-tibble
                             r-stringr
                             r-signal
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-pracma
                             r-pillar
                             r-lvmisc
                             r-lubridate
                             r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://lveras.com/impactr/")
    (synopsis "Mechanical Loading Prediction Through Accelerometer Data")
    (description
     "This package provides functions to read, process and analyse accelerometer data
related to mechanical loading variables.  This package is developed and tested
for use with raw accelerometer data from triaxial ActiGraph
<https://actigraphcorp.com> accelerometers.")
    (license license:expat)))

(define-public r-impactflu
  (package
    (name "r-impactflu")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "impactflu" version))
              (sha256
               (base32
                "0wpaq2q61g6hl9fffs5cjbzdz1qc8dxsbknfs0iarwkn08460bn5"))))
    (properties `((upstream-name . "impactflu")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-rcpp
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=impactflu")
    (synopsis "Quantification of Population-Level Impact of Vaccination")
    (description
     "This package implements the compartment model from Tokars (2018)
<doi:10.1016/j.vaccine.2018.10.026>.  This enables quantification of
population-wide impact of vaccination against vaccine-preventable diseases such
as influenza.")
    (license license:expat)))

(define-public r-impacteffectsize
  (package
    (name "r-impacteffectsize")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ImpactEffectsize" version))
              (sha256
               (base32
                "06dywikscwvigcw50h9yd3fjf3h25ymkxphwy8r6n3v2nl9iba3m"))))
    (properties `((upstream-name . "ImpactEffectsize")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-paralleldist r-matrixstats r-catools))
    (home-page "https://cran.r-project.org/package=ImpactEffectsize")
    (synopsis
     "Calculation and Visualization of the Impact Effect Size Measure")
    (description
     "This package provides a non-parametric effect size measure capturing changes in
central tendency or shape of data distributions.  The package provides the
necessary functions to calculate and plot the Impact effect size measure between
two groups.")
    (license license:gpl3)))

(define-public r-impact
  (package
    (name "r-impact")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMPACT" version))
              (sha256
               (base32
                "0ai22gvmfj9j00cw742szfqqay63b5lmnszkwwdfdvidls43v0bm"))))
    (properties `((upstream-name . "IMPACT")))
    (build-system r-build-system)
    (home-page "http://www.uv.mx/personal/nehuerta/impact")
    (synopsis "The Impact of Items")
    (description
     "Implement a multivariate analysis of the impact of items to identify a bias in
the questionnaire validation of Likert-type scale variables.  The items requires
considering a null value (category doesn't have tendency).  Offering frequency,
importance and impact of the items.")
    (license license:gpl2+)))

(define-public r-imp4p
  (package
    (name "r-imp4p")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imp4p" version))
              (sha256
               (base32
                "1ld8bjjrlij9m7xns7izibag9mndrfh21xgq1w7g3bh5ag9p9fs0"))))
    (properties `((upstream-name . "imp4p")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-rcpp
                             r-norm
                             r-missmda
                             r-missforest
                             r-iso))
    (home-page "https://cran.r-project.org/package=imp4p")
    (synopsis "Imputation for Proteomics")
    (description
     "This package provides functions to analyse missing value mechanisms and to
impute data sets in the context of bottom-up MS-based proteomics.")
    (license license:gpl3)))

(define-public r-imp
  (package
    (name "r-imp")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMP" version))
              (sha256
               (base32
                "0ilvgz2bngffyx6ifqqx1snsn6mmq7rx3wg44093yrviaw39qdfv"))))
    (properties `((upstream-name . "IMP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-shiny r-ggplot2 r-dplyr))
    (home-page "https://github.com/anup50695/IMPPackage")
    (synopsis "Interactive Model Performance Evaluation")
    (description
     "This package contains functions for evaluating & comparing the performance of
Binary classification models.  Functions can be called either statically or
interactively (as Shiny Apps).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-imola
  (package
    (name "r-imola")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imola" version))
              (sha256
               (base32
                "087zdzn1vkyvqrdlwnackr6jyacrhg69q4b77s8z477kplickw8x"))))
    (properties `((upstream-name . "imola")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-stringi
                             r-shiny
                             r-magrittr
                             r-htmltools
                             r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pedrocoutinhosilva/imola")
    (synopsis "CSS Layouts (Grid and Flexbox) Implementation for R/Shiny")
    (description
     "Allows easy creation of CSS layouts (grid and flexbox) directly from R without
added CSS.")
    (license license:expat)))

(define-public r-immunesim
  (package
    (name "r-immunesim")
    (version "0.8.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "immuneSIM" version))
              (sha256
               (base32
                "0brj12xnkzmn3n91vb39fq3q68wmzmwx9l38dl38yypp0l8pknjl"))))
    (properties `((upstream-name . "immuneSIM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringdist
                             r-reshape2
                             r-repmis
                             r-rcolorbrewer
                             r-powerlaw
                             r-plyr
                             r-metrics
                             r-igraph
                             r-ggthemes
                             r-ggplot2
                             r-data-table
                             r-biostrings))
    (home-page "https://immuneSIM.readthedocs.io")
    (synopsis "Tunable Simulation of B- And T-Cell Receptor Repertoires")
    (description
     "Simulate full B-cell and T-cell receptor repertoires using an in silico
recombination process that includes a wide variety of tunable parameters to
introduce noise and biases.  Additional post-simulation modification functions
allow the user to implant motifs or codon biases as well as remodeling sequence
similarity architecture.  The output repertoires contain records of all relevant
repertoire dimensions and can be analyzed using provided repertoire analysis
functions.  Preprint is available at bioRxiv (Weber et al., 2019
<doi:10.1101/759795>).")
    (license license:gpl3)))

(define-public r-immunarch
  (package
    (name "r-immunarch")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "immunarch" version))
              (sha256
               (base32
                "1yjmr7n352xnkrw9pa122kb716y02bmjr6lw6413gn77bwkxnfpy"))))
    (properties `((upstream-name . "immunarch")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid
                             r-upsetr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-stringdist
                             r-shinythemes
                             r-shiny
                             r-scales
                             r-rtsne
                             r-rlist
                             r-rlang
                             r-reshape2
                             r-readxl
                             r-readr
                             r-rcpp
                             r-purrr
                             r-plyr
                             r-pheatmap
                             r-phangorn
                             r-patchwork
                             r-mass
                             r-magrittr
                             r-jsonlite
                             r-igraph
                             r-glue
                             r-ggseqlogo
                             r-ggrepel
                             r-ggraph
                             r-ggpubr
                             r-ggplot2
                             r-ggalluvial
                             r-fpc
                             r-factoextra
                             r-dtplyr
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-circlize
                             r-ape
                             r-airr))
    (native-inputs (list r-knitr))
    (home-page "https://immunarch.com/")
    (synopsis
     "Bioinformatics Analysis of T-Cell and B-Cell Immune Repertoires")
    (description
     "This package provides a comprehensive framework for bioinformatics exploratory
analysis of bulk and single-cell T-cell receptor and antibody repertoires.  It
provides seamless data loading, analysis and visualisation for AIRR (Adaptive
Immune Receptor Repertoire) data, both bulk immunosequencing (RepSeq) and
single-cell sequencing (scRNAseq).  Immunarch implements most of the widely used
AIRR analysis methods, such as: clonality analysis, estimation of repertoire
similarities in distribution of clonotypes and gene segments, repertoire
diversity analysis, annotation of clonotypes using external immune receptor
databases and clonotype tracking in vaccination and cancer studies.  A successor
to our previously published tcR immunoinformatics package (Nazarov 2015)
<doi:10.1186/s12859-015-0613-1>.")
    (license license:agpl3)))

(define-public r-immigrate
  (package
    (name "r-immigrate")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Immigrate" version))
              (sha256
               (base32
                "0pnnvv63kkg7pgyblb1vlx54c6169n40fn58aypdy5xcnknabvxn"))))
    (properties `((upstream-name . "Immigrate")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-proc))
    (home-page "https://cran.r-project.org/package=Immigrate")
    (synopsis
     "Iterative Max-Min Entropy Margin-Maximization with Interaction Terms for Feature Selection")
    (description
     "Based on large margin principle, this package performs feature selection
methods: \"IM4E\"(Iterative Margin-Maximization under Max-Min Entropy Algorithm);
\"Immigrate\"(Iterative Max-Min Entropy Margin-Maximization with Interaction Terms
Algorithm); \"BIM\"(Boosted version of IMMIGRATE algorithm); \"Simba\"(Iterative
Search Margin Based Algorithm); \"LFE\"(Local Feature Extraction Algorithm).  This
package also performs prediction for the above feature selection methods.")
    (license license:gpl2+)))

(define-public r-immer
  (package
    (name "r-immer")
    (version "1.4-15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "immer" version))
              (sha256
               (base32
                "0vif1q04q847pn1hxr3mg70wwfcvvc8n8ag27s7c2bpza2vj8khc"))))
    (properties `((upstream-name . "immer")))
    (build-system r-build-system)
    (propagated-inputs (list r-tam
                             r-sirt
                             r-rcpparmadillo
                             r-rcpp
                             r-psychotools
                             r-coda
                             r-cdm))
    (home-page "https://github.com/alexanderrobitzsch/immer")
    (synopsis "Item Response Models for Multiple Ratings")
    (description
     "This package implements some item response models for multiple ratings,
including the hierarchical rater model, conditional maximum likelihood
estimation of linear logistic partial credit model and a wrapper function to the
commercial FACETS program.  See Robitzsch and Steinfeld (2018) for a description
of the functionality of the package.  See Wang, Su and Qiu (2014;
<doi:10.1111/jedm.12045>) for an overview of modeling alternatives.")
    (license license:gpl2+)))

(define-public r-immcp
  (package
    (name "r-immcp")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "immcp" version))
              (sha256
               (base32
                "0xjk0a1dr45rnf6fzir74805winn1wppci2wk7wr2pwpmba86vzq"))))
    (properties `((upstream-name . "immcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-rlang
                             r-purrr
                             r-proxyc
                             r-pbapply
                             r-org-hs-eg-db
                             r-openxlsx
                             r-matrix
                             r-magrittr
                             r-igraph
                             r-ggplot2
                             r-ggheatmap
                             r-factoextra
                             r-dplyr
                             r-dose
                             r-clusterprofiler
                             r-arules))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuanlongHu/immcp")
    (synopsis
     "Poly-Pharmacology Toolkit for Traditional Chinese Medicine Research")
    (description
     "Toolkit for Poly-pharmacology Research of Traditional Chinese Medicine.  Based
on the biological descriptors and drug-disease interaction networks, it can
analyze the potential poly-pharmacological mechanisms of Traditional Chinese
Medicine and be used for drug-repositioning in Traditional Chinese Medicine.")
    (license license:gpl3+)))

(define-public r-immailgun
  (package
    (name "r-immailgun")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMmailgun" version))
              (sha256
               (base32
                "09acmi6xj186fb8nhj8q0nxmkp2p32a1l95glzvz84gax4xakhz8"))))
    (properties `((upstream-name . "IMmailgun")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (home-page "https://cran.r-project.org/package=IMmailgun")
    (synopsis "Send Emails using 'Mailgun'")
    (description
     "Send emails using the mailgun api.  To use this package you will need an account
from <https://www.mailgun.com> .")
    (license license:gpl3)))

(define-public r-imix
  (package
    (name "r-imix")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMIX" version))
              (sha256
               (base32
                "0j5wh4j039xmwxb75msgfvh4f7p5xafvn2z47vyn12hd4dznwndq"))))
    (properties `((upstream-name . "IMIX")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm
                             r-mixtools
                             r-mclust
                             r-mass
                             r-ggplot2
                             r-crayon))
    (home-page "https://github.com/ziqiaow/IMIX")
    (synopsis "Gaussian Mixture Model for Multi-Omics Data Integration")
    (description
     "This package provides a multivariate Gaussian mixture model framework to
integrate multiple types of genomic data and allow modeling of inter-data-type
correlations for association analysis.  IMIX can be implemented to test whether
a disease is associated with genes in multiple genomic data types, such as DNA
methylation, copy number variation, gene expression, etc.  It can also study the
integration of multiple pathways.  IMIX uses the summary statistics of
association test outputs and conduct integration analysis for two or three types
of genomics data.  IMIX features statistically-principled model selection,
global FDR control and computational efficiency.  Details are described in
Ziqiao Wang and Peng Wei (2020) <doi:10.1093/bioinformatics/btaa1001>.")
    (license license:gpl2)))

(define-public r-imifa
  (package
    (name "r-imifa")
    (version "2.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMIFA" version))
              (sha256
               (base32
                "033y5y3i63z0gj7pqhf6d73l3lcfnv2srfs244p3wsal4xv11hg4"))))
    (properties `((upstream-name . "IMIFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-slam
                             r-rfast
                             r-mvnfast
                             r-mclust
                             r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IMIFA")
    (synopsis
     "Infinite Mixtures of Infinite Factor Analysers and Related Models")
    (description
     "This package provides flexible Bayesian estimation of Infinite Mixtures of
Infinite Factor Analysers and related models, for nonparametrically clustering
high-dimensional data, introduced by Murphy et al. (2020)
<doi:10.1214/19-BA1179>.  The IMIFA model conducts Bayesian nonparametric
model-based clustering with factor analytic covariance structures without
recourse to model selection criteria to choose the number of clusters or
cluster-specific latent factors, mostly via efficient Gibbs updates.
Model-specific diagnostic tools are also provided, as well as many options for
plotting results, conducting posterior inference on parameters of interest,
posterior predictive checking, and quantifying uncertainty.")
    (license license:gpl2+)))

(define-public r-imgur
  (package
    (name "r-imgur")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imguR" version))
              (sha256
               (base32
                "14f7ghgc8rbrpqb21rinfbrj1wh80i6ii0awwi814152v5qzj4b3"))))
    (properties `((upstream-name . "imguR")))
    (build-system r-build-system)
    (propagated-inputs (list r-png r-jpeg r-httr))
    (home-page "https://github.com/leeper/imguR")
    (synopsis "An Imgur.com API Client Package")
    (description
     "This package provides a complete API client for the image hosting service
Imgur.com, including the an imgur graphics device, enabling the easy upload and
sharing of plots.")
    (license license:gpl3)))

(define-public r-imgrec
  (package
    (name "r-imgrec")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imgrec" version))
              (sha256
               (base32
                "0va04b264v2ywvqdgmvigygsd5f6vdy5cj2ip2nsyi1fzh68hadx"))))
    (properties `((upstream-name . "imgrec")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-knitr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cschwem2er/imgrec")
    (synopsis "An Interface for Image Recognition")
    (description
     "This package provides an interface for image recognition using the Google Vision
API <https://cloud.google.com/vision/> .  Converts API data for features such as
object detection and optical character recognition to data frames.  The package
also includes functions for analyzing image annotations.")
    (license license:expat)))

(define-public r-imgpalr
  (package
    (name "r-imgpalr")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imgpalr" version))
              (sha256
               (base32
                "0v9npy63mv9r9wnd8pcdw4rkr0bybhhmkj36sza7dah92i06il17"))))
    (properties `((upstream-name . "imgpalr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-magrittr
                             r-jpeg
                             r-farver
                             r-dplyr
                             r-downloader))
    (home-page "https://github.com/leonawicz/imgpalr")
    (synopsis "Create Color Palettes from Images")
    (description
     "This package provides ability to create color palettes from image files.  It
offers control over the type of color palette to derive from an image
(qualitative, sequential or divergent) and other palette properties.  Quantiles
of an image color distribution can be trimmed.  Near-black or near-white colors
can be trimmed in RGB color space independent of trimming brightness or
saturation distributions in HSV color space.  Creating sequential palettes also
offers control over the order of HSV color dimensions to sort by.  This package
differs from other related packages like RImagePalette in approaches to
quantizing and extracting colors in images to assemble color palettes and the
level of user control over palettes construction.")
    (license license:expat)))

(define-public r-imediate
  (package
    (name "r-imediate")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iMediate" version))
              (sha256
               (base32
                "1lwhrzm4g2fcazh782g7p11v5pyx165ig1dzgkmdmjffpwk0w8b4"))))
    (properties `((upstream-name . "iMediate")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotly r-mvtnorm r-mbess))
    (home-page "https://cran.r-project.org/package=iMediate")
    (synopsis "Likelihood Methods for Mediation Analysis")
    (description
     "This package implements likelihood based methods for mediation analysis.")
    (license license:gpl2+)))

(define-public r-imec
  (package
    (name "r-imec")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMEC" version))
              (sha256
               (base32
                "1k85pr6s6lysn53n59i8rcdhyg7r3il5avbckvvz43p6lh0fgxpy"))))
    (properties `((upstream-name . "IMEC")))
    (build-system r-build-system)
    (propagated-inputs (list r-qgraph r-isingsampler r-igraph))
    (home-page "https://cran.r-project.org/package=IMEC")
    (synopsis "Ising Model of Explanatory Coherence")
    (description
     "Theories are one of the most important tools of science.  Although psychologists
discussed problems of theory in their discipline for a long time, weak theories
are still widespread in most subfields.  One possible reason for this is that
psychologists lack the tools to systematically assess the quality of their
theories.  Previously a computational model for formal theory evaluation based
on the concept of explanatory coherence was developed (Thagard, 1989,
<doi:10.1017/S0140525X00057046>).  However, there are possible improvements to
this model and it is not available in software that psychologists typically use.
 Therefore, a new implementation of explanatory coherence based on the Ising
model is available in this R-package.")
    (license license:expat)))

(define-public r-imdbapi
  (package
    (name "r-imdbapi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imdbapi" version))
              (sha256
               (base32
                "11v7c0s7qqf02b186md5lhgkgmywkn8lmmanlz3gfcxca26g047y"))))
    (properties `((upstream-name . "imdbapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-httr r-dplyr))
    (home-page "https://cran.r-project.org/package=imdbapi")
    (synopsis "Get Movie, Television Data from the 'imdb' Database")
    (description
     "This package provides API access to the <http://imdbapi.net> which maintains
metadata about movies, games and television shows through a public API.")
    (license license:gpl3)))

(define-public r-imd
  (package
    (name "r-imd")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMD" version))
              (sha256
               (base32
                "0cixq15n38bj49xp9cxra7rzi9sp5fbf4ac4m7nl2iiswscy15fr"))))
    (properties `((upstream-name . "IMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-readr r-janitor r-dplyr))
    (home-page "https://github.com/humaniverse/IMD")
    (synopsis "Index of Multiple Deprivation Data for the UK")
    (description
     "Index of Multiple Deprivation for UK nations at various geographical levels.  In
England, deprivation data is for Lower Layer Super Output Areas, Middle Layer
Super Output Areas, Wards, and Local Authorities based on data from
<https://www.gov.uk/government/statistics/english-indices-of-deprivation-2019>.
In Wales, deprivation data is for Lower Layer Super Output Areas, Middle Layer
Super Output Areas, Wards, and Local Authorities based on data from
<https://gov.wales/welsh-index-multiple-deprivation-full-index-update-ranks-2019>.
 In Scotland, deprivation data is for Data Zones, Intermediate Zones, and
Council Areas based on data from <https://simd.scot>.  In Northern Ireland,
deprivation data is for Super Output Areas and Local Government Districts based
on data from
<https://www.nisra.gov.uk/statistics/deprivation/northern-ireland-multiple-deprivation-measure-2017-nimdm2017>.
 The IMD package also provides the composite UK index developed by
<https://github.com/mysociety/composite_uk_imd>.")
    (license license:expat)))

(define-public r-imcexperiment
  (package
    (name "r-imcexperiment")
    (version "0.99.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imcExperiment" version))
              (sha256
               (base32
                "0fagasb94q7gxx49c7n4p2cb9j3n5qnfx86s7nvz4naicy96qbyr"))))
    (properties `((upstream-name . "imcExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-summarizedexperiment r-spatstat-geom
                             r-singlecellexperiment r-s4vectors))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=imcExperiment")
    (synopsis "Mass Cytometry S4 Class Structure Pipeline for Images")
    (description
     "Containerizes cytometry data and allows for S4 class structure to extend slots
related to cell morphology, spatial coordinates, phenotype network information,
and unique cellular labeling.")
    (license license:expat)))

(define-public r-imbibe
  (package
    (name "r-imbibe")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imbibe" version))
              (sha256
               (base32
                "03vaz5vippnmbgs2l4gxpmsnrkxjw7d156ng13r07zicq43g9gwp"))))
    (properties `((upstream-name . "imbibe")))
    (build-system r-build-system)
    (propagated-inputs (list r-rnifti r-rcpp r-magrittr))
    (home-page "https://github.com/jonclayden/imbibe")
    (synopsis "Pipe-Friendly Image Calculator")
    (description
     "This package provides a set of fast, chainable image-processing operations which
are applicable to images of two, three or four dimensions, particularly medical
images.")
    (license (license:fsdg-compatible "BSD_3_clause + file LICENCE"))))

(define-public r-imbalancedatrel
  (package
    (name "r-imbalancedatrel")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imbalanceDatRel" version))
              (sha256
               (base32
                "017z434pshsc2v8w1nlrvlf6dswdjk060flrn951n59vdzvl5rhj"))))
    (properties `((upstream-name . "imbalanceDatRel")))
    (build-system r-build-system)
    (propagated-inputs (list r-smotewb r-rfast r-rcccd r-rann))
    (home-page "https://cran.r-project.org/package=imbalanceDatRel")
    (synopsis "Relocated Data Oversampling for Imbalanced Data Classification")
    (description
     "Relocates oversampled data from a specific oversampling method to cover area
determined by pure and proper class cover catch digraphs (PCCCD).  It prevents
any data to be generated in class overlapping area.")
    (license license:expat)))

(define-public r-imbalance
  (package
    (name "r-imbalance")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imbalance" version))
              (sha256
               (base32
                "14f7p3x8818b1asfynp3w4sxdacsd14dzs7r166s1jdadwwfwi1s"))))
    (properties `((upstream-name . "imbalance")))
    (build-system r-build-system)
    (propagated-inputs (list r-smotefamily
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-kernelknn
                             r-ggplot2
                             r-fnn
                             r-c50
                             r-bnlearn))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/ncordon/imbalance")
    (synopsis "Preprocessing Algorithms for Imbalanced Datasets")
    (description
     "Class imbalance usually damages the performance of classifiers.  Thus, it is
important to treat data before applying a classifier algorithm.  This package
includes recent resampling algorithms in the literature: (Barua et al.  2014)
<doi:10.1109/tkde.2012.232>; (Das et al.  2015) <doi:10.1109/tkde.2014.2324567>,
(Zhang et al.  2014) <doi:10.1016/j.inffus.2013.12.003>; (Gao et al.  2014)
<doi:10.1016/j.neucom.2014.02.006>; (Almogahed et al.  2014)
<doi:10.1007/s00500-014-1484-5>.  It also includes an useful interface to
perform oversampling.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-imak
  (package
    (name "r-imak")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IMak" version))
              (sha256
               (base32
                "1972iwam1kkkb3107pq8jhmm3q0ypn92p519srzm82xnbf0m7828"))))
    (properties `((upstream-name . "IMak")))
    (build-system r-build-system)
    (propagated-inputs (list r-png))
    (home-page "https://cran.r-project.org/package=IMak")
    (synopsis "Item Maker")
    (description
     "This is an Automatic Item Generator for Psychological Assessment.  Items created
with the IMak package should not be used in applied settings as part of the
working protocol without ensuring first that the items meet the required
psychometric quality standards (see Blum & Holling, 2018)
<DOI:10.3389/fpsyg.2018.01286>.")
    (license license:gpl3)))

(define-public r-imagine
  (package
    (name "r-imagine")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imagine" version))
              (sha256
               (base32
                "0dwq7gb068wd87fclca3hmdfr50bxf39va7dp1ky1i6qhk8w8g2l"))))
    (properties `((upstream-name . "imagine")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LuisLauM/imagine")
    (synopsis
     "IMAGing engINEs, Tools for Application of Image Filters to Data Matrices")
    (description
     "This package provides fast application of image filters to data matrices, using
R and C++ algorithms.")
    (license license:gpl2+)))

(define-public r-imaginator
  (package
    (name "r-imaginator")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imaginator" version))
              (sha256
               (base32
                "0wjgfsp7dhy8q7rai4bvikmw1y3iancnqdnqlhbi7a563s4mkpkr"))))
    (properties `((upstream-name . "imaginator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-rlang
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-distributions3
                             r-checkmate
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/casact/imaginator")
    (synopsis "Simulate General Insurance Policies and Losses")
    (description
     "Simulate general insurance policies, losses and loss emergence.  The functions
contemplate deterministic and stochastic policy retention and growth scenarios.
Retention and growth rates are percentages relative to the expiring portfolio.
Claims are simulated for each policy.  This is accomplished either be assuming a
frequency distribution per development lag or by generating random wait times
until claim emergence and settlement.  Loss simulation uses standard loss
distributions for claim amounts.")
    (license (list (license:fsdg-compatible "MPL-2.0")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-imageviewer
  (package
    (name "r-imageviewer")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imageviewer" version))
              (sha256
               (base32
                "1rsrwy5v0gnsmbay1zqijhvll2l1bs844m52w65588j9nlx4fci9"))))
    (properties `((upstream-name . "imageviewer")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list esbuild))
    (home-page "https://github.com/yapus/imageviewer")
    (synopsis
     "Simple 'htmlwidgets' Image Viewer with WebGL Brightness/Contrast")
    (description
     "Display a 2D-matrix data as a interactive zoomable gray-scale image viewer,
providing tools for manual data inspection.  The viewer window shows cursor
guiding lines and a corresponding data slices for both axes at the current
cursor position.  A tool-bar allows adjusting image display brightness/contrast
through WebGL filters and performing basic high-pass/low-pass filtering.")
    (license license:expat)))

(define-public r-imageseg
  (package
    (name "r-imageseg")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imageseg" version))
              (sha256
               (base32
                "1ps303zcqmiy5jv65z1c1lyzbjdcb2akvy2rmcwbms8j7a1y1shg"))))
    (properties `((upstream-name . "imageseg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-purrr
                             r-magrittr
                             r-magick
                             r-keras
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=imageseg")
    (synopsis "Deep Learning Models for Image Segmentation")
    (description
     "This package provides a general-purpose workflow for image segmentation using
TensorFlow models based on the U-Net architecture by Ronneberger et al. (2015)
<arXiv:1505.04597> and the U-Net++ architecture by Zhou et al. (2018)
<arXiv:1807.10165>.  We provide pre-trained models for assessing canopy density
and understory vegetation density from vegetation photos.  In addition, the
package provides a workflow for easily creating model input and model
architectures for general-purpose image segmentation based on grayscale or color
images, both for binary and multi-class image segmentation.")
    (license license:expat)))

(define-public r-imagerextra
  (package
    (name "r-imagerextra")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imagerExtra" version))
              (sha256
               (base32
                "1f6mxfn7am4ph9acbbx53r4bk4vsm73p7arh8rvrsic9pgma3gqf"))))
    (properties `((upstream-name . "imagerExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magrittr r-imager r-fftwtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ShotaOchi/imagerExtra")
    (synopsis "Extra Image Processing Library Based on 'imager'")
    (description
     "This package provides advanced functions for image processing based on the
package imager'.")
    (license license:gpl3)))

(define-public r-imagefx
  (package
    (name "r-imagefx")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imagefx" version))
              (sha256
               (base32
                "1mxd33y8zbq8kig6m6xihb5w8wrjppgmpyjspvaxjwk7si9a09k1"))))
    (properties `((upstream-name . "imagefx")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-moments))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=imagefx")
    (synopsis "Extract Features from Images")
    (description
     "Synthesize images into characteristic features for time-series analysis or
machine learning applications.  The package was originally intended for
monitoring volcanic eruptions in video data by highlighting and extracting
regions above the vent associated with plume activity.  However, the functions
within are general and have wide applications for image processing, analyzing,
filtering, and plotting.")
    (license license:gpl3)))

(define-public r-imagefluency
  (package
    (name "r-imagefluency")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imagefluency" version))
              (sha256
               (base32
                "1kssg6lj29f7c2isnzw98crygpj761q0qp38i7zs8008cwbch4cy"))))
    (properties `((upstream-name . "imagefluency")))
    (build-system r-build-system)
    (propagated-inputs (list r-readbitmap r-r-utils r-pracma r-openimager
                             r-magick))
    (native-inputs (list r-knitr))
    (home-page "https://stm.github.io/imagefluency/")
    (synopsis "Image Statistics Based on Processing Fluency")
    (description
     "Get image statistics based on processing fluency theory.  The functions provide
scores for several basic aesthetic principles that facilitate fluent cognitive
processing of images: contrast, complexity / simplicity, self-similarity,
symmetry, and typicality.  See Mayer & Landwehr (2018) <doi:10.1037/aca0000187>
and Mayer & Landwehr (2018) <doi:10.31219/osf.io/gtbhw> for the theoretical
background of the methods.")
    (license license:gpl3)))

(define-public r-imagedata
  (package
    (name "r-imagedata")
    (version "0.1-61")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imageData" version))
              (sha256
               (base32
                "0bavyd8njfjd0l8dcsm6gklgc81kykl275w2gpvb5cxrhb9yp32n"))))
    (properties `((upstream-name . "imageData")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape
                             r-readxl
                             r-rcolorbrewer
                             r-hmisc
                             r-ggplot2
                             r-ggally
                             r-dae))
    (native-inputs (list r-r-rsp))
    (home-page "http://chris.brien.name")
    (synopsis
     "Aids in Processing and Plotting Data from a Lemna-Tec Scananalyzer")
    (description
     "Note that imageData has been superseded by growthPheno'.  The package
growthPheno incorporates all the functionality of imageData and has
functionality not available in imageData', but some imageData functions have
been renamed.  The imageData package is no longer maintained, but is retained
for legacy purposes.")
    (license license:gpl2+)))

(define-public r-image2data
  (package
    (name "r-image2data")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image2data" version))
              (sha256
               (base32
                "03fvl7fj7kc6i6xgyrixwk0ahgmlg26ihvwvkxh6yxzhjj48syfq"))))
    (properties `((upstream-name . "image2data")))
    (build-system r-build-system)
    (propagated-inputs (list r-readbitmap))
    (home-page "https://cran.r-project.org/package=image2data")
    (synopsis "Turn Images into Data Sets")
    (description
     "The goal of image2data is to extract images and return them into a data set,
especially for teaching data manipulation and data visualization.  Basically,
the eponymous function takes an image file ('png', tiff', jpeg', bmp') and turn
it into a data set, pixels being rows (subjects) and columns (variables) being
their coordinate positions (x- and y-axis) and their respective color (in hex
codes).  The function can return a complete image or a range of color (i.e.,
contour, silhouette).  The data can then be manipulated as would any data set by
either creating other related variables (to hide the image) or as a genuine toy
data set.")
    (license license:expat)))

(define-public r-image-textlinedetector
  (package
    (name "r-image-textlinedetector")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.textlinedetector" version))
              (sha256
               (base32
                "0zbixw0j241il357n9mljcw4lvq6f1ddadx2a0ahykdf1w0vplyx"))))
    (properties `((upstream-name . "image.textlinedetector")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magick))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/DIGI-VUB/image.textlinedetector")
    (synopsis "Segment Images in Text Lines and Words")
    (description
     "Find text lines in scanned images and segment the lines into words.  Includes
implementations of the paper Novel A* Path Planning Algorithm for Line
Segmentation of Handwritten Documents by Surinta O. et al (2014)
<doi:10.1109/ICFHR.2014.37> available at <https://github.com/smeucci/LineSegm>,
an implementation of A Statistical approach to line segmentation in handwritten
documents by Arivazhagan M. et al (2007) <doi:10.1117/12.704538>, and a wrapper
for an image segmentation technique to detect words in text lines as described
in the paper Scale Space Technique for Word Segmentation in Handwritten
Documents by Manmatha R. and Srimal N. (1999) paper at
<doi:10.1007/3-540-48236-9_3>, wrapper for code available at
<https://github.com/arthurflor23/text-segmentation>.  Provides as well
functionality to put cursive text in images upright using the approach defined
in the paper A new normalization technique for cursive handwritten words by
Vinciarelli A. and Luettin J. (2001) <doi:10.1016/S0167-8655(01)00042-3>.")
    (license license:expat)))

(define-public r-image-otsu
  (package
    (name "r-image-otsu")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.Otsu" version))
              (sha256
               (base32
                "0van4w7f3rnd2p5fsfjm7pq1j7ky90z9j0sir1mszjxjkcj6s9rz"))))
    (properties `((upstream-name . "image.Otsu")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Otsu's Image Segmentation Method")
    (description
     "An implementation of the Otsu's Image Segmentation Method described in the
paper: \"A C++ Implementation of Otsu's Image Segmentation Method\".  The
algorithm is explained at <doi:10.5201/ipol.2016.158>.")
    (license license:expat)))

(define-public r-image-linesegmentdetector
  (package
    (name "r-image-linesegmentdetector")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.LineSegmentDetector" version))
              (sha256
               (base32
                "1mx6vkmm9miwqdd5vil44if0dikzn5cy3kxvb3vp0kwfm8k36ib5"))))
    (properties `((upstream-name . "image.LineSegmentDetector")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Detect Line Segments in Images")
    (description
     "An implementation of the Line Segment Detector on digital images described in
the paper: \"LSD: A Fast Line Segment Detector with a False Detection Control\" by
Rafael Grompone von Gioi et al (2012).  The algorithm is explained at
<doi:10.5201/ipol.2012.gjmr-lsd>.")
    (license license:agpl3)))

(define-public r-image-libfacedetection
  (package
    (name "r-image-libfacedetection")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.libfacedetection" version))
              (sha256
               (base32
                "0mr7zrqd73mhvs918615lwsf2bgg63x3wh16wdpwhb2zd7ybm87a"))))
    (properties `((upstream-name . "image.libfacedetection")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Convolutional Neural Network for Face Detection")
    (description
     "An open source library for face detection in images.  Provides a pretrained
convolutional neural network based on
<https://github.com/ShiqiYu/libfacedetection> which can be used to detect faces
which have size greater than 10x10 pixels.")
    (license license:bsd-3)))

(define-public r-image-dlib
  (package
    (name "r-image-dlib")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.dlib" version))
              (sha256
               (base32
                "0wrg6cwnrqwvgs5w1wjhc8ald7fij76xr2qbv6yb217v13ahwskm"))))
    (properties `((upstream-name . "image.dlib")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Image Processing Functionality using the 'dlib' Package")
    (description
     "Facility wrappers around the image processing functionality of dlib'.  Dlib
<http://dlib.net> is a C++ toolkit containing machine learning algorithms and
computer vision tools.  Currently the package allows to find feature descriptors
of digital images, in particular SURF and HOG descriptors.")
    (license (license:fsdg-compatible "BSL-1.0"))))

(define-public r-image-cornerdetectionharris
  (package
    (name "r-image-cornerdetectionharris")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.CornerDetectionHarris" version))
              (sha256
               (base32
                "150qz9wfpa33914x1am2ifzm0k2bdkmgk1qypvgxy958ginlaxsg"))))
    (properties `((upstream-name . "image.CornerDetectionHarris")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Implementation of the Harris Corner Detection for Images")
    (description
     "An implementation of the Harris Corner Detection as described in the paper \"An
Analysis and Implementation of the Harris Corner Detector\" by SÃ¡nchez J. et al
(2018) available at <doi:10.5201/ipol.2018.229>.  The package allows to detect
relevant points in images which are characteristic to the digital image.")
    (license license:bsd-2)))

(define-public r-image-cornerdetectionf9
  (package
    (name "r-image-cornerdetectionf9")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.CornerDetectionF9" version))
              (sha256
               (base32
                "04qy2yvgjmgb8r3piw6v5g97abljqv1nw7vn2wvn1npkq9lzj94x"))))
    (properties `((upstream-name . "image.CornerDetectionF9")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Find Corners in Digital Images with FAST-9")
    (description
     "An implementation of the \"FAST-9\" corner detection algorithm explained in the
paper FASTER and better: A machine learning approach to corner detection by
Rosten E., Porter R. and Drummond T. (2008), available at <arXiv:0810.2434>.
The package allows to detect corners in digital images.")
    (license license:bsd-2)))

(define-public r-image-contourdetector
  (package
    (name "r-image-contourdetector")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.ContourDetector" version))
              (sha256
               (base32
                "0h9nq6k99rfmldw1c00k2anlpbjbpm26pp1d7jg2wz334dvlvlij"))))
    (properties `((upstream-name . "image.ContourDetector")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis
     "Implementation of the Unsupervised Smooth Contour Line Detection for Images")
    (description
     "An implementation of the Unsupervised Smooth Contour Detection algorithm for
digital images as described in the paper: \"Unsupervised Smooth Contour
Detection\" by Rafael Grompone von Gioi, and Gregory Randall (2016).  The
algorithm is explained at <doi:10.5201/ipol.2016.175>.")
    (license license:agpl3)))

(define-public r-image-cannyedges
  (package
    (name "r-image-cannyedges")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.CannyEdges" version))
              (sha256
               (base32
                "0c8pvk91xyys6d2i03yy88kylb3jli5jkpq2s069n7p0yl3z7rr1"))))
    (properties `((upstream-name . "image.CannyEdges")))
    (build-system r-build-system)
    (inputs (list libpng fftw))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/image")
    (synopsis "Implementation of the Canny Edge Detector for Images")
    (description
     "An implementation of the Canny Edge Detector for detecting edges in images.  The
package provides an interface to the algorithm available at
<https://github.com/Neseb/canny>.")
    (license license:gpl3)))

(define-public r-image-binarization
  (package
    (name "r-image-binarization")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "image.binarization" version))
              (sha256
               (base32
                "03p06qmv1s5i08hw4616qf7dqyqp3hrcibz1w66bh5dzv6yl9j7c"))))
    (properties `((upstream-name . "image.binarization")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magick))
    (home-page "https://github.com/DIGI-VUB/image.binarization")
    (synopsis "Binarize Images for Enhancing Optical Character Recognition")
    (description
     "Improve optical character recognition by binarizing images.  The package focuses
primarily on local adaptive thresholding algorithms.  In English, this means
that it has the ability to turn a color or gray scale image into a black and
white image.  This is particularly useful as a preprocessing step for optical
character recognition or handwritten text recognition.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-imabc
  (package
    (name "r-imabc")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "imabc" version))
              (sha256
               (base32
                "1p420jlvqqcqdjqp7y4mcjkzimw3qiygph5yrvmm75znax3fkg4z"))))
    (properties `((upstream-name . "imabc")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm r-mass r-lhs r-foreach r-data-table))
    (home-page "https://github.com/carolyner/imabc")
    (synopsis "Incremental Mixture Approximate Bayesian Computation (IMABC)")
    (description
     "This package provides functionality to perform a likelihood-free method for
estimating the parameters of complex models that results in a simulated sample
from the posterior distribution of model parameters given targets.  The method
begins with a accept/reject approximate bayes computation (ABC) step applied to
a sample of points from the prior distribution of model parameters.  Accepted
points result in model predictions that are within the initially specified
tolerance intervals around the target points.  The sample is iteratively updated
by drawing additional points from a mixture of multivariate normal
distributions, accepting points within tolerance intervals.  As the algorithm
proceeds, the acceptance intervals are narrowed.  The algorithm returns a set of
points and sampling weights that account for the adaptive sampling scheme.  For
more details see Rutter, Ozik, DeYoreo, and Collier (2018) <arXiv:1804.02090>.")
    (license license:gpl3)))

(define-public r-ilse
  (package
    (name "r-ilse")
    (version "1.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ILSE" version))
              (sha256
               (base32
                "0jx0f7lk18k0wsypi4ynq1zqbb9hsmcmf0chxyrpqkadfqb6mgwr"))))
    (properties `((upstream-name . "ILSE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-pbapply))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/feiyoung/ILSE")
    (synopsis "Linear Regression Based on 'ILSE' for Missing Data")
    (description
     "Linear regression when covariates include missing values by embedding the
correlation information between covariates.  Especially for block missing data,
it works well.  ILSE conducts imputation and regression simultaneously and
iteratively.  More details can be referred to Huazhen Lin, Wei Liu and Wei Lan.
(2021) <doi:10.1080/07350015.2019.1635486>.")
    (license license:gpl3)))

(define-public r-ils
  (package
    (name "r-ils")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ILS" version))
              (sha256
               (base32
                "0l4rrl1j72lqg87nzw4xap054gl2h3m90g8sl5bzg3jc7c290rd7"))))
    (properties `((upstream-name . "ILS")))
    (build-system r-build-system)
    (propagated-inputs (list r-multcomp r-mass r-lattice r-fda-usc
                             r-depthtools))
    (home-page "https://github.com/mflores72000/ILS/")
    (synopsis "Interlaboratory Study")
    (description
     "It performs interlaboratory studies (ILS) to detect those laboratories that
provide non-consistent results when comparing to others.  It permits to work
simultaneously with various testing materials, from standard univariate, and
functional data analysis (FDA) perspectives.  The univariate approach based on
ASTM E691-08 consist of estimating the Mandel's h and k statistics to identify
those laboratories that provide more significant different results, testing also
the presence of outliers by Cochran and Grubbs tests, Analysis of variance
(ANOVA) techniques are provided (F and Tuckey tests) to test differences in
means corresponding to different laboratories per each material.  Taking into
account the functional nature of data retrieved in analytical chemistry, applied
physics and engineering (spectra, thermograms, etc.).  ILS package provides a
FDA approach for finding the Mandel's k and h statistics distribution by
smoothing bootstrap resampling.")
    (license license:gpl2+)))

(define-public r-ijtiff
  (package
    (name "r-ijtiff")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ijtiff" version))
              (sha256
               (base32
                "1vc8y88ryn0xy67835w9zkknqqdwh5hfrbm193v7dm56yxm0nbf7"))))
    (properties `((upstream-name . "ijtiff")))
    (build-system r-build-system)
    (inputs (list zlib zlib libtiff libjpeg-turbo))
    (propagated-inputs (list r-zeallot
                             r-withr
                             r-stringr
                             r-strex
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-fs
                             r-dplyr
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr pkg-config))
    (home-page "https://docs.ropensci.org/ijtiff/")
    (synopsis
     "Comprehensive TIFF I/O with Full Support for 'ImageJ' TIFF Files")
    (description
     "General purpose TIFF file I/O for R users.  Currently the only such package with
read and write support for TIFF files with floating point (real-numbered)
pixels, and the only package that can correctly import TIFF files that were
saved from ImageJ and write TIFF files than can be correctly read by ImageJ
<https://imagej.nih.gov/ij/>.  Also supports text image I/O.")
    (license license:gpl3)))

(define-public r-iivpredictor
  (package
    (name "r-iivpredictor")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IIVpredictor" version))
              (sha256
               (base32
                "15361j8b60jj3bh8cjxs39d9bir1aywy9bd254s5w94cakhy0ld5"))))
    (properties `((upstream-name . "IIVpredictor")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2jags r-lavaan))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IIVpredictor")
    (synopsis "Modeling Within Individual Variability as Predictor")
    (description
     "Time parceling method and Bayesian variability modeling methods for modeling
within individual variability indicators as predictors.For more details, see
<https://github.com/xliu12/IIVpredicitor>.")
    (license license:gpl2)))

(define-public r-iiproductionunknown
  (package
    (name "r-iiproductionunknown")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IIProductionUnknown" version))
              (sha256
               (base32
                "1zbmwa59ynqskxx6cf2hwfrgh3a2p95vcjy5f0kgz8vbh093cr0m"))))
    (properties `((upstream-name . "IIProductionUnknown")))
    (build-system r-build-system)
    (propagated-inputs (list r-crayon))
    (home-page "https://cran.r-project.org/package=IIProductionUnknown")
    (synopsis
     "Analyzing Data Through of Percentage of Importance Indice (Production Unknown) and Its Derivations")
    (description
     "The Importance Index (I.I.) can determine the loss and solution sources for a
system in certain knowledge areas (e.g., agronomy), when production (e.g.,
fruits) is known (Demolin-Leite, 2021).  Events (e.g., agricultural pest) can
have different magnitudes (numerical measurements), frequencies, and
distributions (aggregate, random, or regular) of event occurrence, and I.I.
bases in this triplet (Demolin-Leite, 2021)
<https://cjascience.com/index.php/CJAS/article/view/1009/1319>.  Usually, the
higher the magnitude and frequency of aggregated distribution, the greater the
problem or the solution (e.g., natural enemies versus pests) for the system
(Demolin-Leite, 2021).  However, the final production of the system is not
always known or is difficult to determine (e.g., degraded area recovery).  A
derivation of the I.I. is the percentage of Importance Index-Production Unknown
(% I.I.-PU) that can detect the loss or solution sources, when production is
unknown for the system (Demolin-Leite, 2024) <DOI:10.1590/1519-6984.253218>.")
    (license license:gpl3)))

(define-public r-iineq
  (package
    (name "r-iineq")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iIneq" version))
              (sha256
               (base32
                "15487majkslabw33dgqfx0jmbzzjhiy8z07bki5540d1wf6rmmnn"))))
    (properties `((upstream-name . "iIneq")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=iIneq")
    (synopsis
     "Computing Individual Components of the Gini and the Theil Indices")
    (description
     "Computes individual contributions to the overall Gini and Theil's T and Theil's
L measures and their decompositions by groups such as race, gender, national
origin, with the three functions of iGini(), iTheiT(), and iTheilL().  For
details, see Tim F. Liao (2019) <doi:10.1177/0049124119875961>.")
    (license license:gpl2)))

(define-public r-ihsep
  (package
    (name "r-ihsep")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IHSEP" version))
              (sha256
               (base32
                "18zkqg9vinc8a37i86k516jyjrn3gqbyzb86lq9dix4kskvlvpfd"))))
    (properties `((upstream-name . "IHSEP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-lpint))
    (home-page "https://cran.r-project.org/package=IHSEP")
    (synopsis "Inhomogeneous Self-Exciting Process")
    (description
     "Simulate an inhomogeneous self-exciting process (IHSEP), or Hawkes process, with
a given (possibly time-varying) baseline intensity and an excitation function.
Calculate the likelihood of an IHSEP with given baseline intensity and
excitation functions for an (increasing) sequence of event times.  Calculate the
point process residuals (integral transforms of the original event times).
Calculate the mean intensity process.")
    (license license:gpl2+)))

(define-public r-ihpdr
  (package
    (name "r-ihpdr")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ihpdr" version))
              (sha256
               (base32
                "1qa9ndb5aqbmlqbl0ivh10ddah2rbhsc6928dml20fjgz7lggdww"))))
    (properties `((upstream-name . "ihpdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-rvest
                             r-rlang
                             r-readxl
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-curl))
    (home-page "https://github.com/kvasilopoulos/ihpdr")
    (synopsis "Download Data from the International House Price Database")
    (description
     "Web scraping the <https://www.dallasfed.org> for up-to-date data on
international house prices and exuberance indicators.  Download data in tidy
format.")
    (license license:gpl3)))

(define-public r-iheiddown
  (package
    (name "r-iheiddown")
    (version "0.9.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iheiddown" version))
              (sha256
               (base32
                "1h7cb52wk0z5na543v78vjj2xh77kj3nwgl5vgqnf5186mrknh5v"))))
    (properties `((upstream-name . "iheiddown")))
    (build-system r-build-system)
    (propagated-inputs (list r-xaringan
                             r-usethis
                             r-tidytext
                             r-tibble
                             r-stringr
                             r-servr
                             r-rstudioapi
                             r-rmarkdown
                             r-rlang
                             r-readr
                             r-pdftools
                             r-pagedown
                             r-ggplot2
                             r-gender
                             r-fs
                             r-dplyr
                             r-crayon
                             r-bookdown
                             r-bib2df))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhollway/iheiddown")
    (synopsis "For Writing Geneva Graduate Institute Documents")
    (description
     "This package provides a set of tools for writing documents according to Geneva
Graduate Institute conventions and regulations.  The most common use is for
writing and compiling theses or thesis chapters, as drafts or for examination
with correct preamble formatting.  However, the package also offers users to
create HTML presentation slides with xaringan', complete problem sets, format
posters, and, for course instructors, prepare a syllabus.  The package includes
additional functions for institutional color palettes, an institutional ggplot
theme, a function for counting manuscript words, and a bibliographical analysis
toolkit.")
    (license license:expat)))

(define-public r-ihclust
  (package
    (name "r-ihclust")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ihclust" version))
              (sha256
               (base32
                "049jlx8bspl1md06zyh3m7fr666cymmcwarsjrkr8pdd7vlg918j"))))
    (properties `((upstream-name . "ihclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-foreach r-factoextra r-doparallel))
    (home-page "https://cran.r-project.org/package=ihclust")
    (synopsis "Iterative Hierarchical Clustering (IHC)")
    (description
     "This package provides a set of tools to i) identify geographic areas with
significant change over time in drug utilization, and ii) characterize common
change over time patterns among the time series for multiple geographic areas.
For reference, see below: 1.  Song, J., Carey, M., Zhu, H., Miao, H.,
RamÂ´Ä±rez, J. C., & Wu, H. (2018) <doi:10.1504/IJCBDD.2018.10011910> 2.  Wu,
S., Wu, H. (2013) <doi:10.1186/1471-2105-14-6> 3.  Carey, M., Wu, S., Gan, G. &
Wu, H. (2016) <doi:10.1016/j.idm.2016.07.001>.")
    (license license:gpl3+)))

(define-public r-igst
  (package
    (name "r-igst")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IGST" version))
              (sha256
               (base32
                "12ycrfsgwakaj3k39k1j4ky58wr7a2ibyz6j9cznvjjv6cgz9zg5"))))
    (properties `((upstream-name . "IGST")))
    (build-system r-build-system)
    (propagated-inputs (list r-e1071 r-bootmrmr))
    (home-page "https://cran.r-project.org/package=IGST")
    (synopsis "Informative Gene Selection Tool")
    (description
     "Mining informative genes with certain biological meanings are important for
clinical diagnosis of disease and discovery of disease mechanisms in plants and
animals.  This process involves identification of relevant genes and removal of
redundant genes as much as possible from a whole gene set.  This package selects
the informative genes related to a specific trait using gene expression dataset.
 These trait specific genes are considered as informative genes.  This package
returns the informative gene set from the high dimensional gene expression data
using a combination of methods SVM and MRMR (for feature selection) with
bootstrapping procedure.")
    (license license:gpl3)))

(define-public r-igsea
  (package
    (name "r-igsea")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iGSEA" version))
              (sha256
               (base32
                "1xlz8mbxqnrwyqj7jwma7vmvjlaccajbfxf3hi4wp5qs2pch8806"))))
    (properties `((upstream-name . "iGSEA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iGSEA")
    (synopsis "Integrative Gene Set Enrichment Analysis Approaches")
    (description
     "To integrate multiple GSEA studies, we propose a hybrid strategy, iGSEA-AT, for
choosing random effects (RE) versus fixed effect (FE) models, with an attempt to
achieve the potential maximum statistical efficiency as well as stability in
performance in various practical situations.  In addition to iGSEA-AT, this
package also provides options to perform integrative GSEA with testing based on
a FE model (iGSEA-FE) and testing based on a RE model (iGSEA-RE).  The
approaches account for different set sizes when testing a database of gene sets.
 The function is easy to use, and the three approaches can be applied to both
binary and continuous phenotypes.")
    (license license:gpl2)))

(define-public r-igrf
  (package
    (name "r-igrf")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igrf" version))
              (sha256
               (base32
                "1287mx1fpbq9y8jbyb43hlignkqg313rn3kc52pm6b2n77ipkrc6"))))
    (properties `((upstream-name . "igrf")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/bluegreen-labs/igrf")
    (synopsis "International Geomagnetic Reference Field")
    (description
     "The 13th generation International Geomagnetic Reference Field (IGRF).  A
standard spherical harmonic representation of the Earth's main field.")
    (license license:agpl3)))

(define-public r-igraphtosonia
  (package
    (name "r-igraphtosonia")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igraphtosonia" version))
              (sha256
               (base32
                "0vy9jnpjp68l8s0hi1l57j9p41c543h3iqv16pwl550f38zqp8j6"))))
    (properties `((upstream-name . "igraphtosonia")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=igraphtosonia")
    (synopsis "Convert iGraph graps to SoNIA .son files")
    (description
     "This program facilitates exporting igraph graphs to the SoNIA file format")
    (license license:gpl2+)))

(define-public r-igraphmatch
  (package
    (name "r-igraphmatch")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iGraphMatch" version))
              (sha256
               (base32
                "12b55l0wq1afsk09zdfjbrjmfhyia56b3x46f00hb3izmcyljl41"))))
    (properties `((upstream-name . "iGraphMatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrix r-irlba r-igraph r-clue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dpmcsuss/iGraphMatch/")
    (synopsis "Tools for Graph Matching")
    (description
     "Versatile tools and data for graph matching analysis with various forms of prior
information that supports working with igraph objects, matrix objects, or lists
of either.")
    (license license:gpl2+)))

(define-public r-igraphinshiny
  (package
    (name "r-igraphinshiny")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igraphinshiny" version))
              (sha256
               (base32
                "1ww5s4jfihzcx4k35lbhzsf54z720xh7b2p5alzk843m6rx77986"))))
    (properties `((upstream-name . "igraphinshiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-igraph))
    (home-page "https://cran.r-project.org/package=igraphinshiny")
    (synopsis "Use 'shiny' to Demo 'igraph'")
    (description
     "Using shiny to demo igraph package makes learning graph theory easy and fun.")
    (license license:gpl2+)))

(define-public r-igraphdata
  (package
    (name "r-igraphdata")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igraphdata" version))
              (sha256
               (base32
                "19w5npa4b8c054v94xlr7nmhhg2fhq4m8jbds86skp8zvipl4rkl"))))
    (properties `((upstream-name . "igraphdata")))
    (build-system r-build-system)
    (home-page "http://igraph.org")
    (synopsis "Collection of Network Data Sets for the 'igraph' Package")
    (description
     "This package provides a small collection of various network data sets, to use
with the igraph package: the Enron email network, various food webs,
interactions in the immunoglobulin protein, the karate club network,
Koenigsberg's bridges, visuotactile brain areas of the macaque monkey, UK
faculty friendship network, domestic US flights network, etc.")
    (license (license:fsdg-compatible "CC BY-SA 4.0 + file LICENSE"))))

(define-public r-igorrr
  (package
    (name "r-igorrr")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IGoRRR" version))
              (sha256
               (base32
                "1p3dakv9xv835pkixa4smp3bhnrydrfskh8b92kkp8vb8sahjyzd"))))
    (properties `((upstream-name . "IGoRRR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-tibble
                             r-tables
                             r-stringr
                             r-sortable
                             r-skimr
                             r-shinywidgets
                             r-shinyfiles
                             r-shinydashboard
                             r-shiny
                             r-rio
                             r-rhandsontable
                             r-readxl
                             r-readods
                             r-purrr
                             r-mapsf
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-htmltools
                             r-hmisc
                             r-haven
                             r-glue
                             r-ggformula
                             r-fuzzyjoin
                             r-fst
                             r-feather
                             r-dplyr
                             r-clipr
                             r-arrow))
    (home-page "https://cran.r-project.org/package=IGoRRR")
    (synopsis "Shiny Interface for Simple Data Management")
    (description
     "Launches a shiny application generating code to view tables in several ways,
import/export tables, modify tables, make some basic graphics.  IGoR is a
graphic user interface designed to help beginners using simple functions around
table management and exploration.  Inspired by Rcmdr', IGoR is a code generator
that, with simple inputs under a Shiny application, provides R code mainly built
around the tidyverse or some packages in the direct line of the Mosaic project:
the rio and ggformula packages.  The generated code doesn't depend on IGoR and
can be manually modified by the user or copied elsewhere.")
    (license license:gpl2+)))

(define-public r-igor
  (package
    (name "r-igor")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igoR" version))
              (sha256
               (base32
                "1sqkxf6mp77hf15jg992krgpkw36mx9c2fqg4xzz88s47wwwg5wy"))))
    (properties `((upstream-name . "igoR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://dieghernan.github.io/igoR/")
    (synopsis "Intergovernmental Organizations Database")
    (description
     "Tools to extract information from the Intergovernmental Organizations ('IGO')
Database , version 3, provided by the Correlates of War Project
<https://correlatesofwar.org/>.  See also Pevehouse, J. C. et al. (2020).
Version 3 includes information from 1815 to 2014.")
    (license license:gpl3+)))

(define-public r-iglu
  (package
    (name "r-iglu")
    (version "3.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iglu" version))
              (sha256
               (base32
                "0ilfkmwmh3xshd67y45v9kvyd69xgf8wmxcw3hxi9zpsb0r4vmsb"))))
    (properties `((upstream-name . "iglu")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-tibble
                             r-shiny
                             r-scales
                             r-patchwork
                             r-magrittr
                             r-lubridate
                             r-hms
                             r-gtable
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-catools))
    (native-inputs (list r-knitr))
    (home-page "https://irinagain.github.io/iglu/")
    (synopsis "Interpreting Glucose Data from Continuous Glucose Monitors")
    (description
     "This package implements a wide range of metrics for measuring glucose control
and glucose variability based on continuous glucose monitoring data.  The list
of implemented metrics is summarized in Rodbard (2009)
<doi:10.1089/dia.2009.0015>.  Additional visualization tools include time-series
plots, lasagna plots and ambulatory glucose profile report.")
    (license license:gpl2)))

(define-public r-igcop
  (package
    (name "r-igcop")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igcop" version))
              (sha256
               (base32
                "0jl107mdwbldi319qflqjzy8vk02sr4nihky8jl5kcgr6x55qh6z"))))
    (properties `((upstream-name . "igcop")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-rlang r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=igcop")
    (synopsis "Computational Tools for the IG and IGL Copula Families")
    (description
     "Compute distributional quantities for an Integrated Gamma (IG) or Integrated
Gamma Limit (IGL) copula, such as a cdf and density.  Compute corresponding
conditional quantities such as the cdf and quantiles.  Generate data from an IG
or IGL copula.")
    (license license:expat)))

(define-public r-igcities
  (package
    (name "r-igcities")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IGCities" version))
              (sha256
               (base32
                "1564bzvi6vgg9q8s97mxjwklr83vkcv8f526savkhnjxdzi1zmy0"))))
    (properties `((upstream-name . "IGCities")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IGCities")
    (synopsis
     "Simulate Impact of Different Urban Policies Through a General Equilibrium Model")
    (description
     "Develops a General Equilibrium (GE) Model, which estimates key variables such as
wages, the number of residents and workers, the prices of the floor space, and
its distribution between commercial and residential use, as in Ahlfeldt et al.,
(2015) <https://onlinelibrary.wiley.com/doi/abs/10.3982/ECTA10876>.  By doing
so, the model allows understanding the economic influence of different urban
policies.")
    (license license:expat)))

(define-public r-igate
  (package
    (name "r-igate")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "igate" version))
              (sha256
               (base32
                "0b8dk976z0764cmxwcq6w2f3akv7iivivharinq029p90b600qza"))))
    (properties `((upstream-name . "igate")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-stringr
                             r-rmarkdown
                             r-knitr
                             r-kableextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stefan-stein/igate")
    (synopsis "Guided Analytics for Testing Manufacturing Parameters")
    (description
     "An implementation of the initial guided analytics for parameter testing and
controlband extraction framework.  Functions are available for continuous and
categorical target variables as well as for generating standardized reports of
the conducted analysis.  See <https://github.com/stefan-stein/igate> for more
information on the technology.")
    (license license:gpl3)))

(define-public r-igasso
  (package
    (name "r-igasso")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iGasso" version))
              (sha256
               (base32
                "17xxqncl5xcphdqclghcazygcgibf8ijdf4kkl3ga11xf70sahj2"))))
    (properties `((upstream-name . "iGasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-compquadform))
    (home-page "https://cran.r-project.org/package=iGasso")
    (synopsis "Statistical Tests and Utilities for Genetic Association")
    (description
     "This package provides a collection of statistical tests for genetic association
studies.")
    (license license:gpl2+)))

(define-public r-igascores
  (package
    (name "r-igascores")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IgAScores" version))
              (sha256
               (base32
                "0ckqjbn0xc894dc23gbaqzr6z6rl5h0k8gc5gjhbhwvrc2zlyfsp"))))
    (properties `((upstream-name . "IgAScores")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1101/2020.08.19.257501")
    (synopsis "Score Taxon-Level IgA Binding in IgA-Seq Experiments")
    (description
     "This package provides functions to calculate indices used to score
immunoglobulin A (IgA) binding of bacteria in IgA sequencing (IgA-Seq)
experiments.  This includes the original Kau and Palm indices and more recent
methods as described in Jackson et al. (2020) <doi:10.1101/2020.08.19.257501>.
Additionally the package contains a function to simulate IgA-Seq data and an
example experimental data set for method testing.")
    (license license:gpl3)))

(define-public r-ig-vancouver-2014-topcolour
  (package
    (name "r-ig-vancouver-2014-topcolour")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ig.vancouver.2014.topcolour" version))
              (sha256
               (base32
                "0yclvm6xppf4w1qf25nf82hg1pliah68z7h3f683svv0j62q748h"))))
    (properties `((upstream-name . "ig.vancouver.2014.topcolour")))
    (build-system r-build-system)
    (home-page
     "https://cran.r-project.org/package=ig.vancouver.2014.topcolour")
    (synopsis "Instagram 2014 Vancouver Top Colour Dataset")
    (description
     "This package provides a dataset of the top colours of photos from Instagram
taken in 2014 in the city of Vancouver, British Columbia, Canada.  It consists
of: top colour and counts data.  This data was obtained using the Instagram API.
Instagram is a web photo sharing service.  It can be found at:
<https://instagram.com>.  The Instagram API is documented at:
<https://instagram.com/developer/>.")
    (license license:cc0)))

(define-public r-ifs
  (package
    (name "r-ifs")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ifs" version))
              (sha256
               (base32
                "0w27z3fjv007717dsn72bm9hbpgzd6pfib6maf9ihnsjllb6k0v5"))))
    (properties `((upstream-name . "ifs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ifs")
    (synopsis "Iterated Function Systems")
    (description
     "Iterated Function Systems Estimator as in Iacus and La Torre (2005)
<doi:10.1155/JAMDS.2005.33>.")
    (license license:gpl2+)))

(define-public r-ifp
  (package
    (name "r-ifp")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IFP" version))
              (sha256
               (base32
                "066wz6bjqcvq22gjg2wcmglp798f87rsc8yhm13p0dic3arb5ph6"))))
    (properties `((upstream-name . "IFP")))
    (build-system r-build-system)
    (propagated-inputs (list r-haplo-stats r-coda))
    (home-page "https://www.r-project.org")
    (synopsis "Identifying Functional Polymorphisms")
    (description
     "This package provides a suite for identifying causal models using relative
concordances and identifying causal polymorphisms in case-control genetic
association data, especially with large controls re-sequenced data.")
    (license license:gpl2+)))

(define-public r-iforecast
  (package
    (name "r-iforecast")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iForecast" version))
              (sha256
               (base32
                "022cals7wsmb6dnc14nn5frnqx6p36xrrdhx3wss0gsahaj9r487"))))
    (properties `((upstream-name . "iForecast")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-caret))
    (home-page "https://cran.r-project.org/package=iForecast")
    (synopsis "Machine Learning Time Series Forecasting")
    (description
     "Compute both static onestep and iterative multistep time series forecasts of
machine learning models.")
    (license license:gpl2+)))

(define-public r-ifmcdm
  (package
    (name "r-ifmcdm")
    (version "0.1.17")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IFMCDM" version))
              (sha256
               (base32
                "04qiq5i2nw3l64yz0xwh7c8dcfh69xinb8l0zq0a8gi67vd1yka7"))))
    (properties `((upstream-name . "IFMCDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=IFMCDM")
    (synopsis "Intuitionistic Fuzzy Multi-Criteria Decision Making Methods")
    (description
     "Implementation of two multi-criteria decision making methods (MCDM):
Intuitionistic Fuzzy Synthetic Measure (IFSM) and Intuitionistic Fuzzy Technique
for Order of Preference by Similarity to Ideal Solution (IFTOPSIS) for
intuitionistic fuzzy data sets for multi-criteria decision making problems.
References describing the methods: JefmaÅski (2020)
<doi:10.1007/978-3-030-52348-0_4>; JefmaÅski, Roszkowska, Kusterka-JefmaÅska
(2021) <doi:10.3390/e23121636>.")
    (license license:gpl2+)))

(define-public r-ifctools
  (package
    (name "r-ifctools")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ifctools" version))
              (sha256
               (base32
                "0w7yx4yhszamaf7k3ixsarxr7n5shrhim8ih7bkrf1fhfqlsn1g0"))))
    (properties `((upstream-name . "ifctools")))
    (build-system r-build-system)
    (home-page "https://github.com/lbraglia/ifctools")
    (synopsis "Italian Fiscal Code ('Codice Fiscale') Utilities")
    (description
     "This package provides utility functions to deal with Italian fiscal code
('codice fiscale').")
    (license license:gpl3)))

(define-public r-ifcnvr
  (package
    (name "r-ifcnvr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ifCNVR" version))
              (sha256
               (base32
                "0qcmgd3vi413n4ipa6ybkr7a1kwxyr2al8cw4gfr8fp2av1sk4vc"))))
    (properties `((upstream-name . "ifCNVR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-isotree r-data-table))
    (home-page "https://github.com/SimCab-CHU/ifCNVR")
    (synopsis "Isolation-Forest Based 'CNV' Detection from 'NGS' Data")
    (description
     "Automatically detects Copy Number Variations (CNV) from Next Generation
Sequencing data using a machine learning algorithm, Isolation forest.  More
details about the method can be found in the paper by Cabello-Aguilar (2022)
<doi:10.1101/2022.01.03.474771>.")
    (license license:gpl3)))

(define-public r-ifc
  (package
    (name "r-ifc")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IFC" version))
              (sha256
               (base32
                "0j4lfppcf8ybs5y2a6bxdxfl1wx9nph7zdxpkr65kma0kdzrc7ih"))))
    (properties `((upstream-name . "IFC")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-visnetwork
                             r-tiff
                             r-rcpp
                             r-png
                             r-latticeextra
                             r-lattice
                             r-kernsmooth
                             r-jpeg
                             r-gridgraphics
                             r-gridextra
                             r-dt))
    (home-page "https://cran.r-project.org/package=IFC")
    (synopsis "Tools for Imaging Flow Cytometry")
    (description
     "This package contains several tools to treat imaging flow cytometry data from
ImageStreamÂ® and FlowSightÂ® cytometers ('AmnisÂ®', part of LuminexÂ®').
Provides an easy and simple way to read and write .fcs, .rif, .cif and .daf
files.  Information such as masks, features, regions and populations set within
these files can be retrieved for each single cell.  In addition, raw data such
as images stored can also be accessed.  Users, may hopefully increase their
productivity thanks to dedicated functions to extract, visualize, manipulate and
export IFC data.  Toy data example can be installed through the IFCdata package
of approximately 32 MB, which is available in a drat repository
<https://gitdemont.github.io/IFCdata/>.  See file COPYRIGHTS and file AUTHORS
for a list of copyright holders and authors.")
    (license license:gpl3)))

(define-public r-ifatools
  (package
    (name "r-ifatools")
    (version "0.23")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ifaTools" version))
              (sha256
               (base32
                "16xf3165gkmh3f9843m0n4wqdwwdfs6rjh64qcpz8srsm2z5y3l2"))))
    (properties `((upstream-name . "ifaTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rpf r-reshape2 r-openmx r-ggplot2))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/jpritikin/ifaTools")
    (synopsis "Toolkit for Item Factor Analysis with 'OpenMx'")
    (description
     "Tools, tutorials, and demos of Item Factor Analysis using OpenMx'.  This
software is described in Pritikin & Falk (2020) <doi:10.1177/0146621620929431>.")
    (license license:agpl3+)))

(define-public r-ietd
  (package
    (name "r-ietd")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IETD" version))
              (sha256
               (base32
                "0avhyw0zcb8vj0nqfy41yq5kcd8yf9rmaawdvfcy5rqwxmi1mw9l"))))
    (properties `((upstream-name . "IETD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-lubridate
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=IETD")
    (synopsis "Inter-Event Time Definition")
    (description
     "Computes characteristics of independent rainfall events (duration, total
rainfall depth, and intensity) extracted from a sub-daily rainfall time series
based on the inter-event time definition (IETD) method.  To have a reference
value of IETD, it also analyzes/computes IETD values through three methods:
autocorrelation analysis, the average annual number of events analysis, and
coefficient of variation analysis.  Ideal for analyzing the sensitivity of IETD
to characteristics of independent rainfall events.  Adams B, Papa F (2000)
<ISBN: 978-0-471-33217-6>.  Joo J et al. (2014) <doi:10.3390/w6010045>.
Restrepo-Posada P, Eagleson P (1982) <doi:10.1016/0022-1694(82)90136-6>.")
    (license license:gpl3)))

(define-public r-iemisctext
  (package
    (name "r-iemisctext")
    (version "0.9.99")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iemisctext" version))
              (sha256
               (base32
                "02rr7sjjbrvfxwjl87f2ki245a8cw5fvx7z2z4rl8ixxlyxj9p5v"))))
    (properties `((upstream-name . "iemisctext")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/iembry/iemisctext")
    (synopsis "Irucka Embry's Miscellaneous Text Collection")
    (description
     "The eclectic collection includes the following written pieces: \"The War Prayer\"
by Mark Twain, \"War Is A Racket\" by Major General Smedley Butler, \"The Mask of
Anarchy: Written on the Occasion of the Massacre at Manchester\" by Percy Bysshe
Shelley, \"Connect the D.O.T.S.\" by Obiora Embry, \"Untitled: Climate Strange\" by
Irucka Ajani Embry, and \"Untitled: Us versus Them or People Screwing over Other
People (as we all live on one Earth and there is no \"us versus them\" in the
actual Ultimate Reality}\" by Irucka Ajani Embry.")
    (license license:gpl3+)))

(define-public r-iemiscdata
  (package
    (name "r-iemiscdata")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iemiscdata" version))
              (sha256
               (base32
                "0a9x90kisgmrka0frk9myb1qdq3nl092n78wrif31b42arifa8h9"))))
    (properties `((upstream-name . "iemiscdata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/iembry/iemiscdata")
    (synopsis "Irucka Embry's Miscellaneous Data Collection")
    (description
     "Miscellaneous data sets [Engineering Economics, Environmental/ Water Resources
Engineering, US Presidential Elections].")
    (license license:gpl3+)))

(define-public r-iemisc
  (package
    (name "r-iemisc")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iemisc" version))
              (sha256
               (base32
                "1x7jnw6rrnq2wpv2xbk72fgkwwpxx7gzn113swnc6d6fhh16i32x"))))
    (properties `((upstream-name . "iemisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-usa-state-boundaries
                             r-units
                             r-stringi
                             r-sjmisc
                             r-signal
                             r-sf
                             r-round
                             r-roperators
                             r-rivr
                             r-ramify
                             r-qdapregex
                             r-pracma
                             r-mgsub
                             r-measurements
                             r-matlab2r
                             r-matlab
                             r-lubridate
                             r-iemiscdata
                             r-gsubfn
                             r-ggpubr
                             r-ggplot2
                             r-geosphere
                             r-fpcompare
                             r-foreach
                             r-data-table
                             r-chnosz
                             r-checkmate
                             r-berryfunctions
                             r-assertthat
                             r-anytime))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/iembry/iemisc")
    (synopsis "Irucka Embry's Miscellaneous Functions")
    (description
     "This package provides a collection of Irucka Embry's miscellaneous functions
(Engineering Economics, Civil & Environmental/Water Resources Engineering,
Construction Measurements, GNU Octave compatible functions, Python compatible
function, Trigonometric functions in degrees and function in radians, Geometry,
Statistics, Mortality Calculators, Quick Search, etc.).")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ieeeround
  (package
    (name "r-ieeeround")
    (version "0.2-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ieeeround" version))
              (sha256
               (base32
                "0xaxrlalyn8w0w4fva8fd86306nvw3iyz44r0hvay3gsrmgn3fjh"))))
    (properties `((upstream-name . "ieeeround")))
    (build-system r-build-system)
    (home-page "http://www.sci.unich.it/~amato")
    (synopsis "Functions to set and get the IEEE rounding mode")
    (description
     "This package provides a pair of functions for getting and setting the IEEE
rounding mode for floating point computations.")
    (license license:gpl2+)))

(define-public r-ie2miscdata
  (package
    (name "r-ie2miscdata")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ie2miscdata" version))
              (sha256
               (base32
                "19jjpgnrbrnwzh5g3whpimbv7m2fgkvx7p3z6vqa1kfxqy0bn8yh"))))
    (properties `((upstream-name . "ie2miscdata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/iembry/ie2miscdata")
    (synopsis "Irucka Embry's Miscellaneous USGS Data Collection")
    (description
     "This package provides a collection of Irucka Embry's miscellaneous USGS data
sets (USGS Parameter codes with fixed values, USGS global time zone codes, and
US Air Force Global Engineering Weather Data).  Irucka created these data sets
while a Cherokee Nation Technology Solutions (CNTS) United States Geological
Survey (USGS) Contractor and/or USGS employee.")
    (license license:cc0)))

(define-public r-ie2misc
  (package
    (name "r-ie2misc")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ie2misc" version))
              (sha256
               (base32
                "0cawlkhyfrwwcnqcp1lc1wc4a42ax4r9g9nzbl88sfjxy3fyirkx"))))
    (properties `((upstream-name . "ie2misc")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-readxl
                             r-reader
                             r-openxlsx
                             r-mgsub
                             r-lubridate
                             r-gwidgets2
                             r-data-table
                             r-checkmate
                             r-assertthat))
    (home-page "https://gitlab.com/iembry/ie2misc")
    (synopsis "Irucka Embry's Miscellaneous USGS Functions")
    (description
     "This package provides a collection of Irucka Embry's miscellaneous USGS
functions (processing .exp and .psf files, statistical error functions, \"+\"
dyadic operator for use with NA, creating ADAPS and QW spreadsheet files,
calculating saturated enthalpy).  Irucka created these functions while a
Cherokee Nation Technology Solutions (CNTS) United States Geological Survey
(USGS) Contractor and/or USGS employee.")
    (license license:cc0)))

(define-public r-idx2r
  (package
    (name "r-idx2r")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idx2r" version))
              (sha256
               (base32
                "14d3rasnf8mghwzpg6h4larybgy7drrv0jh71x28qwry49acsqyh"))))
    (properties `((upstream-name . "idx2r")))
    (build-system r-build-system)
    (home-page "https://github.com/edoffagne/idx2r")
    (synopsis
     "Convert Files to and from IDX Format to Vectors, Matrices and Arrays")
    (description
     "Convert files to and from IDX format to vectors, matrices and arrays.  IDX is a
very simple file format designed for storing vectors and multidimensional
matrices in binary format.  The format is described on the website from Yann
LeCun <http://yann.lecun.com/exdb/mnist/>.")
    (license license:expat)))

(define-public r-idsl-ufax
  (package
    (name "r-idsl-ufax")
    (version "1.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.UFAx" version))
              (sha256
               (base32
                "0zdz5s2fa7bgqmscxlf9ppvkpnxidy9fhkxn3qf94bc7y4h5xzh7"))))
    (properties `((upstream-name . "IDSL.UFAx")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-rcppalgos r-idsl-ufa r-idsl-ipa))
    (home-page "https://github.com/idslme/idsl.ufax")
    (synopsis "Exhaustive Chemical Enumeration for United Formula Annotation")
    (description
     "This package provides a pipeline to annotate a number of peaks from the IDSL.IPA
peaklists using an exhaustive chemical enumeration-based approach.  This package
can perform elemental composition calculations using the following 15 elements :
C, B, Br, Cl, K, S, Si, N, H, As, F, I, Na, O, and P.")
    (license license:expat)))

(define-public r-idsl-ufa
  (package
    (name "r-idsl-ufa")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.UFA" version))
              (sha256
               (base32
                "1s7y033nnk8qbpv7i6ksx7cxsra14aincrck87im0cj1mhwqbjp2"))))
    (properties `((upstream-name . "IDSL.UFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-idsl-ipa))
    (home-page "https://github.com/idslme/idsl.ufa")
    (synopsis "United Formula Annotation (UFA) for HRMS Data Processing")
    (description
     "This package provides a pipeline to annotate chromatography peaks from the
IDSL.IPA workflow <doi:10.1021/acs.jproteome.2c00120> with molecular formulas of
a prioritized chemical space using an isotopic profile matching approach.  The
IDSL.UFA workflow only requires mass spectrometry level 1 (MS1) data for formula
annotation.  The IDSL.UFA methods was described in
<doi:10.1021/acs.analchem.2c00563> .")
    (license license:expat)))

(define-public r-idsl-sufa
  (package
    (name "r-idsl-sufa")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.SUFA" version))
              (sha256
               (base32
                "0db79jcvks54x2fb58g9ynw05zz95bjiwcd77g37jzjwq70ds5ah"))))
    (properties `((upstream-name . "IDSL.SUFA")))
    (build-system r-build-system)
    (home-page "https://github.com/idslme/idsl.sufa")
    (synopsis "Simplified UFA")
    (description
     "This package provides a simplified version of the IDSL.UFA package to calculate
isotopic profiles and adduct formulas from molecular formulas with no dependency
on other R packages for online tools and educational mass spectrometry courses.
The IDSL.SUFA package also provides an ancillary module to process user-defined
adduct formulas.")
    (license license:expat)))

(define-public r-idsl-npa
  (package
    (name "r-idsl-npa")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.NPA" version))
              (sha256
               (base32
                "13nrbr4dgwcv6zs5d6qlcwig8kanb7bqbhjhiy98y3gj88pwr490"))))
    (properties `((upstream-name . "IDSL.NPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl
                             r-idsl-mxp
                             r-idsl-ipa
                             r-idsl-fsa
                             r-foreach
                             r-doparallel))
    (home-page "https://github.com/idslme/idsl.npa")
    (synopsis "Nominal Peak Analysis (NPA)")
    (description
     "This package provides a pipeline for processing nominal mass spectrometry data
to create .msp files for untargeted nominal mass data processing.")
    (license license:expat)))

(define-public r-idsl-mxp
  (package
    (name "r-idsl-mxp")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.MXP" version))
              (sha256
               (base32
                "0m6n94xzpwba5ag030zl5piharssmkj1fz4mz2lybs2935f1zfbp"))))
    (properties `((upstream-name . "IDSL.MXP")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-base64enc))
    (home-page "https://cran.r-project.org/package=IDSL.MXP")
    (synopsis
     "Parser for mzML, mzXML, and netCDF Files (Mass Spectrometry Data)")
    (description
     "This package provides a tiny parser to extract mass spectra data and metadata
table of mass spectrometry acquisition properties from mzML, mzXML and netCDF
files introduced in <doi:10.1021/acs.jproteome.2c00120>.")
    (license license:expat)))

(define-public r-idsl-ipa
  (package
    (name "r-idsl-ipa")
    (version "2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.IPA" version))
              (sha256
               (base32
                "1h7q9nf1gx63dsvpnw6qdkmhh1whg6jb26sp2sib6jbyhic83aha"))))
    (properties `((upstream-name . "IDSL.IPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-idsl-mxp))
    (home-page "https://github.com/idslme/idsl.ipa")
    (synopsis "Intrinsic Peak Analysis (IPA) for HRMS Data")
    (description
     "This package provides a multi-layered untargeted pipeline for high-throughput
LC/HRMS data processing to extract signals of organic small molecules.  The
package performs ion pairing, peak detection, peak table alignment, retention
time correction, aligned peak table gap filling, peak annotation and
visualization of extracted ion chromatograms (EICs) and total ion chromatograms
(TICs).  The IDSL.IPA package was introduced in
<doi:10.1021/acs.jproteome.2c00120> .")
    (license license:expat)))

(define-public r-idsl-fsa
  (package
    (name "r-idsl-fsa")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.FSA" version))
              (sha256
               (base32
                "1b6am1cpf01r80lzjq0clg4dbs2j62clv6h8fcb90c6vhivlgaw7"))))
    (properties `((upstream-name . "IDSL.FSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-foreach r-doparallel))
    (home-page "https://github.com/idslme/idsl.fsa")
    (synopsis "Fragmentation Spectra Analysis (FSA)")
    (description
     "The IDSL.FSA package was designed to annotate standard .msp (mass spectra
format) and .mgf (Mascot generic format) files using mass spectral entropy
similarity, dot product (cosine) similarity, and normalized Euclidean mass error
(NEME) followed by intelligent pre-filtering steps for rapid spectra searches.
IDSL.FSA also provides a number of modules to convert and manipulate .msp and
.mgf files.")
    (license license:expat)))

(define-public r-idsl-csa
  (package
    (name "r-idsl-csa")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSL.CSA" version))
              (sha256
               (base32
                "0mf8g6rdvdp6gr0xf9d8wld885jpqpazkqh82bafn7bgk1y30qgq"))))
    (properties `((upstream-name . "IDSL.CSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl
                             r-idsl-mxp
                             r-idsl-ipa
                             r-idsl-fsa
                             r-foreach
                             r-doparallel))
    (home-page "https://github.com/idslme/idsl.csa")
    (synopsis
     "Composite Spectra Analysis (CSA) for High-Resolution Mass Spectrometry Analyses")
    (description
     "This package provides a fragmentation spectra detection pipeline for
high-throughput LC/HRMS data processing using peaklists generated by the
IDSL.IPA package.  The IDSL.CSA package can deconvolute fragmentation spectra
from Composite Spectra Analysis (CSA), Data Dependent Acquisition (DDA)
analysis, and various Data-Independent Acquisition (DIA) methods such as MS^E,
All-Ion Fragmentation (AIF) and SWATH analysis.")
    (license license:expat)))

(define-public r-idsa
  (package
    (name "r-idsa")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDSA" version))
              (sha256
               (base32
                "0ld2359ksnw9jrjicnqikh5r321mfy2i7vzlhh9phm60k0qf5j98"))))
    (properties `((upstream-name . "IDSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-kableextra r-ggplot2 r-gd))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IDSA")
    (synopsis "An Interactive Detector for Spatial Associations")
    (description
     "Method of interactive detector for spatial associations (IDSA) as described in
Yongze Song (2021) <doi:10.1080/13658816.2021.1882680>.  IDSA is used to
quantify the power of interactive determinant (PID) between a spatial response
variable and explanatory variables.  IDSA is developed based on methods of
spatial heterogeneity.")
    (license license:gpl2)))

(define-public r-idpsurvival
  (package
    (name "r-idpsurvival")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDPSurvival" version))
              (sha256
               (base32
                "0hifs8vw3rxlb5vlxs1433pcv2dh7p0mxpgb2n03d98f20vkdwfw"))))
    (properties `((upstream-name . "IDPSurvival")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rsolnp r-gtools))
    (home-page "http://ipg.idsia.ch/software/")
    (synopsis "Imprecise Dirichlet Process for Survival Analysis")
    (description
     "This package provides functions to perform robust nonparametric survival
analysis with right censored data using a prior near-ignorant Dirichlet Process.
 Mangili, F., Benavoli, A., de Campos, C.P., Zaffalon, M. (2015)
<doi:10.1002/bimj.201500062>.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-idove
  (package
    (name "r-idove")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iDOVE" version))
              (sha256
               (base32
                "1ks83ha183mmda9pqhvaa9636gwjlkyr6hrdnhfjv75fks54476f"))))
    (properties `((upstream-name . "iDOVE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iDOVE")
    (synopsis "Durability of Vaccine Efficacy Against SARS-CoV-2 Infection")
    (description
     "This package implements a nonparametric maximum likelihood method for assessing
potentially time-varying vaccine efficacy (VE) against SARS-CoV-2 infection
under staggered enrollment and time-varying community transmission, allowing
crossover of placebo volunteers to the vaccine arm.  Lin, D. Y., Gu, Y., Zeng,
D., Janes, H. E., and Gilbert, P. B. (2021) <doi:10.1093/cid/ciab630>.")
    (license license:gpl2)))

(define-public r-idos
  (package
    (name "r-idos")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iDOS" version))
              (sha256
               (base32
                "1jj98ikzvfp6qbnh2j6msi0m89sbmjjafgry43rq7qmczzs81hl8"))))
    (properties `((upstream-name . "iDOS")))
    (build-system r-build-system)
    (propagated-inputs (list r-venndiagram))
    (home-page "https://cran.r-project.org/package=iDOS")
    (synopsis "Integrated Discovery of Oncogenic Signatures")
    (description
     "Integrate molecular profiles to discover candidate oncogenic drivers.")
    (license license:gpl2)))

(define-public r-idopnetwork
  (package
    (name "r-idopnetwork")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idopNetwork" version))
              (sha256
               (base32
                "0gp9d5p7nqnsfy2n3lxhinmldriwyzq55ilmi5gq3vavf1h0iw24"))))
    (properties `((upstream-name . "idopNetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-patchwork
                             r-orthopolynom
                             r-mvtnorm
                             r-igraph
                             r-glmnet
                             r-ggplot2
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cxzdsa2332/idopNetwork")
    (synopsis "Network Tool to Dissect Spatial Community Ecology")
    (description
     "Most existing approaches for network reconstruction can only infer an overall
network and, also, fail to capture a complete set of network properties.  To
address these issues, a new model has been developed, which converts static data
into their dynamic form.  idopNetwork is an R interface to this model, it can
inferring informative, dynamic, omnidirectional and personalized networks.  For
more information on functional clustering part, see Kim et al. (2008)
<doi:10.1534/genetics.108.093690>, Wang et al. (2011) <doi:10.1093/bib/bbr032>.
For more information on our model, see Chen et al. (2019)
<doi:10.1038/s41540-019-0116-1>, and Cao et al. (2022)
<doi:10.1080/19490976.2022.2106103>.")
    (license license:gpl3+)))

(define-public r-idmodelr
  (package
    (name "r-idmodelr")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idmodelr" version))
              (sha256
               (base32
                "11h7l1iv21jxmjwmg0klwiadvwpn1bj055y4a7fqfgsbbqraxlsj"))))
    (properties `((upstream-name . "idmodelr")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-future
                             r-furrr
                             r-dplyr
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://samabbott.co.uk/idmodelr/")
    (synopsis "Infectious Disease Model Library and Utilities")
    (description
     "Explore a range of infectious disease models in a consistent framework.  The
primary aim of idmodelr is to provide a library of infectious disease models for
researchers, students, and other interested individuals.  These models can be
used to understand the underlying dynamics and as a reference point when
developing models for research.  idmodelr also provides a range of utilities.
These include: plotting functionality; a simulation wrapper; scenario analysis
tooling; an interactive dashboard; tools for handling mult-dimensional models;
and both model and parameter look up tables.  Unlike other modelling packages
such as pomp (<https://kingaa.github.io/pomp/>), libbi (<http://libbi.org>) and
EpiModel (<http://www.epimodel.org>), idmodelr serves primarily as an
educational resource.  It is most comparable to epirecipes
(<http://epirecip.es/epicookbook/chapters/simple>) but provides a more
consistent framework, an R based workflow, and additional utility tooling.
After users have explored model dynamics with idmodelr they may then implement
their model using one of these packages in order to utilise the model fitting
tools they provide.  For newer modellers, this package reduces the barrier to
entry by containing multiple infectious disease models, providing a consistent
framework for simulation and visualisation, and signposting towards other, more
research focussed, resources.")
    (license license:gpl3)))

(define-public r-idmining
  (package
    (name "r-idmining")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDmining" version))
              (sha256
               (base32
                "1yv8lclkb1ws2n4yd3l561lqhp25vlw0f6d073yg04pidr2dpg2a"))))
    (properties `((upstream-name . "IDmining")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-doparallel r-data-table))
    (home-page "https://www.sites.google.com/site/jeangolayresearch/")
    (synopsis "Intrinsic Dimension for Data Mining")
    (description
     "This package contains techniques for mining large and high-dimensional data sets
by using the concept of Intrinsic Dimension (ID).  Here the ID is not
necessarily an integer.  It is extended to fractal dimensions.  And the Morisita
estimator is used for the ID estimation, but other tools are included as well.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-idmeasurer
  (package
    (name "r-idmeasurer")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDmeasurer" version))
              (sha256
               (base32
                "0n7rziaaxm9dqixmw6rxgq9dwnwdl3dsdnpd9s59k5skdlaxnl5m"))))
    (properties `((upstream-name . "IDmeasurer")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lme4 r-infotheo))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IDmeasurer")
    (synopsis "Assessment of Individual Identity in Animal Signals")
    (description
     "This package provides tools for assessment and quantification of individual
identity information in animal signals.  This package accompanies a research
article by Linhart et al. (2019) <doi:10.1101/546143>: \"Measuring individual
identity information in animal signals: Overview and performance of available
identity metrics\".")
    (license license:cc0)))

(define-public r-idm
  (package
    (name "r-idm")
    (version "1.8.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idm" version))
              (sha256
               (base32
                "04ac2yq983vk9v3iyd1p2sqxy8ppdr4p7bcvfbg2d9fanj4b1fa7"))))
    (properties `((upstream-name . "idm")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggrepel r-ggplot2 r-corpcor r-ca r-animation))
    (home-page "https://cran.r-project.org/package=idm")
    (synopsis "Incremental Decomposition Methods")
    (description
     "Incremental Multiple Correspondence Analysis and Principal Component Analysis.")
    (license license:gpl2+)))

(define-public r-idiogramfish
  (package
    (name "r-idiogramfish")
    (version "2.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idiogramFISH" version))
              (sha256
               (base32
                "09ay0dggxcrl2wi2cm4ym1ixr9scxajpfk0ndiz889rz3wdkwfdx"))))
    (properties `((upstream-name . "idiogramFISH")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rlang
                             r-plyr
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-rvcheck
                         r-rmdformats
                         r-rmarkdown
                         r-rentrez
                         r-rcurl
                         r-knitr
                         r-kableextra
                         r-badger
                         esbuild))
    (home-page "https://ferroao.gitlab.io/manualidiogramfish/")
    (synopsis "Shiny App. Idiograms with Marks and Karyotype Indices")
    (description
     "Plot idiograms of karyotypes, plasmids, circular chr.  having a set of
data.frames for chromosome data and optionally mark data.  Two styles of
chromosomes can be used: without or with visible chromatids.  Supports
micrometers, cM and Mb or any unit.  Three styles of centromeres are available:
triangle, rounded and inProtein; and six styles of marks are available: square
(squareLeft), dots, cM (cMLeft), cenStyle, upArrow (downArrow), exProtein
(inProtein); its legend (label) can be drawn inline or to the right of
karyotypes.  Idiograms can also be plotted in concentric circles.  It is
possible to calculate chromosome indices by Levan et al. (1964)
<https:onlinelibrary.wiley.com/doi/abs/10.1111/j.1601-5223.1964.tb01953.x>,
karyotype indices of Watanabe et al. (1999) <doi:10.1007/PL00013869> and
Romero-Zarco (1986) <doi:10.2307/1221906> and classify chromosomes by morphology
Guerra (1986) and Levan et al. (1964).")
    (license license:gpl2+)))

(define-public r-idingo
  (package
    (name "r-idingo")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iDINGO" version))
              (sha256
               (base32
                "00x9q73y2a1bxnbqv18sjp7nrbj1bk56rzhmllpnllwy8k9dw31j"))))
    (properties `((upstream-name . "iDINGO")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-scales
                             r-mvtnorm
                             r-igraph
                             r-glasso
                             r-ggmridge))
    (home-page "https://cran.r-project.org/package=iDINGO")
    (synopsis "Integrative Differential Network Analysis in Genomics")
    (description
     "Fits covariate dependent partial correlation matrices for integrative models to
identify differential networks between two groups.  The methods are described in
Class et.  al., (2018) <doi:10.1093/bioinformatics/btx750> and Ha et.  al.,
(2015) <doi:10.1093/bioinformatics/btv406>.")
    (license license:gpl2)))

(define-public r-idf
  (package
    (name "r-idf")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDF" version))
              (sha256
               (base32
                "19mg7a83badb3wqnrmx5ric0nlfdb33wcxfmq9457s8019ghvpvv"))))
    (properties `((upstream-name . "IDF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpproll r-pbapply r-ismev r-fastmatch r-evd))
    (home-page "https://gitlab.met.fu-berlin.de/Rpackages/idf_package")
    (synopsis "Estimation and Plotting of IDF Curves")
    (description
     "Intensity-duration-frequency (IDF) curves are a widely used analysis-tool in
hydrology to assess extreme values of precipitation [e.g. Mailhot et al., 2007,
<doi:10.1016/j.jhydrol.2007.09.019>].  The package IDF provides functions to
estimate IDF parameters for given precipitation time series on the basis of a
duration-dependent generalized extreme value distribution [Koutsoyiannis et al.,
1998, <doi:10.1016/S0022-1694(98)00097-3>].")
    (license license:gpl2+)))

(define-public r-idetect
  (package
    (name "r-idetect")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDetect" version))
              (sha256
               (base32
                "1q1jwgildhx6sp883ni7vcsa3gj997855v5ky41dyf34kv7hvdl1"))))
    (properties `((upstream-name . "IDetect")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IDetect")
    (synopsis "Isolate-Detect Methodology for Multiple Change-Point Detection")
    (description
     "This package provides efficient implementation of the Isolate-Detect methodology
for the consistent estimation of the number and location of multiple
change-points in one-dimensional data sequences from the \"deterministic + noise\"
model.  For details on the Isolate-Detect methodology, please see Anastasiou and
Fryzlewicz (2018)
<https://docs.wixstatic.com/ugd/24cdcc_6a0866c574654163b8255e272bc0001b.pdf>.
Currently implemented scenarios are: piecewise-constant signal with Gaussian
noise, piecewise-constant signal with heavy-tailed noise, continuous
piecewise-linear signal with Gaussian noise, continuous piecewise-linear signal
with heavy-tailed noise.")
    (license license:gpl3)))

(define-public r-ider
  (package
    (name "r-ider")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ider" version))
              (sha256
               (base32
                "0cy1q9nmgxlrpysw6j04i0dzd14zwla8zv8dvxs0zxyrlqxwv2yh"))))
    (properties `((upstream-name . "ider")))
    (build-system r-build-system)
    (propagated-inputs (list r-glm2 r-fnn))
    (home-page "https://cran.r-project.org/package=ider")
    (synopsis "Various Methods for Estimating Intrinsic Dimension")
    (description
     "An implementation of various methods for estimating intrinsic dimension of
vector-valued dataset or distance matrix.  Most methods implemented are based on
different notion of fractal dimension such as the capacity dimension, the
box-counting dimension, and the information dimension.")
    (license license:gpl2)))

(define-public r-idendr0
  (package
    (name "r-idendr0")
    (version "1.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idendr0" version))
              (sha256
               (base32
                "11c12d166bp2i498d8y6ipg5jhz1xsdsrmnhjqnrqqzp9avvrsjp"))))
    (properties `((upstream-name . "idendr0")))
    (build-system r-build-system)
    (propagated-inputs (list r-tkrplot))
    (home-page "http://github.com/tsieger/idendr0")
    (synopsis "Interactive Dendrograms")
    (description
     "Interactive dendrogram that enables the user to select and color clusters, to
zoom and pan the dendrogram, and to visualize the clustered data not only in a
built-in heat map, but also in GGobi interactive plots and user-supplied plots.
This is a backport of Qt-based idendro (<https://github.com/tsieger/idendro>) to
base R graphics and Tcl/Tk GUI.")
    (license license:gpl2)))

(define-public r-idem
  (package
    (name "r-idem")
    (version "5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idem" version))
              (sha256
               (base32
                "1i5h0hg76rrxharlfv33kcbwmvkfyfk92wim93dvpkflnbwsmzfl"))))
    (properties `((upstream-name . "idem")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-stanheaders
                             r-sqldf
                             r-rstan
                             r-rcppeigen
                             r-rcpp
                             r-mice
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/olssol/idem/")
    (synopsis
     "Inference in Randomized Controlled Trials with Death and Missingness")
    (description
     "In randomized studies involving severely ill patients, functional outcomes are
often unobserved due to missed clinic visits, premature withdrawal or death.  It
is well known that if these unobserved functional outcomes are not handled
properly, biased treatment comparisons can be produced.  In this package, we
implement a procedure for comparing treatments that is based on the composite
endpoint of both the functional outcome and survival.  The procedure was
proposed in Wang et al. (2016) <DOI:10.1111/biom.12594> and Wang et al. (2020)
<DOI:10.18637/jss.v093.i12>.  It considers missing data imputation with
different sensitivity analysis strategies to handle the unobserved functional
outcomes not due to death.")
    (license license:gpl3+)))

(define-public r-idefix
  (package
    (name "r-idefix")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idefix" version))
              (sha256
               (base32
                "0jqjrg0qfzij5bx8r60wpjghsxnszdxgp58ynj10n7q9hc4fhsys"))))
    (properties `((upstream-name . "idefix")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-shiny
                             r-scales
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-dplyr
                             r-dfidx))
    (home-page "https://github.com/traets/idefix")
    (synopsis "Efficient Designs for Discrete Choice Experiments")
    (description
     "Generates efficient designs for discrete choice experiments based on the
multinomial logit model, and individually adapted designs for the mixed
multinomial logit model.  The generated designs can be presented on screen and
choice data can be gathered using a shiny application.  Traets F, Sanchez G, and
Vandebroek M (2020) <doi:10.18637/jss.v096.i03>.")
    (license license:gpl3)))

(define-public r-ideatools
  (package
    (name "r-ideatools")
    (version "3.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDEATools" version))
              (sha256
               (base32
                "1xg7483srnvrzhm3s4amaac1fx3x0jw4x0nnlc96jnvhpp8l7l1z"))))
    (properties `((upstream-name . "IDEATools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-readxl
                             r-pdftools
                             r-openxlsx
                             r-jsonlite
                             r-ggtext
                             r-ggpubr
                             r-ggplot2
                             r-ggimage
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://davidcarayon.github.io/IDEATools/index.html")
    (synopsis
     "Individual and Group Farm Sustainability Assessments using the IDEA4 Method")
    (description
     "Collection of tools to automate the processing of data collected though the
IDEA4 method (see Zahm et al. (2018) <doi:10.1051/cagri/2019004> ).  Starting
from the original data collecting files this packages provides functions to
compute IDEA indicators, draw modern and aesthetic plots, and produce a wide
range of reporting materials.")
    (license license:gpl3)))

(define-public r-ideamdb
  (package
    (name "r-ideamdb")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ideamdb" version))
              (sha256
               (base32
                "1f4dcv6c8ny7pik547f4840vhll26mzfcijnfsiqx31xhn0gsizd"))))
    (properties `((upstream-name . "ideamdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-stringr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ideamdb")
    (synopsis "Easy Manipulation of IDEAM's Climatological Data")
    (description
     "Time series plain text conversion and data visualization.  It allows to
transform IDEAM (Instituto de Hidrologia, Meteorologia y Estudios Ambientales)
daily series from plain text to CSV files or data frames in R. Additionally, it
is possible to obtain exploratory graphs from times series.  IDEAMâs data is
freely delivered under formal request through the official web page
<http://www.ideam.gov.co/solicitud-de-informacion>.")
    (license license:gpl2+)))

(define-public r-ideafilter
  (package
    (name "r-ideafilter")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDEAFilter" version))
              (sha256
               (base32
                "1nwsq5jy374f2sdnrxw79kq3wklydrygm4qsd6v6npdqw55jli2l"))))
    (properties `((upstream-name . "IDEAFilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinytime
                             r-shiny
                             r-rcolorbrewer
                             r-purrr
                             r-pillar
                             r-ggplot2
                             r-crayon))
    (native-inputs (list esbuild))
    (home-page "https://biogen-inc.github.io/IDEAFilter/")
    (synopsis "Agnostic, Idiomatic Data Filter Module for Shiny")
    (description
     "When added to an existing shiny app, users may subset any developer-chosen R
data.frame on the fly.  That is, users are empowered to slice & dice data by
applying multiple (order specific) filters using the AND (&) operator between
each, and getting real-time updates on the number of rows effected/available
along the way.  Thus, any downstream processes that leverage this data source
(like tables, plots, or statistical procedures) will re-render after new filters
are applied.  The shiny moduleâs user interface has a minimalist aesthetic so
that the focus can be on the data & other visuals.  In addition to returning a
reactive (filtered) data.frame, IDEAFilter as also returns dplyr filter
statements used to actually slice the data.")
    (license license:agpl3)))

(define-public r-ide
  (package
    (name "r-ide")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDE" version))
              (sha256
               (base32
                "1pbfxhcbnmn0mh7a96ff58p4dpkb0di7l0v40nqyjk4jbkpd8rfl"))))
    (properties `((upstream-name . "IDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sparseinv
                             r-spacetime
                             r-sp
                             r-matrix
                             r-ggplot2
                             r-frk
                             r-dplyr
                             r-deoptim))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=IDE")
    (synopsis "Integro-Difference Equation Spatio-Temporal Models")
    (description
     "The Integro-Difference Equation model is a linear, dynamical model used to model
phenomena that evolve in space and in time; see, for example, Cressie and Wikle
(2011, ISBN:978-0-471-69274-4) or Dewar et al. (2009)
<doi:10.1109/TSP.2008.2005091>.  At the heart of the model is the kernel, which
dictates how the process evolves from one time point to the next.  Both process
and parameter reduction are used to facilitate computation, and
spatially-varying kernels are allowed.  Data used to estimate the parameters are
assumed to be readings of the process corrupted by Gaussian measurement error.
Parameters are fitted by maximum likelihood, and estimation is carried out using
an evolution algorithm.")
    (license license:gpl2+)))

(define-public r-idconverter
  (package
    (name "r-idconverter")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDConverter" version))
              (sha256
               (base32
                "047l03b53cq0ijsmcl3lw4g45ligc1ajrrv7nh02mmaj3wng7dji"))))
    (properties `((upstream-name . "IDConverter")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-httr r-data-table))
    (home-page "https://github.com/ShixiangWang/IDConverter")
    (synopsis "Convert Identifiers in Biological Databases")
    (description
     "Identifiers in biological databases connect different levels of metadata,
phenotype data or genotype data.  This tool is designed to easily convert
identifiers within or between different biological databases (Wang, Shixiang, et
al. (2021) <DOI:10.1371/journal.pgen.1009557>).")
    (license license:expat)))

(define-public r-idcnrba
  (package
    (name "r-idcnrba")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idcnrba" version))
              (sha256
               (base32
                "0ys753091akr435zfg9xlzqvd04rig03gbni8h0kasi23r10ajqa"))))
    (properties `((upstream-name . "idcnrba")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survey
                             r-srvyr
                             r-shinyjs
                             r-shiny
                             r-rstudioapi
                             r-rmarkdown
                             r-readr
                             r-openxlsx
                             r-nrba
                             r-miniui
                             r-markdown
                             r-htmlwidgets
                             r-haven
                             r-flexdashboard
                             r-dt
                             r-dplyr
                             r-base64enc))
    (home-page "https://cran.r-project.org/package=idcnrba")
    (synopsis
     "Interactive Application for Analyzing Representativeness and Nonresponse Bias")
    (description
     "This package provides access to the Idea Data Center (IDC) application for
conducting nonresponse bias analysis (NRBA).  The IDC NRBA app is an
interactive, browser-based Shiny application that can be used to analyze survey
data with respect to response rates, representativeness, and nonresponse bias.
This app provides a user-friendly interface to statistical methods implemented
by the nrba package.  Krenzke, Van de Kerckhove, and Mohadjer (2005)
<http://www.asasrms.org/Proceedings/y2005/files/JSM2005-000572.pdf> and Lohr and
Riddles (2016)
<https://www150.statcan.gc.ca/n1/en/pub/12-001-x/2016002/article/14677-eng.pdf?st=q7PyNsGR>
provide an overview of the statistical methods implemented in the application.")
    (license license:gpl3+)))

(define-public r-idcard
  (package
    (name "r-idcard")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IDCard" version))
              (sha256
               (base32
                "06b5zqmgh4clni3mv6ab2a52r4z34isbz0hd1i61793gps9fkc0y"))))
    (properties `((upstream-name . "IDCard")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=IDCard")
    (synopsis "Update Chinese ID Card Number to Eighteen Digits")
    (description
     "The digits of the old version (before 2000 year) of Chinese ID Card Number is
15, this package aims to update to the current version of 18 digits.  Besides,
this package can help check whether the given ID is right or not.")
    (license license:gpl3)))

(define-public r-idbr
  (package
    (name "r-idbr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idbr" version))
              (sha256
               (base32
                "0silsd3ydrrg924klga8dascxjfmi2czw7sz3ap2j7gkgvxcfcpv"))))
    (properties `((upstream-name . "idbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-rnaturalearthdata
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-countrycode))
    (home-page "https://cran.r-project.org/package=idbr")
    (synopsis
     "R Interface to the US Census Bureau International Data Base API")
    (description
     "Use R to make requests to the US Census Bureau's International Data Base API.
Results are returned as R data frames.  For more information about the IDB API,
visit
<https://www.census.gov/data/developers/data-sets/international-database.html>.")
    (license license:expat)))

(define-public r-idarps
  (package
    (name "r-idarps")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idarps" version))
              (sha256
               (base32
                "15ckavi7j4afwyq3m0z2kpq2j93wxmjfnhn7lh6r4ymwmj7bbsvy"))))
    (properties `((upstream-name . "idarps")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=idarps")
    (synopsis
     "Datasets and Functions for the Class \"Modelling and Data Analysis for Pharmaceutical Sciences\"")
    (description
     "This package provides datasets and functions for the class \"Modelling and Data
Analysis for Pharmaceutical Sciences\".  The datasets can be used to present
various methods of data analysis and statistical modeling.  Functions for data
visualization are also implemented.")
    (license license:agpl3)))

(define-public r-idar
  (package
    (name "r-idar")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "idar" version))
              (sha256
               (base32
                "0433kyhwzaicb10jmb6b6b6lbfhd5g2zsdrg6v02lndb2j7dlk5c"))))
    (properties `((upstream-name . "idar")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatstat
                             r-picante
                             r-fd
                             r-ape))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=idar")
    (synopsis "Individual Diversity-Area Relationships")
    (description
     "Computes and tests individual (species, phylogenetic and functional)
diversity-area relationships, i.e., how species-, phylogenetic- and
functional-diversity varies with spatial scale around the individuals of some
species in a community.  See applications of these methods in Wiegand et al.
(2007) <doi:10.1073/pnas.0705621104> or Chacon-Labella et al. (2016)
<doi:10.1007/s00442-016-3547-z>.")
    (license license:gpl2+)))

(define-public r-icvectorfields
  (package
    (name "r-icvectorfields")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICvectorfields" version))
              (sha256
               (base32
                "0h10ijh00ahk2aawg090sspdyxzln8cwzvrfqyi45p19sbx93503"))))
    (properties `((upstream-name . "ICvectorfields")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-rcpp r-fftwtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ICvectorfields")
    (synopsis "Vector Fields from Spatial Time Series of Population Abundance")
    (description
     "This package provides functions for converting time series of spatial abundance
or density data in raster format to vector fields of population movement using
the digital image correlation technique.  More specifically, the functions in
the package compute cross-covariance using discrete fast Fourier transforms for
computational efficiency.  Vectors in vector fields point in the direction of
highest two dimensional cross-covariance.  The package has a novel
implementation of the digital image correlation algorithm that is designed to
detect persistent directional movement when image time series extend beyond a
sequence of two raster images.")
    (license license:gpl3+)))

(define-public r-icv
  (package
    (name "r-icv")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICV" version))
              (sha256
               (base32
                "1na87i39jy5d8ibldqcqz3a072ihkgcl0k629sxch9hk6v6j5lly"))))
    (properties `((upstream-name . "ICV")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ICV")
    (synopsis "Indirect Cross-Validation (ICV) for Kernel Density Estimation")
    (description
     "This package provides functions for computing the global and local Gaussian
density estimates based on the ICV bandwidth.  See the article of Savchuk, O.Y.,
Hart, J.D., Sheather, S.J. (2010).  Indirect cross-validation for density
estimation.  Journal of the American Statistical Association, 105(489), 415-423
<doi:10.1198/jasa.2010.tm08532>.")
    (license license:gpl2)))

(define-public r-ictest
  (package
    (name "r-ictest")
    (version "0.3-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICtest" version))
              (sha256
               (base32
                "13i7zsjy4dqx48vzn9294k7xb93m6r2ab3d546rymfqdzdjszpnp"))))
    (properties `((upstream-name . "ICtest")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-survey
                             r-rcpproll
                             r-rcpparmadillo
                             r-rcpp
                             r-png
                             r-mvtnorm
                             r-jade
                             r-icsnp
                             r-ics
                             r-ggplot2
                             r-ggally))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ICtest")
    (synopsis
     "Estimating and Testing the Number of Interesting Components in Linear Dimension Reduction")
    (description
     "For different linear dimension reduction methods like principal components
analysis (PCA), independent components analysis (ICA) and supervised linear
dimension reduction tests and estimates for the number of interesting components
(ICs) are provided.")
    (license license:gpl2+)))

(define-public r-icsw
  (package
    (name "r-icsw")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icsw" version))
              (sha256
               (base32
                "0g7bcqs0rpbs1p202i9wjbl8hhy3r196zambm044xyf7kvsbzzf6"))))
    (properties `((upstream-name . "icsw")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=icsw")
    (synopsis "Inverse Compliance Score Weighting")
    (description
     "This package provides the necessary tools to estimate average treatment effects
with an instrumental variable by re-weighting observations using a model of
compliance.")
    (license license:expat)))

(define-public r-icsurv
  (package
    (name "r-icsurv")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICsurv" version))
              (sha256
               (base32
                "1wgv9bjcx8y9qvkx3nfax86clhfmwr7bxzq8i12aqmp1clxpgx6a"))))
    (properties `((upstream-name . "ICsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixcalc r-mass))
    (home-page "https://cran.r-project.org/package=ICsurv")
    (synopsis "Semiparametric Regression Analysis of Interval-Censored Data")
    (description
     "Currently using the proportional hazards (PH) model.  More methods under other
semiparametric regression models will be included in later versions.")
    (license license:gpl2+)))

(define-public r-icssmoothing
  (package
    (name "r-icssmoothing")
    (version "1.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSsmoothing" version))
              (sha256
               (base32
                "141ly37ccj1ky9lr37baa3vkbbkr73z8nxfkyavjrzhzw8d5r2rr"))))
    (properties `((upstream-name . "ICSsmoothing")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ICSsmoothing")
    (synopsis "Data Smoothing by Interpolating Cubic Splines")
    (description
     "We construct the explicit form of clamped cubic interpolating spline (both
uniform - knots are equidistant and non-uniform - knots are arbitrary).  Using
this form, we propose a linear regression model suitable for real data
smoothing.")
    (license license:gpl2)))

(define-public r-icsshiny
  (package
    (name "r-icsshiny")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSShiny" version))
              (sha256
               (base32
                "0a13vps0mkv5qs6qnl7ar0mdbkbd7i1c6kgwahmkb3id3n9bw0cl"))))
    (properties `((upstream-name . "ICSShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-simsalapar
                             r-shiny
                             r-rrcov
                             r-icsoutlier
                             r-icsnp
                             r-ics
                             r-dt))
    (home-page "https://cran.r-project.org/package=ICSShiny")
    (synopsis "ICS via a Shiny Application")
    (description
     "This package performs Invariant Coordinate Selection (ICS) (Tyler, Critchley,
Duembgen and Oja (2009) <doi:10.1111/j.1467-9868.2009.00706.x>) and especially
ICS for multivariate outlier detection with application to quality control
(Archimbaud, Nordhausen, Ruiz-Gazen (2016) <arXiv:1612.06118>) using a shiny
app.")
    (license license:gpl2+)))

(define-public r-icss
  (package
    (name "r-icss")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSS" version))
              (sha256
               (base32
                "0kmsw8347ka5n0qncx7hqgs153ihkmxbl0wc5kqlb2l42sl6rp8x"))))
    (properties `((upstream-name . "ICSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstack))
    (home-page "https://cran.r-project.org/package=ICSS")
    (synopsis "ICSS Algorithm by Inclan/Tiao (1994)")
    (description
     "The Iterative Cumulative Sum of Squares (ICSS) algorithm by Inclan/Tiao (1994)
<https://www.jstor.org/stable/2290916> detects multiple change points, i.e.
structural break points, in the variance of a sequence of independent
observations.  For series of moderate size (i.e.  200 observations and beyond),
the ICSS algorithm offers results comparable to those obtained by a Bayesian
approach or by likelihood ration tests, without the heavy computational burden
required by these approaches.")
    (license license:gpl2)))

(define-public r-icsoutlier
  (package
    (name "r-icsoutlier")
    (version "0.3-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSOutlier" version))
              (sha256
               (base32
                "1vj1y4zw8pkghkg4qnmx0yk1yw4zzl9075n5czrna9ckk2p29fmh"))))
    (properties `((upstream-name . "ICSOutlier")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-moments r-ics))
    (home-page "https://cran.r-project.org/package=ICSOutlier")
    (synopsis "Outlier Detection Using Invariant Coordinate Selection")
    (description
     "Multivariate outlier detection is performed using invariant coordinates where
the package offers different methods to choose the appropriate components.")
    (license license:gpl2+)))

(define-public r-icsnp
  (package
    (name "r-icsnp")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSNP" version))
              (sha256
               (base32
                "1zf0k1kwdmjjqsbiiy3r2l47vjsrg09fj65p6zfld3j4gjbp17fd"))))
    (properties `((upstream-name . "ICSNP")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-ics))
    (home-page "https://cran.r-project.org/package=ICSNP")
    (synopsis "Tools for Multivariate Nonparametrics")
    (description
     "Tools for multivariate nonparametrics, as location tests based on marginal
ranks, spatial median and spatial signs computation, Hotelling's T-test,
estimates of shape are implemented.")
    (license license:gpl2+)))

(define-public r-icskat
  (package
    (name "r-icskat")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICSKAT" version))
              (sha256
               (base32
                "13cx2480kyzcwxp9b57p3rq4fs6x1fd4wpwm7iwiqjh17v4vb54l"))))
    (properties `((upstream-name . "ICSKAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-survival
                             r-rje
                             r-rcppeigen
                             r-rcpp
                             r-magrittr
                             r-dplyr
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ICSKAT")
    (synopsis "Interval-Censored Sequence Kernel Association Test")
    (description
     "This package implements the Interval-Censored Sequence Kernel Association
(ICSKAT) test for testing the association between interval-censored
time-to-event outcomes and groups of single nucleotide polymorphisms (SNPs).
Interval-censored time-to-event data occur when the event time is not known
exactly but can be deduced to fall within a given interval.  For example, some
medical conditions like bone mineral density deficiency are generally only
diagnosed at clinical visits.  If a patient goes for clinical checkups yearly
and is diagnosed at, say, age 30, then the onset of the deficiency is only known
to fall between the date of their age 29 checkup and the date of the age 30
checkup.  Interval-censored data include right- and left-censored data as
special cases.  This package also implements the interval-censored Burden test
and the ICSKATO test, which is the optimal combination of the ICSKAT and Burden
tests.  Please see the vignette for a quickstart guide.")
    (license license:gpl3)))

(define-public r-ics
  (package
    (name "r-ics")
    (version "1.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICS" version))
              (sha256
               (base32
                "0x3cwhvzcibgyb8gqy6dc6lgnvbf6x8425zai57g8yn5i6zzc1li"))))
    (properties `((upstream-name . "ICS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey r-mvtnorm))
    (home-page "https://cran.r-project.org/package=ICS")
    (synopsis "Tools for Exploring Multivariate Data via ICS/ICA")
    (description
     "Implementation of Tyler, Critchley, Duembgen and Oja's (JRSS B, 2009,
<doi:10.1111/j.1467-9868.2009.00706.x>) and Oja, Sirkia and Eriksson's (AJS,
2006,
<http://www.ajs.or.at/index.php/ajs/article/view/vol35,%20no2%263%20-%207>)
method of two different scatter matrices to obtain an invariant coordinate
system or independent components, depending on the underlying assumptions.")
    (license license:gpl2+)))

(define-public r-icrsf
  (package
    (name "r-icrsf")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icRSF" version))
              (sha256
               (base32
                "1a7046lspk70cvrvzwzhnqcmc3cqa5a9bmzlw012jvcn39m2ca3l"))))
    (properties `((upstream-name . "icRSF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-icensmis))
    (home-page "https://cran.r-project.org/package=icRSF")
    (synopsis "Modified Random Survival Forest Algorithm")
    (description
     "This package implements a modification to the Random Survival Forests algorithm
for obtaining variable importance in high dimensional datasets.  The proposed
algorithm is appropriate for settings in which a silent event is observed
through sequentially administered, error-prone self-reports or laboratory based
diagnostic tests.  The modified algorithm incorporates a formal likelihood
framework that accommodates sequentially administered, error-prone self-reports
or laboratory based diagnostic tests.  The original Random Survival Forests
algorithm is modified by the introduction of a new splitting criterion based on
a likelihood ratio test statistic.")
    (license license:gpl2+)))

(define-public r-icrf
  (package
    (name "r-icrf")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icrf" version))
              (sha256
               (base32
                "1apd9klng8dhd9z9nzqzpx8i84rvpwgyam9mzyh8jk6vd49cgjaf"))))
    (properties `((upstream-name . "icrf")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=icrf")
    (synopsis "Interval Censored Recursive Forests")
    (description
     "This package implements interval censored recursive forests (ICRF) based on Cho,
Jewell, and Kosorok (2021+).  ICRF is a variant of random forests where the
outcome variable is interval censored survival data.  It can be used for usual
right censored data and current status data as well.  A recursion technique is
used to improve accuracy and smoothed survival curves are provided.")
    (license license:gpl2+)))

(define-public r-icranks
  (package
    (name "r-icranks")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICRanks" version))
              (sha256
               (base32
                "1vwzqkjg7i5hm96s8frp72n6xqadlsawzr1wby1fhsxl2m5f1797"))))
    (properties `((upstream-name . "ICRanks")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-multcomp r-gmp))
    (home-page "https://cran.r-project.org/package=ICRanks")
    (synopsis "Simultaneous Confidence Intervals for Ranks")
    (description
     "Algorithms to construct simultaneous confidence intervals for the ranks of means
mu_1,...,mu_n based on an independent Gaussian sample using multiple testing
techniques.")
    (license license:gpl2+)))

(define-public r-icr
  (package
    (name "r-icr")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icr" version))
              (sha256
               (base32
                "1g1gx0bbx6s8pqd5y0ckdi0r2kbg3lmr8djbaa7nj15jnf519zcx"))))
    (properties `((upstream-name . "icr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/staudtlex/icr")
    (synopsis "Compute Krippendorff's Alpha")
    (description
     "This package provides functions to compute and plot Krippendorff's inter-coder
reliability coefficient alpha and bootstrapped uncertainty estimates
(Krippendorff 2004, ISBN:0761915443).  The bootstrap routines are set up to make
use of parallel threads where supported.")
    (license license:gpl2+)))

(define-public r-icpsrdata
  (package
    (name "r-icpsrdata")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icpsrdata" version))
              (sha256
               (base32
                "024lda7619j8nxcj0d0myaqjsmyl9mqdyghd6imr29jxa2qhcm8y"))))
    (properties `((upstream-name . "icpsrdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvest r-purrr r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=icpsrdata")
    (synopsis "Reproducible Data Retrieval from the ICPSR Archive")
    (description
     "Reproducible, programmatic retrieval of datasets from the Inter-university
Consortium for Political and Social Research archive.")
    (license license:expat)))

(define-public r-icosa
  (package
    (name "r-icosa")
    (version "0.11.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icosa" version))
              (sha256
               (base32
                "1z1xajdg7q5n3ijjy45klrh4q3i855afl9088f42dwidyban3w3h"))))
    (properties `((upstream-name . "icosa")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-sf r-rcpp r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://adamkocsis.github.io/icosa/")
    (synopsis
     "Global Triangular and Penta-Hexagonal Grids Based on Tessellated Icosahedra")
    (description
     "Implementation of icosahedral grids in three dimensions.  The
spherical-triangular tessellation can be set to create grids with custom
resolutions.  Both the primary triangular and their inverted penta-hexagonal
grids can be calculated.  Additional functions are provided that allow plotting
of the grids and associated data, the interaction of the grids with other raster
and vector objects, and treating the grids as a graphs.")
    (license license:gpl3)))

(define-public r-iconr
  (package
    (name "r-iconr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iconr" version))
              (sha256
               (base32
                "17q7zj92yrj49slmrpwkxkjd0imrl9ildms9zj8qx7yc7dcv4c1s"))))
    (properties `((upstream-name . "iconr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgdal r-magick r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://zoometh.github.io/iconr/")
    (synopsis "Graphical and Spatial Analysis for Prehistoric Iconography")
    (description
     "Set of formal methods for studying archaeological iconographic datasets
(rock-art, pottery decoration, stelae, etc.) using network and spatial analysis
(Alexander 2008 <doi:10.11588/propylaeumdok.00000512>; Huet 2018
<https://hal.archives-ouvertes.fr/hal-02913656>).")
    (license license:gpl2)))

(define-public r-icods
  (package
    (name "r-icods")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICODS" version))
              (sha256
               (base32
                "0ch463yxnhb3kcpwqmbshm1jljnnrw8lgisym6yvsr8h2gpi15zm"))))
    (properties `((upstream-name . "ICODS")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=ICODS")
    (synopsis
     "Data Analysis for ODS and Case-Cohort Designs with Interval-Censoring")
    (description
     "Sieve semiparametric likelihood methods for analyzing interval-censored failure
time data from an outcome-dependent sampling (ODS) design and from a case-cohort
design.  Zhou, Q., Cai, J., and Zhou, H. (2018) <doi:10.1111/biom.12744>; Zhou,
Q., Zhou, H., and Cai, J. (2017) <doi:10.1093/biomet/asw067>.")
    (license license:gpl2)))

(define-public r-icmm
  (package
    (name "r-icmm")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icmm" version))
              (sha256
               (base32
                "179q8w60g4yrv6wqgfmg47by1zc1mbhsdjgl7jq4wirqvwnxvgym"))))
    (properties `((upstream-name . "icmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-ebayesthresh))
    (home-page
     "https://www.researchgate.net/publication/279279744_Selecting_massive_variables_using_an_iterated_conditional_modesmedians_algorithm")
    (synopsis "Empirical Bayes Variable Selection via ICM/M Algorithm")
    (description
     "Empirical Bayes variable selection via ICM/M algorithm for normal, binary
logistic, and Cox's regression.  The basic problem is to fit high-dimensional
regression which sparse coefficients.  This package allows incorporating the
Ising prior to capture structure of predictors in the modeling process.  More
information can be found in the papers listed in the URL below.")
    (license license:gpl2+)))

(define-public r-iclick
  (package
    (name "r-iclick")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iClick" version))
              (sha256
               (base32
                "0yq0r9nz1mf9ci6l30ylqxbgl8mf1ahyqzr7m6nks0ygxabipdnd"))))
    (properties `((upstream-name . "iClick")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-timeseries
                             r-timedate
                             r-sandwich
                             r-rugarch
                             r-paper
                             r-openair
                             r-lubridate
                             r-lmtest
                             r-lattice
                             r-forecast
                             r-fbasics
                             r-coefplot
                             r-car
                             r-boot))
    (home-page "https://cran.r-project.org/package=iClick")
    (synopsis "Button-Based GUI for Financial and Economic Data Analysis")
    (description
     "This package provides a GUI designed to support the analysis of
financial-economic time series data.")
    (license license:gpl2+)))

(define-public r-ichimoku
  (package
    (name "r-ichimoku")
    (version "1.4.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ichimoku" version))
              (sha256
               (base32
                "0xjiz0r0h57l2zvknpp8nf2zfp2xpwpg5gshcwa122ykn8l988q0"))))
    (properties `((upstream-name . "ichimoku")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-shiny
                             r-rcppsimdjson
                             r-nanonext
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://shikokuchuo.net/ichimoku/")
    (synopsis "Visualization and Tools for Ichimoku Kinko Hyo Strategies")
    (description
     "An implementation of Ichimoku Kinko Hyo', also commonly known as cloud charts'.
Static and interactive visualizations with tools for creating, backtesting and
development of quantitative ichimoku strategies.  As described in Sasaki (1996,
ISBN:4925152009), the technique is a refinement on candlestick charting,
originating from Japan and now in widespread use in technical analysis
worldwide.  Translating as one-glance equilibrium chart', it allows the price
action and market structure of financial securities to be determined
at-a-glance'.  Incorporates an interface with the OANDA fxTrade API
<https://developer.oanda.com/> for retrieving historical and live streaming
price data for major currencies, metals, commodities, government bonds and stock
indices.")
    (license license:gpl3+)))

(define-public r-icgor
  (package
    (name "r-icgor")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICGOR" version))
              (sha256
               (base32
                "18fn10f5nqqbrfibqmp602nqpx794fy3gpxp1bd10xn48llhqfc4"))))
    (properties `((upstream-name . "ICGOR")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-pracma r-mass r-icsurv))
    (home-page "https://cran.r-project.org/package=ICGOR")
    (synopsis
     "Fit Generalized Odds Rate Hazards Model with Interval Censored Data")
    (description
     "Generalized Odds Rate Hazards (GORH) model is a flexible model of fitting
survival data, including the Proportional Hazards (PH) model and the
Proportional Odds (PO) Model as special cases.  This package fit the GORH model
with interval censored data.")
    (license license:gpl2+)))

(define-public r-icglm
  (package
    (name "r-icglm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICglm" version))
              (sha256
               (base32
                "1dmnz6sf311xsvyg8dh082pxgzizm701cf1ml0xg4s9kls3fd2i8"))))
    (properties `((upstream-name . "ICglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=ICglm")
    (synopsis "Information Criteria for Generalized Linear Regression")
    (description
     "Calculate various information criteria in literature for \"lm\" and \"glm\" objects.")
    (license license:expat)))

(define-public r-icesvocab
  (package
    (name "r-icesvocab")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesVocab" version))
              (sha256
               (base32
                "0cd2w0w2m176mpfd3lzvxl88bcli1qrkjrli539i764nlyh0ipl0"))))
    (properties `((upstream-name . "icesVocab")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2))
    (home-page "https://vocab.ices.dk/services/POX.aspx")
    (synopsis "ICES Vocabularies Database Web Services")
    (description
     "R interface to access the RECO POX web services of the ICES (International
Council for the Exploration of the Sea) Vocabularies database
<https://vocab.ices.dk/services/POX.aspx>.")
    (license license:gpl3)))

(define-public r-icesvms
  (package
    (name "r-icesvms")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesVMS" version))
              (sha256
               (base32
                "0ppml34s4zz3vav08fjaj71bml8amaslw22zmib0scvw8k70jlir"))))
    (properties `((upstream-name . "icesVMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-icesvocab r-icesconnect r-httr r-glue))
    (home-page "https://data.ices.dk/vms")
    (synopsis
     "Link to the ICES Vessel Monitoring System and Logbook Database Web Services")
    (description
     "Links to the ICES Vessel Monitoring System (VMS) and logbook database web
services <https://data.ices.dk/vms/webservices> to allow users to download
summaries and data products.")
    (license license:gpl2+)))

(define-public r-icestaf
  (package
    (name "r-icestaf")
    (version "4.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesTAF" version))
              (sha256
               (base32
                "0xifza8s24gy09fibqdpkh0zc723jkx09ycx44gqffrx0ch8syds"))))
    (properties `((upstream-name . "icesTAF")))
    (build-system r-build-system)
    (propagated-inputs (list r-taf r-roxygen2 r-purrr r-data-tree))
    (home-page "https://taf.ices.dk")
    (synopsis "Functions to Support the ICES Transparent Assessment Framework")
    (description
     "This package provides functions to support the ICES Transparent Assessment
Framework <https://taf.ices.dk> to organize data, methods, and results used in
ICES assessments.  ICES is an organization facilitating international
collaboration in marine science.")
    (license license:gpl3)))

(define-public r-icessd
  (package
    (name "r-icessd")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesSD" version))
              (sha256
               (base32
                "1k0i79hh63bmsqw5m6ym2h3dydrjji57lkysp5n9x293lgh04pf2"))))
    (properties `((upstream-name . "icesSD")))
    (build-system r-build-system)
    (propagated-inputs (list r-icesconnect r-httr))
    (home-page "https://sd.ices.dk")
    (synopsis "Stock Database Web Services")
    (description
     "R interface to access the web services of the ICES Stock Database
<https://sd.ices.dk>.")
    (license license:gpl2+)))

(define-public r-icessag
  (package
    (name "r-icessag")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesSAG" version))
              (sha256
               (base32
                "0dsjsn3qx3k7grjgqsj120valzga7vjlj6jb8mfwmi85gmvlx329"))))
    (properties `((upstream-name . "icesSAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-png r-openssl r-icesvocab r-httr))
    (home-page "https://sg.ices.dk")
    (synopsis "Stock Assessment Graphs Database Web Services")
    (description
     "R interface to access the web services of the ICES Stock Assessment Graphs
database <https://sg.ices.dk>.")
    (license license:gpl2+)))

(define-public r-icesdatsuqc
  (package
    (name "r-icesdatsuqc")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesDatsuQC" version))
              (sha256
               (base32
                "0pspd702vg2k7fza9jvj7hdnpjlg4k41mwiq45k7bsr0cbksggsg"))))
    (properties `((upstream-name . "icesDatsuQC")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf r-icesdatsu))
    (home-page "https://datsu.ices.dk/web/index.aspx")
    (synopsis "Run Quality Checks on Data Prior to Submission to ICES")
    (description
     "Run quality checks on data sets using the same checks that are conducted on the
ICES Data Submission Utility (DATSU) <https://datsu.ices.dk/web/index.aspx>.")
    (license license:gpl2+)))

(define-public r-icesdatsu
  (package
    (name "r-icesdatsu")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesDatsu" version))
              (sha256
               (base32
                "0vprh8y6x28q33b6zx9qhq991q0aqn5rhccf44k8211n5dwa555k"))))
    (properties `((upstream-name . "icesDatsu")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-icesconnect r-httr))
    (home-page "https://datsu.ices.dk/web/index.aspx")
    (synopsis
     "Functions to Interact with the ICES Data Submission Utility (DATSU)")
    (description
     "This package provides functions to Interact with the ICES Data Submission
Utility (DATSU) <https://datsu.ices.dk/web/index.aspx>.")
    (license license:gpl2+)))

(define-public r-icesdatras
  (package
    (name "r-icesdatras")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesDatras" version))
              (sha256
               (base32
                "0xhv95zs1bwxplvvdh2flx9v97zwvc8pvckwfjxcrff64vxxb0f1"))))
    (properties `((upstream-name . "icesDatras")))
    (build-system r-build-system)
    (home-page "https://datras.ices.dk/WebServices/Webservices.aspx")
    (synopsis "DATRAS Trawl Survey Database Web Services")
    (description
     "R interface to access the web services of the ICES (International Council for
the Exploration of the Sea) DATRAS trawl survey database
<https://datras.ices.dk/WebServices/Webservices.aspx>.")
    (license license:gpl2+)))

(define-public r-icesconnect
  (package
    (name "r-icesconnect")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesConnect" version))
              (sha256
               (base32
                "067jh43vp79pcw8bs1iarrd680x0ajc25vp91ckpjpzm22311wbr"))))
    (properties `((upstream-name . "icesConnect")))
    (build-system r-build-system)
    (propagated-inputs (list r-whoami
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-getpass
                             r-base64enc))
    (home-page "https://cran.r-project.org/package=icesConnect")
    (synopsis "Provides User Tokens for Access to ICES Web Services")
    (description
     "This package provides user tokens for ICES web services that require
authentication and authorization.  Web services covered by this package are ICES
VMS database, the ICES DATSU web services, and the ICES SharePoint site.")
    (license license:gpl3)))

(define-public r-icesat2r
  (package
    (name "r-icesat2r")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IceSat2R" version))
              (sha256
               (base32
                "1jwy1fwnc2rq3c643maa2h7hrwzq0sm6iv35kil95n3pw7pkgdy3"))))
    (properties `((upstream-name . "IceSat2R")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-shiny
                             r-sf
                             r-rvest
                             r-rnaturalearth
                             r-miniui
                             r-magrittr
                             r-lwgeom
                             r-lubridate
                             r-leafsync
                             r-leaflet-extras
                             r-leaflet
                             r-leafgl
                             r-httr
                             r-glue
                             r-foreach
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/IceSat2R")
    (synopsis "ICESat-2 Altimeter Data using R")
    (description
     "Programmatic connection to the OpenAltimetry API
<https://openaltimetry.org/data/swagger-ui/> to download and process ATL03
(Global Geolocated Photon Data), ATL06 (Land Ice Height), ATL07 (Sea Ice
Height), ATL08 (Land and Vegetation Height), ATL10 (Sea Ice Freeboard), ATL12
(Ocean Surface Height) and ATL13 (Inland Water Surface Height) ICESat-2
Altimeter Data.  The user has the option to download the data by selecting a
bounding box from a 1- or 5-degree grid globally utilizing a shiny application.
The ICESat-2 mission collects altimetry data of the Earth's surface.  The sole
instrument on ICESat-2 is the Advanced Topographic Laser Altimeter System
(ATLAS) instrument that measures ice sheet elevation change and sea ice
thickness, while also generating an estimate of global vegetation biomass.
ICESat-2 continues the important observations of ice-sheet elevation change,
sea-ice freeboard, and vegetation canopy height begun by ICESat in 2003.")
    (license license:gpl3)))

(define-public r-icesadvice
  (package
    (name "r-icesadvice")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icesAdvice" version))
              (sha256
               (base32
                "1i47kz45m45nn23j0ydq8vahw97py2im80yxadlqbvldjcm98vdw"))))
    (properties `((upstream-name . "icesAdvice")))
    (build-system r-build-system)
    (home-page "https://ices.dk/advice")
    (synopsis "Functions Related to ICES Advice")
    (description
     "This package provides a collection of functions that facilitate computational
steps related to advice for fisheries management, according to ICES guidelines.
These include methods for calculating reference points and model diagnostics.")
    (license license:gpl3)))

(define-public r-icertool
  (package
    (name "r-icertool")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icertool" version))
              (sha256
               (base32
                "0wwkqcvjmv2z8a8j597c2fjjcka1jz932i94rmqxcy31brvbi2nl"))))
    (properties `((upstream-name . "icertool")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-shinythemes
                             r-shinyhelper
                             r-shiny
                             r-readxl
                             r-purrr
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-digest))
    (home-page "https://cran.r-project.org/package=icertool")
    (synopsis "Calculate and Plot ICER")
    (description
     "The app will calculate the ICER (incremental cost-effectiveness ratio) Rawlins
(2012) <doi:10.1016/B978-0-7020-4084-9.00044-6> from the mean costs and
quality-adjusted life years (QALY) Torrance and Feeny (2009)
<doi:10.1017/S0266462300008461> for a set of treatment options, and draw the
efficiency frontier in the costs-effectiveness plane.  The app automatically
identifies and excludes dominated and extended-dominated options from the ICER
calculation.")
    (license license:gpl3)))

(define-public r-icensmis
  (package
    (name "r-icensmis")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icensmis" version))
              (sha256
               (base32
                "1afpn07a25j2jh89r78bvarg2kr0sk3ap8gdmvk75lc6g3dhvri9"))))
    (properties `((upstream-name . "icensmis")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=icensmis")
    (synopsis
     "Study Design and Data Analysis in the Presence of Error-Prone Diagnostic Tests and Self-Reported Outcomes")
    (description
     "We consider studies in which information from error-prone diagnostic tests or
self-reports are gathered sequentially to determine the occurrence of a silent
event.  Using a likelihood-based approach incorporating the proportional hazards
assumption, we provide functions to estimate the survival distribution and
covariate effects.  We also provide functions for power and sample size
calculations for this setting.  Please refer to Xiangdong Gu, Yunsheng Ma, and
Raji Balasubramanian (2015) <doi: 10.1214/15-AOAS810>, Xiangdong Gu and Raji
Balasubramanian (2016) <doi: 10.1002/sim.6962>, Xiangdong Gu, Mahlet G Tadesse,
Andrea S Foulkes, Yunsheng Ma, and Raji Balasubramanian (2020) <doi:
10.1186/s12911-020-01223-w>.")
    (license license:gpl2+)))

(define-public r-icenreg
  (package
    (name "r-icenreg")
    (version "2.0.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icenReg" version))
              (sha256
               (base32
                "1cjlvj4i5bir5769a22w8bb9477h04d8rpxk9ks72jp6zjjkq5qa"))))
    (properties `((upstream-name . "icenReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcppeigen
                             r-rcpp
                             r-mlecens
                             r-foreach
                             r-coda))
    (home-page "https://cran.r-project.org/package=icenReg")
    (synopsis "Regression Models for Interval Censored Data")
    (description
     "Regression models for interval censored data.  Currently supports Cox-PH,
proportional odds, and accelerated failure time models.  Allows for semi and
fully parametric models (parametric only for accelerated failure time models)
and Bayesian parametric models.  Includes functions for easy visual diagnostics
of model fits and imputation of censored data.")
    (license (license:fsdg-compatible "LGPL (>= 2.0, < 3)"))))

(define-public r-icellr
  (package
    (name "r-icellr")
    (version "1.6.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iCellR" version))
              (sha256
               (base32
                "0jdm61mbjl0m4d9p6yc4b1pvbdzlk5qgably1y5ck8r9sk426vdn"))))
    (properties `((upstream-name . "iCellR")))
    (build-system r-build-system)
    (propagated-inputs (list r-uwot
                             r-shiny
                             r-scatterplot3d
                             r-rtsne
                             r-reshape
                             r-rcpp
                             r-rcolorbrewer
                             r-rann
                             r-progress
                             r-png
                             r-plyr
                             r-plotly
                             r-pheatmap
                             r-nbclust
                             r-matrix
                             r-knitr
                             r-jsonlite
                             r-igraph
                             r-htmlwidgets
                             r-hmisc
                             r-hdf5r
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-ggdendro
                             r-data-table
                             r-ape))
    (home-page "https://github.com/rezakj/iCellR")
    (synopsis "Analyzing High-Throughput Single Cell Sequencing Data")
    (description
     "This package provides a toolkit that allows scientists to work with data from
single cell sequencing technologies such as scRNA-seq, scVDJ-seq, scATAC-seq,
CITE-Seq and Spatial Transcriptomics (ST).  Single (i) Cell R package ('iCellR')
provides unprecedented flexibility at every step of the analysis pipeline,
including normalization, clustering, dimensionality reduction, imputation,
visualization, and so on.  Users can design both unsupervised and supervised
models to best suit their research.  In addition, the toolkit provides 2D and 3D
interactive visualizations, differential expression analysis, filters based on
cells, genes and clusters, data merging, normalizing for dropouts, data
imputation methods, correcting for batch differences, pathway analysis, tools to
find marker genes for clusters and conditions, predict cell types and pseudotime
analysis.  See Khodadadi-Jamayran, et al (2020) <doi:10.1101/2020.05.05.078550>
and Khodadadi-Jamayran, et al (2020) <doi:10.1101/2020.03.31.019109> for more
details.")
    (license license:gpl2)))

(define-public r-iceinfer
  (package
    (name "r-iceinfer")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICEinfer" version))
              (sha256
               (base32
                "0hg1vdg9clsk24lqdh89dfzlb0mnig690wq06pzd5nl9mr6dlvns"))))
    (properties `((upstream-name . "ICEinfer")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://www.R-project.org")
    (synopsis
     "Incremental Cost-Effectiveness Inference using Two Unbiased Samples")
    (description
     "Given two unbiased samples of patient level data on cost and effectiveness for a
pair of treatments, make head-to-head treatment comparisons by (i) generating
the bivariate bootstrap resampling distribution of ICE uncertainty for a
specified value of the shadow price of health, lambda, (ii) form the
wedge-shaped ICE confidence region with specified confidence fraction within
[0.50, 0.99] that is equivariant with respect to changes in lambda, (iii) color
the bootstrap outcomes within the above confidence wedge with economic
preferences from an ICE map with specified values of lambda, beta and gamma
parameters, (iv) display VAGR and ALICE acceptability curves, and (v) illustrate
variation in ICE preferences by displaying potentially non-linear
indifference(iso-preference) curves from an ICE map with specified values of
lambda, beta and either gamma or eta parameters.")
    (license license:gpl2)))

(define-public r-iced
  (package
    (name "r-iced")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICED" version))
              (sha256
               (base32
                "0l23xvkkzak1s87bzc4fhy2cy0mvzqv8hs9qc8lk2nminnfxg03p"))))
    (properties `((upstream-name . "ICED")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-mass r-lavaan r-knitr r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sdparsons/ICED")
    (synopsis "IntraClass Effect Decomposition")
    (description
     "Estimate test-retest reliability for complex sampling strategies and extract
variances using IntraClass Effect Decomposition.  Developed by Brandmaier et al.
(2018) \"Assessing reliability in neuroimaging research through intra-class
effect decomposition (ICED)\" <doi:10.7554/eLife.35718> Also includes functions
to simulate data based on sampling strategy.  Unofficial version release name:
\"Good work squirrels\".")
    (license license:expat)))

(define-public r-icecream
  (package
    (name "r-icecream")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icecream" version))
              (sha256
               (base32
                "0gqad5sf78ggvdjhiis6x0y69ksrk1wgs4b8nxq51xna5wy5yqgl"))))
    (properties `((upstream-name . "icecream")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-purrr r-pillar r-glue r-cli))
    (home-page "https://www.lewinfox.com/icecream/")
    (synopsis "Print Debugging Made Sweeter")
    (description
     "This package provides user-friendly and configurable print debugging via a
single function, ic().  Wrap an expression in ic() to print the expression, its
value and (where available) its source location.  Debugging output can be
toggled globally without modifying code.")
    (license license:expat)))

(define-public r-icebox
  (package
    (name "r-icebox")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICEbox" version))
              (sha256
               (base32
                "08rzbdd0qbhr6a5pjb6346j3zhyb2xl5wmrh3qivwpl19binjiza"))))
    (properties `((upstream-name . "ICEbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-sfsmisc))
    (home-page "https://cran.r-project.org/package=ICEbox")
    (synopsis "Individual Conditional Expectation Plot Toolbox")
    (description
     "This package implements Individual Conditional Expectation (ICE) plots, a tool
for visualizing the model estimated by any supervised learning algorithm.  ICE
plots refine Friedman's partial dependence plot by graphing the functional
relationship between the predicted response and a covariate of interest for
individual observations.  Specifically, ICE plots highlight the variation in the
fitted values across the range of a covariate of interest, suggesting where and
to what extent they may exist.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-icds
  (package
    (name "r-icds")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICDS" version))
              (sha256
               (base32
                "1bnj2ngh2n2yhgx8z9kawnpgkfgqw3b8xw9wkhimws4f2ir4k1zl"))))
    (properties `((upstream-name . "ICDS")))
    (build-system r-build-system)
    (propagated-inputs (list r-org-hs-eg-db r-metap r-igraph r-graphite))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ICDS")
    (synopsis
     "Identification of Cancer Dysfunctional Subpathway with Omics Data")
    (description
     "Identify Cancer Dysfunctional Sub-pathway by integrating gene expression, DNA
methylation and copy number variation, and pathway topological information.
1)We firstly calculate the gene risk scores by integrating three kinds of data:
DNA methylation, copy number variation, and gene expression.  2)Secondly, we
perform a greedy search algorithm to identify the key dysfunctional sub-pathways
within the pathways for which the discriminative scores were locally maximal.
3)Finally, the permutation test was used to calculate statistical significance
level for these key dysfunctional sub-pathways.")
    (license license:gpl2+)))

(define-public r-icdpicr
  (package
    (name "r-icdpicr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icdpicr" version))
              (sha256
               (base32
                "099ipcpz1cff7cr572lww34az4wwym8phpbk2ph0545k2fk0c56d"))))
    (properties `((upstream-name . "icdpicr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=icdpicr")
    (synopsis "'ICD' Programs for Injury Categorization in R")
    (description
     "Categorization and scoring of injury severity typically involves trained
personnel with access to injured persons or their medical records.  icdpicr
contains a function that provides automated calculation of Abbreviated Injury
Scale ('AIS') and Injury Severity Score ('ISS') from International
Classification of Diseases ('ICD') codes and may be a useful substitute to
manual injury severity scoring.  ICDPIC was originally developed in Stata', and
icdpicr is an open-access update that accepts both ICD-9 and ICD-10 codes.")
    (license license:expat)))

(define-public r-icdglm
  (package
    (name "r-icdglm")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icdGLM" version))
              (sha256
               (base32
                "1mh9kwn21n19v4lrmj33ghpna7dl66fx19gi6lcjanmrpzrkwdnz"))))
    (properties `((upstream-name . "icdGLM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=icdGLM")
    (synopsis
     "EM by the Method of Weights for Incomplete Categorical Data in Generlized Linear Models")
    (description
     "This package provides an estimator for generalized linear models with incomplete
data for discrete covariates.  The estimation is based on the EM algorithm by
the method of weights by Ibrahim (1990) <DOI:10.2307/2290013>.")
    (license license:gpl2+)))

(define-public r-icd10gm
  (package
    (name "r-icd10gm")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICD10gm" version))
              (sha256
               (base32
                "1zraky9jcgl3qvn8nagi3arp3y1m5ihxc1hga2q8f3m96hhhqq3k"))))
    (properties `((upstream-name . "ICD10gm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringi
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://edonnachie.github.io/ICD10gm/")
    (synopsis
     "Metadata Processing for the German Modification of the ICD-10 Coding System")
    (description
     "This package provides convenient access to the German modification of the
International Classification of Diagnoses, 10th revision (ICD-10-GM).  It
provides functionality to aid in the identification, specification and
historisation of ICD-10 codes.  Its intended use is the analysis of routinely
collected data in the context of epidemiology, medical research and health
services research.  The underlying metadata are released by the German Institute
for Medical Documentation and Information <https://www.dimdi.de>, and are
redistributed in accordance with their license.")
    (license license:expat)))

(define-public r-icd-data
  (package
    (name "r-icd-data")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icd.data" version))
              (sha256
               (base32
                "0cynr9327wfg88661w4hali48mb6ghyvlqgybsa38k9bbf57v8aa"))))
    (properties `((upstream-name . "icd.data")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=icd.data")
    (synopsis "International Classifcation of Diseases (ICD) Data")
    (description
     "Data from the United States Center for Medicare and Medicaid Services (CMS) is
included in this package.  There are ICD-9 and ICD-10 diagnostic and procedure
codes, and lists of the chapter and sub-chapter headings and the ranges of ICD
codes they encompass.  There are also two sample datasets.  These data are used
by the icd package for finding comorbidities.")
    (license license:gpl3)))

(define-public r-icctraj
  (package
    (name "r-icctraj")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iccTraj" version))
              (sha256
               (base32
                "02fzqgg459y6d4f96fgvj0c5qvfpnp60d3gz7ddhf6zkk2rzhd0q"))))
    (properties `((upstream-name . "iccTraj")))
    (build-system r-build-system)
    (propagated-inputs (list r-trajectories
                             r-spacetime
                             r-sp
                             r-purrr
                             r-magic
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=iccTraj")
    (synopsis
     "Estimates the Intraclass Correlation Coefficient for Trajectory Data")
    (description
     "Estimates the intraclass correlation coefficient for trajectory data using a
matrix of distances between trajectories.  The distances implemented are the
extended Hausdorff distances (Min et al.  2007) <doi:10.1080/13658810601073315>
and the discrete FrÃ©chet distance (Magdy et al.  2015)
<doi:10.1109/IntelCIS.2015.7397286>.")
    (license license:gpl2+)))

(define-public r-iccforest
  (package
    (name "r-iccforest")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICcforest" version))
              (sha256
               (base32
                "0z511d3drq5flxwvx7kjv3v5yanjhvs5ayvkm996jbiz3k49a12v"))))
    (properties `((upstream-name . "ICcforest")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-partykit r-ipred r-icenreg))
    (home-page "https://cran.r-project.org/package=ICcforest")
    (synopsis "An Ensemble Method for Interval-Censored Survival Data")
    (description
     "This package implements the conditional inference forest approach to modeling
interval-censored survival data.  It also provides functions to tune the
parameters and evaluate the model fit.  See Yao et al. (2019)
<arXiv:1901.04599>.")
    (license license:gpl2+)))

(define-public r-iccde
  (package
    (name "r-iccde")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iccde" version))
              (sha256
               (base32
                "1z7ra8s0sddjmbfb8flgp4kmz1ckgwshz8h2nnpbd3liav84b5xv"))))
    (properties `((upstream-name . "iccde")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iccde")
    (synopsis "Computation of the Double-Entry Intraclass Correlation")
    (description
     "The functions compute the double-entry intraclass correlation, which is an index
of profile similarity (Furr, 2010; McCrae, 2008).  The double-entry intraclass
correlation is a more precise index of the agreement of two empirically observed
profiles than the often-used intraclass correlation (McCrae, 2008).  The
function transforms profiles comprising correlations according to the Fisher
z-transformation before the double-entry intraclass correlation is calculated.
If the profiles comprise scores such as sum scores from various personality
scales, it is recommended to standardize each individual score prior to
computation of the double-entry intraclass correlation (McCrae, 2008).  See Furr
(2010) <doi:10.1080/00223890903379134> or McCrae (2008)
<doi:10.1080/00223890701845104> for details.")
    (license license:gpl2+)))

(define-public r-icccounts
  (package
    (name "r-icccounts")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iccCounts" version))
              (sha256
               (base32
                "0h1bjnyl24i2y8z1pys4k89q2dy5cfd808bc7w54j1vyyap0k899"))))
    (properties `((upstream-name . "iccCounts")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-gridextra
                             r-glmmtmb
                             r-ggplot2
                             r-dplyr
                             r-deriv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iccCounts")
    (synopsis "Intraclass Correlation Coefficient for Count Data")
    (description
     "Estimates the intraclass correlation coefficient (ICC) for count data to assess
repeatability (intra-methods concordance) and concordance (between-method
concordance).  In the concordance setting, the ICC is equivalent to the
concordance correlation coefficient estimated by variance components.  The ICC
is estimated using the estimates from generalized linear mixed models.  The
within-subjects distributions considered are: Poisson; Negative Binomial with
additive and proportional extradispersion; Zero-Inflated Poisson; and
Zero-Inflated Negative Binomial with additive and proportional extradispersion.
The statistical methodology used to estimate the ICC with count data can be
found in Carrasco (2010) <doi:10.1111/j.1541-0420.2009.01335.x>.")
    (license license:gpl2+)))

(define-public r-iccbin
  (package
    (name "r-iccbin")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICCbin" version))
              (sha256
               (base32
                "1pzlaj7w98pgrlg3zvpmdv0dpgi5gih0j73qv86ak75fkxvrnzzw"))))
    (properties `((upstream-name . "ICCbin")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ICCbin")
    (synopsis
     "Facilitates Clustered Binary Data Generation, and Estimation of Intracluster Correlation Coefficient (ICC) for Binary Data")
    (description
     "Assists in generating binary clustered data, estimates of Intracluster
Correlation coefficient (ICC) for binary response in 16 different methods, and 5
different types of confidence intervals.")
    (license license:gpl2+)))

(define-public r-iccbeta
  (package
    (name "r-iccbeta")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iccbeta" version))
              (sha256
               (base32
                "03ms1c8qpbgxabj3hh4n0gwcazw6cd0cvixck5rz8fkvj04xzjak"))))
    (properties `((upstream-name . "iccbeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-lme4))
    (home-page "https://github.com/tmsalab/iccbeta")
    (synopsis
     "Multilevel Model Intraclass Correlation for Slope Heterogeneity")
    (description
     "This package provides a function and vignettes for computing an intraclass
correlation described in Aguinis & Culpepper (2015)
<doi:10.1177/1094428114563618>.  This package quantifies the share of variance
in a dependent variable that is attributed to group heterogeneity in slopes.")
    (license license:gpl2+)))

(define-public r-iccalib
  (package
    (name "r-iccalib")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICcalib" version))
              (sha256
               (base32
                "1y2w12ka0qxh9dg6dlcrnndz1xrv8gkppan64qkyk5vjrh18ajz4"))))
    (properties `((upstream-name . "ICcalib")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-msm
                             r-mass
                             r-icsurv
                             r-icenreg
                             r-fitdistrplus))
    (home-page "https://cran.r-project.org/package=ICcalib")
    (synopsis "Cox Model with Interval-Censored Starting Time of a Covariate")
    (description
     "Calibration and risk-set calibration methods for fitting Cox proportional hazard
model when a binary covariate is measured intermittently.  Methods include
functions to fit calibration models from interval-censored data and modified
partial likelihood for the proportional hazard model, Nevo et al. (2018+)
<arXiv:1801.01529>.")
    (license license:gpl2+)))

(define-public r-icc-sample-size
  (package
    (name "r-icc-sample-size")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICC.Sample.Size" version))
              (sha256
               (base32
                "1w6v1jp8bfvf6c49ikswkc5527gdx5cyqnw95x00pgmm6riwlsp9"))))
    (properties `((upstream-name . "ICC.Sample.Size")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ICC.Sample.Size")
    (synopsis "Calculation of Sample Size and Power for ICC")
    (description
     "This package provides functions to calculate the requisite sample size for
studies where ICC is the primary outcome.  Can also be used for calculation of
power.  In both cases it allows the user to test the impact of changing input
variables by calculating the outcome for several different values of input
variables.  Based off the work of Zou.  Zou, G. Y. (2012).  Sample size formulas
for estimating intraclass correlation coefficients with precision and assurance.
 Statistics in medicine, 31(29), 3972-3981.")
    (license license:gpl3)))

(define-public r-icc
  (package
    (name "r-icc")
    (version "2.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICC" version))
              (sha256
               (base32
                "1a0fnhqw297x5xrw9dwdb9m6ziz8wc3fnndkrn2s23xrw5vm0c1s"))))
    (properties `((upstream-name . "ICC")))
    (build-system r-build-system)
    (home-page "https://github.com/matthewwolak/ICC")
    (synopsis
     "Facilitating Estimation of the Intraclass Correlation Coefficient")
    (description
     "Assist in the estimation of the Intraclass Correlation Coefficient (ICC) from
variance components of a one-way analysis of variance and also estimate the
number of individuals or groups necessary to obtain an ICC estimate with a
desired confidence interval width.")
    (license license:gpl2+)))

(define-public r-icbiomark
  (package
    (name "r-icbiomark")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICBioMark" version))
              (sha256
               (base32
                "1bvlbczlkjdql98ds5wgmg3j2dxbfm5i4yzq98pdkzaiccg8sx2v"))))
    (properties `((upstream-name . "ICBioMark")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-prroc
                             r-matrixstats
                             r-matrix
                             r-latex2exp
                             r-glmnet
                             r-ggplot2
                             r-gglasso
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=ICBioMark")
    (synopsis
     "Data-Driven Design of Targeted Gene Panels for Estimating Immunotherapy Biomarkers")
    (description
     "Implementation of the methodology proposed in Data-driven design of targeted
gene panels for estimating immunotherapy biomarkers', Bradley and Cannings
(2021) <arXiv:2102.04296>.  This package allows the user to fit generative
models of mutation from an annotated mutation dataset, and then further to
produce tunable linear estimators of exome-wide biomarkers.  It also contains
functions to simulate mutation annotated format (MAF) data, as well as to
analyse the output and performance of models.")
    (license license:expat)))

(define-public r-icarus
  (package
    (name "r-icarus")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icarus" version))
              (sha256
               (base32
                "0ipbhzvwdn1cnzgdw33cwv901768srxfi588bimjx2ssl80mqn3a"))))
    (properties `((upstream-name . "icarus")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=icarus")
    (synopsis "Calibrates and Reweights Units in Samples")
    (description
     "This package provides user-friendly tools for calibration in survey sampling.
The package is production-oriented, and its interface is inspired by the famous
popular macro Calmar for SAS, so that Calmar users can quickly get used to
icarus'.  In addition to calibration (with linear, raking and logit methods),
icarus features functions for calibration on tight bounds and penalized
calibration.")
    (license license:gpl3)))

(define-public r-icarh
  (package
    (name "r-icarh")
    (version "2.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iCARH" version))
              (sha256
               (base32
                "1x703ydssmgb7j0hgqn3d5sh9457jgj7s2m8i12x2b9wvkh0fz8j"))))
    (properties `((upstream-name . "iCARH")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan
                             r-reshape2
                             r-rcurl
                             r-mc2d
                             r-matrix
                             r-mass
                             r-kegggraph
                             r-igraph
                             r-glue
                             r-ggplot2
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iCARH")
    (synopsis "Integrative Conditional Autoregressive Horseshoe Model")
    (description
     "This package implements the integrative conditional autoregressive horseshoe
model discussed in Jendoubi, T., Ebbels, T.M. Integrative analysis of time
course metabolic data and biomarker discovery.  BMC Bioinformatics 21, 11 (2020)
<doi:10.1186/s12859-019-3333-0>.  The model consists in three levels: Metabolic
pathways level modeling interdependencies between variables via a conditional
auto-regressive (CAR) component, integrative analysis level to identify
potential associations between heterogeneous omic variables via a Horseshoe
prior and experimental design level to capture experimental design conditions
through a mixed-effects model.  The package also provides functions to simulate
data from the model, construct pathway matrices, post process and plot model
parameters.")
    (license license:gpl3+)))

(define-public r-icardafigsr
  (package
    (name "r-icardafigsr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "icardaFIGSr" version))
              (sha256
               (base32
                "1yysqkyr36388i8za8jhz0m1vdn3jv8kpb24pnhbxlwsq8r5x0jr"))))
    (properties `((upstream-name . "icardaFIGSr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-reshape2
                             r-raster
                             r-plyr
                             r-plotroc
                             r-magrittr
                             r-leaflet
                             r-httr
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-caret))
    (home-page "https://cran.r-project.org/package=icardaFIGSr")
    (synopsis
     "Subsetting using Focused Identification of the Germplasm Strategy (FIGS)")
    (description
     "Running Focused Identification of the Germplasm Strategy (FIGS) to make best
subsets from Genebank Collection.")
    (license license:expat)))

(define-public r-icaod
  (package
    (name "r-icaod")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICAOD" version))
              (sha256
               (base32
                "07fxh60vsndlvjijjsh1a9l2qkp78sb9nkg5x5mslh209lpjjhw1"))))
    (properties `((upstream-name . "ICAOD")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn
                             r-rcppeigen
                             r-rcpp
                             r-nloptr
                             r-mvquad
                             r-mnormt
                             r-cubature))
    (home-page "https://cran.r-project.org/package=ICAOD")
    (synopsis
     "Optimal Designs for Nonlinear Statistical Models by Imperialist Competitive Algorithm (ICA)")
    (description
     "Finds optimal designs for nonlinear models using a metaheuristic algorithm
called Imperialist Competitive Algorithm (ICA).  See, for details, Masoudi et
al. (2017) <doi:10.1016/j.csda.2016.06.014> and Masoudi et al. (2019)
<doi:10.1080/10618600.2019.1601097>.")
    (license license:gpl2+)))

(define-public r-icams
  (package
    (name "r-icams")
    (version "2.3.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ICAMS" version))
              (sha256
               (base32
                "0kkxn45addgl7mg8w4ybna7xaj11dgrwax06l0ml3bnk8h0nrgi5"))))
    (properties `((upstream-name . "ICAMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-stringi
                             r-rcolorbrewer
                             r-iranges
                             r-genomicranges
                             r-genomeinfodb
                             r-dplyr
                             r-data-table
                             r-bsgenome
                             r-biostrings))
    (home-page "https://github.com/steverozen/ICAMS")
    (synopsis
     "In-Depth Characterization and Analysis of Mutational Signatures ('ICAMS')")
    (description
     "Analysis and visualization of experimentally elucidated mutational signatures --
the kind of analysis and visualization in Boot et al., \"In-depth
characterization of the cisplatin mutational signature in human cell lines and
in esophageal and liver tumors\", Genome Research 2018,
<doi:10.1101/gr.230219.117> and \"Characterization of colibactin-associated
mutational signature in an Asian oral squamous cell carcinoma and in other
mucosal tumor types\", Genome Research 2020 <doi:10.1101/gr.255620.119>.  ICAMS
stands for In-depth Characterization and Analysis of Mutational Signatures.
ICAMS has functions to read in variant call files (VCFs) and to collate the
corresponding catalogs of mutational spectra and to analyze and plot catalogs of
mutational spectra and signatures.  Handles both \"counts-based\" and
\"density-based\" catalogs of mutational spectra or signatures.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-icamp
  (package
    (name "r-icamp")
    (version "1.5.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iCAMP" version))
              (sha256
               (base32
                "0rx0mjkmlqf5awq387h1bzampvkwp67jbkjz29qmw85ma6vlqbpi"))))
    (properties `((upstream-name . "iCAMP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-permute
                             r-nortest
                             r-minpack-lm
                             r-hmisc
                             r-dirichletreg
                             r-data-table
                             r-bigmemory
                             r-ape))
    (home-page "https://github.com/DaliangNing/iCAMP1")
    (synopsis
     "Infer Community Assembly Mechanisms by Phylogenetic-Bin-Based Null Model Analysis")
    (description
     "To implement a general framework to quantitatively infer Community Assembly
Mechanisms by Phylogenetic-bin-based null model analysis, abbreviated as iCAMP
(Ning et al 2020) <doi:10.1038/s41467-020-18560-z>.  It can quantitatively
assess the relative importance of different community assembly processes, such
as selection, dispersal, and drift, for both communities and each phylogenetic
group ('bin').  Each bin usually consists of different taxa from a family or an
order.  The package also provides functions to implement some other published
methods, including neutral taxa percentage (Burns et al 2016)
<doi:10.1038/ismej.2015.142> based on neutral theory model and quantifying
assembly processes based on entire-community null models ('QPEN', Stegen et al
2013) <doi:10.1038/ismej.2013.93>.  It also includes some handy functions,
particularly for big datasets, such as phylogenetic and taxonomic null model
analysis at both community and bin levels, between-taxa niche difference and
phylogenetic distance calculation, phylogenetic signal test within phylogenetic
groups, midpoint root of big trees, etc.  Version 1.3.x mainly improved the
function for QPEN and added function icamp.cate() to summarize iCAMP results for
different categories of taxa (e.g. core versus rare taxa).")
    (license license:gpl2)))

(define-public r-ical
  (package
    (name "r-ical")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ical" version))
              (sha256
               (base32
                "1raanaagas1c8w66d8s045z5ip1i97xca4233d55jk6cazv0mb1w"))))
    (properties `((upstream-name . "ical")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (home-page "https://cran.r-project.org/package=ical")
    (synopsis "'iCalendar' Parsing")
    (description
     "This package provides a simple wrapper around the ical.js library executing
Javascript code via V8 (the Javascript engine driving the Chrome browser and
Node.js and accessible via the V8 R package).  This package enables users to
parse iCalendar files ('.ics', .ifb', .iCal', .iFBf') into lists and data.frames
to ultimately do statistics on events, meetings, schedules, birthdays, and the
like.")
    (license license:expat)))

(define-public r-ic10trainingdata
  (package
    (name "r-ic10trainingdata")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iC10TrainingData" version))
              (sha256
               (base32
                "175ymib3h359296hk36psryksisipx63ybvacz8hys21irzx58j1"))))
    (properties `((upstream-name . "iC10TrainingData")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iC10TrainingData")
    (synopsis "Training Datasets for iC10 Package")
    (description
     "Training datasets for iC10; which implements the classifier described in the
paper Genome-driven integrated classification of breast cancer validated in over
7,500 samples (Ali HR et al., Genome Biology 2014).  It uses copy number and/or
expression form breast cancer data, trains a pamr classifier (Tibshirani et al.)
with the features available and predicts the iC10 group.  Genomic annotation for
the training dataset has been obtained from Mark Dunning's lluminaHumanv3.db
package.")
    (license license:gpl3)))

(define-public r-ic10
  (package
    (name "r-ic10")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iC10" version))
              (sha256
               (base32
                "1xq6xv582wxdb0nc2nia3q38155gx8z26idiqyx7h1rjb20hhwdl"))))
    (properties `((upstream-name . "iC10")))
    (build-system r-build-system)
    (propagated-inputs (list r-pamr r-impute r-ic10trainingdata))
    (home-page "https://cran.r-project.org/package=iC10")
    (synopsis "Copy Number and Expression-Based Classifier for Breast Tumours")
    (description
     "Implementation of the classifier described in the paper Genome-driven integrated
classification of breast cancer validated in over 7,500 samples (Ali HR et al.,
Genome Biology 2014).  It uses copy number and/or expression form breast cancer
data, trains a pamr classifier (Tibshirani et al.) with the features available
and predicts the iC10 group.")
    (license license:gpl3)))

(define-public r-ic-infer
  (package
    (name "r-ic-infer")
    (version "1.1-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ic.infer" version))
              (sha256
               (base32
                "14vcwx5592br4zky9mq82akwk8pfiz7p1rx2jvyb48prrs2mm9gy"))))
    (properties `((upstream-name . "ic.infer")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-mvtnorm r-kappalab r-boot))
    (home-page "http://prof.beuth-hochschule.de/groemping/")
    (synopsis "Inequality Constrained Inference in Linear Normal Situations")
    (description
     "This package implements inequality constrained inference.  This includes
parameter estimation in normal (linear) models under linear equality and
inequality constraints, as well as normal likelihood ratio tests involving
inequality-constrained hypotheses.  For inequality-constrained linear models,
averaging over R-squared for different orderings of regressors is also included.")
    (license license:gpl2+)))

(define-public r-ibst
  (package
    (name "r-ibst")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iBST" version))
              (sha256
               (base32
                "0z7v679s5w270dfls61hh4fab9pzzj4lsqwsx06r59s0hlsrv5nw"))))
    (properties `((upstream-name . "iBST")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rpart r-rcpp))
    (home-page "https://cran.r-project.org/package=iBST")
    (synopsis "Improper Bagging Survival Tree")
    (description
     "Fit a full or subsampling bagging survival tree on a mixture of population
(susceptible and nonsusceptible) using either a pseudo R2 criterion or an
adjusted Logrank criterion.  The predictor is evaluated using the Out Of Bag
Integrated Brier Score (IBS) and several scores of importance are computed for
variable selection.  The thresholds values for variable selection are computed
using a nonparametric permutation test.  See Cyprien Mbogning and Philippe Broet
(2016)<doi:10.1186/s12859-016-1090-x> for an overview about the methods
implemented in this package.")
    (license license:gpl2+)))

(define-public r-ibs
  (package
    (name "r-ibs")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibs" version))
              (sha256
               (base32
                "06zyg6c083437nhilqfhcf6yzlvazkpxhi3dh5d3dqv2zhxixlz4"))))
    (properties `((upstream-name . "ibs")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=ibs")
    (synopsis "Integral of B-Spline Functions")
    (description
     "Calculate B-spline basis functions with a given set of knots and order, or a
B-spline function with a given set of knots and order and set of de Boor points
(coefficients), or the integral of a B-spline function.")
    (license license:gpl2+)))

(define-public r-ibrtools
  (package
    (name "r-ibrtools")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBRtools" version))
              (sha256
               (base32
                "19i0dh8gnw8fkd4khaggljfmr6rn1r82vz5i9zvjxarqh0pfcqv7"))))
    (properties `((upstream-name . "IBRtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-gtools
                             r-fmsb
                             r-dplyr
                             r-data-table
                             r-binhf))
    (home-page "https://cran.r-project.org/package=IBRtools")
    (synopsis
     "Integrating Biomarker-Based Assessments and Radarchart Creation")
    (description
     "Several functions to calculate two important indexes (IBR (Integrated Biomarker
Response) and IBRv2 (Integrated Biological Response version 2)), it also
calculates the standardized values for enzyme activity for each index, and it
has a graphing function to perform radarplots that make great data visualization
for this type of data.  Beliaeff, B., & Burgeot, T. (2002).
<https://pubmed.ncbi.nlm.nih.gov/12069320/>.  Sanchez, W., Burgeot, T., &
Porcher, J.-M. (2013).<doi:10.1007/s11356-012-1359-1>.  Devin, S., Burgeot, T.,
GiambÃ©rini, L., Minguez, L., & Pain-Devin, S. (2014).
<doi:10.1007/s11356-013-2169-9>.  Minato N. (2022).
<https://minato.sip21c.org/msb/>.")
    (license license:gpl3)))

(define-public r-ibrokers
  (package
    (name "r-ibrokers")
    (version "0.10-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBrokers" version))
              (sha256
               (base32
                "06pp2fgzbwpk95r0pvaskx44q33mlady8bq5i13c4qc60vkafyag"))))
    (properties `((upstream-name . "IBrokers")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts))
    (home-page "https://cran.r-project.org/package=IBrokers")
    (synopsis "R API to Interactive Brokers Trader Workstation")
    (description
     "This package provides native R access to Interactive Brokers Trader Workstation
API.")
    (license license:gpl3)))

(define-public r-ibr
  (package
    (name "r-ibr")
    (version "2.0-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibr" version))
              (sha256
               (base32
                "1plyz4sl0i8qhk9dh3h7zvh9h8wqr589jvasmvp7r3slp4ndhp1r"))))
    (properties `((upstream-name . "ibr")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (home-page "https://cran.r-project.org/package=ibr")
    (synopsis "Iterative Bias Reduction")
    (description
     "Multivariate smoothing using iterative bias reduction with kernel, thin plate
splines, Duchon splines or low rank splines.")
    (license license:gpl2+)))

(define-public r-ibmsunburst
  (package
    (name "r-ibmsunburst")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibmsunburst" version))
              (sha256
               (base32
                "165fgz5fhfzn2cyr2y6caf980a5r50g2p6qrj0ssxyzlqspipjhn"))))
    (properties `((upstream-name . "ibmsunburst")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/jumpingrivers/ibmsunburst")
    (synopsis "Generate Personality Insights Sunburst Diagrams")
    (description
     "Generates Personality Insights sunburst diagrams based on IBM Watson Personality
Insights service output.")
    (license license:expat)))

(define-public r-ibmpopsim
  (package
    (name "r-ibmpopsim")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBMPopSim" version))
              (sha256
               (base32
                "03q65ysg2najjqqrjd9jnm7069q8gxhkyqwb7r7l6171wipwdi3y"))))
    (properties `((upstream-name . "IBMPopSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-readr
                             r-rcpp
                             r-ggplot2
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DaphneGiorgi/IBMPopSim")
    (synopsis "Individual Based Model Population Simulation")
    (description
     "Simulation of the random evolution of structured population dynamics, called
stochastic Individual Based Models (IBMs) (see e.g. FerriÃ¨re and Tran (2009)
<doi:10.1051/proc/2009033>, Bansaye and MÃ©lÃ©ard (2015)
<doi:10.1007/978-3-319-21711-6>, Boumezoued (2016)).  The package allows users
to simulate the random evolution of a population in which individuals are
characterised by their date of birth, a set of attributes, and their potential
date of death.")
    (license license:expat)))

(define-public r-ibmdbr
  (package
    (name "r-ibmdbr")
    (version "1.50.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibmdbR" version))
              (sha256
               (base32
                "151gg05gcy5wpyvyflr4mc0jq1npxzq9pc4spjc81x2igd14c370"))))
    (properties `((upstream-name . "ibmdbR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart-plot
                             r-rpart
                             r-rodbc
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-arules))
    (home-page "https://cran.r-project.org/package=ibmdbR")
    (synopsis "IBM in-Database Analytics for R")
    (description
     "Functionality required to efficiently use R with IBM(R) Db2(R) Warehouse
offerings (formerly IBM dashDB(R)) and IBM Db2 for z/OS(R) in conjunction with
IBM Db2 Analytics Accelerator for z/OS. Many basic and complex R operations are
pushed down into the database, which removes the main memory boundary of R and
allows to make full use of parallel processing in the underlying database.")
    (license license:gpl3)))

(define-public r-ibmcraftr
  (package
    (name "r-ibmcraftr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibmcraftr" version))
              (sha256
               (base32
                "0zm5j0a1wjj5agibp38h73qxpq0njvrhfq3077xhhfizcb3v24sb"))))
    (properties `((upstream-name . "ibmcraftr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=ibmcraftr")
    (synopsis
     "Toolkits to Develop Individual-Based Models in Infectious Disease")
    (description
     "It provides a generic set of tools for initializing a synthetic population with
each individual in specific disease states, and making transitions between those
disease states according to the rates calculated on each timestep.  The new
version 1.0.0 has C++ code integration to make the functions run faster.  It has
also a higher level function to actually run the transitions for the number of
timesteps that users specify.  Additional functions will follow for changing
attributes on demographic, health belief and movement.")
    (license license:expat)))

(define-public r-ibmacousticr
  (package
    (name "r-ibmacousticr")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibmAcousticR" version))
              (sha256
               (base32
                "1hrd2273n9fgi3hgjissjn4syw914mxm4wr98ij819yahsi9aj42"))))
    (properties `((upstream-name . "ibmAcousticR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=ibmAcousticR")
    (synopsis "Connect to Your 'IBM Acoustic' Data")
    (description
     "Authentication can be the most difficult part about working with a new API.
ibmAcousticR facilitates making a connection to the IBM Acoustic email campaign
management API and executing various queries.  The IBM Acoustic API
documentation is available at
<https://developer.ibm.com/customer-engagement/docs/>.  This package is not
supported by IBM'.")
    (license license:cc0)))

(define-public r-ibm
  (package
    (name "r-ibm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibm" version))
              (sha256
               (base32
                "0g6wg2qpa4q142xw2vq5pca4ll6pb8hyll5g0c93kk8crddk51s7"))))
    (properties `((upstream-name . "ibm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "http://roliveros-ramos.github.io/ibm")
    (synopsis "Individual Based Models in R")
    (description
     "Implementation of some (simple) Individual Based Models and methods to create
new ones, particularly for population dynamics models (reproduction, mortality
and movement).  The basic operations for the simulations are implemented in Rcpp
for speed.")
    (license license:gpl2)))

(define-public r-ibfs
  (package
    (name "r-ibfs")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBFS" version))
              (sha256
               (base32
                "04n021h781h5v1nlljdzam12agsw8hyhy50b0ld8d4vh6iy37ijp"))))
    (properties `((upstream-name . "IBFS")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IBFS")
    (synopsis "Initial Basic Feasible Solution for Transportation Problem")
    (description
     "The initial basic feasible solution (IBFS) is a significant step to achieve the
minimal total cost (optimal solution) of the transportation problem.  However,
the existing methods of IBFS do not always provide a good feasible solution
which can reduce the number of iterations to find the optimal solution.  This
initial basic feasible solution can be obtained by using any of the following
methods.  a) North West Corner Method.  b) Least Cost Method.  c) Row Minimum
Method.  d) Column Minimum Method.  e) Vogel's Approximation Method.  etc.  For
more technical details about the algorithms please refer below URLs.
<https://theintactone.com/2018/05/24/ds-u2-topic-8-transportation-problems-initial-basic-feasible-solution/>.
<https://www.brainkart.com/article/Methods-of-finding-initial-Basic-Feasible-Solutions_39037/>.
<https://myhomeworkhelp.com/row-minima-method/>.
<https://myhomeworkhelp.com/column-minima-method/>.")
    (license license:gpl2)))

(define-public r-ibelief
  (package
    (name "r-ibelief")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibelief" version))
              (sha256
               (base32
                "0fl2vvyl2qygppcycbnjkmlvq6rmxq18y1hk512d6szgi0czvpls"))))
    (properties `((upstream-name . "ibelief")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ibelief")
    (synopsis "Belief Function Implementation")
    (description
     "Some basic functions to implement belief functions including: transformation
between belief functions using the method introduced by Philippe Smets
<arXiv:1304.1122>, evidence combination, evidence discounting, decision-making,
and constructing masses.  Currently, thirteen combination rules and six decision
rules are supported.  It can also be used to generate different types of random
masses when working on belief combination and conflict management.")
    (license license:gpl2+)))

(define-public r-ibdsim2
  (package
    (name "r-ibdsim2")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibdsim2" version))
              (sha256
               (base32
                "1qbgk77cszf7hzsvxv2yqz07rzdh4vksxglx3wrzn5v18fm01c2q"))))
    (properties `((upstream-name . "ibdsim2")))
    (build-system r-build-system)
    (propagated-inputs (list r-ribd r-rcpp r-pedtools r-glue r-ggplot2))
    (home-page "https://github.com/magnusdv/ibdsim2")
    (synopsis "Simulation of Chromosomal Regions Shared by Family Members")
    (description
     "Simulation of segments shared identical-by-descent (IBD) by pedigree members.
Using sex specific recombination rates along the human genome (Halldorsson et
al. (2019) <doi:10.1126/science.aau1043>), phased chromosomes are simulated for
all pedigree members.  Applications include calculation of realised relatedness
coefficients and IBD segment distributions.  ibdsim2 is part of the ped suite
collection of packages for pedigree analysis.  A detailed presentation of the
ped suite', including a separate chapter on ibdsim2', is available in the book
Pedigree analysis in R (Vigeland, 2021, ISBN:9780128244302).  A shiny app for
visualising and comparing IBD distributions is available at
<https://magnusdv.shinyapps.io/ibdsim2-shiny/>.")
    (license license:gpl3)))

(define-public r-ibdsim
  (package
    (name "r-ibdsim")
    (version "0.9-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBDsim" version))
              (sha256
               (base32
                "1a0xz1khl6cz6ajcn903fcmsv8g7hfdh7684zhk0g6awsgwqdf5q"))))
    (properties `((upstream-name . "IBDsim")))
    (build-system r-build-system)
    (propagated-inputs (list r-paramlink))
    (home-page "https://cran.r-project.org/package=IBDsim")
    (synopsis "Simulation of Chromosomal Regions Shared by Family Members")
    (description
     "Simulation of segments shared identical-by-descent (IBD) by pedigree members.
Using sex specific recombination rates along the human genome (Kong et.  al
(2010) <doi:10.1038/nature09525>), phased chromosomes are simulated for all
pedigree members, either by unconditional gene dropping or conditional on a
specified IBD pattern.  Additional functions provide summaries and further
analysis of the simulated genomes.")
    (license license:gpl2+)))

(define-public r-ibdlabels
  (package
    (name "r-ibdlabels")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBDLabels" version))
              (sha256
               (base32
                "1m9fd058yjxva6hin7i72i2nl285wfm0jkdn5xcng27yqlijyrm9"))))
    (properties `((upstream-name . "IBDLabels")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IBDLabels")
    (synopsis "Convert Between Different IBD-State Labelling Schemes")
    (description
     "Convert \"label\", \"lexicographic\", \"jacquard\" and \"vec\", full state description
vector.  All conversions are done to and from \"label\", as used in IBD_Haplo.
More information regarding IBD_Haplo can be found at
http://www.stat.washington.edu/thompson/Genepi/pangaea.shtml.")
    (license license:gpl3)))

(define-public r-ibd
  (package
    (name "r-ibd")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibd" version))
              (sha256
               (base32
                "0rxvy4hn4fpbv6y214ggkmgfvzwns5mkanp4h8201rjk3v84mk2r"))))
    (properties `((upstream-name . "ibd")))
    (build-system r-build-system)
    (propagated-inputs (list r-multcomp r-lpsolve r-emmeans r-car))
    (home-page "https://cran.r-project.org/package=ibd")
    (synopsis "Incomplete Block Designs")
    (description
     "This package provides a collection of several utility functions related to
binary incomplete block designs.  The package contains function to generate A-
and D-efficient binary incomplete block designs with given numbers of
treatments, number of blocks and block size.  The package also contains function
to generate an incomplete block design with specified concurrence matrix.  There
are functions to generate balanced treatment incomplete block designs and
incomplete block designs for test versus control treatments comparisons with
specified concurrence matrix.  Package also allows performing analysis of
variance of data and computing estimated marginal means of factors from
experiments using a connected incomplete block design.  Tests of hypothesis of
treatment contrasts in incomplete block design set up is supported.")
    (license license:gpl2+)))

(define-public r-ibcf-mtme
  (package
    (name "r-ibcf-mtme")
    (version "1.6-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IBCF.MTME" version))
              (sha256
               (base32
                "1nlfsfdw8lfr3n2717i6kn1hafwr6hmqzfpg249amlrfjn0pghji"))))
    (properties `((upstream-name . "IBCF.MTME")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-lsa r-dplyr))
    (home-page "https://github.com/frahik/IBCF.MTME")
    (synopsis
     "Item Based Collaborative Filtering for Multi-Trait and Multi-Environment Data")
    (description
     "This package implements the item based collaborative filtering (IBCF) method for
continues phenotypes in the context of plant breeding where data are collected
for various traits that were studied in various environments proposed by
Montesinos-LÃ³pez et al. (2017) <doi:10.1534/g3.117.300309>.")
    (license license:lgpl3)))

(define-public r-ibb
  (package
    (name "r-ibb")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibb" version))
              (sha256
               (base32
                "11rfrf0ap97rsq0yy23sjahp1bin3j31zdd61p8b5mbp0s0k7ci4"))))
    (properties `((upstream-name . "ibb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-rlang
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/berkorbay/ibb")
    (synopsis "R Wrapper for Istanbul Municipality Open Data Portal")
    (description
     "Call wrappers for Istanbul Metropolitan Municipality's Open Data Portal
(Turkish: Ä°stanbul BÃ¼yÃ¼kÅehir Belediyesi AÃ§Ä±k Veri PortalÄ±) at
<https://data.ibb.gov.tr/en/>.")
    (license license:expat)))

(define-public r-ibawds
  (package
    (name "r-ibawds")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ibawds" version))
              (sha256
               (base32
                "1w4hm4gn5v7xj3gn54c3r0276c7ic441hn34q3j5qxwmh16af6qy"))))
    (properties `((upstream-name . "ibawds")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-scales
                             r-rlang
                             r-remotes
                             r-magrittr
                             r-ggplot2
                             r-dslabs
                             r-dplyr))
    (home-page "https://stibu81.github.io/ibawds/")
    (synopsis "Functions and Datasets for the Data Science Course at IBAW")
    (description
     "This package provides a collection of useful functions and datasets for the Data
Science Course at IBAW in Lucerne.")
    (license license:expat)))

(define-public r-ibatcgh
  (package
    (name "r-ibatcgh")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iBATCGH" version))
              (sha256
               (base32
                "0xq4q4kc2f0whrxz1vmi2gca9pxqix2qm4sfkwbch85if2k8l8fj"))))
    (properties `((upstream-name . "iBATCGH")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-msm))
    (home-page "http://www.r-project.org")
    (synopsis "Integrative Bayesian Analysis of Transcriptomic and CGH Data")
    (description
     "Bayesian integrative models of gene expression and comparative genomic
hybridization data.  The package provides inference on copy number variations
and their association with gene expression.")
    (license license:gpl2)))

(define-public r-ib
  (package
    (name "r-ib")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ib" version))
              (sha256
               (base32
                "10h3b9ncz59rp8j628axnrl7gksjiyg576672dhcyd3ygd4by7p5"))))
    (properties `((upstream-name . "ib")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-rdpack
                             r-matrix
                             r-mass
                             r-lme4
                             r-formula
                             r-betareg))
    (home-page "https://github.com/SMAC-Group/ib/")
    (synopsis "Bias Correction via Iterative Bootstrap")
    (description
     "An implementation of the iterative bootstrap procedure of Kuk (1995)
<doi:10.1111/j.2517-6161.1995.tb02035.x> to correct the estimation bias of a
fitted model object.  This procedure has better bias correction properties than
the bootstrap bias correction technique.")
    (license license:gpl2+)))

(define-public r-iatscores
  (package
    (name "r-iatscores")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IATscores" version))
              (sha256
               (base32
                "1dmcwkylq6zazjycjsmbxnzvkav19w13j69gnm1f558wsdxpvhx1"))))
    (properties `((upstream-name . "IATscores")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-reshape2 r-qgraph r-dplyr))
    (home-page "https://cran.r-project.org/package=IATscores")
    (synopsis "Implicit Association Test Scores Using Robust Statistics")
    (description
     "Compute several variations of the Implicit Association Test (IAT) scores,
including the D scores (Greenwald, Nosek, Banaji, 2003,
<doi:10.1037/0022-3514.85.2.197>) and the new scores that were developed using
robust statistics (Richetin, Costantini, Perugini, and Schonbrodt, 2015,
<doi:10.1371/journal.pone.0129601>).")
    (license license:gpl2)))

(define-public r-iatscore
  (package
    (name "r-iatscore")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IATScore" version))
              (sha256
               (base32
                "0sg4apj1sp0xc311cbkvflhv9kw1jxvjhdr0xjw79s662mnhkhgz"))))
    (properties `((upstream-name . "IATScore")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IATScore")
    (synopsis "Scoring Algorithm for the Implicit Association Test (IAT)")
    (description
     "This minimalist package is designed to quickly score raw data outputted from an
Implicit Association Test (IAT; Greenwald, McGhee, & Schwartz, 1998)
<doi:10.1037/0022-3514.74.6.1464>.  IAT scores are calculated as specified by
Greenwald, Nosek, and Banaji (2003) <doi:10.1037/0022-3514.85.2.197>.  Outputted
values can be interpreted as effect sizes.  The input function consists of three
arguments.  First, indicate the name of the dataset to be analyzed.  This is the
only required input.  Second, indicate the number of trials in your entire IAT
(the default is set to 219, which is typical for most IATs).  Last, indicate
whether congruent trials (e.g., flowers and pleasant) or incongruent trials
(e.g., guns and pleasant) were presented first for this participant (the default
is set to congruent).  The script will tell you how long it took to run the
code, the effect size for the participant, and whether that participant should
be excluded based on the criteria outlined by Greenwald et al. (2003).  Data
files should consist of six columns organized in order as follows: Block (0-6),
trial (0-19 for training blocks, 0-39 for test blocks), category (dependent on
your IAT), the type of item within that category (dependent on your IAT), a
dummy variable indicating whether the participant was correct or incorrect on
that trial (0=correct, 1=incorrect), and the participantâs reaction time (in
milliseconds).  Three sample datasets are included in this package (labeled
IAT', TooFastIAT', and BriefIAT') to practice with.")
    (license license:expat)))

(define-public r-iatanalytics
  (package
    (name "r-iatanalytics")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IATanalytics" version))
              (sha256
               (base32
                "10g9iscfjmlxrkzls9320h9azpc5fnhh6276p7zn8sxqgp1nvnz9"))))
    (properties `((upstream-name . "IATanalytics")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IATanalytics")
    (synopsis
     "Compute Effect Sizes and Reliability for Implicit Association Test (IAT) Data")
    (description
     "Quickly score raw data outputted from an Implicit Association Test (IAT;
Greenwald, McGhee, & Schwartz, 1998) <doi:10.1037/0022-3514.74.6.1464>.  IAT
scores are calculated as specified by Greenwald, Nosek, and Banaji (2003)
<doi:10.1037/0022-3514.85.2.197>.  The output of this function is a data frame
that consists of four rows containing the following information: (1) the overall
IAT effect size for the participant's dataset, (2) the effect size calculated
for odd trials only, (3) the effect size calculated for even trials only, and
(4) the proportion of trials with reaction times under 300ms (which is important
for exclusion purposes).  Items (2) and (3) allow for a measure of the internal
consistency of the IAT. Specifically, you can use the subsetted IAT effect sizes
for odd and even trials to calculate Cronbach's alpha across participants in the
sample.  The input function consists of three arguments.  First, indicate the
name of the dataset to be analyzed.  This is the only required input.  Second,
indicate the number of trials in your entire IAT (the default is set to 220,
which is typical for most IATs).  Last, indicate whether congruent trials (e.g.,
flowers and pleasant) or incongruent trials (e.g., guns and pleasant) were
presented first for this participant (the default is set to congruent).  Data
files should consist of six columns organized in order as follows: Block (0-6),
trial (0-19 for training blocks, 0-39 for test blocks), category (dependent on
your IAT), the type of item within that category (dependent on your IAT), a
dummy variable indicating whether the participant was correct or incorrect on
that trial (0=correct, 1=incorrect), and the participantâs reaction time (in
milliseconds).  A sample dataset (titled sampledata') is included in this
package to practice with.")
    (license license:expat)))

(define-public r-iat
  (package
    (name "r-iat")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IAT" version))
              (sha256
               (base32
                "110rn2q09gspfd4msyh30dllxdxdraffkr18h1nm72brzhmx9cfi"))))
    (properties `((upstream-name . "IAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-lazyeval r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=IAT")
    (synopsis "Cleaning and Visualizing Implicit Association Test (IAT) Data")
    (description
     "This package implements the standard D-Scoring algorithm (Greenwald, Banaji, &
Nosek, 2003) for Implicit Association Test (IAT) data and includes plotting
capabilities for exploring raw IAT data.")
    (license license:asl2.0)))

(define-public r-iasd
  (package
    (name "r-iasd")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IASD" version))
              (sha256
               (base32
                "1slhd42k639mbyxccl7n69p7ng2qx6pqag8wz3kdwn479spkavzn"))))
    (properties `((upstream-name . "IASD")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=IASD")
    (synopsis "Model Selection for Index of Asymmetry Distribution")
    (description
     "Calculate AIC's and AICc's of unimodal model (one normal distribution) and
bimodal model(a mixture of two normal distributions) which fit the distribution
of indices of asymmetry (IAS), and plot their density, to help determine IAS
distribution is unimodal or bimodal.")
    (license license:gpl2+)))

(define-public r-iarm
  (package
    (name "r-iarm")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iarm" version))
              (sha256
               (base32
                "0ib8b37inq1hdzjm9y9bvk8x1qzn08vkvj3y75gg1swsqxh8w106"))))
    (properties `((upstream-name . "iarm")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcdextra
                             r-psychotools
                             r-hmisc
                             r-gridextra
                             r-ggplot2
                             r-erm))
    (home-page "https://cran.r-project.org/package=iarm")
    (synopsis "Item Analysis in Rasch Models")
    (description
     "Tools to assess model fit and identify misfitting items for Rasch models (RM)
and partial credit models (PCM).  Included are item fit statistics, item
characteristic curves, item-restscore association, conditional likelihood ratio
tests, assessment of measurement error, estimates of the reliability and test
targeting as described in Christensen et al. (Eds.) (2013,
ISBN:978-1-84821-222-0).")
    (license license:gpl2)))

(define-public r-iar
  (package
    (name "r-iar")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iAR" version))
              (sha256
               (base32
                "0svxn81a0yq3m51594zrpy99i8p9zcfjzbxsi19yyfcm6iymzv24"))))
    (properties `((upstream-name . "iAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://github.com/felipeelorrieta")
    (synopsis "Irregularly Observed Autoregressive Models")
    (description
     "Data sets, functions and scripts with examples to implement autoregressive
models for irregularly observed time series.  The models available in this
package are the irregular autoregressive model (Eyheramendy et al.(2018)
<doi:10.1093/mnras/sty2487>), the complex irregular autoregressive model
(Elorrieta et al.(2019) <doi:10.1051/0004-6361/201935560>) and the bivariate
irregular autoregressive model (Elorrieta et al.(2021)
<doi:10.1093/mnras/stab1216>).")
    (license license:gpl2)))

(define-public r-iapws95
  (package
    (name "r-iapws95")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IAPWS95" version))
              (sha256
               (base32
                "0507v9n3cj9fxq29jz7ijcsnaaf1cgdhbza6q4cmvdjl25mrbca0"))))
    (properties `((upstream-name . "IAPWS95")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-pander r-ggplot2))
    (native-inputs (list r-rmarkdown r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=IAPWS95")
    (synopsis "Thermophysical Properties of Water and Steam")
    (description
     "This package provides functions for Water and Steam Properties based on the
International Association for the Properties of Water (IAPWS) Formulation 1995
for the Thermodynamic Properties of Ordinary Water Substance for General and
Scientific Use and on the releases for viscosity, conductivity, surface tension
and melting pressure.")
    (license license:expat)))

(define-public r-iapws
  (package
    (name "r-iapws")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iapws" version))
              (sha256
               (base32
                "115m678kb2bz450pjg8a5jrjj3g2q2cgpyg9cksz3ysm6j5vrb1a"))))
    (properties `((upstream-name . "iapws")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=iapws")
    (synopsis
     "Formulations of the International Association for the Properties of Water and Steam")
    (description
     "Implementation of some of the formulations for the thermodynamic and transport
properties released by the International Association for the Properties of Water
and Steam (IAPWS).  More specifically, the releases R1-76(2014), R5-85(1994),
R6-95(2018), R7-97(2012), R8-97, R9-97, R10-06(2009), R11-07(2019), R12-08,
R15-11, R16-17(2018), R17-20 and R18-21 at <http://iapws.org>.")
    (license license:gpl3+)))

(define-public r-ialiquor
  (package
    (name "r-ialiquor")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ialiquor" version))
              (sha256
               (base32
                "0nrp75lzb49lhkxspvaq6wx5c48ny6fq9m3r1bz0v5f2fd5ilrdx"))))
    (properties `((upstream-name . "ialiquor")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ialiquor")
    (synopsis "Monthly Iowa Liquor Sales Summary")
    (description
     "This package provides a monthly summary of Iowa liquor (class E) sales from
January 2015 to October 2020.  See the package website for more information,
documentation and examples.  Data source: Iowa Data portal
<https://data.iowa.gov/resource/m3tr-qhgy.csv>.")
    (license license:expat)))

(define-public r-iai
  (package
    (name "r-iai")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iai" version))
              (sha256
               (base32
                "0v19bsj3axx5imirfa4v1z3a3yk3wlvxnq7gx2nyiwv2a274jmir"))))
    (properties `((upstream-name . "iai")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-rjson
                             r-rappdirs
                             r-lifecycle
                             r-juliacall
                             r-ggplot2
                             r-cowplot))
    (home-page "https://www.interpretable.ai")
    (synopsis "Interface to 'Interpretable AI' Modules")
    (description
     "An interface to the algorithms of Interpretable AI
<https://www.interpretable.ai> from the R programming language.  Interpretable
AI provides various modules, including Optimal Trees for classification,
regression, prescription and survival analysis, Optimal Imputation for missing
data imputation and outlier detection, and Optimal Feature Selection for exact
sparse regression.  The iai package is an open-source project.  The
Interpretable AI software modules are proprietary products, but free academic
and evaluation licenses are available.")
    (license license:expat)))

(define-public r-iadf
  (package
    (name "r-iadf")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iadf" version))
              (sha256
               (base32
                "18r9qyhicbfrkpqnxnn5i854s0afq4pnbaw2ckw1qrhy3pzys6zp"))))
    (properties `((upstream-name . "iadf")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-manipulate
                             r-dplyr
                             r-dplr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/konradmayer/iadf")
    (synopsis "Analysis of Intra Annual Density Fluctuations")
    (description
     "Calculate false ring proportions from data frames of intra annual density
fluctuations.")
    (license license:gpl3)))

(define-public r-iadapt
  (package
    (name "r-iadapt")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "iAdapt" version))
              (sha256
               (base32
                "050kzacvf19m8s89layqqf0l85db1k4cd3akb16jrv9wjfi9k61v"))))
    (properties `((upstream-name . "iAdapt")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinydashboard r-shiny r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=iAdapt")
    (synopsis "Two-Stage Adaptive Dose-Finding Clinical Trial Design")
    (description
     "Simulate and implement early phase two-stage adaptive dose-finding design for
binary and quasi-continuous toxicity endpoints.  See Chiuzan et al. (2018) for
further reading <DOI:10.1080/19466315.2018.1462727>.")
    (license license:lgpl3)))

(define-public r-iacsspcr
  (package
    (name "r-iacsspcr")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "IAcsSPCR" version))
              (sha256
               (base32
                "0x0h1vicw0jlm9p10cw7g75g2x0d73rjpdwh1j7lxq6cnbpkbxf9"))))
    (properties `((upstream-name . "IAcsSPCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-lattice r-frf2 r-abind))
    (home-page "https://cran.r-project.org/package=IAcsSPCR")
    (synopsis "Data and Functions for \"An Intro. to Accept. Samp. & SPC/R\"")
    (description
     "This package contains data frames and functions used in the book \"An
Introduction to Acceptance Sampling and SPC with R\".  This book is available
electronically at <https://bookdown.org/>.  A physical copy will be published by
CRC Press.")
    (license license:gpl2)))

(define-public r-i2extras
  (package
    (name "r-i2extras")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "i2extras" version))
              (sha256
               (base32
                "14k9s5ppq3c7ldh6gqi82awmkk34ac0br0qr42gqba9lrssf4bsr"))))
    (properties `((upstream-name . "i2extras")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-mass
                             r-incidence2
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-citools))
    (native-inputs (list r-knitr))
    (home-page "https://www.reconverse.org/i2extras/")
    (synopsis "Functions to Work with 'incidence2' Objects")
    (description
     "This package provides functions to work with incidence2 objects, including a
simplified interface for trend fitting and peak estimation.  This package is
part of the RECON (<https://www.repidemicsconsortium.org/>) toolkit for outbreak
analysis (<https://www.reconverse.org/).")
    (license license:expat)))

(define-public r-i2dash
  (package
    (name "r-i2dash")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "i2dash" version))
              (sha256
               (base32
                "0pj4s47nbs67jnnk0dsna59lrn983zzkybbf6hf4s77sikshmwf0"))))
    (properties `((upstream-name . "i2dash")))
    (build-system r-build-system)
    (propagated-inputs (list r-ymlthis
                             r-xfun
                             r-stringr
                             r-stringi
                             r-rmarkdown
                             r-magrittr
                             r-knitr
                             r-htmltools
                             r-glue
                             r-flexdashboard
                             r-assertive-types
                             r-assertive-sets))
    (native-inputs (list r-knitr))
    (home-page "https://loosolab.github.io/i2dash/")
    (synopsis "Iterative and Interactive Dashboards")
    (description
     "Create customized, web-based dashboards for data presentation, exploration and
sharing.  i2dash integrates easily into existing data analysis pipelines and can
organize scientific findings thematically across different pages and layouts.")
    (license license:expat)))

(define-public r-i18n
  (package
    (name "r-i18n")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "i18n" version))
              (sha256
               (base32
                "1ksvrrpymflfbr7acnv3sh4xa0xqjp44ngdpkp500p50mwpww1wr"))))
    (properties `((upstream-name . "i18n")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "https://github.com/rich-iannone/i18n")
    (synopsis
     "Internationalization Data from the 'Unicode CLDR' in Tabular Form")
    (description
     "Up-to-date data from the Unicode CLDR Project (where CLDR stands for Common
Locale Data Repository') are available here as a series of easy-to-parse
datasets.  Several functions are provided for extracting key elements from the
tabular datasets.")
    (license license:expat)))

