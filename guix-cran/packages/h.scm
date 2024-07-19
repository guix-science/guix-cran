(define-module (guix-cran packages h)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages web)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages bash)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages java)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages sqlite)
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
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-hytest
  (package
    (name "r-hytest")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hytest" version))
       (sha256
        (base32 "0zqbfra2ynnk7xhqbisrbjycydz4f91m6aljyym67iv0lpizdrwi"))))
    (properties `((upstream-name . "hytest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hytest")
    (synopsis
     "Hypothesis Testing Based on Neyman-Pearson Lemma and Likelihood Ratio Test")
    (description
     "Error type I and Optimal critical values to test statistical hypothesis based on
Neyman-Pearson Lemma and Likelihood ratio test based on random samples from
several distributions.  The families of distributions are Bernoulli,
Exponential, Geometric, Normal, Gamma, Lognormal, and Poisson.  This package is
an ideal resource to help with the teaching of Statistics.  The main references
for this package are Casella G. and Berger R. (2003,ISBN:0-534-24312-6 ,
\"Statistical Inference.  Second Edition\", Duxbury Press) and Hogg, R.,
@code{McKean}, J., and Craig, A. (2019,ISBN:013468699, \"Introduction to
Mathematical Statistic.  Eighth edition\", Pearson).")
    (license license:gpl3)))

(define-public r-hystreet
  (package
    (name "r-hystreet")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hystReet" version))
       (sha256
        (base32 "1vrby9lgy0nm5wa5r1y3k3l2s9fc8vdf4szy8isvnzayr464xvwi"))))
    (properties `((upstream-name . "hystReet")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JohannesFriedrich/hystReet")
    (synopsis "Get Pedestrian Frequency Data from the 'Hystreet' Project")
    (description
     "An R API wrapper for the Hystreet project <https://hystreet.com>.  Hystreet
provides pedestrian counts in different cities in Germany.")
    (license license:gpl2)))

(define-public r-hysteresis
  (package
    (name "r-hysteresis")
    (version "2.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hysteresis" version))
       (sha256
        (base32 "0jn8glihvnf6l6gf91cisqi4h1iscp7qqvchkbcvz0mv8cvklmg8"))))
    (properties `((upstream-name . "hysteresis")))
    (build-system r-build-system)
    (propagated-inputs (list r-msm r-mass r-car))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hysteresis")
    (synopsis
     "Tools for Modeling Rate-Dependent Hysteretic Processes and Ellipses")
    (description
     "Fit, summarize and plot sinusoidal hysteretic processes using: two-step simple
harmonic least squares, ellipse-specific non-linear least squares, the direct
method, geometric least squares or linear least squares.  See Yang, F and A.
Parkhurst, \"Efficient Estimation of Elliptical Hysteresis with Application to
the Characterization of Heat Stress\" <DOI:10.1007/s13253-015-0213-6>.")
    (license license:gpl2+)))

(define-public r-hystar
  (package
    (name "r-hystar")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hystar" version))
       (sha256
        (base32 "1gyk78nfhhglry2dwy21h9s2hqlqisd7cffwg2864spmwml4brcf"))))
    (properties `((upstream-name . "hystar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/daandejongen/hystar/")
    (synopsis "Fit the Hysteretic Threshold Autoregressive Model")
    (description
     "Estimate parameters of the hysteretic threshold autoregressive (@code{HysTAR})
model, using conditional least squares.  In addition, you can generate time
series data from the @code{HysTAR} model.  For details, see Li, Guan, Li and Yu
(2015) <doi:10.1093/biomet/asv017>.")
    (license license:expat)))

(define-public r-hyspc-testthat
  (package
    (name "r-hyspc-testthat")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hySpc.testthat" version))
       (sha256
        (base32 "12za828sw2al3aa236ksmnwxpy2sqw8gl8b3p3vvrjk1l31l1qcm"))))
    (properties `((upstream-name . "hySpc.testthat")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat))
    (home-page "https://cran.r-project.org/package=hySpc.testthat")
    (synopsis "'testthat' Unit Test Enhancements")
    (description
     "Enhance package testthat by allowing tests to be attached to the function/object
they test.  This allows to keep functional and unit test code together.")
    (license license:expat)))

(define-public r-hysaint
  (package
    (name "r-hysaint")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hySAINT" version))
       (sha256
        (base32 "1mmw0k63rci7w19livfv7mnsrqjwk0cc51wlyn58ksnf9bbqphch"))))
    (properties `((upstream-name . "hySAINT")))
    (build-system r-build-system)
    (propagated-inputs (list r-variablescreening
                             r-sis
                             r-selectiveinference
                             r-pracma
                             r-matrix
                             r-energy))
    (home-page "https://cran.r-project.org/package=hySAINT")
    (synopsis
     "Hybrid Genetic and Simulated Annealing Algorithm for High Dimensional Linear Models with Interaction Effects")
    (description
     "We provide a stage-wise selection method using genetic algorithms, designed to
efficiently identify main and two-way interactions within high-dimensional
linear regression models.  Additionally, it implements simulated annealing
algorithm during the mutation process.  The relevant paper can be found at: Ye,
C.,and Yang,Y. (2019) <doi:10.1109/TIT.2019.2913417>.")
    (license license:gpl2)))

(define-public r-hyrim
  (package
    (name "r-hyrim")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HyRiM" version))
       (sha256
        (base32 "02hb8kl02872xvyhg0k19xavcmhqmf0ddfnxx5nxlpzgzb432csd"))))
    (properties `((upstream-name . "HyRiM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rglpk r-purrr r-polynom r-grimport2 r-compare))
    (home-page "https://cran.r-project.org/package=HyRiM")
    (synopsis
     "Multicriteria Risk Management using Zero-Sum Games with Vector-Valued Payoffs that are Probability Distributions")
    (description
     "Construction and analysis of multivalued zero-sum matrix games over the abstract
space of probability distributions, which describe the losses in each scenario
of defense vs. attack action.  The distributions can be compiled directly from
expert opinions or other empirical data (insofar available).  The package
implements the methods put forth in the EU project @code{HyRiM} (Hybrid Risk
Management for Utility Networks), FP7 EU Project Number 608090.  The method has
been published in Rass, S., KÃ¶nig, S., Schauer, S., 2016.  Decisions with
Uncertain Consequences-A Total Ordering on Loss-Distributions.  P@code{LoS} ONE
11, e0168583. <doi:10.1371/journal.pone.0168583>, and applied for advanced
persistent thread modeling in Rass, S., KÃ¶nig, S., Schauer, S., 2017.
Defending Against Advanced Persistent Threats Using Game-Theory.  P@code{LoS}
ONE 12, e0168675. <doi:10.1371/journal.pone.0168675>.  A volume covering the
wider range of aspects of risk management, partially based on the theory
implemented in the package is the book edited by S. Rass and S. Schauer, 2018.
Game Theory for Security and Risk Management: From Theory to Practice.
Springer, <doi:10.1007/978-3-319-75268-6>, ISBN 978-3-319-75267-9.")
    (license license:gpl3)))

(define-public r-hypsoloop
  (package
    (name "r-hypsoloop")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypsoLoop" version))
       (sha256
        (base32 "0kwxzw2r406li2pmby92a3jik4k3z1vdgs54m4q45a8r8vz3y1nn"))))
    (properties `((upstream-name . "hypsoLoop")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-stars
                             r-sjplot
                             r-sf
                             r-polynomf
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hypsoLoop")
    (synopsis "Tool Used to Conduct Hypsometric Analysis of a Watershed")
    (description
     "This package provides functions for generating tables required for drawing and
calculating hypsometric curves and hypsometric integrals.  These functions
accept as input the DEM of the region of interest (your watershed) and a spatial
data frame file specifying delineation of sub-catchments within the watershed.
They then generate output in the form of PNG images and HTML files contained in
a folder named \"HYPSO_OUTPUT\" created in the current directory.  S. K. Sharma,
S. Gajbhiye, et al. (2018) <doi:10.1007/978-981-10-5801-1_19>.  Omvir Singh, A.
Sarangi, and Milap C. Sharma (2006) <doi:10.1007/s11269-008-9242-z>.  James A.
Vanderwaal and Herbert Ssegane (2013) <doi:10.1111/jawr.12089>.")
    (license license:gpl3)))

(define-public r-hypr
  (package
    (name "r-hypr")
    (version "0.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypr" version))
       (sha256
        (base32 "1l5vfjifnnf711wr3n9zprf78jkq7s2pjvw3vz47jr3234glsrjx"))))
    (properties `((upstream-name . "hypr")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-matrix r-mass r-magrittr r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://maxrabe.com/hypr")
    (synopsis "Hypothesis Matrix Translation")
    (description
     "Translation between experimental null hypotheses, hypothesis matrices, and
contrast matrices as used in linear regression models.  The package is based on
the method described in Schad et al. (2019) <doi:10.1016/j.jml.2019.104038> and
Rabe et al. (2020) <doi:10.21105/joss.02134>.")
    (license license:gpl3)))

(define-public r-hypothesisr
  (package
    (name "r-hypothesisr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypothesisr" version))
       (sha256
        (base32 "0z06risagphhvqiw4lrxy52q6q2yr10w2yxsm8iz1wh9ik097pcv"))))
    (properties `((upstream-name . "hypothesisr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/mdlincoln/hypothesisr")
    (synopsis "Wrapper for the 'Hypothes.is' Web Annotation Service")
    (description
     "Interact with the application programming interface for the web annotation
service Hypothes.is (See <http://hypothes.is> for more information.) Allows
users to download data about public annotations, and create, retrieve, update,
and delete their own annotations.")
    (license license:expat)))

(define-public r-hypothesis
  (package
    (name "r-hypothesis")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypothesis" version))
       (sha256
        (base32 "0mllh8lamls0rrbr9d12xa7a56pa2zahvr243kbfmhad81nalpl7"))))
    (properties `((upstream-name . "hypothesis")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-htmlwidgets
                             r-htmltools
                             r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hypothesis")
    (synopsis "Wrapper for 'hypothes.is'")
    (description
     "Add, share and manage annotations for Shiny applications and R Markdown
documents via hypothes.is'.")
    (license license:expat)))

(define-public r-hyporf
  (package
    (name "r-hyporf")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypoRF" version))
       (sha256
        (base32 "1yyq1pjxm9p395wq4zfimvcagspl8vlk0kzpa92pr084q5f7jcyr"))))
    (properties `((upstream-name . "hypoRF")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger))
    (home-page "https://cran.r-project.org/package=hypoRF")
    (synopsis "Random Forest Two-Sample Tests")
    (description
     "An implementation of Random Forest-based two-sample tests as introduced in
Hediger & Michel & Naef (2020) <@code{arXiv:1903.06287>}.")
    (license license:gpl3)))

(define-public r-hypetools
  (package
    (name "r-hypetools")
    (version "1.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HYPEtools" version))
       (sha256
        (base32 "0g6gb3ig3qrqi9p8i35lxdgcz92ibjg2qdldnl1b3j1b6assza71"))))
    (properties `((upstream-name . "HYPEtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-pbapply
                             r-patchwork
                             r-ncdf4
                             r-lubridate
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-colorspace
                             r-clipr))
    (native-inputs (list r-knitr))
    (home-page "https://hypeweb.smhi.se/")
    (synopsis
     "Tools for Processing and Analyzing Files from the Hydrological Catchment Model HYPE")
    (description
     "Work with model files (setup, input, output) from the hydrological catchment
model HYPE: Streamlined file import and export, standard evaluation plot
routines, diverse post-processing and aggregation routines for hydrological
model analysis.")
    (license license:lgpl3)))

(define-public r-hypervolume
  (package
    (name "r-hypervolume")
    (version "3.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypervolume" version))
       (sha256
        (base32 "1vw9s85gr1mv7c21x7rk66bz7wg3nfy874ixrhbcksyrxjq82q3c"))))
    (properties `((upstream-name . "hypervolume")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-sp
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-purrr
                             r-progress
                             r-pdist
                             r-pbapply
                             r-palmerpenguins
                             r-mvtnorm
                             r-mass
                             r-maps
                             r-ks
                             r-hitandrun
                             r-ggplot2
                             r-geometry
                             r-foreach
                             r-fastcluster
                             r-e1071
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bblonder/hypervolume")
    (synopsis
     "High Dimensional Geometry, Set Operations, Projection, and Inference Using Kernel Density Estimation, Support Vector Machines, and Convex Hulls")
    (description
     "Estimates the shape and volume of high-dimensional datasets and performs set
operations: intersection / overlap, union, unique components, inclusion test,
and hole detection.  Uses stochastic geometry approach to high-dimensional
kernel density estimation, support vector machine delineation, and convex hull
generation.  Applications include modeling trait and niche hypervolumes and
species distribution modeling.")
    (license license:gpl3)))

(define-public r-hyperspec
  (package
    (name "r-hyperspec")
    (version "0.100.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyperSpec" version))
       (sha256
        (base32 "0g4lc26prwpb7qsk4q0rzhzz7lw9x4hfrnsbzikwv3na6lqkhkip"))))
    (properties `((upstream-name . "hyperSpec")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-testthat
                             r-rlang
                             r-lazyeval
                             r-latticeextra
                             r-lattice
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://r-hyperspec.github.io/hyperSpec/")
    (synopsis
     "Work with Hyperspectral Data, i.e. Spectra + Meta Information (Spatial, Time, Concentration, ...)")
    (description
     "Comfortable ways to work with hyperspectral data sets.  I.e.  spatially or
time-resolved spectra, or spectra with any other kind of information associated
with each of the spectra.  The spectra can be data as obtained in XRF, UV/VIS,
Fluorescence, AES, NIR, IR, Raman, NMR, MS, etc.  More generally, any data that
is recorded over a discretized variable, e.g. absorbance = f(wavelength), stored
as a vector of absorbance values for discrete wavelengths is suitable.")
    (license license:gpl3+)))

(define-public r-hypersampleplan
  (package
    (name "r-hypersampleplan")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypersampleplan" version))
       (sha256
        (base32 "1sk3s1jm46ac4i7p433s3kyngj86kq2821zzhp30a3y8vi1j2psq"))))
    (properties `((upstream-name . "hypersampleplan")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hypersampleplan")
    (synopsis
     "Attribute Sampling Plan with Exact Hypergeometric Probabilities using Chebyshev Polynomials")
    (description
     "This package implements an algorithm for efficient and exact calculation of
hypergeometric and binomial probabilities using Chebyshev polynomials, while
other algorithm use an approximation when N is large.  A useful applications is
also considered in this package for the construction of attribute sampling plans
which is an important field of statistical quality control.  The quantile, and
the confidence limit for the attribute sampling plan are also implemented in
this package.  The hypergeometric distribution can be represented in terms of
Chebyshev polynomials.  This representation is particularly useful in the
calculation of exact values of hypergeometric variables.")
    (license license:gpl2)))

(define-public r-hyperoverlap
  (package
    (name "r-hyperoverlap")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyperoverlap" version))
       (sha256
        (base32 "10kcphn5zl1pl70xg9bn947i9mbnjxk03p6y7xhdlv152cihffw0"))))
    (properties `((upstream-name . "hyperoverlap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-misc3d
                             r-matlib
                             r-mass
                             r-ggplot2
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hyperoverlap")
    (synopsis "Overlap Detection in n-Dimensional Space")
    (description
     "Uses support vector machines to identify a perfectly separating hyperplane
(linear or curvilinear) between two entities in high-dimensional space.  If this
plane exists, the entities do not overlap.  Applications include overlap
detection in morphological, resource or environmental dimensions.  More details
can be found in: Brown et al. (2020) <doi:10.1111/2041-210X.13363> .")
    (license license:gpl3)))

(define-public r-hypergate
  (package
    (name "r-hypergate")
    (version "0.8.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypergate" version))
       (sha256
        (base32 "10lhjj8sgjv9p6v0n93f1jgybvgb1yr92slrqjdphag4clqvygw0"))))
    (properties `((upstream-name . "hypergate")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hypergate")
    (synopsis
     "Machine Learning of Hyperrectangular Gating Strategies for High-Dimensional Cytometry")
    (description
     "Given a high-dimensional dataset that typically represents a cytometry dataset,
and a subset of the datapoints, this algorithm outputs an hyperrectangle so that
datapoints within the hyperrectangle best correspond to the specified subset.
In essence, this allows the conversion of clustering algorithms outputs to
gating strategies outputs.")
    (license license:gpl3)))

(define-public r-hyperg
  (package
    (name "r-hyperg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HyperG" version))
       (sha256
        (base32 "0w84ph0vd03i22s8g52jf2w96yd80ynbh6x0p88apg92jdsapcrc"))))
    (properties `((upstream-name . "HyperG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-proxy
                             r-mclust
                             r-matrix
                             r-igraph
                             r-gtools))
    (home-page "https://cran.r-project.org/package=HyperG")
    (synopsis "Hypergraphs in R")
    (description
     "This package implements various tools for storing and analyzing hypergraphs.
Handles basic undirected, unweighted hypergraphs, and various ways of creating
hypergraphs from a number of representations, and converting between graphs and
hypergraphs.")
    (license license:gpl2+)))

(define-public r-hypercube
  (package
    (name "r-hypercube")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hypercube" version))
       (sha256
        (base32 "0m0n64rl5fnhvhfdknrza8a0h5lw8vbgakaqbyfx77ixhwqhjn1l"))))
    (properties `((upstream-name . "hypercube")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-plotly r-dplyr))
    (home-page "https://cran.r-project.org/package=hypercube")
    (synopsis "Organizing Data in Hypercubes")
    (description
     "This package provides functions and methods for organizing data in hypercubes
(i.e., a multi-dimensional cube).  Cubes are generated from molten data frames.
Each cube can be manipulated with five operations: rotation
(change.@code{dimensionOrder}()), dicing and slicing (add.selection(),
remove.selection()), drilling down (add.aggregation()), and rolling up
(remove.aggregation()).")
    (license license:gpl3)))

(define-public r-hyperbolicdist
  (package
    (name "r-hyperbolicdist")
    (version "0.6-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HyperbolicDist" version))
       (sha256
        (base32 "10bcqychdc3rrdyqng5sxjbr8a6wljwnqa4gff99dmx8774sdw16"))))
    (properties `((upstream-name . "HyperbolicDist")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis "The Hyperbolic Distribution")
    (description
     "Maintenance has been discontinued for this package.  It has been superseded by
@code{GeneralizedHyperbolic}'. @code{GeneralizedHyperbolic} includes all the
functionality of @code{HyperbolicDist} and more and is based on a more rational
design. @code{HyperbolicDist} provides functions for the hyperbolic and related
distributions.  Density, distribution and quantile functions and random number
generation are provided for the hyperbolic distribution, the generalized
hyperbolic distribution, the generalized inverse Gaussian distribution and the
skew-Laplace distribution.  Additional functionality is provided for the
hyperbolic distribution, including fitting of the hyperbolic to data.")
    (license license:gpl2+)))

(define-public r-hyperbolicdea
  (package
    (name "r-hyperbolicdea")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyperbolicDEA" version))
       (sha256
        (base32 "05iqbkg3id7ysfmandan416mczzc76qq6kz5lm7s9444a6101agf"))))
    (properties `((upstream-name . "hyperbolicDEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr
                             r-lpsolveapi
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-benchmarking))
    (home-page "https://cran.r-project.org/package=hyperbolicDEA")
    (synopsis "Hyperbolic DEA Estimation")
    (description
     "This package implements Data Envelopment Analysis (DEA) with a hyperbolic
orientation using a non-linear programming solver.  It enables flexible
estimations with weight restrictions, non-discretionary variables, and a
generalized distance function.  Additionally, it allows for the calculation of
slacks and super-efficiency scores.  The methods are detailed in Ãttl et al.
(2023), <doi:10.1016/j.dajour.2023.100343>.  Furthermore, the package provides a
non-linear profitability estimation built upon the DEA framework.")
    (license license:expat)))

(define-public r-hyper2
  (package
    (name "r-hyper2")
    (version "3.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyper2" version))
       (sha256
        (base32 "11bn7rhadisb46ls6ph9xbixz9zygd4ivjn3hgbv6059l2f2v0i0"))))
    (properties `((upstream-name . "hyper2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpp
                             r-partitions
                             r-magrittr
                             r-frab
                             r-disordr
                             r-cubature
                             r-calibrator
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/hyper2")
    (synopsis "The Hyperdirichlet Distribution, Mark 2")
    (description
     "This package provides a suite of routines for the hyperdirichlet distribution
and reified Bradley-Terry; supersedes the hyperdirichlet package; uses
@code{disordR} discipline <doi:10.48550/ARXIV.2210.03856>.  To cite in
publications please use Hankin 2017 <doi:10.32614/rj-2017-061>, and for
Generalized Plackett-Luce likelihoods use Hankin 2024
<doi:10.18637/jss.v109.i08>.")
    (license license:gpl2+)))

(define-public r-hyper-fit
  (package
    (name "r-hyper-fit")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyper.fit" version))
       (sha256
        (base32 "1w6ra4sqdvzcyhsiyi3lgzy9m4ca3898qjdssdfgmarkrc13bk3n"))))
    (properties `((upstream-name . "hyper.fit")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-mass r-magicaxis r-laplacesdemon))
    (home-page "https://cran.r-project.org/package=hyper.fit")
    (synopsis "N-Dimensional Hyperplane Fitting with Errors")
    (description
     "High level functions for hyperplane fitting (hyper.fit()) and visualising
(hyper.plot2d() / hyper.plot3d()).  In simple terms this allows the user to
produce robust 1D linear fits for 2D x vs y type data, and robust 2D plane fits
to 3D x vs y vs z type data.  This hyperplane fitting works generically for any
N-1 hyperplane model being fit to a N dimension dataset.  All fits include
intrinsic scatter in the generative model orthogonal to the hyperplane.")
    (license license:gpl3)))

(define-public r-hymett
  (package
    (name "r-hymett")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HyMETT" version))
       (sha256
        (base32 "0f1gismhkwi8ynnxlbsvpal15ab2d2j4arrvah25bchybwffhqqg"))))
    (properties `((upstream-name . "HyMETT")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tibble
                             r-rlang
                             r-plyr
                             r-lubridate
                             r-lmomco
                             r-envstats
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://code.usgs.gov/hymett/hymett")
    (synopsis "Hydrologic Model Evaluation and Time-Series Tools")
    (description
     "Facilitates the analysis and evaluation of hydrologic model output and
time-series data with functions focused on comparison of modeled (simulated) and
observed data, period-of-record statistics, and trends.")
    (license license:cc0)))

(define-public r-hyfo
  (package
    (name "r-hyfo")
    (version "1.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyfo" version))
       (sha256
        (base32 "03z36ddq6vpld1v876adp5xrz0hjy46vhs5sn8sgaa57fhmya6cm"))))
    (properties `((upstream-name . "hyfo")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-sp
                             r-sf
                             r-reshape2
                             r-plyr
                             r-ncdf4
                             r-moments
                             r-mass
                             r-maps
                             r-lmom
                             r-ggplot2
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://yuanchao-xu.github.io/hyfo/")
    (synopsis "Hydrology and Climate Forecasting")
    (description
     "Focuses on data processing and visualization in hydrology and climate
forecasting.  Main function includes data extraction, data downscaling, data
resampling, gap filler of precipitation, bias correction of forecasting data,
flexible time series plot, and spatial map generation.  It is a good pre-
processing and post-processing tool for hydrological and hydraulic modellers.")
    (license license:gpl2)))

(define-public r-hydrotsm
  (package
    (name "r-hydrotsm")
    (version "0.7-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroTSM" version))
       (sha256
        (base32 "13jaz7mrjmfvankncfmnwxa0m2r78a9p686h0my3m3sv9bvz1qd6"))))
    (properties `((upstream-name . "hydroTSM")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-lattice r-e1071 r-classint))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hzambran/hydroTSM")
    (synopsis "Time Series Management and Analysis for Hydrological Modelling")
    (description
     "S3 functions for management, analysis, interpolation and plotting of time series
used in hydrology and related environmental sciences.  In particular, this
package is highly oriented to hydrological modelling tasks.  The focus of this
package has been put in providing a collection of tools useful for the daily
work of hydrologists (although an effort was made to optimise each function as
much as possible, functionality has had priority over speed).  Bugs / comments /
questions / collaboration of any kind are very welcomed, and in particular,
datasets that can be included in this package for academic purposes.")
    (license license:gpl2+)))

(define-public r-hydrotoolkit
  (package
    (name "r-hydrotoolkit")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroToolkit" version))
       (sha256
        (base32 "0bij4365hczvq17wj9hp0570v35m8ili11mp9dzfj3mvhhqrc9p4"))))
    (properties `((upstream-name . "hydroToolkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-readxl r-plotly r-lubridate
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=hydroToolkit")
    (synopsis
     "Hydrological Tools for Handling Hydro-Meteorological Data from Argentina and Chile")
    (description
     "Read, plot, manipulate and process hydro-meteorological data from Argentina and
Chile.")
    (license license:gpl3+)))

(define-public r-hydrotoolbox
  (package
    (name "r-hydrotoolbox")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydrotoolbox" version))
       (sha256
        (base32 "0m5crm8n8i3fv43am649cdyrbfcfbais8fwrg6c7zy81dbhmy9m9"))))
    (properties `((upstream-name . "hydrotoolbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tibble
                             r-reshape2
                             r-readxl
                             r-rcpp
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/ezetoum27/hydrotoolbox")
    (synopsis
     "Hydrological Tools for Handling Hydro-Meteorological Data Records")
    (description
     "Read, plot, manipulate and process hydro-meteorological data records (with
special features for Argentina and Chile data-sets).")
    (license license:gpl3+)))

(define-public r-hydrostats
  (package
    (name "r-hydrostats")
    (version "0.2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydrostats" version))
       (sha256
        (base32 "11ipfp5dnl336wbsw0nrrcd68hccp8igvlrr93rc3hrvif3slkim"))))
    (properties `((upstream-name . "hydrostats")))
    (build-system r-build-system)
    (home-page "https://github.com/nickbond/hydrostats")
    (synopsis "Hydrologic Indices for Daily Time Series Data")
    (description
     "Calculates a suite of hydrologic indices for daily time series data that are
widely used in hydrology and stream ecology.")
    (license license:gpl2+)))

(define-public r-hydroroute
  (package
    (name "r-hydroroute")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroroute" version))
       (sha256
        (base32 "1pvdvfmjrxplcycszaig2xbwlk1acs6smci1cwmmhdh2xpaffami"))))
    (properties `((upstream-name . "hydroroute")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-lubridate
                             r-hydropeak
                             r-gridextra
                             r-ggpmisc
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hydroroute")
    (synopsis "Trace Longitudinal Hydropeaking Waves")
    (description
     "This package implements an empirical approach referred to as @code{PeakTrace}
which uses multiple hydrographs to detect and follow hydropower plant-specific
hydropeaking waves at the sub-catchment scale and to describe how hydropeaking
flow parameters change along the longitudinal flow path.  The method is based on
the identification of associated events and uses (linear) regression models to
describe translation and retention processes between neighboring hydrographs.
Several regression model results are combined to arrive at a power
plant-specific model.  The approach is proposed and validated in Greimel et al.
(2022) <doi:10.1002/rra.3978>.  The identification of associated events is based
on the event detection implemented in hydropeak'.")
    (license license:gpl2)))

(define-public r-hydroportailstats
  (package
    (name "r-hydroportailstats")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HydroPortailStats" version))
       (sha256
        (base32 "1f5h9xqn4vn9wbnvlshbc8r200vx1pwm9ic7sdzsv4z0j7z7wl1j"))))
    (properties `((upstream-name . "HydroPortailStats")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mvtnorm r-evd))
    (home-page "https://cran.r-project.org/package=HydroPortailStats")
    (synopsis "'HydroPortail' Statistical Functions")
    (description
     "Statistical functions used in the French @code{HydroPortail}
<https://hydro.eaufrance.fr/>.  This includes functions to estimate
distributions, quantile curves and uncertainties, along with various other
utilities.  Technical details are available (in French) in Renard (2016)
<https://hal.inrae.fr/hal-02605318>.")
    (license license:gpl3)))

(define-public r-hydropeak
  (package
    (name "r-hydropeak")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydropeak" version))
       (sha256
        (base32 "06x1qahavvhaqwdsjg65ixgc6migbm188v3w3vjng5xl2g2ybhqc"))))
    (properties `((upstream-name . "hydropeak")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hydropeak")
    (synopsis "Detect and Characterize Sub-Daily Flow Fluctuations")
    (description
     "An important environmental impact on running water ecosystems is caused by
hydropeaking - the discontinuous release of turbine water because of peaks of
energy demand.  An event-based algorithm is implemented to detect flow
fluctuations referring to increase events (IC) and decrease events (DC).  For
each event, a set of parameters related to the fluctuation intensity is
calculated.  The framework is introduced in Greimel et al. (2016) \"A method to
detect and characterize sub-daily flow fluctuations\" <doi:10.1002/hyp.10773> and
can be used to identify different fluctuation types according to the potential
source: e.g., sub-daily flow fluctuations caused by hydropeaking, rainfall, or
snow and glacier melt.  This is a companion to the package hydroroute', which is
used to detect and follow hydropower plant-specific hydropeaking waves at the
sub-catchment scale and to describe how hydropeaking flow parameters change
along the longitudinal flow path as proposed and validated in Greimel et al.
(2022).")
    (license license:gpl2)))

(define-public r-hydrome
  (package
    (name "r-hydrome")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HydroMe" version))
       (sha256
        (base32 "06fqzvpwh25qc9ksh49gpfyw8jgy9xbw27wlp8mxk0b2fq58fyqg"))))
    (properties `((upstream-name . "HydroMe")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HydroMe")
    (synopsis
     "Estimating Water Retention and Infiltration Model Parameters using Experimental Data")
    (description
     "This package contains functions for estimating the parameters of infiltration
and water retention models using the curve-fitting methods as discussed in Omuto
and Gumbe (2009) (\"Estimating water infiltration and retention characteristics
using a computer program in R\"<doi:10.1016/j.cageo.2008.08.011>).  The models
considered are those that are commonly used in soil science.  Version 2 of the
package has new models for water retention characteristic curves.")
    (license (license:fsdg-compatible "GPL (>= 3.5.0)"))))

(define-public r-hydroloom
  (package
    (name "r-hydroloom")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroloom" version))
       (sha256
        (base32 "0hh8j9a3rkg81mp9als41rvvmwfclbwg92jx6rzy5fn2qvlxx36m"))))
    (properties `((upstream-name . "hydroloom")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-tidyr
                             r-sf
                             r-rlang
                             r-rann
                             r-pbapply
                             r-fastmap
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DOI-USGS/hydroloom")
    (synopsis "Utilities to Weave Hydrologic Fabrics")
    (description
     "This package provides a collection of utilities that support creation of network
attributes for hydrologic networks.  Methods and algorithms implemented are
documented in Moore et al. (2019) <doi:10.3133/ofr20191096>), Cormen and
Leiserson (2022) <ISBN:9780262046305> and Verdin and Verdin (1999)
<doi:10.1016/S0022-1694(99)00011-6>.")
    (license license:cc0)))

(define-public r-hydrogof
  (package
    (name "r-hydrogof")
    (version "0.6-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroGOF" version))
       (sha256
        (base32 "17i68al88d4xvam1fq63knsqgd29s4wvpd31z6zhnbbcbpd3j67v"))))
    (properties `((upstream-name . "hydroGOF")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-hydrotsm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hzambran/hydroGOF")
    (synopsis
     "Goodness-of-Fit Functions for Comparison of Simulated and Observed Hydrological Time Series")
    (description
     "S3 functions implementing both statistical and graphical goodness-of-fit
measures between observed and simulated values, mainly oriented to be used
during the calibration, validation, and application of hydrological models.
Missing values in observed and/or simulated values can be removed before
computations.  Comments / questions / collaboration of any kind are very
welcomed.")
    (license license:gpl2+)))

(define-public r-hydrogeo
  (package
    (name "r-hydrogeo")
    (version "0.6-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydrogeo" version))
       (sha256
        (base32 "16m6yvr9yhvb0vdh9pqd6gzf3h9km7gd89y6risjddv6g83469k8"))))
    (properties `((upstream-name . "hydrogeo")))
    (build-system r-build-system)
    (home-page "http://rockhead.biz")
    (synopsis "Groundwater Data Presentation and Interpretation")
    (description
     "This package contains one function for drawing Piper diagrams (also called
Piper-Hill diagrams) of water analyses for major ions.")
    (license (license:fsdg-compatible "BSD_2_clause + file LICENCE"))))

(define-public r-hydroevents
  (package
    (name "r-hydroevents")
    (version "0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroEvents" version))
       (sha256
        (base32 "1w433lmzk6lr2lnqn1qcq13c980kpi0r881cdzm56n53s89zdh36"))))
    (properties `((upstream-name . "hydroEvents")))
    (build-system r-build-system)
    (home-page "https://github.com/conradwasko/hydroEvents")
    (synopsis "Extract Event Statistics in Hydrologic Time Series")
    (description
     "Events from individual hydrologic time series are extracted, and events from
multiple time series can be matched to each other.  Tang, W. & Carey, S. K.
(2017) <doi:10.1002/hyp.11185>.  Kaur, S., Horne, A., Stewardson, M.J., Nathan,
R., Costa, A.M., Szemis, J.M., & Webb, J.A. (2017)
<doi:10.1080/24705357.2016.1276418>.  Ladson, A., Brown, R., Neal, B., & Nathan,
R. J. (2013) <doi:10.7158/W12-028.2013.17.1>.")
    (license license:gpl3)))

(define-public r-hydrodcindex
  (package
    (name "r-hydrodcindex")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydroDCindex" version))
       (sha256
        (base32 "0nci4jj2aca2kaq4cgrv9sq9pksjaagqik2y8j1c2a1w39qjzyan"))))
    (properties `((upstream-name . "hydroDCindex")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hydroDCindex")
    (synopsis "Duration Curve Hydrological Model Indexes")
    (description
     "Compute duration curves of daily flow series, both real and modeled, to be
compared through indexes of flow duration curves.  The package functions include
comparative plots and goodness of fit tests.  Flow duration curve indexes are
based on: Yilmaz et al., (2008) <DOI:10.1029/2007WR006716>.")
    (license license:gpl3)))

(define-public r-hydrocode
  (package
    (name "r-hydrocode")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HydroCode" version))
       (sha256
        (base32 "1kykxra9cg1n17l2zmnjk1qv8450v4qix5sylm1k9xxzirbb7wca"))))
    (properties `((upstream-name . "HydroCode")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (home-page "https://cran.r-project.org/package=HydroCode")
    (synopsis "Hydrological Codes")
    (description
     "Pfafstetter Hydrological Codes as cited in Verdin and Verdin (1999) <doi:
10.1016/S0022-1694(99)00011-6> are decoded for upstream or downstream queries.")
    (license license:gpl3)))

(define-public r-hydrocal
  (package
    (name "r-hydrocal")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HYDROCAL" version))
       (sha256
        (base32 "0xq53nysn9kv6p1clgdjxsvj7qjlcmg02frfpw9fnzim53pzzrp4"))))
    (properties `((upstream-name . "HYDROCAL")))
    (build-system r-build-system)
    (home-page "GitHub")
    (synopsis "Hydraulic Roughness Calculator")
    (description
     "Estimates frictional constants for hydraulic analysis of rivers.  This HYDRaulic
ROughness CALculator (HYDROCAL) was previously developed as a spreadsheet tool
and accompanying documentation by @code{McKay} and Fischenich (2011,
<https://erdc-library.erdc.dren.mil/jspui/bitstream/11681/2034/1/CHETN-VII-11.pdf>).")
    (license license:gpl3)))

(define-public r-hydraulics
  (package
    (name "r-hydraulics")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydraulics" version))
       (sha256
        (base32 "0aw84gr2fcqgf20bjf9658wqyhlp40v3pkvsj72l27s39wma94xf"))))
    (properties `((upstream-name . "hydraulics")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-tibble
                             r-reshape2
                             r-purrr
                             r-pracma
                             r-gtools
                             r-ggplot2))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/EdM44/hydraulics")
    (synopsis "Basic Pipe and Open Channel Hydraulics")
    (description
     "This package provides functions for basic hydraulic calculations related to
water flow in circular pipes both flowing full (under pressure), and partially
full (gravity flow), and trapezoidal open channels.  For pressure flow this
includes friction loss calculations by solving the Darcy-Weisbach equation for
head loss, flow or diameter, plotting a Moody diagram, matching a pump
characteristic curve to a system curve, and solving for flows in a pipe network
using the Hardy-Cross method.  The Darcy-Weisbach friction factor is calculated
using the Colebrook (or Colebrook-White equation), the basis of the Moody
diagram, the original citation being Colebrook (1939)
<doi:10.1680/ijoti.1939.13150>.  For gravity flow, the Manning equation is used,
again solving for missing parameters.  The derivation of and solutions using the
Darcy-Weisbach equation and the Manning equation are outlined in many fluid
mechanics texts such as Finnemore and Maurer (2024, ISBN:978-1-264-78729-6).
Some gradually- and rapidly-varied flow functions are included.  For the Manning
equation solutions, this package uses modifications of original code from the
iemisc package by Irucka Embry.")
    (license license:gpl3+)))

(define-public r-hydra
  (package
    (name "r-hydra")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hydra" version))
       (sha256
        (base32 "0r3r8cds4h15narawxhzkrvgnf00vlgrgqdgnmbzjyyb1dmry8wn"))))
    (properties `((upstream-name . "hydra")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hydra")
    (synopsis "Hyperbolic Embedding")
    (description
     "Calculate an optimal embedding of a set of data points into low-dimensional
hyperbolic space.  This uses the strain-minimizing hyperbolic embedding of
Keller-Ressel and Nargang (2019), see <@code{arXiv:1903.08977>}.")
    (license license:gpl2)))

(define-public r-hyd1d
  (package
    (name "r-hyd1d")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hyd1d" version))
       (sha256
        (base32 "0k34blmjyradfbrq5j6lqkhs64q80k9a5pdrc3anyvanadcz32af"))))
    (properties `((upstream-name . "hyd1d")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-httr2 r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://hyd1d.bafg.de")
    (synopsis "1d Water Level Interpolation along the Rivers Elbe and Rhine")
    (description
     "An S4 class and several functions which utilize internally stored datasets and
gauging data enable 1d water level interpolation.  The S4 class
(@code{WaterLevelDataFrame}) structures the computation and visualisation of 1d
water level information along the German federal waterways Elbe and Rhine.
hyd1d delivers 1d water level data - extracted from the FLYS database - and
validated gauging data - extracted from the hydrological database WISKI7 -
package-internally.  For computations near real time gauging data are queried
externally from the PEGELONLINE REST API
<https://pegelonline.wsv.de/webservice/@code{dokuRestapi>}.")
    (license license:gpl2+)))

(define-public r-hybridts
  (package
    (name "r-hybridts")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hybridts" version))
       (sha256
        (base32 "1x96g0cjgn3vklczksxdgpd5ayl3rl63k0ig0h8vacm2nxn4c6js"))))
    (properties `((upstream-name . "hybridts")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveletarima r-nnfor r-metrics r-forecast))
    (home-page "https://cran.r-project.org/package=hybridts")
    (synopsis "Hybrid Time Series Forecasting Using Error Remodeling Approach")
    (description
     "Method and tool for generating hybrid time series forecasts using an error
remodeling approach.  These forecasting approaches utilize a recursive technique
for modeling the linearity of the series using a linear method (e.g., ARIMA,
Theta, etc.) and then models (forecasts) the residuals of the linear forecaster
using non-linear neural networks (e.g., ANN, ARNN, etc.).  The hybrid
architectures comprise three steps: firstly, the linear patterns of the series
are forecasted which are followed by an error re-modeling step, and finally, the
forecasts from both the steps are combined to produce the final output.  This
method additionally provides the confidence intervals as needed.  Ten different
models can be implemented using this package.  This package generates different
types of hybrid error correction models for time series forecasting based on the
algorithms by Zhang. (2003), Chakraborty et al. (2019), Chakraborty et al.
(2020), Bhattacharyya et al. (2021), Chakraborty et al. (2022), and
Bhattacharyya et al. (2022) <doi:10.1016/S0925-2312(01)00702-0>
<doi:10.1016/j.physa.2019.121266> <doi:10.1016/j.chaos.2020.109850>
<doi:10.1109/IJCNN52387.2021.9533747> <doi:10.1007/978-3-030-72834-2_29>
<doi:10.1007/s11071-021-07099-3>.")
    (license license:gpl2+)))

(define-public r-hybridogram
  (package
    (name "r-hybridogram")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hybridogram" version))
       (sha256
        (base32 "14p2gwmgcaf84aycdc2a51frw2pccrffsjk8n83gvj2ans8phrr9"))))
    (properties `((upstream-name . "hybridogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-pheatmap))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hybridogram")
    (synopsis "Function that Creates a Heat Map from Hybridization Data")
    (description
     "Using hybrid data, this package created a vividly colored hybrid heat map.  The
input is two files which are auto-selected.  The first file has three columns,
the first two for pairs of species, with the third column for the hybrid
experiment code (an integer).  The second file is a list of code and their
descriptions in two columns.  The output is a figure showing the hybrid heat map
with a color legend.")
    (license license:gpl3)))

(define-public r-hybridmodels
  (package
    (name "r-hybridmodels")
    (version "0.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hybridModels" version))
       (sha256
        (base32 "0fj3dvv7s1hlicvlb077pkhbj894brzgdxhp67jck9zpy2qymzxq"))))
    (properties `((upstream-name . "hybridModels")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-gillespiessa
                             r-ggplot2
                             r-foreach
                             r-dorng
                             r-doparallel))
    (home-page "https://github.com/fernandosm/hybridModels")
    (synopsis
     "An R Package for the Stochastic Simulation of Disease Spreading in Dynamic Networks")
    (description
     "Simulates stochastic hybrid models for transmission of infectious diseases in
dynamic networks.  It is a metapopulation model in which each node in the
network is a sub-population and disease spreads within nodes and among them,
combining two approaches: stochastic simulation algorithm
(<doi:10.1146/annurev.physchem.58.032806.104637>) and individual-based approach,
respectively.  Equations that models spread within nodes are customizable and
there are two link types among nodes: migration and influence (commuting).  More
information in Fernando S. Marques, Jose H. H. Grisi-Filho, Marcos Amaku et al.
(2020) <doi:10.18637/jss.v094.i06>.")
    (license license:gpl2+)))

(define-public r-hybridmicrobiomes
  (package
    (name "r-hybridmicrobiomes")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HybridMicrobiomes" version))
       (sha256
        (base32 "05y3hcw18q9v3fpv0i0msmr9v4hnfgk0ni55wk3k786h96m2swsv"))))
    (properties `((upstream-name . "HybridMicrobiomes")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-stereomorph
                             r-rlang
                             r-rgl
                             r-phyloseq
                             r-permanova
                             r-ks
                             r-geometry
                             r-compositions
                             r-ape))
    (home-page "https://cran.r-project.org/package=HybridMicrobiomes")
    (synopsis "Analysis of Host-Associated Microbiomes from Hybrid Organisms")
    (description
     "This package provides a set of tools to analyze and visualize the relationships
between host-associated microbiomes of hybrid organisms and those of their
progenitor species.  Though not necessary, installing the @code{microViz}
package is recommended as a check for phyloseq objects.  To install
@code{microViz} from R Universe use the following command:
install.packages(\"@code{microViz}\", repos = c(davidbarnett =
\"https://david-barnett.r-universe.dev\", @code{getOption(\"repos}\"))).  To install
@code{microViz} from @code{GitHub} use the following commands:
install.packages(\"devtools\") followed by
devtools::install_github(\"david-barnett/@code{microViz}\").")
    (license license:gpl2)))

(define-public r-hybriddesign
  (package
    (name "r-hybriddesign")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HybridDesign" version))
       (sha256
        (base32 "19hgljm7mhd00s2lvvxmdr35zifnl0kymmcx06jfqkld3qd3zli6"))))
    (properties `((upstream-name . "HybridDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-testit r-resourceselection))
    (home-page "https://cran.r-project.org/package=HybridDesign")
    (synopsis "Hybrid Design for Phase I Dose-Finding Studies")
    (description
     "The Hybrid design is a combination of model-assisted design (e.g., the modified
Toxicity Probability Interval design) with dose-toxicity model-based design for
phase I dose-finding studies.  The hybrid design controls the overdosing
toxicity well and leads to a recommended dose closer to the true maximum
tolerated dose (MTD) due to its ability to calibrate for an intermediate dose.
More details can be found in Liao et al.  2022 <doi:10.1002/ijc.34203>.")
    (license license:gpl3)))

(define-public r-hwwntest
  (package
    (name "r-hwwntest")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hwwntest" version))
       (sha256
        (base32 "1j6lpbrf3jp3nrz9m0s74inkr2ww4g8ajz30qjhlfwmacww0hdsg"))))
    (properties `((upstream-name . "hwwntest")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavethresh r-polynom))
    (home-page "https://cran.r-project.org/package=hwwntest")
    (synopsis "Tests of White Noise using Wavelets")
    (description
     "This package provides methods to test whether time series is consistent with
white noise.  Two new tests based on Haar wavelets and general wavelets
described by Nason and Savchev (2014) <doi:10.1002/sta4.69> are provided and,
for comparison purposes this package also implements the B test of Bartlett
(1967) <doi:10.2307/2333850>.  Functionality is provided to compute an
approximation to the theoretical power of the general wavelet test in the case
of general ARMA alternatives.")
    (license license:gpl2)))

(define-public r-hwsdr
  (package
    (name "r-hwsdr")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hwsdr" version))
       (sha256
        (base32 "1dfrqcd0nccrsv01hsvp2xic9nfhsqmvl7cqvv28amayqyv3lizk"))))
    (properties `((upstream-name . "hwsdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-sf r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bluegreen-labs/hwsdr")
    (synopsis "Interface to the 'HWSD' Web Services")
    (description
     "Programmatic interface to the Harmonized World Soil Database HWSD web services
(<https://daac.ornl.gov/cgi-bin/dsviewer.pl?ds_id=1247>).  Allows for easy
downloads of HWSD soil data directly to your R workspace or your computer.
Routines for both single pixel data downloads and gridded data are provided.")
    (license license:agpl3)))

(define-public r-hwordcloud
  (package
    (name "r-hwordcloud")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hwordcloud" version))
       (sha256
        (base32 "0civbwv276lcwvfs4qzz14r8rk14kg1ml4zzhi3msnkkh29v70y2"))))
    (properties `((upstream-name . "hwordcloud")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud2 r-shiny r-htmlwidgets r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/czxa/hwordcloud")
    (synopsis "Rendering Word Clouds")
    (description
     "This package provides a way to display word clouds in R. The word cloud is a
html widget, so you can use it in interactive documents and shiny applications.")
    (license license:expat)))

(define-public r-hwig
  (package
    (name "r-hwig")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hwig" version))
       (sha256
        (base32 "06a42a38qsjwijbbr2c8dsd7hjm751g1s4sgcmzvvfi6xy7svl3k"))))
    (properties `((upstream-name . "hwig")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatsoc r-data-table r-asnipe))
    (home-page "https://gitlab.com/robit.a/hwig")
    (synopsis "Half-Weight Index Gregariousness")
    (description
     "The half-weight index gregariousness (HWIG) is an association index used in
social network analyses.  It extends the half-weight association index (HWI),
correcting for level of gregariousness in individuals.  It is calculated using
group by individual data according to methods described in Godde et al. (2013)
<doi:10.1016/j.anbehav.2012.12.010>.")
    (license license:gpl3)))

(define-public r-hwep
  (package
    (name "r-hwep")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hwep" version))
       (sha256
        (base32 "0cvy9s9kwc1jp4klgbjahidpk8gkvfa43vry8i0y77nvfys7x9v9"))))
    (properties `((upstream-name . "hwep")))
    (build-system r-build-system)
    (propagated-inputs (list r-updog
                             r-tensr
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-pracma
                             r-iterators
                             r-future
                             r-foreach
                             r-dorng
                             r-dofuture
                             r-bridgesampling
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://dcgerard.github.io/hwep/")
    (synopsis "Hardy-Weinberg Equilibrium in Polyploids")
    (description
     "Inference concerning equilibrium and random mating in autopolyploids.  Methods
are available to test for equilibrium and random mating at any even ploidy level
(>2) in the presence of double reduction at biallelic loci.  For autopolyploid
populations in equilibrium, methods are available to estimate the degree of
double reduction.  We also provide functions to calculate genotype frequencies
at equilibrium, or after one or several rounds of random mating, given rates of
double reduction.  The main function is hwefit().  This material is based upon
work supported by the National Science Foundation under Grant No.  2132247.  The
opinions, findings, and conclusions or recommendations expressed are those of
the author and do not necessarily reflect the views of the National Science
Foundation.  For details of these methods, see Gerard (2022a)
<doi:10.1111/biom.13722> and Gerard (2022b) <doi:10.1101/2022.08.11.503635>.")
    (license license:gpl3+)))

(define-public r-hweintrinsic
  (package
    (name "r-hweintrinsic")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HWEintrinsic" version))
       (sha256
        (base32 "0ijrczm0mm37a3v4v0hd7zb662rcyzqf58z4nbhrix1nf6vzj47m"))))
    (properties `((upstream-name . "HWEintrinsic")))
    (build-system r-build-system)
    (home-page "https://onlinelibrary.wiley.com/doi/10.1002/sim.4084/abstract")
    (synopsis
     "Objective Bayesian Testing for the Hardy-Weinberg Equilibrium Problem")
    (description
     "General (multi-allelic) Hardy-Weinberg equilibrium problem from an objective
Bayesian testing standpoint.  This aim is achieved through the identification of
a class of priors specifically designed for this testing problem.  A class of
intrinsic priors under the full model is considered.  This class is indexed by a
tuning quantity, the training sample size, as discussed in Consonni, Moreno and
Venturini (2010).  These priors are objective, satisfy Savage's continuity
condition and have proved to behave extremely well for many statistical testing
problems.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hvt
  (package
    (name "r-hvt")
    (version "24.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HVT" version))
       (sha256
        (base32 "18a4gr2v2qn2n9z9w89pjq1plzdggzlyprh249srf3sbqw1pn1qq"))))
    (properties `((upstream-name . "HVT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-splancs
                             r-scales
                             r-rlang
                             r-reshape2
                             r-purrr
                             r-polyclip
                             r-plyr
                             r-mass
                             r-markovchain
                             r-magrittr
                             r-gifski
                             r-ggplot2
                             r-ggforce
                             r-gganimate
                             r-dplyr
                             r-deldir
                             r-data-table
                             r-conf-design
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Mu-Sigma/HVT")
    (synopsis
     "Constructing Hierarchical Voronoi Tessellations and Overlay Heatmaps for Data Analysis")
    (description
     "Facilitates building topology preserving maps for rich multivariate data.
Credits to Mu Sigma for their continuous support throughout the development of
the package.")
    (license license:asl2.0)))

(define-public r-huxtable
  (package
    (name "r-huxtable")
    (version "5.5.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "huxtable" version))
       (sha256
        (base32 "04hbnc8gij28523b6kiyibc05sjn1z4y1r8z9j4f5ghyl8hm0mdx"))))
    (properties `((upstream-name . "huxtable")))
    (build-system r-build-system)
    (inputs (list calc))
    (propagated-inputs (list r-xml2
                             r-tidyselect
                             r-stringr
                             r-stringi
                             r-rlang
                             r-r6
                             r-memoise
                             r-htmltools
                             r-glue
                             r-generics
                             r-fansi
                             r-commonmark
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://hughjonesd.github.io/huxtable/")
    (synopsis
     "Easily Create and Style Tables for LaTeX, HTML and Other Formats")
    (description
     "This package creates styled tables for data presentation.  Export to HTML,
@code{LaTeX}, RTF, Word', Excel', and @code{PowerPoint}'.  Simple, modern
interface to manipulate borders, size, position, captions, colours, text styles
and number formatting.  Table cells can span multiple rows and/or columns.
Includes a huxreg function for creation of regression tables, and quick_*
one-liners to print data to a new document.")
    (license license:expat)))

(define-public r-hutilscpp
  (package
    (name "r-hutilscpp")
    (version "0.10.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hutilscpp" version))
       (sha256
        (base32 "0gjj2808dc4c1s28d94sc1iwb88n61lsplqvhlhn2yab3qa0ljf9"))))
    (properties `((upstream-name . "hutilscpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-hutils r-data-table))
    (home-page "https://github.com/hughparsonage/hutilscpp")
    (synopsis "Miscellaneous Functions in C++")
    (description
     "This package provides utility functions that are simply, frequently used, but
may require higher performance that what can be obtained from base R.
Incidentally provides support for reverse geocoding', such as matching a point
with its nearest neighbour in another array.  Used as a complement to package
hutils by sacrificing compilation or installation time for higher running
speeds.  The name is a portmanteau of the author and Rcpp'.")
    (license license:gpl2)))

(define-public r-hutils
  (package
    (name "r-hutils")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hutils" version))
       (sha256
        (base32 "0pdya5gdyab5pwpgiw9yfa95m5ynqk154sydsfg56dxq1ihzfr74"))))
    (properties `((upstream-name . "hutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-fastmatch r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hughparsonage/hutils")
    (synopsis "Miscellaneous R Functions and Aliases")
    (description
     "This package provides utility functions for, and drawing on, the data.table
package.  The package also collates useful miscellaneous functions extending
base R not available elsewhere.  The name is a portmanteau of utils and the
author.")
    (license license:gpl3)))

(define-public r-hurricaneexposure
  (package
    (name "r-hurricaneexposure")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hurricaneexposure" version))
       (sha256
        (base32 "0a8xy71dkq2bzdnc90irxmbcxhi0anh87ic22x7b22c3m5605w6s"))))
    (properties `((upstream-name . "hurricaneexposure")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-maps
                             r-mapproj
                             r-lubridate
                             r-lazyeval
                             r-ggplot2
                             r-ggmap
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/geanders/hurricaneexposure")
    (synopsis
     "Explore and Map County-Level Hurricane Exposure in the United States")
    (description
     "Allows users to create time series of tropical storm exposure histories for
chosen counties for a number of hazard metrics (wind, rain, distance from the
storm, etc.).  This package interacts with data available through the
hurricaneexposuredata package, which is available in a drat repository.  To
access this data package, see the instructions at
<https://github.com/geanders/hurricaneexposure>.  The size of the
hurricaneexposuredata package is approximately 20 MB. This work was supported in
part by grants from the National Institute of Environmental Health Sciences
(R00ES022631), the National Science Foundation (1331399), and a NASA Applied
Sciences Program/Public Health Program Grant (NNX09AV81G).")
    (license license:gpl2+)))

(define-public r-hurreconr
  (package
    (name "r-hurreconr")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HurreconR" version))
       (sha256
        (base32 "1grdhvdkvp1s9x9mwpy4f38ayp5zv7mkiwz1pvjm4zlgjpzzq4l4"))))
    (properties `((upstream-name . "HurreconR")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hurrecon-model/HurreconR")
    (synopsis "Models Hurricane Wind Speed, Wind Direction, and Wind Damage")
    (description
     "The HURRECON model estimates wind speed, wind direction, enhanced Fujita scale
wind damage, and duration of EF0 to EF5 winds as a function of hurricane
location and maximum sustained wind speed.  Results may be generated for a
single site or an entire region.  Hurricane track and intensity data may be
imported directly from the US National Hurricane Center's HURDAT2 database.  For
details on the original version of the model written in Borland Pascal, see:
Boose, Chamberlin, and Foster (2001)
<doi:10.1890/0012-9615(2001)071[0027:LARIOH]2.0.CO;2> and Boose, Serrano, and
Foster (2004) <doi:10.1890/02-4057>.")
    (license license:gpl3)))

(define-public r-hurdlr
  (package
    (name "r-hurdlr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hurdlr" version))
       (sha256
        (base32 "1ryrqsxa07isxv2zx156bcn36d4yjvwpirb8jqcmqm97q7rmihmq"))))
    (properties `((upstream-name . "hurdlr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hurdlr")
    (synopsis "Zero-Inflated and Hurdle Modelling Using Bayesian Inference")
    (description
     "When considering count data, it is often the case that many more zero counts
than would be expected of some given distribution are observed.  It is well
established that data such as this can be reliably modelled using zero-inflated
or hurdle distributions, both of which may be applied using the functions in
this package.  Bayesian analysis methods are used to best model problematic
count data that cannot be fit to any typical distribution.  The package
functions are flexible and versatile, and can be applied to varying count
distributions, parameter estimation with or without explanatory variable
information, and are able to allow for multiple hurdles as it is also not
uncommon that count data have an abundance of large-number observations which
would be considered outliers of the typical distribution.  In lieu of throwing
out data or misspecifying the typical distribution, these extreme observations
can be applied to a second, extreme distribution.  With the given functions of
this package, such a two-hurdle model may be easily specified in order to best
manage data that is both zero-inflated and over-dispersed.")
    (license license:gpl2+)))

(define-public r-huraultmisc
  (package
    (name "r-huraultmisc")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HuraultMisc" version))
       (sha256
        (base32 "0bi1y7icrg0f4n9ah9dsrijnfr39bqg3799rz4hccd1b061f0rvj"))))
    (properties `((upstream-name . "HuraultMisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rstan
                             r-reshape2
                             r-magrittr
                             r-hmisc
                             r-hdinterval
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (home-page "https://github.com/ghurault/HuraultMisc")
    (synopsis "Guillem Hurault Functions' Library")
    (description
     "This package contains various functions for data analysis, notably helpers and
diagnostics for Bayesian modelling using Stan.")
    (license license:expat)))

(define-public r-humidity
  (package
    (name "r-humidity")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "humidity" version))
       (sha256
        (base32 "143pn8jjinlda76b94qh5zw2sfajw0ifcx774x6adr2il5a5wm99"))))
    (properties `((upstream-name . "humidity")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/caijun/humidity")
    (synopsis "Calculate Water Vapor Measures from Temperature and Dew Point")
    (description
     "Vapor pressure, relative humidity, absolute humidity, specific humidity, and
mixing ratio are commonly used water vapor measures in meteorology.  This R
package provides functions for calculating saturation vapor pressure
(@code{hPa}), partial water vapor pressure (Pa), relative humidity (%), absolute
humidity (kg/m^3), specific humidity (kg/kg), and mixing ratio (kg/kg) from
temperature (K) and dew point (K).  Conversion functions between humidity
measures are also provided.")
    (license license:gpl3)))

(define-public r-humanleague
  (package
    (name "r-humanleague")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "humanleague" version))
       (sha256
        (base32 "0nkpn7cafy2rk6181g4z90kg9il99p40h0wa2hjgi0kg6y16wmgg"))))
    (properties `((upstream-name . "humanleague")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=humanleague")
    (synopsis "Synthetic Population Generator")
    (description
     "Generates high-entropy integer synthetic populations from marginal and
(optionally) seed data using quasirandom sampling, in arbitrary dimensionality
(Smith, Lovelace and Birkin (2017) <doi:10.18564/jasss.3550>).  The package also
provides an implementation of the Iterative Proportional Fitting (IPF) algorithm
(Zaloznik (2011) <doi:10.13140/2.1.2480.9923>).")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-humanize
  (package
    (name "r-humanize")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "humanize" version))
       (sha256
        (base32 "0hhhd640n77s8xaa2gbd9fckdk2yjg68gdb7wjy56a2khzqfssxr"))))
    (properties `((upstream-name . "humanize")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-glue r-assertthat))
    (home-page "https://newtux.github.io/humanize/index.html")
    (synopsis "Create Values for Human Consumption")
    (description
     "An almost direct port of the python humanize package
<https://github.com/jmoiron/humanize>.  This package contains utilities to
convert values into human readable forms.")
    (license license:expat)))

(define-public r-humaniformat
  (package
    (name "r-humaniformat")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "humaniformat" version))
       (sha256
        (base32 "0vaynjzz57pk4y1liag9lpn9jkag2033a6bkn28zzm7ndg3344l6"))))
    (properties `((upstream-name . "humaniformat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ironholds/humaniformat/")
    (synopsis "Parser for Human Names")
    (description
     "Human names are complicated and nonstandard things.  Humaniformat, which is
based on Anthony Ettinger's humanparser project (https://github.com/
chovy/humanparser) provides functions for parsing human names, making a best-
guess attempt to distinguish sub-components such as prefixes, suffixes, middle
names and salutations.")
    (license license:expat)))

(define-public r-humanformat
  (package
    (name "r-humanformat")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "humanFormat" version))
       (sha256
        (base32 "0yzax988qp5c8kvjnj9ggm5yl9sklqhs7b2b4w81np5kxhxy973y"))))
    (properties `((upstream-name . "humanFormat")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat))
    (home-page "https://github.com/dustin/humanFormat")
    (synopsis "Human-Friendly Formatting Functions")
    (description
     "Format quantities of time or bytes into human-friendly strings.")
    (license license:expat)))

(define-public r-hum
  (package
    (name "r-hum")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HUM" version))
       (sha256
        (base32 "06jx3f2zb52gjp05bq3zmgjkyiaa2j9v0biq23gg88gplpign6jw"))))
    (properties `((upstream-name . "HUM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-rcpp r-gtools))
    (home-page "https://public.ostfalia.de/~klawonn/HUM.htm")
    (synopsis "Compute HUM Value and Visualize ROC Curves")
    (description
     "This package provides tools for computing HUM (Hypervolume Under the Manifold)
value to estimate features ability to discriminate the class labels, visualizing
the ROC curve for two or three class labels (Natalia Novoselova, Cristina Della
Beffa, Junxi Wang, Jialiang Li, Frank Pessler, Frank Klawonn (2014)
<doi:10.1093/bioinformatics/btu086>).")
    (license license:gpl3+)))

(define-public r-huito
  (package
    (name "r-huito")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "huito" version))
       (sha256
        (base32 "0i7wxgddgdk72r6a2zmfi8b84ism0551f9n0hz8jx6aj21wqkx4r"))))
    (properties `((upstream-name . "huito")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-sysfonts
                             r-showtext
                             r-qrcode
                             r-purrr
                             r-pdftools
                             r-magick
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://huito.inkaverse.com/")
    (synopsis "Reproducible and Flexible Label Design")
    (description
     "An open-source R package to deploys reproducible and flexible labels using
layers.  The huito package is part of the inkaverse project for developing
different procedures and tools used in plant science and experimental designs.
Learn more about the inkaverse project at <https://inkaverse.com/>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hues
  (package
    (name "r-hues")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hues" version))
       (sha256
        (base32 "062i7yc16nmnp15c1jh4xffw2lpklp36wkn1yvagh186ahnlgffx"))))
    (properties `((upstream-name . "hues")))
    (build-system r-build-system)
    (propagated-inputs (list r-colorspace))
    (home-page "https://github.com/johnbaums/hues")
    (synopsis "Distinct Colour Palettes Based on 'iwanthue'")
    (description
     "Creating effective colour palettes for figures is challenging.  This package
generates and plot palettes of optimally distinct colours in perceptually
uniform colour space, based on iwanthue
<http://tools.medialab.sciences-po.fr/iwanthue/>.  This is done through k-means
clustering of CIE Lab colour space, according to user-selected constraints on
hue, chroma, and lightness.")
    (license license:lgpl3+)))

(define-public r-hudr
  (package
    (name "r-hudr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hudr" version))
       (sha256
        (base32 "1kvqbgyhyr4lvzqvfsa1597px8ydqpacphnm902hchqv5qvbxgm4"))))
    (properties `((upstream-name . "hudr")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-janitor r-httr r-data-table))
    (home-page "https://cran.r-project.org/package=hudr")
    (synopsis
     "Providing Data from the US Department of Housing and Urban Development")
    (description
     "This package provides functions to access data from the US Department of Housing
and Urban Development <https://www.huduser.gov/portal/dataset/fmr-api.html>.")
    (license license:gpl3+)))

(define-public r-hubeau
  (package
    (name "r-hubeau")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hubeau" version))
       (sha256
        (base32 "1fzy24wx93rc9niiksir0hys2f1slafrng9rkwmjaf51lsj0n1qw"))))
    (properties `((upstream-name . "hubeau")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-tibble
                             r-purrr
                             r-magrittr
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://inrae.github.io/hubeau/")
    (synopsis "Get Data from the French National Database on Water 'Hub'Eau'")
    (description
     "Collection of functions to help retrieving data from Hub'Eau the free and public
French National APIs on water <https://hubeau.eaufrance.fr/>.")
    (license license:expat)))

(define-public r-httptest2
  (package
    (name "r-httptest2")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httptest2" version))
       (sha256
        (base32 "0vj6ynxc2xdq4xhl6df8aa3582s7jf5m71hxqxhjsjfqdzm72dv8"))))
    (properties `((upstream-name . "httptest2")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-rlang r-jsonlite r-httr2 r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://enpiar.com/httptest2/")
    (synopsis "Test Helpers for 'httr2'")
    (description
     "Testing and documenting code that communicates with remote servers can be
painful.  This package helps with writing tests for packages that use httr2'.
It enables testing all of the logic on the R sides of the API without requiring
access to the remote service, and it also allows recording real API responses to
use as test fixtures.  The ability to save responses and load them offline also
enables writing vignettes and other dynamic documents that can be distributed
without access to a live server.")
    (license license:expat)))

(define-public r-httptest
  (package
    (name "r-httptest")
    (version "4.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httptest" version))
       (sha256
        (base32 "0c370jxkd9dzqg5pdf2mcv2kjzr9zp9qai9riivjgygj6jhlcjav"))))
    (properties `((upstream-name . "httptest")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-jsonlite r-httr r-digest r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://enpiar.com/r/httptest/")
    (synopsis "Test Environment for HTTP Requests")
    (description
     "Testing and documenting code that communicates with remote servers can be
painful.  Dealing with authentication, server state, and other complications can
make testing seem too costly to bother with.  But it doesn't need to be that
hard.  This package enables one to test all of the logic on the R sides of the
API in your package without requiring access to the remote service.
Importantly, it provides three contexts that mock the network connection in
different ways, as well as testing functions to assert that HTTP requests
were---or were not---made.  It also allows one to safely record real API
responses to use as test fixtures.  The ability to save responses and load them
offline also enables one to write vignettes and other dynamic documents that can
be distributed without access to a live server.")
    (license license:expat)))

(define-public r-httprequest
  (package
    (name "r-httprequest")
    (version "0.0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httpRequest" version))
       (sha256
        (base32 "0qsi01fcrkps0h6r7l3l5ph3zlq9gscmq19b9ah2q2qlcv3hk4cf"))))
    (properties `((upstream-name . "httpRequest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=httpRequest")
    (synopsis "Basic HTTP Request")
    (description
     "HTTP Request protocols.  Implements the GET, POST and multipart POST request.")
    (license license:gpl2+)))

(define-public r-httpproblems
  (package
    (name "r-httpproblems")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httpproblems" version))
       (sha256
        (base32 "0zd683xd9f9hz6dxm4bmic54jqjcabr23kwl6afsmdjwnrwwsn06"))))
    (properties `((upstream-name . "httpproblems")))
    (build-system r-build-system)
    (home-page "https://github.com/atheriel/httpproblems")
    (synopsis
     "Report Errors in Web Applications with 'Problem Details' (RFC 7807)")
    (description
     "This package provides tools for emitting the Problem Details structure defined
in RFC 7807 <https://tools.ietf.org/html/rfc7807> for reporting errors from HTTP
servers in a standard way.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-httping
  (package
    (name "r-httping")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httping" version))
       (sha256
        (base32 "0hdcf51yak8yagy4xj9cyck934lgmvpkd08jvlql33ir5mqvvv3i"))))
    (properties `((upstream-name . "httping")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr r-magrittr r-jsonlite r-httr r-httpcode))
    (home-page "https://github.com/sckott/httping")
    (synopsis "'Ping' 'URLs' to Time 'Requests'")
    (description
     "This package provides a suite of functions to ping URLs and to time HTTP
requests'.  Designed to work with httr'.")
    (license license:expat)))

(define-public r-httpcache
  (package
    (name "r-httpcache")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httpcache" version))
       (sha256
        (base32 "026sl19301al3sid9hlwq8jz5b0zvh9a4n3cl4niqvc2b57h133r"))))
    (properties `((upstream-name . "httpcache")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://enpiar.com/r/httpcache/")
    (synopsis "Query Cache for HTTP Clients")
    (description
     "In order to improve performance for HTTP API clients, httpcache provides simple
tools for caching and invalidating cache.  It includes the HTTP verb functions
GET, PUT, PATCH, POST, and DELETE, which are drop-in replacements for those in
the httr package.  These functions are cache-aware and provide default settings
for cache invalidation suitable for RESTful APIs; the package also enables
custom cache-management strategies.  Finally, httpcache includes a basic logging
framework to facilitate the measurement of HTTP request time and cache
performance.")
    (license license:expat)))

(define-public r-httk
  (package
    (name "r-httk")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "httk" version))
       (sha256
        (base32 "1ws9bxrl0r59nni6avvr7qgs866p90l88x9xyfw2s90j5q2zzil5"))))
    (properties `((upstream-name . "httk")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-survey
                             r-rdpack
                             r-purrr
                             r-mvtnorm
                             r-msm
                             r-magrittr
                             r-ggplot2
                             r-desolve
                             r-data-table))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page
     "https://www.epa.gov/chemical-research/rapid-chemical-exposure-and-dose-research")
    (synopsis "High-Throughput Toxicokinetics")
    (description
     "Pre-made models that can be rapidly tailored to various chemicals and species
using chemical-specific in vitro data and physiological information.  These
tools allow incorporation of chemical toxicokinetics (\"TK\") and in vitro-in vivo
extrapolation (\"IVIVE\") into bioinformatics, as described by Pearce et al.
(2017) (<doi:10.18637/jss.v079.i04>).  Chemical-specific in vitro data
characterizing toxicokinetics have been obtained from relatively high-throughput
experiments.  The chemical-independent (\"generic\") physiologically-based
(\"PBTK\") and empirical (for example, one compartment) \"TK\" models included here
can be parameterized with in vitro data or in silico predictions which are
provided for thousands of chemicals, multiple exposure routes, and various
species.  High throughput toxicokinetics (\"HTTK\") is the combination of in vitro
data and generic models.  We establish the expected accuracy of HTTK for
chemicals without in vivo data through statistical evaluation of HTTK
predictions for chemicals where in vivo data do exist.  The models are systems
of ordinary differential equations that are developed in MCSim and solved using
compiled (C-based) code for speed.  A Monte Carlo sampler is included for
simulating human biological variability (Ring et al., 2017
<doi:10.1016/j.envint.2017.06.004>) and propagating parameter uncertainty
(Wambaugh et al., 2019 <doi:10.1093/toxsci/kfz205>).  Empirically calibrated
methods are included for predicting tissue:plasma partition coefficients and
volume of distribution (Pearce et al., 2017 <doi:10.1007/s10928-017-9548-7>).
These functions and data provide a set of tools for using IVIVE to convert
concentrations from high-throughput screening experiments (for example, Tox21,
@code{ToxCast}) to real-world exposures via reverse dosimetry (also known as
\"RTK\") (Wetmore et al., 2015 <doi:10.1093/toxsci/kfv171>).")
    (license license:gpl3)))

(define-public r-htt
  (package
    (name "r-htt")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTT" version))
       (sha256
        (base32 "0345ydb3rjdkj4zm6xr5y4kf6plvxfgbpwkjs81pls99mr208qwz"))))
    (properties `((upstream-name . "HTT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-igraph r-ggraph r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HTT")
    (synopsis "Hypothesis Testing Tree")
    (description
     "This package provides a novel decision tree algorithm in the hypothesis testing
framework.  The algorithm examines the distribution difference between two child
nodes over all possible binary partitions.  The test statistic of the hypothesis
testing is equivalent to the generalized energy distance, which enables the
algorithm to be more powerful in detecting the complex structure, not only the
mean difference.  It is applicable for numeric, nominal, ordinal explanatory
variables and the response in general metric space of strong negative type.  The
algorithm has superior performance compared to other tree models in type I
error, power, prediction accuracy, and complexity.")
    (license license:gpl3)))

(define-public r-htssip
  (package
    (name "r-htssip")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTSSIP" version))
       (sha256
        (base32 "1j2f6f3i4di4bvsk44gxz0narg45ld2rahfn23wpgni5bszy0vb3"))))
    (properties `((upstream-name . "HTSSIP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tidyr
                             r-stringr
                             r-plyr
                             r-phyloseq
                             r-magrittr
                             r-lazyeval
                             r-igraph
                             r-ggplot2
                             r-dplyr
                             r-deseq2
                             r-coenocliner
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HTSSIP")
    (synopsis
     "High Throughput Sequencing of Stable Isotope Probing Data Analysis")
    (description
     "This package provides functions for analyzing high throughput sequencing stable
isotope probing (HTS-SIP) data.  Analyses include high resolution stable isotope
probing (HR-SIP), multi-window high resolution stable isotope probing
(MW-HR-SIP), and quantitative stable isotope probing (q-SIP).")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-htsr
  (package
    (name "r-htsr")
    (version "2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "htsr" version))
       (sha256
        (base32 "0hmc06pmpya0jjdh4h1aizyanaad0qys7xqrjqrhw37yamh3ywmk"))))
    (properties `((upstream-name . "htsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexls
                             r-waiter
                             r-tibble
                             r-stringr
                             r-shinyfiles
                             r-shiny
                             r-rsqlite
                             r-readxl
                             r-readr
                             r-rcpp
                             r-purrr
                             r-lubridate
                             r-ggplot2
                             r-fs
                             r-dplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/p-chevallier/htsr")
    (synopsis "Hydro-Meteorology Time-Series")
    (description
     "This package provides functions for the management and treatment of hydrology
and meteorology time-series stored in a Sqlite data base.")
    (license license:gpl2)))

(define-public r-htseed
  (package
    (name "r-htseed")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTSeed" version))
       (sha256
        (base32 "01h9lm2ljp67qfcl7vlh804r7q15arqx103jb9pvk2wx1c27qy3x"))))
    (properties `((upstream-name . "HTSeed")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=HTSeed")
    (synopsis "Fitting of Hydrotime Model for Seed Germination Time Course")
    (description
     "The seed germination process starts with water uptake by the seed and ends with
the protrusion of radicle and plumule under varying temperatures and soil water
potential.  Hydrotime is a way to describe the relationship between water
potential and seed germination rates at germination percentages.  One important
quantity before applying hydrotime modeling of germination percentages is to
consider the proportion of viable seeds that could germinate under saturated
conditions.  This package can be used to apply correction factors at various
water potentials before estimating parameters like stress tolerance, and
uniformity of the hydrotime model.  Three different distributions namely,
Gaussian, Logistic, and Extreme value distributions have been considered to fit
the model to the seed germination time course.  Details can be found in Bradford
(2002) <https://www.jstor.org/stable/4046371>, and Bradford and Still(2004)
<https://www.jstor.org/stable/23433495>.")
    (license license:gpl3)))

(define-public r-hts
  (package
    (name "r-hts")
    (version "6.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hts" version))
       (sha256
        (base32 "06mmxdm7a2fb1r4mb2x12b00rnkaxlrmlkv5yizr3yixmn4is9wb"))))
    (properties `((upstream-name . "hts")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsem r-rcppeigen r-rcpp r-matrix r-forecast))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.earo.me/hts/")
    (synopsis "Hierarchical and Grouped Time Series")
    (description
     "This package provides methods for analysing and forecasting hierarchical and
grouped time series.  The available forecast methods include bottom-up,
top-down, optimal combination reconciliation (Hyndman et al.  2011)
<doi:10.1016/j.csda.2011.03.006>, and trace minimization reconciliation
(Wickramasuriya et al.  2018) <doi:10.1080/01621459.2018.1448825>.")
    (license license:gpl2+)))

(define-public r-htrx
  (package
    (name "r-htrx")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTRX" version))
       (sha256
        (base32 "1ggmqz3a0r5cilpynjmr52hjk88vq83wk1akcg6hkn3bzrwgcgmd"))))
    (properties `((upstream-name . "HTRX")))
    (build-system r-build-system)
    (propagated-inputs (list r-tune r-recipes r-glmnet r-fastglm r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HTRX")
    (synopsis "Haplotype Trend Regression with eXtra Flexibility (HTRX)")
    (description
     "Detection of haplotype patterns that include single nucleotide polymorphisms
(SNPs) and non-contiguous haplotypes that are associated with a phenotype.
Methods for implementing HTRX are described in Yang Y, Lawson DJ (2023)
<doi:10.1093/bioadv/vbad038> and Barrie W, Yang Y, Irving-Pease E.K, et al
(2024) <doi:10.1038/s41586-023-06618-z>.")
    (license license:gpl3)))

(define-public r-htmlutils
  (package
    (name "r-htmlutils")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTMLUtils" version))
       (sha256
        (base32 "1i4f78c5g9j9n6bahga4mqg91p5c39yvw9mpm8hxz6isfi2jvs8l"))))
    (properties `((upstream-name . "HTMLUtils")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2html))
    (home-page "https://cran.r-project.org/package=HTMLUtils")
    (synopsis "Facilitates Automated HTML Report Creation")
    (description
     "Facilitates automated HTML report creation, in particular framed HTML pages and
dynamically sortable tables.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-htmldf
  (package
    (name "r-htmldf")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "htmldf" version))
       (sha256
        (base32 "19brwxqnsxzvgsqq3gsjkcyag9ag3xa3mrl5c4s7x48xx2knfh9q"))))
    (properties `((upstream-name . "htmldf")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-urltools
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-ranger
                             r-r-utils
                             r-progress
                             r-processx
                             r-magrittr
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-cld3))
    (home-page "https://github.com/alastairrushworth/htmldf/")
    (synopsis "Simple Scraping and Tidy Webpage Summaries")
    (description
     "Simple tools for scraping webpages, extracting common html tags and parsing
contents to a tidy, tabular format.  Tools help with extraction of page titles,
links, images, rss feeds, social media handles and page metadata.")
    (license license:gpl2)))

(define-public r-html5
  (package
    (name "r-html5")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "html5" version))
       (sha256
        (base32 "1icji4y2x7bn4nrsf99n8b6g5v053bb9hpwvmp8bf5wh63d1ns8l"))))
    (properties `((upstream-name . "html5")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=html5")
    (synopsis "Creates Valid HTML5 Strings")
    (description
     "Generates valid HTML tag strings for HTML5 elements documented by Mozilla.
Attributes are passed as named lists, with names being the attribute name and
values being the attribute value.  Attribute values are automatically
double-quoted.  To declare a DOCTYPE, wrap html() with function doctype().
Mozilla's documentation for HTML5 is available here:
<https://developer.mozilla.org/en-US/docs/Web/HTML/Element>.  Elements marked as
obsolete are not included.")
    (license license:gpl2+)))

(define-public r-html2r
  (package
    (name "r-html2r")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "html2R" version))
       (sha256
        (base32 "1zdnwbqlpjh8r2xcl83da9pzh9cb8h908krnrs61vqhka7zb82ng"))))
    (properties `((upstream-name . "html2R")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-shinythemes r-shinyjqui r-shinyace r-shiny
                             r-glue))
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/html2R")
    (synopsis "Convert 'HTML' to 'R' with a 'Shiny' App")
    (description
     "This package provides a Shiny app allowing to convert HTML code to R code (e.g.
<span>Hello</span> to tags$span(\"Hello\")'), for usage in a Shiny UI.")
    (license license:gpl3)))

(define-public r-htm2txt
  (package
    (name "r-htm2txt")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "htm2txt" version))
       (sha256
        (base32 "0f03vckq4wzd2nbzjfqgjf2pnjfdq875lhpim10k80smq32w8xx0"))))
    (properties `((upstream-name . "htm2txt")))
    (build-system r-build-system)
    (home-page "https://github.com/replicable/htm2txt")
    (synopsis "Convert Html into Text")
    (description
     "Convert a html document to plain texts by stripping off all html tags.")
    (license license:gpl2+)))

(define-public r-htlr
  (package
    (name "r-htlr")
    (version "0.4-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HTLR" version))
       (sha256
        (base32 "0mi03r9izipvmla5pm0s42vm85ishr3bb8pjdw906s4q7lkxjivz"))))
    (properties `((upstream-name . "HTLR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-magrittr r-glmnet
                             r-bcbcsf))
    (native-inputs (list r-knitr))
    (home-page "https://longhaisk.github.io/HTLR/")
    (synopsis "Bayesian Logistic Regression with Heavy-Tailed Priors")
    (description
     "Efficient Bayesian multinomial logistic regression based on heavy-tailed
(hyper-LASSO, non-convex) priors.  The posterior of coefficients and
hyper-parameters is sampled with restricted Gibbs sampling for leveraging the
high-dimensionality and Hamiltonian Monte Carlo for handling the
high-correlation among coefficients.  A detailed description of the method: Li
and Yao (2018), Journal of Statistical Computation and Simulation, 88:14,
2827-2851, <@code{arXiv:1405.3319>}.")
    (license license:gpl3)))

(define-public r-htetree
  (package
    (name "r-htetree")
    (version "0.1.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "htetree" version))
       (sha256
        (base32 "144jn5b79xqr4h190c06wwpa5679125xa9qmnaxqh371h45263gd"))))
    (properties `((upstream-name . "htetree")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-rpart-plot
                             r-rpart
                             r-rcpp
                             r-partykit
                             r-matching
                             r-jsonlite
                             r-grf
                             r-dplyr
                             r-data-tree))
    (home-page "https://cran.r-project.org/package=htetree")
    (synopsis "Causal Inference with Tree-Based Machine Learning Algorithms")
    (description
     "Estimating heterogeneous treatment effects with tree-based machine learning
algorithms and visualizing estimated results in flexible and presentation-ready
ways.  For more information, see Brand, Xu, Koch, and Geraldo (2021)
<doi:10.1177/0081175021993503>.  Our current package first started as a fork of
the @code{causalTree} package on @code{GitHub} and we greatly appreciate the
authors for their extremely useful and free package.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-htestclust
  (package
    (name "r-htestclust")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "htestClust" version))
       (sha256
        (base32 "081kxhc7sn070ys94pfzjf3gi2kkqwrqx2sclbgz4ihahqkbnhhr"))))
    (properties `((upstream-name . "htestClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-bootstrap))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=htestClust")
    (synopsis "Reweighted Marginal Hypothesis Tests for Clustered Data")
    (description
     "This package provides a collection of reweighted marginal hypothesis tests for
clustered data, based on reweighting methods of Williamson, J., Datta, S., and
Satten, G. (2003) <doi:10.1111/1541-0420.00005>.  The tests in this collection
are clustered analogs to well-known hypothesis tests in the classical setting,
and are appropriate for data with cluster- and/or group-size informativeness.
The syntax and output of functions are modeled after common, recognizable
functions native to R. Methods used in the package refer to Gregg, M., Datta,
S., and Lorenz, D. (2020) <doi:10.1177/0962280220928572>, Nevalainen, J., Oja,
H., and Datta, S. (2017) <doi:10.1002/sim.7288> Dutta, S. and Datta, S. (2015)
<doi:10.1111/biom.12447>, Lorenz, D., Datta, S., and Harkema, S. (2011)
<doi:10.1002/sim.4368>, Datta, S. and Satten, G. (2008)
<doi:10.1111/j.1541-0420.2007.00923.x>, Datta, S. and Satten, G. (2005)
<doi:10.1198/016214504000001583>.")
    (license license:expat)))

(define-public r-hstats
  (package
    (name "r-hstats")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hstats" version))
       (sha256
        (base32 "1ax73chiv86adnvym4fi9c04yicpb8d8wrmyykx08rp6pqb6icwa"))))
    (properties `((upstream-name . "hstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/ModelOriented/hstats/")
    (synopsis "Interaction Statistics")
    (description
     "Fast, model-agnostic implementation of different H-statistics introduced by
Jerome H. Friedman and Bogdan E. Popescu (2008) <doi:10.1214/07-AOAS148>.  These
statistics quantify interaction strength per feature, feature pair, and feature
triple.  The package supports multi-output predictions and can account for case
weights.  In addition, several variants of the original statistics are provided.
 The shape of the interactions can be explored through partial dependence plots
or individual conditional expectation plots.  DALEX explainers, meta learners
('mlr3', tidymodels', caret') and most other models work out-of-the-box.")
    (license license:gpl2+)))

(define-public r-hsstan
  (package
    (name "r-hsstan")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hsstan" version))
       (sha256
        (base32 "0kfdx17vacy43bjg6si4d1nxbmsrzj61bgs6d5pbwny02fq9i9gc"))))
    (properties `((upstream-name . "hsstan")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-proc
                             r-loo
                             r-ggplot2
                             r-bh))
    (home-page "https://github.com/mcol/hsstan")
    (synopsis "Hierarchical Shrinkage Stan Models for Biomarker Selection")
    (description
     "Linear and logistic regression models penalized with hierarchical shrinkage
priors for selection of biomarkers (or more general variable selection), which
can be fitted using Stan (Carpenter et al. (2017) <doi:10.18637/jss.v076.i01>).
It implements the horseshoe and regularized horseshoe priors (Piironen and
Vehtari (2017) <doi:10.1214/17-EJS1337SI>), as well as the projection predictive
selection approach to recover a sparse set of predictive biomarkers (Piironen,
Paasiniemi and Vehtari (2020) <doi:10.1214/20-EJS1711>).")
    (license license:gpl3)))

(define-public r-hsrecombi
  (package
    (name "r-hsrecombi")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hsrecombi" version))
       (sha256
        (base32 "1f5ks1wvpc0dn5lwyhs479zhkcbcfg2c5gxxlwr9pliv5ncgcmla"))))
    (properties `((upstream-name . "hsrecombi")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlist
                             r-rcpp
                             r-quadprog
                             r-matrix
                             r-hsphase
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hsrecombi")
    (synopsis "Estimation of Recombination Rate and Maternal LD in Half-Sibs")
    (description
     "Paternal recombination rate and maternal linkage disequilibrium (LD) are
estimated for pairs of biallelic markers such as single nucleotide polymorphisms
(SNPs) from progeny genotypes and sire haplotypes.  The implementation relies on
paternal half-sib families.  If maternal half-sib families are used, the roles
of sire/dam are swapped.  Multiple families can be considered.  For parameter
estimation, at least one sire has to be double heterozygous at the investigated
pairs of SNPs.  Based on recombination rates, genetic distances between markers
can be estimated.  Markers with unusually large recombination rate to markers in
close proximity (i.e.  putatively misplaced markers) shall be discarded in this
derivation.  A workflow description is attached as vignette. *A pipeline is
available at @code{GitHub}* <https://github.com/wittenburg/hsrecombi> Hampel,
Teuscher, Gomez-Raya, Doschoris, Wittenburg (2018) \"Estimation of recombination
rate and maternal linkage disequilibrium in half-sibs\"
<doi:10.3389/fgene.2018.00186>.  Gomez-Raya (2012) \"Maximum likelihood
estimation of linkage disequilibrium in half-sib families\"
<doi:10.1534/genetics.111.137521>.")
    (license license:gpl2+)))

(define-public r-hspor
  (package
    (name "r-hspor")
    (version "1.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSPOR" version))
       (sha256
        (base32 "06lr8l71y5fcqcnmgq7cgiab1pcc98wnqzndbxcbikbh33cx7nxv"))))
    (properties `((upstream-name . "HSPOR")))
    (build-system r-build-system)
    (propagated-inputs (list r-npregfast r-corpcor))
    (home-page "https://cran.r-project.org/package=HSPOR")
    (synopsis "Hidden Smooth Polynomial Regression for Rupture Detection")
    (description
     "Several functions that allow by different methods to infer a piecewise
polynomial regression model under regularity constraints, namely continuity or
differentiability of the link function.  The implemented functions are either
specific to data with two regimes, or generic for any number of regimes, which
can be given by the user or learned by the algorithm.  A paper describing all
these methods will be submitted soon.  The reference will be added to this file
as soon as available.")
    (license license:lgpl3)))

(define-public r-hspm
  (package
    (name "r-hspm")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hspm" version))
       (sha256
        (base32 "0ycdaji080xav2k87pcln7c26iy31bfjxzzccpyl57w3agcfwrcc"))))
    (properties `((upstream-name . "hspm")))
    (build-system r-build-system)
    (propagated-inputs (list r-sphet r-spdep r-matrix r-formula))
    (home-page "https://github.com/gpiras/hspm")
    (synopsis "Heterogeneous Spatial Models")
    (description
     "Spatial heterogeneity can be specified in various ways.  hspm is an ambitious
project that aims at implementing various methodologies to control for
heterogeneity in spatial models.  The current version of hspm deals with spatial
and (non-spatial) regimes models.  In particular, the package allows to estimate
a general spatial regimes model with additional endogenous variables, specified
in terms of a spatial lag of the dependent variable, the spatially lagged
regressors, and, potentially, a spatially autocorrelated error term.  Spatial
regime models are estimated by instrumental variables and generalized methods of
moments (see Arraiz et al., (2010) <doi:10.1111/j.1467-9787.2009.00618.x>,
Bivand and Piras, (2015) <doi:10.18637/jss.v063.i18>, Drukker et al., (2013)
<doi:10.1080/07474938.2013.741020>, Kelejian and Prucha, (2010)
<doi:10.1016/j.jeconom.2009.10.025>).")
    (license license:gpl2+)))

(define-public r-hsphase
  (package
    (name "r-hsphase")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hsphase" version))
       (sha256
        (base32 "18fd5g79m0d2f5b7j289wz6z5ypq2404vhnvv9jk45897f5mc4lf"))))
    (properties `((upstream-name . "hsphase")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=hsphase")
    (synopsis
     "Phasing, Pedigree Reconstruction, Sire Imputation and Recombination Events Identification of Half-sib Families Using SNP Data")
    (description
     "Identification of recombination events, haplotype reconstruction, sire
imputation and pedigree reconstruction using half-sib family SNP data.")
    (license license:gpl3)))

(define-public r-hsetest
  (package
    (name "r-hsetest")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSEtest" version))
       (sha256
        (base32 "0dzc44icmb1kkjr46siqigy0zpi66189qpwijgmlqwhzrj4yql9c"))))
    (properties `((upstream-name . "HSEtest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HSEtest")
    (synopsis "Homogeneity of Stratum Effects Test")
    (description
     "To test the homogeneity of stratum effects in stratified paired binary data.")
    (license license:gpl3)))

(define-public r-hset
  (package
    (name "r-hset")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hset" version))
       (sha256
        (base32 "16mlicwj11d3gjai1499vdmjibbr2iayni5zz2n516ir2s1cr48v"))))
    (properties `((upstream-name . "hset")))
    (build-system r-build-system)
    (propagated-inputs (list r-hash))
    (home-page "https://cran.r-project.org/package=hset")
    (synopsis "Sets of Numbers Implemented with Hash Tables")
    (description
     "Implementation of S4 class of sets and multisets of numbers.  The implementation
is based on the hash table from the package hash'.  Quick operations are allowed
when the set is a dynamic object.  The implementation is discussed in detail in
Ceoldo and Wit (2023) <@code{arXiv:2304.09809>}.")
    (license license:expat)))

(define-public r-hsem
  (package
    (name "r-hsem")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hsem" version))
       (sha256
        (base32 "0dgp65isbfmw0q4sn36l5226sf6vrl7mvn7gn50xvgybh0l6y7vk"))))
    (properties `((upstream-name . "hsem")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mvtnorm r-matrix r-boot))
    (home-page "https://cran.r-project.org/package=hsem")
    (synopsis "Hierarchical Structural Equation Model")
    (description
     "We present this package for fitting structural equation models using the
hierarchical likelihood method.  This package allows extended structural
equation model, including dynamic structural equation model.  We illustrate the
use of our packages with well-known data sets.  Therefore, this package are able
to handle two serious problems inadmissible solution and factor indeterminacy
<doi:10.3390/sym13040657>.")
    (license license:gpl3)))

(define-public r-hse
  (package
    (name "r-hse")
    (version "0.0-28")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hse" version))
       (sha256
        (base32 "14w09wm1kk7b4q8cl5cwjfqvzm2fb4ls8qjw6i0l54184fmw4dah"))))
    (properties `((upstream-name . "hse")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hse")
    (synopsis "The hse Distribution")
    (description "Deprecated.")
    (license license:gpl2+)))

(define-public r-hsdm
  (package
    (name "r-hsdm")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hSDM" version))
       (sha256
        (base32 "1r2hbwf9795bxrd09c8hmmj7cm044x4w42606m3i3d3i065bpw4m"))))
    (properties `((upstream-name . "hSDM")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://ecology.ghislainv.fr/hSDM/")
    (synopsis "Hierarchical Bayesian Species Distribution Models")
    (description
     "User-friendly and fast set of functions for estimating parameters of
hierarchical Bayesian species distribution models (Latimer and others 2006
<doi:10.1890/04-0609>).  Such models allow interpreting the observations
(occurrence and abundance of a species) as a result of several hierarchical
processes including ecological processes (habitat suitability, spatial
dependence and anthropogenic disturbance) and observation processes (species
detectability).  Hierarchical species distribution models are essential for
accurately characterizing the environmental response of species, predicting
their probability of occurrence, and assessing uncertainty in the model results.")
    (license license:gpl3)))

(define-public r-hsdic
  (package
    (name "r-hsdic")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSDiC" version))
       (sha256
        (base32 "0wiixb1ylx0l8qfgh5ark6alkdq87xaak1jlxizw1m589vghvqfp"))))
    (properties `((upstream-name . "HSDiC")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-ncvreg r-matrix r-glmnet))
    (home-page "https://cran.r-project.org/package=HSDiC")
    (synopsis
     "Homogeneity and Sparsity Detection Incorporating Prior Constraint Information")
    (description
     "We explore sparsity and homogeneity of regression coefficients incorporating
prior constraint information.  A general pairwise fusion approach is proposed to
deal with the sparsity and homogeneity detection when combining prior convex
constraints.  We develop an modified alternating direction method of multipliers
algorithm (ADMM) to obtain the estimators.")
    (license license:gpl2+)))

(define-public r-hscovar
  (package
    (name "r-hscovar")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hscovar" version))
       (sha256
        (base32 "06bkqcp0vcnkp0jqi0qjvxnw0lk0w4mrf88h1769ak7r49vzlr6f"))))
    (properties `((upstream-name . "hscovar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlist r-pwr r-matrix r-foreach))
    (home-page "https://cran.r-project.org/package=hscovar")
    (synopsis
     "Calculation of Covariance Between Markers for Half-Sib Families")
    (description
     "The theoretical covariance between pairs of markers is calculated from either
paternal haplotypes and maternal linkage disequilibrium (LD) or vise versa.  A
genetic map is required.  Grouping of markers is based on the correlation matrix
and a representative marker is suggested for each group.  Employing the
correlation matrix, optimal sample size can be derived for association studies
based on a SNP-BLUP approach.  The implementation relies on paternal half-sib
families and biallelic markers.  If maternal half-sib families are used, the
roles of sire/dam are swapped.  Multiple families can be considered.
Wittenburg, Bonk, Doschoris, Reyer (2020) \"Design of Experiments for
Fine-Mapping Quantitative Trait Loci in Livestock Populations\"
<doi:10.1186/s12863-020-00871-1>.  Carlson, Eberle, Rieder, Yi, Kruglyak,
Nickerson (2004) \"Selecting a maximally informative set of single-nucleotide
polymorphisms for association analyses using linkage disequilibrium\"
<doi:10.1086/381000>.")
    (license license:gpl2+)))

(define-public r-hsaur3
  (package
    (name "r-hsaur3")
    (version "1.0-14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSAUR3" version))
       (sha256
        (base32 "1fsil4n4s71ff8np9w65h8n8b1b2rh017ja8vjd4wq07xi3prbwp"))))
    (properties `((upstream-name . "HSAUR3")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HSAUR3")
    (synopsis "Handbook of Statistical Analyses Using R (3rd Edition)")
    (description
     "Functions, data sets, analyses and examples from the third edition of the book A
Handbook of Statistical Analyses Using R (Torsten Hothorn and Brian S. Everitt,
Chapman & Hall/CRC, 2014).  The first chapter of the book, which is entitled An
Introduction to R'', is completely included in this package, for all other
chapters, a vignette containing all data analyses is available.  In addition,
Sweave source code for slides of selected chapters is included in this package
(see HSAUR3/inst/slides).  The publishers web page is
<http://www.crcpress.com/product/isbn/9781482204582>'.")
    (license license:gpl2)))

(define-public r-hsaur2
  (package
    (name "r-hsaur2")
    (version "1.1-20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSAUR2" version))
       (sha256
        (base32 "0660z2fxj5l0dzlb1xzgd446zzxqwc1kmv52k4aa7p45apxy9hn4"))))
    (properties `((upstream-name . "HSAUR2")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HSAUR2")
    (synopsis "Handbook of Statistical Analyses Using R (2nd Edition)")
    (description
     "Functions, data sets, analyses and examples from the second edition of the book
A Handbook of Statistical Analyses Using R (Brian S. Everitt and Torsten
Hothorn, Chapman & Hall/CRC, 2008).  The first chapter of the book, which is
entitled An Introduction to R'', is completely included in this package, for all
other chapters, a vignette containing all data analyses is available.  In
addition, the package contains Sweave code for producing slides for selected
chapters (see HSAUR2/inst/slides).")
    (license license:gpl2)))

(define-public r-hsaur
  (package
    (name "r-hsaur")
    (version "1.3-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HSAUR" version))
       (sha256
        (base32 "1z4drab395bnyfbd19rn9hr1gz78ny773g1anh54w18iszakkvib"))))
    (properties `((upstream-name . "HSAUR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HSAUR")
    (synopsis "Handbook of Statistical Analyses Using R (1st Edition)")
    (description
     "Functions, data sets, analyses and examples from the book A Handbook of
Statistical Analyses Using R (Brian S. Everitt and Torsten Hothorn, Chapman &
Hall/CRC, 2006).  The first chapter of the book, which is entitled An
Introduction to R'', is completely included in this package, for all other
chapters, a vignette containing all data analyses is available.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hs
  (package
    (name "r-hs")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HS" version))
       (sha256
        (base32 "1vhbchc446j49jj7jgmy4l59n8ahk5l8jp1rl5xwsmn9iqir62mp"))))
    (properties `((upstream-name . "HS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-reshape2
                             r-partitions
                             r-ggpubr
                             r-ggplot2
                             r-data-table))
    (home-page "https://cran.r-project.org/package=HS")
    (synopsis "Homogenous Segmentation for Spatial Lines Data")
    (description
     "This package provides methods of homogenous segmentation for spatial lines data,
such as pavement performance indicators and traffic volumes.  Three methods are
available for homogenous segmentation, including cumulative difference approach,
minimization coefficient of variation, and spatial heterogeneity based method.")
    (license license:gpl2)))

(define-public r-hrw
  (package
    (name "r-hrw")
    (version "1.0-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HRW" version))
       (sha256
        (base32 "08fh9504cck1ffrwim27nkrm9y1in6jl1s7zs8h8x3ik54p9jb0k"))))
    (properties `((upstream-name . "HRW")))
    (build-system r-build-system)
    (propagated-inputs (list r-kernsmooth))
    (home-page "https://cran.r-project.org/package=HRW")
    (synopsis
     "Datasets, Functions and Scripts for Semiparametric Regression Supporting Harezlak, Ruppert & Wand (2018)")
    (description
     "The book \"Semiparametric Regression with R\" by J. Harezlak, D. Ruppert & M.P.
Wand (2018, Springer; ISBN: 978-1-4939-8851-8) makes use of datasets and scripts
to explain semiparametric regression concepts.  Each of the book's scripts are
contained in this package as well as datasets that are not within other R
packages.  Functions that aid semiparametric regression analysis are also
included.")
    (license license:gpl2+)))

(define-public r-hrt
  (package
    (name "r-hrt")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hrt" version))
       (sha256
        (base32 "0l0hjspncr6pkc3sg11p63k1gy1jmc70g6581ykh6zy0b07zm8rk"))))
    (properties `((upstream-name . "hrt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-compquadform))
    (home-page "https://cran.r-project.org/package=hrt")
    (synopsis "Heteroskedasticity Robust Testing")
    (description
     "This package provides functions for testing affine hypotheses on the regression
coefficient vector in regression models with heteroskedastic errors: (i) a
function for computing various test statistics (in particular using HC0-HC4
covariance estimators based on unrestricted or restricted residuals); (ii) a
function for numerically approximating the size of a test based on such test
statistics and a user-supplied critical value; and, most importantly, (iii) a
function for determining size-controlling critical values for such test
statistics and a user-supplied significance level (also incorporating a check of
conditions under which such a size-controlling critical value exists).  The
three functions are based on results in Poetscher and Preinerstorfer (2021)
\"Valid Heteroskedasticity Robust Testing\" <@code{arXiv:2104.12597>}.")
    (license license:gpl2)))

(define-public r-hrqglas
  (package
    (name "r-hrqglas")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hrqglas" version))
       (sha256
        (base32 "0v3hdjz8755ka4ahdx2dsyw3513hxg1r0ncj9id6gbmqq1l0s9a5"))))
    (properties `((upstream-name . "hrqglas")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-quantreg r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=hrqglas")
    (synopsis
     "Group Variable Selection for Quantile and Robust Mean Regression")
    (description
     "This package provides a program that conducts group variable selection for
quantile and robust mean regression (Sherwood and Li, 2022).  The group lasso
penalty (Yuan and Lin, 2006) is used for group-wise variable selection.  Both of
the quantile and mean regression models are based on the Huber loss.
Specifically, with the tuning parameter in the Huber loss approaching to 0, the
quantile check function can be approximated by the Huber loss for the median and
the tilted version of Huber loss at other quantiles.  Such approximation
provides computational efficiency and stability, and has also been shown to be
statistical consistent.")
    (license license:gpl2+)))

(define-public r-hrcomprisk
  (package
    (name "r-hrcomprisk")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hrcomprisk" version))
       (sha256
        (base32 "0w0ij2yqgg6gkn3pdaism1xqw3dfnm670j2pmsd85qk1ybxzq9l5"))))
    (properties `((upstream-name . "hrcomprisk")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AntiportaD/hrcomprisk")
    (synopsis "Nonparametric Assessment Between Competing Risks Hazard Ratios")
    (description
     "Nonparametric cumulative-incidence based estimation of the ratios of sub-hazard
ratios to cause-specific hazard ratios using the approach from Ng et al. (2020).")
    (license license:gpl3)))

(define-public r-hr
  (package
    (name "r-hr")
    (version "0.2.50")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hR" version))
       (sha256
        (base32 "1zslalsb2zi6b91fb2k1m0vsbsdazls2gnnl7gv2xqvn6kdh4nf6"))))
    (properties `((upstream-name . "hR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rhandsontable r-knitr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hR")
    (synopsis "Toolkit for Data Analytics in Human Resources")
    (description
     "Transform and analyze workforce data in meaningful ways for human resources (HR)
analytics.  Get started with workforce planning using a simple Shiny app.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hqreg
  (package
    (name "r-hqreg")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hqreg" version))
       (sha256
        (base32 "1j6zp3rmpjx409vm7kq159mlawg87wsq0ypdkan34yxxv9py2jmi"))))
    (properties `((upstream-name . "hqreg")))
    (build-system r-build-system)
    (home-page "http://arxiv.org/abs/1509.02957")
    (synopsis
     "Regularization Paths for Lasso or Elastic-Net Penalized Huber Loss Regression and Quantile Regression")
    (description
     "Efficient algorithms for fitting regularization paths for lasso or elastic-net
penalized regression models with Huber loss, quantile loss or squared loss.")
    (license license:gpl3)))

(define-public r-hqmisc
  (package
    (name "r-hqmisc")
    (version "0.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hqmisc" version))
       (sha256
        (base32 "10n5p5n9nw713ihz1mfm5d375msf29x68c3gk5l5slpzfk8cfh2n"))))
    (properties `((upstream-name . "hqmisc")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hqmisc")
    (synopsis "Miscellaneous Convenience Functions and Dataset")
    (description
     "Miscellaneous convenience functions and wrapper functions to convert frequencies
between Hz, semitones, mel and Bark, to create a matrix of dummy columns from a
factor, to determine whether x lies in range [a,b], and to add a bracketed line
to an existing plot.  This package also contains an example data set of a
stratified sample of 80 talkers of Dutch.")
    (license license:gpl2+)))

(define-public r-hqm
  (package
    (name "r-hqm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HQM" version))
       (sha256
        (base32 "1q959qdakwzf07zbyxkvrslyc4kgd47g4wij2fgm7l4w3xm34lwz"))))
    (properties `((upstream-name . "HQM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HQM")
    (synopsis
     "Superefficient Estimation of Future Conditional Hazards Based on Marker Information")
    (description
     "This package provides a nonparametric smoothed kernel density estimator for the
future conditional hazard when time-dependent covariates are present.  It also
provides pointwise and uniform confidence bands and a bandwidth selection.")
    (license license:gpl2+)))

(define-public r-hplb
  (package
    (name "r-hplb")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HPLB" version))
       (sha256
        (base32 "1xxckjz90sdmng0sm9dlhwpzj79pxa3vd1cidxc44wjk4h25rq7q"))))
    (properties `((upstream-name . "HPLB")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://cran.r-project.org/package=HPLB")
    (synopsis "High-Probability Lower Bounds for the Total Variance Distance")
    (description
     "An implementation of high-probability lower bounds for the total variance
distance as introduced in Michel & Naef & Meinshausen (2020)
<@code{arXiv:2005.06006>}.  An estimated lower-bound (with high-probability) on
the total variation distance between two probability distributions from which
samples are observed can be obtained with the function HPLB.")
    (license license:gpl3)))

(define-public r-hpir
  (package
    (name "r-hpir")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hpiR" version))
       (sha256
        (base32 "0gz9ngnjgys7hzijsma2iyywwiv7vjar5gls28ds11wq8pmsv96n"))))
    (properties `((upstream-name . "hpiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-robustbase
                             r-rlang
                             r-ranger
                             r-purrr
                             r-plyr
                             r-pdp
                             r-mass
                             r-magrittr
                             r-lubridate
                             r-imputets
                             r-gridextra
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://www.github.com/andykrause/hpiR")
    (synopsis "House Price Indexes")
    (description
     "Compute house price indexes and series using a variety of different methods and
models common through the real estate literature.  Evaluate index goodness based
on accuracy, volatility and revision statistics.  Background on basic model
construction for repeat sales models can be found at: Case and Quigley (1991)
<https://ideas.repec.org/a/tpr/restat/v73y1991i1p50-58.html> and for hedonic
pricing models at: Bourassa et al (2006) <doi:10.1016/j.jhe.2006.03.001>.  The
package author's working paper on the random forest approach to house price
indexes can be found at: <http://www.github.com/andykrause/hpi_research>.")
    (license license:gpl3)))

(define-public r-hpfilter
  (package
    (name "r-hpfilter")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hpfilter" version))
       (sha256
        (base32 "1w1asqa4dszijwdmgdzx4ahl5bl34l0psczwvcal4kdkawy5kia2"))))
    (properties `((upstream-name . "hpfilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://www.alexandrumonahov.eu.org/projects")
    (synopsis "The One- And Two-Sided Hodrick-Prescott Filter")
    (description
     "This package provides two functions that implement the one-sided and two-sided
versions of the Hodrick-Prescott filter.  The one-sided version is a Kalman
filter-based implementation, whereas the two- sided version uses sparse matrices
for improved efficiency.  References: Hodrick, R. J., and Prescott, E. C. (1997)
<doi:10.2307/2953682> Mcelroy, T. (2008) <doi:10.1111/j.1368-423X.2008.00230.x>
Meyer-Gohde, A. (2010) <https://ideas.repec.org/c/dge/qmrbcd/181.html> For more
references, see the vignette.")
    (license license:cc-by-sa4.0)))

(define-public r-hpcwld
  (package
    (name "r-hpcwld")
    (version "0.6-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hpcwld" version))
       (sha256
        (base32 "1w7jpfnaqm9qhr52ixyihzwqklhf2pccshhpvf57pra3vc6cwv2l"))))
    (properties `((upstream-name . "hpcwld")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hpcwld")
    (synopsis
     "High Performance Cluster Models Based on Kiefer-Wolfowitz Recursion")
    (description
     "Probabilistic models describing the behavior of workload and queue on a High
Performance Cluster and computing GRID under FIFO service discipline basing on
modified Kiefer-Wolfowitz recursion.  Also sample data for inter-arrival times,
service times, number of cores per task and waiting times of HPC of Karelian
Research Centre are included, measurements took place from 06/03/2009 to
02/30/2011.  Functions provided to import/export workload traces in Standard
Workload Format (swf).  Stability condition of the model may be verified either
exactly, or approximately.  Stability analysis: see Rumyantsev and Morozov
(2017) <doi:10.1007/s10479-015-1917-2>, workload recursion: see Rumyantsev
(2014) <doi:10.1109/PDCAT.2014.36>.")
    (license license:gpl2+)))

(define-public r-hpackedbubble
  (package
    (name "r-hpackedbubble")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hpackedbubble" version))
       (sha256
        (base32 "1br7q4958f1zgvisglsaf41nz2ahnqi3bzazvlfnmk3nq03cb1ri"))))
    (properties `((upstream-name . "hpackedbubble")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/czxa/hpackedbubble")
    (synopsis "Create Split Packed Bubble Charts")
    (description
     "By binding R functions and the Highcharts <http://www.highcharts.com/> charting
library, hpackedbubble package provides a simple way to draw split packed bubble
charts.")
    (license license:expat)))

(define-public r-hpa
  (package
    (name "r-hpa")
    (version "1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hpa" version))
       (sha256
        (base32 "1p3bi6syn211wp2xa90mcxsl11gk8w9rpn2axlxasnqc4c3ag64x"))))
    (properties `((upstream-name . "hpa")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=hpa")
    (synopsis "Distributions Hermite Polynomial Approximation")
    (description
     "Multivariate conditional and marginal densities, moments, cumulative
distribution functions as well as binary choice and sample selection models
based on Hermite polynomial approximation which was proposed and described by A.
Gallant and D. W. Nychka (1987) <doi:10.2307/1913241>.")
    (license license:gpl3)))

(define-public r-howzatr
  (package
    (name "r-howzatr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "howzatR" version))
       (sha256
        (base32 "00mv9qkn4ndp74jwqkjwqmy7j8ywhpl4ycg81yw3xlabbnqb292j"))))
    (properties `((upstream-name . "howzatR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr))
    (home-page "https://github.com/lukelockley/howzatR")
    (synopsis "Useful Functions for Cricket Analysis")
    (description
     "Helping to calculate cricket specific problems in a tidy & simple manner.")
    (license license:expat)))

(define-public r-howmanyimputations
  (package
    (name "r-howmanyimputations")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "howManyImputations" version))
       (sha256
        (base32 "1vcsf8l2hflr3csjrrgv4883hz0gb3vkaa26943wi8vss7h2lb4d"))))
    (properties `((upstream-name . "howManyImputations")))
    (build-system r-build-system)
    (propagated-inputs (list r-mice))
    (home-page "https://errickson.net/howManyImputations/")
    (synopsis
     "Calculate How many Imputations are Needed for Multiple Imputation")
    (description
     "When performing multiple imputations, while 5-10 imputations are sufficient for
obtaining point estimates, a larger number of imputations are needed for proper
standard error estimates.  This package allows you to calculate how many
imputations are needed, following the work of von Hippel (2020)
<doi:10.1177/0049124117747303>.")
    (license license:expat)))

(define-public r-howler
  (package
    (name "r-howler")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "howler" version))
       (sha256
        (base32 "1l66nkvca5ig7l133mdfs8g3x0s6agq3jkn3c358ypvls78v4dv8"))))
    (properties `((upstream-name . "howler")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-shiny r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ashbaldry/howler")
    (synopsis "'Shiny' Extension of 'howler.js'")
    (description
     "Audio interactivity within shiny applications using howler.js'.  Enables the
status of the audio player to be sent from the UI to the server, and events such
as playing and pausing the audio can be triggered from the server.")
    (license license:expat)))

(define-public r-hover
  (package
    (name "r-hover")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hover" version))
       (sha256
        (base32 "09lpga8a87h6fyg0j3av4xjna300ifsx2ygzwsnvh2l1d70fwf8m"))))
    (properties `((upstream-name . "hover")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-htmltools))
    (home-page "https://github.com/r4fun/hover")
    (synopsis "CSS Animations for 'shiny' Button Elements")
    (description
     "This package provides a wrapper around a CSS library called Hover.css', intended
for use in shiny applications.")
    (license license:expat)))

(define-public r-housingdata
  (package
    (name "r-housingdata")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "housingData" version))
       (sha256
        (base32 "0ngfx2vjx705xixzpz0rgx1481cr2szj4yfi5g7ma1hhivddl7d1"))))
    (properties `((upstream-name . "housingData")))
    (build-system r-build-system)
    (home-page "http://github.com/hafen/housingData")
    (synopsis "U.S. Housing Data from 2008 to 2016")
    (description
     "Monthly median home listing, sale price per square foot, and number of units
sold for 2984 counties in the contiguous United States From 2008 to January
2016.  Additional data sets containing geographical information and links to
Wikipedia are also included.")
    (license license:cc0)))

(define-public r-hotspots
  (package
    (name "r-hotspots")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hotspots" version))
       (sha256
        (base32 "12v88k3yz1bsxx9p5dx8y54ccqcglwknm2jr7ybygdj2yasjr5l0"))))
    (properties `((upstream-name . "hotspots")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-ineq))
    (home-page "https://cran.r-project.org/package=hotspots")
    (synopsis "Hot Spots")
    (description
     "The hotspots package is designed to look within a set of measured values of a
variable and identify values that are disproportionately high based on both the
deviance of any given value from a statistical distribution and its similarity
to other values.  Because this relative magnitude of each value is taken into
account, a value that is a statistical outlier may not always be a hot spot if
other values are similarly large.")
    (license license:gpl2)))

(define-public r-hotspot
  (package
    (name "r-hotspot")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hotspot" version))
       (sha256
        (base32 "0a4w5d6rg324hd06lfwr1hxf6bwr10n55s3ynz5bpkh9c61yik3n"))))
    (properties `((upstream-name . "hotspot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hotspot")
    (synopsis "Software Hotspot Analysis")
    (description
     "This package contains data for software hotspot analysis, along with a function
performing the analysis itself.")
    (license license:gpl2+)))

(define-public r-hotellingellipse
  (package
    (name "r-hotellingellipse")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HotellingEllipse" version))
       (sha256
        (base32 "1d7af7wdjkp2r5x49p76si5jwj7jxd5mngkip7x91rbjj0v0wagp"))))
    (properties `((upstream-name . "HotellingEllipse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rgl
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-ggforce
                             r-factominer
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ChristianGoueguel/HotellingEllipse")
    (synopsis "Hotellingâs T-Squared Statistic and Ellipse")
    (description
     "This package provides functions to calculate the Hotellingâs T-squared
statistic and corresponding confidence ellipses.  Provides the semi-axes of the
Hotellingâs T-squared ellipses at 95% and 99% confidence levels.  Enables
users to obtain the coordinates in two or three dimensions at user-defined
confidence levels, allowing for the construction of 2D or 3D ellipses with
customized confidence levels.  Bro and Smilde (2014) <DOI:10.1039/c3ay41907j>.
Brereton (2016) <DOI:10.1002/cem.2763>.")
    (license license:expat)))

(define-public r-hotelling
  (package
    (name "r-hotelling")
    (version "1.0-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Hotelling" version))
       (sha256
        (base32 "04x2x3anwf4d71dm7x6y08ysk7ygysshc0avisyshbl52x39l8si"))))
    (properties `((upstream-name . "Hotelling")))
    (build-system r-build-system)
    (propagated-inputs (list r-corpcor))
    (home-page "https://github.com/jmcurran/Hotelling")
    (synopsis "Hotelling's T^2 Test and Variants")
    (description
     "This package provides a set of R functions which implements Hotelling's T^2 test
and some variants of it.  Functions are also included for Aitchison's additive
log ratio and centred log ratio transformations.")
    (license license:gpl2+)))

(define-public r-hot-deck
  (package
    (name "r-hot-deck")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hot.deck" version))
       (sha256
        (base32 "1zdrbqkqh3sbc4pkrqgv230h6jm6fvf3wwpb3y6r9l3g8zh4j18r"))))
    (properties `((upstream-name . "hot.deck")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-mice r-mass r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hot.deck")
    (synopsis "Multiple Hot Deck Imputation")
    (description
     "This package performs multiple hot-deck imputation of categorical and continuous
variables in a data frame.")
    (license license:expat)))

(define-public r-hospitals
  (package
    (name "r-hospitals")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hospitals" version))
       (sha256
        (base32 "03bg0fl1wpc7rxlzxgjdk48x8zsd7lv64dcs0fbg573wkhp02vim"))))
    (properties `((upstream-name . "hospitals")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-magrittr))
    (home-page "https://github.com/nhs-pt/hospitals")
    (synopsis "Portuguese 'NHS' Hospitals")
    (description
     "This package provides a data set of the Portuguese NHS hospitals.")
    (license license:cc0)))

(define-public r-hospitalnetwork
  (package
    (name "r-hospitalnetwork")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HospitalNetwork" version))
       (sha256
        (base32 "183nb9h9b1z1ifpnzcxa8wh3xm2id6fnq9vqd4vkbxzw7wlyd86b"))))
    (properties `((upstream-name . "HospitalNetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-lubridate
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-data-table
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://pascalcrepey.github.io/HospitalNetwork/")
    (synopsis "Building Networks of Hospitals Through Patients Transfers")
    (description
     "Set of tools to help interested researchers to build hospital networks from data
on hospitalized patients transferred between hospitals.  Methods provided have
been used in Donker T, Wallinga J, Grundmann H. (2010)
<doi:10.1371/journal.pcbi.1000715>, and Nekkab N, @code{CrÃ©pey} P, Astagneau P,
Opatowski L, Temime L. (2020) <doi:10.1038/s41598-020-71212-6>.")
    (license license:gpl3)))

(define-public r-hosm
  (package
    (name "r-hosm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hosm" version))
       (sha256
        (base32 "062byyvgrjh77hz8i0qb4ixm0smp7xp9lrj84gliigqcy0b5i5w5"))))
    (properties `((upstream-name . "hosm")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-tidyverse
                             r-tibble
                             r-sf
                             r-readxl
                             r-maps))
    (home-page "https://github.com/mubarakfadhlul/hosm")
    (synopsis "High Order Spatial Matrix")
    (description
     "Automatically displays the order and spatial weighting matrix of the distance
between locations.  This concept was derived from the research of Mubarak,
Aslanargun, and Siklar (2021) <doi:10.52403/ijrr.20211150> and Mubarak,
Aslanargun, and Siklar (2022) <doi:10.17654/0972361722052>.  Distance data
between locations can be imported from Ms. Excel', maps package or created in R
programming directly.  This package also provides 5 simulations of distances
between locations derived from fictitious data, the maps package, and from
research by Mubarak, Aslanargun, and Siklar (2022)
<doi:10.29244/ijsa.v6i1p90-100>.")
    (license license:gpl3)))

(define-public r-horseshoenlm
  (package
    (name "r-horseshoenlm")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "horseshoenlm" version))
       (sha256
        (base32 "1m3n12wgmb1wnxc40bzpna261das8hy47l7hmvhfbzhmp7v803v5"))))
    (properties `((upstream-name . "horseshoenlm")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-msm))
    (home-page "https://cran.r-project.org/package=horseshoenlm")
    (synopsis "Nonlinear Regression using Horseshoe Prior")
    (description
     "This package provides the posterior estimates of the regression coefficients
when horseshoe prior is specified.  The regression models considered here are
logistic model for binary response and log normal accelerated failure time model
for right censored survival response.  The linear model analysis is also
available for completeness.  All models provide deviance information criterion
and widely applicable information criterion.  See <doi:10.1111/rssc.12377> Maity
et.  al. (2019) <doi:10.1111/biom.13132> Maity et.  al. (2020).")
    (license license:gpl3)))

(define-public r-horseshoe
  (package
    (name "r-horseshoe")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "horseshoe" version))
       (sha256
        (base32 "1qhkw6agkhpmgf27429c3kqqhbvpg61l0dvfxg7n564y2ha76r3c"))))
    (properties `((upstream-name . "horseshoe")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=horseshoe")
    (synopsis "Implementation of the Horseshoe Prior")
    (description
     "This package contains functions for applying the horseshoe prior to high-
dimensional linear regression, yielding the posterior mean and credible
intervals, amongst other things.  The key parameter tau can be equipped with a
prior or estimated via maximum marginal likelihood estimation (MMLE).  The main
function, horseshoe, is for linear regression.  In addition, there are functions
specifically for the sparse normal means problem, allowing for faster
computation of for example the posterior mean and posterior variance.  Finally,
there is a function available to perform variable selection, using either a form
of thresholding, or credible intervals.")
    (license license:gpl3)))

(define-public r-hornpa
  (package
    (name "r-hornpa")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hornpa" version))
       (sha256
        (base32 "0b4dxzibngdiqj00ma2nzimbknfkscpq1ncalm9dc6pjwrmq43q1"))))
    (properties `((upstream-name . "hornpa")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hornpa")
    (synopsis
     "Horn's (1965) Test to Determine the Number of Components/Factors")
    (description
     "This package provides a stand-alone function that generates a user specified
number of random datasets and computes eigenvalues using the random datasets
(i.e., implements Horn's [1965, Psychometrika] parallel analysis
<https://link.springer.com/article/10.1007/BF02289447>).  Users then compare the
resulting eigenvalues (the mean or the specified percentile) from the random
datasets (i.e., eigenvalues resulting from noise) to the eigenvalues generated
with the user's data.  Can be used for both principal components analysis (PCA)
and common/exploratory factor analysis (EFA).  The output table shows how large
eigenvalues can be as a result of merely using randomly generated datasets.  If
the user's own dataset has actual eigenvalues greater than the corresponding
eigenvalues, that lends support to retain that factor/component.  In other
words, if the i(th) eigenvalue from the actual data was larger than the
percentile of the (i)th eigenvalue generated using randomly generated data,
empirical support is provided to retain that factor/component.  Horn, J. (1965).
 A rationale and test for the number of factors in factor analysis.
Psychometrika, 32, 179-185.")
    (license license:gpl3)))

(define-public r-horm
  (package
    (name "r-horm")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HoRM" version))
       (sha256
        (base32 "09dkpzlwkkdn0z8g9fbb7hzxbrrq70x9v1zx254svck2jyk0hx58"))))
    (properties `((upstream-name . "HoRM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsm r-quantmod r-orthopolynom r-mass r-ggplot2))
    (home-page "https://github.com/dsy109/HoRM")
    (synopsis
     "Supplemental Functions and Datasets for \"Handbook of Regression Methods\"")
    (description
     "Supplement for the book \"Handbook of Regression Methods\" by D. S. Young.  Some
datasets used in the book are included and documented.  Wrapper functions are
included that simplify the examples in the textbook, such as code for
constructing a regressogram and expanding ANOVA tables to reflect the total sum
of squares.")
    (license license:gpl2+)))

(define-public r-hopkins
  (package
    (name "r-hopkins")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hopkins" version))
       (sha256
        (base32 "0wy4d5mmzd9qka5wpkglqy0m2pswypj64wp4hqpk94c6gj46ghwl"))))
    (properties `((upstream-name . "hopkins")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-pdist r-donut))
    (native-inputs (list r-knitr))
    (home-page "https://kwstat.github.io/hopkins/")
    (synopsis "Calculate Hopkins Statistic for Clustering")
    (description
     "Calculate Hopkins statistic to assess the clusterability of data.  See Wright
(2023) <doi:10.32614/RJ-2022-055>.")
    (license license:expat)))

(define-public r-hopit
  (package
    (name "r-hopit")
    (version "0.11.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hopit" version))
       (sha256
        (base32 "13hzzjfj26kk5sfwrbi9lv1yczhnv0z0nlvlnp0y4xm3p0vkiyqp"))))
    (properties `((upstream-name . "hopit")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey
                             r-rdpack
                             r-rcppeigen
                             r-rcpp
                             r-questionr
                             r-mass))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=hopit")
    (synopsis
     "Hierarchical Ordered Probit Models with Application to Reporting Heterogeneity")
    (description
     "Self-reported health, happiness, attitudes, and other statuses or perceptions
are often the subject of biases that may come from different sources.  For
example, the evaluation of an individualâs own health may depend on previous
medical diagnoses, functional status, and symptoms and signs of illness; as on
well as life-style behaviors, including contextual social, gender, age-specific,
linguistic and other cultural factors (Jylha 2009
<doi:10.1016/j.socscimed.2009.05.013>; Oksuzyan et al.  2019
<doi:10.1016/j.socscimed.2019.03.002>).  The hopit package offers versatile
functions for analyzing different self-reported ordinal variables, and for
helping to estimate their biases.  Specifically, the package provides the
function to fit a generalized ordered probit model that regresses original
self-reported status measures on two sets of independent variables (King et al.
2004 <doi:10.1017/S0003055403000881>; Jurges 2007 <doi:10.1002/hec.1134>;
Oksuzyan et al.  2019 <doi:10.1016/j.socscimed.2019.03.002>).  The first set of
variables (e.g., health variables) included in the regression are individual
statuses and characteristics that are directly related to the self-reported
variable.  In the case of self-reported health, these could be chronic
conditions, mobility level, difficulties with daily activities, performance on
grip strength tests, anthropometric measures, and lifestyle behaviors.  The
second set of independent variables (threshold variables) is used to model
cut-points between adjacent self-reported response categories as functions of
individual characteristics, such as gender, age group, education, and country
(Oksuzyan et al.  2019 <doi:10.1016/j.socscimed.2019.03.002>).  The model helps
to adjust for specific socio-demographic and cultural differences in how the
continuous latent health is projected onto the ordinal self-rated measure.  The
fitted model can be used to calculate an individual predicted latent status
variable, a latent index, and standardized latent coefficients; and makes it
possible to reclassify a categorical status measure that has been adjusted for
inter-individual differences in reporting behavior.")
    (license license:gpl3)))

(define-public r-hopbyhop
  (package
    (name "r-hopbyhop")
    (version "3.41")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hopbyhop" version))
       (sha256
        (base32 "1dh502mjrk9dlqikn0ak4gh2dw9nrnp3zrz8j1xwa9cjn37al2wh"))))
    (properties `((upstream-name . "hopbyhop")))
    (build-system r-build-system)
    (propagated-inputs (list r-pastecs r-ggplot2))
    (home-page "https://cran.r-project.org/package=hopbyhop")
    (synopsis "Transmissions and Receptions in a Hop by Hop Network")
    (description
     "Computes the expectation of the number of transmissions and receptions
considering a Hop-by-Hop transport model with limited number of retransmissions
per packet.  It provides the theoretical results shown in Palma et.  al.(2016)
<DOI:10.1109/TLA.2016.7555237> and also estimated values based on Monte Carlo
simulations.  It is also possible to consider random data and ACK probabilities.")
    (license license:gpl2+)))

(define-public r-hoopr
  (package
    (name "r-hoopr")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hoopR" version))
       (sha256
        (base32 "1m6ffh7slcqzj28jn9f67n5czidal5nkv6c883sk96w13h3lhyam"))))
    (properties `((upstream-name . "hoopR")))
    (build-system r-build-system)
    (inputs (list pandoc pandoc))
    (propagated-inputs (list r-usethis
                             r-tidyr
                             r-stringr
                             r-rvest
                             r-rlang
                             r-rcppparallel
                             r-rcpp
                             r-purrr
                             r-progressr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-glue
                             r-future
                             r-furrr
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://github.com/sportsdataverse/hoopR")
    (synopsis "Access Men's Basketball Play by Play Data")
    (description
     "This package provides a utility to quickly obtain clean and tidy men's
basketball play by play data.  Provides functions to access live play by play
and box score data from ESPN<https://www.espn.com> with shot locations when
available.  It is also a full NBA Stats API<https://www.nba.com/stats/> wrapper.
 It is also a scraping and aggregating interface for Ken Pomeroy's men's college
basketball statistics website<https://kenpom.com>.  It provides users with an
active subscription the capability to scrape the website tables and analyze the
data for themselves.")
    (license license:expat)))

(define-public r-honestdid
  (package
    (name "r-honestdid")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HonestDiD" version))
       (sha256
        (base32 "1ywq7a4lz9w2k4yzqlljrb0qa623lgn3wngx00vapdx6a14vfaam"))))
    (properties `((upstream-name . "HonestDiD")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncatednormal
                             r-tibble
                             r-rlang
                             r-rglpk
                             r-purrr
                             r-pracma
                             r-mvtnorm
                             r-matrixstats
                             r-matrix
                             r-lpsolveapi
                             r-latex2exp
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-cvxr))
    (home-page "https://cran.r-project.org/package=HonestDiD")
    (synopsis
     "Robust Inference in Difference-in-Differences and Event Study Designs")
    (description
     "This package provides functions to conduct robust inference in
difference-in-differences and event study designs by implementing the methods
developed in Rambachan & Roth (2023) <doi:10.1093/restud/rdad018>, \"A More
Credible Approach to Parallel Trends\" [Previously titled \"An Honest
Approach...\"].  Inference is conducted under a weaker version of the parallel
trends assumption.  Uniformly valid confidence sets are constructed based upon
conditional confidence sets, fixed-length confidence sets and hybridized
confidence sets.")
    (license license:expat)))

(define-public r-homomorphicencryption
  (package
    (name "r-homomorphicencryption")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HomomorphicEncryption" version))
       (sha256
        (base32 "0ynxn1mcr76yvqjpmi8mxl35i9r1fy7rwshpv8qx68nabk67rh61"))))
    (properties `((upstream-name . "HomomorphicEncryption")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-hetools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HomomorphicEncryption")
    (synopsis "BFV, BGV, CKKS Schema for Fully Homomorphic Encryption")
    (description
     "This package implements the Brakerski-Fan-Vercauteren (BFV, 2012)
<https://eprint.iacr.org/2012/144>, Brakerski-Gentry-Vaikuntanathan (BGV, 2014)
<doi:10.1145/2633600>, and Cheon-Kim-Kim-Song (CKKS, 2016)
<https://eprint.iacr.org/2016/421.pdf> schema for Fully Homomorphic Encryption.
The included vignettes demonstrate the encryption procedures.")
    (license license:gpl3+)))

(define-public r-homomorpher
  (package
    (name "r-homomorpher")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "homomorpheR" version))
       (sha256
        (base32 "1iahq16nswlc3b87598206xdp24bg9v8acyjp1jivybl3fr4k3pq"))))
    (properties `((upstream-name . "homomorpheR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sodium r-r6 r-gmp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/bnaras/homomorpheR")
    (synopsis "Homomorphic Computations in R")
    (description
     "Homomorphic computations in R for privacy-preserving applications.  Currently
only the Paillier Scheme is implemented.")
    (license license:expat)))

(define-public r-homnormal
  (package
    (name "r-homnormal")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "homnormal" version))
       (sha256
        (base32 "1xw8j5b0w3ngqwzd458zcsmj6874dgxhrik1z3w7l188j5gr5vxa"))))
    (properties `((upstream-name . "homnormal")))
    (build-system r-build-system)
    (propagated-inputs (list r-huxtable))
    (home-page "https://cran.r-project.org/package=homnormal")
    (synopsis "Tests of Homogeneity of Variances")
    (description
     "Most common exact, asymptotic and resample based tests are provided for testing
the homogeneity of variances of k normal distributions under normality.  These
tests are Barlett, Bhandary & Dai, Brown & Forsythe, Chang et al., Gokpinar &
Gokpinar, Levene, Liu and Xu, Gokpinar.  Also, a data generation function from
multiple normal distribution is provided using any multiple normal parameters.
Bartlett, M. S. (1937) <doi:10.1098/rspa.1937.0109> Bhandary, M., & Dai, H.
(2008) <doi:10.1080/03610910802431011> Brown, M. B., & Forsythe, A. B.
(1974).<doi:10.1080/01621459.1974.10482955> Chang, C. H., Pal, N., & Lin, J. J.
(2017) <doi:10.1080/03610918.2016.1202277> Gokpinar E. & Gokpinar F. (2017)
<doi:10.1080/03610918.2014.955110> Liu, X., & Xu, X. (2010)
<doi:10.1016/j.spl.2010.05.017> Levene, H. (1960)
<https://cir.nii.ac.jp/crid/1573950400526848896> GÃ¶@code{kpÄ±nar}, E. (2020)
<doi:10.1080/03610918.2020.1800037>.")
    (license license:gpl2)))

(define-public r-hommel
  (package
    (name "r-hommel")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hommel" version))
       (sha256
        (base32 "1lvlazvvgmaqbawalgry1a59qmqxv2qy9g0ijhpcawwv2cfxmdja"))))
    (properties `((upstream-name . "hommel")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=hommel")
    (synopsis
     "Methods for Closed Testing with Simes Inequality, in Particular Hommel's Method")
    (description
     "This package provides methods for closed testing using Simes local tests.  In
particular, calculates adjusted p-values for Hommel's multiple testing method,
and provides lower confidence bounds for true discovery proportions.  A robust
but more conservative variant of the closed testing procedure that does not
require the assumption of Simes inequality is also implemented.  The methods
have been described in detail in Goeman et al (2016)
<@code{arXiv:1611.06739v2>}.")
    (license license:gpl2+)))

(define-public r-homeric
  (package
    (name "r-homeric")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Homeric" version))
       (sha256
        (base32 "1vcs8fj39zpz45p7gph0mnx65hgr35na0b79i8llyw7i1h7zqzxr"))))
    (properties `((upstream-name . "Homeric")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Homeric")
    (synopsis "Doughnut Plots")
    (description
     "This package provides a simple implementation of doughnut plots - pie charts
with a blank center.  The package is named after Homer Simpson - arguably the
best-known lover of doughnuts.")
    (license license:gpl2)))

(define-public r-homals
  (package
    (name "r-homals")
    (version "1.0-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "homals" version))
       (sha256
        (base32 "0kjcy3nv28jrir6a4pf8y82908p5snx8wha8h9lip4y436n1f4iw"))))
    (properties `((upstream-name . "homals")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d r-ape))
    (home-page "https://cran.r-project.org/package=homals")
    (synopsis "Gifi Methods for Optimal Scaling")
    (description
     "This package performs a homogeneity analysis (multiple correspondence analysis)
and various extensions.  Rank restrictions on the category quantifications can
be imposed (nonlinear PCA).  The categories are transformed by means of optimal
scaling with options for nominal, ordinal, and numerical scale levels (for
rank-1 restrictions).  Variables can be grouped into sets, in order to emulate
regression analysis and canonical correlation analysis.")
    (license license:gpl3)))

(define-public r-holomics
  (package
    (name "r-holomics")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Holomics" version))
       (sha256
        (base32 "1d2ypgsaq1y4q9q8yis2549m2vaxg4fas6x9zagsw4jx97vi61kh"))))
    (properties `((upstream-name . "Holomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-uuid
                             r-tippy
                             r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shinyvalidate
                             r-shinyjs
                             r-shinybusy
                             r-shinyalert
                             r-shiny
                             r-rspectra
                             r-reshape2
                             r-readxl
                             r-openxlsx
                             r-mixomics
                             r-matrixstats
                             r-markdown
                             r-igraph
                             r-golem
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-config
                             r-bs4dash
                             r-biocparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MolinLab/Holomics")
    (synopsis
     "An User-Friendly R 'shiny' Application for Multi-Omics Data Integration and Analysis")
    (description
     "This package provides a shiny application, which allows you to perform single-
and multi-omics analyses using your own omics datasets.  After the upload of the
omics datasets and a metadata file, single-omics is performed for feature
selection and dataset reduction.  These datasets are used for pairwise- and
multi-omics analyses, where automatic tuning is done to identify correlations
between the datasets - the end goal of the recommended Holomics workflow.
Methods used in the package were implemented in the package mixomics by Florian
Rohart,@code{BenoÃ®t} Gautier,Amrit Singh,Kim-Anh LÃª Cao (2017)
<doi:10.1371/journal.pcbi.1005752> and are described there in further detail.")
    (license license:gpl3+)))

(define-public r-holodeck
  (package
    (name "r-holodeck")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "holodeck" version))
       (sha256
        (base32 "1phaj4yw01301rgcdv4w44q6y5vxwggmks0xdbvg9i2ak3kjcyfp"))))
    (properties `((upstream-name . "holodeck")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-mass
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Aariq/holodeck")
    (synopsis "Tidy Interface for Simulating Multivariate Data")
    (description
     "This package provides pipe-friendly (%>%) wrapper functions for MASS::mvrnorm()
to create simulated multivariate data sets with groups of variables with
different degrees of variance, covariance, and effect size.")
    (license license:expat)))

(define-public r-holland
  (package
    (name "r-holland")
    (version "0.1.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "holland" version))
       (sha256
        (base32 "0f5nr17rmx1m3g4aw6c1f82xdj2ll5nr8slm8ha80cg2i6a90v10"))))
    (properties `((upstream-name . "holland")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mplusautomation))
    (home-page "https://cran.r-project.org/package=holland")
    (synopsis "Statistics for Holland's Theory of Vocational Choice")
    (description
     "Offers a convenient way to compute parameters in the framework of the theory of
vocational choice introduced by J.L. Holland, (1997).  A comprehensive summary
to this theory of vocational choice is given in Holland, J.L. (1997).  Making
vocational choices.  A theory of vocational personalities and work environments.
 Lutz, FL: Psychological Assessment.")
    (license license:gpl3)))

(define-public r-holiglm
  (package
    (name "r-holiglm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "holiglm" version))
       (sha256
        (base32 "02i6smmwmvbkx351ahjzz247kky377r6ara06c5wk5jrfsfjbbr7"))))
    (properties `((upstream-name . "holiglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-suppdists
                             r-slam
                             r-roi-plugin-ecos
                             r-roi
                             r-mass
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=holiglm")
    (synopsis "Holistic Generalized Linear Models")
    (description
     "Holistic generalized linear models (HGLMs) extend generalized linear models
(GLMs) by enabling the possibility to add further constraints to the model.  The
holiglm package simplifies estimating HGLMs using convex optimization.
Additional information about the package can be found in the reference manual,
the README and the accompanying paper <doi:10.18637/jss.v108.i07>.")
    (license license:gpl3)))

(define-public r-holi
  (package
    (name "r-holi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "holi" version))
       (sha256
        (base32 "08q9b4vji3ak75kvkmzx0nb6pmq9bzv6r9rwj1pdk9sj0pswkp3c"))))
    (properties `((upstream-name . "holi")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn
                             r-shinythemes
                             r-shiny
                             r-rpostgres
                             r-pool
                             r-mass
                             r-likelihoodasy
                             r-ggplot2
                             r-dt))
    (home-page "https://github.com/mightymetrika/holi")
    (synopsis "Higher Order Likelihood Inference Web Applications")
    (description
     "Higher order likelihood inference is a promising approach for analyzing small
sample size data.  The holi package provides web applications for higher order
likelihood inference.  It currently supports linear, logistic, and Poisson
generalized linear models through the rstar_glm() function, based on Pierce and
Bellio (2017) <doi:10.1111/insr.12232> and @code{likelihoodAsy}'.  The package
offers two main features: LA_rstar(), which launches an interactive shiny
application allowing users to fit models with rstar_glm() through their web
browser, and sim_rstar_glm_pgsql(), which streamlines the process of launching a
web-based shiny simulation application that saves results to a user-created
@code{PostgreSQL} database.")
    (license license:expat)))

(define-public r-hodgestools
  (package
    (name "r-hodgestools")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HodgesTools" version))
       (sha256
        (base32 "02i87pd5ah3mmf03878354p8nqh3bgn9cnrl1pnnrb3qw7afj19q"))))
    (properties `((upstream-name . "HodgesTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-recordlinkage
                             r-readr
                             r-rcolorbrewer
                             r-qqman
                             r-magrittr
                             r-ini
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=HodgesTools")
    (synopsis "Common Use Tools for Genomic Analysis")
    (description
     "Built by Hodges lab members for current and future Hodges lab members.  Other
individuals are welcome to use as well.  Provides useful functions that the lab
uses everyday to analyze various genomic datasets.  Critically, only general use
functions are provided; functions specific to a given technique are reserved for
a separate package.  As the lab grows, we expect to continue adding functions to
the package to build on previous lab members code.")
    (license license:gpl3+)))

(define-public r-hockeystick
  (package
    (name "r-hockeystick")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hockeystick" version))
       (sha256
        (base32 "0l5sk4x66zalmznksf9c099jn9i2i90bs57h2f44z105hzpdi606"))))
    (properties `((upstream-name . "hockeystick")))
    (build-system r-build-system)
    (propagated-inputs (list r-treemapify
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rvest
                             r-readr
                             r-rcolorbrewer
                             r-patchwork
                             r-lubridate
                             r-jsonlite
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cortinah.github.io/hockeystick/")
    (synopsis "Download and Visualize Essential Climate Change Data")
    (description
     "This package provides easy access to essential climate change datasets to
non-climate experts.  Users can download the latest raw data from authoritative
sources and view it via pre-defined ggplot2 charts.  Datasets include
atmospheric CO2, methane, emissions, instrumental and proxy temperature records,
sea levels, Arctic/Antarctic sea-ice, Hurricanes, and Paleoclimate data.
Sources include: NOAA Mauna Loa Laboratory
<https://gml.noaa.gov/ccgg/trends/data.html>, Global Carbon Project
<https://www.globalcarbonproject.org/carbonbudget/>, NASA GISTEMP
<https://data.giss.nasa.gov/gistemp/>, National Snow and Sea Ice Data Center
<https://nsidc.org/home>, CSIRO
<https://research.csiro.au/slrwavescoast/sea-level/measurements-and-data/sea-level-data/>,
NOAA Laboratory for Satellite Altimetry
<https://www.star.nesdis.noaa.gov/socd/lsa/@code{SeaLevelRise/>} and HURDAT
Atlantic Hurricane Database
<https://www.aoml.noaa.gov/hrd/hurdat/Data_Storm.html>, Vostok Paleo carbon
dioxide and temperature data: <doi:10.3334/CDIAC/ATG.009>.")
    (license license:expat)))

(define-public r-hoasso
  (package
    (name "r-hoasso")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HOasso" version))
       (sha256
        (base32 "07xihcjj3gfxl1fd5x1dvfmfg8m19rfjzq110ay3vrj38sxxvkiw"))))
    (properties `((upstream-name . "HOasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-igraph))
    (home-page "https://cran.r-project.org/package=HOasso")
    (synopsis "Higher Order Assortativity for Complex Networks")
    (description
     "Allows to evaluate Higher Order Assortativity of complex networks defined
through objects of class igraph from the package of the same name.  The package
returns a result also for directed and weighted graphs.  References, Arcagni,
A., Grassi, R., Stefani, S., & Torriero, A. (2017)
<doi:10.1016/j.ejor.2017.04.028> Arcagni, A., Grassi, R., Stefani, S., &
Torriero, A. (2021) <doi:10.1016/j.jbusres.2019.10.008> Arcagni, A., Cerqueti,
R., & Grassi, R. (2023) <doi:10.48550/@code{arXiv.2304.01737>}.")
    (license license:gpl2+)))

(define-public r-hoardr
  (package
    (name "r-hoardr")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hoardr" version))
       (sha256
        (base32 "0dws91z1a25ynkdjj3f1lgp6qbgvfgnqi0mw14f4b13m670il0sf"))))
    (properties `((upstream-name . "hoardr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rappdirs r-r6 r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/hoardr/")
    (synopsis "Manage Cached Files")
    (description
     "Suite of tools for managing cached files, targeting use in other R packages.
Uses rappdirs for cross-platform paths.  Provides utilities to manage cache
directories, including targeting files by path or by key; cached directories can
be compressed and uncompressed easily to save disk space.")
    (license license:expat)))

(define-public r-hoarder
  (package
    (name "r-hoarder")
    (version "0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hoardeR" version))
       (sha256
        (base32 "0maqypigq2942mqbnr7a11iryv6xhhfrnyarqw3r8z5zimjy1y7p"))))
    (properties `((upstream-name . "hoardeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-seqinr
                             r-s4vectors
                             r-rsamtools
                             r-rmarkdown
                             r-rcurl
                             r-r-utils
                             r-mass
                             r-knitr
                             r-kernsmooth
                             r-iranges
                             r-httr
                             r-genomictools-filehandler
                             r-genomicranges
                             r-data-table
                             r-biostrings
                             r-bamsignals))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hoardeR")
    (synopsis
     "Collect and Retrieve Annotation Data for Various Genomic Data Using Different Webservices")
    (description
     "Cross-species identification of novel gene candidates using the NCBI web service
is provided.  Further, sets of @code{miRNA} target genes can be identified by
using the targetscan.org API.")
    (license license:gpl2+)))

(define-public r-hnp
  (package
    (name "r-hnp")
    (version "1.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hnp" version))
       (sha256
        (base32 "12cbc353ipr2rcc93skf1766g38j1pvpdkqk3cswv0cxsjl2x7pl"))))
    (properties `((upstream-name . "hnp")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=hnp")
    (synopsis "Half-Normal Plots with Simulation Envelopes")
    (description
     "Generates (half-)normal plots with simulation envelopes using different
diagnostics from a range of different fitted models.  A few example datasets are
included.")
    (license license:gpl2+)))

(define-public r-hnmf
  (package
    (name "r-hnmf")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hNMF" version))
       (sha256
        (base32 "08xn9i24dcykvbcsqzmk33li5fm1alkvcmq2fp0a2ysw4lvwfwqs"))))
    (properties `((upstream-name . "hNMF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rasterimage r-oro-nifti r-nnls r-nmf r-mass))
    (home-page "https://cran.r-project.org/package=hNMF")
    (synopsis "Hierarchical Non-Negative Matrix Factorization")
    (description
     "Hierarchical and single-level non-negative matrix factorization.  Several NMF
algorithms are available.")
    (license license:gpl3)))

(define-public r-hmtl
  (package
    (name "r-hmtl")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMTL" version))
       (sha256
        (base32 "0pn192bikij1yqms6vnv1n313g4q21966314zvg1krrwisklny9r"))))
    (properties `((upstream-name . "HMTL")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc r-matrix))
    (home-page "https://cran.r-project.org/package=HMTL")
    (synopsis "Heterogeneous Multi-Task Feature Learning")
    (description
     "The heterogeneous multi-task feature learning is a data integration method to
conduct joint feature selection across multiple related data sets with different
distributions.  The algorithm can combine different types of learning tasks,
including linear regression, Huber regression, adaptive Huber, and logistic
regression.  The modified version of Bayesian Information Criterion (BIC) is
produced to measure the model performance.  Package is based on Yuan Zhong, Wei
Xu, and Xin Gao (2022)
<https://www.fields.utoronto.ca/talk-media/1/53/65/slides.pdf>.")
    (license license:gpl3)))

(define-public r-hmstimer
  (package
    (name "r-hmstimer")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmstimer" version))
       (sha256
        (base32 "178jnxhbpa5y2k2cw3w7czyapb23n6yygmymijvn3pzcgx607y3v"))))
    (properties `((upstream-name . "hmstimer")))
    (build-system r-build-system)
    (propagated-inputs (list r-hms))
    (home-page "https://cran.r-project.org/package=hmstimer")
    (synopsis "'hms' Based Timer")
    (description
     "Tracks elapsed clock time using a `hms::hms()` scalar, which if running has an
attribute named start that specifies the system time when the timer was started.
 The elapsed time is the value of the scalar plus the difference between the
current system time and the system time when the timer was started.")
    (license license:expat)))

(define-public r-hmsr
  (package
    (name "r-hmsr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmsr" version))
       (sha256
        (base32 "0zznji4cxkgbww7cyxad68bxmqf18y76wkyw9y03d97871jr0sny"))))
    (properties `((upstream-name . "hmsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-msm r-ga))
    (home-page "https://wojtacht.github.io/hms/")
    (synopsis "Multipopulation Evolutionary Strategy HMS")
    (description
     "The HMS (Hierarchic Memetic Strategy) is a composite global optimization
strategy consisting of a multi-population evolutionary strategy and some
auxiliary methods.  The HMS makes use of a dynamically-evolving data structure
that provides an organization among the component populations.  It is a tree
with a fixed maximal height and variable internal node degree.  Each component
population is governed by a particular evolutionary engine.  This package
provides a simple R implementation with examples of using different genetic
algorithms as the population engines.  References: J. Sawicki, M. Å@code{oÅ},
M. @code{SmoÅka}, J. Alvarez-Aramberri (2022) <doi:10.1007/s11047-020-09836-w>.")
    (license license:expat)))

(define-public r-hmsc
  (package
    (name "r-hmsc")
    (version "3.0-13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Hmsc" version))
       (sha256
        (base32 "13gqwjniwxc5lgsj044qjq6ic0ibwvj3mviw4hq31s89m834gvyb"))))
    (properties `((upstream-name . "Hmsc")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-statmod
                             r-sp
                             r-rlang
                             r-proc
                             r-pracma
                             r-nnet
                             r-mcmcpack
                             r-matrixstats
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-fnn
                             r-fields
                             r-coda
                             r-bayeslogit
                             r-ape
                             r-abind))
    (native-inputs (list r-r-rsp))
    (home-page
     "https://www.helsinki.fi/en/researchgroups/statistical-ecology/software/hmsc")
    (synopsis "Hierarchical Model of Species Communities")
    (description
     "Hierarchical Modelling of Species Communities (HMSC) is a model-based approach
for analyzing community ecological data.  This package implements it in the
Bayesian framework with Gibbs Markov chain Monte Carlo (MCMC) sampling (Tikhonov
et al. (2020) <doi:10.1111/2041-210X.13345>).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hmr
  (package
    (name "r-hmr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMR" version))
       (sha256
        (base32 "14hhdk8l3kx0388ixa2facrw8h5blry1sxch6sci60g4iwwcwi8v"))))
    (properties `((upstream-name . "HMR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HMR")
    (synopsis "Flux Estimation with Static Chamber Data")
    (description
     "Statistical analysis of static chamber concentration data for trace gas flux
estimation.")
    (license license:gpl2+)))

(define-public r-hmptrees
  (package
    (name "r-hmptrees")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMPTrees" version))
       (sha256
        (base32 "1jha64iyb0816rdg2i3z7i31z02r72k6acmvw0ibw3sli8zcvphb"))))
    (properties `((upstream-name . "HMPTrees")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmp r-foreach r-doparallel r-dirmult r-ape))
    (home-page "https://cran.r-project.org/package=HMPTrees")
    (synopsis
     "Statistical Object Oriented Data Analysis of RDP-Based Taxonomic Trees from Human Microbiome Data")
    (description
     "This package provides tools to model, compare, and visualize populations of
taxonomic tree objects.")
    (license license:asl2.0)))

(define-public r-hmp
  (package
    (name "r-hmp")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMP" version))
       (sha256
        (base32 "0233p7gajr2aic0c5snni4g9v1bwn4zd5i3kagxhqxa3mvy5c7wc"))))
    (properties `((upstream-name . "HMP")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-rpart-plot
                             r-rpart
                             r-mass
                             r-lattice
                             r-gplots
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-dirmult))
    (home-page "https://cran.r-project.org/package=HMP")
    (synopsis
     "Hypothesis Testing and Power Calculations for Comparing Metagenomic Samples from HMP")
    (description
     "Using Dirichlet-Multinomial distribution to provide several functions for formal
hypothesis testing, power and sample size calculations for human microbiome
experiments.")
    (license license:asl2.0)))

(define-public r-hmmtmb
  (package
    (name "r-hmmtmb")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmmTMB" version))
       (sha256
        (base32 "1vrjkq5vv70wjvg588w2q7sd8qhnp4iz3swx8yc3x8w7zpwkf0hn"))))
    (properties `((upstream-name . "hmmTMB")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmbstan
                             r-tmb
                             r-stringr
                             r-rcppeigen
                             r-r6
                             r-optimx
                             r-mgcv
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-circstats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TheoMichelot/hmmTMB")
    (synopsis "Fit Hidden Markov Models using Template Model Builder")
    (description
     "Fitting hidden Markov models using automatic differentiation and Laplace
approximation, allowing for fast inference and flexible covariate effects
(including random effects and smoothing splines) on model parameters.  The
package is described by Michelot (2022) <@code{arXiv:2211.14139>}.")
    (license license:gpl3)))

(define-public r-hmmr
  (package
    (name "r-hmmr")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmmr" version))
       (sha256
        (base32 "1m0jmw0i66hm5z5rycvpdmasq8zhgsz91km491n0n923mm480hmh"))))
    (properties `((upstream-name . "hmmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-depmixs4))
    (home-page "<https://depmix.github.io/hmmr/>")
    (synopsis
     "\"Mixture and Hidden Markov Models with R\" Datasets and Example Code")
    (description
     "Datasets and code examples that accompany our book Visser & Speekenbrink (2021),
\"Mixture and Hidden Markov Models with R\", <https://depmix.github.io/hmmr/>.")
    (license license:gpl2+)))

(define-public r-hmmpa
  (package
    (name "r-hmmpa")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMMpa" version))
       (sha256
        (base32 "0c3jmvcklywqsjmskx7zbw4d3l8i6bzr5h741v8iwgyw67mjn37g"))))
    (properties `((upstream-name . "HMMpa")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HMMpa")
    (synopsis "Analysing Accelerometer Data Using Hidden Markov Models")
    (description
     "Analysing time-series accelerometer data to quantify length and intensity of
physical activity using hidden Markov models.  It also contains the traditional
cut-off point method.  Witowski V, Foraita R, Pitsiladis Y, Pigeot I, Wirsik N
(2014)<doi:10.1371/journal.pone.0114089>.")
    (license license:gpl3)))

(define-public r-hmmmlselect
  (package
    (name "r-hmmmlselect")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMMmlselect" version))
       (sha256
        (base32 "0kvw9nihbmvp19hbz5h8sz9jps5ik2di969jxdbp4ymj735c0fc9"))))
    (properties `((upstream-name . "HMMmlselect")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mvtnorm r-mcmcpack r-mclust
                             r-hiddenmarkov))
    (home-page "https://cran.r-project.org/package=HMMmlselect")
    (synopsis
     "Determine the Number of States in Hidden Markov Models via Marginal Likelihood")
    (description
     "Provide functions to make estimate the number of states for a hidden Markov
model (HMM) using marginal likelihood method proposed by the authors.  See the
Manual.pdf file a detail description of all functions, and a detail tutorial.")
    (license license:gpl2+)))

(define-public r-hmmm
  (package
    (name "r-hmmm")
    (version "1.0-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmmm" version))
       (sha256
        (base32 "0fknljb97x0nkj904dxx98p0mmx238ak33cy3j4d0626a2589kyg"))))
    (properties `((upstream-name . "hmmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-nleqslv r-mvtnorm r-mass))
    (home-page "https://www.r-project.org")
    (synopsis "Hierarchical Multinomial Marginal Models")
    (description
     "This package provides functions for specifying and fitting marginal models for
contingency tables proposed by Bergsma and Rudas (2002)
<doi:10.1214/aos/1015362188> here called hierarchical multinomial marginal
models (hmmm) and their extensions presented by Bartolucci, Colombi and Forcina
(2007) <https://www.jstor.org/stable/24307737>; multinomial Poisson homogeneous
(mph) models and homogeneous linear predictor (hlp) models for contingency
tables proposed by Lang (2004) <doi:10.1214/aos/1079120140> and Lang (2005)
<doi:10.1198/016214504000001042>.  Inequality constraints on the parameters are
allowed and can be tested.")
    (license license:gpl2+)))

(define-public r-hmmextra0s
  (package
    (name "r-hmmextra0s")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMMextra0s" version))
       (sha256
        (base32 "067yb9xg1b4z2k0zhjj4wlvlv46c7rxaipyqkc81r30zh4qfrr1c"))))
    (properties `((upstream-name . "HMMextra0s")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-ellipse))
    (native-inputs (list gfortran))
    (home-page "https://www.stats.otago.ac.nz/?people=ting_wang")
    (synopsis "Hidden Markov Models with Extra Zeros")
    (description
     "This package contains functions for hidden Markov models with observations
having extra zeros as defined in the following two publications, Wang, T.,
Zhuang, J., Obara, K. and Tsuruoka, H. (2016) <doi:10.1111/rssc.12194>; Wang,
T., Zhuang, J., Buckby, J., Obara, K. and Tsuruoka, H. (2018)
<doi:10.1029/2017JB015360>.  The observed response variable is either univariate
or bivariate Gaussian conditioning on presence of events, and extra zeros mean
that the response variable takes on the value zero if nothing is happening.
Hence the response is modelled as a mixture distribution of a Bernoulli variable
and a continuous variable.  That is, if the Bernoulli variable takes on the
value 1, then the response variable is Gaussian, and if the Bernoulli variable
takes on the value 0, then the response is zero too.  This package includes
functions for simulation, parameter estimation, goodness-of-fit, the Viterbi
algorithm, and plotting the classified 2-D data.  Some of the functions in the
package are based on those of the R package @code{HiddenMarkov} by David Harte.
This updated version has included an example dataset and R code examples to show
how to transform the data into the objects needed in the main functions.  We
have also made changes to increase the speed of some of the functions.")
    (license license:gpl2+)))

(define-public r-hmmesolver
  (package
    (name "r-hmmesolver")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMMEsolver" version))
       (sha256
        (base32 "0msin7rq3npz221mvrw3zcs6bwz439six99iblx5p3hkp1n1ljf3"))))
    (properties `((upstream-name . "HMMEsolver")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=HMMEsolver")
    (synopsis
     "Fast Solver for Henderson Mixed Model Equation via Row Operations")
    (description
     "Consider the linear mixed model with normal random effects.  A typical method to
solve Henderson's Mixed Model Equations (HMME) is recursive estimation of the
fixed effects and random effects.  We provide a fast, stable, and scalable
solver to the HMME without computing matrix inverse.  See Kim (2017)
<@code{arXiv:1710.09663>} for more details.")
    (license license:gpl3+)))

(define-public r-hmm-discnp
  (package
    (name "r-hmm-discnp")
    (version "3.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmm.discnp" version))
       (sha256
        (base32 "1cwsgjf258hwyf12sn54iqiliikmadbknlvhclhmqrr2vvj7561f"))))
    (properties `((upstream-name . "hmm.discnp")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnet))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=hmm.discnp")
    (synopsis
     "Hidden Markov Models with Discrete Non-Parametric Observation Distributions")
    (description
     "Fits hidden Markov models with discrete non-parametric observation distributions
to data sets.  The observations may be univariate or bivariate.  Simulates data
from such models.  Finds most probable underlying hidden states, the most
probable sequences of such states, and the log likelihood of a collection of
observations given the parameters of the model.  Auxiliary predictors are
accommodated in the univariate setting.")
    (license license:gpl2+)))

(define-public r-hmer
  (package
    (name "r-hmer")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmer" version))
       (sha256
        (base32 "0536bdrg4cw4kqmx6czzh63b8wia6fhm02fvjv9irlmxqhmy0mxa"))))
    (properties `((upstream-name . "hmer")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-stringr
                             r-rlang
                             r-r6
                             r-purrr
                             r-pdist
                             r-mvtnorm
                             r-mass
                             r-lhs
                             r-isoband
                             r-ggplot2
                             r-ggbeeswarm
                             r-ggally
                             r-dplyr
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andy-iskauskas/hmer")
    (synopsis "History Matching and Emulation Package")
    (description
     "This package provides a set of objects and functions for Bayes Linear emulation
and history matching.  Core functionality includes automated training of
emulators to data, diagnostic functions to ensure suitability, and a variety of
proposal methods for generating waves of points.  For details on the
mathematical background, there are many papers available on the topic (see
references attached to function help files or the below references); for details
of the functions in this package, consult the manual or help files.  Iskauskas,
A, et al. (2024) <doi:10.18637/jss.v109.i10>.  Bower, R.G., Goldstein, M., and
Vernon, I. (2010) <doi:10.1214/10-BA524>.  Craig, P.S., Goldstein, M., Seheult,
A.H., and Smith, J.A. (1997) <doi:10.1007/978-1-4612-2290-3_2>.")
    (license license:expat)))

(define-public r-hmeasure
  (package
    (name "r-hmeasure")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmeasure" version))
       (sha256
        (base32 "0l4nlny532kddiaa1nmgd37971whhwzb54mb1pvbwax7fsg6hmhw"))))
    (properties `((upstream-name . "hmeasure")))
    (build-system r-build-system)
    (home-page "http://www.hmeasure.net")
    (synopsis
     "The H-Measure and Other Scalar Classification Performance Metrics")
    (description
     "Classification performance metrics that are derived from the ROC curve of a
classifier.  The package includes the H-measure performance metric as described
in <http://link.springer.com/article/10.1007/s10994-009-5119-5>, which computes
the minimum total misclassification cost, integrating over any uncertainty about
the relative misclassification costs, as per a user-defined prior.  It also
offers a one-stop-shop for other scalar metrics of performance, including
sensitivity, specificity and many others, and also offers plotting tools for ROC
curves and related statistics.")
    (license license:expat)))

(define-public r-hmdhfdplus
  (package
    (name "r-hmdhfdplus")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMDHFDplus" version))
       (sha256
        (base32 "1cz9q0kydb926v1n15z96cj1a7d1nyv2ffkxf00vay5l70n05137"))))
    (properties `((upstream-name . "HMDHFDplus")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-lubridate
                             r-janitor
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/timriffe/TR1")
    (synopsis
     "Read Human Mortality Database and Human Fertility Database Data from the Web")
    (description
     "Utilities for reading data from the Human Mortality Database
(<https://www.mortality.org>), Human Fertility Database
(<https://www.humanfertility.org>), and similar databases from the web or
locally into an R session as data.frame objects.  These are the two most widely
used sources of demographic data to study basic demographic change, trends, and
develop new demographic methods.  Other supported databases at this time include
the Human Fertility Collection (<https://www.fertilitydata.org>), The Japanese
Mortality Database (<https://www.ipss.go.jp/p-toukei/JMD/index-en.html>), and
the Canadian Human Mortality Database (<http://www.bdlc.umontreal.ca/chmd/>).
Arguments and data are standardized.")
    (license license:gpl2)))

(define-public r-hmclearn
  (package
    (name "r-hmclearn")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmclearn" version))
       (sha256
        (base32 "0zalvgnibd1kygryqcah5d008y6a0nxpy61yyiqsriw89r01jyjk"))))
    (properties `((upstream-name . "hmclearn")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mass r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hmclearn")
    (synopsis "Fit Statistical Models Using Hamiltonian Monte Carlo")
    (description
     "Provide users with a framework to learn the intricacies of the Hamiltonian Monte
Carlo algorithm with hands-on experience by tuning and fitting their own models.
 All of the code is written in R. Theoretical references are listed below:.
Neal, Radford (2011) \"Handbook of Markov Chain Monte Carlo\" ISBN:
978-1420079418, Betancourt, Michael (2017) \"A Conceptual Introduction to
Hamiltonian Monte Carlo\" <@code{arXiv:1701.02434>}, Thomas, S., Tu, W. (2020)
\"Learning Hamiltonian Monte Carlo in R\" <@code{arXiv:2006.16194>}, Gelman, A.,
Carlin, J. B., Stern, H. S., Dunson, D. B., Vehtari, A., & Rubin, D. B. (2013)
\"Bayesian Data Analysis\" ISBN: 978-1439840955, Agresti, Alan (2015) \"Foundations
of Linear and Generalized Linear Models ISBN: 978-1118730034, Pinheiro, J.,
Bates, D. (2006) \"Mixed-effects Models in S and S-Plus\" ISBN: 978-1441903174.")
    (license license:gpl3)))

(define-public r-hmcdm
  (package
    (name "r-hmcdm")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hmcdm" version))
       (sha256
        (base32 "0w3ldx8bwcqbc0mv1f8yiby08w4s37jc7gp3p53pmldqk65s7qfb"))))
    (properties `((upstream-name . "hmcdm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstantools r-rcpparmadillo r-rcpp r-progress
                             r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tmsalab/hmcdm")
    (synopsis "Hidden Markov Cognitive Diagnosis Models for Learning")
    (description
     "Fitting hidden Markov models of learning under the cognitive diagnosis
framework.  The estimation of the hidden Markov diagnostic classification model,
the first order hidden Markov model, the reduced-reparameterized unified
learning model, and the joint learning model for responses and response times.")
    (license license:gpl2+)))

(define-public r-hmc
  (package
    (name "r-hmc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMC" version))
       (sha256
        (base32 "1zmppanwfdhpvi5pxw067287zy5xw2ipw8p7q7c7b3gq7n3xm4hx"))))
    (properties `((upstream-name . "HMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-pma r-mass r-irlba r-glmnet))
    (home-page "https://cran.r-project.org/package=HMC")
    (synopsis
     "High Dimensional Mean Comparison with Projection and Cross-Fitting")
    (description
     "This package provides interpretable High-dimensional Mean Comparison methods
(HMC).  For example, users can use them to assess the difference in gene
expression between two treatment groups.  It is not a gene-by-gene comparison.
Instead, we focus on the interplay between features and are interested in those
that are predictive of the group label.  The methods are valid frequentist tests
and give sparse estimates indicating which features contribute to the test
results.")
    (license license:gpl2)))

(define-public r-hmb
  (package
    (name "r-hmb")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HMB" version))
       (sha256
        (base32 "19z3d0b98fyjcnbxh3g6h2g927nv0408sbxjlzalrjlw9mbpzd2b"))))
    (properties `((upstream-name . "HMB")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=HMB")
    (synopsis "Hierarchical Model-Based Estimation Approach")
    (description
     "For estimation of a variable of interest using two sources of auxiliary
information available in a nested structure.  For reference see Saarela et al.
(2016)<doi:10.1007/s13595-016-0590-1> and Saarela et al. (2018)
<doi:10.3390/rs10111832>.")
    (license license:gpl2+)))

(define-public r-hlt
  (package
    (name "r-hlt")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hlt" version))
       (sha256
        (base32 "0wzxymjb70lcgk1hj6ky6ypk9i6s0a5rm7yqlpbs1fddl6mkcln9"))))
    (properties `((upstream-name . "hlt")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-tidyr
                             r-rcppprogress
                             r-rcppdist
                             r-rcpp
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (home-page "https://github.com/mkleinsa/hlt")
    (synopsis "Higher-Order Item Response Theory")
    (description
     "Higher-order latent trait theory (item response theory).  We implement the
generalized partial credit model with a second-order latent trait structure.
Latent regression can be done on the second-order latent trait.  For a pre-print
of the methods, see, \"Latent Regression in Higher-Order Item Response Theory
with the R Package hlt\"
<https://mkleinsa.github.io/doc/hlt_proof_draft_brmic.pdf>.")
    (license license:gpl2+)))

(define-public r-hlmdiag
  (package
    (name "r-hlmdiag")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HLMdiag" version))
       (sha256
        (base32 "0yy0qf9iw5gr40vlmm697rvvvgp077f08fialx3ijn0vfpsjbl2v"))))
    (properties `((upstream-name . "HLMdiag")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-stringr
                             r-rlang
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-plyr
                             r-mgcv
                             r-matrix
                             r-mass
                             r-magrittr
                             r-janitor
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-diagonals))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aloy/HLMdiag")
    (synopsis "Diagnostic Tools for Hierarchical (Multilevel) Linear Models")
    (description
     "This package provides a suite of diagnostic tools for hierarchical (multilevel)
linear models.  The tools include not only leverage and traditional deletion
diagnostics (Cook's distance, covratio, covtrace, and MDFFITS) but also
convenience functions and graphics for residual analysis.  Models can be fit
using either lmer in the lme4 package or lme in the nlme package.")
    (license license:gpl2)))

(define-public r-hlidacr
  (package
    (name "r-hlidacr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hlidacr" version))
       (sha256
        (base32 "02l86bvb4w8wdq9mk9zh5wkf5i5y5jlgld0ciz851p5ra70c395p"))))
    (properties `((upstream-name . "hlidacr")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-urltools
                             r-stringr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-glue
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/skvrnami/hlidacr")
    (synopsis "Access Data from the 'HlÃ­daÄ StÃ¡tu' API")
    (description
     "This package provides access to datasets published by @code{HlÃ­daÄ}
@code{stÃ¡tu} <https://www.hlidacstatu.cz/>, a Czech watchdog, via their API.")
    (license license:expat)))

(define-public r-hlar
  (package
    (name "r-hlar")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hlaR" version))
       (sha256
        (base32 "0l0vch3sliyhm9pcz3x488bsq513c1iv2p55fg71141cr5k71pal"))))
    (properties `((upstream-name . "hlaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-schoolmath
                             r-reshape2
                             r-readr
                             r-purrr
                             r-janitor
                             r-dplyr
                             r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://pubmed.ncbi.nlm.nih.gov/35101308/")
    (synopsis "Tools for HLA Data")
    (description
     "This package provides a streamlined tool for eplet analysis of donor and
recipient HLA (human leukocyte antigen) mismatch.  Messy, low-resolution HLA
typing data is cleaned, and imputed to high-resolution using the NMDP (National
Marrow Donor Program) haplotype reference database
<https://haplostats.org/haplostats>.  High resolution data is analyzed for
overall or single antigen eplet mismatch using a reference table (currently
supporting HLA@code{MatchMaker} <http://www.epitopes.net> versions 2 and 3).
Data can enter or exit the workflow at different points depending on the user's
aims and initial data quality.")
    (license license:expat)))

(define-public r-hkrbook
  (package
    (name "r-hkrbook")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HKRbook" version))
       (sha256
        (base32 "1bhyhv72c8afyzwx7h6p33mgfvhgqfh5c5f85gj803p6ai60h544"))))
    (properties `((upstream-name . "HKRbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shiny
                             r-scatterplot3d
                             r-mass
                             r-highlight
                             r-formatr
                             r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HKRbook")
    (synopsis "Apps and Data for the Book \"Introduction to Statistics\"")
    (description
     "Functions, Shiny apps and data for the book \"Introduction to Statistics\" by
Wolfgang Karl HÃ¤rdle, Sigbert Klinke, and Bernd RÃ¶nz (2015)
<doi:10.1007/978-3-319-17704-5>.")
    (license license:gpl3)))

(define-public r-hkprocess
  (package
    (name "r-hkprocess")
    (version "0.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HKprocess" version))
       (sha256
        (base32 "0kn84ccaypknxymynp6lnr8asd85rlzbk073z7511rriyz96hyj7"))))
    (properties `((upstream-name . "HKprocess")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcmcpack r-gtools))
    (home-page "https://cran.r-project.org/package=HKprocess")
    (synopsis "Hurst-Kolmogorov Process")
    (description
     "This package provides methods to make inference about the Hurst-Kolmogorov
(fractional Gaussian noise, @code{fGn}) and the AR(1) process.  Related time
series trend tests are also included.")
    (license license:gpl3)))

(define-public r-hkevp
  (package
    (name "r-hkevp")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hkevp" version))
       (sha256
        (base32 "1a3wqafgv9rn10zkg27bgill33zhv76infpp4j84hsqmgiix0gfl"))))
    (properties `((upstream-name . "hkevp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=hkevp")
    (synopsis
     "Spatial Extreme Value Analysis with the Hierarchical Model of Reich and Shaby (2012)")
    (description
     "Several procedures for the hierarchical kernel extreme value process of Reich
and Shaby (2012) <DOI:10.1214/12-AOAS591>, including simulation, estimation and
spatial extrapolation.  The spatial latent variable model
<DOI:10.1214/11-STS376> is also included.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hkdatasets
  (package
    (name "r-hkdatasets")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hkdatasets" version))
       (sha256
        (base32 "1a594fgwc5bvimwp5m2zpb6pjy4iavcylxdmsq3hrnh9ll5g5582"))))
    (properties `((upstream-name . "hkdatasets")))
    (build-system r-build-system)
    (propagated-inputs (list r-fst))
    (home-page "https://hong-kong-districts-info.github.io/hkdatasets/")
    (synopsis "Datasets Related to Hong Kong")
    (description
     "Datasets related to Hong Kong, including information on the 2019 elected
District Councillors (<https://www.districtcouncils.gov.hk> and
<https://dce2019.hk01.com/>) and traffic collision data from the Hong Kong
Department of Transport (<https://www.td.gov.hk/>).  All of the data in this
package is available in the public domain.")
    (license license:gpl3)))

(define-public r-hk80
  (package
    (name "r-hk80")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HK80" version))
       (sha256
        (base32 "0c8scpzl5xgqm9rlsvh5nl3bz42i5pzvb873j9bn3bi15gcknbny"))))
    (properties `((upstream-name . "HK80")))
    (build-system r-build-system)
    (home-page "https://github.com/helixcn/")
    (synopsis "Conversion Tools for HK80 Geographical Coordinate System")
    (description
     "This is a collection of functions for converting coordinates between WGS84UTM,
WGS84GEO, HK80UTM, HK80GEO and HK1980GRID Coordinate Systems used in Hong Kong
SAR, based on the algorithms described in Explanatory Notes on Geodetic Datums
in Hong Kong by Survey and Mapping Office Lands Department, Hong Kong Government
(1995).")
    (license license:gpl2)))

(define-public r-hjam
  (package
    (name "r-hjam")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hJAM" version))
       (sha256
        (base32 "1pnjcn54zi4d7h9zc9wr1gv51dzb0vasfcrw4c1kqymhxsq2yfh3"))))
    (properties `((upstream-name . "hJAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggpubr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lailylajiang/hJAM")
    (synopsis "Hierarchical Joint Analysis of Marginal Summary Statistics")
    (description
     "This package provides functions to implement a hierarchical approach which is
designed to perform joint analysis of summary statistics using the framework of
Mendelian Randomization or transcriptome analysis.  Reference: Lai Jiang,
Shujing Xu, Nicholas Mancuso, Paul J. Newcombe, David V. Conti (2020). \"A
Hierarchical Approach Using Marginal Summary Statistics for Multiple
Intermediates in a Mendelian Randomization or Transcriptome Analysis.\"
<@code{bioRxiv><doi:10.1101/2020.02.03.924241>}.")
    (license license:expat)))

(define-public r-hiver
  (package
    (name "r-hiver")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HiveR" version))
       (sha256
        (base32 "1fddyqx781vw2k9kxnsxzf5j2i9340a5ljpr1ddrcl1h88qnqpjs"))))
    (properties `((upstream-name . "HiveR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-rgl
                             r-rcolorbrewer
                             r-png
                             r-plyr
                             r-jpeg))
    (home-page "https://github.com/bryanhanson/HiveR")
    (synopsis "2D and 3D Hive Plots for R")
    (description
     "This package creates and plots 2D and 3D hive plots.  Hive plots are a unique
method of displaying networks of many types in which node properties are mapped
to axes using meaningful properties rather than being arbitrarily positioned.
The hive plot concept was invented by Martin Krzywinski at the Genome Science
Center (www.hiveplot.net/).  Keywords: networks, food webs, linnet, systems
biology, bioinformatics.")
    (license license:gpl3)))

(define-public r-hive
  (package
    (name "r-hive")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hive" version))
       (sha256
        (base32 "0ihghpfsk73lndrfrk5907kdsih9s0a7xq23zcyfaa05nk98510n"))))
    (properties `((upstream-name . "hive")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rjava))
    (home-page "https://cran.r-project.org/package=hive")
    (synopsis "Hadoop InteractiVE")
    (description
     "Hadoop @code{InteractiVE} facilitates distributed computing via the
@code{MapReduce} paradigm through R and Hadoop.  An easy to use interface to
Hadoop, the Hadoop Distributed File System (HDFS), and Hadoop Streaming is
provided.")
    (license license:gpl3)))

(define-public r-hivdata
  (package
    (name "r-hivdata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hivdata" version))
       (sha256
        (base32 "1rscr91hgrbpgip0knv5wp7nv3bvzr4rrfg8fpch364g99sbbqrq"))))
    (properties `((upstream-name . "hivdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hivdata")
    (synopsis "Six-Year Chronological Data of HIV and ART Cases in Pakistan")
    (description
     "We provide the monthly number of HIV and antiretroviral therapy (ART) cases of
male, female, children and transgender as well as for the whole of Pakistan
reported at various treatment centers in Pakistan from January 2016 to December
2021.  Related works include: a) Imran, M., Nasir, J. A., & Riaz, S. (2018).
Regional pattern of HIV cases in Pakistan.  Journal of Postgraduate Medical
Institute, 32(1), 9-13. <https://jpmi.org.pk/index.php/jpmi/article/view/2108>.")
    (license license:gpl2+)))

(define-public r-hitandrun
  (package
    (name "r-hitandrun")
    (version "0.5-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hitandrun" version))
       (sha256
        (base32 "0r0iymcmhiv3q1n7mrn3zsz2libfq3cdsq517k7kdk9m35piqrcg"))))
    (properties `((upstream-name . "hitandrun")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcdd))
    (home-page "https://github.com/gertvv/hitandrun")
    (synopsis
     "\"Hit and Run\" and \"Shake and Bake\" for Sampling Uniformly from Convex Shapes")
    (description
     "The \"Hit and Run\" Markov Chain Monte Carlo method for sampling uniformly from
convex shapes defined by linear constraints, and the \"Shake and Bake\" method for
sampling from the boundary of such shapes.  Includes specialized functions for
sampling normalized weights with arbitrary linear constraints.  Tervonen, T.,
van Valkenhoef, G., Basturk, N., and Postmus, D. (2012)
<doi:10.1016/j.ejor.2012.08.026>.  van Valkenhoef, G., Tervonen, T., and
Postmus, D. (2014) <doi:10.1016/j.ejor.2014.06.036>.")
    (license license:gpl3)))

(define-public r-histoslider
  (package
    (name "r-histoslider")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "histoslider" version))
       (sha256
        (base32 "1ssniz6lm5zwsqzplidsdjk92d3723kxxpvxb43hgydwbhlq7rd4"))))
    (properties `((upstream-name . "histoslider")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rlang r-reactr r-htmltools))
    (home-page "https://cran.r-project.org/package=histoslider")
    (synopsis "Histogram Slider Input for 'Shiny'")
    (description
     "This package provides a histogram slider input binding for use in Shiny'.
Currently supports creating histograms from numeric, date, and date-time
vectors.")
    (license license:expat)))

(define-public r-historydata
  (package
    (name "r-historydata")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "historydata" version))
       (sha256
        (base32 "1h69x3iig542d43p9zm8x83p4dq48iwsw606j4fndnqhx99vzkw6"))))
    (properties `((upstream-name . "historydata")))
    (build-system r-build-system)
    (home-page "https://github.com/ropensci/historydata")
    (synopsis "Data Sets for Historians")
    (description
     "These sample data sets are intended for historians learning R. They include
population, institutional, religious, military, and prosopographical data
suitable for mapping, quantitative analysis, and network analysis.")
    (license license:expat)))

(define-public r-historicalborrowlong
  (package
    (name "r-historicalborrowlong")
    (version "0.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "historicalborrowlong" version))
       (sha256
        (base32 "05kk4m80xvmlra9dlkcq2ww5llyg9r8bqhh8p7i8kzma6c31w4qa"))))
    (properties `((upstream-name . "historicalborrowlong")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-withr
                             r-trialr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-posterior
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-dplyr
                             r-clustermq
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://wlandau.github.io/historicalborrowlong/")
    (synopsis "Longitudinal Bayesian Historical Borrowing Models")
    (description
     "Historical borrowing in clinical trials can improve precision and operating
characteristics.  This package supports a longitudinal hierarchical model to
borrow historical control data from other studies to better characterize the
control response of the current study.  It also quantifies the amount of
borrowing through longitudinal benchmark models (independent and pooled).  The
hierarchical model approach to historical borrowing is discussed by Viele et al.
(2013) <doi:10.1002/pst.1589>.")
    (license license:expat)))

(define-public r-historicalborrow
  (package
    (name "r-historicalborrow")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "historicalborrow" version))
       (sha256
        (base32 "0g7fs6qn957s3zw4ibbqszn2zpncpf6m41r68dw8g6x942mr0fhv"))))
    (properties `((upstream-name . "historicalborrow")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rjags
                             r-posterior
                             r-matrix
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://wlandau.github.io/historicalborrow/")
    (synopsis "Non-Longitudinal Bayesian Historical Borrowing Models")
    (description
     "Historical borrowing in clinical trials can improve precision and operating
characteristics.  This package supports a hierarchical model and a mixture model
to borrow historical control data from other studies to better characterize the
control response of the current study.  It also quantifies the amount of
borrowing through benchmark models (independent and pooled).  Some of the
methods are discussed by Viele et al. (2013) <doi:10.1002/pst.1589>.")
    (license license:expat)))

(define-public r-histogram
  (package
    (name "r-histogram")
    (version "0.0-25")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "histogram" version))
       (sha256
        (base32 "0yymc7fw4qkbigr8jiw2nzjyrw0ikkipz62pdn3bpz1f7nb7mi93"))))
    (properties `((upstream-name . "histogram")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=histogram")
    (synopsis
     "Construction of Regular and Irregular Histograms with Different Options for Automatic Choice of Bins")
    (description
     "Automatic construction of regular and irregular histograms as described in
Rozenholc/Mildenberger/Gather (2010).")
    (license license:gpl2+)))

(define-public r-histmdl
  (package
    (name "r-histmdl")
    (version "0.7-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "histmdl" version))
       (sha256
        (base32 "0k6l3pfjzlgpxv55vy8dg4sl8zhh0460xcfszwp2k9sbzanwaamp"))))
    (properties `((upstream-name . "histmdl")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=histmdl")
    (synopsis "Most Informative Histogram-Like Model")
    (description
     "Using the MDL principle, it is possible to estimate parameters for a
histogram-like model.  The package contains the implementation of such an
estimation method.")
    (license license:gpl2+)))

(define-public r-histdawass
  (package
    (name "r-histdawass")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HistDAWass" version))
       (sha256
        (base32 "001ranvb4lfjh9lmh5d031g0k6r3yxzwaxvyacxh07hlf9fh7kvn"))))
    (properties `((upstream-name . "HistDAWass")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-histogram
                             r-ggridges
                             r-ggplot2
                             r-factominer
                             r-class))
    (home-page "https://cran.r-project.org/package=HistDAWass")
    (synopsis "Histogram-Valued Data Analysis")
    (description
     "In the framework of Symbolic Data Analysis, a relatively new approach to the
statistical analysis of multi-valued data, we consider histogram-valued data,
i.e., data described by univariate histograms.  The methods and the basic
statistics for histogram-valued data are mainly based on the L2 Wasserstein
metric between distributions, i.e., the Euclidean metric between quantile
functions.  The package contains unsupervised classification techniques, least
square regression and tools for histogram-valued data and for histogram time
series.  An introducing paper is Irpino A. Verde R. (2015) <doi:
10.1007/s11634-014-0176-4>.")
    (license license:gpl2+)))

(define-public r-histdata
  (package
    (name "r-histdata")
    (version "0.9-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HistData" version))
       (sha256
        (base32 "1c005rmzbxcc4m7rxnbxna4dlg3vrn5fhkj4vrkak3xrxbcfkafw"))))
    (properties `((upstream-name . "HistData")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://friendly.github.io/HistData/")
    (synopsis
     "Data Sets from the History of Statistics and Data Visualization")
    (description
     "The @code{HistData} package provides a collection of small data sets that are
interesting and important in the history of statistics and data visualization.
The goal of the package is to make these available, both for instructional use
and for historical research.  Some of these present interesting challenges for
graphics or analysis in R.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-histdat
  (package
    (name "r-histdat")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HistDat" version))
       (sha256
        (base32 "06zxsja8qk48q9lrr9fbk4sbpidysp31mcirxfr12l348lc9zf10"))))
    (properties `((upstream-name . "HistDat")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HistDat")
    (synopsis "Summary Statistics for Histogram/Count Data")
    (description
     "In some cases you will have data in a histogram format, where you have a vector
of all possible observations, and a vector of how many times each observation
appeared.  You could expand this into a single 1D vector, but this may not be
advisable if the counts are extremely large. @code{HistDat} allows for the
calculation of summary statistics without the need for expanding your data.")
    (license license:gpl3+)))

(define-public r-hisse
  (package
    (name "r-hisse")
    (version "2.1.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hisse" version))
       (sha256
        (base32 "1mal9x2x882lq3cf74yjrdan3i69x2kq309b154n6lm4gbpk95vw"))))
    (properties `((upstream-name . "hisse")))
    (build-system r-build-system)
    (propagated-inputs (list r-treesim
                             r-subplex
                             r-plotrix
                             r-phytools
                             r-phangorn
                             r-paleotree
                             r-nloptr
                             r-igraph
                             r-gensa
                             r-geiger
                             r-diversitree
                             r-desolve
                             r-data-table
                             r-corhmm
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hisse")
    (synopsis "Hidden State Speciation and Extinction")
    (description
     "Sets up and executes a @code{HiSSE} model (Hidden State Speciation and
Extinction) on a phylogeny and character sets to test for hidden shifts in trait
dependent rates of diversification.  Beaulieu and O'Meara (2016)
<doi:10.1093/sysbio/syw022>.")
    (license license:gpl2+)))

(define-public r-hirt
  (package
    (name "r-hirt")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hIRT" version))
       (sha256
        (base32 "0s0i6p9iv0yv0l15dnwkpcmc91751jyjs1y1nz671lz6jpb8rz5c"))))
    (properties `((upstream-name . "hIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-pryr r-matrix r-ltm))
    (home-page "http://github.com/xiangzhou09/hIRT")
    (synopsis "Hierarchical Item Response Theory Models")
    (description
     "Implementation of a class of hierarchical item response theory (IRT) models
where both the mean and the variance of latent preferences (ability parameters)
may depend on observed covariates.  The current implementation includes both the
two-parameter latent trait model for binary data and the graded response model
for ordinal data.  Both are fitted via the Expectation-Maximization (EM)
algorithm.  Asymptotic standard errors are derived from the observed information
matrix.")
    (license license:gpl3+)))

(define-public r-hirestec
  (package
    (name "r-hirestec")
    (version "0.62.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HiResTEC" version))
       (sha256
        (base32 "1wswcd68zy03qcajkywgrgi7c06v1kyj2rmvdxj1s4yc0pcw657q"))))
    (properties `((upstream-name . "HiResTEC")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-openxlsx r-interpretmsspectrum r-cormid
                             r-beeswarm))
    (home-page "https://github.com/janlisec/HiResTEC")
    (synopsis
     "Non-Targeted Fluxomics on High-Resolution Mass-Spectrometry Data")
    (description
     "Identifying labeled compounds in a 13C-tracer experiment in non-targeted fashion
is a cumbersome process.  This package facilitates such type of analyses by
providing high level quality control plots, deconvoluting and evaluating spectra
and performing a multitude of tests in an automatic fashion.  The main idea is
to use changing intensity ratios of ion pairs from peak list generated with xcms
as candidates and evaluate those against base peak chromatograms and spectra
information within the raw measurement data automatically.  The functionality is
described in Hoffmann et al. (2018) <doi:10.1021/acs.analchem.8b00356>.")
    (license license:gpl3)))

(define-public r-hipread
  (package
    (name "r-hipread")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hipread" version))
       (sha256
        (base32 "06z20kxswamhs8abjk6ff7xqhisaixw9ygz1831n38nl489vjpip"))))
    (properties `((upstream-name . "hipread")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-tibble r-rlang r-rcpp r-r6 r-bh))
    (home-page "https://cran.r-project.org/package=hipread")
    (synopsis "Read Hierarchical Fixed Width Files")
    (description
     "Read hierarchical fixed width files like those commonly used by many census data
providers.  Also allows for reading of data in chunks, and reading gzipped files
without storing the full file in memory.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hippie
  (package
    (name "r-hippie")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hippie" version))
       (sha256
        (base32 "1c31l1qgjk7m1gif78wxq0wxwla5d2gkpgql48aqc8i2m9i65k67"))))
    (properties `((upstream-name . "hippie")))
    (build-system r-build-system)
    (propagated-inputs (list r-sourcetools r-rstudioapi))
    (home-page "https://github.com/crew102/hippie")
    (synopsis "Hippie Code Completion in 'RStudio'")
    (description
     "An RStudio Addin for Hippie Expand (AKA Hippie Code Completion or Cyclic Expand
Word).  This type of completion searches for matching tokens within the user's
current source editor file, regardless of file type.  By searching only within
the current source file, hippie offers a fast way to identify and insert
completions that appear around the user's cursor.")
    (license license:expat)))

(define-public r-hiphop
  (package
    (name "r-hiphop")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hiphop" version))
       (sha256
        (base32 "0k071kxf04b95f3z5y2h9dhnqrvzwgyhi3q26ghn3s76c155f1k1"))))
    (properties `((upstream-name . "hiphop")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://groups.google.com/d/forum/r-hiphop")
    (synopsis "Parentage Assignment using Bi-Allelic Genetic Markers")
    (description
     "Can be used for paternity and maternity assignment and outperforms conventional
methods where closely related individuals occur in the pool of possible parents.
 The method compares the genotypes of offspring with any combination of
potentials parents and scores the number of mismatches of these individuals at
bi-allelic genetic markers (e.g. Single Nucleotide Polymorphisms).  It
elaborates on a prior exclusion method based on the Homozygous Opposite Test
(HOT; Huisman 2017 <doi:10.1111/1755-0998.12665>) by introducing the additional
exclusion criterion HIPHOP (Homozygous Identical Parents, Heterozygous Offspring
are Precluded; Cockburn et al., in revision).  Potential parents are excluded if
they have more mismatches than can be expected due to genotyping error and
mutation, and thereby one can identify the true genetic parents and detect
situations where one (or both) of the true parents is not sampled.  Package
hiphop can deal with (a) the case where there is contextual information about
parentage of the mother (i.e.  a female has been seen to be involved in
reproductive tasks such as nest building), but paternity is unknown (e.g. due to
promiscuity), (b) where both parents need to be assigned, because there is no
contextual information on which female laid eggs and which male fertilized them
(e.g. polygynandrous mating system where multiple females and males deposit
young in a common nest, or organisms with external fertilisation that breed in
aggregations).  For details: Cockburn, A., Penalba, J.V.,Jaccoud, D.,Kilian, A.,
Brouwer, L., Double, M.C., Margraf, N., Osmond, H.L., van de Pol, M. and Kruuk,
L.E.B. (in revision).  HIPHOP: improved paternity assignment among close
relatives using a simple exclusion method for bi-allelic markers.  Molecular
Ecology Resources, DOI to be added upon acceptance.")
    (license license:gpl2)))

(define-public r-hint
  (package
    (name "r-hint")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hint" version))
       (sha256
        (base32 "00ppz8009cp0wbkmrxdg8x9jjqqb803bl6ki13hsqz07aya0j4iy"))))
    (properties `((upstream-name . "hint")))
    (build-system r-build-system)
    (home-page "https://github.com/alextkalinka/hint")
    (synopsis
     "Tools for Hypothesis Testing Based on Hypergeometric Intersection Distributions")
    (description
     "Hypergeometric Intersection distributions are a broad group of distributions
that describe the probability of picking intersections when drawing
independently from two (or more) urns containing variable numbers of balls
belonging to the same n categories. <@code{arXiv:1305.0717>}.")
    (license license:gpl2+)))

(define-public r-hindexcalculator
  (package
    (name "r-hindexcalculator")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hindexcalculator" version))
       (sha256
        (base32 "06b4dn629avmnyqxb0l39m00wz9cg9dddmm6qhgwgnzlxh14ifgk"))))
    (properties `((upstream-name . "hindexcalculator")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hindexcalculator")
    (synopsis
     "H-Index Calculator using Data from a Web of Science (WoS) Citation Report")
    (description
     "H(x) is the h-index for the past x years.  Here, the h(x) of a
scientist/department/etc.  can be calculated using the exported excel file from
a Web of Science citation report of a search.  Also calculated is the year of
first publication, total number of publications, and sum of times cited for the
specified period.  Therefore, for h-10: the date of first publication, total
number of publications, and sum of times cited in the past 10 years are
calculated.  Note: the excel file has to first be saved in a .csv format.")
    (license (license:fsdg-compatible "AGPL"))))

(define-public r-hindex
  (package
    (name "r-hindex")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hindex" version))
       (sha256
        (base32 "01mcd2br33qqkfcyxl584f3l6kyb2cgzpd207p0mynzdaallgxgc"))))
    (properties `((upstream-name . "hindex")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-ggplot2 r-foreach))
    (home-page "https://cran.r-project.org/package=hindex")
    (synopsis "Simulating the Development of h-Index Values")
    (description
     "H-index and h-alpha are a bibliometric indicators.  This package provides
functions to simulate how these indicators may develop over time for a given set
of researchers and to visualize the simulation data.  The implementation is
based on the STATA ado h-index and is described in more detail in Bornmann et
al. (2019) <@code{arXiv:1905.11052>}.")
    (license license:expat)))

(define-public r-himach
  (package
    (name "r-himach")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "himach" version))
       (sha256
        (base32 "0j262rkhfadd6n1ypzwv8pj543zinayihnvfsb5i8i6fx2lag88q"))))
    (properties `((upstream-name . "himach")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sf
                             r-s2
                             r-purrr
                             r-lwgeom
                             r-ggplot2
                             r-geosphere
                             r-dplyr
                             r-data-table
                             r-cpprouting))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/david6marsh/himach")
    (synopsis "High Mach Finds Routes for Supersonic Aircraft")
    (description
     "For supersonic aircraft, flying subsonic over land, find the best route between
airports.  Allow for coastal buffer and potentially closed regions.  Use a
minimal model of aircraft performance: the focus is on time saved versus
subsonic flight, rather than on vertical flight profile.  For modelling and
forecasting, not for planning your flight!")
    (license license:expat)))

(define-public r-hima
  (package
    (name "r-hima")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HIMA" version))
       (sha256
        (base32 "0r9dr3dvav8m8sxk84fm6m8y7fvsbd6dfblma17vizvslxpi5vwm"))))
    (properties `((upstream-name . "HIMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-quantreg
                             r-ncvreg
                             r-mass
                             r-iterators
                             r-hommel
                             r-hdmt
                             r-hdi
                             r-glmnet
                             r-foreach
                             r-doparallel
                             r-conquer))
    (home-page "https://github.com/YinanZheng/HIMA/")
    (synopsis "High-Dimensional Mediation Analysis")
    (description
     "Allows to estimate and test high-dimensional mediation effects based on advanced
mediator screening and penalized regression techniques.  Methods used in the
package refer to Zhang H, Zheng Y, Zhang Z, Gao T, Joyce B, Yoon G, Zhang W,
Schwartz J, Just A, Colicino E, Vokonas P, Zhao L, Lv J, Baccarelli A, Hou L,
Liu L. Estimating and Testing High-dimensional Mediation Effects in Epigenetic
Studies.  Bioinformatics. (2016) <doi:10.1093/bioinformatics/btw351>.  PMID:
27357171.")
    (license license:gpl3)))

(define-public r-hillshader
  (package
    (name "r-hillshader")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hillshader" version))
       (sha256
        (base32 "15rvl5fisqnbs8gnvcc3l0ip8a6mwgaz5c6ads012pk497jv88ck"))))
    (properties `((upstream-name . "hillshader")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-rayshader r-raster))
    (home-page "https://cran.r-project.org/package=hillshader")
    (synopsis "Create Hillshade Relief Maps Using Ray-Tracing")
    (description
     "This package provides a set of tools to create georeferenced hillshade relief
raster maps using ray-tracing and other advanced hill-shading techniques.  It
includes a wrapper function to create a georeferenced, ray-traced hillshade map
from a digital elevation model, and other functions that can be used in a
rayshader pipeline.")
    (license license:gpl3+)))

(define-public r-hillr
  (package
    (name "r-hillr")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hillR" version))
       (sha256
        (base32 "0gc4yirbn2bp38sjdgin7167yvm0kd6nk4yaj66jp0b5qbpc85gc"))))
    (properties `((upstream-name . "hillR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-plyr
                             r-geiger
                             r-fd
                             r-ape
                             r-ade4))
    (home-page "https://github.com/daijiang/hillR")
    (synopsis "Diversity Through Hill Numbers")
    (description
     "Calculate taxonomic, functional and phylogenetic diversity measures through Hill
Numbers proposed by Chao, Chiu and Jost (2014)
<doi:10.1146/annurev-ecolsys-120213-091540>.")
    (license license:expat)))

(define-public r-hilldiv
  (package
    (name "r-hilldiv")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hilldiv" version))
       (sha256
        (base32 "1jp4xvrpqd575y2x0i73s0bq708bzi6gdhqgz85bia6d5kf05lq9"))))
    (properties `((upstream-name . "hilldiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-scales
                             r-rcolorbrewer
                             r-qgraph
                             r-ggpubr
                             r-ggplot2
                             r-geiger
                             r-fsa
                             r-data-table
                             r-ape))
    (home-page "https://github.com/anttonalberdi/hilldiv")
    (synopsis "Integral Analysis of Diversity Based on Hill Numbers")
    (description
     "This package provides tools for analysing, comparing, visualising and
partitioning diversity based on Hill numbers.  hilldiv is an R package that
provides a set of functions to assist analysis of diversity for diet
reconstruction, microbial community profiling or more general ecosystem
characterisation analyses based on Hill numbers, using OTU/ASV tables and
associated phylogenetic trees as inputs.  The package includes functions for
(phylo)diversity measurement, (phylo)diversity profile plotting,
(phylo)diversity comparison between samples and groups, (phylo)diversity
partitioning and (dis)similarity measurement.  All of these grounded in
abundance-based and incidence-based Hill numbers.  The statistical framework
developed around Hill numbers encompasses many of the most broadly employed
diversity (e.g. richness, Shannon index, Simpson index), phylogenetic diversity
(e.g. Faith's PD, Allen's H, Rao's quadratic entropy) and dissimilarity (e.g.
Sorensen index, Unifrac distances) metrics.  This enables the most common
analyses of diversity to be performed while grounded in a single statistical
framework.  The methods are described in Jost et al. (2007)
<DOI:10.1890/06-1736.1>, Chao et al. (2010) <DOI:10.1098/rstb.2010.0272> and
Chiu et al. (2014) <DOI:10.1890/12-0960.1>; and reviewed in the framework of
molecularly characterised biological systems in Alberdi & Gilbert (2019)
<DOI:10.1111/1755-0998.13014>.")
    (license license:gpl3)))

(define-public r-hildareadr
  (package
    (name "r-hildareadr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hildareadR" version))
       (sha256
        (base32 "0hay1r6lxnyzjp97456d9wra7myrmifyx8cywzc85wclm355yc9b"))))
    (properties `((upstream-name . "hildareadR")))
    (build-system r-build-system)
    (propagated-inputs (list r-haven r-dplyr))
    (home-page "https://cran.r-project.org/package=hildareadR")
    (synopsis "Extract Variables from HILDA")
    (description
     "Makes it easy to extract and combine variables from the HILDA (Household, Income
and Labour Dynamics in Australia) survey maintained by the Melbourne Institute
<https://melbourneinstitute.unimelb.edu.au/hilda>.")
    (license license:gpl2)))

(define-public r-hilbertsimilarity
  (package
    (name "r-hilbertsimilarity")
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hilbertSimilarity" version))
       (sha256
        (base32 "1251df3q7c7c69f8q9y9bxj210bk2dh80c8ca4s58isf0hr2x7zp"))))
    (properties `((upstream-name . "hilbertSimilarity")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-entropy))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/yannabraham/hilbertSimilarity")
    (synopsis "Hilbert Similarity Index for High Dimensional Data")
    (description
     "Quantifying similarity between high-dimensional single cell samples is
challenging, and usually requires some simplifying hypothesis to be made.  By
transforming the high dimensional space into a high dimensional grid, the number
of cells in each sub-space of the grid is characteristic of a given sample.
Using a Hilbert curve each sample can be visualized as a simple density plot,
and the distance between samples can be calculated from the distribution of
cells using the Jensen-Shannon distance.  Bins that correspond to significant
differences between samples can identified using a simple bootstrap procedure.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-hilbert
  (package
    (name "r-hilbert")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hilbert" version))
       (sha256
        (base32 "1vw1rn5adnqi99v5w47jmqx35rqv0slas3ldw7g34il1krz9xhms"))))
    (properties `((upstream-name . "hilbert")))
    (build-system r-build-system)
    (propagated-inputs (list r-cpp11))
    (native-inputs (list r-knitr))
    (home-page "https://hilbert.justinsingh.me")
    (synopsis "Coordinate Indexing on Hilbert Curves")
    (description
     "This package provides utilities for encoding and decoding coordinates to/from
Hilbert curves based on the iterative encoding implementation described in Chen
et al. (2006) <doi:10.1002/spe.793>.")
    (license license:expat)))

(define-public r-higrad
  (package
    (name "r-higrad")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "higrad" version))
       (sha256
        (base32 "0q9av8qyvmvgy6a3l7svcmbkjjgnp4iny1cld4g3qsbaz3yp3jaj"))))
    (properties `((upstream-name . "higrad")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=higrad")
    (synopsis
     "Statistical Inference for Online Learning and Stochastic Approximation via HiGrad")
    (description
     "This package implements the Hierarchical Incremental GRAdient Descent
(@code{HiGrad}) algorithm, a first-order algorithm for finding the minimizer of
a function in online learning just like stochastic gradient descent (SGD).  In
addition, this method attaches a confidence interval to assess the uncertainty
of its predictions.  See Su and Zhu (2018) <@code{arXiv:1802.04876>} for
details.")
    (license license:gpl3)))

(define-public r-higlasso
  (package
    (name "r-higlasso")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "higlasso" version))
       (sha256
        (base32 "09d500jsxlrv658i90xnb2wj1ad89v1iwb6y7vascyvg3cff104h"))))
    (properties `((upstream-name . "higlasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-purrr r-gglasso r-gcdnet))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=higlasso")
    (synopsis "Hierarchical Integrative Group LASSO")
    (description
     "Environmental health studies are increasingly measuring multiple pollutants to
characterize the joint health effects attributable to exposure mixtures.
However, the underlying dose-response relationship between toxicants and health
outcomes of interest may be highly nonlinear, with possible nonlinear
interaction effects.  Hierarchical integrative group least absolute shrinkage
and selection operator (@code{HiGLASSO}), developed by Boss et al (2020)
<@code{arXiv:2003.12844>}, is a general framework to identify noteworthy
nonlinear main and interaction effects in the presence of group structures among
a set of exposures.")
    (license license:gpl3)))

(define-public r-highttest
  (package
    (name "r-highttest")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highTtest" version))
       (sha256
        (base32 "0w7114qnywpd3wcnxhpkmv0j7hqip25p6wdigg505k0gywanr7fp"))))
    (properties `((upstream-name . "highTtest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=highTtest")
    (synopsis
     "Simultaneous Critical Values for t-Tests in Very High Dimensions")
    (description
     "This package implements the method developed by Cao and Kosorok (2011) for the
significance analysis of thousands of features in high-dimensional biological
studies.  It is an asymptotically valid data-driven procedure to find critical
values for rejection regions controlling the k-familywise error rate, false
discovery rate, and the tail probability of false discovery proportion.")
    (license license:gpl2)))

(define-public r-hightr
  (package
    (name "r-hightr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hightR" version))
       (sha256
        (base32 "0d4p9qcj7z0ayk4nb3pxnfwww29d7ks0jzavxsbz6m82g7x1pmyh"))))
    (properties `((upstream-name . "hightR")))
    (build-system r-build-system)
    (home-page "https://github.com/Yongwoo-Eg-Kim/hightR")
    (synopsis "HIGHT Algorithm")
    (description
     "HIGHT(HIGh security and light @code{weigHT}) algorithm is a block cipher
encryption algorithm developed to provide confidentiality in computing
environments that demand low power consumption and lightweight, such as
RFID(Radio-Frequency Identification) and USN(Ubiquitous Sensor Network), or in
mobile environments that require low power consumption and lightweight, such as
smartphones and smart cards.  Additionally, it is designed with a simple
structure that enables it to be used with basic arithmetic operations, XOR, and
circular shifts in 8-bit units.  This algorithm was designed to consider both
safety and efficiency in a very simple structure suitable for limited
environments, compared to the former 128-bit encryption algorithm SEED. In
December 2010, it became an ISO(International Organization for Standardization)
standard.  The detailed procedure is described in Hong et al. (2006)
<doi:10.1007/11894063_4>.")
    (license license:gpl3)))

(define-public r-highs
  (package
    (name "r-highs")
    (version "0.1-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highs" version))
       (sha256
        (base32 "1vjmzbfydlm434fa1mkwwfcdhmn6sq4ppib26nxfa9zakr7h7q2c"))))
    (properties `((upstream-name . "highs")))
    (build-system r-build-system)
    (inputs (list cmake bash))
    (propagated-inputs (list r-rcpp r-checkmate))
    (native-inputs (list gfortran))
    (home-page "https://gitlab.com/roigrp/solver/highs")
    (synopsis "'HiGHS' Optimization Solver")
    (description
     "R interface to @code{HiGHS}', an optimization solver for solving mixed integer
optimization problems with quadratic or linear objective and linear constraints.")
    (license license:gpl2+)))

(define-public r-highriskzone
  (package
    (name "r-highriskzone")
    (version "1.4.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highriskzone" version))
       (sha256
        (base32 "0sg3a99pb2559chalxh66zv9mvwbgfx64vp1209vbhbx3sya48r2"))))
    (properties `((upstream-name . "highriskzone")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs
                             r-spatstat-random
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatstat
                             r-polyclip
                             r-mvtnorm
                             r-matrix
                             r-maps
                             r-ks
                             r-fields
                             r-deldir))
    (home-page "https://cran.r-project.org/package=highriskzone")
    (synopsis "Determining and Evaluating High-Risk Zones")
    (description
     "This package provides functions for determining and evaluating high-risk zones
and simulating and thinning point process data, as described in Determining high
risk zones using point process methodology - Realization by building an R
package Seibold (2012)
<http://highriskzone.r-forge.r-project.org/Bachelorarbeit.pdf> and Determining
high-risk zones for unexploded World War II bombs by using point process
methodology', Mahling et al. (2013) <doi:10.1111/j.1467-9876.2012.01055.x>.")
    (license license:expat)))

(define-public r-highorderportfolios
  (package
    (name "r-highorderportfolios")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highOrderPortfolios" version))
       (sha256
        (base32 "0qjmxiv5dcpgyl5c9vbbizwwg4lpppc9z09rf4c4lf0dfrcj4c5i"))))
    (properties `((upstream-name . "highOrderPortfolios")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog
                             r-performanceanalytics
                             r-nloptr
                             r-lpsolveapi
                             r-fitheavytail
                             r-ecosolver))
    (native-inputs (list r-rmarkdown r-r-rsp r-knitr))
    (home-page "https://github.com/dppalomar/highOrderPortfolios")
    (synopsis
     "Design of High-Order Portfolios Including Skewness and Kurtosis")
    (description
     "The classical Markowitz's mean-variance portfolio formulation ignores heavy
tails and skewness.  High-order portfolios use higher order moments to better
characterize the return distribution.  Different formulations and fast
algorithms are proposed for high-order portfolios based on the mean, variance,
skewness, and kurtosis.  The package is based on the papers: R. Zhou and D. P.
Palomar (2021). \"Solving High-Order Portfolios via Successive Convex
Approximation Algorithms.\" <@code{arXiv:2008.00863>}.  X. Wang, R. Zhou, J.
Ying, and D. P. Palomar (2022). \"Efficient and Scalable High-Order Portfolios
Design via Parametric Skew-t Distribution.\" <@code{arXiv:2206.02412>}.")
    (license license:gpl3)))

(define-public r-highmlr
  (package
    (name "r-highmlr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highMLR" version))
       (sha256
        (base32 "0jkv6blkzdnn263wxy7p0hspgf5fchl5fbmzpqb5lfvl2f3pi3j9"))))
    (properties `((upstream-name . "highMLR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-r6
                             r-mlr3learners
                             r-mlr3
                             r-missforest
                             r-gtools
                             r-dplyr
                             r-coxme))
    (home-page "https://cran.r-project.org/package=highMLR")
    (synopsis "Feature Selection for High Dimensional Survival Data")
    (description
     "Perform high dimensional Feature Selection in the presence of survival outcome.
Based on Feature Selection method and different survival analysis, it will
obtain the best markers with optimal threshold levels according to their effect
on disease progression and produce the most consistent level according to those
threshold values.  The functions methodology is based on by Sonabend et al
(2021) <doi:10.1093/bioinformatics/btab039> and Bhattacharjee et al (2021)
<@code{arXiv:2012.02102>}.")
    (license license:gpl3)))

(define-public r-highmean
  (package
    (name "r-highmean")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highmean" version))
       (sha256
        (base32 "1lq7z0l1737j4wvsy7951405afylyywp7vf2i7girzh459fdfzpc"))))
    (properties `((upstream-name . "highmean")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mnormt r-mass))
    (home-page "https://cran.r-project.org/package=highmean")
    (synopsis "Two-Sample Tests for High-Dimensional Mean Vectors")
    (description
     "This package provides various tests for comparing high-dimensional mean vectors
in two sample populations.")
    (license license:gpl2+)))

(define-public r-highlighthtml
  (package
    (name "r-highlighthtml")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highlightHTML" version))
       (sha256
        (base32 "0j3zrvil7k5wfsbgfj2b4nbx77qsj3b4makv5angcf8s59p7q80r"))))
    (properties `((upstream-name . "highlightHTML")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lebebr01/highlightHTML")
    (synopsis "Highlight HTML Text and Tables")
    (description
     "This package provides a tool to format R markdown with CSS ids for HTML output.
The tool may be most helpful for those using markdown to create reproducible
documents.  The biggest limitations in formatting is the knowledge of CSS by the
document authors.")
    (license license:expat)))

(define-public r-highlighter
  (package
    (name "r-highlighter")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highlighter" version))
       (sha256
        (base32 "1ksgqx2ryg5lfka93yns5cphnf4xc4v55ncmpisydjbcpzd2105c"))))
    (properties `((upstream-name . "highlighter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-htmlwidgets r-htmltools r-glue r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://federiva.github.io/highlighter/")
    (synopsis "Code Syntax Highlighting using the 'Prism.js' Library")
    (description
     "Code Syntax Highlighting made easy for code snippets or complete files.  Whether
you're documenting your data analysis or creating interactive shiny apps.")
    (license license:expat)))

(define-public r-highfrequency
  (package
    (name "r-highfrequency")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highfrequency" version))
       (sha256
        (base32 "0jxkmgd3sfipz1z37w9flwy8i94q6vxwlxyaflfbprwlskmlnakd"))))
    (properties `((upstream-name . "highfrequency")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-sandwich
                             r-rsolnp
                             r-robustbase
                             r-rcpproll
                             r-rcpparmadillo
                             r-rcpp
                             r-quantmod
                             r-numderiv
                             r-data-table))
    (home-page "https://github.com/jonathancornelissen/highfrequency")
    (synopsis "Tools for Highfrequency Data Analysis")
    (description
     "Provide functionality to manage, clean and match highfrequency trades and quotes
data, calculate various liquidity measures, estimate and forecast volatility,
detect price jumps and investigate microstructure noise and intraday
periodicity.  A detailed vignette can be found in the open-access paper
\"Analyzing Intraday Financial Data in R: The highfrequency Package\" by Boudt,
Kleen, and Sjoerup (2022, <doi:10.18637/jss.v104.i08>).")
    (license license:gpl2+)))

(define-public r-highestmedianrules
  (package
    (name "r-highestmedianrules")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HighestMedianRules" version))
       (sha256
        (base32 "01fj3xgrb9iav5v91bq04hzv9nhnwy8l00dx6yykghwvzjwfv3ih"))))
    (properties `((upstream-name . "HighestMedianRules")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmallow))
    (home-page "https://cran.r-project.org/package=HighestMedianRules")
    (synopsis
     "Implementation of Voting Rules Electing the Candidate with Highest Median Grade")
    (description
     "Computes the scores and ranks candidates according to voting rules electing the
highest median grade.  Based on \"Tie-breaking the highest median: alternatives
to the majority judgment\", A. Fabre, Social Choice & Welfare (forthcoming as of
2020).  The paper is available here:
<https://github.com/bixiou/highest_median/raw/master/Tie-breaking%20Highest%20Median%20-%20Fabre%202019.pdf>.
 Functions to plot the voting profiles can be found on github:
<https://github.com/bixiou/highest_median/blob/master/packages_functions_data.R>.")
    (license license:agpl3)))

(define-public r-highdmean
  (package
    (name "r-highdmean")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highDmean" version))
       (sha256
        (base32 "0z81iw1nb8y4pvmhk8ay9pq4kvqxwxwv8q6p47hy8s2b465sfy1f"))))
    (properties `((upstream-name . "highDmean")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=highDmean")
    (synopsis "Testing Two-Sample Mean in High Dimension")
    (description
     "This package implements the high-dimensional two-sample test proposed by Zhang
(2019) <http://hdl.handle.net/2097/40235>.  It also implements the test proposed
by Srivastava, Katayama, and Kano (2013) <doi:10.1016/j.jmva.2012.08.014>.
These tests are particularly suitable to high dimensional data from two
populations for which the classical multivariate Hotelling's T-square test fails
due to sample sizes smaller than dimensionality.  In this case, the ZWL and ZWLm
tests proposed by Zhang (2019) <http://hdl.handle.net/2097/40235>, referred to
as zwl_test() in this package, provide a reliable and powerful test.")
    (license license:gpl2)))

(define-public r-highcharter
  (package
    (name "r-highcharter")
    (version "0.9.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "highcharter" version))
       (sha256
        (base32 "02yyzfhzgkrp8hgdp2gyqrrvxzh9wqn3c90lyd9nlavn4qn4789z"))))
    (properties `((upstream-name . "highcharter")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xts
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlist
                             r-rlang
                             r-rjson
                             r-quantmod
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-igraph
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr
                             r-broom
                             r-assertthat))
    (native-inputs (list esbuild))
    (home-page "https://jkunst.com/highcharter/")
    (synopsis "Wrapper for the 'Highcharts' Library")
    (description
     "This package provides a wrapper for the Highcharts library including shortcut
functions to plot R objects.  Highcharts <https://www.highcharts.com/> is a
charting library offering numerous chart types with a simple configuration
syntax.")
    (license license:expat)))

(define-public r-hiersdr
  (package
    (name "r-hiersdr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hierSDR" version))
       (sha256
        (base32 "164l7gw5bkg09mfs0rnqwfsbgr4mppc0skbmqk2d98mcvvmmcwd7"))))
    (properties `((upstream-name . "hierSDR")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimx
                             r-numderiv
                             r-matrix
                             r-mass
                             r-locfit
                             r-lbfgs))
    (home-page "https://cran.r-project.org/package=hierSDR")
    (synopsis "Hierarchical Sufficient Dimension Reduction")
    (description
     "This package provides semiparametric sufficient dimension reduction for central
mean subspaces for heterogeneous data defined by combinations of binary factors
(such as chronic conditions).  Subspaces are estimated to be hierarchically
nested to respect the structure of subpopulations with overlapping
characteristics.  This package is an implementation of the proposed methodology
of Huling and Yu (2021) <doi:10.1111/biom.13546>.")
    (license license:gpl2)))

(define-public r-hierportfolios
  (package
    (name "r-hierportfolios")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HierPortfolios" version))
       (sha256
        (base32 "1l0ac3sx7q0xgqv6w0c7rahgjqpy045whih7r88wnj8qqwl1x1bp"))))
    (properties `((upstream-name . "HierPortfolios")))
    (build-system r-build-system)
    (propagated-inputs (list r-fastcluster r-cluster))
    (home-page "https://github.com/ctruciosm/HierPortfolios")
    (synopsis "Hierarchical Clustering-Based Portfolio Allocation Strategies")
    (description
     "Machine learning portfolio allocation strategies based on hierarchical
clustering methods.  The implemented methods are: Hierarchical risk parity (De
Prado, 2016) <DOI: 10.3905/jpm.2016.42.4.059>.  Hierarchical clustering-based
asset allocation (Raffinot, 2017) <DOI: 10.3905/jpm.2018.44.2.089>.
Hierarchical equal risk contribution portfolio (Raffinot, 2018) <DOI:
10.2139/ssrn.3237540>.  A Constrained Hierarchical Risk Parity Algorithm with
Cluster-based Capital Allocation (Pfitzingera and Katzke, 2019)
<https://www.ekon.sun.ac.za/wpapers/2019/wp142019/wp142019.pdf>.")
    (license license:gpl2)))

(define-public r-hiernet
  (package
    (name "r-hiernet")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hierNet" version))
       (sha256
        (base32 "0fdnj50s985w06wrjc67hcy6fc4lj8jbxlskgrli9m0181vbdj69"))))
    (properties `((upstream-name . "hierNet")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hierNet")
    (synopsis "Lasso for Hierarchical Interactions")
    (description
     "Fits sparse interaction models for continuous and binary responses subject to
the strong (or weak) hierarchy restriction that an interaction between two
variables only be included if both (or at least one of) the variables is
included as a main effect.  For more details, see Bien, J., Taylor, J.,
Tibshirani, R., (2013) \"A Lasso for Hierarchical Interactions.\" Annals of
Statistics.  41(3).  1111-1141.")
    (license license:gpl2)))

(define-public r-hierbipartite
  (package
    (name "r-hierbipartite")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hierBipartite" version))
       (sha256
        (base32 "1f6agxrv363wksi33b29v42hys90351ninb4li9m52n0kzv25m1f"))))
    (properties `((upstream-name . "hierBipartite")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-irlba))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hierBipartite")
    (synopsis "Bipartite Graph-Based Hierarchical Clustering")
    (description
     "Bipartite graph-based hierarchical clustering, developed for pharmacogenomic
datasets and datasets sharing the same data structure.  The goal is to construct
a hierarchical clustering of groups of samples based on association patterns
between two sets of variables.  In the context of pharmacogenomic datasets, the
samples are cell lines, and the two sets of variables are typically expression
levels and drug sensitivity values.  For this method, sparse canonical
correlation analysis from Lee, W., Lee, D., Lee, Y. and Pawitan, Y. (2011)
<doi:10.2202/1544-6115.1638> is first applied to extract association patterns
for each group of samples.  Then, a nuclear norm-based dissimilarity measure is
used to construct a dissimilarity matrix between groups based on the extracted
associations.  Finally, hierarchical clustering is applied.")
    (license license:expat)))

(define-public r-hierarchicalsets
  (package
    (name "r-hierarchicalsets")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hierarchicalSets" version))
       (sha256
        (base32 "0i0dl2r1gc8ckk2hb498km9bgsqbj7fp8gpp8778rba001nvgwx7"))))
    (properties `((upstream-name . "hierarchicalSets")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-scales
                             r-rcpp
                             r-rcolorbrewer
                             r-patchwork
                             r-matrix
                             r-mass
                             r-gtable
                             r-ggplot2
                             r-ggdendro))
    (home-page "https://cran.r-project.org/package=hierarchicalSets")
    (synopsis "Set Data Visualization Using Hierarchies")
    (description
     "Pure set data visualization approaches are often limited in scalability due to
the combinatorial explosion of distinct set families as the number of sets under
investigation increases. @code{hierarchicalSets} applies a set centric
hierarchical clustering of the sets under investigation and uses this hierarchy
as a basis for a range of scalable visual representations.
@code{hierarchicalSets} is especially well suited for collections of sets that
describe comparable comparable entities as it relies on the sets to have a
meaningful relational structure.")
    (license license:expat)))

(define-public r-hidradenitis
  (package
    (name "r-hidradenitis")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hidradenitis" version))
       (sha256
        (base32 "0dzdllmsj98yl178fg25vny0vaxhra88zd6ifzv06fcjma53svrj"))))
    (properties `((upstream-name . "hidradenitis")))
    (build-system r-build-system)
    (propagated-inputs (list r-checkmate))
    (home-page "https://billdenney.github.io/hidradenitis/")
    (synopsis
     "Calculate Clinical Scores for Hidradenitis Suppurativa (HS), a Dermatologic Disease")
    (description
     "Calculate clinical scores for hidradenitis suppurativa (HS), a dermatologic
disease.  The scores are typically used for evaluation of efficacy in clinical
trials.  The scores are not commonly used in clinical practice.  The specific
scores implemented are Hidradenitis Suppurativa Clinical Response (@code{HiSCR})
(Kimball, et al. (2015) <doi:10.1111/jdv.13216>), Hidradenitis Suppurativa Area
and Severity Index Revised (HASI-R) (Goldfarb, et al. (2020)
<doi:10.1111/bjd.19565>), hidradenitis suppurativa Physician Global Assessment
(HS PGA) (Marzano, et al. (2020) <doi:10.1111/jdv.16328>), and the International
Hidradenitis Suppurativa Severity Score System (IHS4) (Zouboulis, et al. (2017)
<doi:10.1111/bjd.15748>).")
    (license license:gpl3+)))

(define-public r-hidimda
  (package
    (name "r-hidimda")
    (version "0.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HiDimDA" version))
       (sha256
        (base32 "1128xf7jf2jwbkpczc9d56kzkn41m9hvqys4qawv3z80hpm91is5"))))
    (properties `((upstream-name . "HiDimDA")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=HiDimDA")
    (synopsis "High Dimensional Discriminant Analysis")
    (description
     "This package performs linear discriminant analysis in high dimensional problems
based on reliable covariance estimators for problems with (many) more variables
than observations.  Includes routines for classifier training, prediction,
cross-validation and variable selection.")
    (license license:gpl3+)))

(define-public r-hidecan
  (package
    (name "r-hidecan")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hidecan" version))
       (sha256
        (base32 "08yhjgmcmrnrm6rm0vlzvizadvywcs1p6mchw1synxvclfaxyi28"))))
    (properties `((upstream-name . "hidecan")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-viridis
                             r-tidyr
                             r-tibble
                             r-shiny
                             r-purrr
                             r-ggrepel
                             r-ggplot2
                             r-ggnewscale
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://plantandfoodresearch.github.io/hidecan/")
    (synopsis
     "Create HIDECAN Plots for Visualising Genome-Wide Association Studies and Differential Expression Results")
    (description
     "Generates HIDECAN plots that summarise and combine the results of genome-wide
association studies (GWAS) and transcriptomics differential expression analyses
(DE), along with manually curated candidate genes of interest.  The HIDECAN plot
is presented in Angelin-Bonnet et al. (2023) (currently in review).")
    (license license:expat)))

(define-public r-hiddenf
  (package
    (name "r-hiddenf")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hiddenf" version))
       (sha256
        (base32 "0shc1kfiq527mkc5i97zcm51hsvknnhjg7dyfvbfqyk145v6sz00"))))
    (properties `((upstream-name . "hiddenf")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hiddenf")
    (synopsis
     "The All-Configurations, Maximum-Interaction F-Test for Hidden Additivity")
    (description
     "Computes the ACMIF test and Bonferroni-adjusted p-value of interaction in
two-factor studies.  Produces corresponding interaction plot and analysis of
variance tables and p-values from several other tests of non-additivity.")
    (license license:gpl2)))

(define-public r-hicp
  (package
    (name "r-hicp")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hicp" version))
       (sha256
        (base32 "1xzjlwbmibzs362k6c9y346scqvx3lf6n3pnq6bhbklwfw8jd3hz"))))
    (properties `((upstream-name . "hicp")))
    (build-system r-build-system)
    (propagated-inputs (list r-restatapi r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eurostat/hicp")
    (synopsis "Harmonised Index of Consumer Prices")
    (description
     "The Harmonised Index of Consumer Prices (HICP) is the key economic figure to
measure inflation in the euro area.  The methodology underlying the HICP is
documented in the HICP Methodological Manual
(<https://ec.europa.eu/eurostat/web/products-manuals-and-guidelines/w/ks-gq-24-003>).
 Based on the manual, this package provides functions to access and work with
HICP data from Eurostat's public database
(<https://ec.europa.eu/eurostat/data/database>).")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-hiclimr
  (package
    (name "r-hiclimr")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HiClimR" version))
       (sha256
        (base32 "11aip68cjyy70xr0la1apk6gbkabg8vnc3s5cbydyz7yl4v80nn8"))))
    (properties `((upstream-name . "HiClimR")))
    (build-system r-build-system)
    (inputs (list netcdf))
    (propagated-inputs (list r-ncdf4))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://hsbadr.github.io/HiClimR/")
    (synopsis "Hierarchical Climate Regionalization")
    (description
     "This package provides a tool for Hierarchical Climate Regionalization applicable
to any correlation-based clustering.  It adds several features and a new
clustering method (called, regional linkage) to hierarchical clustering in R
('hclust function in stats library): data regridding, coarsening spatial
resolution, geographic masking, contiguity-constrained clustering, data
filtering by mean and/or variance thresholds, data preprocessing (detrending,
standardization, and PCA), faster correlation function with preliminary big data
support, different clustering methods, hybrid hierarchical clustering,
multivariate clustering (MVC), cluster validation, visualization of
regionalization results, and exporting region map and mean timeseries into
@code{NetCDF-4} file.  The technical details are described in Badr et al. (2015)
<doi:10.1007/s12145-015-0221-7>.")
    (license license:gpl3)))

(define-public r-hibayes
  (package
    (name "r-hibayes")
    (version "3.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hibayes" version))
       (sha256
        (base32 "04vkvqha82cpmjflxir83208d9mxwip7wlbc3zd12apvrg2c91x6"))))
    (properties `((upstream-name . "hibayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-cmplot
                             r-bigmemory
                             r-bh))
    (home-page "https://github.com/YinLiLin/hibayes")
    (synopsis
     "Individual-Level, Summary-Level and Single-Step Bayesian Regression Model")
    (description
     "This package provides a user-friendly tool to fit Bayesian regression models.
It can fit 3 types of Bayesian models using individual-level, summary-level, and
individual plus pedigree-level (single-step) data for both Genomic
prediction/selection (GS) and Genome-Wide Association Study (GWAS), it was
designed to estimate joint effects and genetic parameters for a complex trait,
including: (1) fixed effects and coefficients of covariates, (2) environmental
random effects, and its corresponding variance, (3) genetic variance, (4)
residual variance, (5) heritability, (6) genomic estimated breeding values
(GEBV) for both genotyped and non-genotyped individuals, (7) SNP effect size,
(8) phenotype/genetic variance explained (PVE) for single or multiple SNPs, (9)
posterior probability of association of the genomic window (WPPA), (10)
posterior inclusive probability (PIP).  The functions are not limited, we will
keep on going in enriching it with more features.  References: Meuwissen et al.
(2001) <doi:10.1093/genetics/157.4.1819>; Gustavo et al. (2013)
<doi:10.1534/genetics.112.143313>; Habier et al. (2011)
<doi:10.1186/1471-2105-12-186>; Yi et al. (2008)
<doi:10.1534/genetics.107.085589>; Zhou et al. (2013)
<doi:10.1371/journal.pgen.1003264>; Moser et al. (2015)
<doi:10.1371/journal.pgen.1004969>; Lloyd-Jones et al. (2019)
<doi:10.1038/s41467-019-12653-0>; Henderson (1976) <doi:10.2307/2529339>;
Fernando et al. (2014) <doi:10.1186/1297-9686-46-50>.")
    (license license:gpl3)))

(define-public r-hht
  (package
    (name "r-hht")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hht" version))
       (sha256
        (base32 "13q30difb84byy62rrkxq2hjjl1526pn8j4qvhm5g3cgivvby5ci"))))
    (properties `((upstream-name . "hht")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields r-emd))
    (home-page "https://cran.r-project.org/package=hht")
    (synopsis "The Hilbert-Huang Transform: Tools and Methods")
    (description
     "Builds on the EMD package to provide additional tools for empirical mode
decomposition (EMD) and Hilbert spectral analysis.  It also implements the
ensemble empirical decomposition (EEMD) and the complete ensemble empirical mode
decomposition (CEEMD) methods to avoid mode mixing and intermittency problems
found in EMD analysis.  The package comes with several plotting methods that can
be used to view intrinsic mode functions, the HHT spectrum, and the Fourier
spectrum.")
    (license license:gpl3+)))

(define-public r-hhsmm
  (package
    (name "r-hhsmm")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hhsmm" version))
       (sha256
        (base32 "15lqb4k8q0c9w2fi03ndrzs5vdnh7r5wa4ifpzqvggw5vrnfmfy8"))))
    (properties `((upstream-name . "hhsmm")))
    (build-system r-build-system)
    (propagated-inputs (list r-splines2
                             r-rdpack
                             r-rcpp
                             r-progress
                             r-mvtnorm
                             r-mice
                             r-mass
                             r-magic
                             r-cmapss))
    (home-page "https://cran.r-project.org/package=hhsmm")
    (synopsis "Hidden Hybrid Markov/Semi-Markov Model Fitting")
    (description
     "Develops algorithms for fitting, prediction, simulation and initialization of
the following models (1)- hidden hybrid Markov/semi-Markov model, introduced by
Guedon (2005) <doi:10.1016/j.csda.2004.05.033>, (2)- nonparametric mixture of
B-splines emissions (Langrock et al., 2015 <doi:10.1111/biom.12282>), (3)-
regime switching regression model (Kim et al., 2008
<doi:10.1016/j.jeconom.2007.10.002>) and auto-regressive hidden hybrid
Markov/semi-Markov model, (4)- spline-based nonparametric estimation of additive
state-switching models (Langrock et al., 2018 <doi:10.1111/stan.12133>) (5)-
robust emission model proposed by Qin et al, 2024
<doi:10.1007/s10479-024-05989-4> (6)- several emission distributions, including
mixture of multivariate normal (which can also handle missing data using EM
algorithm) and multi-nomial emission (for modeling polymer or DNA sequences)
(7)- tools for prediction of future state sequence, computing the score of a new
sequence, splitting the samples and sequences to train and test sets, computing
the information measures of the models, computing the residual useful lifetime
(reliability) and many other useful tools ... (read for more description: Amini
et al., 2022 <doi:10.1007/s00180-022-01248-x> and its arxiv version:
<doi:10.48550/@code{arXiv.2109.12489>}).")
    (license license:gpl3)))

(define-public r-hhp
  (package
    (name "r-hhp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HhP" version))
       (sha256
        (base32 "0rmvw52a7a75gcwsyv30wvxrb9ykhg4ji3pj2jhgbzjqdc4s9xzw"))))
    (properties `((upstream-name . "HhP")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=HhP")
    (synopsis "Hierarchical Heterogeneity Analysis via Penalization")
    (description
     "In medical research, supervised heterogeneity analysis has important
implications.  Assume that there are two types of features.  Using both types of
features, our goal is to conduct the first supervised heterogeneity analysis
that satisfies a hierarchical structure.  That is, the first type of features
defines a rough structure, and the second type defines a nested and more refined
structure.  A penalization approach is developed, which has been motivated by
but differs significantly from penalized fusion and sparse group penalization.
Reference: Ren, M., Zhang, Q., Zhang, S., Zhong, T., Huang, J. & Ma, S. (2022).
\"Hierarchical cancer heterogeneity analysis based on histopathological imaging
features\".  Biometrics, <doi:10.1111/biom.13426>.")
    (license license:gpl2)))

(define-public r-hhi
  (package
    (name "r-hhi")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hhi" version))
       (sha256
        (base32 "1yl52c3nqdi8v60sr01l0vv8359803dm2i4c9ifazgj3h3a4h0yp"))))
    (properties `((upstream-name . "hhi")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=hhi")
    (synopsis "Calculate and Visualize the Herfindahl-Hirschman Index")
    (description
     "Based on the aggregated shares retained by individual firms or actors within a
market or space, the Herfindahl-Hirschman Index (HHI) measures the level of
concentration in a space.  This package allows for intuitive and straightforward
computation of HHI scores, requiring placement of objects of interest directly
into the function.  The package also includes a plot function for quick visual
display of an HHI time series using any measure of time (year, quarter, month,
etc.).  For usage, please cite the Journal of Open Source Software paper
associated with the package: Waggoner, Philip D. (2018)
<doi:10.21105/joss.00828>.")
    (license license:expat)))

(define-public r-hhh4contacts
  (package
    (name "r-hhh4contacts")
    (version "0.13.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hhh4contacts" version))
       (sha256
        (base32 "1hxdf8mkcaimglpq6z2gk523w7xh3ih0c2m9mlqbgrgnysb22biy"))))
    (properties `((upstream-name . "hhh4contacts")))
    (build-system r-build-system)
    (propagated-inputs (list r-surveillance r-sp))
    (home-page "https://cran.r-project.org/package=hhh4contacts")
    (synopsis
     "Age-Structured Spatio-Temporal Models for Infectious Disease Counts")
    (description
     "Meyer and Held (2017) <doi:10.1093/biostatistics/kxw051> present an
age-structured spatio-temporal model for infectious disease counts.  The
approach is illustrated in a case study on norovirus gastroenteritis in Berlin,
2011-2015, by age group, city district and week, using additional contact data
from the POLYMOD survey.  This package contains the data and code to reproduce
the results from the paper, see demo(\"hhh4contacts\")'.")
    (license license:gpl2)))

(define-public r-hh
  (package
    (name "r-hh")
    (version "3.1-52")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HH" version))
       (sha256
        (base32 "10q3im2y5r9f5d80c35r2mmp89xclaf74hywkcyn3pk5vwc5wjfm"))))
    (properties `((upstream-name . "HH")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd
                             r-shiny
                             r-rmpfr
                             r-reshape2
                             r-rcolorbrewer
                             r-multcomp
                             r-leaps
                             r-latticeextra
                             r-lattice
                             r-hmisc
                             r-gridextra
                             r-colorspace
                             r-abind))
    (home-page "https://cran.r-project.org/package=HH")
    (synopsis "Statistical Analysis and Data Display: Heiberger and Holland")
    (description
     "Support software for Statistical Analysis and Data Display (Second Edition,
Springer, ISBN 978-1-4939-2121-8, 2015) and (First Edition, Springer, ISBN
0-387-40270-5, 2004) by Richard M. Heiberger and Burt Holland.  This
contemporary presentation of statistical methods features extensive use of
graphical displays for exploring data and for displaying the analysis.  The
second edition includes redesigned graphics and additional chapters.  The
authors emphasize how to construct and interpret graphs, discuss principles of
graphical design, and show how accompanying traditional tabular results are used
to confirm the visual impressions derived directly from the graphs.  Many of the
graphical formats are novel and appear here for the first time in print.  All
chapters have exercises.  All functions introduced in the book are in the
package.  R code for all examples, both graphs and tables, in the book is
included in the scripts directory of the package.")
    (license license:gpl2+)))

(define-public r-hgwrr
  (package
    (name "r-hgwrr")
    (version "0.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hgwrr" version))
       (sha256
        (base32 "0gsq5lvirxhsmwjw3lyzy5bq9h3hrbjrin3fnz938w5wpwdn2krz"))))
    (properties `((upstream-name . "hgwrr")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-sf r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HPDell/hgwrr/")
    (synopsis "Hierarchical and Geographically Weighted Regression")
    (description
     "This model divides coefficients into three types, i.e., local fixed effects,
global fixed effects, and random effects (Hu et al.,
2022)<doi:10.1177/23998083211063885>.  If data have spatial hierarchical
structures (especially are overlapping on some locations), it is worth trying
this model to reach better fitness.")
    (license license:gpl2+)))

(define-public r-hgutils
  (package
    (name "r-hgutils")
    (version "0.2.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hgutils" version))
       (sha256
        (base32 "0l288fqymh2i4dngy909gi8b4c9hdis02gqwyyvy6r8xzisk4m44"))))
    (properties `((upstream-name . "hgutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-stringr
                             r-magrittr
                             r-lubridate
                             r-limsolve
                             r-dplyr
                             r-crayon))
    (home-page "https://github.com/hvdboorn/hgutils")
    (synopsis "Collection of Utility Functions")
    (description
     "This package provides a handy collection of utility functions designed to aid in
package development, plotting and scientific research.  Package development
functionalities includes among others tools such as cross-referencing package
imports with the description file, analysis of redundant package imports,
editing of the description file and the creation of package badges for
@code{GitHub}.  Some of the other functionalities include automatic package
installation and loading, plotting points without overlap, creating nice breaks
for plots, overview tables and many more handy utility functions.")
    (license license:gpl3)))

(define-public r-hgsl
  (package
    (name "r-hgsl")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HGSL" version))
       (sha256
        (base32 "1p453xr3d1bmqc6mrmzb0hz9p0gp25m6v6qr0l3bapcf71vzbvq1"))))
    (properties `((upstream-name . "HGSL")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HGSL")
    (synopsis "Heterogeneous Group Square-Root Lasso")
    (description
     "Estimation of high-dimensional multi-response regression with heterogeneous
noises under Heterogeneous group square-root Lasso penalty.  For details see:
Ren, Z., Kang, Y., Fan, Y. and Lv, J. (2018)<@code{arXiv:1606.03803>}.")
    (license license:gpl2+)))

(define-public r-hgraph
  (package
    (name "r-hgraph")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HGraph" version))
       (sha256
        (base32 "1y35lzym3mbr1v7j7v55i9mxb1vn65xzgp5542va1bngvrm25hjf"))))
    (properties `((upstream-name . "HGraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HGraph")
    (synopsis "Use Graph Structure to Travel")
    (description
     "It is used to travel graphs, by using DFS and BFS to get the path from node to
each leaf node.  Depth first traversal(DFS) is a recursive algorithm for
searching all the vertices of a graph or tree data structure.  Traversal means
visiting all the nodes of a graph.  Breadth first traversal(BFS) algorithm is
used to search a tree or graph data structure for a node that meets a set of
criteria.  It starts at the treeâs root or graph and searches/visits all nodes
at the current depth level before moving on to the nodes at the next depth
level.  Also, it provides the matrix which is reachable between each node.
Implement reference about Baruch Awerbuch (1985)
<doi:10.1016/0020-0190(85)90083-3>.")
    (license license:gpl2)))

(define-public r-hgnc
  (package
    (name "r-hgnc")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hgnc" version))
       (sha256
        (base32 "180092gpcs3j94904ry42crs62knzrv926bp25dapigqqfj7jjqi"))))
    (properties `((upstream-name . "hgnc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-hms
                             r-dplyr))
    (home-page "https://github.com/ramiromagno/hgnc")
    (synopsis
     "Download and Import the HUGO Gene Nomenclature Committee ('HGNC') Data Set into R")
    (description
     "This package provides a set of routines to quickly download and import the HGNC
data set on mapping of gene symbols to gene entries in other popular databases
or resources.")
    (license license:expat)))

(define-public r-hgmnd
  (package
    (name "r-hgmnd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HGMND" version))
       (sha256
        (base32 "1iwqssj66q9dfgddzwqmnnpvxnvlrq7p1axm95lpkf3vrpn5rp6b"))))
    (properties `((upstream-name . "HGMND")))
    (build-system r-build-system)
    (propagated-inputs (list r-genscore))
    (home-page "https://cran.r-project.org/package=HGMND")
    (synopsis "Heterogeneous Graphical Model for Non-Negative Data")
    (description
     "Graphical model is an informative and powerful tool to explore the conditional
dependence relationships among variables.  The traditional Gaussian graphical
model and its extensions either have a Gaussian assumption on the data
distribution or assume the data are homogeneous.  However, there are data with
complex distributions violating these two assumptions.  For example, the air
pollutant concentration records are non-negative and, hence, non-Gaussian.
Moreover, due to climate changes, distributions of these concentration records
in different months of a year can be far different, which means it is uncertain
whether datasets from different months are homogeneous.  Methods with a Gaussian
or homogeneous assumption may incorrectly model the conditional dependence
relationships among variables.  Therefore, we propose a heterogeneous graphical
model for non-negative data (HGMND) to simultaneously cluster multiple datasets
and estimate the conditional dependence matrix of variables from a non-Gaussian
and non-negative exponential family in each cluster.")
    (license license:gpl3)))

(define-public r-hgm
  (package
    (name "r-hgm")
    (version "1.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hgm" version))
       (sha256
        (base32 "15prmsbs5zq12r6nrg2ibq2y8qfyrp9vq1g4jm258m0alrxnjx8w"))))
    (properties `((upstream-name . "hgm")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve))
    (home-page "http://www.openxm.org")
    (synopsis "Holonomic Gradient Method and Gradient Descent")
    (description
     "The holonomic gradient method (HGM, hgm) gives a way to evaluate normalization
constants of unnormalized probability distributions by utilizing holonomic
systems of differential or difference equations.  The holonomic gradient descent
(HGD, hgd) gives a method to find maximal likelihood estimates by utilizing the
HGM.")
    (license license:gpl2)))

(define-public r-hglm-data
  (package
    (name "r-hglm-data")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hglm.data" version))
       (sha256
        (base32 "0mw1s0kahsh9jmwkxysfy5f7vbld7mpzmdnnww6im5h21jhnczx2"))))
    (properties `((upstream-name . "hglm.data")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=hglm.data")
    (synopsis "Data for the 'hglm' Package")
    (description
     "This data-only package was created for distributing data used in the examples of
the hglm package.")
    (license license:gpl2+)))

(define-public r-hglm
  (package
    (name "r-hglm")
    (version "2.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hglm" version))
       (sha256
        (base32 "1lyxkvqzfll1qrz5c2km9ikhq0dm63x39by4vc1nmkd24yza93nc"))))
    (properties `((upstream-name . "hglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-hglm-data))
    (home-page "https://cran.r-project.org/package=hglm")
    (synopsis "Hierarchical Generalized Linear Models")
    (description
     "Implemented here are procedures for fitting hierarchical generalized linear
models (HGLM).  It can be used for linear mixed models and generalized linear
mixed models with random effects for a variety of links and a variety of
distributions for both the outcomes and the random effects.  Fixed effects can
also be fitted in the dispersion part of the mean model.  As statistical models,
HGLMs were initially developed by Lee and Nelder (1996)
<https://www.jstor.org/stable/2346105?seq=1>.  We provide an implementation
(Ronnegard, Alam and Shen 2010)
<https://journal.r-project.org/archive/2010-2/RJournal_2010-2_Roennegaard~et~al.pdf>
following Lee, Nelder and Pawitan (2006) <ISBN: 9781420011340> with algorithms
extended for spatial modeling (Alam, Ronnegard and Shen 2015)
<https://journal.r-project.org/archive/2015/RJ-2015-017/RJ-2015-017.pdf>.")
    (license license:gpl2+)))

(define-public r-hglasso
  (package
    (name "r-hglasso")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hglasso" version))
       (sha256
        (base32 "15sq5fk7iicglpyxdkh44mg112zij05ic4x3snhqyc2lx1hvp7cy"))))
    (properties `((upstream-name . "hglasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-igraph r-glasso r-fields))
    (home-page "https://cran.r-project.org/package=hglasso")
    (synopsis "Learning Graphical Models with Hubs")
    (description
     "This package implements the hub graphical lasso and hub covariance graph
proposal by Tan, KM., London, P., Mohan, K., Lee, S-I., Fazel, M., and Witten,
D. (2014).  Learning graphical models with hubs.  Journal of Machine Learning
Research 15(Oct):3297-3331.")
    (license license:gpl2+)))

(define-public r-hfr
  (package
    (name "r-hfr")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hfr" version))
       (sha256
        (base32 "0xcmin49sbkl3c9xrvq7spp5qnfdf7v6fscv3a85dhd5b5adhpm7"))))
    (properties `((upstream-name . "hfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-quadprog r-dendextend r-corpcor))
    (home-page "https://hfr.residualmetrics.com")
    (synopsis "Estimate Hierarchical Feature Regression Models")
    (description
     "This package provides functions for the estimation, plotting, predicting and
cross-validation of hierarchical feature regression models as described in
Pfitzinger (2024).  Cluster Regularization via a Hierarchical Feature
Regression.  Econometrics and Statistics (in press).
<doi:10.1016/j.ecosta.2024.01.003>.")
    (license license:gpl2)))

(define-public r-hflights
  (package
    (name "r-hflights")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hflights" version))
       (sha256
        (base32 "1rb6finck13i6949i6hsgfk90q4ybxh1m3is2mlw2m6087bpzfbd"))))
    (properties `((upstream-name . "hflights")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hflights")
    (synopsis "Flights that departed Houston in 2011")
    (description
     "This package provides a data only package containing commercial domestic flights
that departed Houston (IAH and HOU) in 2011.")
    (license license:cc0)))

(define-public r-hfhub
  (package
    (name "r-hfhub")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hfhub" version))
       (sha256
        (base32 "0s2fm8lx680ymn8srln6dyay0lp03mxhyv7p71aw892hdq1d2sm1"))))
    (properties `((upstream-name . "hfhub")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-urltools
                             r-rlang
                             r-httr
                             r-glue
                             r-fs
                             r-filelock
                             r-curl
                             r-cli))
    (home-page "https://mlverse.github.io/hfhub/")
    (synopsis "Hugging Face Hub Interface")
    (description
     "This package provides functionality to download and cache files from Hugging
Face Hub <https://huggingface.co/models>.  Uses the same caching structure so
files can be shared between different client libraries.")
    (license license:expat)))

(define-public r-hexview
  (package
    (name "r-hexview")
    (version "0.3-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hexView" version))
       (sha256
        (base32 "01hiqyibsd4as7jcklzg09pl12la341mg561vn16z4jzdarfvkfc"))))
    (properties `((upstream-name . "hexView")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hexView")
    (synopsis "Viewing Binary Files")
    (description
     "This package provides functions to view files in raw binary form like in a hex
editor.  Additional functions to specify and read arbitrary binary formats.")
    (license license:gpl2)))

(define-public r-hextri
  (package
    (name "r-hextri")
    (version "0.9.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hextri" version))
       (sha256
        (base32 "04kk1a029i1rz617s9i3jvpnxillc3k3b7g3nrbsbi37ik6qk5r4"))))
    (properties `((upstream-name . "hextri")))
    (build-system r-build-system)
    (propagated-inputs (list r-hexbin r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hextri")
    (synopsis "Hexbin Plots with Triangles")
    (description
     "Display hexagonally binned scatterplots for multi-class data, using coloured
triangles to show class proportions.")
    (license license:expat)))

(define-public r-hextractor
  (package
    (name "r-hextractor")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HextractoR" version))
       (sha256
        (base32 "1wp7n92wgrjyklq159ymrw8y5ads6lhj2fcz54rzdnccdyx5naxi"))))
    (properties `((upstream-name . "HextractoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqinr r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=HextractoR")
    (synopsis "Integrated Tool for Hairping Extraction of RNA Sequences")
    (description
     "Simple and integrated tool that automatically extracts and folds all hairpin
sequences from raw genome-wide data.  It predicts the secondary structure of
several overlapped segments, with longer length than the mean length of
sequences of interest for the species under processing, ensuring that no one is
lost nor inappropriately cut.")
    (license license:asl2.0)))

(define-public r-hexsticker
  (package
    (name "r-hexsticker")
    (version "0.4.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hexSticker" version))
       (sha256
        (base32 "0d9sz2cshn4lq18kd9fkgvjm3v29h0k22b6228rq2q3zhxi97ra0"))))
    (properties `((upstream-name . "hexSticker")))
    (build-system r-build-system)
    (propagated-inputs (list r-sysfonts r-showtext r-hexbin r-ggplot2
                             r-ggimage))
    (home-page "https://github.com/GuangchuangYu/hexSticker")
    (synopsis "Create Hexagon Sticker in R")
    (description
     "Helper functions for creating reproducible hexagon sticker purely in R.")
    (license license:artistic2.0)))

(define-public r-hexfont
  (package
    (name "r-hexfont")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hexfont" version))
       (sha256
        (base32 "0pi64rzrzjrfpbjpgvj8fpf81550jfsy5sjsvgc4a0gv9b1dswr6"))))
    (properties `((upstream-name . "hexfont")))
    (build-system r-build-system)
    (propagated-inputs (list r-bittermelon))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/trevorld/hexfont")
    (synopsis "'GNU Unifont' Hex Fonts")
    (description
     "This package contains most of the hex font files from the GNU Unifont Project
<https://unifoundry.com/unifont/> compressed by xz'.  GNU Unifont is a duospaced
bitmap font that attempts to cover all the official Unicode glyphs plus several
of the artificial scripts in the (Under-)@code{ConScript} Unicode Registry
<http://www.kreativekorp.com/ucsur/>.  Provides a convenience function for
loading in several of them at the same time as a bittermelon bitmap font object
for easy rendering of the glyphs in an R terminal or graphics device.")
    (license license:gpl2+)))

(define-public r-heuristicsminer
  (package
    (name "r-heuristicsminer")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heuristicsmineR" version))
       (sha256
        (base32 "0w4f7xpz2342k38b5a7fs6fq50045hh2836390zg36nqdapg8vlv"))))
    (properties `((upstream-name . "heuristicsmineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-processmapr
                             r-petrinetr
                             r-magrittr
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-diagrammer
                             r-data-table
                             r-bupar
                             r-bh))
    (home-page "https://github.com/bupaverse/heuristicsmineR")
    (synopsis "Discovery of Process Models with the Heuristics Miner")
    (description
     "This package provides the heuristics miner algorithm for process discovery as
proposed by Weijters et al. (2011) <doi:10.1109/CIDM.2011.5949453>.  The
algorithm builds a causal net from an event log created with the @code{bupaR}
package.  Event logs are a set of ordered sequences of events for which
@code{bupaR} provides the S3 class eventlog().  The discovered causal nets can
be visualised as htmlwidgets and it is possible to annotate them with the
occurrence frequency or processing and waiting time of process activities.")
    (license license:expat)))

(define-public r-heuristica
  (package
    (name "r-heuristica")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heuristica" version))
       (sha256
        (base32 "1j88sviy6yabh5prab0f1snnicbg843kbwyawakj3xx3p43v23lb"))))
    (properties `((upstream-name . "heuristica")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmisc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jeanimal/heuristica")
    (synopsis "Heuristics Including Take the Best and Unit-Weight Linear")
    (description
     "This package implements various heuristics like Take The Best and unit-weight
linear, which do two-alternative choice: which of two objects will have a higher
criterion? Also offers functions to assess performance, e.g. percent correct
across all row pairs in a data set and finding row pairs where models disagree.
New models can be added by implementing a fit and predict function-- see
vignette.  Take The Best was first described in: Gigerenzer, G. & Goldstein, D.
G. (1996) <doi:10.1037/0033-295X.103.4.650>.  All of these heuristics were run
on many data sets and analyzed in: Gigerenzer, G., Todd, P. M., & the ABC Group
(1999). <ISBN:978-0195143812>.")
    (license license:expat)))

(define-public r-heumilkr
  (package
    (name "r-heumilkr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heumilkr" version))
       (sha256
        (base32 "0zpjmsk0vzz9x5nngznma3znpjlhjihxq0i9hrjx4nzbbbayf9qp"))))
    (properties `((upstream-name . "heumilkr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rlang r-ggplot2 r-cpp11 r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lschneiderbauer/heumilkr")
    (synopsis "Heuristic Capacitated Vehicle Routing Problem Solver")
    (description
     "This package implements the Clarke-Wright algorithm to find a quasi-optimal
solution to the Capacitated Vehicle Routing Problem.  See Clarke, G. and Wright,
J.R. (1964) <doi:10.1287/opre.12.4.568> for details.  The implementation is
accompanied by helper functions to inspect its solution.")
    (license license:gpl3+)))

(define-public r-hetu
  (package
    (name "r-hetu")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hetu" version))
       (sha256
        (base32 "1ml3jzfc71j0d7a7yn97sbfzlpdpg46jpjcn6xbnh17xrqc1mv2a"))))
    (properties `((upstream-name . "hetu")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://ropengov.github.io/hetu/")
    (synopsis "Structural Handling of Finnish Personal Identity Codes")
    (description
     "Structural handling of Finnish identity codes (natural persons and
organizations); extract information, check ID validity and diagnostics.")
    (license license:bsd-2)))

(define-public r-hettx
  (package
    (name "r-hettx")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hettx" version))
       (sha256
        (base32 "15i9n2fcfbkv11qlgh4gsjvfnzzziwbcn8izzxw2d0kbdhhk7h8c"))))
    (properties `((upstream-name . "hettx")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-quantreg
                             r-purrr
                             r-plyr
                             r-mvtnorm
                             r-moments
                             r-mass
                             r-ggplot2
                             r-formula-tools
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hettx")
    (synopsis
     "Fisherian and Neymanian Methods for Detecting and Measuring Treatment Effect Variation")
    (description
     "This package implements methods developed by Ding, Feller, and Miratrix (2016)
<doi:10.1111/rssb.12124> <@code{arXiv:1412.5000>}, and Ding, Feller, and
Miratrix (2018) <doi:10.1080/01621459.2017.1407322> <@code{arXiv:1605.06566>}
for testing whether there is unexplained variation in treatment effects across
observations, and for characterizing the extent of the explained and unexplained
variation in treatment effects.  The package includes wrapper functions
implementing the proposed methods, as well as helper functions for analyzing and
visualizing the results of the test.")
    (license license:gpl3+)))

(define-public r-hettreatreg
  (package
    (name "r-hettreatreg")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hettreatreg" version))
       (sha256
        (base32 "092xd2yndg5n5shxmcyn2gh6a6w1i1497cvj009ih3ax8hk3crf0"))))
    (properties `((upstream-name . "hettreatreg")))
    (build-system r-build-system)
    (home-page "https://github.com/tslocz/hettreatreg")
    (synopsis "Heterogeneous Treatment Effects in Regression Analysis")
    (description
     "Computes diagnostics for linear regression when treatment effects are
heterogeneous.  The output of hettreatreg represents ordinary least squares
(OLS) estimates of the effect of a binary treatment as a weighted average of the
average treatment effect on the treated (ATT) and the average treatment effect
on the untreated (ATU).  The program estimates the OLS weights on these
parameters, computes the associated model diagnostics, and reports the implicit
OLS estimate of the average treatment effect (ATE).  See Sloczynski (2019),
<http://people.brandeis.edu/~tslocz/Sloczynski_paper_regression.pdf>.")
    (license license:gpl2)))

(define-public r-hettest
  (package
    (name "r-hettest")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hettest" version))
       (sha256
        (base32 "0qmgm9q42xrgfgsk15a6h2mdnq0aiyccpzyp79hi271w54dkmbj0"))))
    (properties `((upstream-name . "hettest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hettest")
    (synopsis
     "Testing for a Treatment Effect Using a Heterogeneous Surrogate Marker")
    (description
     "Tests for a treatment effect using surrogate marker information accounting for
heterogeneity in the utility of the surrogate.  Details are described in Parast
et al (2022) <@code{arXiv:2209.08315>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hett
  (package
    (name "r-hett")
    (version "0.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hett" version))
       (sha256
        (base32 "0i7q28nc67m62vi1ipfg035yqjh691fb1mp33dp1b68g5wjysphh"))))
    (properties `((upstream-name . "hett")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lattice))
    (home-page "https://cran.r-project.org/package=hett")
    (synopsis "Heteroscedastic t-Regression")
    (description
     "This package provides functions for the fitting and summarizing of
heteroscedastic t-regression.")
    (license license:gpl2+)))

(define-public r-hetsurr
  (package
    (name "r-hetsurr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hetsurr" version))
       (sha256
        (base32 "1086lqxg6s5a0qxmd29bp3ninr4jzfdp3m6fsn9sfl7bagvrs5wy"))))
    (properties `((upstream-name . "hetsurr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsurrogate))
    (home-page "https://cran.r-project.org/package=hetsurr")
    (synopsis "Assessing Heterogeneity in the Utility of a Surrogate Marker")
    (description
     "This package provides a function to assess and test for heterogeneity in the
utility of a surrogate marker with respect to a baseline covariate.  The main
function can be used for either a continuous or discrete baseline covariate.
More details will be available in the future in: Parast, L., Cai, T., Tian L
(2021). \"Testing for Heterogeneity in the Utility of a Surrogate Marker.\"
Biometrics, In press.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hetop
  (package
    (name "r-hetop")
    (version "0.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HETOP" version))
       (sha256
        (base32 "1fjwyqh7l296pghmc4m81q8icgbhvqvxr61zd638fr46gls3ky2p"))))
    (properties `((upstream-name . "HETOP")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2jags))
    (home-page "https://cran.r-project.org/package=HETOP")
    (synopsis
     "MLE and Bayesian Estimation of Heteroskedastic Ordered Probit (HETOP) Model")
    (description
     "This package provides functions for maximum likelihood and Bayesian estimation
of the Heteroskedastic Ordered Probit (HETOP) model, using methods described in
Lockwood, Castellano and Shear (2018) <doi:10.3102/1076998618795124> and
Reardon, Shear, Castellano and Ho (2017) <doi:10.3102/1076998616666279>.  It
also provides a general function to compute the triple-goal estimators of Shen
and Louis (1998) <doi:10.1111/1467-9868.00135>.")
    (license license:gpl2+)))

(define-public r-hetools
  (package
    (name "r-hetools")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HEtools" version))
       (sha256
        (base32 "0qfygdpmzrnih0p24xdqpxbgmcqbcgvbdjihh3x4cqspawcsffs5"))))
    (properties `((upstream-name . "HEtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom))
    (home-page "https://cran.r-project.org/package=HEtools")
    (synopsis "Homomorphic Encryption Polynomials")
    (description
     "Homomorphic encryption (Brakerski and Vaikuntanathan (2014)
<doi:10.1137/120868669>) using Ring Learning with Errors (Lyubashevsky et al.
(2012) <https://eprint.iacr.org/2012/230>) is a form of Learning with Errors
(Regev (2005) <doi:10.1145/1060590.1060603>) using polynomial rings over finite
fields.  Functions to generate the required polynomials (using polynom'), with
various distributions of coefficients are provided.  Additionally, functions to
generate and take coefficient modulo are provided.")
    (license license:expat)))

(define-public r-hetgp
  (package
    (name "r-hetgp")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hetGP" version))
       (sha256
        (base32 "1rw8ss67d2zglnc0vl2kvmkgglks1666d1ps0bpqgn1f8mdwv2kr"))))
    (properties `((upstream-name . "hetGP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass r-dicedesign))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hetGP")
    (synopsis
     "Heteroskedastic Gaussian Process Modeling and Design under Replication")
    (description
     "This package performs Gaussian process regression with heteroskedastic noise
following the model by Binois, M., Gramacy, R., Ludkovski, M. (2016)
<@code{arXiv:1611.05902>}, with implementation details in Binois, M. & Gramacy,
R. B. (2021) <doi:10.18637/jss.v098.i13>.  The input dependent noise is modeled
as another Gaussian process.  Replicated observations are encouraged as they
yield computational savings.  Sequential design procedures based on the
integrated mean square prediction error and lookahead heuristics are provided,
and notably fast update functions when adding new observations.")
    (license license:lgpl2.0+)))

(define-public r-heteromixgm
  (package
    (name "r-heteromixgm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heteromixgm" version))
       (sha256
        (base32 "0jhvjalpx7licjjvj8ld4als1jkm22mkbxmz893h91qzacznx8zk"))))
    (properties `((upstream-name . "heteromixgm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-matrix
                             r-mass
                             r-igraph
                             r-glasso
                             r-bdgraph))
    (home-page "https://cran.r-project.org/package=heteromixgm")
    (synopsis "Copula Graphical Models for Heterogeneous Mixed Data")
    (description
     "This package provides a multi-core R package that allows for the statistical
modeling of multi-group multivariate mixed data using Gaussian graphical models.
 Combining the Gaussian copula framework with the fused graphical lasso penalty,
the heteromixgm package can handle a wide variety of datasets found in various
sciences.  The package also includes an option to perform model selection using
the AIC, BIC and EBIC information criteria, as well as simulate mixed
heterogeneous data for exploratory or simulation purposes and one multi-group
multivariate mixed agricultural dataset pertaining to maize yields.  The package
implements the methodological developments found in Hermes et al. (2022)
<doi:10.48550/@code{arXiv.2210.13140>}.")
    (license license:gpl3)))

(define-public r-heterometa
  (package
    (name "r-heterometa")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heterometa" version))
       (sha256
        (base32 "1z295l3kzz0c3q6qx5qhf0nr73db13vjvn1lnis05509mga9i28w"))))
    (properties `((upstream-name . "heterometa")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-mathjaxr))
    (home-page "https://cran.r-project.org/package=heterometa")
    (synopsis "Convert Various Meta-Analysis Heterogeneity Measures")
    (description
     "Published meta-analyses routinely present one of the measures of heterogeneity
introduced in Higgins and Thompson (2002) <doi:10.1002/sim.1186>.  For
critiquing articles it is often better to convert to another of those measures.
Some conversions are provided here and confidence intervals are also available.")
    (license license:gpl2)))

(define-public r-heteroggm
  (package
    (name "r-heteroggm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HeteroGGM" version))
       (sha256
        (base32 "1yz4rwlfhq0lk9zpc1p7yc35d1n1gr0pfdfhlm57kcsi5a8pzlk1"))))
    (properties `((upstream-name . "HeteroGGM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-igraph r-huge))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=HeteroGGM")
    (synopsis "Gaussian Graphical Model-Based Heterogeneity Analysis")
    (description
     "The goal of this package is to user-friendly realizing Gaussian graphical
model-based heterogeneity analysis.  Recently, several Gaussian graphical
model-based heterogeneity analysis techniques have been developed.  A common
methodological limitation is that the number of subgroups is assumed to be known
a priori, which is not realistic.  In a very recent study (Ren et al., 2022), a
novel approach based on the penalized fusion technique is developed to fully
data-dependently determine the number and structure of subgroups in Gaussian
graphical model-based heterogeneity analysis.  It opens the door for utilizing
the Gaussian graphical model technique in more practical settings.  Beyond Ren
et al. (2022), more estimations and functions are added, so that the package is
self-contained and more comprehensive and can provide ``more direct insights to
practitioners (with the visualization function).  Reference: Ren, M., Zhang S.,
Zhang Q. and Ma S. (2022).  Gaussian Graphical Model-based Heterogeneity
Analysis via Penalized Fusion.  Biometrics, 78 (2), 524-535.")
    (license license:gpl2)))

(define-public r-heterogen
  (package
    (name "r-heterogen")
    (version "1.2.33")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heterogen" version))
       (sha256
        (base32 "17287n38km02ldwddldw9zh8f8w18f9vi7dcg52a17r9r7v0mshv"))))
    (properties `((upstream-name . "heterogen")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-scales
                             r-rio
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-future))
    (home-page "https://github.com/patauchi/heterogen")
    (synopsis "Spatial Functions for Heterogeneity and Climate Variability")
    (description
     "This package provides a comprehensive suite of spatial functions created to
analyze and assess data heterogeneity and climate variability in spatial
datasets.  This package is specifically designed to address the challenges
associated with characterizing and understanding complex spatial patterns in
environmental and climate-related data.")
    (license license:gpl3+)))

(define-public r-heterfunctionaldata
  (package
    (name "r-heterfunctionaldata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HeterFunctionalData" version))
       (sha256
        (base32 "0qrfmxwrxn0rd2ncy3afhraf7m0010nf9739jkj19h1j5vksi9n1"))))
    (properties `((upstream-name . "HeterFunctionalData")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HeterFunctionalData")
    (synopsis "Test of No Main and/or Interaction Effects in Functional Data")
    (description
     "Distribution free heteroscedastic tests for functional data.  The following
tests are included in this package: test of no main treatment or contrast effect
and no simple treatment effect given in Wang, Higgins, and Blasi (2010)
<doi:10.1016/j.spl.2009.11.016>, no main time effect, and no interaction effect
based on original observations given in Wang and Akritas (2010a)
<doi:10.1080/10485250903171621> and tests based on ranks given in Wang and
Akritas (2010b) <doi:10.1016/j.jmva.2010.03.012>.")
    (license license:gpl2)))

(define-public r-hesim
  (package
    (name "r-hesim")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hesim" version))
       (sha256
        (base32 "1fx55wwzk2w3zxnk96821bxrsklln7r6px19m7iv0f376iaamiq7"))))
    (properties `((upstream-name . "hesim")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-msm
                             r-mass
                             r-ggplot2
                             r-flexsurv
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://hesim-dev.github.io/hesim/")
    (synopsis "Health Economic Simulation Modeling and Decision Analysis")
    (description
     "This package provides a modular and computationally efficient R package for
parameterizing, simulating, and analyzing health economic simulation models.
The package supports cohort discrete time state transition models (Briggs et al.
 1998) <doi:10.2165/00019053-199813040-00003>, N-state partitioned survival
models (Glasziou et al.  1990) <doi:10.1002/sim.4780091106>, and
individual-level continuous time state transition models (Siebert et al.  2012)
<doi:10.1016/j.jval.2012.06.014>, encompassing both Markov (time-homogeneous and
time-inhomogeneous) and semi-Markov processes.  Decision uncertainty from a
cost-effectiveness analysis is quantified with standard graphical and tabular
summaries of a probabilistic sensitivity analysis (Claxton et al.  2005, Barton
et al.  2008) <doi:10.1002/hec.985>, <doi:10.1111/j.1524-4733.2008.00358.x>.
Use of C++ and data.table make individual-patient simulation, probabilistic
sensitivity analysis, and incorporation of patient heterogeneity fast.")
    (license license:gpl3)))

(define-public r-hero
  (package
    (name "r-hero")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hero" version))
       (sha256
        (base32 "0az2gva4rdbgsfd31512h8a23bvvbx812ws05rg2qs6r5qhwbj8r"))))
    (properties `((upstream-name . "hero")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-sf
                             r-pbapply
                             r-optimx
                             r-matrix
                             r-fields))
    (home-page "https://cran.r-project.org/package=hero")
    (synopsis "Spatio-Temporal (Hero) Sandwich Smoother")
    (description
     "An implementation of the sandwich smoother proposed in Fast Bivariate Penalized
Splines by Xiao et al. (2012) <doi:10.1111/rssb.12007>.  A hero is a specific
type of sandwich.  Dictionary.com (2018) <https://www.dictionary.com> describes
a hero as: a large sandwich, usually consisting of a small loaf of bread or long
roll cut in half lengthwise and containing a variety of ingredients, as meat,
cheese, lettuce, and tomatoes.  Also implements the spatio-temporal sandwich
smoother of French and Kokoszka (2021) <doi:10.1016/j.spasta.2020.100413>.")
    (license license:gpl2+)))

(define-public r-hermiter
  (package
    (name "r-hermiter")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hermiter" version))
       (sha256
        (base32 "13vfzsns91g0vcbdzrzlgzcdh4sqfh4wzivyhgcn4v6rc10sj2dp"))))
    (properties `((upstream-name . "hermiter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MikeJaredS/hermiter")
    (synopsis
     "Efficient Sequential and Batch Estimation of Univariate and Bivariate Probability Density Functions and Cumulative Distribution Functions along with Quantiles (Univariate) and Nonparametric Correlation (Bivariate)")
    (description
     "Facilitates estimation of full univariate and bivariate probability density
functions and cumulative distribution functions along with full quantile
functions (univariate) and nonparametric correlation (bivariate) using Hermite
series based estimators.  These estimators are particularly useful in the
sequential setting (both stationary and non-stationary) and one-pass batch
estimation setting for large data sets.  Based on: Stephanou, Michael,
Varughese, Melvin and Macdonald, Iain. \"Sequential quantiles via Hermite series
density estimation.\" Electronic Journal of Statistics 11.1 (2017): 570-607
<doi:10.1214/17-EJS1245>, Stephanou, Michael and Varughese, Melvin. \"On the
properties of Hermite series based distribution function estimators.\" Metrika
(2020) <doi:10.1007/s00184-020-00785-z> and Stephanou, Michael and Varughese,
Melvin. \"Sequential estimation of Spearman rank correlation using Hermite series
estimators.\" Journal of Multivariate Analysis (2021)
<doi:10.1016/j.jmva.2021.104783>.")
    (license license:expat)))

(define-public r-hermite
  (package
    (name "r-hermite")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hermite" version))
       (sha256
        (base32 "0j9s7ayvbvmgwybrvf703b72qbn8gskb105pis19ig2sslllzda3"))))
    (properties `((upstream-name . "hermite")))
    (build-system r-build-system)
    (propagated-inputs (list r-maxlik))
    (home-page "https://cran.r-project.org/package=hermite")
    (synopsis "Generalized Hermite Distribution")
    (description
     "Probability functions and other utilities for the generalized Hermite
distribution.")
    (license license:gpl2+)))

(define-public r-heritseq
  (package
    (name "r-heritseq")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HeritSeq" version))
       (sha256
        (base32 "0jzf3pq43lllxvvmf0rqzxz9fx6931mgb0ipminlw1iakz8wa6w3"))))
    (properties `((upstream-name . "HeritSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-tweedie
                             r-summarizedexperiment
                             r-pbapply
                             r-mass
                             r-lme4
                             r-deseq2
                             r-cplm))
    (home-page "https://cran.r-project.org/package=HeritSeq")
    (synopsis "Heritability of Gene Expression for Next-Generation Sequencing")
    (description
     "Statistical framework to analyze heritability of gene expression based on
next-generation sequencing data and simulating sequencing reads.  Variance
partition coefficients (VPC) are computed using linear mixed effects and
generalized linear mixed effects models.  Compound Poisson and negative binomial
models are included.  Reference: Rudra, Pratyaydipta, et al. \"Model based
heritability scores for high-throughput sequencing data.\" BMC bioinformatics
18.1 (2017): 143.")
    (license license:gpl2)))

(define-public r-heritability
  (package
    (name "r-heritability")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heritability" version))
       (sha256
        (base32 "053fqjc8772gqhxnm2gn7yz747432kizn5q5060g5bd77v15jlhp"))))
    (properties `((upstream-name . "heritability")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=heritability")
    (synopsis
     "Marker-Based Estimation of Heritability Using Individual Plant or Plot Data")
    (description
     "This package implements marker-based estimation of heritability when
observations on genetically identical replicates are available.  These can be
either observations on individual plants or plot-level data in a field trial.
Heritability can then be estimated using a mixed model for the individual plant
or plot data.  For comparison, also mixed-model based estimation using genotypic
means and estimation of repeatability with ANOVA are implemented.  For
illustration the package contains several datasets for the model species
Arabidopsis thaliana.")
    (license license:gpl3)))

(define-public r-herer
  (package
    (name "r-herer")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hereR" version))
       (sha256
        (base32 "0la67qdsq72x8k19v27g73fh6w04fdgfj1cxbd3a6w1sfvjvvy6z"))))
    (properties `((upstream-name . "hereR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sf
                             r-jsonlite
                             r-flexpolyline
                             r-data-table
                             r-curl
                             r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://munterfi.github.io/hereR/")
    (synopsis "'sf'-Based Interface to the 'HERE' REST APIs")
    (description
     "Interface to the HERE REST APIs <https://developer.here.com/develop/rest-apis>:
(1) geocode and autosuggest addresses or reverse geocode POIs using the Geocoder
API; (2) route directions, travel distance or time matrices and isolines using
the Routing', Matrix Routing and Isoline Routing APIs; (3) request real-time
traffic flow and incident information from the Traffic API; (4) find request
public transport connections and nearby stations from the Public Transit API;
(5) request intermodal routes using the Intermodal Routing API; (6) get weather
forecasts, reports on current weather conditions, astronomical information and
alerts at a specific location from the Destination Weather API. Locations,
routes and isolines are returned as sf objects.")
    (license license:gpl3)))

(define-public r-heplots
  (package
    (name "r-heplots")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heplots" version))
       (sha256
        (base32 "0hkwfg2xfsmvxnzr2jdfxn93ny325rkhc2cakr4hvddvg65dckfx"))))
    (properties `((upstream-name . "heplots")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rgl
                             r-purrr
                             r-mass
                             r-magrittr
                             r-car
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "http://friendly.github.io/heplots/")
    (synopsis "Visualizing Hypothesis Tests in Multivariate Linear Models")
    (description
     "This package provides HE plot and other functions for visualizing hypothesis
tests in multivariate linear models.  HE plots represent
sums-of-squares-and-products matrices for linear hypotheses and for error using
ellipses (in two dimensions) and ellipsoids (in three dimensions).  The related
candisc package provides visualizations in a reduced-rank canonical discriminant
space when there are more than a few response variables.")
    (license license:gpl2+)))

(define-public r-hemispher
  (package
    (name "r-hemispher")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hemispheR" version))
       (sha256
        (base32 "1x372rbi112l5hdmlkbn5x90h8a6y71zngdlfn1p27c10klwaspy"))))
    (properties `((upstream-name . "hemispheR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-terra
                             r-sf
                             r-scales
                             r-jpeg
                             r-dplyr
                             r-dismo
                             r-autothresholdr))
    (home-page "https://cran.r-project.org/package=hemispheR")
    (synopsis "Processing Hemispherical Canopy Images")
    (description
     "Import and classify canopy fish-eye images, estimate angular gap fraction and
derive canopy attributes like leaf area index and openness.  Additional
information is provided in the study by Chianucci F., Macek M. (2023)
<doi:10.1016/j.agrformet.2023.109470>.")
    (license license:expat)))

(define-public r-hemdag
  (package
    (name "r-hemdag")
    (version "2.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HEMDAG" version))
       (sha256
        (base32 "1dmfy5bbnjmjb4d7430i38z9hvpcrwafj6hw46118hwzcl4b6ldv"))))
    (properties `((upstream-name . "HEMDAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rbgl
                             r-preprocesscore
                             r-precrec
                             r-plyr
                             r-graph
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=HEMDAG")
    (synopsis "Hierarchical Ensemble Methods for Directed Acyclic Graphs")
    (description
     "An implementation of several Hierarchical Ensemble Methods (HEMs) for Directed
Acyclic Graphs (DAGs).  HEMDAG package: 1) reconciles flat predictions with the
topology of the ontology; 2) can enhance the predictions of virtually any flat
learning methods by taking into account the hierarchical relationships between
ontology classes; 3) provides biologically meaningful predictions that always
obey the true-path-rule, the biological and logical rule that governs the
internal coherence of biomedical ontologies; 4) is specifically designed for
exploiting the hierarchical relationships of DAG-structured taxonomies, such as
the Human Phenotype Ontology (HPO) or the Gene Ontology (GO), but can be safely
applied to tree-structured taxonomies as well (as @code{FunCat}), since trees
are DAGs; 5) scales nicely both in terms of the complexity of the taxonomy and
in the cardinality of the examples; 6) provides several utility functions to
process and analyze graphs; 7) provides several performance metrics to evaluate
HEMs algorithms. (Marco Notaro, Max Schubach, Peter N. Robinson and Giorgio
Valentini (2017) <doi:10.1186/s12859-017-1854-y>).")
    (license license:gpl3+)))

(define-public r-helsinki
  (package
    (name "r-helsinki")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "helsinki" version))
       (sha256
        (base32 "1hsmxnfzbi8xvqz97rmq225w9prhxc558slmfxg03y5wpjqdpq4a"))))
    (properties `((upstream-name . "helsinki")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-sf
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "http://ropengov.github.io/helsinki/")
    (synopsis "R Tools for Helsinki Open Data")
    (description
     "This package provides tools for accessing various open data APIs in the Helsinki
region in Finland.  Current data sources include the Service Map API, Linked
Events API, and Helsinki Region Infoshare statistics API.")
    (license license:bsd-2)))

(define-public r-helpersmg
  (package
    (name "r-helpersmg")
    (version "6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HelpersMG" version))
       (sha256
        (base32 "1cggzna2gdl8pxdj2s0swlbwxs9qzz276x43inr87i9yxfqwv5q8"))))
    (properties `((upstream-name . "HelpersMG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-matrix r-mass r-ggplot2 r-coda))
    (home-page "https://cran.r-project.org/package=HelpersMG")
    (synopsis
     "Tools for Environmental Analyses, Ecotoxicology and Various R Functions")
    (description
     "This package contains miscellaneous functions useful for managing @code{NetCDF}
files (see <https://en.wikipedia.org/wiki/@code{NetCDF>}), get moon phase and
time for sun rise and fall, tide level, analyse and reconstruct periodic time
series of temperature with irregular sinusoidal pattern, show scales and wind
rose in plot with change of color of text, Metropolis-Hastings algorithm for
Bayesian MCMC analysis, plot graphs or boxplot with error bars, search files in
disk by there names or their content, read the contents of all files from a
folder at one time.")
    (license license:gpl2)))

(define-public r-helminthr
  (package
    (name "r-helminthr")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "helminthR" version))
       (sha256
        (base32 "0ssw0smxc5zx3d189fq8c6kdg6d7db1sd5iblhz54pg41j9fvqhq"))))
    (properties `((upstream-name . "helminthR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-taxize
                             r-rvest
                             r-plyr
                             r-magrittr
                             r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/helminthR/")
    (synopsis
     "Access London Natural History Museum Host-Helminth Record Database")
    (description
     "Access to large host-parasite data is often hampered by the availability of data
and difficulty in obtaining it in a programmatic way to encourage analyses.
@code{helminthR} provides a programmatic interface to the London Natural History
Museum's host-parasite database, one of the largest host-parasite databases
existing currently
<https://www.nhm.ac.uk/research-curation/scientific-resources/taxonomy-systematics/host-parasites/>.
 The package allows the user to query by host species, parasite species, and
geographic location.")
    (license license:gpl3)))

(define-public r-hellorust
  (package
    (name "r-hellorust")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hellorust" version))
       (sha256
        (base32 "0x2lnbrii9z4kyd810rphcip9wpx7ibqx9b4fs5c5msrqa03amk3"))))
    (properties `((upstream-name . "hellorust")))
    (build-system r-build-system)
    (inputs (list))
    (home-page "https://github.com/r-rust/hellorust")
    (synopsis "Minimal Examples of Using Rust Code in R")
    (description
     "Template R package with minimal setup to use Rust code in R without hacks or
frameworks.  Includes basic examples of importing cargo dependencies, spawning
threads and passing numbers or strings from Rust to R. Cargo crates are
automatically vendored in the R source package to support offline installation.
The @code{GitHub} repository for this package has more details and also explains
how to set up CI. This project was first presented at Erum2018 to showcase
R-Rust integration <https://jeroen.github.io/erum2018/>; for a real world
use-case, see the gifski package on CRAN'.")
    (license license:expat)))

(define-public r-hellojavaworld
  (package
    (name "r-hellojavaworld")
    (version "0.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "helloJavaWorld" version))
       (sha256
        (base32 "1a8yxja54iqdy2k8bicrcx1y3rkgslas03is4v78yhbz42c9fi8s"))))
    (properties `((upstream-name . "helloJavaWorld")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (home-page "https://cran.r-project.org/package=helloJavaWorld")
    (synopsis "Hello Java World")
    (description
     "This package provides a dummy package to demonstrate how to interface to a jar
file that resides inside an R package.")
    (license license:gpl3)))

(define-public r-hellno
  (package
    (name "r-hellno")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hellno" version))
       (sha256
        (base32 "1j787rw9hh75bvkckmlz5xkgwc22gd7si3mgjd7v60dd6lykfa88"))))
    (properties `((upstream-name . "hellno")))
    (build-system r-build-system)
    (home-page "https://github.com/petermeissner/hellno")
    (synopsis
     "Providing 'stringsAsFactors=FALSE' Variants of 'data.frame()' and 'as.data.frame()'")
    (description
     "Base R's default setting for @code{stringsAsFactors} within data.frame() and
as.data.frame() is supposedly the most often complained about piece of code in
the R infrastructure.  The hellno package provides an explicit solution without
changing R itself or having to mess around with options.  It tries to solve this
problem by providing alternative data.frame() and as.data.frame() functions that
are in fact simple wrappers around base R's data.frame() and as.data.frame()
with @code{stringsAsFactors} option set to HELLNO ( which in turn equals FALSE )
by default.")
    (license license:expat)))

(define-public r-hellcor
  (package
    (name "r-hellcor")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HellCor" version))
       (sha256
        (base32 "1bzc2ipm7vw7s849d43lcs0xrk2rs67h223dn9kahqg152mmknza"))))
    (properties `((upstream-name . "HellCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-orthopolynom r-fnn r-energy))
    (home-page "https://cran.r-project.org/package=HellCor")
    (synopsis "The Hellinger Correlation")
    (description
     "Empirical value of the Hellinger correlation, a measure of dependence between
two continuous random variables.  More details can be found in Geenens and
Lafaye De Micheaux (2019) <@code{arXiv:1810.10276v4>}.")
    (license license:gpl2+)))

(define-public r-helixvis
  (package
    (name "r-helixvis")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "helixvis" version))
       (sha256
        (base32 "113rnpnrcnw18ks78fgq79zdrw3kmpzpimlc45gvj0za2fbyci3p"))))
    (properties `((upstream-name . "helixvis")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2 r-ggforce))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rrrlw/helixvis")
    (synopsis "Visualize Alpha-Helical Peptide Sequences")
    (description
     "Create publication-quality, 2-dimensional visualizations of alpha-helical
peptide sequences.  Specifically, allows the user to programmatically generate
helical wheels and wenxiang diagrams to provide a bird's eye, top-down view of
alpha-helical oligopeptides.  See Wadhwa RR, et al. (2018)
<doi:10.21105/joss.01008> for more information.")
    (license license:gpl3)))

(define-public r-heiscore
  (package
    (name "r-heiscore")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heiscore" version))
       (sha256
        (base32 "0c5vycgzbabcnsqbnshwhrwxpvwg8lcwpx2lc9lg5yh29n0qjiqp"))))
    (properties `((upstream-name . "heiscore")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shinywidgets
                             r-shinythemes
                             r-shiny
                             r-rlang
                             r-magrittr
                             r-ggpubr
                             r-ggplot2
                             r-fmsb
                             r-dplyr))
    (home-page "https://github.com/abhrastat/heiscore")
    (synopsis "Score and Plot the Healthy Eating Index from NHANES Data")
    (description
     "Calculate and visualize Healthy Eating Index (HEI) scores from National Health
and Nutrition Examination Survey 24-hour dietary recall data utilizing three
methods recommended by the National Cancer Institute (2024)
<https://epi.grants.cancer.gov/hei/hei-methods-and-calculations.html#:~:text=To%20use%20the%20simple%20HEI,the%20total%20scores%20across%20individuals.>.
 Effortlessly analyze HEI scores across different demographic groups and years.")
    (license license:expat)))

(define-public r-heims
  (package
    (name "r-heims")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heims" version))
       (sha256
        (base32 "0vnq31jwn09grni4gdhf1hzd87b62as4f65b2qw7ky6mi38ahr5d"))))
    (properties `((upstream-name . "heims")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr
                             r-lubridate
                             r-hutils
                             r-fastmatch
                             r-data-table
                             r-bit64))
    (home-page "https://cran.r-project.org/package=heims")
    (synopsis
     "Decode and Validate HEIMS Data from Department of Education, Australia")
    (description
     "Decode elements of the Australian Higher Education Information Management System
(HEIMS) data for clarity and performance.  HEIMS is the record system of the
Department of Education, Australia to record enrolments and completions in
Australia's higher education system, as well as a range of relevant information.
 For more information, including the source of the data dictionary, see
<http://heimshelp.education.gov.au/sites/heimshelp/dictionary/pages/data-element-dictionary>.")
    (license license:gpl3)))

(define-public r-heimdall
  (package
    (name "r-heimdall")
    (version "1.0.717")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heimdall" version))
       (sha256
        (base32 "0qqr084h30p7aiv7cfz7g39qgswz4d249s90cck6xhbc8la9jbc3"))))
    (properties `((upstream-name . "heimdall")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-ggplot2 r-daltoolbox r-caret))
    (home-page "https://github.com/cefet-rj-dal/heimdall")
    (synopsis "Drift Adaptable Models")
    (description
     "By analyzing streaming datasets, it is possible to observe significant changes
in the data distribution or models accuracy during their prediction (concept
drift).  The goal of heimdall is to measure when concept drift occurs.  The
package makes available several state-of-the-art methods.  It also tackles how
to adapt models in a nonstationary context.  Some concept drifts methods are
described in Tavares (2022) <doi:10.1007/s12530-021-09415-z>.")
    (license license:expat)))

(define-public r-heemod
  (package
    (name "r-heemod")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heemod" version))
       (sha256
        (base32 "09kj8gy74dklkbvxxh95qa5s7iaksvyamggppcpnp5c115625rrb"))))
    (properties `((upstream-name . "heemod")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tibble
                             r-rlang
                             r-purrr
                             r-mvnfast
                             r-memoise
                             r-lifecycle
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://aphp.github.io/heemod/")
    (synopsis "Markov Models for Health Economic Evaluations")
    (description
     "An implementation of the modelling and reporting features described in reference
textbook and guidelines (Briggs, Andrew, et al.  Decision Modelling for Health
Economic Evaluation.  Oxford Univ.  Press, 2011; Siebert, U. et al.
State-Transition Modeling.  Medical Decision Making 32, 690-700 (2012).):
deterministic and probabilistic sensitivity analysis, heterogeneity analysis,
time dependency on state-time and model-time (semi-Markov and non-homogeneous
Markov models), etc.")
    (license license:gpl3+)))

(define-public r-hedgehog
  (package
    (name "r-hedgehog")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hedgehog" version))
       (sha256
        (base32 "1mvjnm2zlc4pvw9vnhxr0dj1g1sfqvlrnnhcipzfbvr147yan9l5"))))
    (properties `((upstream-name . "hedgehog")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://hedgehog.qa")
    (synopsis "Property-Based Testing")
    (description
     "Hedgehog will eat all your bugs.  Hedgehog is a property-based testing package
in the spirit of @code{QuickCheck}'.  With Hedgehog', one can test properties of
their programs against randomly generated input, providing far superior test
coverage compared to unit testing.  One of the key benefits of Hedgehog is
integrated shrinking of counterexamples, which allows one to quickly find the
cause of bugs, given salient examples when incorrect behaviour occurs.")
    (license license:expat)))

(define-public r-hedgedrf
  (package
    (name "r-hedgedrf")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hedgedrf" version))
       (sha256
        (base32 "1ka2pp1df00j63g15arcnndzribgkkaimvhxgiia9g409pmyizpc"))))
    (properties `((upstream-name . "hedgedrf")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger r-cvxr))
    (home-page "https://cran.r-project.org/package=hedgedrf")
    (synopsis "An Implementation of the Hedged Random Forest Algorithm")
    (description
     "This algorithm is described in detail in the paper \"Hedging Forecast
Combinations With an Application to the Random Forest\" by Beck et al. (2023)
<doi:10.48550/@code{arXiv.2308.15384>}.  The package provides a function
hedgedrf() that can be used to train a Hedged Random Forest model on a dataset,
and a function predict.hedgedrf() that can be used to make predictions with the
model.")
    (license license:gpl3)))

(define-public r-heddlr
  (package
    (name "r-heddlr")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heddlr" version))
       (sha256
        (base32 "0ixmcgvfbq4hi3wv1fyzpwacmxmixsw5yq6mq5xygk6ji03m1v23"))))
    (properties `((upstream-name . "heddlr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-utf8 r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mikemahoney218/heddlr")
    (synopsis "Dynamic R Markdown Document Generation")
    (description
     "Helper functions designed to make dynamically generating R Markdown documents
easier by providing a simple and tidy way to create report pieces, shape them to
your data, and combine them for exporting into a single R Markdown document.")
    (license license:expat)))

(define-public r-heda
  (package
    (name "r-heda")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HEDA" version))
       (sha256
        (base32 "0arya76isiaxmgmhl7q93vmga9apmbkq3scgz7zhgnrkd8mkh0i1"))))
    (properties `((upstream-name . "HEDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-rlang r-lubridate r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=HEDA")
    (synopsis "'Hydropeaking Events Detection Algorithm'")
    (description
     "This tool identifies hydropeaking events from raw time-series flow record, a
rapid flow variation induced by the hourly-adjusted electricity market.  The
novelty of HEDA is to use vector angle instead of the first-order derivative to
detect change points which not only largely improves the computing efficiency
but also accounts for the rate of change of the flow variation.  More details
<doi:10.1016/j.jhydrol.2021.126392>.")
    (license license:expat)))

(define-public r-heckmanem
  (package
    (name "r-heckmanem")
    (version "0.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HeckmanEM" version))
       (sha256
        (base32 "0rx9lbi5l0h95sg5lhjyrv31qmp4ziam84b98l2a05q56avck9jj"))))
    (properties `((upstream-name . "HeckmanEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampleselection r-performanceanalytics
                             r-mvtnorm r-momtrunc r-ggplot2))
    (home-page "https://cran.r-project.org/package=HeckmanEM")
    (synopsis
     "Fit Normal, Student-t or Contaminated Normal Heckman Selection Models")
    (description
     "It performs maximum likelihood estimation for the Heckman selection model
(Normal, Student-t or Contaminated normal) using an EM-algorithm
<doi:10.1016/j.jmva.2021.104737>.  It also performs influence diagnostic through
global and local influence for four possible perturbation schema.")
    (license license:gpl2)))

(define-public r-heck
  (package
    (name "r-heck")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heck" version))
       (sha256
        (base32 "0s4j0cyac3lqk4jjlbwamdk3nkdicq0nxaa579j9k63azcdz49rs"))))
    (properties `((upstream-name . "heck")))
    (build-system r-build-system)
    (inputs (list))
    (home-page "https://github.com/DyfanJones/heck")
    (synopsis "Highly Performant String Case Converter")
    (description
     "This package provides a case conversion between common cases like
@code{CamelCase} and snake_case.  Using the rust crate heck
<https://github.com/withoutboats/heck> as the backend for a highly performant
case conversion for R'.")
    (license license:expat)))

(define-public r-heatwaver
  (package
    (name "r-heatwaver")
    (version "0.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heatwaveR" version))
       (sha256
        (base32 "172qg8dgyn5lbwmyq8dxdccxr4aqaq6iixn5dqb4fy99ahgdbhyv"))))
    (properties `((upstream-name . "heatwaveR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rcpproll
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-lubridate
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://robwschlegel.github.io/heatwaveR/index.html")
    (synopsis "Detect Heatwaves and Cold-Spells")
    (description
     "The different methods for defining, detecting, and categorising the extreme
events known as heatwaves or cold-spells, as first proposed in Hobday et al.
(2016) <doi: 10.1016/j.pocean.2015.12.014> and Hobday et al. (2018)
<https://www.jstor.org/stable/26542662>.  The functions in this package work on
both air and water temperature data.  These detection algorithms may be used on
non-temperature data as well.")
    (license license:expat)))

(define-public r-heatmapflex
  (package
    (name "r-heatmapflex")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heatmapFlex" version))
       (sha256
        (base32 "0va8ac2wf1mzm6zamhfpid3xkm7310c6b695c5wbc705nwijnd9q"))))
    (properties `((upstream-name . "heatmapFlex")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-heatplus r-biobase))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=heatmapFlex")
    (synopsis "Tools to Generate Flexible Heatmaps")
    (description
     "This package provides a set of tools supporting more flexible heatmaps.  The
graphics is grid-like using the old graphics system.  The main function is
heatmap.n2(), which is a wrapper around the various functions constructing
individual parts of the heatmap, like sidebars, picket plots, legends etc.  The
function supports zooming and splitting, i.e., having (unlimited) small heatmaps
underneath each other in one plot deriving from the same data set, e.g.,
clustered and ordered by a supervised clustering method.")
    (license license:gpl3)))

(define-public r-heatmapfit
  (package
    (name "r-heatmapfit")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heatmapFit" version))
       (sha256
        (base32 "1rswp1wp58f21fpyjybcvvmnn53kr54ij83hp05qbvl7yn1fsnrb"))))
    (properties `((upstream-name . "heatmapFit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=heatmapFit")
    (synopsis "Fit Statistic for Binary Dependent Variable Models")
    (description
     "Generates a fit plot for diagnosing misspecification in models of binary
dependent variables, and calculates the related heatmap fit statistic described
in Esarey and Pierce (2012) <DOI:10.1093/pan/mps026>.")
    (license license:gpl2+)))

(define-public r-heatex
  (package
    (name "r-heatex")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heatex" version))
       (sha256
        (base32 "0c7bxblq24m80yi24gmrqqlcw8jh0lb749adsh51yr6nzpap6i9n"))))
    (properties `((upstream-name . "heatex")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=heatex")
    (synopsis "Heat exchange calculations during physical activity")
    (description
     "The heatex package calculates heat storage in the body and the components of
heat exchange (conductive, convective, radiative, and evaporative) between the
body and the environment during physical activity based on the principles of
partitional calorimetry.  The program enables heat exchange calculations for a
range of environmental conditions when wearing various clothing ensembles.")
    (license license:gpl3)))

(define-public r-heapsofpapers
  (package
    (name "r-heapsofpapers")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "heapsofpapers" version))
       (sha256
        (base32 "1b88ff4j6rh0qif43iyb12wipkkjmp5qx33qfzgffr5m54df4kfy"))))
    (properties `((upstream-name . "heapsofpapers")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rlang
                             r-magrittr
                             r-fs
                             r-dplyr
                             r-curl
                             r-aws-s3))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RohanAlexander/heapsofpapers")
    (synopsis "Easily Download Heaps of PDF and CSV Files")
    (description
     "Makes it easy to download a large number of files such as PDF files and CSV
files, while automatically slowing down requests, letting you know where it is
up to, and adjusting for files that have already been downloaded.")
    (license license:expat)))

(define-public r-healthyverse
  (package
    (name "r-healthyverse")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyverse" version))
       (sha256
        (base32 "1h3d8wq6if1nkqc1d3n6y0g7i7xsvx9ci09z3jvhqx62f464ybgm"))))
    (properties `((upstream-name . "healthyverse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidydensity
                             r-tidyaml
                             r-tibble
                             r-rstudioapi
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-healthyr-ts
                             r-healthyr-data
                             r-healthyr-ai
                             r-healthyr
                             r-dplyr
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/healthyverse")
    (synopsis "Easily Install and Load the 'healthyverse'")
    (description
     "The healthyverse is a set of packages that work in harmony because they share
common data representations and API design.  This package is designed to make it
easy to install and load multiple healthyverse packages in a single step.")
    (license license:expat)))

(define-public r-healthyr-ts
  (package
    (name "r-healthyr-ts")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyR.ts" version))
       (sha256
        (base32 "1h8x47k239f8mmylpiydw7yf9r0synrzjhdk12a3nnbxbajn6iab"))))
    (properties `((upstream-name . "healthyR.ts")))
    (build-system r-build-system)
    (propagated-inputs (list r-workflowsets
                             r-timetk
                             r-tidyr
                             r-tibble
                             r-stringi
                             r-rlang
                             r-recipes
                             r-purrr
                             r-plotly
                             r-parsnip
                             r-modeltime
                             r-magrittr
                             r-lubridate
                             r-hardhat
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/healthyR.ts")
    (synopsis "The Time Series Modeling Companion to 'healthyR'")
    (description
     "Hospital time series data analysis workflow tools, modeling, and automations.
This library provides many useful tools to review common administrative time
series hospital data.  Some of these include average length of stay, and
readmission rates.  The aim is to provide a simple and consistent verb framework
that takes the guesswork out of everything.")
    (license license:expat)))

(define-public r-healthyr-data
  (package
    (name "r-healthyr-data")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyR.data" version))
       (sha256
        (base32 "1g8fd2s60i6yhfp6z2g0ib6zz4n2xvwswbzacbffbvakf21djwvc"))))
    (properties `((upstream-name . "healthyR.data")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-janitor
                             r-httr2
                             r-dplyr))
    (home-page "https://github.com/spsanderson/healthyR.data")
    (synopsis "Data Only Package to 'healthyR'")
    (description
     "This package provides data for functions typically used in the @code{healthyR}
package.")
    (license license:expat)))

(define-public r-healthyr-ai
  (package
    (name "r-healthyr-ai")
    (version "0.0.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyR.ai" version))
       (sha256
        (base32 "0qck4118f0kg9rfnmjc14qh7kdzvxh28rdlydhz8i5j91a6731a4"))))
    (properties `((upstream-name . "healthyR.ai")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-workflows
                             r-tune
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-recipes
                             r-purrr
                             r-parsnip
                             r-modeltime
                             r-magrittr
                             r-h2o
                             r-ggrepel
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-dials
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/healthyR.ai")
    (synopsis "The Machine Learning and AI Modeling Companion to 'healthyR'")
    (description
     "Hospital machine learning and ai data analysis workflow tools, modeling, and
automations.  This library provides many useful tools to review common
administrative hospital data.  Some of these include predicting length of stay,
and readmits.  The aim is to provide a simple and consistent verb framework that
takes the guesswork out of everything.")
    (license license:expat)))

(define-public r-healthyr
  (package
    (name "r-healthyr")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyR" version))
       (sha256
        (base32 "1fa2w3w2cfn5ak01kls8yxxzyfvmp2v43q0bfr4ylrimd1fvbhbp"))))
    (properties `((upstream-name . "healthyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-writexl
                             r-timetk
                             r-tibble
                             r-stringr
                             r-sqldf
                             r-scales
                             r-rlang
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/healthyR")
    (synopsis "Hospital Data Analysis Workflow Tools")
    (description
     "Hospital data analysis workflow tools, modeling, and automations.  This library
provides many useful tools to review common administrative hospital data.  Some
of these include average length of stay, readmission rates, average net pay
amounts by service lines just to name a few.  The aim is to provide a simple and
consistent verb framework that takes the guesswork out of everything.")
    (license license:expat)))

(define-public r-healthyaddress
  (package
    (name "r-healthyaddress")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthyAddress" version))
       (sha256
        (base32 "1fbqka0gg7l11n6czb2z2480r7v5ispn54a17xjad547ndy12n5v"))))
    (properties `((upstream-name . "healthyAddress")))
    (build-system r-build-system)
    (propagated-inputs (list r-qs
                             r-magrittr
                             r-hutilscpp
                             r-hutils
                             r-fst
                             r-fastmatch
                             r-data-table))
    (home-page "https://github.com/HughParsonage/healthyAddress")
    (synopsis "Convert Addresses to Standard Inputs")
    (description
     "Efficient tools for parsing and standardizing Australian addresses from textual
data.  It utilizes optimized algorithms to accurately identify and extract
components of addresses, such as street names, types, and postcodes, especially
for large batched data in contexts where sending addresses to internet services
may be slow or inappropriate.  The core functionality is built on fast string
processing techniques to handle variations in address formats and abbreviations
commonly found in Australian address data.  Designed for data scientists, urban
planners, and logistics analysts, the package facilitates the cleaning and
normalization of address information, supporting better data integration and
analysis in urban studies, geography, and related fields.")
    (license license:gpl2)))

(define-public r-healthfinance
  (package
    (name "r-healthfinance")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthfinance" version))
       (sha256
        (base32 "163zhdd5mqp0q872dmr3xzw2ppapnwp46rr7vkkfnglz635nxvpz"))))
    (properties `((upstream-name . "healthfinance")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-shiny
                             r-scales
                             r-readr
                             r-lubridate
                             r-ggplot2))
    (home-page "https://rrrlw.github.io/healthfinance/")
    (synopsis "Financial Projections and Planning for Health Care Practices")
    (description
     "This package provides a shiny interface for a free, open-source managerial
accounting-like system for health care practices.  This package allows health
care administrators to project revenue with monthly adjustments and
procedure-specific boosts up to a 3-year period.  Granular data (patient-level)
to aggregated data (department- or hospital-level) can all be used as valid
inputs provided historical volume and revenue data is available.  For more
details on managerial accounting techniques, see Brewer et al. (2015,
ISBN:9780078025792).")
    (license license:gpl3)))

(define-public r-healthequal
  (package
    (name "r-healthequal")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthequal" version))
       (sha256
        (base32 "1n96x414pa3khgbvxczavddg2fzfjc3awrpnzd460x12lhw8lfgn"))))
    (properties `((upstream-name . "healthequal")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey
                             r-srvyr
                             r-rlang
                             r-marginaleffects
                             r-emmeans
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/WHOequity/healthequal")
    (synopsis "Compute Summary Measures of Health Inequality")
    (description
     "Compute 21 summary measures of health inequality and its corresponding
confidence intervals for ordered and non-ordered dimensions using disaggregated
data.  Measures for ordered dimensions (e.g., Slope Index of Inequality,
Absolute Concentration Index) also accept individual and survey data.")
    (license license:agpl3+)))

(define-public r-healthdb
  (package
    (name "r-healthdb")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthdb" version))
       (sha256
        (base32 "1iyijm0hwqz0dypqfvk84iyj0qbh16sq09mcs2srj98yywd4nnz4"))))
    (properties `((upstream-name . "healthdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-dplyr
                             r-dbplyr
                             r-data-table
                             r-clock))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KevinHzq/healthdb")
    (synopsis "Working with Healthcare Databases")
    (description
     "This package provides a system for identifying diseases or events from
healthcare databases and preparing data for epidemiological studies.  It
includes capabilities not supported by SQL', such as matching strings by stringr
style regular expressions, and can compute comorbidity scores (Quan et al.
(2005) <doi:10.1097/01.mlr.0000182534.19832.83>) directly on a database server.
The implementation is based on dbplyr with full tidyverse compatibility.")
    (license license:expat)))

(define-public r-healthcare-antitrust
  (package
    (name "r-healthcare-antitrust")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "healthcare.antitrust" version))
       (sha256
        (base32 "1584j0ljvxp4b1ly0gxs9sdsnvvg96f91x94v5xngr4zrvsc21ga"))))
    (properties `((upstream-name . "healthcare.antitrust")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mpanhans/healthcare.antitrust")
    (synopsis "Healthcare Antitrust Analysis")
    (description
     "Antitrust analysis of healthcare markets.  Contains functions to implement the
semiparametric estimation technique described in Raval, Rosenbaum, and Tenn
(2017) \"A Semiparametric Discrete Choice Model: An Application to Hospital
Mergers\" <doi:10.1111/ecin.12454>.")
    (license license:cc0)))

(define-public r-healthcal
  (package
    (name "r-healthcal")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HealthCal" version))
       (sha256
        (base32 "03q966d2kyi6x1ka4nmma94y75yj0vz4bk26psgnysvfz0nldfa3"))))
    (properties `((upstream-name . "HealthCal")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HealthCal")
    (synopsis "Health Calculator")
    (description
     "Health Calculator helps to find different parameters like basal metabolic rate,
body mass index etc.  related to fitness and health of a person.")
    (license license:expat)))

(define-public r-headliner
  (package
    (name "r-headliner")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "headliner" version))
       (sha256
        (base32 "1llq007b032q526csfxxwrrwaxkzgq8wl4g4cr65j8biwwynpaba"))))
    (properties `((upstream-name . "headliner")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://rjake.github.io/headliner/")
    (synopsis "Compose Sentences to Describe Comparisons")
    (description
     "Create dynamic, data-driven text.  Given two values, a list of talking points is
generated and can be combined using string interpolation.  Based on the glue
package.")
    (license license:expat)))

(define-public r-hdxboxer
  (package
    (name "r-hdxboxer")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDXBoxeR" version))
       (sha256
        (base32 "10p41sawddrdpj5sji1jzp63hr6v6hvihb4n3yzci5wvh2a2lx9c"))))
    (properties `((upstream-name . "HDXBoxeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrapr r-tidyr r-stringr r-rcolorbrewer r-dplyr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=HDXBoxeR")
    (synopsis "Analysis of Hydrogen-Deuterium Exchange Mass-Spectrometry Data")
    (description
     "This package provides a protocol that facilitates the processing and analysis of
Hydrogen-Deuterium Exchange Mass Spectrometry data using p-value statistics and
Critical Interval analysis.  It provides a pipeline for analyzing data from
HDXExaminer (Sierra Analytics, Trajan Scientific), automating matching and
comparison of protein states through Welch's T-test and the Critical Interval
statistical framework.  Additionally, it simplifies data export, generates Pymol
scripts, and ensures calculations meet publication standards.  HDX@code{BoxeR}
assists in various aspects of hydrogen-deuterium exchange data analysis,
including reprocessing data, calculating parameters, identifying significant
peptides, generating plots, and facilitating comparison between protein states.
For details check papers by Hageman and Weis (2019)
<doi:10.1021/acs.analchem.9b01325> and Masson et al. (2019)
<doi:10.1038/s41592-019-0459-y>.")
    (license license:gpl2+)))

(define-public r-hdtweedie
  (package
    (name "r-hdtweedie")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDtweedie" version))
       (sha256
        (base32 "0m8xg6fkn81ni1npfadhv2b2zy7nazg46217hr3xw9y53d1a90gk"))))
    (properties `((upstream-name . "HDtweedie")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=HDtweedie")
    (synopsis
     "The Lasso for Tweedie's Compound Poisson Model Using an IRLS-BMD Algorithm")
    (description
     "The Tweedie lasso model implements an iteratively reweighed least square (IRLS)
strategy that incorporates a blockwise majorization decent (BMD) method, for
efficiently computing solution paths of the (grouped) lasso and the (grouped)
elastic net methods.")
    (license license:gpl2)))

(define-public r-hdtsa
  (package
    (name "r-hdtsa")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDTSA" version))
       (sha256
        (base32 "1syrqygfdr12sd32wq2ab0gibwbljlbrwzzkfnmhgh8js9dxv6j8"))))
    (properties `((upstream-name . "HDTSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-rcppeigen
                             r-rcpp
                             r-mass
                             r-jointdiag
                             r-geigen
                             r-clime))
    (home-page "https://github.com/Linc2021/HDTSA")
    (synopsis "High Dimensional Time Series Analysis Tools")
    (description
     "Procedures for high-dimensional time series analysis including factor analysis
proposed by Lam and Yao (2012) <doi:10.1214/12-AOS970> and Chang, Guo and Yao
(2015) <doi:10.1016/j.jeconom.2015.03.024>,martingale difference test proposed
by Chang, Jiang and Shao (2022) <doi:10.1016/j.jeconom.2022.09.001> in
press,principal component analysis proposed by Chang, Guo and Yao (2018)
<doi:10.1214/17-AOS1613>, identifying cointegration proposed by Zhang, Robinson
and Yao (2019) <doi:10.1080/01621459.2018.1458620>, unit root test proposed by
Chang, Cheng and Yao (2021) <doi:10.1093/biomet/asab034>, white noise test
proposed by Chang, Yao and Zhou (2017) <doi:10.1093/biomet/asw066>,
CP-decomposition for high-dimensional matrix time series proposed by Chang, He,
Yang and Yao(2023) <doi:10.1093/jrsssb/qkac011> and Chang, Du, Huang and Yao
(2024+), and Statistical inference for high-dimensional spectral density matrix
porposed by Chang, Jiang, @code{McElroy} and Shao (2023)
<doi:10.48550/@code{arXiv.2212.13686>}.")
    (license license:gpl3)))

(define-public r-hdstim
  (package
    (name "r-hdstim")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDStIM" version))
       (sha256
        (base32 "0v43lwszxmka5li6mp10i2c6zq4si5hm2qsb27lib5gq5cxm23r7"))))
    (properties `((upstream-name . "HDStIM")))
    (build-system r-build-system)
    (propagated-inputs (list r-uwot
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-scales
                             r-ggridges
                             r-ggplot2
                             r-dplyr
                             r-broom
                             r-boruta))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/niaid/HDStIM")
    (synopsis "High Dimensional Stimulation Immune Mapping ('HDStIM')")
    (description
     "This package provides a method for identifying responses to experimental
stimulation in mass or flow cytometry that uses high dimensional analysis of
measured parameters and can be performed with an end-to-end unsupervised
approach.  In the context of in vitro stimulation assays where high-parameter
cytometry was used to monitor intracellular response markers, using cell
populations annotated either through automated clustering or manual gating for a
combined set of stimulated and unstimulated samples, HD@code{StIM} labels cells
as responding or non-responding.  The package also provides auxiliary functions
to rank intracellular markers based on their contribution to identifying
responses and generating diagnostic plots.")
    (license (list license:cc0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hdspatialscan
  (package
    (name "r-hdspatialscan")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDSpatialScan" version))
       (sha256
        (base32 "1hwqdwr4jl887sgnjwq3gmxjhk6zz45nasvy3x7i7rmrqylxig60"))))
    (properties `((upstream-name . "HDSpatialScan")))
    (build-system r-build-system)
    (propagated-inputs (list r-teachingdemos
                             r-swfscmisc
                             r-spatialnp
                             r-sp
                             r-sf
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-purrr
                             r-plotrix
                             r-pbapply
                             r-matrixstats
                             r-fmsb
                             r-dt))
    (home-page "https://cran.r-project.org/package=HDSpatialScan")
    (synopsis "Multivariate and Functional Spatial Scan Statistics")
    (description
     "Allows to detect spatial clusters of abnormal values on multivariate or
functional data.  Martin KULLDORFF and Lan HUANG and Kevin KONTY (2009)
<doi:10.1186/1476-072X-8-58>, Inkyung JUNG and Ho Jin CHO (2015)
<doi:10.1186/s12942-015-0024-6>, Lionel CUCALA and Michael GENIN and Caroline
LANIER and Florent OCCELLI (2017) <doi:10.1016/j.spasta.2017.06.001>, Lionel
CUCALA and Michael GENIN and Florent OCCELLI and Julien SOULA (2019)
<doi:10.1016/j.spasta.2018.10.002>, Camille FREVENT and Mohamed-Salem AHMED and
Matthieu MARBAC and Michael GENIN (2021) <doi:10.1016/j.spasta.2021.100550>,
Zaineb SMIDA and Lionel CUCALA and Ali GANNOUN and Ghislain Durif (2022)
<doi:10.1016/j.csda.2021.107378>, Camille FREVENT and Mohamed-Salem AHMED and
Sophie DABO-NIANG and Michael GENIN (2023) <doi:10.1093/jrsssc/qlad017>.")
    (license license:gpl3)))

(define-public r-hdsinrdata
  (package
    (name "r-hdsinrdata")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDSinRdata" version))
       (sha256
        (base32 "1wkhy6xf5ahj12sg9s32k53j7z2zpqj7rq0ficngdbyfzs2y6w48"))))
    (properties `((upstream-name . "HDSinRdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HDSinRdata")
    (synopsis
     "Data for the 'Mastering Health Data Science Using R' Online Textbook")
    (description
     "This package contains ten datasets used in the chapters and exercises of Paul,
Alice (2023) \"Health Data Science in R\"
<https://alicepaul.github.io/health-data-science-using-r/>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-hdshop
  (package
    (name "r-hdshop")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDShOP" version))
       (sha256
        (base32 "129j1dr3vjdg23dy45wws470v05j5azq8nq88b670kdgfw1586qm"))))
    (properties `((upstream-name . "HDShOP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-lattice))
    (home-page
     "https://github.com/Otryakhin-Dmitry/global-minimum-variance-portfolio")
    (synopsis "High-Dimensional Shrinkage Optimal Portfolios")
    (description
     "Constructs shrinkage estimators of high-dimensional mean-variance portfolios and
performs high-dimensional tests on optimality of a given portfolio.  The
techniques developed in Bodnar et al. (2018 <doi:10.1016/j.ejor.2017.09.028>,
2019 <doi:10.1109/TSP.2019.2929964>, 2020 <doi:10.1109/TSP.2020.3037369>, 2021
<doi:10.1080/07350015.2021.2004897>) are central to the package.  They provide
simple and feasible estimators and tests for optimal portfolio weights, which
are applicable for large p and large n situations where p is the portfolio
dimension (number of stocks) and n is the sample size.  The package also
includes tools for constructing portfolios based on shrinkage estimators of the
mean vector and covariance matrix as well as a new Bayesian estimator for the
Markowitz efficient frontier recently developed by Bauder et al. (2021)
<doi:10.1080/14697688.2020.1748214>.")
    (license license:gpl3)))

(define-public r-hds
  (package
    (name "r-hds")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hds" version))
       (sha256
        (base32 "1smg5ixrl7f2x3wn7s5i26dyadn5sigpf4jsk236z1bhnz617ax4"))))
    (properties `((upstream-name . "hds")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensor r-survival))
    (home-page "https://github.com/liangcj/hds")
    (synopsis "Hazard Discrimination Summary")
    (description
     "This package provides functions for calculating the hazard discrimination
summary and its standard errors, as described in Liang and Heagerty (2016)
<doi:10.1111/biom.12628>.")
    (license license:gpl2)))

(define-public r-hdrfa
  (package
    (name "r-hdrfa")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDRFA" version))
       (sha256
        (base32 "1dwys28vj5icv33x9zy4r62dslvwr1ajv29gs9lkalrc2wjh2qx2"))))
    (properties `((upstream-name . "HDRFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-pracma))
    (home-page "https://cran.r-project.org/package=HDRFA")
    (synopsis "High-Dimensional Robust Factor Analysis")
    (description
     "Factor models have been widely applied in areas such as economics and finance,
and the well-known heavy-tailedness of macroeconomic/financial data should be
taken into account when conducting factor analysis.  We propose two algorithms
to do robust factor analysis by considering the Huber loss.  One is based on
minimizing the Huber loss of the idiosyncratic error's L2 norm, which turns out
to do Principal Component Analysis (PCA) on the weighted sample covariance
matrix and thereby named as Huber PCA. The other one is based on minimizing the
element-wise Huber loss, which can be solved by an iterative Huber regression
algorithm.  In this package we also provide the code for traditional PCA, the
Robust Two Step (RTS) method by He et al. (2022) and the Quantile Factor
Analysis (QFA) method by Chen et al. (2021) and He et al. (2023).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-hdpglm
  (package
    (name "r-hdpglm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdpGLM" version))
       (sha256
        (base32 "1hh0d0dmnqxzsfar86bd0cqjj5jljyhw073zi59bmjyg4m0rjyyn"))))
    (properties `((upstream-name . "hdpGLM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rprojroot
                             r-rcpparmadillo
                             r-rcpp
                             r-questionr
                             r-purrr
                             r-png
                             r-mvtnorm
                             r-mcmcpack
                             r-mass
                             r-magrittr
                             r-laplacesdemon
                             r-isotone
                             r-hmisc
                             r-ggridges
                             r-ggpubr
                             r-ggplot2
                             r-ggjoy
                             r-formula-tools
                             r-dplyr
                             r-data-table
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DiogoFerrari/hdpGLM")
    (synopsis "Hierarchical Dirichlet Process Generalized Linear Models")
    (description
     "Implementation of MCMC algorithms to estimate the Hierarchical Dirichlet Process
Generalized Linear Model (@code{hdpGLM}) presented in the paper Ferrari (2020)
Modeling Context-Dependent Latent Heterogeneity, Political Analysis
<DOI:10.1017/pan.2019.13> and <doi:10.18637/jss.v107.i10>.")
    (license license:expat)))

(define-public r-hdpca
  (package
    (name "r-hdpca")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdpca" version))
       (sha256
        (base32 "0xcakpnp363lz98y3h87p1yhj0gs3f94gx2i8kz4mcizn1ll5xbd"))))
    (properties `((upstream-name . "hdpca")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve r-boot))
    (home-page "https://cran.r-project.org/package=hdpca")
    (synopsis "Principal Component Analysis in High-Dimensional Data")
    (description
     "In high-dimensional settings: Estimate the number of distant spikes based on the
Generalized Spiked Population (GSP) model.  Estimate the population eigenvalues,
angles between the sample and population eigenvectors, correlations between the
sample and population PC scores, and the asymptotic shrinkage factors.  Adjust
the shrinkage bias in the predicted PC scores.  Dey, R. and Lee, S. (2019)
<doi:10.1016/j.jmva.2019.02.007>.")
    (license license:gpl2+)))

(define-public r-hdoutliers
  (package
    (name "r-hdoutliers")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDoutliers" version))
       (sha256
        (base32 "0vc3g36cghs2ln8a3pb344b3vw1jpz9r8ld77ldd898vg9rhkq2m"))))
    (properties `((upstream-name . "HDoutliers")))
    (build-system r-build-system)
    (propagated-inputs (list r-mclust r-fnn r-factominer))
    (home-page "https://cran.r-project.org/package=HDoutliers")
    (synopsis
     "Leland Wilkinson's Algorithm for Detecting Multidimensional Outliers")
    (description
     "An implementation of an algorithm for outlier detection that can handle a) data
with a mixed categorical and continuous variables, b) many columns of data, c)
many rows of data, d) outliers that mask other outliers, and e) both
unidimensional and multidimensional datasets.  Unlike ad hoc methods found in
many machine learning papers, HDoutliers is based on a distributional model that
uses probabilities to determine outliers.")
    (license license:expat)))

(define-public r-hdomdesign
  (package
    (name "r-hdomdesign")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDOMDesign" version))
       (sha256
        (base32 "1wfq4w73dkkmfwn3n9rwpjlpvm1ak76dv9ymh6zqfls5whdmp59g"))))
    (properties `((upstream-name . "HDOMDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-hadamardr))
    (home-page "https://cran.r-project.org/package=HDOMDesign")
    (synopsis "High-Dimensional Orthogonal Maximin Distance Designs")
    (description
     "This package contains functions to construct high-dimensional orthogonal maximin
distance designs in two, four, eight, and sixteen levels from rotating the
Kronecker product of sub-Hadamard matrices.")
    (license license:lgpl2.1)))

(define-public r-hdnra
  (package
    (name "r-hdnra")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDNRA" version))
       (sha256
        (base32 "17c2bck5s68kn7b67g5pgxd14n13313899waynn79vnkl319czq9"))))
    (properties `((upstream-name . "HDNRA")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-rdpack r-rcpparmadillo r-rcpp r-expm))
    (home-page "https://nie23wp8738.github.io/HDNRA/")
    (synopsis
     "High-Dimensional Location Testing with Normal-Reference Approaches")
    (description
     "We provide a collection of various classical tests and latest normal-reference
tests for comparing high-dimensional mean vectors including two-sample and
general linear hypothesis testing (GLHT) problem.  Some existing tests for
two-sample problem [see Bai, Zhidong, and Hewa Saranadasa.(1996)
<https://www.jstor.org/stable/24306018>; Chen, Song Xi, and Ying-Li Qin.(2010)
<doi:10.1214/09-aos716>; Srivastava, Muni S., and Meng Du.(2008)
<doi:10.1016/j.jmva.2006.11.002>; Srivastava, Muni S., Shota Katayama, and
Yutaka Kano.(2013)<doi:10.1016/j.jmva.2012.08.014>].  Normal-reference tests for
two-sample problem [see Zhang, Jin-Ting, Jia Guo, Bu Zhou, and Ming-Yen
Cheng.(2020) <doi:10.1080/01621459.2019.1604366>; Zhang, Jin-Ting, Bu Zhou, Jia
Guo, and Tianming Zhu.(2021) <doi:10.1016/j.jspi.2020.11.008>; Zhang, Liang,
Tianming Zhu, and Jin-Ting Zhang.(2020) <doi:10.1016/j.ecosta.2019.12.002>;
Zhang, Liang, Tianming Zhu, and Jin-Ting Zhang.(2023)
<doi:10.1080/02664763.2020.1834516>; Zhang, Jin-Ting, and Tianming Zhu.(2022)
<doi:10.1080/10485252.2021.2015768>; Zhang, Jin-Ting, and Tianming Zhu.(2022)
<doi:10.1007/s42519-021-00232-w>; Zhu, Tianming, Pengfei Wang, and Jin-Ting
Zhang.(2023) <doi:10.1007/s00180-023-01433-6>].  Some existing tests for GLHT
problem [see Fujikoshi, Yasunori, Tetsuto Himeno, and Hirofumi Wakaki.(2004)
<doi:10.14490/jjss.34.19>; Srivastava, Muni S., and Yasunori Fujikoshi.(2006)
<doi:10.1016/j.jmva.2005.08.010>; Yamada, Takayuki, and Muni S.
Srivastava.(2012) <doi:10.1080/03610926.2011.581786>; Schott, James R.(2007)
<doi:10.1016/j.jmva.2006.11.007>; Zhou, Bu, Jia Guo, and Jin-Ting Zhang.(2017)
<doi:10.1016/j.jspi.2017.03.005>].  Normal-reference tests for GLHT problem [see
Zhang, Jin-Ting, Jia Guo, and Bu Zhou.(2017) <doi:10.1016/j.jmva.2017.01.002>;
Zhang, Jin-Ting, Bu Zhou, and Jia Guo.(2022) <doi:10.1016/j.jmva.2021.104816>;
Zhu, Tianming, Liang Zhang, and Jin-Ting Zhang.(2022)
<doi:10.5705/ss.202020.0362>; Zhu, Tianming, and Jin-Ting Zhang.(2022)
<doi:10.1007/s00180-021-01110-6>; Zhang, Jin-Ting, and Tianming Zhu.(2022)
<doi:10.1016/j.csda.2021.107385>].")
    (license license:gpl3+)))

(define-public r-hdnom
  (package
    (name "r-hdnom")
    (version "6.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdnom" version))
       (sha256
        (base32 "0n6wvjkg4dyq140a5grpnv526v2z5m7w726cnslrshcj31mngr46"))))
    (properties `((upstream-name . "hdnom")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-penalized
                             r-ncvreg
                             r-gridextra
                             r-glmnet
                             r-ggplot2
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://nanx.me/hdnom/")
    (synopsis
     "Benchmarking and Visualization Toolkit for Penalized Cox Models")
    (description
     "This package creates nomogram visualizations for penalized Cox regression
models, with the support of reproducible survival model building, validation,
calibration, and comparison for high-dimensional data.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hdmt
  (package
    (name "r-hdmt")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDMT" version))
       (sha256
        (base32 "11wr7n6gj75k3a339h9hm167pni3vdbbnwwblc2b0wfljxsif6hf"))))
    (properties `((upstream-name . "HDMT")))
    (build-system r-build-system)
    (propagated-inputs (list r-qvalue r-fdrtool))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HDMT")
    (synopsis
     "Multiple Testing Procedure for High-Dimensional Mediation Hypotheses")
    (description
     "This package provides a multiple-testing procedure for high-dimensional
mediation hypotheses.  Mediation analysis is of rising interest in epidemiology
and clinical trials.  Among existing methods for mediation analyses, the popular
joint significance (JS) test yields an overly conservative type I error rate and
therefore low power.  In the R package HDMT we implement a multiple-testing
procedure that accurately controls the family-wise error rate (FWER) and the
false discovery rate (FDR) when using JS for testing high-dimensional mediation
hypotheses.  The core of our procedure is based on estimating the proportions of
three component null hypotheses and deriving the corresponding mixture
distribution of null p-values.  Results of the data examples include
better-behaved quantile-quantile plots and improved detection of novel mediation
relationships on the role of DNA methylation in genetic regulation of gene
expression.  With increasing interest in mediation by molecular intermediaries
such as gene expression, the proposed method addresses an unmet methodological
challenge.  Methods used in the package refer to James Y. Dai, Janet L. Stanford
& Michael @code{LeBlanc} (2020) <doi:10.1080/01621459.2020.1765785>.")
    (license license:expat)))

(define-public r-hdmfa
  (package
    (name "r-hdmfa")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDMFA" version))
       (sha256
        (base32 "19s3zflc7fhd2bwf8m7h5n4scd45li9izgw8aqv4prly46isnn3y"))))
    (properties `((upstream-name . "HDMFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-mass))
    (home-page "https://cran.r-project.org/package=HDMFA")
    (synopsis "High-Dimensional Matrix Factor Analysis")
    (description
     "High-dimensional matrix factor models have drawn much attention in view of the
fact that observations are usually well structured to be an array such as in
macroeconomics and finance.  In addition, data often exhibit heavy-tails and
thus it is also important to develop robust procedures.  We aim to address this
issue by replacing the least square loss with Huber loss function.  We propose
two algorithms to do robust factor analysis by considering the Huber loss.  One
is based on minimizing the Huber loss of the idiosyncratic error's Frobenius
norm, which leads to a weighted iterative projection approach to compute and
learn the parameters and thereby named as Robust-Matrix-Factor-Analysis (RMFA),
see the details in He et al. (2023)<doi:10.1080/07350015.2023.2191676>.  The
other one is based on minimizing the element-wise Huber loss, which can be
solved by an iterative Huber regression algorithm (IHR), see the details in He
et al. (2023) <@code{arXiv:2306.03317>}.  In this package, we also provide the
algorithm for alpha-PCA by Chen & Fan (2021)
<doi:10.1080/01621459.2021.1970569>, the Projected estimation (PE) method by Yu
et al. (2022)<doi:10.1016/j.jeconom.2021.04.001>.  In addition, the methods for
determining the pair of factor numbers are also given.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-hdmed
  (package
    (name "r-hdmed")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdmed" version))
       (sha256
        (base32 "1vmyf9w5dwl8ayxsk7ykd13hl41j4a435771rkgmkmnm5fbcqaai"))))
    (properties `((upstream-name . "hdmed")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncvreg
                             r-mediation
                             r-mass
                             r-iterators
                             r-hdi
                             r-genlasso
                             r-gcdnet
                             r-freebird
                             r-foreach
                             r-bama))
    (home-page "https://cran.r-project.org/package=hdmed")
    (synopsis "Methods for Mediation Analysis with High-Dimensional Mediators")
    (description
     "This package provides a suite of functions for performing mediation analysis
with high-dimensional mediators.  In addition to centralizing code from several
existing packages for high-dimensional mediation analysis, we provide organized,
well-documented functions for a handle of methods which, though programmed their
original authors, have not previously been formalized into R packages or been
made presentable for public use.  The methods we include cover a broad array of
approaches and objectives, and are described in detail by both our companion
manuscript---\"Methods for Mediation Analysis with High-Dimensional DNA
Methylation Data: Possible Choices and Comparison\"---and the original
publications that proposed them.  The specific methods offered by our package
include the Bayesian sparse linear mixed model (BSLMM) by Song et al. (2019);
high-dimensional mediation analysis (HDMA) by Gao et al. (2019);
high-dimensional multivariate mediation (HDMM) by @code{ChÃ©n} et al. (2018);
high-dimensional linear mediation analysis (HILMA) by Zhou et al. (2020);
high-dimensional mediation analysis (HIMA) by Zhang et al. (2016); latent
variable mediation analysis (LVMA) by Derkach et al. (2019); mediation by
fixed-effect model (@code{MedFix}) by Zhang (2021); pathway LASSO by Zhao & Luo
(2022); principal component mediation analysis (PCMA) by Huang & Pan (2016); and
sparse principal component mediation analysis (SPCMA) by Zhao et al. (2020).
Citations for the corresponding papers can be found in their respective
functions.")
    (license license:gpl3+)))

(define-public r-hdme
  (package
    (name "r-hdme")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdme" version))
       (sha256
        (base32 "04s9r29yjirkzki6drcyglh2hd712habzdgpw0fnf3cy9960wv4v"))))
    (properties `((upstream-name . "hdme")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rglpk
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-glmnet
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/osorensen/hdme")
    (synopsis "High-Dimensional Regression with Measurement Error")
    (description
     "Penalized regression for generalized linear models for measurement error
problems (aka.  errors-in-variables).  The package contains a version of the
lasso (L1-penalization) which corrects for measurement error (Sorensen et al.
(2015) <doi:10.5705/ss.2013.180>).  It also contains an implementation of the
Generalized Matrix Uncertainty Selector, which is a version the (Generalized)
Dantzig Selector for the case of measurement error (Sorensen et al. (2018)
<doi:10.1080/10618600.2018.1425626>).")
    (license license:gpl3)))

(define-public r-hdmaadmm
  (package
    (name "r-hdmaadmm")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDMAADMM" version))
       (sha256
        (base32 "0whcd0315cxn45ilsrh11baylrxvk0w4vcsqk6sps6fcpg4m2ak5"))))
    (properties `((upstream-name . "HDMAADMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-dqrng))
    (home-page "https://github.com/psyen0824/HDMAADMM")
    (synopsis "ADMM for High-Dimensional Mediation Models")
    (description
     "We use the Alternating Direction Method of Multipliers (ADMM) for parameter
estimation in high-dimensional, single-modality mediation models.  To improve
the sensitivity and specificity of estimated mediation effects, we offer the
sure independence screening (SIS) function for dimension reduction.  The
available penalty options include Lasso, Elastic Net, Pathway Lasso, and
Network-constrained Penalty.  The methods employed in the package are based on
Boyd, S., Parikh, N., Chu, E., Peleato, B., & Eckstein, J. (2011).
<doi:10.1561/2200000016>, Fan, J., & Lv, J. (2008)
<doi:10.1111/j.1467-9868.2008.00674.x>, Li, C., & Li, H. (2008)
<doi:10.1093/bioinformatics/btn081>, Tibshirani, R. (1996)
<doi:10.1111/j.2517-6161.1996.tb02080.x>, Zhao, Y., & Luo, X. (2022)
<doi:10.4310/21-sii673>, and Zou, H., & Hastie, T. (2005)
<doi:10.1111/j.1467-9868.2005.00503.x>.")
    (license license:expat)))

(define-public r-hdm
  (package
    (name "r-hdm")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdm" version))
       (sha256
        (base32 "0spy2a23b6hxw6dm6zjqya066ar0224b64lckh6hrapha8kv4m1k"))))
    (properties `((upstream-name . "hdm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-glmnet r-ggplot2 r-formula r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdm")
    (synopsis "High-Dimensional Metrics")
    (description
     "Implementation of selected high-dimensional statistical and econometric methods
for estimation and inference.  Efficient estimators and uniformly valid
confidence intervals for various low-dimensional causal/ structural parameters
are provided which appear in high-dimensional approximately sparse models.
Including functions for fitting heteroscedastic robust Lasso regressions with
non-Gaussian errors and for instrumental variable (IV) and treatment effect
estimation in a high-dimensional setting.  Moreover, the methods enable valid
post-selection inference and rely on a theoretically grounded, data-driven
choice of the penalty.  Chernozhukov, Hansen, Spindler (2016)
<@code{arXiv:1603.01700>}.")
    (license license:expat)))

(define-public r-hdlsskst
  (package
    (name "r-hdlsskst")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDLSSkST" version))
       (sha256
        (base32 "19snvpgiq8kxzqv6yimzn7nfxkch2xkm0sk41m7g4xwr412dn49j"))))
    (properties `((upstream-name . "HDLSSkST")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=HDLSSkST")
    (synopsis
     "Distribution-Free Exact High Dimensional Low Sample Size k-Sample Tests")
    (description
     "Testing homogeneity of k multivariate distributions is a classical and
challenging problem in statistics, and this becomes even more challenging when
the dimension of the data exceeds the sample size.  We construct some tests for
this purpose which are exact level (size) alpha tests based on clustering.
These tests are easy to implement and distribution-free in finite sample
situations.  Under appropriate regularity conditions, these tests have the
consistency property in HDLSS asymptotic regime, where the dimension of data
grows to infinity while the sample size remains fixed.  We also consider a
multiscale approach, where the results for different number of partitions are
aggregated judiciously.  Details are in Biplab Paul, Shyamal K De and Anil K
Ghosh (2021) <doi:10.1016/j.jmva.2021.104897>; Soham Sarkar and Anil K Ghosh
(2019) <doi:10.1109/TPAMI.2019.2912599>; William M Rand (1971)
<doi:10.1080/01621459.1971.10482356>; Cyrus R Mehta and Nitin R Patel (1983)
<doi:10.2307/2288652>; Joseph C Dunn (1973) <doi:10.1080/01969727308546046>;
Sture Holm (1979) <doi:10.2307/4615733>; Yoav Benjamini and Yosef Hochberg
(1995) <doi: 10.2307/2346101>.")
    (license license:gpl2+)))

(define-public r-hdjm
  (package
    (name "r-hdjm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDJM" version))
       (sha256
        (base32 "1vv1q7hdq12wh5nbr8zh1f8fzx5caaq4b39wqy99mxpx8cnsb87n"))))
    (properties `((upstream-name . "HDJM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod r-rcppensmallen
                             r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=HDJM")
    (synopsis "Penalized High-Dimensional Joint Model")
    (description
     "Joint models have been widely used to study the associations between
longitudinal biomarkers and a survival outcome.  However, existing joint models
only consider one or a few longitudinal biomarkers and cannot deal with
high-dimensional longitudinal biomarkers.  This package can be used to fit our
recently developed penalized joint model that can handle high-dimensional
longitudinal biomarkers.  Specifically, an adaptive lasso penalty is imposed on
the parameters for the effects of the longitudinal biomarkers on the survival
outcome, which allows for variable selection.  Also, our algorithm is
computationally efficient, which is based on the Gaussian variational
approximation method.")
    (license license:gpl2)))

(define-public r-hdivar
  (package
    (name "r-hdivar")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdiVAR" version))
       (sha256
        (base32 "1vvsi1irnbjnyliz9wh783kbjkyz8agfbrx10436fsf8x33d1qs8"))))
    (properties `((upstream-name . "hdiVAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdiVAR")
    (synopsis "Statistical Inference for Noisy Vector Autoregression")
    (description
     "The model is high-dimensional vector autoregression with measurement error, also
known as linear gaussian state-space model.  Provable sparse
expectation-maximization algorithm is provided for the estimation of transition
matrix and noise variances.  Global and simultaneous testings are implemented
for transition matrix with false discovery rate control.  For more information,
see the accompanying paper: Lyu, X., Kang, J., & Li, L. (2023). \"Statistical
inference for high-dimensional vector autoregression with measurement error\",
Statistica Sinica.")
    (license license:gpl2+)))

(define-public r-hdir
  (package
    (name "r-hdir")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDiR" version))
       (sha256
        (base32 "1qwd3y9645m8v2gdrb4xjpq86ixs9rgrw7iv3m5lm7nnf87qm350"))))
    (properties `((upstream-name . "HDiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-npcirc r-movmf r-directional r-circular))
    (home-page "https://cran.r-project.org/package=HDiR")
    (synopsis "Directional Highest Density Regions")
    (description
     "We provide an R tool for computation and nonparametric plug-in estimation of
Highest Density Regions (HDRs) and general level sets in the directional
setting.  Concretely, circular and spherical HDRs can be reconstructed from a
data sample following Saavedra-Nieves and Crujeiras (2021)
<doi:10.1007/s11634-021-00457-4>.  This library also contains two real datasets
in the circular and spherical settings.  The first one concerns a problem from
animal orientation studies and the second one is related to earthquakes
occurrences.")
    (license license:gpl2)))

(define-public r-hdinterval
  (package
    (name "r-hdinterval")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDInterval" version))
       (sha256
        (base32 "1xlljhzd30mi7pic7q55h7hv0bccxfc2g32piv8jx830svnz01xv"))))
    (properties `((upstream-name . "HDInterval")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HDInterval")
    (synopsis "Highest (Posterior) Density Intervals")
    (description
     "This package provides a generic function and a set of methods to calculate
highest density intervals for a variety of classes of objects which can specify
a probability density distribution, including MCMC output, fitted density
objects, and functions.")
    (license license:gpl3)))

(define-public r-hdimpute
  (package
    (name "r-hdimpute")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdImpute" version))
       (sha256
        (base32 "1gs3205z3v7zvr2xqi4jv8xpmngpw41nk0kbz7wx3g4a5152hagq"))))
    (properties `((upstream-name . "hdImpute")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-purrr
                             r-plyr
                             r-missranger
                             r-magrittr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pdwaggoner/hdImpute")
    (synopsis "Batch Process for High Dimensional Imputation")
    (description
     "This package provides a correlation-based batch process for fast, accurate
imputation for high dimensional missing data problems via chained random
forests.  See Waggoner (2023) <doi:10.1007/s00180-023-01325-9> for more on
@code{hdImpute}', Stekhoven and BÃ¼hlmann (2012)
<doi:10.1093/bioinformatics/btr597> for more on @code{missForest}', and Mayer
(2022) <https://github.com/mayer79/@code{missRanger>} for more on
@code{missRanger}'.")
    (license license:expat)))

(define-public r-hdi
  (package
    (name "r-hdi")
    (version "0.1-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdi" version))
       (sha256
        (base32 "0k35zqz58lcx5p7ijhks4j7kqp553zggvrx4lh6k4s85lp601x22"))))
    (properties `((upstream-name . "hdi")))
    (build-system r-build-system)
    (propagated-inputs (list r-scalreg r-mass r-linprog r-glmnet))
    (home-page "https://cran.r-project.org/package=hdi")
    (synopsis "High-Dimensional Inference")
    (description
     "Implementation of multiple approaches to perform inference in high-dimensional
models.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hdglm
  (package
    (name "r-hdglm")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDGLM" version))
       (sha256
        (base32 "0a5lnh3780lsczj8339sp97c5y64a2gsdf77i56fvpxpphq0dnf8"))))
    (properties `((upstream-name . "HDGLM")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=HDGLM")
    (synopsis "Tests for High Dimensional Generalized Linear Models")
    (description
     "Test the significance of coefficients in high dimensional generalized linear
models.")
    (license license:gpl2)))

(define-public r-hdfqlr
  (package
    (name "r-hdfqlr")
    (version "0.6-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdfqlr" version))
       (sha256
        (base32 "07lfr0vblahh3xhckwmzbmlja0janb73qkl4663mqgp6xk21jmi1"))))
    (properties `((upstream-name . "hdfqlr")))
    (build-system r-build-system)
    (inputs (list))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdfqlr")
    (synopsis "Interface to 'HDFql' API")
    (description
     "This package provides an interface to HDFql <https://www.hdfql.com/> and helper
functions for reading data from and writing data to HDF5 files.  HDFql provides
a high-level language for managing HDF5 data that is platform independent.  For
more information, see the reference manual
<https://www.hdfql.com/resources/HD@code{FqlReferenceManual.pdf>}.")
    (license license:gpl3+)))

(define-public r-hdflex
  (package
    (name "r-hdflex")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdflex" version))
       (sha256
        (base32 "1f02gkgry8zilrk3sl4dl2jkbnvqn9700lv8k5zlh4cangq5jp9n"))))
    (properties `((upstream-name . "hdflex")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-roll
                             r-rcpparmadillo
                             r-rcpp
                             r-dplyr
                             r-checkmate))
    (home-page "https://cran.r-project.org/package=hdflex")
    (synopsis "High-Dimensional Aggregate Density Forecasts")
    (description
     "This package provides a forecasting method that maps vast numbers of
(scalar-valued) signals of any type into an aggregate density forecast in a
time-varying and computationally fast manner.  The method proceeds in two steps:
First, it transforms a predictive signal into a density forecast.  Second, it
combines the generated candidate density forecasts into an ultimate density
forecast.  The methods are explained in detail in Adaemmer et al. (2023)
<doi:10.2139/ssrn.4342487>.")
    (license license:gpl2+)))

(define-public r-hdf5r-extra
  (package
    (name "r-hdf5r-extra")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdf5r.Extra" version))
       (sha256
        (base32 "0k8rvwxr30pbx0svikfar40465ff2daipsf91yp2px7hrgb4y129"))))
    (properties `((upstream-name . "hdf5r.Extra")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-matrixextra
                             r-matrix
                             r-hdf5r
                             r-easy-utils
                             r-dplyr
                             r-checkmate))
    (home-page "https://github.com/ycli1995/hdf5r.Extra")
    (synopsis "Extensions for 'HDF5' R Interfaces")
    (description
     "Some methods to manipulate HDF5 files, extending the hdf5r package.  Reading and
writing R objects to HDF5 formats follow the specification of @code{AnnData}
<https://anndata.readthedocs.io/en/latest/fileformat-prose.html>.")
    (license license:expat)))

(define-public r-hddplot
  (package
    (name "r-hddplot")
    (version "0.59-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hddplot" version))
       (sha256
        (base32 "1q7mz7yxb4qvprj431kxv46cf9myckkycfbi6nzbkqw8mpwg02qy"))))
    (properties `((upstream-name . "hddplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-multtest r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhmaindonald/hddplot")
    (synopsis
     "Use Known Groups in High-Dimensional Data to Derive Scores for Plots")
    (description
     "Cross-validated linear discriminant calculations determine the optimum number of
features.  Test and training scores from successive cross-validation steps
determine, via a principal components calculation, a low-dimensional global
space onto which test scores are projected, in order to plot them.  Further
functions are included that are intended for didactic use.  The package
implements, and extends, methods described in J.H. Maindonald and C.J. Burden
(2005) <https://journal.austms.org.au/V46/CTAC2004/Main/home.html>.")
    (license license:gpl2+)))

(define-public r-hddesign
  (package
    (name "r-hddesign")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDDesign" version))
       (sha256
        (base32 "1jim4h9bwn8r637va7m81kwwsfwyzs9pzn5a9i7c8xz8b1x191bj"))))
    (properties `((upstream-name . "HDDesign")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HDDesign")
    (synopsis
     "Sample Size Calculation for High Dimensional Classification Study")
    (description
     "Determine the sample size requirement to achieve the target probability of
correct classification (PCC) for studies employing high-dimensional features.
The package implements functions to 1) determine the asymptotic feasibility of
the classification problem; 2) compute the upper bounds of the PCC for any
linear classifier; 3) estimate the PCC of three design methods given design
assumptions; 4) determine the sample size requirement to achieve the target PCC
for three design methods.")
    (license license:gpl2)))

(define-public r-hdd
  (package
    (name "r-hdd")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdd" version))
       (sha256
        (base32 "1xl5p56qrnvli2ga1p8xyvgsp17jyjm0xng5prigyngnpj327qpk"))))
    (properties `((upstream-name . "hdd")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-fst r-dreamerr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdd")
    (synopsis "Easy Manipulation of Out of Memory Data Sets")
    (description
     "Hard drive data: Class of data allowing the easy importation/manipulation of out
of memory data sets.  The data sets are located on disk but look like in-memory,
the syntax for manipulation is similar to data.table'.  Operations are performed
\"chunk-wise\" behind the scene.")
    (license license:gpl3)))

(define-public r-hdcurves
  (package
    (name "r-hdcurves")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDCurves" version))
       (sha256
        (base32 "1656ia0qn4yrbkcrpjiyqq72fbvb088d07ma7kchvg875nzwj42v"))))
    (properties `((upstream-name . "HDCurves")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HDCurves")
    (synopsis "Hierarchical Derivative Curve Estimation")
    (description
     "This package provides a procedure that fits derivative curves based on a
sequence of quotient differences.  In a hierarchical setting the package
produces estimates of subject-specific and group-specific derivative curves.  In
a non-hierarchical setting the package produces a single derivative curve.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hdcuremodels
  (package
    (name "r-hdcuremodels")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdcuremodels" version))
       (sha256
        (base32 "09ih9jlz7l4vcgqhpy9h5c8j19c5fdfn4hhka85as762lxxbkwrl"))))
    (properties `((upstream-name . "hdcuremodels")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-plyr
                             r-mvnfast
                             r-knockoff
                             r-glmnet
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-flexsurvcure
                             r-flexsurv
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdcuremodels")
    (synopsis "Penalized Mixture Cure Models for High-Dimensional Data")
    (description
     "This package provides functions for fitting various penalized parametric and
semi-parametric mixture cure models with different penalty functions, testing
for a significant cure fraction, and testing for sufficient follow-up as
described in Fu et al (2022)<doi:10.1002/sim.9513> and Archer et al
(2024)<doi:10.1186/s13045-024-01553-6>.  False discovery rate controlled
variable selection is provided using model-X knock-offs.")
    (license license:expat)))

(define-public r-hdcpdetect
  (package
    (name "r-hdcpdetect")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDcpDetect" version))
       (sha256
        (base32 "0ai35d9df5pmva52sb1rr20f11h0mbal6d179g865b7w6n90kfr1"))))
    (properties `((upstream-name . "HDcpDetect")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=HDcpDetect")
    (synopsis "Detect Change Points in Means of High Dimensional Data")
    (description
     "Objective: Implement new methods for detecting change points in high-dimensional
time series data.  These new methods can be applied to non-Gaussian data,
account for spatial and temporal dependence, and detect a wide variety of
change-point configurations, including changes near the boundary and changes in
close proximity.  Additionally, this package helps address the âsmall n, large
pâ problem, which occurs in many research contexts.  This problem arises when
a dataset contains changes that are visually evident but do not rise to the
level of statistical significance due to the small number of observations and
large number of parameters.  The problem is overcome by treating the dimensions
as a whole and scaling the test statistics only by its standard deviation,
rather than scaling each dimension individually.  Due to the computational
complexity of the functions, the package runs best on datasets with a relatively
large number of attributes but no more than a few hundred observations.")
    (license license:gpl3)))

(define-public r-hdclust
  (package
    (name "r-hdclust")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDclust" version))
       (sha256
        (base32 "18l4qp261gj3kscfxs3s03kmb9y5ml31vnpgpm1iy125bks4mr2y"))))
    (properties `((upstream-name . "HDclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtsne r-rcppprogress r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HDclust")
    (synopsis
     "Clustering High Dimensional Data with Hidden Markov Model on Variable Blocks")
    (description
     "Clustering of high dimensional data with Hidden Markov Model on Variable Blocks
(HMM-VB) fitted via Baum-Welch algorithm.  Clustering is performed by the Modal
Baum-Welch algorithm (MBW), which finds modes of the density function.  Lin Lin
and Jia Li (2017) <http://jmlr.org/papers/v18/16-342.html>.")
    (license license:gpl2+)))

(define-public r-hdclassif
  (package
    (name "r-hdclassif")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDclassif" version))
       (sha256
        (base32 "0npdnp86m71bsp4096j3yfcvr702ghhvdvxpd2m7lbnc8g3v0sdp"))))
    (properties `((upstream-name . "HDclassif")))
    (build-system r-build-system)
    (propagated-inputs (list r-rarpack r-mass))
    (home-page "https://cran.r-project.org/package=HDclassif")
    (synopsis "High Dimensional Supervised Classification and Clustering")
    (description
     "Discriminant analysis and data clustering methods for high dimensional data,
based on the assumption that high-dimensional data live in different subspaces
with low dimensionality proposing a new parametrization of the Gaussian mixture
model which combines the ideas of dimension reduction and constraints on the
model.")
    (license license:gpl2)))

(define-public r-hdci
  (package
    (name "r-hdci")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDCI" version))
       (sha256
        (base32 "0wxbv54kbygymhh4r7052vnbj603c1kya01ykvmqzzkjyyfzidkz"))))
    (properties `((upstream-name . "HDCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam
                             r-mvtnorm
                             r-matrix
                             r-lattice
                             r-iterators
                             r-glmnet
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=HDCI")
    (synopsis
     "High Dimensional Confidence Interval Based on Lasso and Bootstrap")
    (description
     "Fits regression models on high dimensional data to estimate coefficients and use
bootstrap method to obtain confidence intervals.  Choices for regression models
are Lasso, Lasso+OLS, Lasso partial ridge, Lasso+OLS partial ridge.")
    (license license:gpl2)))

(define-public r-hdcd
  (package
    (name "r-hdcd")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDCD" version))
       (sha256
        (base32 "01fxai59mi5hrjv0yx8f4cd6c5pin87n2sry2lk3w041c7df21gs"))))
    (properties `((upstream-name . "HDCD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-mclust))
    (home-page "https://cran.r-project.org/package=HDCD")
    (synopsis "High-Dimensional Changepoint Detection")
    (description
     "Efficient implementations of the following multiple changepoint detection
algorithms: Efficient Sparsity Adaptive Change-point estimator by Moen, Glad and
Tveten (2023) <doi:10.48550/@code{arXiv.2306.04702>} , Informative Sparse
Projection for Estimating Changepoints by Wang and Samworth (2017)
<doi:10.1111/rssb.12243>, and the method of Pilliat et al (2023)
<doi:10.1214/23-EJS2126>.")
    (license license:gpl3)))

(define-public r-hdcate
  (package
    (name "r-hdcate")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdcate" version))
       (sha256
        (base32 "1jv6y38lzvm75s44n1pjvkkf5xcvrvclil318gvx54b16hvgggcg"))))
    (properties `((upstream-name . "hdcate")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-locpol r-kernsmooth r-hdm r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdcate")
    (synopsis
     "Estimation of Conditional Average Treatment Effects with High-Dimensional Data")
    (description
     "This package provides a two-step double-robust method to estimate the
conditional average treatment effects (CATE) with potentially high-dimensional
covariate(s).  In the first stage, the nuisance functions necessary for
identifying CATE are estimated by machine learning methods, allowing the number
of covariates to be comparable to or larger than the sample size.  The second
stage consists of a low-dimensional local linear regression, reducing CATE to a
function of the covariate(s) of interest.  The CATE estimator implemented in
this package not only allows for high-dimensional data, but also has the
âdouble robustnessâ property: either the model for the propensity score or
the models for the conditional means of the potential outcomes are allowed to be
misspecified (but not both).  This package is based on the paper by Fan et al.,
\"Estimation of Conditional Average Treatment Effects With High-Dimensional Data\"
(2022), Journal of Business & Economic Statistics
<doi:10.1080/07350015.2020.1811102>.")
    (license license:gpl3+)))

(define-public r-hdbrr
  (package
    (name "r-hdbrr")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HDBRR" version))
       (sha256
        (base32 "03jl1m099z6gj2ipi7rnjnrd2rmk4zs54332rwlqyf40dv7ndbz1"))))
    (properties `((upstream-name . "HDBRR")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mass r-bigstatsr))
    (home-page "https://cran.r-project.org/package=HDBRR")
    (synopsis "High Dimensional Bayesian Ridge Regression without MCMC")
    (description
     "Ridge regression provide biased estimators of the regression parameters with
lower variance.  The HDBRR (\"High Dimensional Bayesian Ridge Regression\")
function fits Bayesian Ridge regression without MCMC, this one uses the SVD or
QR decomposition for the posterior computation.")
    (license license:gpl2+)))

(define-public r-hdbma
  (package
    (name "r-hdbma")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdbma" version))
       (sha256
        (base32 "0dj9hh6x5096znl7naga0qrx2fwr4crgjk7fyk5vxn6v1gl3llrh"))))
    (properties `((upstream-name . "hdbma")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-r2jags r-mass r-lattice r-gplots))
    (home-page "https://www.r-project.org")
    (synopsis "Bayesian Mediation Analysis with High-Dimensional Data")
    (description
     "Mediation analysis is used to identify and quantify intermediate effects from
factors that intervene the observed relationship between an exposure/predicting
variable and an outcome.  We use a Bayesian adaptive lasso method to take care
of the hierarchical structures and high dimensional exposures or mediators.")
    (license license:gpl2+)))

(define-public r-hdbm
  (package
    (name "r-hdbm")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdbm" version))
       (sha256
        (base32 "0lvaica195chl6bb10wvvr7fbmh8b954fpxcm9r0gyp0d0i2a2w4"))))
    (properties `((upstream-name . "hdbm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hdbm")
    (synopsis "High Dimensional Bayesian Mediation Analysis")
    (description
     "Perform mediation analysis in the presence of high-dimensional mediators based
on the potential outcome framework.  High dimensional Bayesian mediation (HDBM),
developed by Song et al (2018) <doi:10.1101/467399>, relies on two Bayesian
sparse linear mixed models to simultaneously analyze a relatively large number
of mediators for a continuous exposure and outcome assuming a small number of
mediators are truly active.  This sparsity assumption also allows the extension
of univariate mediator analysis by casting the identification of active
mediators as a variable selection problem and applying Bayesian methods with
continuous shrinkage priors on the effects.")
    (license license:gpl3)))

(define-public r-hdbinseg
  (package
    (name "r-hdbinseg")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdbinseg" version))
       (sha256
        (base32 "0q5lfczymrd4ln04lbdysncx6ylcsgrk69mhvm7jjk7pybrpm9wq"))))
    (properties `((upstream-name . "hdbinseg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-iterators r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=hdbinseg")
    (synopsis
     "Change-Point Analysis of High-Dimensional Time Series via Binary Segmentation")
    (description
     "Binary segmentation methods for detecting and estimating multiple change-points
in the mean or second-order structure of high-dimensional time series as
described in Cho and Fryzlewicz (2014) <doi:10.1111/rssb.12079> and Cho (2016)
<doi:10.1214/16-EJS1155>.")
    (license license:gpl3+)))

(define-public r-hdbayes
  (package
    (name "r-hdbayes")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hdbayes" version))
       (sha256
        (base32 "19c8nxa30sngrz8z01xc2qxkyi4vjjnvqacphm318ianpwi7pi69"))))
    (properties `((upstream-name . "hdbayes")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-posterior
                             r-mclust
                             r-instantiate
                             r-fs
                             r-formula-tools
                             r-enrichwith
                             r-callr
                             r-bridgesampling))
    (home-page "https://github.com/ethan-alt/hdbayes")
    (synopsis
     "Bayesian Analysis of Generalized Linear Models with Historical Data")
    (description
     "User-friendly functions for leveraging (multiple) historical data set(s) for
generalized linear models.  Contains functions for sampling from the posterior
distribution of a generalized linear model using the prior induced by the
Bayesian hierarchical model, power prior by Ibrahim and Chen (2000)
<doi:10.1214/ss/1009212673>, normalized power prior by Duan et al. (2006)
<doi:10.1002/env.752>, normalized asymptotic power prior by Ibrahim et al.
(2015) <doi:10.1002/sim.6728>, commensurate prior by Hobbs et al. (2011)
<doi:10.1111/j.1541-0420.2011.01564.x>, robust meta-analytic-predictive prior by
Schmidli et al. (2014) <doi:10.1111/biom.12242>, and the latent exchangeability
prior (LEAP) by Alt et al. (2023) <@code{arXiv:2303.05223>}.  The package
compiles all the @code{CmdStan} models once during installation using the
instantiate package.")
    (license license:expat)))

(define-public r-hda
  (package
    (name "r-hda")
    (version "0.2-14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hda" version))
       (sha256
        (base32 "0azfxyws7yslcqplfddmdp5ngk91j5h7llvrg77yh5z0kkd09j1b"))))
    (properties `((upstream-name . "hda")))
    (build-system r-build-system)
    (propagated-inputs (list r-e1071))
    (home-page "https://cran.r-project.org/package=hda")
    (synopsis "Heteroscedastic Discriminant Analysis")
    (description
     "This package provides functions to perform dimensionality reduction for
classification if the covariance matrices of the classes are unequal.")
    (license license:gpl2+)))

(define-public r-hctrial
  (package
    (name "r-hctrial")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hctrial" version))
       (sha256
        (base32 "19li8i8hx0r3b63q80cnj6pr72rdbmykxq0kcfbn4azq3sdd046y"))))
    (properties `((upstream-name . "hctrial")))
    (build-system r-build-system)
    (propagated-inputs (list r-genbinomapps r-clinfun))
    (home-page "https://cran.r-project.org/package=hctrial")
    (synopsis
     "Using Historical Controls for Designing Phase II Clinical Trials")
    (description
     "This package provides functions for designing phase II clinical trials adjusting
for the heterogeneity of the population using known subgroups or historical
controls.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-hctr
  (package
    (name "r-hctr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCTR" version))
       (sha256
        (base32 "1hg8mpallwxpmamk6q8x87w5hlqqwvbahfw5zmr9pisiagbwcsay"))))
    (properties `((upstream-name . "HCTR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-ncvreg r-mass r-harmonicmeanp r-glmnet))
    (home-page "https://cran.r-project.org/package=HCTR")
    (synopsis "Higher Criticism Tuned Regression")
    (description
     "This package provides a novel searching scheme for tuning parameter in
high-dimensional penalized regression.  We propose a new estimate of the
regularization parameter based on an estimated lower bound of the proportion of
false null hypotheses (Meinshausen and Rice (2006)
<doi:10.1214/009053605000000741>).  The bound is estimated by applying the
empirical null distribution of the higher criticism statistic, a second-level
significance testing, which is constructed by dependent p-values from a
multi-split regression and aggregation method (Jeng, Zhang and Tzeng (2019)
<doi:10.1080/01621459.2018.1518236>).  An estimate of tuning parameter in
penalized regression is decided corresponding to the lower bound of the
proportion of false null hypotheses.  Different penalized regression methods are
provided in the multi-split algorithm.")
    (license license:gpl2)))

(define-public r-hctdesign
  (package
    (name "r-hctdesign")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCTDesign" version))
       (sha256
        (base32 "1nncyyw1dlbdl9f1pncwa9xdqrd7w2aw4ghnf01vwyq0m7pj90l1"))))
    (properties `((upstream-name . "HCTDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rdpack
                             r-mvtnorm
                             r-flexsurv
                             r-diversitree
                             r-crayon))
    (home-page "https://cran.r-project.org/package=HCTDesign")
    (synopsis
     "Group Sequential Design for Historical Control Trial with Survival Outcome")
    (description
     "It provides functions to design historical controlled trials with survival
outcome by group sequential method.  The options for interim look boundaries are
efficacy only, efficacy & futility or futility only.  It also provides the
function to monitor the trial for any unplanned look.  The package is based on
Jianrong Wu, Xiaoping Xiong (2016) <doi:10.1002/pst.1756> and Jianrong Wu, Yimei
Li (2020) <doi:10.1080/10543406.2019.1684305>.")
    (license license:gpl3)))

(define-public r-hct
  (package
    (name "r-hct")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCT" version))
       (sha256
        (base32 "18k6p9y3vl39mxbvdjanyj3w74jqy2rym6rdbfrx5crvqm9k8hcp"))))
    (properties `((upstream-name . "HCT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan))
    (home-page "https://cran.r-project.org/package=HCT")
    (synopsis
     "Calculates Significance Criteria and Power for a Single Arm Trial")
    (description
     "Given a database of previous treatment/placebo estimates, their standard errors
and sample sizes, the program calculates a significance criteria and power
estimate that takes into account the among trial variation.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-hcr
  (package
    (name "r-hcr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCR" version))
       (sha256
        (base32 "14s46dyw3ifp3pwwlcwbbl47i6hy2whjj1n65i28am5a33nycgha"))))
    (properties `((upstream-name . "HCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://cran.r-project.org/package=HCR")
    (synopsis
     "Causal Discovery from Discrete Data using Hidden Compact Representation")
    (description
     "This code provides a method to fit the hidden compact representation model as
well as to identify the causal direction on discrete data.  We implement an
effective solution to recover the above hidden compact representation under the
likelihood framework.  Please see the Causal Discovery from Discrete Data using
Hidden Compact Representation from NIPS 2018 by Ruichu Cai, Jie Qiao, Kun Zhang,
Zhenjie Zhang and Zhifeng Hao (2018)
<https://nips.cc/Conferences/2018/Schedule?@code{showEvent=11274>} for a
description of some of our methods.")
    (license license:gpl2+)))

(define-public r-hcmodelsets
  (package
    (name "r-hcmodelsets")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCmodelSets" version))
       (sha256
        (base32 "0jchr8ncjpl2ljwf09cmpv679vdla11r1vkylhqaacdp1zdb93w6"))))
    (properties `((upstream-name . "HCmodelSets")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mvtnorm r-ggplot2))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=HCmodelSets")
    (synopsis
     "Regression with a Large Number of Potential Explanatory Variables")
    (description
     "Software for performing the reduction, exploratory and model selection phases of
the procedure proposed by Cox, D.R. and Battey, H.S. (2017)
<doi:10.1073/pnas.1703764114> for sparse regression when the number of potential
explanatory variables far exceeds the sample size.  The software supports linear
regression, likelihood-based fitting of generalized linear regression models and
the proportional hazards model fitted by partial likelihood.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-hclusteasy
  (package
    (name "r-hclusteasy")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hclusteasy" version))
       (sha256
        (base32 "0c3w2wmk5a85kxkkg782w2ggy43i2ayrrjfwl91bkxba5n2pk3sa"))))
    (properties `((upstream-name . "hclusteasy")))
    (build-system r-build-system)
    (propagated-inputs (list r-readxl r-factoextra r-clustersim))
    (home-page "https://github.com/tsukubai/hclusteasy")
    (synopsis "Determining Hierarchical Clustering Easily")
    (description
     "Facilitates hierarchical clustering analysis with functions to read data in
txt', xlsx', and xls formats, apply normalization techniques to the dataset,
perform hierarchical clustering and construct scatter plot from principal
component analysis to evaluate the groups obtained.")
    (license license:gpl2)))

(define-public r-hclust1d
  (package
    (name "r-hclust1d")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hclust1d" version))
       (sha256
        (base32 "1cari4ms1j5x2i5m9yd50j7alf18k7z053yhqbck0hs2mck9jx86"))))
    (properties `((upstream-name . "hclust1d")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SzymonNowakowski/hclust1d")
    (synopsis "Hierarchical Clustering of Univariate (1d) Data")
    (description
     "Univariate agglomerative hierarchical clustering with a comprehensive list of
choices of a linkage function in O(n*log n) time.  The better algorithmic time
complexity is paired with an efficient C++ implementation.")
    (license license:gpl3+)))

(define-public r-hcidata
  (package
    (name "r-hcidata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hcidata" version))
       (sha256
        (base32 "16qzll0rhfc6szi9y5hxycq5462jm78kla70fnv1sqw7n34pvpg5"))))
    (properties `((upstream-name . "hcidata")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (home-page "https://github.com/henningpohl/hcidata")
    (synopsis "HCI Datasets")
    (description
     "This package provides a collection of datasets of human-computer interaction
(HCI) experiments.  Each dataset is from an HCI paper, with all fields described
and the original publication linked.  All paper authors of included data have
consented to the inclusion of their data in this package.  The datasets include
data from a range of HCI studies, such as pointing tasks, user experience
ratings, and steering tasks.  Dataset sources: @code{BergstrÃ¶m} et al. (2022)
<doi:10.1145/3490493>; Dalsgaard et al. (2021) <doi:10.1145/3489849.3489853>;
Larsen et al. (2019) <doi:10.1145/3338286.3340115>; Lilija et al. (2019)
<doi:10.1145/3290605.3300676>; Pohl and Murray-Smith (2013)
<doi:10.1145/2470654.2481307>; Pohl and Mottelson (2022)
<doi:10.3389/frvir.2022.719506>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-hchinamap
  (package
    (name "r-hchinamap")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hchinamap" version))
       (sha256
        (base32 "1pia593g50zf3286f9g51slkvrpj1iy7lws9d7a3nqgb2v3yji1y"))))
    (properties `((upstream-name . "hchinamap")))
    (build-system r-build-system)
    (arguments
     (list
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
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/czxa/hchinamap")
    (synopsis "Mapping China and Its Provinces")
    (description
     "By binding R functions and the Highmaps
<https://www.highcharts.com.cn/products/highmaps> chart library, hchinamap
package provides a simple way to map China and its provinces.  The map of China
drawn by this package contains complete Chinese territory, especially the
Nine-dotted line, South Tibet, Hong Kong, Macao and Taiwan.")
    (license license:expat)))

(define-public r-hce
  (package
    (name "r-hce")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hce" version))
       (sha256
        (base32 "0a9fdb3mx1rgnmdpjxjwgj0xlcd2cw43ydrj5mmld186w0c14kdz"))))
    (properties `((upstream-name . "hce")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hce")
    (synopsis "Design and Analysis of Hierarchical Composite Endpoints")
    (description
     "Simulate and analyze hierarchical composite endpoints.  Win odds is the main
analysis method, but other win statistics (win ratio, net benefit) are
implemented as well in case of no censoring.  See Gasparyan SB et al (2023)
\"Hierarchical Composite Endpoints in COVID-19: The DARE-19 Trial.\" Case Studies
in Innovative Clinical Trials, 95-148.  Chapman; Hall/CRC.
<doi:10.1201/9781003288640-7>.")
    (license license:expat)))

(define-public r-hcd
  (package
    (name "r-hcd")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HCD" version))
       (sha256
        (base32 "0f0kn2n1g25akwdbysy5xpxfcnpfdxgjzyd7ji6f58cs40q6gl28"))))
    (properties `((upstream-name . "HCD")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rspectra
                             r-randnet
                             r-matrix
                             r-irlba
                             r-dendextend
                             r-data-tree
                             r-data-table))
    (home-page "https://cran.r-project.org/package=HCD")
    (synopsis "Hierarchical Community Detection by Recursive Partitioning")
    (description
     "Hierarchical community detection on networks by a recursive spectral
partitioning strategy, which is shown to be effective and efficient in Li, Lei,
Bhattacharyya, Sarkar, Bickel, and Levina (2018) <@code{arXiv:1810.01509>}.  The
package also includes a data generating function for a binary tree stochastic
block model, a special case of stochastic block model that admits hierarchy
between communities.")
    (license license:gpl2+)))

(define-public r-hcci
  (package
    (name "r-hcci")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hcci" version))
       (sha256
        (base32 "1rkbds3inpkhpvqb7rhvvakf9n0xf1yr74c3ywm35lwv6lj8pi21"))))
    (properties `((upstream-name . "hcci")))
    (build-system r-build-system)
    (home-page "https://github.com/prdm0/hcci")
    (synopsis "Interval Estimation of Linear Models with Heteroskedasticity")
    (description
     "Calculates the interval estimates for the parameters of linear models with
heteroscedastic regression using bootstrap - (Wild Bootstrap) and double
bootstrap-t (Wild Bootstrap).  It is also possible to calculate confidence
intervals using the percentile bootstrap and percentile bootstrap double.  The
package can calculate consistent estimates of the covariance matrix of the
parameters of linear regression models with heteroscedasticity of unknown form.
The package also provides a function to consistently calculate the covariance
matrix of the parameters of linear models with heteroscedasticity of unknown
form.  The bootstrap methods exported by the package are based on the master's
thesis of the first author, available at
<https://raw.githubusercontent.com/prdm0/hcci/master/references/dissertacao_mestrado.pdf>.
 The hcci package in previous versions was cited in the book VINOD, Hrishikesh
D. Hands-on Intermediate Econometrics Using R: Templates for Learning
Quantitative Methods and R Software.  2022, p.  441, ISBN 978-981-125-617-2
(hardcover).  The simple bootstrap schemes are based on the works of
Cribari-Neto F and Lima M. G. (2009) <doi:10.1080/00949650801935327>, while the
double bootstrap schemes for the parameters that index the linear models with
heteroscedasticity of unknown form are based on the works of Beran (1987)
<doi:10.2307/2336685>.  The use of bootstrap for the calculation of interval
estimates in regression models with heteroscedasticity of unknown form from a
weighting of the residuals was proposed by Wu (1986)
<doi:10.1214/aos/1176350142>.  This bootstrap scheme is known as weighted or
wild bootstrap.")
    (license license:gpl3+)))

(define-public r-hcandersenr
  (package
    (name "r-hcandersenr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hcandersenr" version))
       (sha256
        (base32 "0r8z8kb9hwvgcsxbd7arbmqclhwlbcjpnf3p9mp5vgyxm84iz515"))))
    (properties `((upstream-name . "hcandersenr")))
    (build-system r-build-system)
    (home-page "https://github.com/EmilHvitfeldt/hcandersenr")
    (synopsis "H.C. Andersens Fairy Tales")
    (description
     "Texts for H.C. Andersens fairy tales, ready for text analysis.  Fairy tales in
German, Danish, English, Spanish and French.")
    (license license:expat)))

(define-public r-hbv-ianigla
  (package
    (name "r-hbv-ianigla")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HBV.IANIGLA" version))
       (sha256
        (base32 "1ngvw17k4i4cxdr59fsbm437fn1wqxjz7zn1l6aciygy3rlcncw9"))))
    (properties `((upstream-name . "HBV.IANIGLA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/ezetoum27/hbv.ianigla")
    (synopsis "Modular Hydrological Model")
    (description
     "The HBV hydrological model (@code{BergstrÃ¶m}, S. and @code{LindstrÃ¶m}, G.,
(2015) <doi:10.1002/hyp.10510>) has been split in modules to allow the user to
build his/her own model.  This version was developed by the author in
IANIGLA-CONICET (Instituto Argentino de Nivologia, Glaciologia y Ciencias
Ambientales - Consejo Nacional de Investigaciones Cientificas y Tecnicas) for
hydroclimatic studies in the Andes.  HBV.IANIGLA incorporates routines for clean
and debris covered glacier melt simulations.")
    (license license:gpl3+)))

(define-public r-hbstm
  (package
    (name "r-hbstm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HBSTM" version))
       (sha256
        (base32 "1rw0sav1xrw5sraah3yhw5ypyf99pi9h323nf02qidqfzr9xb214"))))
    (properties `((upstream-name . "HBSTM")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-maps r-fbasics))
    (home-page "https://cran.r-project.org/package=HBSTM")
    (synopsis
     "Hierarchical Bayesian Space-Time Models for Gaussian Space-Time Data")
    (description
     "Fits Hierarchical Bayesian space-Time models for Gaussian data.  Furthermore,
its functions have been implemented for analysing the fitting qualities of those
models.")
    (license license:gpl2+)))

(define-public r-hbsae
  (package
    (name "r-hbsae")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbsae" version))
       (sha256
        (base32 "0fg782gxivkkwhqvxf09j1q20f2dqm7bd1y9bp99fy7mg88zp0gn"))))
    (properties `((upstream-name . "hbsae")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=hbsae")
    (synopsis "Hierarchical Bayesian Small Area Estimation")
    (description
     "This package provides functions to compute small area estimates based on a basic
area or unit-level model.  The model is fit using restricted maximum likelihood,
or in a hierarchical Bayesian way.  In the latter case numerical integration is
used to average over the posterior density for the between-area variance.  The
output includes the model fit, small area estimates and corresponding mean
squared errors, as well as some model selection measures.  Additional functions
provide means to compute aggregate estimates and mean squared errors, to
minimally adjust the small area estimates to benchmarks at a higher aggregation
level, and to graphically compare different sets of small area estimates.")
    (license license:gpl3)))

(define-public r-hbmem
  (package
    (name "r-hbmem")
    (version "0.3-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbmem" version))
       (sha256
        (base32 "0qhxc784zhilxhijlsykl10cqlxk9ll8m2cz9s1cmz76hlvrn0y9"))))
    (properties `((upstream-name . "hbmem")))
    (build-system r-build-system)
    (home-page "https://pcn.psychology.msstate.edu/")
    (synopsis "Hierarchical Bayesian Analysis of Recognition Memory")
    (description
     "This package contains functions for fitting hierarchical versions of EVSD, UVSD,
DPSD, DPSD with d restricted to be positive, and our gamma signal detection
model to recognition memory confidence-ratings data.")
    (license license:lgpl2.0+)))

(define-public r-hbim
  (package
    (name "r-hbim")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbim" version))
       (sha256
        (base32 "1wgzxmbdzigh9q6q2s4vfh58p8whmyp0jckfga1li5cibqbvpaf0"))))
    (properties `((upstream-name . "hbim")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=hbim")
    (synopsis "Hill/Bliss Independence Model for Combination Vaccines")
    (description
     "Calculate expected relative risk and proportion protected assuming normally
distributed log10 transformed antibody dose for a several component vaccine.
Uses Hill models for each component which are combined under Bliss independence.
 See Saul and Fay, 2007 <DOI:10.1371/journal.pone.0000850>.")
    (license license:gpl3)))

(define-public r-hbbr
  (package
    (name "r-hbbr")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbbr" version))
       (sha256
        (base32 "09sph4vliyb63pd0abq02ix5wz373r70kgldw44fm279zq4z772h"))))
    (properties `((upstream-name . "hbbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2jags))
    (home-page "https://cran.r-project.org/package=hbbr")
    (synopsis
     "Hierarchical Bayesian Benefit-Risk Assessment Using Discrete Choice Experiment")
    (description
     "This package implements assessment of benefit-risk balance using Bayesian
Discrete Choice Experiment.  For more details see the article by Mukhopadhyay et
al. (2019) <DOI:10.1080/19466315.2018.1527248>.")
    (license license:gpl2)))

(define-public r-hbayesdm
  (package
    (name "r-hbayesdm")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hBayesDM" version))
       (sha256
        (base32 "1vy1kaffviidhil39n7k2fr5rjgzkhkaj1r2nhmp908snq8nhf2m"))))
    (properties `((upstream-name . "hBayesDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstan
                             r-rcppeigen
                             r-rcpp
                             r-loo
                             r-ggplot2
                             r-data-table
                             r-bh))
    (home-page "https://github.com/CCS-Lab/hBayesDM")
    (synopsis "Hierarchical Bayesian Modeling of Decision-Making Tasks")
    (description
     "Fit an array of decision-making tasks with computational models in a
hierarchical Bayesian framework.  Can perform hierarchical Bayesian analysis of
various computational models with a single line of coding (Ahn et al., 2017)
<doi:10.1162/CPSY_a_00002>.")
    (license license:gpl3)))

(define-public r-hbamr
  (package
    (name "r-hbamr")
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbamr" version))
       (sha256
        (base32 "1cch2l4dazny7p5hn16v0fp5mir10fy4qa8ibpgx3j2vi8w05c1x"))))
    (properties `((upstream-name . "hbamr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-rcolorbrewer
                             r-progressr
                             r-plyr
                             r-matrixstats
                             r-loo
                             r-ggplot2
                             r-future-apply
                             r-future
                             r-dplyr
                             r-colorspace
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://jbolstad.github.io/hbamr/")
    (synopsis "Hierarchical Bayesian Aldrich-McKelvey Scaling via 'Stan'")
    (description
     "Perform hierarchical Bayesian Aldrich-@code{McKelvey} scaling using Hamiltonian
Monte Carlo via Stan'.  Aldrich-@code{McKelvey} ('AM') scaling is a method for
estimating the ideological positions of survey respondents and political actors
on a common scale using positional survey data.  The hierarchical versions of
the Bayesian AM model included in this package outperform other versions both in
terms of yielding meaningful posterior distributions for respondent positions
and in terms of recovering true respondent positions in simulations.  The
package contains functions for preparing data, fitting models, extracting
estimates, plotting key results, and comparing models using cross-validation.
The original version of the default model is described in BÃ¸lstad (2024)
<doi:10.1017/pan.2023.18>.")
    (license license:gpl3+)))

(define-public r-hbal
  (package
    (name "r-hbal")
    (version "1.2.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hbal" version))
       (sha256
        (base32 "1r3wlgvjy33cr0vi0lpckim4cybz67lh44fi6d36hms8pirnl4rl"))))
    (properties `((upstream-name . "hbal")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcppeigen
                             r-rcpp
                             r-nloptr
                             r-gtable
                             r-gridextra
                             r-glmnet
                             r-ggplot2
                             r-generics
                             r-estimatr))
    (home-page "https://yiqingxu.org/packages/hbal/")
    (synopsis "Hierarchically Regularized Entropy Balancing")
    (description
     "This package implements hierarchically regularized entropy balancing proposed by
Xu and Yang (2022) <doi:10.1017/pan.2022.12>.  The method adjusts the covariate
distributions of the control group to match those of the treatment group.  hbal
automatically expands the covariate space to include higher order terms and uses
cross-validation to select variable penalties for the balancing conditions.")
    (license license:expat)))

(define-public r-hazer
  (package
    (name "r-hazer")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hazer" version))
       (sha256
        (base32 "1d1qj6mamgxlvxq2hjik69zfzackjz5819iss98jf5gdbdngw41x"))))
    (properties `((upstream-name . "hazer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bnasr/hazer/")
    (synopsis "Identifying Foggy and Cloudy Images by Quantifying Haziness")
    (description
     "This package provides a set of functions to estimate haziness of an image based
on RGB bands.  It returns a haze factor, varying from 0 to 1, a metric for
fogginess and cloudiness.  The package also presents additional functions to
estimate brightness, darkness and contrast rasters of the RGB image.  This
package can be used for several applications such as inference of weather
quality data and performing environmental studies from interpreting digital
images.")
    (license (list license:agpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-hazarddiff
  (package
    (name "r-hazarddiff")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HazardDiff" version))
       (sha256
        (base32 "048lvhb4545a487kyknf5b5v8q3a9nsipbh0ii2k3pcc5vfql1h4"))))
    (properties `((upstream-name . "HazardDiff")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rootsolve r-rdpack r-ahaz))
    (home-page "https://cran.r-project.org/package=HazardDiff")
    (synopsis "Conditional Treatment Effect for Competing Risks")
    (description
     "The conditional treatment effect for competing risks data in observational
studies is estimated.  While it is described as a constant difference between
the hazard functions given the covariates, we do not assume specific functional
forms for the covariates.  Rava, D. and Xu, R. (2021) <@code{arXiv:2112.09535>}.")
    (license license:gpl2)))

(define-public r-hawkesbow
  (package
    (name "r-hawkesbow")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hawkesbow" version))
       (sha256
        (base32 "1jbwvzw4j8l7ywrbm4bhxvwp1b3j4ahi6fchmmvfjnx0da1d8163"))))
    (properties `((upstream-name . "hawkesbow")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-nloptr r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=hawkesbow")
    (synopsis "Estimation of Hawkes Processes from Binned Observations")
    (description
     "This package implements an estimation method for Hawkes processes when count
data are only observed in discrete time, using a spectral approach derived from
the Bartlett spectrum, see Cheysson and Lang (2020) <@code{arXiv:2003.04314>}.
Some general use functions for Hawkes processes are also included: simulation of
(in)homogeneous Hawkes process, maximum likelihood estimation, residual
analysis, etc.")
    (license license:expat)))

(define-public r-hawkes
  (package
    (name "r-hawkes")
    (version "0.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hawkes" version))
       (sha256
        (base32 "1ghwq3icxwmrai3xn9r8cnvlh3z3j18lznhw1bm31h9mkkp2dk0a"))))
    (properties `((upstream-name . "hawkes")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=hawkes")
    (synopsis "Hawkes process simulation and calibration toolkit")
    (description
     "The package allows to simulate Hawkes process both in univariate and
multivariate settings.  It gives functions to compute different moments of the
number of jumps of the process on a given interval, such as mean, variance or
autocorrelation of process jumps on time intervals separated by a lag.")
    (license license:gpl2+)))

(define-public r-hassediagram
  (package
    (name "r-hassediagram")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hasseDiagram" version))
       (sha256
        (base32 "1ni4wzj8g6qmpgz1xj62vawkcpm3jr4jqqr1xaxlh5nzbj9fn57h"))))
    (properties `((upstream-name . "hasseDiagram")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgraphviz r-graph))
    (home-page "https://github.com/kciomek/hasseDiagram")
    (synopsis "Drawing Hasse Diagram")
    (description
     "Drawing Hasse diagram - visualization of transitive reduction of a finite
partially ordered set.")
    (license license:expat)))

(define-public r-hassani-silva
  (package
    (name "r-hassani-silva")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Hassani.Silva" version))
       (sha256
        (base32 "0rhi3mrlyxksgd34xxha73m0x6aqdf2xk8bshdnmm463rkzyy31l"))))
    (properties `((upstream-name . "Hassani.Silva")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Hassani.Silva")
    (synopsis
     "Test for Comparing the Predictive Accuracy of Two Sets of Forecasts")
    (description
     "This package provides a non-parametric test founded upon the principles of the
Kolmogorov-Smirnov (KS) test, referred to as the KS Predictive Accuracy (KSPA)
test.  The KSPA test is able to serve two distinct purposes.  Initially, the
test seeks to determine whether there exists a statistically significant
difference between the distribution of forecast errors, and secondly it exploits
the principles of stochastic dominance to determine whether the forecasts with
the lower error also reports a stochastically smaller error than forecasts from
a competing model, and thereby enables distinguishing between the predictive
accuracy of forecasts.  KSPA test has been described in : Hassani and Silva
(2015) <doi:10.3390/econometrics3030590>.")
    (license license:gpl3)))

(define-public r-hassani-sacf
  (package
    (name "r-hassani-sacf")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Hassani.SACF" version))
       (sha256
        (base32 "16sk1vn47gd5qaq31p8hnqa5p29nd230v4vbg2lsn2bhy9m32km3"))))
    (properties `((upstream-name . "Hassani.SACF")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Hassani.SACF")
    (synopsis "Computing Lower Bound of Ljung-Box Test")
    (description
     "The Ljung-Box test is one of the most important tests for time series
diagnostics and model selection.  The Hassani SACF (Sum of the Sample
Autocorrelation Function) Theorem , however, indicates that the sum of sample
autocorrelation function is always fix for any stationary time series with
arbitrary length.  This package confirms for sensitivity of the Ljung-Box test
to the number of lags involved in the test and therefore it should be used with
extra caution.  The Hassani SACF Theorem has been described in : Hassani,
Yeganegi and M. R. (2019) <doi:10.1016/j.physa.2018.12.028>.")
    (license license:gpl3)))

(define-public r-hashr
  (package
    (name "r-hashr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hashr" version))
       (sha256
        (base32 "10rvq4rvg7fds2ylh21lri4wlvj870bncqq7kma7rf89rg5x1jz6"))))
    (properties `((upstream-name . "hashr")))
    (build-system r-build-system)
    (home-page "https://github.com/markvanderloo/hashr")
    (synopsis "Hash R Objects to Integers Fast")
    (description
     "Apply an adaptation of the @code{SuperFastHash} algorithm to any R object.  Hash
whole R objects or, for vectors or lists, hash R objects to obtain a set of hash
values that is stored in a structure equivalent to the input.  See
<http://www.azillionmonkeys.com/qed/hash.html> for a description of the hash
algorithm.")
    (license license:gpl3)))

(define-public r-hashids
  (package
    (name "r-hashids")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hashids" version))
       (sha256
        (base32 "0233qly4rb1g4znxm9h9h8gskzrjyav6nd26xkdl7990m5hcbcwh"))))
    (properties `((upstream-name . "hashids")))
    (build-system r-build-system)
    (home-page "https://github.com/ALShum/hashids-r/")
    (synopsis "Generate Short Unique YouTube-Like IDs (Hashes) from Integers")
    (description
     "An R port of the hashids library.  hashids generates @code{YouTube-like} hashes
from integers or vector of integers.  Hashes generated from integers are
relatively short, unique and non-seqential.  hashids can be used to generate
unique ids for URLs and hide database row numbers from the user.  By default
hashids will avoid generating common English cursewords by preventing certain
letters being next to each other.  hashids are not one-way: it is easy to encode
an integer to a hashid and decode a hashid back into an integer.")
    (license license:expat)))

(define-public r-harvest-tree
  (package
    (name "r-harvest-tree")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Harvest.Tree" version))
       (sha256
        (base32 "021zmppy7p2iakaxirfjdb5jzakg1ijma9d25ly2ni0nx0p1mh6z"))))
    (properties `((upstream-name . "Harvest.Tree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart))
    (home-page "https://cran.r-project.org/package=Harvest.Tree")
    (synopsis "Harvest the Classification Tree")
    (description
     "Aimed at applying the Harvest classification tree algorithm, modified algorithm
of classic classification tree.The harvested tree has advantage of deleting
redundant rules in trees, leading to a simplify and more efficient tree model.It
was firstly used in drug discovery field, but it also performs well in other
kinds of data, especially when the region of a class is disconnected.  This
package also improves the basic harvest classification tree algorithm by
extending the field of data of algorithm to both continuous and categorical
variables.  To learn more about the harvest classification tree algorithm, you
can go to http://www.stat.ubc.ca/Research/@code{TechReports/techreports/220.pdf}
for more information.")
    (license license:gpl2)))

(define-public r-harrypotter
  (package
    (name "r-harrypotter")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harrypotter" version))
       (sha256
        (base32 "1j3sv0rpp4lcrf09j4a3an4lkwi2x1z18iv62fk6c2kpp9b14b8r"))))
    (properties `((upstream-name . "harrypotter")))
    (build-system r-build-system)
    (propagated-inputs (list r-gridextra r-ggplot2))
    (home-page "https://github.com/aljrico/harrypotter")
    (synopsis "Palettes Generated from All \"Harry Potter\" Movies")
    (description
     "Implementation of characteristic palettes inspired in the Wizarding World and
the Harry Potter movie franchise.")
    (license license:expat)))

(define-public r-harrietr
  (package
    (name "r-harrietr")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harrietr" version))
       (sha256
        (base32 "0n6vsqysj4ijh06z6nqmj8x1z4w9711dxhbfp8p8fwi0l75pj0cj"))))
    (properties `((upstream-name . "harrietr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-magrittr
                             r-lazyeval
                             r-ggtree
                             r-dplyr
                             r-ape))
    (home-page "https://github.com/andersgs/harrietr")
    (synopsis "Wrangle Phylogenetic Distance Matrices and Other Utilities")
    (description
     "Harriet was Charles Darwin's pet tortoise (possibly).  harrietr implements some
function to manipulate distance matrices and phylogenetic trees to make it
easier to plot with ggplot2 and to manipulate using tidyverse tools.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-harmonydata
  (package
    (name "r-harmonydata")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harmonydata" version))
       (sha256
        (base32 "1n90zm31himxwaaan92fbar0nqvxgn41i38vshv42wa77641lr1m"))))
    (properties `((upstream-name . "harmonydata")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-jsonlite r-httr r-base64enc))
    (home-page "<https://harmonydata.ac.uk>")
    (synopsis "R Library for 'Harmony'")
    (description
     "Harmony is a tool using AI which allows you to compare items from questionnaires
and identify similar content.  You can try Harmony at
<https://harmonydata.ac.uk/app/> and you can read our blog at
<https://harmonydata.ac.uk/blog/> or at
<https://fastdatascience.com/how-does-harmony-work/>.  Documentation at
<https://harmonydata.ac.uk/harmony-r-released/>.")
    (license license:expat)))

(define-public r-harmonizer
  (package
    (name "r-harmonizer")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harmonizer" version))
       (sha256
        (base32 "05iiph9zx4wllviiwr92bhiq24bmi62iq9wjn8j91dvascd6xh5i"))))
    (properties `((upstream-name . "harmonizer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=harmonizer")
    (synopsis "Harmonizing CN8 and PC8 Product Codes")
    (description
     "Several functions are provided to harmonize CN8 (Combined Nomenclature 8 digits)
and PC8 (Production Communautaire 8 digits) product codes over time and the
classification systems HS6 and BEC. Harmonization of CN8 codes are possible by
default from 1995 to 2022 and of PC8 from 2001 to 2021, respectively.")
    (license license:gpl3+)))

(define-public r-harmonicmeanp
  (package
    (name "r-harmonicmeanp")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harmonicmeanp" version))
       (sha256
        (base32 "11lxiafclihb49j6psqrdb143sz1xv9v45fafj8dfm8r2yr5hp1g"))))
    (properties `((upstream-name . "harmonicmeanp")))
    (build-system r-build-system)
    (propagated-inputs (list r-fmstable))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=harmonicmeanp")
    (synopsis
     "Harmonic Mean p-Values and Model Averaging by Mean Maximum Likelihood")
    (description
     "The harmonic mean p-value (HMP) test combines p-values and corrects for multiple
testing while controlling the strong-sense family-wise error rate.  It is more
powerful than common alternatives including Bonferroni and Simes procedures when
combining large proportions of all the p-values, at the cost of slightly lower
power when combining small proportions of all the p-values.  It is more
stringent than controlling the false discovery rate, and possesses theoretical
robustness to positive correlations between tests and unequal weights.  It is a
multi-level test in the sense that a superset of one or more significant tests
is certain to be significant and conversely when the superset is
non-significant, the constituent tests are certain to be non-significant.  It is
based on MAMML (model averaging by mean maximum likelihood), a frequentist
analogue to Bayesian model averaging, and is theoretically grounded in
generalized central limit theorem.  For detailed examples type
vignette(\"harmonicmeanp\") after installation.  Version 3.0 addresses errors in
versions 1.0 and 2.0 that led function p.hmp to control the familywise error
rate only in the weak sense, rather than the strong sense as intended.")
    (license license:gpl3)))

(define-public r-harbinger
  (package
    (name "r-harbinger")
    (version "1.0.787")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "harbinger" version))
       (sha256
        (base32 "0ibmcwxlcdw4k7xd0bdnixz5fbnc6avj6jg7sd9ij5kir82xi03f"))))
    (properties `((upstream-name . "harbinger")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-wavelets
                             r-tsmp
                             r-strucchange
                             r-stringr
                             r-rugarch
                             r-hht
                             r-ggplot2
                             r-forecast
                             r-dtwclust
                             r-dplyr
                             r-daltoolbox
                             r-changepoint))
    (home-page "https://github.com/cefet-rj-dal/harbinger")
    (synopsis "Unified Time Series Event Detection Framework")
    (description
     "By analyzing time series, it is possible to observe significant changes in the
behavior of observations that frequently characterize events.  Events present
themselves as anomalies, change points, or motifs.  In the literature, there are
several methods for detecting events.  However, searching for a suitable time
series method is a complex task, especially considering that the nature of
events is often unknown.  This work presents Harbinger, a framework for
integrating and analyzing event detection methods.  Harbinger contains several
state-of-the-art methods described in Salles et al. (2020)
<doi:10.5753/sbbd.2020.13626>.")
    (license license:expat)))

(define-public r-hapsim
  (package
    (name "r-hapsim")
    (version "0.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hapsim" version))
       (sha256
        (base32 "0jw6iw89d4y8wjy58biv40szp123ql7frz1mmdjdxljmwaby963h"))))
    (properties `((upstream-name . "hapsim")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=hapsim")
    (synopsis "Haplotype Data Simulation")
    (description
     "Package for haplotype-based genotype simulations.  Haplotypes are generated such
that their allele frequencies and linkage disequilibrium coefficients match
those estimated from an input data set.")
    (license license:gpl2+)))

(define-public r-happytime
  (package
    (name "r-happytime")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "happytime" version))
       (sha256
        (base32 "03iblwb6w2dh9sibfi4nlswidck13hzsn7123838zp4sxfnrp041"))))
    (properties `((upstream-name . "happytime")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=happytime")
    (synopsis "Two Games to Relieve the Boredom")
    (description
     "There are two interesting games in this package, one is 2048 games(for windows),
using up and down to control the direction until there is a 2048 figure.  And
the other is what to eat today',preparing for people who choose difficulties,
including most of the delicious Cantonese cuisine.")
    (license license:gpl2)))

(define-public r-happign
  (package
    (name "r-happign")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "happign" version))
       (sha256
        (base32 "0mg3w5djg0hg8x1826kqj3b75zyhibcpxrh5sp6w17pmamfif9a4"))))
    (properties `((upstream-name . "happign")))
    (build-system r-build-system)
    (inputs (list sqlite proj geos gdal))
    (propagated-inputs (list r-xml2
                             r-terra
                             r-sf
                             r-jsonlite
                             r-httr2
                             r-dplyr
                             r-archive))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paul-carteron")
    (synopsis "R Interface to 'IGN' Web Services")
    (description
     "Automatic open data acquisition from resources of IGN ('Institut National de
Information Geographique et forestiere') (<https://www.ign.fr/>).  Available
datasets include various types of raster and vector data, such as digital
elevation models, state borders, spatial databases, cadastral parcels, and more.
 There also access to point clouds data ('LIDAR') and specifics API
(<https://apicarto.ign.fr/api/doc/>).")
    (license license:gpl3+)))

(define-public r-haplotypes
  (package
    (name "r-haplotypes")
    (version "1.1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haplotypes" version))
       (sha256
        (base32 "0w61ww76fq4iqzi6w9q2649925m5agnjaqhij40dwxyzsyqv9zjd"))))
    (properties `((upstream-name . "haplotypes")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna r-plotrix r-phangorn r-network r-ape))
    (home-page "https://cran.r-project.org")
    (synopsis
     "Manipulating DNA Sequences and Estimating Unambiguous Haplotype Network with Statistical Parsimony")
    (description
     "This package provides S4 classes and methods for reading and manipulating
aligned DNA sequences, supporting an indel coding methods (only simple indel
coding method is available in the current version), showing base substitutions
and indels, calculating absolute pairwise distances between DNA sequences, and
collapses identical DNA sequences into haplotypes or inferring haplotypes using
user provided absolute pairwise character difference matrix.  This package also
includes S4 classes and methods for estimating genealogical relationships among
haplotypes using statistical parsimony and plotting parsimony networks.")
    (license license:gpl2)))

(define-public r-haplotyper
  (package
    (name "r-haplotyper")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haplotyper" version))
       (sha256
        (base32 "0pcshlh29c4zazhkcq4371kqh9inrbx494y5a1qb1k2c92fkax31"))))
    (properties `((upstream-name . "haplotyper")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=haplotyper")
    (synopsis "Tool for Clustering Genotypes in Haplotypes")
    (description
     "Function to identify haplotypes within QTL (Quantitative Trait Loci).  One
haplotype is a combination of SNP (Single Nucleotide Polymorphisms) within the
QTL. This function groups together all individuals of a population with the same
haplotype.  Each group contains individual with the same allele in each SNP,
whether or not missing data.  Thus, haplotyper groups individuals, that to be
imputed, have a non-zero probability of having the same alleles in the entire
sequence of SNP's.  Moreover, haplotyper calculates such probability from
relative frequencies.")
    (license license:gpl3)))

(define-public r-haplosim
  (package
    (name "r-haplosim")
    (version "1.8.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HaploSim" version))
       (sha256
        (base32 "15jawq5bxy2kjvl7bxqjr6p02ivhfrdzjmvjy1vp45jnaz6052v2"))))
    (properties `((upstream-name . "HaploSim")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HaploSim")
    (synopsis "Functions to Simulate Haplotypes")
    (description
     "Simulate haplotypes through meioses.  Allows specification of population
parameters.")
    (license license:gpl2+)))

(define-public r-haplor
  (package
    (name "r-haplor")
    (version "4.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haploR" version))
       (sha256
        (base32 "1s8f556d9x5h76gyl4wggcx01f4qrx0fp5mz46yk2x9qmwiir89v"))))
    (properties `((upstream-name . "haploR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-tibble
                             r-runit
                             r-rjsonio
                             r-rcurl
                             r-plyr
                             r-httr
                             r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=haploR")
    (synopsis "Query 'HaploReg', 'RegulomeDB'")
    (description
     "This package provides a set of utilities for querying @code{HaploReg}
<https://pubs.broadinstitute.org/mammals/haploreg/haploreg.php>,
@code{RegulomeDB} <https://www.regulomedb.org/regulome-search/> web-based tools.
 The package connects to @code{HaploReg}', @code{RegulomeDB} searches and
downloads results, without opening web pages, directly from R environment.
Results are stored in a data frame that can be directly used in various kinds of
downstream analyses.")
    (license license:gpl3)))

(define-public r-haplocatcher
  (package
    (name "r-haplocatcher")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HaploCatcher" version))
       (sha256
        (base32 "182ihr45s2g452h054c6m8lgvj629spq1rd9vglzyy8ymg0l6w4j"))))
    (properties `((upstream-name . "HaploCatcher")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest
                             r-patchwork
                             r-lattice
                             r-knitr
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HaploCatcher")
    (synopsis "Predictive Haplotyping Package")
    (description
     "Used for predicting a genotypeâs allelic state at a specific locus/QTL/gene.
This is accomplished by using both a genotype matrix and a separate file which
has categorizations about loci/QTL/genes of interest for the individuals in the
genotypic matrix.  A training population can be created from a panel of
individuals who have been previously screened for specific loci/QTL/genes, and
this previous screening could be summarized into a category.  Using the
categorization of individuals which have been genotyped using a genome wide
marker platform, a model can be trained to predict what category (haplotype) an
individual belongs in based on their genetic sequence in the region associated
with the locus/QTL/gene.  These trained models can then be used to predict the
haplotype of a locus/QTL/gene for individuals which have been genotyped with a
genome wide platform yet not genotyped for the specific locus/QTL/gene.  This
package is based off work done by Winn et al 2021.  For more specific
information on this method, refer to <doi:10.1007/s00122-022-04178-w>.")
    (license license:expat)))

(define-public r-haplo-ccs
  (package
    (name "r-haplo-ccs")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haplo.ccs" version))
       (sha256
        (base32 "103i1fxk990drlsdhjrh9p6rp05g7gqzmlqfcdx9a1di1qrhw5qh"))))
    (properties `((upstream-name . "haplo.ccs")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-haplo-stats))
    (home-page "https://github.com/vubiostat/haplo.ccs")
    (synopsis "Estimate Haplotype Relative Risks in Case-Control Data")
    (description
     "Haplotype and covariate relative risks in case-control data are estimated by
weighted logistic regression.  Diplotype probabilities, which are estimated by
EM computation with progressive insertion of loci, are utilized as weights.
French et al. (2006) <doi:10.1002/gepi.20161>.")
    (license license:gpl2+)))

(define-public r-haplin
  (package
    (name "r-haplin")
    (version "7.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Haplin" version))
       (sha256
        (base32 "0vyykbq2f5w4h7nai8w8krpax8q6v2hx76rr6xqy938rza5rfm79"))))
    (properties `((upstream-name . "Haplin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-mgcv r-mass r-ff))
    (native-inputs (list r-knitr))
    (home-page "https://haplin.bitbucket.io")
    (synopsis
     "Analyzing Case-Parent Triad and/or Case-Control Data with SNP Haplotypes")
    (description
     "This package performs genetic association analyses of case-parent triad (trio)
data with multiple markers.  It can also incorporate complete or incomplete
control triads, for instance independent control children.  Estimation is based
on haplotypes, for instance SNP haplotypes, even though phase is not known from
the genetic data.  Haplin estimates relative risk (RR + conf.int.) and p-value
associated with each haplotype.  It uses maximum likelihood estimation to make
optimal use of data from triads with missing genotypic data, for instance if
some SNPs has not been typed for some individuals.  Haplin also allows
estimation of effects of maternal haplotypes and parent-of-origin effects,
particularly appropriate in perinatal epidemiology.  Haplin allows special
models, like X-inactivation, to be fitted on the X-chromosome.  A @code{GxE}
analysis allows testing interactions between environment and all estimated
genetic effects.  The models were originally described in \"Gjessing HK and Lie
RT. Case-parent triads: Estimating single- and double-dose effects of fetal and
maternal disease gene haplotypes.  Annals of Human Genetics (2006) 70, pp.
382-396\".")
    (license license:gpl2+)))

(define-public r-hapi
  (package
    (name "r-hapi")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Hapi" version))
       (sha256
        (base32 "0jqjhfq38k161kqff5cx0vxpsmjm2y5ca7049mvqiwqwvi4fp08m"))))
    (properties `((upstream-name . "Hapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmm r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Hapi")
    (synopsis
     "Inference of Chromosome-Length Haplotypes Using Genomic Data of Single Gamete Cells")
    (description
     "Inference of chromosome-length haplotypes using a few haploid gametes of an
individual.  The gamete genotype data may be generated from various platforms
including genotyping arrays and sequencing even with low-coverage.  Hapi simply
takes genotype data of known @code{hetSNPs} in single gamete cells as input and
report the high-resolution haplotypes as well as confidence of each phased
@code{hetSNPs}.  The package also includes a module allowing downstream analyses
and visualization of identified crossovers in the gametes.")
    (license license:gpl3)))

(define-public r-hanstat
  (package
    (name "r-hanstat")
    (version "0.90.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HanStat" version))
       (sha256
        (base32 "0ycppc7cq8jpg2xldl692mxg73agra3sq6zjzlpz7vvr9kqf64g6"))))
    (properties `((upstream-name . "HanStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-olsrr
                             r-lmtest
                             r-ggpubr
                             r-ggplot2
                             r-devtools
                             r-crayon
                             r-car
                             r-boot))
    (home-page "https://github.com/KonradKrahl/HanStat")
    (synopsis "Package for Easy Interpretation of Statistical Methods")
    (description
     "This package provides a simple and time saving multiple linear regression
function (OLS) with interpretation, optional bootstrapping, effect size
calculation and all tested requirements.")
    (license license:gpl3+)))

(define-public r-hansard
  (package
    (name "r-hansard")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hansard" version))
       (sha256
        (base32 "00mcy58nhlphb0v0wchbaw1qamm0435s09nxxw6rr5z872rhyf5a"))))
    (properties `((upstream-name . "hansard")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-snakecase
                             r-lubridate
                             r-jsonlite
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.evanodell.com/hansard")
    (synopsis
     "Provides Easy Downloading Capabilities for the UK Parliament API")
    (description
     "This package provides functions to download data from the
<http://www.data.parliament.uk/> APIs.  Because of the structure of the API,
there is a named function for each type of available data for ease of use, as
well as some functions designed to retrieve specific pieces of commonly used
data.  Functions for each new API will be added as and when they become
available.")
    (license license:expat)))

(define-public r-hans
  (package
    (name "r-hans")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hans" version))
       (sha256
        (base32 "0hh2nlzxs2kj93yb7yfm873m6nymjw5qmkin3qqn3acza6dr0k6q"))))
    (properties `((upstream-name . "hans")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=hans")
    (synopsis "Haversines are not Slow")
    (description
     "The haversine is a function used to calculate the distance between a pair of
latitude and longitude points while accounting for the assumption that the
points are on a spherical globe.  This package provides a fast, dataframe
compatible, haversine function.  For the first publication on the haversine
calculation see Joseph de Mendoza y RÃ­os (1795)
<https://books.google.cat/books?id=030t0@code{OqlX2AC>} (In Spanish).")
    (license license:expat)))

(define-public r-handyplots
  (package
    (name "r-handyplots")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "handyplots" version))
       (sha256
        (base32 "0pcl0iichdw2lkv8y00mv6n6c0rvrnsk75ka5lwm2g7b64pphsvk"))))
    (properties `((upstream-name . "handyplots")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=handyplots")
    (synopsis "Handy Plots")
    (description
     "Several handy plots for quickly looking at the relationship between two numeric
vectors of equal length.  Quickly visualize scatter plots, residual plots,
qq-plots, box plots, confidence intervals, and prediction intervals.")
    (license license:gpl2+)))

(define-public r-handyfunctions
  (package
    (name "r-handyfunctions")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "handyFunctions" version))
       (sha256
        (base32 "0y476acqdm73y19k8s9c9vy8xryyjg16pay3vikslwccv7kgsigz"))))
    (properties `((upstream-name . "handyFunctions")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-ggplot2))
    (home-page "https://github.com/LuffyLouis/handyFunctions")
    (synopsis
     "Useful Functions for Handfully Manipulating and Analyzing Data with Data.frame Format")
    (description
     "Some useful functions for simply manipulating and analyzing data with data.frame
format.  It mainly includes the following sections: @code{ReformatDataframe}
(reformat dataframe with the modifiers), @code{InteractDataframe}, and Post-VCF
(for downstream analysis for data generated from vcftools Petr et al (2011)
<doi:10.1093/bioinformatics/btr330> or plink Chang et al (2015)
<doi:10.1186/s13742-015-0047-8>.")
    (license license:expat)))

(define-public r-handwriter
  (package
    (name "r-handwriter")
    (version "3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "handwriter" version))
       (sha256
        (base32 "1gwxp5nsw38f368z586hixk4i7b87vg0fcmxxdl2zldawv1sx0v9"))))
    (properties `((upstream-name . "handwriter")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rjags
                             r-rfast
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-png
                             r-mc2d
                             r-magick
                             r-lpsolve
                             r-igraph
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CSAFE-ISU/handwriter")
    (synopsis "Handwriting Analysis in R")
    (description
     "Perform statistical writership analysis of scanned handwritten documents.
Webpage provided at: <https://github.com/CSAFE-ISU/handwriter>.")
    (license license:gpl3)))

(define-public r-handtill2001
  (package
    (name "r-handtill2001")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HandTill2001" version))
       (sha256
        (base32 "0wgr3rhz1iklirpnzk25afh8fv1qpi2ijmx4xwzplw3w3qir4yv6"))))
    (properties `((upstream-name . "HandTill2001")))
    (build-system r-build-system)
    (native-inputs (list))
    (home-page "https://gitlab.com/fvafrCU/HandTill2001")
    (synopsis "Multiple Class Area under ROC Curve")
    (description
     "An S4 implementation of Eq. (3) and Eq. (7) by David J. Hand and Robert J. Till
(2001) <DOI:10.1023/A:1010920819831>.")
    (license license:bsd-2)))

(define-public r-handlr
  (package
    (name "r-handlr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "handlr" version))
       (sha256
        (base32 "0l0jwlslz2pyg7q447k56acfhgmx5njsriqdrwd02zzbsc3g6wm5"))))
    (properties `((upstream-name . "handlr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xml2
                             r-urltools
                             r-mime
                             r-jsonlite
                             r-crul))
    (home-page "https://github.com/ropensci/handlr")
    (synopsis "Convert Among Citation Formats")
    (description
     "Converts among many citation formats, including @code{BibTeX}', Citeproc',
Codemeta', RDF XML', RIS', Schema.org', and Citation File Format'.  A low level
R6 class is provided, as well as stand-alone functions for each citation format
for both read and write.")
    (license license:expat)))

(define-public r-handcoder
  (package
    (name "r-handcoder")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "handcodeR" version))
       (sha256
        (base32 "1icr2474y2q2jnax7ps9lmh13hkrpq4z2yacffc1scm2cpg18y6a"))))
    (properties `((upstream-name . "handcodeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets r-shiny))
    (home-page "https://github.com/liserman/handcodeR/")
    (synopsis "Text Annotation App")
    (description
     "Shiny-App that allows to annotate vectors of texts to predefined categories by
hand.")
    (license license:asl2.0)))

(define-public r-hamlet
  (package
    (name "r-hamlet")
    (version "0.9.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hamlet" version))
       (sha256
        (base32 "076fh28grlrv38qywshi79m84jsz1ck9k4n0rg4svvr3gqkdbcn2"))))
    (properties `((upstream-name . "hamlet")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=hamlet")
    (synopsis "Hierarchical Optimal Matching and Machine Learning Toolbox")
    (description
     "Various functions and algorithms are provided here for solving optimal matching
tasks in the context of preclinical cancer studies.  Further, various helper and
plotting functions are provided for unsupervised and supervised machine learning
as well as longitudinal mixed-effects modeling of tumor growth response
patterns.")
    (license license:gpl2+)))

(define-public r-halk
  (package
    (name "r-halk")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "halk" version))
       (sha256
        (base32 "109xrz7wm0zsl4kkr5fx0igiwcq2lgkxsws4g1m8k1nhnz1aidbn"))))
    (properties `((upstream-name . "halk")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=halk")
    (synopsis
     "Methods to Create Hierarchical Age Length Keys for Age Assignment")
    (description
     "This package provides methods for implementing hierarchical age length keys to
estimate fish ages from lengths using data borrowing.  Users can create
hierarchical age length keys and use them to assign ages given length.")
    (license license:expat)))

(define-public r-halfmoon
  (package
    (name "r-halfmoon")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "halfmoon" version))
       (sha256
        (base32 "19pclcrcbmmf1b1q2dhwh17a67xif992y3w6685si5bn0ripsj6h"))))
    (properties `((upstream-name . "halfmoon")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidysmd r-tidyselect r-ggplot2 r-cli))
    (home-page "https://github.com/r-causal/halfmoon")
    (synopsis "Techniques to Build Better Balance")
    (description
     "Build better balance in causal inference models.  halfmoon helps you assess
propensity score models for balance between groups using metrics like
standardized mean differences and visualization techniques like mirrored
histograms.  halfmoon supports both weighting and matching techniques.")
    (license license:expat)))

(define-public r-halfcircle
  (package
    (name "r-halfcircle")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "halfcircle" version))
       (sha256
        (base32 "1gbqbv3cn8w09i3f2ji3qq0snb4fy9243y12agw686fx46dfmhxs"))))
    (properties `((upstream-name . "halfcircle")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales))
    (home-page "https://cran.r-project.org/package=halfcircle")
    (synopsis "Plot Halfcircle Diagram")
    (description
     "There are growing concerns on flow data in diverse fields including trade,
migration, knowledge diffusion, disease spread, and transportation.  The package
is an effective visual support to learn the pattern of flow which is called
halfcircle diagram.  The flow between two nodes placed on the center line of a
circle is represented using a half circle drawn from the origin to the
destination in a clockwise direction.  Through changing the order of nodes, the
halfcircle diagram enables users to examine the complex relationship between
bidirectional flow and each potential determinants.  Furthermore, the
halfmeancenter function, which calculates (un) weighted mean center of half
circles, makes the comparison easier.")
    (license license:expat)))

(define-public r-haldensify
  (package
    (name "r-haldensify")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haldensify" version))
       (sha256
        (base32 "071lgx6j92n40bjlrp3khmnavvkla371rkm1ssx20ig5pkay23pw"))))
    (properties `((upstream-name . "haldensify")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-scales
                             r-rsample
                             r-rlang
                             r-rdpack
                             r-origami
                             r-matrixstats
                             r-hal9001
                             r-ggplot2
                             r-future-apply
                             r-dplyr
                             r-data-table
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nhejazi/haldensify")
    (synopsis "Highly Adaptive Lasso Conditional Density Estimation")
    (description
     "An algorithm for flexible conditional density estimation based on application of
pooled hazard regression to an artificial repeated measures dataset constructed
by discretizing the support of the outcome variable.  To facilitate
non/semi-parametric estimation of the conditional density, the highly adaptive
lasso, a nonparametric regression function shown to reliably estimate a large
class of functions at a fast convergence rate, is utilized.  The pooled hazards
data augmentation formulation implemented was first described by DÃ­az and van
der Laan (2011) <doi:10.2202/1557-4679.1356>.  To complement the conditional
density estimation utilities, tools for efficient nonparametric inverse
probability weighted (IPW) estimation of the causal effects of stochastic shift
interventions (modified treatment policies), directly utilizing the density
estimation technique for construction of the generalized propensity score, are
provided.  These IPW estimators utilize undersmoothing (sieve estimation) of the
conditional density estimators in order to achieve the non/semi-parametric
efficiency bound.")
    (license license:expat)))

(define-public r-hal9001
  (package
    (name "r-hal9001")
    (version "0.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hal9001" version))
       (sha256
        (base32 "1p88rpm4alkr56w4cjl8sxj6ylq991dsny11njcdx5rzc25jh8qi"))))
    (properties `((upstream-name . "hal9001")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcppeigen
                             r-rcpp
                             r-origami
                             r-matrix
                             r-glmnet
                             r-data-table
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tlverse/hal9001")
    (synopsis "The Scalable Highly Adaptive Lasso")
    (description
     "This package provides a scalable implementation of the highly adaptive lasso
algorithm, including routines for constructing sparse matrices of basis
functions of the observed data, as well as a custom implementation of Lasso
regression tailored to enhance efficiency when the matrix of predictors is
composed exclusively of indicator functions.  For ease of use and increased
flexibility, the Lasso fitting routines invoke code from the glmnet package by
default.  The highly adaptive lasso was first formulated and described by MJ van
der Laan (2017) <doi:10.1515/ijb-2015-0097>, with practical demonstrations of
its performance given by Benkeser and van der Laan (2016)
<doi:10.1109/DSAA.2016.93>.  This implementation of the highly adaptive lasso
algorithm was described by Hejazi, Coyle, and van der Laan (2020)
<doi:10.21105/joss.02526>.")
    (license license:gpl3)))

(define-public r-hakaiapi
  (package
    (name "r-hakaiapi")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hakaiApi" version))
       (sha256
        (base32 "0lxqk4cp1s1sm3nbsp74q1bpklmph620c2f1kii97h6yimnq9bi0"))))
    (properties `((upstream-name . "hakaiApi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-readr r-r6 r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HakaiInstitute/hakai-api-client-r")
    (synopsis "Authenticated HTTP Request Client for the 'Hakai' API")
    (description
     "Initializes a class that obtains API credentials and provides a method to use
those credentials to make GET requests to the Hakai API server.  Usage
instructions are documented at <https://hakaiinstitute.github.io/hakai-api/>.")
    (license license:expat)))

(define-public r-hahmmr
  (package
    (name "r-hahmmr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hahmmr" version))
       (sha256
        (base32 "19bds84pkimr71dy1365b71k7ihn7x86yalgcmagvkxgygpg3409"))))
    (properties `((upstream-name . "hahmmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tibble
                             r-stringr
                             r-roptim
                             r-rcpparmadillo
                             r-rcpp
                             r-patchwork
                             r-iranges
                             r-glue
                             r-ggplot2
                             r-genomicranges
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=hahmmr")
    (synopsis "Haplotype-Aware Hidden Markov Model for RNA")
    (description
     "Haplotype-aware Hidden Markov Model for RNA (@code{HaHMMR}) is a method for
detecting copy number variations (CNVs) from bulk RNA-seq data.  Additional
examples, documentations, and details on the method are available at
<https://github.com/kharchenkolab/hahmmr/>.")
    (license license:expat)))

(define-public r-hagis
  (package
    (name "r-hagis")
    (version "3.1.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hagis" version))
       (sha256
        (base32 "18mcd8vm2dy50wfwfxbih841z1l8yml6fvb6y5qqq7a04h09k590"))))
    (properties `((upstream-name . "hagis")))
    (build-system r-build-system)
    (propagated-inputs (list r-pander r-ggplot2 r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/openplantpathology/hagis")
    (synopsis
     "Analysis of Plant Pathogen Pathotype Complexities, Distributions and Diversity")
    (description
     "Analysis of plant pathogen pathotype survey data.  Functions provided calculate
distribution of susceptibilities, distribution of complexities with statistics,
pathotype frequency distribution, as well as diversity indices for pathotypes.
This package is meant to be a direct replacement for Herrmann, LÃ¶wer and
Schachtel's (1999) <doi:10.1046/j.1365-3059.1999.00325.x> Habgood-Gilmour
Spreadsheet, @code{HaGiS}', previously used for pathotype analysis.")
    (license license:expat)))

(define-public r-hadibds
  (package
    (name "r-hadibds")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HadIBDs" version))
       (sha256
        (base32 "1mj6a4cp51kpsw93hz67smz9vc17ss5675wnalbq84wj89p2ma3l"))))
    (properties `((upstream-name . "HadIBDs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=HadIBDs")
    (synopsis "Incomplete Block Designs using Hadamard Matrix (HadIBDs)")
    (description
     "Hadamard matrix based statistical designs are of immense importance as the
resultant designs carry various desirable characterizing properties.
Constructing Partially Balanced Incomplete Block Designs (PBIBds) using
Kronecker product of incidence matrices of Balanced Incomplete Block (BIB) and
Partially Balanced Incomplete Block (PBIB) designs is much evident from
literature.  Here, we have constructed Incomplete Block Designs (IBDs) based on
Hadamard matrices and Kronecker product of Hadamard matrices.")
    (license license:gpl2+)))

(define-public r-hadex
  (package
    (name "r-hadex")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HaDeX" version))
       (sha256
        (base32 "1qj6n03pd5kd5ff5h4v8wmnqxxylsxx1p6i88nahqkah2mzg9jdr"))))
    (properties `((upstream-name . "HaDeX")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shiny
                             r-reshape2
                             r-readxl
                             r-readr
                             r-latex2exp
                             r-gsubfn
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=HaDeX")
    (synopsis
     "Analysis and Visualisation of Hydrogen/Deuterium Exchange Mass Spectrometry Data")
    (description
     "This package provides functions for processing, analysis and visualization of
Hydrogen Deuterium @code{eXchange} monitored by Mass Spectrometry experiments
(HDX-MS) (10.1093/bioinformatics/btaa587). @code{HaDeX} introduces a new
standardized and reproducible workflow for the analysis of the HDX-MS data,
including novel uncertainty intervals.  Additionally, it covers data
exploration, quality control and generation of publication-quality figures.  All
functionalities are also available in the in-built Shiny app.")
    (license license:gpl3)))

(define-public r-hadamardr
  (package
    (name "r-hadamardr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HadamardR" version))
       (sha256
        (base32 "0nr8m6fchpmlvhyisb61y0fymjjrk2k1sd67r14n87sgn3mafh4a"))))
    (properties `((upstream-name . "HadamardR")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-numbers))
    (home-page "https://cran.r-project.org/package=HadamardR")
    (synopsis "Hadamard Matrix Generation")
    (description
     "Generates Hadamard matrices using different construction methods.  For those who
want to generate Hadamard matrix, a generic function, Hadamard_matrix() is
provided.  For those who want to generate Hadamard matrix using a particular
method, separate functions are available.  See Horadam (2007,
ISBN:9780691119212) Hadamard Matrices and their applications, Princeton
University Press for more information on Hadamard Matrices.")
    (license license:gpl2)))

(define-public r-hacsim
  (package
    (name "r-hacsim")
    (version "1.0.6-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HACSim" version))
       (sha256
        (base32 "0hdczpn1x6zcxya8qlp82fzzpli3z2kfvynk5sqk97h1d55d27i4"))))
    (properties `((upstream-name . "HACSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rcpparmadillo
                             r-rcpp
                             r-pegas
                             r-matrixstats
                             r-data-table
                             r-ape))
    (home-page "https://cran.r-project.org/package=HACSim")
    (synopsis
     "Iterative Extrapolation of Species' Haplotype Accumulation Curves for Genetic Diversity Assessment")
    (description
     "This package performs iterative extrapolation of species haplotype accumulation
curves using a nonparametric stochastic (Monte Carlo) optimization method for
assessment of specimen sampling completeness based on the approach of Phillips
et al. (2015) <doi:10.1515/dna-2015-0008>, Phillips et al. (2019)
<doi:10.1002/ece3.4757> and Phillips et al. (2020) <doi: 10.7717/peerj-cs.243>.
HACSim outputs a number of useful summary statistics of sampling coverage
(\"Measures of Sampling Closeness\"), including an estimate of the likely required
sample size (along with desired level confidence intervals) necessary to recover
a given number/proportion of observed unique species haplotypes.  Any genomic
marker can be targeted to assess likely required specimen sample sizes for
genetic diversity assessment.  The method is particularly well-suited to assess
sampling sufficiency for DNA barcoding initiatives.  Users can also simulate
their own DNA sequences according to various models of nucleotide substitution.
A Shiny app is also available.")
    (license license:gpl3)))

(define-public r-hacksig
  (package
    (name "r-hacksig")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hacksig" version))
       (sha256
        (base32 "0sc35vyi00r2b3hgn1xw2zffd704adschjwhx0niv5a1l33dxbkp"))))
    (properties `((upstream-name . "hacksig")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-rlang r-future-apply r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Acare/hacksig")
    (synopsis "Tidy Framework to Hack Gene Expression Signatures")
    (description
     "This package provides a collection of cancer transcriptomics gene signatures as
well as a simple and tidy interface to compute single sample enrichment scores
either with the original procedure or with three alternatives: the \"combined
z-score\" of Lee et al. (2008) <doi:10.1371/journal.pcbi.1000217>, the \"single
sample GSEA\" of Barbie et al. (2009) <doi:10.1038/nature08460> and the
\"singscore\" of Foroutan et al. (2018) <doi:10.1186/s12859-018-2435-4>.  The
get_sig_info() function can be used to retrieve information about each signature
implemented.")
    (license license:expat)))

(define-public r-hacksaw
  (package
    (name "r-hacksaw")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hacksaw" version))
       (sha256
        (base32 "1ls4l53bsaxyd6lwka9z9sb6ypa2ymbxpfxhsj9k966031jv2vk3"))))
    (properties `((upstream-name . "hacksaw")))
    (build-system r-build-system)
    (propagated-inputs (list r-zeallot
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=hacksaw")
    (synopsis "Additional Tools for Splitting and Cleaning Data")
    (description
     "Move between data frames and lists more efficiently with precision splitting via
dplyr verbs.  Easily cast variables to different data types.  Keep rows with
NAs.  Shift row values.")
    (license license:expat)))

(define-public r-hackernews
  (package
    (name "r-hackernews")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hackeRnews" version))
       (sha256
        (base32 "0vrdbk4dxbykb3hs35nxkl3s2ds92gs5qz66p85w8j5zjmwbw2x6"))))
    (properties `((upstream-name . "hackeRnews")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-jsonlite r-httr r-future-apply))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/szymanskir/hackeRnews")
    (synopsis "Wrapper for the 'Official Hacker News' API")
    (description
     "Use the <https://hacker-news.firebaseio.com/v0/> API through R. Retrieve posts,
articles and other items in form of convenient R objects.")
    (license license:expat)))

(define-public r-hac
  (package
    (name "r-hac")
    (version "1.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "HAC" version))
       (sha256
        (base32 "1k19qrirhzl8qaa4svf7qa90r7gphbbvm9m0977z9gd704n8b62a"))))
    (properties `((upstream-name . "HAC")))
    (build-system r-build-system)
    (propagated-inputs (list r-copula))
    (home-page
     "https://tu-dresden.de/bu/verkehr/ivw/osv/die-professur/inhaber-in")
    (synopsis
     "Estimation, Simulation and Visualization of Hierarchical Archimedean Copulae (HAC)")
    (description
     "Package provides the estimation of the structure and the parameters, sampling
methods and structural plots of Hierarchical Archimedean Copulae (HAC).")
    (license license:gpl3+)))

(define-public r-habtools
  (package
    (name "r-habtools")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "habtools" version))
       (sha256
        (base32 "1y0pjx16272dknmp2lpc69fmj5h4s4hsl2kchlrcwxpdyfyz7yb2"))))
    (properties `((upstream-name . "habtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-sp
                             r-rvcg
                             r-raster
                             r-purrr
                             r-magrittr
                             r-geometry
                             r-dplyr
                             r-concaveman))
    (native-inputs (list r-knitr))
    (home-page "https://jmadinlab.github.io/habtools/")
    (synopsis "Tools and Metrics for 3D Surfaces and Objects")
    (description
     "This package provides a collection of functions for sampling and simulating 3D
surfaces and objects and estimating metrics like rugosity, fractal dimension,
convexity, sphericity, circularity, second moments of area and volume, and more.")
    (license license:expat)))

(define-public r-hablar
  (package
    (name "r-hablar")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "hablar" version))
       (sha256
        (base32 "0mzk4nwsamf07cbscn8zjiqdf6ik0dc9c4v8cafrlsv1wxpbs09i"))))
    (properties `((upstream-name . "hablar")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-lubridate r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://davidsjoberg.github.io/")
    (synopsis "Non-Astonishing Results in R")
    (description
     "Simple tools for converting columns to new data types.  Intuitive functions for
columns with missing values.")
    (license license:expat)))

(define-public r-habcluster
  (package
    (name "r-habcluster")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "habCluster" version))
       (sha256
        (base32 "1cjmhq8krkv4g1vy70kc3j667djzmq38xlqn568f437f6jaglvkp"))))
    (properties `((upstream-name . "habCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-stars r-sf r-rcpp r-raster r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=habCluster")
    (synopsis
     "Detecting Spatial Clustering Based on Connection Cost Between Grids")
    (description
     "Based on landscape connectivity, spatial boundaries were identified using
community detection algorithm at grid level.  Methods using raster as input and
the value of each cell of the raster is the \"smoothness\" to indicate how easy
the cell connecting with neighbor cells.  Details about the @code{habCluster}
package methods can be found in Zhang et al. <@code{bioRxiv:2022.05.06.490926>}.")
    (license license:gpl3+)))

(define-public r-haarfisz
  (package
    (name "r-haarfisz")
    (version "4.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "haarfisz" version))
       (sha256
        (base32 "1c00zpswnbfd44j7fb6pib6fwri2qs8kasd3fxifmaj0i6zpq8jf"))))
    (properties `((upstream-name . "haarfisz")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavethresh))
    (home-page "https://cran.r-project.org/package=haarfisz")
    (synopsis "Software to Perform Haar Fisz Transforms")
    (description
     "This package provides a Haar-Fisz algorithm for Poisson intensity estimation.
Will denoise Poisson distributed sequences where underlying intensity is not
constant.  Uses the multiscale variance-stabilization method called the
Haar-Fisz transform.  Contains functions to carry out the forward and inverse
Haar-Fisz transform and denoising on near-Gaussian sequences.  Can also carry
out cycle-spinning.  Main reference: Fryzlewicz, P. and Nason, G.P. (2004) \"A
Haar-Fisz algorithm for Poisson intensity estimation.\" Journal of Computational
and Graphical Statistics, 13, 621-638. <doi:10.1198/106186004X2697>.")
    (license license:gpl2+)))

(define-public r-h3r
  (package
    (name "r-h3r")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h3r" version))
       (sha256
        (base32 "0i4k66092aqj32snh94pifhml95md2f03y698zvzscl8bgxwlra7"))))
    (properties `((upstream-name . "h3r")))
    (build-system r-build-system)
    (propagated-inputs (list r-h3lib))
    (home-page "https://symbolixau.github.io/h3r/")
    (synopsis "Hexagonal Hierarchical Geospatial Indexing System")
    (description
     "This package provides access to Uber's H3 geospatial indexing system via h3lib
<https://CRAN.R-project.org/package=h3lib>.  h3r is designed to mimic the H3
Application Programming Interface (API) <https://h3geo.org/docs/api/indexing/>,
so that any function in the API is also available in h3r'.")
    (license license:expat)))

(define-public r-h3lib
  (package
    (name "r-h3lib")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h3lib" version))
       (sha256
        (base32 "1zrda5g2b50iz6qxk1dz18dnanp1dr6d5wldiwh1ap5qclz7w9b4"))))
    (properties `((upstream-name . "h3lib")))
    (build-system r-build-system)
    (home-page "https://github.com/symbolixau/h3lib")
    (synopsis "Exposes the 'Uber' 'H3' Library to R Packages")
    (description
     "H3 is a hexagonal hierarchical spatial index developed by Uber
<https://h3geo.org/>.  This package exposes the source code of H3 (written in
C') to routines that are callable through R'.")
    (license license:expat)))

(define-public r-h3jsr
  (package
    (name "r-h3jsr")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h3jsr" version))
       (sha256
        (base32 "04h905p3xpaswpx728kp7z6bgqlncgzikfv6njvgvzbhmpfn9fs8"))))
    (properties `((upstream-name . "h3jsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8 r-tidyr r-sf r-geojsonsf))
    (native-inputs (list r-knitr))
    (home-page "https://obrl-soil.github.io/h3jsr/")
    (synopsis "Access Uber's H3 Library")
    (description
     "This package provides access to Uber's H3 library for geospatial indexing via
its @code{JavaScript} transpile h3-js <https://github.com/uber/h3-js> and V8
<https://github.com/jeroen/v8>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-h2x2factorial
  (package
    (name "r-h2x2factorial")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "H2x2Factorial" version))
       (sha256
        (base32 "01if0ps43xhcw6q5khdbvjd0yvvhkcj4gvdx538g2kaxzi3lrj1z"))))
    (properties `((upstream-name . "H2x2Factorial")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=H2x2Factorial")
    (synopsis "Sample Size Calculation in Hierarchical 2x2 Factorial Trials")
    (description
     "This package implements the sample size methods for hierarchical 2x2 factorial
trials under two choices of effect estimands and a series of hypothesis tests
proposed in \"Sample size calculation in hierarchical 2x2 factorial trials with
unequal cluster sizes\" (under review), and provides the table and plot
generators for the sample size estimations.")
    (license license:lgpl2.1+)))

(define-public r-h2otools
  (package
    (name "r-h2otools")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h2otools" version))
       (sha256
        (base32 "105zc76yi03ib5l6366an472hnf3m0pk1mwghwn8pwi91pfybzzr"))))
    (properties `((upstream-name . "h2otools")))
    (build-system r-build-system)
    (propagated-inputs (list r-h2o r-curl r-boot))
    (home-page "https://github.com/haghish/h2otools")
    (synopsis "Machine Learning Model Evaluation for 'h2o' Package")
    (description
     "Several functions are provided that simplify using h2o package.  Currently, a
function for extracting the @code{AutoML} model parameter is provided, alongside
a function for computing F-Measure statistics at any given threshold.  For more
information about h2o package see <https://h2o.ai/>.")
    (license license:expat)))

(define-public r-h2o4gpu
  (package
    (name "r-h2o4gpu")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h2o4gpu" version))
       (sha256
        (base32 "004sskj3a1mzjfh86m0rq02z1f3kd6650bzv1d3j8pj0xdmqb86c"))))
    (properties `((upstream-name . "h2o4gpu")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/h2oai/h2o4gpu")
    (synopsis "Interface to 'H2O4GPU'")
    (description
     "Interface to H2O4GPU <https://github.com/h2oai/h2o4gpu>, a collection of GPU
solvers for machine learning algorithms.")
    (license license:asl2.0)))

(define-public r-h2o
  (package
    (name "r-h2o")
    (version "3.44.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h2o" version))
       (sha256
        (base32 "10hczpb53s9nvnj21fqp0nlvr9pa8lxgv97q75lfks0m5xn5za31"))))
    (properties `((upstream-name . "h2o")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rcurl r-jsonlite))
    (home-page "https://github.com/h2oai/h2o-3")
    (synopsis "R Interface for the 'H2O' Scalable Machine Learning Platform")
    (description
     "R interface for H2O', the scalable open source machine learning platform that
offers parallelized implementations of many supervised and unsupervised machine
learning algorithms such as Generalized Linear Models (GLM), Gradient Boosting
Machines (including XGBoost), Random Forests, Deep Neural Networks (Deep
Learning), Stacked Ensembles, Naive Bayes, Generalized Additive Models (GAM),
ANOVA GLM, Cox Proportional Hazards, K-Means, PCA, @code{ModelSelection},
Word2Vec, as well as a fully automatic machine learning algorithm (H2O
@code{AutoML}).")
    (license license:asl2.0)))

(define-public r-h0
  (package
    (name "r-h0")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "h0" version))
       (sha256
        (base32 "0nw671dgf50zqmw6j8znig6ksqf68hbshc8v87dcig70j1sqab4k"))))
    (properties `((upstream-name . "h0")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=h0")
    (synopsis
     "Robust Bayesian Meta-Analysis for Estimating the Hubble Constant via Time Delay Cosmography")
    (description
     "We provide a toolbox to conduct a Bayesian meta-analysis for estimating the
current expansion rate of the Universe, called the Hubble constant H0, via time
delay cosmography.  The input data are Fermat potential difference and time
delay estimates.  For a robust inference, we assume a Student's t error for
these inputs.  Given these inputs, the meta-analysis produces posterior samples
of the model parameters including the Hubble constant via Metropolis-Hastings
within Gibbs.  The package provides an option to implement repelling-attracting
Metropolis-Hastings within Gibbs in a case where the parameter space has
multiple modes.")
    (license license:gpl2)))

