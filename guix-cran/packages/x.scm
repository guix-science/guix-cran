(define-module (guix-cran packages x)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages xml)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages julia)
  #:use-module (gnu packages java)
  #:use-module (gnu packages package-management)
  #:use-module (gnu packages python)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages web)
  #:use-module (gnu packages gcc)
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xxIRT" version))
       (sha256
        (base32 "0b8yv8ixmcjiv9hlvpfdknx815smy7df7f2ixifnvhxxafgf1fwq"))))
    (properties `((upstream-name . "xxIRT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
<https://github.com/xluo11/@code{xxIRT>}.")
    (license license:gpl3+)))

(define-public r-xxhashlite
  (package
    (name "r-xxhashlite")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xxhashlite" version))
       (sha256
        (base32 "088cndqrwgqx2yxc6qsfvfqlxw2404ycdajgz9maz15p7h3sjh9z"))))
    (properties `((upstream-name . "xxhashlite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/coolbutuseless/xxhashlite")
    (synopsis
     "Extremely Fast Hashing of R Objects, Raw Data and Files using 'xxHash' Algorithms")
    (description
     "Extremely fast hashing of R objects using @code{xxHash}'.  R objects are hashed
via the standard serialization mechanism in R. Raw byte vectors and strings can
be handled directly for compatibility with hashes created on other systems.
This implementation is a wrapper around the @code{xxHash} C library which is
available from <https://github.com/Cyan4973/@code{xxHash>}.")
    (license license:expat)))

(define-public r-xxdi
  (package
    (name "r-xxdi")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xxdi" version))
       (sha256
        (base32 "1z332i1cyicbwargimma5m6rz1hb3zc2rpzgxcci3z7szjyxn5f8"))))
    (properties `((upstream-name . "xxdi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-matrix r-ggplot2 r-dplyr r-agop))
    (home-page "https://cran.r-project.org/package=xxdi")
    (synopsis "Calculate Expertise Indices")
    (description
     "Institutional performance assessment remains a key challenge to a multitude of
stakeholders.  Existing indicators such as h-type indicators, g-type indicators,
and many others do not reflect expertise of institutions that defines their
research portfolio.  The package offers functionality to compute and visualise
two novel indices: the x-index and the xd-index.  The x-index evaluates an
institution's scholarly expertise within a specific discipline or field, while
the xd-index provides a broader assessment of overall scholarly expertise
considering an institution's publication pattern and strengths across coarse
thematic areas.  These indices offer a nuanced understanding of institutional
research capabilities, aiding stakeholders in research management and resource
allocation decisions.  Lathabai, H.H., Nandy, A., and Singh, V.K. (2021)
<doi:10.1007/s11192-021-04188-3>.  Nandy, A., Lathabai, H.H., and Singh, V.K.
(2023) <doi:10.5281/zenodo.8305585>.  This package provides the h, g, x, and xd
indices for use with standard format of Web of Science (@code{WoS}) scrapped
datasets.")
    (license license:gpl3)))

(define-public r-xwf
  (package
    (name "r-xwf")
    (version "0.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xwf" version))
       (sha256
        (base32 "1byj6vjk2abm9j919107xsa3nd40zbsvxaldvv4ml3c47k1fg3kc"))))
    (properties `((upstream-name . "xwf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mgcv))
    (home-page "https://cran.r-project.org/package=xwf")
    (synopsis "Extrema-Weighted Feature Extraction")
    (description
     "Extrema-weighted feature extraction for varying length functional data.
Functional data analysis method that performs dimensionality reduction based on
predefined features and allows for quantile weighting.  Method implemented as
presented in van den Boom et al. (2018) <doi:10.1093/bioinformatics/bty120>.")
    (license license:expat)))

(define-public r-xvm
  (package
    (name "r-xvm")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xvm" version))
       (sha256
        (base32 "1fb4nvp1s14jqw7ch0pjqw3bk4rh6lh2fvhars7fymzi39yx8y4d"))))
    (properties `((upstream-name . "xvm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-plotly r-ggplot2 r-ggnewscale))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RightSZ/xvm")
    (synopsis
     "Read, Parse and Visualize 'XVG'/'XPM' Files from Molecular Dynamics")
    (description
     "This package provides tools for reading, parsing and visualizing simulation data
stored in xvg'/'xpm file formats (commonly generated by GROMACS molecular
dynamics software).  Streamlines post-processing and analysis of molecular
dynamics ('MD') simulation outputs, enabling efficient exploration of molecular
stability and conformational changes.  Supports import of trajectory metrics
('RMSD', energy, temperature) and creation of publication-ready visualizations
through integration with ggplot2'.")
    (license license:gpl3+)))

(define-public r-xva
  (package
    (name "r-xva")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xVA" version))
       (sha256
        (base32 "07cv88nq21smbkwnbpi7hnvclm9xrw04dvsh4lnra1wp7q58qdwb"))))
    (properties `((upstream-name . "xVA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trading r-saccr r-data-table))
    (home-page "https://openriskcalculator.com/")
    (synopsis "Credit Risk Valuation Adjustments")
    (description
     "Calculates a number of valuation adjustments including CVA, DVA, FBA, FCA, MVA
and KVA. A two-way margin agreement has been implemented.  For the KVA
calculation four regulatory frameworks are supported: CEM, (simplified) SA-CCR,
OEM and IMM. The probability of default is implied through the credit spreads
curve.  The package supports an exposure calculation based on SA-CCR which
includes several trade types and a simulated path which is currently available
only for Interest Rate Swaps.  The latest regulatory capital charge
methodologies have been implementing including BA-CVA & SA-CVA.")
    (license license:gpl3)))

(define-public r-xutils
  (package
    (name "r-xutils")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xutils" version))
       (sha256
        (base32 "1h07gs8pj7hn64r35ld1j1zakc243aiiwdrz92viqrg7z75czdzl"))))
    (properties `((upstream-name . "xutils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fangzhou-xie/xutils")
    (synopsis "Utility Functions of Fangzhou Xie")
    (description
     "This is a collection of some useful functions when dealing with text data.
Currently it only contains a very efficient function of decoding HTML entities
in character vectors by Rcpp routine.")
    (license license:expat)))

(define-public r-xtune
  (package
    (name "r-xtune")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xtune" version))
       (sha256
        (base32 "0k5cf7n84j73cdxzfr7ijjxc65h6lx6fjry81rsxa80fn0sn8qiz"))))
    (properties `((upstream-name . "xtune")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-selectiveinference r-lbfgs r-glmnet r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JingxuanH/xtune")
    (synopsis
     "Regularized Regression with Feature-Specific Penalties Integrating External Information")
    (description
     "Extends standard penalized regression (Lasso, Ridge, and Elastic-net) to allow
feature-specific shrinkage based on external information with the goal of
achieving a better prediction accuracy and variable selection.  Examples of
external information include the grouping of predictors, prior knowledge of
biological importance, external p-values, function annotations, etc.  The choice
of multiple tuning parameters is done using an Empirical Bayes approach.  A
majorization-minimization algorithm is employed for implementation.")
    (license license:expat)))

(define-public r-xtsum
  (package
    (name "r-xtsum")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xtsum" version))
       (sha256
        (base32 "0vq3rm0rwmqyilq7056swlwg2vqq2rpmqsx5apg0imkjq1p26vcb"))))
    (properties `((upstream-name . "xtsum")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sampleselection
                             r-rlang
                             r-plm
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Macosso/xtsum")
    (synopsis "Summary Statistics for Panel Data")
    (description
     "Based on STATA xtsum command, it is used to compute summary statistics for a
panel data set.  It generates overall, between-group, and within-group
statistics for specified variables in a panel data set, as presented in S.
Porter (2023) <https://stephenporter.org/files/xtsum_handout.pdf>,
@code{StataCorp} (2023) <https://www.stata.com/manuals/xtxtsum.pdf>.")
    (license license:gpl3)))

(define-public r-xtranat
  (package
    (name "r-xtranat")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xtranat" version))
       (sha256
        (base32 "1gv0kc1gj305iwwhv7wrfrh45rqwaks696q6q39a55m2vxw11xl1"))))
    (properties `((upstream-name . "xtranat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fdepaolis/xtranat")
    (synopsis "Network Metrics Based on Random Walks")
    (description
     "There are two new network metrics, RWC (random walk centrality) and CBET
(counting betweenness).  Also available are the normalized versions of those
metrics.  These measures of centrality and betweenness are particularly useful
for the analysis of very dense weighted networks which include loops.
Traditional measures do not work as well for those network characteristics.  The
main reference is @code{DePaolis} at al (2022) <doi:10.1007/s41109-022-00519-2>.")
    (license license:gpl3)))

(define-public r-xtdml
  (package
    (name "r-xtdml")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xtdml" version))
       (sha256
        (base32 "1rk7wawwdk20wnzzf7kclav9nawrba6ykz4vgxcm8vmniqsqvwdi"))))
    (properties `((upstream-name . "xtdml")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readstata13
                             r-r6
                             r-mvtnorm
                             r-mlr3tuning
                             r-mlr3misc
                             r-mlr3learners
                             r-mlr3
                             r-mlmetrics
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-clustergeneration
                             r-checkmate))
    (home-page "https://cran.r-project.org/package=xtdml")
    (synopsis
     "Double Machine Learning for Static Panel Models with Fixed Effects")
    (description
     "The xtdml package implements partially linear panel regression (PLPR) models
with high-dimensional confounding variables and an exogenous treatment variable
within the double machine learning framework.  The package is used to estimate
the structural parameter (treatment effect) in static panel data models with
fixed effects using the approaches established in Clarke and Polselli (2025)
<doi:10.1093/ectj/utaf011>.  xtdml is built on the object-oriented package
@code{DoubleML} (Bach et al., 2024) <doi:10.18637/jss.v108.i03> using the mlr3
ecosystem.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-xsub
  (package
    (name "r-xsub")
    (version "3.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xSub" version))
       (sha256
        (base32 "07mib63zbvffr4w8klpv017d13wvqy3mwrpssr0vydcj8475gjfx"))))
    (properties `((upstream-name . "xSub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcurl r-haven r-countrycode))
    (home-page "https://github.com/zhukovyuri/xSub")
    (synopsis "Cross-National Data on Sub-National Violence")
    (description
     "This package provides tools to download and merge data files on sub-national
conflict, violence and protests from <http://www.x-sub.org>.")
    (license license:gpl3)))

(define-public r-xsp
  (package
    (name "r-xsp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xsp" version))
       (sha256
        (base32 "1jbmxa234v52qji8sz4bkg24c2n65b0zh9py1wyyfzw9n1wx5w0r"))))
    (properties `((upstream-name . "xsp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xslt" version))
       (sha256
        (base32 "157zmv3m3fyfn2li0bf9y7f2gv44ylvz2kg0dngp235sirvaza4a"))))
    (properties `((upstream-name . "xslt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib libxml2))
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
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XRSCC" version))
       (sha256
        (base32 "14qh2rpnv0iynj9wn0n00ykax9y7yphyy3097xl9jgk7xw5j0h8y"))))
    (properties `((upstream-name . "XRSCC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=XRSCC")
    (synopsis "Statistical Quality Control Simulation")
    (description
     "This is a set of statistical quality control functions, that allows plotting
control charts and its iterations, process capability for variable and attribute
control, highlighting the @code{xrs_gr()} function, like a first iteration for
variable chart, meanwhile the @code{we_rules()} function detects non random
patterns in sample.")
    (license license:gpl2+)))

(define-public r-xrpython
  (package
    (name "r-xrpython")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XRPython" version))
       (sha256
        (base32 "0alg33spiaqf3jwg1qn543nxvbfaqv8gvf5px3grhbgrcmi5mcmj"))))
    (properties `((upstream-name . "XRPython")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xr r-reticulate))
    (home-page "https://cran.r-project.org/package=XRPython")
    (synopsis "Structured Interface to 'Python'")
    (description
     "This package provides a Python interface structured according to the general
form described in package XR and in the book \"Extending R\".")
    (license license:gpl2+)))

(define-public r-xrnet
  (package
    (name "r-xrnet")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xrnet" version))
       (sha256
        (base32 "04zcpxzam4avsc8qxvd5ssjxzg07xf2wjx90y6df4df2dpm7sr6i"))))
    (properties `((upstream-name . "xrnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.9.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XRJulia" version))
       (sha256
        (base32 "0mm9cv2nsgkrpjv0kb5vzfy1aszdyawk7mdinv4gby78bdvvl0k5"))))
    (properties `((upstream-name . "XRJulia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xRing" version))
       (sha256
        (base32 "0msjw3bkn4fjdjvd1kq22qv7yybg6fynvaim1b4ap6p44d6hxzrz"))))
    (properties `((upstream-name . "xRing")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tkrplotr r-imager r-dplr))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xrf" version))
       (sha256
        (base32 "0917chdkl6b20fdbwwj5b6wyihn9p444anwjspd0zqxmp8ag0i5f"))))
    (properties `((upstream-name . "xrf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-rlang
                             r-matrix
                             r-glmnet
                             r-fuzzyjoin
                             r-dplyr))
    (home-page "https://github.com/holub008/xrf")
    (synopsis "eXtreme RuleFit")
    (description
     "An implementation of the @code{RuleFit} algorithm as described in Friedman &
Popescu (2008) <doi:10.1214/07-AOAS148>. @code{eXtreme} Gradient Boosting
('XGBoost') is used to build rules, and glmnet is used to fit a sparse linear
model on the raw and rule features.  The result is a model that learns similarly
to a tree ensemble, while often offering improved interpretability and achieving
improved scoring runtime in live applications.  Several algorithms for reducing
rule complexity are provided, most notably hyperrectangle de-overlapping.  All
algorithms scale to several million rows and support sparse representations to
handle tens of thousands of dimensions.")
    (license license:expat)))

(define-public r-xray
  (package
    (name "r-xray")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xray" version))
       (sha256
        (base32 "1ibj92ljlj8a5rmbrci691yhpd4kwrfyl944nzl2dcbf58l01dzq"))))
    (properties `((upstream-name . "xray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-lubridate r-ggplot2 r-foreach r-dplyr))
    (home-page "https://github.com/sicarul/xray/")
    (synopsis "X Ray Vision on your Datasets")
    (description
     "This package provides tools to analyze datasets previous to any statistical
modeling.  Has various functions designed to find inconsistencies and
understanding the distribution of the data.")
    (license license:expat)))

(define-public r-xr
  (package
    (name "r-xr")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XR" version))
       (sha256
        (base32 "0j8rkjw9y7mb0yj24nlisfd84148pnnakz8i2y35y2b8gmh5zhvz"))))
    (properties `((upstream-name . "XR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (home-page "https://cran.r-project.org/package=XR")
    (synopsis "Structure for Interfaces from R")
    (description
     "Support for interfaces from R to other languages, built around a class for
evaluators and a combination of functions, classes and methods for
communication.  Will be used through a specific language interface package.
Described in the book \"Extending R\".")
    (license license:gpl2+)))

(define-public r-xptr
  (package
    (name "r-xptr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xptr" version))
       (sha256
        (base32 "1f2cv5xl7xh91im9axmafy81zxs7bm06hm5ifymhy7k9xp98y29v"))))
    (properties `((upstream-name . "xptr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/eddelbuettel/xptr/")
    (synopsis "Manipulating External Pointers")
    (description
     "There is limited native support for external pointers in the R interface.  This
package provides some basic tools to verify, create and modify externalptr
objects.")
    (license license:expat)))

(define-public r-xpose-xtras
  (package
    (name "r-xpose-xtras")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xpose.xtras" version))
       (sha256
        (base32 "0dkrbhgb8sd23bkagxxmm40xzsrdl9wvjzh9cqwa7ag7svswgxn3"))))
    (properties `((upstream-name . "xpose.xtras")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xpose
                             r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-pmxcv
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-ggplot2
                             r-ggally
                             r-forcats
                             r-dplyr
                             r-conflicted
                             r-colorspace
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://jprybylski.github.io/xpose.xtras/")
    (synopsis "Extra Functionality for the 'xpose' Package")
    (description
     "Adding some at-present missing functionality, or functions unlikely to be added
to the base xpose package.  This includes some diagnostic plots that have been
missing in translation from xpose4', but also some useful features that truly
extend the capabilities of what can be done with xpose'.  These extensions
include the concept of a set of xpose objects, and diagnostics for
likelihood-based models.")
    (license license:expat)))

(define-public r-xpose-nlmixr2
  (package
    (name "r-xpose-nlmixr2")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xpose.nlmixr2" version))
       (sha256
        (base32 "0a9asdq9d5g39bhb75ks698izbgs6x1npsq53b7kznl40kpcjc2a"))))
    (properties `((upstream-name . "xpose.nlmixr2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.4.21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xpose" version))
       (sha256
        (base32 "0zm2j1agppvkxr38j0d94jsngbwsw4bc21pn6zzvcs8syl95h186"))))
    (properties `((upstream-name . "xpose")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xportr" version))
       (sha256
        (base32 "1dxi42813bxlpbd11gqyrm41v8qs772hkpg7y3gkrgvpmca4pf4w"))))
    (properties `((upstream-name . "xportr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-haven
                             r-glue
                             r-dplyr
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://atorus-research.github.io/xportr/")
    (synopsis "Utilities to Output CDISC SDTM/ADaM XPT Files")
    (description
     "This package provides tools to build CDISC compliant data sets and check for
CDISC compliance.")
    (license license:expat)))

(define-public r-xplortext
  (package
    (name "r-xplortext")
    (version "1.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Xplortext" version))
       (sha256
        (base32 "0j7a603c5240fc16fmjyzrgjgrxay0mn1bam7ikwfw7g0bmah4s0"))))
    (properties `((upstream-name . "Xplortext")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-tm
                             r-stringr
                             r-stringi
                             r-slam
                             r-plotly
                             r-patchwork
                             r-mass
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-ggforce
                             r-ggdendro
                             r-flexclust
                             r-flashclust
                             r-factominer
                             r-dendextend
                             r-cluster
                             r-ape))
    (home-page "https://xplortext.unileon.es")
    (synopsis "Statistical Analysis of Textual Data")
    (description
     "This package provides a set of functions devoted to multivariate exploratory
statistics on textual data.  Classical methods such as correspondence analysis
and agglomerative hierarchical clustering are available.  Chronologically
constrained agglomerative hierarchical clustering enriched with
labelled-by-words trees is offered.  Given a division of the corpus into parts,
their characteristic words and documents are identified.  Further, accessing to
@code{FactoMineR} functions is very easy.  Two of them are relevant in textual
domain. @code{MFA()} addresses multiple lexical table allowing applications such
as dealing with multilingual corpora as well as simultaneously analyzing both
open-ended and closed questions in surveys.  See <http://xplortext.unileon.es>
for examples.")
    (license license:gpl2+)))

(define-public r-xplorerr
  (package
    (name "r-xplorerr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xplorerr" version))
       (sha256
        (base32 "0qff0ng5grigwq0185s7dl4k4xzfwwry9ssad3bd6nnvrnpggs29"))))
    (properties `((upstream-name . "xplorerr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rcpp))
    (home-page "https://github.com/rsquaredacademy/xplorerr")
    (synopsis "Tools for Interactive Data Exploration")
    (description
     "This package provides tools for interactive data exploration built using shiny'.
 Includes apps for descriptive statistics, visualizing probability
distributions, inferential statistics, linear regression, logistic regression
and RFM analysis.")
    (license license:expat)))

(define-public r-xplain
  (package
    (name "r-xplain")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xplain" version))
       (sha256
        (base32 "152a83ckmhns6yniy87mmjva5bkv5x3phv63l1kkcmrr9bclfgz0"))))
    (properties `((upstream-name . "xplain")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xpectr" version))
       (sha256
        (base32 "0bmj4qlpaiyilhphswvh22jz6cws81qpjhq0nb60450jy65asf5h"))))
    (properties `((upstream-name . "xpectr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xpect
  (package
    (name "r-xpect")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xpect" version))
       (sha256
        (base32 "0gyg7gdx4ziv9py6l146sh8vy0q677jra93fwj5s6ki8jp0x1nk7"))))
    (properties `((upstream-name . "xpect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-scales
                             r-rbayesianoptimization
                             r-purrr
                             r-normalp
                             r-lubridate
                             r-glogis
                             r-gld
                             r-ggplot2
                             r-generalizedhyperbolic
                             r-future
                             r-furrr
                             r-evd
                             r-edfun
                             r-cubature
                             r-ald))
    (home-page "https://rpubs.com/giancarlo_vercellino/xpect")
    (synopsis
     "Probabilistic Time Series Forecasting with XGBoost and Conformal Inference")
    (description
     "This package implements a probabilistic approach to time series forecasting
combining XGBoost regression with conformal inference methods.  The package
provides functionality for generating predictive distributions, evaluating
uncertainty, and optimizing hyperparameters using Bayesian, coarse-to-fine, or
random search strategies.")
    (license license:gpl3)))

(define-public r-xoi
  (package
    (name "r-xoi")
    (version "0.72")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xoi" version))
       (sha256
        (base32 "0q1q43540qz97qad36dcwmcmgdci3sbhxk9li897gnjv9gjazdlr"))))
    (properties `((upstream-name . "xoi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xnet" version))
       (sha256
        (base32 "18lda1gv53awsbkk5p4bzrbilndgybdz8xc6lhl6wy647fw9q9hv"))))
    (properties `((upstream-name . "xnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmrr" version))
       (sha256
        (base32 "1kb4kzxb9rcx9fp1answln0sv9c3wdrk82gz79k0i9ypq7dls2ah"))))
    (properties `((upstream-name . "xmrr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmpdf" version))
       (sha256
        (base32 "0pma8njk77ggpky6m4l9p7n7ardy41lsn0q67wkgr0mwgjjyil7w"))))
    (properties `((upstream-name . "xmpdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rlang
                             r-r6
                             r-purrr
                             r-jsonlite
                             r-datetimeoffset
                             r-brio))
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
    (license license:expat)))

(define-public r-xmlwriter
  (package
    (name "r-xmlwriter")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmlwriter" version))
       (sha256
        (base32 "1gk74blg5ghnhk51lj3q6m5vzzpl19m5zqy1bg0lz6ibivzvy9mg"))))
    (properties `((upstream-name . "xmlwriter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://edwindj.github.io/xmlwriter/")
    (synopsis "Fast and Elegant XML Generation")
    (description
     "This package provides a fast and elegant interface for generating XML fragments
and documents.  It can be used in companion with R packages XML or xml2 to
generate XML documents.  The fast XML generation is implemented using the Rcpp
package.")
    (license license:expat)))

(define-public r-xmlrpc2
  (package
    (name "r-xmlrpc2")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmlrpc2" version))
       (sha256
        (base32 "0adrq6r5kp3cx4mnpsa1dzaznj843fkmzch2z4j5l592x9zzywad"))))
    (properties `((upstream-name . "xmlrpc2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmlr" version))
       (sha256
        (base32 "00mxdb4899sx5py0ngzh3dvhz1sqsar2hmsrkm4jf0b3q9psc86w"))))
    (properties `((upstream-name . "xmlr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmlconvert" version))
       (sha256
        (base32 "0vj5ar61i94if141jzqk7jq091mb2xwzl0x86dj7ddk8y3c1w9dv"))))
    (properties `((upstream-name . "xmlconvert")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xml2relational" version))
       (sha256
        (base32 "05nykrmwqa43f9h6wpk6m1spmqr22r0ffiki4hp3jsyw8k7i78hv"))))
    (properties `((upstream-name . "xml2relational")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XML2R" version))
       (sha256
        (base32 "0q01hc7iil3hx5dvmrhpz3bw6a7lwhv2dm97p0a3gkjp3lvd33iv"))))
    (properties `((upstream-name . "XML2R")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-plyr r-httr))
    (home-page "https://github.com/cpsievert/XML2R")
    (synopsis "Easier XML Data Collection")
    (description
     "Helpers for transforming XML content into number of tables while preserving
parent to child relationships.")
    (license license:gpl2+)))

(define-public r-xmeta
  (package
    (name "r-xmeta")
    (version "1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmeta" version))
       (sha256
        (base32 "0g4hbhxgap055shhwp3173lc9r774vnkbc06ggjg55a1f7dh469p"))))
    (properties `((upstream-name . "xmeta")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xmap
  (package
    (name "r-xmap")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xmap" version))
       (sha256
        (base32 "0jq9amaw3fi8vjn48m3hrmk17zr3kzy0qsahndmi14nabsybh0ck"))))
    (properties `((upstream-name . "xmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-pillar
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cynthiahqy/xmap")
    (synopsis "Transforming Data Between Statistical Classifications")
    (description
     "This package provides support for transformations of numeric aggregates between
statistical classifications (e.g. occupation or industry categorisations) using
the Crossmaps framework.  Implements classes for representing transformations
between a source and target classification as graph structures, and methods for
validating and applying crossmaps to transform data collected under the source
classification into data indexed using the target classification codes.
Documentation about the Crossmaps framework is provided in the included
vignettes and in Huang (2024, <doi:10.48550/@code{arXiv.2406.14163>}).")
    (license license:expat)))

(define-public r-xlsxjars
  (package
    (name "r-xlsxjars")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlsxjars" version))
       (sha256
        (base32 "1h7bxqiz8ajpnrkalhkq1jyjbqsm98lajg0m802vcy5gkwz0jh28"))))
    (properties `((upstream-name . "xlsxjars")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (home-page "https://cran.r-project.org/package=xlsxjars")
    (synopsis "Package Required POI Jars for the xlsx Package")
    (description
     "The xlsxjars package collects all the external jars required for the xlxs
package.  This release corresponds to POI 3.13.")
    (license license:gpl3)))

(define-public r-xlsx2dfs
  (package
    (name "r-xlsx2dfs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlsx2dfs" version))
       (sha256
        (base32 "0bdawr80grks91sy221d33fsk75g20zh3wjg6gvd0zj0m1zvvwvd"))))
    (properties `((upstream-name . "xlsx2dfs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlsx" version))
       (sha256
        (base32 "01r1ngdm51w18bdan8h94r91m731knkf04zal4g67mx3fpa5x31p"))))
    (properties `((upstream-name . "xlsx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-xlsxjars r-rjava))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/colearendt/xlsx")
    (synopsis "Read, Write, Format Excel 2007 and Excel 97/2000/XP/2003 Files")
    (description
     "Provide R functions to read/write/format Excel 2007 and Excel 97/2000/XP/2003
file formats.")
    (license license:gpl3)))

(define-public r-xlsform2word
  (package
    (name "r-xlsform2word")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlsform2word" version))
       (sha256
        (base32 "16ycqk38p79a58isjn2m717vd3xr24mi0f25kmj2m1glpvbg4mny"))))
    (properties `((upstream-name . "xlsform2word")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-rlang r-readxl r-officer r-dplyr))
    (home-page "https://cran.r-project.org/package=xlsform2word")
    (synopsis "Convert 'XLSForm' to Structured 'Word' Document")
    (description
     "Converts an XLSForm (survey in Excel') into a well-structured Word document,
including sections, skip logic, options, and question labels.  Designed to
support survey documentation, training materials, and data collection workflows.
 The package was developed based on field experience with XLSForm and
humanitarian operations, aiming to streamline documentation and enhance training
efficiency.")
    (license license:expat)))

(define-public r-xls
  (package
    (name "r-xls")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XLS" version))
       (sha256
        (base32 "0a4jbfz9x9rn4k5v7qh3r9p7pal4piqg01469237lkq00m3lijy5"))))
    (properties `((upstream-name . "XLS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xlr
  (package
    (name "r-xlr")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlr" version))
       (sha256
        (base32 "1l7j0v26d3wr22dbnxw6n8qlkib7xzfk3lmbfc3d0jcvsph9gyn1"))))
    (properties `((upstream-name . "xlr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-pillar
                             r-openxlsx
                             r-haven
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://nhilder.github.io/xlr/")
    (synopsis "Create Table Summaries and Export Neat Tables to 'Excel'")
    (description
     "This package provides a high-level interface for creating and exporting summary
tables to Excel'.  Built on dplyr and openxlsx', it provides tools for
generating one-way to n-way tables, and summarizing multiple response questions
and question blocks.  Tables are exported with native Excel formatting,
including titles, footnotes, and basic styling options.")
    (license license:gpl3+)))

(define-public r-xlcutter
  (package
    (name "r-xlcutter")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlcutter" version))
       (sha256
        (base32 "07gjsz8jab5f2c1v7rcfv9pva8hikdl94nzvixvg6v0a7sq7qa6h"))))
    (properties `((upstream-name . "xlcutter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyxl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Bisaloo/xlcutter")
    (synopsis "Parse Batches of 'xlsx' Files Based on a Template")
    (description
     "Parse entire folders of non-rectangular xlsx files into a single rectangular and
tidy data.frame based on a custom template file defining the column names of the
output.")
    (license license:expat)))

(define-public r-xlconnect
  (package
    (name "r-xlconnect")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XLConnect" version))
       (sha256
        (base32 "1c9x04rzrn514rsradmgs7wrz4kznd0by3pi6775ifin55lrsr0l"))))
    (properties `((upstream-name . "XLConnect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (home-page "https://cran.r-project.org/package=XLConnect")
    (synopsis "Excel Connector for R")
    (description
     "This package provides comprehensive functionality to read, write and format
Excel data.")
    (license license:gpl3)))

(define-public r-xlcharts
  (package
    (name "r-xlcharts")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xlcharts" version))
       (sha256
        (base32 "0kh6d0b6wlsf41dc5pbb9yns416svx8a7ls3vh1dq4hrsaxw9wjh"))))
    (properties `((upstream-name . "xlcharts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list python conda))
    (propagated-inputs (list r-writexl r-reticulate))
    (home-page "https://felixluginbuhl.com/xlcharts/")
    (synopsis
     "Create Native 'Excel' Charts and Work with Microsoft 'Excel' Files")
    (description
     "An R interface to the @code{OpenPyXL} Python library to create native Excel
charts and work with Microsoft Excel files.")
    (license license:expat)))

(define-public r-xkcddata
  (package
    (name "r-xkcddata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XKCDdata" version))
       (sha256
        (base32 "1lx9frlbc549qrh4d3m79r3l9icfzqkgfgp8raa8x46a2havi0a5"))))
    (properties `((upstream-name . "XKCDdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xkcdcolors" version))
       (sha256
        (base32 "07fnjv01r3b951dqca2zs9b9f6hsgbpbpsrggvb8rps53kpid0i7"))))
    (properties `((upstream-name . "xkcdcolors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fnn))
    (home-page "https://cran.r-project.org/package=xkcdcolors")
    (synopsis "Color Names from the XKCD Color Survey")
    (description
     "The XKCD color survey asked participants to name colours.  Randall Munroe
published the top thousand(roughly) names and their @code{sRGB} hex values.
This package lets you use them.")
    (license license:expat)))

(define-public r-ximple
  (package
    (name "r-ximple")
    (version "0.11-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XiMpLe" version))
       (sha256
        (base32 "1hpy1yls4hhlbf2hjyfjqrxcrcpbakk4irqzl795rarzm790hgfq"))))
    (properties `((upstream-name . "XiMpLe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XICOR" version))
       (sha256
        (base32 "0c9s0sriiasbdanmijgy41gvpwf8hlqy34avalvimyll7y206v1r"))))
    (properties `((upstream-name . "XICOR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-psychtools))
    (home-page "https://cran.r-project.org/package=XICOR")
    (synopsis "Association Measurement Through Cross Rank Increments")
    (description
     "Computes robust association measures that do not presuppose linearity.  The xi
correlation (xicor) is based on cross correlation between ranked increments.
The reference for the methods implemented here is Chatterjee, Sourav (2020)
<@code{arXiv:1909.10140>} This package includes the Galton peas example.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-xhaz
  (package
    (name "r-xhaz")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xhaz" version))
       (sha256
        (base32 "0d91afvjrwgwf5h1p2z6q15psf3n9hvshb75jyxvyxnhq8c5darw"))))
    (properties `((upstream-name . "xhaz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-survexp-fr
                             r-stringr
                             r-statmod
                             r-optimparallel
                             r-numderiv
                             r-mexhaz
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
be used.  The user can also fit a model that relaxes the proportional expected
hazards assumption considered in the Touraine et al.  excess hazard model.  This
extension was proposed by Mba et al. (2020) <doi:10.1186/s12874-020-01139-z> to
allow non-proportional effects of the additional variable on the general
population mortality.  In non-population-based studies, researchers can identify
non-comparability source of bias in terms of expected mortality of selected
individuals.  An excess hazard model correcting this selection bias is presented
in Goungounga et al. (2019) <doi:10.1186/s12874-019-0747-3>.  This class of
model with a random effect at the cluster level on excess hazard is presented in
Goungounga et al. (2023) <doi:10.1002/bimj.202100210>.")
    (license license:agpl3+)))

(define-public r-xgxr
  (package
    (name "r-xgxr")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xgxr" version))
       (sha256
        (base32 "0mmnh6zab7qllbfpl3vn5sd7hcznm83v5rxi1pw5zv96ax0ikagv"))))
    (properties `((upstream-name . "xgxr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xgrove
  (package
    (name "r-xgrove")
    (version "0.1-15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xgrove" version))
       (sha256
        (base32 "0hd5jy10wp5d3jcgh15ns4zbvp8qak3cf1pda84d4m5c1khrnfjm"))))
    (properties `((upstream-name . "xgrove")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart-plot r-rpart r-ggplot2 r-gbm r-dplyr))
    (home-page "https://cran.r-project.org/package=xgrove")
    (synopsis "Explanation Groves")
    (description
     "Compute surrogate explanation groves for predictive machine learning models and
analyze complexity vs. explanatory power of an explanation according to
Szepannek, G. and von Holt, B. (2023) <doi:10.1007/s41237-023-00205-2>.")
    (license license:gpl2+)))

(define-public r-xgb2sql
  (package
    (name "r-xgb2sql")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xgb2sql" version))
       (sha256
        (base32 "1gw5dw0ck5hip8mv347zaswrggk395bg2hgn02bvqs0d31jhmgvi"))))
    (properties `((upstream-name . "xgb2sql")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xesreadR" version))
       (sha256
        (base32 "1pvdx0mxg2f885bhy4hb3kqzcgva4q7hzzaipkfzyi5lnjdsbc81"))))
    (properties `((upstream-name . "xesreadR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
     "Read and write XES Files to create event log objects used by the @code{bupaR}
framework.  XES (Extensible Event Stream) is the `IEEE` standard for storing and
sharing event data (see
<http://standards.ieee.org/findstds/standard/1849-2016.html> for more info).")
    (license license:expat)))

(define-public r-xergm-common
  (package
    (name "r-xergm-common")
    (version "1.7.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xergm.common" version))
       (sha256
        (base32 "03mjpafwfkmyj5ba84jydap9rp0i602izjlbd511xbxcw6dx2k0b"))))
    (properties `((upstream-name . "xergm.common")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-network r-ergm))
    (home-page "http://github.com/leifeld/xergm.common")
    (synopsis
     "Common Infrastructure for Extensions of Exponential Random Graph Models")
    (description
     "Datasets and definitions of generic functions used in dependencies of the xergm
package.")
    (license license:gpl2+)))

(define-public r-xegaselectgene
  (package
    (name "r-xegaselectgene")
    (version "1.0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaSelectGene" version))
       (sha256
        (base32 "0wlfhy5ylxzbagggnzws8810lwx92db2b21f8di56yr888zaix2x"))))
    (properties `((upstream-name . "xegaSelectGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/ageyerschulz/xegaSelectGene")
    (synopsis
     "Selection of Genes and Gene Representation Independent Functions")
    (description
     "This collection of gene representation-independent mechanisms for evolutionary
and genetic algorithms contains four groups of functions: First, functions for
selecting a gene in a population of genes according to its fitness value and for
adaptive scaling of the fitness values as well as for performance optimization
and measurement offer several variants for implementing the survival of the
fittest.  Second, evaluation functions for deterministic functions avoid
recomputation.  Evaluation of stochastic functions incrementally improve the
estimation of the mean and variance of fitness values at almost no additional
cost.  Evaluation functions for gene repair handle error-correcting decoders.
Third, timing and counting functions for profiling the algorithm pipeline are
provided to assess bottlenecks in the algorithms.  Fourth, a small collection of
problem environments for function optimization, combinatorial optimization, and
grammar-based genetic programming and grammatical evolution is provided for
tutorial examples.  The methods in the package are described by the following
references: Baker, James E. (1987, ISBN:978-08058-0158-8), De Jong, Kenneth A.
(1975) <https://deepblue.lib.umich.edu/handle/2027.42/4507>, Geyer-Schulz,
Andreas (1997, ISBN:978-3-7908-0830-X), Grefenstette, John J. (1987,
ISBN:978-08058-0158-8), Grefenstette, John J. and Baker, James E. (1989,
ISBN:1-55860-066-3), Holland, John (1975, ISBN:0-472-08460-7), Lau, H. T. (1986)
<doi:10.1007/978-3-642-61649-5>, Price, Kenneth V., Storn, Rainer M. and
Lampinen, Jouni A. (2005) <doi:10.1007/3-540-31306-0>, Reynolds, J. C. (1993)
<doi:10.1007/BF01019459>, Schaffer, J. David (1989, ISBN:1-55860-066-3),
Wenstop, Fred (1980) <doi:10.1016/0165-0114(80)90031-7>, Whitley, Darrell (1989,
ISBN:1-55860-066-3), Wickham, Hadley (2019, ISBN:978-815384571).")
    (license license:expat)))

(define-public r-xegapopulation
  (package
    (name "r-xegapopulation")
    (version "1.0.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaPopulation" version))
       (sha256
        (base32 "11x0c81c3af6j9pfrlx1k72j7zsc3ncggsl4jmp1wjzjprrrgjyk"))))
    (properties `((upstream-name . "xegaPopulation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene r-xegagagene r-future-apply))
    (home-page "https://github.com/ageyerschulz/xegaPopulation")
    (synopsis "Genetic Population Level Functions")
    (description
     "This collection of gene representation-independent functions implements the
population layer of extended evolutionary and genetic algorithms and its
support.  The population layer consists of functions for initializing, logging,
observing, evaluating a population of genes, as well as of computing the next
population.  For parallel evaluation of a population of genes 4 execution models
- named Sequential, @code{MultiCore}, @code{FutureApply}, and Cluster - are
provided.  They are implemented by configuring the @code{lapply()} function.
The execution model @code{FutureApply} can be externally configured as
recommended by Bengtsson (2021) <doi:10.32614/RJ-2021-048>.  Configurable
acceptance rules and cooling schedules (see Kirkpatrick, S., Gelatt, C. D. J,
and Vecchi, M. P. (1983) <doi:10.1126/science.220.4598.671>, and Aarts, E., and
Korst, J. (1989, ISBN:0-471-92146-7) offer simulated annealing or greedy
randomized approximate search procedure elements.  Adaptive crossover and
mutation rates depending on population statistics generalize the approach of
Stanhope, S. A. and Daida, J. M. (1996, ISBN:0-18-201-031-7).")
    (license license:expat)))

(define-public r-xegapermgene
  (package
    (name "r-xegapermgene")
    (version "1.0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaPermGene" version))
       (sha256
        (base32 "1c8fpjz8292f1cf744y32zdd53pmi74igh7sjxw9dccvxyy421yf"))))
    (properties `((upstream-name . "xegaPermGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene))
    (home-page "https://github.com/ageyerschulz/xegaPermGene")
    (synopsis "Operations on Permutation Genes")
    (description
     "An implementation of representation-dependent gene level operations for genetic
algorithms with genes representing permutations: Initialization of genes,
mutation, and crossover.  The crossover operation provided is position-based
crossover (Syswerda, G., Chap.  21 in Davis, L. (1991, ISBN:0-442-00173-8).  For
mutation, several variants are included: Order-based mutation (Syswerda, G.,
Chap.  21 in Davis, L. (1991, ISBN:0-442-00173-8), randomized Lin-Kernighan
heuristics (Croes, G. A. (1958) <doi:10.1287/opre.6.6.791> and Lin, S. and
Kernighan.  B. W. (1973) <doi:10.1287/opre.21.2.498>), and randomized greedy
operators.  A random mix operator for mutation selects a mutation variant
randomly.")
    (license license:expat)))

(define-public r-xegagpgene
  (package
    (name "r-xegagpgene")
    (version "1.0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaGpGene" version))
       (sha256
        (base32 "1dy0hz546dr6rkif4b7s8zms35s53sg87fxvq8gz1nbazm06ydjd"))))
    (properties `((upstream-name . "xegaGpGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene r-xegaderivationtrees r-xegabnf))
    (home-page "https://github.com/ageyerschulz/xegaGpGene")
    (synopsis "Genetic Operations for Grammar-Based Genetic Programming")
    (description
     "An implementation of the representation-dependent gene level operations of
grammar-based genetic programming with genes which are derivation trees of a
context-free grammar: Initialization of a gene with a complete random derivation
tree, decoding of a derivation tree.  Crossover is implemented by exchanging
subtrees.  Depth-bounds for the minimal and the maximal depth of the roots of
the subtrees exchanged by crossover can be set.  Mutation is implemented by
replacing a subtree by a random subtree.  The depth of the random subtree and
the insertion node are configurable.  For details, see Geyer-Schulz (1997,
ISBN:978-3-7908-0830-X).")
    (license license:expat)))

(define-public r-xegagegene
  (package
    (name "r-xegagegene")
    (version "1.0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaGeGene" version))
       (sha256
        (base32 "0b2bnpzsi1bi8gwvc4k91y37vah377cb77vz7jsn4x5sg5f1pgs9"))))
    (properties `((upstream-name . "xegaGeGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene r-xegaderivationtrees r-xegabnf
                             r-numbers))
    (home-page "https://github.com/ageyerschulz/xegaGeGene")
    (synopsis "Grammatical Evolution")
    (description
     "Grammatical evolution (see O'Neil, M. and Ryan, C. (2003,ISBN:1-4020-7444-1))
uses decoders to convert linear (binary or integer genes) into programs.  In
addition, automatic determination of codon precision with a limited rule choice
bias is provided.  For a recent survey of grammatical evolution, see Ryan, C.,
O'Neill, M., and Collins, J. J. (2018) <doi:10.1007/978-3-319-78717-6>.")
    (license license:expat)))

(define-public r-xegagagene
  (package
    (name "r-xegagagene")
    (version "1.0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaGaGene" version))
       (sha256
        (base32 "0dwhzz8jlj9cl1dljpi7c4d9q62kh9wpygbmc5gsf7kv2sdhzb4j"))))
    (properties `((upstream-name . "xegaGaGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene r-rlang))
    (home-page "https://github.com/ageyerschulz/xegaGaGene")
    (synopsis "Binary Gene Operations for Genetic Algorithms")
    (description
     "Representation-dependent gene level operations of a genetic algorithm with
binary coded genes: Initialization of random binary genes, several gene maps for
binary genes, several mutation operators, several crossover operators with 1 and
2 kids, replication pipelines for 1 and 2 kids, and, last but not least,
function factories for configuration.  See Goldberg, D. E. (1989,
ISBN:0-201-15767-5).  For crossover operators, see Syswerda, G. (1989,
ISBN:1-55860-066-3), Spears, W. and De Jong, K. (1991, ISBN:1-55860-208-9).  For
mutation operators, see Stanhope, S. A. and Daida, J. M. (1996,
ISBN:0-18-201-031-7).")
    (license license:expat)))

(define-public r-xegadfgene
  (package
    (name "r-xegadfgene")
    (version "1.0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaDfGene" version))
       (sha256
        (base32 "1l5gzqfnh6vmaidc2wd5z82b55v4xdrkgbfcj0niwb3ysc6506pd"))))
    (properties `((upstream-name . "xegaDfGene")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene r-rlang))
    (home-page "https://github.com/ageyerschulz/xegaDfGene")
    (synopsis "Gene Operations for Real-Coded Genes")
    (description
     "Representation-dependent gene-level operations for genetic and evolutionary
algorithms with real-coded genes are collected in this package.  The common
feature of the gene operations is that all of them are useful for
derivation-free optimization algorithms.  At the moment the package implements
initialization, mutation, crossover, and replication operations for differential
evolution as described in Price, Kenneth V., Storn, Rainer M. and Lampinen,
Jouni A. (2005) <doi:10.1007/3-540-31306-0>.  In addition, several (more recent)
methods for determining the scale factor are provided.")
    (license license:expat)))

(define-public r-xegaderivationtrees
  (package
    (name "r-xegaderivationtrees")
    (version "1.0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaDerivationTrees" version))
       (sha256
        (base32 "16q38r33c57cp3cnbdvm994719x3x23vza0pshk25a10i1pvfmzd"))))
    (properties `((upstream-name . "xegaDerivationTrees")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegabnf))
    (home-page "https://github.com/ageyerschulz/xegaDerivationTrees")
    (synopsis "Generating and Manipulating Derivation Trees")
    (description
     "Derivation tree operations are needed for implementing grammar-based genetic
programming and grammatical evolution: Generating a random derivation trees of a
context-free grammar of bounded depth, decoding a derivation tree, choosing a
random node in a derivation tree, extracting a tree whose root is a specified
node, and inserting a subtree into a derivation tree at a specified node.  These
operations are necessary for the initialization and for decoders of a random
population of programs, as well as for implementing crossover and mutation
operators.  Depth-bounds are guaranteed by switching to a grammar without
recursive production rules.  For executing the examples, the package BNF is
needed.  The basic tree operations for generating, extracting, and inserting
derivation trees as well as the conditions for guaranteeing complete derivation
trees have been presented in Geyer-Schulz (1997, ISBN:978-3-7908-0830-X).  The
use of random integer vectors for the generation of derivation trees has been
introduced in Ryan, C., Collins, J. J., and O'Neill, M. (1998)
<doi:10.1007/BFb0055930> for grammatical evolution.")
    (license license:expat)))

(define-public r-xegabnf
  (package
    (name "r-xegabnf")
    (version "1.0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xegaBNF" version))
       (sha256
        (base32 "1hdf9rsliiy8447ai98k3anlb44an58rny97qcqqndyigryppfk3"))))
    (properties `((upstream-name . "xegaBNF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/ageyerschulz/xegaBNF")
    (synopsis
     "Compile a Backus-Naur Form Specification into an R Grammar Object")
    (description
     "Translates a BNF (Backus-Naur Form) specification of a context-free language
into an R grammar object which consists of the start symbol, the symbol table,
the production table, and a short production table.  The short production table
is non-recursive.  The grammar object contains the file name from which it was
generated (without a path).  In addition, it provides functions to determine the
type of a symbol @code{(isTerminal()} and @code{isNonterminal()}) and functions
to access the production table @code{(rules()} and @code{derives()}).  For the
BNF specification, see Backus, John et al. (1962) \"Revised Report on the
Algorithmic Language ALGOL 60\". (ALGOL60 standards page
<http://www.algol60.org/2standards.htm>, html-edition
<https://www.masswerk.at/algol60/report.htm>) A preprocessor for macros which
expand to standard BNF is included.  The grammar compiler is an extension of the
APL2 implementation in Geyer-Schulz, Andreas (1997, ISBN:978-3-7908-0830-X).")
    (license license:expat)))

(define-public r-xega
  (package
    (name "r-xega")
    (version "0.9.0.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xega" version))
       (sha256
        (base32 "0gskl50nn7pbk6wndn76q37vm0d4lzc4iy3hz0p0v27jydrs72vv"))))
    (properties `((upstream-name . "xega")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xegaselectgene
                             r-xegapopulation
                             r-xegapermgene
                             r-xegagpgene
                             r-xegagegene
                             r-xegagagene
                             r-xegadfgene
                             r-xegaderivationtrees
                             r-xegabnf
                             r-parallelly
                             r-filelock))
    (home-page "https://github.com/ageyerschulz/xega")
    (synopsis "Extended Evolutionary and Genetic Algorithms")
    (description
     "Implementation of a scalable, highly configurable, and e(x)tended architecture
for (e)volutionary and (g)enetic (a)lgorithms.  Multiple representations
(binary, real-coded, permutation, and derivation-tree), a rich collection of
genetic operators, as well as an extended processing pipeline are provided for
genetic algorithms (Goldberg, D. E. (1989, ISBN:0-201-15767-5)), differential
evolution (Price, Kenneth V., Storn, Rainer M. and Lampinen, Jouni A. (2005)
<doi:10.1007/3-540-31306-0>), simulated annealing (Aarts, E., and Korst, J.
(1989, ISBN:0-471-92146-7)), grammar-based genetic programming (Geyer-Schulz
(1997, ISBN:978-3-7908-0830-X)), grammatical evolution (Ryan, C., O'Neill, M.,
and Collins, J. J. (2018) <doi:10.1007/978-3-319-78717-6>), and grammatical
differential evolution (O'Neill, M. and Brabazon, A. (2006) in Arabinia, H.
(2006, ISBN:978-193-241596-3).  All algorithms reuse basic adaptive mechanisms
for performance optimization.  Sequential or parallel execution (on multi-core
machines, local clusters, and high-performance computing environments) is
available for all algorithms.  See
<https://github.com/ageyerschulz/xega/tree/main/examples/@code{executionModel>}.")
    (license license:expat)))

(define-public r-xefun
  (package
    (name "r-xefun")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xefun" version))
       (sha256
        (base32 "0rzd9xi5hxxbydzg67h17zb1q9qmw1y9790vy04k6kj444apxc2j"))))
    (properties `((upstream-name . "xefun")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/ShichenXie/xefun")
    (synopsis "X-Engineering or Supporting Functions")
    (description
     "Miscellaneous functions used for x-engineering (feature engineering) or for
supporting in other packages maintained by Shichen Xie'.")
    (license license:expat)))

(define-public r-xdvir
  (package
    (name "r-xdvir")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xdvir" version))
       (sha256
        (base32 "1j9db94kr4ywgj8ja380xbdl1ll9bql47j2zpcnxpmz3xm0n71wm"))))
    (properties `((upstream-name . "xdvir")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list freetype))
    (propagated-inputs (list r-tinytex r-systemfonts r-rlang r-hexview))
    (native-inputs (list pkg-config r-knitr))
    (home-page
     "https://stattech.wordpress.fos.auckland.ac.nz/2025/03/06/2025-01-latex-typesetting-in-r/")
    (synopsis "Render 'LaTeX' in Plots")
    (description
     "High-level functions to render @code{LaTeX} fragments in plots, including as
labels and data symbols in ggplot2 plots, plus low-level functions to author
@code{LaTeX} fragments (to produce @code{LaTeX} documents), typeset @code{LaTeX}
documents (to produce DVI files), read DVI files (to produce \"DVI\" objects), and
render \"DVI\" objects.")
    (license license:gpl3)))

(define-public r-xdnuts
  (package
    (name "r-xdnuts")
    (version "1.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "XDNUTS" version))
       (sha256
        (base32 "0rzi9aydwngxz8d7rvnwjx7hq6qmnirc0sgv3m0vz2ww7pdp78q3"))))
    (properties `((upstream-name . "XDNUTS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=XDNUTS")
    (synopsis
     "Discontinuous Hamiltonian Monte Carlo with Varying Trajectory Length")
    (description
     "Hamiltonian Monte Carlo for both continuous and discontinuous posterior
distributions with a customizable trajectory length termination criterion.  See
Nishimura et al. (2020) <doi:10.1093/biomet/asz083> for the original
Discontinuous Hamiltonian Monte Carlo; Hoffman et al. (2014)
<doi:10.48550/@code{arXiv.1111.4246>} and Betancourt (2016)
<doi:10.48550/@code{arXiv.1601.00225>} for the definition of possible
Hamiltonian Monte Carlo termination criteria.")
    (license license:expat)))

(define-public r-xdcclarge
  (package
    (name "r-xdcclarge")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xdcclarge" version))
       (sha256
        (base32 "1j8wsidwmfjygqlwavxinv4bqc6rddy42jdmlknsjfrrs49yj8kn"))))
    (properties `((upstream-name . "xdcclarge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xcertainty
  (package
    (name "r-xcertainty")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Xcertainty" version))
       (sha256
        (base32 "1qflwsigxxy0gljqa6vjr1i4gqznf7pa9j4jp6irrazx39ixp043"))))
    (properties `((upstream-name . "Xcertainty")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-nimble r-dplyr r-coda))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/MMI-CODEX/Xcertainty")
    (synopsis
     "Estimating Lengths and Uncertainty from Photogrammetric Imagery")
    (description
     "Implementation of Bayesian models for estimating object lengths and
morphological relationships between object lengths using photographic data
collected from drones.  The Bayesian model is described in \"Bayesian approach
for predicting photogrammetric uncertainty in morphometric measurements derived
from drones\" (Bierlich et al., 2021, <doi:10.3354/meps13814>).")
    (license license:expat)))

(define-public r-xaringanthemer
  (package
    (name "r-xaringanthemer")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xaringanthemer" version))
       (sha256
        (base32 "0pivim1p8vj42qj7k83az6q21npm33bnyp3hhbzavnyvkn95n2s3"))))
    (properties `((upstream-name . "xaringanthemer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-whisker r-purrr r-glue r-colorspace))
    (native-inputs (list r-knitr))
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
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xaringanExtra" version))
       (sha256
        (base32 "1w5j5lhp7vckx4pj2xy4q5kyw7yhdxfqnawl5ipbxj6cbsxq7js5"))))
    (properties `((upstream-name . "xaringanExtra")))
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
    (version "0.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xaringan" version))
       (sha256
        (base32 "1gv2p52yilyrzq4jc9fs3bdhrv18achvi7psrrag4x5bzajybw9r"))))
    (properties `((upstream-name . "xaringan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xfun r-servr r-rmarkdown r-knitr r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yihui/xaringan")
    (synopsis "Presentation Ninja")
    (description
     "Create HTML5 slides with R Markdown and the @code{JavaScript} library remark.js
(<https://remarkjs.com>).")
    (license license:expat)))

(define-public r-xadmix
  (package
    (name "r-xadmix")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xadmix" version))
       (sha256
        (base32 "0vrk40q9nn40aisvgj3pq9q6z5kb68j614wpg7bx98fx3gqnxzxv"))))
    (properties `((upstream-name . "xadmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-xactonomial
  (package
    (name "r-xactonomial")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "xactonomial" version))
       (sha256
        (base32 "1gjyg8fbm0n48hhlsvdw2p8y6w0nm6b785xrnapblrra2vc4g17y"))))
    (properties `((upstream-name . "xactonomial")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (native-inputs (list r-knitr))
    (home-page "https://sachsmc.github.io/xactonomial/")
    (synopsis "Inference for Functions of Multinomial Parameters")
    (description
     "We consider the problem where we observe k vectors (possibly of different
lengths), each representing an independent multinomial random vector.  For a
given function that takes in the concatenated vector of multinomial
probabilities and outputs a real number, this is a Monte Carlo estimation
procedure of an exact p-value and confidence interval.  The resulting inference
is valid even in small samples, when the parameter is on the boundary, and when
the function is not differentiable at the parameter value, all situations where
asymptotic methods and the bootstrap would fail.  For more details see Sachs,
Fay, and Gabriel (2025) <doi:10.48550/@code{arXiv.2406.19141>}.")
    (license license:expat)))

(define-public r-x3ptools
  (package
    (name "r-x3ptools")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "x3ptools" version))
       (sha256
        (base32 "1gl7bpbkww98c8khcyjbydsfg55fa08wcsxf5f0jk1i49ap2q1ii"))))
    (properties `((upstream-name . "x3ptools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xml2
                             r-tidyr
                             r-scales
                             r-rgl
                             r-readr
                             r-purrr
                             r-pracma
                             r-png
                             r-mass
                             r-magrittr
                             r-imager
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
    (version "1.1.61.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "x13binary" version))
       (sha256
        (base32 "1dgax6rpjc9sprpqjwr5y5r1xlzkf43m77bpji0850z69wlirq4x"))))
    (properties `((upstream-name . "x13binary")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "x12" version))
       (sha256
        (base32 "0f0bbnnv4wbrx6c90rg8s284mh8i3mfcfpbwscv0xviaa7fvlsm6"))))
    (properties `((upstream-name . "x12")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

