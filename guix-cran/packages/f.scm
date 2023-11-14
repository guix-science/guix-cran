(define-module (guix-cran packages f)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages python)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages java)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages web)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages base)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages geo)
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
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-fy
  (package
    (name "r-fy")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fy" version))
       (sha256
        (base32 "1gbv2hvh3y9qdld660i250snwxn4irp41qrr3pc1nakbf5b9aqnz"))))
    (properties `((upstream-name . "fy")))
    (build-system r-build-system)
    (propagated-inputs (list r-hutils r-fastmatch r-data-table))
    (home-page "https://cran.r-project.org/package=fy")
    (synopsis "Utilities for Financial Years")
    (description
     "In Australia, a financial year (or fiscal year) is the period from 1 July to 30
June of the following calendar year.  As such, many databases need to represent
and validate financial years efficiently.  While the use of integer years with a
convention that they represent the year ending is common, it may lead to
ambiguity with calendar years.  On the other hand, string representations may be
too inefficient and do not easily admit arithmetic operations.  This package
tries to make validation of financial years quicker while retaining clarity.")
    (license license:gpl2)))

(define-public r-fxtwapls
  (package
    (name "r-fxtwapls")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fxTWAPLS" version))
       (sha256
        (base32 "1bxrwkf65qw3k6mqvp27lqw6i2r7bdbilnl9406k1nva353gcxxm"))))
    (properties `((upstream-name . "fxTWAPLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-progressr
                             r-mass
                             r-jops
                             r-ggplot2
                             r-geosphere
                             r-future
                             r-foreach
                             r-dofuture))
    (home-page "https://github.com/special-uor/fxTWAPLS/")
    (synopsis "An Improved Version of WA-PLS")
    (description
     "The goal of this package is to provide an improved version of WA-PLS (Weighted
Averaging Partial Least Squares) by including the tolerances of taxa and the
frequency of the sampled climate variable.  This package also provides a way of
leave-out cross-validation that removes both the test site and sites that are
both geographically close and climatically close for each cycle, to avoid the
risk of pseudo-replication.")
    (license license:gpl3)))

(define-public r-fxregime
  (package
    (name "r-fxregime")
    (version "1.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fxregime" version))
       (sha256
        (base32 "0ml1q0xp90jfng6a60pfkp6j7wajk6pz4p4wm08rfqikgsdvp0m4"))))
    (properties `((upstream-name . "fxregime")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-strucchange r-sandwich r-car))
    (home-page "https://cran.r-project.org/package=fxregime")
    (synopsis "Exchange Rate Regime Analysis")
    (description
     "Exchange rate regression and structural change tools for estimating, testing,
dating, and monitoring (de facto) exchange rate regimes.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fxl
  (package
    (name "r-fxl")
    (version "1.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fxl" version))
       (sha256
        (base32 "1c1cw1j1vz7my868ryg0r7zw655xbhk0za75pvd3mgfy0bs6600x"))))
    (properties `((upstream-name . "fxl")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-grimport))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fxl")
    (synopsis "'fxl' Single Case Design Charting Package")
    (description
     "The fxl Charting package is used to prepare and design single case design
figures that are typically prepared in spreadsheet software.  With fxl', there
is no need to leave the R environment to prepare these works.")
    (license license:gpl3+)))

(define-public r-fwsim
  (package
    (name "r-fwsim")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fwsim" version))
       (sha256
        (base32 "0fy87c1x5hihfcppv1pvk3b0pwl6ygqpka40x55gbpkgssdigb1l"))))
    (properties `((upstream-name . "fwsim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=fwsim")
    (synopsis "Fisher-Wright Population Simulation")
    (description
     "Simulates a population under the Fisher-Wright model (fixed or stochastic
population size) with a one-step neutral mutation process (stepwise mutation
model, logistic mutation model and exponential mutation model supported).  The
stochastic population sizes are random Poisson distributed and different kinds
of population growth are supported.  For the stepwise mutation model, it is
possible to specify locus and direction specific mutation rate (in terms of
upwards and downwards mutation rate).  Intermediate generations can be saved in
order to study e.g. drift.")
    (license license:gpl2)))

(define-public r-fwrgb
  (package
    (name "r-fwrgb")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FWRGB" version))
       (sha256
        (base32 "0wi1vkb8mmw9f8hzgp8cm6hy9nbglz0x8mllngdamhlvm35gr57d"))))
    (properties `((upstream-name . "FWRGB")))
    (build-system r-build-system)
    (propagated-inputs (list r-neuralnet r-imager r-e1071))
    (home-page "https://cran.r-project.org/package=FWRGB")
    (synopsis "Fresh Weight Determination from Visual Image of the Plant")
    (description
     "Fresh biomass determination is the key to evaluating crop genotypes response to
diverse input and stress conditions and forms the basis for calculating net
primary production.  However, as conventional phenotyping approaches for
measuring fresh biomass is time-consuming, laborious and destructive,
image-based phenotyping methods are being widely used now.  In the image-based
approach, the fresh weight of the above-ground part of the plant depends on the
projected area.  For determining the projected area, the visual image of the
plant is converted into the grayscale image by simply averaging the Red(R),
Green (G) and Blue (B) pixel values.  Grayscale image is then converted into a
binary image using Otsuâs thresholding method Otsu, N. (1979)
<doi:10.1109/TSMC.1979.4310076> to separate plant area from the background
(image segmentation).  The segmentation process was accomplished by selecting
the pixels with values over the threshold value belonging to the plant region
and other pixels to the background region.  The resulting binary image consists
of white and black pixels representing the plant and background regions.
Finally, the number of pixels inside the plant region was counted and converted
to square centimetres (cm2) using the reference object (any object whose actual
area is known previously) to get the projected area.  After that, the projected
area is used as input to the machine learning model (Linear Model, Artificial
Neural Network, and Support Vector Regression) to determine the plant's fresh
weight.")
    (license license:gpl3)))

(define-public r-fwlplot
  (package
    (name "r-fwlplot")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fwlplot" version))
       (sha256
        (base32 "1fi2ijfkpxfbwxfcyc5mk2c7mpj6z7lrwm8wlilk2g04y6jmw84l"))))
    (properties `((upstream-name . "fwlplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-fixest r-data-table))
    (home-page "https://cran.r-project.org/package=fwlplot")
    (synopsis "Scatter Plot After Residualizing Using 'fixest' Package")
    (description
     "This package creates a scatter plot after residualizing using a set of
covariates.  The residuals are calculated using the fixest package which allows
very fast estimation that scales.  Details of the (Yule-)Frisch-Waugh-Lovell
theorem is given in Basu (2023) <@code{arXiv:2307.00369>}.")
    (license license:expat)))

(define-public r-fwildclusterboot
  (package
    (name "r-fwildclusterboot")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fwildclusterboot" version))
       (sha256
        (base32 "0slm28pgvfsrsdvz2i1h231gkf4iq6gdlspyzppn8nwhngvic5hd"))))
    (properties `((upstream-name . "fwildclusterboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-summclust
                             r-rlang
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-mass
                             r-juliaconnector
                             r-gtools
                             r-generics
                             r-formula
                             r-dreamerr
                             r-dqrng
                             r-collapse))
    (native-inputs (list r-knitr))
    (home-page "https://s3alfisc.github.io/fwildclusterboot/")
    (synopsis "Fast Wild Cluster Bootstrap Inference for Linear Models")
    (description
     "Implementation of fast algorithms for wild cluster bootstrap inference developed
in Roodman et al (2019, STATA Journal, <doi:10.1177/1536867X19830877>) and
@code{MacKinnon} et al (2022), which makes it feasible to quickly calculate
bootstrap test statistics based on a large number of bootstrap draws even for
large samples.  Multiple bootstrap types as described in @code{MacKinnon},
Nielsen & Webb (2022) are supported.  Further, multiway clustering, regression
weights, bootstrap weights, fixed effects and subcluster bootstrapping are
supported.  Further, both restricted ('WCR') and unrestricted ('WCU') bootstrap
are supported.  Methods are provided for a variety of fitted models, including
lm()', feols() (from package fixest') and felm() (from package lfe').
Additionally implements a heteroskedasticity-robust ('HC1') wild bootstrap.
Last, the package provides an R binding to @code{WildBootTests.jl}', which
provides additional speed gains and functionality, including the WRE bootstrap
for instrumental variable models (based on models of type ivreg() from package
ivreg') and hypotheses with q > 1.")
    (license license:gpl3)))

(define-public r-fwdselect
  (package
    (name "r-fwdselect")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FWDselect" version))
       (sha256
        (base32 "0w0hkmhcz7h1lixk7p3yffbbalgxwh2lv463vqz361k80sri6wz7"))))
    (properties `((upstream-name . "FWDselect")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-cvtools))
    (home-page "http://cran.r-project.org/package=FWDselect")
    (synopsis "Selecting Variables in Regression Models")
    (description
     "This package provides a simple method to select the best model or best subset of
variables using different types of data (binary, Gaussian or Poisson) and
applying it in different contexts (parametric or non-parametric).")
    (license license:expat)))

(define-public r-fwb
  (package
    (name "r-fwb")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fwb" version))
       (sha256
        (base32 "1h6ydh9rzs44xr89995bj4z91n4vc2xa1gjkh3nfhzjk6cgnja02"))))
    (properties `((upstream-name . "fwb")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-pbapply r-chk))
    (home-page "https://github.com/ngreifer/fwb")
    (synopsis "Fractional Weighted Bootstrap")
    (description
     "An implementation of the fractional weighted bootstrap to be used as a drop-in
for functions in the boot package.  The fractional weighted bootstrap (also
known as the Bayesian bootstrap) involves drawing weights randomly that are
applied to the data rather than resampling units from the data.  See Xu et al.
(2020) <doi:10.1080/00031305.2020.1731599> for details.")
    (license license:gpl2+)))

(define-public r-fuzzywuzzyr
  (package
    (name "r-fuzzywuzzyr")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzywuzzyR" version))
       (sha256
        (base32 "1g73xivxyh5fvppccgnxhgar6jsl6zsr2djkg0bhh10i633l56ia"))))
    (properties `((upstream-name . "fuzzywuzzyR")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-reticulate r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/fuzzywuzzyR")
    (synopsis "Fuzzy String Matching")
    (description
     "Fuzzy string matching implementation of the fuzzywuzzy
<https://github.com/seatgeek/fuzzywuzzy> python package.  It uses the
Levenshtein Distance <https://en.wikipedia.org/wiki/Levenshtein_distance> to
calculate the differences between sequences.")
    (license license:gpl2)))

(define-public r-fuzzysts
  (package
    (name "r-fuzzysts")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzySTs" version))
       (sha256
        (base32 "0zs1pyn9apysspxa0glqc96h6npmvvhiqvqpcm0brslz0b6xnilp"))))
    (properties `((upstream-name . "FuzzySTs")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-fuzzynumbers))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FuzzySTs")
    (synopsis "Fuzzy Statistical Tools")
    (description
     "The main goal of this package is to present various fuzzy statistical tools.  It
intends to provide an implementation of the theoretical and empirical approaches
presented in the thesis entitled \"The signed distance measure in fuzzy
statistical analysis.  Some theoretical, empirical and programming advances\"
(Thesis to be published soon.  For the theoretical approaches, see Berkachy R.
and Donze L. (2019) <doi:10.1007/978-3-030-03368-2_1>.  For the empirical
approaches, see Berkachy R. and Donze L. (2016) <ISBN: 978-989-758-201-1>).
Important (non-exhaustive) implementation highlights of this package are as
follows: (1) a numerical procedure to estimate the fuzzy difference and the
fuzzy square. (2) two numerical methods of fuzzification. (3) a function
performing different possibilities of distances, including the signed distance
and the generalized signed distance for instance. (4) numerical estimations of
fuzzy statistical measures such as the variance, the moment, etc. (5) two
methods of estimation of the bootstrap distribution of the likelihood ratio in
the fuzzy context. (6) an estimation of a fuzzy confidence interval by the
likelihood ratio method. (7) testing fuzzy hypotheses and/or fuzzy data by fuzzy
confidence intervals in the Kwakernaak - Kruse and Meyer sense. (8) a general
method to estimate the fuzzy p-value with fuzzy hypotheses and/or fuzzy data.
(9) a method of estimation of global and individual evaluations of linguistic
questionnaires. (10) numerical estimations of multi-ways analysis of variance
models in the fuzzy context.  The unbalance in the considered designs are also
foreseen.")
    (license license:expat)))

(define-public r-fuzzystattraeoo
  (package
    (name "r-fuzzystattraeoo")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyStatTraEOO" version))
       (sha256
        (base32 "0jxjnmsznab0nf6nrjvdcy2gjmzn7fa0va993f7ylasr2pjawgsd"))))
    (properties `((upstream-name . "FuzzyStatTraEOO")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (home-page
     "https://bellman.ciencias.uniovi.es/smire+codire/FuzzyStatTraRpackage.html")
    (synopsis
     "Package 'FuzzyStatTra' in Encapsulated Object Oriented Programming")
    (description
     "The aim of the package is to contain the package @code{FuzzyStatTra} in
Encapsulated Object Oriented Programming using R6. @code{FuzzyStatTra} contains
Statistical Methods for Trapezoidal Fuzzy Numbers, whose aim is to provide some
basic functions for doing statistical analysis with trapezoidal fuzzy numbers.
For more details, you can visit the website of the SMIRE+@code{CoDiRE}
(Statistical Methods with Imprecise Random Elements and Comparison of
Distributions of Random Elements) Research Group
(<https://bellman.ciencias.uniovi.es/smire+codire/>).  The most related paper
can be found in References.  Now, those functions are organized in specific
classes and methods.  This object-based approach is an important step in making
statistical computing more accessible to users.")
    (license license:lgpl3+)))

(define-public r-fuzzystattra
  (package
    (name "r-fuzzystattra")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyStatTra" version))
       (sha256
        (base32 "1ijrlnlmq9d5ahgrpzba6kzkaq1zq59zqdgcizybsf9alsswcm00"))))
    (properties `((upstream-name . "FuzzyStatTra")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FuzzyStatTra")
    (synopsis "Statistical Methods for Trapezoidal Fuzzy Numbers")
    (description
     "The aim of the package is to provide some basic functions for doing statistics
with trapezoidal fuzzy numbers.  In particular, the package contains several
functions for simulating trapezoidal fuzzy numbers, as well as for calculating
some central tendency measures (mean and two types of median), some scale
measures (variance, ADD, MDD, Sn, Qn, Tn and some M-estimators) and one
diversity index and one inequality index.  Moreover, functions for calculating
the 1-norm distance, the mid/spr distance and the (phi,theta)-wabl/ldev/rdev
distance between fuzzy numbers are included, and a function to calculate the
value phi-wabl given a sample of trapezoidal fuzzy numbers.")
    (license license:gpl2+)))

(define-public r-fuzzystatprob
  (package
    (name "r-fuzzystatprob")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyStatProb" version))
       (sha256
        (base32 "1jpqb8xczi1d4g306vrwpi02f9h59aki1pgnckvfmiclr306prpb"))))
    (properties `((upstream-name . "FuzzyStatProb")))
    (build-system r-build-system)
    (propagated-inputs (list r-multinomialci r-fuzzynumbers r-deoptim))
    (native-inputs (list r-r-rsp))
    (home-page "http://decsai.ugr.es/~pjvi/r-packages.html")
    (synopsis
     "Fuzzy Stationary Probabilities from a Sequence of Observations of an Unknown Markov Chain")
    (description
     "An implementation of a method for computing fuzzy numbers representing
stationary probabilities of an unknown Markov chain, from which a sequence of
observations along time has been obtained.  The algorithm is based on the
proposal presented by James Buckley in his book on Fuzzy probabilities
(Springer, 2005), chapter 6.  Package @code{FuzzyNumbers} is used to represent
the output probabilities.")
    (license license:lgpl3+)))

(define-public r-fuzzysimres
  (package
    (name "r-fuzzysimres")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzySimRes" version))
       (sha256
        (base32 "0cwx5zfbbji5jy2hrrj5k6m0p8nr8ljficj5fjrzhjd9cj2smqwy"))))
    (properties `((upstream-name . "FuzzySimRes")))
    (build-system r-build-system)
    (propagated-inputs (list r-palasso r-fuzzynumbers))
    (home-page "https://cran.r-project.org/package=FuzzySimRes")
    (synopsis "Simulation and Resampling Methods for Epistemic Fuzzy Data")
    (description
     "Random simulations of fuzzy numbers are still a challenging problem.  The aim of
this package is to provide the respective procedures to simulate fuzzy random
variables, especially in the case of the piecewise linear fuzzy numbers (PLFNs,
see Coroianua et al. (2013) <doi:10.1016/j.fss.2013.02.005> for the further
details).  Additionally, the special resampling algorithms known as the
epistemic bootstrap are provided (see Grzegorzewski and Romaniuk (2022)
<doi:10.34768/amcs-2022-0021>, Grzegorzewski and Romaniuk (2022)
<doi:10.1007/978-3-031-08974-9_39>) together with the functions to apply
statistical tests and estimate various characteristics based on the epistemic
bootstrap.  The package also includes a real-life data set of epistemic fuzzy
triangular numbers.  The fuzzy numbers used in this package are consistent with
the @code{FuzzyNumbers} package.")
    (license license:gpl3)))

(define-public r-fuzzysim
  (package
    (name "r-fuzzysim")
    (version "4.10.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzySim" version))
       (sha256
        (base32 "1mqsy5mhq61yzpwbqawxgx58rv2ypi1acl56sn7xqkasrlcywgkq"))))
    (properties `((upstream-name . "fuzzySim")))
    (build-system r-build-system)
    (propagated-inputs (list r-modeva))
    (home-page "fuzzysim.r-forge.r-project.org")
    (synopsis "Fuzzy Similarity in Species Distributions")
    (description
     "This package provides functions to compute fuzzy versions of species occurrence
patterns based on presence-absence data (including inverse distance
interpolation, trend surface analysis, and prevalence-independent favourability
obtained from probability of presence), as well as pair-wise fuzzy similarity
(based on fuzzy logic versions of commonly used similarity indices) among those
occurrence patterns.  Includes also functions for model consensus and comparison
(overlap and fuzzy similarity, loss or gain), and for data preparation, such as
obtaining unique abbreviations of species names, cleaning and gridding
(thinning) point occurrence data onto raster maps, selecting absences under
specified criteria, converting species lists (long format) to presence-absence
tables (wide format), transposing part of a data frame, selecting relevant
variables for models, assessing the false discovery rate, or analysing and
dealing with multicollinearity.  Initially described in Barbosa (2015)
<doi:10.1111/2041-210X.12372>.")
    (license license:gpl3)))

(define-public r-fuzzyresampling
  (package
    (name "r-fuzzyresampling")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyResampling" version))
       (sha256
        (base32 "0kx3axm46i0jgv2x09qpggaayy5027yya16g8x1jfgrn9ya62357"))))
    (properties `((upstream-name . "FuzzyResampling")))
    (build-system r-build-system)
    (home-page "https://github.com/mroman-ibs/FuzzyResampling")
    (synopsis
     "Resampling Methods for Triangular and Trapezoidal Fuzzy Numbers")
    (description
     "The classical (i.e.  Efron's, see Efron and Tibshirani (1994,
ISBN:978-0412042317) \"An Introduction to the Bootstrap\") bootstrap is widely
used for both the real (i.e. \"crisp\") and fuzzy data.  The main aim of the
algorithms implemented in this package is to overcome a problem with repetition
of a few distinct values and to create fuzzy numbers, which are \"similar\" (but
not the same) to values from the initial sample.  To do this, different
characteristics of triangular/trapezoidal numbers are kept (like the value, the
ambiguity, etc., see Grzegorzewski et al. <doi:10.2991/eusflat-19.2019.68>,
Grzegorzewski et al. (2020) <doi:10.2991/ijcis.d.201012.003>, Grzegorzewski et
al. (2020) <doi:10.34768/amcs-2020-0022>, Grzegorzewski and Romaniuk (2022)
<doi:10.1007/978-3-030-95929-6_3>, Romaniuk and Hryniewicz (2019)
<doi:10.1007/s00500-018-3251-5>).  Some additional procedures related to these
resampling methods are also provided, like calculation of the Bertoluzza et
al.'s distance (aka the mid/spread distance, see Bertoluzza et al. (1995) \"On a
new class of distances between fuzzy numbers\") and estimation of the p-value of
the one- and two- sample bootstrapped test for the mean (see Lubiano et al.
(2016, <doi:10.1016/j.ejor.2015.11.016>)).  Additionally, there are procedures
which randomly generate trapezoidal fuzzy numbers using some well-known
statistical distributions.")
    (license license:gpl3)))

(define-public r-fuzzyreg
  (package
    (name "r-fuzzyreg")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzyreg" version))
       (sha256
        (base32 "056ryj4w26fb4fpy43fgvqs8ijcpm6v503pnzw73d8gxahwkvwl2"))))
    (properties `((upstream-name . "fuzzyreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-limsolve))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=fuzzyreg")
    (synopsis "Fuzzy Linear Regression")
    (description
     "Estimators for fuzzy linear regression.  The functions estimate parameters of
fuzzy linear regression models with crisp or fuzzy independent variables
(triangular fuzzy numbers are supported).  Implements multiple methods for
parameter estimation and algebraic operations with triangular fuzzy numbers.
Includes functions for summarising, printing and plotting the model fit.
Calculates predictions from the model and total error of fit.  Individual
methods are described in Diamond (1988) <doi:10.1016/0020-0255(88)90047-3>, Hung
& Yang (2006) <doi:10.1016/j.fss.2006.08.004>, Lee & Tanaka (1999)
<doi:10.15807/jorsj.42.98>, Nasrabadi, Nasrabadi & Nasrabady (2005)
<doi:10.1016/j.amc.2004.02.008>, Skrabanek, Marek & Pozdilkova (2021)
<doi:10.3390/math9060685>, Tanaka, Hayashi & Watada (1989)
<doi:10.1016/0377-2217(89)90431-1>, Zeng, Feng & Li (2017)
<doi:10.1016/j.asoc.2016.09.029>.")
    (license license:gpl3)))

(define-public r-fuzzyranktests
  (package
    (name "r-fuzzyranktests")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzyRankTests" version))
       (sha256
        (base32 "04841fh4nf7qriqk0b2ny943bji60bj42j8czg056d2dza4q4039"))))
    (properties `((upstream-name . "fuzzyRankTests")))
    (build-system r-build-system)
    (home-page "http://www.stat.umn.edu/geyer/fuzz/")
    (synopsis "Fuzzy Rank Tests and Confidence Intervals")
    (description
     "Does fuzzy tests and confidence intervals (following Geyer and Meeden,
Statistical Science, 2005, <doi:10.1214/088342305000000340>) for sign test and
Wilcoxon signed rank and rank sum tests.")
    (license license:expat)))

(define-public r-fuzzyr
  (package
    (name "r-fuzzyr")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyR" version))
       (sha256
        (base32 "0d0zf8diw7m10zfx0r5zg5arhf4a90sva77h6rvfywixldwrnk7s"))))
    (properties `((upstream-name . "FuzzyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-plyr))
    (home-page "https://www.lucidresearch.org/")
    (synopsis "Fuzzy Logic Toolkit for R")
    (description
     "Design and simulate fuzzy logic systems using Type-1 and Interval Type-2 Fuzzy
Logic.  This toolkit includes with graphical user interface (GUI) and an
adaptive neuro- fuzzy inference system (ANFIS).  This toolkit is a continuation
from the previous package ('@code{FuzzyToolkitUoN}').  Produced by the
Intelligent Modelling & Analysis Group (IMA) and Lab for @code{UnCertainty} In
Data and decision making (LUCID), University of Nottingham.  A big thank you to
the many people who have contributed to the development/evaluation of the
toolbox.  Please cite the toolbox and the corresponding paper
<doi:10.1109/FUZZ48607.2020.9177780> when using it.  More related papers can be
found in the NEWS.")
    (license license:gpl2+)))

(define-public r-fuzzyq
  (package
    (name "r-fuzzyq")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyQ" version))
       (sha256
        (base32 "1camdw7rnzf02nqjlmkr7mqpc38dafq9nw8x7pzwi1lh5xwv5dia"))))
    (properties `((upstream-name . "FuzzyQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-cluster))
    (home-page "https://ligophorus.github.io/FuzzyQ/")
    (synopsis "Fuzzy Quantification of Common and Rare Species")
    (description
     "Fuzzy clustering of species in an ecological community as common or rare based
on their abundance and occupancy.  It also includes functions to compute
confidence intervals of classification metrics and plot results.  See Balbuena
et al. (2020, <doi:10.1101/2020.08.12.247502>).")
    (license license:gpl3)))

(define-public r-fuzzypovertyr
  (package
    (name "r-fuzzypovertyr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyPovertyR" version))
       (sha256
        (base32 "0cs11xqnayvpqhy4srdmj9hl8rwz8360cbzb48mkcjrx8ah6njaw"))))
    (properties `((upstream-name . "FuzzyPovertyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ecp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FuzzyPovertyR")
    (synopsis "Estimation of Fuzzy Poverty Measures")
    (description
     "Estimates fuzzy measures of poverty and deprivation.  It also estimates the
sampling variance of these measures using bootstrap or jackknife repeated
replications.")
    (license license:expat)))

(define-public r-fuzzynumbers-ext-2
  (package
    (name "r-fuzzynumbers-ext-2")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyNumbers.Ext.2" version))
       (sha256
        (base32 "0gldq0bg1p1vmrn35prha44d7lyymz0jzshdyp2c5rx433mny7h5"))))
    (properties `((upstream-name . "FuzzyNumbers.Ext.2")))
    (build-system r-build-system)
    (propagated-inputs (list r-fuzzynumbers))
    (home-page "https://cran.r-project.org/package=FuzzyNumbers.Ext.2")
    (synopsis "Apply Two Fuzzy Numbers on a Monotone Function")
    (description
     "One can easily draw the membership function of f(x,y) by package
@code{FuzzyNumbers.Ext.2} in which f(.,.) is supposed monotone and x and y are
two fuzzy numbers.  This work is possible using function f2apply() which is an
extension of function fapply() from Package @code{FuzzyNumbers} for two-variable
monotone functions.  Moreover, this package has the ability of computing the
core, support and alpha-cuts of the fuzzy-valued final result.")
    (license license:lgpl3+)))

(define-public r-fuzzynumbers
  (package
    (name "r-fuzzynumbers")
    (version "0.4-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyNumbers" version))
       (sha256
        (base32 "12xficdsln31rzfziycw6z0912cgrq6mkvz3f1nbli9lzqrypxzl"))))
    (properties `((upstream-name . "FuzzyNumbers")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gagolews/FuzzyNumbers/")
    (synopsis "Tools to Deal with Fuzzy Numbers")
    (description
     "S4 classes and methods to deal with fuzzy numbers.  They allow for computing any
arithmetic operations (e.g., by using the Zadeh extension principle), performing
approximation of arbitrary fuzzy numbers by trapezoidal and piecewise linear
ones, preparing plots for publications, computing possibility and necessity
values for comparisons, etc.")
    (license license:lgpl3+)))

(define-public r-fuzzym
  (package
    (name "r-fuzzym")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyM" version))
       (sha256
        (base32 "12arx4flgykdkynnj341pgpd85k7xh6491bv9v9da63w6rp0kdm6"))))
    (properties `((upstream-name . "FuzzyM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FuzzyM")
    (synopsis "Fuzzy Cognitive Maps Operations")
    (description
     "This package contains functions for operations with fuzzy cognitive maps using
t-norm and s-norm operators.  T-norms and S-norms are described by Dov M. Gabbay
and George Metcalfe (2007) <doi:10.1007/s00153-007-0047-1>.  System indicators
are described by Cox, Earl D. (1995) <isbn:1886801010>.  Executable examples are
provided in the \"inst/examples\" folder.")
    (license license:expat)))

(define-public r-fuzzylp
  (package
    (name "r-fuzzylp")
    (version "0.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyLP" version))
       (sha256
        (base32 "1x584h5a82npxk1jhz0mnn8zkyfd8qvvvhkrv3bfi81w2l893hi7"))))
    (properties `((upstream-name . "FuzzyLP")))
    (build-system r-build-system)
    (propagated-inputs (list r-roi-plugin-glpk r-roi r-fuzzynumbers))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/olbapjose/FuzzyLP")
    (synopsis "Fuzzy Linear Programming")
    (description
     "This package provides methods to solve Fuzzy Linear Programming Problems with
fuzzy constraints (following different approaches proposed by Verdegay,
Zimmermann, Werners and Tanaka), fuzzy costs, and fuzzy technological matrix.")
    (license license:gpl3+)))

(define-public r-fuzzyjoin
  (package
    (name "r-fuzzyjoin")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzyjoin" version))
       (sha256
        (base32 "0s5rhqz8vih4za3a8k1k7i3gq8hj0w7bqnakw40k6mg87jvyzsj7"))))
    (properties `((upstream-name . "fuzzyjoin")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringdist
                             r-purrr
                             r-geosphere
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dgrtwo/fuzzyjoin")
    (synopsis "Join Tables Together on Inexact Matching")
    (description
     "Join tables together based not on whether columns match exactly, but whether
they are similar by some comparison.  Implementations include string distance
and regular expression matching.")
    (license license:expat)))

(define-public r-fuzzyforest
  (package
    (name "r-fuzzyforest")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzyforest" version))
       (sha256
        (base32 "0sb7qia01a5h6p12riq6vdq9likmqb6i949axsxszy5sf1zk50v5"))))
    (properties `((upstream-name . "fuzzyforest")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-mvtnorm r-ggplot2 r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=fuzzyforest")
    (synopsis "Fuzzy Forests")
    (description
     "Fuzzy forests, a new algorithm based on random forests, is designed to reduce
the bias seen in random forest feature selection caused by the presence of
correlated features.  Fuzzy forests uses recursive feature elimination random
forests to select features from separate blocks of correlated features where the
correlation within each block of features is high and the correlation between
blocks of features is low.  One final random forest is fit using the surviving
features.  This package fits random forests using the @code{randomForest}
package and allows for easy use of WGCNA to split features into distinct blocks.
 See D. Conn, Ngun, T., C. Ramirez, and G. Li (2019) <doi:10.18637/jss.v091.i09>
for further details.")
    (license license:gpl3)))

(define-public r-fuzzydbscan
  (package
    (name "r-fuzzydbscan")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyDBScan" version))
       (sha256
        (base32 "1a974s5j03caifcypk1c7la96754gh6n20xak7qaf9hrbm5i7vr9"))))
    (properties `((upstream-name . "FuzzyDBScan")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-ggplot2 r-dbscan r-data-table r-checkmate))
    (home-page "https://cran.r-project.org/package=FuzzyDBScan")
    (synopsis "Run and Predict a Fuzzy DBScan")
    (description
     "An interface for training Fuzzy DBScan with both Fuzzy Core and Fuzzy Border.
Therefore, the package provides a method to initialize and run the algorithm and
a function to predict new data w.t.h.  of R6'.  The package is build upon the
paper \"Fuzzy Extensions of the DBScan algorithm\" from Ienco and Bordogna (2018)
<doi:10.1007/s00500-016-2435-0>.  A predict function assigns new data according
to the same criteria as the algorithm itself.  However, the prediction function
freezes the algorithm to preserve the trained cluster structure and treats each
new prediction object individually.")
    (license license:lgpl3)))

(define-public r-fuzzyclass
  (package
    (name "r-fuzzyclass")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyClass" version))
       (sha256
        (base32 "02jnvzjp6aid6vznb4z2xlh6yn8qk1y9igsbvxyy09q7rvjq18db"))))
    (properties `((upstream-name . "FuzzyClass")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve
                             r-rdpack
                             r-purrr
                             r-mvtnorm
                             r-mass
                             r-foreach
                             r-envstats
                             r-e1071
                             r-doparallel
                             r-catools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leapigufpb/FuzzyClass")
    (synopsis "Fuzzy and Non-Fuzzy Classifiers")
    (description
     "It provides classifiers which can be used for discrete variables and for
continuous variables based on the Naive Bayes and Fuzzy Naive Bayes hypothesis.
Those methods were developed by researchers belong to the Laboratory of
Technologies for Virtual Teaching and Statistics (@code{LabTEVE}) and Laboratory
of Applied Statistics to Image Processing and Geoprocessing (LEAPIG) at Federal
University of Paraiba, Brazil'.  They considered some statistical distributions
and their papers were published in the scientific literature, as for instance,
the Gaussian classifier using fuzzy parameters, proposed by Moraes, Ferreira and
Machado (2021) <doi:10.1007/s40815-020-00936-4>.")
    (license license:expat)))

(define-public r-fuzzyahp
  (package
    (name "r-fuzzyahp")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuzzyAHP" version))
       (sha256
        (base32 "02sx32vlvnr0fzw8rf0f6hiikqn7xp1ibpqzxhxwv8yij2qkiyci"))))
    (properties `((upstream-name . "FuzzyAHP")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/JanCaha/FuzzyAHP/")
    (synopsis "(Fuzzy) AHP Calculation")
    (description
     "Calculation of AHP (Analytic Hierarchy Process -
<http://en.wikipedia.org/wiki/Analytic_hierarchy_process>) with classic and
fuzzy weights based on Saaty's pairwise comparison method for determination of
weights.")
    (license license:lgpl3+)))

(define-public r-fuzzy-p-value
  (package
    (name "r-fuzzy-p-value")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Fuzzy.p.value" version))
       (sha256
        (base32 "13h6armh9g57zqxyjqk6mq81jlfqxqrg2sb5p9rrhslka5m01zis"))))
    (properties `((upstream-name . "Fuzzy.p.value")))
    (build-system r-build-system)
    (propagated-inputs (list r-fuzzynumbers))
    (home-page "https://cran.r-project.org/package=Fuzzy.p.value")
    (synopsis "Computing Fuzzy p-Value")
    (description
     "The main goal of this package is drawing the membership function of the fuzzy
p-value which is defined as a fuzzy set on the unit interval for three following
problems: (1) testing crisp hypotheses based on fuzzy data, (2) testing fuzzy
hypotheses based on crisp data, and (3) testing fuzzy hypotheses based on fuzzy
data.  In all cases, the fuzziness of data or/and the fuzziness of the boundary
of null fuzzy hypothesis transported via the p-value function and causes to
produce the fuzzy p-value.  If the p-value is fuzzy, it is more appropriate to
consider a fuzzy significance level for the problem.  Therefore, the comparison
of the fuzzy p-value and the fuzzy significance level is evaluated by a fuzzy
ranking method in this package.")
    (license license:lgpl3+)))

(define-public r-fuzzr
  (package
    (name "r-fuzzr")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuzzr" version))
       (sha256
        (base32 "1cwq7a5j6lzrlz9dw3hsfap988rh1kkgf03yni7c33zl69xp5w77"))))
    (properties `((upstream-name . "fuzzr")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-progress r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mdlincoln/fuzzr")
    (synopsis "Fuzz-Test R Functions")
    (description
     "Test function arguments with a wide array of inputs, and produce reports
summarizing messages, warnings, errors, and returned values.")
    (license license:expat)))

(define-public r-futureheatwaves
  (package
    (name "r-futureheatwaves")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "futureheatwaves" version))
       (sha256
        (base32 "122b2z86bzxfch67y6cpq8wj62mw0dgkzbmnpwi247kdx7w5mw1f"))))
    (properties `((upstream-name . "futureheatwaves")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rcpp
                             r-leaflet
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=futureheatwaves")
    (synopsis
     "Find, Characterize, and Explore Extreme Events in Climate Projections")
    (description
     "Inputs a directory of climate projection files and, for each, identifies and
characterizes heat waves for specified study locations.  The definition used to
identify heat waves can be customized.  Heat wave characterizations include
several metrics of heat wave length, intensity, and timing in the year.  The
heat waves that are identified can be explored using a function to apply
user-created functions across all generated heat wave files.This work was
supported in part by grants from the National Institute of Environmental Health
Sciences (R00ES022631), the National Science Foundation (1331399), and the
Colorado State University Vice President for Research.")
    (license license:gpl2)))

(define-public r-future-tests
  (package
    (name "r-future-tests")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "future.tests" version))
       (sha256
        (base32 "10g1w99xqr7l0cn27642aphqcvfidgpas38f84r815yy6k1ryrlx"))))
    (properties `((upstream-name . "future.tests")))
    (build-system r-build-system)
    (propagated-inputs (list r-sessioninfo r-prettyunits r-future r-crayon
                             r-cli))
    (home-page "https://future.tests.futureverse.org")
    (synopsis "Test Suite for 'Future API' Backends")
    (description
     "Backends implementing the Future API, as defined by the future package, should
use the tests provided by this package to validate that they meet the minimal
requirements of the Future API. The tests can be performed easily from within R
or from outside of R from the command line making it straightforward to include
them in package tests and in Continuous Integration (CI) pipelines.")
    (license license:lgpl2.1+)))

(define-public r-future-batchtools
  (package
    (name "r-future-batchtools")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "future.batchtools" version))
       (sha256
        (base32 "1fr4w4czslx1cxlpj9xq5v7093xsrsgqlcgryy3vzgjgy0hyp40a"))))
    (properties `((upstream-name . "future.batchtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-parallelly r-future r-batchtools))
    (native-inputs (list r-r-rsp))
    (home-page "https://future.batchtools.futureverse.org")
    (synopsis
     "Future API for Parallel and Distributed Processing using 'batchtools'")
    (description
     "Implementation of the Future API on top of the batchtools package.  This allows
you to process futures, as defined by the future package, in parallel out of the
box, not only on your local machine or ad-hoc cluster of machines, but also via
high-performance compute ('HPC') job schedulers such as LSF', @code{OpenLava}',
Slurm', SGE', and TORQUE / PBS', e.g. y <- future.apply::future_lapply(files,
FUN = process)'.")
    (license license:lgpl2.1+)))

(define-public r-futility
  (package
    (name "r-futility")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "futility" version))
       (sha256
        (base32 "0zjb87brz7pkx3nq3q30y69cmcxpqqsra447p60qh7005kgr9vx4"))))
    (properties `((upstream-name . "futility")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mjuraska/futility")
    (synopsis
     "Interim Analysis of Operational Futility in Randomized Trials with Time-to-Event Endpoints and Fixed Follow-Up")
    (description
     "Randomized clinical trials commonly follow participants for a time-to-event
efficacy endpoint for a fixed period of time.  Consequently, at the time when
the last enrolled participant completes their follow-up, the number of observed
endpoints is a random variable.  Assuming data collected through an interim
timepoint, simulation-based estimation and inferential procedures in the
standard right-censored failure time analysis framework are conducted for the
distribution of the number of endpoints--in total as well as by treatment
arm--at the end of the follow-up period.  The future (i.e., yet unobserved)
enrollment, endpoint, and dropout times are generated according to mechanisms
specified in the @code{simTrial}() function in the @code{seqDesign} package.  A
Bayesian model for the endpoint rate, offering the option to specify a robust
mixture prior distribution, is used for generating future data (see the vignette
for details).  Inference can be restricted to participants who received
treatment according to the protocol and are observed to be at risk for the
endpoint at a specified timepoint.  Plotting functions are provided for
graphical display of results.")
    (license license:gpl2)))

(define-public r-fusionlearn
  (package
    (name "r-fusionlearn")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FusionLearn" version))
       (sha256
        (base32 "070prpxz1y5lzi4hjxbv4h3p4hskrm51d7p3yhhg71p8rw1mcla1"))))
    (properties `((upstream-name . "FusionLearn")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FusionLearn")
    (synopsis "Fusion Learning")
    (description
     "The fusion learning method uses a model selection algorithm to learn from
multiple data sets across different experimental platforms through group
penalization.  The responses of interest may include a mix of discrete and
continuous variables.  The responses may share the same set of predictors,
however, the models and parameters differ across different platforms.
Integrating information from different data sets can enhance the power of model
selection.  Package is based on Xin Gao, Raymond J. Carroll (2017)
<@code{arXiv:1610.00667v1>}.")
    (license license:gpl2+)))

(define-public r-fusionclust
  (package
    (name "r-fusionclust")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fusionclust" version))
       (sha256
        (base32 "1h03nlk4gnz4j5h2h5bxazkka2qq983h7nglm1ghzqvbqjk6sv37"))))
    (properties `((upstream-name . "fusionclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/trambakbanerjee/fusionclust")
    (synopsis "Clustering and Feature Screening using L1 Fusion Penalty")
    (description
     "This package provides the Big Merge Tracker and COSCI algorithms for convex
clustering and feature screening using L1 fusion penalty.  See Radchenko, P. and
Mukherjee, G. (2017) <doi:10.1111/rssb.12226> and T.Banerjee et al. (2017)
<doi:10.1016/j.jmva.2017.08.001> for more details.")
    (license license:gpl2+)))

(define-public r-fusionchartsr
  (package
    (name "r-fusionchartsr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fusionchartsR" version))
       (sha256
        (base32 "09l5kckgkp2l0zvfnqhbzy65bi23aavas9m74nddhjh6di8xndh8"))))
    (properties `((upstream-name . "fusionchartsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-magrittr r-jsonlite r-htmlwidgets))
    (home-page "https://cran.r-project.org/package=fusionchartsR")
    (synopsis "Embedding 'FusionCharts Javascript' Library in R")
    (description
     "@code{FusionCharts} provides awesome and minimalist functions to make beautiful
interactive charts <https://www.fusioncharts.com/>.")
    (license license:expat)))

(define-public r-fuser
  (package
    (name "r-fuser")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuser" version))
       (sha256
        (base32 "17lsfpd9hdichj3wflac896zyjbq7a8w2gmlgj8nbgg80f646fgr"))))
    (properties `((upstream-name . "fuser")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-rcppeigen
                             r-rcpp
                             r-matrix
                             r-irlba
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fuser")
    (synopsis "Fused Lasso for High-Dimensional Regression over Groups")
    (description
     "Enables high-dimensional penalized regression across heterogeneous subgroups.
Fusion penalties are used to share information about the linear parameters
across subgroups.  The underlying model is described in detail in Dondelinger
and Mukherjee (2017) <@code{arXiv:1611.00953>}.")
    (license license:gpl3)))

(define-public r-fusen
  (package
    (name "r-fusen")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fusen" version))
       (sha256
        (base32 "05i89hf2ac32cprgvlwazxj441jihx0lfghs59s2wgbjjw55wixr"))))
    (properties `((upstream-name . "fusen")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-usethis
                             r-tidyr
                             r-tibble
                             r-stringi
                             r-roxygen2
                             r-parsermd
                             r-magrittr
                             r-here
                             r-glue
                             r-devtools
                             r-desc
                             r-cli
                             r-attachment))
    (native-inputs (list r-knitr))
    (home-page "https://thinkr-open.github.io/fusen/")
    (synopsis "Build a Package from Rmarkdown Files")
    (description
     "Use Rmarkdown First method to build your package.  Start your package with
documentation, functions, examples and tests in the same unique file.
Everything can be set from the Rmarkdown template file provided in your project,
then inflated as a package.  Inflating the template copies the relevant chunks
and sections in the appropriate files required for package development.")
    (license license:expat)))

(define-public r-fusedmgm
  (package
    (name "r-fusedmgm")
    (version "0.1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fusedMGM" version))
       (sha256
        (base32 "126h8jvmx1y1n49p4s2h3qn7qfzf6q98k7b7rwjn6rn9hjvwd45j"))))
    (properties `((upstream-name . "fusedMGM")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots r-fastdummies r-bigmemory))
    (home-page "https://cran.r-project.org/package=fusedMGM")
    (synopsis "Implementation of Fused MGM to Infer 2-Class Networks")
    (description
     "Implementation of fused Markov graphical model (FMGM; Park and Won, 2022).  The
functions include building mixed graphical model (MGM) objects from data,
inference of networks using FMGM, stable edge-specific penalty selection
(@code{StEPS}) for the determination of penalization parameters, and the
visualization.  For details, please refer to Park and Won (2022)
<@code{arXiv:2208.14959>}.")
    (license license:expat)))

(define-public r-furniture
  (package
    (name "r-furniture")
    (version "1.9.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "furniture" version))
       (sha256
        (base32 "07ds1vk1bvv6027g2z93161g3pkdp9vj3prbkjbwkj392sc9rg04"))))
    (properties `((upstream-name . "furniture")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=furniture")
    (synopsis "Furniture for Quantitative Scientists")
    (description
     "This package contains four main functions (i.e., four pieces of furniture):
table1() which produces a well-formatted table of descriptive statistics common
as Table 1 in research articles, @code{tableC}() which produces a well-formatted
table of correlations, @code{tableF}() which provides frequency counts, and
washer() which is helpful in cleaning up the data.  These furniture-themed
functions are designed to simplify common tasks in quantitative analysis.  Other
data summary and cleaning tools are also available.")
    (license license:gpl3)))

(define-public r-funwithnumbers
  (package
    (name "r-funwithnumbers")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FunWithNumbers" version))
       (sha256
        (base32 "1342n3gsrlk70njj45vxpk5sl467pxmsixkmvi4s9aim6d9my7pn"))))
    (properties `((upstream-name . "FunWithNumbers")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmpfr r-gmp))
    (home-page "https://cran.r-project.org/package=FunWithNumbers")
    (synopsis "Fun with Fractions and Number Sequences")
    (description
     "This package provides a collection of toys to do things like generate Collatz
sequences, convert a fraction to \"continued fraction\" form, calculate a fraction
which is a close approximation to some value (e.g., 22/7 or 355/113 for pi), and
so on.")
    (license license:lgpl3)))

(define-public r-funtimes
  (package
    (name "r-funtimes")
    (version "9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funtimes" version))
       (sha256
        (base32 "0gz26djl534d42wxspg9hl0ndhzzhkr9d4vp87afqqg9401qcgcz"))))
    (properties `((upstream-name . "funtimes")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars
                             r-sandwich
                             r-rdpack
                             r-mlvar
                             r-lmtest
                             r-kendall
                             r-dbscan))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=funtimes")
    (synopsis "Functions for Time Series Analysis")
    (description
     "Nonparametric estimators and tests for time series analysis.  The functions use
bootstrap techniques and robust nonparametric difference-based estimators to
test for the presence of possibly non-monotonic trends and for synchronicity of
trends in multiple time series.")
    (license license:gpl2+)))

(define-public r-funta
  (package
    (name "r-funta")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FUNTA" version))
       (sha256
        (base32 "02yxz95s2hs26mfmgwhv5d54yyjz0aczjpnay8b4gpzbpd6aci61"))))
    (properties `((upstream-name . "FUNTA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FUNTA")
    (synopsis "Functional Tangential Angle Pseudo-Depth")
    (description
     "Computes the functional tangential angle pseudo-depth and its robustified
version from the paper by Kuhnt and Rehage (2016).  See Kuhnt, S.; Rehage, A.
(2016): An angle-based multivariate functional pseudo-depth for shape outlier
detection, JMVA 146, 325-340, <doi:10.1016/j.jmva.2015.10.016> for details.")
    (license license:gpl3)))

(define-public r-funstattest
  (package
    (name "r-funstattest")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funStatTest" version))
       (sha256
        (base32 "1dqp4yh01w8xdbjhjzxrx33w0hgxcm5a43r27q17m34hqiv33y34"))))
    (properties `((upstream-name . "funStatTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-pbapply
                             r-matrix
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-distr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://plmlab.math.cnrs.fr/gdurif/funStatTest/")
    (synopsis "Statistical Testing for Functional Data")
    (description
     "Implementation of two sample comparison procedures based on median-based
statistical tests for functional data, introduced in Smida et al (2022)
<doi:10.1080/10485252.2022.2064997>.  Other competitive state-of-the-art
approaches proposed by Chakraborty and Chaudhuri (2015)
<doi:10.1093/biomet/asu072>, Horvath et al (2013)
<doi:10.1111/j.1467-9868.2012.01032.x> or Cuevas et al (2004)
<doi:10.1016/j.csda.2003.10.021> are also included in the package, as well as
procedures to run test result comparisons and power analysis using simulations.")
    (license license:agpl3+)))

(define-public r-funspotr
  (package
    (name "r-funspotr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funspotr" version))
       (sha256
        (base32 "12kzir5s6dr39skmb4c20bprbm57qcbdkdwxb9708kfbwkgwc9m8"))))
    (properties `((upstream-name . "funspotr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-lifecycle
                             r-knitr
                             r-import
                             r-httr
                             r-here
                             r-glue
                             r-fs
                             r-formatr
                             r-dplyr
                             r-callr))
    (home-page "https://brshallo.github.io/funspotr/")
    (synopsis "Spot R Functions & Packages")
    (description
     "Helpers for parsing out the R functions and packages used in R scripts and
notebooks.")
    (license license:expat)))

(define-public r-funspace
  (package
    (name "r-funspace")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funspace" version))
       (sha256
        (base32 "10yvjx5iydpkn3pjh7f874sjcxg5fzadan7j0rdczm2l64iy6a5m"))))
    (properties `((upstream-name . "funspace")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-phytools
                             r-paran
                             r-missforest
                             r-mgcv
                             r-mass
                             r-ks
                             r-ape
                             r-ade4))
    (home-page "https://cran.r-project.org/package=funspace")
    (synopsis "Creating and Representing Functional Trait Spaces")
    (description
     "Estimation of functional spaces based on traits of organisms.  The package
includes functions to impute missing trait values (with or without considering
phylogenetic information), and to create, represent and analyse two dimensional
functional spaces based on principal components analysis, other ordination
methods, or raw traits.  It also allows for mapping a third variable onto the
functional space.  See Carmona et al. (2021) <doi:10.1038/s41586-021-03871-y>,
Puglielli et al. (2021) <doi:10.1111/nph.16952>, Carmona et al. (2021)
<doi:10.1126/sciadv.abf2675>, Carmona et al. (2019) <doi:10.1002/ecy.2876> for
more information.")
    (license license:gpl3)))

(define-public r-funreg
  (package
    (name "r-funreg")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funreg" version))
       (sha256
        (base32 "0dagzz5pl16l2jkkj11z41y68s75jxmyl46csda6vzlgjc7n4ji8"))))
    (properties `((upstream-name . "funreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mgcv r-mass))
    (home-page "https://cran.r-project.org/package=funreg")
    (synopsis "Functional Regression for Irregularly Timed Data")
    (description
     "This package performs functional regression, and some related approaches, for
intensive longitudinal data (see the book by Walls & Schafer, 2006, Models for
Intensive Longitudinal Data, Oxford) when such data is not necessarily observed
on an equally spaced grid of times.  The approach generally follows the ideas of
Goldsmith, Bobb, Crainiceanu, Caffo, and Reich
(2011)<DOI:10.1198/jcgs.2010.10007> and the approach taken in their sample code,
but with some modifications to make it more feasible to use with long rather
than wide, non-rectangular longitudinal datasets with unequal and potentially
random measurement times.  It also allows easy plotting of the correlation
between the smoothed covariate and the outcome as a function of time, which can
add additional insights on how to interpret a functional regression.
Additionally, it also provides several permutation tests for the significance of
the functional predictor.  The heuristic interpretation of ``time is used to
describe the index of the functional predictor, but the same methods can equally
be used for another unidimensional continuous index, such as space along a
north-south axis.  Note that most of the functionality of this package has been
superseded by added features after 2016 in the pfr function by Jonathan Gellar,
Mathew W. @code{McLean}, Jeff Goldsmith, and Fabian Scheipl, in the refund
package built by Jeff Goldsmith and co-authors and maintained by Julia Wrobel.
The development of the funreg package in 2015 and 2016 was part of a research
project supported by Award R03 CA171809-01 from the National Cancer Institute
and Award P50 DA010075 from the National Institute on Drug Abuse.  The content
is solely the responsibility of the authors and does not necessarily represent
the official views of the National Institute on Drug Abuse, the National Cancer
Institute, or the National Institutes of Health.")
    (license license:gpl2+)))

(define-public r-funrar
  (package
    (name "r-funrar")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funrar" version))
       (sha256
        (base32 "1c9mjbl8g0w7bk7kkms14dyq7yi4c8id4ln29khfabim61dapmqd"))))
    (properties `((upstream-name . "funrar")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://rekyt.github.io/funrar/")
    (synopsis "Functional Rarity Indices Computation")
    (description
     "Computes functional rarity indices as proposed by Violle et al. (2017)
<doi:10.1016/j.tree.2017.02.002>.  Various indices can be computed using both
regional and local information.  Functional Rarity combines both the functional
aspect of rarity as well as the extent aspect of rarity.  funrar is presented in
@code{GreniÃ©} et al. (2017) <doi:10.1111/ddi.12629>.")
    (license license:gpl2+)))

(define-public r-funr
  (package
    (name "r-funr")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funr" version))
       (sha256
        (base32 "11mjd1ba9kwawh7k5py54mkq4g1df79d7qivan8fj11qfwfzm679"))))
    (properties `((upstream-name . "funr")))
    (build-system r-build-system)
    (home-page "https://github.com/sahilseth/funr")
    (synopsis "Simple Utility Providing Terminal Access to all R Functions")
    (description
     "This package provides a small utility which wraps Rscript and provides access to
all R functions from the shell.")
    (license license:expat)))

(define-public r-funprog
  (package
    (name "r-funprog")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funprog" version))
       (sha256
        (base32 "1n064gf03z70iapwscrrzhl71qh7cgnb3ch1r04h3b944b4yiain"))))
    (properties `((upstream-name . "funprog")))
    (build-system r-build-system)
    (home-page "https://py_b.gitlab.io/funprog")
    (synopsis "Functional Programming")
    (description
     "High-order functions for data manipulation : sort or group data, given one or
more auxiliary functions.  Functions are inspired by other pure functional
programming languages ('Haskell mainly).  The package also provides built-in
function operators for creating compact anonymous functions, as well as the
possibility to use the purrr package syntax.")
    (license license:gpl2)))

(define-public r-funpca
  (package
    (name "r-funpca")
    (version "9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funpca" version))
       (sha256
        (base32 "09xdqlma9ywjj8zbj7jjjfbh0vydvni65xgdjymchl0zfhfw8ihl"))))
    (properties `((upstream-name . "funpca")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-mass r-fda r-brobdingnag))
    (home-page "https://cran.r-project.org/package=funpca")
    (synopsis "Functional Principal Component Analysis")
    (description
     "Functional principal component analysis under the Linear Mixed Models
representation of smoothing splines.  The method utilizes the Demmler-Reinsch
basis and assumes error independence.  For more details see: F. Rosales (2016)
<https://ediss.uni-goettingen.de/handle/11858/00-1735-0000-0028-87F9-6>.")
    (license license:gpl2)))

(define-public r-funnelr
  (package
    (name "r-funnelr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funnelR" version))
       (sha256
        (base32 "143lb048krgh8rkkz6sm8h464kdy62w29fvvyar795vqi10bb5fy"))))
    (properties `((upstream-name . "funnelR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://matt-kumar.shinyapps.io/funnel/")
    (synopsis "Funnel Plots for Proportion Data")
    (description
     "This package provides a set of simplified functions for creating funnel plots
for proportion data.  This package supports user defined benchmarks, confidence
limits and estimation methods (i.e.  exact or approximate) based on
Spiegelhalter (2005) <doi:10.1002/sim.1970>.  Additional routines for returning
scored unit level data according to a set of specifications is also implemented
for convenience.  Specifically, both a categorical and a continuous score
variable is returned to the sample data frame, which identifies which
observations are deemed extreme or in control.  Typically, such variables are
useful as stratifications or covariates in further exploratory analyses.
Lastly, the plotting routine returns a base funnel plot ('ggplot2'), which can
also be tailored.")
    (license license:gpl3)))

(define-public r-funnelplotr
  (package
    (name "r-funnelplotr")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FunnelPlotR" version))
       (sha256
        (base32 "0lsbxl4ilgszd3q8h00skbnl36q47ghi7afbcmbjqdqzkpl8yfig"))))
    (properties `((upstream-name . "FunnelPlotR")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-ggrepel r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://nhs-r-community.github.io/FunnelPlotR/")
    (synopsis "Funnel Plots for Comparing Institutional Performance")
    (description
     "An implementation of methods presented by Spiegelhalter (2005)
<doi:10.1002/sim.1970> Funnel plots for comparing institutional performance, for
standardised ratios, ratios of counts and proportions with additive
overdispersion adjustment.")
    (license license:expat)))

(define-public r-funneljoin
  (package
    (name "r-funneljoin")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funneljoin" version))
       (sha256
        (base32 "03r03ja0081cn9yd1ib5crj7rsyrccnlqqazgy6jmi6qvwlikrhw"))))
    (properties `((upstream-name . "funneljoin")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-forcats
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=funneljoin")
    (synopsis "Time-Based Joins to Analyze Sequences of Events")
    (description
     "Time-based joins to analyze sequence of events, both in memory and out of
memory.  after_join() joins two tables of events, while funnel_start() and
funnel_step() join events in the same table.  With the type argument, you can
switch between different funnel types, like first-first and last-firstafter.")
    (license license:expat)))

(define-public r-funmediation
  (package
    (name "r-funmediation")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funmediation" version))
       (sha256
        (base32 "13sa284xmi4bjsdkmcd69sn2vw8ncfn5kpk0aznjl9gi6j33cmi8"))))
    (properties `((upstream-name . "funmediation")))
    (build-system r-build-system)
    (propagated-inputs (list r-tvem r-refund r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=funmediation")
    (synopsis "Functional Mediation for a Distal Outcome")
    (description
     "Fits a functional mediation model with a scalar distal outcome.  The method is
described in detail by Coffman, Dziak, Litson, Chakraborti, Piper & Li (2021)
<@code{arXiv:2112.03960>}.  The model is similar to that of Lindquist (2012)
<doi:10.1080/01621459.2012.695640> although allowing a binary outcome as an
alternative to a numerical outcome.  The current version is a minor bug fix in
the vignette.  The development of this package was part of a research project
supported by National Institutes of Health grants P50 DA039838 from the National
Institute of Drug Abuse and 1R01 CA229542-01 from the National Cancer Institute
and the NIH Office of Behavioral and Social Science Research.  Content is solely
the responsibility of the authors and does not necessarily represent the
official views of the funding institutions mentioned above.  This software is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE. See the GNU General Public License for more details.")
    (license license:gpl2+)))

(define-public r-funlbm
  (package
    (name "r-funlbm")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funLBM" version))
       (sha256
        (base32 "0aa9h6nbxbvd6iq4q00rndhvb6sq79lpdgr3zwz0lcgjx6p56s5g"))))
    (properties `((upstream-name . "funLBM")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-funfem r-fda r-abind))
    (home-page "https://cran.r-project.org/package=funLBM")
    (synopsis "Model-Based Co-Clustering of Functional Data")
    (description
     "The @code{funLBM} algorithm allows to simultaneously cluster the rows and the
columns of a data matrix where each entry of the matrix is a function or a time
series.")
    (license license:gpl2+)))

(define-public r-funkyheatmap
  (package
    (name "r-funkyheatmap")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funkyheatmap" version))
       (sha256
        (base32 "1rgb49pzhz91qlw75zp0bi231nc9frf1wrp1xd22hpydccklvq6r"))))
    (properties `((upstream-name . "funkyheatmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rdpack
                             r-rcolorbrewer
                             r-purrr
                             r-patchwork
                             r-jsonlite
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-cowplot
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://funkyheatmap.github.io/funkyheatmap/")
    (synopsis "Generating Funky Heatmaps for Data Frames")
    (description
     "Allows generating heatmap-like visualisations for benchmark data frames.  Funky
heatmaps can be fine-tuned by providing annotations of the columns and rows,
which allows assigning multiple palettes or geometries or grouping rows and
columns together in categories.  Saelens et al. (2019)
<doi:10.1038/s41587-019-0071-9>.")
    (license license:expat)))

(define-public r-funkycells
  (package
    (name "r-funkycells")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funkycells" version))
       (sha256
        (base32 "1pk0m25z4d9h7qqxj87scflbcs2sw4xngj7c0dvxd0y11zb4hs7h"))))
    (properties `((upstream-name . "funkycells")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-spatstat-geom
                             r-spatstat-explore
                             r-rpart
                             r-ggplot2
                             r-fda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jrvanderdoes/funkycells")
    (synopsis "Functional Data Analysis for Multiplexed Cell Images")
    (description
     "Compare variables of interest between (potentially large numbers of) spatial
interactions and meta-variables.  Spatial variables are summarized using K, or
other, functions, and projected for use in a modified random forest model.  The
model allows comparison of functional and non-functional variables to each other
and to noise, giving statistical significance to the results.  Included are
preparation, modeling, and interpreting tools along with example datasets, as
described in @code{VanderDoes} et al., (2023) <doi:10.1101/2023.07.18.549619>.")
    (license license:gpl3+)))

(define-public r-funitroots
  (package
    (name "r-funitroots")
    (version "4021.80")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fUnitRoots" version))
       (sha256
        (base32 "1ycsa5mw43mdrp4xb39j8n0c393qmmnyc7ncbkcjgyms2xk8fhjh"))))
    (properties `((upstream-name . "fUnitRoots")))
    (build-system r-build-system)
    (propagated-inputs (list r-urca r-timeseries r-fbasics))
    (native-inputs (list gfortran))
    (home-page "https://www.rmetrics.org")
    (synopsis "Rmetrics - Modelling Trends and Unit Roots")
    (description
     "This package provides four addons for analyzing trends and unit roots in
financial time series: (i) functions for the density and probability of the
augmented Dickey-Fuller Test, (ii) functions for the density and probability of
@code{MacKinnon's} unit root test statistics, (iii) reimplementations for the
ADF and @code{MacKinnon} Test, and (iv) an urca Unit Root Test Interface for
Pfaff's unit root test suite.")
    (license license:gpl2+)))

(define-public r-funique
  (package
    (name "r-funique")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funique" version))
       (sha256
        (base32 "0p9k4nxjns1xid9vmslkaap0hm6yq6pbyvylgygd808if4q1z8k6"))))
    (properties `((upstream-name . "funique")))
    (build-system r-build-system)
    (home-page "https://github.com/mkearney/funique")
    (synopsis "Faster Unique Function")
    (description
     "Similar to base's unique function, only optimized for working with data frames,
especially those that contain date-time columns.")
    (license license:expat)))

(define-public r-fungp
  (package
    (name "r-fungp")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funGp" version))
       (sha256
        (base32 "1r648syb2l8n53if3cww5jpyl3rrhg36q0fldmsp1nb1xhqqk6vg"))))
    (properties `((upstream-name . "funGp")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-progressr
                             r-microbenchmark
                             r-knitr
                             r-future
                             r-foreach
                             r-dorng
                             r-dofuture))
    (home-page "https://djbetancourt-gh.github.io/funGp/")
    (synopsis "Gaussian Process Models for Scalar and Functional Inputs")
    (description
     "Construction and smart selection of Gaussian process models for analysis of
computer experiments with emphasis on treatment of functional inputs that are
regularly sampled.  This package offers: (i) flexible modeling of
functional-input regression problems through the fairly general Gaussian process
model; (ii) built-in dimension reduction for functional inputs; (iii) heuristic
optimization of the structural parameters of the model (e.g., active inputs,
kernel function, type of distance).  Metamodeling background is provided in
Betancourt et al. (2020) <doi:10.1016/j.ress.2020.106870>.  The algorithm for
structural parameter optimization is described in
<https://hal.archives-ouvertes.fr/hal-02532713>.")
    (license license:gpl3)))

(define-public r-fungible
  (package
    (name "r-fungible")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fungible" version))
       (sha256
        (base32 "05yc3g53mpi3ifxqy0r0zaphsb7k16yxhjbrzg6n6wc5mkh2aywp"))))
    (properties `((upstream-name . "fungible")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-rcsdp
                             r-pbmcapply
                             r-nleqslv
                             r-mvtnorm
                             r-mass
                             r-lattice
                             r-gparotation
                             r-deoptim
                             r-cvxr
                             r-clue))
    (home-page "https://cran.r-project.org/package=fungible")
    (synopsis "Psychometric Functions from the Waller Lab")
    (description
     "Computes fungible coefficients and Monte Carlo data.  Underlying theory for
these functions is described in the following publications: Waller, N. (2008).
Fungible Weights in Multiple Regression.  Psychometrika, 73(4), 691-703,
<DOI:10.1007/s11336-008-9066-z>.  Waller, N. & Jones, J. (2009).  Locating the
Extrema of Fungible Regression Weights.  Psychometrika, 74(4), 589-602,
<DOI:10.1007/s11336-008-9087-7>.  Waller, N. G. (2016).  Fungible Correlation
Matrices: A Method for Generating Nonsingular, Singular, and Improper
Correlation Matrices for Monte Carlo Research.  Multivariate Behavioral
Research, 51(4), 554-568, <DOI:10.1080/00273171.2016.1178566>.  Jones, J. A. &
Waller, N. G. (2015).  The normal-theory and asymptotic distribution-free (ADF)
covariance matrix of standardized regression coefficients: theoretical
extensions and finite sample behavior.  Psychometrika, 80, 365-378,
<DOI:10.1007/s11336-013-9380-y>.  Waller, N. G. (2018).  Direct Schmid-Leiman
transformations and rank-deficient loadings matrices.  Psychometrika, 83,
858-870. <DOI:10.1007/s11336-017-9599-0>.")
    (license license:gpl2+)))

(define-public r-funfem
  (package
    (name "r-funfem")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funFEM" version))
       (sha256
        (base32 "17pw743qnljwasj4cg8m8sg9j6piy7g69jr57aqmbizlfdqvvl05"))))
    (properties `((upstream-name . "funFEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-fda r-elasticnet))
    (home-page "https://cran.r-project.org/package=funFEM")
    (synopsis "Clustering in the Discriminative Functional Subspace")
    (description
     "The @code{funFEM} algorithm (Bouveyron et al., 2014) allows to cluster
functional data by modeling the curves within a common and discriminative
functional subspace.")
    (license license:gpl2)))

(define-public r-fundiversity
  (package
    (name "r-fundiversity")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fundiversity" version))
       (sha256
        (base32 "1wp2v7bd1vc8gs9g41s77pazkrv3mdw2m3pgjr7k6wdch0a9qhx2"))))
    (properties `((upstream-name . "fundiversity")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-matrix r-geometry r-future-apply))
    (native-inputs (list r-knitr))
    (home-page "https://funecology.github.io/fundiversity/")
    (synopsis "Easy Computation of Functional Diversity Indices")
    (description
     "Computes six functional diversity indices.  These are namely, Functional
Divergence (FDiv), Function Evenness (FEve), Functional Richness (FRic),
Functional Richness intersections (FRic_intersect), Functional Dispersion
(FDis), and Rao's entropy (Q) (reviewed in @code{VillÃ©ger} et al.  2008
<doi:10.1890/07-1206.1>).  Provides efficient, modular, and parallel functions
to compute functional diversity indices (preprint: <doi:10.32942/osf.io/dg7hw>).")
    (license license:gpl3)))

(define-public r-fundata
  (package
    (name "r-fundata")
    (version "1.3-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funData" version))
       (sha256
        (base32 "146mnv09mbjr7vwvwlds1jc91vzbj7df0kb70qmiav0a8bvslngi"))))
    (properties `((upstream-name . "funData")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-fields r-abind))
    (home-page "https://github.com/ClaraHapp/funData")
    (synopsis "An S4 Class for Functional Data")
    (description
     "S4 classes for univariate and multivariate functional data with utility
functions.  See <doi:10.18637/jss.v093.i05> for a detailed description of the
package functionalities and its interplay with the MFPCA package for
multivariate functional principal component analysis
<https://CRAN.R-project.org/package=MFPCA>.")
    (license license:gpl2)))

(define-public r-functiondepends
  (package
    (name "r-functiondepends")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "functiondepends" version))
       (sha256
        (base32 "0p831i8l81dbrncmr69024gm5g14p0xiv7li0ljdlqnrbc0fj64n"))))
    (properties `((upstream-name . "functiondepends")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=functiondepends")
    (synopsis "Find Functions and their Dependencies")
    (description
     "Find functions in an unstructured directory and explore their dependencies.
Sourcing of R source files is performed without side-effects: from R scripts
that have executable code and function definitions only functions are sourced.")
    (license license:expat)))

(define-public r-functional
  (package
    (name "r-functional")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "functional" version))
       (sha256
        (base32 "120qq9apg6bf39n9vnp68db5rdhwvnj2vi12a8j8243vq8kqxdqr"))))
    (properties `((upstream-name . "functional")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=functional")
    (synopsis "Curry, Compose, and other higher-order functions")
    (description "Curry, Compose, and other higher-order functions")
    (license license:gpl2+)))

(define-public r-functansnp
  (package
    (name "r-functansnp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FunctanSNP" version))
       (sha256
        (base32 "1f1zdwr9pmpscb8va9gd7yl0vyxmv0hy6swfrh7074whvs0dkbn7"))))
    (properties `((upstream-name . "FunctanSNP")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass
                             r-lava
                             r-glmnet
                             r-fundata
                             r-fda
                             r-caret))
    (home-page "https://cran.r-project.org/package=FunctanSNP")
    (synopsis "Functional Analysis (with Interactions) for Dense SNP Data")
    (description
     "An implementation of revised functional regression models for multiple genetic
variation data, such as single nucleotide polymorphism (SNP) data, which
provides revised functional linear regression models, partially functional
interaction regression analysis with penalty-based techniques and corresponding
drawing functions, etc.(Ruzong Fan, Yifan Wang, James L. Mills, Alexander F.
Wilson, Joan E. Bailey-Wilson, and Momiao Xiong (2013)
<doi:10.1002/gepi.21757>).")
    (license license:gpl2+)))

(define-public r-funcnn
  (package
    (name "r-funcnn")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuncNN" version))
       (sha256
        (base32 "0kcr7c54igzi0imp8w9a0mnrqaa2qcls9777scsjz5sbcxdy3if3"))))
    (properties `((upstream-name . "FuncNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorflow
                             r-reshape2
                             r-pbapply
                             r-matrix
                             r-keras
                             r-ggpubr
                             r-ggplot2
                             r-foreach
                             r-flux
                             r-fda-usc
                             r-fda
                             r-doparallel
                             r-caret))
    (home-page "https://arxiv.org/abs/2006.09590")
    (synopsis "Functional Neural Networks")
    (description
     "This package provides a collection of functions which fit functional neural
network models.  In other words, this package will allow users to build deep
learning models that have either functional or scalar responses paired with
functional and scalar covariates.  We implement the theoretical discussion found
in Thind, Multani and Cao (2020) <@code{arXiv:2006.09590>} through the help of a
main fitting and prediction function as well as a number of helper functions to
assist with cross-validation, tuning, and the display of estimated functional
weights.")
    (license license:gpl3)))

(define-public r-funcmap
  (package
    (name "r-funcmap")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuncMap" version))
       (sha256
        (base32 "0iaay6qz9a2s77xjfpp7wm37y7xwnvmlw6s5k5riccmqzc6dcjs7"))))
    (properties `((upstream-name . "FuncMap")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvbutils))
    (home-page "https://cran.r-project.org/package=FuncMap")
    (synopsis "Hive Plots of R Package Function Calls")
    (description
     "Analyzes the function calls in an R package and creates a hive plot of the
calls, dividing them among functions that only make outgoing calls (sources),
functions that have only incoming calls (sinks), and those that have both
incoming calls and make outgoing calls (managers).  Function calls can be mapped
by their absolute numbers, their normalized absolute numbers, or their rank.
@code{FuncMap} should be useful for comparing packages at a high level for their
overall design.  Plus, it's just plain fun.  The hive plot concept was developed
by Martin Krzywinski (www.hiveplot.com) and inspired this package.  Note: this
package is maintained for historical reasons. @code{HiveR} is a full package for
creating hive plots.")
    (license license:gpl3)))

(define-public r-funchisq
  (package
    (name "r-funchisq")
    (version "2.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FunChisq" version))
       (sha256
        (base32 "091arn9d42zsa7ky21k77ak0qirz0x7nai72s54mi70nyjn173dk"))))
    (properties `((upstream-name . "FunChisq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpp r-dqrng r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://www.cs.nmsu.edu/~joemsong/publications/")
    (synopsis "Model-Free Functional Chi-Squared and Exact Tests")
    (description
     "Statistical hypothesis testing methods for inferring model-free functional
dependency using asymptotic chi-squared or exact distributions.  Functional test
statistics are asymmetric and functionally optimal, unique from other related
statistics.  Tests in this package reveal evidence for causality based on the
causality-by- functionality principle.  They include asymptotic functional
chi-squared tests (Zhang & Song 2013) <@code{arXiv:1311.2707>}, an adapted
functional chi-squared test (Kumar & Song 2022)
<doi:10.1093/bioinformatics/btac206>, and an exact functional test (Zhong & Song
2019) <doi:10.1109/TCBB.2018.2809743> (Nguyen et al.  2020)
<doi:10.24963/ijcai.2020/372>.  The normalized functional chi-squared test was
used by Best Performer NMSU@code{SongLab} in HPN-DREAM (DREAM8) Breast Cancer
Network Inference Challenges (Hill et al.  2016) <doi:10.1038/nmeth.3773>.  A
function index (Zhong & Song 2019) <doi:10.1186/s12920-019-0565-9> (Kumar et al.
 2018) <doi:10.1109/BIBM.2018.8621502> derived from the functional test
statistic offers a new effect size measure for the strength of functional
dependency, a better alternative to conditional entropy in many aspects.  For
continuous data, these tests offer an advantage over regression analysis when a
parametric functional form cannot be assumed; for categorical data, they provide
a novel means to assess directional dependency not possible with symmetrical
Pearson's chi-squared or Fisher's exact tests.")
    (license license:lgpl3+)))

(define-public r-funchir
  (package
    (name "r-funchir")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funchir" version))
       (sha256
        (base32 "1a5nwqnnv0bn2wrw4lbnwbxkb9xr273sq8m8lnv8wy7wzfyfjaxz"))))
    (properties `((upstream-name . "funchir")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/MichaelChirico/funchir")
    (synopsis "Convenience Functions by Michael Chirico")
    (description
     "YACFP (Yet Another Convenience Function Package).  get_age() is a fast &
accurate tool for measuring fractional years between two dates.
abbr_to_@code{colClass}() is a much more concise way of feeding many types to a
@code{colClass} argument in a data reader.  stale_package_check() tries to
identify any library() calls to unused packages.")
    (license license:gpl2+)))

(define-public r-funcharts
  (package
    (name "r-funcharts")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "funcharts" version))
       (sha256
        (base32 "1ag07wzphsqgaha0h4ya9n68rc79j4y9hhqnppwqphbyj8i029kn"))))
    (properties `((upstream-name . "funcharts")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rspectra
                             r-roahd
                             r-rlang
                             r-patchwork
                             r-matrixstats
                             r-ggplot2
                             r-fda
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/unina-sfere/funcharts")
    (synopsis "Functional Control Charts")
    (description
     "This package provides functional control charts for statistical process
monitoring of functional data, using the methods of Capezza et al. (2020)
<doi:10.1002/asmb.2507> and Centofanti et al. (2021)
<doi:10.1080/00401706.2020.1753581>.  The package is thoroughly illustrated in
the paper of Capezza et al (2023) <doi:10.1080/00224065.2023.2219012>.")
    (license license:gpl3)))

(define-public r-funcdiv
  (package
    (name "r-funcdiv")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FuncDiv" version))
       (sha256
        (base32 "19jfxy9mhhsfr2mf3l9d125swy20qcyxfqd2fk9m6cly9ajzggza"))))
    (properties `((upstream-name . "FuncDiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppxptrutils
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-paralleldist
                             r-data-table
                             r-collapse
                             r-ape))
    (home-page "https://cran.r-project.org/package=FuncDiv")
    (synopsis "Compute Contributional Diversity Metrics")
    (description
     "Compute alpha and beta contributional diversity metrics, which is intended for
linking taxonomic and functional microbiome data.  See @code{GitHub} repository
for the tutorial: <https://github.com/gavinmdouglas/@code{FuncDiv/wiki>}.
Citation: Gavin M. Douglas, Sunu Kim, Morgan G. I. Langille, B. Jesse Shapiro
(2023) <doi:10.1093/bioinformatics/btac809>.")
    (license license:agpl3)))

(define-public r-funcc
  (package
    (name "r-funcc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FunCC" version))
       (sha256
        (base32 "0n8fnrq3grsxxcz1841d3d643nyrwc7y15na1205zxq6rmdjx7wa"))))
    (properties `((upstream-name . "FunCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-rcolorbrewer r-narray r-ggplot2
                             r-biclust))
    (home-page "https://cran.r-project.org/package=FunCC")
    (synopsis "Functional Cheng and Church Bi-Clustering")
    (description
     "The @code{FunCC} algorithm allows to apply the @code{FunCC} algorithm to
simultaneously cluster the rows and the columns of a data matrix whose inputs
are functions.")
    (license license:gpl3+)))

(define-public r-func2vis
  (package
    (name "r-func2vis")
    (version "1.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "func2vis" version))
       (sha256
        (base32 "16lp9sz63s3g3f1j1dmx881k6wy177cmi4vl6xwg4bzg88bkf8rq"))))
    (properties `((upstream-name . "func2vis")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomcolor r-igraph r-ggrepel r-ggplot2
                             r-devtools))
    (home-page "https://cran.r-project.org/package=func2vis")
    (synopsis
     "Clean and Visualize Over Expression Results from 'ConsensusPathDB'")
    (description
     "This package provides functions to have visualization and clean-up of enriched
gene ontologies (GO) terms, protein complexes and pathways (obtained from
multiple databases) using @code{ConsensusPathDB} from gene set over-expression
analysis.  Performs clustering of pathway based on similarity of over-expressed
gene sets and visualizations similar to Ingenuity Pathway Analysis (IPA) when up
and down regulated genes are known.  The methods are described in a paper
currently submitted by Orecchioni et al, 2020 in Nanoscale.")
    (license license:gpl3+)))

(define-public r-fun
  (package
    (name "r-fun")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fun" version))
       (sha256
        (base32 "09601ma4irmpkgjspq6zmr383m1pbgyfdkf7gw8w8gp0q7ab89aq"))))
    (properties `((upstream-name . "fun")))
    (build-system r-build-system)
    (home-page "https://github.com/yihui/fun")
    (synopsis "Use R for Fun")
    (description
     "This is a collection of R games and other funny stuff, such as the classic Mine
sweeper and sliding puzzles.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fullroc
  (package
    (name "r-fullroc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fullROC" version))
       (sha256
        (base32 "0pn4lh59snfcyyi28350lm4n9xh6y25hpjr38dc33bic4cfbqiyr"))))
    (properties `((upstream-name . "fullROC")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fullROC")
    (synopsis "Plot Full ROC Curves using Eyewitness Lineup Data")
    (description
     "Enable researchers to adjust identification rates using the 1/(lineup size)
method, generate the full receiver operating characteristic (ROC) curves, and
statistically compare the area under the curves (AUC).  References: Yueran Yang
& Andrew Smith. (2020). \"@code{fullROC}: An R package for generating and
analyzing eyewitness-lineup ROC curves\". <doi:10.13140/RG.2.2.20415.94885/1> ,
Andrew Smith, Yueran Yang, & Gary Wells. (2020). \"Distinguishing between
investigator discriminability and eyewitness discriminability: A method for
creating full receiver operating characteristic curves of lineup identification
performance\".  Perspectives on Psychological Science, 15(3), 589-607.
<doi:10.1177/1745691620902426>.")
    (license license:gpl3+)))

(define-public r-fullfact
  (package
    (name "r-fullfact")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fullfact" version))
       (sha256
        (base32 "1p2f4rf54hd0icy49fkq6p973rqisjjmmr1brwcv0fg22nv2kidg"))))
    (properties `((upstream-name . "fullfact")))
    (build-system r-build-system)
    (propagated-inputs (list r-lme4 r-afex))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fullfact")
    (synopsis "Full Factorial Breeding Analysis")
    (description
     "We facilitate the analysis of full factorial mating designs with mixed-effects
models.  There are now six vignettes containing detailed examples.")
    (license license:gpl2+)))

(define-public r-fuj
  (package
    (name "r-fuj")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuj" version))
       (sha256
        (base32 "1mw4cl6w2nl8f5sfxbvzhbzz2di6msfrdiz8vylqq12z4gzr6l11"))))
    (properties `((upstream-name . "fuj")))
    (build-system r-build-system)
    (home-page "https://jmbarbone.github.io/fuj/")
    (synopsis "Functions and Utilities for Jordan")
    (description
     "This package provides core functions and utilities for packages and other code
developed by Jordan Mark Barbone.")
    (license license:expat)))

(define-public r-fugue
  (package
    (name "r-fugue")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fugue" version))
       (sha256
        (base32 "1myvi9cizxvahb6wn2k26v3x958xsrm2p414ar05injmfjdfnsmi"))))
    (properties `((upstream-name . "fugue")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fugue")
    (synopsis
     "Sensitivity Analysis Optimized for Matched Sets of Varied Sizes")
    (description
     "As in music, a fugue statistic repeats a theme in small variations.  Here, the
psi-function that defines an m-statistic is slightly altered to maintain the
same design sensitivity in matched sets of different sizes.  The main functions
in the package are sen() and @code{senCI}().  For sensitivity analyses for
m-statistics, see Rosenbaum (2007) Biometrics 63 456-464
<doi:10.1111/j.1541-0420.2006.00717.x>.")
    (license license:gpl2)))

(define-public r-fueleconomy
  (package
    (name "r-fueleconomy")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fueleconomy" version))
       (sha256
        (base32 "16a8wyliiidi6rw14ksimygfkl4a7yhxvss7l9bcvr1wfiplrn65"))))
    (properties `((upstream-name . "fueleconomy")))
    (build-system r-build-system)
    (home-page "https://github.com/hadley/fueleconomy")
    (synopsis "EPA Fuel Economy Data")
    (description
     "Fuel economy data from the EPA, 1985-2015, conveniently packaged for consumption
by R users.")
    (license license:cc0)))

(define-public r-fuel
  (package
    (name "r-fuel")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fuel" version))
       (sha256
        (base32 "0pzb77g6l8cz5p7y6czck23kp7hs5zp78k87b5yh0avjlr7ads74"))))
    (properties `((upstream-name . "fuel")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fuel")
    (synopsis "Framework for Unified Estimation in Lognormal Models")
    (description
     "Lognormal models have broad applications in various research areas such as
economics, actuarial science, biology, environmental science and psychology.
The estimation problem in lognormal models has been extensively studied.  This R
package fuel implements thirty-nine existing and newly proposed estimators.  See
Zhang, F., and Gou, J. (2020), A unified framework for estimation in lognormal
models, Technical report.")
    (license license:gpl3)))

(define-public r-fude
  (package
    (name "r-fude")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fude" version))
       (sha256
        (base32 "11gzmgq7rknrhcskfs751f4snh4qcv3hfkqn6b95iv9zkcpar4gm"))))
    (properties `((upstream-name . "fude")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringi
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-forcats
                             r-dplyr))
    (home-page "https://github.com/takeshinishimura/fude")
    (synopsis "Utilities for Fude Polygon")
    (description
     "This package provides utilities to facilitate handling of Fude Polygon data
downloadable from the Ministry of Agriculture, Forestry and Fisheries website
<https://open.fude.maff.go.jp>.")
    (license license:expat)))

(define-public r-ftsspec
  (package
    (name "r-ftsspec")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftsspec" version))
       (sha256
        (base32 "12f9yws1r26i240ijq0xqprl3pgbw50wv68jsm75ycplbs2jsyhs"))))
    (properties `((upstream-name . "ftsspec")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna))
    (home-page "https://cran.r-project.org/package=ftsspec")
    (synopsis
     "Spectral Density Estimation and Comparison for Functional Time Series")
    (description
     "This package provides functions for estimating spectral density operator of
functional time series (FTS) and comparing the spectral density operator of two
functional time series, in a way that allows detection of differences of the
spectral density operator in frequencies and along the curve length.")
    (license license:gpl2)))

(define-public r-ftsa
  (package
    (name "r-ftsa")
    (version "6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftsa" version))
       (sha256
        (base32 "00cb82cd692ni2ys55v6kkzz924gc3lsibgr2zaqw1f9iywkbnic"))))
    (properties `((upstream-name . "ftsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars
                             r-strucchange
                             r-sde
                             r-roopsd
                             r-rainbow
                             r-psych
                             r-pdfcluster
                             r-pcapp
                             r-mass
                             r-laplacesdemon
                             r-kernsmooth
                             r-glue
                             r-forecast
                             r-fgarch
                             r-fdapace
                             r-fda
                             r-evgam
                             r-ecp
                             r-e1071
                             r-colorspace
                             r-boot))
    (home-page "https://cran.r-project.org/package=ftsa")
    (synopsis "Functional Time Series Analysis")
    (description
     "This package provides functions for visualizing, modeling, forecasting and
hypothesis testing of functional time series.")
    (license license:gpl3)))

(define-public r-ftrcool
  (package
    (name "r-ftrcool")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftrCOOL" version))
       (sha256
        (base32 "0jy0dhkf7hlrriz32abp0h52fw92i5k8x25bjqlzd0khyv2vhj0i"))))
    (properties `((upstream-name . "ftrCOOL")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ftrCOOL")
    (synopsis "Feature Extraction from Biological Sequences")
    (description
     "Extracts features from biological sequences.  It contains most features which
are presented in related work and also includes features which have never been
introduced before.  It extracts numerous features from nucleotide and peptide
sequences.  Each feature converts the input sequences to discrete numbers in
order to use them as predictors in machine learning models.  There are many
features and information which are hidden inside a sequence.  Utilizing the
package, users can convert biological sequences to discrete models based on
chosen properties.  References: @code{iLearn} Z. Chen et al. (2019)
<DOI:10.1093/bib/bbz041>. @code{iFeature} Z. Chen et al. (2018)
<DOI:10.1093/bioinformatics/bty140>.
<https://CRAN.R-project.org/package=@code{rDNAse>}. @code{PseKRAAC} Y. Zuo et
al. @code{PseKRAAC}: a flexible web server for generating pseudo K-tuple reduced
amino acids composition (2017) <DOI:10.1093/bioinformatics/btw564>.
@code{iDNA6mA-PseKNC} P. Feng et al. @code{iDNA6mA-PseKNC}: Identifying DNA
N6-methyladenosine sites by incorporating nucleotide physicochemical properties
into @code{PseKNC} (2019) <DOI:10.1016/j.ygeno.2018.01.005>.  I. Dubchak et al.
Prediction of protein folding class using global description of amino acid
sequence (1995) <DOI:10.1073/pnas.92.19.8700>.  W. Chen et al.  Identification
and analysis of the N6-methyladenosine in the Saccharomyces cerevisiae
transcriptome (2015) <DOI:10.1038/srep13859>.")
    (license license:gpl3)))

(define-public r-ftrading
  (package
    (name "r-ftrading")
    (version "3042.79")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fTrading" version))
       (sha256
        (base32 "0xnfg4npfdrvmp1n6vbsm7if16n5j83b7y1i2m5b34cqnlz9d69y"))))
    (properties `((upstream-name . "fTrading")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate r-fbasics))
    (home-page "http://www.rmetrics.org")
    (synopsis "Rmetrics - Trading and Rebalancing Financial Instruments")
    (description
     "This package provides a collection of functions for trading and rebalancing
financial instruments.  It implements various technical indicators to analyse
time series such as moving averages or stochastic oscillators.")
    (license license:gpl2+)))

(define-public r-ftextra
  (package
    (name "r-ftextra")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftExtra" version))
       (sha256
        (base32 "102afklfr6lz4vby9ify8ix19y6q4hqbl36ksal6cgx10jasn6pg"))))
    (properties `((upstream-name . "ftExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xfun
                             r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rmarkdown
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-flextable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://ftextra.atusy.net")
    (synopsis "Extensions for 'Flextable'")
    (description
     "Build display tables easily by extending the functionality of the flextable
package.  Features include spanning header, grouping rows, parsing markdown and
so on.")
    (license license:expat)))

(define-public r-ftdk
  (package
    (name "r-ftdk")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftDK" version))
       (sha256
        (base32 "1xs2rr2afjza97kpym5zkas3k78pilxjlh7lp1gc66banldr71g2"))))
    (properties `((upstream-name . "ftDK")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-purrr r-pbapply r-httr r-dplyr))
    (home-page "https://github.com/mikkelkrogsholm/ftDK")
    (synopsis "Wrapper for the API of the Danish Parliament")
    (description
     "This package provides a wrapper for the API of the Danish Parliament.  It makes
it possible to get data from the API easily into a data frame.  Learn more at
<http://www.ft.dk/dokumenter/aabne_data>.")
    (license license:expat)))

(define-public r-ftaproxim
  (package
    (name "r-ftaproxim")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ftaproxim" version))
       (sha256
        (base32 "0955zj99vkq82hc08wl17mk2ij1l30nqbcdikf87cx78a13zxy4w"))))
    (properties `((upstream-name . "ftaproxim")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ggplot2))
    (home-page "https://cran.r-project.org/package=ftaproxim")
    (synopsis "Fault Tree Analysis Based on Proxel Simulation")
    (description
     "Calculation and plotting of instantaneous unavailabilities of basic events along
with the top event of fault trees are issues important in reliability analysis
of complex systems.  Here, a fault tree is provided in terms of its minimal cut
sets, along with reliability and maintainability distribution functions of the
basic events.  All the methods are derived from Horton (2002, ISBN:
3-936150-21-4), Niloofar and Lazarova-Molnar (2022).")
    (license license:gpl2+)))

(define-public r-fstpackage
  (package
    (name "r-fstpackage")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSTpackage" version))
       (sha256
        (base32 "1fjqsl59fg4x9vkbv4b0qmfxlaa2q3rzpl40grv24yg6ixfagmdb"))))
    (properties `((upstream-name . "FSTpackage")))
    (build-system r-build-system)
    (propagated-inputs (list r-skat r-mvtnorm r-matrix r-mass r-compquadform))
    (home-page "https://cran.r-project.org/package=FSTpackage")
    (synopsis
     "Unified Sequence-Based Association Tests Allowing for Multiple Functional Annotation Scores")
    (description
     "This package provides functions for sequencing studies allowing for multiple
functional annotation scores.  Score type tests and an efficient perturbation
method are used for individual gene/large gene-set/genome wide analysis.  Only
summary statistics are needed.")
    (license license:gpl3)))

(define-public r-fsthet
  (package
    (name "r-fsthet")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsthet" version))
       (sha256
        (base32 "0z6az1jcvdahgn97r6cpj1s6fn0lvr7j12gcw2r7wbpajrvyl5j6"))))
    (properties `((upstream-name . "fsthet")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fsthet")
    (synopsis "Fst-Heterozygosity Smoothed Quantiles")
    (description
     "This package provides a program to generate smoothed quantiles for the
Fst-heterozygosity distribution.  Designed for use with large numbers of loci
(e.g., genome-wide SNPs).  The best case for analyzing the Fst-heterozygosity
distribution is when many populations (>10) have been sampled.  See Flanagan &
Jones (2017) <doi:10.1093/jhered/esx048>.")
    (license license:gpl2)))

(define-public r-fstability
  (package
    (name "r-fstability")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Fstability" version))
       (sha256
        (base32 "0kscdmrs5namvhi112b47c811w0bg9s3xg48mfa566pxwxz1nv45"))))
    (properties `((upstream-name . "Fstability")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Fstability")
    (synopsis "Calculate Feature Stability")
    (description
     "Has two functions to help with calculating feature selection stability.  Lump is
a function that groups subset vectors into a dataframe, and adds NA to shorter
vectors so they all have the same length.  ASM is a function that takes a
dataframe of subset vectors and the original vector of features as inputs, and
calculates the Stability of the feature selection.  The calculation for asm uses
the Adjusted Stability Measure proposed in: Lustgarten', Gopalakrishnan', &
Visweswaran (2009)<https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2815476/>.")
    (license license:gpl3)))

(define-public r-fst4pg
  (package
    (name "r-fst4pg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fst4pg" version))
       (sha256
        (base32 "1sa35k2134wd5i5w737rbx1clk96l36a98na9c5gj51nxba9b7vm"))))
    (properties `((upstream-name . "fst4pg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-gplots
                             r-ggplot2
                             r-future
                             r-furrr
                             r-fpopw
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=fst4pg")
    (synopsis "Genetic Distance Segmentation for Population Genetics")
    (description
     "This package provides efficient methods to compute local and genome wide genetic
distances (corresponding to the so called Hudson Fst parameters) through moment
method, perform chromosome segmentation into homogeneous Fst genomic regions,
and selection sweep detection for multi-population comparison.  When multiple
profile segmentation is required, the procedure can be parallelized using the
future package.")
    (license license:gpl2+)))

(define-public r-fssf
  (package
    (name "r-fssf")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSSF" version))
       (sha256
        (base32 "024g2rv64yqxmbbwrbkpkrzdfshl0n6jll6axsgsp4q4ia4r9401"))))
    (properties `((upstream-name . "FSSF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=FSSF")
    (synopsis
     "Generate Fully-Sequential Space-Filling Designs Inside a Unit Hypercube")
    (description
     "This package provides three methods proposed by Shang and Apley (2019)
<doi:10.1080/00224065.2019.1705207> to generate fully-sequential space-filling
designs inside a unit hypercube.  A fully-sequential space-filling design means
a sequence of nested designs (as the design size varies from one point up to
some maximum number of points) with the design points added one at a time and
such that the design at each size has good space-filling properties.  Two
methods target the minimum pairwise distance criterion and generate maximin
designs, among which one method is more efficient when design size is large.
One method targets the maximum hole size criterion and uses a heuristic to
generate what is closer to a minimax design.")
    (license license:gpl2)))

(define-public r-fssemr
  (package
    (name "r-fssemr")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fssemR" version))
       (sha256
        (base32 "1rja69b6x5vc302nksh5m6ssp2lx8drv9gjnkv6j9xr3hd2407xi"))))
    (properties `((upstream-name . "fssemR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcppeigen
                             r-rcpp
                             r-qtl
                             r-qpdf
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-igraph
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ivis4ml/fssemR")
    (synopsis
     "Fused Sparse Structural Equation Models to Jointly Infer Gene Regulatory Network")
    (description
     "An optimizer of Fused-Sparse Structural Equation Models, which is the state of
the art jointly fused sparse maximum likelihood function for structural equation
models proposed by Xin Zhou and Xiaodong Cai (2018 <doi:10.1101/466623>).")
    (license license:gpl3+)))

(define-public r-fsrm
  (package
    (name "r-fsrm")
    (version "0.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fSRM" version))
       (sha256
        (base32 "0qp2pcq01vfgaczd57j4wmzvn4srzlwh7ya3sdp7vwzyb8dbjajn"))))
    (properties `((upstream-name . "fSRM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcltk2
                             r-scales
                             r-reshape2
                             r-plyr
                             r-lavaan
                             r-gridextra
                             r-ggplot2
                             r-foreign))
    (home-page "https://cran.r-project.org/package=fSRM")
    (synopsis "Social Relations Analyses with Roles (\"Family SRM\")")
    (description
     "Social Relations Analysis with roles (\"Family SRM\") are computed, using a
structural equation modeling approach.  Groups ranging from three members up to
an unlimited number of members are supported and the mean structure can be
computed.  Means and variances can be compared between different groups of
families and between roles.")
    (license license:gpl2+)))

(define-public r-fsr
  (package
    (name "r-fsr")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsr" version))
       (sha256
        (base32 "0lwg5r11bkcfh32v8zh50gxiyya4dcap0zmdaf7gsyz0kvxzp0lj"))))
    (properties `((upstream-name . "fsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-pso
                             r-lwgeom
                             r-ggplot2
                             r-e1071
                             r-dplyr))
    (home-page "https://accarniel.github.io/fsr/")
    (synopsis "Handling Fuzzy Spatial Data")
    (description
     "Support for fuzzy spatial objects, their operations, and fuzzy spatial inference
models based on Spatial Plateau Algebra.  It employs fuzzy set theory and fuzzy
logic as foundation to deal with spatial fuzziness.  It mainly implements
underlying concepts defined in the following research papers: (i) \"Spatial
Plateau Algebra: An Executable Type System for Fuzzy Spatial Data Types\"
<doi:10.1109/FUZZ-IEEE.2018.8491565>; (ii) \"A Systematic Approach to Creating
Fuzzy Region Objects from Real Spatial Data Sets\"
<doi:10.1109/FUZZ-IEEE.2019.8858878>; (iii) \"Spatial Data Types for
Heterogeneously Structured Fuzzy Spatial Collections and Compositions\"
<doi:10.1109/FUZZ48607.2020.9177620>; (iv) \"Fuzzy Inference on Fuzzy Spatial
Objects (FIFUS) for Spatial Decision Support Systems\"
<doi:10.1109/FUZZ-IEEE.2017.8015707>; (v) \"Evaluating Region Inference Methods
by Using Fuzzy Spatial Inference Models\"
<doi:10.1109/FUZZ-IEEE55066.2022.9882658>.")
    (license license:gpl3)))

(define-public r-fspe
  (package
    (name "r-fspe")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fspe" version))
       (sha256
        (base32 "02pmrc6k9wi8ic26nxj66pzjp64ds36awaj3hx2zw3nnccgs7164"))))
    (properties `((upstream-name . "fspe")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-corpcor))
    (home-page "https://cran.r-project.org/package=fspe")
    (synopsis
     "Estimating the Number of Factors in EFA with Out-of-Sample Prediction Errors")
    (description
     "Estimating the number of factors in Exploratory Factor Analysis (EFA) with
out-of-sample prediction errors using a cross-validation scheme.  Haslbeck & van
Bork (Preprint) <https://psyarxiv.com/qktsd>.")
    (license license:gpl2)))

(define-public r-fso
  (package
    (name "r-fso")
    (version "2.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fso" version))
       (sha256
        (base32 "15jvq063j05wpiwcm80zbnr1rf5g7xhv60qh3b8c43l398n4frhw"))))
    (properties `((upstream-name . "fso")))
    (build-system r-build-system)
    (propagated-inputs (list r-labdsv))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=fso")
    (synopsis "Fuzzy Set Ordination")
    (description
     "Fuzzy set ordination is a multivariate analysis used in ecology to relate the
composition of samples to possible explanatory variables.  While differing in
theory and method, in practice, the use is similar to constrained ordination.
The package contains plotting and summary functions as well as the analyses.")
    (license license:gpl2+)))

(define-public r-fsn
  (package
    (name "r-fsn")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsn" version))
       (sha256
        (base32 "12n1v8nhfn5pjjsrp41wk848yw797wxa9anx9dm8rd278smrk01f"))))
    (properties `((upstream-name . "fsn")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast))
    (home-page "https://cran.r-project.org/package=fsn")
    (synopsis "Rosenthal's Fail Safe Number and Related Functions")
    (description
     "Estimation of Rosenthal's fail safe number including confidence intervals.  The
relevant papers are the following.  Konstantinos C. Fragkos, Michail Tsagris and
Christos C. Frangos (2014). \"Publication Bias in Meta-Analysis: Confidence
Intervals for Rosenthal's Fail-Safe Number\".  International Scholarly Research
Notices, Volume 2014. <doi:10.1155/2014/825383>.  Konstantinos C. Fragkos,
Michail Tsagris and Christos C. Frangos (2017). \"Exploring the distribution for
the estimator of Rosenthal's fail-safe number of unpublished studies in
meta-analysis\".  Communications in Statistics-Theory and Methods,
46(11):5672--5684. <doi:10.1080/03610926.2015.1109664>.")
    (license license:gpl2+)))

(define-public r-fsmumi
  (package
    (name "r-fsmumi")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSMUMI" version))
       (sha256
        (base32 "06ri1zi86cm4arjdlp2pha2bvcc8vz6irvd9n3ja074hv62wxcw4"))))
    (properties `((upstream-name . "FSMUMI")))
    (build-system r-build-system)
    (propagated-inputs (list r-lsa r-fuzzyr))
    (home-page "http://mawenzi.univ-littoral.fr/FSMUMI/")
    (synopsis "Imputation of Time Series Based on Fuzzy Logic")
    (description
     "Filling large gaps in low or uncorrelated multivariate time series uses a new
fuzzy weighted similarity measure.  It contains all required functions to create
large missing consecutive values within time series and then fill these gaps,
according to the paper Phan et al. (2018), <DOI:10.1155/2018/9095683>.
Performance indicators are also provided to compare similarity between two
univariate signals (incomplete signal and imputed signal).")
    (license license:gpl2+)))

(define-public r-fsmts
  (package
    (name "r-fsmts")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsMTS" version))
       (sha256
        (base32 "18sikbvl6cwsgr5vqxnx3lmpp2mlx22ca16zxddj87z7jfr1fhgn"))))
    (properties `((upstream-name . "fsMTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforestsrc r-mpmi r-lars r-glasso
                             r-freqdom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fsMTS")
    (synopsis "Feature Selection for Multivariate Time Series")
    (description
     "This package implements feature selection routines for multivariate time series
(MTS).  The list of implemented algorithms includes: own lags (independent MTS
components), distance-based (using external structure, e.g. Pfeifer and Deutsch
(1980) <doi:10.2307/1268381>), cross-correlation (see Schelter et al. (2006,
ISBN:9783527406234)), graphical LASSO (see Haworth and Cheng (2014)
<https://www.gla.ac.uk/media/Media_401739_smxx.pdf>), random forest (see Pavlyuk
(2020) \"Random Forest Variable Selection for Sparse Vector Autoregressive
Models\" in Contributions to Statistics, in production), least angle regression
(see Gelper and Croux (2008) <https://lirias.kuleuven.be/retrieve/16024>),
mutual information (see Schelter et al. (2006, ISBN:9783527406234), Liu et al.
(2016) <doi:10.1109/@code{ChiCC.2016.7554480>}), and partial spectral coherence
(see Davis et al.(2016) <doi:10.1080/10618600.2015.1092978>).  In addition, the
package implements functions for ensemble feature selection (using feature
ranking and majority voting).  The package is implemented within Dmitry
Pavlyuk's research project No.  1.1.1.2/VIAA/1/16/112 \"Spatiotemporal urban
traffic modelling using big data\".")
    (license license:gpl3)))

(define-public r-fsm
  (package
    (name "r-fsm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSM" version))
       (sha256
        (base32 "03w182a9i7mra7wpvkm4q4kwhzjs5kc9h4hh26gygl49jkcvril8"))))
    (properties `((upstream-name . "FSM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FSM")
    (synopsis "Finite Selection Model")
    (description
     "Randomized and balanced allocation of units to treatment groups using the Finite
Selection Model (FSM).  The FSM was originally proposed and developed at the
RAND corporation by Carl Morris to enhance the experimental design for the now
famous Health Insurance Experiment.  See Morris (1979)
<doi:10.1016/0304-4076(79)90053-8> for details on the original version of the
FSM.")
    (license license:gpl3)))

(define-public r-fslr
  (package
    (name "r-fslr")
    (version "2.25.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fslr" version))
       (sha256
        (base32 "0az215n4ra3g6v34cwv8rrjpjq8c9mx34fmjqk7icdwm2raw32vh"))))
    (properties `((upstream-name . "fslr")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-r-utils r-oro-nifti r-neurobase))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fslr")
    (synopsis
     "Wrapper Functions for 'FSL' ('FMRIB' Software Library) from Functional MRI of the Brain ('FMRIB')")
    (description
     "Wrapper functions that interface with FSL
<http://fsl.fmrib.ox.ac.uk/fsl/fslwiki/>, a powerful and commonly-used
neuroimaging software, using system commands.  The goal is to be able to
interface with FSL completely in R, where you pass R objects of class nifti',
implemented by package oro.nifti', and the function executes an FSL command and
returns an R object of class nifti if desired.")
    (license license:gpl3)))

(define-public r-fsk2r
  (package
    (name "r-fsk2r")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSK2R" version))
       (sha256
        (base32 "0hsrg49q42by4i3dywi59wwy5h56fnfdr10s6rk1y9dyliksmj43"))))
    (properties `((upstream-name . "FSK2R")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-xml2
                             r-xml
                             r-tidyr
                             r-tibble
                             r-shiny
                             r-rlang
                             r-rjson
                             r-readxl
                             r-readtext
                             r-r-utils
                             r-purrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FSK2R")
    (synopsis "An Interface Between the 'FSKX' Standard and 'R'")
    (description
     "This package provides functions for importing, creating, editing and exporting
FSK files
<https://foodrisklabs.bfr.bund.de/fskx-food-safety-knowledge-exchange-format/>
using the R programming environment.  Furthermore, it enables users to run
simulations contained in the FSK files and visualize the results.")
    (license license:gpl3)))

(define-public r-fsinteract
  (package
    (name "r-fsinteract")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSInteract" version))
       (sha256
        (base32 "1aci1398aaz0nrl5jy6yh7xik355wf7pwngrsak4qsi94vdj05iy"))))
    (properties `((upstream-name . "FSInteract")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrix))
    (home-page "http://www.jmlr.org/papers/v15/shah14a.html")
    (synopsis "Fast Searches for Interactions")
    (description
     "This package performs fast detection of interactions in large-scale data using
the method of random intersection trees introduced in Shah, R. D. and
Meinshausen, N. (2014) <http://www.jmlr.org/papers/v15/shah14a.html>.  The
algorithm finds potentially high-order interactions in high-dimensional binary
two-class classification data, without requiring lower order interactions to be
informative.  The search is particularly fast when the matrices of predictors
are sparse.  It can also be used to perform market basket analysis when supplied
with a single binary data matrix.  Here it will find collections of columns
which for many rows contain all 1's.")
    (license license:gpl2)))

(define-public r-fsinr
  (package
    (name "r-fsinr")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSinR" version))
       (sha256
        (base32 "11ss38qpasbyym9hcfqmv254jvr8lzsw6r85dlm7xlnhfnxil59l"))))
    (properties `((upstream-name . "FSinR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rpart
                             r-rlang
                             r-rdpack
                             r-purrr
                             r-prodlim
                             r-neuralnet
                             r-mlbench
                             r-ga
                             r-e1071
                             r-dplyr
                             r-digest
                             r-class
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FSinR")
    (synopsis "Feature Selection")
    (description
     "Feature subset selection algorithms modularized in search algorithms and measure
utilities.  Full list and more information available at
<https://dicits.ugr.es/software/F@code{SinR/>}.")
    (license license:gpl3)))

(define-public r-fsia
  (package
    (name "r-fsia")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsia" version))
       (sha256
        (base32 "0id7cnswrqylgpwjil1zfn89ryrdpl20fim8x1srl8s1hm5bg35r"))))
    (properties `((upstream-name . "fsia")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fsia")
    (synopsis "Import and Analysis of OMR Data from FormScanner")
    (description
     "Import data of tests and questionnaires from @code{FormScanner}.
@code{FormScanner} is an open source software that converts scanned images to
data using optical mark recognition (OMR) and it can be downloaded from
<http://sourceforge.net/projects/formscanner/>.  The spreadsheet file created by
@code{FormScanner} is imported in a convenient format to perform the analyses
provided by the package.  These analyses include the conversion of multiple
responses to binary (correct/incorrect) data, the computation of the number of
corrected responses for each subject or item, scoring using weights,the
computation and the graphical representation of the frequencies of the responses
to each item and the report of the responses of a few subjects.")
    (license license:gpl3)))

(define-public r-fsemipar
  (package
    (name "r-fsemipar")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsemipar" version))
       (sha256
        (base32 "0xvhnb5fw0q5h1d9fkhm4i9ig476gc6gvp6qzvxnmrwzdpjmhdk2"))))
    (properties `((upstream-name . "fsemipar")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtools r-grpreg r-dicekriging))
    (home-page "https://cran.r-project.org/package=fsemipar")
    (synopsis
     "Estimation, Variable Selection and Prediction for Functional Semiparametric Models")
    (description
     "Routines for estimation or simultaneous estimation and variable selection of
several functional semiparametric models with scalar response, such as the
functional single-index model, the semi-functional partial linear model or the
semi-functional partial linear single-index model.  In addition, it includes
algorithms for dealing with scalar covariates with linear effect coming from the
discretization of a curve in the cases of the linear model, the multi-functional
partial linear model and the multi-functional partial linear single-index model.")
    (license license:gpl2+)))

(define-public r-fselectorrcpp
  (package
    (name "r-fselectorrcpp")
    (version "0.3.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSelectorRcpp" version))
       (sha256
        (base32 "008zc270injmjhr2zqs0jw21f7vrmmclzjnin9xsx8drfk8bhdvn"))))
    (properties `((upstream-name . "FSelectorRcpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rcpparmadillo
                             r-rcpp
                             r-iterators
                             r-foreach
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mi2-warsaw/FSelectorRcpp")
    (synopsis
     "'Rcpp' Implementation of 'FSelector' Entropy-Based Feature Selection Algorithms with a Sparse Matrix Support")
    (description
     "Rcpp (free of Java'/'Weka') implementation of FSelector entropy-based feature
selection algorithms based on an MDL discretization (Fayyad U. M., Irani K. B.:
Multi-Interval Discretization of Continuous-Valued Attributes for Classification
Learning.  In 13'th International Joint Conference on Uncertainly in Artificial
Intelligence (IJCAI93), pages 1022-1029, Chambery, France, 1993.)
<https://www.ijcai.org/Proceedings/93-2/Papers/022.pdf> with a sparse matrix
support.")
    (license license:gpl2)))

(define-public r-fselector
  (package
    (name "r-fselector")
    (version "0.34")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSelector" version))
       (sha256
        (base32 "07nvfykr6zls7ip5nz9j3062nlna2va3dyldck292v96rd56xl99"))))
    (properties `((upstream-name . "FSelector")))
    (build-system r-build-system)
    (propagated-inputs (list r-rweka r-randomforest r-entropy r-digest))
    (home-page "https://github.com/larskotthoff/fselector")
    (synopsis "Selecting Attributes")
    (description
     "This package provides functions for selecting attributes from a given dataset.
Attribute subset selection is the process of identifying and removing as much of
the irrelevant and redundant information as possible.")
    (license license:gpl2)))

(define-public r-fsdar
  (package
    (name "r-fsdar")
    (version "0.8-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsdaR" version))
       (sha256
        (base32 "1j4q92lkmijap1hwv8grdhzaqr9c739894vh9l9a7vvllqa5n6nq"))))
    (properties `((upstream-name . "fsdaR")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-ggplot2))
    (home-page "https://github.com/UniprJRC/fsdaR")
    (synopsis
     "Robust Data Analysis Through Monitoring and Dynamic Visualization")
    (description
     "This package provides interface to the MATLAB toolbox Flexible Statistical Data
Analysis (FSDA) which is comprehensive and computationally efficient software
package for robust statistics in regression, multivariate and categorical data
analysis.  The current R version implements tools for regression: (forward
search, S- and MM-estimation, least trimmed squares (LTS) and least median of
squares (LMS)), for multivariate analysis (forward search, S- and
MM-estimation), for cluster analysis and cluster-wise regression.  The
distinctive feature of our package is the possibility of monitoring the
statistics of interest as a function of breakdown point, efficiency or subset
size, depending on the estimator.  This is accompanied by a rich set of
graphical features, such as dynamic brushing, linking, particularly useful for
exploratory data analysis.")
    (license license:gpl3+)))

(define-public r-fsdam
  (package
    (name "r-fsdam")
    (version "2020.11-18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSDAM" version))
       (sha256
        (base32 "09l7zvmbvmbcr5pxizdhs5fn79r6cl4ic0hsz2bazdymsqv3s3nm"))))
    (properties `((upstream-name . "FSDAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-kyotil))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=FSDAM")
    (synopsis "Forward Stepwise Deep Autoencoder-Based Monotone NLDR")
    (description
     "FS-DAM performs feature extraction through latent variables identification.
Implementation is based on autoencoders with monotonicity and orthogonality
constraints.")
    (license license:gpl2+)))

(define-public r-fscaret
  (package
    (name "r-fscaret")
    (version "0.9.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fscaret" version))
       (sha256
        (base32 "18fhyfl3f8syyc3g937qx87dmwbv7dray6b97p1s6lnssiv61gsw"))))
    (properties `((upstream-name . "fscaret")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmeasure r-gsubfn r-caret))
    (home-page "https://cran.r-project.org/package=fscaret")
    (synopsis "Automated Feature Selection from 'caret'")
    (description
     "Automated feature selection using variety of models provided by caret package.
This work was funded by Poland-Singapore bilateral cooperation project no
2/3/POL-SIN/2012.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fsbrain
  (package
    (name "r-fsbrain")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fsbrain" version))
       (sha256
        (base32 "0cy7f2k58lvsmp2qd24qqavq7d2bnf0r7s7j75nx9z1mp7x4cm1q"))))
    (properties `((upstream-name . "fsbrain")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-squash
                             r-rgl
                             r-reshape
                             r-pkgfilecache
                             r-magick
                             r-freesurferformats
                             r-fields
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dfsp-spirit/fsbrain")
    (synopsis "Managing and Visualizing Brain Surface Data")
    (description
     "This package provides high-level access to neuroimaging data from standard
software packages like @code{FreeSurfer} <http://freesurfer.net/> on the level
of subjects and groups.  Load morphometry data, surfaces and brain parcellations
based on atlases.  Mask data using labels, load data for specific atlas regions
only, and visualize data and statistical results directly in R'.")
    (license license:expat)))

(define-public r-fsatools
  (package
    (name "r-fsatools")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSAtools" version))
       (sha256
        (base32 "0i4grcr155vbsnw823jiwngyayzymka9k7zhsbw1f208q6xyrx4d"))))
    (properties `((upstream-name . "FSAtools")))
    (build-system r-build-system)
    (home-page "https://bioinformatics.ovsa.fr/FSAtools")
    (synopsis "Fragment Analysis and Capillary Sequencing Tool Kit")
    (description
     "This package provides a flexible and interfaced framework for importing,
processing and ploting Applied Biosystems data files.  Application to
Reverse-Transcriptase Multiplex Ligation-dependent Probe Amplification (RT-MLPA)
gene-expression profiling and classification is illustrated in Mareschal, Ruminy
et al (2015) <doi:10.1016/j.jmoldx.2015.01.007>.  Gene-fusion detection and
Sanger sequencing are illustrated in Mareschal, Palau et al (2021)
<doi:10.1182/bloodadvances.2020002517>.  Examples are provided for genotyping
applications as well.")
    (license license:gpl3+)))

(define-public r-fsadata
  (package
    (name "r-fsadata")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FSAdata" version))
       (sha256
        (base32 "0zh0gkylziysqjc9gn3kjz7070x2rvmi1c64kxl6q2479929hysi"))))
    (properties `((upstream-name . "FSAdata")))
    (build-system r-build-system)
    (home-page "https://fishr-core-team.github.io/FSAdata/")
    (synopsis "Data to Support Fish Stock Assessment ('FSA') Package")
    (description
     "The datasets to support the Fish Stock Assessment ('FSA') package.")
    (license license:gpl2+)))

(define-public r-fruclimadapt
  (package
    (name "r-fruclimadapt")
    (version "0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fruclimadapt" version))
       (sha256
        (base32 "0v9yh3q7sf0q8lwj89hr50f3s6m14c0azs0rbmykxmj18k376fwg"))))
    (properties `((upstream-name . "fruclimadapt")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-magrittr r-lubridate r-dplyr r-data-table))
    (home-page "https://cran.r-project.org/package=fruclimadapt")
    (synopsis
     "Evaluation Tools for Assessing Climate Adaptation of Fruit Tree Species")
    (description
     "Climate is a critical component limiting growing range of plant species, which
also determines cultivar adaptation to a region.  The evaluation of climate
influence on fruit production is critical for decision-making in the design
stage of orchards and vineyards and in the evaluation of the potential
consequences of future climate.  Bio- climatic indices and plant phenology are
commonly used to describe the suitability of climate for growing quality fruit
and to provide temporal and spatial information about regarding ongoing and
future changes.  fruclimadapt streamlines the assessment of climate adaptation
and the identification of potential risks for grapevines and fruit trees.
Procedures in the package allow to i) downscale daily meteorological variables
to hourly values (Forster et al (2016) <doi:10.5194/gmd-9-2315-2016>), ii)
estimate chilling and forcing heat accumulation (Miranda et al (2019)
<https://ec.europa.eu/eip/agriculture/sites/default/files/fg30_mp5_phenology_critical_temperatures.pdf>),
iii) estimate plant phenology (Schwartz (2012) <doi:10.1007/978-94-007-6925-0>),
iv) calculate bioclimatic indices to evaluate fruit tree and grapevine
adaptation (e.g. Badr et al (2017) <doi:10.3354/cr01532>), v) estimate the
incidence of weather-related disorders in fruits (e.g. Snyder and de Melo-Abreu
(2005, ISBN:92-5-105328-6) and vi) estimate plant water requirements (Allen et
al (1998, ISBN:92-5-104219-5)).")
    (license license:gpl3+)))

(define-public r-frscore
  (package
    (name "r-frscore")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frscore" version))
       (sha256
        (base32 "1nfl6jzghr3zg63l3vzkpx8fpr2mz60nxikmssngbcbv6qfyi8i8"))))
    (properties `((upstream-name . "frscore")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rfast
                             r-magrittr
                             r-lifecycle
                             r-dplyr
                             r-cna))
    (home-page "https://cran.r-project.org/package=frscore")
    (synopsis "Functions for Calculating Fit-Robustness of CNA-Solutions")
    (description
     "This package provides functions for automatically performing a reanalysis series
on a data set using CNA, and for calculating the fit-robustness of the resulting
models, as described in Parkkinen and Baumgartner (2021)
<doi:10.1177/0049124120986200>.")
    (license license:agpl3+)))

(define-public r-frostr
  (package
    (name "r-frostr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frostr" version))
       (sha256
        (base32 "1bsgdskdbyryq7jvhnb4z4xb1m5vadqv00qjlkgp41xh71wp2brs"))))
    (properties `((upstream-name . "frostr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=frostr")
    (synopsis "R API to MET Norway's 'Frost' API")
    (description
     "An R API to MET Norway's Frost API <https://frost.met.no/index.html> to retrieve
data as data frames.  The Frost API, and the underlying data, is made available
by the Norwegian Meteorological Institute (MET Norway).  The data and products
are distributed under the Norwegian License for Open Data 2.0 (NLOD)
<https://data.norge.no/nlod/en/2.0> and Creative Commons 4.0
<https://creativecommons.org/licenses/by/4.0/>.")
    (license license:expat)))

(define-public r-frontiles
  (package
    (name "r-frontiles")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frontiles" version))
       (sha256
        (base32 "0m4hw4bybahwmpj14ypc5f078j6zpxi5c04ys9qnhks6x4g2a646"))))
    (properties `((upstream-name . "frontiles")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-colorspace))
    (home-page "https://cran.r-project.org/package=frontiles")
    (synopsis "Partial Frontier Efficiency Analysis")
    (description
     "It calculates the alpha-quantile proposed by Daouia and Simar (2007)
<doi:10.1016/j.jeconom.2006.07.002> and order-m efficiency score in
multi-dimension proposed by Daouia and Gijbels (2011)
<doi:10.1016/j.jeconom.2010.12.002> and computes several summaries and
representation of the associated frontiers in 2d and 3d.")
    (license license:gpl2+)))

(define-public r-frontier
  (package
    (name "r-frontier")
    (version "1.1-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frontier" version))
       (sha256
        (base32 "1qhasynm23yihmhb4d7w72msq2z1xf4xnzrkah3z8jv11yxhg1i2"))))
    (properties `((upstream-name . "frontier")))
    (build-system r-build-system)
    (propagated-inputs (list r-plm
                             r-moments
                             r-misctools
                             r-micecon
                             r-lmtest
                             r-formula))
    (native-inputs (list gfortran))
    (home-page "http://frontier.r-forge.r-project.org/")
    (synopsis "Stochastic Frontier Analysis")
    (description
     "Maximum Likelihood Estimation of Stochastic Frontier Production and Cost
Functions.  Two specifications are available: the error components specification
with time-varying efficiencies (Battese and Coelli, 1992,
<doi:10.1007/BF00158774>) and a model specification in which the firm effects
are directly influenced by a number of variables (Battese and Coelli, 1995,
<doi:10.1007/BF01205442>).")
    (license license:gpl2+)))

(define-public r-fromo
  (package
    (name "r-fromo")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fromo" version))
       (sha256
        (base32 "0srq13j0xqbyrmm8n93b5qwc25nz921z45yf467d7gfhxsbgy3hm"))))
    (properties `((upstream-name . "fromo")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shabbychef/fromo")
    (synopsis "Fast Robust Moments")
    (description
     "Fast, numerically robust computation of weighted moments via Rcpp'.  Supports
computation on vectors and matrices, and Monoidal append of moments.  Moments
and cumulants over running fixed length windows can be computed, as well as over
time-based windows.  Moment computations are via a generalization of Welford's
method, as described by Bennett et. (2009) <doi:10.1109/CLUSTR.2009.5289161>.")
    (license license:lgpl3)))

(define-public r-frlr
  (package
    (name "r-frlr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fRLR" version))
       (sha256
        (base32 "0kmv3qi3lvbxlqhbmagqqbi4bvd5lf9023hck51vjw265s7yz9m8"))))
    (properties `((upstream-name . "fRLR")))
    (build-system r-build-system)
    (inputs (list gsl))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/szcf-weiya/fRLR")
    (synopsis "Fit Repeated Linear Regressions")
    (description
     "When fitting a set of linear regressions which have some same variables, we can
separate the matrix and reduce the computation cost.  This package aims to fit a
set of repeated linear regressions faster.  More details can be found in this
blog Lijun Wang (2017)
<https://stats.hohoweiya.xyz/regression/2017/09/26/An-R-Package-Fit-Repeated-Linear-Regressions/>.")
    (license license:gpl2+)))

(define-public r-frk
  (package
    (name "r-frk")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRK" version))
       (sha256
        (base32 "1jwsmrc4hqask0bls4rd8bssgddpy17l615w6p19iiayd3xlir55"))))
    (properties `((upstream-name . "FRK")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmb
                             r-statmod
                             r-sparseinv
                             r-spacetime
                             r-sp
                             r-scales
                             r-reshape2
                             r-rcppeigen
                             r-rcpp
                             r-plyr
                             r-matrix
                             r-hmisc
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://andrewzm.github.io/FRK/")
    (synopsis "Fixed Rank Kriging")
    (description
     "This package provides a tool for spatial/spatio-temporal modelling and
prediction with large datasets.  The approach models the field, and hence the
covariance function, using a set of basis functions.  This fixed-rank
basis-function representation facilitates the modelling of big data, and the
method naturally allows for non-stationary, anisotropic covariance functions.
Discretisation of the spatial domain into so-called basic areal units (BAUs)
facilitates the use of observations with varying support (i.e., both
point-referenced and areal supports, potentially simultaneously), and prediction
over arbitrary user-specified regions. `FRK` also supports inference over
various manifolds, including the 2D plane and 3D sphere, and it provides helper
functions to model, fit, predict, and plot with relative ease.  Version 2.0.0
and above also supports the modelling of non-Gaussian data (e.g., Poisson,
binomial, negative-binomial, gamma, and inverse-Gaussian) by employing a
generalised linear mixed model (GLMM) framework.  Zammit-Mangion and Cressie
<doi:10.18637/jss.v098.i04> describe `FRK` in a Gaussian setting, and detail its
use of basis functions and BAUs, while Sainsbury-Dale et al.
<@code{arXiv:2110.02507>} describe `FRK` in a non-Gaussian setting; two
vignettes are available that summarise these papers and provide additional
examples.")
    (license license:gpl2+)))

(define-public r-fritools2
  (package
    (name "r-fritools2")
    (version "4.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fritools2" version))
       (sha256
        (base32 "1gbji1nq1jgw2h6ll4qzxv6hwvlp3zbw1n9ljnjw4zmz031c3zjd"))))
    (properties `((upstream-name . "fritools2")))
    (build-system r-build-system)
    (native-inputs (list))
    (home-page "https://gitlab.com/fvafrcu/fritools")
    (synopsis
     "Utilities for the Forest Research Institute of the State Baden-Wuerttemberg")
    (description
     "Miscellaneous utilities, tools and helper functions for finding and searching
files on disk, searching for and removing R objects from the workspace.  Does
not import or depend on any third party package, but on core R only (i.e.  it
may depend on packages with priority base').")
    (license license:bsd-2)))

(define-public r-fritools
  (package
    (name "r-fritools")
    (version "4.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fritools" version))
       (sha256
        (base32 "1cbh3m0v8vganmsdi2q6ggrfs3rw4wpi4zzsn1vhjkq1dcrb7bsz"))))
    (properties `((upstream-name . "fritools")))
    (build-system r-build-system)
    (native-inputs (list))
    (home-page "https://gitlab.com/fvafrcu/fritools")
    (synopsis
     "Utilities for the Forest Research Institute of the State Baden-Wuerttemberg")
    (description
     "Miscellaneous utilities, tools and helper functions for finding and searching
files on disk, searching for and removing R objects from the workspace.  Does
not import or depend on any third party package, but on core R only (i.e.  it
may depend on packages with priority base').")
    (license license:bsd-2)))

(define-public r-friends
  (package
    (name "r-friends")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "friends" version))
       (sha256
        (base32 "164p9g07vq3xs2lgg250yvzca4b0mp81pqbnjfdkzcqh5hmahsan"))))
    (properties `((upstream-name . "friends")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/EmilHvitfeldt/friends")
    (synopsis "The Entire Transcript from Friends in Tidy Format")
    (description
     "The complete scripts from the American sitcom Friends in tibble format.  Use
this package to practice data wrangling, text analysis and network analysis.")
    (license license:expat)))

(define-public r-frictionless
  (package
    (name "r-frictionless")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frictionless" version))
       (sha256
        (base32 "0821j53jnkak4nfzqyqrm07qz79laxvwsx78bbn4y1765awyxvaw"))))
    (properties `((upstream-name . "frictionless")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/frictionlessdata/frictionless-r")
    (synopsis "Read and Write Frictionless Data Packages")
    (description
     "Read and write Frictionless Data Packages.  A Data Package
(<https://specs.frictionlessdata.io/data-package/>) is a simple container format
and standard to describe and package a collection of (tabular) data.  It is
typically used to publish FAIR (<https://www.go-fair.org/fair-principles/>) and
open datasets.")
    (license license:expat)))

(define-public r-fri
  (package
    (name "r-fri")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRI" version))
       (sha256
        (base32 "17ddbr0hndpr5627n67467787rq8hidi1jn1c3xf7f7qz800jjf5"))))
    (properties `((upstream-name . "FRI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsnns r-neuralnet r-ggplot2 r-forcats))
    (home-page "https://cran.r-project.org/package=FRI")
    (synopsis "Relative Importance of Main and Interaction Effects")
    (description
     "Computes relative importance of main and interaction effects.  Also, sum of the
modified generalized weights is computed.  Ibrahim et al. (2022)
<doi:10.1134/S1064229322080051>.")
    (license license:expat)))

(define-public r-frf2-catlg128
  (package
    (name "r-frf2-catlg128")
    (version "1.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FrF2.catlg128" version))
       (sha256
        (base32 "0jlp3qfikzc01qzlqnwnp96iylhzk0a1fazk6lankplkvxnv0zpc"))))
    (properties `((upstream-name . "FrF2.catlg128")))
    (build-system r-build-system)
    (propagated-inputs (list r-frf2))
    (home-page "https://prof.bht-berlin.de/groemping/DoE/")
    (synopsis
     "Catalogues of Resolution IV 128 Run 2-Level Fractional Factorials Up to 33 Factors that Do Have 5-Letter Words")
    (description
     "Catalogues of resolution IV regular fractional factorial designs in 128 runs are
provided for up to 33 2-level factors.  The catalogues are complete, excluding
resolution IV designs without 5-letter words, because these do not add value for
a search for unblocked clear designs.  The previous package version 1.0 with
complete catalogues up to 24 runs (24 runs and a namespace added later) can be
downloaded from the authors website.")
    (license license:gpl2+)))

(define-public r-frf2
  (package
    (name "r-frf2")
    (version "2.3-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FrF2" version))
       (sha256
        (base32 "11ljgqxan5afsczihvwd14p4ygk8z7hif753ka5wxpla8wp92xxx"))))
    (properties `((upstream-name . "FrF2")))
    (build-system r-build-system)
    (propagated-inputs (list r-sfsmisc r-scatterplot3d r-igraph r-doe-base))
    (home-page "https://prof.bht-berlin.de/groemping/DoE/")
    (synopsis "Fractional Factorial Designs with 2-Level Factors")
    (description
     "Regular and non-regular Fractional Factorial 2-level designs can be created.
Furthermore, analysis tools for Fractional Factorial designs with 2-level
factors are offered (main effects and interaction plots for all factors
simultaneously, cube plot for looking at the simultaneous effects of three
factors, full or half normal plot, alias structure in a more readable format
than with the built-in function alias).")
    (license license:gpl2+)))

(define-public r-freshr
  (package
    (name "r-freshr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freshr" version))
       (sha256
        (base32 "1vzwdy5cssk9r3fvw0w1pxkn203whzycmvz9fdm08lkd538zwdnj"))))
    (properties `((upstream-name . "freshr")))
    (build-system r-build-system)
    (home-page "https://github.com/shawnlinxl/freshr")
    (synopsis "Make R Environment Fresh Again")
    (description
     "This package provides a simple way to unload none-base packages and remove all
global variables.")
    (license license:expat)))

(define-public r-freshd
  (package
    (name "r-freshd")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRESHD" version))
       (sha256
        (base32 "0lpggf59dd3kwp2y9p4acvhdmc6i47bwa5lk6d6cp8q0g7sr44rm"))))
    (properties `((upstream-name . "FRESHD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpparmadillo r-rcpp r-glamlasso))
    (home-page "https://cran.r-project.org/package=FRESHD")
    (synopsis "Fast Robust Estimation of Signals in Heterogeneous Data")
    (description
     "Procedure for solving the maximin problem for identical design across
heterogeneous data groups.  Particularly efficient when the design matrix is
either orthogonal or has tensor structure.  Orthogonal wavelets can be specified
for 1d, 2d or 3d data simply by name.  For tensor structured design the tensor
components (two or three) may be supplied.  The package also provides an
efficient implementation of the generic magging estimator.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fresa-cad
  (package
    (name "r-fresa-cad")
    (version "3.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRESA.CAD" version))
       (sha256
        (base32 "17bx8r6a2d74y83zya347hag035ypdmphz710xwq2islgzlvlv9l"))))
    (properties `((upstream-name . "FRESA.CAD")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rcpparmadillo
                             r-rcpp
                             r-proc
                             r-misctools
                             r-hmisc))
    (home-page "https://cran.r-project.org/package=FRESA.CAD")
    (synopsis "Feature Selection Algorithms for Computer Aided Diagnosis")
    (description
     "This package contains a set of utilities for building and testing statistical
models (linear, logistic,ordinal or COX) for Computer Aided Diagnosis/Prognosis
applications.  Utilities include data adjustment, univariate analysis, model
building, model-validation, longitudinal analysis, reporting and visualization.")
    (license license:lgpl2.0+)))

(define-public r-frequentistssd
  (package
    (name "r-frequentistssd")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frequentistSSD" version))
       (sha256
        (base32 "1d54zr87795gm4qc6aw3nv9i83rhnhv14rcpkrivdxhxv8rnhnn9"))))
    (properties `((upstream-name . "frequentistSSD")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=frequentistSSD")
    (synopsis "Screened Selection Design with Survival Endpoints")
    (description
     "This package provides a study based on the screened selection design (SSD) is an
exploratory phase II randomized trial with two or more arms but without
concurrent control.  The primary aim of the SSD trial is to pick a desirable
treatment arm (e.g., in terms of the median survival time) to recommend to the
subsequent randomized phase IIb (with the concurrent control) or phase III.
Though The survival endpoint is often encountered in phase II trials, the
existing SSD methods cannot deal with the survival endpoint.  Furthermore, the
existing SSD wonât control the type I error rate.  The proposed designs can
âpartiallyâ control or provide the empirical type I error/false positive
rate by an optimal algorithm (implemented by the optimal() function) for each
arm.  All the design needed components (sample size, operating characteristics)
are supported.")
    (license license:gpl2)))

(define-public r-frequentdirections
  (package
    (name "r-frequentdirections")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frequentdirections" version))
       (sha256
        (base32 "0rmifh221c8z3cqyqg0bfxnih9f64hvv98jz44i6grnlablfwwgw"))))
    (properties `((upstream-name . "frequentdirections")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/shinichi-takayanagi/frequentdirections")
    (synopsis
     "Implementation of Frequent-Directions Algorithm for Efficient Matrix Sketching")
    (description
     "Implement frequent-directions algorithm for efficient matrix sketching. (Edo
Liberty (2013) <doi:10.1145/2487575.2487623>).")
    (license license:expat)))

(define-public r-frequencyconnectedness
  (package
    (name "r-frequencyconnectedness")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frequencyConnectedness" version))
       (sha256
        (base32 "1qk0z64vfm4swbixyxhdsqcml2syslc0n61cg9hfbnwxnic8bmcm"))))
    (properties `((upstream-name . "frequencyConnectedness")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars r-urca r-pbapply r-knitr))
    (home-page "https://github.com/tomaskrehlik/frequencyConnectedness")
    (synopsis "Spectral Decomposition of Connectedness Measures")
    (description
     "Accompanies a paper (Barunik, Krehlik (2018) <doi:10.1093/jjfinec/nby001>)
dedicated to spectral decomposition of connectedness measures and their
interpretation.  We implement all the developed estimators as well as the
historical counterparts.  For more information, see the help or @code{GitHub}
page (<https://github.com/tomaskrehlik/@code{frequencyConnectedness>}) for
relevant information.")
    (license license:gpl2)))

(define-public r-frequency
  (package
    (name "r-frequency")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frequency" version))
       (sha256
        (base32 "0sjsc803ysyg2gfzb7z4jb2sikwxs99is2m03k5glfy3ylgphn0d"))))
    (properties `((upstream-name . "frequency")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-knitr r-gtools r-ggplot2 r-dt))
    (home-page "https://github.com/wilcoxa/frequency")
    (synopsis "Easy Frequency Tables")
    (description
     "Generate SPSS'/'SAS styled frequency tables.  Frequency tables are generated
with variable and value label attributes where applicable with optional html
output to quickly examine datasets.")
    (license license:gpl3)))

(define-public r-freqtables
  (package
    (name "r-freqtables")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqtables" version))
       (sha256
        (base32 "03xcv08f8xzmrd6msk15vljp2srv59dzzs5ngkw1p2dv917w7dq3"))))
    (properties `((upstream-name . "freqtables")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brad-cannell/freqtables")
    (synopsis "Make Quick Descriptive Tables for Categorical Variables")
    (description
     "Quickly make tables of descriptive statistics (i.e., counts, percentages,
confidence intervals) for categorical variables.  This package is designed to
work in a Tidyverse pipeline, and consideration has been given to get results
from R to Microsoft Word Â® with minimal pain.")
    (license license:expat)))

(define-public r-freqprof
  (package
    (name "r-freqprof")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FreqProf" version))
       (sha256
        (base32 "1yqn2435l2sghfcv5mma0rv9yqvpa69z8cqqsjlrlbih9gib82d4"))))
    (properties `((upstream-name . "FreqProf")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-reshape2 r-ggplot2))
    (home-page "https://github.com/AIBRT/FreqProf")
    (synopsis "Frequency Profiles Computing and Plotting")
    (description
     "This package provides tools for generating an informative type of line graph,
the frequency profile, which allows single behaviors, multiple behaviors, or the
specific behavioral patterns of individual subjects to be graphed from
occurrence/nonoccurrence behavioral data.")
    (license license:gpl3)))

(define-public r-freqpcr
  (package
    (name "r-freqpcr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqpcr" version))
       (sha256
        (base32 "04s6yrzxk4v86nhs9mwam1y2lfac73r6i8af9xbbmrlzj61wiia9"))))
    (properties `((upstream-name . "freqpcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-cubature))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sudoms/freqpcr")
    (synopsis
     "Estimates Allele Frequency on qPCR DeltaDeltaCq from Bulk Samples")
    (description
     "Interval estimation of the population allele frequency from @code{qPCR} analysis
based on the restriction enzyme digestion (RED)-@code{DeltaDeltaCq} method
(Osakabe et al.  2017, <doi:10.1016/j.pestbp.2017.04.003>), as well as general
@code{DeltaDeltaCq} analysis.  Compatible with the Cq measurement of DNA
extracted from multiple individuals at once, so called \"group-testing\", this
model assumes that the quantity of DNA extracted from an individual organism
follows a gamma distribution.  Therefore, the point estimate is robust regarding
the uncertainty of the DNA yield.")
    (license license:gpl3+)))

(define-public r-freqparcoord
  (package
    (name "r-freqparcoord")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqparcoord" version))
       (sha256
        (base32 "011p8xh0i0x0w5rv5qz5a7fxwdhxd8l2bqi9bxv5almxd0y7ajqx"))))
    (properties `((upstream-name . "freqparcoord")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-ggplot2 r-ggally r-fnn))
    (home-page "https://cran.r-project.org/package=freqparcoord")
    (synopsis "Novel Methods for Parallel Coordinates")
    (description
     "New approaches to parallel coordinates plots for multivariate data
visualization, including applications to clustering, outlier hunting and
regression diagnostics.  Includes general functions for multivariate
nonparametric density and regression estimation, using parallel computation.")
    (license license:gpl2+)))

(define-public r-freqdom-fda
  (package
    (name "r-freqdom-fda")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqdom.fda" version))
       (sha256
        (base32 "1y9g85sp0w8rvhmsrln64bj1h03wkpgriqidc3pf123if58ap72m"))))
    (properties `((upstream-name . "freqdom.fda")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-freqdom r-fda))
    (home-page "https://cran.r-project.org/package=freqdom.fda")
    (synopsis
     "Functional Time Series: Dynamic Functional Principal Components")
    (description
     "Implementations of functional dynamic principle components analysis.  Related
graphic tools and frequency domain methods.  These methods directly use
multivariate dynamic principal components implementation, following the
guidelines from Hormann, Kidzinski and Hallin (2016), Dynamic Functional
Principal Component <doi:10.1111/rssb.12076>.")
    (license license:gpl3)))

(define-public r-freqdom
  (package
    (name "r-freqdom")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqdom" version))
       (sha256
        (base32 "0gq91zmai0jcn9wgddqkws9bvj5kx70kccnszhdzbdsh2irqjbgv"))))
    (properties `((upstream-name . "freqdom")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrixcalc))
    (home-page "https://cran.r-project.org/package=freqdom")
    (synopsis "Frequency Domain Based Analysis: Dynamic PCA")
    (description
     "Implementation of dynamic principal component analysis (DPCA), simulation of VAR
and VMA processes and frequency domain tools.  These frequency domain methods
for dimensionality reduction of multivariate time series were introduced by
David Brillinger in his book Time Series (1974).  We follow implementation
guidelines as described in Hormann, Kidzinski and Hallin (2016), Dynamic
Functional Principal Component <doi:10.1111/rssb.12076>.")
    (license license:gpl3)))

(define-public r-freqdistributionnogives
  (package
    (name "r-freqdistributionnogives")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqdistributionNogives" version))
       (sha256
        (base32 "1y01yiyzgcsr8xcjgxq75ky8a6f4d2h3x82la3zcrczy7fplblq4"))))
    (properties `((upstream-name . "freqdistributionNogives")))
    (build-system r-build-system)
    (home-page "https://github.com/Harshit-Budakoti/freqdistributionNogives")
    (synopsis "Automated Cumulative Frequency Plots for Grouped Distribution")
    (description
     "Input has to be in the form of vectors of lower class limits and upper class
limits and frequencies; the output will give a cumulative frequency distribution
table with cumulative frequency plot.")
    (license license:gpl3)))

(define-public r-freqdist
  (package
    (name "r-freqdist")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freqdist" version))
       (sha256
        (base32 "1pb45jabv9s3qa7v1isd5wm9b0g9p04q5h18spcaax8397s0d2fv"))))
    (properties `((upstream-name . "freqdist")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=freqdist")
    (synopsis "Frequency Distribution")
    (description
     "Generates a frequency distribution.  The frequency distribution includes raw
frequencies, percentages in each category, and cumulative frequencies.  The
frequency distribution can be stored as a data frame.")
    (license license:gpl2)))

(define-public r-freq
  (package
    (name "r-freq")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FREQ" version))
       (sha256
        (base32 "01nra30pbnqdd63pa87lcws3hnhhzybcjvx2jqyxjghn6khz47j0"))))
    (properties `((upstream-name . "FREQ")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FREQ")
    (synopsis "FREQ: Estimate population size from capture frequencies")
    (description
     "Real capture frequencies will be fitted to various distributions which provide
the basis of estimating population sizes, their standard error, and symmetric as
well as asymmetric confidence intervalls.")
    (license license:gpl2)))

(define-public r-frenchdata
  (package
    (name "r-frenchdata")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frenchdata" version))
       (sha256
        (base32 "13n0phncbxim9ak897hmjw1p7ph5wi3jn2m8hgmm3bywxbxcg1qz"))))
    (properties `((upstream-name . "frenchdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-httr
                             r-fs
                             r-dplyr
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://nareal.github.io/frenchdata/")
    (synopsis
     "Download Data Sets from Kenneth's French Finance Data Library Site")
    (description
     "Download data sets from Kenneth's French finance data library site
<http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html>,
reads all the data subsets from the file.  Allows R users to collect the data as
tidyverse'-ready data frames.")
    (license license:expat)))

(define-public r-frenchcurve
  (package
    (name "r-frenchcurve")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frenchCurve" version))
       (sha256
        (base32 "123dvjpny9avwwsgqhaa2f79796vjh8k018vgr8rx72ja2x9cy8f"))))
    (properties `((upstream-name . "frenchCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=frenchCurve")
    (synopsis "Generate Open or Closed Interpolating Curves")
    (description
     "This package provides functions for finding smooth interpolating curves
connecting a series of points in the plane.  Curves may be open or closed, that
is, with the first and last point of the curve at the initial point.")
    (license license:gpl2)))

(define-public r-fregression
  (package
    (name "r-fregression")
    (version "4021.83")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fRegression" version))
       (sha256
        (base32 "12xwq90rch8s8jk3m4ckk6bxjf5phwx8hjwxjdsk2r07afvfc2zi"))))
    (properties `((upstream-name . "fRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-polspline
                             r-nnet
                             r-mgcv
                             r-mass
                             r-lmtest
                             r-fbasics))
    (native-inputs (list gfortran))
    (home-page "https://www.rmetrics.org")
    (synopsis "Rmetrics - Regression Based Decision and Prediction")
    (description
     "This package provides a collection of functions for linear and non-linear
regression modelling.  It implements a wrapper for several regression models
available in the base and contributed packages of R.")
    (license license:gpl2+)))

(define-public r-freetree
  (package
    (name "r-freetree")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FREEtree" version))
       (sha256
        (base32 "1i2liqbcg993snj5vq341mmafzhn1yrwljvx4f3kyzy0pa59k6rn"))))
    (properties `((upstream-name . "FREEtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna r-pre r-mass r-glmertree))
    (home-page "https://cran.r-project.org/package=FREEtree")
    (synopsis "Tree Method for High Dimensional Longitudinal Data")
    (description
     "This tree-based method deals with high dimensional longitudinal data with
correlated features through the use of a piecewise random effect model.  FREE
tree also exploits the network structure of the features, by first clustering
them using Weighted Gene Co-expression Network Analysis ('WGCNA').  It then
conducts a screening step within each cluster of features and a selecting step
among the surviving features, which provides a relatively unbiased way to do
feature selection.  By using dominant principle components as regression
variables at each leaf and the original features as splitting variables at
splitting nodes, FREE tree delivers easily interpretable results while improving
computational efficiency.")
    (license license:gpl3)))

(define-public r-freesurferformats
  (package
    (name "r-freesurferformats")
    (version "0.1.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freesurferformats" version))
       (sha256
        (base32 "125vmx9gw9czlp86c2byv1fdslzhjn8q0plgqnk065sjhbla46cn"))))
    (properties `((upstream-name . "freesurferformats")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rmarkdown r-pkgfilecache))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dfsp-spirit/freesurferformats")
    (synopsis "Read and Write 'FreeSurfer' Neuroimaging File Formats")
    (description
     "This package provides functions to read and write neuroimaging data in various
file formats, with a focus on @code{FreeSurfer} <http://freesurfer.net/>
formats.  This includes, but is not limited to, the following file formats: 1)
MGH/MGZ format files, which can contain multi-dimensional images or other data.
Typically they contain time-series of three-dimensional brain scans acquired by
magnetic resonance imaging (MRI).  They can also contain vertex-wise measures of
surface morphometry data.  The MGH format is named after the Massachusetts
General Hospital, and the MGZ format is a compressed version of the same format.
 2) @code{FreeSurfer} morphometry data files in binary curv format.  These
contain vertex-wise surface measures, i.e., one scalar value for each vertex of
a brain surface mesh.  These are typically values like the cortical thickness or
brain surface area at each vertex.  3) Annotation file format.  This contains a
brain surface parcellation derived from a cortical atlas.  4) Surface file
format.  Contains a brain surface mesh, given by a list of vertices and a list
of faces.")
    (license license:expat)))

(define-public r-freesortr
  (package
    (name "r-freesortr")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FreeSortR" version))
       (sha256
        (base32 "1m6ahhixbbizzn09pz71zvinrdshn3j6gmy05jdxa9d932agqk0w"))))
    (properties `((upstream-name . "FreeSortR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-smacof r-ellipse))
    (home-page "https://cran.r-project.org/package=FreeSortR")
    (synopsis "Free Sorting Data Analysis")
    (description
     "This package provides tools for describing and analysing free sorting data.
Main methods are computation of consensus partition and factorial analysis of
the dissimilarity matrix between stimuli (using multidimensional scaling
approach).")
    (license license:gpl2)))

(define-public r-freegroup
  (package
    (name "r-freegroup")
    (version "1.1-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freegroup" version))
       (sha256
        (base32 "17hrcgl3gy99j4mkg019556yk1nxbksmhwcwpkp8fa1lkpmnqr7x"))))
    (properties `((upstream-name . "freegroup")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-magrittr r-magic r-freealg))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/freegroup")
    (synopsis "The Free Group")
    (description
     "The free group in R; juxtaposition is represented by a plus.  Includes
inversion, multiplication by a scalar, group-theoretic power operation, and
Tietze forms.  To cite the package in publications please use Hankin (2022)
<doi:10.48550/ARXIV.2212.05883>.")
    (license license:gpl2)))

(define-public r-freedom
  (package
    (name "r-freedom")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freedom" version))
       (sha256
        (base32 "1mrdl2cqdm2c68lx7lyixgiqw6xzwnx9c8j5q4annhiz107i9i22"))))
    (properties `((upstream-name . "freedom")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SVA-SE/freedom")
    (synopsis "Demonstration of Disease Freedom (DDF)")
    (description
     "This package implements the formulae required to calculate freedom from disease
according to Cameron and Baldock (1998) <doi:10.1016/S0167-5877(97)00081-0>.
These are the methods used at the Swedish national veterinary institute (SVA) to
evaluate the performance of our nation animal disease surveillance programmes.")
    (license license:gpl3)))

(define-public r-freecurrencyapi
  (package
    (name "r-freecurrencyapi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freecurrencyapi" version))
       (sha256
        (base32 "02j5jkx0hrv6brb1px782ilv4zlbnv4g2nc4a5d09lqxxvc09kjy"))))
    (properties `((upstream-name . "freecurrencyapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://freecurrencyapi.com")
    (synopsis "Client for the 'freecurrencyapi.com' Currency Conversion API")
    (description
     "An R client for the freecurrencyapi.com currency conversion API. The API
requires registration of an API key.  You can find the full API documentation at
<https://freecurrencyapi.com/docs> .")
    (license license:expat)))

(define-public r-freebird
  (package
    (name "r-freebird")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freebird" version))
       (sha256
        (base32 "1rxn4xdp801sng3dzfwm7j001igkn51qx2kc4bcpbczdhb43bzaw"))))
    (properties `((upstream-name . "freebird")))
    (build-system r-build-system)
    (propagated-inputs (list r-scalreg r-rmosek r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=freebird")
    (synopsis
     "Estimation and Inference for High Dimensional Mediation and Surrogate Analysis")
    (description
     "Estimates and provides inference for quantities that assess high dimensional
mediation and potential surrogate markers including the direct effect of
treatment, indirect effect of treatment, and the proportion of treatment effect
explained by a surrogate/mediator; details are described in Zhou et al (2022)
<doi:10.1002/sim.9352> and Zhou et al (2020) <doi:10.1093/biomet/asaa016>.  This
package relies on the optimization software MOSEK', <https://www.mosek.com>.")
    (license license:gpl2+)))

(define-public r-freealg
  (package
    (name "r-freealg")
    (version "1.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "freealg" version))
       (sha256
        (base32 "0jx9r40hql8fkpjr005snavj8fw5ykqa4ya7cy59jhxr31byma3j"))))
    (properties `((upstream-name . "freealg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-partitions r-mathjaxr r-disordr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/freealg")
    (synopsis "The Free Algebra")
    (description
     "The free algebra in R with non-commuting indeterminates.  Uses @code{disordR}
discipline (Hankin, 2022, <doi:10.48550/ARXIV.2210.03856>).  To cite the package
in publications please use Hankin (2022) <doi:10.48550/ARXIV.2211.04002>.")
    (license license:gpl2+)))

(define-public r-free
  (package
    (name "r-free")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "free" version))
       (sha256
        (base32 "0r9vd1d4pi19mnvdchx95axp0hiqs8lpgp0fn40dm89h5fd6zyb0"))))
    (properties `((upstream-name . "free")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=free")
    (synopsis "Flexible Regularized Estimating Equations")
    (description
     "Unified regularized estimating equation solver.  Currently the package includes
one solver with the l1 penalty only.  More solvers and penalties are under
development.  Reference: Yi Yang, Yuwen Gu, Yue Zhao, Jun Fan (2021)
<@code{arXiv:2110.11074>}.")
    (license license:gpl3)))

(define-public r-fredr
  (package
    (name "r-fredr")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fredr" version))
       (sha256
        (base32 "0073qh0drf1p38hc84m54n35hyza90m8zn48ihx3alxkiq1m8ijp"))))
    (properties `((upstream-name . "fredr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sboysel/fredr")
    (synopsis "An R Client for the 'FRED' API")
    (description
     "An R client for the Federal Reserve Economic Data ('FRED') API
<https://research.stlouisfed.org/docs/api/>.  Functions to retrieve economic
time series and other data from FRED'.")
    (license license:expat)))

(define-public r-frechet
  (package
    (name "r-frechet")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frechet" version))
       (sha256
        (base32 "1006mgy9avwkwy0666maac59xp4j27wq5yy3pwc3h1r05myxw379"))))
    (properties `((upstream-name . "frechet")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma
                             r-osqp
                             r-matrix
                             r-fdapace
                             r-fdadensity
                             r-corrplot))
    (home-page "https://github.com/functionaldata/tFrechet")
    (synopsis "Statistical Analysis for Random Objects and Non-Euclidean Data")
    (description
     "This package provides implementation of statistical methods for random objects
lying in various metric spaces, which are not necessarily linear spaces.  The
core of this package is @code{FrÃ©chet} regression for random objects with
Euclidean predictors, which allows one to perform regression analysis for
non-Euclidean responses under some mild conditions.  Examples include
distributions in L^2-Wasserstein space, covariance matrices endowed with power
metric (with Frobenius metric as a special case), Cholesky and log-Cholesky
metrics.  References: Petersen, A., & MÃ¼ller, H.-G. (2019)
<doi:10.1214/17-AOS1624>.")
    (license license:bsd-3)))

(define-public r-frcc
  (package
    (name "r-frcc")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRCC" version))
       (sha256
        (base32 "18i2lrx2qkwj8j1c3q2vx901hx1f68bnjyrzyhkfmnswyy358368"))))
    (properties `((upstream-name . "FRCC")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-corpcor r-ccp r-calibrate))
    (home-page "https://cran.r-project.org/package=FRCC")
    (synopsis "Fast Regularized Canonical Correlation Analysis")
    (description
     "This package contains the core functions associated with Fast Regularized
Canonical Correlation Analysis.  Please see the following for details: Raul
Cruz-Cano, Mei-Ling Ting Lee, Fast regularized canonical correlation analysis,
Computational Statistics & Data Analysis, Volume 70, 2014, Pages 88-100, ISSN
0167-9473 <doi:10.1016/j.csda.2013.09.020>.")
    (license license:gpl2+)))

(define-public r-frbs
  (package
    (name "r-frbs")
    (version "3.2-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frbs" version))
       (sha256
        (base32 "0biv6j31qi0f4i063ygmbp6v6ws1nxijn5kyhg5sz1rnbr0msl28"))))
    (properties `((upstream-name . "frbs")))
    (build-system r-build-system)
    (native-inputs (list r-r-rsp))
    (home-page "http://sci2s.ugr.es/dicits/software/FRBS")
    (synopsis
     "Fuzzy Rule-Based Systems for Classification and Regression Tasks")
    (description
     "An implementation of various learning algorithms based on fuzzy rule-based
systems (FRBSs) for dealing with classification and regression tasks.  Moreover,
it allows to construct an FRBS model defined by human experts.  FRBSs are based
on the concept of fuzzy sets, proposed by Zadeh in 1965, which aims at
representing the reasoning of human experts in a set of IF-THEN rules, to handle
real-life problems in, e.g., control, prediction and inference, data mining,
bioinformatics data processing, and robotics.  FRBSs are also known as fuzzy
inference systems and fuzzy models.  During the modeling of an FRBS, there are
two important steps that need to be conducted: structure identification and
parameter estimation.  Nowadays, there exists a wide variety of algorithms to
generate fuzzy IF-THEN rules automatically from numerical data, covering both
steps.  Approaches that have been used in the past are, e.g., heuristic
procedures, neuro-fuzzy techniques, clustering methods, genetic algorithms,
squares methods, etc.  Furthermore, in this version we provide a universal
framework named @code{frbsPMML}', which is adopted from the Predictive Model
Markup Language (PMML), for representing FRBS models.  PMML is an XML-based
language to provide a standard for describing models produced by data mining and
machine learning algorithms.  Therefore, we are allowed to export and import an
FRBS model to/from @code{frbsPMML}'.  Finally, this package aims to implement
the most widely used standard procedures, thus offering a standard package for
FRBS modeling to the R community.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-frbinom
  (package
    (name "r-frbinom")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frbinom" version))
       (sha256
        (base32 "1494fkffz0b5sggq0d3f4nzgaqf58sr9v26rzmmkabqmr983q1zp"))))
    (properties `((upstream-name . "frbinom")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=frbinom")
    (synopsis "Fractional Binomial Distributions")
    (description
     "Generating fractional binomial random variables and computing density,
cumulative distribution, and quantiles of fractional binomial distributions.
(Lee, J. (2023) <@code{arXiv:2209.01516>}.)")
    (license license:expat)))

(define-public r-frapplot
  (package
    (name "r-frapplot")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frapplot" version))
       (sha256
        (base32 "12924szk2p0582nv97gi8pxrbv41zqpjryc6jqgg4llhp7ydz7xf"))))
    (properties `((upstream-name . "frapplot")))
    (build-system r-build-system)
    (home-page "https://github.com/GuanqiaoDing/frapplot")
    (synopsis "Automatic Data Processing and Visualization for FRAP")
    (description
     "Automatically process Fluorescence Recovery After Photobleaching (FRAP) data and
generate consistent, publishable figures.  Note: this package does not replace
@code{ImageJ} (or its equivalence) in raw image quantification.  Some references
about the methods: Sprague, Brian L. (2004) <doi:10.1529/biophysj.103.026765>;
Day, Charles A. (2012) <doi:10.1002/0471142956.cy0219s62>.")
    (license license:expat)))

(define-public r-frapo
  (package
    (name "r-frapo")
    (version "0.4-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRAPO" version))
       (sha256
        (base32 "0mjcrplxr0cyybp5hzzwbq5j03w0f3iiiv1yk7mdqr5gb368dchq"))))
    (properties `((upstream-name . "FRAPO")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-rglpk r-cccp))
    (home-page "https://cran.r-project.org/package=FRAPO")
    (synopsis "Financial Risk Modelling and Portfolio Optimisation with R")
    (description
     "Accompanying package of the book Financial Risk Modelling and Portfolio
Optimisation with R', second edition.  The data sets used in the book are
contained in this package.")
    (license license:gpl3+)))

(define-public r-franc
  (package
    (name "r-franc")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "franc" version))
       (sha256
        (base32 "0l41m53li2pvcac7m5y5gkvmw0qy5k3v0m2ljda9gdaasg5029xr"))))
    (properties `((upstream-name . "franc")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://github.com/gaborcsardi/franc#readme")
    (synopsis "Detect the Language of Text")
    (description
     "With no external dependencies and support for 335 languages; all languages
spoken by more than one million speakers.  Franc is a port of the
@code{JavaScript} project of the same name, see
<https://github.com/wooorm/franc>.")
    (license license:expat)))

(define-public r-frames2
  (package
    (name "r-frames2")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Frames2" version))
       (sha256
        (base32 "0xbz19v5r1h15p8mf94vacw04h3kvmm88ayy4b1aqxrd925n63mw"))))
    (properties `((upstream-name . "Frames2")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampling r-nnet r-mass))
    (home-page "https://cran.r-project.org/package=Frames2")
    (synopsis "Estimation in Dual Frame Surveys")
    (description
     "Point and interval estimation in dual frame surveys.  In contrast to classic
sampling theory, where only one sampling frame is considered, dual frame
methodology assumes that there are two frames available for sampling and that,
overall, they cover the entire target population.  Then, two probability samples
(one from each frame) are drawn and information collected is suitably combined
to get estimators of the parameter of interest.")
    (license license:gpl2+)))

(define-public r-framecleaner
  (package
    (name "r-framecleaner")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "framecleaner" version))
       (sha256
        (base32 "1lclxjds59i1mhc8mzmgy5f7yhqwv72ylidpfvzjgslf45sjk5lp"))))
    (properties `((upstream-name . "framecleaner")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-tidyselect
                             r-tibble
                             r-stringr
                             r-rstudioapi
                             r-rlist
                             r-rlang
                             r-rio
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-janitor
                             r-fs
                             r-forcats
                             r-fastdummies
                             r-dplyr
                             r-bit64))
    (native-inputs (list r-knitr))
    (home-page "https://harrison4192.github.io/framecleaner/")
    (synopsis "Clean Data Frames")
    (description
     "This package provides a friendly interface for modifying data frames with a
sequence of piped commands built upon the tidyverse Wickham et al., (2019)
<doi:10.21105/joss.01686> .  The majority of commands wrap dplyr mutate
statements in a convenient way to concisely solve common issues that arise when
tidying small to medium data sets.  Includes smart defaults and allows flexible
selection of columns via tidyselect'.")
    (license license:expat)))

(define-public r-frair
  (package
    (name "r-frair")
    (version "0.5.100")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frair" version))
       (sha256
        (base32 "1j557dqvc5xiz7xbl4h7vp55pc3hly8ci01qy36p02vlxhzf4hj3"))))
    (properties `((upstream-name . "frair")))
    (build-system r-build-system)
    (propagated-inputs (list r-lamw r-boot r-bbmle))
    (home-page "https://github.com/dpritchard/frair")
    (synopsis "Tools for Functional Response Analysis")
    (description
     "This package provides tools to support sensible statistics for functional
response analysis.")
    (license license:gpl2)))

(define-public r-frailtysurv
  (package
    (name "r-frailtysurv")
    (version "1.3.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frailtySurv" version))
       (sha256
        (base32 "1k1pxn47gglkcjzix3h1vn9z631ms6icgv5df6pb90008qmilck7"))))
    (properties `((upstream-name . "frailtySurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-reshape2
                             r-rcpp
                             r-numderiv
                             r-nleqslv
                             r-ggplot2))
    (home-page "https://github.com/vmonaco/frailtySurv/")
    (synopsis "General Semiparametric Shared Frailty Model")
    (description
     "Simulates and fits semiparametric shared frailty models under a wide range of
frailty distributions using a consistent and asymptotically-normal estimator.
Currently supports: gamma, power variance function, log-normal, and inverse
Gaussian frailty models.")
    (license license:lgpl2.0)))

(define-public r-frailtymmpen
  (package
    (name "r-frailtymmpen")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frailtyMMpen" version))
       (sha256
        (base32 "03d3mlbwvpqjgxgw4cqy2502lx4gh8fvf7sbcq06w8yjljffn0a0"))))
    (properties `((upstream-name . "frailtyMMpen")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcppgsl r-rcpp r-numderiv r-mgcv))
    (home-page "https://cran.r-project.org/package=frailtyMMpen")
    (synopsis "Efficient Algorithm for High-Dimensional Frailty Model")
    (description
     "The penalized and non-penalized Minorize-Maximization (MM) method for frailty
models to fit the clustered data, multi-event data and recurrent data.  Least
absolute shrinkage and selection operator (LASSO), minimax concave penalty (MCP)
and smoothly clipped absolute deviation (SCAD) penalized functions are
implemented.  All the methods are computationally efficient.  These general
methods are proposed based on the following papers, Huang, Xu and Zhou (2022)
<doi:10.3390/math10040538>, Huang, Xu and Zhou (2023)
<doi:10.1177/09622802221133554>.")
    (license license:gpl2+)))

(define-public r-frailtyhl
  (package
    (name "r-frailtyhl")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frailtyHL" version))
       (sha256
        (base32 "115iv1d2c9mvviick8b24bn6kdbsvnf21nvfjm9a8dk0x07hrv5g"))))
    (properties `((upstream-name . "frailtyHL")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-matrix r-cmprsk))
    (home-page "https://cran.r-project.org/package=frailtyHL")
    (synopsis "Frailty Models via Hierarchical Likelihood")
    (description
     "This package implements the h-likelihood estimation procedures for general
frailty models including competing-risk models and joint models.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-frailtyem
  (package
    (name "r-frailtyem")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frailtyEM" version))
       (sha256
        (base32 "0ajqmn8353va8k3idsl90xsrhpdqarfmvg84d4kwayxlqy6dmbb0"))))
    (properties `((upstream-name . "frailtyEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-rcpp
                             r-numderiv
                             r-msm
                             r-matrix
                             r-magrittr
                             r-ggplot2
                             r-expint))
    (home-page "https://github.com/tbalan/frailtyEM")
    (synopsis "Fitting Frailty Models with the EM Algorithm")
    (description
     "This package contains functions for fitting shared frailty models with a
semi-parametric baseline hazard with the Expectation-Maximization algorithm.
Supported data formats include clustered failures with left truncation and
recurrent events in gap-time or Andersen-Gill format.  Several frailty
distributions, such as the the gamma, positive stable and the Power Variance
Family are supported.")
    (license license:gpl2+)))

(define-public r-fragman
  (package
    (name "r-fragman")
    (version "1.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Fragman" version))
       (sha256
        (base32 "03vmvmnyza4i46v1awkdjz6ccbsiq49dm0mlmwsm801rq6yfihgp"))))
    (properties `((upstream-name . "Fragman")))
    (build-system r-build-system)
    (home-page "http://www.wisc.edu")
    (synopsis "Fragment Analysis in R")
    (description
     "This package performs fragment analysis using genetic data coming from capillary
electrophoresis machines.  These are files with FSA extension which stands for
FASTA-type file, and .txt files from Beckman CEQ 8000 system, both contain DNA
fragment intensities read by machinery.  In addition to visualization, it
performs automatic scoring of SSRs (Sample Sequence Repeats; a type of genetic
marker very common across the genome) and other type of PCR markers (standing
for Polymerase Chain Reaction) in biparental populations such as F1, F2, BC
(backcross), and diversity panels (collection of genetic diversity).")
    (license license:gpl3)))

(define-public r-fragility
  (package
    (name "r-fragility")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fragility" version))
       (sha256
        (base32 "1izb3mkqxkhayfszlspqpjhai3wif6clv5yyc22pacc207p19542"))))
    (properties `((upstream-name . "fragility")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-netmeta r-metafor))
    (home-page "https://cran.r-project.org/package=fragility")
    (synopsis
     "Assessing and Visualizing Fragility of Clinical Results with Binary Outcomes")
    (description
     "This package provides a collection of user-friendly functions for assessing and
visualizing fragility of individual studies (Walsh et al., 2014
<doi:10.1016/j.jclinepi.2013.10.019>; Lin, 2021 <doi:10.1111/jep.13428>),
conventional pairwise meta-analyses (Atal et al., 2019
<doi:10.1016/j.jclinepi.2019.03.012>), and network meta-analyses of multiple
treatments with binary outcomes (Xing et al., 2020
<doi:10.1016/j.jclinepi.2020.07.003>).  The included functions are designed to:
1) calculate the fragility index (i.e., the minimal event status modifications
that can alter the significance or non-significance of the original result) and
fragility quotient (i.e., fragility index divided by sample size) at a specific
significance level; 2) give the cases of event status modifications for altering
the result's significance or non-significance and visualize these cases; 3)
visualize the trend of statistical significance as event status is modified; 4)
efficiently derive fragility indexes and fragility quotients at multiple
significance levels, and visualize the relationship between these fragility
measures against the significance levels; and 5) calculate fragility indexes and
fragility quotients of multiple datasets (e.g., a collection of clinical trials
or meta-analyses) and produce plots of their overall distributions.  The outputs
from these functions may inform the robustness of clinical results in terms of
statistical significance and aid the interpretation of fragility measures.  The
usage of this package is detailed in Lin and Chu (2022
<doi:10.1371/journal.pone.0268754>).")
    (license license:gpl2+)))

(define-public r-fracture
  (package
    (name "r-fracture")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fracture" version))
       (sha256
        (base32 "1pibw364dp567nf0pbj3adydapgf01cga441v3gj93frh9a412c1"))))
    (properties `((upstream-name . "fracture")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://fracture.rossellhayes.com/")
    (synopsis "Convert Decimals to Fractions")
    (description
     "This package provides functions for converting decimals to a matrix of
numerators and denominators or a character vector of fractions.  Supports mixed
or improper fractions, finding common denominators for vectors of fractions,
limiting denominators to powers of ten, and limiting denominators to a maximum
value.  Also includes helper functions for finding the least common multiple and
greatest common divisor for a vector of integers.  Implemented using C++ for
maximum speed.")
    (license license:expat)))

(define-public r-fractional
  (package
    (name "r-fractional")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fractional" version))
       (sha256
        (base32 "1jz83y53s0xdphh1z3v3z7xhcmhx7rp0iiazw2vdsx2747r3rirn"))))
    (properties `((upstream-name . "fractional")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fractional")
    (synopsis "Vulgar Fractions in R")
    (description
     "The main function of this package allows numerical vector objects to be
displayed with their values in vulgar fractional form.  This is convenient if
patterns can then be more easily detected.  In some cases replacing the
components of a numeric vector by a rational approximation can also be expected
to remove some component of round-off error.  The main functions form a
re-implementation of the functions fractions and rational of the MASS package,
but using a radically improved programming strategy.")
    (license license:gpl2+)))

(define-public r-fraction
  (package
    (name "r-fraction")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FRACTION" version))
       (sha256
        (base32 "0j7mczw3jlmyls3lcsazybvhq87pp1c3imn4ks0bl08h1crdsdl6"))))
    (properties `((upstream-name . "FRACTION")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FRACTION")
    (synopsis "Numeric Number into Fraction")
    (description "Turn numeric,data.frame,matrix into fraction form.")
    (license license:gpl2)))

(define-public r-fractd
  (package
    (name "r-fractd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fractD" version))
       (sha256
        (base32 "1cnp8qrc6jpdj0grwkvn5jkdymjfhg5ybbhqvknxirc4g981q8bj"))))
    (properties `((upstream-name . "fractD")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-imager))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fractD")
    (synopsis
     "Estimation of Fractal Dimension of a Black Area in 2D and 3D (Slices) Images")
    (description
     "Estimate the of fractal dimension of a black area in 2D and 3D (slices) images
using the box-counting method.  See Klinkenberg B. (1994)
<doi:10.1007/BF02065874>.")
    (license license:gpl3)))

(define-public r-fractalregression
  (package
    (name "r-fractalregression")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fractalRegression" version))
       (sha256
        (base32 "1d79bv3lpg1p6zvjsnf8qwm5ajpsklm8gpqm241jv1cgjyfsi64x"))))
    (properties `((upstream-name . "fractalRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpparmadillo r-rcpp r-colorramps))
    (home-page "https://cran.r-project.org/package=fractalRegression")
    (synopsis "Performs Fractal Analysis and Fractal Regression")
    (description
     "Various functions for performing fractal and multifractal analysis including
performing fractal regression.  Please refer to Peng and colleagues (1994)
<doi:10.1103/physreve.49.1685>, Kantelhardt and colleagues
(2002)<doi:10.1016/S0378-4371(02)01383-3>, and Likens and colleagues (2019)
<doi:10.1016/j.physa.2019.121580>.")
    (license license:gpl3+)))

(define-public r-fractalparameterestimation
  (package
    (name "r-fractalparameterestimation")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FractalParameterEstimation" version))
       (sha256
        (base32 "16xm2g723dm1n1h6as6yvy92sigzhj31f269g5rrzqjcd4d5m8an"))))
    (properties `((upstream-name . "FractalParameterEstimation")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FractalParameterEstimation")
    (synopsis
     "Simulation and Parameter Estimation of Randomized Sierpinski Carpets using the p-p-p-q-Model")
    (description
     "The parameters p and q are estimated with the aid of a randomized Sierpinski
Carpet which is built on a [p-p-p-q]-model.  Thereby, for three times a
simulation with a p-value and once with a q-value is assumed.  Hence, these
parameters are estimated and displayed.  Moreover, functions for simulating
random Sierpinski-Carpets with constant and variable probabilities are included.
 For more details on the method please see Hermann et al. (2015)
<doi:10.1002/sim.6497>.")
    (license license:gpl2+)))

(define-public r-fractaldim
  (package
    (name "r-fractaldim")
    (version "0.8-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fractaldim" version))
       (sha256
        (base32 "1hi5xzya528947wfb50brl00m6n6krv4sn5nzga285nncf6xprhh"))))
    (properties `((upstream-name . "fractaldim")))
    (build-system r-build-system)
    (propagated-inputs (list r-abind))
    (home-page "https://cran.r-project.org/package=fractaldim")
    (synopsis "Estimation of Fractal Dimensions")
    (description
     "This package implements various methods for estimating fractal dimension of time
series and 2-dimensional data <doi:10.1214/11-STS370>.")
    (license license:gpl2+)))

(define-public r-fracprolif
  (package
    (name "r-fracprolif")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fracprolif" version))
       (sha256
        (base32 "124p5x59smqf8ba0xwhlq69w77zga2bv9plzwkadf700lzvaj2wx"))))
    (properties `((upstream-name . "fracprolif")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-emg))
    (home-page "https://cran.r-project.org/package=fracprolif")
    (synopsis "Fraction Proliferation via a Quiescent Growth Model")
    (description
     "This package provides functions for fitting data to a quiescent growth model,
i.e.  a growth process that involves members of the population who stop dividing
or propagating.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-frackrigingr
  (package
    (name "r-frackrigingr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FracKrigingR" version))
       (sha256
        (base32 "08ai69wnpa4l1gpmgrs9c9ad9h56h0x55v3gnbci30yxkivbnvxw"))))
    (properties `((upstream-name . "FracKrigingR")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-clustergeneration))
    (home-page "https://github.com/NidaGreen/FracKriging")
    (synopsis "Spatial Multivariate Data Modeling")
    (description
     "Aim is to provide fractional Brownian vector field generation algorithm, Hurst
parameter estimation method and fractional kriging model for multivariate data
modeling.")
    (license license:gpl2)))

(define-public r-fracdist
  (package
    (name "r-fracdist")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fracdist" version))
       (sha256
        (base32 "0ssg8h1mvkzpwq4dn9fdxjg1vzhcv6606wsy0xrm1wz9p6s5rx74"))))
    (properties `((upstream-name . "fracdist")))
    (build-system r-build-system)
    (home-page "https://github.com/LeeMorinUCF/fracdist")
    (synopsis
     "Numerical CDFs for Fractional Unit Root and Cointegration Tests")
    (description
     "Calculate numerical asymptotic distribution functions of likelihood ratio
statistics for fractional unit root tests and tests of cointegration rank.  For
these distributions, the included functions calculate critical values and
P-values used in unit root tests, cointegration tests, and rank tests in the
Fractionally Cointegrated Vector Autoregression (FCVAR) model.  The functions
implement procedures for tests described in the following articles: Johansen, S.
and M. Ã.  Nielsen (2012) <doi:10.3982/ECTA9299>, @code{MacKinnon}, J. G. and
M. Ã.  Nielsen (2014) <doi:10.1002/jae.2295>.")
    (license license:gpl3)))

(define-public r-frab
  (package
    (name "r-frab")
    (version "0.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "frab" version))
       (sha256
        (base32 "08nlhshg3bz8b830vl877xyyjgngxk7sf5vp5d0np3bfhrylh0wv"))))
    (properties `((upstream-name . "frab")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mathjaxr r-disordr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/frab")
    (synopsis "How to Add Two Tables")
    (description
     "This package provides methods to \"add\" two tables; also an alternative
interpretation of named vectors as generalized tables, so that c(a=1,b=2,c=3) +
c(b=3,a=-1) will return c(b=5,c=3).  Uses @code{disordR} discipline (Hankin,
2022, <arxiv:2210.03856>).  Extraction and replacement methods are provided.
The underlying mathematical structure is the Free Abelian group, hence the name.
 To cite in publications please use Hankin (2023) <arxiv:2307:13184>.")
    (license license:gpl2+)))

(define-public r-fqadata
  (package
    (name "r-fqadata")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fqadata" version))
       (sha256
        (base32 "1nxqq33j396wa12n3qwfrsh9l2g2pn2f9d25vfzihh3xnsbk0cv5"))))
    (properties `((upstream-name . "fqadata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fqadata")
    (synopsis "Contains Regional Floristic Quality Assessment Databases")
    (description
     "This package contains regional Floristic Quality Assessment databases that have
been approved or approved with reservations by the U.S. Army Corps of Engineers
(USACE).  Paired with the fqacalc R package, these data sets allow for Floristic
Quality Assessment metrics to be calculated.  For information on FQA see Spyreas
(2019) <doi:10.1002/ecs2.2825>.  Both packages were developed for the USACE by
the U.S. Army Engineer Research and Development Center's Environmental
Laboratory.")
    (license license:cc0)))

(define-public r-fqacalc
  (package
    (name "r-fqacalc")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fqacalc" version))
       (sha256
        (base32 "1n4vlz75d2jsl3chsarmgf5cg7zj06gxgn1mj79d85z86pn4jip3"))))
    (properties `((upstream-name . "fqacalc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr r-fqadata r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fqacalc")
    (synopsis "Calculate Floristic Quality Assessment Metrics")
    (description
     "This package provides a collection of functions for calculating Floristic
Quality Assessment (FQA) metrics using regional FQA databases that have been
approved or approved with reservations as ecological planning models by the U.S.
Army Corps of Engineers (USACE).  For information on FQA see Spyreas (2019)
<doi:10.1002/ecs2.2825>.  These databases are stored in a sister R package,
fqadata'.  Both packages were developed for the USACE by the U.S. Army Engineer
Research and Development Centerâs Environmental Laboratory.")
    (license license:expat)))

(define-public r-fpv
  (package
    (name "r-fpv")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FPV" version))
       (sha256
        (base32 "0pxa8lbcxw2hx2n0frkx0pdndlcfm7gnh9qay9q53cf5gqzzwvvc"))))
    (properties `((upstream-name . "FPV")))
    (build-system r-build-system)
    (propagated-inputs (list r-fuzzynumbers-ext-2 r-fuzzynumbers))
    (home-page "https://cran.r-project.org/package=FPV")
    (synopsis "Testing Hypotheses via Fuzzy P-Value in Fuzzy Environment")
    (description
     "The main goal of this package is drawing the membership function of the fuzzy
p-value which is defined as a fuzzy set on the unit interval for three following
problems: (1) testing crisp hypotheses based on fuzzy data, see Filzmoser and
Viertl (2004) <doi:10.1007/s001840300269>, (2) testing fuzzy hypotheses based on
crisp data, see Parchami et al. (2010) <doi:10.1007/s00362-008-0133-4>, and (3)
testing fuzzy hypotheses based on fuzzy data, see Parchami et al. (2012)
<doi:10.1007/s00362-010-0353-2>.  In all cases, the fuzziness of data or / and
the fuzziness of the boundary of null fuzzy hypothesis transported via the
p-value function and causes to produce the fuzzy p-value.  If the p-value is
fuzzy, it is more appropriate to consider a fuzzy significance level for the
problem.  Therefore, the comparison of the fuzzy p-value and the fuzzy
significance level is evaluated by a fuzzy ranking method in this package.")
    (license license:lgpl3+)))

(define-public r-fptdapprox
  (package
    (name "r-fptdapprox")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fptdApprox" version))
       (sha256
        (base32 "013wspkb7n3lcn5z1pfsqwfgzm0rjfswski9550indy2vv4n4qni"))))
    (properties `((upstream-name . "fptdApprox")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fptdApprox")
    (synopsis
     "Approximation of First-Passage-Time Densities for Diffusion Processes")
    (description
     "Efficient approximation of first passage time densities for diffusion processes
based on the First Passage Time Location (FPTL) function.")
    (license license:gpl2)))

(define-public r-fpp3
  (package
    (name "r-fpp3")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpp3" version))
       (sha256
        (base32 "1yg2wv1mdqrmpxbz9kdsxw84q5hg12rsmz1k3i4dq1nymqbkkfq2"))))
    (properties `((upstream-name . "fpp3")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsibbledata
                             r-tsibble
                             r-tidyr
                             r-tibble
                             r-rstudioapi
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-feasts
                             r-fabletools
                             r-fable
                             r-dplyr
                             r-crayon
                             r-cli))
    (home-page "https://github.com/robjhyndman/fpp3package")
    (synopsis
              "Data for \"Forecasting: Principles and Practice\" (3rd Edition)")
    (description
     "All data sets required for the examples and exercises in the book \"Forecasting:
principles and practice\" by Rob J Hyndman and George Athanasopoulos
<https://OTexts.com/fpp3/>.  All packages required to run the examples are also
loaded.")
    (license license:gpl3)))

(define-public r-fpp2
  (package
    (name "r-fpp2")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpp2" version))
       (sha256
        (base32 "1ml4jf7r1q555k7qnr3fky5axl0x66h3g1m61nmdrckgf6idkn0f"))))
    (properties `((upstream-name . "fpp2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-forecast
                             r-fma
                             r-expsmooth
                             r-crayon
                             r-cli))
    (home-page "https://pkg.robjhyndman.com/fpp2-package/")
    (synopsis
              "Data for \"Forecasting: Principles and Practice\" (2nd Edition)")
    (description
     "All data sets required for the examples and exercises in the book \"Forecasting:
principles and practice\" (2nd ed, 2018) by Rob J Hyndman and George
Athanasopoulos <https://otexts.com/fpp2/>.  All packages required to run the
examples are also loaded.")
    (license license:gpl3)))

(define-public r-fpp
  (package
    (name "r-fpp")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpp" version))
       (sha256
        (base32 "1jqnx6bgpvnbbj2fa2b6m6aj8jd5cb9kz877r8kp7a5qj62xv1ww"))))
    (properties `((upstream-name . "fpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-lmtest r-forecast r-fma r-expsmooth))
    (home-page "http://otexts.com/fpp/")
    (synopsis "Data for \"Forecasting: principles and practice\"")
    (description
     "All data sets required for the examples and exercises in the book \"Forecasting:
principles and practice\" by Rob J Hyndman and George Athanasopoulos.  All
packages required to run the examples are also loaded.")
    (license license:gpl2+)))

(define-public r-fpow
  (package
    (name "r-fpow")
    (version "0.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpow" version))
       (sha256
        (base32 "0am3nczimcfrm9hi02vl2xxsh703qjmr2j11y014mll3f2v1l8cy"))))
    (properties `((upstream-name . "fpow")))
    (build-system r-build-system)
    (home-page "http://dx.doi.org/10.1007/s11222-008-9061-3")
    (synopsis
     "Computing the noncentrality parameter of the noncentral F distribution")
    (description
     "Returns the noncentrality parameter of the noncentral F distribution if
probability of type I and type II error, degrees of freedom of the numerator and
the denominator are given.  It may be useful for computing minimal detectable
differences for general ANOVA models.  This program is documented in the paper
of A. Baharev, S. Kemeny, On the computation of the noncentral F and noncentral
beta distribution; Statistics and Computing, 2008, 18 (3), 333-340.")
    (license license:cc0)))

(define-public r-fportfolio
  (package
    (name "r-fportfolio")
    (version "4023.84")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fPortfolio" version))
       (sha256
        (base32 "0vk9j8yk2nkz28gb2nh1jrfrqk6n77jm0qfa3j1y65l2rbya0rvg"))))
    (properties `((upstream-name . "fPortfolio")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-slam
                             r-rsolnp
                             r-robustbase
                             r-rneos
                             r-rglpk
                             r-quadprog
                             r-mass
                             r-kernlab
                             r-fcopulae
                             r-fbasics
                             r-fassets))
    (home-page "https://r-forge.r-project.org/projects/rmetrics/")
    (synopsis "Rmetrics - Portfolio Selection and Optimization")
    (description
     "This package provides a collection of functions to optimize portfolios and to
analyze them from different points of view.")
    (license license:gpl2+)))

(define-public r-fpopw
  (package
    (name "r-fpopw")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpopw" version))
       (sha256
        (base32 "19ysgy2rh73vppjmw2ynsj80gyy23xyr0py592mlcq9bk5igl4k7"))))
    (properties `((upstream-name . "fpopw")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fpopw")
    (synopsis
     "Weighted Segmentation using Functional Pruning and Optimal Partioning")
    (description
     "Weighted-L2 FPOP Maidstone et al. (2017) <doi:10.1007/s11222-016-9636-3> and
@code{pDPA/FPSN} Rigaill (2010) <@code{arXiv:1004.0887>} algorithm for detecting
multiple changepoints in the mean of a vector.  Also includes a few model
selection functions using Lebarbier (2005) <doi:10.1016/j.sigpro.2004.11.012>
and the capsushe package.")
    (license license:gpl3+)))

(define-public r-fpop
  (package
    (name "r-fpop")
    (version "2019.08.26")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpop" version))
       (sha256
        (base32 "1gz5db9hlkvzkp5y7zzn9h57qz7ilpdyxyf05vy9kxbj36kgc19n"))))
    (properties `((upstream-name . "fpop")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fpop")
    (synopsis "Segmentation using Optimal Partitioning and Function Pruning")
    (description
     "This package provides a dynamic programming algorithm for the fast segmentation
of univariate signals into piecewise constant profiles.  The fpop package is a
wrapper to a C++ implementation of the fpop (Functional Pruning Optimal
Partioning) algorithm described in Maidstone et al.  2017
<doi:10.1007/s11222-016-9636-3>.  The problem of detecting changepoints in an
univariate sequence is formulated in terms of minimising the mean squared error
over segmentations.  The fpop algorithm exactly minimizes the mean squared error
for a penalty linear in the number of changepoints.")
    (license license:lgpl2.1+)))

(define-public r-fplyr
  (package
    (name "r-fplyr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fplyr" version))
       (sha256
        (base32 "0xslmd7kkm3fz8kl0y95d3y7grb8gir0l55n91rmcw1zlp8m9aj6"))))
    (properties `((upstream-name . "fplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-iotools r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmarotta/fplyr")
    (synopsis "Apply Functions to Blocks of Files")
    (description
     "Read and process a large delimited file block by block.  A block consists of all
the contiguous rows that have the same value in the first field.  The result can
be returned as a list or a data.table, or even directly printed to an output
file.")
    (license license:expat)))

(define-public r-fplot
  (package
    (name "r-fplot")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fplot" version))
       (sha256
        (base32 "0rjdjv67yh6nbxi3l8ds0dr26s9cxsrfqc47rkfwh82g1iga2fqi"))))
    (properties `((upstream-name . "fplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-formula r-dreamerr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fplot")
    (synopsis "Automatic Distribution Graphs Using Formulas")
    (description
     "Easy way to plot regular/weighted/conditional distributions by using formulas.
The core of the package concerns distribution plots which are automatic: the
many options are tailored to the data at hand to offer the nicest and most
meaningful graphs possible -- with no/minimum user input.  Further provide
functions to plot conditional trends and box plots.  See
<https://lrberge.github.io/fplot/> for more information.")
    (license license:gpl3)))

(define-public r-fpldata
  (package
    (name "r-fpldata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FPLdata" version))
       (sha256
        (base32 "0f5j6h4v0a9jk798m02mdq57v8rlkhrpgcrnj1rna34lrz83m51q"))))
    (properties `((upstream-name . "FPLdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-dplyr))
    (home-page "https://cran.r-project.org/package=FPLdata")
    (synopsis "Read in Fantasy Premier League Data")
    (description
     "This data contains a large variety of information on players and their current
attributes on Fantasy Premier League <https://fantasy.premierleague.com/>.  In
particular, it contains a `next_gw_points` (next gameweek points) value for each
player given their attributes in the current week.  Rows represent
player-gameweeks, i.e.  for each player there is a row for each gameweek.  This
makes the data suitable for modelling a player's next gameweek points, given
attributes such as form, total points, and cost at the current gameweek.  This
data can therefore be used to create Fantasy Premier League bots that may use a
machine learning algorithm and a linear programming solver (for example) to
return the best possible transfers and team to pick for each gameweek, thereby
fully automating the decision making process in Fantasy Premier League.  This
function simply supplies the required data for such a task.")
    (license license:expat)))

(define-public r-fpest
  (package
    (name "r-fpest")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpest" version))
       (sha256
        (base32 "013r8295spm02j558aqvnrnbkg2g73gl5vi4lqzngbw8yr8qlkri"))))
    (properties `((upstream-name . "fpest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fpest")
    (synopsis "Estimating Finite Population Total")
    (description
     "Given the values of sampled units and selection probabilities the desraj
function in the package computes the estimated value of the total as well as
estimated variance.")
    (license license:gpl3)))

(define-public r-fpdclustering
  (package
    (name "r-fpdclustering")
    (version "2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FPDclustering" version))
       (sha256
        (base32 "0h9yfiyf8xhvdyzjwgh9s8immnfx6yidz4irn8nyp14ifhq1ad61"))))
    (properties `((upstream-name . "FPDclustering")))
    (build-system r-build-system)
    (propagated-inputs (list r-threeway
                             r-rootsolve
                             r-mvtnorm
                             r-mass
                             r-klar
                             r-ggplot2
                             r-ggally
                             r-exposition
                             r-cluster))
    (home-page "https://cran.r-project.org/package=FPDclustering")
    (synopsis "PD-Clustering and Factor PD-Clustering")
    (description
     "Probabilistic distance clustering (PD-clustering) is an iterative, distribution
free, probabilistic clustering method.  PD-clustering assigns units to a cluster
according to their probability of membership, under the constraint that the
product of the probability and the distance of each point to any cluster centre
is a constant.  PD-clustering is a flexible method that can be used with
non-spherical clusters, outliers, or noisy data.  PDQ is an extension of the
algorithm for clusters of different size.  GPDC and TPDC uses a dissimilarity
measure based on densities.  Factor PD-clustering (FPDC) is a factor clustering
method that involves a linear transformation of variables and a cluster
optimizing the PD-clustering criterion.  It works on high dimensional data sets.")
    (license license:gpl2+)))

(define-public r-fpcompare
  (package
    (name "r-fpcompare")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpCompare" version))
       (sha256
        (base32 "0w15ylisx7md3nyclqbd13n23f2r36875pdiskav4rry28m892bi"))))
    (properties `((upstream-name . "fpCompare")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PredictiveEcology/fpCompare")
    (synopsis "Reliable Comparison of Floating Point Numbers")
    (description
     "Comparisons of floating point numbers are problematic due to errors associated
with the binary representation of decimal numbers.  Despite being aware of these
problems, people still use numerical methods that fail to account for these and
other rounding errors (this pitfall is the first to be highlighted in Circle 1
of Burns (2012) The R Inferno
<https://www.burns-stat.com/pages/Tutor/R_inferno.pdf>).  This package provides
new relational operators useful for performing floating point number comparisons
with a set tolerance.")
    (license license:gpl3)))

(define-public r-fpcb
  (package
    (name "r-fpcb")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpcb" version))
       (sha256
        (base32 "086060z6r79m527bb9ah6yk2z15xq8x27gyvbz23xbm6mhrxsa1y"))))
    (properties `((upstream-name . "fpcb")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (home-page "https://cran.r-project.org/package=fpcb")
    (synopsis
     "Predictive Confidence Bands for Functional Time Series Forecasting")
    (description
     "This package provides functions to represent functional objects under a
Reproducing Kernel Hilbert Space (RKHS) framework as described in @code{MuÃ±oz}
& @code{GonzÃ¡lez} (2010).  Autoregressive Hilbertian Model for functional time
series using RKHS and predictive confidence bands construction as proposed in
@code{HernÃ¡ndez} et al (2021).")
    (license license:gpl3+)))

(define-public r-fpca3d
  (package
    (name "r-fpca3d")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FPCA3D" version))
       (sha256
        (base32 "1hrk9caad2s76dx59clxhia45a85khk1y2ii7955f336x55q34a5"))))
    (properties `((upstream-name . "FPCA3D")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FPCA3D")
    (synopsis "Three Dimensional Functional Component Analysis")
    (description
     "Run three dimensional functional principal component analysis and return the
three dimensional functional principal component scores.  The details of the
method are explained in Lin et al.(2015) <doi:10.1371/journal.pone.0132945>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fpass
  (package
    (name "r-fpass")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fPASS" version))
       (sha256
        (base32 "0xrvkcgbzd0xkrxc5p18bhfb5hlf5kxrqyjpy4482bjhr3rr714f"))))
    (properties `((upstream-name . "fPASS")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-stringr
                             r-rlang
                             r-purrr
                             r-nlme
                             r-mgcv
                             r-matrix
                             r-mass
                             r-magrittr
                             r-lifecycle
                             r-gss
                             r-gamm4
                             r-face
                             r-expm
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SalilKoner/fPASS")
    (synopsis
     "Power and Sample Size for Projection Test under Repeated Measures")
    (description
     "Computes the power and sample size (PASS) required to test for the difference in
the mean function between two groups under a repeatedly measured longitudinal or
sparse functional design.  See the manuscript by Koner and Luo (2023)
<https://salilkoner.github.io/assets/PASS_manuscript.pdf> for details of the
PASS formula and computational details.  The details of the testing procedure
for univariate and multivariate response are presented in Wang (2021)
<doi:10.1214/21-EJS1802> and Koner and Luo (2023) <@code{arXiv:2302.05612>}
respectively.")
    (license license:expat)))

(define-public r-fpa
  (package
    (name "r-fpa")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fpa" version))
       (sha256
        (base32 "0kgpl9qq0l10h0vdd2f8vnir0kdylh1jvvv5z4d9ygj1pl9qywhk"))))
    (properties `((upstream-name . "fpa")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-fields))
    (home-page "https://cran.r-project.org/package=fpa")
    (synopsis "Spatio-Temporal Fixation Pattern Analysis")
    (description
     "Spatio-temporal Fixation Pattern Analysis (FPA) is a new method of analyzing eye
movement data, developed by Mr. Jinlu Cao under the supervision of Prof. Chen
Hsuan-Chih at The Chinese University of Hong Kong, and Prof. Wang Suiping at the
South China Normal Univeristy.  The package \"fpa\" is a R implementation which
makes FPA analysis much easier.  There are four major functions in the package:
ft2fp(), get_pattern(), plot_pattern(), and lineplot().  The function ft2fp() is
the core function, which can complete all the preprocessing within moments.  The
other three functions are supportive functions which visualize the eye fixation
patterns.")
    (license license:gpl2)))

(define-public r-fourwayhmm
  (package
    (name "r-fourwayhmm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FourWayHMM" version))
       (sha256
        (base32 "0zi42d214dq70ypgj8g57fwjbqfih4z0956njpj2739aqsnjq5v4"))))
    (properties `((upstream-name . "FourWayHMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tensor
                             r-snow
                             r-mclust
                             r-laplacesdemon
                             r-foreach
                             r-dosnow
                             r-data-table))
    (home-page "https://cran.r-project.org/package=FourWayHMM")
    (synopsis "Parsimonious Hidden Markov Models for Four-Way Data")
    (description
     "This package implements parsimonious hidden Markov models for four-way data via
expectation- conditional maximization algorithm, as described in Tomarchio et
al. (2020) <@code{arXiv:2107.04330>}.  The matrix-variate normal distribution is
used as emission distribution.  For each hidden state, parsimony is reached via
the eigen-decomposition of the covariance matrices of the emission distribution.
 This produces a family of 98 parsimonious hidden Markov models.")
    (license license:gpl3+)))

(define-public r-fourscores
  (package
    (name "r-fourscores")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FourScores" version))
       (sha256
        (base32 "1la9d1hfcmi0zg58yl0a7nj36giagh0fwrc7wxyqdq0c7zf1hfzq"))))
    (properties `((upstream-name . "FourScores")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FourScores")
    (synopsis "Game for Human vs. Human or Human vs. AI")
    (description
     "This package provides a game for two players: Who gets first four in a row
(horizontal, vertical or diagonal) wins.  As board game published by Milton
Bradley, designed by Howard Wexler and Ned Strongin.")
    (license license:gpl3)))

(define-public r-fourpno
  (package
    (name "r-fourpno")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fourPNO" version))
       (sha256
        (base32 "0a0z2403kdh3fjb0ypjjk3m6fg77bg6m7hwb5jhlymcy2rwkay7w"))))
    (properties `((upstream-name . "fourPNO")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/tmsalab/fourPNO")
    (synopsis "Bayesian 4 Parameter Item Response Model")
    (description
     "Estimate Barton & Lord's (1981) <doi:10.1002/j.2333-8504.1981.tb01255.x> four
parameter IRT model with lower and upper asymptotes using Bayesian formulation
described by Culpepper (2016) <doi:10.1007/s11336-015-9477-6>.")
    (license license:gpl2+)))

(define-public r-fourierin
  (package
    (name "r-fourierin")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fourierin" version))
       (sha256
        (base32 "140721p4h5mjr7r25ckv8wfhbj88xw6v47b613r5bpalg8gw650l"))))
    (properties `((upstream-name . "fourierin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/gbasulto/fourierin")
    (synopsis "Computes Numeric Fourier Integrals")
    (description
     "Computes Fourier integrals of functions of one and two variables using the Fast
Fourier transform.  The Fourier transforms must be evaluated on a regular grid
for fast evaluation.")
    (license license:expat)))

(define-public r-fourgametep
  (package
    (name "r-fourgametep")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FourgameteP" version))
       (sha256
        (base32 "15yn47737768fkjjv8ykc9lw7x58pq44k90d9d4c9hp20zw5f3by"))))
    (properties `((upstream-name . "FourgameteP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FourgameteP")
    (synopsis "FourGamete Test")
    (description
     "The four-gamete test is based on the infinite-sites model which assumes that the
probability of the same mutation occurring twice (recurrent or parallel
mutations) and the probability of a mutation back to the original state (reverse
mutations) are close to zero.  Without these types of mutations, the only
explanation for observing the four dilocus genotypes (example below) is
recombination (Hudson and Kaplan 1985, Genetics 111:147-164).  Thus, the
presence of all four gametes is also called phylogenetic incompatibility.")
    (license license:gpl2)))

(define-public r-foundry
  (package
    (name "r-foundry")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foundry" version))
       (sha256
        (base32 "06mmqiaakha1xw2l5zib5nmwijjv4rjbpsx52ck7xihm6w192lss"))))
    (properties `((upstream-name . "foundry")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-r6 r-jsonlite r-httr r-arrow))
    (home-page "https://github.com/palantir/palantir-r-sdk")
    (synopsis "'Palantir Foundry' Software Development Kit")
    (description
     "Interface to Palantir Foundry', including reading and writing structured or
unstructured datasets, and more <https://www.palantir.com/platforms/foundry/>.")
    (license license:asl2.0)))

(define-public r-foto
  (package
    (name "r-foto")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foto" version))
       (sha256
        (base32 "0z1r903i4hc2m7kkph8l1ncjvx20dv800n7j6zcg8vdsi3qycw13"))))
    (properties `((upstream-name . "foto")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bluegreen-labs/foto")
    (synopsis "Fourier Transform Textural Ordination")
    (description
     "This package provides a tool to use a principal component analysis on radially
averaged two dimensional Fourier spectra to characterize image texture.  The
method within the context of ecology was first described by Couteron et al.
(2005) <doi:10.1111/j.1365-2664.2005.01097.x> and expanded upon by Solorzano et
al. (2018) <doi:10.1117/1.JRS.12.036006> using a moving window approach.")
    (license license:agpl3)))

(define-public r-fossilsimshiny
  (package
    (name "r-fossilsimshiny")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FossilSimShiny" version))
       (sha256
        (base32 "09qhydwcsvaiczgz61p0fxy0gl31cmfhidhbhaxxlf0ic3gaa2sv"))))
    (properties `((upstream-name . "FossilSimShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-fossilsim))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FossilSimShiny")
    (synopsis "Shiny Application for 'FossilSim'")
    (description
     "This package provides a shiny application based on @code{FossilSim}'.  Used for
simulating tree, taxonomic and fossil data under mechanistic models of
speciation, preservation and sampling.")
    (license license:gpl3+)))

(define-public r-fossilsim
  (package
    (name "r-fossilsim")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FossilSim" version))
       (sha256
        (base32 "0wirvjs6gvmgwxwixf1fld7xzq5hyyzfh3fhpglpah8hm744b6hf"))))
    (properties `((upstream-name . "FossilSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FossilSim")
    (synopsis "Simulation of Fossil and Taxonomy Data")
    (description
     "Simulating taxonomy and fossil data on phylogenetic trees under mechanistic
models of speciation, preservation and sampling.")
    (license license:gpl3)))

(define-public r-fossilbrush
  (package
    (name "r-fossilbrush")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fossilbrush" version))
       (sha256
        (base32 "0h5grarpk6ml07gxb3bmb93fys55f6pp4qr60fqq97zx1lg9hns4"))))
    (properties `((upstream-name . "fossilbrush")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringdist
                             r-pbapply
                             r-matrix
                             r-igraph
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fossilbrush")
    (synopsis "Automated Cleaning of Fossil Occurrence Data")
    (description
     "This package provides functions to automate the detection and resolution of
taxonomic and stratigraphic errors in fossil occurrence datasets.  Functions
were developed using data from the Paleobiology Database.")
    (license license:gpl3+)))

(define-public r-fossil
  (package
    (name "r-fossil")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fossil" version))
       (sha256
        (base32 "1hbls9m8yapnfzpv9s850ixakmnan8min1ynk7dqkbpb2px85h1p"))))
    (properties `((upstream-name . "fossil")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-shapefiles r-maps))
    (home-page "http://matthewvavrek.com/programs-and-code/fossil/")
    (synopsis "Palaeoecological and Palaeogeographical Analysis Tools")
    (description
     "This package provides a set of analytical tools useful in analysing ecological
and geographical data sets, both ancient and modern.  The package includes
functions for estimating species richness (Chao 1 and 2, ACE, ICE, Jacknife),
shared species/beta diversity, species area curves and geographic distances and
areas.")
    (license license:gpl2+)))

(define-public r-forwards
  (package
    (name "r-forwards")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forwards" version))
       (sha256
        (base32 "07374a1ak5h8q3diqyvsw3q1grqi3679w9sshf1jkhlrj7wn0dmv"))))
    (properties `((upstream-name . "forwards")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/forwards/forwards")
    (synopsis "Data from Surveys Conducted by Forwards")
    (description
     "Anonymized data from surveys conducted by Forwards
<https://forwards.github.io/>, the R Foundation task force on women and other
under-represented groups.  Currently, a single data set of responses to a survey
of attendees at @code{useR}! 2016 <https://www.r-project.org/@code{useR-2016/>},
the R user conference held at Stanford University, Stanford, California, USA,
June 27 - June 30 2016.")
    (license license:cc0)))

(define-public r-forward
  (package
    (name "r-forward")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forward" version))
       (sha256
        (base32 "12yk2l9cjmlr9089a8qw8arpdq997c9d9nx5xsy2x76ik65r6i3l"))))
    (properties `((upstream-name . "forward")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=forward")
    (synopsis "Robust Analysis using Forward Search")
    (description
     "Robust analysis using forward search in linear and generalized linear regression
models, as described in Atkinson, A.C. and Riani, M. (2000), Robust Diagnostic
Regression Analysis, First Edition.  New York: Springer.")
    (license license:gpl2)))

(define-public r-fortunes
  (package
    (name "r-fortunes")
    (version "1.5-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fortunes" version))
       (sha256
        (base32 "109ly9kpfn6hy294ava8795wy5z9l1bnl98hhhv8kn9naf4camdg"))))
    (properties `((upstream-name . "fortunes")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fortunes")
    (synopsis "R Fortunes")
    (description
     "This package provides a collection of fortunes from the R community.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fortls
  (package
    (name "r-fortls")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FORTLS" version))
       (sha256
        (base32 "00qjp916zqjj9w42bmlb7s72dcyrimg16545p9f0rsmlyiy8qs6n"))))
    (properties `((upstream-name . "FORTLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-voxr
                             r-tidyr
                             r-sf
                             r-scales
                             r-rcsf
                             r-rcppeigen
                             r-rcpp
                             r-raster
                             r-progress
                             r-plotly
                             r-moments
                             r-lidr
                             r-htmlwidgets
                             r-distance
                             r-dbscan
                             r-data-table
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Molina-Valero/FORTLS")
    (synopsis
     "Automatic Processing of Terrestrial-Based Technologies Point Cloud Data for Forestry Purposes")
    (description
     "Process automation of point cloud data derived from terrestrial-based
technologies such as Terrestrial Laser Scanner (TLS) or Simultaneous
Localization and Mapping (SLAM).  FORTLS enables (i) detection of trees and
estimation of tree-level attributes (e.g. diameters and heights), (ii)
estimation of stand-level variables (e.g. density, basal area, mean and dominant
height), (iii) computation of metrics related to important forest attributes
estimated in Forest Inventories at stand-level, and (iv) optimization of plot
design for combining TLS data and field measured data.  Documentation about
FORTLS is described in Molina-Valero et al. (2022,
<doi:10.1016/j.envsoft.2022.105337>).")
    (license license:gpl3)))

(define-public r-forstringr
  (package
    (name "r-forstringr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forstringr" version))
       (sha256
        (base32 "0x3nrvazzapvx8nfjyp7a0d1n2qs3mpbnfqj07rv4kxyw47p93iy"))))
    (properties `((upstream-name . "forstringr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect r-stringr r-rlang r-glue r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gbganalyst/forstringr")
    (synopsis
     "String Manipulation Package for Those Familiar with 'Microsoft Excel'")
    (description
     "The goal of forstringr is to enable complex string manipulation in R especially
to those more familiar with LEFT(), RIGHT(), and MID() functions in Microsoft
Excel.  The package combines the power of stringr with other manipulation
packages such as dplyr and tidyr'.")
    (license license:expat)))

(define-public r-forsearch
  (package
    (name "r-forsearch")
    (version "4.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forsearch" version))
       (sha256
        (base32 "06pbizb69hrjk32ivlkkl95c54fc4gdyyacm96lkfq4nax79zfhy"))))
    (properties `((upstream-name . "forsearch")))
    (build-system r-build-system)
    (inputs (list gmp))
    (propagated-inputs (list r-tibble
                             r-survival
                             r-nlme
                             r-hmisc
                             r-ggplot2
                             r-formula-tools
                             r-cairo))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=forsearch")
    (synopsis
     "Diagnostic Analysis Using Forward Search Procedure for Various Models")
    (description
     "Identifies potential data outliers and their impact on estimates and analyses.
Uses the forward search approach of Atkinson and Riani, \"Robust Diagnostic
Regression Analysis\", 2000,<ISBN: o-387-95017-6> to prepare descriptive
statistics of a dataset that is to be analyzed by stats::lm(), stats::glm(),
nlme::lme() or survival::coxph().  Includes graphics functions to display the
descriptive statistics.")
    (license license:gpl3+)))

(define-public r-forrel
  (package
    (name "r-forrel")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forrel" version))
       (sha256
        (base32 "0spak2r0i1vk29ppnq991ibck04kl4pygdpwma7yf894hmp07xks"))))
    (properties `((upstream-name . "forrel")))
    (build-system r-build-system)
    (propagated-inputs (list r-ribd r-pedtools r-pedprobr r-pedmut r-glue))
    (home-page "https://github.com/magnusdv/forrel")
    (synopsis "Forensic Pedigree Analysis and Relatedness Inference")
    (description
     "Forensic applications of pedigree analysis, including likelihood ratios for
relationship testing, general relatedness inference, marker simulation, and
power analysis.  General computation of exclusion powers is based on Egeland et
al. (2014) <doi:10.1016/j.fsigen.2013.05.001>.  Several functions deal
specifically with family reunion cases, implementing and developing ideas from
Kling et al. (2017) <doi:10.1016/j.fsigen.2017.08.006>.  A novelty of forrel is
the ability to model background inbreeding in forensic pedigree computations.
This can have significant impact in applications, as exemplified in Vigeland and
Egeland (2019) <doi:10.1016/j.fsigss.2019.10.175>.  forrel is part of the ped
suite, a collection of packages for pedigree analysis.  In particular, forrel
imports pedtools for creating and manipulating pedigrees and markers, pedprobr
for likelihood computations, and pedmut for mutation modelling.  Pedigree data
may be created from scratch, or loaded from text files.  Data import from the
Familias software (Egeland et al. (2000) <doi:10.1016/S0379-0738(00)00147-X>) is
supported.")
    (license license:gpl2+)))

(define-public r-forplo
  (package
    (name "r-forplo")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forplo" version))
       (sha256
        (base32 "066hpd5jfs8nfd5fbxh049apd93pz8ibzr2kqlssx4c9fziwbg40"))))
    (properties `((upstream-name . "forplo")))
    (build-system r-build-system)
    (native-inputs (list r-rmarkdown r-lattice r-knitr))
    (home-page "https://cran.r-project.org/package=forplo")
    (synopsis "Flexible Forest Plots")
    (description
     "Simplifies the creation and customization of forest plots (alternatively called
dot-and-whisker plots).  Input classes accepted by forplo are data.frame,
matrix, lm, glm, and coxph.  forplo was written in base R and does not depend on
other packages.")
    (license license:gpl3)))

(define-public r-formulops
  (package
    (name "r-formulops")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formulops" version))
       (sha256
        (base32 "1mkpv5xjykrhgknq0gh4yg2a3j4xb8q2d6dh0wv8zd9h59hvrzda"))))
    (properties `((upstream-name . "formulops")))
    (build-system r-build-system)
    (home-page "https://github.com/billdenney/formulops")
    (synopsis "Mathematical Operations on R Formula")
    (description
     "Perform mathematical operations on R formula (add, subtract, multiply, etc.) and
substitute parts of formula.")
    (license license:gpl3)))

(define-public r-formulaic
  (package
    (name "r-formulaic")
    (version "0.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formulaic" version))
       (sha256
        (base32 "1nx6a73vw2hjbnqaw8x17ghhljd6z2avxv4arz3c3785pyayhg9k"))))
    (properties `((upstream-name . "formulaic")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://dachosen1.github.io/formulaic/index.html")
    (synopsis "Dynamic Generation and Quality Checks of Formula Objects")
    (description
     "Many statistical models and analyses in R are implemented through formula
objects.  The formulaic package creates a unified approach for programmatically
and dynamically generating formula objects.  Users may specify the outcome and
inputs of a model directly, search for variables to include based upon naming
patterns, incorporate interactions, and identify variables to exclude.  A wide
range of quality checks are implemented to identify issues such as misspecified
variables, duplication, a lack of contrast in the inputs, and a large number of
levels in categorical data.  Variables that do not meet these quality checks can
be automatically excluded from the model.  These issues are documented and
reported in a manner that provides greater accountability and useful information
to guide an investigation of the data.")
    (license license:gpl3)))

(define-public r-formshare
  (package
    (name "r-formshare")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FormShare" version))
       (sha256
        (base32 "17wdqjymc33r7r17h3fwi0ixlbpl77k1fm9a6r3gjwxixz8kicx3"))))
    (properties `((upstream-name . "FormShare")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-jsonlite r-httr))
    (home-page "https://github.com/qlands/formshare-R-package")
    (synopsis
     "Simple Connection Between the 'FormShare App' and 'R' for Advanced Analytics")
    (description
     "This package provides analytics directly from R'.  It requires: @code{FormShare}
App': <https://github.com/qlands/@code{FormShare} >= 2.22.0> .  Analytics
plugin: <https://github.com/qlands/formshare_analytics_plugin> .  Remote SQL
plugin: <https://github.com/qlands/formshare_sql_plugin> .")
    (license license:gpl3)))

(define-public r-formods
  (package
    (name "r-formods")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formods" version))
       (sha256
        (base32 "0xkb54ww6zksgyfd9cbjws8fg0vsg2pvlnmqp4qk2inkjqi9myv8"))))
    (properties `((upstream-name . "formods")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-yaml
                             r-writexl
                             r-stringr
                             r-shinywidgets
                             r-shinyace
                             r-shiny
                             r-rlang
                             r-rhandsontable
                             r-readxl
                             r-readr
                             r-onbrand
                             r-ggplot2
                             r-ggforce
                             r-dplyr
                             r-digest
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://formods.ubiquity.tools/")
    (synopsis "'Shiny' Modules for General Tasks")
    (description
     "Shiny apps can often make use of the same key elements, this package provides
modules for common tasks (data upload, wrangling data, figure generation and
saving the app state).  These modules can react and interact as well as generate
code to create reproducible analyses.")
    (license license:bsd-2)))

(define-public r-formatters
  (package
    (name "r-formatters")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formatters" version))
       (sha256
        (base32 "1r6idapw5jz3g81pz4ffl7ifij94mgm0wl3ijg1gwxk8h2fs0w6b"))))
    (properties `((upstream-name . "formatters")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmltools r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/insightsengineering/formatters")
    (synopsis "ASCII Formatting for Values and Tables")
    (description
     "We provide a framework for rendering complex tables to ASCII, and a set of
formatters for transforming values or sets of values into ASCII-ready display
strings.")
    (license license:asl2.0)))

(define-public r-formatdown
  (package
    (name "r-formatdown")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formatdown" version))
       (sha256
        (base32 "1k293djggyrdbd20r1avmqxsfimfglzcadq1lg56a79bj8mad636"))))
    (properties `((upstream-name . "formatdown")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrapr r-units r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/graphdr/formatdown/")
    (synopsis "Formatting Tools for 'rmarkdown' Documents")
    (description
     "This package provides a small set of tools for formatting tasks when creating
documents in R Markdown or Quarto Markdown.  Convert the elements of a numerical
vector to character strings in one of several forms: powers-of-ten notation in
engineering or scientific form delimited for rendering as inline equations;
integer or decimal notation delimited for equation rendering; numbers with
measurement units (non-delimited) where units are selected to eliminate the need
for powers-of-ten or scientific notation.  Useful for rendering a numerical
scalar in an inline R code chunk as well as formatting columns of data frames
displayed in a table.")
    (license license:expat)))

(define-public r-formatbibtex
  (package
    (name "r-formatbibtex")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "formatBibtex" version))
       (sha256
        (base32 "0abqvjmpnlrxzlmqcixbds10q7ssg7x2wdx1qqpy1ix2snd23s7w"))))
    (properties `((upstream-name . "formatBibtex")))
    (build-system r-build-system)
    (home-page "https://github.com/wenjie2wang/formatBibtex")
    (synopsis "Format BibTeX Entries and Files")
    (description
     "Format @code{BibTeX} entries and files in an opinionated way.")
    (license license:gpl3+)))

(define-public r-forit
  (package
    (name "r-forit")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForIT" version))
       (sha256
        (base32 "0kc15b05dp3cybjln49d0ly962s4gayidi0qpb6mcy0qdxvb17lv"))))
    (properties `((upstream-name . "ForIT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-metr
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://gitlab.com/NuoroForestrySchool/ForIT.git")
    (synopsis
     "Functions to Estimate Tree Volume and Phytomass in the Italian Forest Inventory 2005")
    (description
     "Tabacchi et al. (2011) published a very detailed study producing a uniform
system of functions to estimate tree volume and phytomass components (stem,
branches, stool).  The estimates of the 2005 Italian forest inventory
(<https://www.inventarioforestale.org/it/>) are based on these functions.  The
study documents the domain of applicability of each function and the equations
to quantify estimates accuracies for individual estimates as well as for
aggregated estimates.  This package makes the functions available in the R
environment.  Version 2 exposes two distinct functions for individual and
summary estimates.  To facilitate access to the functions, tree species
identification is now based on EPPO species codes (<https://data.eppo.int/>).")
    (license license:gpl3+)))

(define-public r-forimage
  (package
    (name "r-forimage")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forImage" version))
       (sha256
        (base32 "1p8zfndvm7x7pnryphz944hgxcchvc6mwnr6ap15m0i6kwsh0nb4"))))
    (properties `((upstream-name . "forImage")))
    (build-system r-build-system)
    (inputs (list opencv))
    (propagated-inputs (list r-tibble r-reticulate r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ThaiseRF/forImage")
    (synopsis "Foraminiferal Image Analysis and Test Measurement")
    (description
     "The goal of this collection of functions is to provide an easy to use tool for
the measurement of foraminifera and other unicellulars organisms size.  With
functions developed to guide foraminiferal test biovolume calculations and cell
biomass estimations.  The volume function includes several microalgae models
geometric adaptations based on Hillebrand et al. (1999)
<doi:10.1046/j.1529-8817.1999.3520403.x>, Sun and Liu (2003)
<doi:10.1093/plankt/fbg096> and Vadrucci, Cabrini and Basset (2007)
<doi:10.1285/i1825229Xv1n2p83>.")
    (license license:expat)))

(define-public r-foretell
  (package
    (name "r-foretell")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foretell" version))
       (sha256
        (base32 "18vi438n480gizfhnciw67gngvbjnmky19186b1wy75av7fgc1gp"))))
    (properties `((upstream-name . "foretell")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr))
    (home-page "https://cran.r-project.org/package=foretell")
    (synopsis
     "Projecting Customer Retention Based on Fader and Hardie Probability Models")
    (description
     "Project Customer Retention based on Beta Geometric, Beta Discrete Weibull and
Latent Class Discrete Weibull Models.This package is based on Fader and Hardie
(2007) <doi:10.1002/dir.20074> and Fader and Hardie et al. (2018)
<doi:10.1016/j.intmar.2018.01.002>.")
    (license license:gpl3)))

(define-public r-foresttools
  (package
    (name "r-foresttools")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForestTools" version))
       (sha256
        (base32 "0ghj411sg8054zxipjbbkhsbx7q98ji98p9wk0xzx8mzrdsi04qy"))))
    (properties `((upstream-name . "ForestTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-sf
                             r-rcpp
                             r-plyr
                             r-matrix
                             r-imager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andrew-plowright/ForestTools")
    (synopsis "Tools for Analyzing Remote Sensing Forest Data")
    (description
     "This package provides tools for analyzing remote sensing forest data, including
functions for detecting treetops from canopy models, outlining tree crowns, and
calculating textural metrics.")
    (license license:gpl3)))

(define-public r-forestry
  (package
    (name "r-forestry")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestry" version))
       (sha256
        (base32 "0q7m0mrig8z2b2z2fng58qlqa6g58xlhfzchil2dvjh6xf3qvsh8"))))
    (properties `((upstream-name . "forestry")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-tree))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=forestry")
    (synopsis "Reshape Data Tree")
    (description
     "This package provides a series of utility functions to help with reshaping
hierarchy of data tree, and reform the structure of data tree.")
    (license license:expat)))

(define-public r-forestrk
  (package
    (name "r-forestrk")
    (version "0.0-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestRK" version))
       (sha256
        (base32 "0zm0q7bckmjl1j3yh5pw4r6rq64rfmzjvmvqniza5691jagjz60m"))))
    (properties `((upstream-name . "forestRK")))
    (build-system r-build-system)
    (propagated-inputs (list r-rapportools
                             r-pkgkitten
                             r-partykit
                             r-mlbench
                             r-knitr
                             r-igraph
                             r-ggplot2))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=forestRK")
    (synopsis
     "Implements the Forest-R.K. Algorithm for Classification Problems")
    (description
     "This package provides functions that calculates common types of splitting
criteria used in random forests for classification problems, as well as
functions that make predictions based on a single tree or a Forest-R.K. model;
the package also provides functions to generate importance plot for a
Forest-R.K. model, as well as the 2D multidimensional-scaling plot of data
points that are colour coded by their predicted class types by the Forest-R.K.
model.  This package is based on: Bernard, S., Heutte, L., Adam, S., (2008,
ISBN:978-3-540-85983-3) \"Forest-R.K.: A New Random Forest Induction Method\",
Fourth International Conference on Intelligent Computing, September 2008,
Shanghai, China, pp.430-437.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-forestr
  (package
    (name "r-forestr")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestr" version))
       (sha256
        (base32 "1kz8f3x2dmsprj2r23gz61fpwg7n14nbjxr16x4cpixvnk427p94"))))
    (properties `((upstream-name . "forestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-plyr
                             r-moments
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/atkinsjeff/forestr")
    (synopsis "Ecosystem and Canopy Structural Complexity Metrics from LiDAR")
    (description
     "This package provides a toolkit for calculating forest and canopy structural
complexity metrics from terrestrial @code{LiDAR} (light detection and ranging).
References: Atkins et al.  2018 <doi:10.1111/2041-210X.13061>; Hardiman et al.
2013 <doi:10.3390/f4030537>; Parker et al.  2004
<doi:10.1111/j.0021-8901.2004.00925.x>.")
    (license license:gpl3)))

(define-public r-forestploter
  (package
    (name "r-forestploter")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestploter" version))
       (sha256
        (base32 "0l19pw5an8d2zn32r64b8a3b95krq9r083ziry5973wdm0nya2pw"))))
    (properties `((upstream-name . "forestploter")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtable r-gridextra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/adayim/forestploter")
    (synopsis "Create Flexible Forest Plot")
    (description
     "Create forest plot based on the layout of the data.  Confidence interval in
multiple columns by groups can be done easily.  Editing plot, inserting/adding
text, applying theme to the plot and much more.")
    (license license:expat)))

(define-public r-forestmodel
  (package
    (name "r-forestmodel")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestmodel" version))
       (sha256
        (base32 "0pl9r8j2qd00b9kl585b4k54kic5fvzc56i8cn3hm5yp2hrrwyws"))))
    (properties `((upstream-name . "forestmodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-ggplot2 r-dplyr r-broom))
    (home-page "https://cran.r-project.org/package=forestmodel")
    (synopsis "Forest Plots from Regression Models")
    (description
     "This package produces forest plots using ggplot2 from models produced by
functions such as stats::lm(), stats::glm() and survival::coxph().")
    (license license:gpl2)))

(define-public r-forestmangr
  (package
    (name "r-forestmangr")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestmangr" version))
       (sha256
        (base32 "1diywnrvzyvpi7ygqmb26gii6ac741c2v3zc7pk6i0y09j89pgrq"))))
    (properties `((upstream-name . "forestmangr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-systemfit
                             r-shiny
                             r-scales
                             r-rlang
                             r-purrr
                             r-plyr
                             r-minpack-lm
                             r-miniui
                             r-magrittr
                             r-gridextra
                             r-ggthemes
                             r-ggpmisc
                             r-ggplot2
                             r-ggdendro
                             r-fincal
                             r-dplyr
                             r-car
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sollano/forestmangr#readme")
    (synopsis "Forest Mensuration and Management")
    (description
     "Processing forest inventory data with methods such as simple random sampling,
stratified random sampling and systematic sampling.  There are also functions
for yield and growth predictions and model fitting, linear and nonlinear grouped
data fitting, and statistical tests.  References: Kershaw Jr., Ducey, Beers and
Husch (2016). <doi:10.1002/9781118902028>.")
    (license license:expat)))

(define-public r-forestly
  (package
    (name "r-forestly")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestly" version))
       (sha256
        (base32 "1pbq60agq62aiqgg48r92zpk89y74x80hwidqivjrmjkpjx92sgj"))))
    (properties `((upstream-name . "forestly")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-reactr
                             r-reactable
                             r-metalite-ae
                             r-metalite
                             r-htmltools
                             r-glue
                             r-crosstalk
                             r-brew))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=forestly")
    (synopsis "Interactive Forest Plot")
    (description
     "Interactive forest plot for clinical trial safety analysis using metalite',
reactable', plotly', and Analysis Data Model (A@code{DaM}) datasets.  Includes
functionality for adverse event filtering, incidence-based group filtering,
hover-over reveals, and search and sort operations.  The workflow allows for
metadata construction, data preparation, output formatting, and interactive plot
generation.")
    (license license:gpl3+)))

(define-public r-forestinventory
  (package
    (name "r-forestinventory")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestinventory" version))
       (sha256
        (base32 "1v5gyx8i64zn1cinwvm86syq26vhfzw2maaiymy32fphzybwxivf"))))
    (properties `((upstream-name . "forestinventory")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-plyr r-ggplot2))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=forestinventory")
    (synopsis
     "Design-Based Global and Small-Area Estimations for Multiphase Forest Inventories")
    (description
     "Extensive global and small-area estimation procedures for multiphase forest
inventories under the design-based Monte-Carlo approach are provided.  The
implementation has been published in the Journal of Statistical Software
(<doi:10.18637/jss.v097.i04>) and includes estimators for simple and cluster
sampling published by Daniel Mandallaz in 2007 (<doi:10.1201/9781584889779>),
2013 (<doi:10.1139/cjfr-2012-0381>, <doi:10.1139/cjfr-2013-0181>,
<doi:10.1139/cjfr-2013-0449>, <doi:10.3929/ethz-a-009990020>) and 2016
(<doi:10.3929/ethz-a-010579388>).  It provides point estimates, their external-
and design-based variances and confidence intervals, as well as a set of
functions to analyze and visualize the produced estimates.  The procedures have
also been optimized for the use of remote sensing data as auxiliary information,
as demonstrated in 2018 by Hill et al. (<doi:10.3390/rs10071052>).")
    (license license:gpl2+)))

(define-public r-foresthes
  (package
    (name "r-foresthes")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestHES" version))
       (sha256
        (base32 "05l04ly3l8xkdz3rnnrfa4y0wfmh1am2ixbz1vfarnqkc0zppwpj"))))
    (properties `((upstream-name . "forestHES")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=forestHES")
    (synopsis
     "Forest Health Evaluation System at the Forest Stand Level in China")
    (description
     "Assessing forest ecosystem health is an effective way for forest resource
management.The national forest health evaluation system at the forest stand
level using analytic hierarchy process, has a high application value and
practical significance.  The package can effectively and easily realize the
total assessment process, and help foresters to further assess and management
forest resources.")
    (license license:gpl2+)))

(define-public r-forestgapr
  (package
    (name "r-forestgapr")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForestGapR" version))
       (sha256
        (base32 "0pj1rq2gqhigrv5v734hj0gmjb6qnipy9crd14qdvzbjhprg4i4z"))))
    (properties `((upstream-name . "ForestGapR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-vgam
                             r-spatstat-geom
                             r-spatstat-explore
                             r-sp
                             r-raster
                             r-powerlaw
                             r-igraph))
    (home-page "https://cran.r-project.org/package=ForestGapR")
    (synopsis "Tropical Forest Canopy Gaps Analysis")
    (description
     "Set of tools for detecting and analyzing Airborne Laser Scanning-derived
Tropical Forest Canopy Gaps.  Details were published in Silva and others (2019)
<doi:10.1111/2041-210X.13211>.")
    (license license:gpl3)))

(define-public r-forestfit
  (package
    (name "r-forestfit")
    (version "2.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForestFit" version))
       (sha256
        (base32 "0r8hr1hl5js7bc0wggxr7j0psydizlysfgqd5l55i8s79jx9bqhp"))))
    (properties `((upstream-name . "ForestFit")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-ars))
    (home-page "https://cran.r-project.org/package=ForestFit")
    (synopsis "Statistical Modelling for Plant Size Distributions")
    (description
     "Developed for the following tasks.  1 ) Computing the probability density
function, cumulative distribution function, random generation, and estimating
the parameters of the eleven mixture models.  2 ) Point estimation of the
parameters of two - parameter Weibull distribution using twelve methods and
three - parameter Weibull distribution using nine methods.  3 ) The Bayesian
inference for the three - parameter Weibull distribution.  4 ) Estimating
parameters of the three - parameter Birnbaum - Saunders, generalized
exponential, and Weibull distributions fitted to grouped data using three
methods including approximated maximum likelihood, expectation maximization, and
maximum likelihood.  5 ) Estimating the parameters of the gamma, log-normal, and
Weibull mixture models fitted to the grouped data through the EM algorithm, 6 )
Estimating parameters of the nonlinear height curve fitted to the height -
diameter observation, 7 ) Estimating parameters, computing probability density
function, cumulative distribution function, and generating realizations from
gamma shape mixture model introduced by Venturini et al. (2008)
<doi:10.1214/07-AOAS156> , 8 ) The Bayesian inference, computing probability
density function, cumulative distribution function, and generating realizations
from four-parameter Johnson SB distribution, 9 ) Robust multiple linear
regression analysis when error term follows skewed t distribution, 10 )
Estimating parameters of a given distribution fitted to grouped data using
method of maximum likelihood, and 11 ) Estimating parameters of the Johnson SB
distribution through the Bayesian, method of moment, conditional maximum
likelihood, and two - percentile method.")
    (license license:gpl2+)))

(define-public r-foresterror
  (package
    (name "r-foresterror")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestError" version))
       (sha256
        (base32 "1dk19sgx760ph464cya4gxb1i3rpnydnhrbqyb25jja0dryjapcm"))))
    (properties `((upstream-name . "forestError")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-data-table))
    (home-page "https://cran.r-project.org/package=forestError")
    (synopsis
     "Unified Framework for Random Forest Prediction Error Estimation")
    (description
     "Estimates the conditional error distributions of random forest predictions and
common parameters of those distributions, including conditional
misclassification rates, conditional mean squared prediction errors, conditional
biases, and conditional quantiles, by out-of-bag weighting of out-of-bag
prediction errors as proposed by Lu and Hardin (2021).  This package is
compatible with several existing packages that implement random forests in R.")
    (license license:gpl3)))

(define-public r-forestecology
  (package
    (name "r-forestecology")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestecology" version))
       (sha256
        (base32 "0pvh50sdiscgkshlmyngz7pkmpaz03c8x3gfjp5ir52f8710ngb7"))))
    (properties `((upstream-name . "forestecology")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-snakecase
                             r-sfheaders
                             r-sf
                             r-rlang
                             r-purrr
                             r-patchwork
                             r-mvnfast
                             r-magrittr
                             r-glue
                             r-ggridges
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-blockcv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rudeboybert/forestecology")
    (synopsis
     "Fitting and Assessing Neighborhood Models of the Effect of Interspecific Competition on the Growth of Trees")
    (description
     "Code for fitting and assessing models for the growth of trees.  In particular
for the Bayesian neighborhood competition linear regression model of Allen
(2020): methods for model fitting and generating fitted/predicted values,
evaluating the effect of competitor species identity using permutation tests,
and evaluating model performance using spatial cross-validation.")
    (license license:expat)))

(define-public r-forestdisc
  (package
    (name "r-forestdisc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForestDisc" version))
       (sha256
        (base32 "1mzlrqjxsja51yyxckj4ym1vpfpq30vlhvs8clrg8jv7kz86hdwk"))))
    (properties `((upstream-name . "ForestDisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-nloptr r-moments))
    (home-page "https://cran.r-project.org/package=ForestDisc")
    (synopsis "Forest Discretization")
    (description
     "Supervised, multivariate, and non-parametric discretization algorithm based on
tree ensembles learning and moment matching optimization.  This version of the
algorithm relies on random forest algorithm to learn a large set of split points
that conserves the relationship between attributes and the target class, and on
moment matching optimization to transform this set into a reduced number of cut
points matching as well as possible statistical properties of the initial set of
split points.  For each attribute to be discretized, the set S of its related
split points extracted through random forest is mapped to a reduced set C of cut
points of size k.  This mapping relies on minimizing, for each continuous
attribute to be discretized, the distance between the four first moments of S
and the four first moments of C subject to some constraints.  This non-linear
optimization problem is performed using k values ranging from 2 to max_splits',
and the best solution returned correspond to the value k which optimum solution
is the lowest one over the different realizations. @code{ForestDisc} is a
generalization of RFDisc discretization method initially proposed by Berrado and
Runger (2009) <doi:10.1109/AICCSA.2009.5069327>, and improved by Berrado et al.
in 2012 by adopting the idea of moment matching optimization related by Hoyland
and Wallace (2001) <doi: 10.1287/mnsc.47.2.295.9834>.")
    (license license:gpl3+)))

(define-public r-forestcontrol
  (package
    (name "r-forestcontrol")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestControl" version))
       (sha256
        (base32 "0g81ml12xhq2a868vlpsybpsqz7p4hn9jnxh3dvq6g4k1hc1292x"))))
    (properties `((upstream-name . "forestControl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rcpp r-purrr r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aberHRML/forestControl")
    (synopsis
     "Approximate False Positive Rate Control in Selection Frequency for Random Forest")
    (description
     "Approximate false positive rate control in selection frequency for random forest
using the methods described by Ender Konukoglu and Melanie Ganz (2014)
<@code{arXiv:1410.2838>}.  Methods for calculating the selection frequency
threshold at false positive rates and selection frequency false positive rate
feature selection.")
    (license license:expat)))

(define-public r-forestat
  (package
    (name "r-forestat")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forestat" version))
       (sha256
        (base32 "0bw6kkdq65d1jwhim80iwq6lcdfyawf8xfg1kc86qdhvrg2zf4wm"))))
    (properties `((upstream-name . "forestat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-nlme r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/caf-ifrit/forestat")
    (synopsis
     "Forest Carbon Sequestration and Potential Productivity Calculation")
    (description
     "Include assessing site classes based on the stand height growth and establishing
a nonlinear mixed-effect biomass model under different site classes based on the
whole stand model to achieve more accurate estimation of carbon sequestration.
In particular, a carbon sequestration potential productivity calculation method
based on the potential mean annual increment is proposed.  This package is
applicable to both natural forests and plantations.  It can quantitatively
assess standâs potential productivity, realized productivity, and possible
improvement under certain site, and can be used in many aspects such as site
quality assessment, tree species suitability evaluation, and forest degradation
evaluation.  Reference: Lei X, Fu L, Li H, et al (2018)
<doi:10.11707/j.1001-7488.20181213>.  Fu L, Sharma R P, Zhu G, et al (2017)
<doi:10.3390/f8040119>.")
    (license license:gpl3+)))

(define-public r-foresight
  (package
    (name "r-foresight")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foreSIGHT" version))
       (sha256
        (base32 "1nw93xs10qfj489i9xlamjrk8rf73b7511gdsg49vvbgjp4945mr"))))
    (properties `((upstream-name . "foreSIGHT")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-soilhyp
                             r-scales
                             r-rlang
                             r-rgn
                             r-rcpp
                             r-rcorpora
                             r-progress
                             r-mvtnorm
                             r-moments
                             r-matrix
                             r-lattice
                             r-jsonlite
                             r-ggplot2
                             r-ga
                             r-fields
                             r-directlabels
                             r-dfoptim
                             r-cowplot
                             r-cmaes))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=foreSIGHT")
    (synopsis "Systems Insights from Generation of Hydroclimatic Timeseries")
    (description
     "This package provides a tool to create hydroclimate scenarios, stress test
systems and visualize system performance in scenario-neutral climate change
impact assessments.  Scenario-neutral approaches stress-test the performance of
a modelled system by applying a wide range of plausible hydroclimate conditions
(see Brown & Wilby (2012) <doi:10.1029/2012EO410001> and Prudhomme et al. (2010)
<doi:10.1016/j.jhydrol.2010.06.043>).  These approaches allow the identification
of hydroclimatic variables that affect the vulnerability of a system to
hydroclimate variation and change.  This tool enables the generation of
perturbed time series using a range of approaches including simple scaling of
observed time series (e.g. Culley et al. (2016) <doi:10.1002/2015WR018253>) and
stochastic simulation of perturbed time series via an inverse approach (see Guo
et al. (2018) <doi:10.1016/j.jhydrol.2016.03.025>).  It incorporates
Richardson-type weather generator model configurations documented in Richardson
(1981) <doi:10.1029/WR017i001p00182>, Richardson and Wright (1984), as well as
latent variable type model configurations documented in Bennett et al. (2018)
<doi:10.1016/j.jhydrol.2016.12.043>, Rasmussen (2013) <doi:10.1002/wrcr.20164>,
Bennett et al. (2019) <doi:10.5194/hess-23-4783-2019> to generate hydroclimate
variables on a daily basis (e.g. precipitation, temperature, potential
evapotranspiration) and allows a variety of different hydroclimate variable
properties, herein called attributes, to be perturbed.  Options are included for
the easy integration of existing system models both internally in R and
externally for seamless stress-testing'.  A suite of visualization options for
the results of a scenario-neutral analysis (e.g. plotting performance spaces and
overlaying climate projection information) are also included.  Version 1.0 of
this package is described in Bennett et al. (2021)
<doi:10.1016/j.envsoft.2021.104999>.  As further developments in
scenario-neutral approaches occur the tool will be updated to incorporate these
advances.")
    (license license:gpl3)))

(define-public r-forensit
  (package
    (name "r-forensit")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forensIT" version))
       (sha256
        (base32 "0zbkkdm3wzzqsg7m6854lisskql0v5k9sg1ly1z479w5iqknh7bl"))))
    (properties `((upstream-name . "forensIT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-reshape2
                             r-pedtools
                             r-pedprobr
                             r-paramlink
                             r-mispitools
                             r-magrittr
                             r-iterators
                             r-hrbrthemes
                             r-gtools
                             r-ggplot2
                             r-forrel
                             r-foreach
                             r-fbnet
                             r-dplyr
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=forensIT")
    (synopsis "Information Theory Tools for Forensic Analysis")
    (description
     "The @code{forensIT} package is a comprehensive statistical toolkit tailored for
handling missing person cases.  By leveraging information theory metrics, it
enables accurate assessment of kinship, particularly when limited genetic
evidence is available.  With a focus on optimizing statistical power,
@code{forensIT} empowers investigators to effectively prioritize family members,
enhancing the reliability and efficiency of missing person investigations.")
    (license license:gpl3+)))

(define-public r-forectheta
  (package
    (name "r-forectheta")
    (version "2.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecTheta" version))
       (sha256
        (base32 "0xw5xl6famx0wy68a32f8vgqk02lkymvxq082yp16giidvzvqjwd"))))
    (properties `((upstream-name . "forecTheta")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-forecast))
    (home-page
     "https://www.sciencedirect.com/science/article/pii/S0169207016300243")
    (synopsis "Forecasting Time Series by Theta Models")
    (description
     "Routines for forecasting univariate time series using Theta Models.")
    (license license:gpl2+)))

(define-public r-forecomp
  (package
    (name "r-forecomp")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForeComp" version))
       (sha256
        (base32 "1d7hs563q0h6zx3ky3lj0acb25b2wi4g4c5vacrppf0lv8m16rqw"))))
    (properties `((upstream-name . "ForeComp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2 r-forecast r-astsa))
    (home-page "https://github.com/mcmcs/ForeComp")
    (synopsis
     "Size-Power Tradeoff Visualization for Equal Predictive Ability of Two Forecasts")
    (description
     "Offers a set of tools for visualizing and analyzing size and power properties of
the test for equal predictive accuracy, the Diebold-Mariano test that is based
on heteroskedasticity and autocorrelation-robust (HAR) inference.  A typical HAR
inference is involved with non-parametric estimation of the long-run variance,
and one of its tuning parameters, the truncation parameter, trades off a size
and power.  Lazarus, Lewis, and Stock (2021)<doi:10.3982/ECTA15404>
theoretically characterize the size-power frontier for the Gaussian multivariate
location model. @code{ForeComp} computes and visualizes the finite-sample
size-power frontier of the Diebold-Mariano test based on fixed-b asymptotics
together with the Bartlett kernel.  To compute the finite-sample size and power,
it works with the best approximating ARMA process to the given dataset.  It
informs the user how their choice of the truncation parameter performs and how
robust the testing outcomes are.")
    (license license:gpl3+)))

(define-public r-foreco
  (package
    (name "r-foreco")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FoReco" version))
       (sha256
        (base32 "07ivfjs836g3k13kfv188lxv300n43vczmkcapxnwiii643y1kw8"))))
    (properties `((upstream-name . "FoReco")))
    (build-system r-build-system)
    (propagated-inputs (list r-osqp r-matrix r-mathjaxr r-corpcor r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/daniGiro/FoReco")
    (synopsis "Forecast Reconciliation")
    (description
     "Classical (bottom-up and top-down), optimal and heuristic combination forecast
point (Di Fonzo and Girolimetto, 2023) <doi:10.1016/j.ijforecast.2021.08.004>
and probabilistic (Girolimetto et al.  2023) <@code{arXiv:2303.17277>}
reconciliation procedures for cross-sectional, temporal, and cross-temporal
linearly constrained time series.")
    (license license:gpl3)))

(define-public r-forecasttb
  (package
    (name "r-forecasttb")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForecastTB" version))
       (sha256
        (base32 "1wqgw4i65ajwj8la8mgv2qqm4ydgk90i6chdkd8h33rlwh8yddc6"))))
    (properties `((upstream-name . "ForecastTB")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rcolorbrewer
                             r-psf
                             r-imputetestbench
                             r-gridextra
                             r-ggplot2
                             r-forecast
                             r-decomposedpsf
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ForecastTB")
    (synopsis "Test Bench for the Comparison of Forecast Methods")
    (description
     "This package provides a test bench for the comparison of forecasting methods in
uni-variate time series.  Forecasting methods are compared using different error
metrics.  Proposed forecasting methods and alternative error metrics can be
used.  Detailed discussion is provided in the vignette.")
    (license license:cc0)))

(define-public r-forecastsnsts
  (package
    (name "r-forecastsnsts")
    (version "1.3-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecastSNSTS" version))
       (sha256
        (base32 "0p47x7ic2ib7znqbp8br4b2ci75f5w8x413z9g4n30m002p7irp1"))))
    (properties `((upstream-name . "forecastSNSTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "http://github.com/tobiaskley/forecastSNSTS")
    (synopsis "Forecasting for Stationary and Non-Stationary Time Series")
    (description
     "This package provides methods to compute linear h-step ahead prediction
coefficients based on localised and iterated Yule-Walker estimates and empirical
mean squared and absolute prediction errors for the resulting predictors.  Also,
functions to compute autocovariances for AR(p) processes, to simulate
@code{tvARMA(p,q}) time series, and to verify an assumption from Kley et al.
(2019), Electronic of Statistics, forthcoming.  Preprint
<@code{arXiv:1611.04460>}.")
    (license license:gpl2+)))

(define-public r-forecastml
  (package
    (name "r-forecastml")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecastML" version))
       (sha256
        (base32 "01lqbmdmd6sk5xka19i9d466bzihxgp652v0kr13r82b591f67vq"))))
    (properties `((upstream-name . "forecastML")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-future-apply
                             r-dtplyr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nredell/forecastML/")
    (synopsis "Time Series Forecasting with Machine Learning Methods")
    (description
     "The purpose of @code{forecastML} is to simplify the process of multi-step-ahead
forecasting with standard machine learning algorithms. @code{forecastML}
supports lagged, dynamic, static, and grouping features for modeling single and
grouped numeric or factor/sequence time series.  In addition, simple wrapper
functions are used to support model-building with most R packages.  This
approach to forecasting is inspired by Bergmeir, Hyndman, and Koo's (2018) paper
\"A note on the validity of cross-validation for evaluating autoregressive time
series prediction\" <doi:10.1016/j.csda.2017.11.003>.")
    (license license:expat)))

(define-public r-forecastlsw
  (package
    (name "r-forecastlsw")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecastLSW" version))
       (sha256
        (base32 "0gwc0kfcl2qxfxnzxw65ij83njw8x6bxxb63sfajcm71kfbnsipa"))))
    (properties `((upstream-name . "forecastLSW")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavethresh r-lpacf r-locits r-forecast))
    (home-page "https://cran.r-project.org/package=forecastLSW")
    (synopsis "Forecasting Routines for Locally Stationary Wavelet Processes")
    (description
     "Implementation to perform forecasting of locally stationary wavelet processes by
examining the local second order structure of the time series.")
    (license license:gpl2)))

(define-public r-forecasthybrid
  (package
    (name "r-forecasthybrid")
    (version "5.0.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecastHybrid" version))
       (sha256
        (base32 "1pg3wbmlagr01j3nikfh4dvh5lvbdfp7069wx9h9xsl7d4481ly1"))))
    (properties `((upstream-name . "forecastHybrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-thief
                             r-purrr
                             r-ggplot2
                             r-forecast
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/dashaub/forecastHybrid")
    (synopsis "Convenient Functions for Ensemble Time Series Forecasts")
    (description
     "Convenient functions for ensemble forecasts in R combining approaches from the
forecast package.  Forecasts generated from auto.arima(), ets(), thetaf(),
nnetar(), stlm(), tbats(), and snaive() can be combined with equal weights,
weights based on in-sample errors (introduced by Bates & Granger (1969)
<doi:10.1057/jors.1969.103>), or cross-validated weights.  Cross validation for
time series data with user-supplied models and forecasting functions is also
supported to evaluate model accuracy.")
    (license license:gpl3)))

(define-public r-forecaster
  (package
    (name "r-forecaster")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forecasteR" version))
       (sha256
        (base32 "0pwgkkzyfzjjp9qrx4xx3b68617a18i3an3gcpprkg4mwpsvcj0x"))))
    (properties `((upstream-name . "forecasteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-stringr
                             r-shinyjs
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycustomloader
                             r-shinyace
                             r-shiny
                             r-rlang
                             r-lubridate
                             r-keras
                             r-htmlwidgets
                             r-htmltools
                             r-golem
                             r-forecast
                             r-echarts4r
                             r-dt
                             r-config
                             r-colourpicker))
    (native-inputs (list esbuild))
    (home-page "https://promidat.website")
    (synopsis "Time Series Forecast System")
    (description
     "This package provides a web application for displaying, analysing and
forecasting univariate time series.  Includes basic methods such as mean,
@code{naÃ¯ve}, seasonal @code{naÃ¯ve} and drift, as well as more complex methods
such as Holt-Winters Box,G and Jenkins, G (1976) <doi:10.1111/jtsa.12194> and
ARIMA Brockwell, P.J. and R.A.Davis (1991) <doi:10.1007/978-1-4419-0320-4>.")
    (license license:gpl2+)))

(define-public r-forecastcombinations
  (package
    (name "r-forecastcombinations")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForecastCombinations" version))
       (sha256
        (base32 "07vzgm2jy992p1l9b8rsv2lbc8cbfzvql85n5ah4p4l3zjxdxgk9"))))
    (properties `((upstream-name . "ForecastCombinations")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-quadprog))
    (home-page "https://cran.r-project.org/package=ForecastCombinations")
    (synopsis "Forecast Combinations")
    (description
     "Aim: Supports the most frequently used methods to combine forecasts.  Among
others: Simple average, Ordinary Least Squares, Least Absolute Deviation,
Constrained Least Squares, Variance-based, Best Individual model, Complete
subset regressions and Information-theoretic (information criteria based).")
    (license license:gpl2)))

(define-public r-forecastcomb
  (package
    (name "r-forecastcomb")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForecastComb" version))
       (sha256
        (base32 "07cbiv172mpkwvg6svhwgavlfy2144ir3y1l7w37wbd0ygs514id"))))
    (properties `((upstream-name . "ForecastComb")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg
                             r-quadprog
                             r-psych
                             r-mtsdi
                             r-matrix
                             r-ggplot2
                             r-forecast))
    (home-page "https://github.com/ceweiss/ForecastComb")
    (synopsis "Forecast Combination Methods")
    (description
     "This package provides geometric- and regression-based forecast combination
methods under a unified user interface for the packages
@code{ForecastCombinations} and @code{GeomComb}'.  Additionally, updated tools
and convenience functions for data pre-processing are available in order to deal
with common problems in forecast combination (missingness, collinearity).  For
method details see Hsiao C, Wan SK (2014). <doi:10.1016/j.jeconom.2013.11.003>,
Hansen BE (2007). <doi:10.1111/j.1468-0262.2007.00785.x>, Elliott G, Gargano A,
Timmermann A (2013). <doi:10.1016/j.jeconom.2013.04.017>, and Clemen RT (1989).
<doi:10.1016/0169-2070(89)90012-5>.")
    (license license:gpl2+)))

(define-public r-foreca
  (package
    (name "r-foreca")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForeCA" version))
       (sha256
        (base32 "1falhz9v0z76h60gz66rh9wvk3jsjv8fvbkhkx9jmzbrkla397cd"))))
    (properties `((upstream-name . "ForeCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-mass r-astsa))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gmgeorg/ForeCA")
    (synopsis "Forecastable Component Analysis")
    (description
     "Implementation of Forecastable Component Analysis ('@code{ForeCA}'), including
main algorithms and auxiliary function (summary, plotting, etc.) to apply
@code{ForeCA} to multivariate time series data. @code{ForeCA} is a novel
dimension reduction (DR) technique for temporally dependent signals.  Contrary
to other popular DR methods, such as PCA or ICA', @code{ForeCA} takes time
dependency explicitly into account and searches for the most forecastable
signal.  The measure of forecastability is based on the Shannon entropy of the
spectral density of the transformed signal.")
    (license license:gpl2)))

(define-public r-forcer
  (package
    (name "r-forcer")
    (version "1.0.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forceR" version))
       (sha256
        (base32 "1fq1zp0h4044yx5p6yj03cyzwvsrijchcnjz8z91cnfagkb5b8s0"))))
    (properties `((upstream-name . "forceR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-roll
                             r-readr
                             r-purrr
                             r-magrittr
                             r-filesstrings
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Peter-T-Ruehr/forceR")
    (synopsis "Force Measurement Analyses")
    (description
     "For cleaning and analysis of graphs, such as animal closing force measurements.
@code{forceR} was initially written and optimized to deal with insect bite force
measurements, but can be used for any time series.  Includes a full workflow to
load, plot and crop data, correct amplifier and baseline drifts, identify
individual peak shapes (bites), rescale (normalize) peak curves, and find best
polynomial fits to describe and analyze force curve shapes.")
    (license license:expat)))

(define-public r-forams
  (package
    (name "r-forams")
    (version "2.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "forams" version))
       (sha256
        (base32 "1y8r64ckx7swx4rlmdsjp4k8ic5jmivwk4vbadx4gpp4brd2zk12"))))
    (properties `((upstream-name . "forams")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan))
    (home-page "https://cran.r-project.org/package=forams")
    (synopsis "Foraminifera and Community Ecology Analyses")
    (description
     "SHE, FORAM Index and ABC Method analyses and custom plot functions for community
data.")
    (license license:gpl2+)))

(define-public r-foragingorg
  (package
    (name "r-foragingorg")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ForagingOrg" version))
       (sha256
        (base32 "0jsji653xwnmsa1j1h6da99f48kla9yk58z05za7bwk1qw9rbi70"))))
    (properties `((upstream-name . "ForagingOrg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp r-pairviz))
    (home-page "https://cran.r-project.org/package=ForagingOrg")
    (synopsis "Organization Measures for Visual Foraging")
    (description
     "Several functions to compute indicators for organization and efficiency in
visual foraging, multi-target visual search, and cancellation tasks.  The
current version of this package includes the following indicators: best-r, mean
Inter-target Distance, Percentage Above Optimal (PAO) scan path, and
intersections in the scan path.  For more detailed descriptions, see Mark et al.
(2004) <doi:10.1212/01.WNL.0000131947.08670.D4>.")
    (license license:gpl3)))

(define-public r-foqat
  (package
    (name "r-foqat")
    (version "2.0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foqat" version))
       (sha256
        (base32 "0401100lx03p6pa7n6z3lfn9gxs7m7d43ycn788wpn3iykv9b3x4"))))
    (properties `((upstream-name . "foqat")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-scales
                             r-rvest
                             r-reshape2
                             r-plyr
                             r-patchwork
                             r-magrittr
                             r-lubridate
                             r-lmodel2
                             r-gridextra
                             r-ggplotify
                             r-ggplot2
                             r-ggnewscale
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tianshu129/foqat")
    (synopsis "Field Observation Quick Analysis Toolkit")
    (description
     "This package provides tools for quickly processing and analyzing field
observation data and air quality data.  This tools contain functions that
facilitate analysis in atmospheric chemistry (especially in ozone pollution).
Some functions of time series are also applicable to other fields.  For detail
please view homepage<https://github.com/tianshu129/foqat>.  Scientific
Reference: 1.  The Hydroxyl Radical (OH) Reactivity: Roger Atkinson and Janet
Arey (2003) <doi:10.1021/cr0206420>.  2.  Ozone Formation Potential (OFP):
<http://ww2.arb.ca.gov/sites/default/files/barcu/regact/2009/mir2009/mir10.pdf>,
Zhang et al.(2021) <doi:10.5194/acp-21-11053-2021>.  3.  Aerosol Formation
Potential (AFP): Wenjing Wu et al. (2016) <doi:10.1016/j.jes.2016.03.025>.  4.
TUV model:
<https://www2.acom.ucar.edu/modeling/tropospheric-ultraviolet-and-visible-tuv-radiation-model>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-footprint
  (package
    (name "r-footprint")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "footprint" version))
       (sha256
        (base32 "00m3jaxiacf9wxa0wg0qxhp6c0prbf2l5c2cid6anz8rc5b6angv"))))
    (properties `((upstream-name . "footprint")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr r-dplyr r-airportr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/acircleda/footprint")
    (synopsis "Calculate Air Travel Emissions")
    (description
     "This package provides a handy tool to calculate carbon footprints from air
travel based on three-letter International Air Transport Association (IATA)
airport codes or latitude and longitude.  footprint first calculates the
great-circle distance between departure and arrival destinations.  It then uses
the Department of Environment, Food & Rural Affairs (DEFRA) greenhouse gas
conversion factors for business air travel to estimate the carbon footprint.
These conversion factors consider trip length, flight class (e.g. economy,
business), and emissions metric (e.g. carbon dioxide equivalent, methane).")
    (license license:cc0)))

(define-public r-footbayes
  (package
    (name "r-footbayes")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "footBayes" version))
       (sha256
        (base32 "0gp784ad34ygnn06r4p1y3nqdx372ypgcgm94fcm1lqslsn7akj0"))))
    (properties `((upstream-name . "footBayes")))
    (build-system r-build-system)
    (inputs (list pandoc pandoc))
    (propagated-inputs (list r-tidyverse
                             r-rstan
                             r-reshape2
                             r-numderiv
                             r-metrology
                             r-matrixstats
                             r-magrittr
                             r-ggplot2
                             r-extradistr
                             r-dplyr
                             r-bayesplot
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leoegidi/footbayes")
    (synopsis "Fitting Bayesian and MLE Football Models")
    (description
     "This is the first package allowing for the estimation, visualization and
prediction of the most well-known football models: double Poisson, bivariate
Poisson, Skellam, student_t, diagonal-inflated bivariate Poisson, and
zero-inflated Skellam.  The package allows Hamiltonian Monte Carlo (HMC)
estimation through the underlying Stan environment and Maximum Likelihood
estimation (MLE, for static models only).  The model construction relies on the
most well-known football references, such as Dixon and Coles (1997)
<doi:10.1111/1467-9876.00065>, Karlis and Ntzoufras (2003)
<doi:10.1111/1467-9884.00366> and Egidi, Pauli and Torelli (2018)
<doi:10.1177/1471082X18798414>.")
    (license license:gpl2)))

(define-public r-footballpenaltiesbl
  (package
    (name "r-footballpenaltiesbl")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "footballpenaltiesBL" version))
       (sha256
        (base32 "1my67157frp4pxl84sb6dnb7rzp99g59mp9iwwv1s6wc391zfbsp"))))
    (properties `((upstream-name . "footballpenaltiesBL")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=footballpenaltiesBL")
    (synopsis "Penalties in the German Men's Football Bundesliga")
    (description
     "Basic analysis of all penalties taken in the German men's Bundesliga between the
start of its inaugural season and May 2017.  The main functions are suitable
printing and plotting functions.  Flexible selection of a player is supported
via grep.  Missed penalties can easily be included or excluded, depending on the
user's wishes.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-foolbox
  (package
    (name "r-foolbox")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foolbox" version))
       (sha256
        (base32 "06lcr5v6bcqqxskrwdm16b46zq4h67x8bwqya88jxs5bgi5w0hj3"))))
    (properties `((upstream-name . "foolbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mailund/foolbox")
    (synopsis "Function Manipulation Toolbox")
    (description
     "This package provides functionality for manipulating functions and translating
them in metaprogramming.")
    (license license:gpl3)))

(define-public r-foodwebwrapper
  (package
    (name "r-foodwebwrapper")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foodwebWrapper" version))
       (sha256
        (base32 "1dwlzvxk80vl97b24i3gjcxsbir2kxvblbhsihf2wysxyfmw1abh"))))
    (properties `((upstream-name . "foodwebWrapper")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tibble
                             r-textshaping
                             r-r2html
                             r-mvbutils
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=foodwebWrapper")
    (synopsis "Enhanced Wrapper to Show Which Functions Call What")
    (description
     "Enhances the functionality of the mvbutils::foodweb() program.  The
matrix-format output of the original program contains identical row names and
column names, each name representing a retrieved function.  This format is
enhanced by using the find_funs() program [see Sebastian (2017)
<https://sebastiansauer.github.io/finds_funs/>] to concatenate the package name
to the function name.  Each package is assigned a unique color, that is used to
color code the text naming the packages and the functions.  This color coding is
extended to the entries of value \"1\" within the matrix, indicating the pattern
of ancestor and descendent functions.")
    (license license:gpl2+)))

(define-public r-foodquotient
  (package
    (name "r-foodquotient")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foodquotient" version))
       (sha256
        (base32 "11api7fh3v7ym4k22xf1clbgl0wxqmklr9irjw4y3bn57vmsy3i6"))))
    (properties `((upstream-name . "foodquotient")))
    (build-system r-build-system)
    (home-page "<https://naldc.nal.usda.gov/catalog/32818>")
    (synopsis "Food Quotient and Nutrient Analysis for HSFFQ")
    (description
     "Aids in analysing data from a food frequency questionnaire known as the Harvard
Service Food Frequency Questionnaire (HSFFQ).  Functions from this package use
answers from the HSFFQ to generate estimates of daily consumed micronutrients,
calories, macronutrients on an individual level.  The package also calculates
food quotients on individual and group levels.  Foodquotient calculation is an
often tedious step in the calculation of total human energy expenditure (TEE)
using the doubly labeled water method, which is the gold standard for measuring
TEE.")
    (license license:expat)))

(define-public r-foodingraph
  (package
    (name "r-foodingraph")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foodingraph" version))
       (sha256
        (base32 "0v40yk7lx0zxvpd3vz48h5gzx8ds8v3l12i2r7v9safgfvip6fvn"))))
    (properties `((upstream-name . "foodingraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-minerva
                             r-magrittr
                             r-labeling
                             r-igraph
                             r-ggraph
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vgasque/foodingraph/")
    (synopsis "Food Network Inference and Visualization")
    (description
     "Displays a weighted undirected food graph from an adjacency matrix.  Can perform
confidence-interval bootstrap inference with mutual information or maximal
information coefficient.  Based on my Master 1 internship at the Bordeaux
Population Health center.  References : Reshef et al. (2011)
<doi:10.1126/science.1205438>, Meyer et al. (2008)
<doi:10.1186/1471-2105-9-461>, Liu et al. (2016)
<doi:10.1371/journal.pone.0158247>.")
    (license license:gpl3)))

(define-public r-fontcm
  (package
    (name "r-fontcm")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fontcm" version))
       (sha256
        (base32 "1z6b4qdgj5vhvjqj90sm1hp0fffi1vxzvq71p0flxybzyb7d15la"))))
    (properties `((upstream-name . "fontcm")))
    (build-system r-build-system)
    (home-page "https://github.com/wch/fontcm")
    (synopsis "Computer Modern font for use with extrafont package")
    (description "Computer Modern font for use with extrafont package")
    (license license:gpl2)))

(define-public r-fomantic-plus
  (package
    (name "r-fomantic-plus")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fomantic.plus" version))
       (sha256
        (base32 "0zj50v036zal51b7744bp62c1bzjwdvzw1qwy0lyhgjxly6kb2hy"))))
    (properties `((upstream-name . "fomantic.plus")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny-semantic r-shiny r-jsonlite r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ashbaldry/fomantic.plus")
    (synopsis "Add Extra 'Fomantic UI' Components to 'shiny.semantic'")
    (description
     "Extend shiny.semantic with extra Fomantic UI components.  Create pages in a
format similar to shiny', form validation and more.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-folio
  (package
    (name "r-folio")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "folio" version))
       (sha256
        (base32 "1jkix4hjb6whv1bz8gjrclwlsc415vccvldvi5l998r0bsnbm04c"))))
    (properties `((upstream-name . "folio")))
    (build-system r-build-system)
    (home-page "https://packages.tesselle.org/folio/")
    (synopsis "Datasets for Teaching Archaeology and Paleontology")
    (description
     "Datasets for teaching quantitative approaches and modeling in archaeology and
paleontology.  This package provides several types of data related to broad
topics (cultural evolution, radiocarbon dating, paleoenvironments, etc.), which
can be used to illustrate statistical methods in the classroom (multivariate
data analysis, compositional data analysis, diversity measurement, etc.).")
    (license license:gpl3+)))

(define-public r-folders
  (package
    (name "r-folders")
    (version "0.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "folders" version))
       (sha256
        (base32 "16m0lqfacpqhz5h44v2k8q7gc3p8xa15r153g25fsfkcnw72gwvf"))))
    (properties `((upstream-name . "folders")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-here r-config))
    (home-page "https://github.com/deohs/folders")
    (synopsis "Standardized Folder Names")
    (description "Supports the use of standardized folder names.")
    (license license:expat)))

(define-public r-foghorn
  (package
    (name "r-foghorn")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "foghorn" version))
       (sha256
        (base32 "0fbr38hxl2qwr1pbvbwwnkr9dk8saq13w0ld6waky70g7k7va8m4"))))
    (properties `((upstream-name . "foghorn")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-rvest
                             r-rlang
                             r-httr2
                             r-curl
                             r-crayon
                             r-clisymbols))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fmichonneau/foghorn")
    (synopsis "Summarize CRAN Check Results in the Terminal")
    (description
     "The CRAN check results and where your package stands in the CRAN submission
queue in your R terminal.")
    (license license:expat)))

(define-public r-focusedmds
  (package
    (name "r-focusedmds")
    (version "1.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "focusedMDS" version))
       (sha256
        (base32 "18s86dbbpyajscqr9frprf2vp1zif7vh4lw5m0cjskfc6gmsdp2p"))))
    (properties `((upstream-name . "focusedMDS")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (home-page "https://cran.r-project.org/package=focusedMDS")
    (synopsis "Focused, Interactive Multidimensional Scaling")
    (description
     "Takes a distance matrix and plots it as an interactive graph.  One point is
focused at the center of the graph, around which all other points are plotted in
their exact distances as given in the distance matrix.  All other non-focus
points are plotted as best as possible in relation to one another.  Double click
on any point to choose a new focus point, and hover over points to see their ID
labels.  If color label categories are given, hover over colors in the legend to
highlight only those points and click on colors to highlight multiple groups.
For more information on the rationale and mathematical background, as well as an
interactive introduction, see
<https://lea-urpa.github.io/@code{focusedMDS.html>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-foci
  (package
    (name "r-foci")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FOCI" version))
       (sha256
        (base32 "0iax5569a0v18j2l52mw26yimx11fqqbxj5q7jgba9jf7ylp410w"))))
    (properties `((upstream-name . "FOCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-proxy r-gmp r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FOCI")
    (synopsis "Feature Ordering by Conditional Independence")
    (description
     "Feature Ordering by Conditional Independence (FOCI) is a variable selection
algorithm based on the measure of conditional dependence.  For more information,
see the paper: Azadkia and Chatterjee (2019),\"A simple measure of conditional
dependence\" <@code{arXiv:1910.12327>}.")
    (license license:gpl3)))

(define-public r-fnonlinear
  (package
    (name "r-fnonlinear")
    (version "4021.81")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fNonlinear" version))
       (sha256
        (base32 "1dpzg880wnja357qy3r4v5qbqhx7pkknd0rph75xvvn38p4rc0ca"))))
    (properties `((upstream-name . "fNonlinear")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate r-fbasics))
    (home-page "https://www.rmetrics.org")
    (synopsis "Rmetrics - Nonlinear and Chaotic Time Series Modelling")
    (description
     "This package provides a collection of functions for testing various aspects of
univariate time series including independence and neglected nonlinearities.
Further provides functions to investigate the chaotic behavior of time series
processes and to simulate different types of chaotic time series maps.")
    (license license:gpl2+)))

(define-public r-fnets
  (package
    (name "r-fnets")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fnets" version))
       (sha256
        (base32 "0fybpicc95ql89j09s48bnfsbh3spw26vh1m2xd2y5qv4mj1ff8q"))))
    (properties `((upstream-name . "fnets")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-mass
                             r-lpsolve
                             r-igraph
                             r-foreach
                             r-fields
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=fnets")
    (synopsis
     "Factor-Adjusted Network Estimation and Forecasting for High-Dimensional Time Series")
    (description
     "This package implements methods for network estimation and forecasting of
high-dimensional time series exhibiting strong serial and cross-sectional
correlations under a factor-adjusted vector autoregressive model.  See
Barigozzi, Cho and Owens (2022) <@code{arXiv:2201.06110>} for further
descriptions of FNETS methodology and Owens, Cho and Barigozzi (2023)
<@code{arXiv:2301.11675>} accompanying the R package.")
    (license license:gpl3+)))

(define-public r-fmultivar
  (package
    (name "r-fmultivar")
    (version "4031.84")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fMultivar" version))
       (sha256
        (base32 "1f54cvl7m064cxkjr0rz84xprrbr76cw12mjmi8wld4ac5a16igc"))))
    (properties `((upstream-name . "fMultivar")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-mvtnorm r-fbasics r-cubature))
    (native-inputs (list gfortran))
    (home-page "https://www.rmetrics.org")
    (synopsis
     "Rmetrics - Modeling of Multivariate Financial Return Distributions")
    (description
     "This package provides a collection of functions inspired by Venables and Ripley
(2002) <doi:10.1007/978-0-387-21706-2> and Azzalini and Capitanio (1999)
<@code{arXiv:0911.2093>} to manage, investigate and analyze bivariate and
multivariate data sets of financial returns.")
    (license license:gpl2+)))

(define-public r-fmtr
  (package
    (name "r-fmtr")
    (version "1.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmtr" version))
       (sha256
        (base32 "1p543jpjpfw7r7g20jkyswnnv61ka2cjk5k8rgm1d7i9xnzhv0hg"))))
    (properties `((upstream-name . "fmtr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rcpp r-crayon r-common))
    (native-inputs (list r-knitr))
    (home-page "https://fmtr.r-sassy.org")
    (synopsis "Easily Apply Formats to Data")
    (description
     "This package contains a set of functions that can be used to apply formats to
data frames or vectors.  The package aims to provide functionality similar to
that of SASÂ® formats.  Formats are assigned to the format attribute on data
frame columns.  Then when the fdata() function is called, a new data frame is
created with the column data formatted as specified.  The package also contains
a value() function to create a user-defined format, similar to a SASÂ®
user-defined format.")
    (license license:cc0)))

(define-public r-fmt
  (package
    (name "r-fmt")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmt" version))
       (sha256
        (base32 "04df84979a8vaacfhxsb58zci1mmh113ir7qnkniv5qnyvdabacm"))))
    (properties `((upstream-name . "fmt")))
    (build-system r-build-system)
    (propagated-inputs (list r-limma))
    (home-page "https://cran.r-project.org/package=fmt")
    (synopsis
     "Variance Estimation of FMT Method (Fully Moderated T-Statistic)")
    (description
     "The FMT method computes posterior residual variances to be used in the
denominator of a moderated t-statistic from a linear model analysis of gene
expression data.  It is an extension of the moderated t-statistic originally
proposed by Smyth (2004) <doi:10.2202/1544-6115.1027>.  LOESS local regression
and empirical Bayesian method are used to estimate gene specific prior degrees
of freedom and prior variance based on average gene intensity levels.  The
posterior residual variance in the denominator is a weighted average of prior
and residual variance and the weights are prior degrees of freedom and residual
variance degrees of freedom.  The degrees of freedom of the moderated
t-statistic is simply the sum of prior and residual variance degrees of freedom.")
    (license license:gpl2)))

(define-public r-fmstable
  (package
    (name "r-fmstable")
    (version "0.1-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMStable" version))
       (sha256
        (base32 "0fp9nkprpf4v45k7bqi01c69bpwzhdza1bcscgv8jbidvihi0f9a"))))
    (properties `((upstream-name . "FMStable")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FMStable")
    (synopsis "Finite Moment Stable Distributions")
    (description
     "Some basic procedures for dealing with log maximally skew stable distributions,
which are also called finite moment log stable distributions.")
    (license license:gpl3)))

(define-public r-fmsmsnreg
  (package
    (name "r-fmsmsnreg")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMsmsnReg" version))
       (sha256
        (base32 "0d58n7lz8d6xgzvyznmhw1byshyiiwk8dc462qr18cl51p0lqnkv"))))
    (properties `((upstream-name . "FMsmsnReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=FMsmsnReg")
    (synopsis
     "Regression Models with Finite Mixtures of Skew Heavy-Tailed Errors")
    (description
     "Fit linear regression models where the random errors follow a finite mixture of
of Skew Heavy-Tailed Errors.")
    (license license:gpl2+)))

(define-public r-fmritools
  (package
    (name "r-fmritools")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fMRItools" version))
       (sha256
        (base32 "0hbl01hzp503qr2bh1hrgnc3akf0a9lw8ny56vlagb055jsprpdx"))))
    (properties `((upstream-name . "fMRItools")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (home-page "https://github.com/mandymejia/fMRItools")
    (synopsis "Routines for Common fMRI Processing Tasks")
    (description
     "Supports @code{fMRI} (functional magnetic resonance imaging) analysis tasks
including reading in CIFTI', GIFTI and NIFTI data, temporal filtering, nuisance
regression, and @code{aCompCor} (anatomical Components Correction) (Muschelli et
al. (2014) <doi:10.1016/j.neuroimage.2014.03.028>).")
    (license license:gpl3)))

(define-public r-fmriscrub
  (package
    (name "r-fmriscrub")
    (version "0.14.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fMRIscrub" version))
       (sha256
        (base32 "1k0ixg82sgngmpbpl2b57lhamm19bfgcxszrwpf5qkvrh83ab3gs"))))
    (properties `((upstream-name . "fMRIscrub")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase
                             r-pesel
                             r-mass
                             r-gamlss
                             r-fmritools
                             r-expm
                             r-e1071
                             r-cellwise))
    (home-page "https://github.com/mandymejia/fMRIscrub")
    (synopsis "Scrubbing and Other Data Cleaning Routines for fMRI")
    (description
     "Data-driven @code{fMRI} denoising with projection scrubbing (Pham et al (2022)
<doi:10.1016/j.neuroimage.2023.119972>).  Also includes routines for DVARS
(Derivatives VA@code{RianceS}) (Afyouni and Nichols (2018)
<doi:10.1016/j.neuroimage.2017.12.098>), motion scrubbing (Power et al (2012)
<doi:10.1016/j.neuroimage.2011.10.018>), @code{aCompCor} (anatomical Components
Correction) (Muschelli et al (2014) <doi:10.1016/j.neuroimage.2014.03.028>),
detrending, and nuisance regression.  Projection scrubbing is also applicable to
other outlier detection tasks involving high-dimensional data.")
    (license license:gpl3)))

(define-public r-fmriqa
  (package
    (name "r-fmriqa")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmriqa" version))
       (sha256
        (base32 "1z09nf1c305a78c129jvs21b9z91wyhazz41wrn4bimmhfhx7szv"))))
    (properties `((upstream-name . "fmriqa")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-tidyr
                             r-rnifti
                             r-reshape2
                             r-rcppeigen
                             r-pracma
                             r-optparse
                             r-imager
                             r-gridextra
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fmriqa")
    (synopsis "Functional MRI Quality Assurance Routines")
    (description
     "This package provides methods for performing @code{fMRI} quality assurance (QA)
measurements of test objects.  Heavily based on the @code{fBIRN} procedures
detailed by Friedman and Glover (2006) <doi:10.1002/jmri.20583>.")
    (license license:gpl3)))

(define-public r-fmradio
  (package
    (name "r-fmradio")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMradio" version))
       (sha256
        (base32 "02d5imhagkr2cwgs6r77mbd2jg8k5ga17xp3rwaryykg2k4glacs"))))
    (properties `((upstream-name . "FMradio")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-mass r-ggplot2 r-expm r-biobase))
    (home-page "https://github.com/CFWP/FMradio")
    (synopsis "Factor Modeling for Radiomics Data")
    (description
     "This package provides functions that support stable prediction and
classification with radiomics data through factor-analytic modeling.  For
details, see Peeters et al. (2019) <@code{arXiv:1903.11696>}.")
    (license license:gpl2+)))

(define-public r-fmpcloudr
  (package
    (name "r-fmpcloudr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmpcloudr" version))
       (sha256
        (base32 "07fvmrprv0pka1wgp5ygcvv86jvn3h30xxkx44ssin15hfmank69"))))
    (properties `((upstream-name . "fmpcloudr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://exploringfinance.github.io/fmpcloudr/")
    (synopsis "R Access to the 'FMP Cloud' and 'Financial Modeling Prep' API")
    (description
     "Use R to access to the FMP Cloud API <https://fmpcloud.io/> and Financial
Modeling Prep API <https://financialmodelingprep.com/developer/docs/>.  Data
available includes stock prices, market indexes, company fundamentals, 13F
holdings data, and much more.  A valid API token must be set to enable
functions.")
    (license license:gpl3)))

(define-public r-fmp
  (package
    (name "r-fmp")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMP" version))
       (sha256
        (base32 "0w11a78nz4n7zih9h00xkv7prsy9hlxphbpa7hpnbvq9r98g08qm"))))
    (properties `((upstream-name . "FMP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FMP")
    (synopsis "Filtered Monotonic Polynomial IRT Models")
    (description
     "Estimates Filtered Monotonic Polynomial IRT Models as described by Liang and
Browne (2015) <DOI:10.3102/1076998614556816>.")
    (license license:gpl2+)))

(define-public r-fmm
  (package
    (name "r-fmm")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMM" version))
       (sha256
        (base32 "00rjk5lvkcj2ifxgplampqp4427cp68k13wlh7hwjgl2mb2rly23"))))
    (properties `((upstream-name . "FMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-iterators r-foreach r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexARC26/FMM")
    (synopsis "Rhythmic Patterns Modeling by FMM Models")
    (description
     "This package provides a collection of functions to fit and explore single,
multi-component and restricted Frequency Modulated Moebius (FMM) models.  FMM is
a nonlinear parametric regression model capable of fitting non-sinusoidal shapes
in rhythmic patterns.  Details about the mathematical formulation of FMM models
can be found in Rueda et al. (2019) <doi:10.1038/s41598-019-54569-1>.")
    (license license:gpl2+)))

(define-public r-fmf
  (package
    (name "r-fmf")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmf" version))
       (sha256
        (base32 "0b26040a39jys1z3h9mq9k7rjr0iyiialq442ir8vgzvmrh383cs"))))
    (properties `((upstream-name . "fmf")))
    (build-system r-build-system)
    (propagated-inputs (list r-solitude
                             r-rcpparmadillo
                             r-rcpp
                             r-kernlab
                             r-ggplot2
                             r-factominer
                             r-factoextra
                             r-e1071
                             r-dplyr
                             r-caret
                             r-c50))
    (home-page "https://cran.r-project.org/package=fmf")
    (synopsis "Fast Class Noise Detector with Multi-Factor-Based Learning")
    (description
     "This package provides a fast class noise detector which provides noise score for
each observations.  The package takes advantage of @code{RcppArmadillo} to speed
up the calculation of distances between observations.")
    (license license:expat)))

(define-public r-fmesher
  (package
    (name "r-fmesher")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmesher" version))
       (sha256
        (base32 "16av562sj0rzflwbb9sbp8dw7cs8l1sqwzrvkxv8nyphwlg27ci7"))))
    (properties `((upstream-name . "fmesher")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-sp
                             r-sf
                             r-rlang
                             r-rcpp
                             r-matrix
                             r-lifecycle
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://inlabru-org.github.io/fmesher/")
    (synopsis "Triangle Meshes and Related Geometry Tools")
    (description
     "Generate planar and spherical triangle meshes, compute finite element
calculations for 1- and 2-dimensional flat and curved manifolds with associated
basis function spaces, methods for lines and polygons, and transparent handling
of coordinate reference systems and coordinate transformation, including sf and
sp geometries.  The core fmesher library code was originally part of the INLA
package, and implements parts of \"Triangulations and Applications\" by Hjelle and
Daehlen (2006) <doi:10.1007/3-540-33261-8>.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-fmerpack
  (package
    (name "r-fmerpack")
    (version "0.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmerPack" version))
       (sha256
        (base32 "0p9jfgkzs97r6ya1x8ax7bza17b03grqxa22ja13s12vj0cdkv78"))))
    (properties `((upstream-name . "fmerPack")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-glmnet
                             r-flexmix
                             r-abind))
    (home-page "https://cran.r-project.org/package=fmerPack")
    (synopsis
     "Tools of Heterogeneity Pursuit via Finite Mixture Effects Model")
    (description
     "Heterogeneity pursuit methodologies for regularized finite mixture regression by
effects-model formulation proposed by Li et al. (2021)
<@code{arXiv:2003.04787>}.")
    (license license:gpl3+)))

(define-public r-fmeffects
  (package
    (name "r-fmeffects")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmeffects" version))
       (sha256
        (base32 "1jqjlrqc9an8f9ij51xmi7fb6mljwsgchihnb3d63bzwc9a0iphh"))))
    (properties `((upstream-name . "fmeffects")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-r6
                             r-partykit
                             r-ggplot2
                             r-ggparty
                             r-data-table
                             r-cowplot
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/holgstr/fmeffects")
    (synopsis "Model-Agnostic Interpretations with Forward Marginal Effects")
    (description
     "Create local, regional, and global explanations for any machine learning model
with forward marginal effects.  You provide a model and data, and fmeffects
computes feature effects.  The package is based on the theory in: C. A.
Scholbeck, G. Casalicchio, C. Molnar, B. Bischl, and C. Heumann (2022)
<@code{arXiv:2201.08837>}.")
    (license license:lgpl3)))

(define-public r-fme
  (package
    (name "r-fme")
    (version "1.3.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FME" version))
       (sha256
        (base32 "189n3svhlfp86svn8p88wi38lhsz0bqndys0pq87c6grsj5c5i43"))))
    (properties `((upstream-name . "FME")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve
                             r-minqa
                             r-minpack-lm
                             r-mass
                             r-desolve
                             r-coda))
    (native-inputs (list gfortran))
    (home-page "http://fme.r-forge.r-project.org/")
    (synopsis
     "Flexible Modelling Environment for Inverse Modelling, Sensitivity, Identifiability and Monte Carlo Analysis")
    (description
     "This package provides functions to help in fitting models to data, to perform
Monte Carlo, sensitivity and identifiability analysis.  It is intended to work
with models be written as a set of differential equations that are solved either
by an integration routine from package @code{deSolve}', or a steady-state solver
from package @code{rootSolve}'.  However, the methods can also be used with
other types of functions.")
    (license license:gpl2+)))

(define-public r-fmdates
  (package
    (name "r-fmdates")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmdates" version))
       (sha256
        (base32 "1bbcwkh65nf2gak9b81zgg32c5ihwhmai3nc43ayf6ivhqsxw8x0"))))
    (properties `((upstream-name . "fmdates")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/imanuelcostigan/fmdates")
    (synopsis "Financial Market Date Calculations")
    (description
     "This package implements common date calculations relevant for specifying the
economic nature of financial market contracts that are typically defined by
International Swap Dealer Association (ISDA, <http://www2.isda.org>) legal
documentation.  This includes methods to check whether dates are business days
in certain locales, functions to adjust and shift dates and time length (or day
counter) calculations.")
    (license license:gpl2)))

(define-public r-fmcmc
  (package
    (name "r-fmcmc")
    (version "0.5-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmcmc" version))
       (sha256
        (base32 "0swlghwsir1gjw5n2c8kfi5zh6bbqjhk7nnjds2b6656s8xdpr9a"))))
    (properties `((upstream-name . "fmcmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USCbiostats/fmcmc")
    (synopsis "friendly MCMC framework")
    (description
     "This package provides a friendly (flexible) Markov Chain Monte Carlo (MCMC)
framework for implementing Metropolis-Hastings algorithm in a modular way
allowing users to specify automatic convergence checker, personalized transition
kernels, and out-of-the-box multiple MCMC chains using parallel computing.  Most
of the methods implemented in this package can be found in Brooks et al. (2011,
ISBN 9781420079425).  Among the methods included, we have: Haario (2001)
<doi:10.1007/s11222-011-9269-5> Adaptive Metropolis, Vihola (2012)
<doi:10.1007/s11222-011-9269-5> Robust Adaptive Metropolis, and Thawornwattana
et al. (2018) <doi:10.1214/17-BA1084> Mirror transition kernels.")
    (license license:expat)))

(define-public r-fmccsd
  (package
    (name "r-fmccsd")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMCCSD" version))
       (sha256
        (base32 "0c50km5ba6biq9p3mycxhy00ij2gr6y5zf3q8ycq0g1mbk8ybfb7"))))
    (properties `((upstream-name . "FMCCSD")))
    (build-system r-build-system)
    (propagated-inputs (list r-splines2 r-rcpparmadillo r-rcpp r-orthopolynom
                             r-numderiv))
    (home-page "https://cran.r-project.org/package=FMCCSD")
    (synopsis "Efficient Estimation of Clustered Current Status Data")
    (description
     "Current status data abounds in the field of epidemiology and public health,
where the only observable data for a subject is the random inspection time and
the event status at inspection.  Motivated by such a current status data from a
periodontal study where data are inherently clustered, we propose a unified
methodology to analyze such complex data.")
    (license license:gpl2)))

(define-public r-fmc
  (package
    (name "r-fmc")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMC" version))
       (sha256
        (base32 "03g3v1nmidgjcb3nxs7gfk9s20c8vnk0hgijsnydvxi5bypw8s8p"))))
    (properties `((upstream-name . "FMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-minimalrsd))
    (home-page "https://cran.r-project.org/package=FMC")
    (synopsis "Factorial Experiments with Minimum Level Changes")
    (description
     "Generate cost effective minimally changed run sequences for symmetrical as well
as asymmetrical factorial designs.")
    (license license:gpl2+)))

(define-public r-fmbasics
  (package
    (name "r-fmbasics")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fmbasics" version))
       (sha256
        (base32 "1dnf09rgwpc7n7ydlp7r5cwy2fa4vh1h9mbjqzfhk0208kz6jpl0"))))
    (properties `((upstream-name . "fmbasics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-lubridate r-fmdates r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/imanuelcostigan/fmbasics")
    (synopsis "Financial Market Building Blocks")
    (description
     "This package implements basic financial market objects like currencies, currency
pairs, interest rates and interest rate indices.  You will be able to use
Benchmark instances of these objects which have been defined using their most
common conventions or those defined by International Swap Dealer Association
(ISDA, <https://www.isda.org>) legal documentation.")
    (license license:gpl2)))

(define-public r-fmat
  (package
    (name "r-fmat")
    (version "2023.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMAT" version))
       (sha256
        (base32 "04076118yvl7mrsjjpffwzrqk2vlq2c0s7v2chyz7fpf3qhgkqby"))))
    (properties `((upstream-name . "FMAT")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-tidyr
                             r-text
                             r-stringr
                             r-reticulate
                             r-purrr
                             r-psychwordvec
                             r-psych
                             r-plyr
                             r-glue
                             r-forcats
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://psychbruce.github.io/FMAT/")
    (synopsis "The Fill-Mask Association Test")
    (description
     "The Fill-Mask Association Test ('FMAT') is an integrative, versatile, and
probability-based method that uses Masked Language Models to measure conceptual
associations or relations (e.g., attitudes, biases, stereotypes, social norms,
cultural values) as propositional representations in natural language.  The
supported language models include BERT (Devlin et al., 2018)
<@code{arXiv:1810.04805>} and its model variants available at Hugging Face
<https://huggingface.co/models?pipeline_tag=fill-mask>.  Python ('conda')
environment and the transformers module can be installed automatically using the
FMAT_load() function.  Methodological references and technical details are
provided at <https://psychbruce.github.io/FMAT/>.")
    (license license:gpl3)))

(define-public r-fmadist
  (package
    (name "r-fmadist")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FMAdist" version))
       (sha256
        (base32 "09lv6zk36qrrrjs0wkda5rr4pjm7q317gc5dr197w7ggsqibp4b6"))))
    (properties `((upstream-name . "FMAdist")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog
                             r-mass
                             r-fitdistrplus
                             r-extradistr
                             r-envstats
                             r-actuar))
    (home-page "https://cran.r-project.org/package=FMAdist")
    (synopsis "Frequentist Model Averaging Distribution")
    (description
     "Creation of an input model (fitted distribution) via the frequentist model
averaging (FMA) approach and generate random-variates from the distribution
specified by \"myfit\" which is the fitted input model via the FMA approach.  See
W. X. Jiang and B. L. Nelson (2018), \"Better Input Modeling via Model
Averaging,\" Proceedings of the 2018 Winter Simulation Conference, IEEE Press,
1575-1586.")
    (license license:gpl2)))

(define-public r-fma
  (package
    (name "r-fma")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fma" version))
       (sha256
        (base32 "0y6garv70jn3mfrhpgbzsv6xyc7rnjqvl7whdmlfswvf5d6yl3a0"))))
    (properties `((upstream-name . "fma")))
    (build-system r-build-system)
    (propagated-inputs (list r-forecast))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.robjhyndman.com/fma/")
    (synopsis
     "Data Sets from \"Forecasting: Methods and Applications\" by Makridakis, Wheelwright & Hyndman (1998)")
    (description
     "All data sets from \"Forecasting: methods and applications\" by Makridakis,
Wheelwright & Hyndman (Wiley, 3rd ed., 1998)
<https://robjhyndman.com/forecasting/>.")
    (license license:gpl3)))

(define-public r-flyingr
  (package
    (name "r-flyingr")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlyingR" version))
       (sha256
        (base32 "08jyp4hfb9pydicx4i6vgi94p6pykyi545w8svhar2fwmn1ik955"))))
    (properties `((upstream-name . "FlyingR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-rcpp r-knitr r-kableextra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BMasinde/FlyingR")
    (synopsis "Simulation of Bird Flight Range")
    (description
     "This package provides functions for range estimation in birds based on
Pennycuick (2008) and Pennycuick (1975), Flight program which compliments
Pennycuick (2008) requires manual entry of birds which can be tedious when there
are hundreds of birds to estimate.  Implemented are two ODE methods discussed in
Pennycuick (1975) and time-marching computation methods as in Pennycuick (1998)
and Pennycuick (2008).  See Pennycuick (1975, ISBN:978-0-12-249405-5),
Pennycuick (1998) <doi:10.1006/jtbi.1997.0572>, and Pennycuick (2008,
ISBN:9780080557816).")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-flying
  (package
    (name "r-flying")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flying" version))
       (sha256
        (base32 "04wfcsbq8icvk1nnczvic5cp4nb40hxj3g6lasyb1dvhsh0svg0q"))))
    (properties `((upstream-name . "flying")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-rcpp r-knitr r-kableextra))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=flying")
    (synopsis "Simulation of Bird Flight Range")
    (description
     "This package provides functions for range estimation in birds based on
Pennycuick (2008) and Pennycuick (1975), Flight program which compliments
Pennycuick (2008) requires manual entry of birds which can be tedious when there
are thousands of birds to estimate.  Implemented are two ODE methods discussed
in Pennycuick (1975) and time-marching computation method \"constant muscle mass\"
as in Pennycuick (1998).  See Pennycuick (1975, ISBN:978-0-12-249405-5),
Pennycuick (1998) <doi:10.1006/jtbi.1997.0572>, and Pennycuick (2008,
ISBN:9780080557816).")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-fluxweb
  (package
    (name "r-fluxweb")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fluxweb" version))
       (sha256
        (base32 "1ssq90fqm4p0j4g171mx208lmgz3hkxs8hgsffkawpmxgacs0gh1"))))
    (properties `((upstream-name . "fluxweb")))
    (build-system r-build-system)
    (native-inputs (list r-r-rsp))
    (home-page "https://www.biorxiv.org/content/early/2017/12/06/229450")
    (synopsis "Estimate Energy Fluxes in Food Webs")
    (description
     "Compute energy fluxes in trophic networks, from resources to their consumers,
and can be applied to systems ranging from simple two-species interactions to
highly complex food webs.  It implements the approach described in Gauzens et
al. (2017) <doi:10.1101/229450> to calculate energy fluxes, which are also used
to calculate equilibrium stability.")
    (license license:gpl2+)))

(define-public r-flux
  (package
    (name "r-flux")
    (version "0.3-0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flux" version))
       (sha256
        (base32 "1xkiri1bxnf8j1jxlwjmajjiq1dj9cddi9cmbwyhbnpycl19y35g"))))
    (properties `((upstream-name . "flux")))
    (build-system r-build-system)
    (propagated-inputs (list r-catools))
    (home-page "https://cran.r-project.org/package=flux")
    (synopsis "Flux Rate Calculation from Dynamic Closed Chamber Measurements")
    (description
     "This package provides functions for the calculation of greenhouse gas flux rates
from closed chamber concentration measurements.  The package follows a modular
concept: Fluxes can be calculated in just two simple steps or in several steps
if more control in details is wanted.  Additionally plot and preparation
functions as well as functions for modelling gpp and reco are provided.")
    (license license:gpl2)))

(define-public r-fluspect
  (package
    (name "r-fluspect")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fluspect" version))
       (sha256
        (base32 "0j80wx00s8ljqg1qaqw66rj7kxhhk438hb0syv0lr9vld03cxy2w"))))
    (properties `((upstream-name . "fluspect")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=fluspect")
    (synopsis "Fluspect-B")
    (description
     "This package provides a model for leaf fluorescence, reflectance and
transmittance spectra.  It implements the model introduced by Vilfan et al.
(2016) <DOI:10.1016/j.rse.2016.09.017>.  Fluspect-B calculates the emission of
@code{ChlF} on both the illuminated and shaded side of the leaf.  Other input
parameters are chlorophyll and carotenoid concentrations, leaf water, dry matter
and senescent material (brown pigments) content, leaf mesophyll structure
parameter and @code{ChlF} quantum efficiency for the two photosystems, PS-I and
PS-II.")
    (license license:gpl3)))

(define-public r-fluosurv
  (package
    (name "r-fluosurv")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fluoSurv" version))
       (sha256
        (base32 "1dv4lf7k28bih2qqkpy15f7d14ibxk48p3z6sj3dj5yvh25mhv81"))))
    (properties `((upstream-name . "fluoSurv")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fluoSurv")
    (synopsis "Estimate Insect Survival from Fluorescence Data")
    (description
     "Use spectrophotometry measurements performed on insects as a way to infer
pathogens virulence.  Insect movements cause fluctuations in fluorescence
signal, and functions are provided to estimate when the insect has died as the
moment when variance in autofluorescence signal drops to zero.  The package
provides functions to obtain this estimate together with functions to import
spectrophotometry data from a Biotek microplate reader.  Details of the method
are given in Parthuisot et al. (2018) <doi:10.1101/297929>.")
    (license license:gpl3)))

(define-public r-flumodl
  (package
    (name "r-flumodl")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FluMoDL" version))
       (sha256
        (base32 "0vp3w6hpph6svz8940w9yk9c5iv4n9mj94f9si1ks0xjbi948rqd"))))
    (properties `((upstream-name . "FluMoDL")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsmodel r-mvmeta r-dlnm))
    (home-page "https://cran.r-project.org/package=FluMoDL")
    (synopsis "Influenza-Attributable Mortality with Distributed-Lag Models")
    (description
     "This package provides functions to estimate the mortality attributable to
influenza and temperature, using distributed-lag nonlinear models (DLNMs), as
first implemented in Lytras et al. (2019)
<doi:10.2807/1560-7917.ES.2019.24.14.1800118>.  Full descriptions of underlying
DLNM methodology in Gasparrini et al. <doi:10.1002/sim.3940> (DLNMs),
<doi:10.1186/1471-2288-14-55> (attributable risk from DLNMs) and
<doi:10.1002/sim.5471> (multivariate meta-analysis).")
    (license license:gpl2+)))

(define-public r-flsss
  (package
    (name "r-flsss")
    (version "9.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLSSS" version))
       (sha256
        (base32 "0k7lglmwrhzmdfkn6inx362y7knmgxlzfbli2n5ssznbblix7kwa"))))
    (properties `((upstream-name . "FLSSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpp))
    (home-page "https://cran.r-project.org/package=FLSSS")
    (synopsis "Mining Rigs for Problems in the Subset Sum Family")
    (description
     "Specialized solvers for combinatorial optimization problems in the Subset Sum
family.  The solvers differ from the mainstream in the options of (i)
restricting subset size, (ii) bounding subset elements, (iii) mining real-value
multisets with predefined subset sum errors, (iv) finding one or more subsets in
limited time.  A novel algorithm for mining the one-dimensional Subset Sum
induced algorithms for the multi-Subset Sum and the multidimensional Subset Sum.
 The multi-threaded framework for the latter offers exact algorithms to the
multidimensional Knapsack and the Generalized Assignment problems.  Historical
updates include (a) renewed implementation of the multi-Subset Sum,
multidimensional Knapsack and Generalized Assignment solvers; (b) availability
of bounding solution space in the multidimensional Subset Sum; (c) fundamental
data structure and architectural changes for enhanced cache locality and better
chance of SIMD vectorization; (d) option of mapping floating-point instance to
compressed 64-bit integer instance with user-controlled precision loss, which
could yield substantial speedup due to the dimension reduction and efficient
compressed integer arithmetic via bit-manipulations; (e) distributed computing
infrastructure for multidimensional subset sum; (f) arbitrary-precision
zero-margin-of-error multidimensional Subset Sum accelerated by a simplified
Bloom filter.  The package contains a copy of @code{xxHash} from
<https://github.com/Cyan4973/@code{xxHash>}.  Package vignette
(<@code{arXiv:1612.04484v3>}) detailed a few historical updates.  Functions
prefixed with aux (auxiliary) are independent implementations of published
algorithms for solving optimization problems less relevant to Subset Sum.")
    (license license:gpl3)))

(define-public r-flsa
  (package
    (name "r-flsa")
    (version "1.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flsa" version))
       (sha256
        (base32 "0m0zx0nizg4mrs2gg2sbxjlixx1rcmrj7xg869ia3gg36x1a28d9"))))
    (properties `((upstream-name . "flsa")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=flsa")
    (synopsis "Path Algorithm for the General Fused Lasso Signal Approximator")
    (description
     "This package implements a path algorithm for the Fused Lasso Signal
Approximator.  For more details see the help files or the article by Hoefling
(2009) <@code{arXiv:0910.0526>}.")
    (license license:gpl2)))

(define-public r-flr
  (package
    (name "r-flr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLR" version))
       (sha256
        (base32 "0k50vi73qj7sjps0s6b2hq1cmpa4qr2vwkpd2wv2w1hhhrj8lm0n"))))
    (properties `((upstream-name . "FLR")))
    (build-system r-build-system)
    (propagated-inputs (list r-combinat))
    (home-page "https://cran.r-project.org/package=FLR")
    (synopsis "Fuzzy Logic Rule Classifier")
    (description "FLR algorithm for classification")
    (license license:gpl2+)))

(define-public r-flps
  (package
    (name "r-flps")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flps" version))
       (sha256
        (base32 "0l4maf51psfmf3wq86r2zpvcm29car4z7jn7xh2mp8kllb7ii59d"))))
    (properties `((upstream-name . "flps")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan
                             r-rcpp
                             r-mvtnorm
                             r-mirt
                             r-mass
                             r-glue
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://sooyongl.github.io/flps/")
    (synopsis "Fully-Latent Principal Stratification")
    (description
     "Simulation and analysis of Fully-Latent Principal Stratification (FLPS) with
measurement models.  Sales & Pane (2019). <doi:10.1214/18-AOAS1196>.  This
package is supported by the Institute of Education Sciences, U.S. Department of
Education, through Grant R305D210036.")
    (license license:gpl3)))

(define-public r-flowtracer
  (package
    (name "r-flowtracer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flowTraceR" version))
       (sha256
        (base32 "1nl7yfzsh3bhqdildb77wmnapich4xn6y2j8rlmrb4w7mq9jnhba"))))
    (properties `((upstream-name . "flowTraceR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-comprehenr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/OKdll/flowTraceR")
    (synopsis
     "Tracing Information Flow for Inter-Software Comparisons in Mass Spectrometry-Based Bottom-Up Proteomics")
    (description
     "Useful functions to standardize software outputs from @code{ProteomeDiscoverer},
Spectronaut, DIA-NN and @code{MaxQuant} on precursor, modified peptide and
proteingroup level and to trace software differences for identifications such as
varying proteingroup denotations for common precursor.")
    (license license:expat)))

(define-public r-flowscreen
  (package
    (name "r-flowscreen")
    (version "1.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlowScreen" version))
       (sha256
        (base32 "1s9xyrvfsgrl2zxm2an5qj3rs1qx7v7j8wc83jzl28pkwa5xr351"))))
    (properties `((upstream-name . "FlowScreen")))
    (build-system r-build-system)
    (propagated-inputs (list r-zyp r-evir r-changepoint))
    (home-page "https://cran.r-project.org/package=FlowScreen")
    (synopsis "Daily Streamflow Trend and Change Point Screening")
    (description
     "Screens daily streamflow time series for temporal trends and change-points.
This package has been primarily developed for assessing the quality of daily
streamflow time series.  It also contains tools for plotting and calculating
many different streamflow metrics.  The package can be used to produce summary
screening plots showing change-points and significant temporal trends for high
flow, low flow, and/or baseflow statistics, or it can be used to perform more
detailed hydrological time series analyses.  The package was designed for
screening daily streamflow time series from Water Survey Canada and the United
States Geological Survey but will also work with streamflow time series from
many other agencies.")
    (license license:gpl2+)))

(define-public r-flowregenvcost
  (package
    (name "r-flowregenvcost")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlowRegEnvCost" version))
       (sha256
        (base32 "0lw4kv4z0s23jy11y53rxxh7zxa7vajxrcnjgxd74xxs64vjlj88"))))
    (properties `((upstream-name . "FlowRegEnvCost")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo))
    (home-page "https://github.com/garciadejalon/FlowRegEnvCost")
    (synopsis "The Environmental Costs of Flow Regulation")
    (description
     "An application to calculate the daily environmental costs of river flow
regulation by dams based on @code{GarcÃ­a} de Jalon et al.  2017
<doi:10.1007/s11269-017-1663-0>.")
    (license license:expat)))

(define-public r-flowr
  (package
    (name "r-flowr")
    (version "0.9.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flowr" version))
       (sha256
        (base32 "1cbbfrvgzqclvbhy20vjwgxbvnn3ljh0k1k54jf2si10bfw3zzi5"))))
    (properties `((upstream-name . "flowr")))
    (build-system r-build-system)
    (propagated-inputs (list r-whisker r-readr r-params r-diagram))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/flow-r/flowr")
    (synopsis "Streamlining Design and Deployment of Complex Workflows")
    (description
     "This framework allows you to design and implement complex pipelines, and deploy
them on your institution's computing cluster.  This has been built keeping in
mind the needs of bioinformatics workflows.  However, it is easily extendable to
any field where a series of steps (shell commands) are to be executed in a
(work)flow.")
    (license license:expat)))

(define-public r-flowml
  (package
    (name "r-flowml")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flowml" version))
       (sha256
        (base32 "1fssgx06fz4bvprghl9kf8x80jg3g8w04hhdgvml86w4vhi1vz0v"))))
    (properties `((upstream-name . "flowml")))
    (build-system r-build-system)
    (propagated-inputs (list r-vip
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rsample
                             r-rlang
                             r-rjson
                             r-readr
                             r-r6
                             r-purrr
                             r-optparse
                             r-magrittr
                             r-future
                             r-furrr
                             r-fastshap
                             r-dplyr
                             r-data-table
                             r-caret
                             r-abcanalysis))
    (home-page "https://github.com/Boehringer-Ingelheim/flowml")
    (synopsis
     "Backend for a 'nextflow' Pipeline that Performs Machine-Learning-Based Modeling of Biomedical Data")
    (description
     "This package provides functionality to perform machine-learning-based modeling
in a computation pipeline.  Its functions contain the basic steps of
machine-learning-based knowledge discovery workflows, including model training
and optimization, model evaluation, and model testing.  To perform these tasks,
the package builds heavily on existing machine-learning packages, such as caret
<https://github.com/topepo/caret/> and associated packages.  The package can
train multiple models, optimize model hyperparameters by performing a grid
search or a random search, and evaluates model performance by different metrics.
 Models can be validated either on a test data set, or in case of a small sample
size by k-fold cross validation or repeated bootstrapping.  It also allows for
0-Hypotheses generation by performing permutation experiments.  Additionally, it
offers methods of model interpretation and item categorization to identify the
most informative features from a high dimensional data space.  The functions of
this package can easily be integrated into computation pipelines (e.g. nextflow
<https://www.nextflow.io/>) and hereby improve scalability, standardization, and
re-producibility in the context of machine-learning.")
    (license license:gpl3+)))

(define-public r-flow
  (package
    (name "r-flow")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flow" version))
       (sha256
        (base32 "171csdpp445lxhh7ph59h7xxqxdpjlkf35nrjy74282m9xmqdlz9"))))
    (properties `((upstream-name . "flow")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot
                             r-styler
                             r-rstudioapi
                             r-nomnoml
                             r-lifecycle
                             r-htmlwidgets
                             r-here))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/moodymudskipper/flow")
    (synopsis "View and Browse Code Using Flow Diagrams")
    (description
     "Visualize as flow diagrams the logic of functions, expressions or scripts in a
static way or when running a call, visualize the dependencies between functions
or between modules in a shiny app, and more.")
    (license license:expat)))

(define-public r-floral
  (package
    (name "r-floral")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLORAL" version))
       (sha256
        (base32 "1a1jnvbfk2fyqs5jw3y04wxln4hxsahv4yiwrhdgdbk4az3yxp9p"))))
    (properties `((upstream-name . "FLORAL")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-survcomp
                             r-reshape
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-glmnet
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-dorng
                             r-doparallel
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://vdblab.github.io/FLORAL/")
    (synopsis "Fit Log-Ratio Lasso Regression for Compositional Data")
    (description
     "Log-ratio Lasso regression for continuous, binary, and survival outcomes with
compositional features.  See Fei and others (2023)
<doi:10.1101/2023.05.02.538599>.")
    (license license:gpl3+)))

(define-public r-flora
  (package
    (name "r-flora")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flora" version))
       (sha256
        (base32 "17drlfvvrndal4cf5nw20xb9viybagvb4vll1kxdrhvsvfz5yap6"))))
    (properties `((upstream-name . "flora")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringdist r-jsonlite r-httr r-dplyr))
    (home-page "http://www.github.com/gustavobio/flora")
    (synopsis "Tools for Interacting with the Brazilian Flora 2020")
    (description
     "This package provides tools to quickly compile taxonomic and distribution data
from the Brazilian Flora 2020.")
    (license license:gpl2+)))

(define-public r-flopart
  (package
    (name "r-flopart")
    (version "2023.8.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLOPART" version))
       (sha256
        (base32 "1adidd9fsgibiia6wgdnv3xf5gwvk7awk28ahdlr053nzdwr767r"))))
    (properties `((upstream-name . "FLOPART")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FLOPART")
    (synopsis "Functional Labeled Optimal Partitioning")
    (description
     "This package provides an efficient C++ code for computing an optimal
segmentation model with Poisson loss, up-down constraints, and label
constraints, as described by Kaufman et al. (2022) <@code{arXiv:2210.02580>}.")
    (license license:gpl3)))

(define-public r-floodfreqplot
  (package
    (name "r-floodfreqplot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FloodFreqPlot" version))
       (sha256
        (base32 "19jg0i4fd7x401gwfkirp8mi3i4kzqxk0nla6wvfcsbmy5qsf15q"))))
    (properties `((upstream-name . "FloodFreqPlot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FloodFreqPlot")
    (synopsis "Flood Probability Plotting and Graphical Frequency Analysis")
    (description
     "Plotting flood quantiles and their corresponding probabilities (return periods)
on the probability papers.  The details of relevant methods are available in
Chow et al (1988, ISBN: 007070242X, 9780070702424), and Bobee and Ashkar (1991,
ISBN: 0918334683, 9780918334688).")
    (license license:gpl3+)))

(define-public r-flood
  (package
    (name "r-flood")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flood" version))
       (sha256
        (base32 "0nlmjh2l7dij1aqd70hhj0m550knlin3am14azqkx4pacs1kir3p"))))
    (properties `((upstream-name . "flood")))
    (build-system r-build-system)
    (propagated-inputs (list r-tlmoments r-magrittr r-evd r-copula))
    (home-page "https://cran.r-project.org/package=flood")
    (synopsis
     "Statistical Methods for the (Regional) Analysis of Flood Frequency")
    (description
     "Includes several statistical methods for the estimation of parameters and high
quantiles of river flow distributions.  The focus is on regional estimation
based on homogeneity assumptions and computed from multivariate observations
(multiple measurement stations).  For details see Kinsvater et al. (2017)
<@code{arXiv:1701.06455>}.")
    (license license:gpl2+)))

(define-public r-flobr
  (package
    (name "r-flobr")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flobr" version))
       (sha256
        (base32 "0if7g3zz669digy0z0n8kjkz9rq9dnyq2kz9n2zvddssl5q4nnc9"))))
    (properties `((upstream-name . "flobr")))
    (build-system r-build-system)
    (propagated-inputs (list r-lifecycle r-chk r-blob))
    (home-page "https://github.com/poissonconsulting/flobr")
    (synopsis "Convert Files to and from Binary Objects (BLOBs)")
    (description
     "Converts files to and from flobs.  A flob is a file that was read into binary in
integer-mode as little endian, saved as the single element of a named list
(where the name is the name of the original file) and then serialized before
being coerced into a blob.  Flobs are useful for writing and reading files to
and from databases.")
    (license license:expat)))

(define-public r-fllat
  (package
    (name "r-fllat")
    (version "1.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLLat" version))
       (sha256
        (base32 "0306bpwp2az4x4m5sv88hlh7vs0y5isfby7lxrn2gjnk76gg6mw1"))))
    (properties `((upstream-name . "FLLat")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots))
    (home-page "https://cran.r-project.org/package=FLLat")
    (synopsis "Fused Lasso Latent Feature Model")
    (description
     "Fits the Fused Lasso Latent Feature model, which is used for modeling
multi-sample @code{aCGH} data to identify regions of copy number variation
(CNV).  Produces a set of features that describe the patterns of CNV and a set
of weights that describe the composition of each sample.  Also provides
functions for choosing the optimal tuning parameters and the appropriate number
of features, and for estimating the false discovery rate.")
    (license license:gpl2+)))

(define-public r-flipscores
  (package
    (name "r-flipscores")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flipscores" version))
       (sha256
        (base32 "17dmx7r29ngwz690x7p447pczh903swzpwmk5abvzjsqvfgikbi8"))))
    (properties `((upstream-name . "flipscores")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=flipscores")
    (synopsis "Robust Score Testing in GLMs, by Sign-Flip Contributions")
    (description
     "This package provides robust tests for testing in GLMs, by sign-flipping score
contributions.  The tests are robust against overdispersion, heteroscedasticity
and, in some cases, ignored nuisance variables.  See Hemerik, Goeman and Finos
(2020) <doi:10.1111/rssb.12369>.")
    (license license:gpl2)))

(define-public r-flipr
  (package
    (name "r-flipr")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flipr" version))
       (sha256
        (base32 "188kdgk390rh8wpfsvqbwpwa3dmwzlzv8sdgvfxl9f0ddbxasghb"))))
    (properties `((upstream-name . "flipr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-viridislite
                             r-usethis
                             r-tibble
                             r-rlang
                             r-rgenoud
                             r-rcpp
                             r-r6
                             r-purrr
                             r-pbapply
                             r-optimparallel
                             r-magrittr
                             r-ggplot2
                             r-dials
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://LMJL-Alea.github.io/flipr/")
    (synopsis "Flexible Inference via Permutations in R")
    (description
     "This package provides a flexible permutation framework for making inference such
as point estimation, confidence intervals or hypothesis testing, on any kind of
data, be it univariate, multivariate, or more complex such as network-valued
data, topological data, functional data or density-valued data.")
    (license license:gpl3+)))

(define-public r-flipdownwidgets
  (package
    (name "r-flipdownwidgets")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flipdownWidgets" version))
       (sha256
        (base32 "1qlpav9s51w9nkszfkad87cfbc7jq4n0kmgis8hrin093w0whp7a"))))
    (properties `((upstream-name . "flipdownWidgets")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (home-page "https://github.com/fanggong/flipdownWidgets")
    (synopsis "Wrapper of JavaScript Library 'flipdown.js'")
    (description
     "Include a countdown <https://github.com/PButcher/flipdown> in all R contexts
with the convenience of htmlwidgets'.")
    (license license:expat)))

(define-public r-flipdownr
  (package
    (name "r-flipdownr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flipdownr" version))
       (sha256
        (base32 "18z6y9anwg264gwqpxvm8mmv7xvc4m323mkg9db424vd1ji560f3"))))
    (properties `((upstream-name . "flipdownr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmltools r-glue r-checkmate))
    (native-inputs (list esbuild))
    (home-page "https://github.com/feddelegrand7/flipdownr")
    (synopsis
     "Implement a Countdown in 'RMarkdown' Documents and 'shiny' Applications")
    (description
     "Allows the user to create a countdown in RMarkdown documents and shiny
applications.  The package is a wrapper of the @code{JavaScript} library
flipdown.js'.  See <https://pbutcher.uk/flipdown/> for more info.")
    (license license:expat)))

(define-public r-flipbookr
  (package
    (name "r-flipbookr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flipbookr" version))
       (sha256
        (base32 "0ls51risk3qn5fagw31i2kibrxk7xk3845a1cccd83sc4c8ilgjx"))))
    (properties `((upstream-name . "flipbookr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rmarkdown
                             r-purrr
                             r-magrittr
                             r-knitr
                             r-glue
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=flipbookr")
    (synopsis "Parses Code, Creates Partial Code Builds, Delivers Code Movie")
    (description
     "Flipbooks present code step-by-step and side-by-side with its output.  flipbookr
helps creators build flipbooks efficiently because code pipelines are
automatically parsed and prepped for presentation as flipbooks.")
    (license license:expat)))

(define-public r-flip
  (package
    (name "r-flip")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flip" version))
       (sha256
        (base32 "08x5hwxaxbgc745gblja7gcy0b5wbp7jf90lkha75zl5cc9iyksl"))))
    (properties `((upstream-name . "flip")))
    (build-system r-build-system)
    (propagated-inputs (list r-somemtp r-plyr r-e1071 r-cherry))
    (home-page "ttps://CRAN.R-project.org/package=flip")
    (synopsis "Multivariate Permutation Tests")
    (description
     "It implements many univariate and multivariate permutation (and rotation) tests.
 Allowed tests: the t one and two samples, ANOVA, linear models, Chi Squared
test, rank tests (i.e.  Wilcoxon, Mann-Whitney, Kruskal-Wallis), Sign test and
Mc Nemar.  Test on Linear Models are performed also in presence of covariates
(i.e.  nuisance parameters).  The permutation and the rotation methods to get
the null distribution of the test statistics are available.  It also implements
methods for multiplicity control such as Westfall & Young @code{minP} procedure
and Closed Testing (Marcus, 1976) and k-FWER. Moreover, it allows to test for
fixed effects in mixed effects models.")
    (license license:gpl2+)))

(define-public r-flintyr
  (package
    (name "r-flintyr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flintyR" version))
       (sha256
        (base32 "1md0p3i9lny5sn1jjh8ss6bw4w7q8ydi6kh5smjbbgbn86qlcvwy"))))
    (properties `((upstream-name . "flintyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rcpparmadillo
                             r-rcpp
                             r-foreach
                             r-doparallel
                             r-assertthat))
    (home-page "https://alanaw1.github.io/flintyR/")
    (synopsis "Simple and Flexible Tests of Sample Exchangeability")
    (description
     "Given a multivariate dataset and some knowledge about the dependencies between
its features, it is customary to fit a statistical model to the features to
infer parameters of interest.  Such a procedure implicitly assumes that the
sample is exchangeable.  This package provides a flexible non-parametric test of
this exchangeability assumption, allowing the user to specify the feature
dependencies by hand as long as features can be grouped into disjoint
independent sets.  This package also allows users to test a dual hypothesis,
which is, given that the sample is exchangeable, does a proposed grouping of the
features into disjoint sets also produce statistically independent sets of
features? See Aw, Spence and Song (2023) for the accompanying paper.")
    (license license:gpl3+)))

(define-public r-flimo
  (package
    (name "r-flimo")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flimo" version))
       (sha256
        (base32 "00l0w9z1j2yy4sl1fly7lw4rrdwcwnb26va2d5vsvjldwcmsx5pd"))))
    (properties `((upstream-name . "flimo")))
    (build-system r-build-system)
    (propagated-inputs (list r-juliaconnector r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=flimo")
    (synopsis "Fixed Landscape Inference Method")
    (description
     "Likelihood-free inference method for stochastic models.  Uses a deterministic
optimizer on simple simulations of the model that are performed with a prior
drawn randomness by applying the inverse transform method.  Is designed to work
on its own and also by using the Julia package Jflimo available on the git page
of the project: <https://metabarcoding.org/flimo>.")
    (license license:cecill)))

(define-public r-flightsbr
  (package
    (name "r-flightsbr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flightsbr" version))
       (sha256
        (base32 "18csal1jd0998njvf6bwqjhapm5lzgb77zqh44p7cs6pgw4h7xpw"))))
    (properties `((upstream-name . "flightsbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvest r-pbapply r-parzer r-httr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipeaGIT/flightsbr")
    (synopsis "Download Flight and Airport Data from Brazil")
    (description
     "Download flight and airport data from Brazilâs Civil Aviation Agency (ANAC)
<https://www.gov.br/anac>.  The data includes detailed information on all
aircrafts, aerodromes, airports, and airport movements registered in ANAC, on
airfares and on every international flight to and from Brazil, as well as
domestic flights within the country.")
    (license license:expat)))

(define-public r-flightplot
  (package
    (name "r-flightplot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flightplot" version))
       (sha256
        (base32 "1276lsahr9kdsvp1ismm3b5syvhfr7ifizzd79f8w1h2rjblva8x"))))
    (properties `((upstream-name . "flightplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-sf
                             r-rlang
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-geosphere
                             r-dplyr))
    (home-page "https://github.com/xmc811/flightplot")
    (synopsis "Plotting Flight Paths on Maps")
    (description
     "This package provides functionality to plot airplane flight paths on maps.  The
plotted flight paths follow the great circle of the Earth.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-flifo
  (package
    (name "r-flifo")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flifo" version))
       (sha256
        (base32 "03x66l3ryrjvwbxxd0ncjrb5w9kc7fswmp5psb1cb7r87f395gm3"))))
    (properties `((upstream-name . "flifo")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr r-bazar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulponcet/flifo")
    (synopsis "Don't Get Stuck with Stacks in R")
    (description
     "This package provides functions to create and manipulate FIFO (First In First
Out), LIFO (Last In First Out), and NINO (Not In or Never Out) stacks in R.")
    (license license:expat)))

(define-public r-flickrapi
  (package
    (name "r-flickrapi")
    (version "0.1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlickrAPI" version))
       (sha256
        (base32 "17am293wrrigpdl891nmrqwvxjvb38whmls45syk6sm1msm1ph7l"))))
    (properties `((upstream-name . "FlickrAPI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-magrittr r-janitor r-httr2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FlickrAPI")
    (synopsis "Access to Flickr API")
    (description
     "This package provides an interface to the Flickr API
<https://www.flickr.com/services/api/> and allows R users to download data on
Flickr.")
    (license license:gpl3+)))

(define-public r-flexsurvcure
  (package
    (name "r-flexsurvcure")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexsurvcure" version))
       (sha256
        (base32 "0mhpzcrqxsi7f2m565qy648vg26rsvy7d249ia7y7kd5wcildw8b"))))
    (properties `((upstream-name . "flexsurvcure")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-flexsurv r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jrdnmdhl/flexsurvcure")
    (synopsis "Flexible Parametric Cure Models")
    (description
     "Flexible parametric mixture and non-mixture cure models for time-to-event data.")
    (license license:gpl2+)))

(define-public r-flexsiteboard
  (package
    (name "r-flexsiteboard")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexsiteboard" version))
       (sha256
        (base32 "0msbz3x7lsi6xcw8dcqzwnylaj76f8mgj6cf3hqscrfjzhs86rym"))))
    (properties `((upstream-name . "flexsiteboard")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-rmarkdown
                             r-knitr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-flexdashboard))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/libreumg/flexsiteboard/")
    (synopsis
     "Breaks Single Page Applications from 'flexdashboard' in Multiple Files")
    (description
     "This package provides a drop-in replacement for flexdashboard Rmd documents,
which implements an after-knit-hook to split the generated single page
application in one document per main section to reduce rendering load in the web
browser displaying the document.  Put all @code{JavaScript} stuff needed in all
sections before the first headline featuring navigation menu attributes.  This
package is experimental and maybe replaced by a solution inside flexdashboard'.")
    (license license:bsd-2)))

(define-public r-flexscan
  (package
    (name "r-flexscan")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexScan" version))
       (sha256
        (base32 "1887r2nxpv89rizzj0j1p5shfmbyhchjzaszbxd7mlswqkqazb53"))))
    (properties `((upstream-name . "FlexScan")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdep r-spatialreg r-sp r-smerc))
    (home-page "https://cran.r-project.org/package=FlexScan")
    (synopsis "Flexible Scan Statistics")
    (description
     "An easy way to conduct flexible scan.  Monte-Carlo method is used to test the
spatial clusters given the cases, population, and shapefile.  A table with
formal style and a map with clusters are included in the result report.  The
method can be referenced at: Toshiro Tango and Kunihiko Takahashi (2005)
<doi:10.1186/1476-072X-4-11>.")
    (license license:gpl3)))

(define-public r-flexrsurv
  (package
    (name "r-flexrsurv")
    (version "2.0.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexrsurv" version))
       (sha256
        (base32 "06d3vdi3bas9hjzkjinspwfwa5js3rpb9pm5rbax2w4fdx2zp7f2"))))
    (properties `((upstream-name . "flexrsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-statmod
                             r-r-utils
                             r-orthogonalsplinebasis
                             r-numderiv
                             r-matrix
                             r-formula-tools
                             r-formula
                             r-epi))
    (home-page "https://cran.r-project.org/package=flexrsurv")
    (synopsis "Flexible Relative Survival Analysis")
    (description
     "Package for parametric relative survival analyses.  It allows to model
non-linear and non-proportional effects and both non proportional and non linear
effects, using splines (B-spline and truncated power basis), Weighted Cumulative
Index of Exposure effect, with correction model for the life table.  Both non
proportional and non linear effects are described in Remontet, L. et al. (2007)
<doi:10.1002/sim.2656> and Mahboubi, A. et al. (2011) <doi:10.1002/sim.4208>.")
    (license license:gpl2+)))

(define-public r-flexreg
  (package
    (name "r-flexreg")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexReg" version))
       (sha256
        (base32 "15vl2wfvplydjgdgcb4gla02n6hx9lljnw20r5rvhw4ll6ahr110"))))
    (properties `((upstream-name . "FlexReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-loo
                             r-ggplot2
                             r-formula
                             r-bh
                             r-bayesplot))
    (home-page "https://cran.r-project.org/package=FlexReg")
    (synopsis
     "Regression Models for Bounded Continuous and Discrete Responses")
    (description
     "This package provides functions to fit regression models for bounded continuous
and discrete responses.  In case of bounded continuous responses (e.g.,
proportions and rates), available models are the flexible beta (Migliorati, S.,
Di Brisco, A. M., Ongaro, A. (2018) <doi:10.1214/17-BA1079>), the
variance-inflated beta (Di Brisco, A. M., Migliorati, S., Ongaro, A. (2020)
<doi:10.1177/1471082X18821213>), the beta (Ferrari, S.L.P., Cribari-Neto, F.
(2004) <doi:10.1080/0266476042000214501>), and their augmented versions to
handle the presence of zero/one values (Di Brisco, A. M., Migliorati, S. (2020)
<doi:10.1002/sim.8406>) are implemented.  In case of bounded discrete responses
(e.g., bounded counts, such as the number of successes in n trials), available
models are the flexible beta-binomial (Ascari, R., Migliorati, S. (2021)
<doi:10.1002/sim.9005>), the beta-binomial, and the binomial are implemented.
Inference is dealt with a Bayesian approach based on the Hamiltonian Monte Carlo
(HMC) algorithm (Gelman, A., Carlin, J. B., Stern, H. S., Rubin, D. B. (2014)
<doi:10.1201/b16018>).  Besides, functions to compute residuals, posterior
predictives, goodness of fit measures, convergence diagnostics, and graphical
representations are provided.")
    (license license:gpl2+)))

(define-public r-flexpolyline
  (package
    (name "r-flexpolyline")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexpolyline" version))
       (sha256
        (base32 "1p23s30gyh6wyg6vk4cj897dy1ijl0nix8gzypglg7z5v5xnhkyr"))))
    (properties `((upstream-name . "flexpolyline")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://munterfi.github.io/flexpolyline/")
    (synopsis "Flexible Polyline Encoding")
    (description
     "Binding to the C++ implementation of the flexible polyline encoding by HERE
<https://github.com/heremaps/flexible-polyline>.  The flexible polyline encoding
is a lossy compressed representation of a list of coordinate pairs or coordinate
triples.  The encoding is achieved by: (1) Reducing the decimal digits of each
value; (2) encoding only the offset from the previous point; (3) using variable
length for each coordinate delta; and (4) using 64 URL-safe characters to
display the result.")
    (license license:gpl3)))

(define-public r-flexparamcurve
  (package
    (name "r-flexparamcurve")
    (version "1.5-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexParamCurve" version))
       (sha256
        (base32 "1404cn3bhcdr3mjhpr072zcyl0wnksarsg2sry5d1scsmrn4xq83"))))
    (properties `((upstream-name . "FlexParamCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "http://pennstate.academia.edu/SteveOswald")
    (synopsis "Tools to Fit Flexible Parametric Curves")
    (description
     "Model selection tools and @code{selfStart} functions to fit parametric curves in
nls', @code{nlsList} and nlme frameworks.")
    (license license:gpl2)))

(define-public r-flexmsm
  (package
    (name "r-flexmsm")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexmsm" version))
       (sha256
        (base32 "07m2dsc1a4qschprcqljzv8kpqjl1bw0bkhqbcr821xrf1id0xxr"))))
    (properties `((upstream-name . "flexmsm")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust r-msm r-mgcv r-matrixstats r-gjrm))
    (home-page "https://cran.r-project.org/package=flexmsm")
    (synopsis "General Framework for Flexible Multi-State Survival Modelling")
    (description
     "This package provides a general estimation framework for multi-state Markov
processes with flexible specification of the transition intensities.  The
log-transition intensities can be specified through Generalised Additive Models
which allow for virtually any type of covariate effect.  Elementary
specifications such as time-homogeneous processes and simple parametric forms
are also supported.  There are no limitations on the type of process one can
assume, with both forward and backward transitions allowed and virtually any
number of states.")
    (license license:expat)))

(define-public r-flexmixnl
  (package
    (name "r-flexmixnl")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexmixNL" version))
       (sha256
        (base32 "0bk5v0cnsn1qkd1b86vj0bnpr4l9d6523kpkgzb1l1sqyscawfmm"))))
    (properties `((upstream-name . "flexmixNL")))
    (build-system r-build-system)
    (propagated-inputs (list r-gnm r-flexmix))
    (home-page "https://cran.r-project.org/package=flexmixNL")
    (synopsis "Finite Mixture Modeling of Generalized Nonlinear Models")
    (description
     "The fitting of mixtures of generalized nonlinear models is implemented as an
extension of the existing package flexmix'.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-flexmet
  (package
    (name "r-flexmet")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexmet" version))
       (sha256
        (base32 "1xcs4gs5aanvfsf6bgj28jsjdxrx0dz475xsw8hd6y44qdgw1sqb"))))
    (properties `((upstream-name . "flexmet")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=flexmet")
    (synopsis
     "Flexible Latent Trait Metrics using the Filtered Monotonic Polynomial Item Response Model")
    (description
     "Application of the filtered monotonic polynomial (FMP) item response model to
flexibly fit item response models.  The package includes tools that allow the
item response model to be build on any monotonic transformation of the latent
trait metric, as described by Feuerstahler (2019)
<doi:10.1007/s11336-018-9642-9>.")
    (license license:gpl3)))

(define-public r-flexiblas
  (package
    (name "r-flexiblas")
    (version "3.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexiblas" version))
       (sha256
        (base32 "1gcj4679hy2pa76s3sx6q3x2zmf9xkb5hgk2y9nk3v6yf9l10w6h"))))
    (properties `((upstream-name . "flexiblas")))
    (build-system r-build-system)
    (home-page "https://github.com/Enchufa2/r-flexiblas")
    (synopsis "'FlexiBLAS' API Interface")
    (description
     "This package provides functions to switch the BLAS'/'LAPACK optimized backend
and change the number of threads without leaving the R session, which needs to
be linked against the @code{FlexiBLAS} wrapper library
<https://www.mpi-magdeburg.mpg.de/projects/flexiblas>.")
    (license license:gpl3+)))

(define-public r-flexgam
  (package
    (name "r-flexgam")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexGAM" version))
       (sha256
        (base32 "04xbglg9vli18fd24k1qyvbl7svp70k67ig3jiss96fgkgbi6w7c"))))
    (properties `((upstream-name . "FlexGAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-scam r-mgcv r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=FlexGAM")
    (synopsis "Generalized Additive Models with Flexible Response Functions")
    (description
     "Standard generalized additive models assume a response function, which induces
an assumption on the shape of the distribution of the response.  However,
miss-specifying the response function results in biased estimates.  Therefore in
Spiegel et al. (2017) <doi:10.1007/s11222-017-9799-6> we propose to estimate the
response function jointly with the covariate effects.  This package provides the
underlying functions to estimate these generalized additive models with flexible
response functions.  The estimation is based on an iterative algorithm.  In the
outer loop the response function is estimated, while in the inner loop the
covariate effects are determined.  For the response function a strictly monotone
P-spline is used while the covariate effects are estimated based on a modified
Fisher-Scoring algorithm.  Overall the estimation relies on the mgcv'-package.")
    (license license:gpl2)))

(define-public r-flexdotplot
  (package
    (name "r-flexdotplot")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexDotPlot" version))
       (sha256
        (base32 "0526cnbq4a34k96b99x8i1pcdn1a70fvc9lagq7yd7bsq6fv2gvs"))))
    (properties `((upstream-name . "FlexDotPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-sisal
                             r-shinywidgets
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-reshape2
                             r-magrittr
                             r-htmltools
                             r-grimport2
                             r-gridextra
                             r-ggplot2
                             r-ggforce
                             r-ggdendro
                             r-factominer
                             r-dt
                             r-dendextend
                             r-colourpicker
                             r-bsplus))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Simon-Leonard/FlexDotPlot")
    (synopsis "Flexible Dot Plot")
    (description "Flexible Dotplot and Pacman plot for multimodal data.")
    (license license:gpl3)))

(define-public r-flexdir
  (package
    (name "r-flexdir")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FlexDir" version))
       (sha256
        (base32 "1gb5alv9jsnw0135g63cy757pxhdw6cgwfm8dpcm8dj9zqg10dkm"))))
    (properties `((upstream-name . "FlexDir")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FlexDir")
    (synopsis "Tools to Work with the Flexible Dirichlet Distribution")
    (description
     "This package provides tools to work with the Flexible Dirichlet distribution.
The main features are an E-M algorithm for computing the maximum likelihood
estimate of the parameter vector and a function based on conditional bootstrap
to estimate its asymptotic variance-covariance matrix.  It contains also
functions to plot graphs, to generate random observations and to handle
compositional data.")
    (license license:gpl2+)))

(define-public r-flexcwm
  (package
    (name "r-flexcwm")
    (version "1.92")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flexCWM" version))
       (sha256
        (base32 "1fxwq12mki10ikf5lyh1pb58svfzs4llg68v4d9iznia8aa0grhq"))))
    (properties `((upstream-name . "flexCWM")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod r-numderiv r-mclust r-contaminatedmixt))
    (home-page "https://cran.r-project.org/package=flexCWM")
    (synopsis "Flexible Cluster-Weighted Modeling")
    (description
     "Allows maximum likelihood fitting of cluster-weighted models, a class of
mixtures of regression models with random covariates.  Methods are described in
Angelo Mazza, Antonio Punzo, Salvatore Ingrassia (2018)
<doi:10.18637/jss.v086.i02>.")
    (license license:gpl2)))

(define-public r-fledge
  (package
    (name "r-fledge")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fledge" version))
       (sha256
        (base32 "1nq0180vjq7jmawd42r8w3hgrccs9k013yni0wkldkc73p6526gd"))))
    (properties `((upstream-name . "fledge")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-whoami
                             r-usethis
                             r-tibble
                             r-rlang
                             r-rematch2
                             r-purrr
                             r-gert
                             r-enc
                             r-desc
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://fledge.cynkra.com/")
    (synopsis "Smoother Change Tracking and Versioning for R Packages")
    (description
     "Streamlines the process of updating changelogs (NEWS.md) and versioning R
packages developed in git repositories.")
    (license license:gpl3)))

(define-public r-flatxml
  (package
    (name "r-flatxml")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flatxml" version))
       (sha256
        (base32 "1qsiqi8aszk9djlhysf6lcm41dq4pcw5jv6mdvb1mgxni7g3sgfv"))))
    (properties `((upstream-name . "flatxml")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rcurl r-httr r-crayon))
    (home-page "https://github.com/jsugarelli/flatxml/")
    (synopsis "Tools for Working with XML Files as R Dataframes")
    (description
     "On import, the XML information is converted to a dataframe that reflects the
hierarchical XML structure.  Intuitive functions allow to navigate within this
transparent XML data structure (without any knowledge of XPath'). @code{flatXML}
also provides tools to extract data from the XML into a flat dataframe that can
be used to perform statistical operations.  It also supports converting
dataframes to XML.")
    (license license:gpl3)))

(define-public r-flattabler
  (package
    (name "r-flattabler")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flattabler" version))
       (sha256
        (base32 "10jii2xl100fjawhz9qlwnj2b3fa9pfipc8jli4qa03f1w3n7xmp"))))
    (properties `((upstream-name . "flattabler")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-readxl r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://josesamos.github.io/flattabler/")
    (synopsis "Obtaining a Flat Table from Pivot Tables")
    (description
     "Transformations that allow obtaining a flat table from reports in text or Excel
format that contain data in the form of pivot tables.  They can be defined for a
single report and applied to a set of reports.")
    (license license:expat)))

(define-public r-flatr
  (package
    (name "r-flatr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flatr" version))
       (sha256
        (base32 "10l98a3f57wahfpdqxj70r25zfhk4vzzd014pdnriy458yrfd7rw"))))
    (properties `((upstream-name . "flatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=flatr")
    (synopsis
     "Transforms Contingency Tables to Data Frames, and Analyses Them")
    (description
     "Contingency Tables are a pain to work with when you want to run regressions.
This package takes them, flattens them into a long data frame, so you can more
easily analyse them! As well, you can calculate other related statistics.  All
of this is done so in a tidy manner, so it should tie in nicely with tidyverse
series of packages.")
    (license license:expat)))

(define-public r-flashr
  (package
    (name "r-flashr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flashr" version))
       (sha256
        (base32 "0cvpjyjylcz61jmmar2aynvcqh7m41ljkdqmgwmiwiy26qi6clqn"))))
    (properties `((upstream-name . "flashr")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rmarkdown
                             r-revealjs
                             r-memoise
                             r-httr
                             r-gh
                             r-curl
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JeffreyRStevens/flashr")
    (synopsis "Create Flashcards of Terms and Definitions")
    (description
     "This package provides functions for creating flashcard decks of terms and
definitions.  This package creates HTML slides using revealjs that can be viewed
in the RStudio viewer or a web browser.  Users can create flashcards from either
existing built-in decks or create their own from CSV files or vectors of
function names.")
    (license license:expat)))

(define-public r-flashlight
  (package
    (name "r-flashlight")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flashlight" version))
       (sha256
        (base32 "0nyxx7zrqw8fgy1n81n30m80z7xwkydnhmxj6c22mq83md08rd8c"))))
    (properties `((upstream-name . "flashlight")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rpart-plot
                             r-rpart
                             r-rlang
                             r-metricsweighted
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mayer79/flashlight")
    (synopsis "Shed Light on Black Box Machine Learning Models")
    (description
     "Shed light on black box machine learning models by the help of model
performance, variable importance, global surrogate models, ICE profiles, partial
dependence (Friedman J. H. (2001) <doi:10.1214/aos/1013203451>), accumulated
local effects (Apley D. W. (2016) <@code{arXiv:1612.08468>}), further effects
plots, interaction strength, and variable contribution breakdown (Gosiewska and
Biecek (2019) <arxiv:1903.11420>).  All tools are implemented to work with case
weights and allow for stratified analysis.  Furthermore, multiple flashlights
can be combined and analyzed together.")
    (license license:gpl2+)))

(define-public r-flashier
  (package
    (name "r-flashier")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flashier" version))
       (sha256
        (base32 "08m5nmfzxg8ikswqz3w4fmiw0qixjy5hdwkxkm8nxflf4nkfgx06"))))
    (properties `((upstream-name . "flashier")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-softimpute
                             r-matrix
                             r-magrittr
                             r-irlba
                             r-ggplot2
                             r-ebnm
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/willwerscheid/flashier")
    (synopsis "Empirical Bayes Matrix Factorization")
    (description
     "This package provides methods for matrix factorization based on Wang and
Stephens (2021) <https://jmlr.org/papers/v22/20-589.html>.")
    (license license:bsd-3)))

(define-public r-flashcard
  (package
    (name "r-flashcard")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flashCard" version))
       (sha256
        (base32 "1l1g3hy0gchsmdj04d065rl71hkvxydyqsmav5qwxyz2mdkknkhi"))))
    (properties `((upstream-name . "flashCard")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=flashCard")
    (synopsis "Create a Flash Card")
    (description
     "Create a flip over style Flash Card with desired data frame for Shiny
application.")
    (license license:expat)))

(define-public r-flan
  (package
    (name "r-flan")
    (version "0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flan" version))
       (sha256
        (base32 "0g4prvlwiaf6ig6kghniqpcaxyws27345mb5qmcpgsy4jzdc4k7j"))))
    (properties `((upstream-name . "flan")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppgsl r-rcpparmadillo r-rcpp))
    (home-page "https://www.r-project.org")
    (synopsis "FLuctuation ANalysis on Mutation Models")
    (description
     "This package provides tools for fluctuations analysis of mutant cells counts.
Main reference is A. Mazoyer, R. Drouilhet, S. Despreaux and B. Ycart (2017)
<doi:10.32614/RJ-2017-029>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-flamingos
  (package
    (name "r-flamingos")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flamingos" version))
       (sha256
        (base32 "0gic6y8wpxffpyi3zy0wh7apy4z6argxbz284n80k2mzh6lh029k"))))
    (properties `((upstream-name . "flamingos")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fchamroukhi/FLaMingos")
    (synopsis
     "Functional Latent Data Models for Clustering Heterogeneous Curves ('FLaMingos')")
    (description
     "This package provides a variety of original and flexible user-friendly
statistical latent variable models for the simultaneous clustering and
segmentation of heterogeneous functional data (i.e time series, or more
generally longitudinal data, fitted by unsupervised algorithms, including EM
algorithms.  Functional Latent Data Models for Clustering heterogeneous curves
('F@code{LaMingos}') are originally introduced and written in Matlab by Faicel
Chamroukhi
<https://github.com/fchamroukhi?utf8=?&tab=repositories&q=mix&type=public&language=matlab>.
 The references are mainly the following ones.  Chamroukhi F. (2010)
<https://chamroukhi.com/FChamroukhi-@code{PhD.pdf>}.  Chamroukhi F., Same A.,
Govaert, G. and Aknin P. (2010) <doi:10.1016/j.neucom.2009.12.023>.  Chamroukhi
F., Same A., Aknin P. and Govaert G. (2011). <doi:10.1109/IJCNN.2011.6033590>.
Same A., Chamroukhi F., Govaert G. and Aknin, P. (2011)
<doi:10.1007/s11634-011-0096-5>.  Chamroukhi F., and Glotin H. (2012)
<doi:10.1109/IJCNN.2012.6252818>.  Chamroukhi F., Glotin H. and Same A. (2013)
<doi:10.1016/j.neucom.2012.10.030>.  Chamroukhi F. (2015)
<https://chamroukhi.com/FChamroukhi-HDR.pdf>.  Chamroukhi F. and Nguyen H-D.
(2019) <doi:10.1002/widm.1298>.")
    (license license:gpl3+)))

(define-public r-flametree
  (package
    (name "r-flametree")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flametree" version))
       (sha256
        (base32 "0mdmr1s4iqpic9rz33b2cja56r6p67dfhz9j2gdx4pdicywairxg"))))
    (properties `((upstream-name . "flametree")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-ggforce
                             r-dplyr))
    (home-page "https://github.com/djnavarro/flametree")
    (synopsis "Generate Random Tree-Like Images")
    (description
     "This package provides a generative art system for producing tree-like images
using an L-system to create the structures.  The package includes tools for
generating the data structures and visualise them in a variety of styles.")
    (license license:expat)))

(define-public r-flame
  (package
    (name "r-flame")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FLAME" version))
       (sha256
        (base32 "013kxp6zjw8qzdq3750x109rhbmjn10q32wgxsh7ajiflwhj3f1i"))))
    (properties `((upstream-name . "FLAME")))
    (build-system r-build-system)
    (propagated-inputs (list r-gmp r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://almost-matching-exactly.github.io")
    (synopsis "Interpretable Matching for Causal Inference")
    (description
     "Efficient implementations of the algorithms in the Almost-Matching-Exactly
framework for interpretable matching in causal inference.  These algorithms
match units via a learned, weighted Hamming distance that determines which
covariates are more important to match on.  For more information and examples,
see the Almost-Matching-Exactly website.")
    (license license:expat)))

(define-public r-flam
  (package
    (name "r-flam")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flam" version))
       (sha256
        (base32 "0v6kcl4n7wq052p7jdgbzlh9fpk8bzlrqw12i6pib1wd3slj0asa"))))
    (properties `((upstream-name . "flam")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=flam")
    (synopsis "Fits Piecewise Constant Models with Data-Adaptive Knots")
    (description
     "This package implements the fused lasso additive model as proposed in Petersen,
A., Witten, D., and Simon, N. (2016).  Fused Lasso Additive Model.  Journal of
Computational and Graphical Statistics, 25(4): 1005-1025.")
    (license license:gpl2+)))

(define-public r-flagr
  (package
    (name "r-flagr")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flagr" version))
       (sha256
        (base32 "195c78cml2pjzfvpkaxbzcg1dfdqxi76138p0v3x3zzva9d8nlji"))))
    (properties `((upstream-name . "flagr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=flagr")
    (synopsis "Implementation of Flag Aggregation")
    (description
     "Three methods are implemented in R to facilitate the aggregations of flags in
official statistics.  From the underlying flags the highest in the hierarchy,
the most frequent, or with the highest total weight is propagated to the flag(s)
for EU or other aggregates.  Below there are some reference documents for the
topic: <https://sdmx.org/wp-content/uploads/CL_OBS_STATUS_v2_1.docx>,
<https://sdmx.org/wp-content/uploads/CL_CONF_STATUS_1_2_2018.docx>,
<http://ec.europa.eu/eurostat/data/database/information>,
<http://www.oecd.org/sdd/33869551.pdf>,
<https://sdmx.org/wp-content/uploads/CL_OBS_STATUS_implementation_20-10-2014.pdf>.")
    (license (license:fsdg-compatible "EUPL-1.1"))))

(define-public r-flacco
  (package
    (name "r-flacco")
    (version "1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "flacco" version))
       (sha256
        (base32 "15h2q9xgddy7gw6r52c2nk618f3z1mjn4xz9pzdvhm1d3kqggwa4"))))
    (properties `((upstream-name . "flacco")))
    (build-system r-build-system)
    (propagated-inputs (list r-mlr r-checkmate r-bbmisc))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/kerschke/flacco")
    (synopsis
     "Feature-Based Landscape Analysis of Continuous and Constrained Optimization Problems")
    (description
     "This package provides tools and features for \"Exploratory Landscape Analysis
(ELA)\" of single-objective continuous optimization problems.  Those features are
able to quantify rather complex properties, such as the global structure,
separability, etc., of the optimization problems.")
    (license license:bsd-2)))

(define-public r-fksum
  (package
    (name "r-fksum")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FKSUM" version))
       (sha256
        (base32 "0ag8mzbjf2paslqspb18dk0ndqbp5rhmlmz9p2q2gxljfrdkzqkd"))))
    (properties `((upstream-name . "FKSUM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-rarpack r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=FKSUM")
    (synopsis "Fast Kernel Sums")
    (description
     "This package implements the method of Hofmeyr, D.P. (2021)
<DOI:10.1109/TPAMI.2019.2930501> for fast evaluation of univariate kernel
smoothers based on recursive computations.  Applications to the basic problems
of density and regression function estimation are provided, as well as some
projection pursuit methods for which the objective is based on non-parametric
functionals of the projected density, or conditional density of a response given
projected covariates.  The package is accompanied by an instructive paper in the
Journal of Statistical Software <doi:10.18637/jss.v101.i03>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fkf-sp
  (package
    (name "r-fkf-sp")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FKF.SP" version))
       (sha256
        (base32 "01vwb274nxnaljqw187vdf4w2j7m2b2ns3d47k0a2fg2v73abyjz"))))
    (properties `((upstream-name . "FKF.SP")))
    (build-system r-build-system)
    (propagated-inputs (list r-mathjaxr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TomAspinall/FKF.SP")
    (synopsis "Fast Kalman Filtering Through Sequential Processing")
    (description
     "Fast and flexible Kalman filtering and smoothing implementation utilizing
sequential processing, designed for efficient parameter estimation through
maximum likelihood estimation.  Sequential processing is a univariate treatment
of a multivariate series of observations and can benefit from computational
efficiency over traditional Kalman filtering when independence is assumed in the
variance of the disturbances of the measurement equation.  Sequential processing
is described in the textbook of Durbin and Koopman (2001,
ISBN:978-0-19-964117-8).  FKF.SP was built upon the existing FKF package and is,
in general, a faster Kalman filter/smoother.")
    (license license:gpl3)))

(define-public r-fkf
  (package
    (name "r-fkf")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FKF" version))
       (sha256
        (base32 "0zbd8qdyck7cr4bwksgzxg63kl83a4m15n76rqk2yinyxpi0xazp"))))
    (properties `((upstream-name . "FKF")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://waternumbers.github.io/FKF/")
    (synopsis "Fast Kalman Filter")
    (description
     "This is a fast and flexible implementation of the Kalman filter and smoother,
which can deal with NAs.  It is entirely written in C and relies fully on linear
algebra subroutines contained in BLAS and LAPACK. Due to the speed of the
filter, the fitting of high-dimensional linear state space models to large
datasets becomes possible.  This package also contains a plot function for the
visualization of the state vector and graphical diagnostics of the residuals.")
    (license license:gpl2+)))

(define-public r-fjordlight
  (package
    (name "r-fjordlight")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FjordLight" version))
       (sha256
        (base32 "1s9kw93c8mx9n2l566df32hp70zcmjjnlkmrg3qpfkicg92dbqij"))))
    (properties `((upstream-name . "FjordLight")))
    (build-system r-build-system)
    (propagated-inputs (list r-raster r-ncdf4 r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/FACE-IT-project/FjordLight")
    (synopsis
     "Available Light Within the Water Column and Seafloor of Arctic Fjords")
    (description
     "Satellite data collected between 2003 and 2022, in conjunction with gridded
bathymetric data (50-150 m resolution), are used to estimate the irradiance
reaching the bottom of a series of representative EU Arctic fjords.  An Earth
System Science Data (ESSD) manuscript, Schlegel et al. (2023, in review), that
provides a detailed explanation of the methodology is currently in review.")
    (license license:expat)))

(define-public r-fizzbuzzr
  (package
    (name "r-fizzbuzzr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fizzbuzzR" version))
       (sha256
        (base32 "119gbi9y4n8r52hk9vj7zf795dv9xnk7lnngljjcd7ydnhygwd4h"))))
    (properties `((upstream-name . "fizzbuzzR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fizzbuzzR")
    (synopsis "Fizz Buzz Implementation")
    (description
     "An implementation of the Fizz Buzz algorithm, as defined e.g. in
<https://en.wikipedia.org/wiki/Fizz_buzz>.  It provides the standard algorithm
with 3 replaced by Fizz and 5 replaced by Buzz, with the option of specifying
start and end numbers, step size and the numbers being replaced by fizz and
buzz, respectively.  This package gives interviewers the optional answer of \"I
use @code{fizzbuzzR::fizzbuzz}()\" when interviewing rather than having to write
an algorithm themselves.")
    (license license:gpl3+)))

(define-public r-fixtures
  (package
    (name "r-fixtures")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixtuRes" version))
       (sha256
        (base32 "1vmdbx1pfk4kcxq5q5hj4v6rz403xw66gpg6zpvrxkpcgkx2dwyz"))))
    (properties `((upstream-name . "fixtuRes")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-stringi
                             r-rlang
                             r-r6
                             r-purrr
                             r-lubridate
                             r-glue
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jakubnowicki/fixtuRes")
    (synopsis "Mock Data Generator")
    (description "Generate mock data in R using YAML configuration.")
    (license license:expat)))

(define-public r-fixseqmtp
  (package
    (name "r-fixseqmtp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FixSeqMTP" version))
       (sha256
        (base32 "0v1cwq8gapgandm7wiw8p6av6qigydlpmwi6w02p1y7f0hf5ifnp"))))
    (properties `((upstream-name . "FixSeqMTP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FixSeqMTP")
    (synopsis "Fixed Sequence Multiple Testing Procedures")
    (description
     "Several generalized / directional Fixed Sequence Multiple Testing Procedures
(FSMTPs) are developed for testing a sequence of pre-ordered hypotheses while
controlling the FWER, FDR and Directional Error (@code{mdFWER}).  All three FWER
controlling generalized FSMTPs are designed under arbitrary dependence, which
allow any number of acceptances.  Two FDR controlling generalized FSMTPs are
respectively designed under arbitrary dependence and independence, which allow
more but a given number of acceptances.  Two @code{mdFWER} controlling
directional FSMTPs are respectively designed under arbitrary dependence and
independence, which can also make directional decisions based on the signs of
the test statistics.  The main functions for each proposed generalized /
directional FSMTPs are designed to calculate adjusted p-values and critical
values, respectively.  For users convenience, the functions also provide the
output option for printing decision rules.")
    (license license:gpl2+)))

(define-public r-fixr
  (package
    (name "r-fixr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixr" version))
       (sha256
        (base32 "074dr1l3bw8v1lrih1mc51dmx02kambis04r9jpx64vnpajjfv8p"))))
    (properties `((upstream-name . "fixr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rcurl r-httr))
    (home-page "https://github.com/ambuvjyn/fixr")
    (synopsis "Fixing Data Made Easy for Statistical Analysis")
    (description
     "This package provides a set of functions that facilitate basic data manipulation
and cleaning for statistical analysis including functions for finding and fixing
duplicate rows and columns, missing values, outliers, and special characters in
column and row names and functions for checking data consistency, distribution,
quality, reliability, and structure.")
    (license license:gpl3)))

(define-public r-fixest
  (package
    (name "r-fixest")
    (version "0.11.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixest" version))
       (sha256
        (base32 "1q771z9m7sdzq4pbx4fwcz26d4cbjkmqjrdac0wnr9pbv81y3z0k"))))
    (properties `((upstream-name . "fixest")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich r-rcpp r-numderiv r-nlme r-dreamerr))
    (native-inputs (list r-knitr))
    (home-page "https://lrberge.github.io/fixest/")
    (synopsis "Fast Fixed-Effects Estimations")
    (description
     "Fast and user-friendly estimation of econometric models with multiple
fixed-effects.  Includes ordinary least squares (OLS), generalized linear models
(GLM) and the negative binomial.  The core of the package is based on optimized
parallel C++ code, scaling especially well for large data sets.  The method to
obtain the fixed-effects coefficients is based on Berge (2018)
<https://wwwen.uni.lu/content/download/110162/1299525/file/2018_13>.  Further
provides tools to export and view the results of several estimations with
intuitive design to cluster the standard-errors.")
    (license license:gpl3)))

(define-public r-fixerapi
  (package
    (name "r-fixerapi")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixerapi" version))
       (sha256
        (base32 "0ikf8dn0l9c9gshp4bph3wasl0bh6lfybinc8n1rvb202231hmgb"))))
    (properties `((upstream-name . "fixerapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://docs.evanodell.com/fixerapi")
    (synopsis "An R Client for the \"Fixer.io\" Currency API")
    (description
     "An R client for the \"fixer.io\" currency conversion and exchange rate API. The
API requires registration and some features are only available on paid accounts.
 The full API documentation is available at <https://fixer.io/documentation>.")
    (license license:expat)))

(define-public r-fixedtimeevents
  (package
    (name "r-fixedtimeevents")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixedTimeEvents" version))
       (sha256
        (base32 "18cqbxrs69p60anvii22mhqkwh5y2mxapmznff9g7j1j6h4h62lr"))))
    (properties `((upstream-name . "fixedTimeEvents")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/khliland/fixedTimeEvents/")
    (synopsis
     "The Distribution of Distances Between Discrete Events in Fixed Time")
    (description
     "Distribution functions and test for over-representation of short distances in
the Liland distribution.  Simulation functions are included for comparison.")
    (license license:gpl2+)))

(define-public r-fixedpointproperty
  (package
    (name "r-fixedpointproperty")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixedpointproperty" version))
       (sha256
        (base32 "125vfk92mhixachg2qp5ffvf8ggvrfc62970vzmc8fiq83lbzgs1"))))
    (properties `((upstream-name . "fixedpointproperty")))
    (build-system r-build-system)
    (propagated-inputs (list r-bayesfactor))
    (home-page "https://cran.r-project.org/package=fixedpointproperty")
    (synopsis
     "Determine and Test the Fixed-Point Property in Binary Mixture Data")
    (description
     "Determine and test the fixed-point property in binary mixture data.  This
package was originally developed in the context of detecting mixture of
cognitive processing strategies, based on observed response time distributions.
The method is explain in more detail by Van Maanen, De Jong, Van Rijn (2014)
<doi:10.1371/journal.pone.0106113> and Van Maanen, Couto, Lebreton, (2016)
<doi:10.1371/journal.pone.0167377>.")
    (license license:gpl2)))

(define-public r-fixedpoint
  (package
    (name "r-fixedpoint")
    (version "0.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FixedPoint" version))
       (sha256
        (base32 "04f3x2akphfm6d84vbf9nfrn281d5hbbnb57n4cwy9hgrs835h6w"))))
    (properties `((upstream-name . "FixedPoint")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FixedPoint")
    (synopsis "Algorithms for Finding Fixed Point Vectors of Functions")
    (description
     "For functions that take and return vectors (or scalars), this package provides 8
algorithms for finding fixed point vectors (vectors for which the inputs and
outputs to the function are the same vector).  These algorithms include Anderson
(1965) acceleration <doi:10.1145/321296.321305>, epsilon extrapolation methods
(Wynn 1962 <doi:10.2307/2004051>) and minimal polynomial methods (Cabay and
Jackson 1976 <doi:10.1137/0713060>).")
    (license license:expat)))

(define-public r-fixedincome
  (package
    (name "r-fixedincome")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fixedincome" version))
       (sha256
        (base32 "16wxd12hid468d1rfczyrb2ffnja0vx9mnqdg9dhdp0nlj78xx99"))))
    (properties `((upstream-name . "fixedincome")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-ggplot2 r-bizdays))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wilsonfreitas/R-fixedincome")
    (synopsis
     "Fixed Income Models, Calculations, Data Structures and Instruments")
    (description
     "Fixed income mathematics made easy.  A rich set of functions that helps with
calculations of interest rates and fixed income.  It has objects that abstract
interest rates, compounding factors, day count rules, forward rates and term
structure of interest rates.  Many interpolation methods and parametric curve
models commonly used by practitioners are implemented.")
    (license license:expat)))

(define-public r-fitzroy
  (package
    (name "r-fitzroy")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitzRoy" version))
       (sha256
        (base32 "1q728dn6s89f7zy4s1hhixqrvqi27gc225i6isiq5lk9md7pgydx"))))
    (properties `((upstream-name . "fitzRoy")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-progress
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://jimmyday12.github.io/fitzRoy/")
    (synopsis "Easily Scrape and Process AFL Data")
    (description
     "An easy package for scraping and processing Australia Rules Football (AFL) data.
@code{fitzRoy} provides a range of functions for accessing publicly available
data from AFL Tables <https://afltables.com/afl/afl_index.html>, Footy Wire
<https://www.footywire.com> and The Squiggle <https://squiggle.com.au>.  Further
functions allow for easy processing, cleaning and transformation of this data
into formats that can be used for analysis.")
    (license license:gpl3)))

(define-public r-fitur
  (package
    (name "r-fitur")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitur" version))
       (sha256
        (base32 "0bx1w1bpz3i2ybwl386s8y8nxyqwk6w33aqyyw94aq6ink3bw2aw"))))
    (properties `((upstream-name . "fitur")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rstudioapi
                             r-miniui
                             r-goftest
                             r-ggplot2
                             r-fitdistrplus
                             r-e1071
                             r-dt
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tomroh/fitur")
    (synopsis "Fit Univariate Distributions")
    (description
     "Wrapper for computing parameters for univariate distributions using MLE. It
creates an object that stores d, p, q, r functions as well as parameters and
statistics for diagnostics.  Currently supports automated fitting from base and
actuar packages.  A manually fitting distribution fitting function is included
to support directly specifying parameters for any distribution from ancillary
packages.")
    (license license:expat)))

(define-public r-fitultd
  (package
    (name "r-fitultd")
    (version "3.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FitUltD" version))
       (sha256
        (base32 "17fj211riybq71k63wjfv2ndc2h46ay5svrac2v5i3b92cb9hkbv"))))
    (properties `((upstream-name . "FitUltD")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-mclust
                             r-mass
                             r-ggplot2
                             r-fitdistrplus
                             r-cowplot
                             r-assertthat
                             r-adgoftest))
    (home-page "https://github.com/jcval94/FitUltD")
    (synopsis "Fit Univariate Mixed and Usual Distributions")
    (description
     "Extends the fitdist() (from fitdistrplus') adding the Anderson-Darling ad.test()
(from AD@code{GofTest}') and Kolmogorov Smirnov Test ks.test() inside, trying
the distributions from stats package by default and offering a second function
which uses mixed distributions to fit, this distributions are split with
unsupervised learning, with Mclust() function (from mclust').")
    (license license:gpl3)))

(define-public r-fitter
  (package
    (name "r-fitter")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitteR" version))
       (sha256
        (base32 "0l33j69fdfpsp77a1vwqg07b65qaxs875r7lhy2bfi6mxgcklby9"))))
    (properties `((upstream-name . "fitteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-r-utils r-maxlik r-dt r-dplyr))
    (home-page "https://cran.r-project.org/package=fitteR")
    (synopsis "Fit Hundreds of Theoretical Distributions to Empirical Data")
    (description
     "Systematic fit of hundreds of theoretical univariate distributions to empirical
data via maximum likelihood estimation.  Fits are reported and summarized by a
data.frame, a csv file or a shiny app (here with additional features like visual
representation of fits).  All output formats provide assessment of
goodness-of-fit by the following methods: Kolmogorov-Smirnov test, Shapiro-Wilks
test, Anderson-Darling test.")
    (license license:gpl2+)))

(define-public r-fitsio
  (package
    (name "r-fitsio")
    (version "2.1-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FITSio" version))
       (sha256
        (base32 "1qch6z9r8h95jijjdwsi81majgacl42ryzlkn0m1wifkly9mjjrb"))))
    (properties `((upstream-name . "FITSio")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FITSio")
    (synopsis "FITS (Flexible Image Transport System) Utilities")
    (description
     "Utilities to read and write files in the FITS (Flexible Image Transport System)
format, a standard format in astronomy (see e.g.
<https://en.wikipedia.org/wiki/FITS> for more information).  Present low-level
routines allow: reading, parsing, and modifying FITS headers; reading FITS
images (multi-dimensional arrays); reading FITS binary and ASCII tables; and
writing FITS images (multi-dimensional arrays).  Higher-level functions allow:
reading files composed of one or more headers and a single (perhaps
multidimensional) image or single table; reading tables into data frames;
generating vectors for image array axes; scaling and writing images as 16-bit
integers.  Known incompletenesses are reading random group extensions, as well
as complex and array descriptor data types in binary tables.")
    (license license:gpl2+)))

(define-public r-fitscape
  (package
    (name "r-fitscape")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitscape" version))
       (sha256
        (base32 "0y9x0n61y366f35d594523l3c5sjaf87msxhnlbs2w3g7d53yvfb"))))
    (properties `((upstream-name . "fitscape")))
    (build-system r-build-system)
    (home-page "https://github.com/rrrlw/fitscape")
    (synopsis "Classes for Fitness Landscapes and Seascapes")
    (description
     "Convenient classes to model fitness landscapes and fitness seascapes.  A
low-level package with which most users will not interact but upon which other
packages modeling fitness landscapes and fitness seascapes will depend.")
    (license license:expat)))

(define-public r-fitps
  (package
    (name "r-fitps")
    (version "0.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitPS" version))
       (sha256
        (base32 "1ga4c7hd9chspk6m0rd3vc6nlzdc36dq3dlmp86b0zn4dzzvikyy"))))
    (properties `((upstream-name . "fitPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-readxl
                             r-rdpack
                             r-pbapply
                             r-ks
                             r-knitr
                             r-iterators
                             r-hmisc
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jmcurran/fitPS")
    (synopsis "Fit Zeta Distributions to Forensic Data")
    (description
     "Fits Zeta distributions (discrete power laws) to data that arises from forensic
surveys of clothing on the presence of glass and paint in various populations.
The general method is described to some extent in Coulson, S.A., Buckleton,
J.S., Gummer, A.B., and Triggs, C.M. (2001) <doi:10.1016/S1355-0306(01)71847-3>,
although the implementation differs.")
    (license license:gpl2+)))

(define-public r-fitpoly
  (package
    (name "r-fitpoly")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitPoly" version))
       (sha256
        (base32 "0ws1vsh8if9i9i7820ak32b0bysjc0z09nbrk17qpms0b11cpc3g"))))
    (properties `((upstream-name . "fitPoly")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach))
    (home-page "https://cran.r-project.org/package=fitPoly")
    (synopsis "Genotype Calling for Bi-Allelic Marker Assays")
    (description
     "Genotyping assays for bi-allelic markers (e.g. SNPs) produce signal intensities
for the two alleles. @code{fitPoly} assigns genotypes (allele dosages) to a
collection of polyploid samples based on these signal intensities.
@code{fitPoly} replaces the older package @code{fitTetra} that was limited
(a.o.) to only tetraploid populations whereas @code{fitPoly} accepts any ploidy
level.  Reference: Voorrips RE, Gort G, Vosman B (2011)
<doi:10.1186/1471-2105-12-172>.")
    (license license:gpl2)))

(define-public r-fitplc
  (package
    (name "r-fitplc")
    (version "1.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitplc" version))
       (sha256
        (base32 "1yg3ch907c4gk7q8hxgwqxgngkmy125j3ni917nkzi7hn59krd1n"))))
    (properties `((upstream-name . "fitplc")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-car))
    (home-page "https://www.bitbucket.org/remkoduursma/fitplc")
    (synopsis "Fit Hydraulic Vulnerability Curves")
    (description
     "Fits Weibull or sigmoidal models to percent loss conductivity (plc) curves as a
function of plant water potential, computes confidence intervals of parameter
estimates and predictions with bootstrap or parametric methods, and provides
convenient plotting methods.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fitode
  (package
    (name "r-fitode")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitode" version))
       (sha256
        (base32 "18c5sgvkv9w370zli2kc2gdcbpnb3f5s3ivp0zyd6rqlwdy0c6cg"))))
    (properties `((upstream-name . "fitode")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv
                             r-mvtnorm
                             r-mass
                             r-desolve
                             r-deriv
                             r-coda
                             r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fitode")
    (synopsis "Tools for Ordinary Differential Equations Model Fitting")
    (description
     "This package provides methods and functions for fitting ordinary differential
equations (ODE) model in R'.  Sensitivity equations are used to compute the
gradients of ODE trajectories with respect to underlying parameters, which in
turn allows for more stable fitting.  Other fitting methods, such as MCMC
(Markov chain Monte Carlo), are also available.")
    (license license:gpl2+)))

(define-public r-fitodbod
  (package
    (name "r-fitodbod")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitODBOD" version))
       (sha256
        (base32 "0nr2ljnk2glrayainm4dnpyw2bp8vfyjws2p7nry6x4f8vvw9y0v"))))
    (properties `((upstream-name . "fitODBOD")))
    (build-system r-build-system)
    (propagated-inputs (list r-hypergeo r-bbmle))
    (home-page "https://github.com/Amalan-ConStat/fitODBOD")
    (synopsis
     "Modeling Over Dispersed Binomial Outcome Data Using BMD and ABD")
    (description
     "This package contains Probability Mass Functions, Cumulative Mass Functions,
Negative Log Likelihood value, parameter estimation and modeling data using
Binomial Mixture Distributions (BMD) (Manoj et al (2013)
<doi:10.5539/ijsp.v2n2p24>) and Alternate Binomial Distributions (ABD) (Paul
(1985) <doi:10.1080/03610928508828990>), also Journal article to use the
package(<doi:10.21105/joss.01505>).")
    (license license:expat)))

(define-public r-fitmix
  (package
    (name "r-fitmix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitmix" version))
       (sha256
        (base32 "1z7jgxz119lkyggmgpykcslv56z1i7pnbp872jkdni77sx94x89c"))))
    (properties `((upstream-name . "fitmix")))
    (build-system r-build-system)
    (home-page "https://github.com/guven-code/fitmix/")
    (synopsis "Finite Mixture Model Fitting of Lifespan Datasets")
    (description
     "Fits the lifespan datasets of biological systems such as yeast, fruit flies, and
other similar biological units with well-known finite mixture models introduced
by Farewell V. (1982) <doi:10.2307/2529885> and Al-Hussaini et al. (2000)
<doi:10.1080/00949650008812033>.  Estimates parameter space fitting of a
lifespan dataset with finite mixtures of parametric distributions.  Computes the
following tasks; 1) Estimates parameter space of the finite mixture model by
implementing the expectation maximization (EM) algorithm.  2) Finds a sequence
of four goodness-of-fit measures consist of Akaike Information Criterion (AIC),
Bayesian Information Criterion (BIC), Kolmogorov-Smirnov (KS), and
log-likelihood (log-likelihood) statistics.  3)The initial values is determined
by k-means clustering.")
    (license license:gpl3)))

(define-public r-fitlandr
  (package
    (name "r-fitlandr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitlandr" version))
       (sha256
        (base32 "077b97gwlzxmd4i4rsxrgqzlnwn7zf0y0wgcbihck1wvh7gjiara"))))
    (properties `((upstream-name . "fitlandr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sparsevfc
                             r-simlandr
                             r-rootsolve
                             r-rlang
                             r-rfast
                             r-r-utils
                             r-plotly
                             r-numderiv
                             r-mass
                             r-magrittr
                             r-glue
                             r-ggplot2
                             r-future-apply
                             r-furrr
                             r-dplyr
                             r-cli))
    (home-page "https://sciurus365.github.io/fitlandr/")
    (synopsis
     "Fit Vector Fields and Potential Landscapes from Intensive Longitudinal Data")
    (description
     "This package provides a toolbox for estimating vector fields from intensive
longitudinal data, and construct potential landscapes thereafter.  The vector
fields can be estimated with two nonparametric methods: the Multivariate Vector
Field Kernel Estimator (MVKE) by Bandi & Moloche (2018)
<doi:10.1017/S0266466617000305> and the Sparse Vector Field Consensus
(@code{SparseVFC}) algorithm by Ma et al. (2013)
<doi:10.1016/j.patcog.2013.05.017>.  The potential landscapes can be constructed
with a simulation-based approach with the simlandr package (Cui et al., 2021)
<doi:10.31234/osf.io/pzva3>, or the Bhattacharya et al. (2011) method for path
integration <doi:10.1186/1752-0509-5-85>.")
    (license license:gpl3+)))

(define-public r-fitheavytail
  (package
    (name "r-fitheavytail")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitHeavyTail" version))
       (sha256
        (base32 "18iqqn33sznw4c77rl6ryk57grary350ygr58vg062jg1hyxybrg"))))
    (properties `((upstream-name . "fitHeavyTail")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mvtnorm r-icsnp r-ghyp))
    (native-inputs (list r-rmarkdown r-r-rsp r-knitr))
    (home-page "https://CRAN.R-project.org/package=fitHeavyTail")
    (synopsis "Mean and Covariance Matrix Estimation under Heavy Tails")
    (description
     "Robust estimation methods for the mean vector, scatter matrix, and covariance
matrix (if it exists) from data (possibly containing NAs) under multivariate
heavy-tailed distributions such as angular Gaussian (via Tyler's method),
Cauchy, and Student's t distributions.  Additionally, a factor model structure
can be specified for the covariance matrix.  The latest revision also includes
the multivariate skewed t distribution.  The package is based on the papers:
Sun, Babu, and Palomar (2014); Sun, Babu, and Palomar (2015); Liu and Rubin
(1995); Zhou, Liu, Kumar, and Palomar (2019); Pascal, Ollila, and Palomar
(2021).")
    (license license:gpl3)))

(define-public r-fitdynmix
  (package
    (name "r-fitdynmix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FitDynMix" version))
       (sha256
        (base32 "0l8rqab8520dm4kmizg4vmq4pr1sbh2zqayxlnnh0y3zid66b276"))))
    (properties `((upstream-name . "FitDynMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-pracma r-mass r-ks r-evir))
    (home-page "https://github.com/marco-bee/FitDynMix")
    (synopsis "Estimation of Dynamic Mixtures")
    (description
     "Estimation of a dynamic lognormal - Generalized Pareto mixture via the
Approximate Maximum Likelihood and the Cross-Entropy methods.  See Bee, M.
(2023) <doi:10.1016/j.csda.2023.107764>.")
    (license license:expat)))

(define-public r-fitconic
  (package
    (name "r-fitconic")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitConic" version))
       (sha256
        (base32 "0hslw8mdjr0yjy7mx2b7di9d2yr89ga97zbgzh97qb3i8vasgwmq"))))
    (properties `((upstream-name . "fitConic")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=fitConic")
    (synopsis "Fit Data to Any Conic Section")
    (description
     "Fit data to an ellipse, hyperbola, or parabola.  Bootstrapping is available when
needed.  The conic curve can be rotated through an arbitrary angle and the fit
will still succeed.  Helper functions are provided to convert generator
coefficients from one style to another, generate test data sets, rotate conic
section parameters, and so on.  References include Nikolai Chernov (2014)
\"Fitting ellipses, circles, and lines by least squares\"
<https://people.cas.uab.edu/~mosya/cl/>; A. W. Fitzgibbon, M. Pilu, R. B. Fisher
(1999) \"Direct Least Squares Fitting of Ellipses\" IEEE Trans.  PAMI, Vol.  21,
pages 476-48; N. Chernov, Q. Huang, and H. Ma (2014) \"Fitting quadratic curves
to data points\", British Journal of Mathematics & Computer Science, 4, 33-60; N.
Chernov and H. Ma (2011) \"Least squares fitting of quadratic curves and
surfaces\", Computer Vision, Editor S. R. Yoshida, Nova Science Publishers, pp.
285-302.")
    (license license:lgpl3)))

(define-public r-fitbitviz
  (package
    (name "r-fitbitviz")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitbitViz" version))
       (sha256
        (base32 "04kpx6h4kj0b92ick5kkihs2x9fjycxsi8fky8jpwdvvrivnk620"))))
    (properties `((upstream-name . "fitbitViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-viridis
                             r-varian
                             r-terra
                             r-sf
                             r-scales
                             r-rstudioapi
                             r-reshape2
                             r-rayshader
                             r-raster
                             r-patchwork
                             r-paletteer
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-leaflet
                             r-leafgl
                             r-jsonlite
                             r-httr
                             r-hms
                             r-glue
                             r-ggthemes
                             r-ggplot2
                             r-data-table
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/fitbitViz")
    (synopsis "'Fitbit' Visualizations")
    (description
     "Connection to the Fitbit Web API
<https://dev.fitbit.com/build/reference/web-api/> by including ggplot2
Visualizations, Leaflet and 3-dimensional Rayshader Maps.  The 3-dimensional
Rayshader Map requires the installation of the @code{CopernicusDEM} R package
which includes the 30- and 90-meter elevation data.")
    (license license:gpl3)))

(define-public r-fitbitscraper
  (package
    (name "r-fitbitscraper")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitbitScraper" version))
       (sha256
        (base32 "0b4d7xw6inp6l1dkfwyrzxwg4vspp4vzlwrhv14ajxrqz6irj8a0"))))
    (properties `((upstream-name . "fitbitScraper")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/corynissen/fitbitScraper")
    (synopsis "Scrapes Data from Fitbit")
    (description
     "Scrapes data from Fitbit <http://www.fitbit.com>.  This does not use the
official API, but instead uses the API that the web dashboard uses to generate
the graphs displayed on the dashboard after login at <http://www.fitbit.com>.")
    (license license:expat)))

(define-public r-fitbitr
  (package
    (name "r-fitbitr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fitbitr" version))
       (sha256
        (base32 "17qgjd7w0f1iyfwm7mn7m4w8lzfgrbqhh8ngwkg91n9mpz5hyh3s"))))
    (properties `((upstream-name . "fitbitr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/mrkaye97/fitbitr")
    (synopsis "Interface with the 'Fitbit' API")
    (description
     "Many Fitbit users, and R-friendly Fitbit users especially, have found themselves
curious about their Fitbit data.  Fitbit aggregates a large amount of personal
data, much of which is interesting for personal research and to satisfy
curiosity, and is even potentially useful in medical settings.  The goal of
fitbitr is to make interfacing with the Fitbit API as streamlined as possible,
to make it simple for R users of all backgrounds and comfort levels to analyze
their Fitbit data and do whatever they want with it! Currently, fitbitr includes
methods for pulling data on activity, sleep, and heart rate, but this list is
likely to grow in the future as the package gains more traction and more
requests for new methods to be implemented come in.  You can find details on the
Fitbit API at <https://dev.fitbit.com/build/reference/web-api/>.")
    (license license:gpl3+)))

(define-public r-fit
  (package
    (name "r-fit")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FIT" version))
       (sha256
        (base32 "1nkjms9cvigc9sjha1krzhd3nmwsfh8pi0f1plf5k8zpb773zzb2"))))
    (properties `((upstream-name . "FIT")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcppeigen r-rcpp r-mass r-gglasso))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FIT")
    (synopsis "Transcriptomic Dynamics Models in Field Conditions")
    (description
     "This package provides functionality for constructing statistical models of
transcriptomic dynamics in field conditions.  It further offers the function to
predict expression of a gene given the attributes of samples and meteorological
data.  Nagano, A. J., Sato, Y., Mihara, M., Antonio, B. A., Motoyama, R., Itoh,
H., Naganuma, Y., and Izawa, T. (2012). <doi:10.1016/j.cell.2012.10.048>.
Iwayama, K., Aisaka, Y., Kutsuna, N., and Nagano, A. J. (2017).
<doi:10.1093/bioinformatics/btx049>.")
    (license (list (license:fsdg-compatible "MPL (>= 2)")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-fispro
  (package
    (name "r-fispro")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FisPro" version))
       (sha256
        (base32 "16nqzyykjxp5ajv2vy0lwv8hk3a3w6di3xkzg3yp1c6p1mday7j3"))))
    (properties `((upstream-name . "FisPro")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://www.fispro.org")
    (synopsis "Fuzzy Inference System Design and Optimization")
    (description
     "Fuzzy inference systems are based on fuzzy rules, which have a good capability
for managing progressive phenomenons.  This package is a basic implementation of
the main functions to use a Fuzzy Inference System (FIS) provided by the open
source software @code{FisPro} <https://www.fispro.org>. @code{FisPro} allows to
create fuzzy inference systems and to use them for reasoning purposes,
especially for simulating a physical or biological system.")
    (license license:cecill)))

(define-public r-fishualize
  (package
    (name "r-fishualize")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishualize" version))
       (sha256
        (base32 "0iygh6mlxlsk6yq26i5rry9gh6qkrn5sbgsa2wpdxmm1ip1nzml0"))))
    (properties `((upstream-name . "fishualize")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-png
                             r-magrittr
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-downloader
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nschiett/fishualize")
    (synopsis "Color Palettes Based on Fish Species")
    (description "Implementation of color palettes based on fish species.")
    (license license:gpl2)))

(define-public r-fishtree
  (package
    (name "r-fishtree")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishtree" version))
       (sha256
        (base32 "00g8p885z5xcqp2chncb177s0l6lab2f069szj861z9dyf93xx4z"))))
    (properties `((upstream-name . "fishtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-memoise r-jsonlite r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://fishtreeoflife.org/")
    (synopsis "Interface to the Fish Tree of Life API")
    (description
     "An interface to the Fish Tree of Life API to download taxonomies, phylogenies,
fossil calibrations, and diversification rate information for ray-finned fishes.")
    (license license:bsd-2)))

(define-public r-fishresp
  (package
    (name "r-fishresp")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FishResp" version))
       (sha256
        (base32 "16my9pyzxyz3l087hq2r60fm08rgah3pg4arlqrwk1nn423cbr5v"))))
    (properties `((upstream-name . "FishResp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmr r-respirometry r-mclust r-lattice r-chron))
    (home-page "https://fishresp.org")
    (synopsis "Analytical Tool for Aquatic Respirometry")
    (description
     "Calculates metabolic rate of fish and other aquatic organisms measured using an
intermittent-flow respirometry approach.  The tool is used to run a set of
graphical QC tests of raw respirometry data, correct it for background
respiration and chamber effect, filter and extract target values of absolute and
mass-specific metabolic rate.  Experimental design should include background
respiration tests and measuring of one or more metabolic rate traits.  The R
package is ideally integrated with the pump controller @code{PumpResp} and the
DO meter @code{SensResp} (open-source hardware by @code{FishResp}).  Raw
respirometry data can be also imported from @code{AquaResp} (free software),
@code{AutoResp} ('@code{LoligoSystems}'), @code{OxyView} ('@code{PreSens}'),
Pyro Oxygen Logger ('@code{PyroScience}') and Q-box Aqua
('@code{QubitSystems}').  More information about the R package
@code{FishResp'is} available in the publication by Morozov et al. (2019)
<doi:10.1093/conphys/coz003>.")
    (license license:gpl3)))

(define-public r-fishphylomaker
  (package
    (name "r-fishphylomaker")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FishPhyloMaker" version))
       (sha256
        (base32 "1q1kh999nx0hmgvnzxls95y7q501n0pqic0ylvrwq25ba2qwmcsg"))))
    (properties `((upstream-name . "FishPhyloMaker")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown
                             r-rfishbase
                             r-progress
                             r-phytools
                             r-knitr
                             r-geiger
                             r-fishtree
                             r-ape))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=FishPhyloMaker")
    (synopsis "Phylogenies for a List of Finned-Ray Fishes")
    (description
     "This package provides an alternative to facilitate the construction of a
phylogeny for fish species from a list of species or a community matrix using as
a backbone the phylogenetic tree proposed by Rabosky et al. (2018)
<doi:10.1038/s41586-018-0273-1>.")
    (license license:expat)))

(define-public r-fishmod
  (package
    (name "r-fishmod")
    (version "0.29")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishMod" version))
       (sha256
        (base32 "0pbs4z27vwa3c42xdw3mr6l2i581bgvn2pk52kawbcnnlsff92ar"))))
    (properties `((upstream-name . "fishMod")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fishMod")
    (synopsis
     "Fits Poisson-Sum-of-Gammas GLMs, Tweedie GLMs, and Delta Log-Normal Models")
    (description
     "Fits models to catch and effort data.  Single-species models are 1) delta
log-normal, 2) Tweedie, or 3) Poisson-gamma (G)LMs.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fishmethods
  (package
    (name "r-fishmethods")
    (version "1.12-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishmethods" version))
       (sha256
        (base32 "0ladr3rl55v10kh0556725gygiw338mj3ncpifaij80rph99y66v"))))
    (properties `((upstream-name . "fishmethods")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmb
                             r-numderiv
                             r-mass
                             r-lme4
                             r-data-table
                             r-bootstrap
                             r-boot))
    (home-page "https://cran.r-project.org/package=fishmethods")
    (synopsis "Fishery Science Methods and Models")
    (description
     "This package provides functions for applying a wide range of fisheries stock
assessment methods.")
    (license license:gpl2+)))

(define-public r-fishkirkko2015
  (package
    (name "r-fishkirkko2015")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishkirkko2015" version))
       (sha256
        (base32 "1s8vsf604rc6qk0gahn61p3q8p9dhsbq14wsmrin7icq2xgl3y81"))))
    (properties `((upstream-name . "fishkirkko2015")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fishkirkko2015")
    (synopsis
     "Dataset of Measurements of Fish Species at Kirkkojarvi Lake, Finland")
    (description
     "Dataset of 302 measurements of 11 fish species to accompany the manuscript
\"Length-weight relationships of six freshwater fish species from lake
Kirkkojarvi, Finland\".")
    (license license:gpl3+)))

(define-public r-fisheye
  (package
    (name "r-fisheye")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fisheye" version))
       (sha256
        (base32 "0yrgr0nhnn768q6hc2dsjz7y3n7p7ci0rdfqsickafgv2srdrh83"))))
    (properties `((upstream-name . "fisheye")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf))
    (home-page "https://cran.r-project.org/package=fisheye")
    (synopsis "Transform Base Maps Using Log-Azimuthal Projection")
    (description
     "Base maps are transformed to focus on a specific location using an azimuthal
logarithmic distance transformation.")
    (license license:gpl3)))

(define-public r-fisherem
  (package
    (name "r-fisherem")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FisherEM" version))
       (sha256
        (base32 "18xn0hnj5diq7falrjl04abqyyrvyzaikb9l6wh7hfhflhsd382c"))))
    (properties `((upstream-name . "FisherEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-mass r-ggplot2 r-ellipse r-elasticnet))
    (home-page "https://cran.r-project.org/package=FisherEM")
    (synopsis
     "The FisherEM Algorithm to Simultaneously Cluster and Visualize High-Dimensional Data")
    (description
     "The @code{FisherEM} algorithm, proposed by Bouveyron & Brunet (2012)
<doi:10.1007/s11222-011-9249-9>, is an efficient method for the clustering of
high-dimensional data. @code{FisherEM} models and clusters the data in a
discriminative and low-dimensional latent subspace.  It also provides a
low-dimensional representation of the clustered data.  A sparse version of
Fisher-EM algorithm is also provided.")
    (license license:gpl2)))

(define-public r-fishdata
  (package
    (name "r-fishdata")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishdata" version))
       (sha256
        (base32 "0hskmw93pyrm5wxn1dw8vi18v11jnf03yx375hjkk38hcfnp6n5k"))))
    (properties `((upstream-name . "fishdata")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fishdata")
    (synopsis "Small Collection of Fish Population Datasets")
    (description
     "This package provides a collection of four datasets based around the population
dynamics of migratory fish.  Datasets contain both basic size information on a
per fish basis, as well as otolith data that contains a per day record of fish
growth history.  All data in this package was collected by the author, from
2015-2016, in the Wellington region of New Zealand.")
    (license license:gpl3)))

(define-public r-fishbc
  (package
    (name "r-fishbc")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fishbc" version))
       (sha256
        (base32 "15mlr113qgndjhyry8img50jfk0si81kw2cdgl896b0g4djc5la3"))))
    (properties `((upstream-name . "fishbc")))
    (build-system r-build-system)
    (home-page "https://github.com/poissonconsulting/fishbc")
    (synopsis "Fishes of British Columbia")
    (description
     "This package provides raw and curated data on the codes, classification and
conservation status of freshwater fishes in British Columbia.  Marine fishes
will be added in a future release.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-fish
  (package
    (name "r-fish")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FiSh" version))
       (sha256
        (base32 "1fcs2y3diszypv7sr4vl75wizcxv0na0pqflmlrizs2w7kyw51p6"))))
    (properties `((upstream-name . "FiSh")))
    (build-system r-build-system)
    (propagated-inputs (list r-kernsmooth r-fda-usc))
    (home-page "https://cran.r-project.org/package=FiSh")
    (synopsis "Fisher-Shannon Method")
    (description
     "Proposes non-parametric estimates of the Fisher information measure and the
Shannon entropy power.  More theoretical and implementation details can be found
in Guignard et al. <doi:10.3389/feart.2020.00255>.  A python version of this
work is available on github and @code{PyPi} ('@code{FiShPy}').")
    (license license:expat)))

(define-public r-firebehavior
  (package
    (name "r-firebehavior")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "firebehavioR" version))
       (sha256
        (base32 "10krny60dkpgwjjnriap91qmrnfq1rl5ck4ynf4h6x016bv0m374"))))
    (properties `((upstream-name . "firebehavioR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=firebehavioR")
    (synopsis "Prediction of Wildland Fire Behavior and Hazard")
    (description
     "Fire behavior prediction models, including the Scott & Reinhardt's (2001)
Rothermel Wildland Fire Modelling System <DOI:10.2737/RMRS-RP-29> and Alexander
et al.'s (2006) Crown Fire Initiation & Spread model
<DOI:10.1016/j.foreco.2006.08.174>.  Also contains sample datasets, estimation
of fire behavior prediction model inputs (e.g., fuel moisture, canopy
characteristics, wind adjustment factor), results visualization, and methods to
estimate fire weather hazard.")
    (license license:gpl2)))

(define-public r-firebase
  (package
    (name "r-firebase")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "firebase" version))
       (sha256
        (base32 "1dw7w5kg0bmqxlikqqmpij5r4js5m7dcs9qrx4gd8a61j4099sr1"))))
    (properties `((upstream-name . "firebase")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-openssl
                             r-jsonlite
                             r-jose
                             r-htmltools
                             r-cli
                             r-base64enc))
    (home-page "https://firebase.john-coene.com/")
    (synopsis
     "Integrates 'Google Firebase' Authentication Storage, and 'Analytics' with 'Shiny'")
    (description
     "Authenticate users in Shiny applications using Google Firebase with any of the
many methods provided; email and password, email link, or using a third-party
provider such as Github', Twitter', or Google'.  Use Firebase Storage to store
files securely, and leverage Firebase Analytics to easily log events and better
understand your audience.")
    (license license:agpl3)))

(define-public r-fire
  (package
    (name "r-fire")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FiRE" version))
       (sha256
        (base32 "08xs4w7d3w4zrymq0sjpz34hmsd4lsd5989r660qdpg3ybpqx8lj"))))
    (properties `((upstream-name . "FiRE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-bh))
    (home-page "https://github.com/princethewinner/FiRE")
    (synopsis "Finder of Rare Entities (FiRE)")
    (description
     "The algorithm assigns rareness/ outlierness score to every sample in voluminous
datasets.  The algorithm makes multiple estimations of the proximity between a
pair of samples, in low-dimensional spaces.  To compute proximity, @code{FiRE}
uses Sketching, a variant of locality sensitive hashing.  For more details:
Jindal, A., Gupta, P., Jayadeva and Sengupta, D., 2018.  Discovery of rare cells
from voluminous single cell expression data.  Nature Communications, 9(1),
p.4719. <doi:10.1038/s41467-018-07234-6>.")
    (license license:gpl3)))

(define-public r-fipp
  (package
    (name "r-fipp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fipp" version))
       (sha256
        (base32 "0wr3czwsqwa1bpdcjk0r1739vjanxc0fv0vnl3r5lgykrbhw9v3r"))))
    (properties `((upstream-name . "fipp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fipp")
    (synopsis "Induced Priors in Bayesian Mixture Models")
    (description
     "Computes implicitly induced quantities from prior/hyperparameter specifications
of three Mixtures of Finite Mixtures models: Dirichlet Process Mixtures (DPMs;
Escobar and West (1995) <doi:10.1080/01621459.1995.10476550>), Static Mixtures
of Finite Mixtures (Static MFMs; Miller and Harrison (2018)
<doi:10.1080/01621459.2016.1255636>), and Dynamic Mixtures of Finite Mixtures
(Dynamic MFMs; @code{FrÃ¼hwirth-Schnatter}, Malsiner-Walli and @code{GrÃ¼n}
(2020) <@code{arXiv:2005.09918>}).  For methodological details, please refer to
Greve, @code{GrÃ¼n}, Malsiner-Walli and @code{FrÃ¼hwirth-Schnatter} (2020)
<@code{arXiv:2012.12337>}) as well as the package vignette.")
    (license license:gpl2)))

(define-public r-fipio
  (package
    (name "r-fipio")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fipio" version))
       (sha256
        (base32 "0wvx64nazbv44hdsj3q6mz70m81asmwgxp28sapaaal36l180jfs"))))
    (properties `((upstream-name . "fipio")))
    (build-system r-build-system)
    (home-page "https://fipio.justinsingh.me")
    (synopsis
     "Lightweight Federal Information Processing System (FIPS) Code Information Retrieval")
    (description
     "This package provides a lightweight suite of functions for retrieving
information about 5-digit or 2-digit US FIPS codes.")
    (license license:expat)))

(define-public r-fints
  (package
    (name "r-fints")
    (version "0.4-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinTS" version))
       (sha256
        (base32 "1lj1lzyglfphgas17j9isd7ama05m3qr0mkfisyh2w1srgqxi32r"))))
    (properties `((upstream-name . "FinTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo))
    (home-page "https://r-forge.r-project.org/projects/fints/")
    (synopsis "Companion to Tsay (2005) Analysis of Financial Time Series")
    (description
     "R companion to Tsay (2005) Analysis of Financial Time Series, second edition
(Wiley).  Includes data sets, functions and script files required to work some
of the examples.  Version 0.3-x includes R objects for all data files used in
the text and script files to recreate most of the analyses in chapters 1-3 and 9
plus parts of chapters 4 and 11.")
    (license license:gpl2+)))

(define-public r-finreportr
  (package
    (name "r-finreportr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finreportr" version))
       (sha256
        (base32 "145idg2c6qmqp29afalnhxxzky08j21dmm05mp3zf63aq9mq41d4"))))
    (properties `((upstream-name . "finreportr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xbrl
                             r-rvest
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sewardlee337/finreportr")
    (synopsis "Financial Data from U.S. Securities and Exchange Commission")
    (description
     "Download and display company financial data from the U.S. Securities and
Exchange Commission's EDGAR database.  It contains a suite of functions with web
scraping and XBRL parsing capabilities that allows users to extract data from
EDGAR in an automated and scalable manner.  See
<https://www.sec.gov/edgar/searchedgar/companysearch.html> for more information.")
    (license license:expat)))

(define-public r-finnts
  (package
    (name "r-finnts")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finnts" version))
       (sha256
        (base32 "01h027inzl56n8h6mqbmnkpy5hia70wdsh0agp7d1k0rkzwh3cia"))))
    (properties `((upstream-name . "finnts")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-workflows
                             r-vroom
                             r-tune
                             r-timetk
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-snakecase
                             r-rules
                             r-rsample
                             r-recipes
                             r-purrr
                             r-plyr
                             r-parsnip
                             r-modeltime
                             r-magrittr
                             r-lubridate
                             r-kernlab
                             r-hts
                             r-gtools
                             r-glue
                             r-glmnet
                             r-generics
                             r-fs
                             r-foreach
                             r-earth
                             r-dplyr
                             r-doparallel
                             r-digest
                             r-dials
                             r-cubist
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://microsoft.github.io/finnts/")
    (synopsis "Microsoft Finance Time Series Forecasting Framework")
    (description
     "Automated time series forecasting developed by Microsoft Finance.  The Microsoft
Finance Time Series Forecasting Framework, aka Finn, can be used to forecast any
component of the income statement, balance sheet, or any other area of interest
by finance.  Any numerical quantity over time, Finn can be used to forecast it.
While it can be applied outside of the finance domain, Finn was built to meet
the needs of financial analysts to better forecast their businesses within a
company, and has a lot of built in features that are specific to the needs of
financial forecasters.  Happy forecasting!")
    (license license:expat)))

(define-public r-finnishgrid
  (package
    (name "r-finnishgrid")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finnishgrid" version))
       (sha256
        (base32 "0gndrllz3y7yqrg5vw6ba7dg7hn4w3085rpy7h9hdd8swxqfvlc6"))))
    (properties `((upstream-name . "finnishgrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/virmar/finnishgrid")
    (synopsis "'Fingrid Open Data API' R Client")
    (description
     "R API client package for Fingrid Open Data on the electricity market and the
power system.  get_data() function holds the main application logic to retrieve
time-series data.  API calls require free user account registration.")
    (license license:expat)))

(define-public r-finnet
  (package
    (name "r-finnet")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinNet" version))
       (sha256
        (base32 "1pfzdxprjh7nz2p7gvlss9hbkxb50l9v9z37hmf6xx4983a62z9z"))))
    (properties `((upstream-name . "FinNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://fatelarico.github.io/FinNet.html")
    (synopsis "Quickly Build and Manipulate Financial Networks")
    (description
     "Providing classes, methods, and functions to deal with financial networks.
Users can easily store information about both physical and legal persons by
using pre-made classes that are studied for integration with scraping packages
such as rvest and RSelenium'.  Moreover, the package assists in creating various
types of financial networks depending on the type of relation between its units
depending on the relation under scrutiny (ownership, board interlocks, etc.),
the desired tie type (valued or binary), and renders them in the most common
formats (adjacency matrix, incidence matrix, edge list, igraph', network').")
    (license license:gpl3+)))

(define-public r-finity
  (package
    (name "r-finity")
    (version "0.1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finity" version))
       (sha256
        (base32 "0xs3vx0vj165hj4dq8ivrdf6fcvj23zhp2ai79rgpyb5rr5ndkvc"))))
    (properties `((upstream-name . "finity")))
    (build-system r-build-system)
    (propagated-inputs (list r-stabledist r-rcpparmadillo r-rcpp r-bh))
    (home-page "https://cran.r-project.org/package=finity")
    (synopsis "Test for Finiteness of Moments in a Distribution")
    (description
     "The purpose of this package is to tests whether a given moment of the
distribution of a given sample is finite or not.  For heavy-tailed distributions
with tail exponent b, only moments of order smaller than b are finite.  Tail
exponent and heavy- tailedness are notoriously difficult to ascertain.  But the
finiteness of moments (including fractional moments) can be tested directly.
This package does that following the test suggested by Trapani (2016)
<doi:10.1016/j.jeconom.2015.08.006>.")
    (license license:gpl2+)))

(define-public r-finiteruinprob
  (package
    (name "r-finiteruinprob")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finiteruinprob" version))
       (sha256
        (base32 "0z4l0crymh58chxniqq70fqmvi6f5jkgvz72vbc7s3l9lrrapgr3"))))
    (properties `((upstream-name . "finiteruinprob")))
    (build-system r-build-system)
    (propagated-inputs (list r-sdprisk r-numderiv))
    (home-page "https://cran.r-project.org/package=finiteruinprob")
    (synopsis
     "Computation of the Probability of Ruin Within a Finite Time Horizon")
    (description
     "In the @code{CramÃ©râLundberg} risk process perturbed by a Wiener process,
this packages provides approximations to the probability of ruin within a finite
time horizon.  Currently, there are three methods implemented: The first one
uses saddlepoint approximation (two variants are provided), the second one uses
importance sampling and the third one is based on the simulation of a dual
process.  This last method is not very accurate and only given here for
completeness.")
    (license license:agpl3)))

(define-public r-fingraph
  (package
    (name "r-fingraph")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fingraph" version))
       (sha256
        (base32 "130kfhxxxf6cg7ww71nfrwhwrkp52v7zc0qarpjv84826k00cpcq"))))
    (properties `((upstream-name . "fingraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectralgraphtopology r-progress r-mvtnorm
                             r-mass))
    (home-page "https://github.com/convexfi/fingraph/")
    (synopsis "Learning Graphs for Financial Markets")
    (description
     "Learning graphs for financial markets with optimization algorithms.  This
package contains implementations of the algorithms described in the paper:
Cardoso JVM, Ying J, and Palomar DP (2021)
<https://papers.nips.cc/paper/2021/hash/a64a034c3cb8eac64eb46ea474902797-Abstract.html>
\"Learning graphs in heavy-tailed markets\", Advances in Neural Informations
Processing Systems (@code{NeurIPS}).")
    (license license:gpl3)))

(define-public r-fingerpro
  (package
    (name "r-fingerpro")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fingerPro" version))
       (sha256
        (base32 "1a1lj8gyrbgcg8hr03cj2bjzlaafddspri7abc83ys1raqwd4j68"))))
    (properties `((upstream-name . "fingerPro")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rgl
                             r-reshape
                             r-rcppprogress
                             r-rcppgsl
                             r-rcpp
                             r-rcmdr
                             r-plyr
                             r-mass
                             r-klar
                             r-gridextra
                             r-ggplot2
                             r-ggally
                             r-car))
    (home-page "https://github.com/eead-csic-eesa")
    (synopsis "Sediment Source Fingerprinting")
    (description
     "Quantifies the provenance of the sediments in a catchment or study area.  Based
on a comprehensive characterization of the sediment sources and the end sediment
mixtures a mixing model algorithm is applied to the sediment mixtures in order
to estimate the relative contribution of each potential source.  The package
includes several statistical methods such as Kruskal-Wallis test, discriminant
function analysis ('DFA'), principal component plot ('PCA') to select the
optimal subset of tracer properties.  The variability within each sediment
source is also considered to estimate the statistical distribution of the
sources contribution.")
    (license license:gpl2+)))

(define-public r-finetune
  (package
    (name "r-finetune")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finetune" version))
       (sha256
        (base32 "1axcfjkdhpfx60rf14ywizmzxsl8ac5amqx8s2lv8hb2ahqs13yi"))))
    (properties `((upstream-name . "finetune")))
    (build-system r-build-system)
    (propagated-inputs (list r-workflows
                             r-vctrs
                             r-tune
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-parsnip
                             r-ggplot2
                             r-dplyr
                             r-dials
                             r-cli))
    (home-page "https://github.com/tidymodels/finetune")
    (synopsis "Additional Functions for Model Tuning")
    (description
     "The ability to tune models is important.  finetune enhances the tune package by
providing more specialized methods for finding reasonable values of model tuning
parameters.  Two racing methods described by Kuhn (2014)
<@code{arXiv:1405.6974>} are included.  An iterative search method using
generalized simulated annealing (Bohachevsky, Johnson and Stein, 1986)
<doi:10.1080/00401706.1986.10488128> is also included.")
    (license license:expat)))

(define-public r-finepop2
  (package
    (name "r-finepop2")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinePop2" version))
       (sha256
        (base32 "1rzsbxbxynn0pl6dlkmsjxiph403ffwlb2brsi8cm4r22jjhcx4i"))))
    (properties `((upstream-name . "FinePop2")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FinePop2")
    (synopsis
     "Fine-Scale Population Analysis (Rewrite for Gene-Trait-Environment Interaction Analysis)")
    (description
     "Statistical tool set for population genetics.  The package provides following
functions: 1) estimators of genetic differentiation (FST), 2) regression
analysis of environmental effects on genetic differentiation using generalized
least squares (GLS) method, 3) interfaces to read and manipulate GENEPOP format
data files).  For more information, see Kitada, Nakamichi and Kishino (2020)
<doi:10.1101/2020.01.30.927186>.")
    (license license:gpl2+)))

(define-public r-finepop
  (package
    (name "r-finepop")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinePop" version))
       (sha256
        (base32 "184707yvh2mydx42vxrdgv0n4v2dad4an7c4yvlyb9d7z6h0sw2x"))))
    (properties `((upstream-name . "FinePop")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FinePop")
    (synopsis "Fine-Scale Population Analysis")
    (description
     "Statistical tool set for population genetics.  The package provides following
functions: 1) empirical Bayes estimator of Fst and other measures of genetic
differentiation, 2) regression analysis of environmental effects on genetic
differentiation using bootstrap method, 3) interfaces to read and manipulate
GENEPOP format data files and allele/haplotype frequency format files.")
    (license license:gpl2+)))

(define-public r-findviews
  (package
    (name "r-findviews")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findviews" version))
       (sha256
        (base32 "1l1yhw5hvrn0rpkdsch8m69d2q5284jwccvv7r4ia4m0iqjfipj7"))))
    (properties `((upstream-name . "findviews")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-scales r-gridextra r-ggplot2))
    (home-page "https://github.com/tsellam/findviews")
    (synopsis "View Generator for Multidimensional Data")
    (description
     "This package provides a tool to explore wide data sets, by detecting, ranking
and plotting groups of statistically dependent columns.")
    (license license:expat)))

(define-public r-findsvi
  (package
    (name "r-findsvi")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findSVI" version))
       (sha256
        (base32 "1m40v46gl34dhndf8gl3x4l1zwjkz7bfwhbzkf7qscrvfz4lbh7g"))))
    (properties `((upstream-name . "findSVI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tidycensus
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/heli-xu/findSVI")
    (synopsis "Calculate Social Vulnerability Index for Communities")
    (description
     "Developed by CDC/ATSDR (Centers for Disease Control and Prevention/ Agency for
Toxic Substances and Disease Registry), Social Vulnerability Index (SVI) serves
as a tool to assess the resilience of communities by taking into account
socioeconomic and demographic factors.  Provided with year(s), region(s) and a
geographic level of interest, @code{findSVI} retrieves required variables from
US census data and calculates SVI for communities in the specified area based on
CDC/ATSDR SVI documentation.  Reference for the calculation methods: Flanagan
BE, Gregory EW, Hallisey EJ, Heitgerd JL, Lewis B (2011)
<doi:10.2202/1547-7355.1792>.")
    (license license:expat)))

(define-public r-findr
  (package
    (name "r-findr")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findR" version))
       (sha256
        (base32 "1a7cf6kd7i2l4ffr2b17nb9xnpsjhf6fcwpjy06r0qgcapnfp54b"))))
    (properties `((upstream-name . "findR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-pdftools))
    (home-page "https://cran.r-project.org/package=findR")
    (synopsis
     "Find Code Snippets, R Scripts, R Markdown, PDF and Text Files with Pattern Matching")
    (description
     "Scans all directories and subdirectories of a path for code snippets, R scripts,
R Markdown, PDF or text files containing a specific pattern.  Files found can be
copied to a new folder.")
    (license license:gpl3)))

(define-public r-findpackage
  (package
    (name "r-findpackage")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findPackage" version))
       (sha256
        (base32 "0g6i512ls79hg0ck0frhadpxvvayzbdcj48rbpawhc5bphjsbcfx"))))
    (properties `((upstream-name . "findPackage")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "<https://CRAN.R-project.org/package=findPackage>")
    (synopsis "Find 'CRAN' Package by Topic")
    (description
     "Finds CRAN packages by the topic requested.  The topic can be given as a
character string or as a regular expression and will help users to locate CRAN
packages matching their specified requirement. @code{findPackage(<string>})
returns a data frame of packages with description containing the input string.")
    (license license:gpl3)))

(define-public r-findit
  (package
    (name "r-findit")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FindIt" version))
       (sha256
        (base32 "0zrvkvj907fw86jnzzlwk4d90hi42nq45jprp16xryxb7xxii6i8"))))
    (properties `((upstream-name . "FindIt")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich
                             r-quadprog
                             r-matrix
                             r-lmtest
                             r-limsolve
                             r-lars
                             r-igraph
                             r-glmnet
                             r-glinternet
                             r-arm))
    (home-page "https://cran.r-project.org/package=FindIt")
    (synopsis "Finding Heterogeneous Treatment Effects")
    (description
     "The heterogeneous treatment effect estimation procedure proposed by Imai and
Ratkovic (2013)<DOI: 10.1214/12-AOAS593>.  The proposed method is applicable,
for example, when selecting a small number of most (or least) efficacious
treatments from a large number of alternative treatments as well as when
identifying subsets of the population who benefit (or are harmed by) a treatment
of interest.  The method adapts the Support Vector Machine classifier by placing
separate LASSO constraints over the pre-treatment parameters and causal
heterogeneity parameters of interest.  This allows for the qualitative
distinction between causal and other parameters, thereby making the variable
selection suitable for the exploration of causal heterogeneity.  The package
also contains a class of functions, @code{CausalANOVA}, which estimates the
average marginal interaction effects (AMIEs) by a regularized ANOVA as proposed
by Egami and Imai (2019)<DOI:10.1080/01621459.2018.1476246>.  It contains a
variety of regularization techniques to facilitate analysis of large factorial
experiments.")
    (license license:gpl2+)))

(define-public r-findingit
  (package
    (name "r-findingit")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findInGit" version))
       (sha256
        (base32 "1j5mvp34nsczmvp5jx7c9gp20q7aqaxrqm2zvj8aq31rc8mfaxk9"))))
    (properties `((upstream-name . "findInGit")))
    (build-system r-build-system)
    (inputs (list grep git))
    (propagated-inputs (list r-stringr r-htmlwidgets r-crayon))
    (home-page "https://github.com/stla/findInGit")
    (synopsis "Find Pattern in Files of All Branches of a 'git' Repository")
    (description
     "This package creates a HTML widget which displays the results of searching for a
pattern in files in a given git repository, including all its branches.  The
results can also be returned in a dataframe.")
    (license license:gpl3)))

(define-public r-findinfiles
  (package
    (name "r-findinfiles")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "findInFiles" version))
       (sha256
        (base32 "1saxi8l4006wwxrw18g7wx0pj7l427a2rnb723k0irlhvq0icgwq"))))
    (properties `((upstream-name . "findInFiles")))
    (build-system r-build-system)
    (inputs (list grep))
    (propagated-inputs (list r-vctrs
                             r-tibble
                             r-stringr
                             r-stringi
                             r-shiny
                             r-htmlwidgets
                             r-crayon))
    (home-page "https://github.com/stla/findInFiles")
    (synopsis "Find Pattern in Files")
    (description
     "This package creates a HTML widget which displays the results of searching for a
pattern in files in a given folder.  The results can be viewed in the RStudio
viewer pane, included in a R Markdown document or in a Shiny app.  Also provides
a Shiny application allowing to run the widget and to navigate in the results.")
    (license license:gpl3)))

(define-public r-fincovregularization
  (package
    (name "r-fincovregularization")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinCovRegularization" version))
       (sha256
        (base32 "0h3i46s0rpqvgnqgjwqrlrfa3vv5jn2hm6bqc0ijwmrr9f80g4ir"))))
    (properties `((upstream-name . "FinCovRegularization")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog))
    (home-page "http://github.com/yanyachen/FinCovRegularization")
    (synopsis "Covariance Matrix Estimation and Regularization for Finance")
    (description
     "Estimation and regularization for covariance matrix of asset returns.  For
covariance matrix estimation, three major types of factor models are included:
macroeconomic factor model, fundamental factor model and statistical factor
model.  For covariance matrix regularization, four regularized estimators are
included: banding, tapering, hard-thresholding and soft- thresholding.  The
tuning parameters of these regularized estimators are selected via
cross-validation.")
    (license license:gpl2)))

(define-public r-finch
  (package
    (name "r-finch")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finch" version))
       (sha256
        (base32 "0q7riaxms460c6z2gb8i0q4pb348bnvry46bjd7pb9mh8fnl1i8b"))))
    (properties `((upstream-name . "finch")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-hoardr r-eml r-digest r-data-table))
    (home-page "https://docs.ropensci.org/finch/")
    (synopsis "Parse Darwin Core Files")
    (description
     "Parse and create Darwin Core (<http://rs.tdwg.org/dwc/>) Simple and Archives.
Functionality includes reading and parsing all the files in a Darwin Core
Archive, including the datasets and metadata; read and parse simple Darwin Core
files; and validation of Darwin Core Archives.")
    (license license:expat)))

(define-public r-fincal
  (package
    (name "r-fincal")
    (version "0.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinCal" version))
       (sha256
        (base32 "1clvnvhpf2krrf8flhmdxmys6ym3xw3v4v07kk1if4xb0dfk9wgy"))))
    (properties `((upstream-name . "FinCal")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcurl r-ggplot2))
    (home-page "http://felixfan.github.io/FinCal/")
    (synopsis
     "Time Value of Money, Time Series Analysis and Computational Finance")
    (description
     "Package for time value of money calculation, time series analysis and
computational finance.")
    (license license:gpl2+)))

(define-public r-finbipartite
  (package
    (name "r-finbipartite")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finbipartite" version))
       (sha256
        (base32 "0sws39nya8y7v78v4nlaz5g2nj4sgq5n5iwhfkyyq6h87slw2h8c"))))
    (properties `((upstream-name . "finbipartite")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectralgraphtopology
                             r-quadprog
                             r-progress
                             r-mvtnorm
                             r-mass
                             r-cvxr))
    (home-page "https://github.com/convexfi/bipartite/")
    (synopsis "Learning Bipartite Graphs: Heavy Tails and Multiple Components")
    (description
     "Learning bipartite and k-component bipartite graphs from financial datasets.
This package contains implementations of the algorithms described in the paper:
Cardoso JVM, Ying J, and Palomar DP (2022).
<https://openreview.net/pdf?id=WN@code{SyF9qZaMd>} \"Learning bipartite graphs:
heavy tails and multiple components, Advances in Neural Informations Processing
Systems\" (@code{NeurIPS}).")
    (license license:gpl3)))

(define-public r-finbif
  (package
    (name "r-finbif")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finbif" version))
       (sha256
        (base32 "122jhz1xvf75y61nwjlvclcrkqb1ya8yfzb3qimi0ylz8c3xfw78"))))
    (properties `((upstream-name . "finbif")))
    (build-system r-build-system)
    (propagated-inputs (list r-lutz r-lubridate r-httr r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luomus/finbif")
    (synopsis
     "Interface for the 'Finnish Biodiversity Information Facility' API")
    (description
     "This package provides a programmatic interface to the Finnish Biodiversity
Information Facility ('@code{FinBIF}') API (<https://api.laji.fi>).
@code{FinBIF} aggregates Finnish biodiversity data from multiple sources in a
single open access portal for researchers, citizen scientists, industry and
government. @code{FinBIF} allows users of biodiversity information to find,
access, combine and visualise data on Finnish plants, animals and
microorganisms.  The finbif package makes the publicly available data in
@code{FinBIF} easily accessible to programmers.  Biodiversity information is
available on taxonomy and taxon occurrence.  Occurrence data can be filtered by
taxon, time, location and other variables.  The data accessed are conveniently
preformatted for subsequent analyses.")
    (license license:expat)))

(define-public r-finasym
  (package
    (name "r-finasym")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinAsym" version))
       (sha256
        (base32 "0v15ydz4sq9djwcdcfp90mk8l951rry7h91d7asgg53mddbxjj6f"))))
    (properties `((upstream-name . "FinAsym")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FinAsym")
    (synopsis
     "Classifies implicit trading activity from market quotes and computes the probability of informed trading")
    (description
     "This package accomplishes two tasks: a) it classifies implicit trading activity
from quotes in OTC markets using the algorithm of Lee and Ready (1991); b) based
on information for trade initiation, the package computes the probability of
informed trading of Easley and O'Hara (1987).")
    (license license:gpl3)))

(define-public r-financialmath
  (package
    (name "r-financialmath")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinancialMath" version))
       (sha256
        (base32 "11nhphvd7bvbc7xfs85rib763r1mpvxmsj6hgzfib5aifib5k5js"))))
    (properties `((upstream-name . "FinancialMath")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FinancialMath")
    (synopsis "Financial Mathematics for Actuaries")
    (description
     "This package contains financial math functions and introductory derivative
functions included in the Society of Actuaries and Casualty Actuarial Society
Financial Mathematics exam, and some topics in the Models for Financial
Economics exam.")
    (license license:gpl2)))

(define-public r-financialinstrument
  (package
    (name "r-financialinstrument")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinancialInstrument" version))
       (sha256
        (base32 "0f1zaclrcmpkdhcfc8a09f7lsf2b7gfyd7js3173qckn84a01f3w"))))
    (properties `((upstream-name . "FinancialInstrument")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-ttr r-quantmod))
    (home-page "https://github.com/braverock/FinancialInstrument")
    (synopsis "Financial Instrument Model Infrastructure and Meta-Data")
    (description
     "Infrastructure for defining meta-data and relationships for financial
instruments.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-finana
  (package
    (name "r-finana")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FinAna" version))
       (sha256
        (base32 "09svg5z52vv90ih85awgh6ns3pqi789qjm2wi1gb9hbg9v5g7pdv"))))
    (properties `((upstream-name . "FinAna")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FinAna")
    (synopsis "Financial Analysis and Regression Diagnostic Analysis")
    (description
     "This package provides functions for financial analysis and financial modeling,
including batch graphs generation, beta calculation, descriptive statistics,
annuity calculation, bond pricing and financial data download.")
    (license license:gpl2+)))

(define-public r-finalsize
  (package
    (name "r-finalsize")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finalsize" version))
       (sha256
        (base32 "18nyyl8c121kfr22vanvgbma627w98v39d4n34kr8hd8iw8jx5lx"))))
    (properties `((upstream-name . "finalsize")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/epiverse-trace/finalsize")
    (synopsis "Calculate the Final Size of an Epidemic")
    (description
     "Calculate the final size of a susceptible-infectious-recovered epidemic in a
population with demographic variation in contact patterns and susceptibility to
disease, as discussed in Miller (2012) <doi:10.1007/s11538-012-9749-6>.")
    (license license:expat)))

(define-public r-finalfit
  (package
    (name "r-finalfit")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "finalfit" version))
       (sha256
        (base32 "16jbmzs5hx328vvggk5g3q5rmyaf82dmxgifjv28w2lb80ryjay1"))))
    (properties `((upstream-name . "finalfit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-survival
                             r-stringr
                             r-scales
                             r-purrr
                             r-proc
                             r-pillar
                             r-mice
                             r-magrittr
                             r-lme4
                             r-gridextra
                             r-ggplot2
                             r-ggally
                             r-forcats
                             r-dplyr
                             r-broom
                             r-boot
                             r-bdsmatrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ewenharrison/finalfit")
    (synopsis
     "Quickly Create Elegant Regression Results Tables and Plots when Modelling")
    (description
     "Generate regression results tables and plots in final format for publication.
Explore models and export directly to PDF and Word using RMarkdown'.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-fimport
  (package
    (name "r-fimport")
    (version "4021.86")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fImport" version))
       (sha256
        (base32 "011hrbwxf6v4abxsk4zw26awnh1nxmn3vgsx58awbx2jg6gcc9cj"))))
    (properties `((upstream-name . "fImport")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate))
    (home-page
     "https://r-forge.r-project.org/scm/viewvc.php/pkg/fImport/?root=rmetrics")
    (synopsis "Rmetrics - Importing Economic and Financial Data")
    (description
     "This package provides a collection of utility functions to download and manage
data sets from the Internet or from other sources.")
    (license license:gpl2+)))

(define-public r-filternhp
  (package
    (name "r-filternhp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filterNHP" version))
       (sha256
        (base32 "0kk6548nr5786ywa83v8by4c1n7ljh9sy4fshpfqizp49fv9zv22"))))
    (properties `((upstream-name . "filterNHP")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-rclipboard
                             r-data-tree))
    (home-page "https://cran.r-project.org/package=filterNHP")
    (synopsis "Non-Human Primate Search Filters")
    (description
     "Generate search filters to query scientific bibliographic sources, such as
@code{PubMed} and Web of Science, for non-human primate related publications.")
    (license license:agpl3+)))

(define-public r-filterjsats
  (package
    (name "r-filterjsats")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filteRjsats" version))
       (sha256
        (base32 "19zi44av3f5zahinqvgz5bvgh82qrpg4r4fffwjh8a09s975q5mg"))))
    (properties `((upstream-name . "filteRjsats")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rerddap
                             r-lubridate
                             r-dplyr
                             r-broman))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=filteRjsats")
    (synopsis
     "Filter Raw JSATS Acoustic Telemetry Files from Lotek, ATS, Teknologic")
    (description
     "Filtering of raw acoustic telemetry transmissions from three acoustic telemetry
companies (ATS, Lotek, Teknologic).  The filtering steps check for false
positives caused by reflected transmissions from surfaces and false pings from
other noise generating equipment.  The filter is unique for each technology
type.  The package was written in concert with the Interagency Telemetry
Advisory Group (@code{iTAG}) and makes use of the JSATS California Fish Tracking
Database: <https://oceanview.pfeg.noaa.gov/@code{CalFishTrack/>}.")
    (license license:gpl3+)))

(define-public r-fillr
  (package
    (name "r-fillr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fillr" version))
       (sha256
        (base32 "1gx1ihp8j90ywmm6mmmfq4jd6apxawk9s5dfw3jq0wm1c290zqpv"))))
    (properties `((upstream-name . "fillr")))
    (build-system r-build-system)
    (home-page "https://jelger12.github.io/fillr/")
    (synopsis "Fill Missing Values in Vectors")
    (description
     "Edit vectors to fill missing values, based on the vector itself.")
    (license license:expat)))

(define-public r-filling
  (package
    (name "r-filling")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filling" version))
       (sha256
        (base32 "17vk0pndsc8xhgp4zy5dfyc36pzk2hm5zk6xijdy4xaf7k5j4wls"))))
    (properties `((upstream-name . "filling")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-roptspace
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-nabor
                             r-cvxr))
    (home-page "https://cran.r-project.org/package=filling")
    (synopsis "Matrix Completion, Imputation, and Inpainting Methods")
    (description
     "Filling in the missing entries of a partially observed data is one of
fundamental problems in various disciplines of mathematical science.  For many
cases, data at our interests have canonical form of matrix in that the problem
is posed upon a matrix with missing values to fill in the entries under preset
assumptions and models.  We provide a collection of methods from multiple
disciplines under Matrix Completion, Imputation, and Inpainting.  See Davenport
and Romberg (2016) <doi:10.1109/JSTSP.2016.2539100> for an overview of the
topic.")
    (license license:expat)))

(define-public r-filest
  (package
    (name "r-filest")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FILEST" version))
       (sha256
        (base32 "0x95in9yad93j8kbxjykz04x756i1c1cq854c220cc0l3rm3npnl"))))
    (properties `((upstream-name . "FILEST")))
    (build-system r-build-system)
    (propagated-inputs (list r-rarpack r-kris))
    (home-page "https://gitlab.com/kris.ccp/filest")
    (synopsis "Fine-Level Structure Simulator")
    (description
     "This package provides a population genetic simulator, which is able to generate
synthetic datasets for single-nucleotide polymorphisms (SNP) for multiple
populations.  The genetic distances among populations can be set according to
the Fixation Index (Fst) as explained in Balding and Nichols (1995)
<doi:10.1007/BF01441146>.  This tool is able to simulate outlying individuals
and missing SNPs can be specified.  For Genome-wide association study (GWAS),
disease status can be set in desired level according risk ratio.")
    (license license:expat)))

(define-public r-files
  (package
    (name "r-files")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "files" version))
       (sha256
        (base32 "1vhhawqjjbb6fadkn3l10mvz63w3vmcwvl93fk0q9mhkifzlj9kc"))))
    (properties `((upstream-name . "files")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=files")
    (synopsis "Effective File Navigation from the R Console")
    (description
     "This package provides functions for printing the contents of a folder as columns
in a ragged-bottom data.frame and for viewing the details (size, time created,
time modified, etc.) of a folder's top level contents.")
    (license license:gpl3)))

(define-public r-filenamer
  (package
    (name "r-filenamer")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filenamer" version))
       (sha256
        (base32 "19gavhh5q7dziv0yc000w06qp58wk2cm52cxjl33p1q4cjk6gg3m"))))
    (properties `((upstream-name . "filenamer")))
    (build-system r-build-system)
    (home-page "https://bitbucket.org/djhshih/filenamer")
    (synopsis "Easy Management of File Names")
    (description
     "Create descriptive file names with ease.  New file names are automatically (but
optionally) time stamped and placed in date stamped directories.  Streamline
your analysis pipeline with input and output file names that have informative
tags and proper file extensions.")
    (license license:gpl3+)))

(define-public r-filehashsqlite
  (package
    (name "r-filehashsqlite")
    (version "0.2-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filehashSQLite" version))
       (sha256
        (base32 "1758wpzq2h7biwpdlrqhi84k35fbpfpxnji6j79zisr825fqjkpq"))))
    (properties `((upstream-name . "filehashSQLite")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-filehash r-dbi))
    (home-page "https://github.com/rdpeng/filehashsqlite")
    (synopsis "Simple Key-Value Database Using SQLite")
    (description "Simple key-value database using SQLite as the back end.")
    (license license:gpl2+)))

(define-public r-filecacher
  (package
    (name "r-filecacher")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filecacher" version))
       (sha256
        (base32 "15v8wklny6sb9s309im6i9ibkrvnrbvyw8gckb2vxxyvx971qcg0"))))
    (properties `((upstream-name . "filecacher")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-rlang
                             r-purrr
                             r-here
                             r-glue
                             r-cachem))
    (home-page "https://github.com/orgadish/filecacher")
    (synopsis "File Cacher")
    (description
     "The main functions in this package are with_cache() and cached_read().  The
former is a simple way to cache an R object into a file on disk, using cachem'.
The latter is a wrapper around any standard read function, but caches both the
output and the file list info.  If the input file list info hasn't changed, the
cache is used; otherwise, the original files are re-read.  This can save time if
the original operation requires reading from many files, and/or involves lots of
processing.")
    (license license:expat)))

(define-public r-filebin
  (package
    (name "r-filebin")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filebin" version))
       (sha256
        (base32 "006fj66y9sb9i58na85bpv1ilwka9vcwmqkwpc3ax95vigy36n5j"))))
    (properties `((upstream-name . "filebin")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringi
                             r-purrr
                             r-logger
                             r-janitor
                             r-httr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=filebin")
    (synopsis "Wrapper for the Filebin File Sharing API")
    (description
     "This package provides a wrapper for the Filebin API. Filebin implements
convenient file sharing on the web.")
    (license license:gpl3)))

(define-public r-filearray
  (package
    (name "r-filearray")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "filearray" version))
       (sha256
        (base32 "1xf48fgf70s9h5gjls8625m553lkdbinnz89nxn05l9wakhf5qgv"))))
    (properties `((upstream-name . "filearray")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid r-rcpp r-fastmap r-digest r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://dipterix.org/filearray/")
    (synopsis "File-Backed Array for Out-of-Memory Computation")
    (description
     "Stores large arrays in files to avoid occupying large memories.  Implemented
with super fast gigabyte-level multi-threaded reading/writing via
@code{OpenMP}'.  Supports multiple non-character data types (double, float,
complex, integer, logical, and raw).")
    (license license:lgpl3)))

(define-public r-file2meco
  (package
    (name "r-file2meco")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "file2meco" version))
       (sha256
        (base32 "1m1kp0hkhyql55ac84i7mcfihpc97ypvrhvnvy3yv86kyj8b4gzn"))))
    (properties `((upstream-name . "file2meco")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-rhdf5
                             r-microeco
                             r-matrix
                             r-magrittr
                             r-dplyr
                             r-ape))
    (home-page "https://github.com/ChiLiubio/file2meco")
    (synopsis "Transform Files to 'microtable' Object with 'microeco' Package")
    (description
     "Transform output files of some tools to the microtable object of microtable
class in microeco package.  The microtable class is the basic class in microeco
package and is necessary for the downstream microbial community data analysis.")
    (license license:gpl3)))

(define-public r-figures2
  (package
    (name "r-figures2")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "figuRes2" version))
       (sha256
        (base32 "1s1bvhgzczkpxfmi1cyz4cfvpxvq28fm5867a4w5q0wpjcbhlma4"))))
    (properties `((upstream-name . "figuRes2")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-stringr
                             r-scales
                             r-reshape2
                             r-plyr
                             r-gtable
                             r-gridextra
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gcicc/figures2")
    (synopsis "Support for a Variety of Figure Production Tasks")
    (description
     "We view a figure as a collection of graphs/tables assembled on a page and
optionally annotated with metadata (titles, headers and footers).  Functions and
supporting documentation are offered to streamline a variety of figure
production task.")
    (license license:gpl2)))

(define-public r-figpatch
  (package
    (name "r-figpatch")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "figpatch" version))
       (sha256
        (base32 "0sy63131al6z0hlhpb11aphlxdigb0pqk9bq9mxc9nbc59036jjq"))))
    (properties `((upstream-name . "figpatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-patchwork r-magrittr r-magick r-ggplot2))
    (home-page "https://github.com/BradyAJohnston/figpatch")
    (synopsis
     "Easily Arrange External Figures with Patchwork Alongside 'ggplot2' Figures")
    (description
     "For including external figures into an assembled {patchwork}.  This enables the
creation of more complex figures that include images alongside plots.")
    (license license:expat)))

(define-public r-figma
  (package
    (name "r-figma")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "figma" version))
       (sha256
        (base32 "0031sz7nbnlhv9iqaandq9sscxsy29p82s3c63z89jin4dkfjq4x"))))
    (properties `((upstream-name . "figma")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pedropark99/figma")
    (synopsis "Web Client/Wrapper to the 'Figma API'")
    (description
     "An easy-to-use web client/wrapper for the Figma API
<https://www.figma.com/developers/api>.  It allows you to bring all data from a
Figma file to your R session.  This includes the data of all objects that you
have drawn in this file, and their respective canvas/page metadata.")
    (license license:expat)))

(define-public r-figir
  (package
    (name "r-figir")
    (version "0.1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "figir" version))
       (sha256
        (base32 "1vkx9q889lcm62101qsbq1yb542y1b3b7gc23xf57vwp2h1wfb84"))))
    (properties `((upstream-name . "figir")))
    (build-system r-build-system)
    (home-page "https://github.com/philaris/figir")
    (synopsis "Check Validity of FIGI, CUSIP, ISIN, SEDOL")
    (description
     "With the functions in this package you can check the validity of the following
financial instrument identifiers: FIGI (Financial Instrument Global Identifier
<https://www.openfigi.com/about/figi>), CUSIP (Committee on Uniform Security
Identification Procedures <https://www.cusip.com/identifiers.html#/CUSIP>), ISIN
(International Securities Identification Number
<https://www.cusip.com/identifiers.html#/ISIN>), SEDOL (Stock Exchange Daily
Official List <https://www2.lseg.com/SEDOL-masterfile-service-tech-guide-v8.6>).
 You can also calculate the FIGI checksum of 11-character strings, which can be
useful if you want to create your own FIGI identifiers.")
    (license license:expat)))

(define-public r-fig
  (package
    (name "r-fig")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fig" version))
       (sha256
        (base32 "1mzvng4r4xmkmbl55pspjk9bcvkri96vkmjaqkjn8nqxv39sy1pr"))))
    (properties `((upstream-name . "fig")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (home-page "https://github.com/TymekDev/fig")
    (synopsis "Config Package with No \"Con\"")
    (description
     "Work with configs with a source precedence.  Either create own R6 instance or
work with convenient functions at a package level.")
    (license license:expat)))

(define-public r-fiestautils
  (package
    (name "r-fiestautils")
    (version "1.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FIESTAutils" version))
       (sha256
        (base32 "0md6wm3v6hmcq7difysxvf7l7rka0l7n3c6daqimkmvr03ncxahg"))))
    (properties `((upstream-name . "FIESTAutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-terra
                             r-sqldf
                             r-sf
                             r-sae
                             r-rsqlite
                             r-rpostgresql
                             r-rcpp
                             r-rcolorbrewer
                             r-nlme
                             r-mase
                             r-josae
                             r-hbsae
                             r-gdalraster
                             r-dbi
                             r-data-table))
    (home-page "https://github.com/USDAForestService/FIESTAutils")
    (synopsis "Utility Functions for Forest Inventory Estimation and Analysis")
    (description
     "This package provides a set of tools for data wrangling, spatial data analysis,
statistical modeling (including direct, model-assisted, photo-based, and small
area tools), and USDA Forest Service data base tools.  These tools are aimed to
help Foresters, Analysts, and Scientists extract and perform analyses on USDA
Forest Service data.")
    (license license:gpl3)))

(define-public r-fiesta
  (package
    (name "r-fiesta")
    (version "3.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FIESTA" version))
       (sha256
        (base32 "1bq292msy0wssc0rysm0w9lw86b70sa3gzya68qb6ik5g0zs8sqh"))))
    (properties `((upstream-name . "FIESTA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf
                             r-sf
                             r-rsqlite
                             r-gdalraster
                             r-fiestautils
                             r-dbi
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FIESTA")
    (synopsis "Forest Inventory Estimation and Analysis")
    (description
     "This package provides a research estimation tool for analysts that work with
sample-based inventory data from the U.S. Department of Agriculture, Forest
Service, Forest Inventory and Analysis (FIA) Program.")
    (license license:gpl3)))

(define-public r-fiery
  (package
    (name "r-fiery")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fiery" version))
       (sha256
        (base32 "12mw8rha0mmv6r2s42k4gddafsnff29ijwsxyhcn0nc48qqniszd"))))
    (properties `((upstream-name . "fiery")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid
                             r-stringi
                             r-rlang
                             r-reqres
                             r-r6
                             r-parallelly
                             r-later
                             r-httpuv
                             r-glue
                             r-future
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://fiery.data-imaginist.com")
    (synopsis "Lightweight and Flexible Web Framework")
    (description
     "This package provides a very flexible framework for building server side logic
in R. The framework is unopinionated when it comes to how HTTP requests and
@code{WebSocket} messages are handled and supports all levels of app complexity;
from serving static content to full-blown dynamic web-apps.  Fiery does not hold
your hand as much as e.g. the shiny package does, but instead sets you free to
create your web app the way you want.")
    (license license:expat)))

(define-public r-fieldsimr
  (package
    (name "r-fieldsimr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FieldSimR" version))
       (sha256
        (base32 "1nqdbm93cicvfr757bg5r226swbsy6abg52z7n3jysrkqlicf278"))))
    (properties `((upstream-name . "FieldSimR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mbend r-matrixcalc r-lattice r-interp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/crWerner/fieldsimr")
    (synopsis
     "Simulation of Plot Errors and Phenotypes in Plant Breeding Field Trials")
    (description
     "Simulates plot data in field trials for multiple traits across multiple
environments.  Its core function generates plot errors comprising 1) a spatially
correlated error term, 2) a random error term, and 3) an extraneous error term.
Spatially correlated errors are simulated using either bivariate interpolation
or a two-dimensional autoregressive process of order one (AR1:AR1).  The three
error terms are combined at a user-defined ratio.  Plot phenotypes can be
generated by combining the simulated errors with genetic values (e.g. true,
simulated or predicted). @code{FieldSimR} provides wrapper functions to simulate
genetic values for multiple traits across multiple environments using the R
package @code{AlphaSimR}'.")
    (license license:gpl3+)))

(define-public r-fieldhub
  (package
    (name "r-fieldhub")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FielDHub" version))
       (sha256
        (base32 "08s9snwcvnhrhcqm4csl2pnsp3vxa5vmckmkjhhs4ima51d13f0y"))))
    (properties `((upstream-name . "FielDHub")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-turner
                             r-shinythemes
                             r-shinyjs
                             r-shinyjqui
                             r-shinycssloaders
                             r-shinyalert
                             r-shiny
                             r-plotly
                             r-numbers
                             r-magrittr
                             r-htmltools
                             r-golem
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-desplot
                             r-config
                             r-blocksdesign))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DidierMurilloF/FielDHub")
    (synopsis "Shiny App for Design of Experiments in Life Sciences")
    (description
     "This package provides a shiny design of experiments (DOE) app that aids in the
creation of traditional, un-replicated, augmented and partially-replicated
designs applied to agriculture, plant breeding, forestry, animal and biological
sciences.")
    (license license:expat)))

(define-public r-fido
  (package
    (name "r-fido")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fido" version))
       (sha256
        (base32 "0drzxg6aj9rpszlg8cg1rjwk7nnz9np56zkddbd2pxkznsq8j8ni"))))
    (properties `((upstream-name . "fido")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidybayes
                             r-rlang
                             r-rcppziggurat
                             r-rcppnumerical
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-ggplot2
                             r-dplyr
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://jsilve24.github.io/fido/")
    (synopsis "Bayesian Multinomial Logistic Normal Regression")
    (description
     "This package provides methods for fitting and inspection of Bayesian Multinomial
Logistic Normal Models using MAP estimation and Laplace Approximation as
developed in Silverman et.  Al. (2022)
<https://www.jmlr.org/papers/v23/19-882.html>.  Key functionality is implemented
in C++ for scalability.  fido replaces the previous package stray'.")
    (license license:gpl3)))

(define-public r-fidelius
  (package
    (name "r-fidelius")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fidelius" version))
       (sha256
        (base32 "18dsw069j3jzl0splgjjdsybny1hq0dmiyygri8nlfwshijkw15h"))))
    (properties `((upstream-name . "fidelius")))
    (build-system r-build-system)
    (propagated-inputs (list r-whisker
                             r-sodium
                             r-rstudioapi
                             r-rmarkdown
                             r-rlang
                             r-readr
                             r-htmltools
                             r-fs
                             r-askpass))
    (native-inputs (list esbuild))
    (home-page "https://mattwarkentin.github.io/fidelius/")
    (synopsis "Browser-Side Password-Protected HTML Documents")
    (description
     "Create secure, encrypted, and password-protected static HTML documents that
include the machinery for secure in-browser authentication and decryption.")
    (license license:expat)))

(define-public r-fica
  (package
    (name "r-fica")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fICA" version))
       (sha256
        (base32 "0dqw3qybnpdnvhfh5inkc4011bzhsxvhpv8zzmkm3q5m6hkc6rlg"))))
    (properties `((upstream-name . "fICA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-jade))
    (home-page "https://cran.r-project.org/package=fICA")
    (synopsis "Classical, Reloaded and Adaptive FastICA Algorithms")
    (description
     "Algorithms for classical symmetric and deflation-based @code{FastICA}, reloaded
deflation-based @code{FastICA} algorithm and an algorithm for adaptive
deflation-based @code{FastICA} using multiple nonlinearities.  For details, see
Miettinen et al. (2014) <doi:10.1109/TSP.2014.2356442> and Miettinen et al.
(2017) <doi:10.1016/j.sigpro.2016.08.028>.  The package is described in
Miettinen, Nordhausen and Taskinen (2018) <doi:10.32614/RJ-2018-046>.")
    (license license:gpl2+)))

(define-public r-fic
  (package
    (name "r-fic")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fic" version))
       (sha256
        (base32 "18xz94w1ab17jfi61bdg9z3pm63g488v17ns2ivizkza4gg07pv8"))))
    (properties `((upstream-name . "fic")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensor
                             r-survival
                             r-scales
                             r-numderiv
                             r-mvtnorm
                             r-ggplot2
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chjackson/fic")
    (synopsis "Focused Information Criteria for Model Comparison")
    (description
     "Compares how well different models estimate a quantity of interest (the \"focus\")
so that different models may be preferred for different purposes.  Comparisons
within any class of models fitted by maximum likelihood are supported, with
shortcuts for commonly-used classes such as generalised linear models and
parametric survival models.  The methods originate from Claeskens and Hjort
(2003) <doi:10.1198/016214503000000819> and Claeskens and Hjort (2008,
ISBN:9780521852258).")
    (license license:gpl3)))

(define-public r-fiberld
  (package
    (name "r-fiberld")
    (version "0.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fiberLD" version))
       (sha256
        (base32 "04rqqg8zr6adhcls0d381fjrrc797aqy84gzl9gx3qiwlwcw8x0d"))))
    (properties `((upstream-name . "fiberLD")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-foreach
                             r-doparallel
                             r-bh))
    (home-page "https://cran.r-project.org/package=fiberLD")
    (synopsis "Fiber Length Determination")
    (description
     "Routines for estimating tree fiber (tracheid) length distributions in the
standing tree based on increment core samples.  Two types of data can be used
with the package, increment core data measured by means of an optical fiber
analyzer (OFA), e.g. such as the Kajaani Fiber Lab, or measured by microscopy.
Increment core data analyzed by OFAs consist of the cell lengths of both cut and
uncut fibres (tracheids) and fines (such as ray parenchyma cells) without being
able to identify which cells are cut or if they are fines or fibres.  The
microscopy measured data consist of the observed lengths of the uncut fibres in
the increment core.  A censored version of a mixture of the fine and fiber
length distributions is proposed to fit the OFA data, under distributional
assumptions (Svensson et al., 2006) <doi:10.1111/j.1467-9469.2006.00501.x>.  The
package offers two choices for the assumptions of the underlying density
functions of the true fiber (fine) lenghts of those fibers (fines) that at least
partially appear in the increment core, being the generalized gamma and the log
normal densities.")
    (license license:gpl2+)))

(define-public r-fi
  (package
    (name "r-fi")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FI" version))
       (sha256
        (base32 "17qzl8qvxklpqrzsmvw4wq3lyqz3zkidr7ihxc4vdzmmz69pyh2f"))))
    (properties `((upstream-name . "FI")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FI")
    (synopsis "Provide functions for forest inventory calculations")
    (description
     "Provide functions for forest inventory calculations.  Common volumetric
equations (Smalian, Newton and Huber) as well stacking factor and form")
    (license license:gpl3)))

(define-public r-fhmm
  (package
    (name "r-fhmm")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fHMM" version))
       (sha256
        (base32 "141fvg32fqfn4c6d0sq90pcrynjpfpsdyvd5a1nj870dzqq3369v"))))
    (properties `((upstream-name . "fHMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-progress
                             r-mass
                             r-foreach
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://loelschlaeger.de/fHMM/")
    (synopsis "Fitting Hidden Markov Models to Financial Data")
    (description
     "Fitting (hierarchical) hidden Markov models to financial data via maximum
likelihood estimation.  See @code{OelschlÃ¤ger}, L. and Adam, T. \"Detecting
bearish and bullish markets in financial time series using hierarchical hidden
Markov models\" (2021, Statistical Modelling) <doi:10.1177/1471082X211034048> for
a reference.")
    (license license:gpl3)))

(define-public r-fhircrackr
  (package
    (name "r-fhircrackr")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fhircrackr" version))
       (sha256
        (base32 "08gqr4nqkyd0s4k26q869lrbwxgn8sd2ync0cagx2kw2dlqa5kry"))))
    (properties `((upstream-name . "fhircrackr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-stringr r-lifecycle r-httr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fhircrackr")
    (synopsis "Handling HL7 FHIRÂ® Resources in R")
    (description
     "Useful tools for conveniently downloading FHIR resources in xml format and
converting them to R data.frames.  The package uses FHIR-search to download
bundles from a FHIR server, provides functions to save and read xml-files
containing such bundles and allows flattening the bundles to data.frames using
XPath expressions.  FHIRÂ® is the registered trademark of HL7 and is used with
the permission of HL7.  Use of the FHIR trademark does not constitute
endorsement of this product by HL7.")
    (license license:gpl3)))

(define-public r-fhdi
  (package
    (name "r-fhdi")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FHDI" version))
       (sha256
        (base32 "1n1rbrqdphp0prmkili6rnpxwdb7fgwsgncllr6yxlrkr5rb76pm"))))
    (properties `((upstream-name . "FHDI")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis "Fractional Hot Deck and Fully Efficient Fractional Imputation")
    (description
     "Impute general multivariate missing data with the fractional hot deck imputation
based on Jaekwang Kim (2011) <doi:10.1093/biomet/asq073>.")
    (license license:gpl2+)))

(define-public r-fgmutils
  (package
    (name "r-fgmutils")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Fgmutils" version))
       (sha256
        (base32 "05n8lvx3cs1ckliaj7ni2rbfcrdl7d0pzf9bkwlyd1779h684cxz"))))
    (properties `((upstream-name . "Fgmutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sqldf
                             r-png
                             r-plyr
                             r-gridextra
                             r-ggplot2
                             r-devemf
                             r-data-table))
    (home-page "https://cran.r-project.org/package=Fgmutils")
    (synopsis "Forest Growth Model Utilities")
    (description
     "Growth models and forest production require existing data manipulation and the
creation of new data, structured from basic forest inventory data.  The purpose
of this package is provide functions to support these activities.")
    (license license:gpl2)))

(define-public r-fgm
  (package
    (name "r-fgm")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgm" version))
       (sha256
        (base32 "0i6lbqxxjq78dql14qwqs7slnn0kyls2g3a9biabny2narwf6n3m"))))
    (properties `((upstream-name . "fgm")))
    (build-system r-build-system)
    (propagated-inputs (list r-jgl r-fdapace))
    (home-page "https://cran.r-project.org/package=fgm")
    (synopsis "Partial Separability and Functional Gaussian Graphical Models")
    (description
     "Estimates a functional graphical model and a partially separable
Karhunen-@code{LoÃ¨ve} decomposition for a multivariate Gaussian process.  See
Zapata J., Oh S. and Petersen A. (2019) <@code{arXiv:1910.03134>}.")
    (license license:gpl2+)))

(define-public r-fglsnet
  (package
    (name "r-fglsnet")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fglsnet" version))
       (sha256
        (base32 "00qn4k4xm1zfkz77lys468c1mfx3vyfjkf19wdbcvgssrmf6w0xd"))))
    (properties `((upstream-name . "fglsnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna
                             r-sandwich
                             r-network
                             r-matrixcalc
                             r-matrix
                             r-mass
                             r-lmtest))
    (home-page "https://cran.r-project.org/package=fglsnet")
    (synopsis
     "Feasible Generalized Least Squares Estimator for Regression Analysis of Outcomes with Network Dependence")
    (description
     "The function estimates a multivariate regression model for outcomes with network
dependence.")
    (license license:gpl3)))

(define-public r-fglmtrunc
  (package
    (name "r-fglmtrunc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FGLMtrunc" version))
       (sha256
        (base32 "15pj2dmgbjbx4xi585rqggnp05xzpg9pn2iy76ibgkdvjqknkwii"))))
    (properties `((upstream-name . "FGLMtrunc")))
    (build-system r-build-system)
    (propagated-inputs (list r-splines2 r-rcpparmadillo r-rcpp r-glmnet
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FGLMtrunc")
    (synopsis "Truncated Functional Generalized Linear Models")
    (description
     "An implementation of the methodologies described in Xi Liu, Afshin A. Divani,
and Alexander Petersen (2022) <doi:10.1016/j.csda.2022.107421>, including
truncated functional linear and truncated functional logistic regression models.")
    (license license:gpl2)))

(define-public r-fgitr
  (package
    (name "r-fgitr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgitR" version))
       (sha256
        (base32 "0ncwd3wgkll11447qjlq3ihx876d1jv067pcrfswia31jrb700wl"))))
    (properties `((upstream-name . "fgitR")))
    (build-system r-build-system)
    (inputs (list git))
    (propagated-inputs (list r-httr r-git2r r-devtools))
    (home-page "https://cran.r-project.org/package=fgitR")
    (synopsis "Using 'FastGit' to Accelerate the Access to 'GitHub'")
    (description
     "@code{FastGit} <https://doc.fastgit.org/> works like a mirror of @code{GitHub}
to make significant acceleration. @code{fgitR} is a package to do git operation
with @code{FastGit} automatically.")
    (license license:expat)))

(define-public r-fgeo-x
  (package
    (name "r-fgeo-x")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgeo.x" version))
       (sha256
        (base32 "0swps9rli74fmfb2j4kf55kw39gxz0q49m74ad4vcs0ylyp0sxrb"))))
    (properties `((upstream-name . "fgeo.x")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise))
    (home-page "https://github.com/forestgeo/fgeo.x")
    (synopsis "Access Small ForestGEO Datasets For Examples")
    (description
     "Access small example datasets from Luquillo, a @code{ForestGEO} site in Puerto
Rico (<https://forestgeo.si.edu/sites/north-america/luquillo>).")
    (license license:gpl3)))

(define-public r-fgeo-tool
  (package
    (name "r-fgeo-tool")
    (version "1.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgeo.tool" version))
       (sha256
        (base32 "1yp3513rqpv38bi79xyq83dblrmcpm7h0411hlr1a2n4qjdzpzc5"))))
    (properties `((upstream-name . "fgeo.tool")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-glue
                             r-dplyr))
    (home-page "https://forestgeo.github.io/fgeo.tool/")
    (synopsis "Import and Manipulate 'ForestGEO' Data")
    (description
     "To help you access, transform, analyze, and visualize @code{ForestGEO} data, we
developed a collection of R packages (<https://forestgeo.github.io/fgeo/>).
This package, in particular, helps you to easily import, filter, and modify
@code{ForestGEO} data.  To learn more about @code{ForestGEO} visit
<https://forestgeo.si.edu/>.")
    (license license:gpl3)))

(define-public r-fgeo-plot
  (package
    (name "r-fgeo-plot")
    (version "1.1.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgeo.plot" version))
       (sha256
        (base32 "0hpk07cc7vi5apgcwnb6hlv4sm4bw6pwcqjib29i47rzivlj65rp"))))
    (properties `((upstream-name . "fgeo.plot")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-ggrepel
                             r-ggplot2
                             r-fgeo-tool
                             r-dplyr))
    (home-page "https://github.com/forestgeo/fgeo.plot")
    (synopsis "Plot ForestGEO Data")
    (description
     "To help you access, transform, analyze, and visualize @code{ForestGEO} data, we
developed a collection of R packages (<https://forestgeo.github.io/fgeo/>).
This package, in particular, helps you to plot @code{ForestGEO} data.  To learn
more about @code{ForestGEO} visit <https://forestgeo.si.edu/>.")
    (license license:gpl3)))

(define-public r-fgeo-analyze
  (package
    (name "r-fgeo-analyze")
    (version "1.1.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgeo.analyze" version))
       (sha256
        (base32 "0pnmvq6imnffvr4qlmygmmw18g33s81f5jrrs7n4ahwi0qmf5qaj"))))
    (properties `((upstream-name . "fgeo.analyze")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-mass
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-fgeo-tool
                             r-dplyr))
    (home-page "https://github.com/forestgeo/fgeo.analyze")
    (synopsis "Analyze ForestGEO Data")
    (description
     "To help you access, transform, analyze, and visualize @code{ForestGEO} data, we
developed a collection of R packages (<https://forestgeo.github.io/fgeo/>).
This package, in particular, helps you to implement analyses of plot species
distributions, topography, demography, and biomass.  It also includes a torus
translation test to determine habitat associations of tree species as described
by Zuleta et al. (2018) <doi:10.1007/s11104-018-3878-0>.  To learn more about
@code{ForestGEO} visit <https://forestgeo.si.edu/>.")
    (license license:gpl3)))

(define-public r-fgeo
  (package
    (name "r-fgeo")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgeo" version))
       (sha256
        (base32 "0axglmk05li3plb79rccskhddjzq3pdx3mgxr8yqysymf1nscrq6"))))
    (properties `((upstream-name . "fgeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-fgeo-x
                             r-fgeo-tool
                             r-fgeo-plot
                             r-fgeo-analyze
                             r-dplyr
                             r-crayon
                             r-cli))
    (home-page "http://forestgeo.github.io/fgeo")
    (synopsis "Analyze Forest Diversity and Dynamics")
    (description
     "To help you access, transform, analyze, and visualize @code{ForestGEO} data, we
developed a collection of R packages (<https://forestgeo.github.io/fgeo/>).
This package, in particular, helps you to install and load the entire
package-collection with a single R command, and provides convenient ways to find
relevant documentation.  Most commonly, you should not worry about the
individual packages that make up the package-collection as you can access all
features via this package.  To learn more about @code{ForestGEO} visit
<http://www.forestgeo.si.edu/>.")
    (license license:gpl3)))

(define-public r-fgdr
  (package
    (name "r-fgdr")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fgdr" version))
       (sha256
        (base32 "12rccdh1dmh8azwid8wgkdz8d7lqrdzr5n294j2fawqf4naff2gm"))))
    (properties `((upstream-name . "fgdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-units
                             r-tibble
                             r-terra
                             r-stringr
                             r-stars
                             r-sf
                             r-rlang
                             r-readr
                             r-raster
                             r-purrr
                             r-magrittr
                             r-jpmesh
                             r-data-table))
    (home-page "https://github.com/uribo/fgdr")
    (synopsis "Utilities for Fundamental Geo-Spatial Data")
    (description
     "Read and Parse for Fundamental Geo-Spatial Data (FGD) which downloads XML file
from providing site (<https://fgd.gsi.go.jp/download/menu.php>).  The JPGIS
format file provided by FGD so that it can be handled as an R spatial object
such as sf and raster', terra or stars'.  Supports the FGD version 4.1, and
accepts fundamental items and digital elevation models.")
    (license license:expat)))

(define-public r-fgarch
  (package
    (name "r-fgarch")
    (version "4031.90")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fGarch" version))
       (sha256
        (base32 "06ilj6nkmc7d4dhbh3zd9f5nyiq4x9win9qkyvcgm5yc8qslnw5z"))))
    (properties `((upstream-name . "fGarch")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-matrix
                             r-fbasics
                             r-fastica
                             r-cvar))
    (native-inputs (list gfortran))
    (home-page "https://www.rmetrics.org")
    (synopsis
     "Rmetrics - Autoregressive Conditional Heteroskedastic Modelling")
    (description
     "Analyze and model heteroskedastic behavior in financial time series.")
    (license license:gpl2+)))

(define-public r-fgalgorithm
  (package
    (name "r-fgalgorithm")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FGalgorithm" version))
       (sha256
        (base32 "1dq6yyb3l6c9fzvk9gs6pb240xb5hvc6fh8p3qd3c91b3m289mcc"))))
    (properties `((upstream-name . "FGalgorithm")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FGalgorithm")
    (synopsis "Flury and Gautschi algorithms")
    (description
     "This is a package for implementation of Flury-Gautschi algorithms.")
    (license license:gpl2+)))

(define-public r-fftw
  (package
    (name "r-fftw")
    (version "1.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fftw" version))
       (sha256
        (base32 "07isxi72ppw7p3inn3pmwr2ha51p981iz3diw3rhgqc4gd3677zn"))))
    (properties `((upstream-name . "fftw")))
    (build-system r-build-system)
    (inputs (list fftw))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=fftw")
    (synopsis "Fast FFT and DCT Based on the FFTW Library")
    (description
     "This package provides a simple and efficient wrapper around the fastest Fourier
transform in the west (FFTW) library <http://www.fftw.org/>.")
    (license license:gpl2)))

(define-public r-fftrees
  (package
    (name "r-fftrees")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FFTrees" version))
       (sha256
        (base32 "14nd5bh2vzsv9cmmfdm6yzv6mxc8gkj9x8r2799w72sijs35ij5l"))))
    (properties `((upstream-name . "FFTrees")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-testthat
                             r-stringr
                             r-scales
                             r-rpart
                             r-randomforest
                             r-magrittr
                             r-knitr
                             r-e1071
                             r-dplyr
                             r-cli
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=FFTrees")
    (synopsis
     "Generate, Visualise, and Evaluate Fast-and-Frugal Decision Trees")
    (description
     "Create, visualize, and test fast-and-frugal decision trees (FFTs) using the
algorithms and methods described by Phillips, Neth, Woike & Gaissmaier (2017),
<doi:10.1017/S1930297500006239>.  FFTs are simple and transparent decision trees
for solving binary classification problems.  FFTs can be preferable to more
complex algorithms because they require very little information, are easy to
understand and communicate, and are robust against overfitting.")
    (license license:cc0)))

(define-public r-ffstream
  (package
    (name "r-ffstream")
    (version "0.1.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ffstream" version))
       (sha256
        (base32 "0xc549sp443isn3rk96m28wsrsg66qzsvz51nx9bykjzi3zy5wjk"))))
    (properties `((upstream-name . "ffstream")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ffstream")
    (synopsis
     "Forgetting Factor Methods for Change Detection in Streaming Data")
    (description
     "An implementation of the adaptive forgetting factor scheme described in Bodenham
and Adams (2016) <doi:10.1007/s11222-016-9684-8> which adaptively estimates the
mean and variance of a stream in order to detect multiple changepoints in
streaming data.  The implementation is in C++ and uses Rcpp'.  Additionally,
implementations of the fixed forgetting factor scheme from the same paper, as
well as the classic cumulative sum ('CUSUM') and exponentially weighted moving
average ('EWMA') methods, are included.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ffsimulator
  (package
    (name "r-ffsimulator")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ffsimulator" version))
       (sha256
        (base32 "0vl8sr32l5l4v6jb59ch98fg850d6w8zqqy2v8zay7v04qwbwqiz"))))
    (properties `((upstream-name . "ffsimulator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytable
                             r-rlang
                             r-rglpk
                             r-nflreadr
                             r-magrittr
                             r-glue
                             r-ffscrapr
                             r-data-table
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://ffsimulator.ffverse.com")
    (synopsis "Simulate Fantasy Football Seasons")
    (description
     "Uses bootstrap resampling to run fantasy football season simulations supported
by historical rankings and @code{nflfastR} data, calculating optimal lineups,
and returning aggregated results.")
    (license license:expat)))

(define-public r-ffscrapr
  (package
    (name "r-ffscrapr")
    (version "1.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ffscrapr" version))
       (sha256
        (base32 "0dxr7w64wjw1i1bspdj641m1dmgz85bgdapf2k2wba077zkmhhv4"))))
    (properties `((upstream-name . "ffscrapr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-ratelimitr
                             r-rappdirs
                             r-purrr
                             r-nflreadr
                             r-memoise
                             r-magrittr
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr
                             r-cli
                             r-checkmate
                             r-cachem))
    (native-inputs (list r-knitr))
    (home-page "https://ffscrapr.ffverse.com")
    (synopsis "API Client for Fantasy Football League Platforms")
    (description
     "Helps access various Fantasy Football APIs by handling authentication and
rate-limiting, forming appropriate calls, and returning tidy dataframes which
can be easily connected to other data sources.")
    (license license:expat)))

(define-public r-ffp
  (package
    (name "r-ffp")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ffp" version))
       (sha256
        (base32 "05mzhg2hj51x8588nvwqamvrgd24haxw4mq7qn62zaznvxnwsr3m"))))
    (properties `((upstream-name . "ffp")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-nloptr
                             r-nlcoptim
                             r-mvtnorm
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-ggdist
                             r-forcats
                             r-dplyr
                             r-crayon
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Reckziegel/FFP")
    (synopsis
     "Fully Flexible Probabilities for Stress Testing and Portfolio Construction")
    (description
     "This package implements numerical entropy-pooling for portfolio construction and
scenario analysis as described in Meucci, Attilio (2008) and Meucci, Attilio
(2010) <doi:10.2139/ssrn.1696802>.")
    (license license:expat)))

(define-public r-ffmanova
  (package
    (name "r-ffmanova")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ffmanova" version))
       (sha256
        (base32 "08paiz94vhyiqaihpg3y9z3cbk9k5mlwwv8f1fs9mis3rv8wabvc"))))
    (properties `((upstream-name . "ffmanova")))
    (build-system r-build-system)
    (home-page "https://github.com/olangsrud/ffmanova")
    (synopsis "Fifty-Fifty MANOVA")
    (description
     "General linear modeling with multiple responses (MANCOVA).  An overall p-value
for each model term is calculated by the 50-50 MANOVA method by Langsrud (2002)
<doi:10.1111/1467-9884.00320>, which handles collinear responses.  Rotation
testing, described by Langsrud (2005) <doi:10.1007/s11222-005-4789-5>, is used
to compute adjusted single response p-values according to familywise error rates
and false discovery rates (FDR).  The approach to FDR is described in the
appendix of Moen et al. (2005) <doi:10.1128/AEM.71.4.2086-2094.2005>.
Unbalanced designs are handled by Type II sums of squares as argued in Langsrud
(2003) <doi:10.1023/A:1023260610025>.  Furthermore, the Type II philosophy is
extended to continuous design variables as described in Langsrud et al. (2007)
<doi:10.1080/02664760701594246>.  This means that the method is invariant to
scale changes and that common pitfalls are avoided.")
    (license license:gpl2)))

(define-public r-fflr
  (package
    (name "r-fflr")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fflr" version))
       (sha256
        (base32 "0bwifa7xmc9hnkjc3ddxq1hz4w46v7ii4c7vagzkdslp2k0877g9"))))
    (properties `((upstream-name . "fflr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fflr")
    (synopsis "Retrieve ESPN Fantasy Football Data")
    (description
     "Format the raw data from the ESPN fantasy football API
<https://fantasy.espn.com/apis/v3/games/ffl/> as data frames.  Retrieve data on
public leagues, rosters, athletes, and matches.")
    (license license:expat)))

(define-public r-ffdownload
  (package
    (name "r-ffdownload")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FFdownload" version))
       (sha256
        (base32 "1xhjp2zk5w7gryfhr7qlzhdgfnfy3c7ivslayy0fhy7r7jdxr847"))))
    (properties `((upstream-name . "FFdownload")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-xml2
                             r-timetk
                             r-rvest
                             r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sstoeckl/ffdownload")
    (synopsis "Download Data from Kenneth French's Website")
    (description
     "Downloads all the datasets (you can exclude the daily ones or specify a list of
those you are targeting specifically) from Kenneth French's Website at
<https://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html>,
process them and convert them to list of xts (time series).")
    (license license:expat)))

(define-public r-ffd
  (package
    (name "r-ffd")
    (version "1.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FFD" version))
       (sha256
        (base32 "1478sxfz4cv43nmvhg0d0w82kmyr4rfhhrrlrq4aanbxnriggkxr"))))
    (properties `((upstream-name . "FFD")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-r2html))
    (home-page "http://ffd.r-forge.r-project.org")
    (synopsis "Freedom from Disease")
    (description
     "Functions, S4 classes/methods and a graphical user interface (GUI) to design
surveys to substantiate freedom from disease using a modified hypergeometric
function (see Cameron and Baldock, 1997, <doi:10.1016/s0167-5877(97)00081-0>).
Herd sensitivities are computed according to sampling strategies \"individual
sampling\" or \"limited sampling\" (see M. Ziller, T. Selhorst, J. Teuffert, M.
Kramer and H. Schlueter, 2002, <doi:10.1016/S0167-5877(01)00245-8>).  Methods to
compute the a-posteriori alpha-error are implemented.  Risk-based targeted
sampling is supported.")
    (license license:gpl2+)))

(define-public r-fextremes
  (package
    (name "r-fextremes")
    (version "4021.83")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fExtremes" version))
       (sha256
        (base32 "0i0sabk5clk50r9qk69d0rqzkx95x3x9fnwqr8kx40d7v55s1blb"))))
    (properties `((upstream-name . "fExtremes")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate r-fgarch r-fbasics))
    (home-page "https://www.rmetrics.org")
    (synopsis "Rmetrics - Modelling Extreme Events in Finance")
    (description
     "This package provides functions for analysing and modelling extreme events in
financial time Series.  The topics include: (i) data pre-processing, (ii)
explorative data analysis, (iii) peak over threshold modelling, (iv) block
maxima modelling, (v) estimation of @code{VaR} and C@code{VaR}, and (vi) the
computation of the extreme index.")
    (license license:gpl2+)))

(define-public r-fetchsalesforcer
  (package
    (name "r-fetchsalesforcer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fetchSalesforceR" version))
       (sha256
        (base32 "1826i031wndasgcxxa0bh88vp1r49flzphyfk79pixvlrfjn6gi8"))))
    (properties `((upstream-name . "fetchSalesforceR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from Salesforce via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Salesforce using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-fetchgoogleanalyticsr
  (package
    (name "r-fetchgoogleanalyticsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fetchGoogleAnalyticsR" version))
       (sha256
        (base32 "12s18jicx9rd5dhc8l7hm09lr71nhz6k72j3w4c1j5ds9h522krg"))))
    (properties `((upstream-name . "fetchGoogleAnalyticsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from Google Analytics via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Google Analytics using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-fetch
  (package
    (name "r-fetch")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fetch" version))
       (sha256
        (base32 "1q1rwfk4j8fvgxjhjpzdg6d0klcd39g55lcwhaznsj66ixwib84i"))))
    (properties `((upstream-name . "fetch")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-readxl
                             r-readr
                             r-haven
                             r-foreign
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://fetch.r-sassy.org")
    (synopsis "Fetch Data from Various Data Sources")
    (description
     "This package contains functions to fetch data from various data sources.  The
user first creates a catalog of objects from a data source, then fetches data
from the catalog.  The package provides an easy way to access data from many
different types of sources.")
    (license license:cc0)))

(define-public r-festa
  (package
    (name "r-festa")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FESta" version))
       (sha256
        (base32 "1kf5iqw8x8079gjaxicrgax5l798l8hxcc5y83l5pqh0ync5bxm6"))))
    (properties `((upstream-name . "FESta")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FESta")
    (synopsis "Fishing Effort Standardisation")
    (description
     "Original idea was presented in the reference paper.  Varghese et al. (2020,
74(1):35-42) \"Bayesian State-space Implementation of Schaefer Production Model
for Assessment of Stock Status for Multi-gear Fishery\".  Marine fisheries
governance and management practices are very essential to ensure the
sustainability of the marine resources.  A widely accepted resource management
strategy towards this is to derive sustainable fish harvest levels based on the
status of marine fish stock.  Various fish stock assessment models that describe
the biomass dynamics using time series data on fish catch and fishing effort are
generally used for this purpose.  In the scenario of complex multi-species
marine fishery in which different species are caught by a number of fishing
gears and each gear harvests a number of species make it difficult to obtain the
fishing effort corresponding to each fish species.  Since the capacity of the
gears varies, the effort made to catch a resource cannot be considered as the
sum of efforts expended by different fishing gears.  This necessitates
standardisation of fishing effort in unit base.")
    (license license:gpl2+)))

(define-public r-fertnet
  (package
    (name "r-fertnet")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FertNet" version))
       (sha256
        (base32 "1hhhsiva6nqqyjimmla2s4iv2lm3j20m55d7bwm8zr79lnj72nj9"))))
    (properties `((upstream-name . "FertNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-haven))
    (home-page "https://cran.r-project.org/package=FertNet")
    (synopsis "Process Data from the Social Networks and Fertility Survey")
    (description
     "Processes data from The Social Networks and Fertility Survey, downloaded from
<https://dataarchive.lissdata.nl>, including correcting respondent errors and
transforming network data into network objects to facilitate analyses and
visualisation.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-fertilmodel
  (package
    (name "r-fertilmodel")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fertilmodel" version))
       (sha256
        (base32 "0q0mf8n3fc53bqjsv5c4mcfm4vjhyy2hw8rh1bsjsj71xmih50a4"))))
    (properties `((upstream-name . "fertilmodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog))
    (home-page "https://cran.r-project.org/package=fertilmodel")
    (synopsis "Fertility Models")
    (description
     "Four fertility models are fitted using non-linear least squares.  These are the
Hadwiger, the Gamma, the Model1 and Model2, following the terminology of the
following paper: Peristera P. and Kostaki A. (2007). \"Modeling fertility in
modern populations\".  Demographic Research, 16(6): 141--194.
<doi:10.4054/@code{DemRes.2007.16.6>}.  Model based averaging is also supported.")
    (license license:gpl2+)))

(define-public r-fertboot
  (package
    (name "r-fertboot")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FertBoot" version))
       (sha256
        (base32 "168xfxpb43brfnp6c6b4chhpzb9z0aiqa6fawc8m09an5ggh05jp"))))
    (properties `((upstream-name . "FertBoot")))
    (build-system r-build-system)
    (propagated-inputs (list r-simpleboot r-nls-multstart))
    (home-page "https://cran.r-project.org/package=FertBoot")
    (synopsis "Fertilizer Response Curve Analysis by Bootstrapping Residuals")
    (description
     "Quantify variability (such as confidence interval) of fertilizer response curves
and optimum fertilizer rates using bootstrapping residuals with several popular
non-linear and linear models.")
    (license license:gpl2)))

(define-public r-ferrn
  (package
    (name "r-ferrn")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ferrn" version))
       (sha256
        (base32 "0yxw18yzj5j2fpj4rf9flmmng4s2ldgx4yaywa2hrclbnl43c578"))))
    (properties `((upstream-name . "ferrn")))
    (build-system r-build-system)
    (propagated-inputs (list r-tourr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-ggforce
                             r-gganimate
                             r-geozoo
                             r-dplyr))
    (home-page "https://github.com/huizezhang-sherry/ferrn/")
    (synopsis "Facilitate Exploration of touRR optimisatioN")
    (description
     "Diagnostic plots for optimisation, with a focus on projection pursuit.  These
show paths the optimiser takes in the high-dimensional space in multiple ways:
by reducing the dimension using principal component analysis, and also using the
tour to show the path on the high-dimensional space.  Several botanical colour
palettes are included, reflecting the name of the package.  A paper describing
the methodology can be found at
<https://journal.r-project.org/archive/2021/RJ-2021-105/index.html>.")
    (license license:expat)))

(define-public r-fermicatsr
  (package
    (name "r-fermicatsr")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fermicatsR" version))
       (sha256
        (base32 "1587f67fypj22rdi1319zq765lcc9z518bzl1jr4lz6c8lrzfm9i"))))
    (properties `((upstream-name . "fermicatsR")))
    (build-system r-build-system)
    (home-page "https://github.com/sazpark/fermicatsR.git")
    (synopsis "Fermi Large Area Telescope Catalogs")
    (description
     "Data from various catalogs of astrophysical gamma-ray sources detected by NASA's
Large Area Telescope (The Astrophysical Journal, 697, 1071, 2009 June 1), on
board the Fermi gamma-ray satellite.  More information on Fermi and its data
products is available from the Fermi Science Support Center
(http://fermi.gsfc.nasa.gov/ssc/).")
    (license license:cc0)))

(define-public r-fergm
  (package
    (name "r-fergm")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fergm" version))
       (sha256
        (base32 "1d979z2m5f13i1w9d8kh9rnaafavsap169w0nycpd5j2f3dfhyn7"))))
    (properties `((upstream-name . "fergm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan
                             r-reshape2
                             r-network
                             r-matrixstats
                             r-ggplot2
                             r-extrafont
                             r-ergm))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/benjamin-w-campbell/fergm")
    (synopsis
     "Estimation and Fit Assessment of Frailty Exponential Random Graph Models")
    (description
     "Frailty Exponential Random Graph Models estimated through pseudo likelihood with
frailty terms estimated using Stan as per Box-Steffensmeier et.  al (2017)
<doi:10.7910/DVN/K3D1M2>.  Goodness of fit for Frailty Exponential Random Graph
Models is also available, with easy visualizations for comparison to fit
Exponential Random Graph Models.")
    (license license:gpl3)))

(define-public r-fer
  (package
    (name "r-fer")
    (version "0.94")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FER" version))
       (sha256
        (base32 "0319dz0qvk8s9cfngqas3j212bw0f4rzw3gqcd7r7sl0249dla7p"))))
    (properties `((upstream-name . "FER")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod))
    (home-page "https://github.com/PyFE/FE-R")
    (synopsis "Financial Engineering in R")
    (description
     "R implementations of standard financial engineering codes; vanilla option
pricing models such as Black-Scholes, Bachelier, CEV, and SABR.")
    (license license:gpl2+)))

(define-public r-feprovider
  (package
    (name "r-feprovider")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FEprovideR" version))
       (sha256
        (base32 "02hfdk9qhaq4y19p700w2i7qsdp4z2kyww0pr0pijfivkqks0vpi"))))
    (properties `((upstream-name . "FEprovideR")))
    (build-system r-build-system)
    (propagated-inputs (list r-poibin r-matrix r-ggplot2))
    (home-page "https://cran.r-project.org/package=FEprovideR")
    (synopsis "Fixed Effects Logistic Model with High-Dimensional Parameters")
    (description
     "This package provides a structured profile likelihood algorithm for the logistic
fixed effects model and an approximate expectation maximization (EM) algorithm
for the logistic mixed effects model.  Based on He, K., Kalbfleisch, J.D., Li,
Y. and Li, Y. (2013) <doi:10.1007/s10985-013-9264-6>.")
    (license license:gpl2)))

(define-public r-fenmlm
  (package
    (name "r-fenmlm")
    (version "2.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FENmlm" version))
       (sha256
        (base32 "0s1i7kklh5vzfv6xi1j9dxp21cncs5gsxf7rn25rsg8b5srllsxl"))))
    (properties `((upstream-name . "FENmlm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-numderiv r-mass r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FENmlm")
    (synopsis "Fixed Effects Nonlinear Maximum Likelihood Models")
    (description
     "Efficient estimation of maximum likelihood models with multiple fixed-effects.
Standard-errors can easily and flexibly be clustered and estimations exported.")
    (license license:gpl2+)))

(define-public r-fence
  (package
    (name "r-fence")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fence" version))
       (sha256
        (base32 "18l3fliww60d9n9hbfdny5vr9mi78krwpjj5sypdsb77d6332h9q"))))
    (properties `((upstream-name . "fence")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall
                             r-snow
                             r-sae
                             r-mass
                             r-lme4
                             r-ggplot2
                             r-fields))
    (home-page "https://cran.r-project.org/package=fence")
    (synopsis "Using Fence Methods for Model Selection")
    (description
     "This method is a new class of model selection strategies, for mixed model
selection, which includes linear and generalized linear mixed models.  The idea
involves a procedure to isolate a subgroup of what are known as correct models
(of which the optimal model is a member).  This is accomplished by constructing
a statistical fence, or barrier, to carefully eliminate incorrect models.  Once
the fence is constructed, the optimal model is selected from among those within
the fence according to a criterion which can be made flexible.  References: 1.
Jiang J., Rao J.S., Gu Z., Nguyen T. (2008), Fence Methods for Mixed Model
Selection.  The Annals of Statistics, 36(4): 1669-1692. <DOI:10.1214/07-AOS517>
<https://projecteuclid.org/euclid.aos/1216237296>.  2.  Jiang J., Nguyen T., Rao
J.S. (2009), A Simplified Adaptive Fence Procedure.  Statistics and Probability
Letters, 79, 625-629. <DOI:10.1016/j.spl.2008.10.014>
<https://www.researchgate.net/publication/23991417_A_simplified_adaptive_fence_procedure>
3.  Jiang J., Nguyen T., Rao J.S. (2010), Fence Method for Nonparametric Small
Area Estimation.  Survey Methodology, 36(1), 3-11.
<http://publications.gc.ca/collections/collection_2010/statcan/12-001-X/12-001-x2010001-eng.pdf>.
 4.  Jiming Jiang, Thuan Nguyen and J. Sunil Rao (2011), Invisible fence methods
and the identification of differentially expressed gene sets.  Statistics and
Its Interface, Volume 4, 403-415.
<http://www.intlpress.com/site/pub/files/_fulltext/journals/sii/2011/0004/0003/SII-2011-0004-0003-a014.pdf>.
 5.  Thuan Nguyen & Jiming Jiang (2012), Restricted fence method for covariate
selection in longitudinal data analysis.  Biostatistics, 13(2), 303-314.
<DOI:10.1093/biostatistics/kxr046>
<https://academic.oup.com/biostatistics/article/13/2/303/263903/Restricted-fence-method-for-covariate-selection-in>.
 6.  Thuan Nguyen, Jie Peng, Jiming Jiang (2014), Fence Methods for Backcross
Experiments.  Statistical Computation and Simulation, 84(3), 644-662.
<DOI:10.1080/00949655.2012.721885>
<https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3891925/>.  7.  Jiang, J. (2014),
The fence methods, in Advances in Statistics, Hindawi Publishing Corp., Cairo.
<DOI:10.1155/2014/830821>.  8.  Jiming Jiang and Thuan Nguyen (2015), The Fence
Methods, World Scientific, Singapore.
<https://www.abebooks.com/9789814596060/Fence-Methods-Jiming-Jiang-981459606X/plp>.")
    (license license:bsd-2)))

(define-public r-feltr
  (package
    (name "r-feltr")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "feltr" version))
       (sha256
        (base32 "1cn6kwkvcy91ng5d67x2hs853k5dqhlap6yym1xfw741f11dx1zy"))))
    (properties `((upstream-name . "feltr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-purrr
                             r-jsonlite
                             r-httr2
                             r-geojsonsf
                             r-fs
                             r-curl
                             r-cli))
    (home-page "https://github.com/christopherkenny/feltr")
    (synopsis "Access the Felt API")
    (description
     "Upload, download, and edit internet maps with the Felt API
(<https://feltmaps.notion.site/Felt-Public-API-reference-c01e0e6b0d954a678c608131b894e8e1>).
 Allows users to create new maps, edit existing maps, and extract data.
Provides tools for working with layers, which represent geographic data, and
elements, which are interactive annotations.  Spatial data accessed from the API
is transformed to work with sf'.")
    (license license:expat)))

(define-public r-felp
  (package
    (name "r-felp")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "felp" version))
       (sha256
        (base32 "134kv7mj3ajgcl7z8dq0vjx3yqy2awlpn3xs39q7yl7z5kz6i44g"))))
    (properties `((upstream-name . "felp")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-shiny
                             r-rstudioapi
                             r-rlang
                             r-reactable
                             r-prettycode
                             r-miniui
                             r-matrixstats
                             r-magrittr
                             r-htmltools
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/atusy/felp")
    (synopsis "Functional Help for Functions, Objects, and Packages")
    (description
     "Enhance R help system by fuzzy search and preview interface, pseudo-postfix
operators, and more.  The `?.` pseudo-postfix operator and the `?` prefix
operator displays documents and contents (source or structure) of objects
simultaneously to help understanding the objects.  The `?p` pseudo-postfix
operator displays package documents, and is shorter than help(package = foo).")
    (license license:expat)))

(define-public r-feisr
  (package
    (name "r-feisr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "feisr" version))
       (sha256
        (base32 "1i89w3n365k4fwgiifb2f68ag11f96rrxqxradrjvbmi7r80md99"))))
    (properties `((upstream-name . "feisr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-plm r-formula r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ruettenauer/feisr")
    (synopsis "Estimating Fixed Effects Individual Slope Models")
    (description
     "This package provides the function feis() to estimate fixed effects individual
slope (FEIS) models.  The FEIS model constitutes a more general version of the
often-used fixed effects (FE) panel model, as implemented in the package plm by
Croissant and Millo (2008) <doi:10.18637/jss.v027.i02>.  In FEIS models, data
are not only person demeaned like in conventional FE models, but detrended by
the predicted individual slope of each person or group.  Estimation is performed
by applying least squares lm() to the transformed data.  For more details on
FEIS models see Bruederl and Ludwig (2015, ISBN:1446252442); Frees (2001)
<doi:10.2307/3316008>; Polachek and Kim (1994)
<doi:10.1016/0304-4076(94)90075-2>; Ruettenauer and Ludwig (2020)
<doi:10.1177/0049124120926211>; Wooldridge (2010, ISBN:0262294354).  To test
consistency of conventional FE and random effects estimators against
heterogeneous slopes, the package also provides the functions feistest() for an
artificial regression test and bsfeistest() for a bootstrapped version of the
Hausman test.")
    (license license:gpl2+)))

(define-public r-feedbackts
  (package
    (name "r-feedbackts")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FeedbackTS" version))
       (sha256
        (base32 "120labhmisw1x1bq8c4bl6l14vayvb9xcm6jsj1awacypgrr2ar2"))))
    (properties `((upstream-name . "FeedbackTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-proj4
                             r-maps
                             r-mapdata
                             r-gstat
                             r-automap))
    (home-page "https://cran.r-project.org/package=FeedbackTS")
    (synopsis "Analysis of Feedback in Time Series")
    (description
     "Analysis of fragmented time directionality to investigate feedback in time
series.  Tools provided by the package allow the analysis of feedback for a
single time series and the analysis of feedback for a set of time series
collected across a spatial domain.")
    (license license:gpl2+)))

(define-public r-fedz1
  (package
    (name "r-fedz1")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fedz1" version))
       (sha256
        (base32 "1havzbpqwlc32qmr2mpdxczjj918aig7l0iz669pkgxgqxf8dq5x"))))
    (properties `((upstream-name . "fedz1")))
    (build-system r-build-system)
    (home-page "https://github.com/shaf1430/fedz1")
    (synopsis
     "An Easier Access to Financial Accounts of the United States(Z.1)")
    (description
     "Flow of funds are financial accounts that are provided by Federal Reserve
quarterly.  The package contains all datasets
<https://www.federalreserve.gov/datadownload/Choose.aspx?rel=z1>, tables
<https://www.federalreserve.gov/apps/fof/FOFTables.aspx> and descriptions
<https://www.federalreserve.gov/apps/fof/Guide/z1_tables_description.pdf> with
functions to understand series
<https://www.federalreserve.gov/apps/fof/@code{SeriesStructure.aspx>} and
explore them.")
    (license license:expat)))

(define-public r-fedstatapir
  (package
    (name "r-fedstatapir")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fedstatAPIr" version))
       (sha256
        (base32 "0pbbm2rfqij1yk4ywdd3pmdkb2arkwnmpyn70d52qrsjaxlhrnqi"))))
    (properties `((upstream-name . "fedstatAPIr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-readsdmx
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-data-table))
    (home-page "https://github.com/DenchPokepon/fedstatAPIr")
    (synopsis
     "Unofficial API for Fedstat (Rosstat EMISS System) for Automatic and Efficient Data Queries")
    (description
     "An API for automatic data queries to the fedstat <https://www.fedstat.ru>, using
a small set of functions with a common interface.")
    (license license:expat)))

(define-public r-fedregs
  (package
    (name "r-fedregs")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fedregs" version))
       (sha256
        (base32 "171j6r6qxnx9gk9x9gpdyh51ssrgmf7sczc4889qr3qqw15sm4bn"))))
    (properties `((upstream-name . "fedregs")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidytext
                             r-tidyr
                             r-stringi
                             r-rvest
                             r-purrr
                             r-magrittr
                             r-httr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=fedregs")
    (synopsis "Text Analysis of the US Code of Federal Regulations")
    (description
     "The Code of Federal Regulations (CFR) annual edition is the codification of the
general and permanent rules published in the Federal Register by the departments
and agencies of the Federal Government of the United States of America.  Simply,
the fedregs package facilitates word processing and sentiment analysis of the
CFR using tidy principles.  Note: According to the Code of Federal Regulations
XML Rendition User Guide Document: \"In general, there are no restrictions on
re-use of information in Code of Federal Regulations material because U.S.
Government works are not subject to copyright.  OFR and GPO do not restrict
downstream uses of Code of Federal Regulations data, except that independent
providers should be aware that only the OFR and GPO are entitled to represent
that they are the providers of the official versions of the Code of Federal
Regulations and related Federal Register publications.\"")
    (license license:gpl3)))

(define-public r-fedmatch
  (package
    (name "r-fedmatch")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fedmatch" version))
       (sha256
        (base32 "1k6gj0aaihxqwvvvic8s5bhjqlxg6m37yj3bk9hbxy1lijv89w8j"))))
    (properties `((upstream-name . "fedmatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringdist
                             r-snowballc
                             r-scales
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-forcats
                             r-data-table
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fedmatch")
    (synopsis "Fast, Flexible, and User-Friendly Record Linkage Methods")
    (description
     "This package provides a flexible set of tools for matching two un-linked data
sets.  fedmatch allows for three ways to match data: exact matches, fuzzy
matches, and multi-variable matches.  It also allows an easy combination of
these three matches via the tier matching function.")
    (license license:expat)))

(define-public r-federalregister
  (package
    (name "r-federalregister")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "federalregister" version))
       (sha256
        (base32 "0qr8nd3ylnwcv1wxspw5i7ray5sh30zr648spg0lpqq8dp2b8p7b"))))
    (properties `((upstream-name . "federalregister")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-curl))
    (home-page "https://github.com/rOpenGov/federalregister")
    (synopsis "Client Package for the U.S. Federal Register API")
    (description "Access data from the Federal Register API
<https://www.federalregister.gov/developers/api/v1>.")
    (license license:gpl2)))

(define-public r-feddata
  (package
    (name "r-feddata")
    (version "4.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FedData" version))
       (sha256
        (base32 "15cvrph6020m6xinyvnyjmsppz59q911rk9rhlwy107fs54mdlnx"))))
    (properties `((upstream-name . "FedData")))
    (build-system r-build-system)
    (inputs (list gdal))
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-terra
                             r-stringr
                             r-sf
                             r-readr
                             r-purrr
                             r-progress
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-igraph
                             r-httr
                             r-dplyr
                             r-curl))
    (home-page "https://docs.ropensci.org/FedData/")
    (synopsis
     "Functions to Automate Downloading Geospatial Data Available from Several Federated Data Sources")
    (description
     "This package provides functions to automate downloading geospatial data
available from several federated data sources (mainly sources maintained by the
US Federal government).  Currently, the package enables extraction from seven
datasets: The National Elevation Dataset digital elevation models (1 and 1/3
arc-second; USGS); The National Hydrography Dataset (USGS); The Soil Survey
Geographic (SSURGO) database from the National Cooperative Soil Survey (NCSS),
which is led by the Natural Resources Conservation Service (NRCS) under the
USDA; the Global Historical Climatology Network (GHCN), coordinated by National
Climatic Data Center at NOAA; the Daymet gridded estimates of daily weather
parameters for North America, version 3, available from the Oak Ridge National
Laboratory's Distributed Active Archive Center (DAAC); the International Tree
Ring Data Bank; and the National Land Cover Database (NLCD).")
    (license license:expat)))

(define-public r-fect
  (package
    (name "r-fect")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fect" version))
       (sha256
        (base32 "1m2ap1ispc2z1qdj341vx1knsjkqfzi6ys4z3hd9bp4g7bi0xsyx"))))
    (properties `((upstream-name . "fect")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-panelview
                             r-mvtnorm
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-ggally
                             r-future
                             r-foreach
                             r-fixest
                             r-dorng
                             r-doparallel
                             r-abind))
    (home-page "https://yiqingxu.org/packages/fect/articles/tutorial.html")
    (synopsis "Fixed Effects Counterfactuals")
    (description
     "Estimates causal effects with panel data using the counterfactual methods.  It
is suitable for panel or time-series cross-sectional analysis with binary
treatments under (hypothetically) baseline randomization.It allows a treatment
to switch on and off and limited carryover effects.  It supports linear factor
models, a generalization of gsynth and the matrix completion method.
Implementation details can be found in Liu, Wang and Xu (2022)
<@code{arXiv:2107.00856>}.")
    (license license:expat)))

(define-public r-fechner
  (package
    (name "r-fechner")
    (version "1.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fechner" version))
       (sha256
        (base32 "0bassigcipwlr2g8cdjh8jyhmb903k3hla9gnigcbz7qwzlfwa86"))))
    (properties `((upstream-name . "fechner")))
    (build-system r-build-system)
    (home-page "http://www.meb.edu.tum.de")
    (synopsis "Fechnerian Scaling of Discrete Object Sets")
    (description
     "This package provides functions and example datasets for Fechnerian scaling of
discrete object sets.  User can compute Fechnerian distances among objects
representing subjective dissimilarities, and other related information.  See
package?fechner for an overview.")
    (license license:gpl2+)))

(define-public r-fec16
  (package
    (name "r-fec16")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fec16" version))
       (sha256
        (base32 "1lyqq4vx30bypl5b2yvv9k4zk1li6h43r2xf4dz5m11ycqw0ysja"))))
    (properties `((upstream-name . "fec16")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom r-usethis r-readr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/baumer-lab/fec16")
    (synopsis "Data Package for the 2016 United States Federal Elections")
    (description
     "Easily analyze relational data from the United States 2016 federal election
cycle as reported by the Federal Election Commission.  This package contains
data about candidates, committees, and a variety of different financial
expenditures.  Data is from
<https://www.fec.gov/data/browse-data/?tab=bulk-data>.")
    (license license:cc0)))

(define-public r-featurizer
  (package
    (name "r-featurizer")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "featurizer" version))
       (sha256
        (base32 "05jvwsvpbdj94q3wl7ld6xmfc9p7ff9zsmryd3mmxz0hzbq2cnkc"))))
    (properties `((upstream-name . "featurizer")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=featurizer")
    (synopsis "Some Helper Functions that Help Create Features from Data")
    (description
     "This package provides a collection of functions that would help one to build
features based on external data.  Very useful for Data Scientists in data to day
work.  Many functions create features using parallel computation.  Since the
nitty gritty of parallel computation is hidden under the hood, the user need not
worry about creating clusters and shutting them down.")
    (license license:gpl2+)))

(define-public r-featureterminator
  (package
    (name "r-featureterminator")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FeatureTerminatoR" version))
       (sha256
        (base32 "036ip8jm4d5ybyqmvrnjqp4hl8gsmd346737ghipnmmyaml9xfs5"))))
    (properties `((upstream-name . "FeatureTerminatoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-randomforest
                             r-lattice
                             r-ggplot2
                             r-e1071
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FeatureTerminatoR")
    (synopsis
     "Feature Selection Engine to Remove Features with Minimal Predictive Power")
    (description
     "The aim is to take in data.frame inputs and utilises methods, such as recursive
feature engineering, to enable the features to be removed.  What this does
differently from the other packages, is that it gives you the choice to remove
the variables manually, or it automated this process.  Feature selection is a
concept in machine learning, and statistical pipelines, whereby unimportant, or
less predictive variables are eliminated from the analysis, see Boughaci (2018)
<doi:10.1007/s40595-018-0107-y>.")
    (license license:gpl3)))

(define-public r-features
  (package
    (name "r-features")
    (version "2015.12-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "features" version))
       (sha256
        (base32 "0rd8r1dxzddb6718hcm8ck7531c9wdrjfy8n67875bbxgzcvds61"))))
    (properties `((upstream-name . "features")))
    (build-system r-build-system)
    (propagated-inputs (list r-lokern))
    (home-page
     "http://www.jhsph.edu/agingandhealth/People/Faculty_personal_pages/Varadhan.html")
    (synopsis "Feature Extraction for Discretely-Sampled Functional Data")
    (description
     "Discretely-sampled function is first smoothed.  Features of the smoothed
function are then extracted.  Some of the key features include mean value, first
and second derivatives, critical points (i.e.  local maxima and minima),
curvature of cunction at critical points, wiggliness of the function, noise in
data, and outliers in data.")
    (license license:gpl2+)))

(define-public r-featureimpcluster
  (package
    (name "r-featureimpcluster")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FeatureImpCluster" version))
       (sha256
        (base32 "1ifxw6rd870g258fkyyy3mhghxm7486nvgnp3lh5ih2i1v34dgig"))))
    (properties `((upstream-name . "FeatureImpCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-data-table))
    (home-page "https://cran.r-project.org/package=FeatureImpCluster")
    (synopsis "Feature Importance for Partitional Clustering")
    (description
     "This package implements a novel approach for measuring feature importance in
k-means clustering.  Importance of a feature is measured by the
misclassification rate relative to the baseline cluster assignment due to a
random permutation of feature values.  An explanation of permutation feature
importance in general can be found here:
<https://christophm.github.io/interpretable-ml-book/feature-importance.html>.")
    (license license:gpl3)))

(define-public r-featurehashing
  (package
    (name "r-featurehashing")
    (version "0.9.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FeatureHashing" version))
       (sha256
        (base32 "1hfa2p78a7hhn5p0xhsha6pl2aisvkjd791j61s73w99vbysmmpl"))))
    (properties `((upstream-name . "FeatureHashing")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrix r-magrittr r-digest r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wush978/FeatureHashing")
    (synopsis
     "Creates a Model Matrix via Feature Hashing with a Formula Interface")
    (description
     "Feature hashing, also called as the hashing trick, is a method to transform
features of a instance to a vector.  Thus, it is a method to transform a real
dataset to a matrix.  Without looking up the indices in an associative array, it
applies a hash function to the features and uses their hash values as indices
directly.  The method of feature hashing in this package was proposed in
Weinberger et al. (2009) <@code{arXiv:0902.2206>}.  The hashing algorithm is the
murmurhash3 from the digest package.  Please see the README in
<https://github.com/wush978/@code{FeatureHashing>} for more information.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-featureflag
  (package
    (name "r-featureflag")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "featureflag" version))
       (sha256
        (base32 "1p14wbzcqfrn3f04k36039v9ac3ln1srq171g77havddrjx0g35p"))))
    (properties `((upstream-name . "featureflag")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/szymanskir/featureflag")
    (synopsis "Turn Features On and Off using Feature Flags")
    (description
     "Feature flags allow developers to turn features of their software on and off in
form of configuration.  This package provides functions for creating feature
flags in code.  It exposes an interface for defining own feature flags which are
enabled based on custom criteria.")
    (license license:expat)))

(define-public r-featurefinder
  (package
    (name "r-featurefinder")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "featurefinder" version))
       (sha256
        (base32 "024g3adhxx1ynl9wnc2yl3illj4347ak6wkfmvqxfwd6llsa79ld"))))
    (properties `((upstream-name . "featurefinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart-plot r-rpart r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=featurefinder")
    (synopsis "Feature Finder")
    (description
     "Finds modelling features through a detailed analysis of model residuals using
rpart classification and regression trees.  Scans the residuals of a model
across subsets of the data to identify areas where the model prediction differs
from the actual target variable.  S. Chatterjee, A. S. Hadi (2006)
<doi:10.1002/0470055464>.")
    (license license:expat)))

(define-public r-featurecormatrix
  (package
    (name "r-featurecormatrix")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "featureCorMatrix" version))
       (sha256
        (base32 "1gq3g351z3fbrx6ys28iymv9j07p2siav8jr3k07r06w314dk1q6"))))
    (properties `((upstream-name . "featureCorMatrix")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=featureCorMatrix")
    (synopsis "Measurement Level Independent Feature Correlation Matrix")
    (description
     "Uses three different correlation coefficients to calculate measurement-level
adequate correlations in a feature matrix: Pearson product-moment correlation
coefficient, Intraclass correlation and Cramer's V.")
    (license license:gpl2+)))

(define-public r-feasts
  (package
    (name "r-feasts")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "feasts" version))
       (sha256
        (base32 "1yvpfpwxk5hrcs4lq8dwjwhf1zfrbyv75sxi1wcnziykhyjz7rnw"))))
    (properties `((upstream-name . "feasts")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tsibble
                             r-tidyr
                             r-tibble
                             r-slider
                             r-scales
                             r-rlang
                             r-lubridate
                             r-lifecycle
                             r-gtable
                             r-ggplot2
                             r-fabletools
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://feasts.tidyverts.org/")
    (synopsis "Feature Extraction and Statistics for Time Series")
    (description
     "This package provides a collection of features, decomposition methods,
statistical summaries and graphics functions for the analysing tidy time series
data.  The package name feasts is an acronym comprising of its key features:
Feature Extraction And Statistics for Time Series.")
    (license license:gpl3)))

(define-public r-fealect
  (package
    (name "r-fealect")
    (version "1.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FeaLect" version))
       (sha256
        (base32 "1dfi0v313x4a4ck98zlk6yr3nfjrdwr5649x9dx3i7yfkypk2k5c"))))
    (properties `((upstream-name . "FeaLect")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-lars))
    (home-page "https://cran.r-project.org/package=FeaLect")
    (synopsis "Scores Features for Feature Selection")
    (description
     "For each feature, a score is computed that can be useful for feature selection.
Several random subsets are sampled from the input data and for each random
subset, various linear models are fitted using lars method.  A score is assigned
to each feature based on the tendency of LASSO in including that feature in the
models.Finally, the average score and the models are returned as the output.
The features with relatively low scores are recommended to be ignored because
they can lead to overfitting of the model to the training data.  Moreover, for
each random subset, the best set of features in terms of global error is
returned.  They are useful for applying Bolasso, the alternative feature
selection method that recommends the intersection of features subsets.")
    (license license:gpl2+)))

(define-public r-fea
  (package
    (name "r-fea")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FEA" version))
       (sha256
        (base32 "1p2lsfhxih25i6rdwh64p4i5z72ds4a3x8a5p8db1jmx1qi07kq5"))))
    (properties `((upstream-name . "FEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-ptinpoly r-mass r-geosphere r-geometry))
    (home-page "https://cran.r-project.org/package=FEA")
    (synopsis "Finite Element Modeling for R")
    (description
     "Finite element modeling of beam structures and 2D geometries using constant
strain triangles.  Applies material properties and boundary conditions (load and
constraint) to generate a finite element model.  The model produces stress,
strain, and nodal displacements; a heat map is available to demonstrate regions
where output variables are high or low.  Also provides options for creating a
triangular mesh of 2D geometries.  Package developed with reference to: Bathe,
K. J. (1996).  Finite Element Procedures.[ISBN 978-0-9790049-5-7] -- Seshu, P.
(2012).  Textbook of Finite Element Analysis. [ISBN-978-81-203-2315-5] --
Mustapha, K. B. (2018).  Finite Element Computations in Mechanics with R. [ISBN
9781315144474].")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fdx
  (package
    (name "r-fdx")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FDX" version))
       (sha256
        (base32 "16d2gwdiqv3i37ad33mvad8hsni0i7zf3y85z9sgxvabhs5igva1"))))
    (properties `((upstream-name . "FDX")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-pracma r-poissonbinomial r-discretefdr))
    (home-page "https://github.com/DISOhda/FDX")
    (synopsis
     "False Discovery Exceedance Controlling Multiple Testing Procedures")
    (description
     "Multiple testing procedures for heterogeneous and discrete tests as described in
DÃ¶hler and Roquain (2019) <@code{arXiv:1912.04607v1>}.  The main algorithms of
the paper are available as continuous, discrete and weighted versions.")
    (license license:gpl3)))

(define-public r-fdrsampsize
  (package
    (name "r-fdrsampsize")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FDRsampsize" version))
       (sha256
        (base32 "0g8kawzyi9x5yndvh330wzqw6rvcnprwq56ngd0j6z51hvvw8qhw"))))
    (properties `((upstream-name . "FDRsampsize")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FDRsampsize")
    (synopsis
     "Compute Sample Size that Meets Requirements for Average Power and FDR")
    (description
     "Defines a collection of functions to compute average power and sample size for
studies that use the false discovery rate as the final measure of statistical
significance.")
    (license license:gpl2)))

(define-public r-fdrestimation
  (package
    (name "r-fdrestimation")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FDRestimation" version))
       (sha256
        (base32 "083w50g8n03l0wigywm90xyp8xjxbsbbicv0a5g2wmbdd70m4nay"))))
    (properties `((upstream-name . "FDRestimation")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (home-page "<doi:10.12688/f1000research.52999.2>")
    (synopsis "Estimate, Plot, and Summarize False Discovery Rates")
    (description
     "The user can directly compute and display false discovery rates from inputted
p-values or z-scores under a variety of assumptions.  p.fdr() computes FDRs,
adjusted p-values and decision reject vectors from inputted p-values or
z-values.  get.pi0() estimates the proportion of data that are truly null.
plot.p.fdr() plots the FDRs, adjusted p-values, and the raw p-values points
against their rejection threshold lines.")
    (license license:expat)))

(define-public r-fdrdiscretenull
  (package
    (name "r-fdrdiscretenull")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdrDiscreteNull" version))
       (sha256
        (base32 "1lwznpwfnhhv0h7qwy9jc7li752bq7hgmkh86qzyqz7k18zgx4iw"))))
    (properties `((upstream-name . "fdrDiscreteNull")))
    (build-system r-build-system)
    (propagated-inputs (list r-qvalue r-mcmcpack))
    (home-page "http://math.wsu.edu/faculty/xchen/welcome.php")
    (synopsis
     "False Discovery Rate Procedures Under Discrete and Heterogeneous Null Distributions")
    (description
     "It is known that current false discovery rate (FDR) procedures can be very
conservative when applied to multiple testing in the discrete paradigm where
p-values (and test statistics) have discrete and heterogeneous null
distributions.  This package implements more powerful weighted or adaptive FDR
procedures for FDR control and estimation in the discrete paradigm.  The package
takes in the original data set rather than just the p-values in order to carry
out the adjustments for discreteness and heterogeneity of p-value distributions.
 The package implements methods for two types of test statistics and their
p-values: (a) binomial test on if two independent Poisson distributions have the
same means, (b) Fisher's exact test on if the conditional distribution is the
same as the marginal distribution for two binomial distributions, or on if two
independent binomial distributions have the same probabilities of success.")
    (license license:lgpl2.0+)))

(define-public r-fdrci
  (package
    (name "r-fdrci")
    (version "2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdrci" version))
       (sha256
        (base32 "0pc1iv7cari3gl5v6w62ix0y7ll4dqsm4sk5a5ipbarfx11irkgj"))))
    (properties `((upstream-name . "fdrci")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fdrci")
    (synopsis "Permutation-Based FDR Point and Confidence Interval Estimation")
    (description
     "FDR functions for permutation-based estimators, including pi0 as well as FDR
confidence intervals.  The confidence intervals account for dependencies between
tests by the incorporation of an overdispersion parameter, which is estimated
from the permuted data.  Also included are options for an analog parametric
approach.")
    (license license:artistic2.0)))

(define-public r-fdq
  (package
    (name "r-fdq")
    (version "0.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdq" version))
       (sha256
        (base32 "198nsyzv0ni2mjx12wik58c7z5vrc1mfk80k3iv94dz1iq9fprqf"))))
    (properties `((upstream-name . "fdq")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf r-randomcolor r-ggplot2 r-fgmutils
                             r-data-table))
    (home-page "https://cran.r-project.org/package=fdq")
    (synopsis "Forest Data Quality")
    (description
     "Forest data quality is a package containing nine methods of analysis for forest
databases, from databases containing inventory data and growth models, the focus
of the analyzes is related to the quality of the data present in the database
with a focus on consistency , punctuality and completeness of data.")
    (license license:gpl3)))

(define-public r-fdma
  (package
    (name "r-fdma")
    (version "2.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fDMA" version))
       (sha256
        (base32 "02710ynd3y13pkbypmqh7lid9g3xn282kxf59yr5p3d76384z0gg"))))
    (properties `((upstream-name . "fDMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tseries
                             r-rcpparmadillo
                             r-rcpp
                             r-psych
                             r-png
                             r-itertools
                             r-iterators
                             r-gplots
                             r-forecast
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-r-rsp))
    (home-page "https://CRAN.R-project.org/package=fDMA")
    (synopsis
     "Dynamic Model Averaging and Dynamic Model Selection for Continuous Outcomes")
    (description
     "Allows to estimate dynamic model averaging, dynamic model selection and median
probability model.  The original methods are implemented, as well as, selected
further modifications of these methods.  In particular the user might choose
between recursive moment estimation and exponentially moving average for
variance updating.  Inclusion probabilities might be modified in a way using
Google Trends'.  The code is written in a way which minimises the computational
burden (which is quite an obstacle for dynamic model averaging if many variables
are used).  For example, this package allows for parallel computations and
Occam's window approach.  The package is designed in a way that is hoped to be
especially useful in economics and finance.  Main reference: Raftery, A.E.,
Karny, M., Ettler, P. (2010) <doi:10.1198/TECH.2009.08104>.")
    (license license:gpl3)))

(define-public r-fdm2id
  (package
    (name "r-fdm2id")
    (version "0.9.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdm2id" version))
       (sha256
        (base32 "09qxjr2svqv1r49s4q5wk1pzm95lxfm1w0pr4a60zv2p9qrljsxk"))))
    (properties `((upstream-name . "fdm2id")))
    (build-system r-build-system)
    (propagated-inputs (list r-pls
                             r-nnet
                             r-mclust
                             r-factominer
                             r-arulesviz
                             r-arules))
    (home-page "https://cran.r-project.org/package=fdm2id")
    (synopsis "Data Mining and R Programming for Beginners")
    (description
     "This package contains functions to simplify the use of data mining methods
(classification, regression, clustering, etc.), for students and beginners in R
programming.  Various R packages are used and wrappers are built around the main
functions, to standardize the use of data mining methods (input/output): it
brings a certain loss of flexibility, but also a gain of simplicity.  The
package name came from the French \"Fouille de @code{DonnÃ©es} en Master 2
Informatique DÃ©cisionnelle\".")
    (license license:gpl3)))

(define-public r-fdicdata
  (package
    (name "r-fdicdata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdicdata" version))
       (sha256
        (base32 "1zz8wd124bbjn2fjllq8hc00r475w96bcaphcgxbqr9hfzzjpg2f"))))
    (properties `((upstream-name . "fdicdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-httr r-dplyr))
    (home-page "https://github.com/visbanking/fdicdata")
    (synopsis "Accessing FDIC Bank Data")
    (description
     "This package provides a system provides a set of functions for working with data
from the Federal Deposit Insurance Corporation (FDIC), including retrieving
financial data for FDIC-insured institutions and accessing the data taxonomy.")
    (license license:expat)))

(define-public r-fddm
  (package
    (name "r-fddm")
    (version "0.5-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fddm" version))
       (sha256
        (base32 "0sh3qnsakl02wpzwhxyqdikn7xx5crh401w3d149ww2jxvagjmsf"))))
    (properties `((upstream-name . "fddm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rtdists/fddm")
    (synopsis "Fast Implementation of the Diffusion Decision Model")
    (description
     "This package provides the probability density function (PDF), cumulative
distribution function (CDF), and the partial derivatives of the PDF of the
diffusion decision model (DDM; e.g., Ratcliff & @code{McKoon}, 2008,
<doi:10.1162/neco.2008.12-06-420>) with across-trial variability in the drift
rate.  Because the PDF, its partial derivatives, and the CDF of the DDM both
contain an infinite sum, they need to be approximated.  fddm implements all
published approximations (Navarro & Fuss, 2009, <doi:10.1016/j.jmp.2009.02.003>;
Gondan, Blurton, & Kesselmeier, 2014, <doi:10.1016/j.jmp.2014.05.002>; Blurton,
Kesselmeier, & Gondan, 2017, <doi:10.1016/j.jmp.2016.11.003>; Hartmann & Klauer,
2021, <doi:10.1016/j.jmp.2021.102550>) plus new approximations.  All
approximations are implemented purely in C++ providing faster speed than
existing packages.")
    (license license:gpl2+)))

(define-public r-fdboost
  (package
    (name "r-fdboost")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FDboost" version))
       (sha256
        (base32 "0fmcwjrcj4axdajavlyg7d200yb6wkxkd7fidmcsxpvpnbbb7wgj"))))
    (properties `((upstream-name . "FDboost")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-stabs
                             r-mgcv
                             r-mboost
                             r-matrix
                             r-mass
                             r-gamboostlss))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/boost-R/FDboost")
    (synopsis "Boosting Functional Regression Models")
    (description
     "Regression models for functional data, i.e., scalar-on-function,
function-on-scalar and function-on-function regression models, are fitted by a
component-wise gradient boosting algorithm.  For a manual on how to use
FDboost', see Brockhaus, Ruegamer, Greven (2017) <doi:10.18637/jss.v094.i10>.")
    (license license:gpl2)))

(define-public r-fdatest
  (package
    (name "r-fdatest")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdatest" version))
       (sha256
        (base32 "13sd85ypx2z07qxsqhsbc5w0yasf01yw06qx91ymh0yr8538x3x3"))))
    (properties `((upstream-name . "fdatest")))
    (build-system r-build-system)
    (propagated-inputs (list r-fda))
    (home-page "https://cran.r-project.org/package=fdatest")
    (synopsis "Interval Testing Procedure for Functional Data")
    (description
     "Implementation of the Interval Testing Procedure for functional data in
different frameworks (i.e., one or two-population frameworks, functional linear
models) by means of different basis expansions (i.e., B-spline, Fourier, and
phase-amplitude Fourier).  The current version of the package requires
functional data evaluated on a uniform grid; it automatically projects each
function on a chosen functional basis; it performs the entire family of
multivariate tests; and, finally, it provides the matrix of the p-values of the
previous tests and the vector of the corrected p-values.  The functional basis,
the coupled or uncoupled scenario, and the kind of test can be chosen by the
user.  The package provides also a plotting function creating a graphical output
of the procedure: the p-value heat-map, the plot of the corrected p-values, and
the plot of the functional data.")
    (license license:gpl2)))

(define-public r-fdasrvf
  (package
    (name "r-fdasrvf")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdasrvf" version))
       (sha256
        (base32 "1m9wn9lbpg7ib3clqydcnrclrjw4yany0cmhmvvkar1dk8r0qar9"))))
    (properties `((upstream-name . "fdasrvf")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-tolerance
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-matrix
                             r-lpsolve
                             r-foreach
                             r-fields
                             r-doparallel
                             r-coda
                             r-cli))
    (home-page "https://github.com/jdtuck/fdasrvf_R")
    (synopsis "Elastic Functional Data Analysis")
    (description
     "This package performs alignment, PCA, and modeling of multidimensional and
unidimensional functions using the square-root velocity framework (Srivastava et
al., 2011 <@code{arXiv:1103.3817>} and Tucker et al., 2014
<DOI:10.1016/j.csda.2012.12.001>).  This framework allows for elastic analysis
of functional data through phase and amplitude separation.")
    (license license:gpl3)))

(define-public r-fdasp
  (package
    (name "r-fdasp")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaSP" version))
       (sha256
        (base32 "1vhnrw2shxnpd2vnqkjq8lqx344p3z488x8wzpkb8hxnxzmfp08w"))))
    (properties `((upstream-name . "fdaSP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-ks
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=fdaSP")
    (synopsis "Sparse Functional Data Analysis Methods")
    (description
     "This package provides algorithms to fit linear regression models under several
popular penalization techniques and functional linear regression models based on
Majorizing-Minimizing (MM) and Alternating Direction Method of Multipliers
(ADMM) techniques.  See Boyd et al (2010) <doi:10.1561/2200000016> for complete
introduction to the method.")
    (license license:gpl3+)))

(define-public r-fdapoifd
  (package
    (name "r-fdapoifd")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaPOIFD" version))
       (sha256
        (base32 "0c773hidrg69gs9lzdcwf4hzzmid3kwf73pw6c807y1b4lgiai20"))))
    (properties `((upstream-name . "fdaPOIFD")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-reshape2
                             r-patchwork
                             r-mass
                             r-magrittr
                             r-ggplot2
                             r-fdapace
                             r-fastgp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aefdz/fdaPOIFD")
    (synopsis "Partially Observed Integrated Functional Depth")
    (description
     "Applications to visualization, outlier detection and classification.  Software
companion for @code{ElÃ­as}, Antonio, @code{JimÃ©nez}, @code{RaÃºl}, Paganoni,
Anna M. and Sangalli, Laura M., (2022), \"Integrated Depth for Partially Observed
Functional Data\".  Journal of Computational and Graphical Statistics.
<doi:10.1080/10618600.2022.2070171>.")
    (license license:gpl3)))

(define-public r-fdapde
  (package
    (name "r-fdapde")
    (version "1.1-16")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaPDE" version))
       (sha256
        (base32 "0z5plkig2df8scvx07wmd4f0w0pp1ddfafg70shcic6lahg2xk27"))))
    (properties `((upstream-name . "fdaPDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-rcppeigen r-rcpp r-plot3d r-matrix))
    (home-page "https://cran.r-project.org/package=fdaPDE")
    (synopsis "Physics-Informed Spatial and Functional Data Analysis")
    (description
     "An implementation of regression models with partial differential
regularizations, making use of the Finite Element Method.  The models
efficiently handle data distributed over irregularly shaped domains and can
comply with various conditions at the boundaries of the domain.  A priori
information about the spatial structure of the phenomenon under study can be
incorporated in the model via the differential regularization.  See Sangalli, L.
M. (2021) <doi:10.1111/insr.12444> \"Spatial Regression With Partial Differential
Equation Regularisation\" for an overview.  The release 1.1-9 requires R (>=
4.2.0) to be installed on windows machines.")
    (license license:gpl3)))

(define-public r-fdapaceshiny
  (package
    (name "r-fdapaceshiny")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdapaceShiny" version))
       (sha256
        (base32 "1cy1rcmsyr78q3wqkaw3lvqzlr07n7djrqqpwm3y8xz60fybs8p6"))))
    (properties `((upstream-name . "fdapaceShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shinyjs
                             r-shiny
                             r-reshape2
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-htmltools
                             r-golem
                             r-ggplot2
                             r-fdapace
                             r-dt
                             r-dplyr
                             r-config
                             r-bs4dash))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cpossinger/fdapaceShiny")
    (synopsis "Shiny App for the 'fdapace' Package")
    (description "Shiny app for the fdapace package.")
    (license license:expat)))

(define-public r-fdapace
  (package
    (name "r-fdapace")
    (version "0.5.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdapace" version))
       (sha256
        (base32 "16j731d7y290xk5qvld59pb78mrch5i61szcf3j79kkirmz6hh8f"))))
    (properties `((upstream-name . "fdapace")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-pracma
                             r-numderiv
                             r-matrix
                             r-mass
                             r-hmisc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/functionaldata/tPACE")
    (synopsis "Functional Data Analysis and Empirical Dynamics")
    (description
     "This package provides a versatile package that provides implementation of
various methods of Functional Data Analysis (FDA) and Empirical Dynamics.  The
core of this package is Functional Principal Component Analysis (FPCA), a key
technique for functional data analysis, for sparsely or densely sampled random
trajectories and time courses, via the Principal Analysis by Conditional
Estimation (PACE) algorithm.  This core algorithm yields covariance and mean
functions, eigenfunctions and principal component (scores), for both functional
data and derivatives, for both dense (functional) and sparse (longitudinal)
sampling designs.  For sparse designs, it provides fitted continuous
trajectories with confidence bands, even for subjects with very few longitudinal
observations.  PACE is a viable and flexible alternative to random effects
modeling of longitudinal data.  There is also a Matlab version (PACE) that
contains some methods not available on fdapace and vice versa.  Updates to
fdapace were supported by grants from NIH Echo and NSF DMS-1712864 and
DMS-2014626.  Please cite our package if you use it (You may run the command
citation(\"fdapace\") to get the citation format and bibtex entry).  References:
Wang, J.L., Chiou, J., MÃ¼ller, H.G. (2016)
<doi:10.1146/annurev-statistics-041715-033624>; Chen, K., Zhang, X., Petersen,
A., MÃ¼ller, H.G. (2017) <doi:10.1007/s12561-015-9137-5>.")
    (license license:bsd-3)))

(define-public r-fdaoutlier
  (package
    (name "r-fdaoutlier")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaoutlier" version))
       (sha256
        (base32 "0jxq46ch0sddl08n2i71zwx2d6qdxayb012qkrc8pki2rvkcqy77"))))
    (properties `((upstream-name . "fdaoutlier")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/otsegun/fdaoutlier")
    (synopsis "Outlier Detection Tools for Functional Data Analysis")
    (description
     "This package provides a collection of functions for outlier detection in
functional data analysis.  Methods implemented include directional outlyingness
by Dai and Genton (2019) <doi:10.1016/j.csda.2018.03.017>, MS-plot by Dai and
Genton (2018) <doi:10.1080/10618600.2018.1473781>, total variation depth and
modified shape similarity index by Huang and Sun (2019)
<doi:10.1080/00401706.2019.1574241>, and sequential transformations by Dai et
al. (2020) <doi:10.1016/j.csda.2020.106960 among others.  Additional outlier
detection tools and depths for functional data like functional boxplot,
(modified) band depth etc., are also available.")
    (license license:gpl3)))

(define-public r-fdanova
  (package
    (name "r-fdanova")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdANOVA" version))
       (sha256
        (base32 "1pycq5a4czqzi8wcfmlc9ncg827j7n0qxyj90wcv39nbcrnl3da1"))))
    (properties `((upstream-name . "fdANOVA")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass
                             r-magic
                             r-ggplot2
                             r-foreach
                             r-fda
                             r-doparallel
                             r-doby))
    (home-page "https://cran.r-project.org/package=fdANOVA")
    (synopsis
     "Analysis of Variance for Univariate and Multivariate Functional Data")
    (description
     "This package performs analysis of variance testing procedures for univariate and
multivariate functional data (Cuesta-Albertos and Febrero-Bande (2010)
<doi:10.1007/s11749-010-0185-3>, Gorecki and Smaga (2015)
<doi:10.1007/s00180-015-0555-0>, Gorecki and Smaga (2017)
<doi:10.1080/02664763.2016.1247791>, Zhang et al. (2018)
<doi:10.1016/j.csda.2018.05.004>).")
    (license (list license:lgpl2.0 license:lgpl3 license:gpl2 license:gpl3))))

(define-public r-fdamocca
  (package
    (name "r-fdamocca")
    (version "0.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaMocca" version))
       (sha256
        (base32 "0y54d8a38d5hjnh8iw2r4zl2d2xz72hjddhxbar91jk6zf3kzpsy"))))
    (properties `((upstream-name . "fdaMocca")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrix r-foreach r-fda r-doparallel))
    (home-page "https://cran.r-project.org/package=fdaMocca")
    (synopsis "Model-Based Clustering for Functional Data with Covariates")
    (description
     "Routines for model-based functional cluster analysis for functional data with
optional covariates.  The idea is to cluster functional subjects (often called
functional objects) into homogenous groups by using spline smoothers (for
functional data) together with scalar covariates.  The spline coefficients and
the covariates are modelled as a multivariate Gaussian mixture model, where the
number of mixtures corresponds to the number of clusters.  The parameters of the
model are estimated by maximizing the observed mixture likelihood via an EM
algorithm (Arnqvist and @code{SjÃ¶stedt} de Luna, 2019)
<@code{arXiv:1904.10265>}.  The clustering method is used to analyze annual lake
sediment from lake @code{KassjÃ¶n} (Northern Sweden) which cover more than 6400
years and can be seen as historical records of weather and climate.")
    (license license:gpl2+)))

(define-public r-fdamixed
  (package
    (name "r-fdamixed")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaMixed" version))
       (sha256
        (base32 "1fv5jdz7ri9cf5wj0p0gdc60r75biifijqr1g3lz095cxsn7f9j0"))))
    (properties `((upstream-name . "fdaMixed")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-formula))
    (home-page "https://cran.r-project.org/package=fdaMixed")
    (synopsis "Functional Data Analysis in a Mixed Model Framework")
    (description
     "Likelihood based analysis of 1-dimension functional data in a mixed-effects
model framework.  Matrix computation are approximated by semi-explicit operator
equivalents with linear computational complexity.  Markussen (2013)
<doi:10.3150/11-BEJ389>.")
    (license license:gpl3+)))

(define-public r-fdadensity
  (package
    (name "r-fdadensity")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdadensity" version))
       (sha256
        (base32 "1i2xzchlsixgjzyfmbv547sy6mq90xrnyc2kpd11wwfgfrpj1ix3"))))
    (properties `((upstream-name . "fdadensity")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-fdapace))
    (home-page "https://github.com/functionaldata/tDENS")
    (synopsis
     "Functional Data Analysis for Density Functions by Transformation to a Hilbert Space")
    (description
     "An implementation of the methodology described in Petersen and Mueller (2016)
<doi:10.1214/15-AOS1363> for the functional data analysis of samples of density
functions.  Densities are first transformed to their corresponding log quantile
densities, followed by ordinary Functional Principal Components Analysis (FPCA).
 Transformation modes of variation yield improved interpretation of the
variability in the data as compared to FPCA on the densities themselves.  The
standard fraction of variance explained (FVE) criterion commonly used for
functional data is adapted to the transformation setting, also allowing for an
alternative quantification of variability for density data through the
Wasserstein metric of optimal transport.")
    (license license:bsd-3)))

(define-public r-fdaconcur
  (package
    (name "r-fdaconcur")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaconcur" version))
       (sha256
        (base32 "1ajmm8lrd9lnl8smkjrnnsnfjmb0dnbhrglg1gdcajvr937rhjsa"))))
    (properties `((upstream-name . "fdaconcur")))
    (build-system r-build-system)
    (propagated-inputs (list r-fdapace))
    (home-page "https://github.com/functionaldata/tFDAconcur")
    (synopsis
     "Concurrent Regression and History Index Models for Functional Data")
    (description
     "This package provides an implementation of concurrent or varying coefficient
regression methods for functional data.  The implementations are done for both
dense and sparsely observed functional data.  Pointwise confidence bands can be
constructed for each case.  Further, the influence of past predictor values are
modeled by a smooth history index function, while the effects on the response
are described by smooth varying coefficient functions, which are very useful in
analyzing real data such as COVID data.  References: Yao, F., MÃ¼ller, H.G.,
Wang, J.L. (2005) <doi: 10.1214/009053605000000660>. @code{SentÃ¼rk}, D.,
MÃ¼ller, H.G. (2010) <doi: 10.1198/jasa.2010.tm09228>.")
    (license license:bsd-3)))

(define-public r-fdacluster
  (package
    (name "r-fdacluster")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdacluster" version))
       (sha256
        (base32 "0mpnhd6qp4hif1sbxv52dyg3yfff8icn8xz7sximcjn00g81p343"))))
    (properties `((upstream-name . "fdacluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-progressr
                             r-nloptr
                             r-lpsolve
                             r-ggplot2
                             r-furrr
                             r-forcats
                             r-fdasrvf
                             r-dplyr
                             r-dbscan
                             r-cluster
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://astamm.github.io/fdacluster/index.html")
    (synopsis "Joint Clustering and Alignment of Functional Data")
    (description
     "Implementations of the k-means, hierarchical agglomerative and DBSCAN clustering
methods for functional data which allows for jointly aligning and clustering
curves.  It supports functional data defined on one-dimensional domains but
possibly evaluating in multivariate codomains.  It supports functional data
defined in arrays but also via the fd and @code{funData} classes for functional
data defined in the fda and @code{funData} packages respectively.  It currently
supports shift, dilation and affine warping functions for functional data
defined on the real line and uses the SRSF framework to handle
boundary-preserving warping for functional data defined on a specific interval.
Main reference for the k-means algorithm: Sangalli L.M., Secchi P., Vantini S.,
Vitelli V. (2010) \"k-mean alignment for curve clustering\"
<doi:10.1016/j.csda.2009.12.008>.  Main reference for the SRSF framework:
Tucker, J. D., Wu, W., & Srivastava, A. (2013) \"Generative models for functional
data using phase and amplitude separation\" <doi:10.1016/j.csda.2012.12.001>.")
    (license license:gpl3+)))

(define-public r-fdaacf
  (package
    (name "r-fdaacf")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fdaACF" version))
       (sha256
        (base32 "0qrsj25p6h2xg25v0ayk8x31d4whyy0mpf2xdpw3hcwhb71mbfhn"))))
    (properties `((upstream-name . "fdaACF")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars r-pracma r-fda r-compquadform))
    (home-page "https://github.com/GMestreM/fdaACF")
    (synopsis "Autocorrelation Function for Functional Time Series")
    (description
     "Quantify the serial correlation across lags of a given functional time series
using the autocorrelation function and a partial autocorrelation function for
functional time series proposed in Mestre et al. (2021)
<doi:10.1016/j.csda.2020.107108>.  The autocorrelation functions are based on
the L2 norm of the lagged covariance operators of the series.  Functions are
available for estimating the distribution of the autocorrelation functions under
the assumption of strong functional white noise.")
    (license license:gpl2+)))

(define-public r-fda-usc
  (package
    (name "r-fda-usc")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fda.usc" version))
       (sha256
        (base32 "1s13zssm7x3hg1k928r5jkjz35bflb1nzz4c7b4xr0x1j8qg3d60"))))
    (properties `((upstream-name . "fda.usc")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme
                             r-mgcv
                             r-mass
                             r-ksamples
                             r-iterators
                             r-foreach
                             r-fda
                             r-doparallel))
    (native-inputs (list gfortran))
    (home-page "https://github.com/moviedo5/fda.usc")
    (synopsis
     "Functional Data Analysis and Utilities for Statistical Computing")
    (description
     "Routines for exploratory and descriptive analysis of functional data such as
depth measurements, atypical curves detection, regression models, supervised
classification, unsupervised classification and functional analysis of variance.")
    (license license:gpl2)))

(define-public r-fd
  (package
    (name "r-fd")
    (version "1.0-12.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FD" version))
       (sha256
        (base32 "18i0wcmi2nslifi395ajkkfy3j6dsdbrj4nl5ni6ndnmxifg7d0f"))))
    (properties `((upstream-name . "FD")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-geometry r-ape r-ade4))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=FD")
    (synopsis
     "Measuring Functional Diversity (FD) from Multiple Traits, and Other Tools for Functional Ecology")
    (description
     "Computes different multidimensional FD indices.  Implements a distance-based
framework to measure FD that allows any number and type of functional traits,
and can also consider species relative abundances.  Also contains other useful
tools for functional ecology.")
    (license license:gpl2)))

(define-public r-fcvar
  (package
    (name "r-fcvar")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FCVAR" version))
       (sha256
        (base32 "0762pkjh0yk96jlpqw4jv0andr0s0ylx14rh1igv9d0nagd237ba"))))
    (properties `((upstream-name . "FCVAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-fracdist))
    (home-page "https://github.com/LeeMorinUCF/FCVAR")
    (synopsis "Estimation and Inference for the Fractionally Cointegrated VAR")
    (description
     "Estimation and inference using the Fractionally Cointegrated Vector
Autoregressive (VAR) model.  It includes functions for model specification,
including lag selection and cointegration rank selection, as well as a
comprehensive set of options for hypothesis testing, including tests of
hypotheses on the cointegrating relations, the adjustment coefficients and the
fractional differencing parameters.  An article describing the FCVAR model with
examples is available on the Webpage
<https://sites.google.com/view/mortennielsen/software>.")
    (license license:gpl3)))

(define-public r-fcuk
  (package
    (name "r-fcuk")
    (version "0.1.21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcuk" version))
       (sha256
        (base32 "1sb7p1m5qb88028mrw95lhh8l7dxj696hjh88nfsdpnscryknfpv"))))
    (properties `((upstream-name . "fcuk")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringdist r-purrr r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ThinkRstat/fcuk")
    (synopsis "The Ultimate Helper for Clumsy Fingers")
    (description "Automatically suggests a correction when a typo occurs.")
    (license license:gpl3)))

(define-public r-fctbases
  (package
    (name "r-fctbases")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fctbases" version))
       (sha256
        (base32 "19ay3n7m9r72szzxlyd9yrpgajfl8dy75f54cfvmj130p9sv3jfq"))))
    (properties `((upstream-name . "fctbases")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/naolsen/fctbases")
    (synopsis "Functional Bases")
    (description
     "Easy-to-use, very fast implementation of various functional bases.  Easily used
together with other packages.  A functional basis is a collection of basis
functions [\\phi_1, ..., \\phi_n] that can represent a smooth function, i.e. $f(t)
= \\sum c_k \\phi_k(t)$.  First- and second-order derivatives are also included.
These are the mathematically correct ones, no approximations applied.  As of
version 1.1, this package includes B-splines, Fourier bases and polynomials.")
    (license license:gpl3)))

(define-public r-fcslib
  (package
    (name "r-fcslib")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FCSlib" version))
       (sha256
        (base32 "1191ba6dwpakcdnbcq61zm5xq24isxjnn98nmvk67fpf1ycw70w9"))))
    (properties `((upstream-name . "FCSlib")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiff r-stringr r-fields r-bitops))
    (home-page "https://cran.r-project.org/package=FCSlib")
    (synopsis
     "Collection of Fluorescence Fluctuation Spectroscopy Analysis Methods")
    (description
     "This is a package for fluorescence fluctuation spectroscopy data analysis
methods such as @code{spFCS}, FCCS, scanning-FCS, @code{pCF}, N&B and
@code{pCOMB}, among others.  In addition, several data detrending tools are
provided.  For an extensive user's guide for the use of FCSlib, please navigate
to (<https://github.com/FCSlib/FCSlib/tree/master/Documentation>).  Sample data
can be found at (<https://github.com/FCSlib/FCSlib/tree/master/Sample%20Data>).
The original paper where this package is presented can be found at
(<doi:10.1093/bioinformatics/btaa876>).")
    (license license:gpl3)))

(define-public r-fcros
  (package
    (name "r-fcros")
    (version "1.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcros" version))
       (sha256
        (base32 "04yr6lqs38lczsmdvdm78qn63836qj7xwspgh3h3n3gh8cssd83x"))))
    (properties `((upstream-name . "fcros")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fcros")
    (synopsis
     "Method to Search for Differentially Expressed Genes and to Detect Recurrent Chromosomal Copy Number Aberrations")
    (description
     "This package provides a fold change rank based method is presented to search for
genes with changing expression and to detect recurrent chromosomal copy number
aberrations.  This method may be useful for high-throughput biological data
(micro-array, sequencing, ...).  Probabilities are associated with genes or
probes in the data set and there is no problem of multiple tests when using this
method.  For array-based comparative genomic hybridization data, segmentation
results are obtained by merging the significant probes detected.")
    (license license:gpl2+)))

(define-public r-fcr
  (package
    (name "r-fcr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcr" version))
       (sha256
        (base32 "17jrz5zp1msd2khl1lwnb5sgxcigagni556rhn7qm9g0aykbh8yj"))))
    (properties `((upstream-name . "fcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-fields r-face))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fcr")
    (synopsis "Functional Concurrent Regression for Sparse Data")
    (description
     "Dynamic prediction in functional concurrent regression with an application to
child growth.  Extends the pffr() function from the refund package to handle the
scenario where the functional response and concurrently measured functional
predictor are irregularly measured.  Leroux et al. (2017), Statistics in
Medicine, <doi:10.1002/sim.7582>.")
    (license license:gpl3+)))

(define-public r-fcps
  (package
    (name "r-fcps")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FCPS" version))
       (sha256
        (base32 "15xsqwnn5liqjbwg8qpj7prqdiykfxczdw9fyllya7x801ky1rfi"))))
    (properties `((upstream-name . "FCPS")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-mclust r-ggplot2 r-datavisualizations))
    (native-inputs (list r-knitr))
    (home-page "https://www.deepbionics.org/")
    (synopsis "Fundamental Clustering Problems Suite")
    (description
     "Over sixty clustering algorithms are provided in this package with consistent
input and output, which enables the user to try out algorithms swiftly.
Additionally, 26 statistical approaches for the estimation of the number of
clusters as well as the mirrored density plot (MD-plot) of clusterability are
implemented.  The packages is published in Thrun, M.C., Stier Q.: \"Fundamental
Clustering Algorithms Suite\" (2021), @code{SoftwareX},
<DOI:10.1016/j.softx.2020.100642>.  Moreover, the fundamental clustering
problems suite (FCPS) offers a variety of clustering challenges any algorithm
should handle when facing real world data, see Thrun, M.C., Ultsch A.:
\"Clustering Benchmark Datasets Exploiting the Fundamental Clustering Problems\"
(2020), Data in Brief, <DOI:10.1016/j.dib.2020.105501>.")
    (license license:gpl3)))

(define-public r-fcopulae
  (package
    (name "r-fcopulae")
    (version "4022.85")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fCopulae" version))
       (sha256
        (base32 "18gjlh254wm2yjyxrhrlbhjp6qvan3yway2m3fb0dqskd6dwmgq2"))))
    (properties `((upstream-name . "fCopulae")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate r-fmultivar r-fbasics))
    (home-page "https://www.rmetrics.org")
    (synopsis "Rmetrics - Bivariate Dependence Structures with Copulae")
    (description
     "This package provides a collection of functions to manage, to investigate and to
analyze bivariate financial returns by Copulae.  Included are the families of
Archemedean, Elliptical, Extreme Value, and Empirical Copulae.")
    (license license:gpl2+)))

(define-public r-fco
  (package
    (name "r-fco")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FCO" version))
       (sha256
        (base32 "1zysqchq59v9ykp012sp870wgmckbq8gq3pqhl0jyh903hxw59qv"))))
    (properties `((upstream-name . "FCO")))
    (build-system r-build-system)
    (propagated-inputs (list r-semtools r-lavaan r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FCO")
    (synopsis
     "Flexible Cutoffs for Model Fit Evaluation in Covariance-Based Structural Models")
    (description
     "This package provides a toolbox to derive flexible cutoffs for fit indices in
Covariance-based Structural Equation Modeling based on the paper by Niemand &
Mai (2018) <doi:10.1007/s11747-018-0602-9>.  Flexible cutoffs are an alternative
to fixed cutoffs - rules-of-thumb - regarding an appropriate cutoff for fit
indices such as CFI or SRMR'.  It has been demonstrated that these flexible
cutoffs perform better than fixed cutoffs in grey areas where misspecification
is not easy to detect.  The package provides an alternative to the tool at
<https://flexiblecutoffs.org> as it allows to tailor flexible cutoffs to a given
dataset and model, which is so far not available in the tool.  The package
simulates fit indices based on a given dataset and model and then estimates the
flexible cutoffs.  Some useful functions, e.g., to determine the @code{GoF}- or
@code{BoF-nature} of a fit index, are provided.  So far, additional options for
a relative use (is a model better than another?) are provided in an exploratory
manner.")
    (license license:gpl3+)))

(define-public r-fcmapper
  (package
    (name "r-fcmapper")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FCMapper" version))
       (sha256
        (base32 "1yjh8rs65nqslvwv7x4rif469zds41s7v3vhq6pca1y17kvj2in1"))))
    (properties `((upstream-name . "FCMapper")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=FCMapper")
    (synopsis "Fuzzy Cognitive Mapping")
    (description
     "This package provides several functions to create and manipulate fuzzy cognitive
maps.  It is based on FCMapper for Excel, distributed at <http://
www.fcmappers.net/joomla/>, developed by Michael Bachhofer and Martin
Wildenberg.  Maps are inputted as adjacency matrices.  Attributes of the maps
and the equilibrium values of the concepts (including with user-defined
constrained values) can be calculated.  The maps can be graphed with a function
that calls igraph'.  Multiple maps with shared concepts can be aggregated.")
    (license license:gpl2)))

(define-public r-fcm
  (package
    (name "r-fcm")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcm" version))
       (sha256
        (base32 "1mqk6szczsixdvw0inkypij4cw2syng5l5ccw0xk55kc21l1lzn0"))))
    (properties `((upstream-name . "fcm")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fcm")
    (synopsis "Inference of Fuzzy Cognitive Maps (FCMs)")
    (description
     "This package provides a selection of 3 different inference rules (including
additionally the clamped types of the referred inference rules) and 4 threshold
functions in order to obtain the inference of the FCM (Fuzzy Cognitive Map).
Moreover, the fcm package returns a data frame of the concepts values of each
state after the inference procedure.  Fuzzy cognitive maps were introduced by
Kosko (1986) <doi:10.1002/int.4550010405> providing ideal causal cognition tools
for modeling and simulating dynamic systems.")
    (license license:gpl2)))

(define-public r-fclust
  (package
    (name "r-fclust")
    (version "2.1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fclust" version))
       (sha256
        (base32 "1d5qa30jlx6qn6npvccl97fcmh5a4wf3nw0d7jvn3y7mcb5yqlqk"))))
    (properties `((upstream-name . "fclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=fclust")
    (synopsis "Fuzzy Clustering")
    (description
     "Algorithms for fuzzy clustering, cluster validity indices and plots for cluster
validity and visualizing fuzzy clustering results.")
    (license license:gpl2+)))

(define-public r-fcl
  (package
    (name "r-fcl")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcl" version))
       (sha256
        (base32 "0rskl9q7z5k5q17m3c5w4pdc96m6fdag7nkkjmyyh43wbm4bjb0a"))))
    (properties `((upstream-name . "fcl")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-ymd r-xts))
    (home-page "https://github.com/shrektan/fcl")
    (synopsis "Financial Calculator")
    (description
     "This package provides a financial calculator that provides very fast
implementations of common financial indicators using Rust code.  It includes
functions for bond-related indicators, such as yield to maturity ('YTM'),
modified duration, and Macaulay duration, as well as functions for calculating
time-weighted and money-weighted rates of return (using Modified Dietz method)
for multiple portfolios, given their market values and profit and loss
('@code{PnL}') data.  fcl is designed to be efficient and accurate for financial
analysis and computation.  The methods used in this package are based on the
following references: <https://en.wikipedia.org/wiki/Modified_Dietz_method>,
<https://en.wikipedia.org/wiki/Time-weighted_return>.")
    (license license:expat)))

(define-public r-fcirt
  (package
    (name "r-fcirt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcirt" version))
       (sha256
        (base32 "1wiyiz51mkm5kd95xmpvlwng51awpp4y133dd5q88mnafrxyij1h"))))
    (properties `((upstream-name . "fcirt")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-numderiv
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Naidantu/fcirt")
    (synopsis "Forced Choice in Item Response Theory")
    (description
     "Bayesian estimation of forced choice models in Item Response Theory using rstan
(See Stan Development Team (2020) <https://mc-stan.org/>).")
    (license license:gpl3+)))

(define-public r-fcfdr
  (package
    (name "r-fcfdr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcfdr" version))
       (sha256
        (base32 "16mnpr64x00qwbgq9pw69k941yb0i7mx7ncsilahicprxqyfpfww"))))
    (properties `((upstream-name . "fcfdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom
                             r-polycub
                             r-mass
                             r-locfdr
                             r-hmisc
                             r-hexbin
                             r-ggplot2
                             r-fields
                             r-dplyr
                             r-data-table
                             r-cowplot
                             r-bigsplines))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fcfdr")
    (synopsis "Flexible cFDR")
    (description
     "This package provides functions to implement the Flexible @code{cFDR}
(Hutchinson et al. (2021) <doi:10.1371/journal.pgen.1009853>) and Binary
@code{cFDR} (Hutchinson et al. (2021) <doi:10.1101/2021.10.21.465274>)
methodologies to leverage auxiliary data from arbitrary distributions, for
example functional genomic data, with GWAS p-values to generate re-weighted
p-values.")
    (license license:expat)))

(define-public r-fcci
  (package
    (name "r-fcci")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcci" version))
       (sha256
        (base32 "02q6q0q7fqdbp20fdf33jbkh0aj9nzl6dwysr0nn146ciz3vqgin"))))
    (properties `((upstream-name . "fcci")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpp r-assertthat))
    (home-page "https://github.com/vgherard/fcci")
    (synopsis "Feldman-Cousins Confidence Intervals")
    (description
     "This package provides support for building Feldman-Cousins confidence intervals
[G. J. Feldman and R. D. Cousins (1998) <doi:10.1103/@code{PhysRevD.57.3873>}].")
    (license license:gpl3+)))

(define-public r-fcar
  (package
    (name "r-fcar")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fcaR" version))
       (sha256
        (base32 "07p6jvciawx0n11q6vqibqvwp8y1336wvpbw0imisw2ksw6vhdwa"))))
    (properties `((upstream-name . "fcaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tikzdevice
                             r-tibble
                             r-stringr
                             r-settings
                             r-registry
                             r-rcpp
                             r-r6
                             r-purrr
                             r-posetr
                             r-matrix
                             r-magrittr
                             r-glue
                             r-fractional
                             r-forcats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Malaga-FCA-group/fcaR")
    (synopsis "Formal Concept Analysis")
    (description
     "This package provides tools to perform fuzzy formal concept analysis, presented
in Wille (1982) <doi:10.1007/978-3-642-01815-2_23> and in Ganter and Obiedkov
(2016) <doi:10.1007/978-3-662-49291-8>.  It provides functions to load and save
a formal context, extract its concept lattice and implications.  In addition,
one can use the implications to compute semantic closures of fuzzy sets and,
thus, build recommendation systems.")
    (license license:gpl3)))

(define-public r-fca
  (package
    (name "r-fca")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fca" version))
       (sha256
        (base32 "0jcdyylb0byz70k3kypa2mdd5sc5nq81jfbpljjg2amczq7s5wzy"))))
    (properties `((upstream-name . "fca")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://egrueebler.github.io/fca/")
    (synopsis
     "Floating Catchment Area (FCA) Methods to Calculate Spatial Accessibility")
    (description
     "Perform various floating catchment area methods to calculate a spatial
accessibility index (SPAI) for demand point data.  The distance matrix used for
weighting is normalized in a preprocessing step using common functions
(gaussian, gravity, exponential or logistic).")
    (license license:gpl3+)))

(define-public r-fc
  (package
    (name "r-fc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fc" version))
       (sha256
        (base32 "0x41xfchy499kz0qi7fp12vpkbcddprv19mmk48lxzavv4f5avfh"))))
    (properties `((upstream-name . "fc")))
    (build-system r-build-system)
    (propagated-inputs (list r-codetools))
    (home-page "https://github.com/swang87/fc")
    (synopsis "Standard Evaluation-Based Multivariate Function Composition")
    (description
     "This package provides a streamlined, standard evaluation-based approach to
multivariate function composition.  Allows for chaining commands via a
forward-pipe operator, %>%.")
    (license license:gpl2)))

(define-public r-fbst
  (package
    (name "r-fbst")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbst" version))
       (sha256
        (base32 "15d73hngw8607la36cpl5z7ac18cpwkmqzp67ga2c5n94z2h8asc"))))
    (properties `((upstream-name . "fbst")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis r-rstanarm r-ks r-cubature r-bayestestr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fbst")
    (synopsis
     "The Full Bayesian Evidence Test, Full Bayesian Significance Test and the e-Value")
    (description
     "This package provides access to a range of functions for computing and
visualizing the Full Bayesian Significance Test (FBST) and the e-value for
testing a sharp hypothesis against its alternative, and the Full Bayesian
Evidence Test (FBET) and the (generalized) Bayesian evidence value for testing a
composite (or interval) hypothesis against its alternative.  The methods are
widely applicable as long as a posterior MCMC sample is available.")
    (license license:gpl3)))

(define-public r-fbroc
  (package
    (name "r-fbroc")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbroc" version))
       (sha256
        (base32 "1v73wl3yckcqx43fz1lzcsy6v08vmbmi7yi623yhgqywixxv2bx3"))))
    (properties `((upstream-name . "fbroc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2))
    (home-page "http://www.epeter-stats.de/roc-curve-analysis-with-fbroc/")
    (synopsis
     "Fast Algorithms to Bootstrap Receiver Operating Characteristics Curves")
    (description
     "This package implements a very fast C++ algorithm to quickly bootstrap receiver
operating characteristics (ROC) curves and derived performance metrics,
including the area under the curve (AUC) and the partial area under the curve as
well as the true and false positive rate.  The analysis of paired receiver
operating curves is supported as well, so that a comparison of two predictors is
possible.  You can also plot the results and calculate confidence intervals.  On
a typical desktop computer the time needed for the calculation of 100000
bootstrap replicates given 500 observations requires time on the order of
magnitude of one second.")
    (license license:gpl2)))

(define-public r-fbrads
  (package
    (name "r-fbrads")
    (version "17.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbRads" version))
       (sha256
        (base32 "0kfbd0dc0k72qj5vd1bm11lqi6p61z7fmr8507fsc6ggcr97vw76"))))
    (properties `((upstream-name . "fbRads")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcurl
                             r-plyr
                             r-logger
                             r-jsonlite
                             r-digest
                             r-data-table
                             r-bit64))
    (home-page "https://github.com/daroczig/fbRads")
    (synopsis "Analyzing and Managing Facebook Ads from R")
    (description
     "Wrapper functions around the Facebook Marketing API to create, read, update and
delete custom audiences, images, campaigns, ad sets, ads and related content.")
    (license license:agpl3)))

(define-public r-fbonds
  (package
    (name "r-fbonds")
    (version "3042.78")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fBonds" version))
       (sha256
        (base32 "1yb5vyqj66m82xks5qi5cnsppylpprbk656z4lxzg30873hi8pcf"))))
    (properties `((upstream-name . "fBonds")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-timedate r-fbasics))
    (home-page "http://www.rmetrics.org")
    (synopsis "Rmetrics - Pricing and Evaluating Bonds")
    (description
     "It implements the Nelson-Siegel and the Nelson-Siegel-Svensson term structures.")
    (license license:gpl2+)))

(define-public r-fbnet
  (package
    (name "r-fbnet")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbnet" version))
       (sha256
        (base32 "0jz3jbd2qna4mnas0mjs32wvlk6vzlw61qb9fql65al40401b23x"))))
    (properties `((upstream-name . "fbnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsolnp r-paramlink r-igraph r-assertthat))
    (home-page "https://github.com/MarsicoFL/fbnet")
    (synopsis "Forensic Bayesian Networks")
    (description
     "Open-source package for computing likelihood ratios in kinship testing and human
identification cases (Chernomoretz et al. (2021)
<doi:10.1016/j.fsir.2020.100132>).  It has the core function of the software
GENis, developed by @code{FundaciÃ³n} Sadosky.  It relies on a Bayesian Networks
framework and is particularly well suited to efficiently perform large-size
queries against databases of missing individuals (Darwiche (2009)
<doi:10.1017/CBO9780511811357>).")
    (license license:gpl3+)))

(define-public r-fbn
  (package
    (name "r-fbn")
    (version "1.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FBN" version))
       (sha256
        (base32 "15pib81p2jnxg5sasn4c3s6b1jab16fxr3l4xmlxrk5nk7spmwav"))))
    (properties `((upstream-name . "FBN")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FBN")
    (synopsis
     "FISH Based Normalization and Copy Number Inference of SNP Microarray Data")
    (description
     "Normalizes the data from a file containing the raw values of the SNP probes of
microarray data by using the FISH probes and their corresponding copy number.")
    (license license:gpl2+)))

(define-public r-fbfsearch
  (package
    (name "r-fbfsearch")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FBFsearch" version))
       (sha256
        (base32 "0rn8pzgk28mjwdrg6x6f46576479a7bwnf9xdij0hfxsfg7wnwf1"))))
    (properties `((upstream-name . "FBFsearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=FBFsearch")
    (synopsis
     "Algorithm for Searching the Space of Gaussian Directed Acyclic Graph Models Through Moment Fractional Bayes Factors")
    (description
     "We propose an objective Bayesian algorithm for searching the space of Gaussian
directed acyclic graph (DAG) models.  The algorithm proposed makes use of moment
fractional Bayes factors (MFBF) and thus it is suitable for learning sparse
graph.  The algorithm is implemented by using Armadillo: an open-source C++
linear algebra library.")
    (license license:gpl2+)))

(define-public r-fbcrm
  (package
    (name "r-fbcrm")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FBCRM" version))
       (sha256
        (base32 "0smv6snyyxwnac9d7rygsylplpv1sgbg9anya0rsdzv7jl84v7q3"))))
    (properties `((upstream-name . "FBCRM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=FBCRM")
    (synopsis
     "Phase I Optimal Dose Assignment using the FBCRM and MFBCRM Methods")
    (description
     "This package performs dose assignment and trial simulation for the FBCRM (Fully
Bayesian Continual Reassessment Method) and MFBCRM (Mixture Fully Bayesian
Continual Reassessment Method) phase I clinical trial designs.  These trial
designs extend the Continual Reassessment Method (CRM) and Bayesian Model
Averaging Continual Reassessment Method (BMA-CRM) by allowing the prior toxicity
skeleton itself to be random, with posterior distributions obtained from Markov
Chain Monte Carlo.  On average, the FBCRM and MFBCRM methods outperformed the
CRM and BMA-CRM methods in terms of selecting an optimal dose level across
thousands of randomly generated simulation scenarios.  Details on the methods
and results of this simulation study are available on request, and the
manuscript is currently under review.")
    (license license:gpl2)))

(define-public r-fbati
  (package
    (name "r-fbati")
    (version "1.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbati" version))
       (sha256
        (base32 "1w1yvv93yzvkqhq9w1c05bwqy3kr08b4bxzzvy0x03zdild10bly"))))
    (properties `((upstream-name . "fbati")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-pbatr r-fgui))
    (home-page
     "https://sites.google.com/site/thomashoffmannproject/software/fbati")
    (synopsis
     "Gene by Environment Interaction and Conditional Gene Tests for Nuclear Families")
    (description
     "Does family-based gene by environment interaction tests, joint gene,
gene-environment interaction test, and a test of a set of genes conditional on
another set of genes.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fbar
  (package
    (name "r-fbar")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fbar" version))
       (sha256
        (base32 "005725xiz6k868hrj12ryq3xlyin2r94n0yychimjzhfsppx2zba"))))
    (properties `((upstream-name . "fbar")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-roi-plugin-ecos
                             r-roi
                             r-rlang
                             r-purrr
                             r-matrix
                             r-magrittr
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "http://maxconway.github.io/fbar/")
    (synopsis "An Extensible Approach to Flux Balance Analysis")
    (description
     "This package provides a toolkit for Flux Balance Analysis and related metabolic
modeling techniques.  Functions are provided for: parsing models in tabular
format, converting parsed metabolic models to input formats for common linear
programming solvers, and evaluating and applying gene-protein-reaction mappings.
 In addition, there are wrappers to parse a model, select a solver, find the
metabolic fluxes, and return the results applied to the original model.
Compared to other packages in this field, this package puts a much heavier focus
on providing reusable components that can be used in the design of new
implementation of new techniques, in particular those that involve large
parameter sweeps.  For a background on the theory, see What is Flux Balance
Analysis <doi:10.1038/nbt.1614>.")
    (license license:gpl3)))

(define-public r-fawr
  (package
    (name "r-fawr")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAwR" version))
       (sha256
        (base32 "1x90wvp0w7fhid7i5160b4fiv4xn5mpvy33zjzy0mvqvp0yp8xf0"))))
    (properties `((upstream-name . "FAwR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-lattice r-glpkapi))
    (home-page "https://cran.r-project.org/package=FAwR")
    (synopsis "Functions and Datasets for \"Forest Analytics with R\"")
    (description
     "This package provides functions and datasets from the book \"Forest Analytics
with R\".")
    (license license:gpl3)))

(define-public r-favnums
  (package
    (name "r-favnums")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "favnums" version))
       (sha256
        (base32 "0siax7gjr25lpf1li3hawx6nviggs68c0lap2d9i38azlhvj891w"))))
    (properties `((upstream-name . "favnums")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=favnums")
    (synopsis "Dataset of Favourite Numbers")
    (description
     "This package provides a dataset of favourite numbers, selected from an online
poll of over 30,000 people by Alex Bellos
(http://pages.bloomsbury.com/favouritenumber).")
    (license license:cc0)))

(define-public r-faviconplease
  (package
    (name "r-faviconplease")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faviconPlease" version))
       (sha256
        (base32 "1q9519y4c5jj0w98yxv51dc7zskxnyjc4fmmi6l47j724cp67gmq"))))
    (properties `((upstream-name . "faviconPlease")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2))
    (home-page "https://github.com/jdblischak/faviconPlease")
    (synopsis "Find the URL to the 'Favicon' for a Website")
    (description
     "Finds the URL to the favicon for a website.  This is useful if you want to
display the favicon in an HTML document or web application, especially if the
website is behind a firewall.")
    (license license:expat)))

(define-public r-favar
  (package
    (name "r-favar")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAVAR" version))
       (sha256
        (base32 "0nnljqhrji7c317rlrmx8xscyp6bx2s9zddjsq48c6x45mmsqpfx"))))
    (properties `((upstream-name . "FAVAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcmcpack
                             r-matrix
                             r-magrittr
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-coda
                             r-bvartools))
    (home-page "https://cran.r-project.org/package=FAVAR")
    (synopsis "Bayesian Analysis of a FAVAR Model")
    (description
     "Estimate a FAVAR model by a Bayesian method, based on Bernanke et al. (2005)
<DOI:10.1162/0033553053327452>.")
    (license license:gpl3)))

(define-public r-fauxnaif
  (package
    (name "r-fauxnaif")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fauxnaif" version))
       (sha256
        (base32 "1d2sfcknlaa4m3sq3cg65iq17x3ax0zgkgxkcyin3d8r3sw9k3p6"))))
    (properties `((upstream-name . "fauxnaif")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://fauxnaif.rossellhayes.com/")
    (synopsis "Convert Values to NA")
    (description
     "This package provides a replacement for dplyr::na_if().  Allows you to specify
multiple values to be replaced with NA using a single function.")
    (license license:expat)))

(define-public r-faux
  (package
    (name "r-faux")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faux" version))
       (sha256
        (base32 "143yc71cfsxnczi719ygrsynxry60nh8263gg8vwp3qrc80j80lh"))))
    (properties `((upstream-name . "faux")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-rlang
                             r-lme4
                             r-jsonlite
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/debruine/faux")
    (synopsis "Simulation for Factorial Designs")
    (description
     "Create datasets with factorial structure through simulation by specifying
variable parameters.  Extended documentation at
<https://debruine.github.io/faux/>.  Described in @code{DeBruine} (2020)
<doi:10.5281/zenodo.2669586>.")
    (license license:expat)))

(define-public r-faulttree
  (package
    (name "r-faulttree")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FaultTree" version))
       (sha256
        (base32 "0abv34y7ms31inrkbc8ss8vnjxki9k49pa722n48irwqczxb328l"))))
    (properties `((upstream-name . "FaultTree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "http://www.openreliability.org/fault-tree-analysis-on-r/")
    (synopsis "Fault Trees for Risk and Reliability Analysis")
    (description
     "Construction, calculation and display of fault trees.  Methods derived from
Clifton A. Ericson II (2005, ISBN: 9780471739425) <DOI:10.1002/0471739421>,
Antoine Rauzy (1993) <DOI:10.1016/0951-8320(93)90060-C>, Tim Bedford and Roger
Cooke (2012, ISBN: 9780511813597) <DOI:10.1017/CBO9780511813597>, Nikolaos
Limnios, (2007, ISBN: 9780470612484) <DOI: 10.1002/9780470612484>.")
    (license license:gpl3+)))

(define-public r-fattailsr
  (package
    (name "r-fattailsr")
    (version "1.8-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FatTailsR" version))
       (sha256
        (base32 "10js4vbg9f4ql2panzwb5vxzzb8qb2hl6xyx7nhindhwncga8q33"))))
    (properties `((upstream-name . "FatTailsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-minpack-lm))
    (home-page "https://www.inmodelia.com/fattailsr-en.html")
    (synopsis "Kiener Distributions and Fat Tails in Finance")
    (description
     "Kiener distributions K1, K2, K3, K4 and K7 to characterize distributions with
left and right, symmetric or asymmetric fat tails in market finance,
neuroscience and other disciplines.  Two algorithms to estimate with a high
accuracy distribution parameters, quantiles, value-at-risk and expected
shortfall.  Include power hyperbolas and power hyperbolic functions.")
    (license license:gpl2)))

(define-public r-fateid
  (package
    (name "r-fateid")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FateID" version))
       (sha256
        (base32 "0sgvaqhqkmmkcsl53bm1jlfpzrvzfb5cz8k513nizfsi638vydlm"))))
    (properties `((upstream-name . "FateID")))
    (build-system r-build-system)
    (propagated-inputs (list r-umap
                             r-som
                             r-rtsne
                             r-rcolorbrewer
                             r-randomforest
                             r-princurve
                             r-pheatmap
                             r-matrixstats
                             r-locfit))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FateID")
    (synopsis "Quantification of Fate Bias in Multipotent Progenitors")
    (description
     "Application of @code{FateID} allows computation and visualization of cell fate
bias for multi-lineage single cell transcriptome data.  Herman, J.S., Sagar,
@code{GrÃ¼n} D. (2018) <DOI:10.1038/nmeth.4662>.")
    (license license:gpl3)))

(define-public r-fat2lpoly
  (package
    (name "r-fat2lpoly")
    (version "1.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fat2Lpoly" version))
       (sha256
        (base32 "08bbd17aqmfcacvk283bpf9cp1isf5pgfdciwxn0f7ahdzd81g4s"))))
    (properties `((upstream-name . "fat2Lpoly")))
    (build-system r-build-system)
    (propagated-inputs (list r-multgee r-kinship2))
    (home-page "https://www.cervo.ulaval.ca/pages_perso_chercheurs/bureau_a/")
    (synopsis
     "Two-Locus Family-Based Association Test with Polytomous Outcome")
    (description
     "This package performs family-based association tests with a polytomous outcome
under 2-locus and 1-locus models defined by some design matrix.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fastwavelets
  (package
    (name "r-fastwavelets")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastWavelets" version))
       (sha256
        (base32 "1kz49iw3d37kby6hdk7zvsahms735w46pky186jz0qq9vh4agxn9"))))
    (properties `((upstream-name . "fastWavelets")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/johnswyou/fastWavelets")
    (synopsis
     "Compute Maximal Overlap Discrete Wavelet Transform (MODWT) and Ã Trous Discrete Wavelet Transform")
    (description
     "This package provides a lightweight package to compute Maximal Overlap Discrete
Wavelet Transform (MODWT) and Ã Trous Discrete Wavelet Transform by leveraging
the power of Rcpp to make these operations fast.  This package was designed for
use in forecasting, and allows users avoid the inclusion of future data when
performing wavelet decomposition of time series.  See Quilty and Adamowski
(2018) <doi:10.1016/j.jhydrol.2018.05.003>.")
    (license license:expat)))

(define-public r-fastverse
  (package
    (name "r-fastverse")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastverse" version))
       (sha256
        (base32 "10k749zff9nhrwgyvc1fvpp34mncc7958z35y2v5sb08my2x26r0"))))
    (properties `((upstream-name . "fastverse")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-kit r-data-table r-collapse))
    (native-inputs (list r-knitr))
    (home-page "https://fastverse.github.io/fastverse/")
    (synopsis
     "Suite of High-Performance Packages for Statistics and Data Manipulation")
    (description
     "Easy installation, loading and management, of high-performance packages for
statistical computing and data manipulation in R. The core fastverse consists of
4 packages: data.table', collapse', kit and magrittr', that jointly only depend
on Rcpp'.  The fastverse can be freely and permanently extended with additional
packages, both globally or for individual projects.  Separate package verses can
also be created.  Fast packages for many common tasks such as time series, dates
and times, strings, spatial data, statistics, data serialization,
larger-than-memory processing, and compilation of R code are listed in the
README file: <https://github.com/fastverse/fastverse#suggested-extensions>.")
    (license license:gpl3)))

(define-public r-fasttopics
  (package
    (name "r-fasttopics")
    (version "0.6-142")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastTopics" version))
       (sha256
        (base32 "0fchwd54dn6abw5z8wk4wcysn9amjxmkayz8wzl3nwfr0ldjkc67"))))
    (properties `((upstream-name . "fastTopics")))
    (build-system r-build-system)
    (propagated-inputs (list r-uwot
                             r-rtsne
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-quadprog
                             r-progress
                             r-plotly
                             r-pbapply
                             r-mcmcpack
                             r-matrix
                             r-irlba
                             r-htmlwidgets
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-ashr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stephenslab/fastTopics")
    (synopsis
     "Fast Algorithms for Fitting Topic Models and Non-Negative Matrix Factorizations to Count Data")
    (description
     "This package implements fast, scalable optimization algorithms for fitting topic
models (\"grade of membership\" models) and non-negative matrix factorizations to
count data.  The methods exploit the special relationship between the
multinomial topic model (also, \"probabilistic latent semantic indexing\") and
Poisson non-negative matrix factorization.  The package provides tools to
compare, annotate and visualize model fits, including functions to efficiently
create \"structure plots\" and identify key features in topics.  The
@code{fastTopics} package is a successor to the @code{CountClust} package.")
    (license license:bsd-2)))

(define-public r-fasttime
  (package
    (name "r-fasttime")
    (version "1.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasttime" version))
       (sha256
        (base32 "00290sxfa6nihahm3s9bslpsmyfm0cpziajmr9mg7grxrzx53ia6"))))
    (properties `((upstream-name . "fasttime")))
    (build-system r-build-system)
    (home-page "http://www.rforge.net/fasttime")
    (synopsis "Fast Utility Function for Time Parsing and Conversion")
    (description
     "Fast functions for timestamp manipulation that avoid system calls and take
shortcuts to facilitate operations on very large data.")
    (license license:gpl2)))

(define-public r-fasttextr
  (package
    (name "r-fasttextr")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastTextR" version))
       (sha256
        (base32 "1f1b9dsir0dxw2psp721vgpjj6pwrx1xxsd0cqxnfq8mpwswf125"))))
    (properties `((upstream-name . "fastTextR")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EmilHvitfeldt/fastTextR")
    (synopsis "An Interface to the 'fastText' Library")
    (description
     "An interface to the @code{fastText} library
<https://github.com/facebookresearch/@code{fastText>}.  The package can be used
for text classification and to learn word vectors.  An example how to use
@code{fastTextR} can be found in the README file.")
    (license license:bsd-3)))

(define-public r-fasttext
  (package
    (name "r-fasttext")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastText" version))
       (sha256
        (base32 "1kb0ig17rq4iyqqlppf39ixgfqgm22wmv27xji2rknsq9df3c4kr"))))
    (properties `((upstream-name . "fastText")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-rcpp r-glue r-ggplot2 r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/fastText")
    (synopsis
     "Efficient Learning of Word Representations and Sentence Classification")
    (description
     "An interface to the @code{fastText}
<https://github.com/facebookresearch/@code{fastText>} library for efficient
learning of word representations and sentence classification.  The
@code{fastText} algorithm is explained in detail in (i) \"Enriching Word Vectors
with subword Information\", Piotr Bojanowski, Edouard Grave, Armand Joulin, Tomas
Mikolov, 2017, <doi:10.1162/tacl_a_00051>; (ii) \"Bag of Tricks for Efficient
Text Classification\", Armand Joulin, Edouard Grave, Piotr Bojanowski, Tomas
Mikolov, 2017, <doi:10.18653/v1/e17-2068>; (iii) \"@code{FastText.zip}:
Compressing text classification models\", Armand Joulin, Edouard Grave, Piotr
Bojanowski, Matthijs Douze, Herve Jegou, Tomas Mikolov, 2016,
<@code{arXiv:1612.03651>}.")
    (license license:expat)))

(define-public r-faststepgraph
  (package
    (name "r-faststepgraph")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastStepGraph" version))
       (sha256
        (base32 "0f05cyhdz1530vhwv6r76lpcj7lqq5xrvhmpjfv716v0c4j2i72s"))))
    (properties `((upstream-name . "FastStepGraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-foreach r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/juancolonna/FastStepGraph")
    (synopsis "Fast Algorithm for Sparse Precision Matrix Estimation")
    (description
     "It implements an improved and computationally faster version of the original
Stepwise Gaussian Graphical Algorithm for estimating the Omega precision matrix
from high-dimensional data.  Zamar, R., Ruiz, M., Lafit, G. and Nogales, J.
(2021) <doi:10.52933/jdssv.v1i2.11>.")
    (license license:expat)))

(define-public r-fastsom
  (package
    (name "r-fastsom")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastSOM" version))
       (sha256
        (base32 "1fzy7lfx1fn9993h0qh6vbwq0w4gfgbdrprmzb1z3aqq6nqvmngm"))))
    (properties `((upstream-name . "fastSOM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fastSOM")
    (synopsis "Fast Calculation of Spillover Measures")
    (description
     "This package provides functions for computing spillover measures, especially
spillover tables and spillover indices, as well as their average, minimal, and
maximal values.")
    (license license:gpl2+)))

(define-public r-fastsf
  (package
    (name "r-fastsf")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastSF" version))
       (sha256
        (base32 "1xajav45h57hchzkvl2pb4mz9xy433lq74jnry0icid8dai5xhwb"))))
    (properties `((upstream-name . "FastSF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-limsolve))
    (home-page "https://cran.r-project.org/package=FastSF")
    (synopsis "Fast Structural Filtering")
    (description
     "An implementation of the fast structural filtering with L0 penalty.  It includes
an adaptive polynomial estimator by minimizing the least squares error with
constraints on the number of breaks in their (k + 1)-st discrete derivative, for
a chosen integer k >= 0.  It also includes generalized structure sparsity
constraint, i.e., graph trend filtering.  This package is implemented via the
primal dual active set algorithm, which formulates estimates and residuals as
primal and dual variables, and utilizes efficient active set selection
strategies based on the properties of the primal and dual variables.")
    (license license:gpl3)))

(define-public r-fastrweb
  (package
    (name "r-fastrweb")
    (version "1.2-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastRWeb" version))
       (sha256
        (base32 "13w09ic38vzdyyhcdd18as443nbhgbw4baydrlbl7nai0llsk9w9"))))
    (properties `((upstream-name . "FastRWeb")))
    (build-system r-build-system)
    (propagated-inputs (list r-cairo r-base64enc))
    (home-page "http://www.rforge.net/FastRWeb/")
    (synopsis "Fast Interactive Framework for Web Scripting Using R")
    (description
     "Infrastrcture for creating rich, dynamic web content using R scripts while
maintaining very fast response time.")
    (license license:gpl2)))

(define-public r-fastrmodels
  (package
    (name "r-fastrmodels")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastrmodels" version))
       (sha256
        (base32 "1333546nk429l6s4icbmx8hmh29wsc252wbmmhsmgb116l4ra9zi"))))
    (properties `((upstream-name . "fastrmodels")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost))
    (home-page "https://github.com/mrcaseb/fastrmodels")
    (synopsis "Models for the 'nflfastR' Package")
    (description
     "This package provides a data package that hosts all models for the
@code{nflfastR} package.")
    (license license:expat)))

(define-public r-fastrhockey
  (package
    (name "r-fastrhockey")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastRhockey" version))
       (sha256
        (base32 "1xw4ylrsf9wylym79svazrmw2c9fmqk8n0sz1vypsm29dsic879k"))))
    (properties `((upstream-name . "fastRhockey")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
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
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://fastRhockey.sportsdataverse.org/")
    (synopsis
     "Functions to Access Premier Hockey Federation and National Hockey League Play by Play Data")
    (description
     "This package provides a utility to scrape and load play-by-play data and
statistics from the Premier Hockey Federation (PHF)
<https://www.premierhockeyfederation.com/>, formerly known as the National
Women's Hockey League (NWHL).  Additionally, allows access to the National
Hockey League's stats API <https://www.nhl.com/>.")
    (license license:expat)))

(define-public r-fastrg
  (package
    (name "r-fastrg")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastRG" version))
       (sha256
        (base32 "1ig6z8azl2vsl79nfs3s4f9v1f6f27vzc0kxb9zmvkpx3hfnlm7k"))))
    (properties `((upstream-name . "fastRG")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidygraph
                             r-tibble
                             r-rspectra
                             r-matrix
                             r-igraph
                             r-glue
                             r-ggplot2
                             r-ellipsis
                             r-dplyr))
    (home-page "https://rohelab.github.io/fastRG/")
    (synopsis "Sample Generalized Random Dot Product Graphs in Linear Time")
    (description
     "Samples generalized random product graphs, a generalization of a broad class of
network models.  Given matrices X, S, and Y with with non-negative entries,
samples a matrix with expectation X S Y^T and independent Poisson or Bernoulli
entries using the @code{fastRG} algorithm of Rohe et al. (2017)
<https://www.jmlr.org/papers/v19/17-128.html>.  The algorithm first samples the
number of edges and then puts them down one-by-one.  As a result it is O(m)
where m is the number of edges, a dramatic improvement over element-wise
algorithms that which require O(n^2) operations to sample a random graph, where
n is the number of nodes.")
    (license license:expat)))

(define-public r-fastrep
  (package
    (name "r-fastrep")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastrep" version))
       (sha256
        (base32 "08hzrh812033ds9chw6i0n4jdnr2nm4rjx3drrgjv9i2blirbmnp"))))
    (properties `((upstream-name . "fastrep")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-kableextra
                             r-janitor
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fastrep")
    (synopsis "Time-Saving Package for Creating Reports")
    (description
     "This package provides templates for reports in rmarkdown and functions to create
tables and summaries of data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fastrcs
  (package
    (name "r-fastrcs")
    (version "0.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastRCS" version))
       (sha256
        (base32 "11kqd8aii9sy65m5inxiqggyajb41iy6w92zp5wggx7pbg9m6lmy"))))
    (properties `((upstream-name . "FastRCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-matrixstats))
    (home-page "https://cran.r-project.org/package=FastRCS")
    (synopsis "Fits the FastRCS Robust Multivariable Linear Regression Model")
    (description
     "The @code{FastRCS} algorithm of Vakili and Schmitt (2014) for robust fit of the
multivariable linear regression model and outliers detection.")
    (license license:gpl2+)))

(define-public r-fastr2
  (package
    (name "r-fastr2")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastR2" version))
       (sha256
        (base32 "1bmqsjqa13i4dm2pblrwsj1wa80mpi71mpmznc1i199kd4afscgz"))))
    (properties `((upstream-name . "fastR2")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv
                             r-mosaic
                             r-misctools
                             r-maxlik
                             r-lattice
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rpruim/fastR2")
    (synopsis
     "Foundations and Applications of Statistics Using R (2nd Edition)")
    (description
     "Data sets and utilities to accompany the second edition of \"Foundations and
Applications of Statistics: an Introduction using R\" (R Pruim, published by AMS,
2017), a text covering topics from probability and mathematical statistics at an
advanced undergraduate level.  R is integrated throughout, and access to all the
R code in the book is provided via the snippet() function.")
    (license license:gpl2+)))

(define-public r-fastqq
  (package
    (name "r-fastqq")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastqq" version))
       (sha256
        (base32 "0009s32zgvm7nnd0zx7rqcvsdfjh27xhlnnrsafbxcxslc3wy496"))))
    (properties `((upstream-name . "fastqq")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/gumeo/fastqq")
    (synopsis
     "Faster Generation of Quantile Quantile Plots with Large Samples")
    (description
     "New and faster implementations for quantile quantile plots.  The package also
includes a function to prune data for quantile quantile plots.  This can
drastically reduce the running time for large samples, for 100 million samples,
you can expect a factor 80X speedup.")
    (license license:gpl3+)))

(define-public r-fastqcr
  (package
    (name "r-fastqcr")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastqcr" version))
       (sha256
        (base32 "15pzjvg1dqkclg28hxyw6xacwk36xkrimbbhcxh5s2hws0jrwqk5"))))
    (properties `((upstream-name . "fastqcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rvest
                             r-rmarkdown
                             r-rlang
                             r-readr
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://rpkgs.datanovia.com/fastqcr/index.html")
    (synopsis "Quality Control of Sequencing Data")
    (description
     "FASTQC is the most widely used tool for evaluating the quality of high
throughput sequencing data.  It produces, for each sample, an html report and a
compressed file containing the raw data.  If you have hundreds of samples, you
are not going to open up each HTML page.  You need some way of looking at these
data in aggregate.  fastqcr Provides helper functions to easily parse, aggregate
and analyze @code{FastQC} reports for large numbers of samples.  It provides a
convenient solution for building a Multi-QC report, as well as, a one-sample
report with result interpretations.")
    (license license:gpl2)))

(define-public r-fastpos
  (package
    (name "r-fastpos")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastpos" version))
       (sha256
        (base32 "0a55fydlcn2h27vizv4w3gma26v2a32li81x09hvk519yfy8ph1k"))))
    (properties `((upstream-name . "fastpos")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-pbmcapply
                             r-mass
                             r-lifecycle))
    (home-page "https://github.com/johannes-titz/fastpos")
    (synopsis
     "Finds the Critical Sequential Point of Stability for a Pearson Correlation")
    (description
     "Finds the critical sample size (\"critical point of stability\") for a correlation
to stabilize in Schoenbrodt and Perugini's definition of sequential stability
(see <doi:10.1016/j.jrp.2013.05.009>).")
    (license license:gpl3)))

(define-public r-fastpcs
  (package
    (name "r-fastpcs")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastPCS" version))
       (sha256
        (base32 "152fy5hq675n1mjdsi31a77rmi3vylvvbfgywrh62chy5xa1bf34"))))
    (properties `((upstream-name . "FastPCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-matrixstats))
    (home-page "https://cran.r-project.org/package=FastPCS")
    (synopsis "FastPCS Robust Fit of Multivariate Location and Scatter")
    (description
     "The @code{FastPCS} algorithm of Vakili and Schmitt (2014)
<doi:10.1016/j.csda.2013.07.021> for robust estimation of multivariate location
and scatter and multivariate outliers detection.")
    (license license:gpl2+)))

(define-public r-fastonlinecpt
  (package
    (name "r-fastonlinecpt")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastOnlineCpt" version))
       (sha256
        (base32 "0grkgj8kwqblikgw5pg4vdp41qd9s4cd7dzih3ima31fdw8ssi3c"))))
    (properties `((upstream-name . "fastOnlineCpt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (home-page "https://cran.r-project.org/package=fastOnlineCpt")
    (synopsis "Online Multivariate Changepoint Detection")
    (description
     "Implementation of a simple algorithm designed for online multivariate
changepoint detection of a mean in sparse changepoint settings.  The algorithm
is based on a modified cusum statistic and guarantees control of the type I
error on any false discoveries, while featuring O(1) time and O(1) memory
updates per series as well as a proven detection delay.")
    (license license:gpl2+)))

(define-public r-fastnet
  (package
    (name "r-fastnet")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastnet" version))
       (sha256
        (base32 "1c07msypxj8ilpa1il9jjbgylwpdxv8j8gak362xdmbm4b1bwlm6"))))
    (properties `((upstream-name . "fastnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidygraph r-igraph r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=fastnet")
    (synopsis "Large-Scale Social Network Analysis")
    (description
     "We present an implementation of the algorithms required to simulate large-scale
social networks and retrieve their most relevant metrics.  Details can be found
in the accompanying scientific paper on the Journal of Statistical Software,
<doi:10.18637/jss.v096.i07>.")
    (license license:gpl2+)))

(define-public r-fastnaivebayes
  (package
    (name "r-fastnaivebayes")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastNaiveBayes" version))
       (sha256
        (base32 "04hv4jdhan1vbsixzbifa7hpmc531gv7c2dd1fx5700c2wlkja1n"))))
    (properties `((upstream-name . "fastNaiveBayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mskogholt/fastNaiveBayes")
    (synopsis "Extremely Fast Implementation of a Naive Bayes Classifier")
    (description
     "This is an extremely fast implementation of a Naive Bayes classifier.  This
package is currently the only package that supports a Bernoulli distribution, a
Multinomial distribution, and a Gaussian distribution, making it suitable for
both binary features, frequency counts, and numerical features.  Another feature
is the support of a mix of different event models.  Only numerical variables are
allowed, however, categorical variables can be transformed into dummies and used
with the Bernoulli distribution.  The implementation is largely based on the
paper \"A comparison of event models for Naive Bayes anti-spam e-mail filtering\"
written by K.M. Schneider (2003) <doi:10.3115/1067807.1067848>.  Any issues can
be submitted to: <https://github.com/mskogholt/@code{fastNaiveBayes/issues>}.")
    (license license:gpl3)))

(define-public r-fastmit
  (package
    (name "r-fastmit")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastmit" version))
       (sha256
        (base32 "13hczsfbzssd272kpbq8l2l64lqrkmi2j6f3xyp9jvvxdd506kq0"))))
    (properties `((upstream-name . "fastmit")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=fastmit")
    (synopsis "Fast Mutual Information Based Independence Test")
    (description
     "This package provides a mutual information estimator based on k-nearest neighbor
method proposed by A. Kraskov, et al. (2004)
<doi:10.1103/@code{PhysRevE.69.066138>} to measure general dependence and the
time complexity for our estimator is only squared to the sample size, which is
faster than other statistics.  Besides, an implementation of mutual information
based independence test is provided for analyzing multivariate data in Euclidean
space (T B. Berrett, et al. (2019) <doi:10.1093/biomet/asz024>); furthermore, we
extend it to tackle datasets in metric spaces.")
    (license license:gpl2+)))

(define-public r-fastmatrix
  (package
    (name "r-fastmatrix")
    (version "0.5-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastmatrix" version))
       (sha256
        (base32 "1c60fzk3wz4nigbws9gwzvnlip9vkg14lmazh043xbp6rjpn3dnw"))))
    (properties `((upstream-name . "fastmatrix")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://faosorios.github.io/fastmatrix/")
    (synopsis "Fast Computation of some Matrices Useful in Statistics")
    (description
     "Small set of functions to fast computation of some matrices and operations
useful in statistics and econometrics.  Currently, there are functions for
efficient computation of duplication, commutation and symmetrizer matrices with
minimal storage requirements.  Some commonly used matrix decompositions (LU and
LDL), basic matrix operations (for instance, Hadamard, Kronecker products and
the Sherman-Morrison formula) and iterative solvers for linear systems are also
available.  In addition, the package includes a number of common statistical
procedures such as the sweep operator, weighted mean and covariance matrix using
an online algorithm, linear regression (using Cholesky, QR, SVD, sweep operator
and conjugate gradients methods), ridge regression (with optimal selection of
the ridge parameter considering several procedures), omnibus tests for
univariate normality, functions to compute the multivariate skewness, kurtosis,
the Mahalanobis distance (checking the positive defineteness), and the
Wilson-Hilferty transformation of chi squared variables.  Furthermore, the
package provides interfaces to C code callable by another C code from other R
packages.")
    (license license:gpl3)))

(define-public r-fastmatmr
  (package
    (name "r-fastmatmr")
    (version "1.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastMatMR" version))
       (sha256
        (base32 "0lh2nrfj8pbhl56pg0icw0ln2bg411sjdkjb76lar3rsb67ifxvb"))))
    (properties `((upstream-name . "fastMatMR")))
    (build-system r-build-system)
    (propagated-inputs (list r-cpp11))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/fastMatMR")
    (synopsis "High-Performance Matrix Market File Operations")
    (description
     "An interface to the fast_matrix_market C++ library, this package offers
efficient read and write operations for Matrix Market files in R. It supports
both sparse and dense matrix formats.  Peer-reviewed at R@code{OpenSci}
(<https://github.com/ropensci/software-review/issues/606>).")
    (license license:expat)))

(define-public r-fastm
  (package
    (name "r-fastm")
    (version "0.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastM" version))
       (sha256
        (base32 "1n9a431w0hl4kr3pa32kcyd1d73acz4vb9vhfkckk3099mg46d9m"))))
    (properties `((upstream-name . "fastM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=fastM")
    (synopsis "Fast Computation of Multivariate M-Estimators")
    (description
     "This package implements the new algorithm for fast computation of M-scatter
matrices using a partial Newton-Raphson procedure for several estimators.  The
algorithm is described in Duembgen, Nordhausen and Schuhmacher (2016)
<doi:10.1016/j.jmva.2015.11.009>.")
    (license license:gpl2+)))

(define-public r-fastlogranktest
  (package
    (name "r-fastlogranktest")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastlogranktest" version))
       (sha256
        (base32 "1j5mgvi3nwnlarj31cknx2cikypql370qds2h0877vmm80942z25"))))
    (properties `((upstream-name . "fastlogranktest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-bh))
    (home-page "https://github.com/compsysmed/fastlogranktest.git")
    (synopsis
     "Fast Way to Calculate the p-Value of One or Multiple Log-Rank-Tests")
    (description
     "This package provides a very fast Log-Rank-Test implementation that is several
orders of magnitude faster than the implementation in the survival package.
Log-Rank-Tests can be computed individually or concurrently using threading.")
    (license license:gpl3)))

(define-public r-fastlogitme
  (package
    (name "r-fastlogitme")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastlogitME" version))
       (sha256
        (base32 "1wpbcjb3ncxl904492alikslnqg53zgx6psxx7qllspd43s8ymv7"))))
    (properties `((upstream-name . "fastlogitME")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fastlogitME")
    (synopsis "Basic Marginal Effects for Logit Models")
    (description
     "Calculates marginal effects based on logistic model objects such as glm or
speedglm at the average (default) or at given values using finite differences.
It also returns confidence intervals for said marginal effects and the p-values,
which can easily be used as input in stargazer.  The function only returns the
essentials and is therefore much faster but not as detailed as other functions
available to calculate marginal effects.  As a result, it is highly suitable for
large datasets for which other packages may require too much time or calculating
power.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-fastlogisticregressionwrap
  (package
    (name "r-fastlogisticregressionwrap")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastLogisticRegressionWrap" version))
       (sha256
        (base32 "0vyb43632xhm9g52025ic8b8fmznpidsdwnaraj9vzysrim2v1r6"))))
    (properties `((upstream-name . "fastLogisticRegressionWrap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppnumerical r-rcppeigen r-rcpp r-mass
                             r-checkmate))
    (home-page "https://github.com/kapelner/fastLogisticRegressionWrap")
    (synopsis "Fast Logistic Regression Wrapper")
    (description
     "This package provides very fast logistic regression with coefficient inferences
plus other useful methods such as a forward stepwise model generator (see the
benchmarks by visiting the github page at the URL below).  The inputs are
flexible enough to accomodate GPU computations.  The coefficient estimation
employs the @code{fastLR}() method in the @code{RcppNumerical} package by Yixuan
Qiu et al.  This package allows their work to be more useful to a wider
community that consumes inference.")
    (license license:gpl3)))

(define-public r-fastlink
  (package
    (name "r-fastlink")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastLink" version))
       (sha256
        (base32 "0xysif0v7l7iwnwpf5ydk7ns9azsgja5sm672wxybfqwrh6nx9xk"))))
    (properties `((upstream-name . "fastLink")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-stringdist
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-plotrix
                             r-matrix
                             r-gtools
                             r-foreach
                             r-factoclass
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-adagio))
    (home-page "https://cran.r-project.org/package=fastLink")
    (synopsis "Fast Probabilistic Record Linkage with Missing Data")
    (description
     "This package implements a Fellegi-Sunter probabilistic record linkage model that
allows for missing data and the inclusion of auxiliary information.  This
includes functionalities to conduct a merge of two datasets under the
Fellegi-Sunter model using the Expectation-Maximization algorithm.  In addition,
tools for preparing, adjusting, and summarizing data merges are included.  The
package implements methods described in Enamorado, Fifield, and Imai (2019)
Using a Probabilistic Model to Assist Merging of Large-scale Administrative
Records'', American Political Science Review and is available at
<http://imai.fas.harvard.edu/research/linkage.html>.")
    (license license:gpl3+)))

(define-public r-fastlaplace
  (package
    (name "r-fastlaplace")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastLaplace" version))
       (sha256
        (base32 "172irl97sxkc5m1rk2kxxl8hkb1yf0029k9szkw9qyz0ki8d657w"))))
    (properties `((upstream-name . "fastLaplace")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-fields r-bbmle))
    (native-inputs (list r-knitr))
    (home-page "<https://www.naver.com/>")
    (synopsis "Fast Laplace Method for Spatial Generalized Linear Mixed Model")
    (description
     "Fitting a fast Laplace approximation for Spatial Generalized Linear Mixed Model
as described in Park and Lee (2021)
<https://github.com/sangwan93/@code{fastLaplace/blob/main/FastLaplaceMain.pdf>}.")
    (license license:gpl3)))

(define-public r-fastknn
  (package
    (name "r-fastknn")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastKNN" version))
       (sha256
        (base32 "1iz8ybzkvbyqwb00s7cp1zvy9xlmyjid441mf62dq08a0zncnyss"))))
    (properties `((upstream-name . "FastKNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-pdist r-assertthat))
    (home-page "https://cran.r-project.org/package=FastKNN")
    (synopsis "Fast k-Nearest Neighbors")
    (description
     "Compute labels for a test set according to the k-Nearest Neighbors
classification.  This is a fast way to do k-Nearest Neighbors classification
because the distance matrix -between the features of the observations- is an
input to the function rather than being calculated in the function itself every
time.")
    (license license:gpl3)))

(define-public r-fastkmedoids
  (package
    (name "r-fastkmedoids")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastkmedoids" version))
       (sha256
        (base32 "1z98ndxhq2ag870g0xqkw04b4k722994vh0pq46bw8bqc9v7bpkk"))))
    (properties `((upstream-name . "fastkmedoids")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=fastkmedoids")
    (synopsis
     "Faster K-Medoids Clustering Algorithms: FastPAM, FastCLARA, FastCLARANS")
    (description
     "R wrappers of C++ implementation of Faster K-Medoids clustering algorithms
(@code{FastPAM}, @code{FastCLARA} and @code{FastCLARANS}) proposed in Erich
Schubert, Peter J. Rousseeuw 2019 <doi:10.1007/978-3-030-32047-8_16>.")
    (license license:gpl2+)))

(define-public r-fastkm
  (package
    (name "r-fastkm")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastKM" version))
       (sha256
        (base32 "0kkrfb98h843yh4n8mvz3y2sp9qkykpabg9w927jb8i230aiy1sq"))))
    (properties `((upstream-name . "FastKM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rarpack))
    (home-page "https://cran.r-project.org/package=FastKM")
    (synopsis "Fast Multiple-Kernel Method Based on a Low-Rank Approximation")
    (description
     "This package provides a computationally efficient and statistically rigorous
fast Kernel Machine method for multi-kernel analysis.  The approach is based on
a low-rank approximation to the nuisance effect kernel matrices.  The algorithm
is applicable to continuous, binary, and survival traits and is implemented
using the existing single-kernel analysis software SKAT and @code{coxKM}'.
@code{coxKM} can be obtained from <https://github.com/lin-lab/@code{coxKM>}.")
    (license license:gpl2)))

(define-public r-fastjt
  (package
    (name "r-fastjt")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastJT" version))
       (sha256
        (base32 "1vw9x00gslqgjfz55a60kizz8y02jifgf3fw7dv9lxm207vd2wxq"))))
    (properties `((upstream-name . "fastJT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fastJT")
    (synopsis "Efficient Jonckheere-Terpstra Test Statistics")
    (description
     "This Rcpp'-based package implements highly efficient functions for the
calculation of the Jonckheere-Terpstra statistic.  It can be used for a variety
of applications, including feature selection in machine learning problems, or to
conduct genome-wide association studies (GWAS) with multiple quantitative
phenotypes.  The code leverages @code{OpenMP} directives for multi-core
computing to reduce overall processing time.")
    (license license:gpl2+)))

(define-public r-fastjm
  (package
    (name "r-fastjm")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastJM" version))
       (sha256
        (base32 "0k53hlwz00qp4242dy8wrk0xhq89dlrzh5a340aw2j134qrh42lk"))))
    (properties `((upstream-name . "FastJM")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeroc
                             r-survival
                             r-statmod
                             r-rcppeigen
                             r-rcpp
                             r-nlme
                             r-mass
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=FastJM")
    (synopsis
     "Semi-Parametric Joint Modeling of Longitudinal and Survival Data")
    (description
     "Maximum likelihood estimation for the semi-parametric joint modeling of
competing risks and longitudinal data applying customized linear scan
algorithms, proposed by Li and colleagues (2022) <doi:10.1155/2022/1362913>.
The time-to-event data is modelled using a (cause-specific) Cox proportional
hazards regression model with time-fixed covariates.  The longitudinal outcome
is modelled using a linear mixed effects model.  The association is captured by
shared random effects.  The model is estimated using an Expectation Maximization
algorithm.")
    (license license:gpl3+)))

(define-public r-fastimputation
  (package
    (name "r-fastimputation")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastImputation" version))
       (sha256
        (base32 "0jnhspgxas7kswpgw4hihc1y1286w5n8bikwzls7vsik5lj5yac4"))))
    (properties `((upstream-name . "FastImputation")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=FastImputation")
    (synopsis "Learn from Training Data then Quickly Fill in Missing Data")
    (description
     "@code{TrainFastImputation}() uses training data to describe a multivariate
normal distribution that the data approximates or can be transformed into
approximating and stores this information as an object of class
@code{FastImputationPatterns}'. @code{FastImputation}() function uses this
@code{FastImputationPatterns} object to impute (make a good guess at) missing
data in a single line or a whole data frame of data.  This approximates the
process used by Amelia <https://gking.harvard.edu/amelia> but is much faster
when filling in values for a single line of data.")
    (license license:gpl2+)))

(define-public r-fastgraph
  (package
    (name "r-fastgraph")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastGraph" version))
       (sha256
        (base32 "0lz199607hqpwxzhff4jzhmjq6cbakd335iyclmlscllgfzgnhql"))))
    (properties `((upstream-name . "fastGraph")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fastGraph")
    (synopsis
     "Fast Drawing and Shading of Graphs of Statistical Distributions")
    (description
     "This package provides functionality to produce graphs of probability density
functions and cumulative distribution functions with few keystrokes, allows
shading under the curve of the probability density function to illustrate
concepts such as p-values and critical values, and fits a simple linear
regression line on a scatter plot with the equation as the main title.")
    (license license:gpl3)))

(define-public r-fastgp
  (package
    (name "r-fastgp")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastGP" version))
       (sha256
        (base32 "120qai1yw3yhwm762zridk78n4qclpivwm9f2hkij4bz851qibqv"))))
    (properties `((upstream-name . "FastGP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-rbenchmark r-mvtnorm r-mass))
    (home-page "https://cran.r-project.org/package=FastGP")
    (synopsis "Efficiently Using Gaussian Processes with Rcpp and RcppEigen")
    (description
     "This package contains Rcpp and @code{RcppEigen} implementations of matrix
operations useful for Gaussian process models, such as the inversion of a
symmetric Toeplitz matrix, sampling from multivariate normal distributions,
evaluation of the log-density of a multivariate normal vector, and Bayesian
inference for latent variable Gaussian process models with elliptical slice
sampling (Murray, Adams, and @code{MacKay} 2010).")
    (license license:gpl2)))

(define-public r-fastglm
  (package
    (name "r-fastglm")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastglm" version))
       (sha256
        (base32 "0283kgk81cxbii7ljmp1rzqg5mzkvf7cj7lflhhhkgj5ljqina2i"))))
    (properties `((upstream-name . "fastglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-bigmemory r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=fastglm")
    (synopsis
     "Fast and Stable Fitting of Generalized Linear Models using 'RcppEigen'")
    (description
     "Fits generalized linear models efficiently using @code{RcppEigen}'.  The
iteratively reweighted least squares implementation utilizes the step-halving
approach of Marschner (2011) <doi:10.32614/RJ-2011-012> to help safeguard
against convergence issues.")
    (license license:gpl2+)))

(define-public r-fastglcm
  (package
    (name "r-fastglcm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastGLCM" version))
       (sha256
        (base32 "1f7mafhsygbz1vrjvpva2zql0d6dphzr31skh9agancghh8hnm3q"))))
    (properties `((upstream-name . "fastGLCM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpparmadillo r-rcpp r-r6 r-openimager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/fastGLCM")
    (synopsis "'GLCM' Texture Features")
    (description
     "Two Gray Level Co-occurrence Matrix ('GLCM') implementations are included: The
first is a fast GLCM feature texture computation based on Python Numpy arrays
('Github Repository, <https://github.com/tzm030329/GLCM>).  The second is a fast
GLCM @code{RcppArmadillo} implementation which is parallelized (using
@code{OpenMP}') with the option to return all GLCM features at once.  For more
information, see \"Artifact-Free Thin Cloud Removal Using Gans\" by Toizumi
Takahiro, Zini Simone, Sagi Kazutoshi, Kaneko Eiji, Tsukada Masato, Schettini
Raimondo (2019), IEEE International Conference on Image Processing (ICIP), pp.
3596-3600, <doi:10.1109/ICIP.2019.8803652>.")
    (license license:gpl3)))

(define-public r-fastgasp
  (package
    (name "r-fastgasp")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastGaSP" version))
       (sha256
        (base32 "1i54gxnc27fjgdbcrf2n1s5p6jgadcz2v4g0hq4xay0kfr593a7g"))))
    (properties `((upstream-name . "FastGaSP")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustgasp r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=FastGaSP")
    (synopsis "Fast and Exact Computation of Gaussian Stochastic Process")
    (description
     "This package implements fast and exact computation of Gaussian stochastic
process with the Matern kernel using forward filtering and backward smoothing
algorithm.  It allows for the cases with or without a noise.  See the reference:
Mengyang Gu and Yanxun Xu (2017), <@code{arXiv:1711.11501>}.")
    (license license:gpl2+)))

(define-public r-fasterelasticnet
  (package
    (name "r-fasterelasticnet")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasterElasticNet" version))
       (sha256
        (base32 "1hr0wc6s6zpq1hkfgshf0dqjxb7s2849bb8lb04nmi6p42r3628g"))))
    (properties `((upstream-name . "fasterElasticNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/CUFESAM/Elastic-Net")
    (synopsis "An Amazing Fast Way to Fit Elastic Net")
    (description
     "Fit Elastic Net, Lasso, and Ridge regression and do cross-validation in a fast
way.  We build the algorithm based on Least Angle Regression by Bradley Efron,
Trevor Hastie, Iain Johnstone, etc. (2004)(<doi:10.1214/009053604000000067 >)
and some algorithms like Givens rotation and Forward/Back Substitution.  In this
way, many matrices to be computed are retained as triangular matrices which can
eventually speed up the computation.  The fitting algorithm for Elastic Net is
written in C++ using Armadillo linear algebra library.")
    (license license:gpl2+)))

(define-public r-fastdigest
  (package
    (name "r-fastdigest")
    (version "0.6-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastdigest" version))
       (sha256
        (base32 "02csl261v7nassi5119ygw6jglm8q6rssg7lgyxzj73mkyilm832"))))
    (properties `((upstream-name . "fastdigest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fastdigest")
    (synopsis "Fast, Low Memory-Footprint Digests of R Objects")
    (description
     "This package provides an R interface to Bob Jenkin's streaming,
non-cryptographic @code{SpookyHash} hash algorithm for use in digest-based
comparisons of R objects.  fastdigest plugs directly into R's internal
serialization machinery, allowing digests of all R objects the serialize()
function supports, including reference-style objects via custom hooks.  Speed is
high and scales linearly by object size; memory usage is constant and
negligible.")
    (license license:artistic2.0)))

(define-public r-fastcub
  (package
    (name "r-fastcub")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastCUB" version))
       (sha256
        (base32 "04bphkfkkjp7gfnsgar5gcxzmkr437mz6y8mbf015m7f4cvdhzjz"))))
    (properties `((upstream-name . "FastCUB")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula r-cub))
    (home-page "https://cran.r-project.org/package=FastCUB")
    (synopsis
     "Fast EM and Best-Subset Selection for CUB Models for Rating Data")
    (description
     "For ordinal rating data, consider the accelerated Expectation-Maximization
algorithm to estimate and test models within the family of CUB models (where CUB
stands for Combination of a discrete Uniform and a shifted Binomial
distributions).  The procedure is built upon Louis identity for the observed
information matrix.  Best-subset variable selection for CUB regression models is
then implemented on such basis.  The methods here implemented are illustrated
and discussed in the preprint available from Researchgate by Simone R. (2020)
<https://tinyurl.com/vvk563e>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fastcpd
  (package
    (name "r-fastcpd")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastcpd" version))
       (sha256
        (base32 "0i68411h1cdh4jpz8a7fg0ns1zvwdn7zpbarciy0swldq8v43xi1"))))
    (properties `((upstream-name . "fastcpd")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-glmnet
                             r-fastglm
                             r-desctools))
    (home-page "https://fastcpd.xingchi.li")
    (synopsis "Fast Change Point Detection via Sequential Gradient Descent")
    (description
     "This package implements fast change point detection algorithm based on the paper
\"Sequential Gradient Descent and Quasi-Newton's Method for Change-Point
Analysis\" by Xianyang Zhang, Trisha Dawn
<https://proceedings.mlr.press/v206/zhang23b.html>.  The algorithm is based on
dynamic programming with pruning and sequential gradient descent.  It is able to
detect change points a magnitude faster than the vanilla Pruned Exact Linear
Time(PELT).  The package includes examples of linear regression, logistic
regression, Poisson regression, penalized linear regression data, and whole lot
more examples with custom cost function in case the user wants to use their own
cost function.")
    (license license:gpl3+)))

(define-public r-fastcox
  (package
    (name "r-fastcox")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastcox" version))
       (sha256
        (base32 "0jn19v6mkwgyz8x63xrfgkgnf0f2rq338r5qkhz690mdzr4c47a3"))))
    (properties `((upstream-name . "fastcox")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list gfortran))
    (home-page "https://github.com/emeryyi/fastcox")
    (synopsis
     "Lasso and Elastic-Net Penalized Cox's Regression in High Dimensions Models using the Cocktail Algorithm")
    (description
     "We implement a cocktail algorithm, a good mixture of coordinate decent, the
majorization-minimization principle and the strong rule, for computing the
solution paths of the elastic net penalized Cox's proportional hazards model.
The package is an implementation of Yang, Y. and Zou, H. (2013) DOI:
<doi:10.4310/SII.2013.v6.n2.a1>.")
    (license license:gpl2)))

(define-public r-fastcmh
  (package
    (name "r-fastcmh")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastcmh" version))
       (sha256
        (base32 "0hib3r3pkfdi67bdy4pf1pw6869vq4b3pg1pq1zwpyy76nbnq9vl"))))
    (properties `((upstream-name . "fastcmh")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-bindata))
    (home-page "https://cran.r-project.org/package=fastcmh")
    (synopsis "Significant Interval Discovery with Categorical Covariates")
    (description
     "This package provides a method which uses the Cochran-Mantel-Haenszel test with
significant pattern mining to detect intervals in binary genotype data which are
significantly associated with a particular phenotype, while accounting for
categorical covariates.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-fastbeta
  (package
    (name "r-fastbeta")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastbeta" version))
       (sha256
        (base32 "0jbvbdq3hdmp01wz9y1nidfzm80m3d0gdz6p8wi0wm32zxxh4c3q"))))
    (properties `((upstream-name . "fastbeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve r-adaptivetau))
    (home-page "https://github.com/davidearn/fastbeta")
    (synopsis
     "Fast Estimation of Time-Varying Infectious Disease Transmission Rates")
    (description
     "This package provides methods for estimating time-varying infectious disease
transmission rates from disease incidence time series, based on discretizations
of an SIR model, as analyzed in Jagan et al. (2020)
<doi:10.1371/journal.pcbi.1008124>.")
    (license license:gpl2+)))

(define-public r-fastbandchol
  (package
    (name "r-fastbandchol")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FastBandChol" version))
       (sha256
        (base32 "1hlgipn792vaylvc0r44clkjcnkns6p241a1fs8sb3gpq81naazk"))))
    (properties `((upstream-name . "FastBandChol")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=FastBandChol")
    (synopsis
     "Fast Estimation of a Covariance Matrix by Banding the Cholesky Factor")
    (description
     "Fast and numerically stable estimation of a covariance matrix by banding the
Cholesky factor using a modified Gram-Schmidt algorithm implemented in
@code{RcppArmadilo}.  See <http://stat.umn.edu/~molst029> for details on the
algorithm.")
    (license license:gpl2)))

(define-public r-fastai
  (package
    (name "r-fastai")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastai" version))
       (sha256
        (base32 "1glq64hhwrwp29scf851nb6nl83hpvvy8cj37z2r36r89i5inp4b"))))
    (properties `((upstream-name . "fastai")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate
                             r-png
                             r-glue
                             r-ggpubr
                             r-ggplot2
                             r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EagerAI/fastai")
    (synopsis "Interface to 'fastai'")
    (description
     "The fastai <https://docs.fast.ai/index.html> library simplifies training fast
and accurate neural networks using modern best practices.  It is based on
research in to deep learning best practices undertaken at fast.ai', including
out of the box support for vision, text, tabular, audio, time series, and
collaborative filtering models.")
    (license license:asl2.0)))

(define-public r-fastaft
  (package
    (name "r-fastaft")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastAFT" version))
       (sha256
        (base32 "0vyjp2dyy72d7dfjjky6aygvl6kqm30mk11n5rcj51rydbxaawnc"))))
    (properties `((upstream-name . "fastAFT")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=fastAFT")
    (synopsis "Fast Regression for the Accelerated Failure Time (AFT) Model")
    (description
     "Fast censored linear regression for the accelerated failure time (AFT) model of
Huang (2013) <doi:10.1111/sjos.12031>.")
    (license license:gpl2+)))

(define-public r-fastadi
  (package
    (name "r-fastadi")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fastadi" version))
       (sha256
        (base32 "1hvi430ws1yzw10fp4z177wc1bnj11pxmvjsbmx0p54bcbb3a32a"))))
    (properties `((upstream-name . "fastadi")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-lrmf3
                             r-logger
                             r-glue
                             r-ellipsis))
    (home-page "https://github.com/RoheLab/fastadi")
    (synopsis "Self-Tuning Data Adaptive Matrix Imputation")
    (description
     "This package implements the @code{AdaptiveImpute} matrix completion algorithm of
Intelligent Initialization and Adaptive Thresholding for Iterative Matrix
Completion',
<https://amstat.tandfonline.com/doi/abs/10.1080/10618600.2018.1518238>.
@code{AdaptiveImpute} is useful for embedding sparsely observed matrices, often
out performs competing matrix completion algorithms, and self-tunes its
hyperparameter, making usage easy.")
    (license license:expat)))

(define-public r-fasta
  (package
    (name "r-fasta")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasta" version))
       (sha256
        (base32 "0wnppxn3039dj58xm0b66fsyq537bk8k8m56im11xj1iwc3zc6vw"))))
    (properties `((upstream-name . "fasta")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fasta")
    (synopsis "Fast Adaptive Shrinkage/Thresholding Algorithm")
    (description
     "This package provides a collection of acceleration schemes for proximal gradient
methods for estimating penalized regression parameters described in Goldstein,
Studer, and Baraniuk (2016) <@code{arXiv:1411.3406>}.  Schemes such as Fast
Iterative Shrinkage and Thresholding Algorithm (FISTA) by Beck and Teboulle
(2009) <doi:10.1137/080716542> and the adaptive stepsize rule introduced in
Wright, Nowak, and Figueiredo (2009) <doi:10.1109/TSP.2009.2016892> are
included.  You provide the objective function and proximal mappings, and it
takes care of the issues like stepsize selection, acceleration, and stopping
conditions for you.")
    (license license:expat)))

(define-public r-fasstr
  (package
    (name "r-fasstr")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasstr" version))
       (sha256
        (base32 "1kzk759xvba66fq4zw0p0kwfgbk42bw5z2fi7f8ziy4vzkpwcy93"))))
    (properties `((upstream-name . "fasstr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zyp
                             r-tidyr
                             r-tidyhydat
                             r-scales
                             r-rcpproll
                             r-purrr
                             r-plyr
                             r-pearsonds
                             r-openxlsx
                             r-lubridate
                             r-ggplot2
                             r-fitdistrplus
                             r-e1071
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://bcgov.github.io/fasstr/")
    (synopsis "Analyze, Summarize, and Visualize Daily Streamflow Data")
    (description
     "The Flow Analysis Summary Statistics Tool for R, fasstr', provides various
functions to tidy and screen daily stream discharge data, calculate and
visualize various summary statistics and metrics, and compute annual trending
and volume frequency analyses.  It features useful function arguments for
filtering of and handling dates, customizing data and metrics, and the ability
to pull daily data directly from the Water Survey of Canada hydrometric database
(<https://collaboration.cmc.ec.gc.ca/cmc/hydrometrics/www/>).")
    (license license:asl2.0)))

(define-public r-fassets
  (package
    (name "r-fassets")
    (version "4023.85")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fAssets" version))
       (sha256
        (base32 "1yrs3mfq8ym5pdmf6236xwnc8176z7j36f2bzrrwdfp7kz2gq0id"))))
    (properties `((upstream-name . "fAssets")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-sn
                             r-robustbase
                             r-mvnormtest
                             r-mass
                             r-fmultivar
                             r-fbasics
                             r-energy
                             r-ecodist))
    (home-page "https://r-forge.r-project.org/projects/rmetrics/")
    (synopsis "Rmetrics - Analysing and Modelling Financial Assets")
    (description
     "This package provides a collection of functions to manage, to investigate and to
analyze data sets of financial assets from different points of view.")
    (license license:gpl2+)))

(define-public r-fasjem
  (package
    (name "r-fasjem")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasjem" version))
       (sha256
        (base32 "1bbrcyyg96hakgla3604byrkn9034197vy2is048kdq20yr2y11n"))))
    (properties `((upstream-name . "fasjem")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://github.com/QData/JEM")
    (synopsis
     "Fast and Scalable Joint Estimator for Learning Multiple Related Sparse Gaussian Graphical Models")
    (description
     "This is an R implementation of \"A Fast and Scalable Joint Estimator for Learning
Multiple Related Sparse Gaussian Graphical Models\" (FASJEM).  The FASJEM
algorithm can be used to estimate multiple related precision matrices.  For
instance, it can identify context-specific gene networks from multi-context gene
expression datasets.  By performing data-driven network inference from
high-dimensional and heterogonous data sets, this tool can help users
effectively translate aggregated data into knowledge that take the form of
graphs among entities.  Please run demo(fasjem) to learn the basic functions
provided by this package.  For more details, please see
<http://proceedings.mlr.press/v54/wang17e/wang17e.pdf>.")
    (license license:gpl2)))

(define-public r-faseg
  (package
    (name "r-faseg")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FASeg" version))
       (sha256
        (base32 "0lazx8dyycyycr8467m9rkxkxhp4r2w737kpkb40y59wncmbvkik"))))
    (properties `((upstream-name . "FASeg")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FASeg")
    (synopsis "Joint Segmentation of Correlated Time Series")
    (description
     "It contains a function designed to the joint segmentation in the mean of several
correlated series.  The method is described in the paper X. Collilieux, E.
Lebarbier and S. Robin.  A factor model approach for the joint segmentation with
between-series correlation (2015) <@code{arXiv:1505.05660>}.")
    (license license:gpl2)))

(define-public r-fasano-franceschini-test
  (package
    (name "r-fasano-franceschini-test")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fasano.franceschini.test" version))
       (sha256
        (base32 "1d4ai05c81sslkvxsis4pvzigx306nly120k67jlj8vn7p8wdlhy"))))
    (properties `((upstream-name . "fasano.franceschini.test")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpp))
    (home-page "https://github.com/braunlab-nu/fasano.franceschini.test")
    (synopsis
     "Fasano-Franceschini Test: A Multidimensional Kolmogorov-Smirnov Two-Sample Test")
    (description
     "An implementation of the two-sample multidimensional Kolmogorov-Smirnov test
described by Fasano and Franceschini (1987) <doi:10.1093/mnras/225.1.155>.  This
test evaluates the null hypothesis that two i.i.d.  random samples were drawn
from the same underlying probability distribution.  The data can be of any
dimension, and can be of any type (continuous, discrete, or mixed).")
    (license license:expat)))

(define-public r-farrell
  (package
    (name "r-farrell")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "farrell" version))
       (sha256
        (base32 "0i546w5p40j9wqiq7qvbxw0426msavbdpnh258jcg6bagc6bywh8"))))
    (properties `((upstream-name . "farrell")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-shinywidgets
                             r-shinycssloaders
                             r-shiny
                             r-rlang
                             r-readr
                             r-miniui
                             r-magrittr
                             r-dt
                             r-dplyr
                             r-data-table
                             r-benchmarking))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/feddelegrand7/farrell")
    (synopsis "Interactive Interface to Data Envelopment Analysis Modeling")
    (description
     "Allows the user to execute interactively radial data envelopment analysis
models.  The user has the ability to upload a data frame, select the
input/output variables, choose the technology assumption to adopt and decide
whether to run an input or an output oriented model.  When the model is executed
a set of results are displayed which include efficiency scores, peers
determination, scale efficiencies evaluation and slacks calculation.  Fore more
information about the theoretical background of the package, please refer to
Bogetoft & Otto (2011) <doi:10.1007/978-1-4419-7961-2>.")
    (license license:expat)))

(define-public r-farr
  (package
    (name "r-farr")
    (version "0.2.30")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "farr" version))
       (sha256
        (base32 "0bzq9kbqp77m1jdb6sqd5axk783la7zs3y0i68fqydh50s0r3z2g"))))
    (properties `((upstream-name . "farr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rpart
                             r-rlang
                             r-readr
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-dbplyr
                             r-dbi))
    (home-page "https://cran.r-project.org/package=farr")
    (synopsis "Data and Code for Financial Accounting Research")
    (description
     "This package provides handy functions and data to support a course book for
accounting research.  Gow, Ian and Tongqing Ding (2022) \"Accounting Research: An
Introductory Course\" <https://iangow.github.io/far_book/>.")
    (license license:expat)))

(define-public r-farmtest
  (package
    (name "r-farmtest")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FarmTest" version))
       (sha256
        (base32 "1mr2cscz3ywyq280ifaj4gypxanvvl9s7w33ysmwn952camra2md"))))
    (properties `((upstream-name . "FarmTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/XiaoouPan/FarmTest")
    (synopsis "Factor-Adjusted Robust Multiple Testing")
    (description
     "This package performs robust multiple testing for means in the presence of known
and unknown latent factors presented in Fan et al.(2019) \"@code{FarmTest}:
Factor-Adjusted Robust Multiple Testing With Approximate False Discovery
Control\" <doi:10.1080/01621459.2018.1527700>.  Implements a series of adaptive
Huber methods combined with fast data-drive tuning schemes proposed in Ke et
al.(2019) \"User-Friendly Covariance Estimation for Heavy-Tailed Distributions\"
<doi:10.1214/19-STS711> to estimate model parameters and construct test
statistics that are robust against heavy-tailed and/or asymmetric error
distributions.  Extensions to two-sample simultaneous mean comparison problems
are also included.  As by-products, this package contains functions that compute
adaptive Huber mean, covariance and regression estimators that are of
independent interest.")
    (license license:gpl3)))

(define-public r-farmselect
  (package
    (name "r-farmselect")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FarmSelect" version))
       (sha256
        (base32 "174rzv9k0hdcfdkv7bisy70rip2iy0bnj3qa54i00wqwjdglgjdn"))))
    (properties `((upstream-name . "FarmSelect")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-ncvreg r-fbasics))
    (native-inputs (list r-knitr))
    (home-page "https://kbose28.github.io/FarmSelect/")
    (synopsis "Factor Adjusted Robust Model Selection")
    (description
     "This package implements a consistent model selection strategy for high
dimensional sparse regression when the covariate dependence can be reduced
through factor models.  By separating the latent factors from idiosyncratic
components, the problem is transformed from model selection with highly
correlated covariates to that with weakly correlated variables.  It is
appropriate for cases where we have many variables compared to the number of
samples.  Moreover, it implements a robust procedure to estimate distribution
parameters wherever possible, hence being suitable for cases when the underlying
distribution deviates from Gaussianity.  See the paper on the @code{FarmSelect}
method, Fan et al.(2017) <@code{arXiv:1612.08490>}, for detailed description of
methods and further references.")
    (license license:gpl2)))

(define-public r-farff
  (package
    (name "r-farff")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "farff" version))
       (sha256
        (base32 "1hniqhc4mdnaq8bmpj2fmb6iwgys0al1kvcdiq08pmgj6hhzzjr3"))))
    (properties `((upstream-name . "farff")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-readr r-checkmate r-bbmisc))
    (home-page "https://github.com/mlr-org/farff")
    (synopsis "Faster 'ARFF' File Reader and Writer")
    (description
     "Reads and writes ARFF files.  ARFF (Attribute-Relation File Format) files are
like CSV files, with a little bit of added meta information in a header and
standardized NA values.  They are quite often used for machine learning data
sets and were introduced for the WEKA machine learning Java toolbox.  See
<https://waikato.github.io/weka-wiki/formats_and_processing/arff_stable/> for
further info on ARFF and for <http://www.cs.waikato.ac.nz/ml/weka/> for more
info on WEKA'.  farff gets rid of the Java dependency that RWeka enforces, and
it is at least a faster reader (for bigger files).  It uses readr as parser
back-end for the data section of the ARFF file.  Consistency with RWeka is
tested on Github and Travis CI with hundreds of ARFF files from @code{OpenML}'.")
    (license license:bsd-2)))

(define-public r-fardeep
  (package
    (name "r-fardeep")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FARDEEP" version))
       (sha256
        (base32 "0blvjakcpkh9vpxryk7qyaqnija0r375ckv37kjlr34xg8pg9qnm"))))
    (properties `((upstream-name . "FARDEEP")))
    (build-system r-build-system)
    (propagated-inputs (list r-preprocesscore r-nnls))
    (home-page "https://cran.r-project.org/package=FARDEEP")
    (synopsis
     "Fast and Robust Deconvolution of Tumor Infiltrating Lymphocyte from Expression Profiles using Least Trimmed Squares")
    (description
     "Using the idea of least trimmed square, it could automatically detects and
removes outliers from data before estimating the coefficients.  It is a robust
machine learning tool which can be applied to gene-expression deconvolution
technique.  Yuning Hao, Ming Yan, Blake R. Heath, Yu L. Lei and Yuying Xie
(2019) <doi:10.1101/358366>.")
    (license license:expat)))

(define-public r-faraway
  (package
    (name "r-faraway")
    (version "1.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faraway" version))
       (sha256
        (base32 "0w4mp3dpckr74js7ihkgybiim8crq3izkbxwrs0a52lhah03haz4"))))
    (properties `((upstream-name . "faraway")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-lme4))
    (home-page "https://github.com/julianfaraway/faraway")
    (synopsis "Functions and Datasets for Books by Julian Faraway")
    (description
     "Books are \"Linear Models with R\" published 1st Ed.  August 2004, 2nd Ed.  July
2014 by CRC press, ISBN 9781439887332, and \"Extending the Linear Model with R\"
published by CRC press in 1st Ed.  December 2005 and 2nd Ed.  March 2016, ISBN
9781584884248 and \"Practical Regression and ANOVA in R\" contributed
documentation on CRAN (now very dated).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-far
  (package
    (name "r-far")
    (version "0.6-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "far" version))
       (sha256
        (base32 "0p0731vg1y57z8dmbrsa5gbnpf754q8yi5mm5h9480x1f8nk38bi"))))
    (properties `((upstream-name . "far")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://github.com/Looping027/far")
    (synopsis "Modelization for Functional AutoRegressive Processes")
    (description
     "Modelizations and previsions functions for Functional @code{AutoRegressive}
processes using nonparametric methods: functional kernel, estimation of the
covariance operator in a subspace, ...")
    (license license:lgpl2.1)))

(define-public r-faq
  (package
    (name "r-faq")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faq" version))
       (sha256
        (base32 "0knajqm9ydsjhn6xymfrcyf2b1kgfbiai8ai2zlm7p4mgfry504h"))))
    (properties `((upstream-name . "faq")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=faq")
    (synopsis "Create FAQ Page")
    (description
     "Create Frequently Asked Questions page for Shiny application.")
    (license license:expat)))

(define-public r-faoutlier
  (package
    (name "r-faoutlier")
    (version "0.7.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faoutlier" version))
       (sha256
        (base32 "0dd8k5s0yv047p10jisqz13nflby4y0dg97r0nbjygzcq1ryx2bs"))))
    (properties `((upstream-name . "faoutlier")))
    (build-system r-build-system)
    (propagated-inputs (list r-sem
                             r-pbapply
                             r-mvtnorm
                             r-mirt
                             r-mass
                             r-lavaan
                             r-lattice))
    (home-page "https://github.com/philchalmers/faoutlier")
    (synopsis
     "Influential Case Detection Methods for Factor Analysis and Structural Equation Models")
    (description
     "This package provides tools for detecting and summarize influential cases that
can affect exploratory and confirmatory factor analysis models as well as
structural equation models more generally (Chalmers, 2015,
<doi:10.1177/0146621615597894>; Flora, D. B., @code{LaBrish}, C. & Chalmers, R.
P., 2012, <doi:10.3389/fpsyg.2012.00055>).")
    (license license:gpl2+)))

(define-public r-faostat
  (package
    (name "r-faostat")
    (version "2.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAOSTAT" version))
       (sha256
        (base32 "05nwskl8l68rrf0krfmw2sc3snpygqsgdi40kbfim9wfqyy175di"))))
    (properties `((upstream-name . "FAOSTAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjsonio
                             r-plyr
                             r-mass
                             r-labeling
                             r-httr
                             r-data-table
                             r-classint))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/paulrougieux/faostatpackage")
    (synopsis "Download Data from the FAOSTAT Database")
    (description
     "Download Data from the FAOSTAT Database of the Food and Agricultural
Organization (FAO) of the United Nations.  A list of functions to download
statistics from FAOSTAT (database of the FAO <https://www.fao.org/faostat/>) and
WDI (database of the World Bank <https://data.worldbank.org/>), and to perform
some harmonization operations.")
    (license license:gpl2+)))

(define-public r-fao56
  (package
    (name "r-fao56")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAO56" version))
       (sha256
        (base32 "0dl56gdsmx3ixxakz2xqrirss5xxbz62mvp7jdrgaizrn8xd802i"))))
    (properties `((upstream-name . "FAO56")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=FAO56")
    (synopsis "Evapotranspiration Based on FAO Penman-Monteith Equation")
    (description
     "Calculation of Evapotranspiration by FAO Penman-Monteith equation based on
Allen, R. G., Pereira, L. S., Raes, D., Smith, M. (1998, ISBN:92-5-104219-5)
\"Crop evapotranspiration - Guidelines for computing crop water requirements -
FAO Irrigation and drainage paper 56\".")
    (license license:gpl2+)))

(define-public r-fanplot
  (package
    (name "r-fanplot")
    (version "4.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fanplot" version))
       (sha256
        (base32 "08zd2af26ah1rdkzxi1sv4c4l06jpxd6m38q3xy657k2jm90rkkc"))))
    (properties `((upstream-name . "fanplot")))
    (build-system r-build-system)
    (home-page "http://guyabel.github.io/fanplot/")
    (synopsis
     "Visualisation of Sequential Probability Distributions Using Fan Charts")
    (description
     "Visualise sequential distributions using a range of plotting styles.  Sequential
distribution data can be input as either simulations or values corresponding to
percentiles over time.  Plots are added to existing graphic devices using the
fan function.  Users can choose from four different styles, including fan chart
type plots, where a set of coloured polygon, with shadings corresponding to the
percentile values are layered to represent different uncertainty levels.  Full
details in R Journal article; Abel (2015) <doi:10.32614/RJ-2015-002>.")
    (license license:gpl2)))

(define-public r-fanovagraph
  (package
    (name "r-fanovagraph")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fanovaGraph" version))
       (sha256
        (base32 "1hffda52yk24slbgsfdgkpg3vsryfnhlw09r39cbyz483i7xd8d0"))))
    (properties `((upstream-name . "fanovaGraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-sensitivity r-igraph r-dicekriging))
    (home-page "https://cran.r-project.org/package=fanovaGraph")
    (synopsis "Building Kriging Models from FANOVA Graphs")
    (description
     "Estimation and plotting of a function's FANOVA graph to identify the interaction
structure and fitting, prediction and simulation of a Kriging model modified by
the identified structure.  The interactive function @code{plotManipulate}() can
only be run on the RStudio IDE with RStudio package manipulate loaded.  RStudio
is freely available (<https://rstudio.com/>), and includes package manipulate'.
The equivalent function @code{plotTk}() bases on CRAN Repository packages only.
For further information on the method see Fruth, J., Roustant, O., Kuhnt, S.
(2014) <doi:10.1016/j.jspi.2013.11.007>.")
    (license license:gpl3)))

(define-public r-fangs
  (package
    (name "r-fangs")
    (version "0.2.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fangs" version))
       (sha256
        (base32 "11jcj9mk20lmqdwl5cczki5kzx4fdrci8xjg6g401ca1m00hhb1v"))))
    (properties `((upstream-name . "fangs")))
    (build-system r-build-system)
    (inputs (list))
    (home-page "https://github.com/dbdahl/fangs")
    (synopsis "Feature Allocation Neighborhood Greedy Search Algorithm")
    (description
     "This package provides a neighborhood-based, greedy search algorithm is performed
to estimate a feature allocation by minimizing the expected loss based on
posterior samples from the feature allocation distribution.  The method is
currently under peer review but an earlier draft is available in Dahl, Johnson,
and Andros (2022+) <doi:10.48550/@code{arXiv.2207.13824>}.")
    (license (list license:expat license:asl2.0))))

(define-public r-fancycut
  (package
    (name "r-fancycut")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fancycut" version))
       (sha256
        (base32 "1xg5qjxf77g10h07x6rvb8c3klc9gbr77bkw352qpas268pkswl2"))))
    (properties `((upstream-name . "fancycut")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fancycut")
    (synopsis "Fancy Version of 'base::cut'")
    (description
     "This package provides the function fancycut() which is like cut() except you can
mix left open and right open intervals with point values, intervals that are
closed on both ends and intervals that are open on both ends.")
    (license license:cc0)))

(define-public r-fanc
  (package
    (name "r-fanc")
    (version "2.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fanc" version))
       (sha256
        (base32 "02w10lm4nggab5q16ld9xgpa4x4bygfiigs8m12yiah5ah1n5vk8"))))
    (properties `((upstream-name . "fanc")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-ellipse))
    (home-page "https://doi.org/10.1007/s11222-014-9458-0")
    (synopsis "Penalized Likelihood Factor Analysis via Nonconvex Penalty")
    (description
     "Computes the penalized maximum likelihood estimates of factor loadings and
unique variances for various tuning parameters.  The pathwise coordinate descent
along with EM algorithm is used.  This package also includes a new graphical
tool which outputs path diagram, goodness-of-fit indices and model selection
criteria for each regularization parameter.  The user can change the
regularization parameter by manipulating scrollbars, which is helpful to find a
suitable value of regularization parameter.")
    (license license:gpl2+)))

(define-public r-famt
  (package
    (name "r-famt")
    (version "2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAMT" version))
       (sha256
        (base32 "0msb02fz8blm6wgg31xwwxv8phg35w7844q1xz4v307ixz2qgs1h"))))
    (properties `((upstream-name . "FAMT")))
    (build-system r-build-system)
    (propagated-inputs (list r-mnormt r-impute))
    (home-page "http://famt.free.fr/")
    (synopsis
     "Factor Analysis for Multiple Testing (FAMT) : Simultaneous Tests under Dependence in High-Dimensional Data")
    (description
     "The method proposed in this package takes into account the impact of dependence
on the multiple testing procedures for high-throughput data as proposed by
Friguet et al. (2009).  The common information shared by all the variables is
modeled by a factor analysis structure.  The number of factors considered in the
model is chosen to reduce the false discoveries variance in multiple tests.  The
model parameters are estimated thanks to an EM algorithm.  Adjusted tests
statistics are derived, as well as the associated p-values.  The proportion of
true null hypotheses (an important parameter when controlling the false
discovery rate) is also estimated from the FAMT model.  Graphics are proposed to
interpret and describe the factors.")
    (license license:gpl2+)))

(define-public r-famskatrc
  (package
    (name "r-famskatrc")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "famSKATRC" version))
       (sha256
        (base32 "1xbh0by4sjxrmy00v1svcj3lb98p9krpncbhpjbli1jd2p47yk60"))))
    (properties `((upstream-name . "famSKATRC")))
    (build-system r-build-system)
    (propagated-inputs (list r-kinship2 r-coxme r-compquadform r-bdsmatrix))
    (home-page "https://www.r-project.org")
    (synopsis
     "Family Sequence Kernel Association Test for Rare and Common Variants")
    (description
     "@code{FamSKAT-RC} is a family-based association kernel test for both rare and
common variants.  This test is general and several special cases are known as
other methods: @code{famSKAT}, which only focuses on rare variants in
family-based data, SKAT, which focuses on rare variants in population-based data
(unrelated individuals), and SKAT-RC, which focuses on both rare and common
variants in population-based data.  When one applies @code{famSKAT-RC} and sets
the value of phi to 1, @code{famSKAT-RC} becomes @code{famSKAT}.  When one
applies @code{famSKAT-RC} and set the value of phi to 1 and the kinship matrix
to the identity matrix, @code{famSKAT-RC} becomes SKAT. When one applies
@code{famSKAT-RC} and set the kinship matrix (fullkins) to the identity matrix
(and phi is not equal to 1), @code{famSKAT-RC} becomes SKAT-RC. We also include
a small sample synthetic pedigree to demonstrate the method with.  For more
details see Saad M and Wijsman EM (2014) <doi:10.1002/gepi.21844>.")
    (license license:gpl3+)))

(define-public r-famos
  (package
    (name "r-famos")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAMoS" version))
       (sha256
        (base32 "14gr9wv9bpibk0rrzzwijvdncx1fgnpbv55nqzbb4jhq7fdckmsa"))))
    (properties `((upstream-name . "FAMoS")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-future))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FAMoS")
    (synopsis "Flexible Algorithm for Model Selection")
    (description
     "Given a set of parameters describing model dynamics and a corresponding cost
function, FA@code{MoS} performs a dynamic forward-backward model selection on a
specified selection criterion.  It also applies a non-local swap search method.
Works on any cost function.  For detailed information see Gabel et al. (2019)
<doi:10.1371/journal.pcbi.1007230>.")
    (license license:expat)))

(define-public r-famle
  (package
    (name "r-famle")
    (version "1.3.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAmle" version))
       (sha256
        (base32 "1g6jacbphbfqn0kkfgdv0g9v8xnzx70872byy0rxp5g2ags6hj2b"))))
    (properties `((upstream-name . "FAmle")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://github.com/tpetzoldt/FAmle")
    (synopsis
     "Maximum Likelihood and Bayesian Estimation of Univariate Probability Distributions")
    (description
     "Estimate parameters of univariate probability distributions with maximum
likelihood and Bayesian methods.")
    (license license:gpl2)))

(define-public r-familyrank
  (package
    (name "r-familyrank")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FamilyRank" version))
       (sha256
        (base32 "0v1b3a6rxbbl7xdy977j02x1ni66879x98vg6ngbaqvh7v9vl82x"))))
    (properties `((upstream-name . "FamilyRank")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-plyr))
    (home-page "https://cran.r-project.org/package=FamilyRank")
    (synopsis
     "Algorithm for Ranking Predictors Using Graphical Domain Knowledge")
    (description
     "Grows families of features by selecting features that maximize a weighted score
calculated from empirical feature scores and graphical knowledge.  The final
weighted score for a feature is determined by summing a feature's
family-weighted scores across all families in which the feature appears.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-families
  (package
    (name "r-families")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Families" version))
       (sha256
        (base32 "1ravgcn3jkhfx6q4wqxld2mdmibdm07ywzy3za3hws6a04zgsbvn"))))
    (properties `((upstream-name . "Families")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-msm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Families")
    (synopsis "Kinship Ties in Virtual Populations")
    (description
     "This package provides tools to study kinship networks, grandparenthood, and
double burden (presence of children and oldest old parents) in virtual
population produced by @code{VirtualPop}'.")
    (license license:gpl2)))

(define-public r-familiar
  (package
    (name "r-familiar")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "familiar" version))
       (sha256
        (base32 "0nm000lbq1va7r1x12q1yzy4mqzr8zc4ac2nlvw9cn3l9jmgdyj7"))))
    (properties `((upstream-name . "familiar")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rstream r-rlang r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexzwanenburg/familiar")
    (synopsis "End-to-End Automated Machine Learning and Model Evaluation")
    (description
     "Single unified interface for end-to-end modelling of regression, categorical and
time-to-event (survival) outcomes.  Models created using familiar are
self-containing, and their use does not require additional information such as
baseline survival, feature clustering, or feature transformation and
normalisation parameters.  Model performance, calibration, risk group
stratification, (permutation) variable importance, individual conditional
expectation, partial dependence, and more, are assessed automatically as part of
the evaluation process and exported in tabular format and plotted, and may also
be computed manually using export and plot functions.  Where possible, metrics
and values obtained during the evaluation process come with confidence
intervals.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-familial
  (package
    (name "r-familial")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "familial" version))
       (sha256
        (base32 "079dw3rwh8p0g3x5n8bc6rvkjfxa9r1179vl9dpyv186zmi1palv"))))
    (properties `((upstream-name . "familial")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats r-ggplot2 r-depthproc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ryan-thompson/familial")
    (synopsis "Statistical Tests of Familial Hypotheses")
    (description
     "This package provides functionality for testing familial hypotheses.  Supports
testing centers belonging to the Huber family.  Testing is carried out using the
Bayesian bootstrap.  One- and two-sample tests are supported, as are directional
tests.  Methods for visualizing output are provided.")
    (license license:gpl3)))

(define-public r-famevent
  (package
    (name "r-famevent")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FamEvent" version))
       (sha256
        (base32 "1f2cfbd799gkva0jyf7x6x37x95nlg1zv85h85irkwh0kfwk55gh"))))
    (properties `((upstream-name . "FamEvent")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-survival
                             r-pracma
                             r-mass
                             r-kinship2
                             r-eha
                             r-cmprsk))
    (home-page "https://cran.r-project.org/package=FamEvent")
    (synopsis "Family Age-at-Onset Data Simulation and Penetrance Estimation")
    (description
     "Simulates age-at-onset traits associated with a segregating major gene in family
data obtained from population-based, clinic-based, or multi-stage designs.
Appropriate ascertainment correction is utilized to estimate age-dependent
penetrance functions either parametrically from the fitted model or
nonparametrically from the data.  The Expectation and Maximization algorithm can
infer missing genotypes and carrier probabilities estimated from family's
genotype and phenotype information or from a fitted model.  Plot functions
include pedigrees of simulated families and predicted penetrance curves based on
specified parameter values.  For more information see Choi, Y.-H., Briollais,
L., He, W. and Kopciuk, K. (2021) @code{FamEvent}: An R Package for Generating
and Modeling Time-to-Event Data in Family Designs, Journal of Statistical
Software 97 (7), 1-30.")
    (license license:gpl2+)))

(define-public r-fameta
  (package
    (name "r-fameta")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAMetA" version))
       (sha256
        (base32 "0s963nk5igwv14mnw8pp0snaiygq3xrx1irfzb2r4pgs04sn38an"))))
    (properties `((upstream-name . "FAMetA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rmarkdown
                             r-plyr
                             r-minpack-lm
                             r-lipidms
                             r-knitr
                             r-gtools
                             r-gplots
                             r-accucor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FAMetA")
    (synopsis "Fatty Acid Metabolic Analysis")
    (description
     "Fatty acid metabolic analysis aimed to the estimation of FA import (I), de novo
synthesis (S), fractional contribution of the 13C-tracers (D0, D1, D2),
elongation (E) and desaturation (Des) based on mass isotopologue data.")
    (license license:gpl2+)))

(define-public r-fam-recrisk
  (package
    (name "r-fam-recrisk")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fam.recrisk" version))
       (sha256
        (base32 "1lyrq7bq7p7ijc2vf545nazw4akncz08548ya1dv3lsc5jmkgfzj"))))
    (properties `((upstream-name . "fam.recrisk")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=fam.recrisk")
    (synopsis "Familial Recurrence Risk")
    (description
     "Given vectors of family sizes and number of affecteds per family, calculates the
risk of disease recurrence in an unaffected person, conditional on a family
having at least k affected members.  Methods also model heterogeneity of disease
risk across families by fitting a mixture model, allowing for high and low risk
families.")
    (license license:gpl2+)))

(define-public r-falconx
  (package
    (name "r-falconx")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "falconx" version))
       (sha256
        (base32 "0648mvbc7ga7vr2xqzyln3dgd11h5s4bqhv3p55mj7smr4qv7hv9"))))
    (properties `((upstream-name . "falconx")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=falconx")
    (synopsis
     "Finding Allele-Specific Copy Number in Whole-Exome Sequencing Data")
    (description
     "This is a method for Allele-specific DNA Copy Number profiling for whole-Exome
sequencing data.  Given the allele-specific coverage and site biases at the
variant loci, this program segments the genome into regions of homogeneous
allele-specific copy number.  It requires, as input, the read counts for each
variant allele in a pair of case and control samples, as well as the site
biases.  For detection of somatic mutations, the case and control samples can be
the tumor and normal sample from the same individual.  The implemented method is
based on the paper: Chen, H., Jiang, Y., Maxwell, K., Nathanson, K. and Zhang,
N. (under review).  Allele-specific copy number estimation by whole Exome
sequencing.")
    (license license:gpl2+)))

(define-public r-falcon
  (package
    (name "r-falcon")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "falcon" version))
       (sha256
        (base32 "09hlvwwj3k3nhcsxijjvv8x74a9m200ayjjplrp4baxvczwyq341"))))
    (properties `((upstream-name . "falcon")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=falcon")
    (synopsis
     "Finding Allele-Specific Copy Number in Next-Generation Sequencing Data")
    (description
     "This is a method for Allele-specific DNA Copy Number Profiling using
Next-Generation Sequencing.  Given the allele-specific coverage at the variant
loci, this program segments the genome into regions of homogeneous
allele-specific copy number.  It requires, as input, the read counts for each
variant allele in a pair of case and control samples.  For detection of somatic
mutations, the case and control samples can be the tumor and normal sample from
the same individual.")
    (license license:gpl2+)))

(define-public r-fakmct
  (package
    (name "r-fakmct")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fakmct" version))
       (sha256
        (base32 "172g7gx6019bimfg4lm253sp9c7rcmm56c5wmxv1g575fr393n8k"))))
    (properties `((upstream-name . "fakmct")))
    (build-system r-build-system)
    (home-page "<https://github.com/alfinurrahmah/fakmct>")
    (synopsis "Fuzzy Adaptive Resonance Theory K-Means Clustering Technique")
    (description
     "This package provides a set of function for clustering data observation with
hybrid method Fuzzy ART and K-Means by Sengupta, Ghosh & Dan (2011)
<doi:10.1080/0951192X.2011.602362>.")
    (license license:gpl3)))

(define-public r-fakir
  (package
    (name "r-fakir")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fakir" version))
       (sha256
        (base32 "1xya74qf68k3jcb7fk868j6c92axmm5vd5mgf9vzk4w4lm065q7l"))))
    (properties `((upstream-name . "fakir")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-dplyr
                             r-charlatan
                             r-attempt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Thinkr-open/fakir")
    (synopsis "Generate Fake Datasets for Prototyping and Teaching")
    (description
     "Create fake datasets that can be used for prototyping and teaching.  This
package provides a set of functions to generate fake data for a variety of data
types, such as dates, addresses, and names.  It can be used for prototyping
(notably in shiny') or as a tool to teach data manipulation and data
visualization.")
    (license license:expat)))

(define-public r-fakemake
  (package
    (name "r-fakemake")
    (version "1.11.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fakemake" version))
       (sha256
        (base32 "1ykav6z3pm54zrp7afkxlfidx9bgdjslzsnjzbx6vl7r479z6ql7"))))
    (properties `((upstream-name . "fakemake")))
    (build-system r-build-system)
    (propagated-inputs (list r-makefiler r-igraph r-fritools))
    (native-inputs (list r-rasciidoc r-knitr))
    (home-page "https://gitlab.com/fvafrcu/fakemake")
    (synopsis "Mock the Unix Make Utility")
    (description
     "Use R as a minimal build system.  This might come in handy if you are developing
R packages and can not use a proper build system.  Stay away if you can (use a
proper build system).")
    (license license:bsd-2)))

(define-public r-fake
  (package
    (name "r-fake")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fake" version))
       (sha256
        (base32 "1w852a5ywybsdyvlll2dvrj17isjmiwjwhi43vml7j1k0lv9m86v"))))
    (properties `((upstream-name . "fake")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-rdpack r-mass r-igraph r-huge))
    (home-page "https://cran.r-project.org/package=fake")
    (synopsis
     "Flexible Data Simulation Using the Multivariate Normal Distribution")
    (description
     "This R package can be used to generate artificial data conditionally on
pre-specified (simulated or user-defined) relationships between the variables
and/or observations.  Each observation is drawn from a multivariate Normal
distribution where the mean vector and covariance matrix reflect the desired
relationships.  Outputs can be used to evaluate the performances of variable
selection, graphical modelling, or clustering approaches by comparing the true
and estimated structures (B Bodinier et al (2021) <@code{arXiv:2106.02521>}).")
    (license license:gpl3+)))

(define-public r-fairsubset
  (package
    (name "r-fairsubset")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fairsubset" version))
       (sha256
        (base32 "0iw16fs2mb9p14vr34izw3sirbndyy8w07df3scy7gkkcx2nz2bz"))))
    (properties `((upstream-name . "fairsubset")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://pubmed.ncbi.nlm.nih.gov/31583263/")
    (synopsis "Choose Representative Subsets")
    (description
     "Allows user to obtain subsets of columns of data or vectors within a list.
These subsets will match the original data in terms of average and variation,
but have a consistent length of data per column.  It is intended for use on
automated data generation which may not always output the same N per replicate
or sample.")
    (license license:gpl3)))

(define-public r-fairness
  (package
    (name "r-fairness")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fairness" version))
       (sha256
        (base32 "12jf2p8gmj5d6r9h9cwy208qwyqi606b54v0d99vpr171yijqvqk"))))
    (properties `((upstream-name . "fairness")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc r-ggplot2 r-e1071 r-devtools r-caret))
    (native-inputs (list r-knitr))
    (home-page
     "https://kozodoi.me/r/fairness/packages/2020/05/01/fairness-tutorial.html")
    (synopsis "Algorithmic Fairness Metrics")
    (description
     "Offers calculation, visualization and comparison of algorithmic fairness
metrics.  Fair machine learning is an emerging topic with the overarching aim to
critically assess whether ML algorithms reinforce existing social biases.
Unfair algorithms can propagate such biases and produce predictions with a
disparate impact on various sensitive groups of individuals (defined by sex,
gender, ethnicity, religion, income, socioeconomic status, physical or mental
disabilities).  Fair algorithms possess the underlying foundation that these
groups should be treated similarly or have similar prediction outcomes.  The
fairness R package offers the calculation and comparisons of commonly and less
commonly used fairness metrics in population subgroups.  These methods are
described by Calders and Verwer (2010) <doi:10.1007/s10618-010-0190-x>,
Chouldechova (2017) <doi:10.1089/big.2016.0047>, Feldman et al. (2015)
<doi:10.1145/2783258.2783311> , Friedler et al. (2018)
<doi:10.1145/3287560.3287589> and Zafar et al. (2017)
<doi:10.1145/3038912.3052660>.  The package also offers convenient
visualizations to help understand fairness metrics.")
    (license license:expat)))

(define-public r-fairmodels
  (package
    (name "r-fairmodels")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fairmodels" version))
       (sha256
        (base32 "0wxk2z5xh2dc9m9z6dz8cq911n4fd4a5zl03bg32nh05zq09xhwp"))))
    (properties `((upstream-name . "fairmodels")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-patchwork r-ggplot2 r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://fairmodels.drwhy.ai/")
    (synopsis
     "Flexible Tool for Bias Detection, Visualization, and Mitigation")
    (description
     "Measure fairness metrics in one place for many models.  Check how big is model's
bias towards different races, sex, nationalities etc.  Use measures such as
Statistical Parity, Equal odds to detect the discrimination against unprivileged
groups.  Visualize the bias using heatmap, radar plot, biplot, bar chart (and
more!).  There are various pre-processing and post-processing bias mitigation
algorithms implemented.  Package also supports calculating fairness metrics for
regression models.  Find more details in (@code{WiÅniewski}, Biecek (2021))
<@code{arXiv:2104.00507>}.")
    (license license:gpl3)))

(define-public r-fairml
  (package
    (name "r-fairml")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fairml" version))
       (sha256
        (base32 "17rzg2256nb4xnrzkc8c3fiwbwqf8fr69rk5k08wrbrnjr2c05dg"))))
    (properties `((upstream-name . "fairml")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet))
    (home-page "https://cran.r-project.org/package=fairml")
    (synopsis "Fair Models in Machine Learning")
    (description
     "Fair machine learning regression models which take sensitive attributes into
account in model estimation.  Currently implementing Komiyama et al. (2018)
<http://proceedings.mlr.press/v80/komiyama18a/komiyama18a.pdf>, Zafar et al.
(2019) <https://www.jmlr.org/papers/volume20/18-262/18-262.pdf> and my own
approach from Scutari, Panero and Proissl (2022)
<https://link.springer.com/content/pdf/10.1007/s11222-022-10143-w.pdf> that uses
ridge regression to enforce fairness.")
    (license license:expat)))

(define-public r-fairmclus
  (package
    (name "r-fairmclus")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FairMclus" version))
       (sha256
        (base32 "0mhccn6yyf35qb856psh3dpiwdf24l3w2lqr643lkn38lhbmyvn8"))))
    (properties `((upstream-name . "FairMclus")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlist
                             r-magrittr
                             r-irr
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-cluster))
    (home-page "https://cran.r-project.org/package=FairMclus")
    (synopsis "Clustering for Data with Sensitive Attribute")
    (description
     "Clustering for categorical and mixed-type of data, to preventing classification
biases due to race, gender or others sensitive attributes.  This algorithm is an
extension of the methodology proposed by \"Santos & Heras (2020)
<doi:10.28945/4643>\".")
    (license license:gpl2+)))

(define-public r-fairmaterials
  (package
    (name "r-fairmaterials")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAIRmaterials" version))
       (sha256
        (base32 "0434spa644g44qy7k0kapxxj34ch5vns8j27slx6j8i14ffxmzqq"))))
    (properties `((upstream-name . "FAIRmaterials")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyjson
                             r-svdialogs
                             r-stringr
                             r-rcolorbrewer
                             r-jsonlite
                             r-jsonld
                             r-igraph
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=FAIRmaterials")
    (synopsis "Make Materials Data FAIR")
    (description
     "We provide here tools used by the Solar Durability and Lifetime Extension Center
(SDLE) for FAIRifying data from materials science projects.  Functions have been
created for numerous tools common in the field in order to make the metadata
more Findable, Accessible, Interoperable, and Reproducible.")
    (license license:bsd-3)))

(define-public r-fairadapt
  (package
    (name "r-fairadapt")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fairadapt" version))
       (sha256
        (base32 "19jagj8kva94kfvg9c5aqr0vm5swjq79j3ny307wacgb9g8hkhvm"))))
    (properties `((upstream-name . "fairadapt")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-ranger
                             r-quantreg
                             r-qrnn
                             r-igraph
                             r-ggplot2
                             r-cowplot
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dplecko/fairadapt")
    (synopsis "Fair Data Adaptation with Quantile Preservation")
    (description
     "An implementation of the fair data adaptation with quantile preservation
described in Plecko & Meinshausen (2019) <@code{arXiv:1911.06685>}.  The
adaptation procedure uses the specified causal graph to pre-process the given
training and testing data in such a way to remove the bias caused by the
protected attribute.  The procedure uses tree ensembles for quantile regression.")
    (license license:gpl3+)))

(define-public r-fahrmeir
  (package
    (name "r-fahrmeir")
    (version "2016.5.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Fahrmeir" version))
       (sha256
        (base32 "16fbc1zb9x9p04bl7y5nd375pha6bd3hfqqchlk1bqxrj4879y5g"))))
    (properties `((upstream-name . "Fahrmeir")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Fahrmeir")
    (synopsis
     "Data from the Book \"Multivariate Statistical Modelling Based on Generalized Linear Models\", First Edition, by Ludwig Fahrmeir and Gerhard Tutz")
    (description
     "Data and functions for the book \"Multivariate Statistical Modelling Based on
Generalized Linear Models\", first edition, by Ludwig Fahrmeir and Gerhard Tutz.
Useful when using the book.")
    (license license:gpl2+)))

(define-public r-faersquarterlydata
  (package
    (name "r-faersquarterlydata")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "faersquarterlydata" version))
       (sha256
        (base32 "0qld9d56qwcs6xh1248b7ssarwfqk8rvipiflzhpcy5fb4gzh43i"))))
    (properties `((upstream-name . "faersquarterlydata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-tableone
                             r-stringr
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=faersquarterlydata")
    (synopsis
     "FDA Adverse Event Reporting System Quarterly Data Extracting Tool")
    (description
     "An easy framework to read FDA Adverse Event Reporting System XML/ASCII files
<https://www.fda.gov/drugs/questions-and-answers-fdas-adverse-event-reporting-system-faers/fda-adverse-event-reporting-system-faers-latest-quarterly-data-files>.")
    (license license:gpl3+)))

(define-public r-fadpclust
  (package
    (name "r-fadpclust")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FADPclust" version))
       (sha256
        (base32 "111lpq5hdrpyj8wdscjswk5p4akxhj3jbj5xk6ias2s5gfprla14"))))
    (properties `((upstream-name . "FADPclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-mfpca
                             r-fundata
                             r-fpc
                             r-fda-usc
                             r-fda
                             r-cluster))
    (home-page "https://cran.r-project.org/package=FADPclust")
    (synopsis
     "Functional Data Clustering Using Adaptive Density Peak Detection")
    (description
     "An implementation of a clustering algorithm for functional data based on
adaptive density peak detection technique, in which the density is estimated by
functional k-nearest neighbor density estimation based on a proposed semi-metric
between functions.  The proposed functional data clustering algorithm is
computationally fast since it does not need iterative process. (Alex Rodriguez
and Alessandro Laio (2014) <doi:10.1126/science.1242072>; Xiao-Feng Wang and
Yifan Xu (2016) <doi:10.1177/0962280215609948>).")
    (license license:gpl2+)))

(define-public r-fadist
  (package
    (name "r-fadist")
    (version "2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FAdist" version))
       (sha256
        (base32 "166w9i8fgklx12jiq4n7l081znmdi6yvazhlxny4rgqif0z2kr9q"))))
    (properties `((upstream-name . "FAdist")))
    (build-system r-build-system)
    (home-page "https://github.com/tpetzoldt/FAdist")
    (synopsis "Distributions that are Sometimes Used in Hydrology")
    (description
     "Probability distributions that are sometimes useful in hydrology.")
    (license license:gpl2)))

(define-public r-fada
  (package
    (name "r-fada")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FADA" version))
       (sha256
        (base32 "0srv3rghbkgyxbcjc1v68c5qgcir1d618skpc8imfmdaz9pnxchn"))))
    (properties `((upstream-name . "FADA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparselda
                             r-sda
                             r-mnormt
                             r-matrixstats
                             r-mass
                             r-glmnet
                             r-elasticnet
                             r-crossval
                             r-corpcor))
    (home-page "https://cran.r-project.org/package=FADA")
    (synopsis
     "Variable Selection for Supervised Classification in High Dimension")
    (description
     "The functions provided in the FADA (Factor Adjusted Discriminant Analysis)
package aim at performing supervised classification of high-dimensional and
correlated profiles.  The procedure combines a decorrelation step based on a
factor modeling of the dependence among covariates and a classification method.
The available methods are Lasso regularized logistic model (see Friedman et al.
(2010)), sparse linear discriminant analysis (see Clemmensen et al. (2011)),
shrinkage linear and diagonal discriminant analysis (see M. Ahdesmaki et al.
(2010)).  More methods of classification can be used on the decorrelated data
provided by the package FADA.")
    (license license:gpl2+)))

(define-public r-fad
  (package
    (name "r-fad")
    (version "0.9-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fad" version))
       (sha256
        (base32 "19j8n13r50sc1srpi4vj58h15yp89im2x7ga5323rmwklx1yj6zg"))))
    (properties `((upstream-name . "fad")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-rcppeigen r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/somakd/fad")
    (synopsis "Factor Analysis for Data")
    (description
     "Compute maximum likelihood estimators of parameters in a Gaussian factor model
using the the matrix-free methodology described in Dai et al. (2020)
<doi:10.1080/10618600.2019.1704296>.  In contrast to the factanal() function
from stats package, fad() can handle high-dimensional datasets where number of
variables exceed the sample size and is also substantially faster than the EM
algorithms.")
    (license license:gpl3)))

(define-public r-factset-protobuf-stachextensions
  (package
    (name "r-factset-protobuf-stachextensions")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factset.protobuf.stachextensions" version))
       (sha256
        (base32 "1bs39wylva1zpa8m3b0sdrdszqqxszl1rlwyli400a9zcm7xpwvq"))))
    (properties `((upstream-name . "factset.protobuf.stachextensions")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-r6 r-jsonlite))
    (home-page "https://github.com/factset/stach-extensions")
    (synopsis "'FactSet' 'STACH' Extensions Package")
    (description
     "Allow clients to convert @code{FactSet} STACH formatted data to simpler tabular
formats in the form of data frames.  This package also provides helper methods
to extract the meta data from @code{FactSet} STACH formatted data.  See
documentation on the @code{GitHub} repository for more information.")
    (license license:asl2.0)))

(define-public r-factset-protobuf-stach-v2
  (package
    (name "r-factset-protobuf-stach-v2")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factset.protobuf.stach.v2" version))
       (sha256
        (base32 "1w6fsamkz8g9mkjd2my5wdv52fav8ikp3jlfil8amfbclmhdbx22"))))
    (properties `((upstream-name . "factset.protobuf.stach.v2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rprotobuf r-r6))
    (home-page "https://github.com/factset/stachschema-sdks")
    (synopsis "'FactSet' 'STACH V2' Library")
    (description
     "Generates RProtobuf classes for @code{FactSet} STACH V2 tabular format which
represents complex multi-dimensional array of data.  These classes help in the
serialization and deserialization of STACH V2 formatted data.  See @code{GitHub}
repository documentation for more information.")
    (license license:asl2.0)))

(define-public r-factset-analyticsapi-engines
  (package
    (name "r-factset-analyticsapi-engines")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factset.analyticsapi.engines" version))
       (sha256
        (base32 "0v96z837dii1q7mbpd48zwpl2qjzqnhignb80g0xkc4iygsnrrms"))))
    (properties `((upstream-name . "factset.analyticsapi.engines")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-r6 r-jsonlite r-httr r-catools))
    (home-page "https://github.com/factset/analyticsapi-engines-r-sdk")
    (synopsis "'FactSet' Engines API Client")
    (description
     "Allow clients to fetch analytics through API for Portfolio Analytics'('PA'),
Style Performance Risk('SPAR') and Vault products of @code{FactSet}'.  Visit
<https://github.com/factset/analyticsapi-engines-r-sdk/tree/master/Engines> for
more information on the usage of package.  Visit
<https://developer.factset.com/> for more information on products.")
    (license license:asl2.0)))

(define-public r-factreg
  (package
    (name "r-factreg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factReg" version))
       (sha256
        (base32 "06m3ir145342lyqdp25fbcg8s4cdbg2xh4dl1291hfx2pd6zxgsz"))))
    (properties `((upstream-name . "factReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rrblup r-matrix r-mathjaxr r-glmnet))
    (home-page "https://cran.r-project.org/package=factReg")
    (synopsis
     "Multi-Environment Genomic Prediction with Penalized Factorial Regression")
    (description
     "Multi-environment genomic prediction for training and test environments using
penalized factorial regression.  Predictions are made using genotype-specific
environmental sensitivities as in Millet et al. (2019)
<doi:10.1038/s41588-019-0414-y>.")
    (license license:gpl3)))

(define-public r-factoshiny
  (package
    (name "r-factoshiny")
    (version "2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Factoshiny" version))
       (sha256
        (base32 "0szdpdghaqrfjdx3c9klgww8i09dh69500sls2lyjz6c8gi80vcx"))))
    (properties `((upstream-name . "Factoshiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyjqui
                             r-shinydashboard
                             r-shiny
                             r-missmda
                             r-ggrepel
                             r-ggplot2
                             r-factominer
                             r-factoinvestigate
                             r-dt
                             r-colourpicker))
    (home-page "http://factominer.free.fr/graphs/factoshiny.html")
    (synopsis
     "Perform Factorial Analysis from 'FactoMineR' with a Shiny Application")
    (description
     "Perform factorial analysis with a menu and draw graphs interactively thanks to
@code{FactoMineR} and a Shiny application.")
    (license license:gpl2+)))

(define-public r-factory
  (package
    (name "r-factory")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factory" version))
       (sha256
        (base32 "1715bx2rn8kk5qd196jnrv5f95l54n4y0aqqdzfkgrmqihcy8ahx"))))
    (properties `((upstream-name . "factory")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-purrr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jonthegeek/factory")
    (synopsis "Build Function Factories")
    (description
     "Function factories are functions that make functions.  They can be confusing to
construct.  Straightforward techniques can produce functions that are fragile or
hard to understand.  While more robust techniques exist to construct function
factories, those techniques can be confusing.  This package is designed to make
it easier to construct function factories.")
    (license license:expat)))

(define-public r-factorstochvol
  (package
    (name "r-factorstochvol")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factorstochvol" version))
       (sha256
        (base32 "1f22qxskk4hgsx9ic7v89rvjv1pdsijpakw0j4x2wya10dfrj9rp"))))
    (properties `((upstream-name . "factorstochvol")))
    (build-system r-build-system)
    (propagated-inputs (list r-stochvol r-rcpparmadillo r-rcpp r-gigrvg
                             r-corrplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=factorstochvol")
    (synopsis
     "Bayesian Estimation of (Sparse) Latent Factor Stochastic Volatility Models")
    (description
     "Markov chain Monte Carlo (MCMC) sampler for fully Bayesian estimation of latent
factor stochastic volatility models with interweaving
<doi:10.1080/10618600.2017.1322091>.  Sparsity can be achieved through the usage
of Normal-Gamma priors on the factor loading matrix
<doi:10.1016/j.jeconom.2018.11.007>.")
    (license license:gpl2+)))

(define-public r-factormodel
  (package
    (name "r-factormodel")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factormodel" version))
       (sha256
        (base32 "0yvp8mk42hi1vhrw29djabndc8pbbpjbr6bwss95wsmk7zvvf6i2"))))
    (properties `((upstream-name . "factormodel")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-nnet r-gtools r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=factormodel")
    (synopsis "Factor Model Estimation Using Proxy Variables")
    (description
     "This package provides functions to estimate a factor model using discrete and
continuous proxy variables.  The function dproxyme estimates a factor model of
discrete proxy variables using an EM algorithm (Dempster, Laird, Rubin (1977)
<doi:10.1111/j.2517-6161.1977.tb01600.x>; Hu (2008)
<doi:10.1016/j.jeconom.2007.12.001>; Hu(2017)
<doi:10.1016/j.jeconom.2017.06.002> ).  The function cproxyme estimates a linear
factor model (Cunha, Heckman, and Schennach (2010) <doi:10.3982/ECTA6551>).")
    (license license:gpl3)))

(define-public r-factorial2x2
  (package
    (name "r-factorial2x2")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factorial2x2" version))
       (sha256
        (base32 "045887hwknwm92wlrp0jlvxj5aal50vpnc7ddbh7c8smawmrdwfd"))))
    (properties `((upstream-name . "factorial2x2")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=factorial2x2")
    (synopsis "Design and Analysis of a 2x2 Factorial Trial")
    (description
     "Used for the design and analysis of a 2x2 factorial trial for a time-to-event
endpoint.  It performs power calculations and significance testing as well as
providing estimates of the relevant hazard ratios and the corresponding 95%
confidence intervals.  Important reference papers include Slud EV. (1994)
<https://www.ncbi.nlm.nih.gov/pubmed/8086609> Lin DY, Gong J, Gallo P, Bunn PH,
Couper D. (2016) <DOI:10.1111/biom.12507> Leifer ES, Troendle JF, Kolecki A,
Follmann DA. (2020)
<https://github.com/@code{EricSLeifer/factorial2x2/blob/master/Leifer%20et%20al.%20paper.pdf>}.")
    (license license:gpl2)))

(define-public r-factorcopula
  (package
    (name "r-factorcopula")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FactorCopula" version))
       (sha256
        (base32 "1lvqa62v9rvz7pmrx06riqndh4jyw60an04hpg6if523jsxpa5nz"))))
    (properties `((upstream-name . "FactorCopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula
                             r-statmod
                             r-polycor
                             r-matlab
                             r-igraph
                             r-abind))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=FactorCopula")
    (synopsis "Factor, Bi-Factor, Second-Order and Factor Tree Copula Models")
    (description
     "Estimation, model selection and goodness-of-fit of (1) factor copula models for
mixed continuous and discrete data in Kadhem and Nikoloulopoulos (2021)
<doi:10.1111/bmsp.12231>; (2) bi-factor and second-order copula models for item
response data in Kadhem and Nikoloulopoulos (2023)
<doi:10.1007/s11336-022-09894-2>; (3) factor tree copula models for item
response data in Kadhem and Nikoloulopoulos (2022) <@code{arXiv:2201.00339>}.")
    (license license:gpl2+)))

(define-public r-factorassumptions
  (package
    (name "r-factorassumptions")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FactorAssumptions" version))
       (sha256
        (base32 "0d7dh67r8s0v952palhx9h6bhhlxw9xcjbj7dxsp2hdhwap72s2y"))))
    (properties `((upstream-name . "FactorAssumptions")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/storopoli/FactorAssumptions")
    (synopsis "Set of Assumptions for Factor and Principal Component Analysis")
    (description
     "Tests for Kaiser-Meyer-Olkin (KMO) and communalities in a dataset.  It provides
a final sample by removing variables in a iterable manner while keeping account
of the variables that were removed in each step.  It follows the best practices
and assumptions according to Hair, Black, Babin & Anderson (2018,
ISBN:9781473756540).")
    (license license:gpl3)))

(define-public r-factor-switching
  (package
    (name "r-factor-switching")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factor.switching" version))
       (sha256
        (base32 "1hd2m9yyk9vbpknm7gyhgr6ywv84a1q5w46cspxp92nal784b5x3"))))
    (properties `((upstream-name . "factor.switching")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcmcpack r-lpsolve r-hdinterval r-coda))
    (home-page "https://cran.r-project.org/package=factor.switching")
    (synopsis
     "Post-Processing MCMC Outputs of Bayesian Factor Analytic Models")
    (description
     "This package provides a well known identifiability issue in factor analytic
models is the invariance with respect to orthogonal transformations.  This
problem burdens the inference under a Bayesian setup, where Markov chain Monte
Carlo (MCMC) methods are used to generate samples from the posterior
distribution.  The package applies a series of rotation, sign and permutation
transformations (Papastamoulis and Ntzoufras (2022)
<DOI:10.1007/s11222-022-10084-4>) into raw MCMC samples of factor loadings,
which are provided by the user.  The post-processed output is identifiable and
can be used for MCMC inference on any parametric function of factor loadings.
Comparison of multiple MCMC chains is also possible.")
    (license license:gpl2)))

(define-public r-factoptd
  (package
    (name "r-factoptd")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factoptd" version))
       (sha256
        (base32 "1ir50im3kr1xhqk4qwrm2h5fq9gqgrwshbamvjlf8n1wnn03mcb6"))))
    (properties `((upstream-name . "factoptd")))
    (build-system r-build-system)
    (propagated-inputs (list r-partitions r-mass))
    (home-page "https://cran.r-project.org/package=factoptd")
    (synopsis
     "Factorial Optimal Designs for Two-Colour cDNA Microarray Experiments")
    (description
     "Computes factorial A-, D- and E-optimal designs for two-colour @code{cDNA}
microarray experiments.")
    (license license:gpl2)))

(define-public r-factoinvestigate
  (package
    (name "r-factoinvestigate")
    (version "1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FactoInvestigate" version))
       (sha256
        (base32 "1m2005yywdh9ir61sdh10ssp1y26d9xgx9rivvilbk9grc9qyjzg"))))
    (properties `((upstream-name . "FactoInvestigate")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-ggplot2 r-factominer))
    (home-page "http://factominer.free.fr/reporting/")
    (synopsis "Automatic Description of Factorial Analysis")
    (description
     "Brings a set of tools to help and automatically realise the description of
principal component analyses (from @code{FactoMineR} functions).  Detection of
existing outliers, identification of the informative components, graphical views
and dimensions description are performed threw dedicated functions.  The
Investigate() function performs all these functions in one, and returns the
result as a report document (Word, PDF or HTML).")
    (license license:gpl2+)))

(define-public r-factoclass
  (package
    (name "r-factoclass")
    (version "1.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FactoClass" version))
       (sha256
        (base32 "0w20nrhaky2lj9z2if59fppim5063962xv2yl76g28xqgc6rmymq"))))
    (properties `((upstream-name . "FactoClass")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-scatterplot3d
                             r-kernsmooth
                             r-ggrepel
                             r-ggplot2
                             r-ade4))
    (home-page "https://cran.r-project.org/package=FactoClass")
    (synopsis "Combination of Factorial Methods and Cluster Analysis")
    (description
     "Some functions of ade4 and stats are combined in order to obtain a partition of
the rows of a data table, with columns representing variables of scales:
quantitative, qualitative or frequency.  First, a principal axes method is
performed and then, a combination of Ward agglomerative hierarchical
classification and K-means is performed, using some of the first coordinates
obtained from the previous principal axes method.  See, for example: Lebart, L.
and Piron, M. and Morineau, A. (2006).  Statistique Exploratoire
Multidimensionnelle, Dunod, Paris.  In order to permit to have different weights
of the elements to be clustered, the function @code{kmeansW}', programmed in
C++, is included.  It is a modification of kmeans'.  Some graphical functions
include the option: gg=FALSE'.  When gg=TRUE', they use the ggplot2 and ggrepel
packages to avoid the super-position of the labels.")
    (license license:gpl2+)))

(define-public r-factmle
  (package
    (name "r-factmle")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FACTMLE" version))
       (sha256
        (base32 "0qz2i0hnn84bpps1h8jmfkgp5p59axr0wayj9dvl839radrvpqvy"))))
    (properties `((upstream-name . "FACTMLE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rarpack))
    (home-page "https://cran.r-project.org/package=FACTMLE")
    (synopsis "Maximum Likelihood Factor Analysis")
    (description
     "Perform Maximum Likelihood Factor analysis on a covariance matrix or data
matrix.")
    (license license:gpl3)))

(define-public r-factiv
  (package
    (name "r-factiv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "factiv" version))
       (sha256
        (base32 "1m43kg8mrlnkzs667s4a8c2jkfdgv2pjbwf45vf2w4nlp84camxx"))))
    (properties `((upstream-name . "factiv")))
    (build-system r-build-system)
    (propagated-inputs (list r-generics r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mattblackwell/factiv")
    (synopsis
     "Instrumental Variables Estimation for 2^k Factorial Experiments")
    (description
     "This package implements instrumental variable estimators for 2^K factorial
experiments with noncompliance.")
    (license license:gpl2+)))

(define-public r-fact
  (package
    (name "r-fact")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FACT" version))
       (sha256
        (base32 "0frj0qgdq8j8khy4dlv63zismjczijm0q7j5ha59m0dgxr93khfg"))))
    (properties `((upstream-name . "FACT")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-prediction
                             r-iml
                             r-gridextra
                             r-ggplot2
                             r-data-table
                             r-checkmate))
    (home-page "https://cran.r-project.org/package=FACT")
    (synopsis "Feature Attributions for ClusTering")
    (description
     "We present FACT (Feature Attributions for @code{ClusTering}), a framework for
unsupervised interpretation methods that can be used with an arbitrary
clustering algorithm.  The package is capable of re-assigning instances to
clusters (algorithm agnostic), preserves the integrity of the data and does not
introduce additional models.  FACT is inspired by the principles of
model-agnostic interpretation in supervised learning.  Therefore, some of the
methods presented are based on iml', a R Package for Interpretable Machine
Learning by Christoph Molnar, Giuseppe Casalicchio, and Bernd Bischl (2018)
<doi:10.21105/joss.00786>.")
    (license license:lgpl3)))

(define-public r-facmodts
  (package
    (name "r-facmodts")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facmodTS" version))
       (sha256
        (base32 "1c58w3my7zxcx04h8b284999r3jkd6l0sgwdzkjrkzm42lzw0dhm"))))
    (properties `((upstream-name . "facmodTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-sn
                             r-sandwich
                             r-robustbase
                             r-robstattm
                             r-r-cache
                             r-quadprog
                             r-portfolioanalytics
                             r-performanceanalytics
                             r-leaps
                             r-lattice
                             r-lars
                             r-data-table
                             r-corpcor
                             r-boot))
    (home-page "https://github.com/robustport/facmodTS")
    (synopsis "Time Series Factor Models for Asset Returns")
    (description
     "Supports teaching methods of estimating and testing time series factor models
for use in robust portfolio construction and analysis.  Unique in providing not
only classical least squares, but also modern robust model fitting methods which
are not much influenced by outliers.  Includes returns and risk decompositions,
with user choice of standard deviation, value-at-risk, and expected shortfall
risk measures. \"Robust Statistics Theory and Methods (with R)\", R. A. Maronna,
R. D. Martin, V. J. Yohai, M. Salibian-Barrera (2019)
<doi:10.1002/9781119214656>.")
    (license license:gpl2)))

(define-public r-facmodcs
  (package
    (name "r-facmodcs")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facmodCS" version))
       (sha256
        (base32 "1xav9lcjb5wd5h9cqyqn2ra3nxd60kq54g1vgmgfbvpmdj7hvrks"))))
    (properties `((upstream-name . "facmodCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tseries
                             r-sn
                             r-robustbase
                             r-robstattm
                             r-performanceanalytics
                             r-lattice
                             r-data-table))
    (home-page "https://github.com/robustport/facmodCS")
    (synopsis "Cross-Section Factor Models")
    (description
     "Linear cross-section factor model fitting with least-squares and robust fitting
the @code{lmrobdetMM}() function from @code{RobStatTM}'; related volatility,
Value at Risk and Expected Shortfall risk and performance attribution
(factor-contributed vs idiosyncratic returns); tabular displays of risk and
performance reports; factor model Monte Carlo.  The package authors would like
to thank Chicago Research on Security Prices,LLC for the cross-section of about
300 CRSP stocks data (in the data.table object @code{stocksCRSP}', and S&P
GLOBAL MARKET INTELLIGENCE for contributing 14 factor scores (a.k.a \"alpha
factors\".and \"factor exposures\") fundamental data on the 300 companies in the
data.table object @code{factorSPGMI}'.  The @code{stocksCRSP} and
@code{factorsSPGMI} data are not covered by the GPL-2 license, are not provided
as open source of any kind, and they are not to be redistributed in any form.")
    (license license:gpl2)))

(define-public r-facerec
  (package
    (name "r-facerec")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facerec" version))
       (sha256
        (base32 "1dipcnxjz6yd34w0jrrvj5p0pwdgz1l5m9zvri7mflnz7g34gmaj"))))
    (properties `((upstream-name . "facerec")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-snakecase
                             r-rlang
                             r-magrittr
                             r-knitr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/methodds/facerec")
    (synopsis "An Interface for Face Recognition")
    (description
     "This package provides an interface to the Kairos Face Recognition API
<https://kairos.com/face-recognition-api>.  The API detects faces in images and
returns estimates for demographics like gender, ethnicity and age.")
    (license license:expat)))

(define-public r-facebookorganicr
  (package
    (name "r-facebookorganicr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facebookorganicR" version))
       (sha256
        (base32 "0j4zx4gf3k81pv5kfq3ki44rfn1411n7840m1zih3hfvpdd761a0"))))
    (properties `((upstream-name . "facebookorganicR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from 'Facebook Organic' via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Facebook Organic using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-facebookleadsr
  (package
    (name "r-facebookleadsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facebookleadsR" version))
       (sha256
        (base32 "0azy822s5266vxk0fvxfkgl9i3q3djv7yh3w53znjjvfmmzj1qwz"))))
    (properties `((upstream-name . "facebookleadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Facebook Leads Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Facebook Leads Ads using
the Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-facebookadsr
  (package
    (name "r-facebookadsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "facebookadsR" version))
       (sha256
        (base32 "1jj3kq7j4ifscj7vbhnp738ny866njkdxi1n0scc0cyxq8gc7glj"))))
    (properties `((upstream-name . "facebookadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Access to Facebook Ads via the 'Windsor.ai' API")
    (description
     "Collect marketing data from facebook Ads using the Windsor.ai API
<https://windsor.ai/api-fields/>.  Use four spaces when indenting paragraphs
within the Description.")
    (license license:gpl3)))

(define-public r-face
  (package
    (name "r-face")
    (version "0.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "face" version))
       (sha256
        (base32 "08ri7mrp3az82x3yyydg7vrla8cdl8bxpcnxfv4cfdhxslks9qb7"))))
    (properties `((upstream-name . "face")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-matrixcalc r-matrix))
    (home-page "https://cran.r-project.org/package=face")
    (synopsis "Fast Covariance Estimation for Sparse Functional Data")
    (description
     "We implement the Fast Covariance Estimation for Sparse Functional Data paper
published in Statistics and Computing <doi: 10.1007/s11222-017-9744-8>.")
    (license license:gpl3)))

(define-public r-fabricerin
  (package
    (name "r-fabricerin")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabricerin" version))
       (sha256
        (base32 "0ynvnxzxx1iybyy5pvwfsj5y9jjixyrpji9vcl5fq5mjnpg8mpqk"))))
    (properties `((upstream-name . "fabricerin")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmltools r-glue))
    (native-inputs (list esbuild))
    (home-page "https://github.com/feddelegrand7/fabricerin")
    (synopsis "Create Easily Canvas in 'shiny' and 'RMarkdown' Documents")
    (description
     "Allows the user to implement easily canvas elements within a shiny app or an
RMarkdown document.  The user can create shapes, images and text elements within
the canvas which can also be used as a drawing tool for taking notes.  The
package relies on the fabricjs @code{JavaScript} library.  See
<http://fabricjs.com/>.")
    (license license:expat)))

(define-public r-fabricatr
  (package
    (name "r-fabricatr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabricatr" version))
       (sha256
        (base32 "1y5mzgqvv3hqsbggqiy5f4wj8k3820g2ckc2r60bphmwj70yik7v"))))
    (properties `((upstream-name . "fabricatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang))
    (home-page "https://declaredesign.org/r/fabricatr/")
    (synopsis "Imagine Your Data Before You Collect It")
    (description
     "Helps you imagine your data before you collect it.  Hierarchical data structures
and correlated data can be easily simulated, either from random number
generators or by resampling from existing data sources.  This package is faster
with data.table and mvnfast installed.")
    (license license:expat)))

(define-public r-fabr
  (package
    (name "r-fabr")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabR" version))
       (sha256
        (base32 "16qmd77g3sf55q9zd01mknic4616yjjl9l6k0nfsp00nkpi8gbb0"))))
    (properties `((upstream-name . "fabR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xfun
                             r-writexl
                             r-usethis
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-readxl
                             r-readr
                             r-purrr
                             r-lubridate
                             r-lifecycle
                             r-janitor
                             r-haven
                             r-fs
                             r-dplyr
                             r-digest
                             r-bookdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GuiFabre/fabR")
    (synopsis "Wrapper Functions Collection Used in Data Pipelines")
    (description
     "The goal of this package is to provide wrapper functions in the data cleaning
and cleansing processes.  These function helps in messages and interaction with
the user, keep track of information in pipelines, help in the wrangling,
munging, assessment and visualization of data frame-like material.")
    (license license:gpl3)))

(define-public r-fabmix
  (package
    (name "r-fabmix")
    (version "5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabMix" version))
       (sha256
        (base32 "1gii3mdii9nw423xxn9mhv1pjbw967wdarn828w04zm9dkdcwm48"))))
    (properties `((upstream-name . "fabMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-mvtnorm
                             r-mclust
                             r-mass
                             r-label-switching
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-corrplot
                             r-coda))
    (home-page "https://github.com/mqbssppe/overfittingFABMix")
    (synopsis
     "Overfitting Bayesian Mixtures of Factor Analyzers with Parsimonious Covariance and Unknown Number of Components")
    (description
     "Model-based clustering of multivariate continuous data using Bayesian mixtures
of factor analyzers (Papastamoulis (2019) <DOI:10.1007/s11222-019-09891-z>
(2018) <DOI:10.1016/j.csda.2018.03.007>).  The number of clusters is estimated
using overfitting mixture models (Rousseau and Mengersen (2011)
<DOI:10.1111/j.1467-9868.2011.00781.x>): suitable prior assumptions ensure that
asymptotically the extra components will have zero posterior weight, therefore,
the inference is based on the ``alive components.  A Gibbs sampler is
implemented in order to (approximately) sample from the posterior distribution
of the overfitting mixture.  A prior parallel tempering scheme is also
available, which allows to run multiple parallel chains with different prior
distributions on the mixture weights.  These chains run in parallel and can swap
states using a Metropolis-Hastings move.  Eight different parameterizations give
rise to parsimonious representations of the covariance per cluster (following Mc
Nicholas and Murphy (2008) <DOI:10.1007/s11222-008-9056-0>).  The model
parameterization and number of factors is selected according to the Bayesian
Information Criterion.  Identifiability issues related to label switching are
dealt by post-processing the simulated output with the Equivalence Classes
Representatives algorithm (Papastamoulis and Iliopoulos (2010)
<https://www.jstor.org/stable/25703571>, Papastamoulis (2016)
<DOI:10.18637/jss.v069.c01>).")
    (license license:gpl2)))

(define-public r-fabletools
  (package
    (name "r-fabletools")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabletools" version))
       (sha256
        (base32 "01pjwkxn9v9jgxi3vw5fgl5j74yp2gh5vj7a6vg31ivlgd014jy5"))))
    (properties `((upstream-name . "fabletools")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tsibble
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-r6
                             r-progressr
                             r-lifecycle
                             r-ggplot2
                             r-generics
                             r-dplyr
                             r-distributional))
    (native-inputs (list r-knitr))
    (home-page "https://fabletools.tidyverts.org/")
    (synopsis "Core Tools for Packages in the 'fable' Framework")
    (description
     "This package provides tools, helpers and data structures for developing models
and time series functions for fable and extension packages.  These tools support
a consistent and tidy interface for time series modelling and analysis.")
    (license license:gpl3)))

(define-public r-fable-prophet
  (package
    (name "r-fable-prophet")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fable.prophet" version))
       (sha256
        (base32 "12y2k05plg6d6lgqk6617q6z5m6xz33zdsjh56k86h230qqw68rp"))))
    (properties `((upstream-name . "fable.prophet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsibble
                             r-rlang
                             r-rcpp
                             r-prophet
                             r-lubridate
                             r-fabletools
                             r-dplyr
                             r-distributional))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.mitchelloharawild.com/fable.prophet/")
    (synopsis "Prophet Modelling Interface for 'fable'")
    (description
     "Allows prophet models from the prophet package to be used in a tidy workflow
with the modelling interface of fabletools'.  This extends prophet to provide
enhanced model specification and management, performance evaluation methods, and
model combination tools.")
    (license license:gpl3)))

(define-public r-fable-ata
  (package
    (name "r-fable-ata")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fable.ata" version))
       (sha256
        (base32 "1i596w593xzqlfq4mxw6cafqs9a551mj58ai4l0q7xav44hm9zlq"))))
    (properties `((upstream-name . "fable.ata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsibble
                             r-tsbox
                             r-tibble
                             r-rlang
                             r-lubridate
                             r-fabletools
                             r-dplyr
                             r-distributional
                             r-ataforecasting))
    (home-page "https://alsabtay.github.io/fable.ata/")
    (synopsis "'ATAforecasting' Modelling Interface for 'fable' Framework")
    (description
     "Allows ATA (Automatic Time series analysis using the Ata method) models from the
ATAforecasting package to be used in a tidy workflow with the modeling interface
of fabletools'.  This extends ATAforecasting to provide enhanced model
specification and management, performance evaluation methods, and model
combination tools.  The Ata method (Yapar et al. (2019)
<doi:10.15672/hujms.461032>), an alternative to exponential smoothing (described
in Yapar (2016) <doi:10.15672/HJMS.201614320580>, Yapar et al. (2017)
<doi:10.15672/HJMS.2017.493>), is a new univariate time series forecasting
method which provides innovative solutions to issues faced during the
initialization and optimization stages of existing forecasting methods.
Forecasting performance of the Ata method is superior to existing methods both
in terms of easy implementation and accurate forecasting.  It can be applied to
non-seasonal or seasonal time series which can be decomposed into four
components (remainder, level, trend and seasonal).")
    (license license:gpl3+)))

(define-public r-fable
  (package
    (name "r-fable")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fable" version))
       (sha256
        (base32 "0rld2lnhi2wn5skcmx9mwrb2rj1yhphy6xq0m3im252y1zc4bm7v"))))
    (properties `((upstream-name . "fable")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsibble
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rcpp
                             r-fabletools
                             r-dplyr
                             r-distributional))
    (native-inputs (list r-knitr))
    (home-page "https://fable.tidyverts.org")
    (synopsis "Forecasting Models for Tidy Time Series")
    (description
     "This package provides a collection of commonly used univariate and multivariate
time series forecasting models including automatically selected exponential
smoothing (ETS) and autoregressive integrated moving average (ARIMA) models.
These models work within the fable framework provided by the fabletools package,
which provides the tools to evaluate, visualise, and combine models in a
workflow consistent with the tidyverse.")
    (license license:gpl3)))

(define-public r-fabisearch
  (package
    (name "r-fabisearch")
    (version "0.0.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabisearch" version))
       (sha256
        (base32 "0yxmw7d7j3llcfs4d0dn2vv4ajalwz0qxrg7bqgql8dvwrb9jgkh"))))
    (properties `((upstream-name . "fabisearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-reshape2
                             r-nmf
                             r-foreach
                             r-dorng
                             r-doparallel))
    (home-page "https://github.com/mondrus96/FaBiSearch")
    (synopsis
     "Change Point Detection in High-Dimensional Time Series Networks")
    (description
     "Implementation of the Factorized Binary Search (@code{FaBiSearch}) methodology
for the estimation of the number and the location of multiple change points in
the network (or clustering) structure of multivariate high-dimensional time
series.  The method is motivated by the detection of change points in functional
connectivity networks for functional magnetic resonance imaging (@code{fMRI})
data. @code{FaBiSearch} uses non-negative matrix factorization (NMF), an
unsupervised dimension reduction technique, and a new binary search algorithm to
identify multiple change points.  It requires minimal assumptions.  Lastly, we
provide interactive, 3-dimensional, brain-specific network visualization
capability in a flexible, stand-alone function.  This function can be
conveniently used with any node coordinate atlas, and nodes can be color coded
according to community membership, if applicable.  The output is an elegantly
displayed network laid over a cortical surface, which can be rotated in the
3-dimensional space.  The main routines of the package are detect.cps(), for
multiple change point detection, est.net(), for estimating a network between
stationary multivariate time series, net.3dplot(), for plotting the estimated
functional connectivity networks, and opt.rank(), for finding the optimal rank
in NMF for a given data set.  The functions have been extensively tested on
simulated multivariate high-dimensional time series data and @code{fMRI} data.
For details on the @code{FaBiSearch} methodology, please see Ondrus et al.
(2021) <@code{arXiv:2103.06347>}.  For a more detailed explanation and applied
examples of the fabisearch package, please see Ondrus and Cribben (2022),
preprint.")
    (license license:expat)))

(define-public r-fabinference
  (package
    (name "r-fabinference")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "FABInference" version))
       (sha256
        (base32 "0d11vxxa0mry735n7an8n97wmxyffsj4hirxlysljs941zhkhhw4"))))
    (properties `((upstream-name . "FABInference")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=FABInference")
    (synopsis "FAB p-Values and Confidence Intervals")
    (description
     "Frequentist assisted by Bayes (FAB) p-values and confidence interval
construction.  See Hoff (2019) <@code{arXiv:1907.12589>} \"Smaller p-values via
indirect information\", Hoff and Yu (2019) <doi:10.1214/18-EJS1517> \"Exact
adaptive confidence intervals for linear regression coefficients\", and Yu and
Hoff (2018) <doi:10.1093/biomet/asy009> \"Adaptive multigroup confidence
intervals with constant coverage\".")
    (license license:gpl3)))

(define-public r-fabci
  (package
    (name "r-fabci")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "fabCI" version))
       (sha256
        (base32 "1vga322xpqzsh40n74v8vqiq8zbzrabvg58mp50bcx2ml0dikgnm"))))
    (properties `((upstream-name . "fabCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=fabCI")
    (synopsis "FAB Confidence Intervals")
    (description
     "Frequentist assisted by Bayes (FAB) confidence interval construction.  See
Adaptive multigroup confidence intervals with constant coverage by Yu and Hoff
<DOI:10.1093/biomet/asy009> and Exact adaptive confidence intervals for linear
regression coefficients by Hoff and Yu <DOI:10.1214/18-EJS1517>.")
    (license license:gpl3)))

(define-public r-f1datar
  (package
    (name "r-f1datar")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "f1dataR" version))
       (sha256
        (base32 "0ky84g4s454inl0px9x6qr3ki0z8cwhalrhikvv77q9kgv0fnzxz"))))
    (properties `((upstream-name . "f1dataR")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-reticulate
                             r-rappdirs
                             r-memoise
                             r-magrittr
                             r-lifecycle
                             r-jsonlite
                             r-janitor
                             r-httr2
                             r-glue
                             r-dplyr
                             r-cli
                             r-cachem))
    (native-inputs (list r-knitr))
    (home-page "https://scasanova.github.io/f1dataR/")
    (synopsis "Access Formula 1 Data")
    (description
     "Obtain Formula 1 data via the Ergast API <https://ergast.com/mrd/> and the
unofficial API <https://www.formula1.com/en/f1-live.html> via the fastf1 Python
library <https://docs.fastf1.dev/>.")
    (license license:expat)))

