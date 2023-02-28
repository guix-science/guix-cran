(define-module (guix-cran packages t)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages web)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages video)
  #:use-module (gnu packages photo)
  #:use-module (gnu packages python)
  #:use-module (gnu packages tcl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages imagemagick)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages machine-learning)
  #:use-module (gnu packages tex)
  #:use-module (gnu packages multiprecision)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages v)
  #:use-module (guix-cran packages u)
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

(define-public r-tzupdater
  (package
    (name "r-tzupdater")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tzupdater" version))
              (sha256
               (base32
                "0s1simvn76m569iq24qb3w6xli0202cjf1jr3a4qy58fs4sda2kv"))))
    (properties `((upstream-name . "tzupdater")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tzupdater")
    (synopsis "Time Zone Database Updater")
    (description
     "Download and compile any version of the IANA Time Zone Database (also known as
Olson database) and make it current in your R session.  Beware: on Windows
Cygwin is required!")
    (license license:expat)))

(define-public r-typetracer
  (package
    (name "r-typetracer")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "typetracer" version))
              (sha256
               (base32
                "17ki98ckyjzz4gqv5hsm9zgn2xljn1vih1gdh57880q6yfmwj2lj"))))
    (properties `((upstream-name . "typetracer")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-tibble r-checkmate r-brio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mpadge/typetracer")
    (synopsis "Trace Function Parameter Types")
    (description
     "The R language includes a set of defined types, but the language itself is
\"absurdly dynamic\" (Turcotte & Vitek (2019) <doi:10.1145/3340670.3342426>), and
lacks any way to specify which types are expected by any expression.  The
typetracer package enables code to be traced to extract detailed information on
the properties of parameters passed to R functions.  typetracer can trace
individual functions or entire packages.")
    (license license:expat)))

(define-public r-types
  (package
    (name "r-types")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "types" version))
              (sha256
               (base32
                "01shcin8wjbhbmzl979fj3008xqxssw90g3bjg42cnjxkmnaql59"))))
    (properties `((upstream-name . "types")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=types")
    (synopsis "Type Annotations")
    (description
     "This package provides a simple type annotation for R that is usable in scripts,
in the R console and in packages.  It is intended as a convention to allow other
packages to use the type information to provide error checking, automatic
documentation or optimizations.")
    (license license:expat)))

(define-public r-typehint
  (package
    (name "r-typehint")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "typehint" version))
              (sha256
               (base32
                "1n37qgphzf7lckrgfc8w3fq82zrjcvadx034qx8hrmbh4dynsl2s"))))
    (properties `((upstream-name . "typehint")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlist r-crayon))
    (home-page "https://github.com/jsugarelli/typehint/")
    (synopsis "Auto-Check Types, Dimensions, and Values of Function Arguments")
    (description
     "Type hints are special comments within a function body indicating the intended
nature of the function's arguments in terms of data types, dimensions and
permitted values.  The actual parameters with which the function is called are
evaluated against these type hint comments at run-time.")
    (license license:gpl3)))

(define-public r-typed
  (package
    (name "r-typed")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "typed" version))
              (sha256
               (base32
                "096rzsxjdycf55jx33cxk1284rzb2vcxvp298y4q6v9x0w36php3"))))
    (properties `((upstream-name . "typed")))
    (build-system r-build-system)
    (propagated-inputs (list r-waldo))
    (home-page "https://github.com/moodymudskipper/typed")
    (synopsis "Support Types for Variables, Arguments, and Return Values")
    (description
     "This package provides a type system for R. It supports setting variable types in
a script or the body of a function, so variables can't be assigned illegal
values.  Moreover it supports setting argument and return types for functions.")
    (license license:gpl3)))

(define-public r-txtq
  (package
    (name "r-txtq")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "txtq" version))
              (sha256
               (base32
                "1fvjprcwfqbw9c4sqcxv8r0jgvqmkip6d86r3cgrhwyic1ndk1l5"))))
    (properties `((upstream-name . "txtq")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-filelock r-base64url))
    (home-page "https://github.com/wlandau/txtq")
    (synopsis "Small Message Queue for Parallel Processes")
    (description
     "This queue is a data structure that lets parallel processes send and receive
messages, and it can help coordinate the work of complicated parallel tasks.
Processes can push new messages to the queue, pop old messages, and obtain a log
of all the messages ever pushed.  File locking preserves the integrity of the
data even when multiple processes access the queue simultaneously.")
    (license license:expat)))

(define-public r-txshift
  (package
    (name "r-txshift")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "txshift" version))
              (sha256
               (base32
                "0lniwb7lijcasqmhs1zryb9wqf5xka13q4yb9m2j8dblb51y3i79"))))
    (properties `((upstream-name . "txshift")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-scales
                             r-rdpack
                             r-mvtnorm
                             r-lspline
                             r-latex2exp
                             r-haldensify
                             r-hal9001
                             r-ggplot2
                             r-data-table
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nhejazi/txshift")
    (synopsis
     "Efficient Estimation of the Causal Effects of Stochastic Interventions")
    (description
     "Efficient estimation of the population-level causal effects of stochastic
interventions on a continuous-valued exposure.  Both one-step and targeted
minimum loss estimators are implemented for the counterfactual mean value of an
outcome of interest under an additive modified treatment policy, a stochastic
intervention that may depend on the natural value of the exposure.  To
accommodate settings with outcome-dependent two-phase sampling, procedures
incorporating inverse probability of censoring weighting are provided to
facilitate the construction of inefficient and efficient one-step and targeted
minimum loss estimators.  The causal parameter and its estimation were first
described by DÃ­az and van der Laan (2013)
<doi:10.1111/j.1541-0420.2011.01685.x>, while the multiply robust estimation
procedure and its application to data from two-phase sampling designs is
detailed in NS Hejazi, MJ van der Laan, HE Janes, PB Gilbert, and DC Benkeser
(2020) <doi:10.1111/biom.13375>.  The software package implementation is
described in NS Hejazi and DC Benkeser (2020) <doi:10.21105/joss.02447>.
Estimation of nuisance parameters may be enhanced through the Super Learner
ensemble model in sl3', available for download from GitHub using
remotes::install_github(\"tlverse/sl3\")'.")
    (license license:expat)))

(define-public r-twoxtwo
  (package
    (name "r-twoxtwo")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twoxtwo" version))
              (sha256
               (base32
                "03wrxzjv21df5c8w9bixfw42m82yf9grv1c4nlw5dy09lsfhl8sv"))))
    (properties `((upstream-name . "twoxtwo")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-magrittr
                             r-knitr
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=twoxtwo")
    (synopsis "Work with Two-by-Two Tables")
    (description
     "This package provides a collection of functions for data analysis with
two-by-two contingency tables.  The package provides tools to compute measures
of effect (odds ratio, risk ratio, and risk difference), calculate impact
numbers and attributable fractions, and perform hypothesis testing.  Statistical
analysis methods are oriented towards epidemiological investigation of
relationships between exposures and outcomes.")
    (license license:expat)))

(define-public r-twowaytests
  (package
    (name "r-twowaytests")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twowaytests" version))
              (sha256
               (base32
                "05y455p40p72m22k0pjmdqnnp2fklqcq70yc9ga9fgcimqjvbi18"))))
    (properties `((upstream-name . "twowaytests")))
    (build-system r-build-system)
    (propagated-inputs (list r-wesanderson r-onewaytests r-nortest r-ggplot2
                             r-car))
    (home-page "https://cran.r-project.org/package=twowaytests")
    (synopsis "Two-Way Tests in Independent Groups Designs")
    (description
     "This package performs two-way tests in independent groups designs.  These are
two-way ANOVA, two-way ANOVA under heteroscedasticity: parametric bootstrap
based generalized test and generalized pivotal quantity based generalized test
(Ananda et al., 2022) <doi:10.1080/03610926.2022.2059682>, two-way ANOVA for
medians, trimmed means, M-estimators (Wilcox, 2011; ISBN:978-0-12-386983-8).
The package performs descriptive statistics and graphical approaches.  Moreover,
it assesses variance homogeneity and normality of data in each group via tests
and plots.  All twowaytests functions are designed for two-way layout.")
    (license license:gpl2+)))

(define-public r-twowayfeweights
  (package
    (name "r-twowayfeweights")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoWayFEWeights" version))
              (sha256
               (base32
                "0zjbh24jm77vj62rw433dqy57m0hciaw1l2l7x6hpzn34iggdwwv"))))
    (properties `((upstream-name . "TwoWayFEWeights")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-fixest r-estimatr r-dplyr))
    (home-page "https://cran.r-project.org/package=TwoWayFEWeights")
    (synopsis
     "Estimation of the Weights Attached to the Two-Way Fixed Effects Regressions")
    (description
     "Estimates the weights and measure of robustness to treatment effect
heterogeneity attached to two-way fixed effects regressions.  ClÃ©ment de
Chaisemartin, Xavier D'HaultfÅuille (2020) <DOI: 10.1257/aer.20181169>.")
    (license license:expat)))

(define-public r-twoway
  (package
    (name "r-twoway")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twoway" version))
              (sha256
               (base32
                "02z2syb0g92d97gjxfkarpil9b2n25s128606h071jl0s88cr4ar"))))
    (properties `((upstream-name . "twoway")))
    (build-system r-build-system)
    (home-page "https://github.com/friendly/twoway")
    (synopsis "Analysis of Two-Way Tables")
    (description
     "Carries out analyses of two-way tables with one observation per cell, together
with graphical displays for an additive fit and a diagnostic plot for removable
non-additivity via a power transformation of the response.  It implements
Tukey's Exploratory Data Analysis (1973) <ISBN: 978-0201076165> methods,
including a 1-degree-of-freedom test for row*column non-additivity', linear in
the row and column effects.")
    (license license:gpl3)))

(define-public r-twostepclogit
  (package
    (name "r-twostepclogit")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoStepCLogit" version))
              (sha256
               (base32
                "050y7na91izg36gkwd8yn8rx3r39dk6qlvhd3137f3jnk4v00bck"))))
    (properties `((upstream-name . "TwoStepCLogit")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=TwoStepCLogit")
    (synopsis "Conditional Logistic Regression: A Two-Step Estimation Method")
    (description
     "Conditional logistic regression with longitudinal follow up and individual-level
random coefficients: A stable and efficient two-step estimation method.")
    (license license:gpl2)))

(define-public r-twostagete
  (package
    (name "r-twostagete")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twostageTE" version))
              (sha256
               (base32
                "0mkxs3lmzja51zdrf5himhwcdygpj6czhdd2bydakm26kvw7znwr"))))
    (properties `((upstream-name . "twostageTE")))
    (build-system r-build-system)
    (propagated-inputs (list r-isotone))
    (home-page "https://cran.r-project.org/package=twostageTE")
    (synopsis "Two-Stage Threshold Estimation")
    (description
     "This package implements a variety of non-parametric methods for computing
one-stage and two-stage confidence intervals, as well as point estimates of
threshold values.")
    (license license:gpl2)))

(define-public r-twosigma
  (package
    (name "r-twosigma")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twosigma" version))
              (sha256
               (base32
                "0b73qcna55gmfxz1lzd987j28m7g8642s9wgzpndx3850q61yfli"))))
    (properties `((upstream-name . "twosigma")))
    (build-system r-build-system)
    (propagated-inputs (list r-pscl r-pbapply r-multcomp r-glmmtmb
                             r-doparallel))
    (home-page "https://github.com/edvanburen/twosigma")
    (synopsis "DE Analysis for Single-Cell RNA-Sequencing Data")
    (description
     "This package implements the TWO-Component Single Cell Model-Based Association
Method (TWO-SIGMA) for gene-level differential expression (DE) analysis and
DE-based gene set testing of single-cell RNA-sequencing datasets.  See Van Buren
et al. (2020) <doi:10.1002/gepi.22361> and Van Buren et al. (2021)
<doi:10.1101/2021.01.24.427979>.")
    (license license:agpl3)))

(define-public r-twosampletest-hd
  (package
    (name "r-twosampletest-hd")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoSampleTest.HD" version))
              (sha256
               (base32
                "1mvrlvcdllk7mxfsmahgb3iq7ndlnc4xg1536c1mxphxlh5qxwp0"))))
    (properties `((upstream-name . "TwoSampleTest.HD")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TwoSampleTest.HD")
    (synopsis
     "Two-Sample Test for the Equality of Distributions for High-Dimensional Data")
    (description
     "For high-dimensional data whose main feature is a large number, p, of variables
but a small sample size, the null hypothesis that the marginal distributions of
p variables are the same for two groups is tested.  We propose a test statistic
motivated by the simple idea of comparing, for each of the p variables, the
empirical characteristic functions computed from the two samples.  If one
rejects this global null hypothesis of no differences in distributions between
the two groups, a set of permutation p-values is reported to identify which
variables are not equally distributed in both groups.")
    (license license:gpl2)))

(define-public r-twosamples
  (package
    (name "r-twosamples")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twosamples" version))
              (sha256
               (base32
                "1ap856n3gjjd5jr51gcgq70hrv1791fkhwz2x939wd89nr6xwzx7"))))
    (properties `((upstream-name . "twosamples")))
    (build-system r-build-system)
    (propagated-inputs (list r-cpp11))
    (home-page "https://twosampletest.com")
    (synopsis "Fast Permutation Based Two Sample Tests")
    (description
     "Fast randomization based two sample tests.  Testing the hypothesis that two
samples come from the same distribution using randomization to create p-values.
Included tests are: Kolmogorov-Smirnov, Kuiper, Cramer-von Mises,
Anderson-Darling, Wasserstein, and DTS. The default test (two_sample) is based
on the DTS test statistic, as it is the most powerful, and thus most useful to
most users.  The DTS test statistic builds on the Wasserstein distance by using
a weighting scheme like that of Anderson-Darling.  See the companion paper at
<arXiv:2007.01360> or <https://codowd.com/public/DTS.pdf> for details of that
test statistic, and non-standard uses of the package (parallel for big N,
weighted observations, one sample tests, etc).  We also include the permutation
scheme to make test building simple for others.")
    (license license:gpl2+)))

(define-public r-tworegression
  (package
    (name "r-tworegression")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoRegression" version))
              (sha256
               (base32
                "0mpgdz7swrzabpf835pawlwvbzqajc329whcsxddwq4l6c71sb11"))))
    (properties `((upstream-name . "TwoRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-rcpproll
                             r-proc
                             r-pautilities
                             r-magrittr
                             r-lubridate
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulhibbing/TwoRegression")
    (synopsis "Develop and Apply Two-Regression Algorithms")
    (description
     "Facilitates development and application of two-regression algorithms for
research-grade wearable devices.  It provides an easy way for users to access
previously-developed algorithms, and also to develop their own.  Initial
motivation came from Hibbing PR, LaMunion SR, Kaplan AS, & Crouter SE (2018)
<doi:10.1249/MSS.0000000000001532>.  However, other algorithms are now
supported.  Please see the associated references in the package documentation
for full details of the algorithms that are supported.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-twophaseind
  (package
    (name "r-twophaseind")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoPhaseInd" version))
              (sha256
               (base32
                "1ifdj17rlr8nd0pqpcqi6835ymdhngif279i27s6lvwha924l81c"))))
    (properties `((upstream-name . "TwoPhaseInd")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=TwoPhaseInd")
    (synopsis "Estimate Gene-Treatment Interaction Exploiting Randomization")
    (description
     "Estimation of gene-treatment interactions in randomized clinical trials
exploiting gene-treatment independence.  Methods used in the package refer to J.
Y. Dai, M. LeBlanc, and C. Kooperberg (2009) Biometrics
<doi:10.1111/j.1541-0420.2008.01046.x>.")
    (license license:gpl2+)))

(define-public r-twopartm
  (package
    (name "r-twopartm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twopartm" version))
              (sha256
               (base32
                "0hncdfc9l1m31158kk5jdciqasv8nqr2q7cam38wi2wclqpk5r5v"))))
    (properties `((upstream-name . "twopartm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-data-table))
    (home-page "https://cran.r-project.org/package=twopartm")
    (synopsis "Two-Part Model with Marginal Effects")
    (description
     "Fit two-part regression models for zero-inflated data.  The models and their
components are represented using S4 classes and methods.  Average Marginal
effects and predictive margins with standard errors and confidence intervals can
be calculated from two-part model objects.  Belotti, F., Deb, P., Manning, W.
G., & Norton, E. C. (2015) <doi:10.1177/1536867X1501500102>.")
    (license license:gpl2+)))

(define-public r-twoarmsurvsim
  (package
    (name "r-twoarmsurvsim")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwoArmSurvSim" version))
              (sha256
               (base32
                "0isb1nmm6hxwn6p52an1axj30ilkr5c8xi86zx2b8acivdz2xr12"))))
    (properties `((upstream-name . "TwoArmSurvSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-simsurv r-dplyr r-blockrand))
    (home-page "https://cran.r-project.org/package=TwoArmSurvSim")
    (synopsis "Simulate Survival Data for Randomized Clinical Trials")
    (description
     "This package provides a system to simulate clinical trials with time to event
endpoints.  Event simulation is based on Cox models allowing for covariates in
addition to the treatment or group factor.  Specific drop-out rates (separate
from administrative censoring) can be controlled in the simulation.  Other
features include stratified randomization, non-proportional hazards, different
accrual patterns, and event projection (timing to reach the target event) based
on interim data.")
    (license license:gpl2+)))

(define-public r-twn
  (package
    (name "r-twn")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twn" version))
              (sha256
               (base32
                "1g73y0vkfhz2lvfcfxl3lrv6zj1gcymrxdihk7a2hpxnx1bfxjx1"))))
    (properties `((upstream-name . "twn")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-rlang r-dplyr r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://redtent.github.io/twn/")
    (synopsis "Taxa Waterbeheer Nederland voor R")
    (description
     "The TWN-list (Taxa Waterbeheer Nederland) is the Dutch standard for naming
taxons in Dutch Watermanagement.  This package makes it easier to use the
TWN-list for ecological analyses.  It consists of two parts.  First it makes the
TWN-list itself available in R. Second, it has a few functions that make it easy
to perform some basic and often recurring tasks for checking and consulting
taxonomic data from the TWN-list.")
    (license license:expat)))

(define-public r-twl
  (package
    (name "r-twl")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twl" version))
              (sha256
               (base32
                "0n2r40ddsr5zpzi92k7f0lvq78k5cmfbqzjxvr78hwq6j13dhar3"))))
    (properties `((upstream-name . "twl")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast r-mcmcpack r-data-table r-corrplot))
    (home-page "https://cran.r-project.org/package=twl")
    (synopsis "Two-Way Latent Structure Clustering Model")
    (description
     "Implementation of a Bayesian two-way latent structure model for integrative
genomic clustering.  The model clusters samples in relation to distinct data
sources, with each subject-dataset receiving a latent cluster label, though
cluster labels have across-dataset meaning because of the model formulation.  A
common scaling across data sources is unneeded, and inference is obtained by a
Gibbs Sampler.  The model can fit multivariate Gaussian distributed clusters or
a heavier-tailed modification of a Gaussian density.  Uniquely among integrative
clustering models, the formulation makes no nestedness assumptions of samples
across data sources -- the user can still fit the model if a study subject only
has information from one data source.  The package provides a variety of
post-processing functions for model examination including ones for quantifying
observed alignment of clusterings across genomic data sources.  Run time is
optimized so that analyses of datasets on the order of thousands of features on
fewer than 5 datasets and hundreds of subjects can converge in 1 or 2 days on a
single CPU. See \"Swanson DM, Lien T, Bergholtz H, Sorlie T, Frigessi A,
Investigating Coordinated Architectures Across Clusters in Integrative Studies:
a Bayesian Two-Way Latent Structure Model, 2018, <doi:10.1101/387076>, Cold
Spring Harbor Laboratory\" at
<https://www.biorxiv.org/content/early/2018/08/07/387076.full.pdf> for model
details.")
    (license license:gpl2+)))

(define-public r-twitterwidget
  (package
    (name "r-twitterwidget")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twitterwidget" version))
              (sha256
               (base32
                "1dlhydhy69284gg3jsxwa6h8cp1rlkg1j8h8z1fjz4fyy1p5xrpv"))))
    (properties `((upstream-name . "twitterwidget")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (home-page "https://github.com/guivo/twitterwidget")
    (synopsis "Render a Twitter Status in R Markdown Pages")
    (description
     "Include the Twitter status widgets in HTML pages created using R markdown.  The
package uses the Twitter javascript APIs to embed in your document Twitter cards
associated to specific statuses.  The main targets are regular HTML pages or
dashboards.")
    (license license:expat)))

(define-public r-twitterautomatedtrading
  (package
    (name "r-twitterautomatedtrading")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TwitterAutomatedTrading" version))
              (sha256
               (base32
                "1aa6fxxvy0s8al30w19wa2pwzp60zbbdvp5myigv8x26k6w2jwgv"))))
    (properties `((upstream-name . "TwitterAutomatedTrading")))
    (build-system r-build-system)
    (propagated-inputs (list r-twitter
                             r-tidytext
                             r-tibble
                             r-purrr
                             r-plyr
                             r-naptime
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lucasgodeiro/TwitterAutomatedTrading")
    (synopsis "Automated Trading Using Tweets")
    (description
     "This package provides an integration to the metatrader 5'.  The functionalities
carry out automated trading using sentiment indexes computed from twitter and/or
stockwits'.  The sentiment indexes are based on the ph.d.  dissertation \"Essays
on Economic Forecasting Models\" (Godeiro,2018)
<https://repositorio.ufpb.br/jspui/handle/123456789/15198> The integration
between the R and the metatrader 5 allows sending buy/sell orders to the
brokerage.")
    (license license:gpl3)))

(define-public r-twitteradsr
  (package
    (name "r-twitteradsr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twitteradsR" version))
              (sha256
               (base32
                "15r6l9rf05xdr1m9zkmsg1v9vrdsyz480jqkgvx7yn27546z5653"))))
    (properties `((upstream-name . "twitteradsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Twitter Ads Data via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Twitter Ads using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-twitter
  (package
    (name "r-twitter")
    (version "1.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twitteR" version))
              (sha256
               (base32
                "1hh055aqb8iddk9bdqw82r3df9rwjqsg5a0d2i0rs1bry8z4kzbr"))))
    (properties `((upstream-name . "twitteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson r-httr r-dbi r-bit64))
    (home-page
     "http://lists.hexdump.org/listinfo.cgi/twitter-users-hexdump.org")
    (synopsis "R Based Twitter Client")
    (description "This package provides an interface to the Twitter web API.")
    (license license:artistic2.0)))

(define-public r-twitmo
  (package
    (name "r-twitmo")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Twitmo" version))
              (sha256
               (base32
                "0hr2gndrcsd4r4jxyzg1jbjbn1zslv8z5ny3xh42hda93866909d"))))
    (properties `((upstream-name . "Twitmo")))
    (build-system r-build-system)
    (propagated-inputs (list r-topicmodels
                             r-tm
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-stopwords
                             r-stm
                             r-rtweet
                             r-rlang
                             r-readr
                             r-quanteda-textstats
                             r-quanteda
                             r-plyr
                             r-maps
                             r-magrittr
                             r-leaflet
                             r-ldavis
                             r-ldatuning
                             r-jsonlite
                             r-dplyr))
    (home-page "https://github.com/abuchmueller/Twitmo")
    (synopsis "Twitter Topic Modeling and Visualization for R")
    (description
     "Tailored for topic modeling with tweets and fit for visualization tasks in R.
Collect, pre-process and analyze the contents of tweets using LDA and structural
topic models (STM).  Comes with visualizing capabilities like tweet and hashtag
maps and built-in support for LDAvis'.")
    (license license:expat)))

(define-public r-twinning
  (package
    (name "r-twinning")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twinning" version))
              (sha256
               (base32
                "02sa631np01cizzqqh25riqcw31qvszrfbws5h6xs31f7l9wlxdy"))))
    (properties `((upstream-name . "twinning")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=twinning")
    (synopsis "Data Twinning")
    (description
     "An efficient algorithm for data twinning.  This work is supported by U.S.
National Science Foundation grants DMREF-1921873 and CMMI-1921646.")
    (license license:gpl2+)))

(define-public r-twilio
  (package
    (name "r-twilio")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twilio" version))
              (sha256
               (base32
                "0b70vcc2bd5jpd2d82i2k828q90viah0b9abz2r627bbyxivpcnd"))))
    (properties `((upstream-name . "twilio")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-magrittr r-lubridate r-jsonlite r-httr))
    (home-page "http://github.com/seankross/twilio")
    (synopsis "An Interface to the Twilio API for R")
    (description
     "The Twilio web service provides an API for computer programs to interact with
telephony.  The included functions wrap the SMS and MMS portions of Twilio's
API, allowing users to send and receive text messages from R. See
<https://www.twilio.com/docs/> for more information.")
    (license license:expat)))

(define-public r-twfy
  (package
    (name "r-twfy")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twfy" version))
              (sha256
               (base32
                "14xxl9y8iagnn5jd06k6jyy4wk7crm64svz8h0zmzcvg47k8bwc7"))))
    (properties `((upstream-name . "twfy")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://conjugateprior.github.io/twfy")
    (synopsis "Drive the API for TheyWorkForYou")
    (description
     "An R wrapper around the API of TheyWorkForYou, a parliamentary monitoring site
that scrapes and repackages Hansard (the UK's parliamentary record) and augments
it with information from the Register of Members Interests, election results,
and voting records to provide a unified source of information about UK
legislators and their activities.  See <http://www.theyworkforyou.com> for
details.")
    (license license:gpl3)))

(define-public r-twenty48
  (package
    (name "r-twenty48")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twenty48" version))
              (sha256
               (base32
                "1aii4yd10k0jxd6ghdgm5d0pbr9d4m0lg6kaqig58d3s1klw5izd"))))
    (properties `((upstream-name . "twenty48")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-r6 r-crayon))
    (home-page "https://github.com/rossellhayes/twenty48")
    (synopsis "Play a Game of 2048 in the Console")
    (description
     "Generates a game of 2048 that can be played in the console.  Supports grids of
arbitrary sizes, undoing the last move, and resuming a game that was exited
during the current session.")
    (license license:expat)))

(define-public r-tweetcheck
  (package
    (name "r-tweetcheck")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tweetcheck" version))
              (sha256
               (base32
                "025qshp3q7h54mwxx6707x24dciisf7rh6z7sbzchikrk1gh5wij"))))
    (properties `((upstream-name . "tweetcheck")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8 r-tibble))
    (native-inputs (list esbuild))
    (home-page "https://cran.r-project.org/package=tweetcheck")
    (synopsis "Parse and Validate Tweet Text")
    (description
     "An interface to twitter-text', a JavaScript library which is responsible for
determining the length/validity of a tweet and identifying/linking any URLs or
special tags (e.g. mentions or hashtags) which may be present.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-twangrdc
  (package
    (name "r-twangrdc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twangRDC" version))
              (sha256
               (base32
                "03z2c18nq6iwwb3si7wjc56npdyray3xsy6k6ifvbalib2ibv2f1"))))
    (properties `((upstream-name . "twangRDC")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-matrixmodels r-ggplot2 r-data-table))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=twangRDC")
    (synopsis "Gradient Boosting for Linkage Failure in FSRDCs")
    (description
     "This package provides functions for gradient boosted weighting to correct
linkage failures or generate comparison groups.")
    (license license:gpl3)))

(define-public r-twangmediation
  (package
    (name "r-twangmediation")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twangMediation" version))
              (sha256
               (base32
                "12dj98sqggcqzlkcmn2fmxv81cankp5hmswz07rwb2sn6awlq9jg"))))
    (properties `((upstream-name . "twangMediation")))
    (build-system r-build-system)
    (propagated-inputs (list r-twang r-survey r-latticeextra r-lattice r-gbm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=twangMediation")
    (synopsis "Twang Causal Mediation Modeling via Weighting")
    (description
     "This package provides functions for estimating natural direct and indirect
effects for mediation analysis.  It uses weighting where the weights are
functions of estimates of the probability of exposure or treatment assignment
(Hong, G (2010).
<https://cepa.stanford.edu/sites/default/files/workshops/GH_JSM%20Proceedings%202010.pdf>
Huber, M. (2014). <doi:10.1002/jae.2341>).  Estimation of probabilities can use
generalized boosting or logistic regression.  Additional functions provide
diagnostics of the model fit and weights.  The vignette provides details and
examples.")
    (license license:gpl3)))

(define-public r-twangcontinuous
  (package
    (name "r-twangcontinuous")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twangContinuous" version))
              (sha256
               (base32
                "0bn1i9nid97irn820591ml3556bbmg6pw2qhm9k9vqgnqmnhcfnq"))))
    (properties `((upstream-name . "twangContinuous")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-survey r-rcpp r-lattice r-gbm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=twangContinuous")
    (synopsis
     "Toolkit for Weighting and Analysis of Nonequivalent Groups - Continuous Exposures")
    (description
     "This package provides functions for propensity score estimation and weighting
for continuous exposures as described in Zhu, Y., Coffman, D. L., & Ghosh, D.
(2015).  A boosting algorithm for estimating generalized propensity scores with
continuous treatments.  Journal of Causal Inference, 3(1), 25-40.
<doi:10.1515/jci-2014-0022>.")
    (license license:gpl2+)))

(define-public r-twang
  (package
    (name "r-twang")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "twang" version))
              (sha256
               (base32
                "1raczkxbkikwx9gi4p8nzgazqxa41ilpqvfjc07nwkvyqlkmadgw"))))
    (properties `((upstream-name . "twang")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xgboost
                             r-survey
                             r-matrixmodels
                             r-latticeextra
                             r-lattice
                             r-ggplot2
                             r-gbm
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=twang")
    (synopsis "Toolkit for Weighting and Analysis of Nonequivalent Groups")
    (description
     "This package provides functions for propensity score estimating and weighting,
nonresponse weighting, and diagnosis of the weights.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tvthemes
  (package
    (name "r-tvthemes")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvthemes" version))
              (sha256
               (base32
                "15m1g191nw1bfz1jgcab316c8jzvam2zc5vnlz8k9b6lcqqnv3nl"))))
    (properties `((upstream-name . "tvthemes")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-magick r-ggplot2 r-extrafont))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ryo-N7/tvthemes")
    (synopsis "TV Show Themes and Color Palettes for 'ggplot2' Graphics")
    (description
     "This package contains various ggplot2 themes and color palettes based on TV
shows such as Game of Thrones', Brooklyn Nine-Nine', Avatar: The Last
Airbender', Spongebob Squarepants', and more.")
    (license license:gpl3)))

(define-public r-tvreg
  (package
    (name "r-tvreg")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvReg" version))
              (sha256
               (base32
                "0q34266qk621cna5sf87yyp2jf9s9zc945bm2qsl8mh2ag0wii86"))))
    (properties `((upstream-name . "tvReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars
                             r-systemfit
                             r-plm
                             r-matrix
                             r-mass
                             r-bvarsv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/icasas/tvReg")
    (synopsis
     "Time-Varying Coefficient for Single and Multi-Equation Regressions")
    (description
     "Fitting time-varying coefficient models for single and multi-equation
regressions, using kernel smoothing techniques.")
    (license license:gpl3+)))

(define-public r-tvr
  (package
    (name "r-tvr")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvR" version))
              (sha256
               (base32
                "1i20z09f714fyn3ipcn9i5g4dx7cyjfkyjqzyqzqapkg0m9ny91m"))))
    (properties `((upstream-name . "tvR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kisungyou/tvR")
    (synopsis "Total Variation Regularization")
    (description
     "This package provides tools for denoising noisy signal and images via Total
Variation Regularization.  Reducing the total variation of the given signal is
known to remove spurious detail while preserving essential structural details.
For the seminal work on the topic, see Rudin et al (1992)
<doi:10.1016/0167-2789(92)90242-F>.")
    (license license:expat)))

(define-public r-tvmm
  (package
    (name "r-tvmm")
    (version "3.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TVMM" version))
              (sha256
               (base32
                "0z2gdcci9pbpgnmr6dch5v0rsn34q18rwb14x9gyxdcvh3bch8z0"))))
    (properties `((upstream-name . "TVMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tcltk2
                             r-robustbase
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-desctoolsaddins))
    (home-page "https://cran.r-project.org/package=TVMM")
    (synopsis "Multivariate Tests for the Vector of Means")
    (description
     "This is a statistical tool interactive that provides multivariate statistical
tests that are more powerful than traditional Hotelling T2 test and LRT
(likelihood ratio test) for the vector of normal mean populations with and
without contamination and non-normal populations (Henrique J. P. Alves & Daniel
F. Ferreira (2019) <DOI: 10.1080/03610918.2019.1693596>).")
    (license license:gpl2)))

(define-public r-tvmediation
  (package
    (name "r-tvmediation")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvmediation" version))
              (sha256
               (base32
                "082lw56yhlb6nj7srdinim1hgvb8szzb3gp2y985115qgdypbv6n"))))
    (properties `((upstream-name . "tvmediation")))
    (build-system r-build-system)
    (propagated-inputs (list r-locpol r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dcoffman/tvmediation/wiki")
    (synopsis "Time Varying Mediation Analysis")
    (description
     "This package provides functions for estimating mediation effects that vary over
time as described in Cai X, Coffman DL, Piper ME, Li R. Estimation and inference
for the mediation effect in a time-varying mediation model.  BMC Med Res
Methodol.  2022;22(1):1-12.")
    (license license:gpl3)))

(define-public r-tvmcomp
  (package
    (name "r-tvmcomp")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvmComp" version))
              (sha256
               (base32
                "1q5c3ahdjjz4h19pwq0dpasv87mzbyqs0hadlfx7mpmncdgyqcqq"))))
    (properties `((upstream-name . "tvmComp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (home-page "https://cran.r-project.org/package=tvmComp")
    (synopsis "Discounting and Compounding Calculations for Various Scenarios")
    (description
     "This package provides functions for compounding and discounting calculations
included here serve as a complete reference for various scenarios of time value
of money.  Raymond M. Brooks (âFinancial Management,â 2018, ISBN:
9780134730417).  Sheridan Titman, Arthur J. Keown, John D. Martin (âFinancial
Management: Principles and Applications,â 2017, ISBN: 9780134417219).
Jonathan Berk, Peter DeMarzo, David Stangeland, Andras Marosi (âFundamentals
of Corporate Finance,â 2019, ISBN: 9780134735313).  S. A. Hummelbrunner, Kelly
Halliday, Ali R. Hassanlou (âContemporary Business Mathematics with Canadian
Applications,â 2020, ISBN: 9780135285015).")
    (license license:gpl3)))

(define-public r-tvm
  (package
    (name "r-tvm")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvm" version))
              (sha256
               (base32
                "0isvsz7fgs8a74wxq9i3d3zah4nfa31rnv8xsqnqp93rbr947x6y"))))
    (properties `((upstream-name . "tvm")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-reshape2 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://bitbucket.org/juancentro/tvm")
    (synopsis "Time Value of Money Functions")
    (description
     "This package provides functions for managing cashflows and interest rate curves.")
    (license license:expat)))

(define-public r-tvgeom
  (package
    (name "r-tvgeom")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvgeom" version))
              (sha256
               (base32
                "1lr2vqgj5jfhzavwd43wcchhbicmf4dqjvyf66rvnjkw3jaig8dm"))))
    (properties `((upstream-name . "tvgeom")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tvgeom")
    (synopsis "The Time-Varying (Right-Truncated) Geometric Distribution")
    (description
     "Probability mass (d), distribution (p), quantile (q), and random number
generating (r and rt) functions for the time-varying right-truncated geometric
(tvgeom) distribution.  Also provided are functions to calculate the first and
second central moments of the distribution.  The tvgeom distribution is similar
to the geometric distribution, but the probability of success is allowed to vary
at each time step, and there are a limited number of trials.  This distribution
is essentially a Markov chain, and it is useful for modeling Markov chain
systems with a set number of time steps.")
    (license license:expat)))

(define-public r-tvgarch
  (package
    (name "r-tvgarch")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvgarch" version))
              (sha256
               (base32
                "1zr3wjb3gnqp5k45cqwza8z5hb0bq7nqy6km8k8k9p3l4mj6ilgn"))))
    (properties `((upstream-name . "tvgarch")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-numderiv r-hier-part r-garchx))
    (home-page "https://sites.google.com/site/susanacamposmartins")
    (synopsis "Time Varying GARCH Modelling")
    (description
     "Simulation, estimation and inference for univariate and multivariate
TV(s)-GARCH(p,q,r)-X models, where s indicates the number and shape of the
transition functions, p is the ARCH order, q is the GARCH order, r is the
asymmetry order, and X indicates that covariates can be included.  In the
multivariate case, variances are estimated equation by equation and dynamic
conditional correlations are allowed.  The TV long-term component of the
variance as in the multiplicative TV-GARCH model of Amado and Ter{\\\"a}svirta
(2013) <doi:10.1016/j.jeconom.2013.03.006> introduces non-stationarity whereas
the GARCH-X short-term component describes conditional heteroscedasticity.
Maximisation by parts leads to consistent and asymptotically normal estimates.")
    (license license:gpl2+)))

(define-public r-tvem
  (package
    (name "r-tvem")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tvem" version))
              (sha256
               (base32
                "1hrjl5kbp0wx7a4aa8bbvf5sdrxcvxsf3318ckgl85w923i8a44k"))))
    (properties `((upstream-name . "tvem")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tvem")
    (synopsis "Time-Varying Effect Models")
    (description
     "Fits time-varying effect models (TVEM).  These are a kind of application of
varying-coefficient models in the context of longitudinal data, allowing the
strength of linear, logistic, or Poisson regression relationships to change over
time.  These models are described further in Tan, Shiyko, Li, Li & Dierker
(2012) <doi:10.1037/a0025814>.  We thank Kaylee Litson, Patricia Berglund, and
Yajnaseni Chakraborti for their valuable help with testing the package and
documentation.  The development of this package was part of a research project
supported by National Institutes of Health grants P50 DA039838 from the National
Institute of Drug Abuse and 1R01 CA229542-01 from the National Cancer Institute
and the NIH Office of Behavioral and Social Science Research.  Content is solely
the responsibility of the authors and does not necessarily represent the
official views of the funding institutions mentioned above.  This software is
distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
PURPOSE. See the GNU General Public License for more details.")
    (license license:gpl2+)))

(define-public r-tuwmodel
  (package
    (name "r-tuwmodel")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TUWmodel" version))
              (sha256
               (base32
                "1am3ywcj1rqgz5i2g9c6d6fgiv8b2nabllfy84xx1n18pin7mfbk"))))
    (properties `((upstream-name . "TUWmodel")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=TUWmodel")
    (synopsis
     "Lumped/Semi-Distributed Hydrological Model for Education Purposes")
    (description
     "The model, developed at the Vienna University of Technology, is a lumped
conceptual rainfall-runoff model, following the structure of the HBV model.  The
model can also be run in a semi-distributed fashion and with dual representation
of soil layer.  The model runs on a daily or shorter time step and consists of a
snow routine, a soil moisture routine and a flow routing routine.  See Parajka,
J., R. Merz, G. Bloeschl (2007) <DOI:10.1002/hyp.6253> Uncertainty and multiple
objective calibration in regional water balance modelling: case study in 320
Austrian catchments, Hydrological Processes, 21, 435-446.")
    (license license:gpl2+)))

(define-public r-tushare
  (package
    (name "r-tushare")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tushare" version))
              (sha256
               (base32
                "0am3bq62ar5p5nv8gapbvh4ix150pskdrhda48lmcg0ii3l0qh9g"))))
    (properties `((upstream-name . "Tushare")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse r-httr r-forecast r-data-table))
    (home-page "https://cran.r-project.org/package=Tushare")
    (synopsis "Interface to 'Tushare Pro' API")
    (description
     "Helps the R users to get data from Tushare Pro'<https://tushare.pro>.  Tushare
Pro is a platform as well as a community with a lot of staffs working in
financial area.  We support financial data such as stock price, financial report
statements and digital coins data.")
    (license license:gpl2)))

(define-public r-turtlegraphics
  (package
    (name "r-turtlegraphics")
    (version "1.0-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TurtleGraphics" version))
              (sha256
               (base32
                "0h77pj7rs3lrqi1y2dm1cbrmj13mjpq6y5nw8bcq0s2kbnkfw67l"))))
    (properties `((upstream-name . "TurtleGraphics")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://www.gagolewski.com/software/TurtleGraphics/")
    (synopsis "Turtle Graphics")
    (description
     "An implementation of turtle graphics
<http://en.wikipedia.org/wiki/Turtle_graphics>.  Turtle graphics comes from
Papert's language Logo and has been used to teach concepts of computer
programming.")
    (license license:gpl3+)))

(define-public r-turner
  (package
    (name "r-turner")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "turner" version))
              (sha256
               (base32
                "1xckb750hbfmzhvabj0lzrsscib7g187b44ag831z58zvawwh772"))))
    (properties `((upstream-name . "turner")))
    (build-system r-build-system)
    (propagated-inputs (list r-tester))
    (native-inputs (list r-knitr))
    (home-page "http://www.gastonsanchez.com")
    (synopsis "Turn vectors and lists of vectors into indexed structures")
    (description
     "Package designed for working with vectors and lists of vectors, mainly for
turning them into other indexed data structures.")
    (license license:gpl3)))

(define-public r-turboem
  (package
    (name "r-turboem")
    (version "2021.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "turboEM" version))
              (sha256
               (base32
                "17j308qla2680k0j8cf2c4v1jlsm21z93zglncmw3n0isa7cwjly"))))
    (properties `((upstream-name . "turboEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-numderiv r-iterators r-foreach
                             r-doparallel))
    (home-page
     "https://coah.jhu.edu/people/Faculty_personal_Pages/Varadhan.html")
    (synopsis
     "Suite of Convergence Acceleration Schemes for EM, MM and Other Fixed-Point Algorithms")
    (description
     "Algorithms for accelerating the convergence of slow, monotone sequences from
smooth, contraction mapping such as the EM and MM algorithms.  It can be used to
accelerate any smooth, linearly convergent acceleration scheme.  A tutorial
style introduction to this package is available in a vignette on the CRAN
download page or, when the package is loaded in an R session, with
vignette(\"turboEM\").")
    (license license:gpl2)))

(define-public r-tuple
  (package
    (name "r-tuple")
    (version "0.4-02")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tuple" version))
              (sha256
               (base32
                "0fm8fsdfiwknjpc20ivi5m5b19r9scdxhzij70l8qi3ixw1f0rnk"))))
    (properties `((upstream-name . "tuple")))
    (build-system r-build-system)
    (home-page "http://statistics.lazaridis.eu")
    (synopsis
     "Find every match, or orphan, duplicate, triplicate, or other replicated values")
    (description
     "This package provides functions to find all matches or non-matches, orphans, and
duplicate or other replicated elements.")
    (license license:lgpl3)))

(define-public r-tuneranger
  (package
    (name "r-tuneranger")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tuneRanger" version))
              (sha256
               (base32
                "1xf78q8f7sq6w2jjwcw8vz88bmbp8yivydmqygjag58abnhd0356"))))
    (properties `((upstream-name . "tuneRanger")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoof
                             r-ranger
                             r-paramhelpers
                             r-mlrmbo
                             r-mlr
                             r-lubridate
                             r-lhs
                             r-dicekriging
                             r-bbmisc))
    (home-page "https://cran.r-project.org/package=tuneRanger")
    (synopsis "Tune Random Forest of the 'ranger' Package")
    (description
     "Tuning random forest with one line.  The package is mainly based on the packages
ranger and mlrMBO'.")
    (license license:gpl3)))

(define-public r-tunepareto
  (package
    (name "r-tunepareto")
    (version "2.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TunePareto" version))
              (sha256
               (base32
                "1zv467ddy8fsyj4473jyj5cwm7gx3n30py2y7wlqgwbxpfsgxn09"))))
    (properties `((upstream-name . "TunePareto")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TunePareto")
    (synopsis "Multi-Objective Parameter Tuning for Classifiers")
    (description
     "Generic methods for parameter tuning of classification algorithms using multiple
scoring functions (Muessel et al. (2012), <doi:10.18637/jss.v046.i05>).")
    (license license:gpl2)))

(define-public r-tumgr
  (package
    (name "r-tumgr")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tumgr" version))
              (sha256
               (base32
                "1ylfmrsg177g75l2scjpgw6v4dpz62r7cy89pql9zd5zqy167xqj"))))
    (properties `((upstream-name . "tumgr")))
    (build-system r-build-system)
    (propagated-inputs (list r-minpack-lm))
    (home-page "https://wilkersj.shinyapps.io/tumgrShiny")
    (synopsis "Tumor Growth Rate Analysis")
    (description
     "This package provides a tool to obtain tumor growth rates from clinical trial
patient data.  Output includes individual and summary data for tumor growth rate
estimates as well as optional plots of the observed and predicted tumor quantity
over time.")
    (license license:expat)))

(define-public r-tulip
  (package
    (name "r-tulip")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TULIP" version))
              (sha256
               (base32
                "16jf6ybwrhc4ckajdzpswilzn09agqz7mxg9a93gxkqvc2rwh5br"))))
    (properties `((upstream-name . "TULIP")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensr r-matrix r-mass r-glmnet))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=TULIP")
    (synopsis "Toolbox for Linear Discriminant Analysis with Penalties")
    (description
     "Integrates several popular high-dimensional methods based on Linear Discriminant
Analysis (LDA) and provides a comprehensive and user-friendly toolbox for
linear, semi-parametric and tensor-variate classification as mentioned in Yuqing
Pan, Qing Mai and Xin Zhang (2019) <arXiv:1904.03469>.  Functions are included
for covariate adjustment, model fitting, cross validation and prediction.")
    (license license:gpl2)))

(define-public r-tukeytrend
  (package
    (name "r-tukeytrend")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tukeytrend" version))
              (sha256
               (base32
                "15j7g0drb92rpxq7d0jl9h0hxpi9pbgpvfcxaicrcgypxap3721q"))))
    (properties `((upstream-name . "tukeytrend")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbkrtest
                             r-nlme
                             r-multcomp
                             r-mgcv
                             r-matrix
                             r-lme4))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tukeytrend")
    (synopsis "Tukeys Trend Test via Multiple Marginal Models")
    (description
     "This package provides wrapper functions to the multiple marginal model function
mmm() of package multcomp to implement the trend test of Tukey, Ciminera and
Heyse (1985) <DOI:10.2307/2530666> for general parametric models.")
    (license license:gpl2)))

(define-public r-tukeygh
  (package
    (name "r-tukeygh")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tukeyGH" version))
              (sha256
               (base32
                "1nlhv8lyjaqq95l7j85bdqdrsphagwf69iq8g3ryyyckchirljjg"))))
    (properties `((upstream-name . "tukeyGH")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-rdpack r-minqa r-magrittr))
    (home-page "https://github.com/f-santi/tukeyGH")
    (synopsis "Tukey's g-and-h Probability Distribution")
    (description
     "It provides distribution, density and quantile functions of the Tukey's g-and-h
probability distribution, as well as functions for random number generation,
parameter estimation and testing.")
    (license license:gpl3+)))

(define-public r-tukeyc
  (package
    (name "r-tukeyc")
    (version "1.3-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TukeyC" version))
              (sha256
               (base32
                "1ly09pll86zkn6m8rc6d66f3d7hf98fiij0psaigq6wdgf5an8ig"))))
    (properties `((upstream-name . "TukeyC")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-doby))
    (home-page "https://github.com/jcfaria/TukeyC")
    (synopsis "Conventional Tukey Test")
    (description
     "Perform the conventional Tukey test from formula, lm, aov, aovlist and lmer
objects.")
    (license license:gpl2+)))

(define-public r-tufterhandout
  (package
    (name "r-tufterhandout")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tufterhandout" version))
              (sha256
               (base32
                "04fvvbx69a28nk7i4wz5ynamz1yvsa2ibz542r1xaq1ikk0ywqbw"))))
    (properties `((upstream-name . "tufterhandout")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-knitr))
    (native-inputs (list r-knitr))
    (home-page "http://sachsmc.github.io/tufterhandout")
    (synopsis "Tufte-style html document format for rmarkdown")
    (description
     "Custom template and output formats for use with rmarkdown.  Produce Edward
Tufte-style handouts in html formats with full support for rmarkdown features")
    (license license:expat)))

(define-public r-tufte
  (package
    (name "r-tufte")
    (version "0.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tufte" version))
              (sha256
               (base32
                "1srnrqjw2d0pzl1gpd11m9s8p43hhb0mxm3yd260rvhbsn1x0hs0"))))
    (properties `((upstream-name . "tufte")))
    (build-system r-build-system)
    (propagated-inputs (list r-xfun r-rmarkdown r-knitr r-htmltools))
    (home-page "https://github.com/rstudio/tufte")
    (synopsis "Tufte's Styles for R Markdown Documents")
    (description
     "This package provides R Markdown output formats to use Tufte styles for PDF and
HTML output.")
    (license license:gpl3)))

(define-public r-tuflowr
  (package
    (name "r-tuflowr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TUFLOWR" version))
              (sha256
               (base32
                "07mb60nphy4x4qv4dkd4qblf7nbbxhjn39nqalgyg6hjp87zhg8x"))))
    (properties `((upstream-name . "TUFLOWR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sp
                             r-rlang
                             r-rgdal
                             r-readr
                             r-raster
                             r-magrittr
                             r-lubridate
                             r-gstat
                             r-ggplot2
                             r-dplyr))
    (home-page "<https://github.com/matt-s-gibbs/TUFLOWR>")
    (synopsis "Helper Functions for 'TUFLOW FV' Models")
    (description
     "Helper functions for TUFLOW FV models.  Current functionality includes reading
in and plotting output POINTS files and generating initial conditions based on
point observations.")
    (license license:gpl3)))

(define-public r-tuckerr-mmgg
  (package
    (name "r-tuckerr-mmgg")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tuckerR.mmgg" version))
              (sha256
               (base32
                "0lrylh0np0kbl4xx3gmlvid0g11fh0ad39wdwbz6hrmf5pzsjdjq"))))
    (properties `((upstream-name . "tuckerR.mmgg")))
    (build-system r-build-system)
    (home-page "https://github.com/gusart/tuckerR_mmgg")
    (synopsis "Three-Mode Principal Components Analysis")
    (description
     "This package performs Three-Mode Principal Components Analysis, which carries
out Tucker Models.")
    (license license:gpl3)))

(define-public r-tubern
  (package
    (name "r-tubern")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tubern" version))
              (sha256
               (base32
                "0wpn4aig6r1kpncrgrqra4kr0f07rdq7z4p2k0h28f7kww6l52vv"))))
    (properties `((upstream-name . "tubern")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/soodoku/tubern")
    (synopsis "R Client for the YouTube Analytics and Reporting API")
    (description
     "Get statistics and reports from YouTube.  To learn more about the YouTube
Analytics and Reporting API, see
<https://developers.google.com/youtube/reporting/>.")
    (license license:expat)))

(define-public r-tuber
  (package
    (name "r-tuber")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tuber" version))
              (sha256
               (base32
                "1nnjwn3c0rr90jvkwlh9xs5vc2nl6qzjj958hbddfrkny0w88mnp"))))
    (properties `((upstream-name . "tuber")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-plyr r-jsonlite r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/soodoku/tuber")
    (synopsis "Client for the YouTube API")
    (description
     "Get comments posted on YouTube videos, information on how many times a video has
been liked, search for videos with particular content, and much more.  You can
also scrape captions from a few videos.  To learn more about the YouTube API,
see <https://developers.google.com/youtube/v3/>.")
    (license license:expat)))

(define-public r-ttutils
  (package
    (name "r-ttutils")
    (version "1.0-1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttutils" version))
              (sha256
               (base32
                "01lmnlyj6pn2r73hhr57r9c83h3pw9x506h4dj09wmlgrzv4w30a"))))
    (properties `((upstream-name . "ttutils")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ttutils")
    (synopsis "Utility Functions")
    (description "This package contains some auxiliary functions.")
    (license license:gpl2)))

(define-public r-tttplot
  (package
    (name "r-tttplot")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tttplot" version))
              (sha256
               (base32
                "0rmgp1888y07w0h8kwq1azpr6bysjq4pyjf6ygpra75jj4563wx9"))))
    (properties `((upstream-name . "tttplot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tttplot")
    (synopsis "Time to Target Plot")
    (description
     "Implementation of Time to Target plot based on the work of Ribeiro and Rosseti
(2015) <DOI:10.1007/s11590-014-0760-8>, that describe a numerical method that
gives the probability of an algorithm A finds a solution at least as good as a
given target value in smaller computation time than algorithm B.")
    (license license:gpl2+)))

(define-public r-tttensor
  (package
    (name "r-tttensor")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttTensor" version))
              (sha256
               (base32
                "0ryfxx4chnc10cl5h5cb4hnvzf2cm64k8m36l4qbjz4f1vkw0a36"))))
    (properties `((upstream-name . "ttTensor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorr r-rtensor r-ptak r-matrix))
    (home-page "https://github.com/rikenbit/ttTensor")
    (synopsis "Tensor-Train Decomposition")
    (description
     "Tensor-train is a compact representation for higher-order tensors.  Some
algorithms for performing tensor-train decomposition are available such as
TT-SVD, TT-WOPT, and TT-Cross.  For the details of the algorithms, see I. V.
Oseledets (2011) <doi:10.1137/090752286>, Yuan Longao, et al (2017)
<arXiv:1709.02641>, I. V. Oseledets (2010) <doi:10.1016/j.laa.2009.07.024>.")
    (license license:artistic2.0)))

(define-public r-ttt
  (package
    (name "r-ttt")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttt" version))
              (sha256
               (base32
                "12bjhp78162v5y64qxfccaqxgwdqhmd3iwjda6pi7j6zqmy9p0gm"))))
    (properties `((upstream-name . "ttt")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-htmltools r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/benjaminrich/ttt")
    (synopsis "The Table Tool")
    (description
     "Create structured, formatted HTML tables of in a flexible and convenient way.")
    (license license:gpl3)))

(define-public r-ttservice
  (package
    (name "r-ttservice")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttservice" version))
              (sha256
               (base32
                "1qrqjwh7pp2a95sl84srk4sb37pndxn5pagq1rncmr6wj8c6v2fx"))))
    (properties `((upstream-name . "ttservice")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=ttservice")
    (synopsis "Service for Tidy Transcriptomics Software Suite")
    (description
     "It provides generic methods that are used by more than one package, avoiding
conflicts.  This package will be imported by tidySingleCellExperiment and
tidyseurat'.")
    (license license:gpl3)))

(define-public r-ttscreening
  (package
    (name "r-ttscreening")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttScreening" version))
              (sha256
               (base32
                "1i8c9l3sdkzl99zxxyfqm84vkh6wjdh3a32l5q8ikf74g9dhxkf4"))))
    (properties `((upstream-name . "ttScreening")))
    (build-system r-build-system)
    (propagated-inputs (list r-sva
                             r-simsalapar
                             r-matrixstats
                             r-mass
                             r-limma
                             r-corpcor))
    (home-page "https://cran.r-project.org/package=ttScreening")
    (synopsis
     "Genome-Wide DNA Methylation Sites Screening by Use of Training and Testing Samples")
    (description
     "This package provides a screening process utilizing training and testing samples
to filter out uninformative DNA methylation sites.  Surrogate variables (SVs) of
DNA methylation are included in the filtering process to explain unknown factor
effects.")
    (license license:artistic2.0)))

(define-public r-tts
  (package
    (name "r-tts")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TTS" version))
              (sha256
               (base32
                "0b9zlvsjdblc7yavpm9ni0av5z40xlwvn5v37dg3kd6ymjykir1k"))))
    (properties `((upstream-name . "TTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-sfsmisc r-mgcv))
    (home-page "https://cran.r-project.org/package=TTS")
    (synopsis
     "Master Curve Estimates Corresponding to Time-Temperature Superposition")
    (description
     "Time-Temperature Superposition analysis is often applied to frequency modulated
data obtained by Dynamic Mechanic Analysis (DMA) and Rheometry in the analytical
chemistry and physics areas.  These techniques provide estimates of material
mechanical properties (such as moduli) at different temperatures in a wider
range of time.  This package provides the Time-Temperature superposition Master
Curve at a referred temperature by the three methods: the two wider used
methods, Arrhenius based methods and WLF, and the newer methodology based on
derivatives procedure.  The Master Curve is smoothed by B-splines basis.  The
package output is composed of plots of experimental data, horizontal and
vertical shifts, TTS data, and TTS data fitted using B-splines with bootstrap
confidence intervals.")
    (license license:gpl2+)))

(define-public r-ttolr
  (package
    (name "r-ttolr")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tTOlr" version))
              (sha256
               (base32
                "1fk33vp6y65mls1iczjf63wzj1rl1knbdcbd4rnqqfdcqhibb3p3"))))
    (properties `((upstream-name . "tTOlr")))
    (build-system r-build-system)
    (propagated-inputs (list r-latticeextra r-lattice))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://cran.r-project.org/package=tTOlr")
    (synopsis "Likelihood Ratio Statistics for One or Two Sample T-Tests")
    (description
     "Several forms of likelihood ratio calculations are available.")
    (license license:gpl2+)))

(define-public r-tth
  (package
    (name "r-tth")
    (version "4.12-0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tth" version))
              (sha256
               (base32
                "0sdk519sx8h2l0ggddkwlnh9llrx4fzmvwzdjrbi2bg8zv2y30x1"))))
    (properties `((upstream-name . "tth")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tth")
    (synopsis "TeX-to-HTML/MathML Translators TtH/TtM")
    (description
     "C source code and R wrappers for the tth/ttm TeX-to-HTML/MathML translators.")
    (license license:gpl2)))

(define-public r-ttdo
  (package
    (name "r-ttdo")
    (version "0.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttdo" version))
              (sha256
               (base32
                "0i0qw4zxi1cbqzdfxfdrm2vfppiddgsyf795wny6hz03fl416xkp"))))
    (properties `((upstream-name . "ttdo")))
    (build-system r-build-system)
    (propagated-inputs (list r-tinytest r-diffobj))
    (home-page "https://github.com/eddelbuettel/ttdo/")
    (synopsis "Extend 'tinytest' with 'diffobj'")
    (description
     "The tinytest package offers a light-weight zero-dependency unit-testing
framework to which this package adds support of the diffobj package for
diff'-style comparison of R objects.")
    (license license:gpl2+)))

(define-public r-ttcg
  (package
    (name "r-ttcg")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttcg" version))
              (sha256
               (base32
                "1kha6jp89r8qx5rycwlcl1dprw33j71yng03k9l7q3b7d4lz4bg5"))))
    (properties `((upstream-name . "ttcg")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://git.sr.ht/~hckiang/ttcg")
    (synopsis "Three-Term Conjugate Gradient for Unconstrained Optimization")
    (description
     "Some accelerated three-term conjugate gradient algorithms implemented purely in
R with the same user interface as optim().  The search directions and
acceleration scheme are described in Andrei, N. (2013)
<doi:10.1016/j.amc.2012.11.097>, Andrei, N. (2013)
<doi:10.1016/j.cam.2012.10.002>, and Andrei, N (2015)
<doi:10.1007/s11075-014-9845-9>.  Line search is done by a hybrid algorithm
incorporating the ideas in Oliveia and Takahashi (2020) <doi:10.1145/3423597>
and More and Thuente (1994) <doi:10.1145/192115.192132>.")
    (license license:gpl3)))

(define-public r-ttca
  (package
    (name "r-ttca")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TTCA" version))
              (sha256
               (base32
                "16slr4c2nwbchsg6fk5prq22p2v4cjxzk93wd3xggav2lzrf8a5h"))))
    (properties `((upstream-name . "TTCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-venndiagram
                             r-tcltk2
                             r-rismed
                             r-quantreg
                             r-matrix
                             r-mass))
    (home-page "https://cran.r-project.org/package=TTCA")
    (synopsis "Transcript Time Course Analysis")
    (description
     "The analysis of microarray time series promises a deeper insight into the
dynamics of the cellular response following stimulation.  A common observation
in this type of data is that some genes respond with quick, transient dynamics,
while other genes change their expression slowly over time.  The existing
methods for detecting significant expression dynamics often fail when the
expression dynamics show a large heterogeneity.  Moreover, these methods often
cannot cope with irregular and sparse measurements.  The method proposed here is
specifically designed for the analysis of perturbation responses.  It combines
different scores to capture fast and transient dynamics as well as slow
expression changes, and performs well in the presence of low replicate numbers
and irregular sampling times.  The results are given in the form of tables
including links to figures showing the expression dynamics of the respective
transcript.  These allow to quickly recognise the relevance of detection, to
identify possible false positives and to discriminate early and late changes in
gene expression.  An extension of the method allows the analysis of the
expression dynamics of functional groups of genes, providing a quick overview of
the cellular response.  The performance of this package was tested on microarray
data derived from lung cancer cells stimulated with epidermal growth factor
(EGF).  Paper: Albrecht, Marco, et al. (2017)<DOI:10.1186/s12859-016-1440-8>.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-ttbbeer
  (package
    (name "r-ttbbeer")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttbbeer" version))
              (sha256
               (base32
                "1azffcizm3460kxvrxxkilc6qxspyi247x8drrw5ywfichwhmdhc"))))
    (properties `((upstream-name . "ttbbeer")))
    (build-system r-build-system)
    (home-page "https://github.com/jasdumas/ttbbeer")
    (synopsis "US Beer Statistics from TTB")
    (description
     "U.S. Department of the Treasury, Alcohol and Tobacco Tax and Trade Bureau (TTB)
collects data and reports on monthly beer industry production and operations.
This data package includes a collection of 10 years (2006 - 2015) worth of data
on materials used at U.S. breweries in pounds reported by the Brewer's Report of
Operations and the Quarterly Brewer's Report of Operations forms, ready for data
analysis.  This package also includes historical tax rates on distilled spirits,
wine, beer, champagne, and tobacco products as individual data sets.")
    (license license:cc0)))

(define-public r-ttbary
  (package
    (name "r-ttbary")
    (version "0.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ttbary" version))
              (sha256
               (base32
                "0dp9jjl33p0r67nk7qxwjkniy7pxp8w7xbymm61hl29hqqbpmszh"))))
    (properties `((upstream-name . "ttbary")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random
                             r-spatstat-model
                             r-spatstat-linnet
                             r-spatstat-geom
                             r-spatstat-explore
                             r-spatstat
                             r-rcpp))
    (home-page "https://cran.r-project.org/package=ttbary")
    (synopsis "Barycenter Methods for Spatial Point Patterns")
    (description
     "Computes a point pattern in R^2 or on a graph that is representative of a
collection of many data patterns.  The result is an approximate barycenter (also
known as FrÃ©chet mean or prototype) based on a transport-transform metric.
Possible choices include Optimal SubPattern Assignment (OSPA) and Spike Time
metrics.  Details can be found in MÃ¼ller, Schuhmacher and Mateu (2020)
<doi:10.1007/s11222-020-09932-y>.")
    (license license:gpl2+)))

(define-public r-ttainterfacetrendanalysis
  (package
    (name "r-ttainterfacetrendanalysis")
    (version "1.5.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TTAinterfaceTrendAnalysis" version))
              (sha256
               (base32
                "14bws9z57prnbb30ivl8zzyqi9hrj0nhm3m5i249rn2kyzw70gw1"))))
    (properties `((upstream-name . "TTAinterfaceTrendAnalysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tcltk2
                             r-stlplus
                             r-rkt
                             r-reshape
                             r-relimp
                             r-pastecs
                             r-nlme
                             r-mvtnorm
                             r-multcomp
                             r-e1071))
    (home-page "https://CRAN.R-project.org/package=TTAinterfaceTrendAnalysis")
    (synopsis "Temporal Trend Analysis Graphical Interface")
    (description
     "This interface was created to develop a standard procedure to analyse temporal
trend in the framework of the OSPAR convention.  The analysis process run
through 4 successive steps : 1) manipulate your data, 2) select the parameters
you want to analyse, 3) build your regulated time series, 4) perform diagnosis
and analysis and 5) read the results.  Statistical analysis call other package
function such as Kendall tests or cusum() function.")
    (license license:gpl2+)))

(define-public r-tt
  (package
    (name "r-tt")
    (version "0.98")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TT" version))
              (sha256
               (base32
                "0vnj2lmhn8qk3p8m8kvamp1af71iw3l75ds0mm9c8vinw2z4fzg3"))))
    (properties `((upstream-name . "TT")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr
                             r-magrittr
                             r-htmlwidgets
                             r-dt
                             r-dplyr
                             r-data-tree))
    (home-page "https://cran.r-project.org/package=TT")
    (synopsis "Display Tree Structured Data using Datatable Widget (DT)")
    (description
     "Wrapper of datatable widget, allowing display of data.tree objects.  All
arguments of the data.tree become columns and each node is a row.  Adds column
with buttons allowing folding and unfolding the levels.")
    (license license:expat)))

(define-public r-tsxtreme
  (package
    (name "r-tsxtreme")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsxtreme" version))
              (sha256
               (base32
                "1725rkdq377z3c06hc2g9l0dwgfy5gz3pgygpz1pyy83s5c7j869"))))
    (properties `((upstream-name . "tsxtreme")))
    (build-system r-build-system)
    (propagated-inputs (list r-tictoc r-mvtnorm r-mass r-evd))
    (home-page "https://cran.r-project.org/package=tsxtreme")
    (synopsis "Bayesian Modelling of Extremal Dependence in Time Series")
    (description
     "Characterisation of the extremal dependence structure of time series, avoiding
pre-processing and filtering as done typically with peaks-over-threshold
methods.  It uses the conditional approach of Heffernan and Tawn (2004)
<DOI:10.1111/j.1467-9868.2004.02050.x> which is very flexible in terms of
extremal and asymptotic dependence structures, and Bayesian methods improve
efficiency and allow for deriving measures of uncertainty.  For example, the
extremal index, related to the size of clusters in time, can be estimated and
samples from its posterior distribution obtained.")
    (license license:gpl2+)))

(define-public r-tswge
  (package
    (name "r-tswge")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tswge" version))
              (sha256
               (base32
                "1pl10n20w2vz95q28zjiafcjmjij586h33s5b0nqvxfwlask6xbw"))))
    (properties `((upstream-name . "tswge")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-waveslim
                             r-tidyverse
                             r-signal
                             r-polynomf
                             r-plotrix
                             r-nnfor
                             r-mass
                             r-magrittr
                             r-ggplot2
                             r-forecast
                             r-dplyr
                             r-astsa))
    (home-page "https://cran.r-project.org/package=tswge")
    (synopsis "Time Series for Data Science")
    (description
     "Accompanies the texts Time Series for Data Science with R by Woodward, Sadler
and Robertson & Applied Time Series Analysis with R, 2nd edition by Woodward,
Gray, and Elliott.  It is helpful for data analysis and for time series
instruction.")
    (license license:gpl2)))

(define-public r-tsvr
  (package
    (name "r-tsvr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsvr" version))
              (sha256
               (base32
                "1h8yjnw7f8w6m19jh3a518vkzjcmbhl3lk15d1jyhy8p4ajzzjdx"))))
    (properties `((upstream-name . "tsvr")))
    (build-system r-build-system)
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=tsvr")
    (synopsis "Timescale-Specific Variance Ratio for Use in Community Ecology")
    (description
     "Tools for timescale decomposition of the classic variance ratio of community
ecology.  Tools are as described in Zhao et al (in prep), extending commonly
used methods introduced by Peterson et al (1975) <doi: 10.2307/1936306>.")
    (license license:gpl3)))

(define-public r-tsviz
  (package
    (name "r-tsviz")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsviz" version))
              (sha256
               (base32
                "099ga750kr9hrkd8vaxhz6h4gha6zfr9jzqwrmgms2h2h1a7jxr7"))))
    (properties `((upstream-name . "tsviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyhelper
                             r-shiny
                             r-plotly
                             r-miniui
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (home-page "https://github.com/donlelef/tsviz")
    (synopsis "Easy and Interactive Time Series Visualization")
    (description
     "An RStudio add-in to visualize time series.  Time series are searched in the
global environment as data.frame objects with a column of type date and a column
of type numeric.  Interactive charts are produced using plotly package.")
    (license license:expat)))

(define-public r-tsvc
  (package
    (name "r-tsvc")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSVC" version))
              (sha256
               (base32
                "0c2dwsb17al6vfgk38xlbzww08xa1i2lji1bhzc3zlp7nb4mkxy8"))))
    (properties `((upstream-name . "TSVC")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-mgcv))
    (home-page "https://cran.r-project.org/package=TSVC")
    (synopsis "Tree-Structured Modelling of Varying Coefficients")
    (description
     "Fitting tree-structured varying coefficient models (Berger et al. (2019),
<doi:10.1007/s11222-018-9804-8>).  Simultaneous detection of covariates with
varying coefficients and effect modifiers that induce varying coefficients if
they are present.")
    (license license:gpl2)))

(define-public r-tsutils
  (package
    (name "r-tsutils")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsutils" version))
              (sha256
               (base32
                "1r77j13vsd0p6s2c3bva5ayhapiswsr6vfacb3i448h5vh551kgq"))))
    (properties `((upstream-name . "tsutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-plotrix r-mapa r-forecast))
    (home-page "https://github.com/trnnick/tsutils/")
    (synopsis "Time Series Exploration, Modelling and Forecasting")
    (description
     "Includes: (i) tests and visualisations that can help the modeller explore time
series components and perform decomposition; (ii) modelling shortcuts, such as
functions to construct lagmatrices and seasonal dummy variables of various
forms; (iii) an implementation of the Theta method; (iv) tools to facilitate the
design of the forecasting process, such as ABC-XYZ analyses; and (v) \"quality of
life\" functions, such as treating time series for trailing and leading values.")
    (license license:gpl3)))

(define-public r-tstutorial
  (package
    (name "r-tstutorial")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSTutorial" version))
              (sha256
               (base32
                "0kbs703nmi1z19r6bcz243sm50ijxwmsx6kcw0g18wmz7v8bj9c5"))))
    (properties `((upstream-name . "TSTutorial")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=TSTutorial")
    (synopsis "Fitting and Predict Time Series Interactive Laboratory")
    (description
     "Interactive laboratory of Time Series based in Box-Jenkins methodology.")
    (license license:gpl2+)))

(define-public r-tstools
  (package
    (name "r-tstools")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tstools" version))
              (sha256
               (base32
                "0jvagd64zqaqqch78y7pdxmds5mfyy53qafs8fqzd0d0rzjsks0j"))))
    (properties `((upstream-name . "tstools")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-yaml r-xts r-jsonlite r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mbannert/tstools/")
    (synopsis "Time Series Toolbox for Official Statistics")
    (description
     "Plot official statistics time series conveniently: automatic legends, highlight
windows, stacked bar chars with positive and negative contributions, sum-as-line
option, two y-axes with automatic horizontal grids that fit both axes and other
popular chart types.  tstools comes with a plethora of defaults to let you plot
without setting an abundance of parameters first, but gives you the flexibility
to tweak the defaults.  In addition to charts, tstools provides a super fast,
data.table backed time series I/O that allows the user to export / import long
format, wide format and transposed wide format data to various file types.")
    (license license:gpl2)))

(define-public r-tssvm
  (package
    (name "r-tssvm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSSVM" version))
              (sha256
               (base32
                "07jf5s557j2xr5918fa0rkzz0ivb01acyzw2cbky92wjd21qa97s"))))
    (properties `((upstream-name . "TSSVM")))
    (build-system r-build-system)
    (propagated-inputs (list r-forecast r-e1071))
    (home-page "https://cran.r-project.org/package=TSSVM")
    (synopsis "Time Series Forecasting using SVM Model")
    (description
     "Implementation and forecasting univariate time series data using the Support
Vector Machine model.  Support Vector Machine is one of the prominent machine
learning approach for non-linear time series forecasting.  For method details
see Kim, K. (2003) <doi:10.1016/S0925-2312(03)00372-2>.")
    (license license:gpl3)))

(define-public r-tsstudio
  (package
    (name "r-tsstudio")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSstudio" version))
              (sha256
               (base32
                "1r45s4xgc9a2rdh225xzmwr7g6qahmjj7v1a6g7haghnhaq6hv4s"))))
    (properties `((upstream-name . "TSstudio")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-viridis
                             r-tsibble
                             r-tidyr
                             r-scales
                             r-reshape2
                             r-rcolorbrewer
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-future-apply
                             r-future
                             r-forecasthybrid
                             r-forecast
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RamiKrispin/TSstudio")
    (synopsis "Functions for Time Series Analysis and Forecasting")
    (description
     "This package provides a set of tools for descriptive and predictive analysis of
time series data.  That includes functions for interactive visualization of time
series objects and as well utility functions for automation time series
forecasting.")
    (license license:expat)))

(define-public r-tsss
  (package
    (name "r-tsss")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSSS" version))
              (sha256
               (base32
                "06wnbj741yyi5b483zhbaccvqpbg8lh3z9vnrxy64x28hnn79cly"))))
    (properties `((upstream-name . "TSSS")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=TSSS")
    (synopsis "Time Series Analysis with State Space Model")
    (description
     "This package provides functions for statistical analysis, modeling and
simulation of time series with state space model, based on the methodology in
Kitagawa (2020, ISBN: 978-0-367-18733-0).")
    (license license:gpl2+)))

(define-public r-tssmoothing
  (package
    (name "r-tssmoothing")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSsmoothing" version))
              (sha256
               (base32
                "1m4y6hfw5ghqmvbnha05w6k0abbr08xdcahmh897g68b06vcrjsl"))))
    (properties `((upstream-name . "TSsmoothing")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-gridextra r-ggplot2))
    (home-page "https://cran.r-project.org/package=TSsmoothing")
    (synopsis
     "Trend Estimation of Univariate and Bivariate Time Series with Controlled Smoothness")
    (description
     "It performs the smoothing approach provided by penalized least squares for
univariate and bivariate time series, as proposed by Guerrero (2007) and Gerrero
et al. (2017).  This allows to estimate the time series trend by controlling the
amount of resulting (joint) smoothness. --- Guerrero, V.M (2007)
<DOI:10.1016/j.spl.2007.03.006>.  Guerrero, V.M; Islas-Camargo, A. and
Ramirez-Ramirez, L.L. (2017) <DOI:10.1080/03610926.2015.1133826>.")
    (license license:gpl3)))

(define-public r-tssim
  (package
    (name "r-tssim")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tssim" version))
              (sha256
               (base32
                "154snb0npy8zbkspp475nv9rvv1ls6rbgxz3jr152j79vsiis3ng"))))
    (properties `((upstream-name . "tssim")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-tsbox r-timedate r-dsa))
    (home-page "https://cran.r-project.org/package=tssim")
    (synopsis "Simulation of Daily and Monthly Time Series")
    (description
     "Flexible simulation of time series using time series components, including
seasonal, calendar and outlier effects.  Algorithm described in Ollech, D.
(2021) <doi:10.1515/jtse-2020-0028>.")
    (license license:gpl3)))

(define-public r-tsselect
  (package
    (name "r-tsselect")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsSelect" version))
              (sha256
               (base32
                "0ysijzhhwaj5n7h50jacshnla6d0h61q0f6lj19ic0lwvlz4yazy"))))
    (properties `((upstream-name . "tsSelect")))
    (build-system r-build-system)
    (propagated-inputs (list r-forecast))
    (home-page "https://cran.r-project.org/package=tsSelect")
    (synopsis "Execution of Time Series Models")
    (description
     "Execution of various time series models and choosing the best one either by a
specific error metric or by picking the best one by majority vote.  The models
are based on the \"forecast\" package, written by Prof. Rob Hyndman.")
    (license license:gpl2)))

(define-public r-tss-restrend
  (package
    (name "r-tss-restrend")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSS.RESTREND" version))
              (sha256
               (base32
                "1la1ff9ajcabdsz5f2761647304fpwp779gv0gjds4mg25rf6n2f"))))
    (properties `((upstream-name . "TSS.RESTREND")))
    (build-system r-build-system)
    (propagated-inputs (list r-strucchange
                             r-rcpproll
                             r-mblm
                             r-ggplot2
                             r-broom
                             r-bfast))
    (home-page "https://cran.r-project.org/package=TSS.RESTREND")
    (synopsis "Time Series Segmentation of Residual Trends")
    (description
     "Time Series Segmented Residual Trends is a method for the automated detection of
land degradation from remotely sensed vegetation and climate datasets.
TSS-RESTREND incorporates aspects of two existing degradation detection methods:
RESTREND which is used to control for climate variability, and BFAST which is
used to look for structural changes in the ecosystem.  The full details of the
testing and justification of the TSS-RESTREND method (version 0.1.02) are
published in Burrell et al., (2017). <doi:10.1016/j.rse.2017.05.018>.  The
changes to the method introduced in version 0.2.03 focus on the inclusion of
temperature as an additional climate variable.  This allows for land degradation
assessment in temperature limited drylands.  A paper that details this work is
currently under review.  There are also a number of bug fixes and speed
improvements.  Version 0.3.0 introduces additional attribution for eCO2, climate
change and climate variability the details of which are in press in Burrell et
al., (2020).  The version under active development and additional example
scripts showing how the package can be applied can be found at
<https://github.com/ArdenB/TSSRESTREND>.")
    (license license:gpl3)))

(define-public r-tsrobprep
  (package
    (name "r-tsrobprep")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsrobprep" version))
              (sha256
               (base32
                "0y7h8kh721r859b7y5vxh4q7dmjlx50qcc6pib204x3hhzv1yyrc"))))
    (properties `((upstream-name . "tsrobprep")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-texttinyr
                             r-rdpack
                             r-quantreg
                             r-mclust
                             r-matrix
                             r-mass
                             r-glmnet))
    (home-page "https://cran.r-project.org/package=tsrobprep")
    (synopsis "Robust Preprocessing of Time Series Data")
    (description
     "This package provides methods for handling the missing values outliers are
introduced in this package.  The recognized missing values and outliers are
replaced using a model-based approach.  The model may consist of both
autoregressive components and external regressors.  The methods work robust and
efficient, and they are fully tunable.  The primary motivation for writing the
package was preprocessing of the energy systems data, e.g. power plant
production time series, but the package could be used with any time series data.
 For details, see Narajewski et al. (2021) <doi:10.1016/j.softx.2021.100809>.")
    (license license:expat)))

(define-public r-tsriadditive
  (package
    (name "r-tsriadditive")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsriadditive" version))
              (sha256
               (base32
                "1zk97vz5ag6j0r8w3b5kgl2cx628jmdy73spmwmsw7x5yc24901d"))))
    (properties `((upstream-name . "tsriadditive")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://onlinelibrary.wiley.com/doi/abs/10.1002/sim.8071")
    (synopsis "Two Stage Residual Inclusion Additive Hazards Estimator")
    (description
     "Additive hazards models with two stage residual inclusion method are fitted
under either survival data or competing risks data.  The estimator incorporates
an instrumental variable and therefore can recover causal estimand in the
presence of unmeasured confounding under some assumptions.  A.Ying, R. Xu and J.
Murphy. (2019) <doi:10.1002/sim.8071>.")
    (license license:lgpl2.0+)))

(define-public r-tsrepr
  (package
    (name "r-tsrepr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSrepr" version))
              (sha256
               (base32
                "1bplh808byfi86rz2bs1ikiggg0a1k0z282vidhygvl927hz2fa4"))))
    (properties `((upstream-name . "TSrepr")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavelets
                             r-rcpp
                             r-quantreg
                             r-mgcv
                             r-mass
                             r-dtt))
    (native-inputs (list r-knitr))
    (home-page "https://petolau.github.io/package/")
    (synopsis "Time Series Representations")
    (description
     "This package provides methods for representations (i.e.  dimensionality
reduction, preprocessing, feature extraction) of time series to help more
accurate and effective time series data mining.  Non-data adaptive, data
adaptive, model-based and data dictated (clipped) representation methods are
implemented.  Also various normalisation methods (min-max, z-score, Box-Cox,
Yeo-Johnson), and forecasting accuracy measures are implemented.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tsqn
  (package
    (name "r-tsqn")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsqn" version))
              (sha256
               (base32
                "1iv1wwa6a9824dbgfk5a609szppc3a8j250z74hb8csjvwwx9qq9"))))
    (properties `((upstream-name . "tsqn")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase r-mass r-fracdiff))
    (home-page "https://cran.r-project.org/package=tsqn")
    (synopsis
     "Applications of the Qn Estimator to Time Series (Univariate and Multivariate)")
    (description
     "Time Series Qn is a package with applications of the Qn estimator of Rousseeuw
and Croux (1993) <doi:10.1080/01621459.1993.10476408> to univariate and
multivariate Time Series in time and frequency domains.  More specifically, the
robust estimation of autocorrelation or autocovariance matrix functions from Ma
and Genton (2000, 2001) <doi:10.1111/1467-9892.00203>,
<doi:10.1006/jmva.2000.1942> and Cotta (2017) <doi:10.13140/RG.2.2.14092.10883>
are provided.  The robust pseudo-periodogram of Molinares et.  al. (2009)
<doi:10.1016/j.jspi.2008.12.014> is also given.  This packages also provides the
M-estimator of the long-memory parameter d based on the robustification of the
GPH estimator proposed by Reisen et al. (2017) <doi:10.1016/j.jspi.2017.02.008>.")
    (license license:gpl2+)))

(define-public r-tspred
  (package
    (name "r-tspred")
    (version "5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSPred" version))
              (sha256
               (base32
                "14dzpm5i5iml9kb49rnw7kq1ga03l4c6m485b1p8p3ya0n6mivkl"))))
    (properties `((upstream-name . "TSPred")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavelets
                             r-vars
                             r-tfdatasets
                             r-rsnns
                             r-rlibeemd
                             r-randomforest
                             r-plyr
                             r-nnet
                             r-mumin
                             r-modelmetrics
                             r-magrittr
                             r-kfas
                             r-keras
                             r-forecast
                             r-emd
                             r-elmnnrcpp
                             r-e1071
                             r-dplyr))
    (home-page "https://github.com/RebeccaSalles/TSPred/wiki")
    (synopsis "Functions for Benchmarking Time Series Prediction")
    (description
     "This package provides functions for defining and conducting a time series
prediction process including pre(post)processing, decomposition, modelling,
prediction and accuracy assessment.  The generated models and its yielded
prediction errors can be used for benchmarking other time series prediction
methods and for creating a demand for the refinement of such methods.  For this
purpose, benchmark data from prediction competitions may be used.")
    (license license:gpl2+)))

(define-public r-tspmeta
  (package
    (name "r-tspmeta")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tspmeta" version))
              (sha256
               (base32
                "028jbbd0pwpbjq4r6jcc1h0p7c4djcb9d2mvgzw1rmpphaxjvrkd"))))
    (properties `((upstream-name . "tspmeta")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-tsp
                             r-stringr
                             r-splancs
                             r-mass
                             r-ggplot2
                             r-fpc
                             r-checkmate
                             r-bbmisc))
    (home-page "https://github.com/berndbischl/tspmeta")
    (synopsis
     "Instance Feature Calculation and Evolutionary Instance Generation for the Traveling Salesman Problem")
    (description
     "Instance feature calculation and evolutionary instance generation for the
traveling salesman problem.  Also contains code to \"morph\" two TSP instances
into each other.  And the possibility to conveniently run a couple of solvers on
TSP instances.")
    (license license:bsd-3)))

(define-public r-tspi
  (package
    (name "r-tspi")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsPI" version))
              (sha256
               (base32
                "00p7275iq8qn6c6dpqjr5s9fzc0a6njqqi9gvqnh5s9lfx9mbk1v"))))
    (properties `((upstream-name . "tsPI")))
    (build-system r-build-system)
    (propagated-inputs (list r-kfas))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=tsPI")
    (synopsis
     "Improved Prediction Intervals for ARIMA Processes and Structural Time Series")
    (description
     "Prediction intervals for ARIMA and structural time series models using
importance sampling approach with uninformative priors for model parameters,
leading to more accurate coverage probabilities in frequentist sense.  Instead
of sampling the future observations and hidden states of the state space
representation of the model, only model parameters are sampled, and the method
is based solving the equations corresponding to the conditional coverage
probability of the prediction intervals.  This makes method relatively fast
compared to for example MCMC methods, and standard errors of prediction limits
can also be computed straightforwardly.")
    (license license:gpl3)))

(define-public r-tsoutliers
  (package
    (name "r-tsoutliers")
    (version "0.6-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsoutliers" version))
              (sha256
               (base32
                "02qd7ky416yp2l4cfl2yl7ckr2aidkps9cxkk03r9r7c5247c6zh"))))
    (properties `((upstream-name . "tsoutliers")))
    (build-system r-build-system)
    (propagated-inputs (list r-forecast))
    (home-page "https://jalobe.com")
    (synopsis "Detection of Outliers in Time Series")
    (description
     "Detection of outliers in time series following the Chen and Liu (1993)
<DOI:10.2307/2290724> procedure.  Innovational outliers, additive outliers,
level shifts, temporary changes and seasonal level shifts are considered.")
    (license license:gpl2)))

(define-public r-tsna
  (package
    (name "r-tsna")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsna" version))
              (sha256
               (base32
                "0rgzdf60j8ahi0zgypkj7wd7y7ghrkymc48kjfyz9w3ksmrzgqjf"))))
    (properties `((upstream-name . "tsna")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common r-networkdynamic r-network))
    (native-inputs (list r-knitr))
    (home-page "http://statnet.org/")
    (synopsis "Tools for Temporal Social Network Analysis")
    (description
     "Temporal SNA tools for continuous- and discrete-time longitudinal networks
having vertex, edge, and attribute dynamics stored in the networkDynamic format.
 This work was supported by grant R01HD68395 from the National Institute of
Health.")
    (license license:gpl3)))

(define-public r-tsmsn
  (package
    (name "r-tsmsn")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSMSN" version))
              (sha256
               (base32
                "0zy9r6i1p161h1zh0vnz1npsh48q3nc2c5hcgzvf78nfznnn6wg1"))))
    (properties `((upstream-name . "TSMSN")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-progress r-numderiv r-mvtnorm))
    (home-page "https://cran.r-project.org/package=TSMSN")
    (synopsis "Truncated Scale Mixtures of Skew-Normal Distributions")
    (description
     "Return the first four moments, estimation of parameters and sample of the TSMSN
distributions (Skew Normal, Skew t, Skew Slash or Skew Contaminated Normal).")
    (license license:expat)))

(define-public r-tsmp
  (package
    (name "r-tsmp")
    (version "0.4.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsmp" version))
              (sha256
               (base32
                "129vzazhcxynmi8nki0amm5xf57ji0fik0j6aj7r9izh4wq6lysn"))))
    (properties `((upstream-name . "tsmp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjsonio
                             r-rcppparallel
                             r-rcpp
                             r-progress
                             r-magrittr
                             r-foreach
                             r-dosnow
                             r-checkmate
                             r-audio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/matrix-profile-foundation/tsmp")
    (synopsis "Time Series with Matrix Profile")
    (description
     "This package provides a toolkit implementing the Matrix Profile concept that was
created by CS-UCR <http://www.cs.ucr.edu/~eamonn/MatrixProfile.html>.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-tsmodel
  (package
    (name "r-tsmodel")
    (version "0.6-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsModel" version))
              (sha256
               (base32
                "16cyq4xisrp4i8bd8wayzzk08ws0rfq9zrafphb9cssx50gbqb8q"))))
    (properties `((upstream-name . "tsModel")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tsModel")
    (synopsis "Time Series Modeling for Air Pollution and Health")
    (description "Tools for specifying time series regression models.")
    (license license:gpl2+)))

(define-public r-tsmn
  (package
    (name "r-tsmn")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSMN" version))
              (sha256
               (base32
                "12wgcc7szbcbk3d1a17wz96rlwp5l39cn0i03hjsb0sbrs7mjwg5"))))
    (properties `((upstream-name . "TSMN")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSMN")
    (synopsis "Truncated Scale Mixtures of Normal Distributions")
    (description
     "Return the first four moments of the SMN distributions (Normal, Student-t,
Pearson VII, Slash or Contaminated Normal).")
    (license license:gpl3+)))

(define-public r-tslstm
  (package
    (name "r-tslstm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSLSTM" version))
              (sha256
               (base32
                "0q00h8hf5xdwvpw1z7f2zxsbwynby1qdzbafdlsrxi0l51mz5r76"))))
    (properties `((upstream-name . "TSLSTM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsutils r-tensorflow r-keras))
    (home-page "https://cran.r-project.org/package=TSLSTM")
    (synopsis
     "Long Short Term Memory (LSTM) Model for Time Series Forecasting")
    (description
     "The LSTM (Long Short-Term Memory) model is a Recurrent Neural Network (RNN)
based architecture that is widely used for time series forecasting.  Min-Max
transformation has been used for data preparation.  Here, we have used one LSTM
layer as a simple LSTM model and a Dense layer is used as the output layer.
Then, compile the model using the loss function, optimizer and metrics.  This
package is based on Keras and TensorFlow modules and the algorithm of Paul and
Garai (2021) <doi:10.1007/s00500-021-06087-4>.")
    (license license:gpl3)))

(define-public r-tsir
  (package
    (name "r-tsir")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsiR" version))
              (sha256
               (base32
                "0xzcfdad1z8336wnsrk9sy21psd898wwkdkndq7dshqwp2rj2kxl"))))
    (properties `((upstream-name . "tsiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-kernlab r-ggplot2))
    (home-page "https://cran.r-project.org/package=tsiR")
    (synopsis "An Implementation of the TSIR Model")
    (description
     "An implementation of the time-series Susceptible-Infected-Recovered (TSIR) model
using a number of different fitting options for infectious disease time series
data.  The manuscript based on this package can be found here
<doi:10.1371/journal.pone.0185528>.  The method implemented here is described by
Finkenstadt and Grenfell (2000) <doi:10.1111/1467-9876.00187>.")
    (license license:gpl3)))

(define-public r-tsintermittent
  (package
    (name "r-tsintermittent")
    (version "1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsintermittent" version))
              (sha256
               (base32
                "1zg7gacrcf9ykzhp90vbgmqx9f4pvr5l600g1yfki11r8q8jhx62"))))
    (properties `((upstream-name . "tsintermittent")))
    (build-system r-build-system)
    (propagated-inputs (list r-mapa))
    (home-page
     "https://kourentzes.com/forecasting/2014/06/23/intermittent-demand-forecasting-package-for-r/")
    (synopsis "Intermittent Time Series Forecasting")
    (description
     "Time series methods for intermittent demand forecasting.  Includes Croston's
method and its variants (Moving Average, SBA), and the TSB method.  Users can
obtain optimal parameters on a variety of loss functions, or use fixed ones
(Kourenztes (2014) <doi:10.1016/j.ijpe.2014.06.007>).  Intermittent time series
classification methods and iMAPA that uses multiple temporal aggregation levels
are also provided (Petropoulos & Kourenztes (2015) <doi:10.1057/jors.2014.62>).")
    (license license:gpl2+)))

(define-public r-tsibbletalk
  (package
    (name "r-tsibbletalk")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsibbletalk" version))
              (sha256
               (base32
                "14j1gpimvlz9cgxgl1n68ngkqx4w2ai92782ifrpvc57lqy9cs7v"))))
    (properties `((upstream-name . "tsibbletalk")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tsibble
                             r-shiny
                             r-rlang
                             r-r6
                             r-plotly
                             r-lubridate
                             r-glue
                             r-dplyr
                             r-dendextend
                             r-crosstalk))
    (home-page "https://cran.r-project.org/package=tsibbletalk")
    (synopsis "Interactive Graphics for Tsibble Objects")
    (description
     "This package provides a shared tsibble data easily communicates between
htmlwidgets on both client and server sides, powered by crosstalk'.  A shiny
module is provided to visually explore periodic/aperiodic temporal patterns.")
    (license license:gpl3)))

(define-public r-tsibbledata
  (package
    (name "r-tsibbledata")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsibbledata" version))
              (sha256
               (base32
                "1wh0i5rm5cp4f9hqgxjlhbsj3ag6wgdq38fpzc0gdsl84m6xvwnh"))))
    (properties `((upstream-name . "tsibbledata")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-tsibble r-rappdirs))
    (home-page "https://tsibbledata.tidyverts.org/")
    (synopsis "Diverse Datasets for 'tsibble'")
    (description
     "This package provides diverse datasets in the tsibble data structure.  These
datasets are useful for learning and demonstrating how tidy temporal data can
tidied, visualised, and forecasted.")
    (license license:gpl3)))

(define-public r-tsibble
  (package
    (name "r-tsibble")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsibble" version))
              (sha256
               (base32
                "0qb5ksj366l253rhkjpq7cpancplx2q81xn95b4ddwpnz3p16hhz"))))
    (properties `((upstream-name . "tsibble")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-lubridate
                             r-lifecycle
                             r-generics
                             r-ellipsis
                             r-dplyr
                             r-anytime))
    (native-inputs (list r-knitr))
    (home-page "https://tsibble.tidyverts.org")
    (synopsis "Tidy Temporal Data Frames and Tools")
    (description
     "This package provides a tbl_ts class (the tsibble') for temporal data in an
data- and model-oriented format.  The tsibble provides tools to easily
manipulate and analyse temporal data, such as filling in time gaps and
aggregating over calendar periods.")
    (license license:gpl3)))

(define-public r-tshrc
  (package
    (name "r-tshrc")
    (version "0.1-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSHRC" version))
              (sha256
               (base32
                "13x5l0y0nh972p39s32dv8byds19g8265s2mphbrzz1v59aq0xk3"))))
    (properties `((upstream-name . "TSHRC")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=TSHRC")
    (synopsis "Two Stage Hazard Rate Comparison")
    (description
     "Two-stage procedure compares hazard rate functions, which may or may not cross
each other.")
    (license license:expat)))

(define-public r-tsgsis
  (package
    (name "r-tsgsis")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSGSIS" version))
              (sha256
               (base32
                "0zrlin6xi6sv5qb18a0wi8lzldqlwa9lbwnra44w3jza3kakff7n"))))
    (properties `((upstream-name . "TSGSIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-glmnet))
    (home-page "https://cran.r-project.org/package=TSGSIS")
    (synopsis "Two Stage-Grouped Sure Independence Screening")
    (description
     "To provide a high dimensional grouped variable selection approach for detection
of whole-genome SNP effects and SNP-SNP interactions, as described in Fang et
al. (2017, under review).")
    (license license:gpl2+)))

(define-public r-tsgs
  (package
    (name "r-tsgs")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSGS" version))
              (sha256
               (base32
                "0lsl6lmyg57bbw0pm22clxvzgwz44r8pizjqn1g67c76vmrsgpd4"))))
    (properties `((upstream-name . "TSGS")))
    (build-system r-build-system)
    (propagated-inputs (list r-kernlab
                             r-genalg
                             r-fastmatch
                             r-edger
                             r-e1071
                             r-caret))
    (home-page "https://github.com/SudhirSrivastava/TSGS")
    (synopsis "Trait Specific Gene Selection using SVM and GA")
    (description
     "Obtaining relevant set of trait specific genes from gene expression data is
important for clinical diagnosis of disease and discovery of disease mechanisms
in plants and animals.  This process involves identification of relevant genes
and removal of redundant genes as much as possible from a whole gene set.  This
package returns the trait specific gene set from the high dimensional RNA-seq
count data by applying combination of two conventional machine learning
algorithms, support vector machine (SVM) and genetic algorithm (GA).  GA is used
to control and optimize the subset of genes sent to the SVM for classification
and evaluation.  Genetic algorithm uses repeated learning steps and cross
validation over number of possible solution and selects the best.  The algorithm
selects the set of genes based on a fitness function that is obtained via
support vector machines.  Using SVM as the classifier performance and the
genetic algorithm for feature selection, a set of trait specific gene set is
obtained.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-tsfngm
  (package
    (name "r-tsfngm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsfngm" version))
              (sha256
               (base32
                "1wx1imbvnc2bjvfal45zhgpz296fiydqffb0rk428xpjgp2dj6p7"))))
    (properties `((upstream-name . "tsfngm")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tsfngm")
    (synopsis "Time Series Forecasting using Nonlinear Growth Models")
    (description
     "Nonlinear growth models are extremely useful in gaining insight into the
underlying mechanism.  These models are generally mechanistic, with parameters
that have biological meaning.  This package allows you to fit and forecast time
series data using nonlinear growth models.")
    (license license:gpl3)))

(define-public r-tsfknn
  (package
    (name "r-tsfknn")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsfknn" version))
              (sha256
               (base32
                "0rl3g0qs787cy67vq25aygb9mxhd63p66a1i4p2zi906cx4xj4b3"))))
    (properties `((upstream-name . "tsfknn")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/franciscomartinezdelrio/tsfknn")
    (synopsis "Time Series Forecasting Using Nearest Neighbors")
    (description
     "Allows to forecast time series using nearest neighbors regression Francisco
Martinez, Maria P. Frias, Maria D. Perez-Godoy and Antonio J. Rivera (2017)
<doi:10.1007/s10462-017-9593-z>.  When the forecasting horizon is higher than 1,
two multi-step ahead forecasting strategies can be used.  The model built is
autoregressive, that is, it is only based on the observations of the time
series.  The nearest neighbors used in a prediction can be consulted and
plotted.")
    (license license:gpl2)))

(define-public r-tsfgrnn
  (package
    (name "r-tsfgrnn")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsfgrnn" version))
              (sha256
               (base32
                "17m9k8nvfhpk11g7f64c32sb4r6vdcgci93apcr89y8dkbw4n5ga"))))
    (properties `((upstream-name . "tsfgrnn")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/franciscomartinezdelrio/tsfgrnn")
    (synopsis "Time Series Forecasting Using GRNN")
    (description
     "This package provides a general regression neural network (GRNN) is a variant of
a Radial Basis Function Network characterized by a fast single-pass learning.
tsfgrnn allows you to forecast time series using a GRNN model Francisco Martinez
et al. (2019) <doi:10.1007/978-3-030-20521-8_17> and Francisco Martinez et al.
(2022) <doi:10.1016/j.neucom.2021.12.028>.  When the forecasting horizon is
higher than 1, two multi-step ahead forecasting strategies can be used.  The
model built is autoregressive, that is, it is only based on the observations of
the time series.  You can consult and plot how the prediction was done.  It is
also possible to assess the forecasting accuracy of the model using rolling
origin evaluation.")
    (license license:gpl2)))

(define-public r-tsfeatures
  (package
    (name "r-tsfeatures")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsfeatures" version))
              (sha256
               (base32
                "06b35b95rm72m92hhslqd31dnxp0s3k65qdbp3npkhdkw4xv9aj6"))))
    (properties `((upstream-name . "tsfeatures")))
    (build-system r-build-system)
    (propagated-inputs (list r-urca
                             r-tseries
                             r-tibble
                             r-rcpproll
                             r-purrr
                             r-future
                             r-furrr
                             r-fracdiff
                             r-forecast))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.robjhyndman.com/tsfeatures/")
    (synopsis "Time Series Feature Extraction")
    (description
     "This package provides methods for extracting various features from time series
data.  The features provided are those from Hyndman, Wang and Laptev (2013)
<doi:10.1109/ICDMW.2015.104>, Kang, Hyndman and Smith-Miles (2017)
<doi:10.1016/j.ijforecast.2016.09.004> and from Fulcher, Little and Jones (2013)
<doi:10.1098/rsif.2013.0048>.  Features include spectral entropy,
autocorrelations, measures of the strength of seasonality and trend, and so on.
Users can also define their own feature functions.")
    (license license:gpl3)))

(define-public r-tsf
  (package
    (name "r-tsf")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSF" version))
              (sha256
               (base32
                "0v3pq64yknp3n6lw6c87slv1avsv7rlb82gm670q4jzv5d174phv"))))
    (properties `((upstream-name . "TSF")))
    (build-system r-build-system)
    (propagated-inputs (list r-fracdiff r-forecast))
    (home-page "https://cran.r-project.org/package=TSF")
    (synopsis
     "Two Stage Forecasting (TSF) for Long Memory Time Series in Presence of Structural Break")
    (description
     "Forecasting of long memory time series in presence of structural break by using
TSF algorithm by Papailias and Dias (2015)
<doi:10.1016/j.ijforecast.2015.01.006>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tsewgt
  (package
    (name "r-tsewgt")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSEwgt" version))
              (sha256
               (base32
                "0j14vja4r4qvw4f94461adi1g4igx9c0az20z6bkbkkhp79xi62l"))))
    (properties `((upstream-name . "TSEwgt")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSEwgt")
    (synopsis "Total Survey Error Under Multiple, Different Weighting Schemes")
    (description
     "Calculates total survey error (TSE) for a survey under multiple, different
weighting schemes, using both scale-dependent and scale-independent metrics.
Package works directly from the data set, with no hand calculations required:
just upload a properly structured data set (see TESTWGT and its documentation),
properly input column names (see functions documentation), and run your
functions.  For more on TSE, see: Weisberg, Herbert (2005, ISBN:0-226-89128-3);
Biemer, Paul (2010) <doi:10.1093/poq/nfq058>; Biemer, Paul et.al. (2017,
ISBN:9781119041672); etc.")
    (license license:gpl2+)))

(define-public r-tsetools
  (package
    (name "r-tsetools")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSEtools" version))
              (sha256
               (base32
                "1f2rs3mkypnl9bjjqaaggj6g8kr2rmk12934fbhxcdz2vmlqxpga"))))
    (properties `((upstream-name . "TSEtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts r-quantmod r-quadprog))
    (home-page "https://cran.r-project.org/package=TSEtools")
    (synopsis "Manage Data from Stock Exchange Markets")
    (description
     "Tools to perform some descriptive data analysis for assets.  Manage the
portfolio and capital of assets.  It also downloads and organizes data from the
Tehran Stock Exchange (TSE).")
    (license license:bsd-2)))

(define-public r-tseriestarma
  (package
    (name "r-tseriestarma")
    (version "0.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tseriesTARMA" version))
              (sha256
               (base32
                "0clxwlamqhlsbi7ldwwwk24rr5miyzg71gsw31x10g6zj7hwvrvd"))))
    (properties `((upstream-name . "tseriesTARMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rugarch
                             r-rsolnp
                             r-rdpack
                             r-matrix
                             r-mathjaxr
                             r-lbfgsb3c))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=tseriesTARMA")
    (synopsis "Analysis of Nonlinear Time Series Through TARMA Models")
    (description
     "Routines for nonlinear time series analysis based on Threshold Autoregressive
Moving Average models.  It provides functions and methods for: TARMA model
fitting and forecasting, tests for threshold effects, unit-root tests based on
TARMA models.")
    (license license:gpl2+)))

(define-public r-tseriesmma
  (package
    (name "r-tseriesmma")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSeriesMMA" version))
              (sha256
               (base32
                "0dkrz3m5lh872c0q9nw4h0p6g4j1j9fn92hz8xlifpsbsyzpz63b"))))
    (properties `((upstream-name . "TSeriesMMA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSeriesMMA")
    (synopsis "Multiscale Multifractal Analysis of Time Series Data")
    (description
     "Multiscale multifractal analysis (MMA) (GieraÅtowski et al.,
2012)<DOI:10.1103/PhysRevE.85.021915> is a time series analysis method, designed
to describe scaling properties of fluctuations within the signal analyzed.  The
main result of this procedure is the so called Hurst surface h(q,s) , which is a
dependence of the local Hurst exponent h (fluctuation scaling exponent) on the
multifractal parameter q and the scale of observation s (data window width).")
    (license license:gpl2+)))

(define-public r-tseriesentropy
  (package
    (name "r-tseriesentropy")
    (version "0.6-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tseriesEntropy" version))
              (sha256
               (base32
                "04clfkpkiy5p5nxcq59c7f4v1llj1d95lvck23h1px50lvb993fv"))))
    (properties `((upstream-name . "tseriesEntropy")))
    (build-system r-build-system)
    (propagated-inputs (list r-ks r-cubature))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=tseriesEntropy")
    (synopsis "Entropy Based Analysis and Tests for Time Series")
    (description
     "This package implements an Entropy measure of dependence based on the
Bhattacharya-Hellinger-Matusita distance.  Can be used as a (nonlinear)
autocorrelation/crosscorrelation function for continuous and categorical time
series.  The package includes tests for serial dependence and nonlinearity based
on it.  Some routines have a parallel version that can be used in a
multicore/cluster environment.  The package makes use of S4 classes.")
    (license license:gpl2+)))

(define-public r-tserieschaos
  (package
    (name "r-tserieschaos")
    (version "0.1-13.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tseriesChaos" version))
              (sha256
               (base32
                "0qfrrzd0h8n9zp7wj5fl88wkiv22fs5zy8x509g316j0avm5zjr3"))))
    (properties `((upstream-name . "tseriesChaos")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve))
    (home-page "https://cran.r-project.org/package=tseriesChaos")
    (synopsis "Analysis of Nonlinear Time Series")
    (description
     "Routines for the analysis of nonlinear time series.  This work is largely
inspired by the TISEAN project, by Rainer Hegger, Holger Kantz and Thomas
Schreiber: <http://www.mpipks-dresden.mpg.de/~tisean/>.")
    (license license:gpl2)))

(define-public r-tsentropies
  (package
    (name "r-tsentropies")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSEntropies" version))
              (sha256
               (base32
                "1bwb3kyhzc6sxhvpagf4vjmh8ghx44lpc9ms4jwrsrzdhcvnfc7l"))))
    (properties `((upstream-name . "TSEntropies")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSEntropies")
    (synopsis "Time Series Entropies")
    (description
     "Computes various entropies of given time series.  This is the initial version
that includes ApEn() and SampEn() functions for calculating approximate entropy
and sample entropy.  Approximate entropy was proposed by S.M. Pincus in
\"Approximate entropy as a measure of system complexity\", Proceedings of the
National Academy of Sciences of the United States of America, 88, 2297-2301
(March 1991).  Sample entropy was proposed by J. S. Richman and J. R. Moorman in
\"Physiological time-series analysis using approximate entropy and sample
entropy\", American Journal of Physiology, Heart and Circulatory Physiology, 278,
2039-2049 (June 2000).  This package also contains FastApEn() and FastSampEn()
functions for calculating fast approximate entropy and fast sample entropy.
These are newly designed very fast algorithms, resulting from the modification
of the original algorithms.  The calculated values of these entropies are not
the same as the original ones, but the entropy trend of the analyzed time series
determines equally reliably.  Their main advantage is their speed, which is up
to a thousand times higher.  A scientific article describing their properties
has been submitted to The Journal of Supercomputing and in present time it is
waiting for the acceptance.")
    (license license:gpl3)))

(define-public r-tsentiment
  (package
    (name "r-tsentiment")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsentiment" version))
              (sha256
               (base32
                "1sa1xy1v7p166r3sc3mg66zzw72n8vsy8q636knhyl71zzbvacsw"))))
    (properties `((upstream-name . "tsentiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-tidytext
                             r-tibble
                             r-syuzhet
                             r-stringi
                             r-reshape2
                             r-httr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/hakkisabah/tsentiment")
    (synopsis "Fetching Tweet Data for Sentiment Analysis")
    (description
     "Which uses Twitter APIs for the necessary data in sentiment analysis, acts as a
middleware with the approved Twitter Application.  A special access key is given
to users who subscribe to the application with their Twitter account.  With this
special access key, the user defined keyword for sentiment analysis can be
searched in twitter recent searches and results can be obtained( more
information <https://github.com/hakkisabah/tsentiment> ).  In addition, a
service named tsentiment-services has been developed to provide all these
operations ( for more information
<https://github.com/hakkisabah/tsentiment-services> ).  After the successful
results obtained and in line with the permissions given by the user, the results
of the analysis of the word cloud and bar graph saved in the user folder
directory can be seen.  In each analysis performed, the previous analysis visual
result is deleted and this is the basic information you need to know as a
practice rule.  tsentiment package provides a free service that acts as a
middleware for easy data extraction from Twitter, and in return, the user rate
limit is reduced by 30 requests from the total limit and the remaining requests
are used.  These 30 requests are reserved for use in application analytics.  For
information about endpoints, you can refer to the limit information in the \"GET
search/tweets\" row in the Endpoints column in the list at
<https://developer.twitter.com/en/docs/twitter-api/v1/rate-limits>.")
    (license license:expat)))

(define-public r-tsensembler
  (package
    (name "r-tsensembler")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsensembler" version))
              (sha256
               (base32
                "0amb3dn96hdgy5a0j6s43mf82cdjwbz8dhz3yrjlr07nknxzirzi"))))
    (properties `((upstream-name . "tsensembler")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-xgboost
                             r-softimpute
                             r-rcpproll
                             r-ranger
                             r-pls
                             r-monmlp
                             r-kernlab
                             r-glmnet
                             r-gbm
                             r-foreach
                             r-earth
                             r-doparallel
                             r-cubist))
    (home-page "https://github.com/vcerqueira/tsensembler")
    (synopsis "Dynamic Ensembles for Time Series Forecasting")
    (description
     "This package provides a framework for dynamically combining forecasting models
for time series forecasting predictive tasks.  It leverages machine learning
models from other packages to automatically combine expert advice using
metalearning and other state-of-the-art forecasting combination approaches.  The
predictive methods receive a data matrix as input, representing an embedded time
series, and return a predictive ensemble model.  The ensemble use generic
functions predict() and forecast() to forecast future values of the time series.
 Moreover, an ensemble can be updated using methods, such as update_weights() or
update_base_models()'.  A complete description of the methods can be found in:
Cerqueira, V., Torgo, L., Pinto, F., and Soares, C. \"Arbitrated Ensemble for
Time Series Forecasting.\" to appear at: Joint European Conference on Machine
Learning and Knowledge Discovery in Databases.  Springer International
Publishing, 2017; and Cerqueira, V., Torgo, L., and Soares, C.: \"Arbitrated
Ensemble for Solar Radiation Forecasting.\" International Work-Conference on
Artificial Neural Networks.  Springer, 2017 <doi:10.1007/978-3-319-59153-7_62>.")
    (license license:gpl2+)))

(define-public r-tseind
  (package
    (name "r-tseind")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSEind" version))
              (sha256
               (base32
                "0xv968a12p9riq5nk82gq1ixglb2077c99i2a5ws6s23xzs1s29h"))))
    (properties `((upstream-name . "TSEind")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSEind")
    (synopsis "Total Survey Error (Independent Samples)")
    (description
     "Calculates total survey error (TSE) for one or more surveys, using both
scale-dependent and scale-independent metrics.  Package works directly from the
data set, with no hand calculations required: just upload a properly structured
data set (see TESTIND and its documentation), properly input column names (see
functions documentation), and run your functions.  For more on TSE, see:
Weisberg, Herbert (2005, ISBN:0-226-89128-3); Biemer, Paul (2010)
<doi:10.1093/poq/nfq058>; Biemer, Paul et.al. (2017, ISBN:9781119041672); etc.")
    (license license:gpl2+)))

(define-public r-tse
  (package
    (name "r-tse")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSE" version))
              (sha256
               (base32
                "0fzdlryb8m9h6q8w0q42wpphmvm439zxk1imqzmskm48r7w6nm7w"))))
    (properties `((upstream-name . "TSE")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TSE")
    (synopsis "Total Survey Error")
    (description
     "Calculates total survey error (TSE) for one or more surveys, using common
scale-dependent and/or scale-independent metrics.  On TSE, see: Weisberg,
Herbert (2005, ISBN:0-226-89128-3); Biemer, Paul (2010)
<doi:10.1093/poq/nfq058>.")
    (license license:gpl2+)))

(define-public r-tsdyn
  (package
    (name "r-tsdyn")
    (version "11.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsDyn" version))
              (sha256
               (base32
                "0clwvgqsklmq9h5mx7g9lsw6f09cqglb77zb9xlbjh4brh2f3ljl"))))
    (properties `((upstream-name . "tsDyn")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars
                             r-urca
                             r-tserieschaos
                             r-tseries
                             r-nnet
                             r-mnormt
                             r-mgcv
                             r-matrix
                             r-mass
                             r-forecast
                             r-foreach))
    (home-page "https://github.com/MatthieuStigler/tsDyn/wiki")
    (synopsis "Nonlinear Time Series Models with Regime Switching")
    (description
     "This package implements nonlinear autoregressive (AR) time series models.  For
univariate series, a non-parametric approach is available through additive
nonlinear AR. Parametric modeling and testing for regime switching dynamics is
available when the transition is either direct (TAR: threshold AR) or smooth
(STAR: smooth transition AR, LSTAR).  For multivariate series, one can estimate
a range of TVAR or threshold cointegration TVECM models with two or three
regimes.  Tests can be conducted for TVAR as well as for TVECM (Hansen and Seo
2002 and Seo 2006).")
    (license license:gpl2+)))

(define-public r-tsdt
  (package
    (name "r-tsdt")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSDT" version))
              (sha256
               (base32
                "0h2nwlzq6p11735nhkkqz6r7lpmw98bwy9dpdmvj4wqb7c64p90p"))))
    (properties `((upstream-name . "TSDT")))
    (build-system r-build-system)
    (propagated-inputs (list r-survrm2
                             r-survival
                             r-rpart
                             r-party
                             r-modeltools
                             r-mlbench
                             r-hash))
    (home-page "https://github.com/EliLillyCo/CRAN_TSDT")
    (synopsis "Treatment-Specific Subgroup Detection Tool")
    (description
     "This package implements a method for identifying subgroups with superior
response relative to the overall sample.")
    (license license:gpl2+)))

(define-public r-tsdist
  (package
    (name "r-tsdist")
    (version "3.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSdist" version))
              (sha256
               (base32
                "0qbsmaifwx4279w0rg111l8jdid12ljcy25ailn2d8gk47r4pv9z"))))
    (properties `((upstream-name . "TSdist")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tsclust
                             r-proxy
                             r-pdc
                             r-longitudinaldata
                             r-locpol
                             r-kernsmooth
                             r-dtw
                             r-cluster))
    (home-page "https://cran.r-project.org/package=TSdist")
    (synopsis "Distance Measures for Time Series Data")
    (description
     "This package provides a set of commonly used distance measures and some
additional functions which, although initially not designed for this purpose,
can be used to measure the dissimilarity between time series.  These measures
can be used to perform clustering, classification or other data mining tasks
which require the definition of a distance measure between time series.  U.
Mori, A. Mendiburu and J.A. Lozano (2016), <doi:10.32614/RJ-2016-058>.")
    (license license:gpl2+)))

(define-public r-tsdisaggregation
  (package
    (name "r-tsdisaggregation")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSdisaggregation" version))
              (sha256
               (base32
                "1c1xsjhmm76hxin0hzr5bl94k5y3vwaprdrarpfil142cm8qnvnj"))))
    (properties `((upstream-name . "TSdisaggregation")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-withr r-rdpack r-matrix r-lars))
    (home-page "https://cran.r-project.org/package=TSdisaggregation")
    (synopsis "High-Dimensional Temporal Disaggregation")
    (description
     "First - Generates (potentially high-dimensional) high-frequency and
low-frequency series for simulation studies in temporal disaggregation; Second -
a toolkit utilizing temporal disaggregation and benchmarking techniques with a
low-dimensional matrix of indicator series previously proposed in Dagum and
Cholette (2006, ISBN:978-0-387-35439-2) ; and Third - novel techniques proposed
by Mosley, Gibberd and Eckley (2021) <arXiv:2108.05783> for disaggregating
low-frequency series in the presence of high-dimensional indicator matrices.")
    (license license:gpl3+)))

(define-public r-tsdisagg2
  (package
    (name "r-tsdisagg2")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsdisagg2" version))
              (sha256
               (base32
                "1vjypf9d4rdprpgxfsgpccn412kvar59v341ridq2hcdp7hfb70s"))))
    (properties `((upstream-name . "tsdisagg2")))
    (build-system r-build-system)
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=tsdisagg2")
    (synopsis "Time Series Disaggregation")
    (description
     "Disaggregates low frequency time series data to higher frequency series.
Implements the following methods for temporal disaggregation: Boot, Feibes and
Lisman (1967) <DOI:10.2307/2985238>, Chow and Lin (1971) <DOI:10.2307/1928739>,
Fernandez (1981) <DOI:10.2307/1924371> and Litterman (1983)
<DOI:10.2307/1391858>.")
    (license license:gpl2+)))

(define-public r-tsdfgs
  (package
    (name "r-tsdfgs")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSDFGS" version))
              (sha256
               (base32
                "02p4caby7w1hgvizhm4cy0jr9mwwnh7gcq1snvz0cbd4mzpjcqgc"))))
    (properties `((upstream-name . "TSDFGS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-lifecycle
                             r-latex2exp
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/oumarkme/TSDFGS")
    (synopsis "Training Set Determination for Genomic Selection")
    (description
     "We propose an optimality criterion to determine the required training set,
r-score, which is derived directly from Pearson's correlation between the
genomic estimated breeding values and phenotypic values of the test set
<doi:10.1007/s00122-019-03387-0>.  This package provides two main functions to
determine a good training set and its size.")
    (license license:gpl3+)))

(define-public r-tsdf
  (package
    (name "r-tsdf")
    (version "1.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsdf" version))
              (sha256
               (base32
                "00s0aiis88611xsq9px61f9gwprp803wcvi5milvc7qckrh1kw0z"))))
    (properties `((upstream-name . "tsdf")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tsdf")
    (synopsis "Two-/Three-Stage Designs for Phase 1&2 Clinical Trials")
    (description
     "Calculate optimal Zhong's two-/three-stage Phase II designs (see Zhong (2012)
<doi:10.1016/j.cct.2012.07.006>).  Generate Target Toxicity decision table for
Phase I dose-finding (two-/three-stage).  This package also allows users to run
dose-finding simulations based on customized decision table.")
    (license license:gpl2)))

(define-public r-tsdeeplearning
  (package
    (name "r-tsdeeplearning")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSdeeplearning" version))
              (sha256
               (base32
                "0phf0nksraf1w7hkg4b9kk890743cbmgra8blqblyd8n6gfy1r9p"))))
    (properties `((upstream-name . "TSdeeplearning")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsutils
                             r-tensorflow
                             r-reticulate
                             r-magrittr
                             r-keras
                             r-biocgenerics))
    (home-page "https://cran.r-project.org/package=TSdeeplearning")
    (synopsis "Deep Learning Model for Time Series Forecasting")
    (description
     "RNNs are preferred for sequential data like time series, speech, text, etc.  but
when dealing with long range dependencies, vanishing gradient problems account
for their poor performance.  LSTM and GRU are effective solutions which are
nothing but RNN networks with the abilities of learning both short-term and
long-term dependencies.  Their structural makeup enables them to remember
information for a long period without any difficulty.  LSTM consists of one cell
state and three gates, namely, forget gate, input gate and output gate whereas
GRU comprises only two gates, namely, reset gate and update gate.  This package
consists of three different functions for the application of RNN, LSTM and GRU
to any time series data for its forecasting.  For method details see Jaiswal, R.
et al. (2022). <doi:10.1007/s00521-021-06621-3>.")
    (license license:gpl3)))

(define-public r-tsdecomp
  (package
    (name "r-tsdecomp")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsdecomp" version))
              (sha256
               (base32
                "1wy37gjp49dr60s4zhwv19iv3mzr1fjz5yilqmqgy78j5d45ns15"))))
    (properties `((upstream-name . "tsdecomp")))
    (build-system r-build-system)
    (home-page "https://jalobe.com")
    (synopsis "Decomposition of Time Series Data")
    (description
     "ARIMA-model-based decomposition of quarterly and monthly time series data.  The
methodology is developed and described, among others, in Burman (1980)
<DOI:10.2307/2982132> and Hillmer and Tiao (1982) <DOI:10.2307/2287770>.")
    (license license:gpl2)))

(define-public r-tsdb
  (package
    (name "r-tsdb")
    (version "1.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsdb" version))
              (sha256
               (base32
                "19gvswvx6f60zbpcdkgra6mvkzrl940vf6nn0nyap144qg3fkq27"))))
    (properties `((upstream-name . "tsdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-fastmatch r-datetimeutils))
    (home-page "http://enricoschumann.net/R/packages/tsdb/")
    (synopsis "Terribly-Simple Data Base for Time Series")
    (description
     "This package provides a terribly-simple data base for numeric time series,
written purely in R, so no external database-software is needed.  Series are
stored in plain-text files (the most-portable and enduring file type) in CSV
format.  Timestamps are encoded using R's native numeric representation for
Date'/'POSIXct', which makes them fast to parse, but keeps them accessible with
other software.  The package provides tools for saving and updating series in
this standardised format, for retrieving and joining data, for summarising files
and directories, and for coercing series from and to other data types (such as
zoo series).")
    (license license:gpl3)))

(define-public r-tscs
  (package
    (name "r-tscs")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSCS" version))
              (sha256
               (base32
                "0dllaw69rl26hgqac5q66k13gfmnxhn3wf0j8nx5xvi7yclzc3ay"))))
    (properties `((upstream-name . "TSCS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-rgl r-ggplot2))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=TSCS")
    (synopsis "Time Series Cointegrated System")
    (description
     "This package provides a set of functions to implement Time Series Cointegrated
System (TSCS) spatial interpolation and relevant data visualization.")
    (license license:gpl2+)))

(define-public r-tscount
  (package
    (name "r-tscount")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tscount" version))
              (sha256
               (base32
                "087ncxy1q91yc5rr15d5h6m7kaqhw8yy5fbm22rkzp9dg2fhbzi3"))))
    (properties `((upstream-name . "tscount")))
    (build-system r-build-system)
    (propagated-inputs (list r-ltsa))
    (home-page "http://tscount.r-forge.r-project.org")
    (synopsis "Analysis of Count Time Series")
    (description
     "Likelihood-based methods for model fitting and assessment, prediction and
intervention analysis of count time series following generalized linear models
are provided.  Models with the identity and with the logarithmic link function
are allowed.  The conditional distribution can be Poisson or Negative Binomial.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-tscopula
  (package
    (name "r-tscopula")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tscopula" version))
              (sha256
               (base32
                "0cbc90mzdl9rzf9p75whxqf5j2al5w8zacycs800kylkgv6cyanc"))))
    (properties `((upstream-name . "tscopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-rvinecopulib
                             r-matrix
                             r-ltsa
                             r-kdensity
                             r-fkf
                             r-arfima))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tscopula")
    (synopsis "Time Series Copula Models")
    (description
     "This package provides functions for the analysis of time series using copula
models.  The package is based on methodology described in the following
references.  McNeil, A.J. (2021) <doi:10.3390/risks9010014>, Bladt, M., &
McNeil, A.J. (2021) <doi:10.1016/j.ecosta.2021.07.004>, Bladt, M., & McNeil,
A.J. (2021) <arXiv:2107.00960>.")
    (license license:gpl3)))

(define-public r-tsclust
  (package
    (name "r-tsclust")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSclust" version))
              (sha256
               (base32
                "1pj984sf7z0bakr55jqcrxr4mh4gihdv197m2k05phpp5hsplsjh"))))
    (properties `((upstream-name . "TSclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-pdc
                             r-longitudinaldata
                             r-locpol
                             r-kernsmooth
                             r-forecast
                             r-dtw
                             r-cluster))
    (home-page "http://www.jstatsoft.org/v62/i01/")
    (synopsis "Time Series Clustering Utilities")
    (description
     "This package provides a set of measures of dissimilarity between time series to
perform time series clustering.  Metrics based on raw data, on generating models
and on the forecast behavior are implemented.  Some additional utilities related
to time series clustering are also provided, such as clustering algorithms and
cluster evaluation metrics.")
    (license license:gpl2)))

(define-public r-tsci
  (package
    (name "r-tsci")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSCI" version))
              (sha256
               (base32
                "02ia0r26f7b443rn5560n423xy2yx08qqb5zc1zbpqha4lv8s4nc"))))
    (properties `((upstream-name . "TSCI")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-rfast r-ranger))
    (home-page "https://github.com/dlcarl/TSML")
    (synopsis
     "Tools for Causal Inference with Possibly Invalid Instrumental Variables")
    (description
     "Two stage curvature identification with machine learning for causal inference in
settings when instrumental variable regression is not suitable because of
potentially invalid instrumental variables.  Based on Guo and Buehlmann (2022)
\"Two Stage Curvature Identification with Machine Learning: Causal Inference with
Possibly Invalid Instrumental Variables\" <arXiv:2203.12808> .")
    (license license:gpl3+)))

(define-public r-tsbss
  (package
    (name "r-tsbss")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsBSS" version))
              (sha256
               (base32
                "04nsbifc6zkilqifj6iwc0vf2z84y8wcbf8pndgkzi039kk6c385"))))
    (properties `((upstream-name . "tsBSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-rcpparmadillo
                             r-rcpp
                             r-jade
                             r-ictest
                             r-forecast
                             r-bssprep
                             r-boot))
    (home-page "https://cran.r-project.org/package=tsBSS")
    (synopsis
     "Blind Source Separation and Supervised Dimension Reduction for Time Series")
    (description
     "Different estimators are provided to solve the blind source separation problem
for multivariate time series with stochastic volatility and supervised dimension
reduction problem for multivariate time series.  Different functions based on
AMUSE and SOBI are also provided for estimating the dimension of the white noise
subspace.  The package is fully described in Nordhausen, Matilainen, Miettinen,
Virta and Taskinen (2021) <doi:10.18637/jss.v098.i15>.")
    (license license:gpl2+)))

(define-public r-tsbox
  (package
    (name "r-tsbox")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsbox" version))
              (sha256
               (base32
                "0vm6w6y9j2xgzappqjv6p40nl0lrbx3jzqjya9ahhapaklhb1hx3"))))
    (properties `((upstream-name . "tsbox")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table r-anytime))
    (native-inputs (list r-knitr))
    (home-page "https://www.tsbox.help")
    (synopsis "Class-Agnostic Time Series")
    (description
     "Time series toolkit with identical behavior for all time series classes:
ts','xts', data.frame', data.table', tibble', zoo', timeSeries', tsibble', tis
or irts'.  Also converts reliably between these classes.")
    (license license:gpl3)))

(define-public r-tsapp
  (package
    (name "r-tsapp")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsapp" version))
              (sha256
               (base32
                "1x3f10rdg3ihq5cx6w1zyz3irv1wsgx6admz5qv3zwwlk0z6cwpx"))))
    (properties `((upstream-name . "tsapp")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars r-matrix r-hdm r-fftwtools))
    (home-page "https://cran.r-project.org/package=tsapp")
    (synopsis "Time Series, Analysis and Application")
    (description
     "Accompanies the book Rainer Schlittgen and Cristina Sattarhoff (2020)
<https://www.degruyter.com/view/title/575978> \"Angewandte Zeitreihenanalyse mit
R, 4.  Auflage\" .  The package contains the time series and functions used
therein.  It was developed over many years teaching courses about time series
analysis.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tsann
  (package
    (name "r-tsann")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TSANN" version))
              (sha256
               (base32
                "1sk9jq6k5qf8k03yhrb2jmazdh8gi2a17pc5m0agcvxiv4lmp5sp"))))
    (properties `((upstream-name . "TSANN")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtools r-forecast))
    (home-page "https://cran.r-project.org/package=TSANN")
    (synopsis "Time Series Artificial Neural Network")
    (description
     "The best ANN structure for time series data analysis is a demanding need in the
present era.  This package will find the best-fitted ANN model based on
forecasting accuracy.  The optimum size of the hidden layers was also determined
after determining the number of lags to be included.  This package has been
developed using the algorithm of Paul and Garai (2021)
<doi:10.1007/s00500-021-06087-4>.")
    (license license:gpl3)))

(define-public r-tsallisqexp
  (package
    (name "r-tsallisqexp")
    (version "0.9-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tsallisqexp" version))
              (sha256
               (base32
                "07ymkrik1vwblcj5i0crihbrrxkrn8xjkap3lrzxy4vidgqalw3f"))))
    (properties `((upstream-name . "tsallisqexp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tsallisqexp")
    (synopsis "Tsallis q-Exp Distribution")
    (description
     "Tsallis distribution also known as the q-exponential family distribution.
Provide distribution d, p, q, r functions, fitting and testing functions.
Project initiated by Paul Higbie and based on Cosma Shalizi's code.")
    (license license:gpl2+)))

(define-public r-ts2net
  (package
    (name "r-ts2net")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ts2net" version))
              (sha256
               (base32
                "0f45xnvg09qvcc202dfr9d1a29909gmz863pjyq78mhjj0glijqw"))))
    (properties `((upstream-name . "ts2net")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-scales
                             r-nonlineartseries
                             r-mmpp
                             r-minerva
                             r-infotheo
                             r-igraph
                             r-dtw
                             r-dbscan))
    (home-page "https://github.com/lnferreira/ts2net")
    (synopsis "From Time Series to Networks")
    (description
     "Transforming one or multiple time series into networks.  This package is useful
for complex systems modeling, time series data mining, or time series analysis
using networks.  An introduction to the topic and the descriptions of the
methods implemented in this package can be found in Mitchell (2006)
<doi:10.1016/j.artint.2006.10.002>, Silva and Zhao (2016)
<doi:10.1007/978-3-319-17290-3>, and Silva et al. (2021)
<doi:10.1002/widm.1404>.")
    (license license:expat)))

(define-public r-trycatchlog
  (package
    (name "r-trycatchlog")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tryCatchLog" version))
              (sha256
               (base32
                "0k40a48qzwmardjnkf0h5s5zryivzvdanz61kxdqdfqlil19ma0d"))))
    (properties `((upstream-name . "tryCatchLog")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aryoda/tryCatchLog")
    (synopsis "Advanced 'tryCatch()' and 'try()' Functions")
    (description
     "Advanced tryCatch() and try() functions for better error handling (logging,
stack trace with source code references and support for post-mortem analysis via
dump files).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-trustvdj
  (package
    (name "r-trustvdj")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrustVDJ" version))
              (sha256
               (base32
                "154fawx32v2gdvfdyssj04h1y0q2zc2wn4ww4nzaf0nlwbvc2z6v"))))
    (properties `((upstream-name . "TrustVDJ")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvest r-data-table r-biostrings))
    (home-page "https://cran.r-project.org/package=TrustVDJ")
    (synopsis "Tools for Immune Repertoire Analysis")
    (description
     "This package provides a toolkit for read and prepare immune repertoire data.
TrustVDJ package focuses on the reading and processing of TRUST4 and 10x
cellranger software output results by using ReadTrust and Read10x functions,
respectively, and also provides a convenience function build_IMGT_reference to
download the IMGT database reference and split its sequences by species.")
    (license license:gpl3+)))

(define-public r-trustoptim
  (package
    (name "r-trustoptim")
    (version "0.8.7.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trustOptim" version))
              (sha256
               (base32
                "11cx90zq9987i7kc86kxbip6c75bmw51shlwq2x9ywhybzk8vxl8"))))
    (properties `((upstream-name . "trustOptim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://braunm.github.io/trustOptim/")
    (synopsis
     "Trust Region Optimization for Nonlinear Functions with Sparse Hessians")
    (description
     "Trust region algorithm for nonlinear optimization.  Efficient when the Hessian
of the objective function is sparse (i.e., relatively few nonzero cross-partial
derivatives).  See Braun, M. (2014) <doi:10.18637/jss.v060.i04>.")
    (license (license:fsdg-compatible "MPL (>= 2.0)"))))

(define-public r-trustedtimestamping
  (package
    (name "r-trustedtimestamping")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trustedtimestamping" version))
              (sha256
               (base32
                "1rx7ypy331mq5ni5hxhqcfnicvwdgg9j2pm3aj097a5hhigibdrq"))))
    (properties `((upstream-name . "trustedtimestamping")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-digest))
    (home-page "https://cran.r-project.org/package=trustedtimestamping")
    (synopsis "Create Trusted Timestamps of Datasets and Files")
    (description
     "Trusted Timestamps (tts) are created by incorporating a hash of a file or
dataset into a transaction on the decentralized blockchain (Stellar network).
The package makes use of a free service provided by <https://stellarapi.io>.")
    (license license:agpl3)))

(define-public r-trust
  (package
    (name "r-trust")
    (version "0.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trust" version))
              (sha256
               (base32
                "1b6wsx4vybr5952ii3ska6jbcb3654iibz83n645khxfca5k8blm"))))
    (properties `((upstream-name . "trust")))
    (build-system r-build-system)
    (home-page "http://www.stat.umn.edu/geyer/trust/")
    (synopsis "Trust Region Optimization")
    (description
     "Does local optimization using two derivatives and trust regions.  Guaranteed to
converge to local minimum of objective function.")
    (license license:expat)))

(define-public r-truncsp
  (package
    (name "r-truncsp")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truncSP" version))
              (sha256
               (base32
                "1hdi518j3sg9273g01l1jqlmqya3ppim82ma7zakwqpmsjmzw18q"))))
    (properties `((upstream-name . "truncSP")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncreg r-boot))
    (home-page "https://cran.r-project.org/package=truncSP")
    (synopsis "Semi-parametric estimators of truncated regression models")
    (description
     "Semi-parametric estimation of truncated linear regression models")
    (license license:gpl2+)))

(define-public r-truncreg
  (package
    (name "r-truncreg")
    (version "0.2-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truncreg" version))
              (sha256
               (base32
                "1scbjh5k1b8cjjavax08grlxdfs75s63dss0ifpz4d0axc4nm3iy"))))
    (properties `((upstream-name . "truncreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-maxlik))
    (home-page "http://R-Forge.R-project.org/projects/truncreg/")
    (synopsis "Truncated Gaussian Regression Models")
    (description
     "Estimation of models for truncated Gaussian variables by maximum likelihood.")
    (license license:gpl2+)))

(define-public r-truncnormbayes
  (package
    (name "r-truncnormbayes")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truncnormbayes" version))
              (sha256
               (base32
                "0nsc7h8ddbzqbcfi4mhircgnagkk3an8iwvw7za44frn85vmx6id"))))
    (properties `((upstream-name . "truncnormbayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rdpack
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-bh))
    (home-page "https://github.com/leonkt/truncnormbayes")
    (synopsis
     "Estimates Moments for a Truncated Normal Distribution using 'Stan'")
    (description
     "Finds the posterior modes for the mean and standard deviation for a truncated
normal distribution with one or two known truncation points.  The method used
extends Bayesian methods for parameter estimation for a singly truncated normal
distribution under the Jeffreys prior (see Zhou X, Giacometti R, Fabozzi FJ,
Tucker AH (2014). \"Bayesian estimation of truncated data with applications to
operational risk measurement\". <doi:10.1080/14697688.2012.752103>).  This
package additionally allows for a doubly truncated normal distribution.")
    (license license:gpl3+)))

(define-public r-truncexpfam
  (package
    (name "r-truncexpfam")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TruncExpFam" version))
              (sha256
               (base32
                "0059afyfvzliwpw4l1846yxcpqqdy9c2kk0xa0fl5nxh89c2hr7v"))))
    (properties `((upstream-name . "TruncExpFam")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmutil r-invgamma))
    (home-page "https://github.com/ocbe-uio/TruncExpFam")
    (synopsis "Truncated Exponential Family")
    (description
     "Handles truncated members from the exponential family of probability
distributions.  Contains functions such as rtruncnorm() and dtruncpois(), which
are truncated versions of rnorm() and dpois() from the stats package that also
offer richer output containing, for example, the distribution parameters.  It
also provides functions to retrieve the original distribution parameters from a
truncated sample by maximum-likelihood estimation.")
    (license license:gpl3)))

(define-public r-truncdist
  (package
    (name "r-truncdist")
    (version "1.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truncdist" version))
              (sha256
               (base32
                "02ihw4ixhadwr3sqm6r264i8vpcaz8pn69vkzabd8fwqvn5vcj5q"))))
    (properties `((upstream-name . "truncdist")))
    (build-system r-build-system)
    (propagated-inputs (list r-evd))
    (home-page "https://cran.r-project.org/package=truncdist")
    (synopsis "Truncated Random Variables")
    (description
     "This package provides a collection of tools to evaluate probability density
functions, cumulative distribution functions, quantile functions and random
numbers for truncated random variables.  These functions are provided to also
compute the expected value and variance.  Nadarajah and Kotz (2006) developed
most of the functions.  QQ plots can be produced.  All the probability functions
in the stats, stats4 and evd packages are automatically available for
truncation..")
    (license license:gpl2+)))

(define-public r-truncatednormal
  (package
    (name "r-truncatednormal")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TruncatedNormal" version))
              (sha256
               (base32
                "05cfn7mdq0hgw97bbb227in9ccjz727sp67xpnpx2r1ajvl6gxdf"))))
    (properties `((upstream-name . "TruncatedNormal")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-randtoolbox r-nleqslv
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TruncatedNormal")
    (synopsis "Truncated Multivariate Normal and Student Distributions")
    (description
     "This package provides a collection of functions to deal with the truncated
univariate and multivariate normal and Student distributions, described in Botev
(2017) <doi:10.1111/rssb.12162> and Botev and L'Ecuyer (2015)
<doi:10.1109/WSC.2015.7408180>.")
    (license license:gpl3)))

(define-public r-truh
  (package
    (name "r-truh")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truh" version))
              (sha256
               (base32
                "0acsyzm6rpmzyq8pg33c631hi4xir49gqxbpshcrr6i2v3q6k14j"))))
    (properties `((upstream-name . "truh")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast
                             r-iterators
                             r-fpc
                             r-foreach
                             r-doparallel
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/natesmith07/truh")
    (synopsis "Two-Sample Nonparametric Testing Under Heterogeneity")
    (description
     "This package implements the TRUH test statistic for two sample testing under
heterogeneity.  TRUH incorporates the underlying heterogeneity and imbalance in
the samples, and provides a conservative test for the composite null hypothesis
that the two samples arise from the same mixture distribution but may differ
with respect to the mixing weights.  See Trambak Banerjee, Bhaswar B.
Bhattacharya, Gourab Mukherjee Ann.  Appl.  Stat.  14(4): 1777-1805 (December
2020). <DOI:10.1214/20-AOAS1362> for more details.")
    (license license:gpl3+)))

(define-public r-trueskillthroughtime
  (package
    (name "r-trueskillthroughtime")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrueSkillThroughTime" version))
              (sha256
               (base32
                "1ak7w10qss1jlf8gy4sri678nqcw6rc79kwr6anqcjxick1000j9"))))
    (properties `((upstream-name . "TrueSkillThroughTime")))
    (build-system r-build-system)
    (propagated-inputs (list r-hash))
    (home-page "https://github.com/glandfried/TrueSkillThroughTime.R")
    (synopsis "Skill Estimation Based on a Single Bayesian Network")
    (description
     "Most estimators implemented by the video game industry cannot obtain reliable
initial estimates nor guarantee comparability between distant estimates.
TrueSkill Through Time solves all these problems by modeling the entire history
of activities using a single Bayesian network allowing the information to
propagate correctly throughout the system.  This algorithm requires only a few
iterations to converge, allowing millions of observations to be analyzed using
any low-end computer.  The core ideas implemented in this project were developed
by Dangauthier P, Herbrich R, Minka T, Graepel T (2007). \"Trueskill through
time: Revisiting the history of chess.\"
<https://dl.acm.org/doi/10.5555/2981562.2981605>.")
    (license license:gpl3+)))

(define-public r-truelies
  (package
    (name "r-truelies")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "truelies" version))
              (sha256
               (base32
                "1qxzw7x7xgp9x6klnq6jv0fl8al2l24br2sd59r5gq076gkqc47k"))))
    (properties `((upstream-name . "truelies")))
    (build-system r-build-system)
    (propagated-inputs (list r-hdrcde))
    (home-page "https://github.com/hughjonesd/truelies")
    (synopsis
     "Bayesian Methods to Estimate the Proportion of Liars in Coin Flip Experiments")
    (description
     "This package implements Bayesian methods, described in Hugh-Jones (2019)
<doi:10.1007/s40881-019-00069-x>, for estimating the proportion of liars in coin
flip-style experiments, where subjects report a random outcome and are paid for
reporting a \"good\" outcome.")
    (license license:expat)))

(define-public r-trtf
  (package
    (name "r-trtf")
    (version "0.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trtf" version))
              (sha256
               (base32
                "15aalp82igw23rlk36dqqkcnmcy8q869wjbr7ak19gygy8p525wn"))))
    (properties `((upstream-name . "trtf")))
    (build-system r-build-system)
    (propagated-inputs (list r-variables
                             r-tram
                             r-sandwich
                             r-partykit
                             r-mlt
                             r-libcoin
                             r-formula))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Transformation Trees and Forests")
    (description
     "Recursive partytioning of transformation models with corresponding random forest
for conditional transformation models as described in Transformation Forests
(Hothorn and Zeileis, 2021, <doi:10.1080/10618600.2021.1872581>) and Top-Down
Transformation Choice (Hothorn, 2018, <DOI:10.1177/1471082X17748081>).")
    (license license:gpl2)))

(define-public r-trtcombo-factorialexp-sr
  (package
    (name "r-trtcombo-factorialexp-sr")
    (version "4.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrtCombo.FactorialExp.SR" version))
              (sha256
               (base32
                "1kc5nqivsia801hdll5zcl4w6ayx7pabx7xz70l75h1f966ahnr7"))))
    (properties `((upstream-name . "TrtCombo.FactorialExp.SR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TrtCombo.FactorialExp.SR")
    (synopsis
     "Generation of Treatment Combination (in Standard Order) in 2^n Factorial Experiment")
    (description
     "Gives the required 2^n treatment combinations in a 2^n symmetric factorial
experiment in their respective standard order.")
    (license license:expat)))

(define-public r-troubblme4solver
  (package
    (name "r-troubblme4solver")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trouBBlme4SolveR" version))
              (sha256
               (base32
                "0718n2lgwyj8c2cnxs6r6gy41ygv8pl04fnjb07c6jhzr30ndc6l"))))
    (properties `((upstream-name . "trouBBlme4SolveR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lme4))
    (home-page "https://gitlab.com/iagogv/trouBBlme4SolveR")
    (synopsis "Troubles Solver for 'lme4'")
    (description
     "The main function of the package aims to update lmer()'/'glmer() models
depending on their warnings, so trying to avoid convergence and singularity
problems.")
    (license license:gpl3)))

(define-public r-trotter
  (package
    (name "r-trotter")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trotter" version))
              (sha256
               (base32
                "0i8r2f2klkkfnjm7jhvga3gx6m7r97pd73d88004jzlm9ficspgy"))))
    (properties `((upstream-name . "trotter")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=trotter")
    (synopsis
     "Pseudo-Vectors Containing All Permutations, Combinations and Subsets of Objects Taken from a Vector")
    (description
     "Class definitions and constructors for pseudo-vectors containing all
permutations, combinations and subsets of objects taken from a vector.
Simplifies working with structures commonly encountered in combinatorics.")
    (license license:gpl3)))

(define-public r-trophicposition
  (package
    (name "r-trophicposition")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tRophicPosition" version))
              (sha256
               (base32
                "0ap7j15qfywilyx8zsnq061mis69yja16hjnla5grlqc0mcrdd7d"))))
    (properties `((upstream-name . "tRophicPosition")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags
                             r-rcolorbrewer
                             r-plyr
                             r-mcmcglmm
                             r-hdrcde
                             r-gridextra
                             r-ggplot2
                             r-data-table
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/clquezada/tRophicPosition")
    (synopsis "Bayesian Trophic Position Estimation with Stable Isotopes")
    (description
     "Estimates the trophic position of a consumer relative to a baseline species.  It
implements a Bayesian approach which combines an interface to the JAGS MCMC
library of rjags and stable isotopes.  Users are encouraged to test the package
and send bugs and/or errors to trophicposition-support@@googlegroups.com.")
    (license license:gpl2+)))

(define-public r-tropfishr
  (package
    (name "r-tropfishr")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TropFishR" version))
              (sha256
               (base32
                "0nkw7dcb2kvgvvfla6ns60n460wsamwcp88281q6lyb6yb8k14bv"))))
    (properties `((upstream-name . "TropFishR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-msm
                             r-matrix
                             r-mass
                             r-gensa
                             r-ga
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tokami/TropFishR")
    (synopsis "Tropical Fisheries Analysis")
    (description
     "This package provides a compilation of fish stock assessment methods for the
analysis of length-frequency data in the context of data-poor fisheries.
Includes methods and examples included in the FAO Manual by P. Sparre and S.C.
Venema (1998), \"Introduction to tropical fish stock assessment\"
(<http://www.fao.org/documents/card/en/c/9bb12a06-2f05-5dcb-a6ca-2d6dd3080f65/>),
as well as other more recent methods.")
    (license license:gpl3)))

(define-public r-tropalgebra
  (package
    (name "r-tropalgebra")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tropAlgebra" version))
              (sha256
               (base32
                "1idvhxhw2f6z8iq0nfdj6jmzy8913vid84rvln6rx2dkzw3s9wnl"))))
    (properties `((upstream-name . "tropAlgebra")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tropAlgebra")
    (synopsis "Tropical Algebraic Functions")
    (description
     "It includes functions like tropical addition, tropical multiplication for
vectors and matrices.  In tropical algebra, the tropical sum of two numbers is
their minimum and the tropical product of two numbers is their ordinary sum.
For more information see also I. Simon (1988) Recognizable sets with
multiplicities in the tropical semi ring: Volume 324 Lecture Notes I Computer
Science, pages 107-120 <doi: 10.1007/BFb0017135>.")
    (license license:gpl3+)))

(define-public r-troopdata
  (package
    (name "r-troopdata")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "troopdata" version))
              (sha256
               (base32
                "0s86j75jzinrwn1p5z9l13srzhy55mj3hcnbjr89ia1m6kgih6dc"))))
    (properties `((upstream-name . "troopdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-magrittr r-dplyr))
    (home-page "https://github.com/meflynn/troopdata")
    (synopsis
     "Tools for Analyzing Cross-National Military Deployment and Basing Data")
    (description
     "These functions generate data frames on troop deployments and military basing
using U.S. Department of Defense data on overseas military deployments.  This
package provides functions for pulling country-year troop deployment and basing
data.  Subsequent versions will hopefully include cross-national data on
deploying countries.")
    (license license:gpl3+)))

(define-public r-trnslate
  (package
    (name "r-trnslate")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tRnslate" version))
              (sha256
               (base32
                "0sm0cqxylsxmnhqs1c8w81d6q2sj7nmm86mds59kiyspy9m67sbc"))))
    (properties `((upstream-name . "tRnslate")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "<https://marioma.me?i=soft>")
    (synopsis "Translate R Code in Source Files")
    (description
     "Evaluate inline or chunks of R code in template files and replace with their
output modifying the resulting template.")
    (license license:gpl2+)))

(define-public r-trmf
  (package
    (name "r-trmf")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRMF" version))
              (sha256
               (base32
                "0zi9v7jgvpcdfjs7pbcfb8ggf89w71zvxmlsr319r1d4spkrskfx"))))
    (properties `((upstream-name . "TRMF")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-limsolve r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TRMF")
    (synopsis "Temporally Regularized Matrix Factorization")
    (description
     "This package provides functions to estimate temporally regularized matrix
factorizations (TRMF) for forecasting and imputing values in short but
high-dimensional time series.  Uses regularized alternating least squares to
compute the factorization, allows for several types of constraints on matrix
factors and natively handles weighted and missing data.")
    (license license:gpl3)))

(define-public r-triversity
  (package
    (name "r-triversity")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triversity" version))
              (sha256
               (base32
                "1bar2bpy8jvj91jmzzdwy6rlvirsbxrzqnx4r825irqhc69gc53r"))))
    (properties `((upstream-name . "triversity")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-data-tree))
    (home-page "https://cran.r-project.org/package=triversity")
    (synopsis "Diversity Measures on Tripartite Graphs")
    (description
     "Computing diversity measures on tripartite graphs.  This package first
implements a parametrized family of such diversity measures which apply on
probability distributions.  Sometimes called \"True Diversity\", this family
contains famous measures such as the richness, the Shannon entropy, the
Herfindahl-Hirschman index, and the Berger-Parker index.  Second, the package
allows to apply these measures on probability distributions resulting from
random walks between the levels of tripartite graphs.  By defining an initial
distribution at a given level of the graph and a path to follow between the
three levels, the probability of the walker's position within the final level is
then computed, thus providing a particular instance of diversity to measure.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tripsanddipr
  (package
    (name "r-tripsanddipr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tripsAndDipR" version))
              (sha256
               (base32
                "1gm96fxgql9y08w177nyxw0bahyafcs75maz743a9hfb0gjixvy2"))))
    (properties `((upstream-name . "tripsAndDipR")))
    (build-system r-build-system)
    (home-page "https://github.com/delomast/tripsAndDipR")
    (synopsis
     "Identification of 2n and 3n Samples from Amplicon Sequencing Data")
    (description
     "Uses read counts for biallelic single nucleotide polymorphisms (SNPs) to compare
the likelihoods for the observed read counts given that a sample is either
diploid or triploid.  It allows parameters to be specified to account for
sequencing error rates and allelic bias.  For details of the algorithm, please
see Delomas (2019) <doi:10.1111/1755-0998.13073>.")
    (license license:expat)))

(define-public r-triplot
  (package
    (name "r-triplot")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triplot" version))
              (sha256
               (base32
                "1apmdpxdnnmjyi7gcrjrqw44iqphr84nbgw0nfxcspzjgxhc81l1"))))
    (properties `((upstream-name . "triplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-patchwork r-glmnet r-ggplot2 r-ggdendro r-dalex))
    (home-page "https://github.com/ModelOriented/triplot")
    (synopsis "Explaining Correlated Features in Machine Learning Models")
    (description
     "Tools for exploring effects of correlated features in predictive models.  The
predict_triplot() function delivers instance-level explanations that calculate
the importance of the groups of explanatory variables.  The model_triplot()
function delivers data-level explanations.  The generic plot function visualises
in a concise way importance of hierarchical groups of predictors.  All of the
the tools are model agnostic, therefore works for any predictive machine
learning models.  Find more details in Biecek (2018) <arXiv:1806.08915>.")
    (license license:gpl3)))

(define-public r-tripler
  (package
    (name "r-tripler")
    (version "1.5.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TripleR" version))
              (sha256
               (base32
                "1al8cihrjz931gjn3bf94h0nd7a9hc1cmf50bkikj35vwy5kaxij"))))
    (properties `((upstream-name . "TripleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-plyr r-ggplot2))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=TripleR")
    (synopsis
     "Social Relation Model (SRM) Analyses for Single or Multiple Groups")
    (description
     "Social Relation Model (SRM) analyses for single or multiple round-robin groups
are performed.  These analyses are either based on one manifest variable, one
latent construct measured by two manifest variables, two manifest variables and
their bivariate relations, or two latent constructs each measured by two
manifest variables.  Within-group t-tests for variance components and
covariances are provided for single groups.  For multiple groups two types of
significance tests are provided: between-groups t-tests (as in SOREMO) and
enhanced standard errors based on Lashley and Bond (1997)
<DOI:10.1037/1082-989X.2.3.278>.  Handling for missing values is provided.")
    (license license:gpl2+)))

(define-public r-tripestimation
  (package
    (name "r-tripestimation")
    (version "0.0-44")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tripEstimation" version))
              (sha256
               (base32
                "1ylpyzlqr6l5haxq4icnlxw6vgvc2lsfz5sm2wqqm4m6h3p0i6s6"))))
    (properties `((upstream-name . "tripEstimation")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-sp r-rgdal r-mgcv r-lattice))
    (home-page "https://github.com/mdsumner/tripEstimation")
    (synopsis
     "Metropolis Sampler and Supporting Functions for Estimating Animal Movement from Archival Tags and Satellite Fixes")
    (description
     "Data handling and estimation functions for animal movement estimation from
archival or satellite tags.  Helper functions are included for making image
summaries binned by time interval from Markov Chain Monte Carlo simulations.")
    (license license:gpl3)))

(define-public r-tripack
  (package
    (name "r-tripack")
    (version "1.3-9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tripack" version))
              (sha256
               (base32
                "1ghza4by6shalsnqybn5qgv076dxh59b6vycg9v6ii216zbgi0kz"))))
    (properties `((upstream-name . "tripack")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=tripack")
    (synopsis "Triangulation of Irregularly Spaced Data")
    (description
     "This package provides a constrained two-dimensional Delaunay triangulation
package providing both triangulation and generation of voronoi mosaics of
irregular spaced data.")
    (license (list (license:fsdg-compatible "ACM")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-trip
  (package
    (name "r-trip")
    (version "1.8.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trip" version))
              (sha256
               (base32
                "137vzrxpy3p5z2cpdm9qqyy3zxi8qnv55b16dqf0i3dm6n6z75zl"))))
    (properties `((upstream-name . "trip")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-traipse
                             r-spatstat-geom
                             r-spatstat-explore
                             r-sp
                             r-rlang
                             r-reproj
                             r-raster
                             r-mass
                             r-glue
                             r-geodist
                             r-dplyr
                             r-crsmeta))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Trackage/trip")
    (synopsis "Tracking Data")
    (description
     "Access and manipulate spatial tracking data, with straightforward coercion from
and to other formats.  Filter for speed and create time spent maps from tracking
data.  There are coercion methods to convert between trip and ltraj from
adehabitatLT', and between trip and psp and ppp from spatstat'.  Trip objects
can be created from raw or grouped data frames, and from types in the sp', sf',
amt', trackeR', mousetrap', and other packages, Sumner, MD (2011)
<https://eprints.utas.edu.au/12273/3/sumner.pdf>.")
    (license license:gpl3)))

(define-public r-triosgl
  (package
    (name "r-triosgl")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrioSGL" version))
              (sha256
               (base32
                "0xzyv1vppw0v1xjpf83nnv1sx1xy7197ay6l7dzvr0vllappdam9"))))
    (properties `((upstream-name . "TrioSGL")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TrioSGL")
    (synopsis
     "Trio Model with a Combination of Lasso and Group Lasso Regularization")
    (description
     "Fit a trio model via penalized maximum likelihood.  The model is fit for a path
of values of the penalty parameter.  This package is based on Noah Simon, et al.
(2011) <doi:10.1080/10618600.2012.681250>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-trinroc
  (package
    (name "r-trinroc")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trinROC" version))
              (sha256
               (base32
                "0jpnr3l8f057k334sx803cc7kxgi8mxvxjgli88f8682ax9z47k3"))))
    (properties `((upstream-name . "trinROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://math.uzh.ch/pages/trinROC/")
    (synopsis "Statistical Tests for Assessing Trinormal ROC Data")
    (description
     "Several statistical test functions as well as a function for exploratory data
analysis to investigate classifiers allocating individuals to one of three
disjoint and ordered classes.  In a single classifier assessment the
discriminatory power is compared to classification by chance.  In a comparison
of two classifiers the null hypothesis corresponds to equal discriminatory power
of the two classifiers.")
    (license license:lgpl2.1)))

(define-public r-trimr
  (package
    (name "r-trimr")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trimr" version))
              (sha256
               (base32
                "12z194g67b8g4vv1667hzhmns9mhw93icvdkxf2d45wfyjfdvsvv"))))
    (properties `((upstream-name . "trimr")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JimGrange/trimr")
    (synopsis "An Implementation of Common Response Time Trimming Methods")
    (description
     "This package provides various commonly-used response time trimming methods,
including the recursive / moving-criterion methods reported by Van Selst and
Jolicoeur (1994).  By passing trimming functions raw data files, the package
will return trimmed data ready for inferential testing.")
    (license license:gpl3)))

(define-public r-trimmer
  (package
    (name "r-trimmer")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trimmer" version))
              (sha256
               (base32
                "0hn5pignj5clg7wb3xd0mh9jqc480wqxxymzaas68lxzi6p5mng9"))))
    (properties `((upstream-name . "trimmer")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr r-data-table r-crayon r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=trimmer")
    (synopsis "Trim an Object")
    (description
     "This package provides a lightweight toolkit to reduce the size of a list object.
 The object is minimized by recursively removing elements from the object
one-by-one.  The process is constrained by a reference function call specified
by the user, where the target object is given as an argument.  The procedure
will not allow elements to be removed from the object, that will cause results
from the function call to diverge from the function call with the original
object.")
    (license license:expat)))

(define-public r-trimetstops
  (package
    (name "r-trimetstops")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trimetStops" version))
              (sha256
               (base32
                "068mya6zqiacs3nznwmz17srn90ar6wjnpkgqsznzmigzy7c4idk"))))
    (properties `((upstream-name . "trimetStops")))
    (build-system r-build-system)
    (home-page "https://github.com/graysonwhite/trimetStops")
    (synopsis
     "Information on all of the TriMet Stops in the Portland Metro Area")
    (description
     "Information on all of the TriMet stops in the Portland Metro Area.  It includes
information such as the longitude, latitude, cross street, and direction of the
stop.  TriMet has catalogued these stops, 6880 in total.")
    (license license:cc0)))

(define-public r-trimatch
  (package
    (name "r-trimatch")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TriMatch" version))
              (sha256
               (base32
                "17v8hdm594i9qs5hvrzb1k94wrzvx07479rmvbk4314fim27mabg"))))
    (properties `((upstream-name . "TriMatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-randomforest
                             r-psych
                             r-psagraphics
                             r-gridextra
                             r-ggplot2
                             r-ez))
    (home-page "http://jason.bryer.org/TriMatch")
    (synopsis "Propensity Score Matching of Non-Binary Treatments")
    (description "Propensity score matching for non-binary treatments.")
    (license license:gpl2+)))

(define-public r-trigpoints
  (package
    (name "r-trigpoints")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trigpoints" version))
              (sha256
               (base32
                "1hckjh2gb0fvd2c8x6mj0idpk3im7b831y7mbli1hqhry6qqdw15"))))
    (properties `((upstream-name . "trigpoints")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-sf))
    (home-page "https://philmikejones.github.io/trigpoints/")
    (synopsis
     "Data Set of Trig Points in Great Britain in British National Grid Coordinates")
    (description
     "This package provides a complete data set of historic GB trig points in British
National Grid (OSGB36) coordinate reference system.  Trig points (aka
triangulation stations) are fixed survey points used to improve the accuracy of
map making in Great Britain during the 20th Century.  Trig points are typically
located on hilltops so still serve as a useful navigational aid for walkers and
hikers today.")
    (license license:expat)))

(define-public r-tridimregression
  (package
    (name "r-tridimregression")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TriDimRegression" version))
              (sha256
               (base32
                "19r7639xw0jqq1wayaanvsk9pa1z92p9ph3zcjy0ifq3z92b1al4"))))
    (properties `((upstream-name . "TriDimRegression")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-loo
                             r-glue
                             r-future
                             r-formula
                             r-dplyr
                             r-bh
                             r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexander-pastukhov/tridim-regression")
    (synopsis "Bayesian Statistics for 2D/3D Transformations")
    (description
     "Fits 2D and 3D geometric transformations via Stan probabilistic programming
engine ( Stan Development Team (2021) <https://mc-stan.org>).  Returns posterior
distribution for individual parameters of the fitted distribution.  Allows for
computation of LOO and WAIC information criteria (Vehtari A, Gelman A, Gabry J
(2017) <doi:10.1007/s11222-016-9696-4>) as well as Bayesian R-squared (Gelman A,
Goodrich B, Gabry J, and Vehtari A (2018) <doi:10.1080/00031305.2018.1549100>).")
    (license license:gpl3)))

(define-public r-tricolore
  (package
    (name "r-tricolore")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tricolore" version))
              (sha256
               (base32
                "0pxahddc3dah4n4xk4i0dkiwvh4wf03gcx8q3nfrsk07zzap1zh1"))))
    (properties `((upstream-name . "tricolore")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-ggtern r-ggplot2 r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tricolore")
    (synopsis "Flexible Color Scale for Ternary Compositions")
    (description
     "This package provides a flexible color scale for ternary compositions with
options for discretization, centering and scaling.")
    (license license:gpl3)))

(define-public r-tribe
  (package
    (name "r-tribe")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tribe" version))
              (sha256
               (base32
                "01z1b9k3j4xi5fp9pkpr991yr7x8vk8vysipy7iwdmdr7xg4w4p0"))))
    (properties `((upstream-name . "tribe")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-rlang r-magrittr r-lazyeval
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulponcet/tribe")
    (synopsis "Play with the Tribe of Attributes")
    (description
     "This package provides functions to make manipulation of object attributes
easier.  It also contains a few functions that extend the dplyr package for data
manipulation, and it provides new pipe operators, including the pipe %@@>%
similar to the magrittr %>%', but with the additional functionality to enable
attributes propagation.")
    (license license:expat)))

(define-public r-triangulr
  (package
    (name "r-triangulr")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triangulr" version))
              (sha256
               (base32
                "1fjibp1rhgj363z3gn2iia5iv1hahdabwpxd7q3lxqzxwzs4nfd5"))))
    (properties `((upstream-name . "triangulr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-rlang r-cpp11))
    (home-page "https://cran.r-project.org/package=triangulr")
    (synopsis "High-Performance Triangular Distribution Functions")
    (description
     "This package provides a collection of high-performance functions for the
triangular distribution that consists of the probability density function,
cumulative distribution function, quantile function, random variate generator,
moment generating function, characteristic function, and expected shortfall
function.  References: Samuel Kotz, Johan Ren Van Dorp (2004) <doi:10.1142/5720>
and Acerbi, Carlo and Tasche, Dirk. (2002) <doi:10.1111/1468-0300.00091>.")
    (license license:expat)))

(define-public r-triangulation
  (package
    (name "r-triangulation")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triangulation" version))
              (sha256
               (base32
                "1zp09g0s0qpqgz2k6jx32pswh2zqyyd0b62lf1dx1p46m28dafkn"))))
    (properties `((upstream-name . "triangulation")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=triangulation")
    (synopsis "Determine Position of Observer")
    (description
     "Measuring angles between points in a landscape is much easier than measuring
distances.  When the location of three points is known the position of the
observer can be determined based solely on the angles between these points as
seen by the observer.  This task (known as triangulation) however requires
onerous calculations - these calculations are automated by this package.")
    (license license:lgpl2.0+)))

(define-public r-triangle
  (package
    (name "r-triangle")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triangle" version))
              (sha256
               (base32
                "0vl8rgasmxb64kkk4vph4b7jzmyq9c0lp5jfr9ybmd8czaz6947l"))))
    (properties `((upstream-name . "triangle")))
    (build-system r-build-system)
    (propagated-inputs (list r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://bertcarnell.github.io/triangle/")
    (synopsis
     "Distribution Functions and Parameter Estimates for the Triangle Distribution")
    (description
     "This package provides the \"r, q, p, and d\" distribution functions for the
triangle distribution.  Also includes maximum likelihood estimation of
parameters.")
    (license license:gpl2+)))

(define-public r-trialsize
  (package
    (name "r-trialsize")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrialSize" version))
              (sha256
               (base32
                "0k162n3jr2ixdl3pp90izdr83z14hj70jb9mrfw3iqz0pczp2cpj"))))
    (properties `((upstream-name . "TrialSize")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TrialSize")
    (synopsis
     "R Functions for Chapter 3,4,6,7,9,10,11,12,14,15 of Sample Size Calculation in Clinical Research")
    (description
     "This package provides functions and Examples in Sample Size Calculation in
Clinical Research.")
    (license (license:fsdg-compatible "GPL (>= 2.15.1)"))))

(define-public r-trialr
  (package
    (name "r-trialr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trialr" version))
              (sha256
               (base32
                "11b5wmyq4ki2n0cr2hp2lf219i8q5yh6biyyl8wnvajiaa8560ja"))))
    (properties `((upstream-name . "trialr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidybayes
                             r-tibble
                             r-stringr
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-mass
                             r-magrittr
                             r-gtools
                             r-ggplot2
                             r-dplyr
                             r-coda
                             r-binom
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brockk/trialr")
    (synopsis "Clinical Trial Designs in 'rstan'")
    (description
     "This package provides a collection of clinical trial designs and methods,
implemented in rstan and R, including: the Continual Reassessment Method by
O'Quigley et al. (1990) <doi:10.2307/2531628>; EffTox by Thall & Cook (2004)
<doi:10.1111/j.0006-341X.2004.00218.x>; the two-parameter logistic method of
Neuenschwander, Branson & Sponer (2008) <doi:10.1002/sim.3230>; and the
Augmented Binary method by Wason & Seaman (2013) <doi:10.1002/sim.5867>; and
more.  We provide functions to aid model-fitting and analysis.  The rstan
implementations may also serve as a cookbook to anyone looking to extend or
embellish these models.  We hope that this package encourages the use of
Bayesian methods in clinical trials.  There is a preponderance of early phase
trial designs because this is where Bayesian methods are used most.  If there is
a method you would like implemented, please get in touch.")
    (license license:gpl3+)))

(define-public r-triadsim
  (package
    (name "r-triadsim")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TriadSim" version))
              (sha256
               (base32
                "0r9p50vw2gcbm02vl24q4g1vj46ll0v1vvxi2ip1k73hymv6pz3g"))))
    (properties `((upstream-name . "TriadSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-snpstats r-foreach r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TriadSim")
    (synopsis "Simulating Triad Genomewide Genotypes")
    (description
     "Simulate genotypes for case-parent triads, case-control, and quantitative trait
samples with realistic linkage diequilibrium structure and allele frequency
distribution.  For studies of epistasis one can simulate models that involve
specific SNPs at specific sets of loci, which we will refer to as \"pathways\".
TriadSim generates genotype data by resampling triad genotypes from existing
data.  The details of the method is described in the manuscript under
preparation \"Simulating Autosomal Genotypes with Realistic Linkage
Disequilibrium and a Spiked in Genetic Effect\" Shi, M., Umbach, D.M., Wise A.S.,
Weinberg, C.R.")
    (license license:gpl3)))

(define-public r-triact
  (package
    (name "r-triact")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "triact" version))
              (sha256
               (base32
                "0aw0k3l342l93rm31kls9bc4g0w4rlavvww2awnc164wj96xd9zr"))))
    (properties `((upstream-name . "triact")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-lubridate r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=triact")
    (synopsis "Analyzing the Lying Behavior of Cows from Accelerometer Data")
    (description
     "Assists in analyzing the lying behavior of cows from raw data recorded with a
triaxial accelerometer attached to the hind leg of a cow.  Allows the
determination of common measures for lying behavior including total lying
duration, the number of lying bouts, and the mean duration of lying bouts.
Further capabilities are the description of lying laterality and the calculation
of proxies for the level of physical activity of the cow.  Reference: Simmler
M., Brouwers S. (2023) <https://gitlab.com/AgroSimi/triact_manuscript>.")
    (license license:gpl3+)))

(define-public r-trexselector
  (package
    (name "r-trexselector")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRexSelector" version))
              (sha256
               (base32
                "1iwyy6jmg4nxkdsybjwsc8h5f74yq6kf708pslr9ss82b2xmd0q1"))))
    (properties `((upstream-name . "TRexSelector")))
    (build-system r-build-system)
    (propagated-inputs (list r-tlars
                             r-mass
                             r-glmnet
                             r-foreach
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jasinmachkour/trex")
    (synopsis
     "T-Rex Selector: High-Dimensional Variable Selection & FDR Control")
    (description
     "This package performs fast variable selection in high-dimensional settings while
controlling the false discovery rate (FDR) at a user-defined target level.  The
package is based on the paper Machkour, Muma, and Palomar (2021)
<arXiv:2110.06048>.")
    (license license:gpl3+)))

(define-public r-tres
  (package
    (name "r-tres")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRES" version))
              (sha256
               (base32
                "0hrlqr6va7f17i4zizc2val2jxl151h8dbp4f97g0ixlqnv39qjl"))))
    (properties `((upstream-name . "TRES")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtensor r-pracma r-mass r-manifoldoptim))
    (home-page "https://github.com/leozeng15/TRES")
    (synopsis "Tensor Regression with Envelope Structure")
    (description
     "This package provides three estimators for tensor response regression (TRR) and
tensor predictor regression (TPR) models with tensor envelope structure.  The
three types of estimation approaches are generic and can be applied to any
envelope estimation problems.  The full Grassmannian (FG) optimization is often
associated with likelihood-based estimation but requires heavy computation and
good initialization; the one-directional optimization approaches (1D and ECD
algorithms) are faster, stable and does not require carefully chosen initial
values; the SIMPLS-type is motivated by the partial least squares regression and
is computationally the least expensive.  For details of TRR, see Li L, Zhang X
(2017) <doi:10.1080/01621459.2016.1193022>.  For details of TPR, see Zhang X, Li
L (2017) <doi:10.1080/00401706.2016.1272495>.  For details of 1D algorithm, see
Cook RD, Zhang X (2016) <doi:10.1080/10618600.2015.1029577>.  For details of ECD
algorithm, see Cook RD, Zhang X (2018) <doi:10.5705/ss.202016.0037>.  For more
details of the package, see Zeng J, Wang W, Zhang X (2021)
<doi:10.18637/jss.v099.i12>.")
    (license license:gpl3)))

(define-public r-trendyy
  (package
    (name "r-trendyy")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trendyy" version))
              (sha256
               (base32
                "03n7qdfc197hds8bdwl20b0nn62nqnz9r35v1q315nm3ccdifl1p"))))
    (properties `((upstream-name . "trendyy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-gtrendsr
                             r-dplyr
                             r-crayon))
    (home-page "https://github.com/josiahparry/trendyy")
    (synopsis "Tidy Wrapper Around 'gtrendsR'")
    (description
     "Access Google Trends information.  This package provides a tidy wrapper to the
gtrendsR package.  Use four spaces when indenting paragraphs within the
Description.")
    (license license:gpl2)))

(define-public r-trendtwosub
  (package
    (name "r-trendtwosub")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Trendtwosub" version))
              (sha256
               (base32
                "12ibxxq58h9w7hlrsxwdirh02casj495rxbfknaggwfx3w30nm56"))))
    (properties `((upstream-name . "Trendtwosub")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis r-magrittr))
    (home-page "https://cran.r-project.org/package=Trendtwosub")
    (synopsis "Two Sample Order Free Trend Nonparametric Inference")
    (description
     "Non-parametric trend comparison of two independent samples with sequential
subsamples.  For more details, please refer to Wang, Stapleton, and Chen (2018)
<doi:10.1080/00949655.2018.1482492>.")
    (license license:gpl2+)))

(define-public r-trendtm
  (package
    (name "r-trendtm")
    (version "2.0.14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrendTM" version))
              (sha256
               (base32
                "1sm2mcjwh1y3bw5gp67mlqayzy6sin6azlmycff58k6pwy88fqzf"))))
    (properties `((upstream-name . "TrendTM")))
    (build-system r-build-system)
    (propagated-inputs (list r-softimpute r-fda r-capushe))
    (home-page "https://cran.r-project.org/package=TrendTM")
    (synopsis "Trend of High-Dimensional Time Series Matrix Estimation")
    (description
     "Matrix factorization for multivariate time series with both low rank and
temporal structures.  The procedure is the one proposed by Alquier, P. and
Marie, N. Matrix factorization for multivariate time series analysis.
Electronic journal of statistics, 13(2), 4346-4366 (2019).")
    (license license:gpl3)))

(define-public r-trendslr
  (package
    (name "r-trendslr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrendSLR" version))
              (sha256
               (base32
                "1x8j2dg3m7b22gva33y4s318a41wl60sz93y868z4j65hp13jb5k"))))
    (properties `((upstream-name . "TrendSLR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tseries
                             r-rssa
                             r-plyr
                             r-imputets
                             r-forecast
                             r-changepoint))
    (home-page "https://cran.r-project.org/package=TrendSLR")
    (synopsis
     "Estimating Trend, Velocity and Acceleration from Sea Level Records")
    (description
     "Analysis of annual average ocean water level time series, providing improved
estimates of trend (mean sea level) and associated real-time velocities and
accelerations.  Improved trend estimates are based on singular spectrum analysis
methods.  Various gap-filling options are included to accommodate incomplete
time series records.  The package also includes a range of diagnostic tools to
inspect the components comprising the original time series which enables expert
interpretation and selection of likely trend components.  A wide range of screen
and plot to file options are available in the package.")
    (license license:gpl3+)))

(define-public r-trendsegmentr
  (package
    (name "r-trendsegmentr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trendsegmentR" version))
              (sha256
               (base32
                "1r582zmxcdmq3sg5wd4zc2p1fv8sgbys5nryvvslak7nj5h0i2yq"))))
    (properties `((upstream-name . "trendsegmentR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=trendsegmentR")
    (synopsis "Linear Trend Segmentation")
    (description
     "This package performs the detection of linear trend changes for univariate time
series by implementing the bottom-up unbalanced wavelet transformation proposed
by H. Maeng and P. Fryzlewicz (2021).  The estimated number and locations of the
change-points are returned with the piecewise-linear estimator for signal.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-trendintrend
  (package
    (name "r-trendintrend")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrendInTrend" version))
              (sha256
               (base32
                "0ijkijyhxhjc7202qssa9wnrmwgv4miv5n8jbml4qqj80kcsbdwp"))))
    (properties `((upstream-name . "TrendInTrend")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-proc r-pracma r-nleqslv))
    (home-page "https://cran.r-project.org/package=TrendInTrend")
    (synopsis
     "Odds Ratio Estimation and Power Calculation for the Trend in Trend Model")
    (description
     "Estimation of causal odds ratio and power calculation given trends in exposure
prevalence and outcome frequencies of stratified data.")
    (license license:gpl2+)))

(define-public r-trending
  (package
    (name "r-trending")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trending" version))
              (sha256
               (base32
                "1crp8hizvasm47fjlf8pjy5jn7y9s16vm7dmpiyr4qb8sizia6xw"))))
    (properties `((upstream-name . "trending")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-tibble r-mass r-citools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reconhub/trending")
    (synopsis "Model Temporal Trends")
    (description
     "This package provides a coherent interface to multiple modelling tools for
fitting trends along with a standardised approach for generating confidence and
prediction intervals.")
    (license license:expat)))

(define-public r-trendeval
  (package
    (name "r-trendeval")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trendeval" version))
              (sha256
               (base32
                "1cpv7l26ia40s46wfi4jwhwzl0xxs0dgzv4ngg8frbv5l80fmvmr"))))
    (properties `((upstream-name . "trendeval")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-trending
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-ellipsis))
    (home-page "https://github.com/reconhub/trendeval")
    (synopsis "Evaluate Trending Models")
    (description
     "This package provides a coherent interface for evaluating models fit with the
trending package.  This package is part of the RECON
(<https://www.repidemicsconsortium.org/>) toolkit for outbreak analysis.")
    (license license:expat)))

(define-public r-trendchange
  (package
    (name "r-trendchange")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trendchange" version))
              (sha256
               (base32
                "0hsh45mr6az9gj2g8mc0nswarc8hwdv5zldmfvnkmh57rznbqpb3"))))
    (properties `((upstream-name . "trendchange")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=trendchange")
    (synopsis
     "Innovative Trend Analysis and Time-Series Change Point Analysis")
    (description
     "Innovative Trend Analysis is a graphical method to examine the trends in time
series data.  Sequential Mann-Kendall test uses the intersection of prograde and
retrograde series to indicate the possible change point in time series data.
Distribution free cumulative sum charts indicate location and significance of
the change point in time series.  Zekai, S. (2011).
<doi:10.1061/(ASCE)HE.1943-5584.0000556>.  Grayson, R. B. et al. (1996).
Hydrological Recipes: Estimation Techniques in Australian Hydrology.
Cooperative Research Centre for Catchment Hydrology, Australia, p.  125.
Sneyers, S. (1990).  On the statistical analysis of series of observations.
Technical note no 5 143, WMO No 725 415.  Secretariat of the World
Meteorological Organization, Geneva, 192 pp.")
    (license license:gpl3)))

(define-public r-trenchr
  (package
    (name "r-trenchr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrenchR" version))
              (sha256
               (base32
                "03w010s3zxbrn7nh439d5mg1670k2hylci28i74q39b9235xn8vz"))))
    (properties `((upstream-name . "TrenchR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-rdpack r-msm r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://trenchproject.github.io/TrenchR/")
    (synopsis "Tools for Microclimate and Biophysical Ecology")
    (description
     "Tools for translating environmental change into organismal response.
Microclimate models to vertically scale weather station data to organismal
heights.  The biophysical modeling tools include both general models for heat
flows and specific models to predict body temperatures for a variety of
ectothermic taxa.  Additional functions model and temporally partition air and
soil temperatures and solar radiation.  Utility functions estimate the
organismal and environmental parameters needed for biophysical ecology.  TrenchR
focuses on relatively simple and modular functions so users can create
transparent and flexible biophysical models.  Many functions are derived from
Gates (1980) <doi:10.1007/978-1-4612-6024-0> and Campbell and Norman (1988)
<isbn:9780387949376>.")
    (license license:expat)))

(define-public r-tremendousr
  (package
    (name "r-tremendousr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tremendousr" version))
              (sha256
               (base32
                "0jkhpb7q1kg8n2fjj7n3khzwdsz0kh9w7q2wd9xf5mn69066m3f1"))))
    (properties `((upstream-name . "tremendousr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-crul r-crayon r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tremendousr")
    (synopsis "Easily Send Rewards and Incentives with 'Tremendous' from R")
    (description
     "This package provides a slightly-opinionated R interface for the Tremendous API
(<https://www.tremendous.com/>).  In addition to supporting GET and POST
requests, tremendousr has, dare I say, tremendously intuitive functions for
sending digital rewards and incentives directly from R.")
    (license license:expat)))

(define-public r-trellor
  (package
    (name "r-trellor")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trelloR" version))
              (sha256
               (base32
                "0rlnqpkvfp736m2ndz90v9rl4x17l3i8j70bsx7pfdd0nfffqsqv"))))
    (properties `((upstream-name . "trelloR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jchrom/trelloR")
    (synopsis "Access the Trello API")
    (description
     "An R client for the Trello API. Supports free-tier features such as access to
private boards, creating and updating cards and other resources, and downloading
data in a structured way.")
    (license license:gpl3)))

(define-public r-trelliscopejs
  (package
    (name "r-trelliscopejs")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trelliscopejs" version))
              (sha256
               (base32
                "16i1km57yz8bl4ni919d3qmj8aj5l88l7byhd6ksh88ygpfl7wq8"))))
    (properties `((upstream-name . "trelliscopejs")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot
                             r-tidyr
                             r-rlang
                             r-purrr
                             r-progress
                             r-knitr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-gtable
                             r-ggplot2
                             r-dplyr
                             r-distributionutils
                             r-digest
                             r-base64enc
                             r-autocogs))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/hafen/trelliscopejs")
    (synopsis "Create Interactive Trelliscope Displays")
    (description
     "Trelliscope is a scalable, flexible, interactive approach to visualizing data
(Hafen, 2013 <doi:10.1109/LDAV.2013.6675164>).  This package provides methods
that make it easy to create a Trelliscope display specification for
TrelliscopeJS. High-level functions are provided for creating displays from
within tidyverse or ggplot2 workflows.  Low-level functions are also provided
for creating new interfaces.")
    (license license:bsd-3)))

(define-public r-trekfont
  (package
    (name "r-trekfont")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trekfont" version))
              (sha256
               (base32
                "1c0rwjmpg6b83kvkwrc0fcg1adx5is1g0wn01iss037jph5j0f2l"))))
    (properties `((upstream-name . "trekfont")))
    (build-system r-build-system)
    (home-page "https://github.com/leonawicz/trekfont")
    (synopsis "Star Trek Fonts Collection")
    (description
     "This package provides a collection of true type and open type Star Trek-themed
fonts.")
    (license license:gpl3)))

(define-public r-trekcolors
  (package
    (name "r-trekcolors")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trekcolors" version))
              (sha256
               (base32
                "0jm85lrsqlpl1k62fbim48kprsqs50bm0dbajnk8f42x6i3m1xav"))))
    (properties `((upstream-name . "trekcolors")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/leonawicz/trekcolors")
    (synopsis "Star Trek Color Palettes")
    (description
     "This package provides a dataset of predefined color palettes based on the Star
Trek science fiction series, associated color palette functions, and additional
functions for generating customized palettes that are on theme.  The package
also offers functions for applying the palettes to plots made using the ggplot2
package.")
    (license license:expat)))

(define-public r-treetools
  (package
    (name "r-treetools")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeTools" version))
              (sha256
               (base32
                "05h9l71mg1b9wx4w9ls25qm3agx9rp6hs0rkn6aqyll9js8mcfh7"))))
    (properties `((upstream-name . "TreeTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpp
                             r-r-cache
                             r-lifecycle
                             r-fastmatch
                             r-colorspace
                             r-bit64
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/TreeTools/")
    (synopsis "Create, Modify and Analyse Phylogenetic Trees")
    (description
     "Efficient implementations of functions for the creation, modification and
analysis of phylogenetic trees.  Applications include: generation of trees with
specified shapes; tree rearrangement; analysis of tree shape; rooting of trees
and extraction of subtrees; calculation and depiction of split support; plotting
the position of rogue taxa (Klopfstein & Spasojevic 2019)
<doi:10.1371/journal.pone.0212942>; calculation of ancestor-descendant
relationships, of stemwardness (Asher & Smith, 2022)
<doi:10.1093/sysbio/syab072>, and of tree balance (Mir et al.  2013)
<doi:10.1016/j.mbs.2012.10.005>; artificial extinction (Asher & Smith, 2022)
<doi:10.1093/sysbio/syab072>; import and export of trees from Newick, Nexus
(Maddison et al.  1997) <doi:10.1093/sysbio/46.4.590>, and TNT
<https://www.lillo.org.ar/phylogeny/tnt/> formats; and analysis of splits and
cladistic information.")
    (license license:gpl3+)))

(define-public r-treestructure
  (package
    (name "r-treestructure")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treestructure" version))
              (sha256
               (base32
                "0514q53bdwv9fwd58srhr6lzw1j56fcd64hml8w4rv4wzcd6c01m"))))
    (properties `((upstream-name . "treestructure")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=treestructure")
    (synopsis "Detect Population Structure Within Phylogenetic Trees")
    (description
     "Algorithms for detecting population structure from the history of coalescent
events recorded in phylogenetic trees.  This method classifies each tip and
internal node of a tree into disjoint sets characterized by similar coalescent
patterns.  The methods are described in Volz, E., Wiuf, C., Grad, Y., Frost, S.,
Dennis, A., & Didelot, X. (2020) <doi:10.1093/sysbio/syaa009>.")
    (license license:gpl2+)))

(define-public r-treestartr
  (package
    (name "r-treestartr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treestartr" version))
              (sha256
               (base32
                "05rxy9lmb77ng4266871sd881mlp4rd5qalvsd7ps2x2j4plaqf4"))))
    (properties `((upstream-name . "treestartr")))
    (build-system r-build-system)
    (propagated-inputs (list r-phytools r-ape))
    (home-page "https://ropensci.github.io/treeStartR/")
    (synopsis
     "Generate Starting Trees for Combined Molecular, Morphological and Stratigraphic Data")
    (description
     "Combine a list of taxa with a phylogeny to generate a starting tree for use in
total evidence dating analyses.")
    (license license:expat)))

(define-public r-treespace
  (package
    (name "r-treespace")
    (version "1.1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treespace" version))
              (sha256
               (base32
                "177n1h4yjvfmdsyy4anwi1gfxcxxvhdlyqagn74ni3pi6mxvjp4s"))))
    (properties `((upstream-name . "treespace")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinybs
                             r-shiny
                             r-scatterd3
                             r-rlumshiny
                             r-rgl
                             r-rcpp
                             r-phytools
                             r-phangorn
                             r-mass
                             r-htmlwidgets
                             r-fields
                             r-distory
                             r-combinat
                             r-ape
                             r-adephylo
                             r-adegraphics
                             r-adegenet
                             r-ade4))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=treespace")
    (synopsis "Statistical Exploration of Landscapes of Phylogenetic Trees")
    (description
     "Tools for the exploration of distributions of phylogenetic trees.  This package
includes a shiny interface which can be started from R using treespaceServer().
For further details see Jombart et al. (2017) <DOI:10.1111/1755-0998.12676>.")
    (license license:expat)))

(define-public r-treesimgm
  (package
    (name "r-treesimgm")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeSimGM" version))
              (sha256
               (base32
                "125c9rim272h0dfyygmmijz8dcnch3g9wy1ngki77dyrmdl77yfx"))))
    (properties `((upstream-name . "TreeSimGM")))
    (build-system r-build-system)
    (propagated-inputs (list r-treesim r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TreeSimGM")
    (synopsis
     "Simulating Phylogenetic Trees under General Bellman Harris and Lineage Shift Model")
    (description
     "This package provides a flexible simulation tool for phylogenetic trees under a
general model for speciation and extinction.  Trees with a user-specified number
of extant tips, or a user-specified stem age are simulated.  It is possible to
assume any probability distribution for the waiting time until speciation and
extinction.  Furthermore, the waiting times to speciation / extinction may be
scaled in different parts of the tree, meaning we can simulate trees with
clade-dependent diversification processes.  At a speciation event, one species
splits into two.  We allow for two different modes at these splits: (i)
symmetric, where for every speciation event new waiting times until speciation
and extinction are drawn for both daughter lineages; and (ii) asymmetric, where
a speciation event results in one species with new waiting times, and another
that carries the extinction time and age of its ancestor.  The symmetric mode
can be seen as an vicariant or allopatric process where divided populations
suffer equal evolutionary forces while the asymmetric mode could be seen as a
peripatric speciation where a mother lineage continues to exist.  Reference: O.
Hagen and T. Stadler (2017).  TreeSimGM: Simulating phylogenetic trees under
general Bellman Harris models with lineage-specific shifts of speciation and
extinction in R. Methods in Ecology and Evolution.
<doi:10.1111/2041-210X.12917>.")
    (license license:gpl2)))

(define-public r-treesim
  (package
    (name "r-treesim")
    (version "2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeSim" version))
              (sha256
               (base32
                "0nmzx2723n1f5lr951zz2ih2gnpfim5qzihlayhpf181z1qijv93"))))
    (properties `((upstream-name . "TreeSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-geiger r-ape))
    (home-page "https://cran.r-project.org/package=TreeSim")
    (synopsis "Simulating Phylogenetic Trees")
    (description
     "Simulation methods for phylogenetic trees where (i) all tips are sampled at one
time point or (ii) tips are sampled sequentially through time. (i) For sampling
at one time point, simulations are performed under a constant rate birth-death
process, conditioned on having a fixed number of final tips (sim.bd.taxa()), or
a fixed age (sim.bd.age()), or a fixed age and number of tips
(sim.bd.taxa.age()).  When conditioning on the number of final tips, the method
allows for shifts in rates and mass extinction events during the birth-death
process (sim.rateshift.taxa()).  The function sim.bd.age() (and
sim.rateshift.taxa() without extinction) allow the speciation rate to change in
a density-dependent way.  The LTT plots of the simulations can be displayed
using LTT.plot(), LTT.plot.gen() and LTT.average.root().  TreeSim further
samples trees with n final tips from a set of trees generated by the common
sampling algorithm stopping when a fixed number m>>n of tips is first reached
(sim.gsa.taxa()).  This latter method is appropriate for m-tip trees generated
under a big class of models (details in the sim.gsa.taxa() man page).  For
incomplete phylogeny, the missing speciation events can be added through
simulations (corsim()). (ii) sim.rateshifts.taxa() is generalized to
sim.bdsky.stt() for serially sampled trees, where the trees are conditioned on
either the number of sampled tips or the age.  Furthermore, for a
multitype-branching process with sequential sampling, trees on a fixed number of
tips can be simulated using sim.bdtypes.stt.taxa().  This function further
allows to simulate under epidemiological models with an exposed class.  The
function sim.genespeciestree() simulates coalescent gene trees within
birth-death species trees, and sim.genetree() simulates coalescent gene trees.")
    (license license:gpl2)))

(define-public r-treesearch
  (package
    (name "r-treesearch")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeSearch" version))
              (sha256
               (base32
                "01cl64p3mgx353xm43k59idqd0kxvxig1mvi3vx32qw0xhdhplfp"))))
    (properties `((upstream-name . "TreeSearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-treetools
                             r-treedist
                             r-shinyjs
                             r-shiny
                             r-rogue
                             r-rdpack
                             r-rcpp
                             r-protoclust
                             r-promises
                             r-future
                             r-fastmatch
                             r-cluster
                             r-cli
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/TreeSearch/")
    (synopsis "Phylogenetic Analysis with Discrete Character Data")
    (description
     "Reconstruct phylogenetic trees from discrete data.  Inapplicable character
states are handled using the algorithm of Brazeau, Guillerme and Smith (2019)
<doi:10.1093/sysbio/syy083> with the \"Morphy\" library, under equal or implied
step weights.  Contains a \"shiny\" user interface for interactive tree search and
exploration of results, including character visualization, rogue taxon
detection, tree space mapping, and cluster consensus trees (Smith 2022a, b)
<doi:10.1093/sysbio/syab099>, <doi:10.1093/sysbio/syab100>.  Profile Parsimony
(Faith and Trueman, 2001) <doi:10.1080/10635150118627>, Successive
Approximations (Farris, 1969) <doi:10.2307/2412182> and custom optimality
criteria are implemented.")
    (license license:gpl3+)))

(define-public r-treeplyr
  (package
    (name "r-treeplyr")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treeplyr" version))
              (sha256
               (base32
                "0k5hblnpbs8h2812blc6crx1j9w9r7lzkz3fraxkn4gdfpfi5100"))))
    (properties `((upstream-name . "treeplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp
                             r-phytools
                             r-lazyeval
                             r-geiger
                             r-dplyr
                             r-ape))
    (home-page "https://github.com/uyedaj/treeplyr")
    (synopsis "'dplyr' Functionality for Matched Tree and Data Objects")
    (description
     "Matches phylogenetic trees and trait data, and allows simultaneous manipulation
of the tree and data using dplyr'.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-treeplotarea
  (package
    (name "r-treeplotarea")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treePlotArea" version))
              (sha256
               (base32
                "1fkm6jac2j3r2s3whd3aql8czflpd99kmq5wa0nfb5qrynpvim7s"))))
    (properties `((upstream-name . "treePlotArea")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf))
    (native-inputs (list))
    (home-page "https://gitlab.com/fvafrcu/treePlotArea.git")
    (synopsis
     "Correction Factors for Tree Plot Areas Intersected by Stand Boundaries")
    (description
     "The German national forest inventory uses angle count sampling, a sampling
method first published as `Bitterlich, W.: Die WinkelzÃ¤hlmessung.  Allgemeine
Forst- und Holzwirtschaftliche Zeitung, 58.  Jahrg., Folge 11/12 vom Juni 1947`
and extended by Grosenbaugh
(<https://academic.oup.com/jof/article-abstract/50/1/32/4684174>) as probability
proportional to size sampling.  When plots are located near stand boundaries,
their sizes and hence their probabilities need to be corrected.")
    (license license:bsd-2)))

(define-public r-treenomial
  (package
    (name "r-treenomial")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treenomial" version))
              (sha256
               (base32
                "0vx5x7078ccn2bsmcxdls3ymmc7jx71xzq0va0n7gyw36gi7k3nn"))))
    (properties `((upstream-name . "treenomial")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppthread r-rcpparmadillo r-rcpp r-ape))
    (home-page "https://github.com/gouldmatt/treenomial")
    (synopsis "Comparison of Trees using a Tree Defining Polynomial")
    (description
     "This package provides functionality for creation and comparison of polynomials
that uniquely describe trees as introduced in Liu (2019, <arXiv:1904.03332>).
The core method converts rooted unlabeled phylo objects from ape to the tree
defining polynomials described with coefficient matrices.  Additionally, a
conversion for rooted binary trees with binary trait labels is also provided.
Once the polynomials of trees are calculated there are functions to calculate
distances, distance matrices and plot different distance trees from a target
tree.  Manipulation and conversion to the tree defining polynomials is
implemented in C++ with Rcpp and RcppArmadillo'.  Furthermore, parallel
programming with RcppThread is used to improve performance converting to
polynomials and calculating distances.")
    (license license:gpl2+)))

(define-public r-treemisc
  (package
    (name "r-treemisc")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treemisc" version))
              (sha256
               (base32
                "0289grmgcvdszsb9lhgygm1dahlcn1m50lh110ny5yjh1b4627kn"))))
    (properties `((upstream-name . "treemisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-rcpp r-matrix))
    (home-page "https://cran.r-project.org/package=treemisc")
    (synopsis
     "Data Sets and Functions to Accompany \"Tree-Based Methods for Statistical Learning in R\"")
    (description
     "Miscellaneous data sets and functions to accompany Greenwell (2022) \"Tree-Based
Methods for Statistical Learning in R\" <doi:10.1201/9781003089032>.")
    (license license:gpl2+)))

(define-public r-treemapify
  (package
    (name "r-treemapify")
    (version "2.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treemapify" version))
              (sha256
               (base32
                "0g6bwchyn13iksv8vyc4d0c7n1zpy26x1bd6vkrm8ail98y2ia2m"))))
    (properties `((upstream-name . "treemapify")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-ggfittext))
    (native-inputs (list r-knitr))
    (home-page "https://wilkox.org/treemapify/")
    (synopsis "Draw Treemaps in 'ggplot2'")
    (description "This package provides ggplot2 geoms for drawing treemaps.")
    (license license:gpl3+)))

(define-public r-treeheatr
  (package
    (name "r-treeheatr")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treeheatr" version))
              (sha256
               (base32
                "0618j5rlq0xik9vl2l8ircnh98wzdzf9bxnfgmiqrpywgmc8r5nk"))))
    (properties `((upstream-name . "treeheatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-tidyr
                             r-seriation
                             r-partykit
                             r-gtable
                             r-ggplot2
                             r-ggparty
                             r-ggnewscale
                             r-dplyr
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://trang1618.github.io/treeheatr/index.html")
    (synopsis "Heatmap-Integrated Decision Tree Visualizations")
    (description
     "This package creates interpretable decision tree visualizations with the data
represented as a heatmap at the tree's leaf nodes.  treeheatr utilizes the
customizable ggparty package for drawing decision trees.")
    (license license:expat)))

(define-public r-treefit
  (package
    (name "r-treefit")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treefit" version))
              (sha256
               (base32
                "0258844r50ksxjivmnvgzr8f83qz1cqfyq7j5jgyxpqps62q5v7w"))))
    (properties `((upstream-name . "treefit")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-patchwork r-igraph r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://hayamizu-lab.github.io/treefit-r/")
    (synopsis "The First Software for Quantitative Trajectory Inference")
    (description
     "Perform two types of analysis: 1) checking the goodness-of-fit of tree models to
your single-cell gene expression data; and 2) deciding which tree best fits your
data.")
    (license license:gpl3+)))

(define-public r-treeducken
  (package
    (name "r-treeducken")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treeducken" version))
              (sha256
               (base32
                "0i2r1l508yi0cq7fzdds0hz2k4bxm67nknybxvbyylmwnwv6a0a1"))))
    (properties `((upstream-name . "treeducken")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-aptreeshape r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=treeducken")
    (synopsis "Nested Phylogenetic Tree Simulator")
    (description
     "Simulates nested phylogenetic trees (gene trees in species tree, symbiont trees
in host trees) using birth-death processes and transfers between lineages.
Simulations of gene trees within species trees are performed using a three-tree
model with species trees, locus trees, and gene trees.  The cophylogenetic
birth-death process is used to simulate sets of host and symbiont trees with
extant associations between tips.  For more information about the three-tree
model see: Mallo et al. (2015) <doi:10.1093/sysbio/syv082>, Rasmussen and Kellis
(2012) <doi:10.1101/gr.123901.111>.")
    (license license:gpl3)))

(define-public r-treedist
  (package
    (name "r-treedist")
    (version "2.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeDist" version))
              (sha256
               (base32
                "0wm2lgz54ryclf72gfrsh58a2621f0hvsnwcvdwf2q53xw74b9gz"))))
    (properties `((upstream-name . "TreeDist")))
    (build-system r-build-system)
    (propagated-inputs (list r-treetools
                             r-shinyjs
                             r-shiny
                             r-rdpack
                             r-rcpp
                             r-phangorn
                             r-memoise
                             r-colorspace
                             r-cli
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/TreeDist/")
    (synopsis "Calculate and Map Distances Between Phylogenetic Trees")
    (description
     "This package implements measures of tree similarity, including information-based
generalized Robinson-Foulds distances (Phylogenetic Information Distance,
Clustering Information Distance, Matching Split Information Distance; Smith
2020) <doi:10.1093/bioinformatics/btaa614>; Jaccard-Robinson-Foulds distances
(Bocker et al.  2013) <doi:10.1007/978-3-642-40453-5_13>, including the Nye et
al. (2006) metric <doi:10.1093/bioinformatics/bti720>; the Matching Split
Distance (Bogdanowicz & Giaro 2012) <doi:10.1109/TCBB.2011.48>; Maximum
Agreement Subtree distances; the Kendall-Colijn (2016) distance
<doi:10.1093/molbev/msw124>, and the Nearest Neighbour Interchange (NNI)
distance, approximated per Li et al. (1996) <doi:10.1007/3-540-61332-3_168>.
Includes tools for visualizing mappings of tree space (Smith 2022)
<doi:10.1093/sysbio/syab100>, for calculating the median of sets of trees, and
for computing the information content of trees and splits.")
    (license license:gpl3+)))

(define-public r-treedimensiontest
  (package
    (name "r-treedimensiontest")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeDimensionTest" version))
              (sha256
               (base32
                "1bwvspjvc1cragbsrc05vhwk0zmfj36r9piqbj0vgahpjb4cswn9"))))
    (properties `((upstream-name . "TreeDimensionTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcpp
                             r-rcolorbrewer
                             r-nfactors
                             r-mlpack
                             r-igraph
                             r-fitdistrplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TreeDimensionTest")
    (synopsis "Trajectory Presence and Heterogeneity in Multivariate Data")
    (description
     "Testing for trajectory presence and heterogeneity on multivariate data.  Two
statistical methods (Tenha & Song 2022) <doi:10.1371/journal.pcbi.1009829> are
implemented.  The tree dimension test quantifies the statistical evidence for
trajectory presence.  The subset specificity measure summarizes pattern
heterogeneity using the minimum subtree cover.  There is no user tunable
parameters for either method.  Examples are included to illustrate how to use
the methods on single-cell data for studying gene and pathway expression
dynamics and pathway expression specificity.")
    (license license:lgpl3+)))

(define-public r-treediagram
  (package
    (name "r-treediagram")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeDiagram" version))
              (sha256
               (base32
                "03kn9h37wgx300szzxmg21zc5iz3a9v8f2ydzv6dv6rhpa7yn0v5"))))
    (properties `((upstream-name . "TreeDiagram")))
    (build-system r-build-system)
    (propagated-inputs (list r-tree r-stringr r-ggplot2 r-cowplot r-ape))
    (home-page "https://cran.r-project.org/package=TreeDiagram")
    (synopsis "Tree Diagram")
    (description
     "Visualizing cuts for either axis-align or non axis-align tree methods (e.g.
decision tree, random tessellation process).")
    (license (license:fsdg-compatible "BSD_2_clause + file LICENCE"))))

(define-public r-treedep
  (package
    (name "r-treedep")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeDep" version))
              (sha256
               (base32
                "0ja2hp9sxzybac6dqdsns5q1rj12swl240znsnsffg9mkvzhq6rl"))))
    (properties `((upstream-name . "TreeDep")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-ggplot2))
    (home-page "https://cran.r-project.org/package=TreeDep")
    (synopsis "Air Pollution Removal by Dry Deposition on Trees")
    (description
     "The model estimates air pollution removal by dry deposition on trees.  It also
estimates or uses hourly values for aerodynamic resistance, boundary layer
resistance, canopy resistance, stomatal resistance, cuticular resistance,
mesophyll resistance, soil resistance, friction velocity and deposition
velocity.  It also allows plotting graphical results for a specific time period.
 The pollutants are nitrogen dioxide, ozone, sulphur dioxide, carbon monoxide
and particulate matter.  Baldocchi D (1994)
<doi:10.1093/treephys/14.7-8-9.1069>.  Farquhar GD, von Caemmerer S, Berry JA
(1980) Planta 149: 78-90.  Hirabayashi S, Kroll CN, Nowak DJ (2015) i-Tree Eco
Dry Deposition Model.  Nowak DJ, Crane DE, Stevens JC (2006)
<doi:10.1016/j.ufug.2006.01.007>.  US EPA (1999) PCRAMMET User's Guide.
EPA-454/B-96-001.  Weiss A, Norman JM (1985) Agricultural and Forest Meteorology
34: 205â213.")
    (license license:gpl2)))

(define-public r-treedater
  (package
    (name "r-treedater")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treedater" version))
              (sha256
               (base32
                "007rdrbv3v1z3qbyasla22rck105sqlqh93yfmxklihdydl7smfd"))))
    (properties `((upstream-name . "treedater")))
    (build-system r-build-system)
    (propagated-inputs (list r-limsolve r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=treedater")
    (synopsis
     "Fast Molecular Clock Dating of Phylogenetic Trees with Rate Variation")
    (description
     "This package provides functions for estimating times of common ancestry and
molecular clock rates of evolution using a variety of evolutionary models,
parametric and nonparametric bootstrap confidence intervals, methods for
detecting outlier lineages, root-to-tip regression, and a statistical test for
selecting molecular clock models.  The methods are described in Volz, E.M. and
S.D.W. Frost (2017) <doi:10.1093/ve/vex025>.")
    (license license:gpl2)))

(define-public r-treedata-table
  (package
    (name "r-treedata-table")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treedata.table" version))
              (sha256
               (base32
                "0dhnb8if5wq6hzhjg40cw80sacigqmlm7nplm1f1ay5cqx1ynfi7"))))
    (properties `((upstream-name . "treedata.table")))
    (build-system r-build-system)
    (propagated-inputs (list r-lazyeval r-geiger r-data-table r-ape))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/treedata.table/https://github.com/ropensci/treedata.table/")
    (synopsis
     "Manipulation of Matched Phylogenies and Data using 'data.table'")
    (description
     "An implementation that combines trait data and a phylogenetic tree (or trees)
into a single object of class treedata.table.  The resulting object can be
easily manipulated to simultaneously change the trait- and tree-level sampling.
Currently implemented functions allow users to use a data.table syntax when
performing operations on the trait dataset within the treedata.table object.")
    (license license:expat)))

(define-public r-treeda
  (package
    (name "r-treeda")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treeDA" version))
              (sha256
               (base32
                "0rdqvjj16w7ykpxd6m800h4zv79y9c1phhkl14xy10gbi2cqh10g"))))
    (properties `((upstream-name . "treeDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparselda
                             r-reshape2
                             r-phyloseq
                             r-mvtnorm
                             r-matrix
                             r-gtable
                             r-ggplot2
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jfukuyama/treeda")
    (synopsis "Tree-Based Discriminant Analysis")
    (description
     "This package performs sparse discriminant analysis on a combination of node and
leaf predictors when the predictor variables are structured according to a tree,
as described in Fukuyama et al. (2017) <doi:10.1371/journal.pcbi.1005706>.")
    (license license:gpl2)))

(define-public r-treecm
  (package
    (name "r-treecm")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treecm" version))
              (sha256
               (base32
                "0vrawg4vvy270dn20gb2k99xi4q89l4mjz0mm7ikpz8wxqypzq2l"))))
    (properties `((upstream-name . "treecm")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr))
    (home-page "https://github.com/mbask/treecm")
    (synopsis "Centre of Mass Assessment and Consolidation of Trees")
    (description
     "The centre of mass is a crucial data for arborists in order to consolidate a
tree using steel or dynamic cables.  Given field-recorded data on branchiness of
a tree, the package: (i) computes and plots the centre of mass of the tree
itself, (ii) computes branches slenderness coefficient in order to aid the
arborist identify potentially dangerous branches, and (iii) computes the force
acting on a ground plinth and its best position relating to the tree centre of
mass, should the tree need to be stabilized by a steel cable.")
    (license license:gpl2)))

(define-public r-treeclim
  (package
    (name "r-treeclim")
    (version "2.0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treeclim" version))
              (sha256
               (base32
                "0zdn766vxgycisjyjw7nh7hs817kqhdihyla3fhpzykw9pxnw0b2"))))
    (properties `((upstream-name . "treeclim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-plyr
                             r-np
                             r-lmtest
                             r-lmodel2
                             r-ggplot2
                             r-boot
                             r-abind))
    (home-page "https://github.com/cszang/treeclim")
    (synopsis "Numerical Calibration of Proxy-Climate Relationships")
    (description
     "Bootstrapped response and correlation functions, seasonal correlations and
evaluation of reconstruction skills for use in dendroclimatology and
dendroecology, see Zang and Biondi (2015) <doi:10.1111/ecog.01335>.")
    (license license:gpl3)))

(define-public r-treebugs
  (package
    (name "r-treebugs")
    (version "1.4.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreeBUGS" version))
              (sha256
               (base32
                "1jr3xjdb909rlc698swpi5znmam2v73mp717vfg157df36930yj8"))))
    (properties `((upstream-name . "TreeBUGS")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-runjags
                             r-rjags
                             r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-logspline
                             r-hypergeo
                             r-coda))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/danheck/TreeBUGS")
    (synopsis "Hierarchical Multinomial Processing Tree Modeling")
    (description
     "User-friendly analysis of hierarchical multinomial processing tree (MPT) models
that are often used in cognitive psychology.  Implements the latent-trait MPT
approach (Klauer, 2010) <DOI:10.1007/s11336-009-9141-0> and the beta-MPT
approach (Smith & Batchelder, 2010) <DOI:10.1016/j.jmp.2009.06.007> to model
heterogeneity of participants.  MPT models are conveniently specified by an
.eqn-file as used by other MPT software and data are provided by a .csv-file or
directly in R. Models are either fitted by calling JAGS or by an MPT-tailored
Gibbs sampler in C++ (only for nonhierarchical and beta MPT models).  Provides
tests of heterogeneity and MPT-tailored summaries and plotting functions.  A
detailed documentation is available in Heck, Arnold, & Arnold (2018)
<DOI:10.3758/s13428-017-0869-7> and a tutorial on MPT modeling can be found in
Schmidt, Erdfelder, & Heck (2022) <DOI:10.31234/osf.io/gh8md>.")
    (license license:gpl3)))

(define-public r-treebase
  (package
    (name "r-treebase")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treebase" version))
              (sha256
               (base32
                "1bx31jahb0wy2g8wl1z71vy659lfi8fq1sbbaxvyixzcwymix1wq"))))
    (properties `((upstream-name . "treebase")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcurl r-httr r-ape))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ropensci/treebase")
    (synopsis "Discovery, Access and Manipulation of 'TreeBASE' Phylogenies")
    (description
     "Interface to the API for TreeBASE <http://treebase.org> from R. TreeBASE is a
repository of user-submitted phylogenetic trees (of species, population, or
genes) and the data used to create them.")
    (license license:cc0)))

(define-public r-treebalance
  (package
    (name "r-treebalance")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treebalance" version))
              (sha256
               (base32
                "0wxsd9mx7bcz95vn4a9w1bzqvd8v1qk5qv00p3x58qks7nzxyzdv"))))
    (properties `((upstream-name . "treebalance")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise r-ape))
    (home-page "https://cran.r-project.org/package=treebalance")
    (synopsis "Computation of Tree (Im)Balance Indices")
    (description
     "The aim of the R package treebalance is to provide functions for the computation
of a large variety of (im)balance indices for rooted trees.  The package
accompanies the manuscript Tree balance indices: a comprehensive survey by M.
Fischer, L. Herbst, S. Kersting, L. Kuehn and K. Wicke (2021)
<arXiv:2109.12281>, which gives a precise definition for the terms balance index
and imbalance index (Section 3) and provides an overview of the terminology in
this manual (Section 2).  For further information on (im)balance indices, see
also Fischer et al. (2021) <https://treebalance.wordpress.com>.  Considering
both established and new (im)balance indices, treebalance provides (among
others) functions for calculating the following 18 established indices: the
average leaf depth, the B1 and B2 index, the Colijn-Plazzotta rank, the normal,
corrected, quadratic and equal weights Colless index, the family of Colless-like
indices, the family of I-based indices, the Rogers J index, the Furnas rank, the
rooted quartet index, the s-shape statistic, the Sackin index, the symmetry
nodes index, the total cophenetic index and the variance of leaf depths.
Additionally, we include 5 tree shape statistics that satisfy the definition of
an (im)balance index but have not been thoroughly analyzed in terms of tree
balance in the literature yet.  These are: the maximum width, the maximum
difference in widths, the maximal depth, the stairs1 and the stairs2 index.  As
input, most functions of treebalance require a rooted (phylogenetic) tree in
phylo format (as introduced in ape 1.9 in November 2006).  phylo is used to
store (phylogenetic) trees with no vertices of out-degree one.  For further
information on the format we kindly refer the reader to E. Paradis (2012)
<http://ape-package.ird.fr/misc/FormatTreeR_24Oct2012.pdf>.")
    (license license:gpl3)))

(define-public r-tree-interpreter
  (package
    (name "r-tree-interpreter")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tree.interpreter" version))
              (sha256
               (base32
                "18p1x53q1hhhagglgsq2axnr9l5rpa08vxjayqqmb6rsjrkygn78"))))
    (properties `((upstream-name . "tree.interpreter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nalzok/tree.interpreter")
    (synopsis
     "Random Forest Prediction Decomposition and Feature Importance Measure")
    (description
     "An R re-implementation of the treeinterpreter package on PyPI
<https://pypi.org/project/treeinterpreter/>.  Each prediction can be decomposed
as prediction = bias + feature_1_contribution + ... + feature_n_contribution'.
This decomposition is then used to calculate the Mean Decrease Impurity (MDI)
and Mean Decrease Impurity using out-of-bag samples (MDI-oob) feature importance
measures based on the work of Li et al. (2019) <arXiv:1906.10845>.")
    (license license:expat)))

(define-public r-treatmentselection
  (package
    (name "r-treatmentselection")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TreatmentSelection" version))
              (sha256
               (base32
                "1pw64hx697jg2f1r2zd8y98g3ivj2gm8fnixcjfn4drsd0xixb4p"))))
    (properties `((upstream-name . "TreatmentSelection")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-ggplot2 r-binom))
    (home-page "http://rpubs.com/mdbrown/TreatmentSelection")
    (synopsis "Evaluate Treatment Selection Biomarkers")
    (description
     "This package provides a suite of descriptive and inferential methods designed to
evaluate one or more biomarkers for their ability to guide patient treatment
recommendations.  Package includes functions to assess the calibration of risk
models; and plot, evaluate, and compare markers.  Please see the reference Janes
H, Brown MD, Huang Y, et al. (2014) <doi:10.1515/ijb-2012-0052> for further
details.")
    (license license:gpl3)))

(define-public r-treasurytr
  (package
    (name "r-treasurytr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "treasuryTR" version))
              (sha256
               (base32
                "0qlxkvsbi1xfsahpdzbcnzylisyy1lb94dkk5jjzis419lrgcssr"))))
    (properties `((upstream-name . "treasuryTR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-quantmod r-lubridate r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mgei/treasuryTR")
    (synopsis "Generate Treasury Total Returns from Yield Data")
    (description
     "Generate Total Returns (TR) from bond yield data with fixed maturity, e.g.
reported treasury yields.  The generated TR series are very close to alternative
series that can be purchased (e.g. CRSP, Bloomberg), suggesting they are a
high-quality alternative for those, see Swinkels (2019)
<doi:10.3390/data4030091>.")
    (license license:expat)))

(define-public r-trd
  (package
    (name "r-trd")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRD" version))
              (sha256
               (base32
                "0bhn4bcrq39f5dgqc74jqsfhs1iqfxhawacqqyncbk2372013nqp"))))
    (properties `((upstream-name . "TRD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlab))
    (home-page "https://cran.r-project.org/package=TRD")
    (synopsis "Transmission Ratio Distortion")
    (description
     "Transmission Ratio Distortion (TRD) is a genetic phenomenon where the two
alleles from either parent are not transmitted to the offspring at the expected
1:1 ratio under Mendelian inheritance, leading to spurious signals in genetic
association studies.  Functions in this package are developed to account for
this phenomenon using loglinear model and Transmission Disequilibrium Test
(TDT).  Some population information can also be calculated.")
    (license license:gpl2+)))

(define-public r-trawl
  (package
    (name "r-trawl")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trawl" version))
              (sha256
               (base32
                "1a8cvkmw7bmdljggfv26n2nrad6974spga2yw5386k70ghq56mz3"))))
    (properties `((upstream-name . "trawl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsa
                             r-squash
                             r-runuran
                             r-rootsolve
                             r-mass
                             r-ggpubr
                             r-ggplot2
                             r-deoptim))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=trawl")
    (synopsis "Estimation and Simulation of Trawl Processes")
    (description
     "This package contains R functions for simulating and estimating integer-valued
trawl processes as described in the article Veraart (2019),\"Modeling, simulation
and inference for multivariate time series of counts using trawl processes\",
Journal of Multivariate Analysis, 169, pages 110-129,
<doi:10.1016/j.jmva.2018.08.012> and for simulating random vectors from the
bivariate negative binomial and the bi- and trivariate logarithmic series
distributions.")
    (license license:gpl3)))

(define-public r-traudem
  (package
    (name "r-traudem")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "traudem" version))
              (sha256
               (base32
                "0qxvh5zfj14yaywjzf83v01v6n064iq16ba8g72yh0pbb8i98w9i"))))
    (properties `((upstream-name . "traudem")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-sys r-rlang r-purrr r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://lucarraro.github.io/traudem/")
    (synopsis "Use TauDEM")
    (description
     "Simple trustworthy utility functions to use TauDEM (Terrain Analysis Using
Digital Elevation Models <https://hydrology.usu.edu/taudem/taudem5/>)
command-line interface.  This package provides a guide to installation of TauDEM
and its dependencies GDAL (Geopatial Data Abstraction Library) and MPI (Message
Passing Interface) for different operating systems.  Moreover, it checks that
TauDEM and its dependencies are correctly installed and included to the PATH,
and it provides wrapper commands for calling TauDEM methods from R.")
    (license license:expat)))

(define-public r-tratamentos-ad
  (package
    (name "r-tratamentos-ad")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tratamentos.ad" version))
              (sha256
               (base32
                "15xba5g5b9rxpndgmhlnnq35xjic9v7ymgpyaaj6fn0kziphip84"))))
    (properties `((upstream-name . "Tratamentos.ad")))
    (build-system r-build-system)
    (propagated-inputs (list r-crayon))
    (home-page "https://cran.r-project.org/package=Tratamentos.ad")
    (synopsis "Pacote Para Analise De Experimentos Com Testemunhas Adicionais")
    (description
     "Pacote para a analise de experimentos com um ou dois fatores com testemunhas
adicionais conduzidos no delineamento inteiramente casualizado ou em blocos
casualizados. \"Package for the analysis of one or two-way experiments with
additional controls conducted in a completely randomized design or in a
randomized block design\".")
    (license license:gpl3)))

(define-public r-trapezoid
  (package
    (name "r-trapezoid")
    (version "2.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trapezoid" version))
              (sha256
               (base32
                "1pqb888w0q2zhcgjn0q4na2qwbxy4i8kfk6pp2id20gh8s96sm3f"))))
    (properties `((upstream-name . "trapezoid")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=trapezoid")
    (synopsis "The Trapezoidal Distribution")
    (description
     "The trapezoid package provides dtrapezoid', ptrapezoid', qtrapezoid', and
rtrapezoid functions for the trapezoidal distribution.")
    (license license:gpl3)))

(define-public r-transx
  (package
    (name "r-transx")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transx" version))
              (sha256
               (base32
                "1xx934w4fhk2nwm5h6lf4irj83wsfp8lbplzcha5rnc7aka8pn3v"))))
    (properties `((upstream-name . "transx")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kvasilopoulos/transx")
    (synopsis "Transform Univariate Time Series")
    (description
     "Univariate time series operations that follow an opinionated design.  The main
principle of transx is to keep the number of observations the same.  Operations
that reduce this number have to fill the observations gap.")
    (license license:gpl3)))

(define-public r-transurv
  (package
    (name "r-transurv")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tranSurv" version))
              (sha256
               (base32
                "17rvzjcn76z5niw1jappiadbkf66a9x0m7p3251lgb7qrnvpx3gk"))))
    (properties `((upstream-name . "tranSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncsp r-survival r-squarem r-rootsolve))
    (home-page "https://github.com/stc04003/tranSurv")
    (synopsis
     "Transformation Model Based Estimation of Survival and Regression Under Dependent Truncation and Independent Censoring")
    (description
     "This package provides a latent, quasi-independent truncation time is assumed to
be linked with the observed dependent truncation time, the event time, and an
unknown transformation parameter via a structural transformation model.  The
transformation parameter is chosen to minimize the conditional Kendall's tau
(Martin and Betensky, 2005) <doi:10.1198/016214504000001538> or the regression
coefficient estimates (Jones and Crowley, 1992) <doi:10.2307/2336782>.  The
marginal distribution for the truncation time and the event time are completely
left unspecified.  The methodology is applied to survival curve estimation and
regression analysis.")
    (license license:gpl3+)))

(define-public r-transtggm
  (package
    (name "r-transtggm")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TransTGGM" version))
              (sha256
               (base32
                "0c815qp0nb4c8ymq9gm9yr37vkzlb6fja9j0czl6ww7rvr8fplrn"))))
    (properties `((upstream-name . "TransTGGM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tlasso
                             r-rtensor
                             r-matrix
                             r-mass
                             r-glasso
                             r-expm
                             r-doparallel))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=TransTGGM")
    (synopsis "Transfer Learning for Tensor Graphical Models")
    (description
     "Tensor Gaussian graphical models (GGMs) have important applications in numerous
areas, which can interpret conditional independence structures within tensor
data.  Yet, the available tensor data in one single study is often limited due
to high acquisition costs.  Although relevant studies can provide additional
data, it remains an open question how to pool such heterogeneous data.  This
package implements a transfer learning framework for tensor GGMs, which takes
full advantage of informative auxiliary domains even when non-informative
auxiliary domains are present, benefiting from the carefully designed
data-adaptive weights.  Reference: Ren, M., Zhen Y., and Wang J. (2022).
\"Transfer learning for tensor graphical models\" <arXiv:2211.09391>.")
    (license license:gpl2)))

(define-public r-transport
  (package
    (name "r-transport")
    (version "0.13-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transport" version))
              (sha256
               (base32
                "0msz7z4mcz4s8sffqxsxjv5pwg2cwsg55fg477pr4vp3jgfznpn5"))))
    (properties `((upstream-name . "transport")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-data-table))
    (home-page "http://www.dominic.schuhmacher.name")
    (synopsis
     "Computation of Optimal Transport Plans and Wasserstein Distances")
    (description
     "Solve optimal transport problems.  Compute Wasserstein distances (a.k.a.
Kantorovitch, Fortet--Mourier, Mallows, Earth Mover's, or minimal L_p
distances), return the corresponding transference plans, and display them
graphically.  Objects that can be compared include grey-scale images, (weighted)
point patterns, and mass vectors.")
    (license license:gpl2+)))

(define-public r-transplotr
  (package
    (name "r-transplotr")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transPlotR" version))
              (sha256
               (base32
                "0xk7lqv4nf6565msschz72mqfdmpvvfylv0acj9qlg6jsanfxii7"))))
    (properties `((upstream-name . "transPlotR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-ggarchery
                             r-geomtextpath
                             r-dplyr
                             r-cowplot))
    (home-page "https://github.com/junjunlab/transPlotR")
    (synopsis "Visualize Transcript Structures in Elegant Way")
    (description
     "To visualize the gene structure with multiple isoforms better, I developed this
package to draw different transcript structures easily.")
    (license license:expat)))

(define-public r-transplantr
  (package
    (name "r-transplantr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transplantr" version))
              (sha256
               (base32
                "1kzi8rvswsmibxqnhqd1j42y848si6cxd8hpvwi55y8s4hcylw0y"))))
    (properties `((upstream-name . "transplantr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://transplantr.txtools.net")
    (synopsis "Audit and Research Functions for Transplantation")
    (description
     "This package provides a set of vectorised functions to calculate medical
equations used in transplantation, focused mainly on transplantation of
abdominal organs.  These functions include donor and recipient risk indices as
used by NHS Blood & Transplant, OPTN/UNOS and Eurotransplant, tools for
quantifying HLA mismatches, functions for calculating estimated glomerular
filtration rate (eGFR), a function to calculate the APRI (AST to platelet ratio)
score used in initial screening of suitability to receive a transplant from a
hepatitis C seropositive donor and some biochemical unit converter functions.
All functions are designed to work with either US or international units.
References for the equations are provided in the vignettes and function
documentation.")
    (license license:gpl3)))

(define-public r-transp
  (package
    (name "r-transp")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TransP" version))
              (sha256
               (base32
                "0p6pfcp8qjdah0lfhx0a396nxjzp3ckpda9hl3snpppx79iyww55"))))
    (properties `((upstream-name . "TransP")))
    (build-system r-build-system)
    (home-page "https://github.com/Somenath24/TransP")
    (synopsis "Implementation of Transportation Problem Algorithms")
    (description
     "Implementation of two transportation problem algorithms.  1.  North West Corner
Method 2.  Minimum Cost Method or Least cost method.  For more technical details
about the algorithms please refer below URLs.
<http://www.universalteacherpublications.com/univ/ebooks/or/Ch5/nw.htm>.
<http://personal.maths.surrey.ac.uk/st/J.F/chapter7.pdf>.")
    (license license:gpl2+)))

(define-public r-transmodel
  (package
    (name "r-transmodel")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TransModel" version))
              (sha256
               (base32
                "1wyg3cn7wp1jird16n88ygikf7qpqv3xhnyj3sv4l7gmwvjp5v5a"))))
    (properties `((upstream-name . "TransModel")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mass))
    (home-page "https://cran.r-project.org/package=TransModel")
    (synopsis "Fit Linear Transformation Models for Right Censored Data")
    (description
     "This package provides a unified estimation procedure for the analysis of right
censored data using linear transformation models.  An introduction can be found
in Jie Zhou et al. (2022) <doi:10.18637/jss.v101.i09>.")
    (license license:gpl2)))

(define-public r-transmem
  (package
    (name "r-transmem")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transmem" version))
              (sha256
               (base32
                "1a3c5ddmh9k4f80rbk363s7rkx30qhk9ssmf7xg7rr0lwxphahf3"))))
    (properties `((upstream-name . "transmem")))
    (build-system r-build-system)
    (propagated-inputs (list r-plot3d r-ggplot2 r-ggformula r-cmna))
    (home-page "https://CRAN.R-project.org/package=transmem")
    (synopsis "Treatment of Membrane-Transport Data")
    (description
     "Treatment and visualization of membrane (selective) transport data.  Transport
profiles involving up to three species are produced as publication-ready plots
and several membrane performance parameters (e.g. separation factors as defined
in Koros et al. (1996) <doi:10.1351/pac199668071479> and non-linear regression
parameters for the equations described in Rodriguez de San Miguel et al. (2014)
<doi:10.1016/j.jhazmat.2014.03.052>) can be obtained.  Many widely used
experimental setups (e.g. membrane physical aging) can be easily studied through
the package's graphical representations.")
    (license license:gpl2+)))

(define-public r-transmdl
  (package
    (name "r-transmdl")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transmdl" version))
              (sha256
               (base32
                "16lvcjwb7hq4a4925kqnas7c4xqw3gpbad3fcghp0qm4whyig8dg"))))
    (properties `((upstream-name . "transmdl")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=transmdl")
    (synopsis "Semiparametric Transformation Models")
    (description
     "To make the semiparametric transformation models easier to apply in real
studies, we introduce this R package, in which the MLE in transformation models
via an EM algorithm proposed by Zeng D, Lin DY(2007)
<doi:10.1111/j.1369-7412.2007.00606.x> and adaptive lasso method in
transformation models proposed by Liu XX, Zeng D(2013)
<doi:10.1093/biomet/ast029> are implemented.  C++ functions are used to compute
complex loops.  The coefficient vector and cumulative baseline hazard function
can be estimated, along with the corresponding standard errors and P values.")
    (license license:gpl2+)))

(define-public r-translated
  (package
    (name "r-translated")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "translated" version))
              (sha256
               (base32
                "1k2z7c0qb4psc6v0srhz1pyndclvflr43l5wsiwq0lailvxvhq2m"))))
    (properties `((upstream-name . "translated")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-glue))
    (home-page "https://github.com/ttscience/translated")
    (synopsis "Simple and Robust Translation System")
    (description
     "Allows translating with formatted string literals, grouped entries, and
configurable system of plurals.  Have a separate file for each locale and use
inheritance to handle dialect differences.")
    (license license:gpl3+)))

(define-public r-translate-logit
  (package
    (name "r-translate-logit")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "translate.logit" version))
              (sha256
               (base32
                "1klh4aisip0q0899lbybniy38f346m66k5g929l444f26dq9snw0"))))
    (properties `((upstream-name . "translate.logit")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnet r-nleqslv))
    (home-page "https://cran.r-project.org/package=translate.logit")
    (synopsis "Translation of Logit Regression Coefficients into Percentages")
    (description
     "Translation of logit models coefficients into percentages, following Deauvieau
(2010) <doi:10.1177/0759106309352586>.")
    (license license:gpl2+)))

(define-public r-transfr
  (package
    (name "r-transfr")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transfR" version))
              (sha256
               (base32
                "0digc0i3cr3hfdlcz3myj7kwlkcspsd4wn82laswxb07nvbbi6sv"))))
    (properties `((upstream-name . "transfR")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-stars
                             r-sf
                             r-rdpack
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://gitlab.irstea.fr/HYCAR-Hydro/transfr")
    (synopsis "Transfer of Hydrograph from Gauged to Ungauged Catchments")
    (description
     "This package provides a geomorphology-based hydrological modelling for
transferring streamflow measurements from gauged to ungauged catchments.
Inverse modelling enables to estimate net rainfall from streamflow measurements
following BoudhraÃ¢ et al. (2018) <doi:10.1080/02626667.2018.1425801>.
Resulting net rainfall is then estimated on the ungauged catchments by spatial
interpolation in order to finally simulate streamflow following de Lavenne et
al. (2016) <doi:10.1002/2016WR018716>.")
    (license license:gpl2)))

(define-public r-transformr
  (package
    (name "r-transformr")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transformr" version))
              (sha256
               (base32
                "0h0zcsqyjxkc5g6zg79h7nq5z2rzfj93i1livwrkjj622y1br4y1"))))
    (properties `((upstream-name . "transformr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tweenr
                             r-sf
                             r-rlang
                             r-lpsolve
                             r-cpp11))
    (home-page "https://github.com/thomasp85/transformr")
    (synopsis "Polygon and Path Transformations")
    (description
     "In order to smoothly animate the transformation of polygons and paths, many
aspects needs to be taken into account, such as differing number of control
points, changing center of rotation, etc.  The transformr package provides an
extensive framework for manipulating the shapes of polygons and paths and can be
seen as the spatial brother to the tweenr package.")
    (license license:expat)))

(define-public r-transformmos
  (package
    (name "r-transformmos")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transformmos" version))
              (sha256
               (base32
                "1hsp399cj6cnsysb4hm4ra075qm2fxkjhyq16m3nai51fvzkak0p"))))
    (properties `((upstream-name . "transformmos")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=transformmos")
    (synopsis
     "Transform MOS Values to be Robust for using Rank Based Statistics")
    (description
     "Implementation of the transformation of the Mean Opinion Scores (MOS) to be used
before applying the rank based statistical techniques.  The method and its
necessity is described in: Babak Naderi, Sebastian MÃ¶ller (2020)
<arXiv:2004.11490>.")
    (license license:expat)))

(define-public r-transform-hazards
  (package
    (name "r-transform-hazards")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transform.hazards" version))
              (sha256
               (base32
                "1k9p40dp3s4ylrh91cj06k4ryazw6b870yj5vdsd30j95pwnf3wi"))))
    (properties `((upstream-name . "transform.hazards")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=transform.hazards")
    (synopsis
     "Transforms Cumulative Hazards to Parameter Specified by ODE System")
    (description
     "Targets parameters that solve Ordinary Differential Equations (ODEs) driven by a
vector of cumulative hazard functions.  The package provides a method for
estimating these parameters using an estimator defined by a corresponding
Stochastic Differential Equation (SDE) system driven by cumulative hazard
estimates.  By providing cumulative hazard estimates as input, the package gives
estimates of the parameter as output, along with pointwise (co)variances derived
from an asymptotic expression.  Examples of parameters that can be targeted in
this way include the survival function, the restricted mean survival function,
cumulative incidence functions, among others; see Ryalen, Stensrud, and
RÃ¸ysland (2018) <doi:10.1093/biomet/asy035>, and further applications in
Stensrud, RÃ¸ysland, and Ryalen (2019) <doi:10.1111/biom.13102> and Ryalen et
al. (2021) <doi:10.1093/biostatistics/kxab009>.")
    (license license:gpl3+)))

(define-public r-transforemotion
  (package
    (name "r-transforemotion")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transforEmotion" version))
              (sha256
               (base32
                "0lnmgbsh26mazx0g1s0jxg3jk1a6vw3bsaw07viv9kx3rdf6wc46"))))
    (properties `((upstream-name . "transforEmotion")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate
                             r-remotes
                             r-pbapply
                             r-osfr
                             r-lsafun
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=transforEmotion")
    (synopsis "Sentiment Analysis for Text and Qualitative Data")
    (description
     "This package implements sentiment analysis using huggingface
<https://huggingface.co> transformer zero-shot classification model pipelines.
The default pipeline is Cross-Encoder's DistilRoBERTa
<https://huggingface.co/cross-encoder/nli-distilroberta-base> trained on the
Stanford Natural Language Inference <https://nlp.stanford.edu/projects/snli/>
and Multi-Genre Natural Language Inference
<https://huggingface.co/datasets/multi_nli> datasets.  Using similar models,
zero-shot classification transformers have demonstrated superior performance
relative to other natural language processing models <arXiv:1909.00161>.  All
other zero-shot classification model pipelines can be implemented using their
model name from
<https://huggingface.co/models?pipeline_tag=zero-shot-classification>}.")
    (license license:gpl3+)))

(define-public r-transcriber
  (package
    (name "r-transcriber")
    (version "0.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "transcribeR" version))
              (sha256
               (base32
                "0y2kxg2da71i962fhsjxsr2ic3b31fmffhj3gg97b0nykfpcviib"))))
    (properties `((upstream-name . "transcribeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=transcribeR")
    (synopsis "Automated Transcription of Audio Files Through the HP IDOL API")
    (description
     "Transcribes audio to text with the HP IDOL API. Includes functions to upload
files, retrieve transcriptions, and monitor jobs.")
    (license license:gpl3)))

(define-public r-tramvs
  (package
    (name "r-tramvs")
    (version "0.0-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tramvs" version))
              (sha256
               (base32
                "1fn119wliap4947gma0d7lvqbbwqavyd449m38pzvf9425i7a5ns"))))
    (properties `((upstream-name . "tramvs")))
    (build-system r-build-system)
    (propagated-inputs (list r-variables r-tram r-cotram))
    (native-inputs (list r-knitr))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Optimal Subset Selection for Transformation Models")
    (description
     "Greedy optimal subset selection for transformation models (Hothorn et al., 2018,
<doi:10.1111/sjos.12291> ) based on the abess algorithm (Zhu et al., 2020,
<doi:10.1073/pnas.2014241117> ).  Applicable to models from packages tram and
cotram'.")
    (license license:gpl3)))

(define-public r-trampr
  (package
    (name "r-trampr")
    (version "1.0-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRAMPR" version))
              (sha256
               (base32
                "0nndacpj1bnj6klvf8z4hl05krlnmyc9h9f813kmypk5fqjnhh38"))))
    (properties `((upstream-name . "TRAMPR")))
    (build-system r-build-system)
    (home-page "https://github.com/richfitz/TRAMPR")
    (synopsis "'TRFLP' Analysis and Matching Package for R")
    (description
     "Matching terminal restriction fragment length polymorphism ('TRFLP') profiles
between unknown samples and a database of known samples.  TRAMPR facilitates
analysis of many unknown profiles at once, and provides tools for working
directly with electrophoresis output through to generating summaries suitable
for community analyses with R's rich set of statistical functions.  TRAMPR also
resolves the issues of multiple TRFLP profiles within a species, and shared
TRFLP profiles across species.")
    (license license:gpl2)))

(define-public r-trampoline
  (package
    (name "r-trampoline")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trampoline" version))
              (sha256
               (base32
                "05inq5j8gvnpww6z21dzc57vilsm4gx3m274fpsamp54q85mi68s"))))
    (properties `((upstream-name . "trampoline")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-fastmap r-coro))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rdinnager/trampoline")
    (synopsis "Make Functions that Can Recurse Infinitely")
    (description
     "This package implements a trampoline algorithm for R that let's users write
recursive functions that get around R's stack call limitations, enabling
theoretically infinite recursion.  The algorithm is based around generator
function as implemented in the coro package, and is based almost completely on
the trampoline module from Python <https://gitlab.com/ferreum/trampoline>.")
    (license license:expat)))

(define-public r-tramnet
  (package
    (name "r-tramnet")
    (version "0.0-7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tramnet" version))
              (sha256
               (base32
                "0a7czkg69js07ryqwa2x0q83spcawm6jahq8fn8invnglk9iw8rs"))))
    (properties `((upstream-name . "tramnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tram
                             r-smoof
                             r-sandwich
                             r-paramhelpers
                             r-mlt
                             r-mlrmbo
                             r-mlr
                             r-lhs
                             r-cvxr
                             r-basefun))
    (native-inputs (list r-knitr))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Penalized Transformation Models")
    (description
     "Partially penalized versions of specific transformation models implemented in
package mlt'.  Available models include a fully parametric version of the Cox
model, other parametric survival models (Weibull, etc.), models for binary and
ordered categorical variables, normal and transformed-normal (Box-Cox type)
linear models, and continuous outcome logistic regression.  Hyperparameter
tuning is facilitated through model-based optimization functionalities from
package mlrMBO'.  The accompanying vignette describes the methodology used in
tramnet in detail.  Transformation models and model-based optimization are
described in Hothorn et al. (2019) <doi:10.1111/sjos.12291> and Bischl et al.
(2016) <arxiv:1703.03373>, respectively.")
    (license license:gpl2)))

(define-public r-tramme
  (package
    (name "r-tramme")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tramME" version))
              (sha256
               (base32
                "1xsxn3y809wyyxvzdi9db9pkw1bnvypykmjjy3qwzxd9q3f9i48c"))))
    (properties `((upstream-name . "tramME")))
    (build-system r-build-system)
    (propagated-inputs (list r-variables
                             r-tram
                             r-tmb
                             r-rcppeigen
                             r-numderiv
                             r-nlme
                             r-mlt
                             r-mgcv
                             r-matrix
                             r-mass
                             r-lme4
                             r-coneproj
                             r-basefun
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Transformation Models with Mixed Effects")
    (description
     "Likelihood-based estimation of mixed-effects transformation models using the
Template Model Builder ('TMB', Kristensen et al., 2016)
<doi:10.18637/jss.v070.i05>.  The technical details of transformation models are
given in Hothorn et al. (2018) <doi:10.1111/sjos.12291>.  Likelihood
contributions of exact, randomly censored (left, right, interval) and truncated
observations are supported.  The random effects are assumed to be normally
distributed on the scale of the transformation function, the marginal likelihood
is evaluated using the Laplace approximation, and the gradients are calculated
with automatic differentiation (Tamasi & Hothorn, 2021)
<doi:10.32614/RJ-2021-075>.  Penalized smooth shift terms can be defined using
mgcv'.")
    (license license:gpl2)))

(define-public r-traminerextras
  (package
    (name "r-traminerextras")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TraMineRextras" version))
              (sha256
               (base32
                "0y1f296l5fjdiidiyk50vgnn2srzvb6x2ddizay9yv4lichxy4w1"))))
    (properties `((upstream-name . "TraMineRextras")))
    (build-system r-build-system)
    (propagated-inputs (list r-traminer
                             r-survival
                             r-rcolorbrewer
                             r-foreach
                             r-doparallel
                             r-colorspace
                             r-cluster))
    (home-page "http://traminer.unige.ch/")
    (synopsis "TraMineR Extension")
    (description
     "Collection of ancillary functions and utilities to be used in conjunction with
the TraMineR package for sequence data exploration.  Includes, among others,
specific functions such as state survival plots, position-wise group-typical
states, dynamic sequence indicators, and dissimilarities between event
sequences.  Also includes contributions by non-members of the TraMineR team such
as the relative frequency plot and methods for polyadic data.")
    (license license:gpl2+)))

(define-public r-traminer
  (package
    (name "r-traminer")
    (version "2.2-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TraMineR" version))
              (sha256
               (base32
                "1rqkhfns0i1nfjs6kdvpvjzy6zwiclxhhiscr4zmp4mzj9b5pxp7"))))
    (properties `((upstream-name . "TraMineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-rcolorbrewer r-colorspace r-cluster
                             r-boot))
    (home-page "http://traminer.unige.ch")
    (synopsis
     "Trajectory Miner: a Toolbox for Exploring and Rendering Sequences")
    (description
     "Toolbox for the manipulation, description and rendering of categorical
sequences, and more generally the mining of sequence data in the field of social
sciences.  Although this sequence analysis toolbox is primarily intended for
analyzing state or event sequences that describe life courses such as family
formation histories or professional careers, its features also apply to many
other kinds of categorical sequence data.  It accepts many different sequence
representations as input and provides tools for converting sequences from one
format to another.  It offers several functions for describing and rendering
sequences, for computing distances between sequences with different metrics
(among which optimal matching), original dissimilarity-based analysis tools, and
functions for extracting the most frequent subsequences and identifying the most
discriminating ones among them.  A user's guide can be found on the TraMineR web
page.")
    (license license:gpl2+)))

(define-public r-tram
  (package
    (name "r-tram")
    (version "0.8-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tram" version))
              (sha256
               (base32
                "00jqg9pfy14l18ydgds5mylchb0rnyn80wy7f9w9y9nms5ri579j"))))
    (properties `((upstream-name . "tram")))
    (build-system r-build-system)
    (propagated-inputs (list r-variables
                             r-survival
                             r-sandwich
                             r-mvtnorm
                             r-multcomp
                             r-mlt
                             r-matrix
                             r-formula
                             r-basefun))
    (native-inputs (list r-knitr))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Transformation Models")
    (description
     "Formula-based user-interfaces to specific transformation models implemented in
package mlt'.  Available models include Cox models, some parametric survival
models (Weibull, etc.), models for ordered categorical variables, normal and
non-normal (Box-Cox type) linear models, and continuous outcome logistic
regression (Lohse et al., 2017, <DOI:10.12688/f1000research.12934.1>).  The
underlying theory is described in Hothorn et al. (2018)
<DOI:10.1111/sjos.12291>.  An extension to transformation models for clustered
data is provided (Barbanti and Hothorn, 2022, <arxiv:1910.09219>).  Multivariate
conditional transformation models (Klein et al, 2022, <DOI:10.1111/sjos.12501>)
can be fitted as well.")
    (license license:gpl2)))

(define-public r-trajr
  (package
    (name "r-trajr")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trajr" version))
              (sha256
               (base32
                "092hx27b6d0vy1pvmga1z3b245aa9gn9aw3hszbhhkkic5zfpgbq"))))
    (properties `((upstream-name . "trajr")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-plotrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JimMcL/trajr")
    (synopsis "Animal Trajectory Analysis")
    (description
     "This package provides a toolbox to assist with statistical analysis of
2-dimensional animal trajectories.  It provides simple access to algorithms for
calculating and assessing a variety of characteristics such as speed and
acceleration, as well as multiple measures of straightness or tortuosity.
McLean & Skowron Volponi (2018) <doi:10.1111/eth.12739>.")
    (license license:expat)))

(define-public r-trajer
  (package
    (name "r-trajer")
    (version "0.9.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trajeR" version))
              (sha256
               (base32
                "1zy3hg1m1a5dpx494mlb72vfpng5892dcginv6rwxc2c1ggv6z86"))))
    (properties `((upstream-name . "trajeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-minpack-lm
                             r-mass
                             r-capushe))
    (home-page "https://github.com/gitedric/trajeR")
    (synopsis "Group Based Modeling Trajectory")
    (description
     "Find the probability and the trajectory of longitudinal mixture model.  Methods
used in the package refer to Nagin (2005), <doi:10.4159/9780674041318>, Nagin,
D. (2005).  Group-Based Modeling of Development.  Cambridge, MA: Harvard
University Press.  and Noel (2022), <https://orbilu.uni.lu/>, thesis.")
    (license license:gpl2+)))

(define-public r-trajectories
  (package
    (name "r-trajectories")
    (version "0.2-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trajectories" version))
              (sha256
               (base32
                "1z1vy3f5llx3xhviakkhxwg03sb71wnkgifnwg7sx0ilgmh7sbz7"))))
    (properties `((upstream-name . "trajectories")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-spacetime r-sp r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/edzer/trajectories")
    (synopsis "Classes and Methods for Trajectory Data")
    (description
     "Classes and methods for trajectory data, with support for nesting individual
Track objects in track sets (Tracks) and track sets for different entities in
collections of Tracks.  Methods include selection, generalization, aggregation,
intersection, simulation, and plotting.")
    (license license:gpl2+)))

(define-public r-trajdatamining
  (package
    (name "r-trajdatamining")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrajDataMining" version))
              (sha256
               (base32
                "1n5qcyc1kb8rdrqaji7pp63l2gyr6jim8spm8ydb4lnqfcnrin9g"))))
    (properties `((upstream-name . "TrajDataMining")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-trajectories
                             r-spacetime
                             r-sp
                             r-rpostgresql
                             r-rgdal
                             r-geosphere))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/INPEtrajectories/TrajDataMining")
    (synopsis "Trajectories Data Mining")
    (description
     "This package contains a set of methods for trajectory data preparation, such as
filtering, compressing and clustering, and for trajectory pattern discovery.")
    (license license:expat)))

(define-public r-traj
  (package
    (name "r-traj")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "traj" version))
              (sha256
               (base32
                "1rwpmjghw5nryywxa340c15iaqmap8hpvr758yvh0g73z11jq6xp"))))
    (properties `((upstream-name . "traj")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-pastecs r-nbclust r-gparotation
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tchouangue/traj")
    (synopsis "Trajectory Analysis")
    (description
     "This package implements the three-step procedure proposed by Leffondree et al.
(2004) to identify clusters of individual longitudinal trajectories.  The
procedure involves (1) calculating 24 measures describing the features of the
trajectories; (2) using factor analysis to select a subset of the 24 measures
and (3) using cluster analysis to identify clusters of trajectories, and
classify each individual trajectory in one of the clusters.")
    (license license:expat)))

(define-public r-traitstats
  (package
    (name "r-traitstats")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TraitStats" version))
              (sha256
               (base32
                "07jiipxkidr0hnb3lbbb8yj007m5qzcbq9p5py276sckalamzri0"))))
    (properties `((upstream-name . "TraitStats")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlist r-qpdf r-lattice r-gridextra))
    (home-page "https://www.niteshgpb.in/TraitStats.pdf")
    (synopsis
     "Statistical Data Analysis for Randomized Block Design Experiments")
    (description
     "This package provides functions for analysis of bulk data generated from
experiments in Randomized block design as per Panse and Sukhatme (1954)
<https://books.google.co.in/books?id=Efo9AAAAYAAJ>.  Computes analysis of
variance; Descriptive statistics parameter like Mean, Minimum, Maximum, CV,
Standard error of mean, Standard Error of deviation, CD; Genetic parameter
statistics Genotypic Coefficient of Variation, Phenotypic Coefficient of
Variation, Heritability in broad sense, Genetic Advance and Genetic Advance per
cent mean; Variance and Co-variance matrix of genotypic, phenotypic and
environmental; Correlation of genotypic, phenotypic and environmental.  Further
includes directly publication ready tables.")
    (license license:gpl3)))

(define-public r-traits
  (package
    (name "r-traits")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "traits" version))
              (sha256
               (base32
                "04s2523wkbjqxpwllvcy7ikyfri5gldgnynjswsxdy0k945wacvz"))))
    (properties `((upstream-name . "traits")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-taxize
                             r-rvest
                             r-readr
                             r-jsonlite
                             r-httr
                             r-hoardr
                             r-data-table
                             r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/traits/")
    (synopsis "Species Trait Data from Around the Web")
    (description
     "Species trait data from many different sources, including sequence data from
NCBI (<https://www.ncbi.nlm.nih.gov/>), plant trait data from BETYdb', data from
EOL Traitbank', Birdlife International, and more.")
    (license license:expat)))

(define-public r-traipse
  (package
    (name "r-traipse")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "traipse" version))
              (sha256
               (base32
                "1ln0l8dkslj8pf0h5g5pj5iwy9x05nfkp1x36dxbi5iab88cv76w"))))
    (properties `((upstream-name . "traipse")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-geosphere r-geodist))
    (home-page "https://github.com/Trackage/traipse")
    (synopsis "Shared Tools for Tracking Data")
    (description
     "This package provides a collection of commonly used tools for animal movement
and other tracking data.  Variously distance, angle, bearing, distance-to,
bearing-to and speed are provided for geographic data that can be used directly
or within tidyverse syntax.  Distances and bearings are calculated using modern
geodesic methods as provided by Charles F. F. Karney (2013)
<doi:10.1007/s00190-012-0578-z> via the geodist and geosphere packages.")
    (license license:gpl3)))

(define-public r-trainr
  (package
    (name "r-trainr")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trainR" version))
              (sha256
               (base32
                "0wmxhw8yxkxpw08jma3r0zy7dhsrkbh5wjvd3izp5gf9dn9533cd"))))
    (properties `((upstream-name . "trainR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-usethis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rcurl
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/villegar/trainR/")
    (synopsis "An Interface to the National Rail Enquiries Systems")
    (description
     "The goal of trainR is to provide a simple interface to the National Rail
Enquiries (NRE) systems.  There are few data feeds available, the simplest of
them is Darwin, which provides real-time arrival and departure predictions,
platform numbers, delay estimates, schedule changes and cancellations.  Other
data feeds provide historical data, Historic Service Performance (HSP), and much
more.  trainR simplifies the data retrieval, so that the users can focus on
their analyses.  For more details visit
<https://www.nationalrail.co.uk/46391.aspx>.")
    (license license:expat)))

(define-public r-trainer
  (package
    (name "r-trainer")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "traineR" version))
              (sha256
               (base32
                "11amknr1vsqbahfhaj0pxwqviiyh57jll4j3f5ihd1qzk2wxr9jz"))))
    (properties `((upstream-name . "traineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-stringr
                             r-rpart
                             r-rocr
                             r-randomforest
                             r-nnet
                             r-neuralnet
                             r-mass
                             r-kknn
                             r-glmnet
                             r-ggplot2
                             r-gbm
                             r-e1071
                             r-dplyr
                             r-adabag
                             r-ada))
    (home-page "https://www.promidat.com")
    (synopsis "Predictive (Classification and Regression) Models Homologator")
    (description
     "This package provides methods to unify the different ways of creating predictive
models and their different predictive formats for classification and regression.
 It includes methods such as K-Nearest Neighbors Schliep, K. P. (2004)
<doi:10.5282/ubm/epub.1769>, Decision Trees Leo Breiman, Jerome H. Friedman,
Richard A. Olshen, Charles J. Stone (2017) <doi:10.1201/9781315139470>, ADA
Boosting Esteban Alfaro, Matias Gamez, Noelia GarcÃ­a (2013)
<doi:10.18637/jss.v054.i02>, Extreme Gradient Boosting Chen & Guestrin (2016)
<doi:10.1145/2939672.2939785>, Random Forest Breiman (2001)
<doi:10.1023/A:1010933404324>, Neural Networks Venables, W. N., & Ripley, B. D.
(2002) <ISBN:0-387-95457-0>, Support Vector Machines Bennett, K. P. & Campbell,
C. (2000) <doi:10.1145/380995.380999>, Bayesian Methods Gelman, A., Carlin, J.
B., Stern, H. S., & Rubin, D. B. (1995) <doi:10.1201/9780429258411>, Linear
Discriminant Analysis Venables, W. N., & Ripley, B. D. (2002)
<ISBN:0-387-95457-0>, Quadratic Discriminant Analysis Venables, W. N., & Ripley,
B. D. (2002) <ISBN:0-387-95457-0>, Logistic Regression Dobson, A. J., & Barnett,
A. G. (2018) <doi:10.1201/9781315182780> and Penalized Logistic Regression
Friedman, J. H., Hastie, T., & Tibshirani, R. (2010)
<doi:10.18637/jss.v033.i01>.")
    (license license:gpl2+)))

(define-public r-trafo
  (package
    (name "r-trafo")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trafo" version))
              (sha256
               (base32
                "0gq3snjpkw0ncny7pkfi686qkgdhd8id73jxjk3chhqf5mzrrsbc"))))
    (properties `((upstream-name . "trafo")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr r-moments r-lmtest r-fnn))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=trafo")
    (synopsis "Estimation, Comparison and Selection of Transformations")
    (description
     "Estimation, selection and comparison of several families of transformations.
The families of transformations included in the package are the following:
Bickel-Doksum (Bickel and Doksum 1981 <doi:10.2307/2287831>), Box-Cox, Dual
(Yang 2006 <doi:10.1016/j.econlet.2006.01.011>), Glog (Durbin et al.  2002
<doi:10.1093/bioinformatics/18.suppl_1.S105>), gpower (Kelmansky et al.  2013
<doi:10.1515/sagmb-2012-0030>), Log, Log-shift opt (Feng et al.  2016
<doi:10.1002/sta4.104>), Manly, modulus (John and Draper 1980
<doi:10.2307/2986305>), Neglog (Whittaker et al.  2005
<doi:10.1111/j.1467-9876.2005.00520.x>), Reciprocal and Yeo-Johnson.  The
package simplifies to compare linear models with untransformed and transformed
dependent variable as well as linear models where the dependent variable is
transformed with different transformations.  Furthermore, the package employs
maximum likelihood approaches, moments optimization and divergence minimization
to estimate the optimal transformation parameter.")
    (license license:gpl2)))

(define-public r-trading
  (package
    (name "r-trading")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Trading" version))
              (sha256
               (base32
                "0k048pn06qc1kvz0bj3bgfvaf3nqw6flqn4kvxj6vxhzlz3km9qs"))))
    (properties `((upstream-name . "Trading")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-performanceanalytics r-data-table))
    (home-page "https://openriskcalculator.com/")
    (synopsis "CCR, Advanced Correlation & Beta Estimates, Betting Strategies")
    (description
     "This package contains performance analysis metrics of track records including
entropy-based correlation and dynamic beta based on the Kalman filter.  The
normalized sample entropy method has been implemented which produces accurate
entropy estimation even on smaller datasets while for the dynamic beta
calculation the Kalman filter methodology has been utilized.  On a separate
stream, trades from the five major assets classes and also functionality to use
pricing curves, rating tables, CSAs and add-on tables.  The implementation
follows an object oriented logic whereby each trade inherits from more abstract
classes while also the curves/tables are objects.  Furthermore, odds calculators
and P&L back-testing functionality has been implemented for the most widely used
betting/trading strategies including martingale, DAlembert, Labouchere and
Fibonacci.  Some basic functionality about climate risk was also added in the
latest version.")
    (license license:gpl3)))

(define-public r-tradestatistics
  (package
    (name "r-tradestatistics")
    (version "4.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tradestatistics" version))
              (sha256
               (base32
                "1fr4xaq6ypi5cmjyw7zv371g7ll762l9af54k27vbdw1arhqp8ij"))))
    (properties `((upstream-name . "tradestatistics")))
    (build-system r-build-system)
    (propagated-inputs (list r-memoise r-digest r-data-table r-crul r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/tradestatistics/")
    (synopsis "Open Trade Statistics API Wrapper and Utility Program")
    (description
     "Access Open Trade Statistics API from R to download international trade data.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-trader
  (package
    (name "r-trader")
    (version "1.2-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TRADER" version))
              (sha256
               (base32
                "1w9m2b866dyj82s118m64q8j9a1chpq2km2pnn9mfwwj8sivgdgn"))))
    (properties `((upstream-name . "TRADER")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplr))
    (home-page "https://github.com/pavel-fibich/TRADER")
    (synopsis "Tree Ring Analysis of Disturbance Events in R")
    (description
     "Tree Ring Analysis of Disturbance Events in R (TRADER) package provides only one
way for disturbance reconstruction from tree-ring data.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-tradepolicy
  (package
    (name "r-tradepolicy")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tradepolicy" version))
              (sha256
               (base32
                "1hpynl8klfsid7s8ksz7flzd7jblxx8vz0di9hcw5ppvihgh0jki"))))
    (properties `((upstream-name . "tradepolicy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-sandwich
                             r-rstudioapi
                             r-purrr
                             r-msm
                             r-magrittr
                             r-ggplot2
                             r-fixest
                             r-dplyr
                             r-crayon
                             r-cli
                             r-broom))
    (home-page "https://r.tiid.org/R_structural_gravity/")
    (synopsis "Replication of 'An Advanced Guide To Trade Policy Analysis'")
    (description
     "Datasets from An Advanced Guide to Trade Policy Analysis (Year: 2016, ISBN:
978-92-870-4367-2) by Yotov, et al.  and functions to report regression
summaries with clustered robust standard errors.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-trade
  (package
    (name "r-trade")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trade" version))
              (sha256
               (base32
                "198qd3rnw5yh6i2nxsi3d4dvkrpaq37j881ixnabjl496pkkzdnx"))))
    (properties `((upstream-name . "trade")))
    (build-system r-build-system)
    (propagated-inputs (list r-antitrust))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luciu5/trade")
    (synopsis "Tools for Trade Practitioners")
    (description
     "This package provides a collection of tools for trade practitioners, including
the ability to calibrate different consumer demand systems and simulate the
effects of tariffs and quotas under different competitive regimes.  These tools
are derived from Anderson et al. (2001) <doi:10.1016/S0047-2727(00)00085-2> and
Froeb et al. (2003) <doi:10.1016/S0304-4076(02)00166-5>.")
    (license license:cc0)))

(define-public r-trackter
  (package
    (name "r-trackter")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackter" version))
              (sha256
               (base32
                "11rk53w0y9p0az6ydiq3vy50j1pj4p4cml5dqabrpcgfz4icjkrs"))))
    (properties `((upstream-name . "trackter")))
    (build-system r-build-system)
    (inputs (list ffmpeg))
    (propagated-inputs (list r-zoo
                             r-raster
                             r-plyr
                             r-pastecs
                             r-momocs
                             r-jpeg
                             r-ggplot2
                             r-features
                             r-ebimage
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=trackter")
    (synopsis "Automated Kinematic Analysis of Image Data")
    (description
     "Analysis of shape and contours in regions of interest (ROIs) in image sequences
and extracting midline and other kinematic data.")
    (license license:gpl2+)))

(define-public r-trackreconstruction
  (package
    (name "r-trackreconstruction")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TrackReconstruction" version))
              (sha256
               (base32
                "0x2wydp9qj2r2rsv0kmwlq4y7mr391ya13rpnj3mdgl0pjdp445s"))))
    (properties `((upstream-name . "TrackReconstruction")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-fields))
    (home-page "https://cran.r-project.org/package=TrackReconstruction")
    (synopsis
     "Reconstruct Animal Tracks from Magnetometer, Accelerometer, Depth and Optional Speed Data")
    (description
     "Reconstructs animal tracks from magnetometer, accelerometer, depth and optional
speed data.  Designed primarily using data from Wildlife Computers Daily Diary
tags deployed on northern fur seals.")
    (license license:gpl2+)))

(define-public r-trackerapp
  (package
    (name "r-trackerapp")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackeRapp" version))
              (sha256
               (base32
                "1y6n9hgzybz5860qpzj9rdb9yl4k6b9h13d91fqn3qarpnx9n5qr"))))
    (properties `((upstream-name . "trackeRapp")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-v8
                             r-tracker
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-sf
                             r-plotly
                             r-mgcv
                             r-mapdeck
                             r-foreach
                             r-dt
                             r-colorspace
                             r-changepoint))
    (native-inputs (list esbuild))
    (home-page "https://github.com/trackerproject/trackeRapp")
    (synopsis
     "Interface for the Analysis of Running, Cycling and Swimming Data from GPS-Enabled Tracking Devices")
    (description
     "This package provides an integrated user interface and workflow for the analysis
of running, cycling and swimming data from GPS-enabled tracking devices through
the trackeR <https://CRAN.R-project.org/package=trackeR> R package.")
    (license license:gpl3)))

(define-public r-tracker
  (package
    (name "r-tracker")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackeR" version))
              (sha256
               (base32
                "1f3giz6naxxyicgy9v0391ang43srwhy9zbiv4zmlc8i9v05b57i"))))
    (properties `((upstream-name . "trackeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xml2
                             r-sp
                             r-scam
                             r-rsqlite
                             r-raster
                             r-leaflet
                             r-jsonlite
                             r-gtable
                             r-gridextra
                             r-ggridges
                             r-ggplot2
                             r-ggmap
                             r-foreach
                             r-fda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/trackerproject/trackeR")
    (synopsis
     "Infrastructure for Running, Cycling and Swimming Data from GPS-Enabled Tracking Devices")
    (description
     "This package provides infrastructure for handling running, cycling and swimming
data from GPS-enabled tracking devices within R. The package provides methods to
extract, clean and organise workout and competition data into session-based and
unit-aware data objects of class trackeRdata (S3 class).  The information can
then be visualised, summarised, and analysed through flexible and extensible
methods.  Frick and Kosmidis (2017) <doi: 10.18637/jss.v082.i07>, which is
updated and maintained as one of the vignettes, provides detailed descriptions
of the package and its methods, and real-data demonstrations of the package
functionality.")
    (license license:gpl3)))

(define-public r-trackdown
  (package
    (name "r-trackdown")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackdown" version))
              (sha256
               (base32
                "1l8mqdfpdf25vyibxqcqhyip6aqllb9riz2v6w4k1rfc8b9dl07f"))))
    (properties `((upstream-name . "trackdown")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-googledrive r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/claudiozandonella/trackdown/")
    (synopsis
     "Collaborative Editing of Rmd (or Rnw) Documents in Google Drive")
    (description
     "Collaborative writing and editing of R Markdown (or Sweave) documents.  The
local .Rmd (or .Rnw) is uploaded as a plain-text file to Google Drive.  By
taking advantage of the easily readable Markdown (or LaTeX) syntax and the
well-known online interface offered by Google Docs, collaborators can easily
contribute to the writing and editing process.  After integrating all authorsâ
contributions, the final document can be downloaded and rendered locally.")
    (license license:gpl3)))

(define-public r-trackdf
  (package
    (name "r-trackdf")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackdf" version))
              (sha256
               (base32
                "17iwvpfp57x5bz08njbs1p0kdg8lhjk08z2vzmr07sniv1vc6a0l"))))
    (properties `((upstream-name . "trackdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-sf r-lubridate r-dplyr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://swarm-lab.github.io/trackdf/")
    (synopsis "Data Frame Class for Tracking Data")
    (description
     "Data frame class for storing collective movement data (e.g. fish schools,
ungulate herds, baboon troops) collected from GPS trackers or computer vision
tracking software.")
    (license license:gpl3)))

(define-public r-trackdem
  (package
    (name "r-trackdem")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "trackdem" version))
              (sha256
               (base32
                "069nl1i73ayjnlsds4dnz6w4n765jijimgz20n9az7r0irvaddhi"))))
    (properties `((upstream-name . "trackdem")))
    (build-system r-build-system)
    (inputs (list python perl-image-exiftool))
    (propagated-inputs (list r-shiny
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-png
                             r-neuralnet
                             r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/marjoleinbruijning/trackdem")
    (synopsis "Particle Tracking and Demography")
    (description
     "Obtain population density and body size structure, using video material or image
sequences as input.  Functions assist in the creation of image sequences from
videos, background detection and subtraction, particle identification and
tracking.  An artificial neural network can be trained for noise filtering.  The
goal is to supply accurate estimates of population size, structure and/or
individual behavior, for use in evolutionary and ecological studies.")
    (license license:gpl2)))

(define-public r-track2kba
  (package
    (name "r-track2kba")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "track2KBA" version))
              (sha256
               (base32
                "1cib01c5gqpg3brvjz9yybmdqxbn37mmscxmk7gmd1x2fscxf809"))))
    (properties `((upstream-name . "track2KBA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sp
                             r-sf
                             r-rlang
                             r-rgeos
                             r-rgdal
                             r-raster
                             r-purrr
                             r-move
                             r-matching
                             r-maptools
                             r-maps
                             r-magrittr
                             r-lubridate
                             r-ggplot2
                             r-geosphere
                             r-foreach
                             r-dplyr
                             r-adehabitathr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BirdLifeInternational/track2kba")
    (synopsis "Identifying Important Areas from Animal Tracking Data")
    (description
     "This package provides functions for preparing and analyzing animal tracking
data, with the intention of identifying areas which are potentially important at
the population level and therefore of conservation interest.  Areas identified
using this package may be checked against global or regionally-defined criteria,
such as those set by the Key Biodiversity Area program.  The method published
herein is described in full in Beal et al.  2021 <doi:10.1111/2041-210X.13713>.")
    (license license:lgpl3)))

(define-public r-tracheider
  (package
    (name "r-tracheider")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tracheideR" version))
              (sha256
               (base32
                "1x1jwzgs2aqb3k17mm9mhfhnbwcmilhkjaz9rl40rcg84xjqdrpl"))))
    (properties `((upstream-name . "tracheideR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tgram))
    (home-page "https://cran.r-project.org/package=tracheideR")
    (synopsis "Standardize Tracheidograms")
    (description
     "This package contains functions to standardize tracheid profiles using the
traditional method (Vaganov) and a new method to standardize tracheidograms
based on the relative position of tracheids within tree rings.")
    (license license:gpl2+)))

(define-public r-tracerer
  (package
    (name "r-tracerer")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tracerer" version))
              (sha256
               (base32
                "0932074lzkzprn8rr8f59ywhgn33fwvbnkxnxg97k29gapx49iyb"))))
    (properties `((upstream-name . "tracerer")))
    (build-system r-build-system)
    (propagated-inputs (list r-testit r-rcpp r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/tracerer/https://github.com/ropensci/tracerer/")
    (synopsis "Tracer from R")
    (description
     "BEAST2 (<https://www.beast2.org>) is a widely used Bayesian phylogenetic tool,
that uses DNA/RNA/protein data and many model priors to create a posterior of
jointly estimated phylogenies and parameters.  Tracer
(<https://github.com/beast-dev/tracer/>) is a GUI tool to parse and analyze the
files generated by BEAST2'.  This package provides a way to parse and analyze
BEAST2 input files without active user input, but using R function calls
instead.")
    (license license:gpl3)))

(define-public r-tracer
  (package
    (name "r-tracer")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tracer" version))
              (sha256
               (base32
                "1jdh4ljcz7d0w2y5miggqkvv397jdx7fn108hbjw93af2gnh698q"))))
    (properties `((upstream-name . "tracer")))
    (build-system r-build-system)
    (propagated-inputs (list r-prettycode r-crayon r-clisymbols))
    (home-page "https://github.com/mangothecat/tracer#readme")
    (synopsis "Slick Call Stacks")
    (description "Better looking call stacks after an error.")
    (license license:expat)))

(define-public r-tracee
  (package
    (name "r-tracee")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tracee" version))
              (sha256
               (base32
                "01qn5l2blb9fybf5f8xzr2qph7q9znazgzq558bcw9ax1sbb3hvd"))))
    (properties `((upstream-name . "tracee")))
    (build-system r-build-system)
    (propagated-inputs (list r-gridextra r-ggplot2 r-flextable))
    (home-page "https://cran.r-project.org/package=tracee")
    (synopsis "Easily Save Output and Trace it Back to Code")
    (description
     "Simple but crucial functionality related to creation of reproducible and
traceable output (plots) back to code.  It has a graphics saver with simple
automation of plot stamping with source, destination and creation time, a
selection of dimensions for use in presentations.  A list of plots can be saved
at once.")
    (license license:expat)))

(define-public r-traceassist
  (package
    (name "r-traceassist")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TraceAssist" version))
              (sha256
               (base32
                "03x071nsfgz1z2qp1zn1y3hfx8ydpj0z4rcfk2i588ad53z86w4c"))))
    (properties `((upstream-name . "TraceAssist")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-matrix r-keras r-glmnet))
    (home-page "https://arxiv.org/abs/2105.01783")
    (synopsis "Nonparametric Trace Regression via Sign Series Representation")
    (description
     "Efficient method for fitting nonparametric matrix trace regression model.  The
detailed description can be found in C. Lee, L. Li, H. Zhang, and M. Wang
(2021).  Nonparametric Trace Regression via Sign Series Representation.
<arXiv:2105.01783>.  The method employs the aggregation of structured sign
series for trace regression (ASSIST) algorithm.")
    (license license:gpl2+)))

(define-public r-tr8
  (package
    (name "r-tr8")
    (version "0.9.22")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TR8" version))
              (sha256
               (base32
                "12miq65yl39pngpsa30qjcwp21vn93a4wvid03pmbf6x6hq0v4k7"))))
    (properties `((upstream-name . "TR8")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-taxize
                             r-shiny
                             r-reshape
                             r-readxl
                             r-rcurl
                             r-rappdirs
                             r-plyr
                             r-dplyr))
    (home-page "https://github.com/GioBo/TR8")
    (synopsis "Tool for Downloading Functional Traits Data for Plant Species")
    (description
     "Plant ecologists often need to collect \"traits\" data about plant species which
are often scattered among various databases: TR8 contains a set of tools which
take care of automatically retrieving some of those functional traits data for
plant species from publicly available databases (Biolflor, The Ecological Flora
of the British Isles, LEDA traitbase, Ellenberg values for Italian Flora,
Mycorrhizal intensity databases, Catminat, BROT, PLANTS, Jepson Flora Project).
The TR8 name, inspired by \"car plates\" jokes, was chosen since it both reminds
of the main object of the package and is extremely short to type.")
    (license license:gpl2+)))

(define-public r-tpr
  (package
    (name "r-tpr")
    (version "0.3-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tpr" version))
              (sha256
               (base32
                "13xi4a9pdhqyg56jcimcqxfz3zcpzyhb6y7nh73dr09w8picq6gj"))))
    (properties `((upstream-name . "tpr")))
    (build-system r-build-system)
    (propagated-inputs (list r-lgtdl))
    (home-page "https://cran.r-project.org/package=tpr")
    (synopsis "Temporal Process Regression")
    (description
     "Regression models for temporal process responses with time-varying coefficient.")
    (license license:gpl3+)))

(define-public r-tpn
  (package
    (name "r-tpn")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tpn" version))
              (sha256
               (base32
                "0vxj0zf94qiba052vi2gas3lz2x52s9zpwwgv0nihym2gs1zxxxa"))))
    (properties `((upstream-name . "tpn")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-skewmlrm r-pracma r-moments))
    (home-page "https://cran.r-project.org/package=tpn")
    (synopsis "Truncated Positive Normal Model and Extensions")
    (description
     "Provide data generation and estimation tools for the truncated positive normal
model discussed in Gomez, Olmos, Varela and Bolfarine (2018)
<doi:10.1007/s11766-018-3354-x>, the slash truncated positive normal
distribution discussed in Gomez, Gallardo and Santoro (2021)
<doi:10.3390/sym13112164>, the bimodal truncated positive normal distribution
discussed in Gomez et al. (2022) <doi:10.3390/sym14040665> and the flexible
truncated positive normal model.")
    (license license:gpl2+)))

(define-public r-tpmsm
  (package
    (name "r-tpmsm")
    (version "1.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPmsm" version))
              (sha256
               (base32
                "0xh1cmnwn7agd607ns1fdfz7gggms6jmy6ndb1r9icgbiqhy1z5d"))))
    (properties `((upstream-name . "TPmsm")))
    (build-system r-build-system)
    (propagated-inputs (list r-kernsmooth))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arturstat/TPmsm")
    (synopsis "Estimation of Transition Probabilities in Multistate Models")
    (description
     "Estimation of transition probabilities for the illness-death model and or the
three-state progressive model.")
    (license license:gpl3)))

(define-public r-tplyr
  (package
    (name "r-tplyr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tplyr" version))
              (sha256
               (base32
                "077xhbhn00g265x6aciay75cziw2jhx2pkwgx64slhaksgyd3idm"))))
    (properties `((upstream-name . "Tplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-forcats
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/atorus-research/Tplyr")
    (synopsis "Traceability Focused Grammar of Clinical Data Summary")
    (description
     "This package provides a traceability focused tool created to simplify the data
manipulation necessary to create clinical summaries.")
    (license license:expat)))

(define-public r-tplsr
  (package
    (name "r-tplsr")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPLSr" version))
              (sha256
               (base32
                "0y5m8w82d949zsm576nbqllw2h87wa9fvk65br7w2f74h2rrwz5v"))))
    (properties `((upstream-name . "TPLSr")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotly))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TPLSr")
    (synopsis "Thresholded Partial Least Squares Model for Neuroimaging Data")
    (description
     "Uses thresholded partial least squares algorithm to create a regression or
classification model.  For more information, see Lee, Bradlow, and Kable
<doi:10.1016/j.crmeth.2022.100227>.")
    (license license:gpl3)))

(define-public r-tpfp
  (package
    (name "r-tpfp")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tpfp" version))
              (sha256
               (base32
                "0vm5qssaanvi0sck2hj1qgjra89a42i6nvzbva5z0aj2hkd5h4vh"))))
    (properties `((upstream-name . "tpfp")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx r-readxl r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tpfp")
    (synopsis "Counts the Number of True Positives and False Positives")
    (description
     "Calculates the number of true positives and false positives from a dataset
formatted for Jackknife alternative free-response receiver operating
characteristic which is used for statistical analysis which is explained in the
book Chakraborty DP (2017), \"Observer Performance Methods for Diagnostic Imaging
- Foundations, Modeling, and Applications with R-Based Examples\", Taylor-Francis
<https://www.crcpress.com/9781482214840>.")
    (license license:expat)))

(define-public r-tpes
  (package
    (name "r-tpes")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPES" version))
              (sha256
               (base32
                "00g1limcappjrly93x7xb1llrgaxivmiky3kw40w2fs0303ha3d7"))))
    (properties `((upstream-name . "TPES")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TPES")
    (synopsis "Tumor Purity Estimation using SNVs")
    (description
     "This package provides a bioinformatics tool for the estimation of the tumor
purity from sequencing data.  It uses the set of putative clonal somatic single
nucleotide variants within copy number neutral segments to call tumor
cellularity.")
    (license license:expat)))

(define-public r-tpea
  (package
    (name "r-tpea")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPEA" version))
              (sha256
               (base32
                "1yyc3q4dyf4d8m7wi851dnxf3xnvvfnvj28kl8z8py4r4jsb2hfy"))))
    (properties `((upstream-name . "TPEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-rcurl
                             r-mess
                             r-matrix
                             r-igraph
                             r-foreach))
    (home-page "https://cran.r-project.org/package=TPEA")
    (synopsis "Novel Topology-Based Pathway Enrichment Analysis Approach")
    (description
     "We described a novel Topology-based pathway enrichment analysis, which
integrated the global position of the nodes and the topological property of the
pathways in Kyoto Encyclopedia of Genes and Genomes Database.  We also provide
some functions to obtain the latest information about pathways to finish pathway
enrichment analysis using this method.")
    (license license:gpl2)))

(define-public r-tpd
  (package
    (name "r-tpd")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPD" version))
              (sha256
               (base32
                "1ppj6ppi0lhlz079ygjnwx1l5f36bsi8zax23ssr1w6h4csw748m"))))
    (properties `((upstream-name . "TPD")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-ks r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TPD")
    (synopsis
     "Methods for Measuring Functional Diversity Based on Trait Probability Density")
    (description
     "Tools to calculate trait probability density functions (TPD) at any scale (e.g.
populations, species, communities).  TPD functions are used to compute several
indices of functional diversity, as well as its partition across scales.  These
indices constitute a unified framework that incorporates the underlying
probabilistic nature of trait distributions into uni- or multidimensional
functional trait-based studies.  See Carmona et al. (2016)
<doi:10.1016/j.tree.2016.02.003> for further information.")
    (license license:gpl3)))

(define-public r-tpcselect
  (package
    (name "r-tpcselect")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TPCselect" version))
              (sha256
               (base32
                "18c5fw5cj6gbdh2bq3a71q1g8xp0ky0a09xinwn3ahr82c7fn5k9"))))
    (properties `((upstream-name . "TPCselect")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-mass r-kernsmooth r-corpcor))
    (home-page "https://cran.r-project.org/package=TPCselect")
    (synopsis "Variable Selection via Threshold Partial Correlation")
    (description
     "This package provides a threshold partial correlation approach to selecting
important variables in linear models of L. and others (2017) at
<doi:10.5705/ss.202015.0473>, and in partial linear models of L. and others
(2018) at <doi:10.1016/j.jmva.2018.06.005>.  This package also extends the
PC-simple algorithm of B. and others (2010) at <doi:10.1093/biomet/asq008> to
partial linear models.")
    (license license:gpl3)))

(define-public r-tpc
  (package
    (name "r-tpc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tpc" version))
              (sha256
               (base32
                "0zkls2vf8j1rq5ryn4w295a6gcy57vr3zghyck8jwgl9pd5zcc4x"))))
    (properties `((upstream-name . "tpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-pcalg r-graph))
    (home-page "https://github.com/bips-hb/tpc")
    (synopsis "Tiered PC Algorithm")
    (description
     "Constraint-based causal discovery using the PC algorithm while accounting for a
partial node ordering, for example a partial temporal ordering when the data
were collected in different waves of a cohort study.  Andrews RM, Foraita R,
Didelez V, Witte J (2021) <arXiv:2108.13395> provide a guide how to use tpc to
analyse cohort data.")
    (license license:gpl3+)))

(define-public r-tpauc
  (package
    (name "r-tpauc")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tpAUC" version))
              (sha256
               (base32
                "0wix9qwcidj7xfqhh7bmrpnadd9qlkvg3515gaamdxkjbz2kyydc"))))
    (properties `((upstream-name . "tpAUC")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tpAUC")
    (synopsis "Estimation and Inference of Two-Way pAUC, pAUC and pODC")
    (description
     "Tools for estimating and inferring two-way partial area under receiver operating
characteristic curves (two-way pAUC), partial area under receiver operating
characteristic curves (pAUC), and partial area under ordinal dominance curves
(pODC).  Methods includes Mann-Whitney statistic and Jackknife, etc.")
    (license license:gpl2+)))

(define-public r-tp-idm
  (package
    (name "r-tp-idm")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TP.idm" version))
              (sha256
               (base32
                "07rxn0mpar3p6blg8fd3kbvdngyz9h9n0r0lcljnfdajfzbysv7h"))))
    (properties `((upstream-name . "TP.idm")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TP.idm")
    (synopsis
     "Estimation of Transition Probabilities for the Illness-Death Model")
    (description
     "Estimation of transition probabilities for the illness-death model.  Both the
Aalen-Johansen estimator for a Markov model and a novel non-Markovian estimator
by de Una-Alvarez and Meira-Machado (2015) <doi:10.1111/biom.12288>, see also
Balboa and de Una-Alvarez (2018) <doi:10.18637/jss.v083.i10>, are included.")
    (license license:gpl2)))

(define-public r-toxpir
  (package
    (name "r-toxpir")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toxpiR" version))
              (sha256
               (base32
                "0n6x87gyzxsib267h0gs5b4sdkwmgjpgqzipfhlrjsnxq55q6599"))))
    (properties `((upstream-name . "toxpiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-s4vectors r-rlang r-pryr r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ToxPi/toxpiR")
    (synopsis "Create ToxPi Prioritization Models")
    (description
     "Enables users to build ToxPi prioritization models and provides functionality
within the grid framework for plotting ToxPi graphs.  toxpiR allows for more
customization than the ToxPi GUI (<https://toxpi.org>) and integration into
existing workflows for greater ease-of-use, reproducibility, and transparency.
toxpiR package behaves nearly identically to the GUI; the package documentation
includes notes about all differences.  The vignettes download example files from
<https://github.com/ToxPi/ToxPi-example-files>.")
    (license license:gpl3+)))

(define-public r-toxeval
  (package
    (name "r-toxeval")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toxEval" version))
              (sha256
               (base32
                "11rw8vjnz3kzikd59vbyiv8vc7dijpi6znyxlc7c4rpi41gs6c0m"))))
    (properties `((upstream-name . "toxEval")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinyace
                             r-shiny
                             r-readxl
                             r-rcolorbrewer
                             r-magrittr
                             r-leaflet
                             r-ggplot2
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=toxEval")
    (synopsis
     "Exploring Biological Relevance of Environmental Chemistry Observations")
    (description
     "Data analysis package for estimating potential biological effects from chemical
concentrations in environmental samples.  Included are a set of functions to
analyze, visualize, and organize measured concentration data as it relates to
user-selected chemical-biological interaction benchmark data such as water
quality criteria.  The intent of these analyses is to develop a better
understanding of the potential biological relevance of environmental chemistry
data.  Results can be used to prioritize which chemicals at which sites may be
of greatest concern.  These methods are meant to be used as a screening
technique to predict potential for biological influence from chemicals that
ultimately need to be validated with direct biological assays.  A description of
the analysis can be found in Blackwell et al. (2017)
<doi:10.1021/acs.est.7b01613>.")
    (license license:cc0)))

(define-public r-toxcrit
  (package
    (name "r-toxcrit")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ToxCrit" version))
              (sha256
               (base32
                "1jxi10b733k3djfykyqnpcp2fapsmaszsd7lkwcwmwq62v73rhax"))))
    (properties `((upstream-name . "ToxCrit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ToxCrit")
    (synopsis
     "Calculates Safety Stopping Boundaries for a Single-Arm Trial using Bayes")
    (description
     "Computation of stopping boundaries for a single-arm trial using a Bayesian
criterion; i.e., for each m<=n (n= total patient number of the trial) the
smallest number of observed toxicities is calculated leading to the termination
of the trial/accrual according to the specified criteria.  The probabilities of
stopping the trial/accrual at and up until (resp.) the m-th patient (m<=n) is
also calculated.  This design is more conservative than the frequentist approach
(using Clopper Pearson CIs) which might be preferred as it concerns safety.See
also Aamot et.al.(2010) \"Continuous monitoring of toxicity in clinical trials -
simulating the risk of stopping prematurely\" <doi:10.5414/cpp48476>.")
    (license license:gpl3)))

(define-public r-tourr
  (package
    (name "r-tourr")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tourr" version))
              (sha256
               (base32
                "16cbybg9g0b8439scw5h3n1a0asnd5yvs91g6mcfipwfyzix045s"))))
    (properties `((upstream-name . "tourr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-mass r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ggobi/tourr")
    (synopsis "Tour Methods for Multivariate Data Visualisation")
    (description
     "This package implements geodesic interpolation and basis generation functions
that allow you to create new tour methods from R.")
    (license license:expat)))

(define-public r-tournament
  (package
    (name "r-tournament")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TouRnament" version))
              (sha256
               (base32
                "09i0frzzxi5ymjlvh81rmisxh35amrvhxbkjq5351fhlpf1n977z"))))
    (properties `((upstream-name . "TouRnament")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TouRnament")
    (synopsis "Tools for Sports Competitions")
    (description
     "This package contains two functions related to sports competitions.  One to
create league tables and one to create a match schedule.")
    (license license:gpl3)))

(define-public r-touchard
  (package
    (name "r-touchard")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "touchard" version))
              (sha256
               (base32
                "06491r4x3ycmv3ddbqwig334wj9qvm395xlaifx4hjjyyi65xb3q"))))
    (properties `((upstream-name . "touchard")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-numderiv r-nleqslv r-mass))
    (home-page "https://cran.r-project.org/package=touchard")
    (synopsis "Touchard Model and Regression")
    (description
     "Tools for analyzing count data with the Touchard model (Matsushita et al., 2018,
Comm Stat Th Meth <doi:10.1080/03610926.2018.1444177>).  It includes univariate
estimation (ML and MM) and regression tools developed by Andrade et al.
(submitted).")
    (license license:gpl2)))

(define-public r-touch
  (package
    (name "r-touch")
    (version "0.1-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "touch" version))
              (sha256
               (base32
                "0w25zxxj5qaxkx64vz55qw4k4szx85ncbcam7q600ryy1kc5xxxv"))))
    (properties `((upstream-name . "touch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/wenjie2wang/touch")
    (synopsis "Tools of Utilization and Cost in Healthcare")
    (description
     "R implementation of the software tools developed in the H-CUP (Healthcare Cost
and Utilization Project) <https://www.hcup-us.ahrq.gov> and AHRQ (Agency for
Healthcare Research and Quality) <https://www.ahrq.gov>.  It currently contains
functions for mapping ICD-9 codes to the AHRQ comorbidity measures and
translating ICD-9 (resp.  ICD-10) codes to ICD-10 (resp.  ICD-9) codes based on
GEM (General Equivalence Mappings) from CMS (Centers for Medicare and Medicaid
Services).")
    (license license:gpl3+)))

(define-public r-tou
  (package
    (name "r-tou")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TOU" version))
              (sha256
               (base32
                "0wia39yj7abnicx4xhaq1g69qx5fmzh6gywyl5yqfmw03azmyl55"))))
    (properties `((upstream-name . "TOU")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-ggplot2 r-deoptim))
    (home-page "https://cran.r-project.org/package=TOU")
    (synopsis "Transformed Ornstein-Uhlenbeck Model for Adsorption Kinetics")
    (description
     "Estimates the parameters of a Transformed Ornstein-Uhlenbeck (TOU) stochastic
model for adsorption data and also the parameters of the related pseudo-n-order
(PNO) model, such as the maximum adsorption capacity (qe), the adsorption rate
constant (kn) and the order of the model (n).")
    (license license:gpl3)))

(define-public r-totalcopheneticindex
  (package
    (name "r-totalcopheneticindex")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TotalCopheneticIndex" version))
              (sha256
               (base32
                "0i21g7zzad973802kfp8s638d3g70c4vkrm59i9frb71apvkljk2"))))
    (properties `((upstream-name . "TotalCopheneticIndex")))
    (build-system r-build-system)
    (propagated-inputs (list r-treetools))
    (home-page "https://github.com/ms609/tci/")
    (synopsis "Quantify the Balance of Phylogenetic Trees")
    (description
     "Measures the degree of balance for a given phylogenetic tree by calculating the
Total Cophenetic Index.  Reference: A. Mir, F. Rossello, L. A. Rotger (2013).  A
new balance index for phylogenetic trees.  Math.  Biosci.  241, 125-136
<doi:10.1016/j.mbs.2012.10.005>.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-totalcensus
  (package
    (name "r-totalcensus")
    (version "0.6.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "totalcensus" version))
              (sha256
               (base32
                "09c7hm9yys48p8pjp9kv3szbwrg9xb1xf47zya24yir0gxs7bfmi"))))
    (properties `((upstream-name . "totalcensus")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-purrr r-magrittr r-data-table))
    (home-page "https://github.com/GL-Li/totalcensus")
    (synopsis "Extract Decennial Census and American Community Survey Data")
    (description
     "Download summary files from Census Bureau <https://www2.census.gov/> and extract
data, in particular high resolution data at block, block group, and tract level,
from decennial census and American Community Survey 1-year and 5-year estimates.")
    (license license:expat)))

(define-public r-toster
  (package
    (name "r-toster")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TOSTER" version))
              (sha256
               (base32
                "1vbmzbv1cngzmpd2683q2lsq8hgfxm9gk7h093g7i96hqp7fqjmd"))))
    (properties `((upstream-name . "TOSTER")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-r6
                             r-jmvcore
                             r-ggplot2
                             r-ggdist
                             r-distributional
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://aaroncaldwell.us/TOSTERpkg/")
    (synopsis "Two One-Sided Tests (TOST) Equivalence Testing")
    (description
     "Two one-sided tests (TOST) procedure to test equivalence for t-tests,
correlations, differences between proportions, and meta-analyses, including
power analysis for t-tests and correlations.  Allows you to specify equivalence
bounds in raw scale units or in terms of effect sizes.  See: Lakens (2017)
<doi:10.1177/1948550617697177>.")
    (license license:gpl3)))

(define-public r-tosr
  (package
    (name "r-tosr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tosr" version))
              (sha256
               (base32
                "1jv5bh1b7x242rb97i1w6x0w76cjyva4p6w5xr5qazgz7lfm6ysb"))))
    (properties `((upstream-name . "tosr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rebus
                             r-magrittr
                             r-igraph
                             r-dplyr
                             r-cinna
                             r-bibliometrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/coreofscience/tosr")
    (synopsis "Create the Tree of Science from WoS and Scopus")
    (description
     "The goal of tosr is to create the Tree of Science from Web of Science (WoS) and
Scopus data.  It can read files from both sources at the same time.  More
information can be found in Valencia-HernÃ¡ndez (2020)
<https://revistas.unal.edu.co/index.php/ingeinv/article/view/77718>.")
    (license license:expat)))

(define-public r-tosi
  (package
    (name "r-tosi")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TOSI" version))
              (sha256
               (base32
                "00v0cjyz22akar7jrpg5alnnbh2nhxjh5cmq053i65xl0wlbzdpg"))))
    (properties `((upstream-name . "TOSI")))
    (build-system r-build-system)
    (propagated-inputs (list r-scalreg r-mass r-hdi r-glmnet))
    (home-page "https://github.com/feiyoung/TOSI")
    (synopsis
     "Two-Directional Simultaneous Inference for High-Dimensional Models")
    (description
     "This package provides a general framework of two directional simultaneous
inference is provided for high-dimensional as well as the fixed dimensional
models with manifest variable or latent variable structure, such as
high-dimensional mean models, high- dimensional sparse regression models, and
high-dimensional latent factors models.  It is making the simultaneous inference
on a set of parameters from two directions, one is testing whether the estimated
zero parameters indeed are zero and the other is testing whether there exists
zero in the parameter set of non-zero.  More details can be referred to Wei Liu,
et al. (2022) <doi:10.48550/arXiv.2012.11100>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-toscutil
  (package
    (name "r-toscutil")
    (version "2.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toscutil" version))
              (sha256
               (base32
                "0mygvr5bkqy4jgnkx2ih60qp0yp1f78nigg6xk4aim9fw9312d3j"))))
    (properties `((upstream-name . "toscutil")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang))
    (home-page "https://cran.r-project.org/package=toscutil")
    (synopsis "Utility Functions")
    (description
     "Base R sometimes requires verbose statements for simple, often recurring tasks,
such as printing text without trailing space, ending with newline.  This package
aims at providing shorthands for such tasks.")
    (license license:expat)))

(define-public r-toscmask
  (package
    (name "r-toscmask")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toscmask" version))
              (sha256
               (base32
                "1inryfbci03klv4rlkzf20f3a0sc187lxybd4yn1dimz6f5z71ni"))))
    (properties `((upstream-name . "toscmask")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=toscmask")
    (synopsis "Improved Versions of Base Functions")
    (description
     "Operators and functions provided by base R sometimes lack some features found in
other programming languages, such as the ability to concatenate strings using +
or to repeat strings using *.  This package aims at providing such functionality
without breaking existing code, i.e., only statements, that would throw errors
in pure base R are patched.")
    (license license:expat)))

(define-public r-tosca
  (package
    (name "r-tosca")
    (version "0.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tosca" version))
              (sha256
               (base32
                "1z8svczy93lpdj7n1gk9jz8jgzkjsf886ldlkgq1mfi1j6m8557y"))))
    (properties `((upstream-name . "tosca")))
    (build-system r-build-system)
    (propagated-inputs (list r-wikipedir
                             r-tm
                             r-stringr
                             r-rcolorbrewer
                             r-quanteda
                             r-lubridate
                             r-lda
                             r-htmltools
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Docma-TU/tosca")
    (synopsis "Tools for Statistical Content Analysis")
    (description
     "This package provides a framework for statistical analysis in content analysis.
In addition to a pipeline for preprocessing text corpora and linking to the
latent Dirichlet allocation from the lda package, plots are offered for the
descriptive analysis of text corpora and topic models.  In addition, an
implementation of Chang's intruder words and intruder topics is provided.
Sample data for the vignette is included in the toscaData package, which is
available on gitHub: <https://github.com/Docma-TU/toscaData>.")
    (license license:gpl2+)))

(define-public r-tornado
  (package
    (name "r-tornado")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tornado" version))
              (sha256
               (base32
                "1fzcqpd5imhphx4cmmcjfiz38fbmhbb15bf51z6g7v51m2c3c18y"))))
    (properties `((upstream-name . "tornado")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-scales
                             r-rlang
                             r-gridextra
                             r-ggplot2
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bertcarnell/tornado")
    (synopsis "Plots for Model Sensitivity and Variable Importance")
    (description
     "Draws tornado plots for model sensitivity to univariate changes.  Implements
methods for many modeling methods including linear models, generalized linear
models, survival regression models, and arbitrary machine learning models in the
caret package.  Also draws variable importance plots.")
    (license license:gpl3)))

(define-public r-tords
  (package
    (name "r-tords")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TORDs" version))
              (sha256
               (base32
                "0135xy5gfjnnnchr59i3k0hlxybh5dg3fwqg2z6jv9a3hmkbx21g"))))
    (properties `((upstream-name . "TORDs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TORDs")
    (synopsis "Third Order Rotatable Designs (TORDs)")
    (description
     "Third order response surface designs (M. Hemavathi, Shashi Shekhar, Eldho
Varghese, Seema Jaggi, Bikas Sinha & Nripes Kumar Mandal (2022)
<DOI:10.1080/03610926.2021.1944213>.\"Theoretical developments in response
surface designs: an informative review and further thoughts\") are classified
into two types viz., designs which are suitable for sequential experimentation
and designs for non-sequential experimentation (M. Hemavathi, Eldho Varghese,
Shashi Shekhar & Seema Jaggi (2022)<DOI:10.1080/02664763.2020.1864817>.\"
Sequential asymmetric third order rotatable designs (SATORDs)\").  The sequential
experimentation approach involves conducting the trials step by step whereas, in
the non-sequential experimentation approach, the entire runs are executed in one
go.This package contains functions named STORDs() and NSTORDs() for generating
sequential/non-sequential TORDs given in Das, M. N., and V. L. Narasimham
(1962). <DOI:10.1214/aoms/1177704374>. \"Construction of rotatable designs
through balanced incomplete block designs\" along with the randomized layout.  It
also contains another function named Pred3.var() for generating the variance of
predicted response as well as the moment matrix based on a third order response
surface model.")
    (license license:gpl2+)))

(define-public r-torchvisionlib
  (package
    (name "r-torchvisionlib")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "torchvisionlib" version))
              (sha256
               (base32
                "01l04zabja3ancay7ynb5i7knqm1gd5101sx07fbid185w5j8yh4"))))
    (properties `((upstream-name . "torchvisionlib")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-torch r-rlang r-rcpp r-glue))
    (home-page "https://cran.r-project.org/package=torchvisionlib")
    (synopsis "Additional Operators for Image Models")
    (description
     "This package implements additional operators for computer vision models,
including operators necessary for image segmentation and object detection deep
learning models.")
    (license license:expat)))

(define-public r-torchvision
  (package
    (name "r-torchvision")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "torchvision" version))
              (sha256
               (base32
                "07pdsqcnlmsc1yx7ldi18a0lqkgqbqwsqh7109rbrycczxrc1dqv"))))
    (properties `((upstream-name . "torchvision")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-torch
                             r-rlang
                             r-rappdirs
                             r-png
                             r-jpeg
                             r-fs
                             r-abind))
    (home-page "https://torchvision.mlverse.org")
    (synopsis "Models, Datasets and Transformations for Images")
    (description
     "This package provides access to datasets, models and preprocessing facilities
for deep learning with images.  Integrates seamlessly with the torch package and
it's API borrows heavily from PyTorch vision package.")
    (license license:expat)))

(define-public r-torchopt
  (package
    (name "r-torchopt")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "torchopt" version))
              (sha256
               (base32
                "056j1fw759h81c0mlaadw5jb19ydpvjy85nhbjsn5k8a9azf4wki"))))
    (properties `((upstream-name . "torchopt")))
    (build-system r-build-system)
    (propagated-inputs (list r-torch))
    (home-page "https://github.com/e-sensing/torchopt/")
    (synopsis "Advanced Optimizers for Torch")
    (description
     "Optimizers for torch deep learning library.  These functions include recent
results published in the literature and are not part of the optimizers offered
in torch'.  Prospective users should test these optimizers with their data,
since performance depends on the specific problem being solved.  The packages
includes the following optimizers: (a) adabelief by Zhuang et al (2020),
<arXiv:2010.07468>; (b) adabound by Luo et al.(2019), <arXiv:1902.09843>; (c)
adahessian by Yao et al.(2021) <arXiv:2006.00719>; (d) adamw by Loshchilov &
Hutter (2019), <arXiv:1711.05101>; (e) madgrad by Defazio and Jelassi (2021),
<arXiv:2101.11075>; (f) nadam by Dozat (2019),
<https://openreview.net/pdf/OM0jvwB8jIp57ZJjtNEZ.pdf>; (g) qhadam by Ma and
Yarats(2019), <arXiv:1810.06801>; (h) radam by Liu et al. (2019),
<arXiv:1908.03265>; (i) swats by Shekar and Sochee (2018), <arXiv:1712.07628>;
(j) yogi by Zaheer et al.(2019),
<https:://papers.nips.cc/paper/8186-adaptive-methods-for-nonconvex-optimization>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-torchdatasets
  (package
    (name "r-torchdatasets")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "torchdatasets" version))
              (sha256
               (base32
                "1mq87sgy9v1526iy03zpslkjxx7379q6x9dqs0nslvvfwk9sry4q"))))
    (properties `((upstream-name . "torchdatasets")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-withr
                             r-torchvision
                             r-torch
                             r-stringr
                             r-pins
                             r-fs))
    (home-page "https://mlverse.github.io/torchdatasets/")
    (synopsis "Ready to Use Extra Datasets for Torch")
    (description
     "This package provides datasets in a format that can be easily consumed by torch
dataloaders'.  Handles data downloading from multiple sources, caching and
pre-processing so users can focus only on their model implementations.")
    (license license:expat)))

(define-public r-torchaudio
  (package
    (name "r-torchaudio")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "torchaudio" version))
              (sha256
               (base32
                "1zn9z2z2yv1xjmpf5xcyxachmmbwk2g0y3nipvjgpwbqkjr7p9y6"))))
    (properties `((upstream-name . "torchaudio")))
    (build-system r-build-system)
    (propagated-inputs (list r-torch r-rlang r-glue r-fs r-av))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=torchaudio")
    (synopsis "R Interface to 'pytorch''s 'torchaudio'")
    (description
     "This package provides access to datasets, models and processing facilities for
deep learning in audio.")
    (license license:expat)))

(define-public r-tor
  (package
    (name "r-tor")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tor" version))
              (sha256
               (base32
                "1s34hzw3a4cm9gk85fcxgxwmn2xc7njs1iw1snd91id3gdl6vppx"))))
    (properties `((upstream-name . "tor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-readr r-fs))
    (home-page "https://github.com/maurolepore/tor")
    (synopsis "Import Multiple Files From a Single Directory at Once")
    (description
     "The goal of tor (to-R) is to help you to import multiple files from a single
directory at once, and to do so as quickly, flexibly, and simply as possible.")
    (license license:gpl3)))

(define-public r-topsiswm
  (package
    (name "r-topsiswm")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TopSisWM" version))
              (sha256
               (base32
                "1rhvygr07qf65qib83l061vg8j262rbgd96r1z1sm97r2b7l85z0"))))
    (properties `((upstream-name . "TopSisWM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TopSisWM")
    (synopsis "Multi-Criteria Method for Decision (TOPSIS)")
    (description
     "Assists in the TOPSIS analysis process, designed to return at the end of the
answer of the TOPSIS multicriteria analysis, a ranking table with the best
option as the analysis proposes.  TOPSIS is basically a technique developed by
Hwang and Yoon in 1981, starting from the point that the best alternative should
be closest to the positive ideal solution and farthest from the negative one,
based on several criteria to result in the best benefit. (LIU, H. et al., 2019)
<doi:10.1016/j.agwat.2019.105787>.")
    (license license:gpl3)))

(define-public r-topsis
  (package
    (name "r-topsis")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topsis" version))
              (sha256
               (base32
                "056cgi684qy2chh1rvhgkxwhfv9nnfd7dfzc05m24gy2wyypgxj3"))))
    (properties `((upstream-name . "topsis")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=topsis")
    (synopsis "TOPSIS method for multiple-criteria decision making (MCDM)")
    (description
     "Evaluation of alternatives based on multiple criteria using TOPSIS method.")
    (license license:gpl2)))

(define-public r-toprdata
  (package
    (name "r-toprdata")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toprdata" version))
              (sha256
               (base32
                "1zn8w1c74nxm67xzk556zirhnfyi82wk34amy5a869a15lwchhaz"))))
    (properties `((upstream-name . "toprdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=toprdata")
    (synopsis "Gene and Exon Data from Ensembl")
    (description
     "Gene and exon information from Ensembl genome builds GRCh38.p13 (104) and GRCh37
(v40) to use with the topr package.")
    (license license:lgpl3+)))

(define-public r-topr
  (package
    (name "r-topr")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topr" version))
              (sha256
               (base32
                "1y4d4rpsp2mbj2ka2y8mjc1hfgyf4p341y6l6gwwd0755gc6038y"))))
    (properties `((upstream-name . "topr")))
    (build-system r-build-system)
    (propagated-inputs (list r-toprdata
                             r-tidyr
                             r-stringr
                             r-scales
                             r-magrittr
                             r-gridextra
                             r-ggrepel
                             r-ggplot2
                             r-egg
                             r-dplyr))
    (home-page "https://github.com/totajuliusd/topr")
    (synopsis "Create Custom Plots for Viewing Genetic Association Results")
    (description
     "This package provides a collection of functions for visualizing,exploring and
annotating genetic association results.Association results from multiple traits
can be viewed simultaneously along with gene annotation, over the entire genome
(Manhattan plot) or in the more detailed regional view.")
    (license license:lgpl3+)))

(define-public r-topologygsa
  (package
    (name "r-topologygsa")
    (version "1.4.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topologyGSA" version))
              (sha256
               (base32
                "073n8bkrapk6il3izqr3bmcdp7yc29yzpbyzh6fvy9rg0x4d3g0z"))))
    (properties `((upstream-name . "topologyGSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-grbase r-graph r-fields))
    (home-page "https://cran.r-project.org/package=topologyGSA")
    (synopsis "Gene Set Analysis Exploiting Pathway Topology")
    (description
     "Using Gaussian graphical models we propose a novel approach to perform pathway
analysis using gene expression.  Given the structure of a graph (a pathway) we
introduce two statistical tests to compare the mean and the concentration
matrices between two groups.  Specifically, these tests can be performed on the
graph and on its connected components (cliques).")
    (license license:gpl3)))

(define-public r-topodistance
  (package
    (name "r-topodistance")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topoDistance" version))
              (sha256
               (base32
                "1n6108giihc4aa1871m558s2z96m766ysvhak5b6zg1bnvpdj0l8"))))
    (properties `((upstream-name . "topoDistance")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-scales
                             r-rcolorbrewer
                             r-raster
                             r-plotly
                             r-gdistance))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=topoDistance")
    (synopsis "Calculating Topographic Paths and Distances")
    (description
     "This package provides a toolkit for calculating topographic distances and
identifying and plotting topographic paths.  Topographic distances can be
calculated along shortest topographic paths (Wang (2009)
<doi:10.1111/j.1365-294X.2009.04338.x>), weighted topographic paths (Zhan et al.
(1993) <doi:10.1007/3-540-57207-4_29>), and topographic least cost paths (Wang
and Summers (2010) <doi:10.1111/j.1365-294X.2009.04465.x>).  Functions can map
topographic paths on colored or hill shade maps and plot topographic cross
sections (elevation profiles) for the paths.")
    (license license:gpl3)))

(define-public r-topmodel
  (package
    (name "r-topmodel")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topmodel" version))
              (sha256
               (base32
                "1bhzjy2ja4953a5wx8s3cz3v0ip6lym193faqxxabxjklgbsp416"))))
    (properties `((upstream-name . "topmodel")))
    (build-system r-build-system)
    (home-page "https://github.com/ICHydro/topmodel")
    (synopsis "Implementation of the Hydrological Model TOPMODEL in R")
    (description
     "Set of hydrological functions including an R implementation of the hydrological
model TOPMODEL, which is based on the 1995 FORTRAN version by Keith Beven.  From
version 0.7.0, the package is put into maintenance mode.")
    (license license:gpl2+)))

(define-public r-topklists
  (package
    (name "r-topklists")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TopKLists" version))
              (sha256
               (base32
                "1l2fshf4w2ykhxb1bhrblcknxppy4l4w5w0pm16zcvkhrsas06cs"))))
    (properties `((upstream-name . "TopKLists")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmisc r-gplots))
    (native-inputs (list r-knitr))
    (home-page "http://topklists.r-forge.r-project.org")
    (synopsis
     "Inference, Aggregation and Visualization for Top-K Ranked Lists")
    (description
     "For multiple ranked input lists (full or partial) representing the same set of N
objects, the package TopKLists <doi:10.1515/sagmb-2014-0093> offers (1)
statistical inference on the lengths of informative top-k lists, (2) stochastic
aggregation of full or partial lists, and (3) graphical tools for the
statistical exploration of input lists, and for the visualization of aggregation
results.  Note that RGtk2 and gWidgets2RGtk2 have been archived on CRAN. See
<https://github.com/pievos101/TopKLists> for installation instructions.")
    (license license:lgpl3)))

(define-public r-topicscore
  (package
    (name "r-topicscore")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TopicScore" version))
              (sha256
               (base32
                "1x6s3yn25rj8mbd25yi7f2rz0nwg8n0l1vs6r250kyjb17d2javm"))))
    (properties `((upstream-name . "TopicScore")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam r-rspectra r-quadprog r-matrix r-combinat))
    (home-page "https://cran.r-project.org/package=TopicScore")
    (synopsis "The Topic SCORE Algorithm to Fit Topic Models")
    (description
     "This package provides implementation of the \"Topic SCORE\" algorithm that is
proposed by Tracy Ke and Minzhe Wang.  The singular value decomposition step is
optimized through the usage of svds() function in RSpectra package, on a
dgRMatrix sparse matrix.  Also provides a column-wise error measure in the
word-topic matrix A, and an algorithm for recovering the topic-document matrix W
given A and D based on quadratic programming.  The details about the techniques
are explained in the paper \"A new SVD approach to optimal topic estimation\" by
Tracy Ke and Minzhe Wang (2017) <arXiv:1704.07016>.")
    (license license:expat)))

(define-public r-topicmodels-etm
  (package
    (name "r-topicmodels-etm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topicmodels.etm" version))
              (sha256
               (base32
                "06w2n1gswv268sgzm0nz14mmrahibnsgcxh7hcks3bmq9r8d9ba4"))))
    (properties `((upstream-name . "topicmodels.etm")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-torch r-matrix))
    (home-page "https://cran.r-project.org/package=topicmodels.etm")
    (synopsis "Topic Modelling in Embedding Spaces")
    (description
     "Find topics in texts which are semantically embedded using techniques like
word2vec or Glove.  This topic modelling technique models each word with a
categorical distribution whose natural parameter is the inner product between a
word embedding and an embedding of its assigned topic.  The techniques are
explained in detail in the paper Topic Modeling in Embedding Spaces by Adji B.
Dieng, Francisco J. R. Ruiz, David M. Blei (2019), available at
<arXiv:1907.04907>.")
    (license license:expat)))

(define-public r-topicdoc
  (package
    (name "r-topicdoc")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topicdoc" version))
              (sha256
               (base32
                "195yly7r14cpavbbr02iq3lqfb0gcx5cngfigivnid1rk45wv7bz"))))
    (properties `((upstream-name . "topicdoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-topicmodels r-slam))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/doug-friedman/topicdoc")
    (synopsis "Topic-Specific Diagnostics for LDA and CTM Topic Models")
    (description
     "Calculates topic-specific diagnostics (e.g. mean token length, exclusivity) for
Latent Dirichlet Allocation and Correlated Topic Models fit using the
topicmodels package.  For more details, see Chapter 12 in Airoldi et al. (2014,
ISBN:9781466504080), pp 262-272 Mimno et al. (2011, ISBN:9781937284114), and
Bischof et al. (2014) <arXiv:1206.4631v1>.")
    (license license:expat)))

(define-public r-topdowntimeratio
  (package
    (name "r-topdowntimeratio")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "topdowntimeratio" version))
              (sha256
               (base32
                "0dbn9hs3fsmwkjipk5wyl5wj02hv56ipcr9pmj068c4y6rm3qiqv"))))
    (properties `((upstream-name . "topdowntimeratio")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-lubridate r-geodist r-data-table))
    (home-page "https://cran.r-project.org/package=topdowntimeratio")
    (synopsis "Top-Down Time Ratio Segmentation for Coordinate Trajectories")
    (description
     "Data collected on movement behavior is often in the form of time- stamped
latitude/longitude coordinates sampled from the underlying movement behavior.
These data can be compressed into a set of segments via the Top- Down Time Ratio
Segmentation method described in Meratnia and de By (2004)
<doi:10.1007/978-3-540-24741-8_44> which, with some loss of information, can
both reduce the size of the data as well as provide corrective smoothing
mechanisms to help reduce the impact of measurement error.  This is an
improvement on the well-known Douglas-Peucker algorithm for segmentation that
operates not on the basis of perpendicular distances.  Top-Down Time Ratio
segmentation allows for disparate sampling time intervals by calculating the
distance between locations and segments with respect to time.  Provided a
trajectory with timestamps, tdtr() returns a set of straight- line segments that
can represent the full trajectory.  McCool, Lugtig, and Schouten (2022)
<doi:10.1007/s11116-022-10328-2> describe this method as implemented here in
more detail.")
    (license license:gpl3+)))

(define-public r-topdom
  (package
    (name "r-topdom")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TopDom" version))
              (sha256
               (base32
                "1rryfnwvdlpdrjgs6sciy91cxfp4jykll0swclasydjvj4n642i6"))))
    (properties `((upstream-name . "TopDom")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-reshape2 r-matrixstats r-ggplot2))
    (home-page "https://github.com/HenrikBengtsson/TopDom")
    (synopsis
     "An Efficient and Deterministic Method for Identifying Topological Domains in Genomes")
    (description
     "The TopDom method identifies topological domains in genomes from Hi-C sequence
data (Shin et al., 2016 <doi:10.1093/nar/gkv1505>).  The authors published an
implementation of their method as an R script (two different versions; also
available in this package).  This package originates from those original TopDom
R scripts and provides help pages adopted from the original TopDom PDF
documentation.  It also provides a small number of bug fixes to the original
code.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-toordinal
  (package
    (name "r-toordinal")
    (version "1.3-0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toOrdinal" version))
              (sha256
               (base32
                "1zfx91024dyafkfyjsm2829qsqkz57g6p5v47lp2x0ykrwpdbm37"))))
    (properties `((upstream-name . "toOrdinal")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://centerforassessment.github.io/toOrdinal/")
    (synopsis "Cardinal to Ordinal Number & Date Conversion")
    (description "Language specific cardinal to ordinal number conversion.")
    (license license:gpl3)))

(define-public r-toomanycellsr
  (package
    (name "r-toomanycellsr")
    (version "0.1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TooManyCellsR" version))
              (sha256
               (base32
                "0cypjf4a9q2kw4gwxlr59nbwn25wrrhrcmpksxi2yhd3qhk71q8n"))))
    (properties `((upstream-name . "TooManyCellsR")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-matrix r-jsonlite r-imager r-ggplot2 r-cowplot))
    (home-page "https://cran.r-project.org/package=TooManyCellsR")
    (synopsis "An R Wrapper for 'TooManyCells'")
    (description
     "An R wrapper for using TooManyCells', a command line program for clustering,
visualizing, and quantifying cell clade relationships.  See
<https://gregoryschwartz.github.io/too-many-cells/> for more details.")
    (license license:gpl3)))

(define-public r-toolstability
  (package
    (name "r-toolstability")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toolStability" version))
              (sha256
               (base32
                "1i5hdar4cv8788fzyfdnvmw3hpn059s2kjyxfcarpnc0clakd0by"))))
    (properties `((upstream-name . "toolStability")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-nortest r-dplyr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Illustratien/toolStability")
    (synopsis "Tool for Stability Indices Calculation")
    (description
     "Tools to calculate stability indices with parametric, non-parametric and
probabilistic approaches.  The basic data format requirement for toolStability
is a data frame with 3 columns including numeric trait values, genotype,and
environmental labels.  Output format of each function is the dataframe with
chosen stability index for each genotype.  Function \"table_stability\" offers the
summary table of all stability indices in this package.  Sample dataset in this
package is from: Casadebaig P, Zheng B, Chapman S et al. (2016) <doi:
10.1371/journal.pone.0146385>.  Indices used in this package are from: DÃ¶ring
TF, Reckling M (2018) <doi: 10.1016/j.eja.2018.06.007>.  Eberhart SA, Russell WA
(1966) <doi: 10.2135/cropsci1966.0011183X000600010011x>.  Eskridge KM (1990)
<doi: 10.2135/cropsci1990.0011183X003000020025x>.  Finlay KW, Wilkinson GN
(1963) <doi: 10.1071/AR9630742>.  Hanson WD (1970) Genotypic stability. <doi:
10.1007/BF00285245>.  Lin CS, Binns MR (1988)
<https://cdnsciencepub.com/doi/abs/10.4141/cjps88-018>.  Nassar R, HÃ¼hn M
(1987).  Pinthus MJ (1973) <doi: 10.1007/BF00021563>.  RÃ¶mer T (1917).  Shukla
GK (1972).  Wricke G (1962).")
    (license license:gpl3+)))

(define-public r-toolsforcoda
  (package
    (name "r-toolsforcoda")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ToolsForCoDa" version))
              (sha256
               (base32
                "1c37xv8h4jycnn9cnxlvby3p8hl3gfp4bdsbxm06bb323qj774pd"))))
    (properties `((upstream-name . "ToolsForCoDa")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-hardyweinberg r-calibrate))
    (home-page "www.R-project.org")
    (synopsis "Multivariate Tools for Compositional Data Analysis")
    (description
     "This package provides functions for multivariate analysis with compositional
data.  Includes a function for doing compositional canonical correlation
analysis.  This analysis requires two data matrices of compositions, which can
be adequately transformed and used as entries in a specialized program for
canonical correlation analysis, that is able to deal with singular covariance
matrices.  The methodology is described in Graffelman et al. (2017)
<doi:10.1101/144584>.  A function for log-ratio principal component analysis
with condition number computations has been added to the package.")
    (license license:gpl2+)))

(define-public r-tools4uplift
  (package
    (name "r-tools4uplift")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tools4uplift" version))
              (sha256
               (base32
                "1izm9q2bj9l2nd9jn0fi3lf9hscfa0vmib58ypgpjsbsn0nd7p2h"))))
    (properties `((upstream-name . "tools4uplift")))
    (build-system r-build-system)
    (propagated-inputs (list r-lhs r-latticeextra r-glmnet r-dplyr r-biasedurn))
    (home-page "https://cran.r-project.org/package=tools4uplift")
    (synopsis "Tools for Uplift Modeling")
    (description
     "Uplift modeling aims at predicting the causal effect of an action such as a
marketing campaign on a particular individual.  In order to simplify the task
for practitioners in uplift modeling, we propose a combination of tools that can
be separated into the following ingredients: i) quantization, ii) visualization,
iii) variable selection, iv) parameters estimation and, v) model validation.
For more details, see
<https://dms.umontreal.ca/~murua/research/UpliftRegression.pdf>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-toolmark
  (package
    (name "r-toolmark")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toolmaRk" version))
              (sha256
               (base32
                "0pdr8lq4c11ia03v68lbfq38p3qp770mbj0nsbjsgbqi0pv9i1vx"))))
    (properties `((upstream-name . "toolmaRk")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-plyr r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=toolmaRk")
    (synopsis "Tests for Same-Source of Toolmarks")
    (description
     "This package implements two tests for same-source of toolmarks.  The
chumbley_non_random() test follows the paper \"An Improved Version of a Tool Mark
Comparison Algorithm\" by Hadler and Morris (2017) <doi:10.1111/1556-4029.13640>.
 This is an extension of the Chumbley score as previously described in
\"Validation of Tool Mark Comparisons Obtained Using a Quantitative, Comparative,
Statistical Algorithm\" by Chumbley et al (2010)
<doi:10.1111/j.1556-4029.2010.01424.x>.  fixed_width_no_modeling() is based on
correlation measures in a diamond shaped area of the toolmark as described in
Hadler (2017).")
    (license license:gpl3)))

(define-public r-toolbox
  (package
    (name "r-toolbox")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toolbox" version))
              (sha256
               (base32
                "0r1i3bihsn9hi5dn3vqw22gixd7hr6028x78s5xwlsb9glmkm04j"))))
    (properties `((upstream-name . "toolbox")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=toolbox")
    (synopsis "List, String, and Meta Programming Utility Functions")
    (description
     "Includes functions for mapping named lists to function arguments, random
strings, pasting and combining rows together across columns, etc.")
    (license license:gpl2+)))

(define-public r-tongfen
  (package
    (name "r-tongfen")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tongfen" version))
              (sha256
               (base32
                "1xg5jvrl4cv86rylhyiyfdyhb9gr5vdabsp1cdfnz7wpmdkpwnxl"))))
    (properties `((upstream-name . "tongfen")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-lifecycle
                             r-dplyr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/mountainMath/tongfen")
    (synopsis "Make Data Based on Different Geographies Comparable")
    (description
     "Several functions to allow comparisons of data across different geographies, in
particular for Canadian census data from different censuses.")
    (license license:expat)))

(define-public r-tomba
  (package
    (name "r-tomba")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tomba" version))
              (sha256
               (base32
                "1433jxghx8jrgy8r9kfp506vn58qpzp4wbzncks7fnignbb6cp50"))))
    (properties `((upstream-name . "tomba")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-jsonlite r-httr))
    (home-page "https://tomba.io/")
    (synopsis "Official R Library for Tomba Email Finder")
    (description
     "Email Finder R Client Library.  Search emails are based on the website You give
one domain name and it returns all the email addresses found on the internet.
Email Finder generates or retrieves the most likely email address from a domain
name, a first name and a last name.  Email verify checks the deliverability of a
given email address, verifies if it has been found in our database, and returns
their sources.")
    (license license:asl2.0)))

(define-public r-tokenizers-bpe
  (package
    (name "r-tokenizers-bpe")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tokenizers.bpe" version))
              (sha256
               (base32
                "1d382pimyv4mdg2wsv5jzxgq3rhhxjrlv2kbqkqnbr2y5djz3xhv"))))
    (properties `((upstream-name . "tokenizers.bpe")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/bnosac/tokenizers.bpe")
    (synopsis "Byte Pair Encoding Text Tokenization")
    (description
     "Unsupervised text tokenizer focused on computational efficiency.  Wraps the
YouTokenToMe library <https://github.com/VKCOM/YouTokenToMe> which is an
implementation of fast Byte Pair Encoding (BPE)
<https://aclanthology.org/P16-1162/>.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-tokenbrowser
  (package
    (name "r-tokenbrowser")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tokenbrowser" version))
              (sha256
               (base32
                "17hbkcan74j4fkk4j1xcgikaanp3xhs5njjxkapg2yjdhmf2dng6"))))
    (properties `((upstream-name . "tokenbrowser")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-rcpp))
    (home-page "https://cran.r-project.org/package=tokenbrowser")
    (synopsis "Create Full Text Browsers from Annotated Token Lists")
    (description
     "Create browsers for reading full texts from a token list format.  Information
obtained from text analyses (e.g., topic modeling, word scaling) can be used to
annotate the texts.")
    (license license:gpl3)))

(define-public r-tohm
  (package
    (name "r-tohm")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TOHM" version))
              (sha256
               (base32
                "15i9hrvxlnwbs9vrsyrfhnm4xwmi97hss2da0xqs1xj5nmzwymqh"))))
    (properties `((upstream-name . "TOHM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmpfr r-nloptr r-matrix r-igraph r-eql))
    (home-page "https://cran.r-project.org/package=TOHM")
    (synopsis "Testing One Hypothesis Multiple Times")
    (description
     "Approximations of global p-values when testing hypothesis in presence of
non-identifiable nuisance parameters.  The method relies on the Euler
characteristic heuristic and the expected Euler characteristic is efficiently
computed by in Algeri and van Dyk (2018) <arXiv:1803.03858>.")
    (license license:gpl2)))

(define-public r-togglr
  (package
    (name "r-togglr")
    (version "0.1.99")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "togglr" version))
              (sha256
               (base32
                "0cvlsza4jbh14knq4if8r5r4xvj1pzwa66i14g8h3qc89m4nvckr"))))
    (properties `((upstream-name . "togglr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi
                             r-purrr
                             r-prettyunits
                             r-parsedate
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-glue
                             r-getpass
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ThinkR-open/togglr")
    (synopsis "'Toggl.com' Api for 'Rstudio'")
    (description "Use the <https://toggl.com> time tracker api through R.")
    (license license:gpl3)))

(define-public r-todor
  (package
    (name "r-todor")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "todor" version))
              (sha256
               (base32
                "1ncg88wh9l2mja5w53ry2b19sa5x9m6cnkvw8lszbmc92idpspig"))))
    (properties `((upstream-name . "todor")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rstudioapi r-rex r-r-utils))
    (home-page "https://cran.r-project.org/package=todor")
    (synopsis "Find All TODO Comments and More")
    (description
     "This is a simple addin to RStudio that finds all TODO', FIX ME', CHANGED etc.
comments in your project and shows them as a markers list.")
    (license license:expat)))

(define-public r-toc
  (package
    (name "r-toc")
    (version "0.0-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TOC" version))
              (sha256
               (base32
                "04ampqa2nv77h6is3ch8ril5b3m33hkd3s5gzzq4jrm1mx529dr8"))))
    (properties `((upstream-name . "TOC")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-bit))
    (home-page "https://github.com/amsantac/TOC")
    (synopsis "Total Operating Characteristic Curve and ROC Curve")
    (description
     "Construction of the Total Operating Characteristic (TOC) Curve and the Receiver
(aka Relative) Operating Characteristic (ROC) Curve for spatial and non-spatial
data.  The TOC method is a modification of the ROC method which measures the
ability of an index variable to diagnose either presence or absence of a
characteristic.  The diagnosis depends on whether the value of an index variable
is above a threshold.  Each threshold generates a two-by-two contingency table,
which contains four entries: hits (H), misses (M), false alarms (FA), and
correct rejections (CR).  While ROC shows for each threshold only two ratios,
H/(H + M) and FA/(FA + CR), TOC reveals the size of every entry in the
contingency table for each threshold (Pontius Jr., R.G., Si, K. 2014.
<doi:10.1080/13658816.2013.862623>).")
    (license license:gpl3)))

(define-public r-toastui
  (package
    (name "r-toastui")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "toastui" version))
              (sha256
               (base32
                "0c32410ylnp2b4h72aq7pig423jgcl63x8lmb8cf8m7h83xlj4ah"))))
    (properties `((upstream-name . "toastui")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shiny
                             r-rlang
                             r-magrittr
                             r-htmlwidgets
                             r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://dreamrs.github.io/toastui/")
    (synopsis "Interactive Tables, Calendars and Charts for the Web")
    (description
     "Create interactive tables, calendars and charts with TOAST UI
<https://ui.toast.com/> libraries to integrate in shiny applications or
rmarkdown HTML documents.")
    (license license:expat)))

(define-public r-tnrs
  (package
    (name "r-tnrs")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TNRS" version))
              (sha256
               (base32
                "1ad1168gm937dsjmrxan0c90viszjv76l5pd2xcx0sf67b28nf4d"))))
    (properties `((upstream-name . "TNRS")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TNRS")
    (synopsis "Taxonomic Name Resolution Service")
    (description
     "This package provides access to the Taxonomic Name Resolution Service
<https://github.com/ojalaquellueva/tnrsapi> through R. The user supplies plant
taxonomic names and the package returns resolved taxonomic names along with
information on decisions.  Optionally, the package can also be used to parse
taxonomic names.")
    (license license:expat)))

(define-public r-tnet
  (package
    (name "r-tnet")
    (version "3.0.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tnet" version))
              (sha256
               (base32
                "0922y9zb64zazl2irwfxxbghkgcwi2q57gylpiaxgmj4q6lc62l9"))))
    (properties `((upstream-name . "tnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-igraph))
    (home-page "http://toreopsahl.com/tnet/")
    (synopsis "Weighted, Two-Mode, and Longitudinal Networks Analysis")
    (description
     "Binary ties limit the richness of network analyses as relations are unique.  The
two-mode structure contains a number of features lost when projection it to a
one-mode network.  Longitudinal datasets allow for an understanding of the
causal relationship among ties, which is not the case in cross-sectional
datasets as ties are dependent upon each other.")
    (license license:gpl3)))

(define-public r-tnc
  (package
    (name "r-tnc")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TNC" version))
              (sha256
               (base32
                "0639wvylmk9mapvmz79ij65g1phv3ylc683awi4pgaf9yfwlmjkn"))))
    (properties `((upstream-name . "TNC")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TNC")
    (synopsis "Temporal Network Centrality (TNC) Measures")
    (description
     "Node centrality measures for temporal networks.  Available measures are temporal
degree centrality, temporal closeness centrality and temporal betweenness
centrality defined by Kim and Anderson (2012) <doi:10.1103/PhysRevE.85.026107>.
Applying the REN algorithm by Hanke and Foraita (2017)
<doi:10.1186/s12859-017-1677-x> when calculating the centrality measures keeps
the computational running time linear in the number of graph snapshots.
Further, all methods can run in parallel up to the number of nodes in the
network.")
    (license license:gpl3)))

(define-public r-tmvtnsim
  (package
    (name "r-tmvtnsim")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmvtnsim" version))
              (sha256
               (base32
                "15nhk21x9yklpxnqmd6qblmh0g4p9065hkvy26gd8ppaz19law5s"))))
    (properties `((upstream-name . "tmvtnsim")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=tmvtnsim")
    (synopsis "Truncated Multivariate Normal and t Distribution Simulation")
    (description
     "Simulation of random vectors from truncated multivariate normal and t
distributions based on the algorithms proposed by Yifang Li and Sujit K. Ghosh
(2015) <doi:10.1080/15598608.2014.996690>.")
    (license license:gpl2+)))

(define-public r-tmvtnorm
  (package
    (name "r-tmvtnorm")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmvtnorm" version))
              (sha256
               (base32
                "1zk0ak71wlk9d0lkwn6q28sdz4y2k7sgx021vdprlcg4vimn0yhw"))))
    (properties `((upstream-name . "tmvtnorm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrix r-gmm))
    (native-inputs (list gfortran))
    (home-page "https://www.r-project.org")
    (synopsis "Truncated Multivariate Normal and Student t Distribution")
    (description
     "Random number generation for the truncated multivariate normal and Student t
distribution.  Computes probabilities, quantiles and densities, including
one-dimensional and bivariate marginal densities.  Computes first and second
moments (i.e.  mean and covariance matrix) for the double-truncated multinormal
case.")
    (license license:gpl2+)))

(define-public r-tmvmixnorm
  (package
    (name "r-tmvmixnorm")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmvmixnorm" version))
              (sha256
               (base32
                "0i1g3598d43azyy1bsrvkjybqa5cd991fpmfqi5wv5703zaha2fj"))))
    (properties `((upstream-name . "tmvmixnorm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=tmvmixnorm")
    (synopsis
     "Sampling from Truncated Multivariate Normal and t Distributions")
    (description
     "Efficient sampling of truncated multivariate (scale) mixtures of normals under
linear inequality constraints is nontrivial due to the analytically intractable
normalizing constant.  Meanwhile, traditional methods may subject to numerical
issues, especially when the dimension is high and dependence is strong.
Algorithms proposed by Li and Ghosh (2015) <doi: 10.1080/15598608.2014.996690>
are adopted for overcoming difficulties in simulating truncated distributions.
Efficient rejection sampling for simulating truncated univariate normal
distribution is included in the package, which shows superiority in terms of
acceptance rate and numerical stability compared to existing methods and R
packages.  An efficient function for sampling from truncated multivariate normal
distribution subject to convex polytope restriction regions based on Gibbs
sampler for conditional truncated univariate distribution is provided.  By
extending the sampling method, a function for sampling truncated multivariate
Student's t distribution is also developed.  Moreover, the proposed method and
computation remain valid for high dimensional and strong dependence scenarios.
Empirical results in Li and Ghosh (2015) <doi: 10.1080/15598608.2014.996690>
illustrated the superior performance in terms of various criteria (e.g. mixing
and integrated auto-correlation time).")
    (license license:gpl2)))

(define-public r-tmti
  (package
    (name "r-tmti")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TMTI" version))
              (sha256
               (base32
                "080k4lmwspxi6salv4zq9lipwcah3zr6vfc0lrll1z8gynk8arq9"))))
    (properties `((upstream-name . "TMTI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=TMTI")
    (synopsis "'Too Many, Too Improbable' (TMTI) Test Procedures")
    (description
     "This package provides methods for computing joint tests, controlling the
Familywise Error Rate (FWER) and getting lower bounds on the number of false
hypotheses in a set.  The methods implemented here are described in Mogensen and
Markussen (2021) <arXiv:2108.04731>.")
    (license license:expat)))

(define-public r-tmt
  (package
    (name "r-tmt")
    (version "0.3.1-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmt" version))
              (sha256
               (base32
                "02b7q5qcpa0wmxilqhzsy6mammhwa2sm3kjzwvigm3jc801z90h7"))))
    (properties `((upstream-name . "tmt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://jansteinfeld.github.io/tmt/")
    (synopsis "Estimation of the Rasch Model for Multistage Tests")
    (description
     "This package provides conditional maximum likelihood (CML) item parameter
estimation of sequential as well as cumulative deterministic multistage designs
(Zwitser & Maris, 2015, <doi:10.1007/s11336-013-9369-6>) as well as
probabilistic sequential and cumulative multistage designs (Steinfeld &
Robitzsch, 2021, <doi:10.31234/osf.io/ew27f>).  Supports CML item parameter
estimation of conventional linear designs and additional functions for the
likelihood ratio test (Andersen, 1973, <doi:10.1007/BF02291180>) as well as
functions for the simulation of several kinds of multistage designs.")
    (license license:gpl3)))

(define-public r-tmsens
  (package
    (name "r-tmsens")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmsens" version))
              (sha256
               (base32
                "0rvcqf82jlq61rpmbyc5xy3fh0hzj1iy2kf6mmar18k3rhlhgayg"))))
    (properties `((upstream-name . "tmsens")))
    (build-system r-build-system)
    (home-page "https://github.com/dea-hazewinkel/tmsens")
    (synopsis "Sensitivity Analysis Using the Trimmed Means Estimator")
    (description "Sensitivity analysis using the trimmed means estimator.")
    (license license:gpl3+)))

(define-public r-tmpm
  (package
    (name "r-tmpm")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmpm" version))
              (sha256
               (base32
                "1fqk39zyc07gh0ygi7pfljlnj6ih37jsb7bcxm05zcd4796wil8j"))))
    (properties `((upstream-name . "tmpm")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2))
    (home-page "https://cran.r-project.org/package=tmpm")
    (synopsis "Trauma Mortality Prediction Model")
    (description
     "Trauma Mortality prediction for ICD-9, ICD-10, and AIS lexicons in long or wide
format based on Dr. Alan Cook's tmpm mortality model.")
    (license license:gpl2)))

(define-public r-tmplate
  (package
    (name "r-tmplate")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmplate" version))
              (sha256
               (base32
                "1w04bmir23ip3c7janix8i2qhdnmlg78jrrjlykl95vnsvjwld6g"))))
    (properties `((upstream-name . "tmplate")))
    (build-system r-build-system)
    (propagated-inputs (list r-trnslate))
    (native-inputs (list r-knitr))
    (home-page "<https://marioma.me?i=soft>")
    (synopsis "Code Generation Based on Templates")
    (description
     "Define general templates with tags that can be replaced by content depending on
arguments and objects to modify the final output of the document.")
    (license license:gpl2+)))

(define-public r-tmod
  (package
    (name "r-tmod")
    (version "0.50.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmod" version))
              (sha256
               (base32
                "07p8n0103b9522p5yfqx4vb7yq24c03np95xzb6ddj7nvms88m5z"))))
    (properties `((upstream-name . "tmod")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-tagcloud
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-plotwidgets
                             r-pheatmap
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-beeswarm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tmod")
    (synopsis
     "Feature Set Enrichment Analysis for Metabolomics and Transcriptomics")
    (description
     "This package provides methods and feature set definitions for feature or gene
set enrichment analysis in transcriptional and metabolic profiling data.
Package includes tests for enrichment based on ranked lists of features,
functions for visualisation and multivariate functional analysis.  See Zyla et
al (2019) <doi:10.1093/bioinformatics/btz447>.")
    (license license:gpl2+)))

(define-public r-tmle
  (package
    (name "r-tmle")
    (version "1.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmle" version))
              (sha256
               (base32
                "1m1zz48cp8agxswgrwvvzdh50kyyc84hw328nyhbbnfkx19c6wj7"))))
    (properties `((upstream-name . "tmle")))
    (build-system r-build-system)
    (propagated-inputs (list r-superlearner r-glmnet))
    (home-page "https://CRAN.R-project.org/package=tmle")
    (synopsis "Targeted Maximum Likelihood Estimation")
    (description
     "Targeted maximum likelihood estimation of point treatment effects (Targeted
Maximum Likelihood Learning, The International Journal of Biostatistics, 2(1),
2006.  This version automatically estimates the additive treatment effect among
the treated (ATT) and among the controls (ATC).  The tmle() function calculates
the adjusted marginal difference in mean outcome associated with a binary point
treatment, for continuous or binary outcomes.  Relative risk and odds ratio
estimates are also reported for binary outcomes.  Missingness in the outcome is
allowed, but not in treatment assignment or baseline covariate values.  The
population mean is calculated when there is missingness, and no variation in the
treatment assignment.  The tmleMSM() function estimates the parameters of a
marginal structural model for a binary point treatment effect.  Effect
estimation stratified by a binary mediating variable is also available.  An ID
argument can be used to identify repeated measures.  Default settings call
SuperLearner to estimate the Q and g portions of the likelihood, unless values
or a user-supplied regression function are passed in as arguments.")
    (license (list license:bsd-3 license:gpl2))))

(define-public r-tmisc
  (package
    (name "r-tmisc")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tmisc" version))
              (sha256
               (base32
                "1zs7zxawl13pils9hff0i5aplxy32ccp27jcmjdh39lgf083s3v3"))))
    (properties `((upstream-name . "Tmisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rstudioapi r-magrittr r-dplyr))
    (home-page "https://github.com/stephenturner/Tmisc")
    (synopsis "Turner Miscellaneous")
    (description
     "Miscellaneous utility functions for data manipulation, data tidying, and working
with gene expression data.")
    (license license:gpl3)))

(define-public r-tmdb
  (package
    (name "r-tmdb")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TMDb" version))
              (sha256
               (base32
                "062n9mi2f9g2xxpnymja57xnpl855d8mwyfwci7a8cq4c7w7avj7"))))
    (properties `((upstream-name . "TMDb")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=TMDb")
    (synopsis "Access to TMDb API")
    (description
     "This package provides an R-interface to the TMDb API (see TMDb API on
<https://developers.themoviedb.org/3/getting-started/introduction>).  The Movie
Database (TMDb) is a popular user editable database for movies and TV shows (see
<https://www.themoviedb.org>).")
    (license license:artistic2.0)))

(define-public r-tmcn
  (package
    (name "r-tmcn")
    (version "0.2-13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmcn" version))
              (sha256
               (base32
                "0rf8mz6kdm83pm85kzfyzb8kd3iwaxv5bgphjpxlnq6z32m9yds7"))))
    (properties `((upstream-name . "tmcn")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tmcn")
    (synopsis "Text Mining Toolkit for Chinese")
    (description
     "This package provides a Text mining toolkit for Chinese, which includes
facilities for Chinese string processing, Chinese NLP supporting, encoding
detecting and converting.  Moreover, it provides some functions to support tm
package in Chinese.")
    (license license:lgpl2.0+)))

(define-public r-tmcalculator
  (package
    (name "r-tmcalculator")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TmCalculator" version))
              (sha256
               (base32
                "1zrsndpdl9bcl1w6szz8rdzadk7jsbd14fajnndliz9fra1ra7xg"))))
    (properties `((upstream-name . "TmCalculator")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TmCalculator")
    (synopsis "Melting Temperature of Nucleic Acid Sequences")
    (description
     "This tool is extended from methods in Bio.SeqUtils.MeltingTemp of python.  The
melting temperature of nucleic acid sequences can be calculated in three method,
the Wallace rule (Thein & Wallace (1986) <doi:10.1016/S0140-6736(86)90739-7>),
empirical formulas based on G and C content (Marmur J. (1962)
<doi:10.1016/S0022-2836(62)80066-7>, Schildkraut C. (2010)
<doi:10.1002/bip.360030207>, Wetmur J G (1991) <doi:10.3109/10409239109114069>,
Untergasser,A. (2012) <doi:10.1093/nar/gks596>, von Ahsen N (2001)
<doi:10.1093/clinchem/47.11.1956>) and nearest neighbor thermodynamics
(Breslauer K J (1986) <doi:10.1073/pnas.83.11.3746>, Sugimoto N (1996)
<doi:10.1093/nar/24.22.4501>, Allawi H (1998) <doi:10.1093/nar/26.11.2694>,
SantaLucia J (2004) <doi:10.1146/annurev.biophys.32.110601.141800>, Freier S
(1986) <doi:10.1073/pnas.83.24.9373>, Xia T (1998) <doi:10.1021/bi9809425>, Chen
JL (2012) <doi:10.1021/bi3002709>, Bommarito S (2000)
<doi:10.1093/nar/28.9.1929>, Turner D H (2010) <doi:10.1093/nar/gkp892>,
Sugimoto N (1995) <doi:10.1016/S0048-9697(98)00088-6>, Allawi H T (1997)
<doi:10.1021/bi962590c>, Santalucia N (2005) <doi:10.1093/nar/gki918>), and it
can also be corrected with salt ions and chemical compound (SantaLucia J (1996)
<doi:10.1021/bi951907q>, SantaLucia J(1998) <doi:10.1073/pnas.95.4.1460>,
Owczarzy R (2004) <doi:10.1021/bi034621r>, Owczarzy R (2008)
<doi:10.1021/bi702363u>).")
    (license license:gpl2+)))

(define-public r-tmbstan
  (package
    (name "r-tmbstan")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmbstan" version))
              (sha256
               (base32
                "1amjsvj7m7vyyhbppklw15n6xd02d2qjhswwzh543kc2f2hy79l4"))))
    (properties `((upstream-name . "tmbstan")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmb
                             r-stanheaders
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-bh))
    (home-page "https://cran.r-project.org/package=tmbstan")
    (synopsis "MCMC Sampling from 'TMB' Model Object using 'Stan'")
    (description
     "Enables all rstan functionality for a TMB model object, in particular MCMC
sampling and chain visualization.  Sampling can be performed with or without
Laplace approximation for the random effects.  This is demonstrated in Monnahan
& Kristensen (2018) <DOI:10.1371/journal.pone.0197954>.")
    (license license:gpl3+)))

(define-public r-tmap
  (package
    (name "r-tmap")
    (version "3.3-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tmap" version))
              (sha256
               (base32
                "012y50hbz2f87mwcmd9lp9ikcplvkz51g4fmanw3swlc1zpqxrb0"))))
    (properties `((upstream-name . "tmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-widgetframe
                             r-viridislite
                             r-units
                             r-tmaptools
                             r-stars
                             r-sf
                             r-rlang
                             r-rcolorbrewer
                             r-leafsync
                             r-leaflet
                             r-leafem
                             r-htmlwidgets
                             r-htmltools
                             r-classint
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-tmap/tmap")
    (synopsis "Thematic Maps")
    (description
     "Thematic maps are geographical maps in which spatial data distributions are
visualized.  This package offers a flexible, layer-based, and easy to use
approach to create thematic maps, such as choropleths and bubble maps.")
    (license license:gpl3)))

(define-public r-tm1r
  (package
    (name "r-tm1r")
    (version "1.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm1r" version))
              (sha256
               (base32
                "15w703rd7mfm32b62yv9mpms2fjq9ifmc1n460vsrpqz1dkiavb9"))))
    (properties `((upstream-name . "tm1r")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/muhammedalionder/tm1r")
    (synopsis "The Integration Between 'IBM COGNOS TM1' and R")
    (description
     "Useful functions to connect to TM1
<https://www.ibm.com/uk-en/products/planning-and-analytics> instance from R via
REST API. With the functions in the package, data can be imported from TM1 via
mdx view or native view, data can be sent to TM1', processes and chores can be
executed, and cube and dimension metadata information can be taken.")
    (license license:gpl2+)))

(define-public r-tm-plugin-mail
  (package
    (name "r-tm-plugin-mail")
    (version "0.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.mail" version))
              (sha256
               (base32
                "0rn8jqv622qmc0zkz534ka5qnbca2rlabxm3vjbqplr6fh1ahwb1"))))
    (properties `((upstream-name . "tm.plugin.mail")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-nlp))
    (home-page "https://cran.r-project.org/package=tm.plugin.mail")
    (synopsis "Text Mining E-Mail Plug-in")
    (description
     "This package provides a plug-in for the tm text mining framework providing mail
handling functionality.")
    (license license:gpl3)))

(define-public r-tm-plugin-lexisnexis
  (package
    (name "r-tm-plugin-lexisnexis")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.lexisnexis" version))
              (sha256
               (base32
                "0c094z83mcq8blc8w7kvy91d28qqcx6f6193p3frpviznlaq21xk"))))
    (properties `((upstream-name . "tm.plugin.lexisnexis")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-tm r-nlp r-isocodes))
    (home-page "https://github.com/nalimilan/R.TeMiS")
    (synopsis
     "Import Articles from 'LexisNexis' Using the 'tm' Text Mining Framework")
    (description
     "This package provides a tm Source to create corpora from articles exported from
the LexisNexis content provider as HTML files.  It is able to read both text
content and meta-data information (including source, date, title, author and
pages).  Note that the file format is highly unstable: there is no warranty that
this package will work for your corpus, and you may have to adjust the code to
adapt it to your particular format.")
    (license license:gpl2+)))

(define-public r-tm-plugin-korpus
  (package
    (name "r-tm-plugin-korpus")
    (version "0.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.koRpus" version))
              (sha256
               (base32
                "132w4rji68y1ddy93844n2ks5z059a16lqy71vcrxm6wcdn2w3hq"))))
    (properties `((upstream-name . "tm.plugin.koRpus")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-sylly r-nlp r-korpus))
    (native-inputs (list r-knitr))
    (home-page "https://reaktanz.de/?c=hacking&s=koRpus")
    (synopsis "Full Corpus Support for the 'koRpus' Package")
    (description
     "Enhances koRpus text object classes and methods to also support large corpora.
Hierarchical ordering of corpus texts into arbitrary categories will be
preserved.  Provided classes and methods also improve the ability of using the
koRpus package together with the tm package.  To ask for help, report bugs,
suggest feature improvements, or discuss the global development of the package,
please subscribe to the koRpus-dev mailing list
(<https://korpusml.reaktanz.de>).")
    (license license:gpl3+)))

(define-public r-tm-plugin-factiva
  (package
    (name "r-tm-plugin-factiva")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.factiva" version))
              (sha256
               (base32
                "1gdkflz2g1vmqzv4p65w6zfynnx0fls7xyvhzg4li4kjg2xf6l75"))))
    (properties `((upstream-name . "tm.plugin.factiva")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-tm r-rvest r-nlp))
    (home-page "https://github.com/nalimilan/R.TeMiS")
    (synopsis
     "Import Articles from 'Factiva' Using the 'tm' Text Mining Framework")
    (description
     "This package provides a tm Source to create corpora from articles exported from
the Dow Jones Factiva content provider as XML or HTML files.  It is able to read
both text content and meta-data information (including source, date, title,
author, subject, geographical coverage, company, industry, and various
provider-specific fields).")
    (license license:gpl2+)))

(define-public r-tm-plugin-europresse
  (package
    (name "r-tm-plugin-europresse")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.europresse" version))
              (sha256
               (base32
                "03qi9rkfwgjvir4cjpi9imc8zaldvan42v9lqfr5d6zhr0ajy6wx"))))
    (properties `((upstream-name . "tm.plugin.europresse")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-tm r-nlp))
    (home-page "https://r-forge.r-project.org/projects/r-temis/")
    (synopsis
     "Import Articles from 'Europresse' Using the 'tm' Text Mining Framework")
    (description
     "This package provides a tm Source to create corpora from articles exported from
the Europresse content provider as HTML files.  It is able to read both text
content and meta-data information (including source, date, title, author and
pages).")
    (license license:gpl2+)))

(define-public r-tm-plugin-dc
  (package
    (name "r-tm-plugin-dc")
    (version "0.2-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.dc" version))
              (sha256
               (base32
                "0v14fj3r438pvs88k4zwlzkgax8r0k6cx4mqjnzzad15frqficij"))))
    (properties `((upstream-name . "tm.plugin.dc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-slam r-nlp r-dsl))
    (home-page "https://cran.r-project.org/package=tm.plugin.dc")
    (synopsis "Text Mining Distributed Corpus Plug-in")
    (description
     "This package provides a plug-in for the text mining framework tm to support text
mining in a distributed way.  The package provides a convenient interface for
handling distributed corpus objects based on distributed list objects.")
    (license license:gpl2+)))

(define-public r-tm-plugin-alceste
  (package
    (name "r-tm-plugin-alceste")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tm.plugin.alceste" version))
              (sha256
               (base32
                "0wid51bbbx01mjfhnaiv50vfyxxmjxw8alb73c1hq9wlsh3x3vjf"))))
    (properties `((upstream-name . "tm.plugin.alceste")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-nlp))
    (home-page "https://r-forge.r-project.org/projects/r-temis/")
    (synopsis
     "Import texts from files in the Alceste format using the tm text mining framework")
    (description
     "This package provides a tm Source to create corpora from a corpus prepared in
the format used by the Alceste application (i.e.  a single text file with inline
meta-data).  It is able to import both text contents and meta-data (starred)
variables.")
    (license license:gpl2+)))

(define-public r-tls
  (package
    (name "r-tls")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tls" version))
              (sha256
               (base32
                "183b5m70s2whlgp9s1gb4xnylhlp4hnh3lw6b8f2vx4kahaid763"))))
    (properties `((upstream-name . "tls")))
    (build-system r-build-system)
    (home-page "https://github.com/LiYanStat/tls")
    (synopsis "Tools of Total Least Squares in Error-in-Variables Models")
    (description
     "This package provides functions for point and interval estimation in
error-in-variables models via total least squares or generalized total least
squares method.  See Golub and Van Loan (1980) <doi:10.1137/0717073>, Gleser
(1981) <https://www.jstor.org/stable/2240867>, Ivan Markovsky and Huffel (2007)
<doi:10.1016/j.sigpro.2007.04.004> for more information.")
    (license license:gpl3+)))

(define-public r-tlrmvnmvt
  (package
    (name "r-tlrmvnmvt")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tlrmvnmvt" version))
              (sha256
               (base32
                "0zcf4pz7dz49hz8srr49rvksx7jfjss1sp4zlipbx89aq0l2l94p"))))
    (properties `((upstream-name . "tlrmvnmvt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-bh))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=tlrmvnmvt")
    (synopsis "Low-Rank Methods for MVN and MVT Probabilities")
    (description
     "Implementation of the classic Genz algorithm and a novel tile-low-rank algorithm
for computing	relatively high-dimensional multivariate normal (MVN) and
Student-t (MVT) probabilities.  References used for this package: Foley, James,
Andries van Dam, Steven Feiner, and John Hughes. \"Computer Graphics: Principle
and Practice\".  Addison-Wesley Publishing Company.  Reading, Massachusetts
(1987, ISBN:0-201-84840-6 1); Genz, A., \"Numerical computation of multivariate
normal probabilities,\" Journal of Computational and Graphical Statistics, 1,
141-149 (1992) <doi:10.1080/10618600.1992.10477010>; Cao, J., Genton, M. G.,
Keyes, D. E., & Turkiyyah, G. M. \"Exploiting Low Rank Covariance Structures for
Computing High-Dimensional Normal and Student- t Probabilities,\" Statistics and
Computing, 31.1, 1-16 (2021) <doi:10.1007/s11222-020-09978-y>; Cao, J., Genton,
M. G., Keyes, D. E., & Turkiyyah, G. M. \"tlrmvnmvt: Computing High-Dimensional
Multivariate Normal and Student-t Probabilities with Low-Rank Methods in R,\"
Journal of Statistical Software, 101.4, 1-25 (2022) <doi:10.18637/jss.v101.i04>.")
    (license license:gpl2)))

(define-public r-tlmoments
  (package
    (name "r-tlmoments")
    (version "0.7.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TLMoments" version))
              (sha256
               (base32
                "096sr0j4vhlfsaxc565zgw0mjk4sxkl03i7ip3hzcfph1c05yj6h"))))
    (properties `((upstream-name . "TLMoments")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-lmomco r-hypergeo r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TLMoments")
    (synopsis
     "Calculate TL-Moments and Convert Them to Distribution Parameters")
    (description
     "Calculates empirical TL-moments (trimmed L-moments) of arbitrary order and
trimming, and converts them to distribution parameters.")
    (license license:gpl2+)))

(define-public r-tlm
  (package
    (name "r-tlm")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tlm" version))
              (sha256
               (base32
                "1iw08pa70nb25fnv64834s5c8vl456a2rcng7x6v9vs5q37610g6"))))
    (properties `((upstream-name . "tlm")))
    (build-system r-build-system)
    (propagated-inputs (list r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tlm")
    (synopsis
     "Effects under Linear, Logistic and Poisson Regression Models with Transformed Variables")
    (description
     "Computation of effects under linear, logistic and Poisson regression models with
transformed variables.  Logarithm and power transformations are allowed.
Effects can be displayed both numerically and graphically in both the original
and the transformed space of the variables.")
    (license license:gpl2+)))

(define-public r-tldr
  (package
    (name "r-tldr")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tldr" version))
              (sha256
               (base32
                "0xagl35kz6vpqzxdgpmvjafgqrln07k65gnw8kfykj4rg7blfsxq"))))
    (properties `((upstream-name . "tldr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tableone r-reshape2 r-ggplot2))
    (home-page "https://cran.r-project.org/package=tldr")
    (synopsis
     "T Loux Doing R: Functions to Simplify Data Analysis and Reporting")
    (description
     "Gives a number of functions to aid common data analysis processes and reporting
statistical results in an RMarkdown file.  Data analysis functions combine
multiple base R functions used to describe simple bivariate relationships into a
single, easy to use function.  Reporting functions will return character strings
to report p-values, confidence intervals, and hypothesis test and regression
results.  Strings will be LaTeX-formatted as necessary and will knit pretty in
an RMarkdown document.  The package also provides a wrapper for the
CreateTableOne() function in the tableone package to make the results knit-able.")
    (license license:gpl3)))

(define-public r-tlasso
  (package
    (name "r-tlasso")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tlasso" version))
              (sha256
               (base32
                "1svjl2va3vpa1m13wmyy3bpx76xxivalwprzbaavwxf8lgk34wgr"))))
    (properties `((upstream-name . "Tlasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtensor r-igraph r-huge r-expm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Tlasso")
    (synopsis
     "Non-Convex Optimization and Statistical Inference for Sparse Tensor Graphical Models")
    (description
     "An optimal alternating optimization algorithm for estimation of precision
matrices of sparse tensor graphical models, and an efficient inference procedure
for support recovery of the precision matrices.")
    (license license:gpl2+)))

(define-public r-tlars
  (package
    (name "r-tlars")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tlars" version))
              (sha256
               (base32
                "1q4hq4fp7hldgnvyd6nzif231x85j16gwa69cljixfhgyxs95rlf"))))
    (properties `((upstream-name . "tlars")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jasinmachkour/tlars")
    (synopsis
     "The T-LARS Algorithm: Early-Terminated Forward Variable Selection")
    (description
     "Computes the solution path of the Terminating-LARS (T-LARS) algorithm.  The
T-LARS algorithm is a major building block of the T-Rex selector (see R package
trex').  The package is based on the papers Machkour, Muma, and Palomar (2021)
<arXiv:2110.06048>, Efron, Hastie, Johnstone, and Tibshirani (2004)
<doi:10.1214/009053604000000067>, and Tibshirani (1996)
<doi:10.1111/j.2517-6161.1996.tb02080.x>.")
    (license license:gpl3+)))

(define-public r-tlagpropodds
  (package
    (name "r-tlagpropodds")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tLagPropOdds" version))
              (sha256
               (base32
                "08ik62hlnbzb5xn159lfs85dwz69w4jnnk9mbc75mxryzw10p6jd"))))
    (properties `((upstream-name . "tLagPropOdds")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-r-utils r-dplyr))
    (home-page "https://cran.r-project.org/package=tLagPropOdds")
    (synopsis
     "Proportional Odds Model with Censored, Time-Lagged Categorical Outcome")
    (description
     "This package implements a semiparametric estimator for the odds ratio model with
censored, time-lagged, ordered categorical outcome in a randomized clinical
trial that incorporates baseline and time-dependent information.  Tsiatis, A. A.
and Davidian, M. (2021) <arXiv:2106.15559>.")
    (license license:gpl2)))

(define-public r-tlaginterim
  (package
    (name "r-tlaginterim")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tLagInterim" version))
              (sha256
               (base32
                "17fz38bc4r7m3racscr9yn1s8vmzlkkc14144bb3x4sg40ybyfpx"))))
    (properties `((upstream-name . "tLagInterim")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-r-utils))
    (home-page "https://cran.r-project.org/package=tLagInterim")
    (synopsis "Interim Monitoring of Clinical Trials with Time-Lagged Outcome")
    (description
     "This package implements inverse and augmented inverse probability weighted
estimators for common treatment effect parameters at an interim analysis with
time-lagged outcome that may not be available for all enrolled subjects.
Produces estimators, standard errors, and information that can be used to
compute stopping boundaries using software that assumes that the estimators/test
statistics have independent increments.  Tsiatis, A. A. and Davidian, M., (2022)
<arXiv:2204.10739> .")
    (license license:gpl2)))

(define-public r-tkrplotr
  (package
    (name "r-tkrplotr")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tkRplotR" version))
              (sha256
               (base32
                "1n8ihn6ys68dzfxi1wqdbq00qm41fwjw2vn9i3wyb4w1j73v82zy"))))
    (properties `((upstream-name . "tkRplotR")))
    (build-system r-build-system)
    (inputs (list tcl))
    (home-page "https://cran.r-project.org/package=tkRplotR")
    (synopsis "Display Resizable Plots")
    (description "Display a plot in a Tk canvas.")
    (license license:gpl2+)))

(define-public r-tkrplot
  (package
    (name "r-tkrplot")
    (version "0.0-27")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tkrplot" version))
              (sha256
               (base32
                "19bj4wn1fs4wrx5k4gakhpz4q59fgx0584wyaw7hnh0ljj8i34n9"))))
    (properties `((upstream-name . "tkrplot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tkrplot")
    (synopsis "TK Rplot")
    (description "Simple mechanism for placing R graphics in a Tk widget.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tkimgr
  (package
    (name "r-tkimgr")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tkImgR" version))
              (sha256
               (base32
                "158zw4qc04ifyhfdc8zk49vyfb2scn4xcjfcnz7qsfhivfn50zrh"))))
    (properties `((upstream-name . "tkImgR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tkrplotr))
    (home-page "https://cran.r-project.org/package=tkImgR")
    (synopsis "Simple Image Viewer for R Using the 'tcltk' Package")
    (description
     "This package provides a Tcl/Tk Graphical User Interface (GUI) to display images
than can be zoomed and panned using the mouse and keyboard shortcuts.  tkImgR
read and write different image formats (PPM/PGM, PNG and GIF) using the standard
Tcl/Tk distribution (>=8.6), but other formats (JPEG, TIFF, CR2) can be handled
using the tkImg package for Tcl/Tk'.")
    (license license:gpl2+)))

(define-public r-tkcat
  (package
    (name "r-tkcat")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TKCat" version))
              (sha256
               (base32
                "0j3m10adfc3k7znaissl1w6pqg5mf2qhl4r2i89qjdmw0i1h27pa"))))
    (properties `((upstream-name . "TKCat")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-visnetwork
                             r-uuid
                             r-tidyselect
                             r-shinydashboard
                             r-shiny
                             r-rlang
                             r-redamor
                             r-readr
                             r-promises
                             r-matrix
                             r-markdown
                             r-magrittr
                             r-jsonvalidate
                             r-jsonlite
                             r-htmltools
                             r-getpass
                             r-future
                             r-dt
                             r-dplyr
                             r-dbi
                             r-clickhousehttp
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://patzaw.github.io/TKCat/")
    (synopsis "Tailored Knowledge Catalog")
    (description
     "Facilitate the management of data from knowledge resources that are frequently
used alone or together in research environments.  In TKCat', knowledge resources
are manipulated as modeled database (MDB) objects.  These objects provide access
to the data tables along with a general description of the resource and a detail
data model documenting the tables, their fields and their relationships.  These
MDBs are then gathered in catalogs that can be easily explored an shared.
Finally, TKCat provides tools to easily subset, filter and combine MDBs and
create new catalogs suited for specific needs.")
    (license license:gpl3)))

(define-public r-titrationcurves
  (package
    (name "r-titrationcurves")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "titrationCurves" version))
              (sha256
               (base32
                "0z127sihd262mdik46sq9vcf05s7jsqmkpm3p4d779viw74bl768"))))
    (properties `((upstream-name . "titrationCurves")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=titrationCurves")
    (synopsis
     "Acid/Base, Complexation, Redox, and Precipitation Titration Curves")
    (description
     "This package provides a collection of functions to plot acid/base titration
curves (pH vs. volume of titrant), complexation titration curves (pMetal vs.
volume of EDTA), redox titration curves (potential vs.volume of titrant), and
precipitation titration curves (either pAnalyte or pTitrant vs. volume of
titrant).  Options include the titration of mixtures, the ability to overlay two
or more titration curves, and the ability to show equivalence points.")
    (license license:gpl2)))

(define-public r-titeir
  (package
    (name "r-titeir")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "titeIR" version))
              (sha256
               (base32
                "047vidn3zydbjijwgz6qm2d9j2ny8ng2sv5jzm8zb300y7k2426c"))))
    (properties `((upstream-name . "titeIR")))
    (build-system r-build-system)
    (propagated-inputs (list r-iso))
    (home-page "https://cran.r-project.org/package=titeIR")
    (synopsis "Isotonic Designs for Phase 1 Trials with Late-Onset Toxicities")
    (description
     "This package provides functions to design phase 1 trials using an isotonic
regression based design incorporating time-to-event information.  Simulation and
design functions are available, which incorporate information about followup and
DLTs, and apply isotonic regression to devise estimates of DLT probability.")
    (license license:gpl3)))

(define-public r-titanic
  (package
    (name "r-titanic")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "titanic" version))
              (sha256
               (base32
                "0mdmh0ciwfig00847bmvp50cyvj8pra6q4i4vdg7md19z5rjlx3j"))))
    (properties `((upstream-name . "titanic")))
    (build-system r-build-system)
    (home-page "https://github.com/paulhendricks/titanic")
    (synopsis "Titanic Passenger Survival Data Set")
    (description
     "This data set provides information on the fate of passengers on the fatal maiden
voyage of the ocean liner \"Titanic\", summarized according to economic status
(class), sex, age and survival.  Whereas the base R Titanic data found by
calling data(\"Titanic\") is an array resulting from cross-tabulating 2201
observations, these data sets are the individual non-aggregated observations and
formatted in a machine learning context with a training sample, a testing
sample, and two additional data sets that can be used for deeper machine
learning analysis.  These data sets are also the data sets downloaded from the
Kaggle competition and thus lowers the barrier to entry for users new to R or
machine learing.")
    (license license:cc0)))

(define-public r-titan2
  (package
    (name "r-titan2")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TITAN2" version))
              (sha256
               (base32
                "16zf42s1as2xrvyhd0lnv36mgnr5w19xv11pkl0k8imb5bdkhxa2"))))
    (properties `((upstream-name . "TITAN2")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-snow
                             r-purrr
                             r-glue
                             r-ggridges
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TITAN2")
    (synopsis "Threshold Indicator Taxa Analysis")
    (description
     "Uses indicator species scores across binary partitions of a sample set to detect
congruence in taxon-specific changes of abundance and occurrence frequency along
an environmental gradient as evidence of an ecological community threshold.
Relevant references include: Baker, ME and RS King.  2010.  A new method for
detecting and interpreting biodiversity and ecological community thresholds.
Methods in Ecology and Evolution 1(1): 25:37.  King, RS and ME Baker.  2010.
Considerations for identifying and interpreting ecological community thresholds.
 Journal of the North American Benthological Association 29(3):998-1008.  Baker
ME and RS King.  2013.  Of TITAN and straw men: an appeal for greater
understanding of community data.  Freshwater Science 32(2):489-506.")
    (license license:gpl2)))

(define-public r-tis
  (package
    (name "r-tis")
    (version "1.39")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tis" version))
              (sha256
               (base32
                "1sq3acz8mybsbxng5fga4ynqvh1ly9hs3ca727jiyx1gam712mis"))))
    (properties `((upstream-name . "tis")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tis")
    (synopsis "Time Indexes and Time Indexed Series")
    (description
     "This package provides functions and S3 classes for time indexes and time indexed
series, which are compatible with FAME frequencies.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-tipsae
  (package
    (name "r-tipsae")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tipsae" version))
              (sha256
               (base32
                "0g4js7fx51yliq5lkzm8p3180a5wyp17l53nx4iix36i3k17arn9"))))
    (properties `((upstream-name . "tipsae")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-sp
                             r-shiny
                             r-rstan
                             r-rdpack
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-nlme
                             r-ggpubr
                             r-ggplot2
                             r-broom
                             r-bh))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=tipsae")
    (synopsis
     "Tools for Handling Indices and Proportions in Small Area Estimation")
    (description
     "It allows for mapping proportions and indicators defined on the unit interval.
It implements Beta-based small area methods comprising the classical Beta
regression models, the Flexible Beta model and Zero and/or One Inflated
extensions (Janicki 2020 <doi:10.1080/03610926.2019.1570266>).  Such methods,
developed within a Bayesian framework through Stan <https://mc-stan.org/>, come
equipped with a set of diagnostics and complementary tools, visualizing and
exporting functions.  A Shiny application with a user-friendly interface can be
launched to further simplify the process.")
    (license license:gpl3)))

(define-public r-tips
  (package
    (name "r-tips")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TiPS" version))
              (sha256
               (base32
                "1dh7rjxw35n96jcbf404qk14sh1w2zbrb9wf159n4pqdxa21kyn1"))))
    (properties `((upstream-name . "TiPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcpp r-inline r-gtools))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.in2p3.fr/ete/tips/")
    (synopsis "Trajectories and Phylogenies Simulator")
    (description
     "Generates stochastic time series and genealogies associated with a population
dynamics model.  Times series are simulated using the Gillespie exact and
approximate algorithms and a new algorithm we introduce that uses both
approaches to optimize the time execution of the simulations.  Genealogies are
simulated from a trajectory using a backwards-in-time based approach.  Methods
are described in Danesh G et al (2022) <doi:10.1111/2041-210X.14038>.")
    (license license:gpl2+)))

(define-public r-tipr
  (package
    (name "r-tipr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tipr" version))
              (sha256
               (base32
                "0lx6s0yiyl26gn49xlydyl49b7qb3rl94lahlcyhryayp8sns2ni"))))
    (properties `((upstream-name . "tipr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-sensemakr r-purrr r-glue))
    (home-page "https://cran.r-project.org/package=tipr")
    (synopsis "Tipping Point Analyses")
    (description
     "The strength of evidence provided by epidemiological and observational studies
is inherently limited by the potential for unmeasured confounding.  We focus on
three key quantities: the observed bound of the confidence interval closest to
the null, the relationship between an unmeasured confounder and the outcome, for
example a plausible residual effect size for an unmeasured continuous or binary
confounder, and the relationship between an unmeasured confounder and the
exposure, for example a realistic mean difference or prevalence difference for
this hypothetical confounder between exposure groups.  Building on the methods
put forth by Cornfield et al. (1959), Bross (1966), Schlesselman (1978),
Rosenbaum & Rubin (1983), Lin et al. (1998), Lash et al. (2009), Rosenbaum
(1986), Cinelli & Hazlett (2020), VanderWeele & Ding (2017), and Ding &
VanderWeele (2016), we can use these quantities to assess how an unmeasured
confounder may tip our result to insignificance.")
    (license license:expat)))

(define-public r-tippy
  (package
    (name "r-tippy")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tippy" version))
              (sha256
               (base32
                "00c9v07ax7l0x5wpx3ca8hqvdqs3p62d58igp51rsbh9x1ylgjcn"))))
    (properties `((upstream-name . "tippy")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jsonlite r-htmlwidgets r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://tippy.john-coene.com/")
    (synopsis "Add Tooltips to 'R markdown' Documents or 'Shiny' Apps")
    (description
     "Htmlwidget of Tippyjs to add tooltips to Shiny apps and R markdown documents.")
    (license license:expat)))

(define-public r-tipmap
  (package
    (name "r-tipmap")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tipmap" version))
              (sha256
               (base32
                "186k7d4hvbk5yrz0h23s2k1nakd2fjsc38jj4c0w6f94ldnbp00k"))))
    (properties `((upstream-name . "tipmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rbest r-purrr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tipmap")
    (synopsis "Tipping Point Analysis for Bayesian Dynamic Borrowing")
    (description
     "Tipping point analysis for clinical trials that employ Bayesian dynamic
borrowing via robust meta-analytic predictive (MAP) priors.  Mainly an
implementation of an approach proposed by Best and colleagues (2021) is provided
<doi:10.1002/pst.2093>.  Further functions facilitate the specification of the
robust MAP prior via expert elicitation (using the roulette method) and
computation of the posterior distribution of the treatment effect with either
fixed or stochastic expert-elicited weights.  Intended use is the planning,
analysis and interpretation of extrapolation studies in pediatric drug
development, but applicability is generally wider.")
    (license license:gpl3+)))

(define-public r-tipitaka
  (package
    (name "r-tipitaka")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tipitaka" version))
              (sha256
               (base32
                "0xf64bpzwywwjm0135c7zjn4ha0h1zj36rj2d4h8dskiq9z90xqi"))))
    (properties `((upstream-name . "tipitaka")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-stringi r-magrittr r-dplyr r-cpp11))
    (home-page "https://cran.r-project.org/package=tipitaka")
    (synopsis "Data and Tools for Analyzing the Pali Canon")
    (description
     "This package provides access to the complete Pali Canon, or Tipitaka, the
canonical scripture for Theravadin Buddhists worldwide.  Based on the Chattha
Sangayana Tipitaka version 4 (Vipassana Research Institute, 1990).")
    (license license:cc0)))

(define-public r-tipdatingbeast
  (package
    (name "r-tipdatingbeast")
    (version "1.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TipDatingBeast" version))
              (sha256
               (base32
                "07lw6jnr76qrxwrwv90hi5ih2xf6g4sz4hfapk5vf1y3ayfskkl0"))))
    (properties `((upstream-name . "TipDatingBeast")))
    (build-system r-build-system)
    (propagated-inputs (list r-teachingdemos r-mclust r-desctools))
    (home-page "https://www.r-project.org")
    (synopsis "Using Tip Dates with Phylogenetic Trees in BEAST")
    (description
     "Assists performing tip-dating of phylogenetic trees with BEAST BEAST is a
popular software for phylogenetic analysis.  The package assists the
implementation of various phylogenetic tip- dating tests using BEAST. It
contains two main functions.  The first one allows preparing date randomization
analyses, which assess the temporal signal of a data set.  The second function
allows performing leave-one-out analyses, which test for the consistency between
independent calibration sequences and allow pinpointing those leading to
potential bias.  The included tutorial provides detailed step-by-step
instructions.  An expanded description of the package can be found in article:
Rieux, A. and Khatchikian, C.E. (2017), TIPDATINGBEAST: an R package to assist
the implementation of phylogenetic tip-dating tests using BEAST. Molecular
Ecology Resources, 17: 608-613.
<onlinelibrary.wiley.com/doi/full/10.1111/1755-0998.12603>.")
    (license license:gpl2+)))

(define-public r-tipa
  (package
    (name "r-tipa")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tipa" version))
              (sha256
               (base32
                "1mdjpbdbgd5n22l7fc0bfansh536ib1bgjaxzrl8g534cjxdnhgl"))))
    (properties `((upstream-name . "tipa")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimr))
    (home-page "https://tipa.hugheylab.org")
    (synopsis "Tau-Independent Phase Analysis for Circadian Time-Course Data")
    (description
     "Accurately estimates phase shifts by accounting for period changes and for the
point in the circadian cycle at which the stimulus occurs.")
    (license license:gpl2)))

(define-public r-tip
  (package
    (name "r-tip")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tip" version))
              (sha256
               (base32
                "11khhkszd5a81q0h6acx5rvp1k97qj1srcvz2jilwf3v6nrz7daz"))))
    (properties `((upstream-name . "tip")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-network
                             r-mniw
                             r-laplacesdemon
                             r-igraph
                             r-ggplot2
                             r-ggally
                             r-foreach
                             r-doparallel
                             r-changepoint))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tip")
    (synopsis "Bayesian Clustering Using the Table Invitation Prior (TIP)")
    (description
     "Cluster data without specifying the number of clusters using the Table
Invitation Prior (TIP) introduced in the paper \"Clustering Gene Expression Using
the Table Invitation Prior\" by Charles W. Harrison, Qing He, and Hsin-Hsiung
Huang (2022) <doi:10.3390/genes13112036>.  TIP is a Bayesian prior that uses
pairwise distance and similarity information to cluster vectors, matrices, or
tensors.")
    (license license:expat)))

(define-public r-tinytiger
  (package
    (name "r-tinytiger")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinytiger" version))
              (sha256
               (base32
                "17j5lxlbg6jyw5zpbgaxjhnydiiyrl2d010s5wq8p7jx16sji0w1"))))
    (properties `((upstream-name . "tinytiger")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-rlang r-glue r-curl r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alarm-redist/tinytiger")
    (synopsis "Lightweight Interface to TIGER/Line Shapefiles")
    (description
     "Download geographic shapes from the United States Census Bureau TIGER/Line
Shapefiles
<https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html>.
 Functions support downloading and reading in geographic boundary data.  All
downloads can be set up with a cache to avoid multiple downloads.  Data is
available back to 2000 for most geographies.")
    (license license:expat)))

(define-public r-tinyspotifyr
  (package
    (name "r-tinyspotifyr")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinyspotifyr" version))
              (sha256
               (base32
                "19nicp1ml73lylja2np52rcc070maxm9286fjm7bfx3zsblxmakc"))))
    (properties `((upstream-name . "tinyspotifyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/TroyHernandez/tinyspotifyr")
    (synopsis "Tinyverse R Wrapper for the 'Spotify' Web API")
    (description
     "An R wrapper for the Spotify Web API <https://developer.spotify.com/web-api/>.")
    (license license:expat)))

(define-public r-tinyscholar
  (package
    (name "r-tinyscholar")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinyscholar" version))
              (sha256
               (base32
                "0cd9xbm1gk0v241fqa42hly40vkqb6hcvi8jp9iqq8sgmrs33adh"))))
    (properties `((upstream-name . "tinyscholar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rvest
                             r-rlang
                             r-r-utils
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-gt
                             r-ggplot2
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ShixiangWang/tinyscholar")
    (synopsis "Get and Show Personal 'Google Scholar' Profile")
    (description
     "This package provides functions to get personal Google Scholar profile data from
web API and show it in table or figure format.")
    (license license:expat)))

(define-public r-tinyproject
  (package
    (name "r-tinyproject")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinyProject" version))
              (sha256
               (base32
                "0cflnfp5mib3j1y3n5yvi867h5a7z6xr6163gq9y9b6nrl2skxfk"))))
    (properties `((upstream-name . "tinyProject")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-brew))
    (home-page "https://cran.r-project.org/package=tinyProject")
    (synopsis "Lightweight Template for Data Analysis Projects")
    (description
     "This package creates useful files and folders for data analysis projects and
provides functions to manage data, scripts and output files.  Also provides a
project template for Rstudio'.")
    (license license:gpl2+)))

(define-public r-tinylabels
  (package
    (name "r-tinylabels")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinylabels" version))
              (sha256
               (base32
                "0knqcdnlrydbfklizvx9mp304sjz6wp54nbx1zhy2g2730nwa61k"))))
    (properties `((upstream-name . "tinylabels")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mariusbarth/tinylabels")
    (synopsis "Lightweight Variable Labels")
    (description
     "Assign, extract, or remove variable labels from R vectors.  Lightweight and
dependency-free.")
    (license license:expat)))

(define-public r-tinyarray
  (package
    (name "r-tinyarray")
    (version "2.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinyarray" version))
              (sha256
               (base32
                "0nhsmgg126x2rfk82d91c8rk74sg7qbshy10vcbqdgcmlz6466mh"))))
    (properties `((upstream-name . "tinyarray")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survminer
                             r-survival
                             r-stringr
                             r-pheatmap
                             r-patchwork
                             r-org-hs-eg-db
                             r-limma
                             r-ggplot2
                             r-dplyr
                             r-clusterprofiler
                             r-biocmanager))
    (home-page "https://github.com/xjsun1221/tinyarray")
    (synopsis "Expression Data Analysis and Visualization")
    (description
     "Gene Expression Omnibus(GEO) and The Cancer Genome Atlas(TCGA) are common
bioinformatics public databases.  We integrate the regular analysis and charts
for expression data, to analyze and display the data concisely and intuitively.")
    (license license:expat)))

(define-public r-tinter
  (package
    (name "r-tinter")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinter" version))
              (sha256
               (base32
                "02hfw2720qn70x0piahm8cy2ajsb5bqapr4vyvknm4v1yka1wmw3"))))
    (properties `((upstream-name . "tinter")))
    (build-system r-build-system)
    (propagated-inputs (list r-chk))
    (home-page "https://github.com/poissonconsulting/tinter")
    (synopsis "Generate a Monochromatic Palette")
    (description
     "Generate a palette of tints, shades or both from a single colour.")
    (license license:expat)))

(define-public r-tint
  (package
    (name "r-tint")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tint" version))
              (sha256
               (base32
                "1vkdgxxgcj3qk3858sp3zi7c2id3dq0zxz23xd4i8lgbqgvvh2s3"))))
    (properties `((upstream-name . "tint")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-knitr r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eddelbuettel/tint/")
    (synopsis "'tint' is not 'Tufte'")
    (description
     "This package provides a tufte'-alike style for rmarkdown'.  A modern take on the
Tufte design for pdf and html vignettes, building on the tufte package with
additional contributions from the knitr and ggtufte package, and also
acknowledging the key influence of envisioned css'.")
    (license license:gpl3)))

(define-public r-tinsel
  (package
    (name "r-tinsel")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinsel" version))
              (sha256
               (base32
                "0n1x0cf4x6cq1yks0444nxd9snga4m6inc5lfvb7k96fzjb3xgbp"))))
    (properties `((upstream-name . "tinsel")))
    (build-system r-build-system)
    (home-page "https://github.com/nteetor/tinsel")
    (synopsis "Transform Functions using Decorators")
    (description
     "Instead of nesting function calls, annotate and transform functions using \"#.\"
comments.")
    (license license:expat)))

(define-public r-tinkr
  (package
    (name "r-tinkr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tinkr" version))
              (sha256
               (base32
                "161jm3hswzfwq31mzr11zzkfw6s488ax7n82g32zy8c6j6k71mr7"))))
    (properties `((upstream-name . "tinkr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xslt
                             r-xml2
                             r-stringr
                             r-r6
                             r-purrr
                             r-magrittr
                             r-glue
                             r-commonmark))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/tinkr/")
    (synopsis "Cast '(R)Markdown' Files to 'XML' and Back Again")
    (description
     "Parsing (R)Markdown files with numerous regular expressions can be fraught with
peril, but it does not have to be this way.  Converting (R)Markdown files to XML
using the commonmark package allows in-memory editing via of markdown elements
via XPath through the extensible R6 class called yarn'.  These modified XML
representations can be written to (R)Markdown documents via an xslt stylesheet
which implements an extended version of GitHub'-flavoured markdown so that you
can tinker to your hearts content.")
    (license license:gpl3)))

(define-public r-tinflex
  (package
    (name "r-tinflex")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tinflex" version))
              (sha256
               (base32
                "0ri4sqd46zxmd5nx05klz7054ip7pwd7pqg0fif1d1v8bh01rdl6"))))
    (properties `((upstream-name . "Tinflex")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Tinflex")
    (synopsis "Universal Non-Uniform Random Number Generator")
    (description
     "This package provides a universal non-uniform random number generator for quite
arbitrary distributions with piecewise twice differentiable densities.")
    (license license:gpl2+)))

(define-public r-timsr
  (package
    (name "r-timsr")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timsr" version))
              (sha256
               (base32
                "1n9xq01rfk5v0x0r8cr481s93nh99nf3kshb41d43r7zdw2dcwfi"))))
    (properties `((upstream-name . "timsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-opentimsr r-data-table))
    (home-page "https://cran.r-project.org/package=timsr")
    (synopsis "Easily Access timsTOF Data")
    (description
     "Access timsTOF mass spectrometry data, as described
<https://sso.bruker.com/auth/realms/bruker/protocol/openid-connect/auth?client_id=aem-bruker.com&redirect_uri=https%3A%2F%2Fwww.bruker.com%2Fen.login.html%3FtargetUrl%3Dhttps%3A%2F%2Fwww.bruker.com%2Fen%2Fservices%2Fsoftware-downloads%2Fmass-spectrometry.html&response_type=id_token%20token&scope=openid%20profile&state=4f9d225e92f341cca3b03a55533dbd65&nonce=f550633b1e984ecfb07979ae6d9277b4&ui_locales=en>
(after registering), using the OpenTIMS C++ reader and save all into
data.tables'.")
    (license license:gpl3)))

(define-public r-timsac
  (package
    (name "r-timsac")
    (version "1.3.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timsac" version))
              (sha256
               (base32
                "186919qka9j3kfpdw2gbh16n48d6xgz9lfqgk4b17f1d7l72iplg"))))
    (properties `((upstream-name . "timsac")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=timsac")
    (synopsis "Time Series Analysis and Control Package")
    (description
     "This package provides functions for statistical analysis, prediction and control
of time series based mainly on Akaike and Nakagawa (1988) <ISBN
978-90-277-2786-2>.")
    (license license:gpl2+)))

(define-public r-timp
  (package
    (name "r-timp")
    (version "1.13.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TIMP" version))
              (sha256
               (base32
                "1if2qm40nlz54pylqvdp4pk2jmicn8wkdlywrkr5hn80c0yyy879"))))
    (properties `((upstream-name . "TIMP")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnls
                             r-minpack-lm
                             r-gplots
                             r-gclus
                             r-fields
                             r-desolve
                             r-colorspace))
    (home-page "https://github.com/glotaran/TIMP")
    (synopsis
     "Fitting Separable Nonlinear Models in Spectroscopy and Microscopy")
    (description
     "This package provides a problem solving environment (PSE) for fitting separable
nonlinear models to measurements arising in physics and chemistry experiments,
as described by Mullen & van Stokkum (2007) <doi:10.18637/jss.v018.i03> for its
use in fitting time resolved spectroscopy data, and as described by Laptenok et
al. (2007) <doi:10.18637/jss.v018.i08> for its use in fitting Fluorescence
Lifetime Imaging Microscopy (FLIM) data, in the study of FÃ¶rster Resonance
Energy Transfer (FRET). `TIMP` also serves as the computation backend for the
`GloTarAn` software, a graphical user interface for the package, as described in
Snellenburg et al. (2012) <doi:10.18637/jss.v049.i03>.")
    (license license:gpl2+)))

(define-public r-timevtree
  (package
    (name "r-timevtree")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TimeVTree" version))
              (sha256
               (base32
                "124kg9zcq4b2j4qvg9f6gykbmzf69qjnnw54nv213ip2h4rdkv32"))))
    (properties `((upstream-name . "TimeVTree")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=TimeVTree")
    (synopsis
     "Survival Analysis of Time Varying Coefficients Using a Tree-Based Approach")
    (description
     "Estimates time varying regression effects under Cox type models in survival data
using classification and regression tree.  The codes in this package were
originally written in S-Plus for the paper \"Survival Analysis with Time-Varying
Regression Effects Using a Tree-Based Approach,\" by Xu, R. and Adak, S. (2002)
<doi:10.1111/j.0006-341X.2002.00305.x>, Biometrics, 58: 305-315.  Development of
this package was supported by NIH grants AG053983 and AG057707, and by the UCSD
Altman Translational Research Institute, NIH grant UL1TR001442.  The content is
solely the responsibility of the authors and does not necessarily represent the
official views of the NIH. The example data are from the Honolulu Heart
Program/Honolulu Asia Aging Study (HHP/HAAS).")
    (license license:gpl2)))

(define-public r-timevis
  (package
    (name "r-timevis")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timevis" version))
              (sha256
               (base32
                "16b2iwf1lrw5b8am8c5xqkyg6inwac09qgbp0yigf3isd3qqs829"))))
    (properties `((upstream-name . "timevis")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/daattali/timevis")
    (synopsis "Create Interactive Timeline Visualizations in R")
    (description
     "Create rich and fully interactive timeline visualizations.  Timelines can be
included in Shiny apps or R markdown documents.  timevis includes an extensive
API to manipulate a timeline after creation, and supports getting data out of
the visualization into R. Based on the vis.js Timeline JavaScript library.")
    (license license:expat)))

(define-public r-timevarconcurrentmodel
  (package
    (name "r-timevarconcurrentmodel")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TimeVarConcurrentModel" version))
              (sha256
               (base32
                "0fq05yni8hasivwmv5dk5ivwkprh4fkaa7h1bv8b60savvh0zs23"))))
    (properties `((upstream-name . "TimeVarConcurrentModel")))
    (build-system r-build-system)
    (propagated-inputs (list r-fda r-bolstad2))
    (home-page "https://cran.r-project.org/package=TimeVarConcurrentModel")
    (synopsis "Concurrent Multivariate Models with Time-Varying Coefficients")
    (description
     "This package provides a hypothesis test and variable selection algorithm for use
in time-varying, concurrent regression models.  The hypothesis test function is
also accompanied by a plotting function which will show the estimated beta(s)
and confidence band(s) from the hypothesis test.  The hypothesis test function
helps the user identify significant covariates within the scope of a
time-varying concurrent model.  The plots will show the amount of area that
falls outside the confidence band(s) which is used for the test statistic within
the hypothesis test.")
    (license license:gpl2+)))

(define-public r-timetools
  (package
    (name "r-timetools")
    (version "1.15.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timetools" version))
              (sha256
               (base32
                "0d861nsq5xh9gnzvf3alzk6yjk8afxf3a7z39c1rrprfhwqxmxgx"))))
    (properties `((upstream-name . "timetools")))
    (build-system r-build-system)
    (home-page "https://sourceforge.net/projects/timetools/")
    (synopsis
     "Seasonal/Sequential (Instants/Durations, Even or not) Time Series")
    (description
     "Objects to manipulate sequential and seasonal time series.  Sequential time
series based on time instants and time durations are handled.  Both can be
regularly or unevenly spaced (overlapping durations are allowed).  Only POSIX*
format are used for dates and times.  The following classes are provided :
POSIXcti', POSIXctp', TimeIntervalDataFrame', TimeInstantDataFrame',
SubtimeDataFrame ; methods to switch from a class to another and to modify the
time support of series (hourly time series to daily time series for instance)
are also defined.  Tools provided can be used for instance to handle
environmental monitoring data (not always produced on a regular time base).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-timetk
  (package
    (name "r-timetk")
    (version "2.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timetk" version))
              (sha256
               (base32
                "1zfqrk2qw4f13zxdl5qd8b6f3c59xvq5dprqd4r6nb7w6cqim4cc"))))
    (properties `((upstream-name . "timetk")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tsfeatures
                             r-timedate
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-slider
                             r-rsample
                             r-rlang
                             r-recipes
                             r-readr
                             r-purrr
                             r-plotly
                             r-padr
                             r-lubridate
                             r-hms
                             r-ggplot2
                             r-generics
                             r-forecast
                             r-forcats
                             r-dplyr
                             r-assertthat
                             r-anytime))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/business-science/timetk")
    (synopsis "Tool Kit for Working with Time Series in R")
    (description
     "Easy visualization, wrangling, and feature engineering of time series data for
forecasting and machine learning prediction.  Consolidates and extends time
series functionality from packages including dplyr', stats', xts', forecast',
slider', padr', recipes', and rsample'.")
    (license license:gpl3+)))

(define-public r-timeseriesdb
  (package
    (name "r-timeseriesdb")
    (version "1.0.0-1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeseriesdb" version))
              (sha256
               (base32
                "17j1nxpgbfbzmfc6zrgcw68ri9ncslic9qdkxkdpfr2gi1w61bpc"))))
    (properties `((upstream-name . "timeseriesdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts r-rpostgres r-jsonlite r-dbi r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mbannert/timeseriesdb")
    (synopsis
     "Time Series Database for Official Statistics with R and PostgreSQL")
    (description
     "Archive and manage times series data from official statistics.  The timeseriesdb
package was designed to manage a large catalog of time series from official
statistics which are typically published on a monthly, quarterly or yearly
basis.  Thus timeseriesdb is optimized to handle updates caused by data revision
as well as elaborate, multi-lingual meta information.")
    (license license:gpl3)))

(define-public r-timeseries-obeu
  (package
    (name "r-timeseries-obeu")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TimeSeries.OBeu" version))
              (sha256
               (base32
                "0ihigrbdkfbqqjxqfx3y5q8ii8n60301s7190jr50a88l1xzgmh8"))))
    (properties `((upstream-name . "TimeSeries.OBeu")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries r-trend r-locfit r-jsonlite r-forecast))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/okgreece/TimeSeries.OBeu")
    (synopsis "Time Series Analysis 'OpenBudgets.eu'")
    (description
     "Estimate and return the needed parameters for visualizations designed for
OpenBudgets.eu <http://openbudgets.eu/> time series data.  Calculate time series
model and forecast parameters in budget time series data of municipalities
across Europe, according to the OpenBudgets.eu data model.  There are functions
for measuring deterministic and stochastic trend of the input time series data
with ACF', PACF', Phillips Perron test, Augmented Dickey Fuller (ADF) test,
Kwiatkowski-Phillips-Schmidt-Shin (KPSS) test, Mann Kendall test for monotonic
trend and Cox and Stuart trend test, decomposing with local regression models or
stl decomposition, fitting the appropriate arima model and provide forecasts for
the input OpenBudgets.eu time series fiscal data.  Also, can be used generally
to extract visualization parameters convert them to JSON format and use them as
input in a different graphical interface.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-timeseq
  (package
    (name "r-timeseq")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeSeq" version))
              (sha256
               (base32
                "0m59g12dmnwpmwjmyb9x6z53x3gjmxcaxqva2dlbazsqkbzgaayp"))))
    (properties `((upstream-name . "timeSeq")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-pheatmap r-mgcv r-lattice r-gss))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=timeSeq")
    (synopsis
     "Detecting Differentially Expressed Genes in Time Course RNA-Seq Data")
    (description
     "This package provides a negative binomial mixed-effects (NBME) model to detect
nonparallel differential expression(NPDE) genes and parallel differential
expression(PDE) genes in the time course RNA-seq data.")
    (license license:gpl2+)))

(define-public r-timeroc
  (package
    (name "r-timeroc")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeROC" version))
              (sha256
               (base32
                "1qxijg7hazc8bifwj2254ig2p3cbrp9p0bsyhhh3aikf1rg113v1"))))
    (properties `((upstream-name . "timeROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-pec r-mvtnorm))
    (home-page "https://cran.r-project.org/package=timeROC")
    (synopsis "Time-Dependent ROC Curve and AUC for Censored Survival Data")
    (description
     "Estimation of time-dependent ROC curve and area under time dependent ROC curve
(AUC) in the presence of censored data, with or without competing risks.
Confidence intervals of AUCs and tests for comparing AUCs of two rival markers
measured on the same subjects can be computed, using the iid-representation of
the AUC estimator.  Plot functions for time-dependent ROC curves and AUC curves
are provided.  Time-dependent Positive Predictive Values (PPV) and Negative
Predictive Values (NPV) can also be computed.  See Blanche et al. (2013)
<doi:10.1002/sim.5958> and references therein for the details of the methods
implemented in the package.")
    (license license:gpl2+)))

(define-public r-timereg
  (package
    (name "r-timereg")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timereg" version))
              (sha256
               (base32
                "1vzphh7hfkc65r61wms1dh58i3ng7340whqkw947yb4nyvmdvld0"))))
    (properties `((upstream-name . "timereg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-numderiv r-lava))
    (home-page "https://github.com/scheike/timereg")
    (synopsis "Flexible Regression Models for Survival Data")
    (description
     "Programs for Martinussen and Scheike (2006), `Dynamic Regression Models for
Survival Data', Springer Verlag.  Plus more recent developments.  Additive
survival model, semiparametric proportional odds model, fast cumulative
residuals, excess risk models and more.  Flexible competing risks regression
including GOF-tests.  Two-stage frailty modelling.  PLS for the additive risk
model.  Lasso in the ahaz package.")
    (license license:gpl2+)))

(define-public r-timer
  (package
    (name "r-timer")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeR" version))
              (sha256
               (base32
                "0lkx2ilbzq29w1c9ssya4f0za0sj7y30y9ml4v3zc21c1la0b6vi"))))
    (properties `((upstream-name . "timeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yusuzech/timeR")
    (synopsis "Time Your Codes")
    (description
     "This package provides a timeR class that makes timing codes easier.  One can
create timeR objects and use them to record all timings, and extract recordings
as data frame for later use.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-timeperiodsr
  (package
    (name "r-timeperiodsr")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeperiodsR" version))
              (sha256
               (base32
                "09vwp04j7n176xs1lbdmbyi557byx6fdvqyjay1785hkb9ivws5q"))))
    (properties `((upstream-name . "timeperiodsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://selesnow.github.io/timeperiodsR")
    (synopsis "Simple Definition Of Time Intervals")
    (description
     "Simple definition of time intervals for the current, previous, and next week,
month, quarter and year.")
    (license license:gpl2)))

(define-public r-timeordered
  (package
    (name "r-timeordered")
    (version "0.9.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeordered" version))
              (sha256
               (base32
                "0rfga5i6kckmlz2dzqb1pp634dl93wxp7v3kisxlbjl7mgnbck3k"))))
    (properties `((upstream-name . "timeordered")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-igraph))
    (home-page "https://cran.r-project.org/package=timeordered")
    (synopsis "Time-Ordered and Time-Aggregated Network Analyses")
    (description
     "Approaches for incorporating time into network analysis.  Methods include:
construction of time-ordered networks (temporal graphs); shortest-time and
shortest-path-length analyses; resource spread calculations; data resampling and
rarefaction for null model construction; reduction to time-aggregated networks
with variable window sizes; application of common descriptive statistics to
these networks; vector clock latencies; and plotting functionalities.  The
package supports <doi:10.1371/journal.pone.0020298>.")
    (license license:gpl3)))

(define-public r-timelines
  (package
    (name "r-timelines")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timelineS" version))
              (sha256
               (base32
                "076w8ckzzl59bc1gnwjgdwynnz86320hyfmzb0k26hl3k13jlmxs"))))
    (properties `((upstream-name . "timelineS")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-lubridate r-ggplot2 r-dplyr))
    (home-page "https://github.com/daheelee/timelineS")
    (synopsis "Timeline and Time Duration-Related Tools")
    (description
     "An easy tool for plotting annotated timelines, grouped timelines, and
exploratory graphics (boxplot/histogram/density plot/scatter plot/line plot).
Filter, summarize date data by duration and convert to calendar units.")
    (license license:gpl2)))

(define-public r-timelinegraphics
  (package
    (name "r-timelinegraphics")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timeLineGraphics" version))
              (sha256
               (base32
                "06i2palpc19g0480d53232fj4jd5j0brhdkmj5vcr6p58qsvhyhm"))))
    (properties `((upstream-name . "timeLineGraphics")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2html r-pdftools r-magick r-berryfunctions))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=timeLineGraphics")
    (synopsis
     "HTML with Horizontal Strips Symbolizing Events in a Person's Life")
    (description
     "Produce an HTML page containing horizontal strips that symbolize events in a
person's lsife.  Since this is entirely a visualization, the image
<https://barryzee.github.io/henry-timeline/henry.html> will show the basic use
to show a timeline of events.  The image
<https://barryzee.github.io/vermeer/cssOverlay.html> shows how to correlate two
timelines of events.  A brief description is available at
<https://barryzee.github.io/timeLineGraphics_manuscript/golden_age.html>.")
    (license license:gpl2+)))

(define-public r-timedeppar
  (package
    (name "r-timedeppar")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timedeppar" version))
              (sha256
               (base32
                "0jazddjqrgipvpdxlqh8y3clhhad22syqw4hhaj19cdbxpvivgvw"))))
    (properties `((upstream-name . "timedeppar")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://gitlab.com/p.reichert/timedeppar")
    (synopsis "Infer Constant and Stochastic, Time-Dependent Model Parameters")
    (description
     "Infer constant and stochastic, time-dependent parameters to consider intrinsic
stochasticity of a dynamic model and/or to analyze model structure modifications
that could reduce model deficits.  The concept is based on inferring
time-dependent parameters as stochastic processes in the form of
Ornstein-Uhlenbeck processes jointly with inferring constant model parameters
and parameters of the Ornstein-Uhlenbeck processes.  The package also contains
functions to sample from and calculate densities of Ornstein-Uhlenbeck
processes.  References: Tomassini, L., Reichert, P., Kuensch, H.-R. Buser, C.,
Knutti, R. and Borsuk, M.E. (2009), A smoothing algorithm for estimating
stochastic, continuous-time model parameters and its application to a simple
climate model, Journal of the Royal Statistical Society: Series C (Applied
Statistics) 58, 679-704, <doi:10.1111/j.1467-9876.2009.00678.x> Reichert, P.,
and Mieleitner, J. (2009), Analyzing input and structural uncertainty of
nonlinear dynamic models with stochastic, time-dependent parameters.  Water
Resources Research, 45, W10402, <doi:10.1029/2009WR007814> Reichert, P., Ammann,
L. and Fenicia, F. (2021), Potential and challenges of investigating intrinsic
uncertainty of hydrological models with time-dependent, stochastic parameters.
Water Resources Research 57(8), e2020WR028311, <doi:10.1029/2020WR028311>
Reichert, P. (2022), timedeppar: An R package for inferring stochastic,
time-dependent model parameters, in preparation.")
    (license license:gpl3)))

(define-public r-timedelay
  (package
    (name "r-timedelay")
    (version "1.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timedelay" version))
              (sha256
               (base32
                "0hr5a2m621ybvl4qyx1xgwzviszj4ccvb149yclds9z87r5h2gm4"))))
    (properties `((upstream-name . "timedelay")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mass))
    (home-page "https://cran.r-project.org/package=timedelay")
    (synopsis
     "Time Delay Estimation for Stochastic Time Series of Gravitationally Lensed Quasars")
    (description
     "We provide a toolbox to estimate the time delay between the brightness time
series of gravitationally lensed quasar images via Bayesian and profile
likelihood approaches.  The model is based on a state-space representation for
irregularly observed time series data generated from a latent continuous-time
Ornstein-Uhlenbeck process.  Our Bayesian method adopts scientifically motivated
hyper-prior distributions and a Metropolis-Hastings within Gibbs sampler,
producing posterior samples of the model parameters that include the time delay.
 A profile likelihood of the time delay is a simple approximation to the
marginal posterior distribution of the time delay.  Both Bayesian and profile
likelihood approaches complement each other, producing almost identical results;
the Bayesian way is more principled but the profile likelihood is easier to
implement.  A new functionality is added in version 1.0.9 for estimating the
time delay between doubly-lensed light curves observed in two bands.  See also
Tak et al. (2017) <doi:10.1214/17-AOAS1027>, Tak et al. (2018)
<doi:10.1080/10618600.2017.1415911>, Hu and Tak (2020) <arXiv:2005.08049>.")
    (license license:gpl2)))

(define-public r-time-slots
  (package
    (name "r-time-slots")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "time.slots" version))
              (sha256
               (base32
                "04qh8cgk3ixvvc67m2hal935m5kisq2n67cvjmsg1frz1bf2yvld"))))
    (properties `((upstream-name . "time.slots")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-lubridate r-ggplot2 r-ggfittext
                             r-dplyr))
    (home-page "https://bitbucket.org/annalectnz/time.slots")
    (synopsis "Display Data in a Weekly Calendar View")
    (description
     "Generate weekly timetables as a ggplot2 layer.  Add informative timeslots with
elements such as title, key-value pairs, or colour to reveal trends.")
    (license license:expat)))

(define-public r-timbr
  (package
    (name "r-timbr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timbr" version))
              (sha256
               (base32
                "154ybky7bq3y5d9945yk36lqkl2kf6yc2x8m6izc0jdnqhydlxlp"))))
    (properties `((upstream-name . "timbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidygraph
                             r-tibble
                             r-rlang
                             r-purrr
                             r-pillar
                             r-memoise
                             r-dplyr))
    (home-page "https://github.com/UchidaMizuki/timbr")
    (synopsis "Forest Data Frames")
    (description
     "This package provides data frames for forest (or tree) data structures.  You can
create forest data structures from data frames and process them based on their
hierarchies.")
    (license license:expat)))

(define-public r-timber
  (package
    (name "r-timber")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "timbeR" version))
              (sha256
               (base32
                "01lpx4pk22k9j4sbbhr9z7r6spfdrfazpxsyp7cxndrswa8m83zq"))))
    (properties `((upstream-name . "timbeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shiny
                             r-miniui
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=timbeR")
    (synopsis "Calculate Wood Volumes from Taper Functions")
    (description
     "This package provides functions for estimation of wood volumes, number of logs,
diameters along the stem and heights at which certain diameters occur, based on
taper functions and other parameters.  References: McTague, J. P., & Weiskittel,
A. (2021). <doi:10.1139/cjfr-2020-0326>.")
    (license license:expat)))

(define-public r-tilting
  (package
    (name "r-tilting")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tilting" version))
              (sha256
               (base32
                "0srvxjv3sg35n7f8pam45ny1z1dxwqjkrz9d91hf67a3fi34f5gk"))))
    (properties `((upstream-name . "tilting")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=tilting")
    (synopsis "Variable Selection via Tilted Correlation Screening Algorithm")
    (description
     "This package implements an algorithm for variable selection in high-dimensional
linear regression using the \"tilted correlation\", a new way of measuring the
contribution of each variable to the response which takes into account high
correlations among the variables in a data-driven way.")
    (license license:gpl2+)))

(define-public r-tiler
  (package
    (name "r-tiler")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tiler" version))
              (sha256
               (base32
                "02sxc70s8v5b5lf1fpv1ig1hmpkamsmzbgpk6zds504gh9kz7qxy"))))
    (properties `((upstream-name . "tiler")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-sp r-rgdal r-raster r-png))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/tiler/")
    (synopsis "Create Geographic and Non-Geographic Map Tiles")
    (description
     "This package creates geographic map tiles from geospatial map files or
non-geographic map tiles from simple image files.  This package provides a tile
generator function for creating map tile sets for use with packages such as
leaflet'.  In addition to generating map tiles based on a common raster layer
source, it also handles the non-geographic edge case, producing map tiles from
arbitrary images.  These map tiles, which have a non-geographic, simple
coordinate reference system (CRS), can also be used with leaflet when applying
the simple CRS option.  Map tiles can be created from an input file with any of
the following extensions: tif, grd and nc for spatial maps and png, jpg and bmp
for basic images.  This package requires Python and the gdal library for
Python'.  Windows users are recommended to install OSGeo4W
(<https://trac.osgeo.org/osgeo4w/>) as an easy way to obtain the required gdal
support for Python'.")
    (license license:expat)))

(define-public r-tilemaps
  (package
    (name "r-tilemaps")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tilemaps" version))
              (sha256
               (base32
                "06pwwlndb7nvw2b0h0fak3vnpbi11mxsby43qm9ng3k3sqwrqjz2"))))
    (properties `((upstream-name . "tilemaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoothr
                             r-sf
                             r-lwgeom
                             r-igraph
                             r-ggplot2
                             r-clue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaerosen/tilemaps")
    (synopsis "Generate Tile Maps")
    (description
     "This package implements an algorithm for generating maps, known as tile maps, in
which each region is represented by a single tile of the same shape and size.
The algorithm was first proposed in \"Generating Tile Maps\" by Graham McNeill and
Scott Hale (2017) <doi:10.1111/cgf.13200>.  Functions allow users to generate,
plot, and compare square or hexagon tile maps.")
    (license license:gpl3)))

(define-public r-tilegramsr
  (package
    (name "r-tilegramsr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tilegramsR" version))
              (sha256
               (base32
                "11cnyvlghg8z7lr9ahzsjpyjrqnxqs77wdcydqvavrsqj745xvi2"))))
    (properties `((upstream-name . "tilegramsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-sf))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bhaskarvk/tilegramsR")
    (synopsis "R Spatial Data for Tilegrams")
    (description
     "R spatial objects for Tilegrams.  Tilegrams are tiled maps where the region size
is proportional to the certain characteristics of the dataset.")
    (license license:expat)))

(define-public r-tiledb
  (package
    (name "r-tiledb")
    (version "0.18.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tiledb" version))
              (sha256
               (base32
                "1d20z3wpq6w6kgzlxihx98fxmypfy30vmk623f62gawhi2xydyph"))))
    (properties `((upstream-name . "tiledb")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdl r-rcpp r-nanotime))
    (native-inputs (list r-simplermarkdown pkg-config))
    (home-page "https://github.com/TileDB-Inc/TileDB-R")
    (synopsis
     "Universal Storage Engine for Sparse and Dense Multidimensional Arrays")
    (description
     "The universal storage engine TileDB introduces a powerful on-disk format for
multi-dimensional arrays.  It supports dense and sparse arrays, dataframes and
key-values stores, cloud storage ('S3', GCS', Azure'), chunked arrays, multiple
compression, encryption and checksum filters, uses a fully multi-threaded
implementation, supports parallel I/O, data versioning ('time travel'), metadata
and groups.  It is implemented as an embeddable cross-platform C++ library with
APIs from several languages, and integrations.")
    (license license:expat)))

(define-public r-tikzdevice
  (package
    (name "r-tikzdevice")
    (version "0.12.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tikzDevice" version))
              (sha256
               (base32
                "1x9nns15g2f6062grdvzy8sfj460xvsqyiyr3ylc0z425s0jj85c"))))
    (properties `((upstream-name . "tikzDevice")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-png r-filehash))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/daqana/tikzDevice")
    (synopsis "R Graphics Output in LaTeX Format")
    (description
     "This package provides a graphics output device for R that records plots in a
LaTeX-friendly format.  The device transforms plotting commands issued by R
functions into LaTeX code blocks.  When included in a LaTeX document, these
blocks are interpreted with the help of TikZ'---a graphics package for TeX and
friends written by Till Tantau.  Using the tikzDevice', the text of R plots can
contain LaTeX commands such as mathematical formula.  The device also allows
arbitrary LaTeX code to be inserted into the output stream.")
    (license license:gpl2+)))

(define-public r-tiktokadsr
  (package
    (name "r-tiktokadsr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tiktokadsR" version))
              (sha256
               (base32
                "17x6nxp88iji376qhvvkgxyfcbxz9bvfgv9kmhiznlhq64srdjfs"))))
    (properties `((upstream-name . "tiktokadsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Access to TikTok Ads via the 'Windsor.ai' API")
    (description
     "Collect marketing data from TikTok Ads using the Windsor.ai API
<https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-tigris
  (package
    (name "r-tigris")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tigris" version))
              (sha256
               (base32
                "132d0w5rdci7r7q0n4z1ac3iln42zby6np1lkmlngfgz2466nz6q"))))
    (properties `((upstream-name . "tigris")))
    (build-system r-build-system)
    (propagated-inputs (list r-uuid
                             r-stringr
                             r-sf
                             r-rappdirs
                             r-magrittr
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/walkerke/tigris")
    (synopsis "Load Census TIGER/Line Shapefiles")
    (description
     "Download TIGER/Line shapefiles from the United States Census Bureau
(<https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html>)
and load into R as sf objects.")
    (license license:expat)))

(define-public r-tigrebrowserwriter
  (package
    (name "r-tigrebrowserwriter")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tigreBrowserWriter" version))
              (sha256
               (base32
                "0izgx1khci6qc6pz85dxj75kzxvpr30l0vhcv9476jrcbwqs4k8m"))))
    (properties `((upstream-name . "tigreBrowserWriter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-dbi))
    (home-page "https://github.com/PROBIC/tigreBrowserWriter")
    (synopsis "'tigreBrowser' Database Writer")
    (description
     "Write modelling results into a database for tigreBrowser', a web-based tool for
browsing figures and summary data of independent model fits, such as Gaussian
process models fitted for each gene or other genomic element.  The browser is
available at <https://github.com/PROBIC/tigreBrowser>.")
    (license license:agpl3)))

(define-public r-tightclust
  (package
    (name "r-tightclust")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tightClust" version))
              (sha256
               (base32
                "0vqkp2g6z8y3b6dhzglmacjhf2qi1sg80kb941mwfafin2k40zbm"))))
    (properties `((upstream-name . "tightClust")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tightClust")
    (synopsis "Tight Clustering")
    (description "The functions needed to perform tight clustering Algorithm.")
    (license license:gpl2+)))

(define-public r-tigger
  (package
    (name "r-tigger")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tigger" version))
              (sha256
               (base32
                "130iwg2ds4j56a9ndg1p7qv4s6qbbahmm9fwmy6iak02ds1r0zyl"))))
    (properties `((upstream-name . "tigger")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringi
                             r-rlang
                             r-lazyeval
                             r-iterators
                             r-gtools
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-alakazam))
    (native-inputs (list r-knitr))
    (home-page "http://tigger.readthedocs.io")
    (synopsis "Infers Novel Immunoglobulin Alleles from Sequencing Data")
    (description
     "This package infers the V genotype of an individual from immunoglobulin (Ig)
repertoire sequencing data (AIRR-Seq, Rep-Seq).  Includes detection of any novel
alleles.  This information is then used to correct existing V allele calls from
among the sample sequences.  Citations: Gadala-Maria, et al (2015)
<doi:10.1073/pnas.1417683112>.  Gadala-Maria, et al (2019)
<doi:10.3389/fimmu.2019.00129>.")
    (license license:agpl3)))

(define-public r-tigerstats
  (package
    (name "r-tigerstats")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tigerstats" version))
              (sha256
               (base32
                "0p5z4qh0aznj03rnhk4lpqfkwnsa5zgvj51rddkzligg9zx73xwl"))))
    (properties `((upstream-name . "tigerstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-mosaicdata
                             r-mosaic
                             r-mass
                             r-manipulate
                             r-lattice
                             r-ggplot2
                             r-abd))
    (home-page "https://cran.r-project.org/package=tigerstats")
    (synopsis "R Functions for Elementary Statistics")
    (description
     "This package provides a collection of data sets and functions that are useful in
the teaching of statistics at an elementary level to students who may have
little or no previous experience with the command line.  The functions for
elementary inferential procedures follow a uniform interface for user input.
Some of the functions are instructional applets that can only be run on the R
Studio integrated development environment with package manipulate installed.
Other instructional applets are Shiny apps that may be run locally.  In teaching
the package is used alongside of package mosaic', mosaicData and abd', which are
therefore listed as dependencies.")
    (license license:gpl3+)))

(define-public r-tigerr
  (package
    (name "r-tigerr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TIGERr" version))
              (sha256
               (base32
                "04nnm0adf0sbgv7a2ikaq2a5kb9j1xmdfmssizm49q5j457rrl7d"))))
    (properties `((upstream-name . "TIGERr")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-ppcor r-pbapply))
    (home-page "https://cran.r-project.org/package=TIGERr")
    (synopsis
     "Technical Variation Elimination with Ensemble Learning Architecture")
    (description
     "The R implementation of TIGER. TIGER integrates random forest algorithm into an
innovative ensemble learning architecture.  Benefiting from this advanced
architecture, TIGER is resilient to outliers, free from model tuning and less
likely to be affected by specific hyperparameters.  TIGER supports targeted and
untargeted metabolomics data and is competent to perform both intra- and
inter-batch technical variation removal.  TIGER can also be used for cross-kit
adjustment to ensure data obtained from different analytical assays can be
effectively combined and compared.  Reference: Han S. et al. (2022)
<doi:10.1093/bib/bbab535>.")
    (license license:gpl3+)))

(define-public r-tigerhitter
  (package
    (name "r-tigerhitter")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tigerhitteR" version))
              (sha256
               (base32
                "0inyi12lf8bn7nbklf2rjixk6wrgrjcp8njv7knai4dgvv7v0rfa"))))
    (properties `((upstream-name . "tigerhitteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-openxlsx r-magrittr r-hmisc))
    (home-page "https://github.com/Willdata/tigerhitteR")
    (synopsis "Pre-Process of Time Series Data Set in R")
    (description
     "Pre-process for discrete time series data set which is not continuous at the
column of date'.  Refilling records of missing date and other columns to the
hollow data set so that final data set is able to be dealt with time series
analysis.")
    (license license:gpl3+)))

(define-public r-tidyxl
  (package
    (name "r-tidyxl")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyxl" version))
              (sha256
               (base32
                "05hkjwlv88ln0psqk5r8p2i4j6g3c3yfw2wmm73wcylcv33lh79h"))))
    (properties `((upstream-name . "tidyxl")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-piton))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nacnudus/tidyxl")
    (synopsis "Read Untidy Excel Files")
    (description
     "Imports non-tabular from Excel files into R. Exposes cell content, position and
formatting in a tidy structure for further manipulation.  Tokenizes Excel
formulas.  Supports .xlsx and .xlsm via the embedded RapidXML C++ library
<http://rapidxml.sourceforge.net>.  Does not support .xlsb or .xls'.")
    (license license:expat)))

(define-public r-tidywikidatar
  (package
    (name "r-tidywikidatar")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidywikidatar" version))
              (sha256
               (base32
                "0dvdggizkrv02z5gc89pzj5800923k43951bm4816g13pqp8vm0a"))))
    (properties `((upstream-name . "tidywikidatar")))
    (build-system r-build-system)
    (propagated-inputs (list r-wikipedir
                             r-wikidatar
                             r-wikidataqueryservicer
                             r-vctrs
                             r-usethis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rsqlite
                             r-rlang
                             r-purrr
                             r-progress
                             r-pool
                             r-magrittr
                             r-jsonlite
                             r-glue
                             r-fs
                             r-dplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://edjnet.github.io/tidywikidatar/")
    (synopsis "Explore 'Wikidata' Through Tidy Data Frames")
    (description
     "Query Wikidata API <https://www.wikidata.org/wiki/Wikidata:Main_Page> with ease,
get tidy data frames in response, and cache data in a local database.")
    (license license:expat)))

(define-public r-tidyvpc
  (package
    (name "r-tidyvpc")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyvpc" version))
              (sha256
               (base32
                "1gcid4n21nkm7z6a91vnj08rzjhzvi9r4nvrgawad6s1grika8q9"))))
    (properties `((upstream-name . "tidyvpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-quantreg
                             r-mgcv
                             r-magrittr
                             r-ggplot2
                             r-fastdummies
                             r-data-table
                             r-classint))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/certara/tidyvpc")
    (synopsis "VPC Percentiles and Prediction Intervals")
    (description
     "Perform a Visual Predictive Check (VPC), while accounting for stratification,
censoring, and prediction correction.  Using piping from magrittr', the
intuitive syntax gives users a flexible and powerful method to generate VPCs
using both traditional binning and a new binless approach Jamsen et al. (2018)
<doi:10.1002/psp4.12319> with Additive Quantile Regression (AQR) and Locally
Estimated Scatterplot Smoothing (LOESS) prediction correction.")
    (license license:expat)))

(define-public r-tidyusda
  (package
    (name "r-tidyusda")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyUSDA" version))
              (sha256
               (base32
                "0wbhrhb87zrk93b1nhll6pqhh4gpxf3x3j28m09vgzdggxhk9w5y"))))
    (properties `((upstream-name . "tidyUSDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tigris
                             r-sf
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-fuzzyjoin
                             r-dplyr
                             r-crayon
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://bradlindblad.github.io/tidyUSDA/")
    (synopsis
     "Minimal Tool Set for Gathering USDA Quick Stat Data for Analysis and Visualization")
    (description
     "This package provides a consistent API to pull United States Department of
Agriculture census and survey data from the National Agricultural Statistics
Service (NASS) QuickStats service.")
    (license license:expat)))

(define-public r-tidytuesdayr
  (package
    (name "r-tidytuesdayr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytuesdayR" version))
              (sha256
               (base32
                "00xlbmgg8779ypqcrdgn56lyklqknhh3pmqfc49f84xa5hrkyjfs"))))
    (properties `((upstream-name . "tidytuesdayR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-usethis
                             r-rvest
                             r-rstudioapi
                             r-readxl
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr))
    (home-page "https://github.com/thebioengineer/tidytuesdayR")
    (synopsis "Access the Weekly 'TidyTuesday' Project Dataset")
    (description
     "TidyTuesday is a project by the R4DS Online Learning Community in which they
post a weekly dataset onto post a weekly dataset in a public data repository
(<https://github.com/rfordatascience/tidytuesday>) for people to analyze and
visualize.  This package provides the tools to easily download this data and the
description of the source.")
    (license license:expat)))

(define-public r-tidytreatment
  (package
    (name "r-tidytreatment")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytreatment" version))
              (sha256
               (base32
                "04z3afharkqyjk5kk097kpqlrmvq5220bsdlzmbzwl5k56vgxgxx"))))
    (properties `((upstream-name . "tidytreatment")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidybayes
                             r-rlang
                             r-readr
                             r-purrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bonStats/tidytreatment")
    (synopsis "Tidy Methods for Bayesian Treatment Effect Models")
    (description
     "This package provides functions for extracting tidy data from Bayesian treatment
effect models, in particular BART, but extensions are possible.  Functionality
includes extracting tidy posterior summaries as in tidybayes
<https://github.com/mjskay/tidybayes>, estimating (average) treatment effects,
common support calculations, and plotting useful summaries of these.")
    (license license:expat)))

(define-public r-tidytransit
  (package
    (name "r-tidytransit")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytransit" version))
              (sha256
               (base32
                "1f8pjcfd368b7arxvb6k6p9l7i3ykycrb3iy1lldh1vx4lyrz2x3"))))
    (properties `((upstream-name . "tidytransit")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-rlang
                             r-hms
                             r-gtfsio
                             r-geodist
                             r-dplyr
                             r-digest
                             r-data-table
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-transit/tidytransit")
    (synopsis "Read, Validate, Analyze, and Map GTFS Feeds")
    (description
     "Read General Transit Feed Specification (GTFS) zipfiles into a list of R
dataframes.  Perform validation of the data structure against the specification.
 Analyze the headways and frequencies at routes and stops.  Create maps and
perform spatial analysis on the routes and stops.  Please see the GTFS
documentation here for more detail: <https://gtfs.org/>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tidytidbits
  (package
    (name "r-tidytidbits")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytidbits" version))
              (sha256
               (base32
                "1zbm165bimjag7azhy77zlzqilygybqxz35q4r3d7hi7p6m96w78"))))
    (properties `((upstream-name . "tidytidbits")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-forcats
                             r-extrafont
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tidytidbits")
    (synopsis "Collection of Tools and Helpers Extending the Tidyverse")
    (description
     "This package provides a selection of various tools to extend a data analysis
workflow based on the tidyverse packages.  This includes high-level data frame
editing methods (in the style of mutate'/'mutate_at'), some methods in the style
of purrr and forcats', lookup methods for dict-like lists, a generic method for
lumping a data frame by a given count, various low-level methods for special
treatment of NA values, python'-style tuple-assignment and truthy'/'falsy
checks, saving to PDF and PNG from a pipe and various small utilities.")
    (license license:gpl3)))

(define-public r-tidyterra
  (package
    (name "r-tidyterra")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyterra" version))
              (sha256
               (base32
                "1kjcqqbrjwhw67zf1vbkkgs17k013yb36aysynh079hln4kl4q31"))))
    (properties `((upstream-name . "tidyterra")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-terra
                             r-sf
                             r-scales
                             r-rlang
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://dieghernan.github.io/tidyterra/")
    (synopsis "'tidyverse' Methods and 'ggplot2' Helpers for 'terra' Objects")
    (description
     "Extension of the tidyverse for SpatRaster and SpatVector objects of the terra
package.  It includes also new geom_ functions that provide a convenient way of
visualizing terra objects with ggplot2'.")
    (license license:expat)))

(define-public r-tidytags
  (package
    (name "r-tidytags")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytags" version))
              (sha256
               (base32
                "0x4gv6k9ccs9r6s73xsk25ixwgmz5818s6jpndg0yqczybw3y5dm"))))
    (properties `((upstream-name . "tidytags")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rtweet r-rlang r-googlesheets4
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/tidytags/https://github.com/ropensci/tidytags")
    (synopsis
     "Importing and Analyzing 'Twitter' Data Collected with 'Twitter Archiving Google Sheets'")
    (description
     "The tidytags package coordinates the simplicity of collecting tweets over time
with a Twitter Archiving Google Sheet (TAGS; <https://tags.hawksey.info/>) and
the utility of the rtweet package (<https://docs.ropensci.org/rtweet/>) for
processing and preparing additional Twitter metadata.  tidytags also introduces
functions developed to facilitate systematic yet flexible analyses of data from
Twitter'.")
    (license license:expat)))

(define-public r-tidytable
  (package
    (name "r-tidytable")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidytable" version))
              (sha256
               (base32
                "19hh9b85635cbaiasdmsvlcyr382blhyy7i7j91m83bplzwz7fpn"))))
    (properties `((upstream-name . "tidytable")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-rlang
                             r-pillar
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-data-table))
    (home-page "https://github.com/markfairbanks/tidytable")
    (synopsis "Tidy Interface to 'data.table'")
    (description
     "This package provides a tidy interface to data.table', giving users the speed of
data.table while using tidyverse-like syntax.")
    (license license:expat)))

(define-public r-tidysynth
  (package
    (name "r-tidysynth")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidysynth" version))
              (sha256
               (base32
                "0rckvp51gp22bjcwcszdhhn51bzjivwndnvjcf67h1vmyqa3zjkj"))))
    (properties `((upstream-name . "tidysynth")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-rgenoud
                             r-optimx
                             r-magrittr
                             r-lowrankqp
                             r-kernlab
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tidysynth")
    (synopsis "Tidy Implementation of the Synthetic Control Method")
    (description
     "This package provides a synthetic control offers a way of evaluating the effect
of an intervention in comparative case studies.  The package makes a number of
improvements when implementing the method in R. These improvements allow users
to inspect, visualize, and tune the synthetic control more easily.  A key
benefit of a tidy implementation is that the entire preparation process for
building the synthetic control can be accomplished in a single pipe.  For more
information on the synthetic control method, see Abadie et al. (2003)
<doi:10.1257/000282803321455188>.")
    (license license:expat)))

(define-public r-tidystringdist
  (package
    (name "r-tidystringdist")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidystringdist" version))
              (sha256
               (base32
                "1srxh5gyspcghzvnmpyq36ky608ipf71vv0s1jg01mgf2i5pdkf4"))))
    (properties `((upstream-name . "tidystringdist")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringdist r-rlang r-attempt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tidystringdist")
    (synopsis "String Distance Calculation with Tidy Data Principles")
    (description
     "Calculation of string distance following the tidy data principles.  Built on top
of the stringdist package.")
    (license license:expat)))

(define-public r-tidystopwords
  (package
    (name "r-tidystopwords")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidystopwords" version))
              (sha256
               (base32
                "00kak679ddwdgvqmjs5312w9k8sapc1n7dxipgqqfjqw2xy0h1jh"))))
    (properties `((upstream-name . "tidystopwords")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tidystopwords")
    (synopsis "Customisable Stop-Words in 110 Languages")
    (description
     "This package provides functions to generate stop-word lists in 110 languages, in
a way consistent across all the languages supported.  The generated lists are
based on the morphological tagset from the Universal Dependencies.")
    (license license:gpl3+)))

(define-public r-tidystats
  (package
    (name "r-tidystats")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidystats" version))
              (sha256
               (base32
                "00fzma64fjih70yp04hpragh9afhn11hdqydagr0yalwg3ixx5iq"))))
    (properties `((upstream-name . "tidystats")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://willemsleegers.github.io/tidystats/")
    (synopsis "Save Output of Statistical Tests")
    (description
     "Save the output of statistical tests in an organized file that can be shared
with others or used to report statistics in scientific papers.")
    (license license:expat)))

(define-public r-tidysq
  (package
    (name "r-tidysq")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidysq" version))
              (sha256
               (base32
                "1k4ws5zymrc93rlh8118xxfgjdwr7g99cyhzjp34abcsip1c3g21"))))
    (properties `((upstream-name . "tidysq")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tibble
                             r-testthat
                             r-rcpp
                             r-pillar
                             r-dplyr
                             r-crayon
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BioGenies/tidysq")
    (synopsis "Tidy Processing and Analysis of Biological Sequences")
    (description
     "This package provides a tidy approach to analysis of biological sequences.  All
processing and data-storage functions are heavily optimized to allow the fastest
and most efficient data storage.")
    (license license:gpl2+)))

(define-public r-tidysmd
  (package
    (name "r-tidysmd")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidysmd" version))
              (sha256
               (base32
                "0in324c940zlm2fg5r7hdybq0a8f31nvy8khzf4yq7dqxgki2n1b"))))
    (properties `((upstream-name . "tidysmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-smd
                             r-rlang
                             r-purrr
                             r-dplyr))
    (home-page "https://github.com/malcolmbarrett/tidysmd")
    (synopsis "Tidy Standardized Mean Differences")
    (description
     "Tidy standardized mean differences ('SMDs').  tidysmd uses the smd package to
calculate standardized mean differences for variables in a data frame, returning
the results in a tidy format.")
    (license license:expat)))

(define-public r-tidyseurat
  (package
    (name "r-tidyseurat")
    (version "0.5.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyseurat" version))
              (sha256
               (base32
                "0n9xll4lgapywkrfwlvj64wzqashafqvhygi5jzbkcif0f2l9b2b"))))
    (properties `((upstream-name . "tidyseurat")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-ttservice
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-seuratobject
                             r-seurat
                             r-rlang
                             r-purrr
                             r-plotly
                             r-pkgconfig
                             r-pillar
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-fansi
                             r-ellipsis
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/tidyseurat")
    (synopsis "Brings Seurat to the Tidyverse")
    (description
     "It creates an invisible layer that allow to see the Seurat object as tibble and
interact seamlessly with the tidyverse.")
    (license license:gpl3)))

(define-public r-tidysem
  (package
    (name "r-tidysem")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidySEM" version))
              (sha256
               (base32
                "0l1b006kl46zgqqxjr339s3is9i6vb08lrwrrh8kvlwi40iipyjy"))))
    (properties `((upstream-name . "tidySEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych
                             r-openmx
                             r-mplusautomation
                             r-lavaan
                             r-igraph
                             r-gtable
                             r-ggplot2
                             r-blavaan))
    (native-inputs (list r-knitr))
    (home-page "https://cjvanlissa.github.io/tidySEM/")
    (synopsis "Tidy Structural Equation Modeling")
    (description
     "This package provides a tidy workflow for generating, estimating, reporting, and
plotting structural equation models using lavaan', OpenMx', or Mplus'.
Throughout this workflow, elements of syntax, results, and graphs are
represented as tidy data, making them easy to customize.")
    (license license:gpl3+)))

(define-public r-tidyrules
  (package
    (name "r-tidyrules")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyrules" version))
              (sha256
               (base32
                "04y6pnrp132sckjpp9g8yl0z7glcsx9dcfdpa8r27wsc2g491i63"))))
    (properties `((upstream-name . "tidyrules")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-purrr
                             r-partykit
                             r-magrittr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/talegari/tidyrules")
    (synopsis "Obtain Rules from Rule Based Models as Tidy Dataframe")
    (description
     "Utility to convert text based summary of rule based models to a tidy dataframe
(where each row represents a rule) with related metrics such as support,
confidence and lift.  Rule based models from these packages are supported:
C5.0', rpart and Cubist'.")
    (license license:gpl3)))

(define-public r-tidyrss
  (package
    (name "r-tidyrss")
    (version "2.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyRSS" version))
              (sha256
               (base32
                "1ll87jjwcg2dv28pavf28mzcx3c7y2s8lh99zmpkji85zszsf5bk"))))
    (properties `((upstream-name . "tidyRSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr
                             r-anytime))
    (home-page "https://github.com/RobertMyles/tidyrss")
    (synopsis "Tidy RSS for R")
    (description
     "With the objective of including data from RSS feeds into your analysis, tidyRSS
parses RSS, Atom and JSON feeds and returns a tidy data frame.")
    (license license:expat)))

(define-public r-tidyrgee
  (package
    (name "r-tidyrgee")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyrgee" version))
              (sha256
               (base32
                "0sdjbl4ivjrppg215j1wpcyjlbhn0g7z9cpljvqkwq3mb1abhdfd"))))
    (properties `((upstream-name . "tidyrgee")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-sf
                             r-rlang
                             r-rgee
                             r-reticulate
                             r-readr
                             r-purrr
                             r-lubridate
                             r-glue
                             r-dplyr
                             r-crayon
                             r-assertthat))
    (home-page "https://github.com/r-tidy-remote-sensing/tidyrgee")
    (synopsis "'tidyverse' Methods for 'Earth Engine'")
    (description
     "This package provides tidyverse methods for wrangling and analyzing Earth Engine
<https://earthengine.google.com/> data.  These methods help the user with
filtering, joining and summarising Earth Engine image collections.")
    (license license:expat)))

(define-public r-tidyredcap
  (package
    (name "r-tidyredcap")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyREDCap" version))
              (sha256
               (base32
                "15rz0f04lv43m27dwh1dly2q11x2pkrx16l1lfg4l2091l6xfxkq"))))
    (properties `((upstream-name . "tidyREDCap")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-redcapr
                             r-purrr
                             r-magrittr
                             r-labelvector
                             r-janitor
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://raymondbalise.github.io/tidyREDCap/index.html")
    (synopsis "Helper Functions for Working with 'REDCap' Data")
    (description
     "Helper functions for processing REDCap data in R. REDCap is a web-enabled
application for building and managing surveys and databases developed at
Vanderbilt University.")
    (license license:expat)))

(define-public r-tidyqwi
  (package
    (name "r-tidyqwi")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyqwi" version))
              (sha256
               (base32
                "16f0c2mdx6aiji6i7237kpc9awqdgrg6rhs408w6ag28dhxpgwlv"))))
    (properties `((upstream-name . "tidyqwi")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-labelled
                             r-jsonlite
                             r-httr
                             r-future
                             r-furrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tidyqwi")
    (synopsis
     "Convenient API for Accessing United States Census Bureau's Quarterly Workforce Indicator")
    (description
     "The purpose of this package is to access the United States Census Bureau's
Quarterly Workforce Indicator data.  Additionally, the data will be retrieved in
a tidy format for further manipulation with full variable descriptions added if
desired.  Information about the United States Census Bureau's Quarterly
Workforce Indicator is available at
<https://www.census.gov/data/developers/data-sets/qwi.html>.")
    (license license:expat)))

(define-public r-tidyquery
  (package
    (name "r-tidyquery")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyquery" version))
              (sha256
               (base32
                "0ld48yqnfhn8j9ikadic55qwjxacp1f8bzihrfw0sh1r3kvl8yib"))))
    (properties `((upstream-name . "tidyquery")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rlang r-queryparser r-lubridate
                             r-dplyr))
    (home-page "https://github.com/ianmcook/tidyquery")
    (synopsis "Query 'R' Data Frames with 'SQL'")
    (description "Use SQL SELECT statements to query R data frames.")
    (license license:asl2.0)))

(define-public r-tidyquant
  (package
    (name "r-tidyquant")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyquant" version))
              (sha256
               (base32
                "0p1c9wzg4i84ajxd3lq4j1pvp24ni1kg6jhvlrjnhczwzjs8xjvc"))))
    (properties `((upstream-name . "tidyquant")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-ttr
                             r-timetk
                             r-timedate
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-riingo
                             r-readxl
                             r-readr
                             r-quantmod
                             r-quandl
                             r-purrr
                             r-performanceanalytics
                             r-magrittr
                             r-lubridate
                             r-lazyeval
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-curl
                             r-alphavantager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/business-science/tidyquant")
    (synopsis "Tidy Quantitative Financial Analysis")
    (description
     "Bringing business and financial analysis to the tidyverse'.  The tidyquant
package provides a convenient wrapper to various xts', zoo', quantmod', TTR and
PerformanceAnalytics package functions and returns the objects in the tidy
tibble format.  The main advantage is being able to use quantitative functions
with the tidyverse functions including purrr', dplyr', tidyr', ggplot2',
lubridate', etc.  See the tidyquant website for more information, documentation
and examples.")
    (license license:expat)))

(define-public r-tidypmc
  (package
    (name "r-tidypmc")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidypmc" version))
              (sha256
               (base32
                "1fijlvdiw4vwm34wizm4xlm0x10vvpkldzk7rrla44apq7y2w3yq"))))
    (properties `((upstream-name . "tidypmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tokenizers
                             r-tibble
                             r-stringr
                             r-readr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cstubben/tidypmc")
    (synopsis "Parse Full Text XML Documents from PubMed Central")
    (description
     "Parse XML documents from the Open Access subset of Europe PubMed Central
<https://europepmc.org> including section paragraphs, tables, captions and
references.")
    (license license:gpl3)))

(define-public r-tidyplus
  (package
    (name "r-tidyplus")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyplus" version))
              (sha256
               (base32
                "0a8wdl2jz4fijfnzph0g9a1861lvgspl5ppa2hwihrxwr4srv98g"))))
    (properties `((upstream-name . "tidyplus")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rlang
                             r-dplyr
                             r-chk))
    (home-page "https://github.com/poissonconsulting/tidyplus")
    (synopsis "Additional 'tidyverse' Functions")
    (description
     "This package provides functions such as str_crush(), add_missing_column(),
coalesce_data() and drop_na_all() that complement tidyverse functionality or
functions that provide alternative behaviors such as if_else2() and
str_detect2().")
    (license license:expat)))

(define-public r-tidypaleo
  (package
    (name "r-tidypaleo")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidypaleo" version))
              (sha256
               (base32
                "18z3w068q011a8xw75qm7wd6hqc358q38a5hd2lmm29p65c8mjxj"))))
    (properties `((upstream-name . "tidypaleo")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-styler
                             r-stringr
                             r-scales
                             r-rlang
                             r-rioja
                             r-purrr
                             r-ggstance
                             r-ggplot2
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://paleolimbot.github.io/tidypaleo/")
    (synopsis "Tidy Tools for Paleoenvironmental Archives")
    (description
     "This package provides a set of functions with a common framework for age-depth
model management, stratigraphic visualization, and common statistical
transformations.  The focus of the package is stratigraphic visualization, for
which ggplot2 components are provided to reproduce the scales, geometries,
facets, and theme elements commonly used in publication-quality stratigraphic
diagrams.  Helpers are also provided to reproduce the exploratory statistical
summaries that are frequently included on stratigraphic diagrams.  See
Dunnington et al. (2021) <doi:10.18637/jss.v101.i07>.")
    (license license:expat)))

(define-public r-tidync
  (package
    (name "r-tidync")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidync" version))
              (sha256
               (base32
                "0w8i8h3rr7mjxbc5zasw6zi9v95z51635pdl91ip4awgkrkyn9f3"))))
    (properties `((upstream-name . "tidync")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rnetcdf
                             r-rlang
                             r-purrr
                             r-ncmeta
                             r-ncdf4
                             r-magrittr
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/tidync/")
    (synopsis "Tidy Approach to 'NetCDF' Data Exploration and Extraction")
    (description
     "Tidy tools for NetCDF data sources.  Explore the contents of a NetCDF source
(file or URL) presented as variables organized by grid with a database-like
interface.  The hyper_filter() interactive function translates the filter value
or index expressions to array-slicing form.  No data is read until explicitly
requested, as a data frame or list of arrays via hyper_tibble() or
hyper_array().")
    (license license:gpl3)))

(define-public r-tidymv
  (package
    (name "r-tidymv")
    (version "3.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidymv" version))
              (sha256
               (base32
                "15qs95cw2lfzp1apl398r0iw630ad2i88pz3ap29wbn8byixj5vi"))))
    (properties `((upstream-name . "tidymv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-mgcv
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stefanocoretta/tidymv")
    (synopsis "Tidy Model Visualisation for Generalised Additive Models")
    (description
     "This package provides functions for visualising generalised additive models and
getting predicted values using tidy tools from the tidyverse packages.")
    (license license:gpl3+)))

(define-public r-tidymultiqc
  (package
    (name "r-tidymultiqc")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TidyMultiqc" version))
              (sha256
               (base32
                "1gnkq2ssc9lvkz1j52c2l4v1frxfcnw3j186kf3xbx8qx1aikyqr"))))
    (properties `((upstream-name . "TidyMultiqc")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://multimeric.github.io/TidyMultiqc/")
    (synopsis "Converts 'MultiQC' Reports into Tidy Data Frames")
    (description
     "This package provides the means to convert multiqc_data.json files, produced by
the wonderful MultiQC tool, into tidy data frames for downstream analysis in R.
This analysis might involve cohort analysis, quality control visualisation,
change-point detection, statistical process control, clustering, or any other
type of quality analysis.")
    (license license:gpl3+)))

(define-public r-tidylpa
  (package
    (name "r-tidylpa")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyLPA" version))
              (sha256
               (base32
                "1lyd8cx90j49bm65330i57jyimiid75c2pvnzk7dcp6mbmglvimz"))))
    (properties `((upstream-name . "tidyLPA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-mplusautomation
                             r-mix
                             r-mclust
                             r-gtable
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://data-edu.github.io/tidyLPA/")
    (synopsis
     "Easily Carry Out Latent Profile Analysis (LPA) Using Open-Source or Commercial Software")
    (description
     "An interface to the mclust package to easily carry out latent profile analysis
(\"LPA\").  Provides functionality to estimate commonly-specified models.  Follows
a tidy approach, in that output is in the form of a data frame that can
subsequently be computed on.  Also has functions to interface to the commercial
MPlus software via the MplusAutomation package.")
    (license license:expat)))

(define-public r-tidylog
  (package
    (name "r-tidylog")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidylog" version))
              (sha256
               (base32
                "076am30ayc16wm3bilznxqzd5806yi7dx5m9yv4w7q90i7imsqk7"))))
    (properties `((upstream-name . "tidylog")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-glue r-dplyr r-clisymbols))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/elbersb/tidylog/")
    (synopsis "Logging for 'dplyr' and 'tidyr' Functions")
    (description
     "This package provides feedback about dplyr and tidyr operations.")
    (license license:expat)))

(define-public r-tidylo
  (package
    (name "r-tidylo")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidylo" version))
              (sha256
               (base32
                "07xnbycwrqg3cmbxx76drbjd0mx4s23vf3kihlc9rj4ajjx48z8r"))))
    (properties `((upstream-name . "tidylo")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://juliasilge.github.io/tidylo/")
    (synopsis "Weighted Tidy Log Odds Ratio")
    (description
     "How can we measure how the usage or frequency of some feature, such as words,
differs across some group or set, such as documents? One option is to use the
log odds ratio, but the log odds ratio alone does not account for sampling
variability; we haven't counted every feature the same number of times so how do
we know which differences are meaningful? Enter the weighted log odds, which
tidylo provides an implementation for, using tidy data principles.  In
particular, here we use the method outlined in Monroe, Colaresi, and Quinn
(2008) <doi:10.1093/pan/mpn018> to weight the log odds ratio by a prior.  By
default, the prior is estimated from the data itself, an empirical Bayes
approach, but an uninformative prior is also available.")
    (license license:expat)))

(define-public r-tidylda
  (package
    (name "r-tidylda")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidylda" version))
              (sha256
               (base32
                "1zwy94gpr43dc6ld3rjmr5rkapmxji6kd3p363zl03wn5qf3wbws"))))
    (properties `((upstream-name . "tidylda")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytext
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcppthread
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-mvrsquared
                             r-matrix
                             r-gtools
                             r-generics
                             r-dplyr))
    (home-page "https://github.com/TommyJones/tidylda/")
    (synopsis "Latent Dirichlet Allocation Using 'tidyverse' Conventions")
    (description
     "This package implements an algorithm for Latent Dirichlet Allocation (LDA), Blei
et at. (2003) <https://www.jmlr.org/papers/volume3/blei03a/blei03a.pdf>, using
style conventions from the tidyverse', Wickham et al.
(2019)<doi:10.21105/joss.01686>, and tidymodels', Kuhn et
al.<https://tidymodels.github.io/model-implementation-principles/>.  Fitting is
done via collapsed Gibbs sampling.  Also implements several novel features for
LDA such as guided models and transfer learning based on ongoing and, as yet,
unpublished research.")
    (license license:expat)))

(define-public r-tidyjson
  (package
    (name "r-tidyjson")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyjson" version))
              (sha256
               (base32
                "0znm590kpvkh8zl08saasnsi77x459640mqv0pq15gmsjnycldp6"))))
    (properties `((upstream-name . "tidyjson")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/colearendt/tidyjson")
    (synopsis "Tidy Complex 'JSON'")
    (description "Turn complex JSON data into tidy data frames.")
    (license license:expat)))

(define-public r-tidyhydat
  (package
    (name "r-tidyhydat")
    (version "0.5.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyhydat" version))
              (sha256
               (base32
                "0jd0p7azm5xsqr7bp3xn735rr8j4ikqgjqdlh01bl9wwg7jinxn4"))))
    (properties `((upstream-name . "tidyhydat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rsqlite
                             r-rlang
                             r-readr
                             r-rappdirs
                             r-lubridate
                             r-httr
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/tidyhydat/")
    (synopsis "Extract and Tidy Canadian 'Hydrometric' Data")
    (description
     "This package provides functions to access historical and real-time national
hydrometric data from Water Survey of Canada data sources
(<https://dd.weather.gc.ca/hydrometric/csv/> and
<https://collaboration.cmc.ec.gc.ca/cmc/hydrometrics/www/>) and then applies
tidy data principles.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tidyheatmap
  (package
    (name "r-tidyheatmap")
    (version "1.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyHeatmap" version))
              (sha256
               (base32
                "19gpp8p3ms60qzny26vx8h7x4zl495ynrfrvf1nndhm2njbx6i4m"))))
    (properties `((upstream-name . "tidyHeatmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-patchwork
                             r-magrittr
                             r-lifecycle
                             r-dplyr
                             r-dendextend
                             r-complexheatmap
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://www.r-project.org")
    (synopsis "Tidy Implementation of Heatmap")
    (description
     "This is a tidy implementation for heatmap.  At the moment it is based on the
(great) package ComplexHeatmap'.  The goal of this package is to interface a
tidy data frame with this powerful tool.  Some of the advantages are: Row and/or
columns colour annotations are easy to integrate just specifying one parameter
(column names).  Custom grouping of rows is easy to specify providing a grouped
tbl.  For example: df %>% group_by(...).  Labels size adjusted by row and column
total number.  Default use of Brewer and Viridis palettes.")
    (license license:gpl3)))

(define-public r-tidygeorss
  (package
    (name "r-tidygeorss")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidygeoRSS" version))
              (sha256
               (base32
                "0bppkwbxmm8ps1cnrhzxkzm2pbi3s5bfiwx8fcrp31x81jl61w1x"))))
    (properties `((upstream-name . "tidygeoRSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyrss
                             r-stringr
                             r-strex
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-anytime))
    (home-page "https://github.com/RobertMyles/tidygeoRSS")
    (synopsis "Tidy GeoRSS")
    (description
     "In order to easily integrate geoRSS data into analysis, tidygeoRSS parses geo
feeds and returns tidy simple features data frames.")
    (license license:expat)))

(define-public r-tidygeocoder
  (package
    (name "r-tidygeocoder")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidygeocoder" version))
              (sha256
               (base32
                "1ffj8ka5miv3jnds7fdrkcqdc3m2w1ab724z9m10biky213skqka"))))
    (properties `((upstream-name . "tidygeocoder")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-progress
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://jessecambon.github.io/tidygeocoder/")
    (synopsis "Geocoding Made Easy")
    (description
     "An intuitive interface for getting data from geocoding services.")
    (license license:expat)))

(define-public r-tidygenomics
  (package
    (name "r-tidygenomics")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidygenomics" version))
              (sha256
               (base32
                "1cnwmmmzp9kg4k7iy2kgb22bdllpnz257pv1ahy3l11zy6bl48fc"))))
    (properties `((upstream-name . "tidygenomics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-iranges
                             r-fuzzyjoin
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/const-ae/tidygenomics")
    (synopsis "Tidy Verbs for Dealing with Genomic Data Frames")
    (description
     "Handle genomic data within data frames just as you would with GRanges'.  This
packages provides method to deal with genomic intervals the \"tidy-way\" which
makes it simpler to integrate in the the general data munging process.  The API
is inspired by the popular bedtools and the genome_join() method from the
fuzzyjoin package.")
    (license license:gpl3)))

(define-public r-tidygate
  (package
    (name "r-tidygate")
    (version "0.4.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidygate" version))
              (sha256
               (base32
                "0zs2z4xf76d9hw7zwwpd3bisjvq672smbmxl0qgjb7xdzh66cqsf"))))
    (properties `((upstream-name . "tidygate")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-rcolorbrewer
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stemangiola/tidygate")
    (synopsis "Add Gate Information to Your Tibble")
    (description
     "It interactively or programmatically label points within custom gates on two
dimensions <https://github.com/stemangiola/tidygate>.  The information is added
to your tibble.  It is based on the package gatepoints from Wajid Jawaid (who is
also author of this package).  The code of gatepoints was nto integrated in
tidygate'.  The benefits are (i) in interactive mode you can draw your gates on
extensive ggplot'-like scatter plots; (ii) you can draw multiple gates; and
(iii) you can save your gates and apply the programmatically.")
    (license license:gpl3)))

(define-public r-tidygapminder
  (package
    (name "r-tidygapminder")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidygapminder" version))
              (sha256
               (base32
                "1m6bynwnw1msrzvdmy12w3ympinqpd8j3may3rwmg9941nndjv2d"))))
    (properties `((upstream-name . "tidygapminder")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-readxl r-dplyr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://ebedthan.github.io/tidygapminder")
    (synopsis "Easily Tidy Gapminder Datasets")
    (description
     "This package provides a toolset that allows you to easily import and tidy data
sheets retrieved from Gapminder data web tools.  It will therefore contribute to
reduce the time used in data cleaning of Gapminder indicator data sheets as they
are very messy.")
    (license license:gpl2)))

(define-public r-tidyft
  (package
    (name "r-tidyft")
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyft" version))
              (sha256
               (base32
                "00qcsr2sx8fwyil384vgppx0q72qjrkj7h5nv4mdxdi8f9h6ph2r"))))
    (properties `((upstream-name . "tidyft")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-fst r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hope-data-science/tidyft")
    (synopsis "Fast and Memory Efficient Data Operations in Tidy Syntax")
    (description
     "Tidy syntax for data.table', using modification by reference whenever possible.
This toolkit is designed for big data analysis in high-performance desktop or
laptop computers.  The syntax of the package is similar or identical to
tidyverse'.  It is user friendly, memory efficient and time saving.  For more
information, check its ancestor package tidyfst'.")
    (license license:expat)))

(define-public r-tidyfst
  (package
    (name "r-tidyfst")
    (version "1.7.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyfst" version))
              (sha256
               (base32
                "0iz7wk58a3f55vpmw6mbx9jd1ky6p7b5dn7ljibvr2ykzw2cfxm5"))))
    (properties `((upstream-name . "tidyfst")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-fst r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hope-data-science/tidyfst")
    (synopsis "Tidy Verbs for Fast Data Manipulation")
    (description
     "This package provides a toolkit of tidy data manipulation verbs with data.table
as the backend.  Combining the merits of syntax elegance from dplyr and
computing performance from data.table', tidyfst intends to provide users with
state-of-the-art data manipulation tools with least pain.  This package is an
extension of data.table'.  While enjoying a tidy syntax, it also wraps
combinations of efficient functions to facilitate frequently-used data
operations.")
    (license license:expat)))

(define-public r-tidyformula
  (package
    (name "r-tidyformula")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyformula" version))
              (sha256
               (base32
                "1sz5v8l1gpci1jzs87qgxr95nr881rz5lidlfwgfi8963kgvigvg"))))
    (properties `((upstream-name . "tidyformula")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-purrr r-dplyr))
    (home-page "https://cran.r-project.org/package=tidyformula")
    (synopsis "Build Formulas Using Tidy Selection Helpers")
    (description
     "This package provides the function tidyformula()', which translates formulas
containing tidyselect'-style selection helpers.  It expands these helpers by
evaluating dplyr::select() with the relevant selection helper and a supplied
data frame.  The package contains methods for traversing abstract syntax trees
from Wickham, Hadley (2019) <doi:10.1201/9781351201315>.")
    (license license:expat)))

(define-public r-tidyfit
  (package
    (name "r-tidyfit")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyfit" version))
              (sha256
               (base32
                "171w8r2h6751j686pfzbcqbr9zaxll94vvqbq4vcz3fh4nycyzsd"))))
    (properties `((upstream-name . "tidyfit")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-rlang
                             r-purrr
                             r-progressr
                             r-mass
                             r-magrittr
                             r-furrr
                             r-dplyr
                             r-dials
                             r-crayon
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://tidyfit.residualmetrics.com")
    (synopsis "Regularized Linear Modeling with Tidy Data")
    (description
     "An extension to the R tidy data environment for automated machine learning.  The
package allows fitting and cross validation of linear regression and
classification algorithms on grouped data.")
    (license license:gpl3)))

(define-public r-tidyfast
  (package
    (name "r-tidyfast")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyfast" version))
              (sha256
               (base32
                "1bfs2wma705nx1lpndq75ama5dr9kkg8hwpklb20csnccnfrlvf6"))))
    (properties `((upstream-name . "tidyfast")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-data-table))
    (home-page "https://cran.r-project.org/package=tidyfast")
    (synopsis "Fast Tidying of Data")
    (description
     "Tidying functions built on data.table to provide quick and efficient data
manipulation with minimal overhead.")
    (license license:gpl3)))

(define-public r-tidyestimate
  (package
    (name "r-tidyestimate")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyestimate" version))
              (sha256
               (base32
                "0cwk6clah4sapbmfl5vvcv6di39azxb07z73pypnqx4gd32kk5q7"))))
    (properties `((upstream-name . "tidyestimate")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-glue r-ggrepel r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KaiAragaki/tidyestimate")
    (synopsis "Tidy Implementation of 'ESTIMATE'")
    (description
     "The ESTIMATE package infers tumor purity from expression data as a function of
immune and stromal infiltrate, but requires writing of intermediate files, is
un-pipeable, and performs poorly when presented with modern datasets with
current gene symbols.  tidyestimate a fast, tidy, modern reimagination of
ESTIMATE (2013) <doi:10.1038/ncomms3612>.")
    (license license:gpl2+)))

(define-public r-tidyemoji
  (package
    (name "r-tidyemoji")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyEmoji" version))
              (sha256
               (base32
                "03amap4lik63nqdznncg8ymw74avmrhci36gy8ckwwskrn9gqw93"))))
    (properties `((upstream-name . "tidyEmoji")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-emoji
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tidyEmoji")
    (synopsis "Discovers Emoji from Text")
    (description
     "Unicodes are not friendly to work with, and not all Unicodes are Emoji per se,
making obtaining Emoji statistics a difficult task.  This tool can help your
experience of working with Emoji as smooth as possible, as it has the tidyverse
style.")
    (license license:gpl3+)))

(define-public r-tidydr
  (package
    (name "r-tidydr")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidydr" version))
              (sha256
               (base32
                "0ws4z5ldz7wyhxn7h5gf8j4p3srvr5dfr6xxrf1rymx1iz9pd6sv"))))
    (properties `((upstream-name . "tidydr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/YuLab-SMU/tidydr/")
    (synopsis "Unify Dimensionality Reduction Results")
    (description
     "Dimensionality reduction (DR) is widely used in many domain for analyzing and
visualizing high-dimensional data.  tidydr provides uniform output and is
compatible with multiple methods, including prcomp', mds', Rtsne'.  etc.")
    (license license:artistic2.0)))

(define-public r-tidydisasters
  (package
    (name "r-tidydisasters")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyDisasters" version))
              (sha256
               (base32
                "071hr4dmk5pq8m8b58b8zcz5kpgxnqw2l4rb2vkq1zhsrk9ynxmg"))))
    (properties `((upstream-name . "tidyDisasters")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://ccani007.github.io/tidyDisasters/")
    (synopsis "Disaster Data Set Including FEMA, EMDAT and GTD Information")
    (description
     "Pre-processed data that contains a queryable data set with Federal Emergency
Management Agency (FEMA), Emergency Events Database (EMDAT) and the Global
Terrorism Database (GTD) merged.  The data set contains the reported natural and
human made disasters that report 3 or more people killed in the United States of
America.")
    (license license:expat)))

(define-public r-tidydice
  (package
    (name "r-tidydice")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidydice" version))
              (sha256
               (base32
                "19qpjd4v4drn8fiqvv4ajs0q9v4lhdnqgpn27arl4dmqi6dnq1h3"))))
    (properties `((upstream-name . "tidydice")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rolkra/tidydice")
    (synopsis "Simulates Dice Rolls and Coin Flips")
    (description
     "Utils for basic statistical experiments, that can be used for teaching
introductory statistics.  Each experiment generates a tibble.  Dice rolls and
coin flips are simulated using sample().  The properties of the dice can be
changed, like the number of sides.  A coin flip is simulated using a two sided
dice.  Experiments can be combined with the pipe-operator.")
    (license license:gpl3)))

(define-public r-tidydensity
  (package
    (name "r-tidydensity")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TidyDensity" version))
              (sha256
               (base32
                "1dv035cj40817aya10vl8g9ij8wdxzxy2r2r3kfz44jhhynfr2hb"))))
    (properties `((upstream-name . "TidyDensity")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-survival
                             r-rlang
                             r-purrr
                             r-plotly
                             r-patchwork
                             r-nloptr
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-broom
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/TidyDensity")
    (synopsis "Functions for Tidy Analysis and Generation of Random Data")
    (description
     "To make it easy to generate random numbers based upon the underlying stats
distribution functions.  All data is returned in a tidy and structured format
making working with the data simple and straight forward.  Given that the data
is returned in a tidy tibble it lends itself to working with the rest of the
tidyverse'.")
    (license license:expat)))

(define-public r-tidydatatutor
  (package
    (name "r-tidydatatutor")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidydatatutor" version))
              (sha256
               (base32
                "0d7qr1j5ag6ikzq89xc7w9pvsbcp14r0x8ra9v4svx59bg31n94q"))))
    (properties `((upstream-name . "tidydatatutor")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-knitr r-clipr))
    (home-page "https://github.com/seankross/tidydatatutor")
    (synopsis "Send Your R Code to 'Tidy Data Tutor'")
    (description
     "Visualize your Tidyverse data analysis pipelines via the Tidy Data
Tutor'(<https://tidydatatutor.com/>) web application.")
    (license license:expat)))

(define-public r-tidycwl
  (package
    (name "r-tidycwl")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycwl" version))
              (sha256
               (base32
                "172qpalm4n4m39pmg9g3fzd1hhfrnay76v1wmy861vmar000xcdp"))))
    (properties `((upstream-name . "tidycwl")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-yaml
                             r-webshot
                             r-visnetwork
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://sbg.github.io/tidycwl/")
    (synopsis "Tidy Common Workflow Language Tools and Workflows")
    (description
     "The Common Workflow Language <https://www.commonwl.org/> is an open standard for
describing data analysis workflows.  This package takes the raw Common Workflow
Language workflows encoded in JSON or YAML and turns the workflow elements into
tidy data frames or lists.  A graph representation for the workflow can be
constructed and visualized with the parsed workflow inputs, outputs, and steps.
Users can embed the visualizations in their Shiny applications, and export them
as HTML files or static images.")
    (license license:agpl3)))

(define-public r-tidycpp
  (package
    (name "r-tidycpp")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyCpp" version))
              (sha256
               (base32
                "1w6fr4q137ar6557a8x1jpmfmlsga59621jwq0sf37bnn535i4gw"))))
    (properties `((upstream-name . "tidyCpp")))
    (build-system r-build-system)
    (native-inputs (list r-simplermarkdown))
    (home-page "https://github.com/eddelbuettel/tidycpp")
    (synopsis "Tidy C++ Header-Only Definitions for Parts of the C API of R")
    (description
     "Core parts of the C API of R are wrapped in a C++ namespace via a set of inline
functions giving a tidier representation of the underlying data structures and
functionality using a header-only implementation without additional
dependencies.")
    (license license:gpl2+)))

(define-public r-tidyconsultant
  (package
    (name "r-tidyconsultant")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TidyConsultant" version))
              (sha256
               (base32
                "1ipv0nx0xmba62c7qjgadpjsr850d9dl0z5zjkh1rj6kfxdgiis2"))))
    (properties `((upstream-name . "TidyConsultant")))
    (build-system r-build-system)
    (propagated-inputs (list r-validata
                             r-tidybins
                             r-presenter
                             r-pacman
                             r-framecleaner
                             r-badger
                             r-autostats))
    (home-page "https://harrison4192.github.io/TidyConsultant/")
    (synopsis "Tidy Consultant Universe")
    (description
     "Loads the 5 packages in the Tidy Consultant Universe.  This collection of
packages is useful for anyone doing data science, data analysis, or quantitative
consulting.  The functions in these packages range from data cleaning, data
validation, data binning, statistical modeling, and file exporting.")
    (license license:expat)))

(define-public r-tidycomm
  (package
    (name "r-tidycomm")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycomm" version))
              (sha256
               (base32
                "1h1xixa7fbijp1iifpwl689b1pz1vvpy7v4sc9wnkqgw0q31b3iy"))))
    (properties `((upstream-name . "tidycomm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-mbess
                             r-magrittr
                             r-glue
                             r-forcats
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://joon-e.github.io/tidycomm/")
    (synopsis "Data Modification and Analysis for Communication Research")
    (description
     "This package provides convenience functions for common data modification and
analysis tasks in communication research.  This includes functions for
univariate and bivariate data analysis, index generation and reliability
computation, and intercoder reliability tests.  All functions follow the style
and syntax of the tidyverse, and are construed to perform their computations on
multiple variables at once.  Functions for univariate and bivariate data
analysis comprise summary statistics for continuous and categorical variables,
as well as several tests of bivariate association including effect sizes.
Functions for data modification comprise index generation and automated
reliability analysis of index variables.  Functions for intercoder reliability
comprise tests of several intercoder reliability estimates, including simple and
mean pairwise percent agreement, Krippendorff's Alpha (Krippendorff 2004, ISBN:
9780761915454), and various Kappa coefficients (Brennan & Prediger 1981 <doi:
10.1177/001316448104100307>; Cohen 1960 <doi: 10.1177/001316446002000104>;
Fleiss 1971 <doi: 10.1037/h0031619>).")
    (license license:gpl3)))

(define-public r-tidycode
  (package
    (name "r-tidycode")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycode" version))
              (sha256
               (base32
                "0ahjhn1ar93xnd1snxnivdl43d1b6ica0pc30rgh8jpha87zbsay"))))
    (properties `((upstream-name . "tidycode")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-pryr
                             r-matahari
                             r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LucyMcGowan/tidycode")
    (synopsis "Analyze Lines of R Code the Tidy Way")
    (description
     "Analyze lines of R code using tidy principles.  This allows you to input lines
of R code and output a data frame with one row per function included.
Additionally, it facilitates code classification via included lexicons.")
    (license license:expat)))

(define-public r-tidycmprsk
  (package
    (name "r-tidycmprsk")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycmprsk" version))
              (sha256
               (base32
                "1smcjicx7xz07iagzv2a87kc9q0j2sgpnakhv7dc18zw2ndpls1q"))))
    (properties `((upstream-name . "tidycmprsk")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-survival
                             r-stringr
                             r-rlang
                             r-purrr
                             r-hardhat
                             r-gtsummary
                             r-ggplot2
                             r-dplyr
                             r-cmprsk
                             r-cli
                             r-broom))
    (home-page "https://mskcc-epi-bio.github.io/tidycmprsk/")
    (synopsis "Competing Risks Estimation")
    (description
     "This package provides an intuitive interface for working with the competing risk
endpoints.  The package wraps the cmprsk package, and exports functions for
univariate cumulative incidence estimates and competing risk regression.
Methods follow those introduced in Fine and Gray (1999) <doi:10.1002/sim.7501>.")
    (license license:agpl3+)))

(define-public r-tidyclust
  (package
    (name "r-tidyclust")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyclust" version))
              (sha256
               (base32
                "1gfqk2aap3j96fn1wpp6xz7z415x5l9a8jd9hrcm4978dg4r00r7"))))
    (properties `((upstream-name . "tidyclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tune
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-rlang
                             r-rfast
                             r-prettyunits
                             r-parsnip
                             r-modelenv
                             r-hardhat
                             r-glue
                             r-generics
                             r-foreach
                             r-flexclust
                             r-dplyr
                             r-dials
                             r-cli))
    (home-page "https://github.com/tidymodels/tidyclust")
    (synopsis "Common API to Clustering")
    (description
     "This package provides a common interface to specifying clustering models, in the
same style as parsnip'.  Creates unified interface across different functions
and computational engines.")
    (license license:expat)))

(define-public r-tidycharts
  (package
    (name "r-tidycharts")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycharts" version))
              (sha256
               (base32
                "1clpjyvqv6xhv7n64xh411x867fnn581qckzcwn18xbbbs56k6nn"))))
    (properties `((upstream-name . "tidycharts")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-stringr
                             r-rsvg
                             r-rlang
                             r-magrittr
                             r-magick
                             r-lubridate
                             r-knitr
                             r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://mi2datalab.github.io/tidycharts/")
    (synopsis "Generate Tidy Charts Inspired by 'IBCS'")
    (description
     "There is a wide range of R packages created for data visualization, but still,
there was no simple and easily accessible way to create clean and transparent
charts - up to now.  The tidycharts package enables the user to generate charts
compliant with International Business Communication Standards ('IBCS').  It
means unified bar widths, colors, chart sizes, etc.  Creating homogeneous
reports has never been that easy! Additionally, users can apply semantic
notation to indicate different data scenarios (plan, budget, forecast).  What's
more, it is possible to customize the charts by creating a personal color pallet
with the possibility of switching to default options after the experiments.  We
wanted the package to be helpful in writing reports, so we also made joining
charts in a one, clear image possible.  All charts are generated in SVG format
and can be shown in the RStudio viewer pane or exported to HTML output of
knitr'/'markdown'.")
    (license license:gpl3+)))

(define-public r-tidycensus
  (package
    (name "r-tidycensus")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycensus" version))
              (sha256
               (base32
                "05f58fa37mmky5jfl8gbnday9d3c99prhngggdv3qjn934zk4iya"))))
    (properties `((upstream-name . "tidycensus")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-units
                             r-tigris
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-sf
                             r-rvest
                             r-rlang
                             r-readr
                             r-rappdirs
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-crayon))
    (home-page "https://walker-data.com/tidycensus/")
    (synopsis
     "Load US Census Boundary and Attribute Data as 'tidyverse' and 'sf'-Ready Data Frames")
    (description
     "An integrated R interface to several United States Census Bureau APIs
(<https://www.census.gov/data/developers/data-sets.html>) and the US Census
Bureau's geographic boundary files.  Allows R users to return Census and ACS
data as tidyverse-ready data frames, and optionally returns a list-column with
feature geometry for mapping and spatial analysis.")
    (license license:expat)))

(define-public r-tidycdisc
  (package
    (name "r-tidycdisc")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyCDISC" version))
              (sha256
               (base32
                "19986kszskkn338wim5p641rzi58rx2vzyyd96r2yr0h4jksz6v2"))))
    (properties `((upstream-name . "tidyCDISC")))
    (build-system r-build-system)
    (propagated-inputs (list r-tippy
                             r-timevis
                             r-tidyr
                             r-survival
                             r-stringr
                             r-sjlabelled
                             r-shinywidgets
                             r-shinyjs
                             r-shiny
                             r-rmarkdown
                             r-rlang
                             r-purrr
                             r-plotly
                             r-ideafilter
                             r-haven
                             r-gt
                             r-golem
                             r-glue
                             r-ggplot2
                             r-ggcorrplot
                             r-ggally
                             r-dt
                             r-dplyr
                             r-config
                             r-cicerone))
    (native-inputs (list r-knitr))
    (home-page "https://Biogen-Inc.github.io/tidyCDISC/")
    (synopsis
     "Quick Table Generation & Exploratory Analyses on ADaM-Ish Datasets")
    (description
     "This package provides users a quick exploratory dive into common visualizations
without writing a single line of code given the users data follows the Analysis
Data Model (ADaM) standards put forth by the Clinical Data Interchange Standards
Consortium (CDISC) <https://www.cdisc.org>.  Prominent modules/ features of the
application are the Table Generator, Population Explorer, and the Individual
Explorer.  The Table Generator allows users to drag and drop variables and
desired statistics (frequencies, means, ANOVA, t-test, and other summary
statistics) into bins that automagically create stunning tables with validated
information.  The Population Explorer offers various plots to visualize general
trends in the population from various vantage points.  Plot modules currently
include scatter plot, spaghetti plot, box plot, histogram, means plot, and bar
plot.  Each plot type allows the user to plot uploaded variables against one
another, and dissect the population by filtering out certain subjects.  Last,
the Individual Explorer establishes a cohesive patient narrative, allowing the
user to interact with patient metrics (params) by visit or plotting important
patient events on a timeline.  All modules allow for concise filtering &
downloading bulk outputs into html or pdf formats to save for later.")
    (license license:agpl3+)))

(define-public r-tidycat
  (package
    (name "r-tidycat")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidycat" version))
              (sha256
               (base32
                "1c8ib5zcz2xk7yrzh4j5q4ccv6lnw58sh2ggqn04k2wp0gcj2zcs"))))
    (properties `((upstream-name . "tidycat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-magrittr
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://guyabel.github.io/tidycat/")
    (synopsis "Expand Tidy Output for Categorical Parameter Estimates")
    (description
     "Create additional rows and columns on broom::tidy() output to allow for easier
control on categorical parameter estimates.")
    (license license:gpl3)))

(define-public r-tidyboot
  (package
    (name "r-tidyboot")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyboot" version))
              (sha256
               (base32
                "0nss1ci763g9p5f33g163ppamx72axc8xhrils0cql3ka8439pmn"))))
    (properties `((upstream-name . "tidyboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rlang r-purrr r-modelr r-dplyr))
    (home-page "https://github.com/langcog/tidyboot")
    (synopsis "Tidyverse-Compatible Bootstrapping")
    (description
     "Compute arbitrary non-parametric bootstrap statistics on data in tidy data
frames.")
    (license license:gpl3)))

(define-public r-tidybins
  (package
    (name "r-tidybins")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidybins" version))
              (sha256
               (base32
                "1kwwz0y1anlf1l8yl80xyiggdi8alsh0drb1529rijfk2jxlljg9"))))
    (properties `((upstream-name . "tidybins")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tidyselect
                             r-tibble
                             r-stringr
                             r-strex
                             r-scales
                             r-rlist
                             r-rlang
                             r-purrr
                             r-oner
                             r-magrittr
                             r-lubridate
                             r-janitor
                             r-ggplot2
                             r-framecleaner
                             r-dplyr
                             r-clusterr
                             r-badger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Harrison4192/tidybins")
    (synopsis "Make Tidy Bins")
    (description
     "Multiple ways to bin numeric columns with a tidy output.  Wraps a variety of
existing binning methods into one function, and includes a new method for
binning by equal value, which is useful for sales data.  Provides a function to
automatically summarize the properties of the binned columns.")
    (license license:gpl3+)))

(define-public r-tidybde
  (package
    (name "r-tidybde")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyBdE" version))
              (sha256
               (base32
                "1c3c4yj95avjmnc11gn1dcbgmzz3kgmj5ahl4ip8vp3ap4ik3c89"))))
    (properties `((upstream-name . "tidyBdE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-scales
                             r-readr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://ropenspain.github.io/tidyBdE/")
    (synopsis "Download Data from Bank of Spain")
    (description
     "Tools to download data series from Banco de EspaÃ±a ('BdE') on tibble format.
Banco de EspaÃ±a is the national central bank and, within the framework of the
Single Supervisory Mechanism ('SSM'), the supervisor of the Spanish banking
system along with the European Central Bank.  This package is in no way
sponsored endorsed or administered by Banco de EspaÃ±a'.")
    (license license:gpl3+)))

(define-public r-tidybayes
  (package
    (name "r-tidybayes")
    (version "3.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidybayes" version))
              (sha256
               (base32
                "1nvxps747fb20bia9ayzk2q2gplkwirb7c8fa4cl666m9pyx2jcz"))))
    (properties `((upstream-name . "tidybayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-posterior
                             r-magrittr
                             r-ggplot2
                             r-ggdist
                             r-dplyr
                             r-coda
                             r-arrayhelpers))
    (native-inputs (list r-knitr))
    (home-page "https://mjskay.github.io/tidybayes/")
    (synopsis "Tidy Data and 'Geoms' for Bayesian Models")
    (description
     "Compose data for and extract, manipulate, and visualize posterior draws from
Bayesian models ('JAGS', Stan', rstanarm', brms', MCMCglmm', coda', ...) in a
tidy data format.  Functions are provided to help extract tidy data frames of
draws from Bayesian models and that generate point summaries and intervals in a
tidy format.  In addition, ggplot2 geoms and stats are provided for common
visualization primitives like points with multiple uncertainty intervals, eye
plots (intervals plus densities), and fit curves with multiple, arbitrary
uncertainty bands.")
    (license license:gpl3+)))

(define-public r-tidyaml
  (package
    (name "r-tidyaml")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tidyAML" version))
              (sha256
               (base32
                "0zr2nmsyy9cx2kkg5z9nrf9mls8zg3d9lqv0vzvwzvrqc377yd88"))))
    (properties `((upstream-name . "tidyAML")))
    (build-system r-build-system)
    (propagated-inputs (list r-workflowsets
                             r-workflows
                             r-rsample
                             r-rlang
                             r-purrr
                             r-parsnip
                             r-magrittr
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spsanderson/tidyAML")
    (synopsis "Automatic Machine Learning with 'tidymodels'")
    (description
     "The goal of this package will be to provide a simple interface for automatic
machine learning that fits the tidymodels framework.  The intention is to work
for regression and classification problems with a simple verb framework.")
    (license license:expat)))

(define-public r-tidetables
  (package
    (name "r-tidetables")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TideTables" version))
              (sha256
               (base32
                "0xfwikz9f58pw1j5vp45wp44lbr8b8ijlac474nzahq46d411afp"))))
    (properties `((upstream-name . "TideTables")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table r-chron))
    (home-page "https://cran.r-project.org/package=TideTables")
    (synopsis
     "Tide Analysis and Prediction of Predominantly Semi-Diurnal Tides")
    (description
     "Tide analysis and prediction of predominantly semi-diurnal tides with two high
waters and two low waters during one lunar day (~24.842 hours, ~1.035 days).
The analysis should preferably cover an observation period of at least 19 years.
 For shorter periods, for example, the nodal cycle can not be taken into
account, which particularly affects the height calculation.  The main objective
of this package is to produce tide tables.")
    (license license:gpl3)))

(define-public r-tides
  (package
    (name "r-tides")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tides" version))
              (sha256
               (base32
                "0da3z010ali83qf8mf1znicqv8vvsa5r93mc40ax60ln2w33nlrm"))))
    (properties `((upstream-name . "Tides")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Tides")
    (synopsis "Quasi-Periodic Time Series Characteristics")
    (description
     "Calculate Characteristics of Quasi-Periodic Time Series, e.g. Estuarine Water
Levels.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tideharmonics
  (package
    (name "r-tideharmonics")
    (version "0.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TideHarmonics" version))
              (sha256
               (base32
                "1g1v99gh6mns4l8ipmw7kpalbk07m92ybcqjq7b0wsjmdvs1y67s"))))
    (properties `((upstream-name . "TideHarmonics")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TideHarmonics")
    (synopsis "Harmonic Analysis of Tides")
    (description
     "This package implements harmonic analysis of tidal and sea-level data.  Over 400
harmonic tidal constituents can be estimated, all with daily nodal corrections.
Time-varying mean sea-levels can also be used.")
    (license license:bsd-3)))

(define-public r-tidecurves
  (package
    (name "r-tidecurves")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TideCurves" version))
              (sha256
               (base32
                "1cnfnmwmlicsi243058zq3302niwk2l1agrrjy4k7rf1v7gfy6xx"))))
    (properties `((upstream-name . "TideCurves")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields r-data-table r-chron))
    (home-page "https://cran.r-project.org/package=TideCurves")
    (synopsis "Analysis and Prediction of Tides")
    (description
     "Tidal analysis of evenly spaced observed time series (time step 1 to 60 min)
with or without shorter gaps using the harmonic representation of inequalities.
The analysis should preferably cover an observation period of at least 19 years.
 For shorter periods low frequency constituents are not taken into account, in
accordance with the Rayleigh-Criterion.  The main objective of this package is
to synthesize or predict a tidal time series.")
    (license license:gpl3)))

(define-public r-tictoc
  (package
    (name "r-tictoc")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tictoc" version))
              (sha256
               (base32
                "0ka7zd857xfqb5afn0psn0yzfv2qjb0ddxfyiq6aggbnla5qc3qj"))))
    (properties `((upstream-name . "tictoc")))
    (build-system r-build-system)
    (home-page "https://github.com/jabiru/tictoc")
    (synopsis
     "Functions for Timing R Scripts, as Well as Implementations of \"Stack\" and \"List\" Structures")
    (description
     "Code execution timing functions tic and toc that can be nested.  One can record
all timings while a complex script is running, and examine the values later.  It
is also possible to instrument the timing calls with custom callbacks.  In
addition, this package provides class Stack', implemented as a vector, and class
List', implemented as a list, both of which support operations push', pop',
first_element', last_element and clear'.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tictactoe
  (package
    (name "r-tictactoe")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tictactoe" version))
              (sha256
               (base32
                "1fx8plj5zr04xwk5hfj3zqhcknidxlzya2q14cf0m3y33a86lx42"))))
    (properties `((upstream-name . "tictactoe")))
    (build-system r-build-system)
    (propagated-inputs (list r-hash))
    (home-page "https://github.com/kota7/tictactoe")
    (synopsis "Tic-Tac-Toe Game")
    (description
     "This package implements tic-tac-toe game to play on console, either with human
or AI players.  Various levels of AI players are trained through the Q-learning
algorithm.")
    (license license:expat)))

(define-public r-tibblify
  (package
    (name "r-tibblify")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tibblify" version))
              (sha256
               (base32
                "1hir7rb0zn9cz2yjfrg17is0ryzzxfxsan0sij0c0dh9v171cp0w"))))
    (properties `((upstream-name . "tibblify")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-purrr
                             r-lifecycle
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mgirlich/tibblify")
    (synopsis "Rectangle Nested Lists")
    (description
     "This package provides a tool to rectangle a nested list, that is to convert it
into a tibble.  This is done automatically or according to a given
specification.  A common use case is for nested lists coming from parsing JSON
files or the JSON response of REST APIs.  It is supported by the vctrs package
and therefore offers a wide support of vector types.")
    (license license:gpl3)))

(define-public r-tibbletime
  (package
    (name "r-tibbletime")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tibbletime" version))
              (sha256
               (base32
                "18a63vipcw95yk37r490a3a4xag59v7475bch2dizq7nqhfc5wfn"))))
    (properties `((upstream-name . "tibbletime")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-vctrs
                             r-tibble
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-pillar
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-glue
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/business-science/tibbletime")
    (synopsis "Time Aware Tibbles")
    (description
     "Built on top of the tibble package, tibbletime is an extension that allows for
the creation of time aware tibbles.  Some immediate advantages of this include:
the ability to perform time-based subsetting on tibbles, quickly summarising and
aggregating results by time periods, and creating columns that can be used as
dplyr time-based groups.")
    (license license:expat)))

(define-public r-thurstonianirt
  (package
    (name "r-thurstonianirt")
    (version "0.12.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thurstonianIRT" version))
              (sha256
               (base32
                "1qac1kg441x6fx3nxlhj1w1q7b3isivw6hzy7np3g1ics3kxpw8b"))))
    (properties `((upstream-name . "thurstonianIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-mplusautomation
                             r-magrittr
                             r-lavaan
                             r-knitr
                             r-dplyr
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paul-buerkner/thurstonianIRT")
    (synopsis "Thurstonian IRT Models")
    (description
     "Fit Thurstonian Item Response Theory (IRT) models in R. This package supports
fitting Thurstonian IRT models and its extensions using Stan', lavaan', or Mplus
for the model estimation.  Functionality for extracting results, making
predictions, and simulating data is provided as well.  References: Brown &
Maydeu-Olivares (2011) <doi:10.1177/0013164410375112>; BÃ¼rkner et al. (2019)
<doi:10.1177/0013164419832063>.")
    (license license:gpl3+)))

(define-public r-thriftr
  (package
    (name "r-thriftr")
    (version "1.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thriftr" version))
              (sha256
               (base32
                "0qx96nd9wdmxgvlvv43q51qrqpmb98vz6hmrhlq3hp91w3g20p5a"))))
    (properties `((upstream-name . "thriftr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-rly r-r6))
    (home-page "https://github.com/systemincloud/thriftr")
    (synopsis "Apache Thrift Client Server")
    (description
     "Pure R implementation of Apache Thrift.  This library doesn't require any code
generation.  To learn more about Thrift go to <https://thrift.apache.org>.")
    (license license:expat)))

(define-public r-threshr
  (package
    (name "r-threshr")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "threshr" version))
              (sha256
               (base32
                "1vs2jfvh1pjzyfz1s4w92sw13yz2nhc28gc3iyqz8a82rrdm4mdq"))))
    (properties `((upstream-name . "threshr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rust r-revdbayes))
    (native-inputs (list r-knitr))
    (home-page "https://paulnorthrop.github.io/threshr/")
    (synopsis "Threshold Selection and Uncertainty for Extreme Value Analysis")
    (description
     "This package provides functions for the selection of thresholds for use in
extreme value models, based mainly on the methodology in Northrop, Attalides and
Jonathan (2017) <doi:10.1111/rssc.12159>.  It also performs predictive
inferences about future extreme values, based either on a single threshold or on
a weighted average of inferences from multiple thresholds, using the revdbayes
package <https://cran.r-project.org/package=revdbayes>.  At the moment only the
case where the data can be treated as independent identically distributed
observations is considered.")
    (license license:gpl2+)))

(define-public r-thresholdrocsurvival
  (package
    (name "r-thresholdrocsurvival")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThresholdROCsurvival" version))
              (sha256
               (base32
                "19xgyrdnwfv4rqvrj7d2603jy0wvi5r17l85lvvv0z56pdcqagl3"))))
    (properties `((upstream-name . "ThresholdROCsurvival")))
    (build-system r-build-system)
    (propagated-inputs (list r-thresholdroc
                             r-survival
                             r-psych
                             r-proc
                             r-informativecensoring
                             r-boot))
    (home-page "https://cran.r-project.org/package=ThresholdROCsurvival")
    (synopsis
     "Threshold and AUC Estimation with Right-Censored Data at a Fixed Time t")
    (description
     "We focus on the estimation of optimal thresholds and AUCs when the outcome of
interest is the status (alive or dead) of the subjects at a certain time-point
t.  This binary status is determined by right-censored times to event and it is
missing for those subjects censored before t.  Here we provide three methods
(missing exclusion, imputation of censored times and using time-dependent ROC
curves) to estimate optimal thresholds and AUCs in this context.  Two references
for the methods used here are Skaltsa et al. (2010) <doi:10.1002/bimj.200900294>
and Heagerty et al. (2000) <doi:10.1111/j.0006-341x.2000.00337.x>.")
    (license license:gpl2+)))

(define-public r-thresholdroc
  (package
    (name "r-thresholdroc")
    (version "2.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThresholdROC" version))
              (sha256
               (base32
                "1mzz05aqq6crcfm5bbv0gbpvndk0yy1lf4fxz8zva790g16cilq0"))))
    (properties `((upstream-name . "ThresholdROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc r-numderiv r-mass r-ks))
    (home-page "https://cran.r-project.org/package=ThresholdROC")
    (synopsis "Optimum Threshold Estimation")
    (description
     "This package provides functions that provide point and interval estimations of
optimum thresholds for continuous diagnostic tests.  The methodology used is
based on minimizing an overall cost function in the two- and three-state
settings.  We also provide functions for sample size determination and
estimation of diagnostic accuracy measures.  We also include graphical tools.
The statistical methodology used here can be found in Perez-Jaume et al (2017)
<doi:10.18637/jss.v082.i04>.")
    (license license:gpl2+)))

(define-public r-thresher
  (package
    (name "r-thresher")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Thresher" version))
              (sha256
               (base32
                "16zf5cwc2c5j61xcrqsycwrsc162spyqgk9mac7n37mymn5agbwp"))))
    (properties `((upstream-name . "Thresher")))
    (build-system r-build-system)
    (propagated-inputs (list r-pcdimension
                             r-oompabase
                             r-movmf
                             r-mass
                             r-colorspace
                             r-classdiscovery
                             r-ade4))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Threshing and Reaping for Principal Components")
    (description
     "Defines the classes used to identify outliers (threshing) and compute the number
of significant principal components and number of clusters (reaping) in a joint
application of PCA and hierarchical clustering.  See Wang et al., 2018,
<doi:10.1186/s12859-017-1998-9>.")
    (license license:asl2.0)))

(define-public r-thregi
  (package
    (name "r-thregi")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thregI" version))
              (sha256
               (base32
                "0zddd32fnfi98zwq08akkvhkg3c66sj3jii6ap8p1m9a0wg2k2k3"))))
    (properties `((upstream-name . "thregI")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-formula))
    (home-page "https://cran.r-project.org/package=thregI")
    (synopsis
     "Threshold Regression for Interval-Censored Data with a Cure Rate Option")
    (description
     "Fit a threshold regression model for Interval Censored Data based on the
first-hitting-time of a boundary by the sample path of a Wiener diffusion
process.  The threshold regression methodology is well suited to applications
involving survival and time-to-event data.")
    (license license:gpl2)))

(define-public r-threg
  (package
    (name "r-threg")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "threg" version))
              (sha256
               (base32
                "1ja0w4hhdkw3b1cipbpw8ym27k5lh2m7gibd74mj6gij7rpixrnb"))))
    (properties `((upstream-name . "threg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-formula))
    (home-page "https://cran.r-project.org/package=threg")
    (synopsis "Threshold Regression")
    (description
     "Fit a threshold regression model based on the first-hitting-time of a boundary
by the sample path of a Wiener diffusion process.  The threshold regression
methodology is well suited to applications involving survival and time-to-event
data.")
    (license license:gpl2)))

(define-public r-threewords
  (package
    (name "r-threewords")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "threewords" version))
              (sha256
               (base32
                "083y5i4qyl1wj017wy5ywl2yx9wvrpjl9g9k9clvnrbwzbycx2cg"))))
    (properties `((upstream-name . "threewords")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (home-page "https://cran.r-project.org/package=threewords")
    (synopsis "Represent Precise Coordinates in Three Words")
    (description
     "This package provides a connector to the What3Words (http://what3words.com/)
service, which represents each 3m by 3m square on earth with a unique trio of
English-language words.")
    (license license:expat)))

(define-public r-threewisemonkeys
  (package
    (name "r-threewisemonkeys")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThreeWiseMonkeys" version))
              (sha256
               (base32
                "1qdb3m15q0gg8dk2znc2syy2jdqsp2893a7ilfa8rg3r2vps86yg"))))
    (properties `((upstream-name . "ThreeWiseMonkeys")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner r-stringr))
    (home-page "https://cran.r-project.org/package=ThreeWiseMonkeys")
    (synopsis
     "The Japanese Pictorial Maxim \"See No Evil, Hear No Evil, Speak No Evil\"")
    (description
     "Does nothing useful, but perhaps does that nothing in an entertaining or
informative fashion.")
    (license license:expat)))

(define-public r-threeway
  (package
    (name "r-threeway")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThreeWay" version))
              (sha256
               (base32
                "17yl8zq029wiy3c0f4ssljx85dnm9n862wj2d24w7p0lxlvarmz6"))))
    (properties `((upstream-name . "ThreeWay")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ThreeWay")
    (synopsis "Three-Way Component Analysis")
    (description
     "Component analysis for three-way data arrays by means of Candecomp/Parafac,
Tucker3, Tucker2 and Tucker1 models.")
    (license license:gpl2+)))

(define-public r-threesixtygiving
  (package
    (name "r-threesixtygiving")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "threesixtygiving" version))
              (sha256
               (base32
                "0fnysgyq4gf23vqxwnzwb3f1cv1v1b2cb6z0kywb17mr57cbg7pv"))))
    (properties `((upstream-name . "threesixtygiving")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-readxl
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-dplyr
                             r-curl
                             r-anytime))
    (native-inputs (list r-knitr))
    (home-page "https://docs.evanodell.com/threesixtygiving")
    (synopsis "Download Charitable Grants from the '360Giving' Platform")
    (description
     "Access open data from <https://www.threesixtygiving.org>, a database of
charitable grant giving in the UK operated by 360Giving'.  The package provides
functions to search and retrieve data on charitable grant giving, and process
that data into tidy formats.  It relies on the 360Giving data standard,
described at <https://standard.threesixtygiving.org/>.")
    (license license:gpl3)))

(define-public r-threegroups
  (package
    (name "r-threegroups")
    (version "0.21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThreeGroups" version))
              (sha256
               (base32
                "0hipxa45v9ysb2qbk33kjycnvqar7bff1ajxd6fzhpc3jc9hflw4"))))
    (properties `((upstream-name . "ThreeGroups")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ThreeGroups")
    (synopsis
     "ML Estimator for Baseline-Placebo-Treatment (Three-Group) Experiments")
    (description
     "This package implements the Maximum Likelihood estimator for baseline, placebo,
and treatment groups (three-group) experiments with non-compliance proposed by
Gerber, Green, Kaplan, and Kern (2010).")
    (license license:gpl2)))

(define-public r-threebrain
  (package
    (name "r-threebrain")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "threeBrain" version))
              (sha256
               (base32
                "1gz9h3spqh2pdcyqkrifcqdjwzjr08icp6viv1z8h2dw46jwm5sx"))))
    (properties `((upstream-name . "threeBrain")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-shiny
                             r-r6
                             r-oro-nifti
                             r-jsonlite
                             r-htmlwidgets
                             r-gifti
                             r-freesurferformats
                             r-dipsaus
                             r-digest))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://cran.r-project.org/package=threeBrain")
    (synopsis "3D Brain Visualization")
    (description
     "This package provides a fast, interactive cross-platform, and easy to share
WebGL'-based 3D brain viewer that visualizes FreeSurfer and/or AFNI/SUMA
surfaces.  The viewer widget can be either standalone or embedded into R-shiny
applications.  The standalone version only require a web browser with WebGL2
support (for example, Chrome', Firefox', Safari'), and can be inserted into any
websites.  The R-shiny support allows the 3D viewer to be dynamically generated
from reactive user inputs.  This feature has been fully adopted by RAVE
<https://openwetware.org/wiki/RAVE>, an interactive toolbox to analyze iEEG
data.  Documentation about threeBrain is provided by
<https://dipterix.org/threeBrain/> and several vignettes included in this
package.  To cite the package, please check our NeuroImage paper by Magnotti,
Wang, and Beauchamp (2020, <doi:10.1016/j.neuroimage.2020.117341>), or see
citation(\"threeBrain\") for details.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-threearmedtrials
  (package
    (name "r-threearmedtrials")
    (version "1.0-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThreeArmedTrials" version))
              (sha256
               (base32
                "1czlr94mgs99pzd1a80wqfjhrwrfsk8fvbbr37nwcixs0fw431yw"))))
    (properties `((upstream-name . "ThreeArmedTrials")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tobiasmuetze/ThreeArmedTrials")
    (synopsis
     "Design and Analysis of Clinical Non-Inferiority or Superiority Trials with Active and Placebo Control")
    (description
     "Design and analyze three-arm non-inferiority or superiority trials which follow
a gold-standard design, i.e.  trials with an experimental treatment, an active,
and a placebo control.  Method for the following distributions are implemented:
Poisson (Mielke and Munk (2009) <arXiv:0912.4169>), negative binomial (Muetze et
al. (2016) <doi:10.1002/sim.6738>), normal (Pigeot et al. (2003)
<doi:10.1002/sim.1450>; Hasler et al. (2009) <doi:10.1002/sim.3052>), binary
(Friede and Kieser (2007) <doi:10.1002/sim.2543>), nonparametric (Muetze et al.
(2017) <doi:10.1002/sim.7176>), exponential (Mielke and Munk (2009)
<arXiv:0912.4169>).")
    (license license:gpl3+)))

(define-public r-thredds
  (package
    (name "r-thredds")
    (version "0.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thredds" version))
              (sha256
               (base32
                "08jlvi0z0rdqc46pgzpv84x0r8qxpvnh2w34g1hyprgcwh0b7537"))))
    (properties `((upstream-name . "thredds")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rlang r-r6 r-magrittr r-httr))
    (home-page "https://github.com/BigelowLab/thredds")
    (synopsis "Crawler for Navigating THREDDS Catalogs")
    (description
     "This package provides a crawler for programmatically navigating THREDDS Data
Server (<https://www.unidata.ucar.edu/software/tds/>) catalogs, and access
dataset metadata and resources.")
    (license license:expat)))

(define-public r-thorn
  (package
    (name "r-thorn")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thorn" version))
              (sha256
               (base32
                "0sybjqwv9al5khkhhc7khbgr7n2vy6aggarh9n75mxpa8hn7j2qr"))))
    (properties `((upstream-name . "thorn")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/thorn")
    (synopsis "'HTMLwidgets' Displaying Some 'WebGL' Shaders")
    (description
     "This package creates some WebGL shaders.  They can be used as the background of
a Shiny app.  They also can be visualized in the RStudio viewer pane or included
in Rmd documents, but this is pretty useless, besides contemplating them.")
    (license license:gpl3)))

(define-public r-thor
  (package
    (name "r-thor")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thor" version))
              (sha256
               (base32
                "0y75lnmjdcjxca3a0h9a30c0cll68arbv7rbdxkla92arm3k39vx"))))
    (properties `((upstream-name . "thor")))
    (build-system r-build-system)
    (propagated-inputs (list r-storr r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/richfitz/thor")
    (synopsis "Interface to 'LMDB'")
    (description
     "Key-value store, implemented as a wrapper around LMDB'; the \"lightning
memory-mapped database\" <https://www.symas.com/lmdb>.  LMDB is a transactional
key value store that uses a memory map for efficient access.  This package wraps
the entire LMDB interface (except duplicated keys), and provides objects for
transactions and cursors.")
    (license license:expat)))

(define-public r-thomasjeffersonuniv
  (package
    (name "r-thomasjeffersonuniv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThomasJeffersonUniv" version))
              (sha256
               (base32
                "0w2n7jwns82zljkfz509hkkplda5mpbcqk5gzi2y75vlika0rg18"))))
    (properties `((upstream-name . "ThomasJeffersonUniv")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-timedate r-lubridate))
    (home-page "https://cran.r-project.org/package=ThomasJeffersonUniv")
    (synopsis "Handy Tools for TJU/TJUH Employees")
    (description
     "This package provides functions for admin needs of employees of Thomas Jefferson
University and Thomas Jefferson University Hospital, Philadelphia, PA.")
    (license license:gpl2)))

(define-public r-this-path
  (package
    (name "r-this-path")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "this.path" version))
              (sha256
               (base32
                "179qssmv3cl49b5s6slmqn58w5bmvihpaf0r2pmamqvc0qhgsci5"))))
    (properties `((upstream-name . "this.path")))
    (build-system r-build-system)
    (home-page "https://github.com/ArcadeAntics/this.path")
    (synopsis
     "Get Executing Script's Path, from 'Rgui', 'RStudio', 'VSCode', 'source()', and 'Rscript' (Shells Including Windows Command Line / / Unix Terminal)")
    (description
     "Determine the path of the executing script.  Works when running a line or
selection in Rgui', RStudio', and VSCode', when using source()', sys.source()',
debugSource() in RStudio', testthat::source_file()', and knitr::knit()', and
when running from a shell.")
    (license license:expat)))

(define-public r-thinkr
  (package
    (name "r-thinkr")
    (version "0.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thinkr" version))
              (sha256
               (base32
                "104n4g70fk209b721qchrbv95dwxzq6vvhz36asdk40kzzacdzp2"))))
    (properties `((upstream-name . "thinkr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-rvg
                             r-officer
                             r-magrittr
                             r-lubridate
                             r-lazyeval
                             r-ggplot2
                             r-dplyr
                             r-devtools
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Thinkr-open/thinkr")
    (synopsis "Tools for Cleaning Up Messy Files")
    (description
     "Some tools for cleaning up messy Excel files to be suitable for R. People who
have been working with Excel for years built more or less complicated sheets
with names, characters, formats that are not homogeneous.  To be able to use
them in R nowadays, we built a set of functions that will avoid the majority of
importation problems and keep all the data at best.")
    (license license:gpl3)))

(define-public r-thief
  (package
    (name "r-thief")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thief" version))
              (sha256
               (base32
                "12ymkkisg5p0g1gmvlczhp4dc7mirjg55fqqmz2d90673vlg6rfq"))))
    (properties `((upstream-name . "thief")))
    (build-system r-build-system)
    (propagated-inputs (list r-hts r-ggplot2 r-forecast))
    (home-page "http://pkg.robjhyndman.com/thief")
    (synopsis "Temporal Hierarchical Forecasting")
    (description
     "This package provides methods and tools for generating forecasts at different
temporal frequencies using a hierarchical time series approach.")
    (license license:gpl3)))

(define-public r-thgenetics
  (package
    (name "r-thgenetics")
    (version "0.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thgenetics" version))
              (sha256
               (base32
                "1314gry3xs9v4jy13g08q16qy4ax3s0bc7d74gi0wbpkgdrk3lql"))))
    (properties `((upstream-name . "thgenetics")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=thgenetics")
    (synopsis "Genetic Rare Variants Tests")
    (description
     "This package provides a step-up test for genetic rare variants in a gene or in a
pathway.  The method determines an optimal grouping of rare variants
analytically.  The method has been described in Hoffmann TJ, Marini NJ, and
Witte JS (2010) <doi:10.1371/journal.pone.0013584>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-thewitcher
  (package
    (name "r-thewitcher")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thewitcher" version))
              (sha256
               (base32
                "140f0insb5gqrfdaq5cnzj6bl0akbif57jnyy7ai3rb2rwy9n2nv"))))
    (properties `((upstream-name . "thewitcher")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-tidyverse
                             r-readr
                             r-mass
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=thewitcher")
    (synopsis "Palettes Inspired by the TV Show \"The Witcher\"")
    (description
     "Plot your data using color palettes for ggplot2 inspired by the TV show, book
series and video games \"The Witcher\".")
    (license license:expat)))

(define-public r-thestats
  (package
    (name "r-thestats")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thestats" version))
              (sha256
               (base32
                "15y6ibw7i4nrm8990yirqf64gl1x4l7lj3ajk19vi6ccxw82x2gl"))))
    (properties `((upstream-name . "thestats")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://github.com/analyticsresearchlab/thestats")
    (synopsis "R Package for Exploring Turkish Higher Education Statistics")
    (description
     "This package provides a user-friendly R data package that is intended to make
Turkish higher education statistics more accessible.")
    (license license:gpl3)))

(define-public r-thesface
  (package
    (name "r-thesface")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TheSFACE" version))
              (sha256
               (base32
                "07n3nw95qc6xd9jqv60lmkh8nqbs7jsklngc80560j4znbixfw40"))))
    (properties `((upstream-name . "TheSFACE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-purrr
                             r-nnet
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=TheSFACE")
    (synopsis "The Subtype Free Average Causal Effect")
    (description
     "Estimation of the SF-ACE, a Causal Inference estimand proposed in the paper \"The
Subtype-Free Average Causal Effect For Heterogeneous Disease Etiology\" (soon on
arXiv).")
    (license license:gpl2+)))

(define-public r-thermocouple
  (package
    (name "r-thermocouple")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thermocouple" version))
              (sha256
               (base32
                "1rlvhw3i83iq1vibli84gj67d98whvgkxafwpmisva1m4s1bmij4"))))
    (properties `((upstream-name . "thermocouple")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=thermocouple")
    (synopsis "Temperature Measurement with Thermocouples, RTD and IC Sensors")
    (description
     "Temperature measurement data, equations and methods for thermocouples, wire RTD,
thermistors, IC thermometers, bimetallic strips and the ITS-90.")
    (license license:gpl3+)))

(define-public r-thermindex
  (package
    (name "r-thermindex")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThermIndex" version))
              (sha256
               (base32
                "0s9d55577dq61qixwwfwmqc2k2c8my00j2ng97ng42cw0jc7aylm"))))
    (properties `((upstream-name . "ThermIndex")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ThermIndex")
    (synopsis "Calculate Thermal Indexes")
    (description
     "Calculates several thermal comfort indexes using temperature, wind speed and
relative humidity values, calculating indexes such as Humidex, windchill,
Discomfort Index and others.")
    (license license:gpl2+)))

(define-public r-thermimage
  (package
    (name "r-thermimage")
    (version "4.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Thermimage" version))
              (sha256
               (base32
                "1623r64v97ii8qq6cfrg0jrdl7nwxswjgif5l85vak8xjkfwsq7q"))))
    (properties `((upstream-name . "Thermimage")))
    (build-system r-build-system)
    (inputs (list perl-image-exiftool perl imagemagick ffmpeg))
    (propagated-inputs (list r-tiff r-png))
    (home-page "https://cran.r-project.org/package=Thermimage")
    (synopsis "Thermal Image Analysis")
    (description
     "This package provides a collection of functions and routines for inputting
thermal image video files, plotting and converting binary raw data into
estimates of temperature.  First published 2015-03-26.  Written primarily for
research purposes in biological applications of thermal images.  v1 included the
base calculations for converting thermal image binary values to temperatures.
v2 included additional equations for providing heat transfer calculations and an
import function for thermal image files (v2.2.3 fixed error importing thermal
image to windows OS).  v3.  Added numerous functions for converting thermal
image, videos, rewriting and exporting.  v3.1.  Added new functions to convert
files.  v3.2.  Fixed the various functions related to finding frame times.
v4.0.  fixed an error in atmospheric attenuation constants, affecting raw2temp
and temp2raw functions.  Recommend update for use with long distance
calculations.  v.4.1.3 changed to frameLocates to reflect change to
as.character() to format().")
    (license license:gpl2+)))

(define-public r-thermalsampler
  (package
    (name "r-thermalsampler")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThermalSampleR" version))
              (sha256
               (base32
                "1cl14scgczsc9xvvp5cjk548a48a7vmnc6dgsdhl8bqlkkrp1aly"))))
    (properties `((upstream-name . "ThermalSampleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-sn
                             r-rlang
                             r-purrr
                             r-mass
                             r-magrittr
                             r-janitor
                             r-ggplot2
                             r-envstats
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ThermalSampleR")
    (synopsis
     "Calculate Sample Sizes Required for Critical Thermal Limits Experiments")
    (description
     "We present a range of simulations to aid researchers in determining appropriate
sample sizes when performing critical thermal limits studies (e.g. CTmin/CTmin
experiments).  A number of wrapper functions are provided for plotting and
summarising outputs from these simulations.  These simulations are presented in
Owen, C., Sutton, G., Martin, G., van Steenderen, C., and Coetzee, J. Sample
size determination for critical thermal limits studies.  2022.  Physiological
Entomology.  Under review.  The GUI version of this package is available on the
R Shiny online server at:
<https://clarkevansteenderen.shinyapps.io/ThermalSampleR_Shiny/> , or it is
accessible via GitHub at
<https://github.com/clarkevansteenderen/ThermalSampleR_Shiny/>.  We would like
to thank Grant Duffy (University of Otago, Dundedin, New Zealand) for granting
us permission to use the source code for the Test of Total Equivalency function.")
    (license license:gpl3)))

(define-public r-themis
  (package
    (name "r-themis")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "themis" version))
              (sha256
               (base32
                "0ink3ixal4942w1sbqjdhxpl7j0aqvksyiiz9ddd72wk30cvpwaw"))))
    (properties `((upstream-name . "themis")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rose
                             r-rlang
                             r-recipes
                             r-rann
                             r-purrr
                             r-lifecycle
                             r-hardhat
                             r-gower
                             r-glue
                             r-generics
                             r-dplyr))
    (home-page "https://github.com/tidymodels/themis")
    (synopsis "Extra Recipes Steps for Dealing with Unbalanced Data")
    (description
     "This package provides a dataset with an uneven number of cases in each class is
said to be unbalanced.  Many models produce a subpar performance on unbalanced
datasets.  A dataset can be balanced by increasing the number of minority cases
using SMOTE 2011 <arXiv:1106.1813>, BorderlineSMOTE 2005
<doi:10.1007/11538059_91> and ADASYN 2008
<https://ieeexplore.ieee.org/document/4633969>.  Or by decreasing the number of
majority cases using NearMiss 2003
<https://www.site.uottawa.ca/~nat/Workshop2003/jzhang.pdf> or Tomek link removal
1976 <https://ieeexplore.ieee.org/document/4309452>.")
    (license license:expat)))

(define-public r-thematic
  (package
    (name "r-thematic")
    (version "0.1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thematic" version))
              (sha256
               (base32
                "1hr9373256n1rya3l2z2sqwfifypsh6wrs2s27aqchh9sm0blkmy"))))
    (properties `((upstream-name . "thematic")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rstudioapi
                             r-rlang
                             r-rappdirs
                             r-ggplot2
                             r-farver))
    (home-page "https://rstudio.github.io/thematic/")
    (synopsis
     "Unified and Automatic 'Theming' of 'ggplot2', 'lattice', and 'base' R Graphics")
    (description
     "Theme ggplot2', lattice', and base graphics based on a few choices, including
foreground color, background color, accent color, and font family.  Fonts that
aren't available on the system, but are available via download on Google Fonts',
can be automatically downloaded, cached, and registered for use with the
showtext and ragg packages.")
    (license license:expat)))

(define-public r-theiar
  (package
    (name "r-theiar")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "theiaR" version))
              (sha256
               (base32
                "07m532r67cil2ya2w9lfhycrm8n0ga0r3x7jwbp5jbd83hw4l1p6"))))
    (properties `((upstream-name . "theiaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-raster r-r6 r-httr r-askpass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/norival/theiaR")
    (synopsis "Download and Manage Data from Theia")
    (description
     "This package provides a simple interface to search available data provided by
Theia (<https://theia.cnes.fr>), download it, and manage it.  Data can be
downloaded based on a search result or from a cart file downloaded from Theia
website.")
    (license license:gpl3+)))

(define-public r-theft
  (package
    (name "r-theft")
    (version "0.4.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "theft" version))
              (sha256
               (base32
                "17fria37d345qy2wid8f2h2yz12csdz6z8c7658sfq1lsqr6n6a6"))))
    (properties `((upstream-name . "theft")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsibble
                             r-tsfeatures
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rtsne
                             r-rlang
                             r-reticulate
                             r-reshape2
                             r-rcatch22
                             r-r-matlab
                             r-purrr
                             r-janitor
                             r-ggplot2
                             r-feasts
                             r-fabletools
                             r-dplyr
                             r-caret
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://hendersontrent.github.io/theft/")
    (synopsis "Tools for Handling Extraction of Features from Time Series")
    (description
     "Consolidates and calculates different sets of time-series features from multiple
R and Python packages including Rcatch22 Henderson, T. (2021)
<doi:10.5281/zenodo.5546815>, feasts O'Hara-Wild, M., Hyndman, R., and Wang, E.
(2021) <https://CRAN.R-project.org/package=feasts>, tsfeatures Hyndman, R.,
Kang, Y., Montero-Manso, P., Talagala, T., Wang, E., Yang, Y., and O'Hara-Wild,
M. (2020) <https://CRAN.R-project.org/package=tsfeatures>, tsfresh Christ, M.,
Braun, N., Neuffer, J., and Kempa-Liehr A.W. (2018)
<doi:10.1016/j.neucom.2018.03.067>, TSFEL Barandas, M., et al. (2020)
<doi:10.1016/j.softx.2020.100456>, and Kats Facebook Infrastructure Data Science
(2021) <https://facebookresearch.github.io/Kats/>.  Provides a standardised
workflow from feature calculation to feature processing, machine learning
classification procedures, and the production of statistical graphics.")
    (license license:expat)))

(define-public r-thankyoustars
  (package
    (name "r-thankyoustars")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ThankYouStars" version))
              (sha256
               (base32
                "0r77ns3102wj1wvrfsa06l427imxyfhigpbs36cdxl2j87qrjzl6"))))
    (properties `((upstream-name . "ThankYouStars")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/ksmzn/ThankYouStars")
    (synopsis "Give your Dependencies Stars on GitHub!")
    (description
     "This package provides a tool for starring GitHub repositories.")
    (license license:expat)))

(define-public r-thankr
  (package
    (name "r-thankr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thankr" version))
              (sha256
               (base32
                "089ikp85d5ia6a1qzmw8dkgcmz628cibmwfzcpk7m3ii8acxq91w"))))
    (properties `((upstream-name . "thankr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=thankr")
    (synopsis "Find Out Who Maintains the Packages you Use")
    (description
     "Find out who maintains the packages you use in your current session or in your
package library and maybe say thank you'.")
    (license license:expat)))

(define-public r-thaipdf
  (package
    (name "r-thaipdf")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "thaipdf" version))
              (sha256
               (base32
                "03h03bmw6q60jc80z14k7hpli0knhfbmhns0inbz0nhvisfzmsbq"))))
    (properties `((upstream-name . "thaipdf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-fs r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://lightbridge-ks.github.io/thaipdf/")
    (synopsis "R Markdown to PDF in Thai Language")
    (description
     "Provide R Markdown templates and LaTeX preamble which are necessary for creating
PDF from R Markdown documents in Thai language.")
    (license license:expat)))

(define-public r-tgver
  (package
    (name "r-tgver")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tgver" version))
              (sha256
               (base32
                "1kw622xcjhca7k178q3wpmjyidjifvql9xpg2ai8842qhgz14bm0"))))
    (properties `((upstream-name . "tgver")))
    (build-system r-build-system)
    (propagated-inputs (list r-plumber r-geojsonsf r-callr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tgve/tgver")
    (synopsis "Turing Geovisualization Engine R package")
    (description
     "Turing Geovisualization Engine R package for geospatial visualization and
analysis.")
    (license license:expat)))

(define-public r-tgst
  (package
    (name "r-tgst")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TGST" version))
              (sha256
               (base32
                "1xnb41ksggdi57gnkjaab98c4nfdkxqx53rv9pyh3j0cg0kbkk9v"))))
    (properties `((upstream-name . "TGST")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TGST")
    (synopsis "Targeted Gold Standard Testing")
    (description
     "This package provides functions for implementing the targeted gold standard (GS)
testing.  You provide the true disease or treatment failure status and the risk
score, tell TGST the availability of GS tests and which method to use, and it
returns the optimal tripartite rules.  Please refer to Liu et al. (2013)
<doi:10.1080/01621459.2013.810149> for more details.")
    (license license:gpl3)))

(define-public r-tgs
  (package
    (name "r-tgs")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TGS" version))
              (sha256
               (base32
                "01mwdlgfjlxy0q5lxcmzk6lsb806987va7yag0zpjjd2bzmdh70k"))))
    (properties `((upstream-name . "TGS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjson
                             r-minet
                             r-ggm
                             r-foreach
                             r-doparallel
                             r-bnstruct))
    (native-inputs (list r-knitr))
    (home-page "https://www.biorxiv.org/content/early/2018/06/14/272484")
    (synopsis "Rapid Reconstruction of Time-Varying Gene Regulatory Networks")
    (description
     "Rapid advancements in high-throughput gene sequencing technologies have resulted
in genome-scale time-series datasets.  Uncovering the underlying temporal
sequence of gene regulatory events in the form of time-varying gene regulatory
networks demands accurate and computationally efficient algorithms.  Such an
algorithm is TGS'.  It is proposed in Saptarshi Pyne, Alok Ranjan Kumar, and
Ashish Anand.  Rapid reconstruction of time-varying gene regulatory networks.
IEEE/ACM Transactions on Computational Biology and Bioinformatics,
17(1):278{291, Jan-Feb 2020.  The TGS algorithm is shown to consume only 29
minutes for a microarray dataset with 4028 genes.  This package provides an
implementation of the TGS algorithm and its variants.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-tgram
  (package
    (name "r-tgram")
    (version "0.2-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tgram" version))
              (sha256
               (base32
                "0vlnry8drq3fqfy8dk50pcwcx9dj657kx6s19fs2b6acigkr4g7w"))))
    (properties `((upstream-name . "tgram")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo))
    (home-page "https://cran.r-project.org/package=tgram")
    (synopsis "Compute and Plot Tracheidograms")
    (description
     "This package provides functions to compute and plot tracheidograms, as in De
Soto et al. (2011) <doi:10.1139/x11-045>.")
    (license license:gpl2+)))

(define-public r-tgp
  (package
    (name "r-tgp")
    (version "2.4-21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tgp" version))
              (sha256
               (base32
                "12ifd7rm3wskhbpnhfvz92z3graxzryq0iy1jiqmdk6bvhxkiww8"))))
    (properties `((upstream-name . "tgp")))
    (build-system r-build-system)
    (propagated-inputs (list r-maptree))
    (home-page "https://bobby.gramacy.com/r_packages/tgp/")
    (synopsis "Bayesian Treed Gaussian Process Models")
    (description
     "Bayesian nonstationary, semiparametric nonlinear regression and design by treed
Gaussian processes (GPs) with jumps to the limiting linear model (LLM).  Special
cases also implemented include Bayesian linear models, CART, treed linear
models, stationary separable and isotropic GPs, and GP single-index models.
Provides 1-d and 2-d plotting functions (with projection and slice capabilities)
and tree drawing, designed for visualization of tgp-class output.  Sensitivity
analysis and multi-resolution models are supported.  Sequential experimental
design and adaptive sampling functions are also provided, including ALM, ALC,
and expected improvement.  The latter supports derivative-free optimization of
noisy black-box functions.  For details and tutorials, see Gramacy (2007)
<doi:10.18637/jss.v019.i09> and Gramacy & Taddy (2010)
<doi:10.18637/jss.v033.i06>.")
    (license license:lgpl2.0+)))

(define-public r-tglkmeans
  (package
    (name "r-tglkmeans")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tglkmeans" version))
              (sha256
               (base32
                "0ldbq2pjmvw8m698s9zvvk38qiysz44r6s8v9bs8i7i7vjpwj62y"))))
    (properties `((upstream-name . "tglkmeans")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-tgstat
                             r-rcpp
                             r-purrr
                             r-plyr
                             r-magrittr
                             r-ggplot2
                             r-future
                             r-dplyr
                             r-dofuture))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tglkmeans")
    (synopsis "Efficient Implementation of K-Means++ Algorithm")
    (description
     "Efficient implementation of K-Means++ algorithm.  For more information see (1)
\"kmeans++ the advantages of the k-means++ algorithm\" by David Arthur and Sergei
Vassilvitskii (2007), Proceedings of the eighteenth annual ACM-SIAM symposium on
Discrete algorithms, Society for Industrial and Applied Mathematics,
Philadelphia, PA, USA, pp.  1027-1035,
<http://ilpubs.stanford.edu:8090/778/1/2006-13.pdf>, and (2) \"The Effectiveness
of Lloyd-Type Methods for the k-Means Problem\" by Rafail Ostrovsky, Yuval
Rabani, Leonard J. Schulman and Chaitanya Swamy <doi:10.1145/2395116.2395117>.")
    (license license:expat)))

(define-public r-tggd
  (package
    (name "r-tggd")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tggd" version))
              (sha256
               (base32
                "1izar1b3w148vp2r8gv3vpwfndib8ilxcjxgbfzbxn7q5mr73mwa"))))
    (properties `((upstream-name . "tggd")))
    (build-system r-build-system)
    (propagated-inputs (list r-gsl))
    (home-page "https://cran.r-project.org/package=tggd")
    (synopsis
     "The Standard Distribution Functions for the Truncated Generalised Gamma Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
Truncated Generalised Gamma Distribution (also in log10(x) and ln(x) space).")
    (license license:gpl3)))

(define-public r-tgcd
  (package
    (name "r-tgcd")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tgcd" version))
              (sha256
               (base32
                "1zsmard9vai0m4gz5mf5b9qqv6i7h5xhv1mbs2sc0kcznk28jirn"))))
    (properties `((upstream-name . "tgcd")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://CRAN.R-project.org/package=tgcd")
    (synopsis "Thermoluminescence Glow Curve Deconvolution")
    (description
     "Deconvolving thermoluminescence glow curves according to various kinetic models
(first-order, second-order, general-order, and mixed-order) using a modified
Levenberg-Marquardt algorithm (More, 1978) <DOI:10.1007/BFb0067700>.  It
provides the possibility of setting constraints or fixing any of parameters.  It
offers an interactive way to initialize parameters by clicking with a mouse on a
plot at positions where peak maxima should be located.  The optimal estimate is
obtained by \"trial-and-error\".  It also provides routines for simulating
first-order, second-order, and general-order glow peaks.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-tgamtheme
  (package
    (name "r-tgamtheme")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tgamtheme" version))
              (sha256
               (base32
                "1igv6vl3vqqx8pbvj5qr21cjphpizq3b5sjss359bhw2gy747npl"))))
    (properties `((upstream-name . "tgamtheme")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/globeandmail/tgamtheme")
    (synopsis "Globe and Mail Graphics Theme for 'ggplot2'")
    (description
     "Theme and colour palettes for The Globe and Mail's graphics.  Includes colour
and fill scale functions, colour palette helpers and a Globe-styled ggplot2
theme object.")
    (license license:expat)))

(define-public r-tfse
  (package
    (name "r-tfse")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfse" version))
              (sha256
               (base32
                "05q75xsiy955xwgchagk7l7725y6mylp5lj5284xm7y2xh197zp3"))))
    (properties `((upstream-name . "tfse")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dapr))
    (home-page "https://tfse.mikewk.com")
    (synopsis "Tools for Script Editing")
    (description
     "This package provides a collection of useful tools for programming and
writing-scripts.  Several functions are simple wrappers around base R functions
that extend their functionality while also providing some convenient
propertiesâregular expression functions that automatically detect look-ahead
and look-behind statements, a read-line function that suppresses
incomplete-final-line warnings and automatically opens and closes connections, a
version of substrings that starts from the end of strings, etc.  Other functions
are useful for checking whether packages are installed, omitting missing data,
and showing in-use connections.")
    (license license:expat)))

(define-public r-tfrmt
  (package
    (name "r-tfrmt")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfrmt" version))
              (sha256
               (base32
                "1b8fzvi5nz8y3dl7vkcixg307nxhb9mcvpzx2sbfbafd0kknvnxk"))))
    (properties `((upstream-name . "tfrmt")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-gt
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (home-page "https://GSK-Biostatistics.github.io/tfrmt/")
    (synopsis "Applies Display Metadata to Analysis Results Datasets")
    (description
     "This package creates a framework to store and apply display metadata to Analysis
Results Datasets (ARDs).  The use of tfrmt allows users to define table format
and styling without the data, and later apply the format to the data.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-tframeplus
  (package
    (name "r-tframeplus")
    (version "2022.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tframePlus" version))
              (sha256
               (base32
                "1axrvfigdmwmas0q3qlmk4m7jybqcssjgmyww2knp8jw7kp212vy"))))
    (properties `((upstream-name . "tframePlus")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries r-tframe))
    (home-page "http://tsanalysis.r-forge.r-project.org/")
    (synopsis "Time Frame Coding Kernel Extensions")
    (description "Extensions and additional tframe utilities.")
    (license license:gpl2)))

(define-public r-tframe
  (package
    (name "r-tframe")
    (version "2015.12-1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tframe" version))
              (sha256
               (base32
                "1yff22jzh1mp73zbz2mav6z8m42lylfjhb8dgxj4337fv3if3i13"))))
    (properties `((upstream-name . "tframe")))
    (build-system r-build-system)
    (home-page "http://tsanalysis.r-forge.r-project.org/")
    (synopsis "Time Frame Coding Kernel")
    (description
     "This package provides a kernel of functions for programming time series methods
in a way that is relatively independently of the representation of time.  Also
provides plotting, time windowing, and some other utility functions which are
specifically intended for time series.  See the Guide distributed as a vignette,
or ?tframe.Intro for more details. (User utilities are in package tfplot.)")
    (license license:gpl2)))

(define-public r-tfprobability
  (package
    (name "r-tfprobability")
    (version "0.15.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfprobability" version))
              (sha256
               (base32
                "0as8lciyh463x91gv290zzp9sjsrrvgcwiliyi9y5dp0qbj4505x"))))
    (properties `((upstream-name . "tfprobability")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorflow r-reticulate r-magrittr r-keras))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rstudio/tfprobability")
    (synopsis "Interface to 'TensorFlow Probability'")
    (description
     "Interface to TensorFlow Probability', a Python library built on TensorFlow that
makes it easy to combine probabilistic models and deep learning on modern
hardware ('TPU', GPU').  TensorFlow Probability includes a wide selection of
probability distributions and bijectors, probabilistic layers, variational
inference, Markov chain Monte Carlo, and optimizers such as Nelder-Mead, BFGS,
and SGLD.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-tfplot
  (package
    (name "r-tfplot")
    (version "2021.6-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfplot" version))
              (sha256
               (base32
                "0w0m9d2lvjl96vxwvks2v086y4gqiv2n0d50j2yrngys9p2nrlxc"))))
    (properties `((upstream-name . "tfplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-tframe))
    (home-page "http://tsanalysis.r-forge.r-project.org/")
    (synopsis "Time Frame User Utilities")
    (description
     "Utilities for simple manipulation and quick plotting of time series data.  These
utilities use the tframe package which provides a programming kernel for time
series.  Extensions to tframe provided in tframePlus can also be used.  See the
Guide vignette for examples.")
    (license license:gpl2)))

(define-public r-tfio
  (package
    (name "r-tfio")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfio" version))
              (sha256
               (base32
                "089vh0k12z0ymk4v585hfnl5yqp28rgzqgy633m874h6fqzhhxvp"))))
    (properties `((upstream-name . "tfio")))
    (build-system r-build-system)
    (propagated-inputs (list r-tfdatasets r-tensorflow r-reticulate r-magrittr
                             r-forge))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tensorflow/io")
    (synopsis "Interface to 'TensorFlow IO'")
    (description
     "Interface to TensorFlow IO', Datasets and filesystem extensions maintained by
`TensorFlow SIG-IO`
<https://github.com/tensorflow/community/blob/master/sigs/io/CHARTER.md>.")
    (license license:asl2.0)))

(define-public r-tfhub
  (package
    (name "r-tfhub")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfhub" version))
              (sha256
               (base32
                "19wbmdh31wsqmxwsm7ks3j5n60my49b3safp587cpwf0y70rihsi"))))
    (properties `((upstream-name . "tfhub")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-tensorflow r-rstudioapi r-reticulate
                             r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rstudio/tfhub")
    (synopsis "Interface to 'TensorFlow' Hub")
    (description
     "TensorFlow Hub is a library for the publication, discovery, and consumption of
reusable parts of machine learning models.  A module is a self-contained piece
of a TensorFlow graph, along with its weights and assets, that can be reused
across different tasks in a process known as transfer learning.  Transfer
learning train a model with a smaller dataset, improve generalization, and speed
up training.")
    (license license:asl2.0)))

(define-public r-tfevents
  (package
    (name "r-tfevents")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfevents" version))
              (sha256
               (base32
                "13aic0qx5b5xnp1xvnm9xbmqbc083g9y7977a95hkf6s7nxhgs6c"))))
    (properties `((upstream-name . "tfevents")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-zeallot
                             r-withr
                             r-vctrs
                             r-rlang
                             r-rcpp
                             r-png
                             r-fs
                             r-ellipsis
                             r-digest
                             r-cli
                             r-blob))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/mlverse/tfevents")
    (synopsis "Write Events for 'TensorBoard'")
    (description
     "This package provides a convenient way to log scalars, images, audio, and
histograms in the tfevent record file format.  Logged data can be visualized on
the fly using TensorBoard', a web based tool that focuses on visualizing the
training progress of machine learning models.")
    (license license:expat)))

(define-public r-tfestimators
  (package
    (name "r-tfestimators")
    (version "1.9.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfestimators" version))
              (sha256
               (base32
                "1gwj2xal5an0m9c2x1rxzsg07hgzjyxr4m08sd3salgyc2h3bi5g"))))
    (properties `((upstream-name . "tfestimators")))
    (build-system r-build-system)
    (inputs (list tensorflow))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-tfruns
                             r-tensorflow
                             r-rlang
                             r-reticulate
                             r-purrr
                             r-progress
                             r-magrittr
                             r-forge))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rstudio/tfestimators")
    (synopsis "Interface to 'TensorFlow' Estimators")
    (description
     "Interface to TensorFlow Estimators <https://www.tensorflow.org/guide/estimator>,
a high-level API that provides implementations of many different model types
including linear models and deep neural networks.")
    (license license:asl2.0)))

(define-public r-tfer
  (package
    (name "r-tfer")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfer" version))
              (sha256
               (base32
                "1a5i9jccj39n61ixx8q2qq9ismr43jybp0vlvy6jda99r92zdhhl"))))
    (properties `((upstream-name . "tfer")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tfer")
    (synopsis "Forensic Glass Transfer Probabilities")
    (description
     "Statistical interpretation of forensic glass transfer (Simulation of the
probability distribution of recovered glass fragments).")
    (license license:gpl2)))

(define-public r-tfdeploy
  (package
    (name "r-tfdeploy")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfdeploy" version))
              (sha256
               (base32
                "1vbxyvmzaafbwp1pmvzn16zyl4nz85787m79gn7iazh9zw9f7j34"))))
    (properties `((upstream-name . "tfdeploy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorflow
                             r-swagger
                             r-reticulate
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-httpuv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tfdeploy")
    (synopsis "Deploy 'TensorFlow' Models")
    (description
     "Tools to deploy TensorFlow <https://www.tensorflow.org/> models across multiple
services.  Currently, it provides a local server for testing cloudml compatible
services.")
    (license license:asl2.0)))

(define-public r-tfdatasets
  (package
    (name "r-tfdatasets")
    (version "2.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfdatasets" version))
              (sha256
               (base32
                "1q8zznwjjx809qvfjg07dhprqcsibzwq9i5sj377y4ypychxq2nl"))))
    (properties `((upstream-name . "tfdatasets")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tensorflow
                             r-rlang
                             r-reticulate
                             r-magrittr
                             r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rstudio/tfdatasets")
    (synopsis "Interface to 'TensorFlow' Datasets")
    (description
     "Interface to TensorFlow Datasets, a high-level library for building complex
input pipelines from simple, re-usable pieces.  See
<https://www.tensorflow.org/guide> for additional details.")
    (license license:asl2.0)))

(define-public r-tfcox
  (package
    (name "r-tfcox")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfCox" version))
              (sha256
               (base32
                "06mbiz1jwp8mv5dbwyvdvy1wpp8s3xp9hhsm94vrbvjaxg680g28"))))
    (properties `((upstream-name . "tfCox")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpp))
    (home-page "https://cran.r-project.org/package=tfCox")
    (synopsis
     "Fits Piecewise Polynomial with Data-Adaptive Knots in Cox Model")
    (description
     "In Cox's proportional hazard model, covariates are modeled as linear function
and may not be flexible.  This package implements additive trend filtering Cox
proportional hazards model as proposed in Jiacheng Wu & Daniela Witten (2019)
\"Flexible and Interpretable Models for Survival Data\", Journal of Computational
and Graphical Statistics, <DOI:10.1080/10618600.2019.1592758>.  The fitted
functions are piecewise polynomial with adaptively chosen knots.")
    (license license:gpl2+)))

(define-public r-tfarima
  (package
    (name "r-tfarima")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfarima" version))
              (sha256
               (base32
                "1vql4592js9kzv3466dn57dfx19w6i573nh933v2gcnr6mlzhiga"))))
    (properties `((upstream-name . "tfarima")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-rcpparmadillo r-rcpp r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gallegoj/tfarima")
    (synopsis "Transfer Function and ARIMA Models")
    (description
     "Building customized transfer function and ARIMA models with multiple operators
and parameter restrictions.  Functions for model identification, model
estimation (exact or conditional maximum likelihood), model diagnostic checking,
automatic outlier detection, calendar effects, forecasting and seasonal
adjustment.  See Bell and Hillmer (1983) <doi:10.1080/01621459.1983.10478005>,
Box, Jenkins, Reinsel and Ljung <ISBN:978-1-118-67502-1>, Box, Pierce and
Newbold (1987) <doi:10.1080/01621459.1987.10478430>, Box and Tiao (1975)
<doi:10.1080/01621459.1975.10480264>, Chen and Liu (1993)
<doi:10.1080/01621459.1993.10594321>.")
    (license license:gpl2)))

(define-public r-tfaddons
  (package
    (name "r-tfaddons")
    (version "0.10.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tfaddons" version))
              (sha256
               (base32
                "16adig97qmafval6i29pqdinsgbwjz2isajxdx1xvbf1mrawkmz0"))))
    (properties `((upstream-name . "tfaddons")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorflow r-rstudioapi r-reticulate r-purrr
                             r-keras))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/henry090/tfaddons")
    (synopsis "Interface to 'TensorFlow SIG Addons'")
    (description
     "TensorFlow SIG Addons <https://www.tensorflow.org/addons> is a repository of
community contributions that conform to well-established API patterns, but
implement new functionality not available in core TensorFlow'.  TensorFlow
natively supports a large number of operators, layers, metrics, losses,
optimizers, and more.  However, in a fast moving field like Machine Learning,
there are many interesting new developments that cannot be integrated into core
TensorFlow (because their broad applicability is not yet clear, or it is mostly
used by a smaller subset of the community).")
    (license license:asl2.0)))

(define-public r-textutils
  (package
    (name "r-textutils")
    (version "0.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textutils" version))
              (sha256
               (base32
                "07grvvhs62caa37rav1v37816x6pdk0m5nd4isiw00966ydwy9ch"))))
    (properties `((upstream-name . "textutils")))
    (build-system r-build-system)
    (home-page "http://enricoschumann.net/R/packages/textutils/")
    (synopsis "Utilities for Handling Strings and Text")
    (description
     "Utilities for handling character vectors that store human-readable text (either
plain or with markup, such as HTML or LaTeX).  The package provides, in
particular, functions that help with the preparation of plain-text reports, e.g.
for expanding and aligning strings that form the lines of such reports.  The
package also provides generic functions for transforming R objects to HTML and
to plain text.")
    (license license:gpl3)))

(define-public r-texttools
  (package
    (name "r-texttools")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textTools" version))
              (sha256
               (base32
                "1d9j1bj17ki169h4lmlz2b2c2m60q6b95prjscz346lc4vw5160a"))))
    (properties `((upstream-name . "textTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://cran.r-project.org/package=textTools")
    (synopsis "Functions for Text Cleansing and Text Analysis")
    (description
     "This package provides a framework for text cleansing and analysis.  Conveniently
prepare and process large amounts of text for analysis.  Includes various
metrics for word counts/frequencies that scale efficiently.  Quickly analyze
large amounts of text data using a text.table (a data.table created with one
word (or unit of text analysis) per row, similar to the tidytext format).
Offers flexibility to efficiently work with text data stored in vectors as well
as text data formatted as a text.table.")
    (license license:gpl2+)))

(define-public r-texttinyr
  (package
    (name "r-texttinyr")
    (version "1.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textTinyR" version))
              (sha256
               (base32
                "17c3vciqx2i0h0jkqsiva8kp6pwcrscwgyxf804sjvdbym0pwc7d"))))
    (properties `((upstream-name . "textTinyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-matrix
                             r-data-table
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/textTinyR")
    (synopsis "Text Processing for Small or Big Data Files")
    (description
     "It offers functions for splitting, parsing, tokenizing and creating a vocabulary
for big text data files.  Moreover, it includes functions for building a
document-term matrix and extracting information from those (term-associations,
most frequent terms).  It also embodies functions for calculating token
statistics (collocations, look-up tables, string dissimilarities) and functions
to work with sparse matrices.  Lastly, it includes functions for Word Vector
Representations (i.e.  GloVe', fasttext') and incorporates functions for the
calculation of (pairwise) text document dissimilarities.  The source code is
based on C++11 and exported in R through the Rcpp', RcppArmadillo and BH
packages.")
    (license license:gpl3)))

(define-public r-textstem
  (package
    (name "r-textstem")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textstem" version))
              (sha256
               (base32
                "1pbhi5ia3w16vsix2x3if51zd2v9bcv0j4lj9hfikgq1yz9zxmw2"))))
    (properties `((upstream-name . "textstem")))
    (build-system r-build-system)
    (propagated-inputs (list r-textshape
                             r-textclean
                             r-stringi
                             r-snowballc
                             r-quanteda
                             r-lexicon
                             r-korpus-lang-en
                             r-korpus
                             r-hunspell
                             r-dplyr))
    (home-page "http://github.com/trinker/textstem")
    (synopsis "Tools for Stemming and Lemmatizing Text")
    (description
     "Tools that stem and lemmatize text.  Stemming is a process that removes endings
such as affixes.  Lemmatization is the process of grouping inflected forms
together as a single base form.")
    (license license:gpl2)))

(define-public r-textreuse
  (package
    (name "r-textreuse")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textreuse" version))
              (sha256
               (base32
                "1mva0f6pk0kpfw0vf90qw3a25f1i3imdhk2s7hxyzans0z2237jd"))))
    (properties `((upstream-name . "textreuse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rcppprogress
                             r-rcpp
                             r-nlp
                             r-dplyr
                             r-digest
                             r-bh
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/textreuse")
    (synopsis "Detect Text Reuse and Document Similarity")
    (description
     "Tools for measuring similarity among documents and detecting passages which have
been reused.  Implements shingled n-gram, skip n-gram, and other tokenizers;
similarity/dissimilarity functions; pairwise comparisons; minhash and locality
sensitive hashing algorithms; and a version of the Smith-Waterman local
alignment algorithm suitable for natural language.")
    (license license:expat)))

(define-public r-textreg
  (package
    (name "r-textreg")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textreg" version))
              (sha256
               (base32
                "0h44z5hyndnvzd9axix7gpmhbdx347dfgxw9r8w38kyw6dklbjy6"))))
    (properties `((upstream-name . "textreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-rcpp r-nlp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=textreg")
    (synopsis "n-Gram Text Regression, aka Concise Comparative Summarization")
    (description
     "Function for sparse regression on raw text, regressing a labeling vector onto a
feature space consisting of all possible phrases.")
    (license license:expat)))

(define-public r-textrecipes
  (package
    (name "r-textrecipes")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textrecipes" version))
              (sha256
               (base32
                "1m6g60g3rbn5rw7pcdp2aq71w1wfkc9r1aiqx47qsfaalrpdg6i2"))))
    (properties `((upstream-name . "textrecipes")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-vctrs
                             r-tokenizers
                             r-tibble
                             r-snowballc
                             r-rlang
                             r-recipes
                             r-purrr
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-generics
                             r-dplyr
                             r-cpp11))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tidymodels/textrecipes")
    (synopsis "Extra 'Recipes' for Text Processing")
    (description
     "Converting text to numerical features requires specifically created procedures,
which are implemented as steps according to the recipes package.  These steps
allows for tokenization, filtering, counting (tf and tfidf) and feature hashing.")
    (license license:expat)))

(define-public r-textrank
  (package
    (name "r-textrank")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textrank" version))
              (sha256
               (base32
                "0a777wchiax0y8jprvz5xw8h1xh7yvad0wrqhkgbqy5p3cvlcih6"))))
    (properties `((upstream-name . "textrank")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-digest r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bnosac/textrank")
    (synopsis "Summarize Text by Ranking Sentences and Finding Keywords")
    (description
     "The textrank algorithm is an extension of the Pagerank algorithm for text.  The
algorithm allows to summarize text by calculating how sentences are related to
one another.  This is done by looking at overlapping terminology used in
sentences in order to set up links between sentences.  The resulting sentence
network is next plugged into the Pagerank algorithm which identifies the most
important sentences in your text and ranks them.  In a similar way textrank can
also be used to extract keywords.  A word network is constructed by looking if
words are following one another.  On top of that network the Pagerank algorithm
is applied to extract relevant words after which relevant words which are
following one another are combined to get keywords.  More information can be
found in the paper from Mihalcea, Rada & Tarau, Paul (2004)
<https://www.aclweb.org/anthology/W04-3252/>.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-textometry
  (package
    (name "r-textometry")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textometry" version))
              (sha256
               (base32
                "0frxwi3n7syjgjxgzc4ync9svd25bq2zyppiyrla1n85dawi3r8f"))))
    (properties `((upstream-name . "textometry")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=textometry")
    (synopsis "Textual Data Analysis Package Used by the TXM Software")
    (description
     "Statistical exploration of textual corpora using several methods from French
Textometrie (new name of Lexicometrie') and French Data Analysis schools.  It
includes methods for exploring irregularity of distribution of lexicon features
across text sets or parts of texts (Specificity analysis); multi-dimensional
exploration (Factorial analysis), etc.  Those methods are used in the TXM
software.")
    (license license:gpl3+)))

(define-public r-textmininggui
  (package
    (name "r-textmininggui")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TextMiningGUI" version))
              (sha256
               (base32
                "0hl4rswc3icwf11idk9ydrbd3ghz6mb1vnabknal0fxffpdi37dd"))))
    (properties `((upstream-name . "TextMiningGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm
                             r-tidytext
                             r-tidyr
                             r-tibble
                             r-syuzhet
                             r-slam
                             r-rcolorbrewer
                             r-ggwordcloud
                             r-ggplot2
                             r-dplyr))
    (home-page "https://c0reyes.github.io/TextMiningGUI/")
    (synopsis "Text Mining GUI Interface")
    (description
     "Graphic interface for text analysis, implement a few methods such as biplots,
correspondence analysis, co-occurrence, clustering, topic models, correlations
and sentiments.")
    (license license:gpl2+)))

(define-public r-textminer
  (package
    (name "r-textminer")
    (version "3.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textmineR" version))
              (sha256
               (base32
                "0qpl9fnrirxsvch97pjwws02x67p3dk6fizg7h4wcjaihibbbx3q"))))
    (properties `((upstream-name . "textmineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-text2vec
                             r-stringr
                             r-stopwords
                             r-rspectra
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-magrittr
                             r-gtools))
    (native-inputs (list r-knitr))
    (home-page "https://www.rtextminer.com/")
    (synopsis "Functions for Text Mining and Topic Modeling")
    (description
     "An aid for text mining in R, with a syntax that should be familiar to
experienced R users.  Provides a wrapper for several topic models that take
similarly-formatted input and give similarly-formatted output.  Has additional
functionality for analyzing and diagnostics for topic models.")
    (license license:expat)))

(define-public r-textir
  (package
    (name "r-textir")
    (version "2.0-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textir" version))
              (sha256
               (base32
                "0ban5qiinlxizqpcgafv4b5gwxlil6jdfarjd6l1m48awxh3mlnb"))))
    (properties `((upstream-name . "textir")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-gamlr r-distrom))
    (home-page "http://taddylab.com")
    (synopsis "Inverse Regression for Text Analysis")
    (description
     "Multinomial (inverse) regression inference for text documents and associated
attributes.  For details see: Taddy (2013 JASA) Multinomial Inverse Regression
for Text Analysis <arXiv:1012.2098> and Taddy (2015, AoAS), Distributed
Multinomial Regression, <arXiv:1311.6139>.  A minimalist partial least squares
routine is also included.  Note that the topic modeling capability of earlier
textir is now a separate package, maptpx'.")
    (license license:gpl3)))

(define-public r-textile
  (package
    (name "r-textile")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textile" version))
              (sha256
               (base32
                "069gb0j8ym44j1wk05xd3sixbvpxhhnhwax2gvyb9kbh5b99qpi6"))))
    (properties `((upstream-name . "textile")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=textile")
    (synopsis "Textile Images")
    (description
     "This package contains real images of the same textile material with/without
local defects, which were used in Bui and Apley (2018)
<doi:10.1080/00401706.2017.1302362>.")
    (license license:gpl2)))

(define-public r-textgrid
  (package
    (name "r-textgrid")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textgRid" version))
              (sha256
               (base32
                "1wi5vq5f7ixhz39l5hqi2jlmjjacx4lyrs4h8xfbd47pj6g16lc6"))))
    (properties `((upstream-name . "textgRid")))
    (build-system r-build-system)
    (home-page "www.praat.org")
    (synopsis "Praat TextGrid Objects in R")
    (description
     "The software application Praat can be used to annotate waveform data (e.g., to
mark intervals of interest or to label events). (See
<http://www.fon.hum.uva.nl/praat/> for more information about Praat.) These
annotations are stored in a Praat TextGrid object, which consists of a number of
interval tiers and point tiers.  An interval tier consists of sequential (i.e.,
not overlapping) labeled intervals.  A point tier consists of labeled events
that have no duration.  The textgRid package provides S4 classes, generics, and
methods for accessing information that is stored in Praat TextGrid objects.")
    (license license:gpl3)))

(define-public r-textforecast
  (package
    (name "r-textforecast")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TextForecast" version))
              (sha256
               (base32
                "0fjywwifkxpfyqhq6yrjy0ipnfr3lfgb179w993qj8f9nmdclrw1"))))
    (properties `((upstream-name . "TextForecast")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-udpipe
                             r-tm
                             r-tidytext
                             r-tidyr
                             r-rcolorbrewer
                             r-pracma
                             r-plyr
                             r-pdftools
                             r-matrix
                             r-glmnet
                             r-ggplot2
                             r-forecast
                             r-forcats
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lucasgodeiro/TextForecast")
    (synopsis
     "Regression Analysis and Forecasting Using Textual Data from a Time-Varying Dictionary")
    (description
     "This package provides functionalities based on the paper \"Time Varying
Dictionary and the Predictive Power of FED Minutes\" (Lima, 2018)
<doi:10.2139/ssrn.3312483>.  It selects the most predictive terms, that we call
time-varying dictionary using supervised machine learning techniques as lasso
and elastic net.")
    (license license:gpl3)))

(define-public r-textfeatures
  (package
    (name "r-textfeatures")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textfeatures" version))
              (sha256
               (base32
                "0x67kms7ipsadymc9jwja7wymav8y9kc5sbmp2vw4n4l89n32raa"))))
    (properties `((upstream-name . "textfeatures")))
    (build-system r-build-system)
    (propagated-inputs (list r-tokenizers
                             r-tibble
                             r-tfse
                             r-text2vec
                             r-rlang
                             r-purrr
                             r-dplyr))
    (home-page "https://github.com/mkearney/textfeatures")
    (synopsis "Extracts Features from Text")
    (description
     "This package provides a tool for extracting some generic features (e.g., number
of words, line breaks, characters per word, URLs, lower case, upper case,
commas, periods, exclamation points, etc.) from strings of text.")
    (license license:expat)))

(define-public r-texter
  (package
    (name "r-texter")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "texter" version))
              (sha256
               (base32
                "1vj1dlv2dyb3hyr60p91sh4p514i0m7gf86zk32xbdyv6k9zdkmf"))))
    (properties `((upstream-name . "texter")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytext
                             r-tidyr
                             r-textdata
                             r-stringr
                             r-stopwords
                             r-purrr
                             r-plyr
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/simmieyungie/texter")
    (synopsis "An Easy Text and Sentiment Analysis Library")
    (description
     "Implement text and sentiment analysis with texter'.  Generate sentiment scores
on text data and also visualize sentiments.  texter allows you to quickly
generate insights on your data.  It includes support for lexicons such as NRC
and Bing'.")
    (license license:expat)))

(define-public r-texteffect
  (package
    (name "r-texteffect")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "texteffect" version))
              (sha256
               (base32
                "1qcbr18h3vakh6ymw4axzqcqrpss6z68a592xl879b82l2nlq8a7"))))
    (properties `((upstream-name . "texteffect")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-ggplot2 r-boot))
    (home-page "https://cran.r-project.org/package=texteffect")
    (synopsis
     "Discovering Latent Treatments in Text Corpora and Estimating Their Causal Effects")
    (description
     "This package implements the approach described in Fong and Grimmer (2016)
<https://aclweb.org/anthology/P/P16/P16-1151.pdf> for automatically discovering
latent treatments from a corpus and estimating the average marginal component
effect (AMCE) of each treatment.  The data is divided into a training and test
set.  The supervised Indian Buffet Process (sibp) is used to discover latent
treatments in the training set.  The fitted model is then applied to the test
set to infer the values of the latent treatments in the test set.  Finally, Y is
regressed on the latent treatments in the test set to estimate the causal effect
of each treatment.")
    (license license:gpl2+)))

(define-public r-textdata
  (package
    (name "r-textdata")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textdata" version))
              (sha256
               (base32
                "1hz74sdhypf67w1p71igwaqdiv0w635lbdm4hvd0zdzhz1w1cxd7"))))
    (properties `((upstream-name . "textdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-readr r-rappdirs r-fs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EmilHvitfeldt/textdata")
    (synopsis "Download and Load Various Text Datasets")
    (description
     "This package provides a framework to download, parse, and store text datasets on
the disk and load them when needed.  Includes various sentiment lexicons and
labeled text data sets for classification and analysis.")
    (license license:expat)))

(define-public r-textcat
  (package
    (name "r-textcat")
    (version "1.0-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "textcat" version))
              (sha256
               (base32
                "17kl76m6065ci84p4ii7fxhwg1fckwf8690m71w9rbkbax3h2rfb"))))
    (properties `((upstream-name . "textcat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tau r-slam))
    (home-page "https://cran.r-project.org/package=textcat")
    (synopsis "N-Gram Based Text Categorization")
    (description "Text categorization based on n-grams.")
    (license license:gpl2)))

(define-public r-text2speech
  (package
    (name "r-text2speech")
    (version "0.2.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "text2speech" version))
              (sha256
               (base32
                "0c0h4yfp1gzaf4snav84iy5m0fx8az0pw1h2s33239dxkwcff893"))))
    (properties `((upstream-name . "text2speech")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner
                             r-mscstts
                             r-magrittr
                             r-knitr
                             r-httr
                             r-googlelanguager
                             r-googleauthr
                             r-dplyr
                             r-aws-signature))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/muschellij2/text2speech")
    (synopsis "Text to Speech")
    (description
     "Unifies different text to speech engines, such as Google, Microsoft, and Amazon.
 Text synthesis can be done in any engine with a simple switch of an argument
denoting the service requested.  The aws.polly package has been orphaned and can
be found from the CRAN archives.")
    (license license:gpl3)))

(define-public r-text2sdg
  (package
    (name "r-text2sdg")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "text2sdg" version))
              (sha256
               (base32
                "1y35kblqp4yxc6x50w3d0r81wspyfdfyay9masb4q96cvnzkwp0f"))))
    (properties `((upstream-name . "text2sdg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-ranger
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-dplyr
                             r-corpustools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dwulff/text2sdg")
    (synopsis "Detecting UN Sustainable Development Goals in Text")
    (description
     "The United Nationsâ Sustainable Development Goals (SDGs) have become an
important guideline for organisations to monitor and plan their contributions to
social, economic, and environmental transformations.  The text2sdg package is an
open-source analysis package that identifies SDGs in text using scientifically
developed query systems, opening up the opportunity to monitor any type of
text-based data, such as scientific output or corporate publications.  For more
information regarding the methodology see Meier, Mata & Wulff (2022)
<arXiv:2110.05856>.")
    (license license:gpl3)))

(define-public r-text2map
  (package
    (name "r-text2map")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "text2map" version))
              (sha256
               (base32
                "1lqhk5dz7g4mc63644hbb60hwgzsyl75i8ckz354hvagnd84xwg1"))))
    (properties `((upstream-name . "text2map")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-text2vec
                             r-stringr
                             r-stringi
                             r-rsvd
                             r-rlang
                             r-qgraph
                             r-matrix
                             r-magrittr
                             r-kit
                             r-igraph
                             r-foreach
                             r-fastmatch
                             r-dplyr
                             r-doparallel
                             r-clusterr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://gitlab.com/culturalcartography/text2map")
    (synopsis "R Tools for Text Matrices, Embeddings, and Networks")
    (description
     "This is a collection of functions optimized for working with with various kinds
of text matrices.  Focusing on the text matrix as the primary object -
represented either as a base R dense matrix or a Matrix package sparse matrix -
allows for a consistent and intuitive interface that stays close to the
underlying mathematical foundation of computational text analysis.  In
particular, the package includes functions for working with word embeddings,
text networks, and document-term matrices.  Methods developed in Stoltz and
Taylor (2019) <doi:10.1007/s42001-019-00048-6>, Taylor and Stoltz (2020)
<doi:10.1007/s42001-020-00075-8>, Taylor and Stoltz (2020)
<doi:10.15195/v7.a23>, and Stoltz and Taylor (2021)
<doi:10.1016/j.poetic.2021.101567>.")
    (license license:expat)))

(define-public r-text-alignment
  (package
    (name "r-text-alignment")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "text.alignment" version))
              (sha256
               (base32
                "1p2mnycz6c33jlmg617wvxj5vp4a530x2raqxxk554p3f7dqw2jx"))))
    (properties `((upstream-name . "text.alignment")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DIGI-VUB/text.alignment")
    (synopsis "Text Alignment with Smith-Waterman")
    (description
     "Find similarities between texts using the Smith-Waterman algorithm.  The
algorithm performs local sequence alignment and determines similar regions
between two strings.  The Smith-Waterman algorithm is explained in the paper:
\"Identification of common molecular subsequences\" by T.F.Smith and M.S.Waterman
(1981), available at <doi:10.1016/0022-2836(81)90087-5>.  This package
implements the same logic for sequences of words and letters instead of
molecular sequences.")
    (license license:expat)))

(define-public r-text
  (package
    (name "r-text")
    (version "0.9.99.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "text" version))
              (sha256
               (base32
                "1sld9y5sz4zfxbjz3r50jk564mf661y3gz7agjp02ppmn634w0g7"))))
    (properties `((upstream-name . "text")))
    (build-system r-build-system)
    (inputs (list python))
    (propagated-inputs (list r-yardstick
                             r-workflows
                             r-tune
                             r-tidyr
                             r-tibble
                             r-stringi
                             r-rsample
                             r-rlang
                             r-reticulate
                             r-recipes
                             r-purrr
                             r-parsnip
                             r-overlapping
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-future
                             r-furrr
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://r-text.org/")
    (synopsis
     "Analyses of Text using Transformers Models from HuggingFace, Natural Language Processing and Machine Learning")
    (description
     "Link R with Transformers from Hugging Face to transform text variables to word
embeddings; where the word embeddings are used to statistically test the mean
difference between set of texts, compute semantic similarity scores between
texts, predict numerical variables, and visual statistically significant words
according to various dimensions etc.  For more information see
<https://www.r-text.org>.")
    (license license:gpl3)))

(define-public r-texreg
  (package
    (name "r-texreg")
    (version "1.38.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "texreg" version))
              (sha256
               (base32
                "1z8j9whybvzjcrvivk3jhh8clfrbwdb7ss6mhqp0dlhbq2vn7gb8"))))
    (properties `((upstream-name . "texreg")))
    (build-system r-build-system)
    (inputs (list texlive-booktabs))
    (propagated-inputs (list r-httr))
    (home-page "https://github.com/leifeld/texreg/")
    (synopsis "Conversion of R Regression Output to LaTeX or HTML Tables")
    (description
     "Converts coefficients, standard errors, significance stars, and goodness-of-fit
statistics of statistical models into LaTeX tables or HTML tables/MS Word
documents or to nicely formatted screen output for the R console for easy model
comparison.  A list of several models can be combined in a single table.  The
output is highly customizable.  New model types can be easily implemented.
Details can be found in Leifeld (2013), JStatSoft <doi:10.18637/jss.v055.i08>.
(If the Zelig package, which this package enhances, cannot be found on CRAN, you
can find it at <https://github.com/IQSS/Zelig>.  If the mnlogit package, which
this package enhances, cannot be found on CRAN, you can find an old version in
the CRAN Archive at <https://cran.r-project.org/src/contrib/Archive/mnlogit/>.)")
    (license license:gpl3)))

(define-public r-texpreview
  (package
    (name "r-texpreview")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "texPreview" version))
              (sha256
               (base32
                "0lw9yvpw5id9ix5kzv5zw0rlw6098hpjrzx00l0cn37vljmqqg0p"))))
    (properties `((upstream-name . "texPreview")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-whisker
                             r-tinytex
                             r-svgpanzoom
                             r-rstudioapi
                             r-rematch2
                             r-magick
                             r-knitr
                             r-htmltools
                             r-fs
                             r-details
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yonicd/texPreview")
    (synopsis "Compile and Preview Snippets of 'LaTeX'")
    (description
     "Compile snippets of LaTeX directly into images from the R console to view in the
RStudio viewer pane, Shiny apps and RMarkdown documents.")
    (license license:expat)))

(define-public r-texposition
  (package
    (name "r-texposition")
    (version "2.6.10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TExPosition" version))
              (sha256
               (base32
                "0psdm35g7h7d8cr3xlyq8akr0qrbl44d5pnsaf535cs5pmqdp87b"))))
    (properties `((upstream-name . "TExPosition")))
    (build-system r-build-system)
    (propagated-inputs (list r-prettygraphs r-exposition))
    (home-page "https://cran.r-project.org/package=TExPosition")
    (synopsis "Two-Table ExPosition")
    (description
     "An extension of ExPosition for two table analyses, specifically, discriminant
analyses.")
    (license license:gpl2)))

(define-public r-texmex
  (package
    (name "r-texmex")
    (version "2.4.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "texmex" version))
              (sha256
               (base32
                "115x7j2kvifzsrmh8zy6xymm1p01sxk4c26zdmi0p51bsgvs46ih"))))
    (properties `((upstream-name . "texmex")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mvtnorm r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/harrysouthworth/texmex")
    (synopsis "Statistical Modelling of Extreme Values")
    (description
     "Statistical extreme value modelling of threshold excesses, maxima and
multivariate extremes.  Univariate models for threshold excesses and maxima are
the Generalised Pareto, and Generalised Extreme Value model respectively.  These
models may be fitted by using maximum (optionally penalised-)likelihood, or
Bayesian estimation, and both classes of models may be fitted with covariates in
any/all model parameters.  Model diagnostics support the fitting process.
Graphical output for visualising fitted models and return level estimates is
provided.  For serially dependent sequences, the intervals declustering
algorithm of Ferro and Segers (2003) <doi:10.1111/1467-9868.00401> is provided,
with diagnostic support to aid selection of threshold and declustering horizon.
Multivariate modelling is performed via the conditional approach of Heffernan
and Tawn (2004) <doi:10.1111/j.1467-9868.2004.02050.x>, with graphical tools for
threshold selection and to diagnose estimation convergence.")
    (license license:gpl2+)))

(define-public r-texexamrandomizer
  (package
    (name "r-texexamrandomizer")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TexExamRandomizer" version))
              (sha256
               (base32
                "0l0vpx4rkib2m8hwhwy9j8pqyf7gpb9qg8wpnh3238snwpadgy3a"))))
    (properties `((upstream-name . "TexExamRandomizer")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcpp r-jsonlite r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexrecuenco/TexExamRandomizer")
    (synopsis "Personalizes and Randomizes Exams Written in 'LaTeX'")
    (description
     "Randomizing exams with LaTeX'.  If you can compile your main document with
LaTeX', the program should be able to compile the randomized versions without
much extra effort when creating the document.")
    (license license:expat)))

(define-public r-texcheckr
  (package
    (name "r-texcheckr")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TeXCheckR" version))
              (sha256
               (base32
                "0r85yhk3p4ibkzkbjm7j9zpryp1dhajbmaqyfwr4bv1zh29smrxa"))))
    (properties `((upstream-name . "TeXCheckR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-rstudioapi
                             r-magrittr
                             r-hutils
                             r-hunspell
                             r-fastmatch
                             r-data-table
                             r-crayon
                             r-clisymbols))
    (home-page "https://github.com/HughParsonage/TeXCheckR")
    (synopsis "Parses LaTeX Documents for Errors")
    (description
     "Checks LaTeX documents and .bib files for typing errors, such as spelling
errors, incorrect quotation marks.  Also provides useful functions for parsing
and linting bibliography files.")
    (license license:gpl2)))

(define-public r-tetrascatt
  (package
    (name "r-tetrascatt")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tetrascatt" version))
              (sha256
               (base32
                "1bm6as0indwpfw8j2x4wavjjkkz0430hh226flg5jdzhfmg5m2aq"))))
    (properties `((upstream-name . "tetrascatt")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=tetrascatt")
    (synopsis "Acoustic Scattering for Complex Shapes by Using the DWBA")
    (description
     "Uses the Distorted Wave Born Approximation (DWBA) to compute the acoustic
backward scattering, the geometry of the object is formed by a volumetric mesh,
composed of tetrahedrons.  This computation is done efficiently through an
analytical 3D integration that allows for a solution which is expressed in terms
of elementary functions for each tetrahedron.  It is important to note that this
method is only valid for objects whose acoustic properties, such as density and
sound speed, do not vary significantly compared to the surrounding medium.")
    (license license:gpl2+)))

(define-public r-tetragon
  (package
    (name "r-tetragon")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tetragon" version))
              (sha256
               (base32
                "0ck7crfa63ra63pbpbq7qvn4kjkbr9wqndin4fd1b4hc8kprqqhx"))))
    (properties `((upstream-name . "tetragon")))
    (build-system r-build-system)
    (propagated-inputs (list r-tictoc
                             r-stringr
                             r-scales
                             r-rfast
                             r-readr
                             r-purrr
                             r-philentropy
                             r-narray
                             r-moments
                             r-modeest
                             r-lubridate
                             r-imputets
                             r-greybox
                             r-ggplot2
                             r-fastdummies
                             r-fancova
                             r-entropy
                             r-dqrng
                             r-abind))
    (home-page "https://rpubs.com/giancarlo_vercellino/tetragon")
    (synopsis
     "Automatic Sequence Prediction by Expansion of the Distance Matrix")
    (description
     "Each sequence is predicted by expanding the distance matrix.  The compact set of
hyper-parameters is tuned through random search.")
    (license license:gpl3)))

(define-public r-tetraclasse
  (package
    (name "r-tetraclasse")
    (version "0.1.21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tetraclasse" version))
              (sha256
               (base32
                "1cl2cah0xi6x3rvvdy56iszai6rkbxc1w3x13v0l1z1nryff7c6a"))))
    (properties `((upstream-name . "tetraclasse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-reshape2
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-factominer
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tetraclasse")
    (synopsis "Satisfaction Analysis using Tetraclasse Model and Llosa Matrix")
    (description
     "The satisfaction Analysis using the tetraclasse model from Sylvie Llosa.  Llosa
(1997) <http://www.jstor.org/stable/40592578>.")
    (license license:gpl3)))

(define-public r-testtwice
  (package
    (name "r-testtwice")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testtwice" version))
              (sha256
               (base32
                "06fr13ww2wqk753p0cnl1ldn3nqrvdfnz0lgkpldcn0xwiwjh2x2"))))
    (properties `((upstream-name . "testtwice")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=testtwice")
    (synopsis "Testing One Hypothesis Twice in Observational Studies")
    (description
     "Tests one hypothesis with several test statistics, correcting for multiple
testing.  The central function in the package is testtwice().  In a sensitivity
analysis, the method has the largest design sensitivity of its component tests.
The package implements the method and examples in Rosenbaum, P. R. (2012)
<doi:10.1093/biomet/ass032> Testing one hypothesis twice in observational
studies.  Biometrika, 99(4), 763-774.")
    (license license:gpl2)))

(define-public r-testthis
  (package
    (name "r-testthis")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testthis" version))
              (sha256
               (base32
                "0csragn695698dpkr9d3md0g81bzpy5mybd0jik669q9cs8sdzh2"))))
    (properties `((upstream-name . "testthis")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-testthat
                             r-stringi
                             r-rprojroot
                             r-pkgload
                             r-magrittr
                             r-fs
                             r-devtools
                             r-assertthat))
    (home-page "https://s-fleck.github.io/testthis")
    (synopsis "Utils and 'RStudio' Addins to Make Testing Even More Fun")
    (description
     "Utility functions and RStudio addins for writing, running and organizing
automated tests.  Integrates tightly with the packages testthat', devtools and
usethis'.  Hotkeys can be assigned to the RStudio addins for running tests in a
single file or to switch between a source file and the associated test file.  In
addition, testthis provides function to manage and run tests in subdirectories
of the test/testthat directory.")
    (license license:expat)))

(define-public r-testscorer
  (package
    (name "r-testscorer")
    (version "1.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestScorer" version))
              (sha256
               (base32
                "006c3g3gx55mfr93srldwvgz5vm6nkr3f57yi4qg6krn0d32865f"))))
    (properties `((upstream-name . "TestScorer")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TestScorer")
    (synopsis
     "GUI for Entering Test Items and Obtaining Raw and Transformed Scores")
    (description
     "GUI for entering test items and obtaining raw and transformed scores.  The
results are shown on the console and can be saved to a tabular text file for
further statistical analysis.  The user can define his own tests and scoring
procedures through a GUI.")
    (license license:gpl2)))

(define-public r-testit
  (package
    (name "r-testit")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testit" version))
              (sha256
               (base32
                "104dcxdmzgj340mwk4lpw1y6j1xc4rv4a2v09ckx3nvbmdl73m4h"))))
    (properties `((upstream-name . "testit")))
    (build-system r-build-system)
    (home-page "https://github.com/yihui/testit")
    (synopsis "Simple Package for Testing R Packages")
    (description
     "This package provides two convenience functions assert() and test_pkg() to
facilitate testing R packages.")
    (license license:gpl3)))

(define-public r-testingsimilarity
  (package
    (name "r-testingsimilarity")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestingSimilarity" version))
              (sha256
               (base32
                "1iq0wh13rl6rby44ql4d286r1akzwmbpsvnq9p8lkl8709z0d34w"))))
    (properties `((upstream-name . "TestingSimilarity")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-dosefinding r-alabama))
    (home-page "https://cran.r-project.org/package=TestingSimilarity")
    (synopsis
     "Bootstrap Test for the Similarity of Dose Response Curves Concerning the Maximum Absolute Deviation")
    (description
     "This package provides a bootstrap test which decides whether two dose response
curves can be assumed as equal concerning their maximum absolute deviation.  A
plenty of choices for the model types are available, which can be found in the
DoseFinding package, which is used for the fitting of the models.  See
<doi:10.1080/01621459.2017.1281813> for details.")
    (license license:gpl3)))

(define-public r-testgardener
  (package
    (name "r-testgardener")
    (version "3.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestGardener" version))
              (sha256
               (base32
                "0lk4yrrzl5vhkhgcn7p1pfl5kg61h1kq36gmwfd6xpibwzfqxcpn"))))
    (properties `((upstream-name . "TestGardener")))
    (build-system r-build-system)
    (propagated-inputs (list r-utf8
                             r-tidyr
                             r-stringr
                             r-rmarkdown
                             r-rgl
                             r-pracma
                             r-knitr
                             r-ggpubr
                             r-ggplot2
                             r-fda
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TestGardener")
    (synopsis "Optimal Analysis of Test and Rating Scale Data")
    (description
     "Develop, evaluate, and score multiple choice examinations, psychological scales,
questionnaires, and similar types of data involving sequences of choices among
one or more sets of answers.  This version of the package should be considered
as brand new.  Almost all of the functions have been changed, including their
argument list.  See the file NEWS.Rd in the Inst folder for more information.
Using the package does not require any formal statistical knowledge beyond what
would be provided by a first course in statistics in a social science
department.  There the user would encounter the concept of probability and how
it is used to model data and make decisions, and would become familiar with
basic mathematical and statistical notation.  Most of the output is in graphical
form.")
    (license license:gpl2+)))

(define-public r-testfunctions
  (package
    (name "r-testfunctions")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestFunctions" version))
              (sha256
               (base32
                "018nkz8r6vqahrzq3d588i3ffb1bmd1pdk87j4ivcdsx99mq15sn"))))
    (properties `((upstream-name . "TestFunctions")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TestFunctions")
    (synopsis
     "Test Functions for Simulation Experiments and Evaluating Optimization and Emulation Algorithms")
    (description
     "Test functions are often used to test computer code.  They are used in
optimization to test algorithms and in metamodeling to evaluate model
predictions.  This package provides test functions that can be used for any
purpose.  Some functions are taken from <https://www.sfu.ca/~ssurjano>, but
their R code is not used.")
    (license license:gpl3)))

(define-public r-testfordep
  (package
    (name "r-testfordep")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testforDEP" version))
              (sha256
               (base32
                "1mgzhj8b35r5cm4bl0nnyxj0h7rwd28d17qvgvaky2kvm2r83cf9"))))
    (properties `((upstream-name . "testforDEP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-minerva r-hmisc))
    (home-page "https://cran.r-project.org/package=testforDEP")
    (synopsis "Dependence Tests for Two Variables")
    (description
     "This package provides test statistics, p-value, and confidence intervals based
on 9 hypothesis tests for dependence.")
    (license license:gpl3)))

(define-public r-tester
  (package
    (name "r-tester")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tester" version))
              (sha256
               (base32
                "1x5m43abk3x3fvb2yrb1xwa7rb4jxl8wjrnkyd899ii1kh8lbimr"))))
    (properties `((upstream-name . "tester")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://www.gastonsanchez.com")
    (synopsis "Tests and checks characteristics of R objects")
    (description
     "tester allows you to test characteristics of common R objects.")
    (license license:gpl3)))

(define-public r-testequavar
  (package
    (name "r-testequavar")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testequavar" version))
              (sha256
               (base32
                "1qih6a5i7982i05d6r6yxr0082psb5b7f6gznzhc4gzv4iyqr2pn"))))
    (properties `((upstream-name . "testequavar")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=testequavar")
    (synopsis
     "Bootstrap Tests for Equality of 2, 3, or 4 Population Variances")
    (description
     "Tests the hypothesis that variances are homogeneous or not using bootstrap.  The
procedure uses a variance-based statistic, and is derived from a normal-theory
test.  The test equivalently expressed the hypothesis as a function of the log
contrasts of the population variances.  A box-type acceptance region is
constructed to test the hypothesis.  See Cahoy (2010)
<doi:10.1016/j.csda.2010.04.012>.")
    (license license:gpl3+)))

(define-public r-testdriver
  (package
    (name "r-testdriver")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testDriveR" version))
              (sha256
               (base32
                "144bni3dg7bdmxnxyyal94j1nddqshgys9wfkdcc262n8y3v13i5"))))
    (properties `((upstream-name . "testDriveR")))
    (build-system r-build-system)
    (home-page "https://github.com/chris-prener/testDriveR")
    (synopsis "Teaching Data for Statistics and Data Science")
    (description
     "This package provides data sets for teaching statistics and data science
courses.  It includes a sample of data from John Edmund Kerrich's famous
coinflip experiment.  These are data that I used for teaching SOC 4015 / SOC
5050 at Saint Louis University (SLU).  The package also contains an R Markdown
template with the required formatting for assignments in my courses SOC 4015,
SOC 4650, SOC 5050, and SOC 5650 at SLU.")
    (license license:gpl3)))

(define-public r-testdimorph
  (package
    (name "r-testdimorph")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestDimorph" version))
              (sha256
               (base32
                "00mh7g6ijlimkfk35yjkmhbx1aqc511v3002q73ppx5977a7zwf0"))))
    (properties `((upstream-name . "TestDimorph")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-tmvtnorm
                             r-tidyr
                             r-multcompview
                             r-morpho
                             r-ggplot2
                             r-dplyr
                             r-corrplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TestDimorph")
    (synopsis
     "Analysis of the Interpopulation Difference in Degree of Sexual Dimorphism Using Summary Statistics")
    (description
     "Offers a solution for the unavailability of raw data in most anthropological
studies by facilitating the calculations of several sexual dimorphism related
analyses using the published summary statistics of metric data (mean, standard
deviation and sex specific sample size) as illustrated by the works of
Relethford, J. H., & Hodges, D. C. (1985) <doi:10.1002/ajpa.1330660105>, Greene,
D. L. (1989) <doi:10.1002/ajpa.1330790113> and Konigsberg, L. W. (1991)
<doi:10.1002/ajpa.1330840110>.")
    (license license:gpl3)))

(define-public r-testdesign
  (package
    (name "r-testdesign")
    (version "1.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestDesign" version))
              (sha256
               (base32
                "1r59zx97g1z49x6lkiqw2kclb88jksgwj589jymwcng3h5ja68ah"))))
    (properties `((upstream-name . "TestDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-lpsolve
                             r-logitnorm
                             r-foreach
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://choi-phd.github.io/TestDesign/")
    (synopsis
     "Optimal Test Design Approach to Fixed and Adaptive Test Construction")
    (description
     "Uses the optimal test design approach by Birnbaum (1968, ISBN:9781593119348) and
van der Linden (2018) <doi:10.1201/9781315117430> to construct fixed, adaptive,
and parallel tests.  Supports the following mixed-integer programming (MIP)
solver packages: Rsymphony', gurobi', lpSolve', and Rglpk'.  The gurobi package
is not available from CRAN; see <https://www.gurobi.com/downloads/>.")
    (license license:gpl2+)))

(define-public r-testdataimputation
  (package
    (name "r-testdataimputation")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestDataImputation" version))
              (sha256
               (base32
                "11acpw9vjar6g8n9cifpfs4208j1hqqp15j59mr9pnfwq747hw2z"))))
    (properties `((upstream-name . "TestDataImputation")))
    (build-system r-build-system)
    (propagated-inputs (list r-mice r-amelia))
    (home-page "https://cran.r-project.org/package=TestDataImputation")
    (synopsis "Missing Item Responses Imputation for Test and Assessment Data")
    (description
     "This package provides functions for imputing missing item responses for
dichotomous and polytomous test and assessment data.  This package enables
missing imputation methods that are suitable for test and assessment data,
including: listwise (LW) deletion (see De Ayala et al.  2001
<doi:10.1111/j.1745-3984.2001.tb01124.x>), treating as incorrect (IN, see Lord,
1974 <doi: 10.1111/j.1745-3984.1974.tb00996.x>; Mislevy & Wu, 1996 <doi:
10.1002/j.2333-8504.1996.tb01708.x>; Pohl et al., 2014 <doi:
10.1177/0013164413504926>), person mean imputation (PM), item mean imputation
(IM), two-way (TW) and response function (RF) imputation, (see Sijtsma & van der
Ark, 2003 <doi: 10.1207/s15327906mbr3804_4>), logistic regression (LR)
imputation, predictive mean matching (PMM), and expectationâmaximization (EM)
imputation (see Finch, 2008 <doi: 10.1111/j.1745-3984.2008.00062.x>).")
    (license license:gpl2+)))

(define-public r-testdat
  (package
    (name "r-testdat")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testdat" version))
              (sha256
               (base32
                "04hp8n5741l21yfi0g2rhcjp64vkvrhvv1q9wzw214xg8v96fh66"))))
    (properties `((upstream-name . "testdat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-testthat
                             r-stringr
                             r-rlang
                             r-lifecycle
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://socialresearchcentre.github.io/testdat/")
    (synopsis "Data Unit Testing for R")
    (description
     "Test your data! An extension of the testthat unit testing framework with a
family of functions and reporting tools for checking and validating data frames.")
    (license license:expat)))

(define-public r-testcorr
  (package
    (name "r-testcorr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testcorr" version))
              (sha256
               (base32
                "0bqhf4p4csyd430240d8gh09axpz3h108fh78sbgpyqdhiq3d1fh"))))
    (properties `((upstream-name . "testcorr")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-reshape2 r-knitr r-ggplot2 r-forcats))
    (home-page "https://cran.r-project.org/package=testcorr")
    (synopsis "Testing Zero Correlation")
    (description
     "Computes the test statistics for examining the significance of autocorrelation
in univariate time series, cross-correlation in bivariate time series, Pearson
correlations in multivariate series and test statistics for i.i.d.  property of
univariate series given in Dalla, Giraitis and Phillips (2020),
<https://cowles.yale.edu/sites/default/files/files/pub/d21/d2194-r.pdf>.")
    (license license:gpl3)))

(define-public r-testcor
  (package
    (name "r-testcor")
    (version "0.0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TestCor" version))
              (sha256
               (base32
                "01ndiqi0z672ymm2bid0r0cqz8fqd9268xgmmq74z3agj81l5c5j"))))
    (properties `((upstream-name . "TestCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=TestCor")
    (synopsis
     "FWER and FDR Controlling Procedures for Multiple Correlation Tests")
    (description
     "Different multiple testing procedures for correlation tests are implemented.
These procedures were shown to theoretically control asymptotically the Family
Wise Error Rate (Roux (2018) <https://tel.archives-ouvertes.fr/tel-01971574v1>)
or the False Discovery Rate (Cai & Liu (2016)
<doi:10.1080/01621459.2014.999157>).  The package gather four test statistics
used in correlation testing, four FWER procedures with either single step or
stepdown versions, and four FDR procedures.")
    (license license:gpl2+)))

(define-public r-testassay
  (package
    (name "r-testassay")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testassay" version))
              (sha256
               (base32
                "1gc35s5an0cpvadwx4bswy5lzcp01az3gnkjhvph6sm3pi3xjxm7"))))
    (properties `((upstream-name . "testassay")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=testassay")
    (synopsis
     "Hypothesis Testing Framework for Validating an Assay for Precision")
    (description
     "This package provides a common way of validating a biological assay for is
through a procedure, where m levels of an analyte are measured with n replicates
at each level, and if all m estimates of the coefficient of variation (CV) are
less than some prespecified level, then the assay is declared validated for
precision within the range of the m analyte levels.  Two limitations of this
procedure are: there is no clear statistical statement of precision upon
passing, and it is unclear how to modify the procedure for assays with constant
standard deviation.  We provide tools to convert such a procedure into a set of
m hypothesis tests.  This reframing motivates the m:n:q procedure, which upon
completion delivers a 100q% upper confidence limit on the CV. Additionally, for
a post-validation assay output of y, the method gives an ``effective standard
deviation interval of log(y) plus or minus r, which is a 68% confidence interval
on log(mu), where mu is the expected value of the assay output for that sample.
Further, the m:n:q procedure can be straightforwardly applied to constant
standard deviation assays.  We illustrate these tools by applying them to a
growth inhibition assay.  This is an implementation of the methods described in
Fay, Sachs, and Miura (2018) <doi:10.1002/sim.7528>.")
    (license license:expat)))

(define-public r-testarguments
  (package
    (name "r-testarguments")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "testarguments" version))
              (sha256
               (base32
                "1x77z0pljfi6z4bs6db3zsjbpyypsd3jbd0ykh4pq07595phh8x5"))))
    (properties `((upstream-name . "testarguments")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-plyr r-magrittr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=testarguments")
    (synopsis
     "Test (Multiple) Arguments of a User-Defined Prediction Algorithm")
    (description
     "Finding the best values for user-specified arguments of a prediction algorithm
can be difficult, particularly if there is an interaction between argument
levels.  This package automates the testing of any user-defined prediction
algorithm over an arbitrary number of arguments.  It includes functions for
testing the algorithm over the given arguments with respect to an arbitrary
number of user-defined diagnostics, visualising the results of these tests, and
finding the optimal argument combinations with respect to each diagnostic.")
    (license license:expat)))

(define-public r-test2norm
  (package
    (name "r-test2norm")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "test2norm" version))
              (sha256
               (base32
                "1llzvdggjvc72qwkv9iiqxx7prj3hnr9bqpwsib4qmfpmmxsif37"))))
    (properties `((upstream-name . "test2norm")))
    (build-system r-build-system)
    (propagated-inputs (list r-mfp))
    (home-page "https://cran.r-project.org/package=test2norm")
    (synopsis "Normative Standards for Cognitive Tests")
    (description
     "Package test2norm contains functions to generate formulas for normative
standards applied to cognitive tests.  It takes raw test scores (e.g., number of
correct responses) and converts them to scaled scores and demographically
adjusted scores, using methods described in Heaton et al. (2003)
<doi:10.1016/B978-012703570-3/50010-9> & Heaton et al. (2009,
ISBN:9780199702800).  The scaled scores are calculated as quantiles of the raw
test scores, scaled to have the mean of 10 and standard deviation of 3, such
that higher values always correspond to better performance on the test.  The
demographically adjusted scores are calculated from the residuals of a model
that regresses scaled scores on demographic predictors (e.g., age).  The norming
procedure makes use of the mfp() function from the mfp package to explore
nonlinear associations between cognition and demographic variables.")
    (license (license:fsdg-compatible "CPL (>= 2)"))))

(define-public r-tesseract
  (package
    (name "r-tesseract")
    (version "5.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tesseract" version))
              (sha256
               (base32
                "1ynd665mbfklqahzkjfbl6ja1djybgcmc71dpg5dxxjc3ny7rbkd"))))
    (properties `((upstream-name . "tesseract")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-rappdirs r-pdftools r-digest r-curl))
    (native-inputs (list r-knitr pkg-config))
    (home-page
     "https://docs.ropensci.org/tesseract/https://github.com/ropensci/tesseract")
    (synopsis "Open Source OCR Engine")
    (description
     "Bindings to Tesseract': a powerful optical character recognition (OCR) engine
that supports over 100 languages.  The engine is highly configurable in order to
tune the detection algorithms and obtain the best possible results.")
    (license license:asl2.0)))

(define-public r-tesselle
  (package
    (name "r-tesselle")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tesselle" version))
              (sha256
               (base32
                "1kbz26rinxwd8h3kazdalkb32l1hl623r9f3x072j857g2x9v5my"))))
    (properties `((upstream-name . "tesselle")))
    (build-system r-build-system)
    (propagated-inputs (list r-tabula
                             r-khroma
                             r-kairos
                             r-folio
                             r-dimensio
                             r-arkhe))
    (home-page "https://github.com/tesselle/tesselle")
    (synopsis "Easily Install and Load 'tesselle' Packages")
    (description
     "Easy install and load key packages from the tesselle suite in a single step.
The tesselle suite is a collection of packages for research and teaching in
archaeology.  These packages focus on quantitative analysis methods developed
for archaeology.  The tesselle packages are designed to work seamlessly together
and to complement general-purpose and other specialized statistical packages.
These packages can be used to explore and analyze common data types in
archaeology: count data, compositional data and chronological data.  Learn more
about tesselle at <https://www.tesselle.org>.")
    (license license:gpl3+)))

(define-public r-tessellation
  (package
    (name "r-tessellation")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tessellation" version))
              (sha256
               (base32
                "1x271f9ypd2ckvq4iqryzx4ir364n6mk7s0100s3kf05l7jbl5y4"))))
    (properties `((upstream-name . "tessellation")))
    (build-system r-build-system)
    (propagated-inputs (list r-sets
                             r-scales
                             r-rvcg
                             r-rgl
                             r-randomcolor
                             r-r6
                             r-interp
                             r-hash
                             r-english
                             r-cxhull))
    (home-page "https://github.com/stla/tessellation")
    (synopsis "Delaunay and VoronoÃ¯ Tessellations")
    (description
     "Delaunay and VoronoÃ¯ tessellations, with emphasis on the two-dimensional and
the three-dimensional cases (the package provides functions to plot the
tessellations for these cases).  Delaunay tessellations are computed in C with
the help of the Qhull library <http://www.qhull.org/>.")
    (license license:gpl3)))

(define-public r-tess
  (package
    (name "r-tess")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TESS" version))
              (sha256
               (base32
                "0qhzxppgk4ihkg00d08abb7xjl82n87mm3319iv0g7n6rky2qxy8"))))
    (properties `((upstream-name . "TESS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-desolve r-coda r-ape))
    (home-page "https://cran.r-project.org/package=TESS")
    (synopsis
     "Diversification Rate Estimation and Fast Simulation of Reconstructed Phylogenetic Trees under Tree-Wide Time-Heterogeneous Birth-Death Processes Including Mass-Extinction Events")
    (description
     "Simulation of reconstructed phylogenetic trees under tree-wide
time-heterogeneous birth-death processes and estimation of diversification
parameters under the same model.  Speciation and extinction rates can be any
function of time and mass-extinction events at specific times can be provided.
Trees can be simulated either conditioned on the number of species, the time of
the process, or both.  Additionally, the likelihood equations are implemented
for convenience and can be used for Maximum Likelihood (ML) estimation and
Bayesian inference.")
    (license license:gpl3)))

(define-public r-tesiprov
  (package
    (name "r-tesiprov")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TesiproV" version))
              (sha256
               (base32
                "00igkm0y9v363djhig4ydn3bfadqf6rrrdhkai2pl1w876xk2ydw"))))
    (properties `((upstream-name . "TesiproV")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-nloptr r-gridextra r-ggplot2 r-edfun))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.hochschule-biberach.de/transfer/forschung/institut-fuer-konstruktiven-ingenieurbau")
    (synopsis
     "Calculation of Reliability and Failure Probability in Civil Engineering")
    (description
     "Calculate the failure probability of civil engineering problems with Level I up
to Level III Methods.  Have fun and enjoy.  References: Spaethe (1991,
ISBN:3-211-82348-4) \"Die Sicherheit tragender Baukonstruktionen\", AU,BECK (2001)
\"Estimation of small failure probabilities in high dimensions by subset
simulation.\" <doi:10.1016/S0266-8920(01)00019-4>, Breitung (1989) \"Asymptotic
approximations for probability integrals.\" <doi:10.1016/0266-8920(89)90024-6>.")
    (license license:expat)))

(define-public r-terrainr
  (package
    (name "r-terrainr")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "terrainr" version))
              (sha256
               (base32
                "0qgr38shvdl9c6mcrvj9h6kydfnp7wp93n2qac9za96pbij4js7d"))))
    (properties `((upstream-name . "terrainr")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-unifir
                             r-terra
                             r-sf
                             r-rlang
                             r-png
                             r-magick
                             r-httr
                             r-glue
                             r-ggplot2
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/terrainr/")
    (synopsis "Landscape Visualizations in R and 'Unity'")
    (description
     "This package provides functions for the retrieval, manipulation, and
visualization of geospatial data, with an aim towards producing 3D landscape
visualizations in the Unity 3D rendering engine.  Functions are also provided
for retrieving elevation data and base map tiles from the USGS National Map
<https://apps.nationalmap.gov/services/>.")
    (license license:expat)))

(define-public r-terrainmeshr
  (package
    (name "r-terrainmeshr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "terrainmeshr" version))
              (sha256
               (base32
                "1xab6wzq2izzdvsss1rlgp5m3cn45naxhymq6cglipj0fd792jbr"))))
    (properties `((upstream-name . "terrainmeshr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://www.github.com/tylermorganwall/terrainmeshr")
    (synopsis "Triangulate and Simplify 3D Terrain Meshes")
    (description
     "This package provides triangulations of regular height fields, based on the
methods described in \"Fast Polygonal Approximation of Terrains and Height
Fields\" Michael Garland and Paul S. Heckbert (1995)
<https://www.mgarland.org/files/papers/scape.pdf> using code from the hmm
library written by Michael Fogleman <https://www.github.com/fogleman/hmm>.")
    (license license:expat)))

(define-public r-ternvis
  (package
    (name "r-ternvis")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ternvis" version))
              (sha256
               (base32
                "057i6i3ygxrin0npc18gsg3dpdldzafyb5sr6lix5mhy6b09lkxf"))))
    (properties `((upstream-name . "ternvis")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-maps r-dichromat))
    (home-page "https://cran.r-project.org/package=ternvis")
    (synopsis
     "Visualisation, Verification and Calibration of Ternary Probabilistic Forecasts")
    (description
     "This package provides a suite of functions for visualising ternary probabilistic
forecasts, as discussed in the paper by Jupp (2012)
<doi:10.1098/rsta.2011.0350>.")
    (license license:gpl2)))

(define-public r-ternary
  (package
    (name "r-ternary")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ternary" version))
              (sha256
               (base32
                "175nw6j6z2ij0mdaydm7jjch2g2lkjy6c2dfjiwm7f7s57ryxw0q"))))
    (properties `((upstream-name . "Ternary")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite r-sp r-shiny))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/Ternary/")
    (synopsis "Create Ternary and Holdridge Plots")
    (description
     "Plots ternary diagrams (simplex plots / Gibbs triangles) and Holdridge life zone
plots <doi:10.1126/science.105.2727.367> using the standard graphics functions.
An alternative to ggtern', which uses the ggplot2 family of plotting functions.
Includes a Shiny user interface for point-and-click ternary plotting.")
    (license license:gpl2+)))

(define-public r-terminaldigits
  (package
    (name "r-terminaldigits")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "terminaldigits" version))
              (sha256
               (base32
                "0vj7pylr410wi59qj2313iximsyl0v9ffg7z9gcfg720g5zrvfkm"))))
    (properties `((upstream-name . "terminaldigits")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-discretefit))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=terminaldigits")
    (synopsis "Tests of Uniformity and Independence for Terminal Digits")
    (description
     "This package implements simulated tests for the hypothesis that terminal digits
are uniformly distributed (chi-squared goodness-of-fit) and the hypothesis that
terminal digits are independent from preceding digits (several tests of
independence for r x c contingency tables).  Also, for a number of
distributions, implements Monte Carlo simulations for type I errors and power
for the test of independence.")
    (license license:expat)))

(define-public r-term
  (package
    (name "r-term")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "term" version))
              (sha256
               (base32
                "1ig1hvyv18d1x19jmvkg66m6nn8kdlffj5hx70vzd4sxz68j2k0v"))))
    (properties `((upstream-name . "term")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-universals
                             r-rlang
                             r-purrr
                             r-lifecycle
                             r-extras
                             r-chk))
    (home-page "https://poissonconsulting.github.io/term/")
    (synopsis "Create, Manipulate and Query Parameter Terms")
    (description
     "Creates, manipulates, queries and repairs vectors of parameter terms.  Parameter
terms are the labels used to reference values in vectors, matrices and arrays.
They represent the names in coefficient tables and the column names in mcmc and
mcmc.list objects.")
    (license license:expat)))

(define-public r-tergmlite
  (package
    (name "r-tergmlite")
    (version "2.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tergmLite" version))
              (sha256
               (base32
                "03dr3bfi5ywavfijkc6gmci8i1kmbsh26awhl7748mn9wcsgs2pc"))))
    (properties `((upstream-name . "tergmLite")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-tergm
                             r-statnet-common
                             r-rcpp
                             r-networkdynamic
                             r-network
                             r-ergm))
    (home-page "https://cran.r-project.org/package=tergmLite")
    (synopsis
     "Fast Simulation of Simple Temporal Exponential Random Graph Models")
    (description
     "This package provides functions for the computationally efficient simulation of
dynamic networks estimated with the statistical framework of temporal
exponential random graph models, implemented in the tergm package.")
    (license license:gpl3)))

(define-public r-tergm
  (package
    (name "r-tergm")
    (version "4.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tergm" version))
              (sha256
               (base32
                "09axlhf5n2jwc84ih05ywz8addqfai7g1cdlzhsbmjnsn1d89kai"))))
    (properties `((upstream-name . "tergm")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common
                             r-robustbase
                             r-purrr
                             r-nlme
                             r-networkdynamic
                             r-network
                             r-mass
                             r-ergm
                             r-coda))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://statnet.org")
    (synopsis
     "Fit, Simulate and Diagnose Models for Network Evolution Based on Exponential-Family Random Graph Models")
    (description
     "An integrated set of extensions to the ergm package to analyze and simulate
network evolution based on exponential-family random graph models (ERGM).  tergm
is a part of the statnet suite of packages for network analysis.  See Krivitsky
and Handcock (2014) <doi:10.1111/rssb.12014> and Carnegie, Krivitsky, Hunter,
and Goodreau (2015) <doi:10.1080/10618600.2014.903087>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-teqr
  (package
    (name "r-teqr")
    (version "6.0-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TEQR" version))
              (sha256
               (base32
                "112znsz36jqh3krnr4j05xl70picih8qpmqky2gllgyr8nky39fr"))))
    (properties `((upstream-name . "TEQR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TEQR")
    (synopsis "Target Equivalence Range Design")
    (description
     "The TEQR package contains software to calculate the operating characteristics
for the TEQR and the ACT designs.The TEQR (toxicity equivalence range) design is
a toxicity based cumulative cohort design with added safety rules.  The ACT
(Activity constrained for toxicity) design is also a cumulative cohort design
with additional safety rules.  The unique feature of this design is that dose is
escalated based on lack of activity rather than on lack of toxicity and is
de-escalated only if an unacceptable level of toxicity is experienced.")
    (license license:gpl2)))

(define-public r-tensr
  (package
    (name "r-tensr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensr" version))
              (sha256
               (base32
                "1z6b3ra7fgn88mxbhsq65x3frj5j7p17n119s9kbw7sg9y633vfx"))))
    (properties `((upstream-name . "tensr")))
    (build-system r-build-system)
    (propagated-inputs (list r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tensr")
    (synopsis "Covariance Inference and Decompositions for Tensor Datasets")
    (description
     "This package provides a collection of functions for Kronecker structured
covariance estimation and testing under the array normal model.  For estimation,
maximum likelihood and Bayesian equivariant estimation procedures are
implemented.  For testing, a likelihood ratio testing procedure is available.
This package also contains additional functions for manipulating and decomposing
tensor data sets.  This work was partially supported by NSF grant DMS-1505136.
Details of the methods are described in Gerard and Hoff (2015)
<doi:10.1016/j.jmva.2015.01.020> and Gerard and Hoff (2016)
<doi:10.1016/j.laa.2016.04.033>.")
    (license license:gpl3)))

(define-public r-tensorts
  (package
    (name "r-tensorts")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorTS" version))
              (sha256
               (base32
                "0nbks7djd4wggn33f39zc2zacz6z4dpvgk9fj9a90kcmyiw0rckl"))))
    (properties `((upstream-name . "tensorTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensor
                             r-rtensor
                             r-pracma
                             r-matrix
                             r-mass
                             r-expm
                             r-abind))
    (home-page "https://github.com/zebang/tensorTS")
    (synopsis "Factor and Autoregressive Models for Tensor Time Series")
    (description
     "Factor and autoregressive models for matrix and tensor valued time series.  We
provide functions for estimation, simulation and prediction.  The models are
discussed in Li et al (2021) <arXiv:2110.00928>, Chen et al (2020)
<DOI:10.1080/01621459.2021.1912757>, Chen et al (2020)
<DOI:10.1016/j.jeconom.2020.07.015>, and Xiao et al (2020) <arXiv:2006.02611>.")
    (license license:gpl2+)))

(define-public r-tensortest2d
  (package
    (name "r-tensortest2d")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TensorTest2D" version))
              (sha256
               (base32
                "1yx1ggsbximbsrwimyg7jblbqr0f75z278f38hg61qjxzf9m4ndk"))))
    (properties `((upstream-name . "TensorTest2D")))
    (build-system r-build-system)
    (home-page "https://github.com/yuting1214/TensorTest2D")
    (synopsis "Fitting Second-Order Tensor Data")
    (description
     "An implementation of fitting generalized linear models on second-order tensor
type data.  The functions within this package mainly focus on parameter
estimation, including parameter coefficients and standard deviation.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tensorsparse
  (package
    (name "r-tensorsparse")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorsparse" version))
              (sha256
               (base32
                "0xx003nh5bi87cbsqb7ikpcs4yhjhphh7pybzzas44qkwbn4fn1k"))))
    (properties `((upstream-name . "tensorsparse")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tensorsparse")
    (synopsis "Multiway Clustering via Tensor Block Models")
    (description
     "This package implements the multiway sparse clustering approach of M. Wang and
Y. Zeng, \"Multiway clustering via tensor block models\".  Advances in Neural
Information Processing System 32 (NeurIPS), 715-725, 2019.")
    (license license:gpl2+)))

(define-public r-tensorregress
  (package
    (name "r-tensorregress")
    (version "4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorregress" version))
              (sha256
               (base32
                "0pb512v3gahgv3qc31i5v2jg8wixi6ps3p920sq5dgpfrig9hg2q"))))
    (properties `((upstream-name . "tensorregress")))
    (build-system r-build-system)
    (propagated-inputs (list r-speedglm r-pracma r-mass))
    (home-page "https://cran.r-project.org/package=tensorregress")
    (synopsis "Supervised Tensor Decomposition with Side Information")
    (description
     "Implement the alternating algorithm for supervised tensor decomposition with
interactive side information.")
    (license license:gpl2+)))

(define-public r-tensorr
  (package
    (name "r-tensorr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorr" version))
              (sha256
               (base32
                "18xdvp328h96jn8y1iayxh7cyz2s8j5nn43nq18pyaxq271hkfyh"))))
    (properties `((upstream-name . "tensorr")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-matrix r-assertive-types
                             r-assertive-properties r-assertive-base))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zamorarr/tensorr")
    (synopsis "Sparse Tensors in R")
    (description
     "This package provides methods to manipulate and store sparse tensors.  Tensors
are multidimensional generalizations of matrices (two dimensional) and vectors
(one dimensional).")
    (license license:gpl3)))

(define-public r-tensorpreave
  (package
    (name "r-tensorpreave")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TensorPreAve" version))
              (sha256
               (base32
                "01dd9ny8ikrhdsi3rv9nhs10rn0ps8dly8qpqk576qqc8yb0d506"))))
    (properties `((upstream-name . "TensorPreAve")))
    (build-system r-build-system)
    (propagated-inputs (list r-rtensor r-pracma r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/William-Chenwl/TensorPreAve")
    (synopsis
     "Rank and Factor Loadings Estimation in Time Series Tensor Factor Models")
    (description
     "This package provides a set of functions to estimate rank and factor loadings of
time series tensor factor models.  A tensor is a multidimensional array.  To
analyze high-dimensional tensor time series, factor model is a major dimension
reduction tool.  TensorPreAve provides functions to estimate the rank of core
tensors and factor loading spaces of tensor time series.  More specifically, a
pre-averaging method that accumulates information from tensor fibres is used to
estimate the factor loading spaces.  The estimated directions corresponding to
the strongest factors are then used for projecting the data for a potentially
improved re-estimation of the factor loading spaces themselves.  A new rank
estimation method is also implemented to utilizes correlation information from
the projected data.  See Chen and Lam (2022) <arXiv:2208.04012> for more
details.")
    (license license:gpl3)))

(define-public r-tensorfun
  (package
    (name "r-tensorfun")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorFun" version))
              (sha256
               (base32
                "0ij3dshnj448scws6d2pdw2ik34hbhq9mksmllgy0g8l257a3x8d"))))
    (properties `((upstream-name . "tensorFun")))
    (build-system r-build-system)
    (propagated-inputs (list r-psychtools r-mass r-climprojdiags))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tensorFun")
    (synopsis "Basic Functions to Handle Tensor Data in Array Class")
    (description
     "Basic functions to handle higher-order tensor data.  See Kolda and Bader (2009)
<doi:10.1137/07070111X> for details on tensor.  While existing packages on
tensor data extend the base array class to some S4 classes, this package serves
as an alternative resort to handle tensor only as array class.  Some
functionalities related to missingness and rearrangement, discussed in Bai and
Ng (2021) <arXiv:1910.06677>, are also supported.")
    (license license:gpl3)))

(define-public r-tensorcomplete
  (package
    (name "r-tensorcomplete")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TensorComplete" version))
              (sha256
               (base32
                "06lr0blkf5pv1zwlffn7m0xxscjii4jg930nkzrh2k7dnbka6vsx"))))
    (properties `((upstream-name . "TensorComplete")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensorregress r-pracma r-mass))
    (home-page "https://cran.r-project.org/package=TensorComplete")
    (synopsis "Tensor Noise Reduction and Completion Methods")
    (description
     "Efficient algorithms for tensor noise reduction and completion.  This package
includes a suite of parametric and nonparametric tools for estimating tensor
signals from noisy, possibly incomplete observations.  The methods allow a broad
range of data types, including continuous, binary, and ordinal-valued tensor
entries.  The algorithms employ the alternating optimization.  The detailed
algorithm description can be found in the following three references.")
    (license license:gpl2+)))

(define-public r-tensorclustering
  (package
    (name "r-tensorclustering")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TensorClustering" version))
              (sha256
               (base32
                "094pk4v78d97sanrkirk0dyhy6w2i43imcw21q2r76w11d62w7k7"))))
    (properties `((upstream-name . "TensorClustering")))
    (build-system r-build-system)
    (propagated-inputs (list r-tres
                             r-tensr
                             r-rtensor
                             r-rcpp
                             r-pracma
                             r-mvtnorm
                             r-mass
                             r-combinat
                             r-abind))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=TensorClustering")
    (synopsis "Model-Based Tensor Clustering")
    (description
     "This package performs model-based tensor clustering methods including Tensor
Gaussian Mixture Model (TGMM), Tensor Envelope Mixture Model (TEMM) by Deng and
Zhang (2021) <DOI: 10.1111/biom.13486>, Doubly-Enhanced EM (DEEM) algorithm by
Mai, Zhang, Pan and Deng (2021) <DOI: 10.1080/01621459.2021.1904959>.")
    (license license:expat)))

(define-public r-tensorbss
  (package
    (name "r-tensorbss")
    (version "0.3.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorBSS" version))
              (sha256
               (base32
                "1chgkdshjpxzy0cxkgjzpr5k4v2hyad1vchrxyqhsj9isfic2581"))))
    (properties `((upstream-name . "tensorBSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsbss
                             r-tensor
                             r-rcpparmadillo
                             r-rcpp
                             r-jade
                             r-ictest
                             r-ggplot2
                             r-fica
                             r-abind))
    (home-page "https://cran.r-project.org/package=tensorBSS")
    (synopsis "Blind Source Separation Methods for Tensor-Valued Observations")
    (description
     "This package contains several utility functions for manipulating tensor-valued
data (centering, multiplication from a single mode etc.) and the implementations
of the following blind source separation methods for tensor-valued data: tPCA',
tFOBI', tJADE', k-tJADE', tgFOBI', tgJADE', tSOBI', tNSS.SD', tNSS.JD',
tNSS.TD.JD', tPP and tTUCKER'.")
    (license license:gpl2+)))

(define-public r-tensorbf
  (package
    (name "r-tensorbf")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tensorBF" version))
              (sha256
               (base32
                "1dw1a6xqcsl4isbzbfiplgqq5nak5n9ffzm23mzzmkh1r1a8kl1y"))))
    (properties `((upstream-name . "tensorBF")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensor))
    (home-page "https://cran.r-project.org/package=tensorBF")
    (synopsis "Bayesian Tensor Factorization")
    (description
     "Bayesian Tensor Factorization for decomposition of tensor data sets using the
trilinear CANDECOMP/PARAFAC (CP) factorization, with automatic component
selection.  The complete data analysis pipeline is provided, including functions
and recommendations for data normalization and model definition, as well as
missing value prediction and model visualization.  The method performs
factorization for three-way tensor datasets and the inference is implemented
with Gibbs sampling.")
    (license license:expat)))

(define-public r-tenispolar
  (package
    (name "r-tenispolar")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tenispolaR" version))
              (sha256
               (base32
                "0xpp1hi3xnkg55aixgy2bp5476i503h8gsiss9x7f15274kx0d7s"))))
    (properties `((upstream-name . "tenispolaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://github.com/adelmofilho/tenispolaR")
    (synopsis "Provides ZENIT-POLAR Substitution Cipher Method of Encryption")
    (description
     "Implementation of ZENIT-POLAR substitution cipher method of encryption using by
default the TENIS-POLAR cipher.  This last cipher of encryption became famous
through the collection of Brazilian books \"Os Karas\" by the author Pedro
Bandeira.  For more details, see \"A Cryptographic Dictionary\" (GC&CS, 1944).")
    (license license:gpl3)))

(define-public r-tendril
  (package
    (name "r-tendril")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tendril" version))
              (sha256
               (base32
                "1wvczfklsccs8jd081vb6d6h7i35lhf6na925fm7wq8ars0b23wd"))))
    (properties `((upstream-name . "Tendril")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-plyr
                             r-plotly
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Karpefors/Tendril")
    (synopsis "Compute and Display Tendril Plots")
    (description
     "Compute the coordinates to produce a tendril plot.  In the tendril plot, each
tendril (branch) represents a type of events, and the direction of the tendril
is dictated by on which treatment arm the event is occurring.  If an event is
occurring on the first of the two specified treatment arms, the tendril bends in
a clockwise direction.  If an event is occurring on the second of the treatment
arms, the tendril bends in an anti-clockwise direction.  Ref: Karpefors, M and
Weatherall, J., \"The Tendril Plot - a novel visual summary of the incidence,
significance and temporal aspects of adverse events in clinical trials\" - JAMIA
2018; 25(8): 1069-1073 <doi:10.1093/jamia/ocy016>.")
    (license license:gpl2)))

(define-public r-tempr
  (package
    (name "r-tempr")
    (version "0.9.9.20")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tempR" version))
              (sha256
               (base32
                "12wnb9w5ql4q9n0gppjaxa66rrmdp0mklrhpp1chf9qr9wyzjkxi"))))
    (properties `((upstream-name . "tempR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tempR")
    (synopsis "Temporal Sensory Data Analysis")
    (description
     "Analysis and visualization of data from temporal sensory methods, including for
temporal check-all-that-apply (TCATA) and temporal dominance of sensations
(TDS).")
    (license license:gpl2+)))

(define-public r-temporalgssa
  (package
    (name "r-temporalgssa")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TemporalGSSA" version))
              (sha256
               (base32
                "0fbpgng4i46wkd38i0j5461nrmcasqpnyn58f7llpk0r6p2fizx2"))))
    (properties `((upstream-name . "TemporalGSSA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TemporalGSSA")
    (synopsis
     "Outputs Temporal Profile of Molecules from Stochastic Simulation Algorithm Generated Datasets")
    (description
     "The data that is generated from independent and consecutive GillespieSSA runs
for a generic biochemical network is formatted as rows and constitutes an
observation.  The first column of each row is the computed timestep for each
run.  Subsequent columns are used for the number of molecules of each
participating molecular species or \"metabolite\" of a generic biochemical
network.  In this way TemporalGSSA', is a wrapper for the R-package
GillespieSSA'.  The number of observations must be at least 30.  This will
generate data that is statistically significant.  TemporalGSSA', transforms this
raw data into a simulation time-dependent and metabolite-specific trial.  Each
such trial is defined as a set of linear models (n >= 30) between a timestep and
number of molecules for a metabolite.  Each linear model is characterized by
coefficients such as the slope, arbitrary constant, etc.  The user must enter an
integer from 1-4.  These specify the statistical modality utilized to compute a
representative timestep (mean, median, random, all).  These arguments are
mandatory and will be checked.  Whilst, the numeric indicator \"0\" indicates
suitability, \"1\" prompts the user to revise and re-enter their data.  An
optional logical argument controls the output to the console with the default
being \"TRUE\" (curtailed) whilst \"FALSE\" (verbose).  The coefficients of each
linear model are averaged (mean slope, mean constant) and are incorporated into
a metabolite-specific linear regression model as the dependent variable.  The
independent variable is the representative timestep chosen previously.  The
generated data is the imputed molecule number for an in silico experiment with
(n >=30) observations.  These steps can be replicated with multiple set of
observations.  The generated \"technical replicates\" can be statistically
evaluated (mean, standard deviation) and will constitute simulation
time-dependent molecules for each metabolite.  For SSA-generated datasets with
varying simulation times TemporalGSSA will generate a simulation time-dependent
trajectory for each metabolite of the biochemical network under study.  The
relevant publication with the mathematical derivation of the algorithm is (2022,
Journal of Bioinformatics and Computational Biology)
<doi:10.1142/S0219720022500184>.  The algorithm has been deployed in the
following publications (2021, Heliyon) <doi:10.1016/j.heliyon.2021.e07466> and
(2016, Journal of Theoretical Biology) <doi:10.1016/j.jtbi.2016.07.002>.")
    (license license:gpl3)))

(define-public r-temporal
  (package
    (name "r-temporal")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Temporal" version))
              (sha256
               (base32
                "1f1gp7zqaa2phv9rik6nmlj4dcqlm7z9s6y5iify3v6vai9sky72"))))
    (properties `((upstream-name . "Temporal")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-numderiv r-expint r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Temporal")
    (synopsis "Parametric Time to Event Analysis")
    (description
     "This package performs maximum likelihood based estimation and inference on time
to event data, possibly subject to non-informative right censoring.
FitParaSurv() provides maximum likelihood estimates of model parameters and
distributional characteristics, including the mean, median, variance, and
restricted mean.  CompParaSurv() compares the mean, median, and restricted mean
survival experiences of two treatment groups.  Candidate distributions include
the exponential, gamma, generalized gamma, log-normal, and Weibull.")
    (license license:gpl3)))

(define-public r-tempor
  (package
    (name "r-tempor")
    (version "1.0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tempoR" version))
              (sha256
               (base32
                "0gn16j496833pvbjaf6wx26z9ilwssjp947mcyk6n2jb33x93rr2"))))
    (properties `((upstream-name . "tempoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-pls r-foreach r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tempoR")
    (synopsis "Characterizing Temporal Dysregulation")
    (description
     "TEMPO (TEmporal Modeling of Pathway Outliers) is a pathway-based outlier
detection approach for finding pathways showing significant changes in temporal
expression patterns across conditions.  Given a gene expression data set where
each sample is characterized by an age or time point as well as a phenotype
(e.g. control or disease), and a collection of gene sets or pathways, TEMPO
ranks each pathway by a score that characterizes how well a partial least
squares regression (PLSR) model can predict age as a function of gene expression
in the controls and how poorly that same model performs in the disease.  TEMPO
v1.0.3 is described in Pietras (2018) <doi:10.1145/3233547.3233559>.")
    (license license:gpl3)))

(define-public r-templr
  (package
    (name "r-templr")
    (version "0.2-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "templr" version))
              (sha256
               (base32
                "1s2awbcf3vaalbrwz5ryfiz69vhapy9h6jhy6zgzqqs5l1aw4ad0"))))
    (properties `((upstream-name . "templr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-remotes r-jsonlite))
    (home-page "https://github.com/MASCOTNUM/templr")
    (synopsis "MASCOTNUM Algorithms Template Tools")
    (description
     "Helper functions for MASCOTNUM algorithm template, for design of numerical
experiments practice: algorithm template parser to support MASCOTNUM
specification <https://www.gdr-mascotnum.fr/template.html>, ask & tell
decoupling injection (inspired by
<https://search.r-project.org/CRAN/refmans/sensitivity/html/decoupling.html>) to
use \"crimped\" algorithms (like uniroot(), optim(), ...) from outside R, basic
template examples: Brent algorithm for 1 dim root finding and L-BFGS-B from base
optim().")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-templates
  (package
    (name "r-templates")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "templates" version))
              (sha256
               (base32
                "0xnzj3cvhw1r7zfqaijbfdyclka61jwixcdh05a5z9qwgv0076sh"))))
    (properties `((upstream-name . "templates")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-magrittr r-dat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=templates")
    (synopsis "System for Working with Templates")
    (description
     "This package provides tools to work with template code and text in R. It aims to
provide a simple substitution mechanism for R-expressions inside these
templates.  Templates can be written in other languages like SQL', can simply be
represented by characters in R, or can themselves be R-expressions or functions.")
    (license license:expat)))

(define-public r-templateicar
  (package
    (name "r-templateicar")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "templateICAr" version))
              (sha256
               (base32
                "0krkxcykgj239xx2gzww7x3xwdg8a90ysmrkisx8546admwxyj7z"))))
    (properties `((upstream-name . "templateICAr")))
    (build-system r-build-system)
    (propagated-inputs (list r-squarem
                             r-rcppeigen
                             r-rcpp
                             r-pesel
                             r-matrixstats
                             r-matrix
                             r-ica
                             r-fmritools
                             r-expm
                             r-excursions
                             r-abind))
    (home-page "https://github.com/mandymejia/templateICAr")
    (synopsis
     "Estimate Brain Networks and Connectivity with ICA and Empirical Priors")
    (description
     "This package implements the template ICA (independent components analysis) model
proposed in Mejia et al. (2020) <doi:10.1080/01621459.2019.1679638> and the
spatial template ICA model proposed in proposed in Mejia et al. (2022)
<doi:10.1080/10618600.2022.2104289>.  Both models estimate subject-level brain
as deviations from known population-level networks, which are estimated using
standard ICA algorithms.  Both models employ an expectation-maximization
algorithm for estimation of the latent brain networks and unknown model
parameters.  Includes direct support for CIFTI', GIFTI', and NIFTI neuroimaging
file formats.")
    (license license:gpl3)))

(define-public r-temperatureresponse
  (package
    (name "r-temperatureresponse")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "temperatureresponse" version))
              (sha256
               (base32
                "1id3wjzfs132hj8cm7gpf105qaay9dff07ixah9rmn5sk6si0zmq"))))
    (properties `((upstream-name . "temperatureresponse")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve
                             r-numderiv
                             r-minpack-lm
                             r-dplyr
                             r-broom
                             r-aiccmodavg))
    (home-page "https://github.com/low-decarie/temperatureresponse")
    (synopsis "Temperature Response")
    (description
     "Fits temperature response models to rate measurements taken at different
temperatures.  Etienne Low-Decarie,Tobias G. Boatman, Noah Bennett,Will
Passfield,Antonio Gavalas-Olea,Philipp Siegel, Richard J. Geider (2017)
<doi:10.1002/ece3.3576> .")
    (license license:gpl3)))

(define-public r-tempdisagg
  (package
    (name "r-tempdisagg")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tempdisagg" version))
              (sha256
               (base32
                "1n1ng7xki4syy305gsclz7wrqb48vkjw3la0vxs975apv1mc4pzr"))))
    (properties `((upstream-name . "tempdisagg")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://journal.r-project.org/archive/2013-2/sax-steiner.pdf")
    (synopsis
     "Methods for Temporal Disaggregation and Interpolation of Time Series")
    (description
     "Temporal disaggregation methods are used to disaggregate and interpolate a low
frequency time series to a higher frequency series, where either the sum, the
mean, the first or the last value of the resulting high frequency series is
consistent with the low frequency series.  Temporal disaggregation can be
performed with or without one or more high frequency indicator series.  Contains
the methods of Chow-Lin, Santos-Silva-Cardoso, Fernandez, Litterman, Denton and
Denton-Cholette, summarized in Sax and Steiner (2013)
<doi:10.32614/RJ-2013-028>.  Supports most R time series classes.")
    (license license:gpl3)))

(define-public r-tempcont
  (package
    (name "r-tempcont")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TempCont" version))
              (sha256
               (base32
                "1pl0czrpw74zfm5vycyl0h8hc3n5whf4g6a2759a22384gk5fq7k"))))
    (properties `((upstream-name . "TempCont")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://github.com/burriach/tempcont")
    (synopsis "Temporal Contributions on Trends using Mixed Models")
    (description
     "Method to estimate the effect of the trend in predictor variables on the
observed trend of the response variable using mixed models with temporal
autocorrelation.  See FernÃ¡ndez-MartÃ­nez et al. (2017 and 2019)
<doi:10.1038/s41598-017-08755-8> <doi:10.1038/s41558-018-0367-7>.")
    (license license:gpl2+)))

(define-public r-telp
  (package
    (name "r-telp")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TELP" version))
              (sha256
               (base32
                "0wzm3dz0489ha7dd6lkashvvjydck9jw2pavlx9plpksvzr4q9ph"))))
    (properties `((upstream-name . "TELP")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud
                             r-tm
                             r-tcltk2
                             r-rcolorbrewer
                             r-gridextra
                             r-ggplot2
                             r-arulesviz
                             r-arules))
    (home-page "https://cran.r-project.org/package=TELP")
    (synopsis
     "Social Representation Theory Application: The Free Evocation of Words Technique")
    (description
     "Using The Free Evocation of Words Technique method with some functions, this
package will make a social representation and other analysis.  The Free
Evocation of Words Technique consists of collecting a number of words evoked by
a subject facing exposure to an inducer term.  The purpose of this technique is
to understand the relationships created between words evoked by the individual
and the inducer term.  This technique is included in the theory of social
representations, therefore, on the information transmitted by an individual,
seeks to create a profile that define a social group.")
    (license license:gpl3+)))

(define-public r-telemac
  (package
    (name "r-telemac")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "telemac" version))
              (sha256
               (base32
                "12wkhya49yi0qqm73sizgnf6r5lkssg07wc6pq9iychjjd0cxfly"))))
    (properties `((upstream-name . "telemac")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-sys
                             r-stringr
                             r-sp
                             r-sf
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-purrr
                             r-magrittr
                             r-gstat
                             r-fs
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/tpilz/telemac")
    (synopsis "R Interface to the TELEMAC Model Suite")
    (description
     "An R interface to the TELEMAC suite for modelling of free surface flow.  This
includes methods for model initialisation, simulation, and visualisation.  So
far only the TELEMAC-2D module for 2-dimensional hydrodynamic modelling is
implemented.")
    (license license:gpl3+)))

(define-public r-telegram-bot
  (package
    (name "r-telegram-bot")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "telegram.bot" version))
              (sha256
               (base32
                "0fqv2piddb8i37rpvw6li25jhc9mbi7fyqmib90xah6qmlaji02g"))))
    (properties `((upstream-name . "telegram.bot")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-httpuv
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ebeneditos/telegram.bot")
    (synopsis "Develop a 'Telegram Bot' with R")
    (description
     "This package provides a pure interface for the Telegram Bot API
<http://core.telegram.org/bots/api>.  In addition to the pure API
implementation, it features a number of tools to make the development of
Telegram bots with R easy and straightforward, providing an easy-to-use
interface that takes some work off the programmer.")
    (license license:gpl3)))

(define-public r-telegram
  (package
    (name "r-telegram")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "telegram" version))
              (sha256
               (base32
                "02wwa115f0vz2d9y4nf01397hjkpc3cv2gdl47snrajrm41gji7y"))))
    (properties `((upstream-name . "telegram")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-jsonlite r-httr r-curl))
    (home-page "http://github.com/lbraglia/telegram")
    (synopsis "R Wrapper Around the Telegram Bot API")
    (description
     "R wrapper around the Telegram Bot API (http://core.telegram.org/bots/api) to
access Telegram's messaging facilities with ease (e.g. you send messages,
images, files from R to your smartphone).")
    (license license:gpl3)))

(define-public r-telefit
  (package
    (name "r-telefit")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "telefit" version))
              (sha256
               (base32
                "0z6dr4ni00dyagbkzr3c7l4h2g23w3bfj99a9755vmrzyy6r45iq"))))
    (properties `((upstream-name . "telefit")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sp
                             r-scoringrules
                             r-scales
                             r-reshape2
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-raster
                             r-mvtnorm
                             r-itertools
                             r-gtable
                             r-ggplot2
                             r-foreach
                             r-fields
                             r-dplyr
                             r-cowplot
                             r-coda
                             r-abind))
    (home-page "https://cran.r-project.org/package=telefit")
    (synopsis
     "Estimation and Prediction for Remote Effects Spatial Process Models")
    (description
     "Implementation of the remote effects spatial process (RESP) model for
teleconnection.  The RESP model is a geostatistical model that allows a
spatially-referenced variable (like average precipitation) to be influenced by
covariates defined on a remote domain (like sea surface temperatures).  The RESP
model is introduced in Hewitt et al. (2018) <doi:10.1002/env.2523>.  Sample code
for working with the RESP model is available at
<https://jmhewitt.github.io/research/resp_example>.  This material is based upon
work supported by the National Science Foundation under grant number AGS
1419558.  Any opinions, findings, and conclusions or recommendations expressed
in this material are those of the authors and do not necessarily reflect the
views of the National Science Foundation.")
    (license license:gpl3)))

(define-public r-tejapi
  (package
    (name "r-tejapi")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tejapi" version))
              (sha256
               (base32
                "1v80yjbik6shqad2nvi374dpzs9bjv9ah26agy0khmwnbz6029rk"))))
    (properties `((upstream-name . "Tejapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://api.tej.com.tw")
    (synopsis "API Wrapper for Taiwan Economic Journal Data Service")
    (description
     "This package provides functions for interacting directly with the Taiwan
Economic Journal API to offer data in R. For more information go to
<https://api.tej.com.tw>.")
    (license license:expat)))

(define-public r-teigen
  (package
    (name "r-teigen")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "teigen" version))
              (sha256
               (base32
                "1k5k3lj6av5pyx130w1j7avd0jdmm12ryc71mi5mq49sp95ndl4v"))))
    (properties `((upstream-name . "teigen")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=teigen")
    (synopsis
     "Model-Based Clustering and Classification with the Multivariate t Distribution")
    (description
     "Fits mixtures of multivariate t-distributions (with eigen-decomposed covariance
structure) via the expectation conditional-maximization algorithm under a
clustering or classification paradigm.")
    (license license:gpl2+)))

(define-public r-tehtuner
  (package
    (name "r-tehtuner")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tehtuner" version))
              (sha256
               (base32
                "1dr3xrhwszv75w8iz7yy44a7kxac5n1dirjhjfqgvjz529m8ycqb"))))
    (properties `((upstream-name . "tehtuner")))
    (build-system r-build-system)
    (propagated-inputs (list r-superlearner
                             r-stringr
                             r-rpart
                             r-rdpack
                             r-randomforestsrc
                             r-party
                             r-glmnet
                             r-earth))
    (home-page "https://github.com/jackmwolf/tehtuner")
    (synopsis "Fit and Tune Models to Detect Treatment Effect Heterogeneity")
    (description
     "This package implements methods to fit Virtual Twins models (Foster et al.
(2011) <doi:10.1002/sim.4322>) for identifying subgroups with differential
effects in the context of clinical trials while controlling the probability of
falsely detecting a differential effect when the conditional average treatment
effect is uniform across the study population using parameter selection methods
proposed in Wolf et al. (2022) <doi:10.1177/17407745221095855>.")
    (license license:gpl3+)))

(define-public r-teda
  (package
    (name "r-teda")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "teda" version))
              (sha256
               (base32
                "0yx469jbkw9cgx73zi5mkykrdn16kn01zh524x9411314aa32avx"))))
    (properties `((upstream-name . "teda")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=teda")
    (synopsis
     "An Implementation of the Typicality and Eccentricity Data Analysis Framework")
    (description
     "The typicality and eccentricity data analysis (TEDA) framework was put forward
by Angelov (2013) <DOI:10.14313/JAMRIS_2-2014/16>.  It has been further
developed into multiple different techniques since, and provides a
non-parametric way of determining how similar an observation, from a process
that is not purely random, is to other observations generated by the process.
This package provides code to use the batch and recursive TEDA methods that have
been published.")
    (license license:gpl3+)))

(define-public r-teamr
  (package
    (name "r-teamr")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "teamr" version))
              (sha256
               (base32
                "01gngws8lf093598wlzrv4ls74avsli6ij33v1plqgc0znyaw4s2"))))
    (properties `((upstream-name . "teamr")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-jsonlite r-httr))
    (home-page "https://github.com/wwwjk366/teamr")
    (synopsis
     "Send Formatted Messages, Images and Objects to Microsoft 'Teams'")
    (description
     "Package of wrapper functions using R6 class to send requests to Microsoft Teams
<https://products.office.com/en-us/microsoft-teams/group-chat-software> through
webhooks.  When you need to share information or data from R to Teams', rather
than copying/pasting, you can use this package to send well-formatted output
from multiple R objects.")
    (license license:expat)))

(define-public r-teamcolors
  (package
    (name "r-teamcolors")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "teamcolors" version))
              (sha256
               (base32
                "0mqrjnkpxzv7armgbl9nwz42pjb9l94yml5lp41rhjj9414b2729"))))
    (properties `((upstream-name . "teamcolors")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-ggplot2 r-dplyr))
    (home-page "http://github.com/beanumber/teamcolors")
    (synopsis "Color Palettes for Pro Sports Teams")
    (description
     "This package provides color palettes corresponding to professional and amateur,
sports teams.  These can be useful in creating data graphics that are themed for
particular teams.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-team
  (package
    (name "r-team")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TEAM" version))
              (sha256
               (base32
                "1yj7fw935rr7fh7h2p4ra8d3ynz5c6b30fqzm1djgav1k84wcin2"))))
    (properties `((upstream-name . "TEAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-ks r-ggplot2))
    (home-page "https://cran.r-project.org/package=TEAM")
    (synopsis "Multiple Hypothesis Testing on an Aggregation Tree Method")
    (description
     "An implementation of the TEAM algorithm to identify local differences between
two (e.g. case and control) independent, univariate distributions, as described
in J Pura, C Chan, and J Xie (2019) <arXiv:1906.07757>.  The algorithm is based
on embedding a multiple-testing procedure on a hierarchical structure to
identify high-resolution differences between two distributions.  The
hierarchical structure is designed to identify strong, short-range differences
at lower layers and weaker, but long-range differences at increasing layers.
TEAM yields consistent layer-specific and overall false discovery rate control.")
    (license license:gpl2)))

(define-public r-tealeaves
  (package
    (name "r-tealeaves")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tealeaves" version))
              (sha256
               (base32
                "0gfga3fx047kpngwrkinsq3w5f34svnh3vpfjnc78bvrmmm70wqw"))))
    (properties `((upstream-name . "tealeaves")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-future
                             r-furrr
                             r-dplyr
                             r-crayon
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tealeaves")
    (synopsis "Solve for Leaf Temperature Using Energy Balance")
    (description
     "This package implements models of leaf temperature using energy balance.  It
uses units to ensure that parameters are properly specified and transformed
before calculations.  It allows separate lower and upper surface conductances to
heat and water vapour, so sensible and latent heat loss are calculated for each
surface separately as in Foster and Smith (1986)
<doi:10.1111/j.1365-3040.1986.tb02108.x>.  It's straightforward to model leaf
temperature over environmental gradients such as light, air temperature,
humidity, and wind.  It can also model leaf temperature over trait gradients
such as leaf size or stomatal conductance.  Other references are Monteith and
Unsworth (2013, ISBN:9780123869104), Nobel (2009, ISBN:9780123741431), and
Okajima et al. (2012) <doi:10.1007/s11284-011-0905-5>.")
    (license license:expat)))

(define-public r-teachnet
  (package
    (name "r-teachnet")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TeachNet" version))
              (sha256
               (base32
                "12kkpr96mq0jr07k7ivcmwhrfgas1qrfqfhxa4gm7vv3vkjn0gs9"))))
    (properties `((upstream-name . "TeachNet")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TeachNet")
    (synopsis "Fits Neural Networks to Learn About Backpropagation")
    (description
     "Can fit neural networks with up to two hidden layer and two different error
functions.  Also able to handle a weight decay.  But just able to compute one
output neuron and very slow.")
    (license license:gpl2+)))

(define-public r-teachingsampling
  (package
    (name "r-teachingsampling")
    (version "4.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TeachingSampling" version))
              (sha256
               (base32
                "02nywwmv0r8md00kra7wxwzvm6p51l4p8la51bxh8sqq8ajsdswh"))))
    (properties `((upstream-name . "TeachingSampling")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=TeachingSampling")
    (synopsis
     "Selection of Samples and Parameter Estimation in Finite Population")
    (description
     "Allows the user to draw probabilistic samples and make inferences from a finite
population based on several sampling designs.")
    (license license:gpl2+)))

(define-public r-teachingdemos
  (package
    (name "r-teachingdemos")
    (version "2.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TeachingDemos" version))
              (sha256
               (base32
                "0i46d7269zhvr3c2a2w1lb3jnhc1cgwhcppqdmnl1ymgw5f40x9y"))))
    (properties `((upstream-name . "TeachingDemos")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TeachingDemos")
    (synopsis "Demonstrations for Teaching and Learning")
    (description
     "Demonstration functions that can be used in a classroom to demonstrate
statistical concepts, or on your own to better understand the concepts or the
programming.")
    (license license:artistic2.0)))

(define-public r-teachingapps
  (package
    (name "r-teachingapps")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "teachingApps" version))
              (sha256
               (base32
                "161l9nvgi22ihp3l87x4alk22m9451h45n7s3ic60y26sr3zlv3k"))))
    (properties `((upstream-name . "teachingApps")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-shinythemes
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-rprojroot
                             r-rcppnumerical
                             r-rcppeigen
                             r-rcpp
                             r-pacman
                             r-miniui
                             r-markdown
                             r-magrittr
                             r-knitr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-devtools
                             r-data-table
                             r-bh
                             r-actuar))
    (home-page "https://github.com/Auburngrads/teachingApps")
    (synopsis
     "Apps for Teaching Statistics, R Programming, and Shiny App Development")
    (description
     "This package contains apps and gadgets for teaching data analysis and statistics
concepts along with how to implement them in R. Includes tools to make app
development easier and faster by nesting apps together.")
    (license license:gpl2+)))

(define-public r-teachhist
  (package
    (name "r-teachhist")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TeachHist" version))
              (sha256
               (base32
                "0sfs93y88c2j9nd1nbdvhs1rf20jab0akj3flxwp5fnqzdz8irg5"))))
    (properties `((upstream-name . "TeachHist")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=TeachHist")
    (synopsis
     "Collection of Amended Histograms Designed for Teaching Statistics")
    (description
     "Statistics students often have problems understanding the relation between a
random variable's true scale and its z-values.  To allow instructors to better
better visualize histograms for these students, the package provides histograms
with two horizontal axis containing z-values and the true scale of the variable.
 The function TeachHistDens() provides a density histogram with two axis.
TeachHistCounts() and TeachHistRelFreq() are variations for count and relative
frequency histograms, respectively.  TeachConfInterv() and TeachHypTest() help
instructors to visualize confidence levels and the results of hypothesis tests.")
    (license license:expat)))

(define-public r-te
  (package
    (name "r-te")
    (version "0.3-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TE" version))
              (sha256
               (base32
                "15530a5qjlh74c1qji76j25mm4c59gifp34y066f8j21f70rahfs"))))
    (properties `((upstream-name . "TE")))
    (build-system r-build-system)
    (propagated-inputs (list r-rainbow r-mass))
    (home-page "https://cran.r-project.org/package=TE")
    (synopsis "Insertion/Deletion Dynamics for Transposable Elements")
    (description
     "This package provides functions to estimate the insertion and deletion rates of
transposable element (TE) families.  The estimation of insertion rate consists
of an improved estimate of the age distribution that takes into account random
mutations, and an adjustment by the deletion rate.  A hypothesis test for a
uniform insertion rate is also implemented.  This package implements the methods
proposed in Dai et al (2018).")
    (license license:expat)))

(define-public r-tdsc
  (package
    (name "r-tdsc")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdsc" version))
              (sha256
               (base32
                "1h46cflxj27i9bkl7iqxn7kzccl9b8r3fa9f5ska3a9p57algfyv"))))
    (properties `((upstream-name . "tdsc")))
    (build-system r-build-system)
    (propagated-inputs (list r-moments r-data-table))
    (home-page "https://cran.r-project.org/package=tdsc")
    (synopsis "Time Domain Signal Coding")
    (description
     "This package provides functions for performing time domain signal coding as used
in Chesmore (2001) <doi:10.1016/S0003-682X(01)00009-3>, and related tasks.  This
package creates the standard S-matrix and A-matrix (with variable lag), has
tools to convert coding matrices into distributed matrices, provides published
codebooks and allows for extraction of code sequences.")
    (license license:gpl3)))

(define-public r-tdroc
  (package
    (name "r-tdroc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdROC" version))
              (sha256
               (base32
                "137j1m9pysjcz1gsfcym0438by3c7na21ccjlqf7xfccr1y8k2k6"))))
    (properties `((upstream-name . "tdROC")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=tdROC")
    (synopsis
     "Nonparametric Estimation of Time-Dependent ROC Curve from Right Censored Survival Data")
    (description
     "Compute time-dependent ROC curve from censored survival data using nonparametric
weight adjustments.")
    (license license:gpl2+)))

(define-public r-tdr
  (package
    (name "r-tdr")
    (version "0.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdr" version))
              (sha256
               (base32
                "0i0hnb3fc4d1mbbxcpzmyfh1w2rahfjabg5iyxym3yjd6377al15"))))
    (properties `((upstream-name . "tdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-lattice r-ggplot2))
    (home-page "http://github.com/oscarperpinan/tdr")
    (synopsis "Target Diagram")
    (description
     "Implementation of target diagrams using lattice and ggplot2 graphics.  Target
diagrams provide a graphical overview of the respective contributions of the
unbiased RMSE and MBE to the total RMSE (Jolliff, J. et al., 2009. \"Summary
Diagrams for Coupled Hydrodynamic-Ecosystem Model Skill Assessment.\" Journal of
Marine Systems 76: 64â82.)")
    (license license:gpl2)))

(define-public r-tdpanalysis
  (package
    (name "r-tdpanalysis")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDPanalysis" version))
              (sha256
               (base32
                "0kvbsgwl7b9a3hn4d3snajqmynbajd2d8lc1na0hri2cv8qm8x9h"))))
    (properties `((upstream-name . "TDPanalysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr))
    (home-page "https://cran.r-project.org/package=TDPanalysis")
    (synopsis "Granier's Sap Flow Sensors (TDP) Analysis")
    (description
     "Set of functions designed to help in the analysis of TDP sensors.  Features
includes dates and time conversion, weather data interpolation, daily maximum of
tension analysis and calculations required to convert sap flow density data to
sap flow rates at the tree and plot scale (For more information see : Granier
(1985) <DOI:10.1051/forest:19850204> & Granier (1987)
<DOI:10.1093/treephys/3.4.309>).")
    (license license:gpl2)))

(define-public r-tdigest
  (package
    (name "r-tdigest")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdigest" version))
              (sha256
               (base32
                "1g4yk01lmx8cz5q06bxm3kcsi7c9cvpdfi925csc4qaf5rdrad4y"))))
    (properties `((upstream-name . "tdigest")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "https://git.sr.ht/~hrbrmstr/tdigest")
    (synopsis "Wicked Fast, Accurate Quantiles Using t-Digests")
    (description
     "The t-Digest construction algorithm, by Dunning et al., (2019)
<arXiv:1902.04023v1>, uses a variant of 1-dimensional k-means clustering to
produce a very compact data structure that allows accurate estimation of
quantiles.  This t-Digest data structure can be used to estimate quantiles,
compute other rank statistics or even to estimate related measures like trimmed
means.  The advantage of the t-Digest over previous digests for this purpose is
that the t-Digest handles data with full floating point resolution.  The
accuracy of quantile estimates produced by t-Digests can be orders of magnitude
more accurate than those produced by previous digest algorithms.  Methods are
provided to create and update t-Digests and retrieve quantiles from the
accumulated distributions.")
    (license license:expat)))

(define-public r-tdcor
  (package
    (name "r-tdcor")
    (version "0.1-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDCor" version))
              (sha256
               (base32
                "18085prcwhl5w717f1f7jcqskw2jvigvjjs2l5y6106ibiam6hxx"))))
    (properties `((upstream-name . "TDCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve))
    (home-page "https://cran.r-project.org/package=TDCor")
    (synopsis "Gene Network Inference from Time-Series Transcriptomic Data")
    (description
     "The Time-Delay Correlation algorithm (TDCor) reconstructs the topology of a gene
regulatory network (GRN) from time-series transcriptomic data.  The algorithm is
described in details in Lavenus et al., Plant Cell, 2015.  It was initially
developed to infer the topology of the GRN controlling lateral root formation in
Arabidopsis thaliana.  The time-series transcriptomic dataset which was used in
this study is included in the package to illustrate how to use it.")
    (license license:gpl2+)))

(define-public r-tdcmstan
  (package
    (name "r-tdcmstan")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdcmStan" version))
              (sha256
               (base32
                "08gdqm2hb33kw3jhag0n7a4linydxichzr0ss96yg9h65993pag0"))))
    (properties `((upstream-name . "tdcmStan")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-magrittr
                             r-glue
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tdcmStan")
    (synopsis "Automating the Creation of Stan Code for TDCMs")
    (description
     "This package provides a collection of functions for automatically creating Stan
code for transition diagnostic classification models (TDCMs) as they are defined
by Madison and Bradshaw (2018) <DOI:10.1007/s11336-018-9638-5>.  This package
supports automating the creation of Stan code for TDCMs, fungible TDCMs (i.e.,
TDCMs with item parameters constrained to be equal across all items), and
multi-threaded TDCMs.")
    (license license:gpl2+)))

(define-public r-tdboost
  (package
    (name "r-tdboost")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDboost" version))
              (sha256
               (base32
                "0kbmn1bddsnmh20rnkw6gizpb23srb4id3dsqqrjgj15j4zkavas"))))
    (properties `((upstream-name . "TDboost")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=TDboost")
    (synopsis "Boosted Tweedie Compound Poisson Model")
    (description
     "An implementation of a boosted Tweedie compound Poisson model proposed by Yang,
Y., Qian, W. and Zou, H. (2018) <doi:10.1080/07350015.2016.1200981>.  It is
capable of fitting a flexible nonlinear Tweedie compound Poisson model (or a
gamma model) and capturing high-order interactions among predictors.  This
package is based on the gbm package originally developed by Greg Ridgeway.")
    (license license:gpl3)))

(define-public r-tdbook
  (package
    (name "r-tdbook")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDbook" version))
              (sha256
               (base32
                "127bvwy65fr0nm7gw4mqcjm6dfrvlnl77z4ig2bpfxy7a0xq67gp"))))
    (properties `((upstream-name . "TDbook")))
    (build-system r-build-system)
    (home-page
     "https://www.amazon.com/Integration-Manipulation-Visualization-Phylogenetic-Computational-ebook/dp/B0B5NLZR1Z/")
    (synopsis
     "Companion Package for the Book \"Data Integration, Manipulation and Visualization of Phylogenetic Trees\" by Guangchuang Yu (2022, ISBN:9781032233574)")
    (description
     "The companion package that provides all the datasets used in the book \"Data
Integration, Manipulation and Visualization of Phylogenetic Trees\" by
Guangchuang Yu (2022, ISBN:9781032233574).")
    (license license:artistic2.0)))

(define-public r-tdavec
  (package
    (name "r-tdavec")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDAvec" version))
              (sha256
               (base32
                "0g449p1y16sl35md9c4qnj3n7i5nx9appqx22d7ijjhr7zpv0p1s"))))
    (properties `((upstream-name . "TDAvec")))
    (build-system r-build-system)
    (propagated-inputs (list r-tda r-rcpp r-microbenchmark))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TDAvec")
    (synopsis "Vector Summaries of Persistence Diagrams")
    (description
     "Tools for computing various vector summaries of persistence diagrams studied in
Topological Data Analysis.  For improved computational efficiency, all code for
the vector summaries is written in C++ using the Rcpp package.")
    (license license:gpl2+)))

(define-public r-tdaunif
  (package
    (name "r-tdaunif")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tdaunif" version))
              (sha256
               (base32
                "0a24lqiimp54fmj4zi7bakxral8ny60n25h9arwl6m00c7cn98pl"))))
    (properties `((upstream-name . "tdaunif")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://corybrunson.github.io/tdaunif/")
    (synopsis "Uniform Manifold Samplers for Topological Data Analysis")
    (description
     "Uniform random samples from simple manifolds, sometimes with noise, are commonly
used to test topological data analytic (TDA) tools.  This package includes
samplers powered by two techniques: analytic volume-preserving
parameterizations, as employed by Arvo (1995) <doi:10.1145/218380.218500>, and
rejection sampling, as employed by Diaconis, Holmes, and Shahshahani (2013)
<doi:10.1214/12-IMSCOLL1006>.")
    (license license:gpl3)))

(define-public r-tdastats
  (package
    (name "r-tdastats")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDAstats" version))
              (sha256
               (base32
                "1zmickqk60vm9rzy67hib835v3c45aqjk441p31vpbvhbiy58nq5"))))
    (properties `((upstream-name . "TDAstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rrrlw/TDAstats")
    (synopsis "Pipeline for Topological Data Analysis")
    (description
     "This package provides a comprehensive toolset for any useR conducting
topological data analysis, specifically via the calculation of persistent
homology in a Vietoris-Rips complex.  The tools this package currently provides
can be conveniently split into three main sections: (1) calculating persistent
homology; (2) conducting statistical inference on persistent homology
calculations; (3) visualizing persistent homology and statistical inference.
The published form of TDAstats can be found in Wadhwa et al. (2018)
<doi:10.21105/joss.00860>.  For a general background on computing persistent
homology for topological data analysis, see Otter et al. (2017)
<doi:10.1140/epjds/s13688-017-0109-5>.  To learn more about how the permutation
test is used for nonparametric statistical inference in topological data
analysis, read Robinson & Turner (2017) <doi:10.1007/s41468-017-0008-7>.  To
learn more about how TDAstats calculates persistent homology, you can visit the
GitHub repository for Ripser, the software that works behind the scenes at
<https://github.com/Ripser/ripser>.  This package has been published as Wadhwa
et al. (2018) <doi:10.21105/joss.00860>.")
    (license license:gpl3)))

(define-public r-tdapplied
  (package
    (name "r-tdapplied")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDApplied" version))
              (sha256
               (base32
                "0bq06pzw7w4qp8cqvkxqqhx2qyn03vz7zxsk3f1ykjv846qxf6bb"))))
    (properties `((upstream-name . "TDApplied")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdist
                             r-parallelly
                             r-kernlab
                             r-iterators
                             r-foreach
                             r-doparallel
                             r-clue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shaelebrown/TDApplied")
    (synopsis "Machine Learning and Inference for Topological Data Analysis")
    (description
     "Topological data analysis is a powerful tool for finding non-linear global
structure in whole datasets.  TDApplied aims to bridge topological data analysis
with data, statistical and machine learning practitioners so that more analyses
may benefit from the power of topological data analysis.  The main tool of
topological data analysis is persistent homology, which computes a shape
descriptor of a dataset, called a persistence diagram.  There are five goals of
this package: (1) deliver a fast implementation of persistent homology via a
python interface, (2) convert persistence diagrams computed using the two main R
packages for topological data analysis into a data frame, (3) implement fast
versions of both distance and kernel calculations for pairs of persistence
diagrams, (4) contribute tools for the interpretation of persistence diagrams,
and (5) provide parallelized methods for machine learning and inference for
persistence diagrams.")
    (license license:gpl3)))

(define-public r-tdakit
  (package
    (name "r-tdakit")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDAkit" version))
              (sha256
               (base32
                "1gvcv3016kjk98qm07i972fi66bcljj1avmagyc8qxs29cq3ngg3"))))
    (properties `((upstream-name . "TDAkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tdastats
                             r-t4cluster
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-maotai
                             r-ggplot2
                             r-energy))
    (home-page "https://cran.r-project.org/package=TDAkit")
    (synopsis "Toolkit for Topological Data Analysis")
    (description
     "Topological data analysis studies structure and shape of the data using
topological features.  We provide a variety of algorithms to learn with
persistent homology of the data based on functional summaries for clustering,
hypothesis testing, visualization, and others.  We refer to Wasserman (2018)
<doi:10.1146/annurev-statistics-031017-100045> for a statistical perspective on
the topic.")
    (license license:expat)))

(define-public r-tda
  (package
    (name "r-tda")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TDA" version))
              (sha256
               (base32
                "0gk058mbbywdpmjif3zl0g4a4sn3jr5bxksmqwhk3h881rsjic6h"))))
    (properties `((upstream-name . "TDA")))
    (build-system r-build-system)
    (inputs (list gmp))
    (propagated-inputs (list r-scales
                             r-rcppeigen
                             r-rcpp
                             r-igraph
                             r-fnn
                             r-bh))
    (home-page "https://cran.r-project.org/package=TDA")
    (synopsis "Statistical Tools for Topological Data Analysis")
    (description
     "Tools for the statistical analysis of persistent homology and for density
clustering.  For that, this package provides an R interface for the efficient
algorithms of the C++ libraries GUDHI
<https://project.inria.fr/gudhi/software/>, Dionysus
<https://www.mrzv.org/software/dionysus/>, and PHAT
<https://bitbucket.org/phat-code/phat/>.  This package also implements the
methods in Fasy et al. (2014) <doi:10.1214/14-AOS1252> and Chazal et al. (2014)
<doi:10.1145/2582112.2582128> for analyzing the statistical significance of
persistent homology features.")
    (license license:gpl3)))

(define-public r-td
  (package
    (name "r-td")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "td" version))
              (sha256
               (base32
                "1zycwnl7n03jw76n8qrk2zhgnakj6npid25pflj6dnmbjc47ih32"))))
    (properties `((upstream-name . "td")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppsimdjson))
    (home-page "https://dirk.eddelbuettel.com/code/td.html")
    (synopsis "Access to the 'twelvedata' Financial Data API")
    (description
     "The twelvedata REST service offers access to current and historical data on
stocks, standard as well as digital crypto currencies, and other financial
assets covering a wide variety of course and time spans.  See
<https://twelvedata.com/> for details, to create an account, and to request an
API key for free-but-capped access to the data.")
    (license license:gpl2+)))

(define-public r-tcsinvest
  (package
    (name "r-tcsinvest")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcsinvest" version))
              (sha256
               (base32
                "1harmb5ni70k241aq1vww5w7fmjqmlwd6nfma2xa44f3hj7nrf52"))))
    (properties `((upstream-name . "tcsinvest")))
    (build-system r-build-system)
    (propagated-inputs (list r-websocket r-jsonlite r-httr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arbuzovv/tcsinvest")
    (synopsis "R API for Tinkoff Investments")
    (description
     "R functions for Tinkoff Investments API
<https://tinkoffcreditsystems.github.io/invest-openapi/>.  Using this package,
analysts and traders can interact with account and market data from within R.
Clients for both REST and Streaming protocols implemented.")
    (license license:gpl3)))

(define-public r-tcplfit2
  (package
    (name "r-tcplfit2")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcplfit2" version))
              (sha256
               (base32
                "1y69z27mgphcj5qkhlpgv0as59aralimf7mbfrdz5n6nkqfj5krr"))))
    (properties `((upstream-name . "tcplfit2")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcolorbrewer r-numderiv
                             r-future-apply r-future))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tcplfit2")
    (synopsis "Concentration-Response Modeling of HTS or Transcriptomics Data")
    (description
     "This package performs the basic concentration response curve fitting used in the
tcpl package.  It is a substitute for the original tcplFit() function (and
sub-functions) and allows a wider variety of concentration-response models.  All
of the models included in the BMDExpress package are now part of this package,
and the output includes a calculation of the bmd (Benchmark Dose or
concentration) value.")
    (license license:expat)))

(define-public r-tcpl
  (package
    (name "r-tcpl")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcpl" version))
              (sha256
               (base32
                "1xsw532xdf4xksrggsszwbh7rj818hvi9xmndhdhdk6wq6bg7xh4"))))
    (properties `((upstream-name . "tcpl")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tcplfit2
                             r-stringr
                             r-sqldf
                             r-rmariadb
                             r-rcolorbrewer
                             r-plotly
                             r-numderiv
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-dbi
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USEPA/CompTox-ToxCast-tcpl")
    (synopsis "ToxCast Data Analysis Pipeline")
    (description
     "This package provides a set of tools for processing and modeling high-throughput
and high-content chemical screening data.  The package was developed for the the
chemical screening data generated by the US EPA ToxCast program, but can be used
for diverse chemical screening efforts.")
    (license license:expat)))

(define-public r-tcomp
  (package
    (name "r-tcomp")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tcomp" version))
              (sha256
               (base32
                "1k0gsf3yr5n9zc2yi6szxm6s7bf61lz4fx8m3v48jlp5w900prwb"))))
    (properties `((upstream-name . "Tcomp")))
    (build-system r-build-system)
    (propagated-inputs (list r-mcomp r-forecast))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Tcomp")
    (synopsis "Data from the 2010 Tourism Forecasting Competition")
    (description
     "The 1311 time series from the tourism forecasting competition conducted in 2010
and described in Athanasopoulos et al. (2011)
<DOI:10.1016/j.ijforecast.2010.04.009>.")
    (license license:gpl3)))

(define-public r-tcl
  (package
    (name "r-tcl")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcl" version))
              (sha256
               (base32
                "01klrzvw7vc0iwqpmcikgqm8jx3g7536r5f8gb6vwcik912maxnl"))))
    (properties `((upstream-name . "tcl")))
    (build-system r-build-system)
    (propagated-inputs (list r-psychotools
                             r-psych
                             r-numderiv
                             r-matrix
                             r-mass
                             r-ltm
                             r-lattice
                             r-erm
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tcl")
    (synopsis "Testing in Conditional Likelihood Context")
    (description
     "An implementation of hypothesis testing in an extended Rasch modelling
framework, including sample size planning procedures and power computations.
Provides 4 statistical tests, i.e., gradient test (GR), likelihood ratio test
(LR), Rao score or Lagrange multiplier test (RS), and Wald test, for testing a
number of hypotheses referring to the Rasch model (RM), linear logistic test
model (LLTM), rating scale model (RSM), and partial credit model (PCM).  Three
types of functions for power and sample size computations are provided.
Firstly, functions to compute the sample size given a user-specified
(predetermined) deviation from the hypothesis to be tested, the level alpha, and
the power of the test.  Secondly, functions to evaluate the power of the tests
given a user-specified (predetermined) deviation from the hypothesis to be
tested, the level alpha of the test, and the sample size.  Thirdly, functions to
evaluate the so-called post hoc power of the tests.  This is the power of the
tests given the observed deviation of the data from the hypothesis to be tested
and a user-specified level alpha of the test.  Power and sample size
computations are based on a Monte Carlo simulation approach.  It is
computationally very efficient.  The variance of the random error in computing
power and sample size arising from the simulation approach is analytically
derived by using the delta method.  Draxler, C., & Alexandrowicz, R. W. (2015),
<doi:10.1007/s11336-015-9472-y>.")
    (license license:gpl3)))

(define-public r-tciu
  (package
    (name "r-tciu")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TCIU" version))
              (sha256
               (base32
                "1n08jvc60gng3ziisrvgl9kfi55l6mh7bbnwp5mbnnqh0mkdhfv0"))))
    (properties `((upstream-name . "TCIU")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-spatstat-geom
                             r-spatstat-explore
                             r-scales
                             r-rrcov
                             r-reshape2
                             r-rcolorbrewer
                             r-pracma
                             r-plotly
                             r-multiwayregression
                             r-icsnp
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-geometry
                             r-forecast
                             r-foreach
                             r-fmri
                             r-fancycut
                             r-extradistr
                             r-dt
                             r-dplyr
                             r-doparallel
                             r-cubature))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/SOCR/TCIU")
    (synopsis
     "Spacekime Analytics, Time Complexity and Inferential Uncertainty")
    (description
     "Provide the core functionality to transform longitudinal data to complex-time
(kime) data using analytic and numerical techniques, visualize the original
time-series and reconstructed kime-surfaces, perform model based (e.g.,
tensor-linear regression) and model-free classification and clustering methods
in the book Dinov, ID and Velev, MV. (2021) \"Data Science: Time Complexity,
Inferential Uncertainty, and Spacekime Analytics\", De Gruyter STEM Series, ISBN
978-3-11-069780-3. <https://www.degruyter.com/view/title/576646>.  The package
includes 18 core functions which can be separated into three groups.  1) draw
longitudinal data, such as fMRI time-series, and forecast or transform the
time-series data.  2) simulate real-valued time-series data, e.g., fMRI
time-courses, detect the activated areas, report the corresponding p-values, and
visualize the p-values in the 3D brain space.  3) Laplace transform and
kimesurface reconstructions of the fMRI data.")
    (license license:gpl3)))

(define-public r-tciapathfinder
  (package
    (name "r-tciapathfinder")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TCIApathfinder" version))
              (sha256
               (base32
                "15f3w6vhbqy4xzidxasjnqigxchd3jbr2kpm3gggjnkp7rzsfgaf"))))
    (properties `((upstream-name . "TCIApathfinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TCIApathfinder")
    (synopsis "Client for the Cancer Imaging Archive REST API")
    (description
     "This package provides a wrapper for The Cancer Imaging Archive's REST API. The
Cancer Imaging Archive (TCIA) hosts de-identified medical images of cancer
available for public download, as well as rich metadata for each image series.
TCIA provides a REST API for programmatic access to the data.  This package
provides simple functions to access each API endpoint.  For more information,
see <https://github.com/pamelarussell/TCIApathfinder> and TCIA's website.")
    (license license:expat)))

(define-public r-tci
  (package
    (name "r-tci")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tci" version))
              (sha256
               (base32
                "15drq6rvakf8jxmb1g5d7jjl7vnbzg314d809zzq19bicivvxsqj"))))
    (properties `((upstream-name . "tci")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-truncnorm
                             r-reshape2
                             r-reshape
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-knitr
                             r-gridextra
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jarretrt/tci")
    (synopsis "Target Controlled Infusion (TCI)")
    (description
     "Implementation of target-controlled infusion algorithms for compartmental
pharmacokinetic and pharmacokinetic-pharmacodynamic models.  Jacobs (1990)
<doi:10.1109/10.43622>; Marsh et al. (1991) <doi:10.1093/bja/67.1.41>; Shafer
and Gregg (1993) <doi:10.1007/BF01070999>; Schnider et al. (1998)
<doi:10.1097/00000542-199805000-00006>; Abuhelwa, Foster, and Upton (2015)
<doi:10.1016/j.vascn.2015.03.004>; Eleveld et al. (2018)
<doi:10.1016/j.bja.2018.01.018>.")
    (license license:gpl2)))

(define-public r-tcgsa
  (package
    (name "r-tcgsa")
    (version "0.12.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TcGSA" version))
              (sha256
               (base32
                "1bdffzq3zwvr0qsp71mp0fqf9dgx9n3f08c53adwavycwr6zg1l7"))))
    (properties `((upstream-name . "TcGSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-multtest
                             r-lme4
                             r-gtools
                             r-gsa
                             r-ggplot2
                             r-cowplot
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "http://sistm.github.io/TcGSA/")
    (synopsis "Time-Course Gene Set Analysis")
    (description
     "Implementation of Time-course Gene Set Analysis (TcGSA), a method for analyzing
longitudinal gene-expression data at the gene set level.  Method is detailed in:
Hejblum, Skinner & Thiebaut (2015) <doi: 10.1371/journal.pcbi.1004310>.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tcgaviz
  (package
    (name "r-tcgaviz")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcgaViz" version))
              (sha256
               (base32
                "0clyjnrganlgxckh3kl2dbzxc1j09dcl8f5irfl8hmzsb8bxyzd8"))))
    (properties `((upstream-name . "tcgaViz")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-shinyjs
                             r-shinyfeedback
                             r-shiny
                             r-rstatix
                             r-rlang
                             r-reshape2
                             r-readr
                             r-plotly
                             r-openxlsx
                             r-magrittr
                             r-golem
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table
                             r-config))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tcgaViz")
    (synopsis "Visualization Tool for the Cancer Genome Atlas Program (TCGA)")
    (description
     "Differential analysis of tumor tissue immune cell type abundance based on
RNA-seq gene-level expression from The Cancer Genome Atlas (TCGA;
<https://pancanatlas.xenahubs.net>) database.")
    (license license:gpl3)))

(define-public r-tcgaretriever
  (package
    (name "r-tcgaretriever")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TCGAretriever" version))
              (sha256
               (base32
                "1xg1rz2h5jbpdd5axli3ripqxb0bj64yrd4y5nzr8axajiaybkj9"))))
    (properties `((upstream-name . "TCGAretriever")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://www.data-pulse.com/dev_site/TCGAretriever/")
    (synopsis "Retrieve Genomic and Clinical Data from TCGA")
    (description
     "The Cancer Genome Atlas (TCGA) is a program aimed at improving our understanding
of Cancer Biology.  Several TCGA Datasets are available online.  TCGAretriever
helps accessing and downloading TCGA data hosted on cBioPortal via its Web
Interface (see <http://www.cbioportal.org/> for more information).
TCGAretriever is easy to use (get all the TCGA data you need with a few lines of
code), enforces reliable data download (via httr'), and is suitable for
downloading large volumes of data.")
    (license license:gpl2)))

(define-public r-tcftt
  (package
    (name "r-tcftt")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tcftt" version))
              (sha256
               (base32
                "0p5ln0sl0fasdn49252g4lvwgwajgl7lh33a4r073ib54hxbj7bk"))))
    (properties `((upstream-name . "tcftt")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tcftt")
    (synopsis "Two-Sample Tests for Skewed Data")
    (description
     "The classical two-sample t-test works well for the normally distributed data or
data with large sample size.  The tcfu() and tt() tests implemented in this
package provide better type-I-error control with more accurate power when
testing the equality of two-sample means for skewed populations having unequal
variances.  These tests are especially useful when the sample sizes are
moderate.  The tcfu() uses the Cornish-Fisher expansion to achieve a better
approximation to the true percentiles.  The tt() provides transformations of the
Welch's t-statistic so that the sampling distribution become more symmetric.
For more technical details, please refer to Zhang (2019)
<http://hdl.handle.net/2097/40235>.")
    (license license:gpl2)))

(define-public r-tca
  (package
    (name "r-tca")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TCA" version))
              (sha256
               (base32
                "1gyps0m7r44vcbzpbrs3xy2kyb2xsvmfzk1c0aq04s4ndcksplwb"))))
    (properties `((upstream-name . "TCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsvd
                             r-quadprog
                             r-pracma
                             r-pbapply
                             r-nloptr
                             r-matrixstats
                             r-matrixcalc
                             r-matrix
                             r-gmodels
                             r-futile-logger
                             r-data-table
                             r-config))
    (native-inputs (list r-knitr))
    (home-page "https://www.nature.com/articles/s41467-019-11052-9")
    (synopsis "Tensor Composition Analysis")
    (description
     "Tensor Composition Analysis (TCA) allows the deconvolution of two-dimensional
data (features by observations) coming from a mixture of heterogeneous sources
into a three-dimensional matrix of signals (features by observations by
sources).  The TCA framework further allows to test the features in the data for
different statistical relations with an outcome of interest while modeling
source-specific effects; particularly, it allows to look for statistical
relations between source-specific signals and an outcome.  For example, TCA can
deconvolve bulk tissue-level DNA methylation data (methylation sites by
individuals) into a three-dimensional tensor of cell-type-specific methylation
levels for each individual (i.e.  methylation sites by individuals by cell
types) and it allows to detect cell-type-specific statistical relations
(associations) with phenotypes.  For more details see Rahmani et al. (2019)
<DOI:10.1038/s41467-019-11052-9>.")
    (license license:gpl3)))

(define-public r-tbrf
  (package
    (name "r-tbrf")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tbrf" version))
              (sha256
               (base32
                "1mxfvgb18a62igdh3af4m8x6fl69s25j4x7isd70w744w6jvch3h"))))
    (properties `((upstream-name . "tbrf")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-dplyr
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://mps9506.github.io/tbrf/")
    (synopsis "Time-Based Rolling Functions")
    (description
     "This package provides rolling statistical functions based on date and time
windows instead of n-lagged observations.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-tbrdist
  (package
    (name "r-tbrdist")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TBRDist" version))
              (sha256
               (base32
                "0xwr91fyx3x27szkafmcs5sffgs64svky7mddrrgcfnbdl5c4iia"))))
    (properties `((upstream-name . "TBRDist")))
    (build-system r-build-system)
    (propagated-inputs (list r-treetools
                             r-treedist
                             r-rdpack
                             r-rcpp
                             r-bh
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://ms609.github.io/TBRDist/")
    (synopsis "Rearrangement Distances Between Unrooted Phylogenetic Trees")
    (description
     "Fast calculation of the Subtree Prune and Regraft (SPR), Tree Bisection and
Reconnection (TBR) and Replug distances between unrooted trees, using the
algorithms of Whidden and Matsen (2017) <arxiv:1511.07529>.")
    (license license:gpl3+)))

(define-public r-tboot
  (package
    (name "r-tboot")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tboot" version))
              (sha256
               (base32
                "0pijvs5k28ndnkyy4lwln6wlcag0pnbndg33c5djyaxhns77faz2"))))
    (properties `((upstream-name . "tboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-kernlab))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/njm18/tboot")
    (synopsis "Tilted Bootstrap")
    (description
     "This package creates simulated clinical trial data with realistic correlation
structures and assumed efficacy levels by using a tilted bootstrap resampling
approach.  Samples are drawn from observed data with some samples appearing more
frequently than others.  May also be used for simulating from a joint Bayesian
distribution along with clinical trials based on the Bayesian distribution.")
    (license license:gpl3)))

(define-public r-tbma
  (package
    (name "r-tbma")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tbma" version))
              (sha256
               (base32
                "066p3szfayyimwblghm1lipjf21xgscq1fzbzpqz16lqjpb99ni1"))))
    (properties `((upstream-name . "tbma")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-rcpproll r-ranger r-data-table))
    (home-page "https://cran.r-project.org/package=tbma")
    (synopsis "Tree-Based Moving Average Forecasting Model")
    (description
     "We provide a forecasting model for time series forecasting problems with
predictors.  The offered model, which is based on a submitted research and
called tree-based moving average (TBMA), is based on the integration of the
moving average approach to tree-based ensemble approach.  The tree-based
ensemble models can capture the complex correlations between the predictors and
response variable but lack in modelling time series components.  The integration
of the moving average approach to the tree-based ensemble approach helps the
TBMA model to handle both correlations and autocorrelations in time series data.
 This package provides a tbma() forecasting function that utilizes the ranger()
function from the ranger package.  With the help of the ranger() function,
various types of tree-based ensemble models, such as extremely randomized trees
and random forests, can be used in the TBMA model.")
    (license license:gpl2+)))

(define-public r-tbm
  (package
    (name "r-tbm")
    (version "0.3-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tbm" version))
              (sha256
               (base32
                "0qq6zjz37j31jrw0lxsf6vgxwhs8swkqg48jwc320vpz1qjqj7xv"))))
    (properties `((upstream-name . "tbm")))
    (build-system r-build-system)
    (propagated-inputs (list r-variables
                             r-sandwich
                             r-mlt
                             r-mboost
                             r-coneproj
                             r-basefun))
    (native-inputs (list r-knitr))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Transformation Boosting Machines")
    (description
     "Boosting the likelihood of conditional and shift transformation models as
introduced in \\doi{10.1007/s11222-019-09870-4}.")
    (license license:gpl2)))

(define-public r-tbl2xts
  (package
    (name "r-tbl2xts")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tbl2xts" version))
              (sha256
               (base32
                "1h54yhwbmlzgii202dcrz336d790374p213f1ba6rlm5syad88v9"))))
    (properties `((upstream-name . "tbl2xts")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-tibble r-rlang r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://tbl2xts.nfkatzke.com")
    (synopsis "Convert Tibbles or Data Frames to Xts Easily")
    (description
     "Facilitate the movement between data frames to xts'.  Particularly useful when
moving from tidyverse to the widely used xts package, which is the input format
of choice to various other packages.  It also allows the user to use a spread_by
argument for a character column xts conversion.")
    (license license:gpl3)))

(define-public r-tbfmultinomial
  (package
    (name "r-tbfmultinomial")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TBFmultinomial" version))
              (sha256
               (base32
                "0cd0dr8vkf0sfriaafp2x63dilxmirm0fljxm82zw77c9j5ly3kv"))))
    (properties `((upstream-name . "TBFmultinomial")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-stringr r-plotrix r-nnet))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TBFmultinomial")
    (synopsis "TBF Methodology Extension for Multinomial Outcomes")
    (description
     "Extends the test-based Bayes factor (TBF) methodology to multinomial regression
models and discrete time-to-event models with competing risks.  The TBF
methodology has been well developed and implemented for the generalised linear
model [Held et al. (2015) <doi:10.1214/14-STS510>] and for the Cox model [Held
et al. (2016) <doi:10.1002/sim.7089>].")
    (license license:gpl2+)))

(define-public r-tbest
  (package
    (name "r-tbest")
    (version "5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TBEST" version))
              (sha256
               (base32
                "19dfsvr693w93j6shzk09v1457ayixsxkdbndgv3kawqp1lzhvjx"))))
    (properties `((upstream-name . "TBEST")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-fdrtool))
    (home-page "https://cran.r-project.org/package=TBEST")
    (synopsis "Tree Branches Evaluated Statistically for Tightness")
    (description
     "Our method introduces mathematically well-defined measures for tightness of
branches in a hierarchical tree.  Statistical significance of the findings is
determined, for all branches of the tree, by performing permutation tests,
optionally with generalized Pareto p-value estimation.")
    (license license:gpl2)))

(define-public r-tbd
  (package
    (name "r-tbd")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tbd" version))
              (sha256
               (base32
                "1wmfy3p82gckhfsslxzapryfygmircii7x24j6ysfyx52gy8iwf5"))))
    (properties `((upstream-name . "tbd")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page
     "https://github.com/KillingVectorField/causal-inference-truncated-by-death")
    (synopsis "Estimation of Causal Effects with Outcomes Truncated by Death")
    (description
     "Estimation of the survivor average causal effect under outcomes truncated by
death, which requires the existence of a substitution variable.  It can be
applied to both experimental and observational data.")
    (license license:gpl2+)))

(define-public r-taylorswift
  (package
    (name "r-taylorswift")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tayloRswift" version))
              (sha256
               (base32
                "1gr179hzqxih49v214dqawfhsbsahhyj1lbj77vqv00zq1siigpl"))))
    (properties `((upstream-name . "tayloRswift")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tayloRswift")
    (synopsis "Color Palettes Generated by Taylor Swift Albums")
    (description
     "For when your colors absolutely should not be excluded from the narrative.")
    (license license:expat)))

(define-public r-taylor
  (package
    (name "r-taylor")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taylor" version))
              (sha256
               (base32
                "1zmih8gkkcfpydxxc4dfg3ypqs4qwbanfhckmjl9s4wl99k8q9mi"))))
    (properties `((upstream-name . "taylor")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tibble
                             r-scales
                             r-rlang
                             r-lifecycle
                             r-glue
                             r-ggplot2
                             r-crayon))
    (home-page "https://taylor.wjakethompson.com")
    (synopsis "Lyrics and Song Data for Taylor Swift's Discography")
    (description
     "This package provides a comprehensive resource for data on Taylor Swift songs.
Data is included for all officially released studio albums, extended plays
(EPs), and individual singles are included.  Data comes from Genius (lyrics) and
Spotify (song characteristics).  Additional functions are included for easily
creating data visualizations with color palettes inspired by Taylor Swift's
album covers.")
    (license license:expat)))

(define-public r-taxotools
  (package
    (name "r-taxotools")
    (version "0.0.132")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxotools" version))
              (sha256
               (base32
                "0f24356bmvbm6p18zw9vsyz0zqyijq8757c83mv14mkbqs2apqip"))))
    (properties `((upstream-name . "taxotools")))
    (build-system r-build-system)
    (propagated-inputs (list r-wikitaxa
                             r-taxize
                             r-stringr
                             r-stringi
                             r-stringdist
                             r-sqldf
                             r-rmarkdown
                             r-plyr))
    (home-page "https://cran.r-project.org/package=taxotools")
    (synopsis "Taxonomic List Processing")
    (description
     "Taxonomic lists matching and merging, casting and melting scientific names,
managing taxonomic lists from Global Biodiversity Information Facility GBIF or
Integrated Taxonomic Information System ITIS', harvesting names from Wikipedia
and fuzzy matching.")
    (license license:cc0)))

(define-public r-taxonstand
  (package
    (name "r-taxonstand")
    (version "2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Taxonstand" version))
              (sha256
               (base32
                "0zph4618bwjfvx41ap9d2534kknbni216y90nmcvaniskw4ixm7d"))))
    (properties `((upstream-name . "Taxonstand")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbapply))
    (home-page "https://cran.r-project.org/package=Taxonstand")
    (synopsis "Taxonomic Standardization of Plant Species Names")
    (description
     "Automated standardization of taxonomic names and removal of orthographic errors
in plant species names using The Plant List website (www.theplantlist.org).")
    (license license:gpl2+)))

(define-public r-taxonomizr
  (package
    (name "r-taxonomizr")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxonomizr" version))
              (sha256
               (base32
                "1d652945njl8s5q161bbp6yp8a2lylhwsyiqziw1gn58q4152y3n"))))
    (properties `((upstream-name . "taxonomizr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-r-utils r-data-table r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=taxonomizr")
    (synopsis "Functions to Work with NCBI Accessions and Taxonomy")
    (description
     "This package provides functions for assigning taxonomy to NCBI accession numbers
and taxon IDs based on NCBI's accession2taxid and taxdump files.  This package
allows the user to download NCBI data dumps and create a local database for fast
and local taxonomic assignment.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-taxonbridge
  (package
    (name "r-taxonbridge")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxonbridge" version))
              (sha256
               (base32
                "1ivks3bvwyn0ybvyz6dhsx7qxnlskf4icjkgsichdv4p24w5iwb9"))))
    (properties `((upstream-name . "taxonbridge")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vroom
                             r-stringr
                             r-rje
                             r-purrr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MoultDB/taxonbridge")
    (synopsis
     "Create Custom Taxonomies Based on the NCBI Taxonomy and GBIF Backbone Taxonomy")
    (description
     "The NCBI taxonomy is a popular resource for taxonomic studies but it only
contains data on species with sequence data whereas the GBIF has a more
extensive coverage of extinct species.  Taxonbridge is useful for the creation
and analysis of custom taxonomies based on the NCBI taxonomy and GBIF backbone
taxonomy.")
    (license license:cc0)))

(define-public r-taxlist
  (package
    (name "r-taxlist")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxlist" version))
              (sha256
               (base32
                "0p426mk65hn1j2mbs8463xck67dik6rxig92n00xkjirbdidcz28"))))
    (properties `((upstream-name . "taxlist")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegdata
                             r-taxize
                             r-stringr
                             r-stringdist
                             r-foreign
                             r-biblio))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=taxlist")
    (synopsis "Handling Taxonomic Lists")
    (description
     "Handling taxonomic lists through objects of class taxlist'.  This package
provides functions to import species lists from Turboveg
(<https://www.synbiosys.alterra.nl/turboveg/>) and the possibility to create
backups from resulting R-objects.  Also quick displays are implemented as
summary-methods.")
    (license license:gpl2+)))

(define-public r-taxizedb
  (package
    (name "r-taxizedb")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxizedb" version))
              (sha256
               (base32
                "1d7wz6df624263myq4rlvr3mhzhhhdglrrs7f44j201z4f536a2z"))))
    (properties `((upstream-name . "taxizedb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rsqlite
                             r-rlang
                             r-readr
                             r-magrittr
                             r-hoardr
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-curl))
    (home-page "https://ropensci.github.io/taxizedb/")
    (synopsis "Tools for Working with 'Taxonomic' Databases")
    (description
     "Tools for working with taxonomic databases, including utilities for downloading
databases, loading them into various SQL databases, cleaning up files, and
providing a SQL connection that can be used to do SQL queries directly or used
in dplyr'.")
    (license license:expat)))

(define-public r-taxize
  (package
    (name "r-taxize")
    (version "0.9.100")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxize" version))
              (sha256
               (base32
                "0afdjcwkkpkc5kgk558jccnw6jzs6mswd4i86c316pgb8py7irg2"))))
    (properties `((upstream-name . "taxize")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xml2
                             r-worrms
                             r-wikitaxa
                             r-tibble
                             r-rredlist
                             r-rotl
                             r-ritis
                             r-r6
                             r-phangorn
                             r-natserv
                             r-jsonlite
                             r-foreach
                             r-data-table
                             r-crul
                             r-crayon
                             r-conditionz
                             r-cli
                             r-bold
                             r-ape))
    (home-page "https://docs.ropensci.org/taxize/")
    (synopsis "Taxonomic Information from Around the Web")
    (description
     "Interacts with a suite of web APIs for taxonomic tasks, such as getting database
specific taxonomic identifiers, verifying species names, getting taxonomic
hierarchies, fetching downstream and upstream taxonomic names, getting taxonomic
synonyms, converting scientific to common names and vice versa, and more.")
    (license license:expat)))

(define-public r-taxicabca
  (package
    (name "r-taxicabca")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TaxicabCA" version))
              (sha256
               (base32
                "0izjf6vrdjvs9axvafr2mamr157i8w6d7m5sfjch1p5c174cpr9c"))))
    (properties `((upstream-name . "TaxicabCA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=TaxicabCA")
    (synopsis "Taxicab Correspondence Analysis")
    (description
     "Computation and visualization of Taxicab Correspondence Analysis, Choulakian
(2006) <doi:10.1007/s11336-004-1231-4>.  Classical correspondence analysis (CA)
is a statistical method to analyse 2-dimensional tables of positive numbers and
is typically applied to contingency tables (Benzecri, J.-P. (1973).  L'Analyse
des Donnees.  Volume II. L'Analyse des Correspondances.  Paris, France: Dunod).
Classical CA is based on the Euclidean distance.  Taxicab CA is like classical
CA but is based on the Taxicab or Manhattan distance.  For some tables, Taxicab
CA gives more informative results than classical CA.")
    (license license:gpl2+)))

(define-public r-taxalight
  (package
    (name "r-taxalight")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxalight" version))
              (sha256
               (base32
                "035jzz1dk1icxs9mbd6q091ljf1lalr0wwbcz6a90avwyqphjjx3"))))
    (properties `((upstream-name . "taxalight")))
    (build-system r-build-system)
    (propagated-inputs (list r-thor r-contentid))
    (home-page "https://github.com/cboettig/taxalight")
    (synopsis "Lightweight and Lightning-Fast Taxonomic Naming Interface")
    (description
     "This package creates a local Lightning Memory-Mapped Database ('LMDB') of many
commonly used taxonomic authorities and provides functions that can quickly
query this data.  Supported taxonomic authorities include the Integrated
Taxonomic Information System ('ITIS'), National Center for Biotechnology
Information ('NCBI'), Global Biodiversity Information Facility ('GBIF'),
Catalogue of Life ('COL'), and Open Tree Taxonomy ('OTT').  Name and identifier
resolution using LMDB can be hundreds of times faster than either relational
databases or internet-based queries.  Precise data provenance information for
data derived from naming providers is also included.")
    (license license:expat)))

(define-public r-taxadb
  (package
    (name "r-taxadb")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxadb" version))
              (sha256
               (base32
                "16cwyy3zlcvcplkqnnc70miv7c8hdqr3z3lchxd35i3101b4wdcb"))))
    (properties `((upstream-name . "taxadb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-rlang
                             r-memoise
                             r-magrittr
                             r-duckdb
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-contentid))
    (native-inputs (list r-knitr))
    (home-page "<https://docs.ropensci.org/taxadb/>")
    (synopsis "High-Performance Local Taxonomic Database Interface")
    (description
     "This package creates a local database of many commonly used taxonomic
authorities and provides functions that can quickly query this data.")
    (license license:expat)))

(define-public r-taxa
  (package
    (name "r-taxa")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taxa" version))
              (sha256
               (base32
                "1vb3igz24xkgsds5145h3hqlc7grn3l2kpslg87j4hsw66i86py3"))))
    (properties `((upstream-name . "taxa")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-vctrs
                             r-tibble
                             r-stringr
                             r-rlang
                             r-pillar
                             r-magrittr
                             r-dplyr
                             r-crayon
                             r-cli))
    (home-page "https://docs.ropensci.org/taxa/")
    (synopsis "Classes for Storing and Manipulating Taxonomic Data")
    (description
     "This package provides classes for storing and manipulating taxonomic data.  Most
of the classes can be treated like base R vectors (e.g. can be used in tables as
columns and can be named).  Vectorized classes can store taxon names and
authorities, taxon IDs from databases, taxon ranks, and other types of
information.  More complex classes are provided to store taxonomic trees and
user-defined data associated with them.")
    (license license:expat)))

(define-public r-tauturri
  (package
    (name "r-tauturri")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tauturri" version))
              (sha256
               (base32
                "014301f5mzy6vblqzb61bxjv46kdynmmrxjpxyvk01w1k8wkwfcn"))))
    (properties `((upstream-name . "tauturri")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-purrr r-plyr r-magrittr r-httr))
    (home-page "https://github.com/jemus42/tauturri")
    (synopsis "Get Data Out of 'Tautulli' (Formerly 'PlexPy')")
    (description
     "Tautulli (<http://tautulli.com>) is a monitoring application for Plex Media
Servers (<https://www.plex.tv>) which collects a lot of data about media items
and server usage such as play counts.  This package interacts with the Tautulli
API of any specified server to get said data into R. The Tautulli API
documentation is available at
<https://github.com/Tautulli/Tautulli/blob/master/API.md>.")
    (license license:expat)))

(define-public r-taustar
  (package
    (name "r-taustar")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TauStar" version))
              (sha256
               (base32
                "06bb6570mqzfbjw2qp4bjl4a1bdpwsvcr0vw2y4l1x444m670ds1"))))
    (properties `((upstream-name . "TauStar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=TauStar")
    (synopsis
     "Efficient Computation and Testing of the Bergsma-Dassios Sign Covariance")
    (description
     "Computes the t* statistic corresponding to the tau* population coefficient
introduced by Bergsma and Dassios (2014) <DOI:10.3150/13-BEJ514> and does so in
O(n^2) time following the algorithm of Heller and Heller (2016)
<arXiv:1605.08732> building off of the work of Weihs, Drton, and Leung (2016)
<DOI:10.1007/s00180-015-0639-x>.  Also allows for independence testing using the
asymptotic distribution of t* as described by Nandy, Weihs, and Drton (2016)
<arXiv:1602.04387>.")
    (license license:gpl3+)))

(define-public r-tau
  (package
    (name "r-tau")
    (version "0.0-24")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tau" version))
              (sha256
               (base32
                "1q8pd7m6rd0899c44plxns5yydifhsccyb51glgw07ni5v4rz3gh"))))
    (properties `((upstream-name . "tau")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tau")
    (synopsis "Text Analysis Utilities")
    (description "Utilities for text analysis.")
    (license license:gpl2)))

(define-public r-tatoo
  (package
    (name "r-tatoo")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tatoo" version))
              (sha256
               (base32
                "0w9rm6cnc1mpfyklb8njzjwph2c38niinzxiflrqjqfdp7nd8281"))))
    (properties `((upstream-name . "tatoo")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-stringi
                             r-openxlsx
                             r-magrittr
                             r-data-table
                             r-crayon
                             r-colt
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statistikat/tatoo")
    (synopsis "Combine and Export Data Frames")
    (description
     "This package provides functions to combine data.frames in ways that require
additional effort in base R, and to add metadata (id, title, ...) that can be
used for printing and xlsx export.  The Tatoo_report class is provided as a
convenient helper to write several such tables to a workbook, one table per
worksheet.  Tatoo is built on top of openxlsx', but intimate knowledge of that
package is not required to use tatoo.")
    (license license:expat)))

(define-public r-tatest
  (package
    (name "r-tatest")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tatest" version))
              (sha256
               (base32
                "1yd9pdpdhxwpllnj5wxa7ly29qiw8qywx9lx0w3nizczlx35fgjy"))))
    (properties `((upstream-name . "tatest")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tatest")
    (synopsis "Two-Group Ta-Test")
    (description
     "The ta-test is a modified two-sample or two-group t-test of Gosset (1908).  In
small samples with less than 15 replicates,the ta-test significantly reduces
type I error rate but has almost the same power with the t-test and hence can
greatly enhance reliability or reproducibility of discoveries in biology and
medicine.  The ta-test can test single null hypothesis or multiple null
hypotheses without needing to correct p-values.")
    (license license:gpl3)))

(define-public r-tastypie
  (package
    (name "r-tastypie")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tastypie" version))
              (sha256
               (base32
                "15ivl0rvnp1j09axk0jaf1wip5cjbnvfmx0crhqqd5y27mfa2hzd"))))
    (properties `((upstream-name . "tastypie")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-shadowtext
                             r-scales
                             r-rcolorbrewer
                             r-packcircles
                             r-ggplot2
                             r-fmsb
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://paolodalena.github.io/tastypie/")
    (synopsis "Easy Pie Charts")
    (description
     "You only need to type why pie charts are bad on Google to find thousands of
articles full of (valid) reasons why other types of charts should be preferred
over this one.  Therefore, because of the little use due to the reasons already
mentioned, making pie charts (and related) in R is not straightforward, so other
functions are needed to simplify things.  In this R package there are useful
functions to make tasty pie charts immediately by exploiting the many cool
templates provided.")
    (license license:gpl3)))

(define-public r-taskscheduler
  (package
    (name "r-taskscheduler")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taskscheduleR" version))
              (sha256
               (base32
                "0bkzh71vif3wp4csj8b26x25k1yl4sbkmx21nl650k4v4061qj07"))))
    (properties `((upstream-name . "taskscheduleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bnosac/taskscheduleR")
    (synopsis
     "Schedule R Scripts and Processes with the Windows Task Scheduler")
    (description
     "Schedule R scripts/processes with the Windows task scheduler.  This allows R
users to automate R processes on specific time points from R itself.")
    (license license:agpl3)))

(define-public r-tashu
  (package
    (name "r-tashu")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tashu" version))
              (sha256
               (base32
                "0rirjalridr79a7j3qz80l2vp6m8paqr97ac241b58756k7nr5j7"))))
    (properties `((upstream-name . "tashu")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rcolorbrewer
                             r-randomforest
                             r-plyr
                             r-lubridate
                             r-ggplot2
                             r-drat
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tashu")
    (synopsis "Analysis and Prediction of Bicycle Rental Amount")
    (description
     "This package provides functions for analyzing citizens bicycle usage pattern and
predicting rental amount on specific conditions.  Functions on this package
interacts with data on tashudata package, a drat repository.  tashudata package
contains rental/return history on public bicycle system('Tashu'), weather for 3
years and bicycle station information.  To install this data package, see the
instructions at <https://github.com/zeee1/Tashu_Rpackage>.  top10_stations(),
top10_paths() function visualizes image showing the most used top 10 stations
and paths.  daily_bike_rental() and monthly_bike_rental() shows daily, monthly
amount of bicycle rental.  create_train_dataset(), create_test_dataset() is data
processing function for prediction.  Bicycle rental history from 2013 to 2014 is
used to create training dataset and that on 2015 is for test dataset.  Users can
make random-forest prediction model by using create_train_model() and predict
amount of bicycle rental in 2015 by using predict_bike_rental().")
    (license license:gpl2+)))

(define-public r-tashiny
  (package
    (name "r-tashiny")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TAShiny" version))
              (sha256
               (base32
                "1h8k8py7myrj7c18cbp4q7bmgmck64jagw9s9j1jaqzl9qf8cbgq"))))
    (properties `((upstream-name . "TAShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud2
                             r-tm
                             r-snowballc
                             r-shiny
                             r-igraph
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=TAShiny")
    (synopsis "'Text Analyzer Shiny'")
    (description
     "Interactive shiny application for working with textmining and text analytics.
Various visualizations are provided.")
    (license license:gpl2)))

(define-public r-tariff
  (package
    (name "r-tariff")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Tariff" version))
              (sha256
               (base32
                "1mdbc6yyaddkyj617kx93d2737gijh063v8w8jqw4lwmbwyc4a4w"))))
    (properties `((upstream-name . "Tariff")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Tariff")
    (synopsis "Replicate Tariff Method for Verbal Autopsy")
    (description
     "Implement the Tariff algorithm for coding cause-of-death from verbal autopsies.
The Tariff method was originally proposed in James et al (2011)
<DOI:10.1186/1478-7954-9-31> and later refined as Tariff 2.0 in Serina, et al.
(2015) <DOI:10.1186/s12916-015-0527-9>.  Note that this package was not
developed by authors affiliated with the Institute for Health Metrics and
Evaluation and thus unintentional discrepancies may exist between the this
implementation and the implementation available from IHME.")
    (license license:gpl2)))

(define-public r-targets
  (package
    (name "r-targets")
    (version "0.14.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "targets" version))
              (sha256
               (base32
                "0g3isshhhz1q2106gl7hwiwc2qbks6i7xbb01504m7kq8nfwxfg7"))))
    (properties `((upstream-name . "targets")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-withr
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-r6
                             r-knitr
                             r-igraph
                             r-digest
                             r-data-table
                             r-codetools
                             r-cli
                             r-callr
                             r-base64url))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/targets/")
    (synopsis "Dynamic Function-Oriented 'Make'-Like Declarative Pipelines")
    (description
     "This package provides a pipeline toolkit for Statistics and data science in R,
the targets package brings function-oriented programming to Make'-like
declarative pipelines.  targets orchestrates a pipeline as a graph of
dependencies, skips steps that are already up to date, runs the necessary
computation with optional parallel workers, abstracts files as R objects, and
provides tangible evidence that the results are reproducible given the
underlying code and data.  The methodology in this package borrows from GNU Make
(2015, ISBN:978-9881443519) and drake (2018, <doi:10.21105/joss.00550>).")
    (license license:expat)))

(define-public r-targeted
  (package
    (name "r-targeted")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "targeted" version))
              (sha256
               (base32
                "0h05h8pgjjab5clv501m9b2fcycspj0dc7zs72lwp15al2rikmzg"))))
    (properties `((upstream-name . "targeted")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-progressr
                             r-optimx
                             r-mets
                             r-lava
                             r-future-apply
                             r-futile-logger
                             r-digest
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=targeted")
    (synopsis "Targeted Inference")
    (description
     "Various methods for targeted and semiparametric inference including augmented
inverse probability weighted estimators for missing data and causal inference
(Bang and Robins (2005) <doi:10.1111/j.1541-0420.2005.00377.x>) and estimators
for risk differences and relative risks (Richardson et al. (2017)
<doi:10.1080/01621459.2016.1192546>).")
    (license license:asl2.0)))

(define-public r-tardis
  (package
    (name "r-tardis")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tardis" version))
              (sha256
               (base32
                "1hfqnszhly6cfi7aii3v9nnrj3md389bflvf3igixrn4wb7mfyi5"))))
    (properties `((upstream-name . "tardis")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-stringi
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-cpp11))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chris31415926535/tardis")
    (synopsis
     "Text Analysis with Rules and Dictionaries for Inferring Sentiment")
    (description
     "Measure text's sentiment with dictionaries and simple rules covering negations
and modifiers.  User-supplied dictionaries are supported, including Unicode
emojis and multi-word tokens, so this package can also be used to study
constructs beyond sentiment.")
    (license license:expat)))

(define-public r-tarchetypes
  (package
    (name "r-tarchetypes")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tarchetypes" version))
              (sha256
               (base32
                "1yg34m39qkyxd3q03z2dk7dvc31iv50795r5nxx180f97iiakf7s"))))
    (properties `((upstream-name . "tarchetypes")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-targets
                             r-rlang
                             r-future-callr
                             r-future
                             r-furrr
                             r-fs
                             r-dplyr
                             r-digest))
    (home-page "https://docs.ropensci.org/tarchetypes/")
    (synopsis "Archetypes for Targets")
    (description
     "Function-oriented Make-like declarative pipelines for Statistics and data
science are supported in the targets R package.  As an extension to targets',
the tarchetypes package provides convenient user-side functions to make targets
easier to use.  By establishing reusable archetypes for common kinds of targets
and pipelines, these functions help express complicated reproducible pipelines
concisely and compactly.  The methods in this package were influenced by the
drake R package by Will Landau (2018) <doi:10.21105/joss.00550>.")
    (license license:expat)))

(define-public r-tar
  (package
    (name "r-tar")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TAR" version))
              (sha256
               (base32
                "0wjh2n9x3yn9by9a6mjvkl96qy7z549g6dsqp7b4d96xwmyqxlbv"))))
    (properties `((upstream-name . "TAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=TAR")
    (synopsis
     "Bayesian Modeling of Autoregressive Threshold Time Series Models")
    (description
     "Identification and estimation of the autoregressive threshold models with
Gaussian noise, as well as positive-valued time series.  The package provides
the identification of the number of regimes, the thresholds and the
autoregressive orders, as well as the estimation of remain parameters.  The
package implements the methodology from the 2005 paper: Modeling Bivariate
Threshold Autoregressive Processes in the Presence of Missing Data
<DOI:10.1081/STA-200054435>.")
    (license license:gpl2+)))

(define-public r-taqmngr
  (package
    (name "r-taqmngr")
    (version "2018.5-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TAQMNGR" version))
              (sha256
               (base32
                "0bf0sgqa53l9y2bhwg2ngiwlcgrmj0nvxchlsmcc8zin388qf4pb"))))
    (properties `((upstream-name . "TAQMNGR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=TAQMNGR")
    (synopsis "Manage Tick-by-Tick Transaction Data")
    (description
     "Manager of tick-by-tick transaction data that performs cleaning', aggregation
and import in an efficient and fast way.  The package engine, written in C++,
exploits the zlib and gzstream libraries to handle gzipped data without need to
uncompress them.  Cleaning and aggregation are performed according to Brownlees
and Gallo (2006) <DOI:10.1016/j.csda.2006.09.030>.  Currently, TAQMNGR processes
raw data from WRDS (Wharton Research Data Service,
<https://wrds-web.wharton.upenn.edu/wrds/>).")
    (license license:gpl2+)))

(define-public r-tapnet
  (package
    (name "r-tapnet")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tapnet" version))
              (sha256
               (base32
                "1fjg98m19iwbzijs5b5l4ssrbx1shv1hmgn1166cbni9y76m44sh"))))
    (properties `((upstream-name . "tapnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-phytools r-mpsem r-bipartite r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/biometry/tapnet")
    (synopsis "Trait Matching and Abundance for Predicting Bipartite Networks")
    (description
     "This package provides functions to produce, fit and predict from bipartite
networks with abundance, trait and phylogenetic information.  Its methods are
described in detail in Benadi, G., Dormann, C.F., Fruend, J., Stephan, R. &
Vazquez, D.P. (2021) Quantitative prediction of interactions in bipartite
networks based on traits, abundances, and phylogeny.  The American Naturalist,
in press.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-tapkee
  (package
    (name "r-tapkee")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tapkee" version))
              (sha256
               (base32
                "1xgz2cv5jb1hdnl8y8zs4x6p1dk1vv8zbs4wfsj61gpfyf9gkh4f"))))
    (properties `((upstream-name . "tapkee")))
    (build-system r-build-system)
    (inputs (list))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=tapkee")
    (synopsis "Wrapper for 'tapkee' Dimension Reduction Library")
    (description
     "Wrapper for using tapkee command line utility, it allows to run it from inside R
and catch the results for further analysis and plotting.  Tapkee is a program
for fast dimension reduction, see package?tapkee and
<http://tapkee.lisitsyn.me/> for installation and other details.")
    (license license:gpl2+)))

(define-public r-taper
  (package
    (name "r-taper")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TapeR" version))
              (sha256
               (base32
                "00j3d77qziazkk6xwx4zygxa7ak33wpgr3x52ki6d64s8w8713ag"))))
    (properties `((upstream-name . "TapeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-nlme))
    (home-page "https://cran.r-project.org/package=TapeR")
    (synopsis
     "Flexible Tree Taper Curves Based on Semiparametric Mixed Models")
    (description
     "Implementation of functions for fitting taper curves (a semiparametric linear
mixed effects taper model) to diameter measurements along stems.  Further
functions are provided to estimate the uncertainty around the predicted curves,
to calculate timber volume (also by sections) and marginal (e.g., upper)
diameters.  For cases where tree heights are not measured, methods for
estimating additional variance in volume predictions resulting from
uncertainties in tree height models (tariffs) are provided.  The example data
include the taper curve parameters for Norway spruce used in the 3rd German NFI
fitted to 380 trees and a subset of section-wise diameter measurements of these
trees.  The functions implemented here are detailed in Kublin, E., Breidenbach,
J., Kaendler, G. (2013) <doi:10.1007/s10342-013-0715-0>.")
    (license license:gpl2+)))

(define-public r-tangram-pipe
  (package
    (name "r-tangram-pipe")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tangram.pipe" version))
              (sha256
               (base32
                "0v86xn5rvr6c74cqhiwfxgfb4mizqlf5bqc51870na28i2ariaap"))))
    (properties `((upstream-name . "tangram.pipe")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thomasgstewart/tangram.pipe")
    (synopsis "Row-by-Row Table Building")
    (description
     "Builds tables with customizable rows.  Users can specify the type of data to use
for each row, as well as how to handle missing data and the types of comparison
tests to run on the table columns.")
    (license license:expat)))

(define-public r-tangram
  (package
    (name "r-tangram")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tangram" version))
              (sha256
               (base32
                "1r4wvz3nrms3mh06a7zykhkbsi4hz57xdn7af49yiypynhrxiin5"))))
    (properties `((upstream-name . "tangram")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-r6
                             r-magrittr
                             r-knitr
                             r-htmltools
                             r-digest
                             r-base64enc))
    (home-page "https://github.com/spgarbet/tangram")
    (synopsis "The Grammar of Tables")
    (description
     "This package provides an extensible formula system to quickly and easily create
production quality tables.  The processing steps are a formula parser,
statistical content generation from data as defined by formula, followed by
rendering into a table.  Each step of the processing is separate and user
definable thus creating a set of composable building blocks for highly
customizable table generation.  A user is not limited by any of the choices of
the package creator other than the formula grammar.  For example, one could
chose to add a different S3 rendering function and output a format not provided
in the default package, or possibly one would rather have Gini coefficients for
their statistical content in a resulting table.  Routines to achieve New England
Journal of Medicine style, Lancet style and Hmisc::summaryM() statistics are
provided.  The package contains rendering for HTML5, Rmarkdown and an indexing
format for use in tracing and tracking are provided.")
    (license license:gpl3)))

(define-public r-tangpoemr
  (package
    (name "r-tangpoemr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TangPoemR" version))
              (sha256
               (base32
                "06w5gg36mx0vdagkhy7rskgjv2d3irr0d3nkjw26vxp25x1py4sf"))))
    (properties `((upstream-name . "TangPoemR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jiebar))
    (home-page "https://cran.r-project.org/package=TangPoemR")
    (synopsis "Write Chinese Tang Poems")
    (description "Write Chinese Tang Poems automatically.")
    (license license:gpl2+)))

(define-public r-tangledfeatures
  (package
    (name "r-tangledfeatures")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TangledFeatures" version))
              (sha256
               (base32
                "1jkhnl6y9jwxcj8njx2m8lax2z15ma6rk0bci871n4y6bp4bk4zn"))))
    (properties `((upstream-name . "TangledFeatures")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger
                             r-purrr
                             r-matrix
                             r-janitor
                             r-igraph
                             r-ggplot2
                             r-fastdummies
                             r-dplyr
                             r-data-table
                             r-correlation))
    (native-inputs (list r-knitr))
    (home-page "https://allen-1242.github.io/TangledFeatures/")
    (synopsis "Feature Selection in Highly Correlated Spaces")
    (description
     "Feature selection algorithm that extracts features in highly correlated spaces.
The extracted features are meant to be fed into simple explainable models such
as linear or logistic regressions.  The package is useful in the field of
explainable modelling as a way to understand variable behavior.")
    (license license:expat)))

(define-public r-tandem
  (package
    (name "r-tandem")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TANDEM" version))
              (sha256
               (base32
                "151rm95q2naw9y58df1lr2qiadnkgfb5j9v47v41bw4iipsmlp4p"))))
    (properties `((upstream-name . "TANDEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TANDEM")
    (synopsis
     "Two-Stage Approach to Maximize Interpretability of Drug Response Models Based on Multiple Molecular Data Types")
    (description
     "This package provides a two-stage regression method that can be used when
various input data types are correlated, for example gene expression and
methylation in drug response prediction.  In the first stage it uses the
upstream features (such as methylation) to predict the response variable (such
as drug response), and in the second stage it uses the downstream features (such
as gene expression) to predict the residuals of the first stage.  In our
manuscript (Aben et al., 2016, <doi:10.1093/bioinformatics/btw449>), we show
that using TANDEM prevents the model from being dominated by gene expression and
that the features selected by TANDEM are more interpretable.")
    (license license:gpl2)))

(define-public r-tanb
  (package
    (name "r-tanb")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TanB" version))
              (sha256
               (base32
                "05y9j1a5nzqfpsw48gix5c4ds1cm80liad9wnwmddhbx4fda6p32"))))
    (properties `((upstream-name . "TanB")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-fdrtool))
    (home-page "https://github.com/TrigonometricDistribution")
    (synopsis "The TanB Distribution")
    (description
     "Density, distribution function, quantile function, random generation and
survival function for the Tangent Burr Type XII Distribution as defined by
SOUZA, L. New Trigonometric Class of Probabilistic Distributions.  219 p.
Thesis (Doctorate in Biometry and Applied Statistics) - Department of Statistics
and Information, Federal Rural University of Pernambuco, Recife, Pernambuco,
2015 (available at
<http://www.openthesis.org/documents/New-trigonometric-classes-probabilistic-distributions-602633.html>)
and BRITO, C. C. R. Method Distributions generator and Probability Distributions
Classes.  241 p.  Thesis (Doctorate in Biometry and Applied Statistics) -
Department of Statistics University of Pernambuco, Recife, Pernambuco, 2014
(available upon request).")
    (license license:expat)))

(define-public r-tanaka
  (package
    (name "r-tanaka")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tanaka" version))
              (sha256
               (base32
                "0lbwqz6p7kmxadjymqpfmcvz4l6gzimbk94778w4vzh9iay7dqi7"))))
    (properties `((upstream-name . "tanaka")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra r-sf r-mapiso))
    (home-page "https://github.com/riatelab/tanaka/")
    (synopsis "Design Shaded Contour Lines (or Tanaka) Maps")
    (description
     "The Tanaka method enhances the representation of topography on a map using
shaded contour lines.  In this simplified implementation of the method,
north-west white contours represent illuminated topography and south-east black
contours represent shaded topography.  See Tanaka (1950) <doi:10.2307/211219>.")
    (license license:gpl3)))

(define-public r-tame
  (package
    (name "r-tame")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tame" version))
              (sha256
               (base32
                "183s8mxy1wvqkwick5gzrf5ijx8frwk2b8bpb4hh5rwvlqwm6p4h"))))
    (properties `((upstream-name . "tame")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rfast
                             r-rcpp
                             r-purrr
                             r-magrittr
                             r-fuzzyjoin
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tame")
    (synopsis
     "Timing, Anatomical, Therapeutic and Chemical Based Medication Clustering")
    (description
     "Agglomerative hierarchical clustering with a bespoke distance measure based on
medication similarities in the Anatomical Therapeutic Chemical Classification
System, medication timing and medication amount or dosage.  Tools for
summarizing, illustrating and manipulating the cluster objects are also
available.")
    (license license:expat)))

(define-public r-takos
  (package
    (name "r-takos")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "takos" version))
              (sha256
               (base32
                "09w9lkqhxdb26fvrsb8n16601kqpr2smplipx3lj6cdgbyhb1hqz"))))
    (properties `((upstream-name . "takos")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoother
                             r-sfsmisc
                             r-segmented
                             r-pracma
                             r-minpack-lm
                             r-mass
                             r-devemf
                             r-desolve
                             r-data-table
                             r-colorramps
                             r-broom
                             r-baseline))
    (home-page "https://github.com/sere3s/takos")
    (synopsis "Analysis of Differential Calorimetry Scans")
    (description
     "It includes functions for applying methodologies utilized for single-process
kinetic analysis of solid-state processes were recently summarized and described
in the Recommendation of ICTAC Kinetic Committee.  These methods work with the
basic kinetic equation.  The Methodologies included refers to Avrami, Friedman,
Kissinger, Ozawa, OFM, Mo, Starink, isoconversional methodology (Vyazovkin)
according to ICATAC Kinetics Committee recommendations as reported in Vyazovkin
S, Chrissafis K, Di Lorenzo ML, et al.  ICTAC Kinetics Committee recommendations
for collecting experimental thermal analysis data for kinetic computations.
Thermochim Acta.  2014;590:1-23. <doi:10.1016/J.TCA.2014.05.036> .")
    (license license:gpl2)))

(define-public r-taipan
  (package
    (name "r-taipan")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taipan" version))
              (sha256
               (base32
                "192sy5pgq74vs31p7jfn6svdzf9mk9ybppzhp1rlki1bagmm5f1r"))))
    (properties `((upstream-name . "taipan")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/srkobakian/taipan")
    (synopsis "Tool for Annotating Images in Preparation for Analysis")
    (description
     "This package provides a tool to help create shiny apps for selecting and
annotating elements of images.  Users must supply images, questions, and answer
choices.  The user interface is a dynamic shiny app, that displays the images
and questions and answer choices.  The data generated can be saved to a file
that can be used for subsequent analysis.  The original purpose was to annotate
still images from tennis video for face recognition and emotion detection
purposes.")
    (license license:gpl3)))

(define-public r-tailtransform
  (package
    (name "r-tailtransform")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tailTransform" version))
              (sha256
               (base32
                "0nflrzq5m1jwf91lavwwzl6ja4qswva1z4gpdbm3q5iscg1hbwp7"))))
    (properties `((upstream-name . "tailTransform")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tailTransform")
    (synopsis "Symmetric Transformation of Tails for Plotting Differences")
    (description
     "When plotting treated-minus-control differences, after-minus-before changes, or
difference-in-differences, the ttrans() function symmetrically transforms the
positive and negative tails to aid plotting.  The package includes an
observational study with three control groups and an unaffected outcome; see
Rosenbaum (2020) <doi:10.1111/biom.13558>.")
    (license license:gpl2)))

(define-public r-tailrank
  (package
    (name "r-tailrank")
    (version "3.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TailRank" version))
              (sha256
               (base32
                "02cxfdrc2pncw7pivg00414rzy27jp57pbg2ibq5a4fj8zm9bv91"))))
    (properties `((upstream-name . "TailRank")))
    (build-system r-build-system)
    (propagated-inputs (list r-oompadata r-oompabase r-biobase))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "The Tail-Rank Statistic")
    (description
     "This package implements the tail-rank statistic for selecting biomarkers from a
microarray data set, an efficient nonparametric test focused on the
distributional tails.  See
<https://gitlab.com/krcoombes/coombeslab/-/blob/master/doc/papers/tolstoy-new.pdf>.")
    (license license:asl2.0)))

(define-public r-tailloss
  (package
    (name "r-tailloss")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tailloss" version))
              (sha256
               (base32
                "0lmjgjs6d94b70i10vx66fyvlxm5swwqbcjsnqa3lmldzz6m4jc1"))))
    (properties `((upstream-name . "tailloss")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "http://github.com/igollini/tailloss")
    (synopsis
     "Estimate the Probability in the Upper Tail of the Aggregate Loss Distribution")
    (description
     "Set of tools to estimate the probability in the upper tail of the aggregate loss
distribution using different methods: Panjer recursion, Monte Carlo simulations,
Markov bound, Cantelli bound, Moment bound, and Chernoff bound.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-taildepfun
  (package
    (name "r-taildepfun")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tailDepFun" version))
              (sha256
               (base32
                "0rrjg4ky3pjbfwppmnwyijvlzq3c3nf33rl0w4vly52v1ramp5c6"))))
    (properties `((upstream-name . "tailDepFun")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatialextremes r-mvtnorm r-cubature r-copula))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=tailDepFun")
    (synopsis "Minimum Distance Estimation of Tail Dependence Models")
    (description
     "This package provides functions implementing minimal distance estimation methods
for parametric tail dependence models, as proposed in Einmahl, J.H.J.,
Kiriliouk, A., Krajina, A., and Segers, J. (2016) <doi:10.1111/rssb.12114> and
Einmahl, J.H.J., Kiriliouk, A., and Segers, J. (2018)
<doi:10.1007/s10687-017-0303-7>.")
    (license license:gpl3)))

(define-public r-tailclassifier
  (package
    (name "r-tailclassifier")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TailClassifier" version))
              (sha256
               (base32
                "1m9a2x837v6s7gsv8g5ll6s2h1lk0jjfig2qvkqzg97xp7v9b8in"))))
    (properties `((upstream-name . "TailClassifier")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr))
    (home-page "https://cran.r-project.org/package=TailClassifier")
    (synopsis "Tail Classifier for Thick-Tailed Discrete Data")
    (description
     "Function TailClassifier() in this package is a Tail-Classifier function.  The
function suggests one of the following types of tail for your discrete data: 1)
Power decaying tail; 2) Sub-exponential decaying tail; and 3) Near-exponential
decaying tail.")
    (license license:gpl3)))

(define-public r-tagcloud
  (package
    (name "r-tagcloud")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tagcloud" version))
              (sha256
               (base32
                "04zrh029n8pjlxlr6pdd7xhqqhavbrj3fhvhj6ygzlvi2jslxnwl"))))
    (properties `((upstream-name . "tagcloud")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-rcolorbrewer))
    (native-inputs (list r-knitr))
    (home-page "http://logfc.wordpress.com")
    (synopsis "Tag Clouds")
    (description "Generating Tag and Word Clouds.")
    (license license:gpl2+)))

(define-public r-tag
  (package
    (name "r-tag")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TAG" version))
              (sha256
               (base32
                "1hni3ay1pg4gy3gm3sn3bcr8m3z2vlc5ivg7bmkzpxqdkl0w01h2"))))
    (properties `((upstream-name . "TAG")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-randtoolbox
                             r-mlegp
                             r-mgcv
                             r-matrix
                             r-foreach
                             r-fastgp
                             r-dicekriging))
    (home-page "https://cran.r-project.org/package=TAG")
    (synopsis "Transformed Additive Gaussian Processes")
    (description
     "Implement the transformed additive Gaussian (TAG) process and the transformed
approximately additive Gaussian (TAAG) process proposed in Lin and Joseph (2020)
<DOI:10.1080/00401706.2019.1665592>.  These functions can be used to model
deterministic computer experiments, obtain predictions at new inputs, and
quantify the uncertainty of the predictions.  This research is supported by a
U.S. National Science Foundation grant DMS-1712642 and a U.S. Army Research
Office grant W911NF-17-1-0007.")
    (license license:gpl2)))

(define-public r-taf
  (package
    (name "r-taf")
    (version "4.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TAF" version))
              (sha256
               (base32
                "0fy8lb1yws1k9pbpgjqdzcsgnzx5kydld8gj910s34azksvcadvk"))))
    (properties `((upstream-name . "TAF")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://taf.ices.dk")
    (synopsis "Functions to Support the ICES Transparent Assessment Framework")
    (description
     "This package provides functions to support the ICES Transparent Assessment
Framework <https://taf.ices.dk> to organize data, methods, and results used in
ICES assessments.  ICES is an organization facilitating international
collaboration in marine science.")
    (license license:gpl3)))

(define-public r-tactile
  (package
    (name "r-tactile")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tactile" version))
              (sha256
               (base32
                "0jjfbsadxbf9s6vzi82rw5qa6hdc8iz4jci9xpbzwrjkb90dzd08"))))
    (properties `((upstream-name . "tactile")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-mass r-latticeextra r-lattice
                             r-gridextra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jolars/tactile")
    (synopsis
     "New and Extended Plots, Methods, and Panel Functions for 'lattice'")
    (description
     "Extensions to lattice', providing new high-level functions, methods for existing
functions, panel functions, and a theme.")
    (license license:gpl3)))

(define-public r-tacmagic
  (package
    (name "r-tacmagic")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tacmagic" version))
              (sha256
               (base32
                "1rayyavjppi5dbcmb4yb2nf85ch2li766sdllfsirb19bb3d4c2d"))))
    (properties `((upstream-name . "tacmagic")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-matlab r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/tacmagic")
    (synopsis "Positron Emission Tomography Time-Activity Curve Analysis")
    (description
     "To facilitate the analysis of positron emission tomography (PET) time activity
curve (TAC) data, and to encourage open science and replicability, this package
supports data loading and analysis of multiple TAC file formats.  Functions are
available to analyze loaded TAC data for individual participants or in batches.
Major functionality includes weighted TAC merging by region of interest (ROI),
calculating models including standardized uptake value ratio (SUVR) and
distribution volume ratio (DVR, Logan et al.  1996
<doi:10.1097/00004647-199609000-00008>), basic plotting functions and
calculation of cut-off values (Aizenstein et al.  2008
<doi:10.1001/archneur.65.11.1509>).  Please see the walkthrough vignette for a
detailed overview of tacmagic functions.")
    (license license:gpl3)))

(define-public r-tabusearch
  (package
    (name "r-tabusearch")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabuSearch" version))
              (sha256
               (base32
                "0396a8hla508na1hmyyhfbl8w10dbg810cln2xyhhvxi7rr223dj"))))
    (properties `((upstream-name . "tabuSearch")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tabuSearch")
    (synopsis "Tabu Search Algorithm for Binary Configurations")
    (description
     "Tabu search algorithm for binary configurations.  A basic version of the
algorithm as described by Fouskakis and Draper (2007)
<doi:10.1111/j.1751-5823.2002.tb00174.x>.")
    (license license:gpl2)))

(define-public r-tabulog
  (package
    (name "r-tabulog")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabulog" version))
              (sha256
               (base32
                "0n6qjd7kmvxx5na71f358pw3bbwa69vh8qjkrs5mkb3izxabcq67"))))
    (properties `((upstream-name . "tabulog")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tabulog")
    (synopsis "Parsing Semi-Structured Log Files into Tabular Format")
    (description
     "Convert semi-structured log files (such as Apache access.log files) into a
tabular format (data.frame) using a standard template system.")
    (license license:expat)))

(define-public r-tabulator
  (package
    (name "r-tabulator")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabulator" version))
              (sha256
               (base32
                "1dylmw5prwir3qj13lxkvlzq6j7r23y3gz1g0bjyanb0xmzgxn4k"))))
    (properties `((upstream-name . "tabulator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-assertthat))
    (home-page "https://cran.r-project.org/package=tabulator")
    (synopsis "Efficient Tabulation with Stata-Like Output")
    (description
     "Efficient tabulation with Stata-like output.  For each unique value of the
variable, it shows the number of observations with that value, proportion of
observations with that value, and cumulative proportion, in descending order of
frequency.  Accepts data.table, tibble, or data.frame as input.  Efficient with
big data: if you give it a data.table, tab() uses data.table syntax.")
    (license license:expat)))

(define-public r-tabulate
  (package
    (name "r-tabulate")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabulate" version))
              (sha256
               (base32
                "1x5rf8shd3jxa7k8p8ak5a6c2fmxv476is5vlrg1fsg6f964h01v"))))
    (properties `((upstream-name . "tabulate")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpp r-magrittr r-cli))
    (home-page "https://github.com/mlverse/tabulate")
    (synopsis "Pretty Console Output for Tables")
    (description
     "Generates pretty console output for tables allowing for full customization of
cell colors, font type, borders and many others attributes.  It also supports
multibyte characters and nested tables.")
    (license license:expat)))

(define-public r-tabularmlc
  (package
    (name "r-tabularmlc")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabularMLC" version))
              (sha256
               (base32
                "1gppzbf780ci4vrvy7rd3xa0bvwxca5f05a9xk194xv913vyd440"))))
    (properties `((upstream-name . "tabularMLC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/caiohamamura/tabularMLC")
    (synopsis "Tabular Maximum Likelihood Classifier")
    (description
     "The maximum likelihood classifier (MLC) is one of the most common classifiers
used for remote sensing imagery.  This package uses RcppArmadillo to provide a
fast implementation of the MLC to train and predict over tabular data
(data.frame).  The algorithms were based on Mather (1985)
<doi:10.1080/01431168508948456> method.")
    (license license:gpl3)))

(define-public r-tabularmaps
  (package
    (name "r-tabularmaps")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabularmaps" version))
              (sha256
               (base32
                "07i76n2fpl2ma6jl3zdbay0zmmaaxrxhv1368xm2d575br42nri4"))))
    (properties `((upstream-name . "tabularmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-purrr r-ggplot2 r-ggforce))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/uribo/tabularmaps")
    (synopsis "Create Tile-Grid Geographical Maps")
    (description
     "The tabularmap is one of the visualization methods for efficiently displaying
data consisting of multiple elements by tiling them.  When dealing with
geospatial, it corrects for differences in visibility between areas.")
    (license license:cc-by-sa4.0)))

(define-public r-tabularaster
  (package
    (name "r-tabularaster")
    (version "0.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabularaster" version))
              (sha256
               (base32
                "0b8jl3bf7q0302mlnqh720qs7rllkgyg127n1h25snb34k1wc3pm"))))
    (properties `((upstream-name . "tabularaster")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-spatstat-geom
                             r-silicate
                             r-raster
                             r-magrittr
                             r-fasterize
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hypertidy/tabularaster")
    (synopsis "Tidy Tools for 'Raster' Data")
    (description
     "Facilities to work with vector and raster data in efficient repeatable and
systematic work flow.  Missing functionality in existing packages is included
here to allow extraction from raster data with simple features and Spatial types
and to make extraction consistent and straightforward.  Extract cell numbers
from raster data and return the cells as a data frame rather than as lists of
matrices or vectors.  The functions here allow spatial data to be used without
special handling for the format currently in use.")
    (license license:gpl3)))

(define-public r-tabula
  (package
    (name "r-tabula")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabula" version))
              (sha256
               (base32
                "13mg0cacwx606942n40icr83yzq3px50wqfpxync0zraf6kr4zpp"))))
    (properties `((upstream-name . "tabula")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2 r-arkhe))
    (native-inputs (list r-knitr))
    (home-page "https://packages.tesselle.org/tabula/")
    (synopsis "Analysis and Visualization of Archaeological Count Data")
    (description
     "An easy way to examine archaeological count data.  This package provides several
tests and measures of diversity: heterogeneity and evenness (Brillouin, Shannon,
Simpson, etc.), richness and rarefaction (Chao1, Chao2, ACE, ICE, etc.),
turnover and similarity (Brainerd-Robinson, etc.).  The package make it easy to
visualize count data and statistical thresholds: rank vs abundance plots,
heatmaps, Ford (1962) and Bertin (1977) diagrams.")
    (license license:gpl3+)))

(define-public r-tabshiftr
  (package
    (name "r-tabshiftr")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabshiftr" version))
              (sha256
               (base32
                "1ri28zxsxn9bkbq0f47q6mkr889krvixvk63in0jbn9hya77gdy8"))))
    (properties `((upstream-name . "tabshiftr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-testthat
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr
                             r-crayon
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luckinet/tabshiftr")
    (synopsis "Reshape Disorganised Messy Data")
    (description
     "Helps the user to build and register schema descriptions of disorganised (messy)
tables.  Disorganised tables are tables that are not in a topologically coherent
form, where packages such as tidyr could be used for reshaping.  The schema
description documents the arrangement of input tables and is used to reshape
them into a standardised (tidy) output format.")
    (license license:gpl3)))

(define-public r-tabr
  (package
    (name "r-tabr")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabr" version))
              (sha256
               (base32
                "1nkzbqy9nb6pd895glld009vmry5rnhd7h9q31s8xh97kwlwk9c2"))))
    (properties `((upstream-name . "tabr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leonawicz/tabr")
    (synopsis
     "Music Notation Syntax, Manipulation, Analysis and Transcription in R")
    (description
     "This package provides a music notation syntax and a collection of music
programming functions for generating, manipulating, organizing and analyzing
musical information in R. The music notation framework facilitates creating and
analyzing music data in notation form.  Music data can be viewed, manipulated
and analyzed while in different forms of representation based around different
data structures: strings and data frames.  Each representation offers advantages
over the other for different use cases.  Music syntax can be entered directly
and represented in character strings to minimize the formatting overhead of data
entry by using simple data structures, for example when wanting to quickly enter
and transcribe short pieces of music to sheet music or tablature.  The package
contains functions for directly performing various mathematical, logical and
organizational operations and musical transformations on special object classes
that facilitate working with music data and notation.  The same music data can
also be organized in tidy data frames, allowing for a more familiar and powerful
approach to the analysis of large amounts of structured music data.  Functions
are available for mapping seamlessly between these data structures and their
representations of musical information.  The package also provides API wrapper
functions for transcribing musical representations in R into guitar tablature
(\"tabs\") and basic sheet music using the LilyPond backend
(<http://lilypond.org>).  LilyPond is open source music engraving software for
generating high quality sheet music based on markup syntax.  The package
generates LilyPond files from R code and can pass them to LilyPond to be
rendered into sheet music pdf files.  The package offers nominal MIDI file
output support in conjunction with rendering sheet music.  The package can read
MIDI files and attempts to structure the MIDI data to integrate as best as
possible with the data structures and functionality found throughout the
package.")
    (license license:expat)))

(define-public r-taboolar
  (package
    (name "r-taboolar")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taboolaR" version))
              (sha256
               (base32
                "1nv189d6sjjrhc1nr7xhdf22gfh1z93rlcgm2vk7kcs43avm8fwb"))))
    (properties `((upstream-name . "taboolaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Get Data from 'Taboola' via the 'Windsor.ai' API")
    (description
     "Collect your data on digital marketing campaigns from Taboola using the
Windsor.ai API <https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-tabnet
  (package
    (name "r-tabnet")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabnet" version))
              (sha256
               (base32
                "04m8bg1glnhxb2pjcxnwlcwzbxvk0bskz00dkd4lyvgsq74xwmvi"))))
    (properties `((upstream-name . "tabnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-torch
                             r-tibble
                             r-rlang
                             r-progress
                             r-magrittr
                             r-hardhat
                             r-glue
                             r-coro))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlverse/tabnet")
    (synopsis "Fit 'TabNet' Models for Classification and Regression")
    (description
     "This package implements the TabNet model by Sercan O. Arik et al (2019)
<arXiv:1908.07442> and provides a consistent interface for fitting and creating
predictions.  It's also fully compatible with the tidymodels ecosystem.")
    (license license:expat)))

(define-public r-tablexlsx
  (package
    (name "r-tablexlsx")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tablexlsx" version))
              (sha256
               (base32
                "0rispm626s59g3irdkx8clmjlqsg1vdlyjkzx0z74m13nkgmfw82"))))
    (properties `((upstream-name . "tablexlsx")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://ddotta.github.io/tablexlsx/")
    (synopsis "Export Data Frames to Excel Workbook")
    (description
     "Collection of functions that allow to export data frames to excel workbook.")
    (license license:expat)))

(define-public r-tabletolongform
  (package
    (name "r-tabletolongform")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TableToLongForm" version))
              (sha256
               (base32
                "034vca0il7006zdkh5vdfjddyq9lg5mkl8hjria2rpks6wx0jhrd"))))
    (properties `((upstream-name . "TableToLongForm")))
    (build-system r-build-system)
    (home-page
     "https://www.stat.auckland.ac.nz/~joh024/Research/TableToLongForm/")
    (synopsis
     "Automatically Convert Hierarchical for-Human Tables to Machine-Readable LongForm Dataframes")
    (description
     "This package provides a wrapper to a set of algorithms designed to recognise
positional cues present in hierarchical for-human Tables (which would normally
be interpreted visually by the human brain) to decompose, then reconstruct the
data into machine-readable LongForm Dataframes.")
    (license license:gpl3)))

(define-public r-tablet
  (package
    (name "r-tablet")
    (version "0.5.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tablet" version))
              (sha256
               (base32
                "0c5gjrvr6r4vqxh2dc7v2jads48wwijvbzadxa92qzfsmxw3p382"))))
    (properties `((upstream-name . "tablet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-spork
                             r-rlang
                             r-magrittr
                             r-kableextra
                             r-fs
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tablet")
    (synopsis "Tabulate Descriptive Statistics in Multiple Formats")
    (description
     "This package creates a table of descriptive statistics for factor and numeric
columns in a data frame.  Displays these by groups, if any.  Highly
customizable, with support for html and pdf provided by kableExtra'.  Respects
original column order, column labels, and factor level order.  See
?tablet.data.frame and vignettes.")
    (license license:gpl3)))

(define-public r-tablesgg
  (package
    (name "r-tablesgg")
    (version "0.8-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tablesgg" version))
              (sha256
               (base32
                "0vkl9386qnalr5d0libqs2ihszggs0qyx6ffyjn8j8ab3kczzxhr"))))
    (properties `((upstream-name . "tablesgg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tables r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rrprf/tablesgg")
    (synopsis "Presentation-Quality Tables, Displayed Using 'ggplot2'")
    (description
     "Presentation-quality tables are displayed as plots on an R graphics device.
Although there are other packages that format tables for display, this package
is unique in combining two features: (a) It is aware of the logical structure of
the table being presented, and makes use of that for automatic layout and
styling of the table.  This avoids the need for most manual adjustments to
achieve an attractive result. (b) It displays tables using ggplot2 graphics.
Therefore a table can be presented anywhere a graph could be, with no more
effort.  External software such as LaTeX or HTML or their viewers is not
required.  The package provides a full set of tools to control the style and
appearance of tables, including titles, footnotes and reference marks,
horizontal and vertical rules, and spacing of rows and columns.  Methods are
included to display matrices; data frames; tables created by R's ftable(),
table(), and xtabs() functions; and tables created by the tables and xtable
packages.  Methods can be added to display other table-like objects.  A vignette
is included that illustrates usage and options available in the package.")
    (license license:gpl3+)))

(define-public r-tableschema-r
  (package
    (name "r-tableschema-r")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableschema.r" version))
              (sha256
               (base32
                "1lnl1xybwzg00hqksbj2g6r1hrzwlh2al08hhml0n42khmvpg05g"))))
    (properties `((upstream-name . "tableschema.r")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-stringr
                             r-rlist
                             r-rcurl
                             r-r6
                             r-purrr
                             r-lubridate
                             r-jsonvalidate
                             r-jsonlite
                             r-httr
                             r-future
                             r-config))
    (home-page "https://github.com/frictionlessdata/tableschema-r")
    (synopsis "Table Schema 'Frictionless Data'")
    (description
     "Allows to work with Table Schema
(<https://specs.frictionlessdata.io/table-schema/>).  Table Schema is well
suited for use cases around handling and validating tabular data in text formats
such as csv', but its utility extends well beyond this core usage, towards a
range of applications where data benefits from a portable schema format.  The
tableschema.r package can load and validate any table schema descriptor, allow
the creation and modification of descriptors, expose methods for reading and
streaming data that conforms to a Table Schema via the Tabular Data Resource
abstraction.")
    (license license:expat)))

(define-public r-tables
  (package
    (name "r-tables")
    (version "0.9.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tables" version))
              (sha256
               (base32
                "0nf6wp38br81bdckr47xign6j10lsp9vmqccjblgd0jcirgg19fw"))))
    (properties `((upstream-name . "tables")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://r-forge.r-project.org/projects/tables/")
    (synopsis "Formula-Driven Table Generation")
    (description
     "Computes and displays complex tables of summary statistics.  Output may be in
LaTeX, HTML, plain text, or an R matrix for further processing.")
    (license license:gpl2)))

(define-public r-tableone
  (package
    (name "r-tableone")
    (version "0.13.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableone" version))
              (sha256
               (base32
                "1br78y68037g5v5jhgi9l393kj2msamdklim8ki40hmxk9bibkxi"))))
    (properties `((upstream-name . "tableone")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-survey
                             r-nlme
                             r-mass
                             r-labelled
                             r-gmodels
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaz-yos/tableone")
    (synopsis
     "Create 'Table 1' to Describe Baseline Characteristics with or without Propensity Score Weights")
    (description
     "This package creates Table 1', i.e., description of baseline patient
characteristics, which is essential in every medical research.  Supports both
continuous and categorical variables, as well as p-values and standardized mean
differences.  Weighted data are supported via the survey package.")
    (license license:gpl2)))

(define-public r-tablemonster
  (package
    (name "r-tablemonster")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TableMonster" version))
              (sha256
               (base32
                "1xa4bkcpzhm50dwbpya346swjjfw46n2x26xm30p8gppilg5c0lb"))))
    (properties `((upstream-name . "TableMonster")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable))
    (home-page "<https://www.youtube.com/watch?v=CM1TaNVnh58>")
    (synopsis "Table Monster")
    (description
     "This package provides a user friendly interface to generation of booktab style
tables using xtable'.")
    (license license:gpl2+)))

(define-public r-tablematrix
  (package
    (name "r-tablematrix")
    (version "0.82.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableMatrix" version))
              (sha256
               (base32
                "1sskijhbqakamrk2rv7v5zpjsdi8jw0jl2z96l0vhsvsiq0cz1c8"))))
    (properties `((upstream-name . "tableMatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=tableMatrix")
    (synopsis "Combines 'data.table' and 'matrix' Classes")
    (description
     "This package provides two classes extending data.table class.  Simple tableList
class wraps data.table and any additional structures together.  More complex
tableMatrix class combines data.table and matrix'.  See
<http://github.com/InferenceTechnologies/tableMatrix> for more information and
examples.")
    (license license:gpl2)))

(define-public r-tablehtml
  (package
    (name "r-tablehtml")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableHTML" version))
              (sha256
               (base32
                "0xqvk4smc8z6l4vpg39y1rxkx22spx7nvdsvp6xq6x7pmbsl0m8m"))))
    (properties `((upstream-name . "tableHTML")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot
                             r-shiny
                             r-png
                             r-magrittr
                             r-jpeg
                             r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/LyzandeR/tableHTML")
    (synopsis "Tool to Create HTML Tables")
    (description
     "This package provides a tool to create and style HTML tables with CSS. These can
be exported and used in any application that accepts HTML (e.g. shiny',
rmarkdown', PowerPoint').  It also provides functions to create CSS files (which
also work with shiny).")
    (license license:expat)))

(define-public r-tablehc
  (package
    (name "r-tablehc")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "TableHC" version))
              (sha256
               (base32
                "1il86xjc4h1sdq3gpi4s7xbkcgzpgfqy5ivzjdkbq45d06pssk21"))))
    (properties `((upstream-name . "TableHC")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=TableHC")
    (synopsis "Higher Criticism Test of Two Frequency Counts Tables")
    (description
     "Higher Criticism (HC) test between two frequency tables.  Test is based on an
adaptation of the Tukey-Donoho-Jin HC statistic to testing frequency tables
described in Kipnis (2019) <arXiv:1911.01208>.")
    (license license:expat)))

(define-public r-tableextra
  (package
    (name "r-tableextra")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableExtra" version))
              (sha256
               (base32
                "1rbcxd3rjhvcpayj6d7mh30vkbc7g4mv4qa7552xz3x1wny0n4mm"))))
    (properties `((upstream-name . "tableExtra")))
    (build-system r-build-system)
    (propagated-inputs (list r-gtable))
    (home-page "https://cran.r-project.org/package=tableExtra")
    (synopsis "Draws an Awesome Table")
    (description
     "An easy-to-use tool for drawing paper-quality tables with double-information
encoded in grobs shapes and colors.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-tableeasy
  (package
    (name "r-tableeasy")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tableeasy" version))
              (sha256
               (base32
                "1aa3af245w1frj94j0qynyjv5pvvajas2fmdnyyiknrnrghcn7n2"))))
    (properties `((upstream-name . "tableeasy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tableone r-survival r-nortest r-mgcv r-lmtest))
    (home-page "https://cran.r-project.org/package=tableeasy")
    (synopsis "Tables of Clinical Study")
    (description
     "This package creates some tables of clinical study.  Table 1 is created by
table1() to describe baseline characteristics, which is essential in every
clinical study.  Created by table2(), the function of Table 2 is to explore
influence factors.  And Table 3 created by table3() is able to make stratified
analysis.")
    (license license:gpl3)))

(define-public r-tabledown
  (package
    (name "r-tabledown")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabledown" version))
              (sha256
               (base32
                "0pvd9i7ycsarsp7m9hdss86vx0mdrv57iqxk8nyqixfdvrwb48pv"))))
    (properties `((upstream-name . "tabledown")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-psych
                             r-mote
                             r-mirt
                             r-magrittr
                             r-lavaan
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (home-page "https://github.com/masiraji/tabledown")
    (synopsis "Create Publication Quality Tables and Plots")
    (description
     "Create publication quality plots and tables for Item Response Theory and
Classical Test theory based item analysis, exploratory and confirmatory factor
analysis.")
    (license license:expat)))

(define-public r-tablecompare
  (package
    (name "r-tablecompare")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tablecompare" version))
              (sha256
               (base32
                "0cf557yi0h2y4idk8qwv0gk468pn0fhyndiy2jx28gdsz33h5p3a"))))
    (properties `((upstream-name . "tablecompare")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-data-table))
    (home-page "https://github.com/eutwt/tablecompare")
    (synopsis "Compare Data Frames")
    (description
     "This package provides a toolbox for comparing two data frames with the aim of
quick and simple functionality.  Using a key-column common to both tables, see
which rows are common and highlight differing values by column.  Also included
are functions validating keys and uniqueness of in-group values.")
    (license license:expat)))

(define-public r-table1xls
  (package
    (name "r-table1xls")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "table1xls" version))
              (sha256
               (base32
                "0ixbshbp9hkcg12hj32vgb5bp0pj4rbc3i6g1xdg2zhqp7zanics"))))
    (properties `((upstream-name . "table1xls")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlconnect))
    (home-page "https://cran.r-project.org/package=table1xls")
    (synopsis
     "Exports Reproducible Summary Tables to Multi-Tab Spreadsheet Files (.xls or .xlsx)")
    (description
     "This package provides a collection of time-saving wrappers for reproducible
export of summary tables commonly used in scientific articles, to .xls/.xlsx
multi-tab spreadsheets, while controlling spreadsheet layout.  Powered by
XLConnect'/'rJava utilities.")
    (license license:gpl3)))

(define-public r-table1heatmap
  (package
    (name "r-table1heatmap")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Table1Heatmap" version))
              (sha256
               (base32
                "1ydxl9mc17bi3axzs15qlqr6db8rah5k44dyxvjng2c18nig72dh"))))
    (properties `((upstream-name . "Table1Heatmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-colorramps))
    (home-page "https://cran.r-project.org/package=Table1Heatmap")
    (synopsis "Table 1 Heatmap")
    (description
     "Table 1 is the classical way to describe the patients in a clinical study.  The
amount of splits in the data in such a table is limited.  Table1Heatmap draws a
heatmap of all crosstables that can be generated with the data.  Users can
choose between showing the actual crosstables or direction of effect of
associations, and highlight associations by number of patients or p-values.
v1.2 - fixed \"missing \"no visible global function definition for ..\"")
    (license license:lgpl3)))

(define-public r-table1
  (package
    (name "r-table1")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "table1" version))
              (sha256
               (base32
                "1wr5cqc6a81b5b2fjvw4swb579q5llf63658l6srhxbxx0qba5l3"))))
    (properties `((upstream-name . "table1")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-knitr r-htmltools r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/benjaminrich/table1")
    (synopsis "Tables of Descriptive Statistics in HTML")
    (description
     "Create HTML tables of descriptive statistics, as one would expect to see as the
first table (i.e. \"Table 1\") in a medical/epidemiological journal article.")
    (license license:gpl3)))

(define-public r-table-glue
  (package
    (name "r-table-glue")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "table.glue" version))
              (sha256
               (base32
                "1viaz9swdhgk4ysjhyvl9fr4m430qvmwwblij2b2dadwbdl0z9k4"))))
    (properties `((upstream-name . "table.glue")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bcjaeger/table.glue")
    (synopsis "Make and Apply Customized Rounding Specifications for Tables")
    (description
     "Translate double and integer valued data into character values formatted for
tabulation in manuscripts or other types of academic reports.")
    (license license:expat)))

(define-public r-table-express
  (package
    (name "r-table-express")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "table.express" version))
              (sha256
               (base32
                "08kh7skviwkzqa616vh6mrnlwxxd3c4whpqap4m1myagh6clw40p"))))
    (properties `((upstream-name . "table.express")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-rlang
                             r-r6
                             r-magrittr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://asardaes.github.io/table.express/")
    (synopsis "Build 'data.table' Expressions with Data Manipulation Verbs")
    (description
     "This package provides a specialization of dplyr data manipulation verbs that
parse and build expressions which are ultimately evaluated by data.table',
letting it handle all optimizations.  A set of additional verbs is also provided
to facilitate some common operations on a subset of the data.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-tablaxlsx
  (package
    (name "r-tablaxlsx")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tablaxlsx" version))
              (sha256
               (base32
                "19yg8m264f1hjsi8b7zxjpbvlaz2jrxj2bd9nv95g52dvlysg4nk"))))
    (properties `((upstream-name . "tablaxlsx")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx))
    (home-page "https://cran.r-project.org/package=tablaxlsx")
    (synopsis "Write Formatted Tables in Excel Workbooks")
    (description
     "For writing tables with custom formats in a Excel file ready to be distributed.")
    (license license:gpl3)))

(define-public r-tabit
  (package
    (name "r-tabit")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabit" version))
              (sha256
               (base32
                "0jy95jpbzj4rgaxmm6ki9wr0cl1w13pygq3yavdccjr82mayfpvc"))))
    (properties `((upstream-name . "tabit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=tabit")
    (synopsis "Simple Tabulation Made Simple")
    (description
     "Simple tabulation should be dead simple.  This package is an opinionated
approach to easy tabulations while also providing exact numbers and allowing for
re-usability.  This is achieved by providing tabulations as data.frames with
columns for values, optional variable names, frequency counts including and
excluding NAs and percentages for counts including and excluding NAs.  Also
values are automatically sorted by in decreasing order of frequency counts to
allow for fast skimming of the most important information.")
    (license license:expat)))

(define-public r-taber
  (package
    (name "r-taber")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "taber" version))
              (sha256
               (base32
                "0cib8fsib4q8nf18vcpailvkplf57cm8fshb09clxm3zcp8j9c17"))))
    (properties `((upstream-name . "taber")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dplyr))
    (home-page "https://github.com/restonslacker/taber")
    (synopsis "Split and Recombine Your Data")
    (description
     "Sometimes you need to split your data and work on the two chunks independently
before bringing them back together.  Taber allows you to do that with its two
functions.")
    (license license:bsd-3)))

(define-public r-tabbycat
  (package
    (name "r-tabbycat")
    (version "0.17.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "tabbycat" version))
              (sha256
               (base32
                "1q18vnk4jyql46vjj6bhn2sa65yswg1hw8mbrwv7602dfk09p74x"))))
    (properties `((upstream-name . "tabbycat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-janitor
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=tabbycat")
    (synopsis "Tabulate and Summarise Categorical Data")
    (description
     "This package provides functions for tabulating and summarising categorical
variables.  Most functions are designed to work with dataframes, and use the
tidyverse idiom of taking the dataframe as the first argument so they work
within pipelines.  Equivalent functions that operate directly on vectors are
also provided where it makes sense.  This package aims to make exploratory data
analysis involving categorical variables quicker, simpler and more robust.")
    (license license:expat)))

(define-public r-taba
  (package
    (name "r-taba")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Taba" version))
              (sha256
               (base32
                "1kix89hz660icgmlv2mg905kq6pkrqvrkjfxl57s2wdbb41mgb8r"))))
    (properties `((upstream-name . "Taba")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase))
    (home-page "https://cran.r-project.org/package=Taba")
    (synopsis "Taba Robust Correlations")
    (description
     "Calculates the robust Taba linear, Taba rank (monotonic), TabWil, and TabWil
rank correlations.  Test statistics as well as one sided or two sided p-values
are provided for all correlations.  Multiple correlations and p-values can be
calculated simultaneously across multiple variables.  In addition, users will
have the option to use the partial, semipartial, and generalized partial
correlations; where the partial and semipartial correlations use linear,
logistic, or Poisson regression to modify the specified variable.")
    (license license:gpl3)))

(define-public r-t4transport
  (package
    (name "r-t4transport")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "T4transport" version))
              (sha256
               (base32
                "14i4ap7izlr33fsyfrvv8gkljx3w20n2l1caibs2qsdz23nk9s07"))))
    (properties `((upstream-name . "T4transport")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp r-lpsolve r-cvxr))
    (home-page "https://cran.r-project.org/package=T4transport")
    (synopsis "Tools for Computational Optimal Transport")
    (description
     "Transport theory has seen much success in many fields of statistics and machine
learning.  We provide a variety of algorithms to compute Wasserstein distance,
barycenter, and others.  See PeyrÃ© and Cuturi (2019) <doi:10.1561/2200000073>
for the general exposition to the study of computational optimal transport.")
    (license license:expat)))

(define-public r-t4cluster
  (package
    (name "r-t4cluster")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "T4cluster" version))
              (sha256
               (base32
                "0wai4qgpkwc1p5wwpvi0z6zrcj9ha1wiy27qjpcfvfa2bhaid2w5"))))
    (properties `((upstream-name . "T4cluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d
                             r-rstiefel
                             r-rdpack
                             r-rdimtools
                             r-rcpparmadillo
                             r-rcpp
                             r-mclustcomp
                             r-mass
                             r-maotai
                             r-lpsolve
                             r-ggplot2
                             r-fda
                             r-admm))
    (home-page "https://kisungyou.com/T4cluster/")
    (synopsis "Tools for Cluster Analysis")
    (description
     "Cluster analysis is one of the most fundamental problems in data science.  We
provide a variety of algorithms from clustering to the learning on the space of
partitions.  See Hennig, Meila, and Rocci (2016, ISBN:9781466551886) for general
exposition to cluster analysis.")
    (license license:expat)))

(define-public r-t2qv
  (package
    (name "r-t2qv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "T2Qv" version))
              (sha256
               (base32
                "1zx7r0axa7b83pynilp0rmw6apilzsqjacn426q4i4jlsvr1ba3k"))))
    (properties `((upstream-name . "T2Qv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tables
                             r-stringr
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-purrr
                             r-htmltools
                             r-highcharter
                             r-dplyr
                             r-ca))
    (home-page "https://cran.r-project.org/package=T2Qv")
    (synopsis "Control Qualitative Variables")
    (description
     "Covers k-table control analysis using multivariate control charts for
qualitative variables using fundamentals of multiple correspondence analysis and
multiple factor analysis.  The graphs can be shown in a flat or interactive way,
in the same way all the outputs can be shown in an interactive shiny panel.")
    (license license:expat)))

(define-public r-t2eq
  (package
    (name "r-t2eq")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "T2EQ" version))
              (sha256
               (base32
                "1skkkryw63pfx1xslia1lczb2psja6v6hcbph4isdcksb4l4pcig"))))
    (properties `((upstream-name . "T2EQ")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=T2EQ")
    (synopsis "Functions for Applying the T^2-Test for Equivalence")
    (description
     "This package contains functions for applying the T^2-test for equivalence.  The
T^2-test for equivalence is a multivariate two-sample equivalence test.
Distance measure of the test is the Mahalanobis distance.  For multivariate
normally distributed data the T^2-test for equivalence is exact and UMPI. The
function T2EQ() implements the T^2-test for equivalence according to Wellek
(2010) <DOI:10.1201/ebk1439808184>.  The function
T2EQ.dissolution.profiles.hoffelder() implements a variant of the T^2-test for
equivalence according to Hoffelder (2016)
<http://www.ecv.de/suse_item.php?suseId=Z|pi|8430> for the equivalence
comparison of highly variable dissolution profiles.")
    (license license:gpl3)))

