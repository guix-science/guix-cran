(define-module (guix-cran packages w)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages web)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages image)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages ghostscript)
  #:use-module (gnu packages pulseaudio)
  #:use-module (gnu packages audio)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
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

(define-public r-wyz-code-testthat
  (package
    (name "r-wyz-code-testthat")
    (version "1.1.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wyz.code.testthat" version))
       (sha256
        (base32 "1h3mf898wrqx212xxaqqm6vqgg1aicrykrnc32f9wl5hyjcbnq70"))))
    (properties `((upstream-name . "wyz.code.testthat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wyz-code-offensiveprogramming r-tidyr r-r6
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://neonira.github.io/offensiveProgrammingBook_v1.2.2/")
    (synopsis "Wizardry Code Offensive Programming Test Generation")
    (description
     "Allows to generate automatically testthat code files from offensive programming
test cases.  Generated test files are complete and ready to run.  Using
wyz.code.testthat you will earn a lot of time, reduce the number of errors in
test case production, be able to test immediately generated files without any
need to view or modify them, and enter a zero time latency between code
implementation and industrial testing.  As with testthat', you may complete
provided test cases according to your needs to push testing further, but this
need is nearly void when using wyz.code.@code{offensiveProgramming}'.")
    (license license:gpl3)))

(define-public r-wyz-code-rdoc
  (package
    (name "r-wyz-code-rdoc")
    (version "1.1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wyz.code.rdoc" version))
       (sha256
        (base32 "02k6wk45dn6i8kzxhgcxqxvrzxf063dny17jjnj83wsxx2b37jgv"))))
    (properties `((upstream-name . "wyz.code.rdoc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wyz-code-offensiveprogramming
                             r-tidyr
                             r-stringr
                             r-r6
                             r-digest
                             r-data-table
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://neonira.github.io/offensiveProgrammingBook_v1.2.2/")
    (synopsis "Wizardry Code Offensive Programming R Documentation")
    (description
     "Allows to generate on-demand or by batch, any R documentation file, whatever is
kind, data, function, class or package.  It populates documentation sections,
either automatically or by considering your input.  Input code could be standard
R code or offensive programming code.  Documentation content completeness
depends on the type of code you use.  With offensive programming code, expect
generated documentation to be fully completed, from a format and content point
of view.  With some standard R code, you will have to activate post processing
to fill-in any section that requires complements.  Produced manual page validity
is automatically tested against R documentation compliance rules.  Documentation
language proficiency, wording style, and phrasal adjustments remains your job.")
    (license license:gpl3)))

(define-public r-wyz-code-offensiveprogramming
  (package
    (name "r-wyz-code-offensiveprogramming")
    (version "1.1.24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wyz.code.offensiveProgramming" version))
       (sha256
        (base32 "1q3yn5yp2qlzqg1xpxlkpdkiij4kzwn9yj8mc9xxx4bxnbspkakq"))))
    (properties `((upstream-name . "wyz.code.offensiveProgramming")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-stringr r-r6 r-data-table r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://neonira.github.io/offensiveProgrammingBook_v1.2.2/")
    (synopsis "Wizardry Code Offensive Programming")
    (description
     "Allows to turn standard R code into offensive programming code.  Provides code
instrumentation to ease this change and tools to assist and accelerate code
production and tuning while using offensive programming code technics.  Should
improve code robustness and quality.  Function calls can be easily verified
on-demand or in batch mode to assess parameter types and length conformities.
Should improve coders productivity as offensive programming reduces the code
size due to reduced number of controls all along the call chain.  Should speed
up processing as many checks will be reduced to one single check.")
    (license license:gpl3)))

(define-public r-wyz-code-metatesting
  (package
    (name "r-wyz-code-metatesting")
    (version "1.1.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wyz.code.metaTesting" version))
       (sha256
        (base32 "0xhcqqvh0lkw9mqdrib0q1inwgla5y9ayjc6pdkix6ckabfybagg"))))
    (properties `((upstream-name . "wyz.code.metaTesting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wyz-code-offensiveprogramming r-tidyr
                             r-data-table r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://neonira.github.io/offensiveProgrammingBook_v1.2.2/")
    (synopsis "Wizardry Code Meta Testing")
    (description
     "Meta testing is the ability to test a function without having to provide its
parameter values.  Those values will be generated, based on semantic naming of
parameters, as introduced by package wyz.code.@code{offensiveProgramming}'.
Value generation logic can be completed with your own data types and generation
schemes.  This to meet your most specific requirements and to answer to a wide
variety of usages, from general use case to very specific ones.  While using
meta testing, it becomes easier to generate stress test campaigns,
non-regression test campaigns and robustness test campaigns, as generated tests
can be saved and reused from session to session.  Main benefits of using
wyz.code.@code{metaTesting} is ability to discover valid and invalid function
parameter combinations, ability to infer valid parameter values, and to provide
smart summaries that allows you to focus on dysfunctional cases.")
    (license license:gpl3)))

(define-public r-wxgenr
  (package
    (name "r-wxgenr")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wxgenR" version))
       (sha256
        (base32 "0gx5gyc5af3rzj9rhz3pvyhb3z5njqcg474lpwi78bhvlrd1wzaq"))))
    (properties `((upstream-name . "wxgenR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-sm
                             r-qmap
                             r-plyr
                             r-msm
                             r-mc2d
                             r-magrittr
                             r-lubridate
                             r-foreach
                             r-dplyr
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wxgenR")
    (synopsis "Stochastic Weather Generator with Seasonality")
    (description
     "This package provides a weather generator to simulate precipitation and
temperature for regions with seasonality.  Users input training data containing
precipitation, temperature, and seasonality (up to 26 seasons).  Including
weather season as a training variable allows users to explore the effects of
potential changes in season duration as well as average start- and end-time
dates due to phenomena like climate change.  Data for training should be a
single time series but can originate from station data, basin averages, grid
cells, etc.  Bearup, L., Gangopadhyay, S., & Mikkelson, K. (2021). \"Hydroclimate
Analysis Lower Santa Cruz River Basin Study (Technical Memorandum No
ENV-2020-056).\" Bureau of Reclamation.  Gangopadhyay, S., Bearup, L. A., Verdin,
A., Pruitt, T., Halper, E., & Shamir, E. (2019, December 1). \"A collaborative
stochastic weather generator for climate impacts assessment in the Lower Santa
Cruz River Basin, Arizona.\" Fall Meeting 2019, American Geophysical Union.
<https://ui.adsabs.harvard.edu/abs/2019AGUFMGC41G1267G>.")
    (license license:cc0)))

(define-public r-wwntests
  (package
    (name "r-wwntests")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wwntests" version))
       (sha256
        (base32 "0bs0i66ydy5zg66nwhniqzd000rc5qcmkliqpb3f9n749x2sj2f6"))))
    (properties `((upstream-name . "wwntests")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sde r-rainbow r-mass r-ftsa r-fda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wwntests")
    (synopsis "Hypothesis Tests for Functional Time Series")
    (description
     "This package provides a collection of white noise hypothesis tests for
functional time series and related visualizations.  These include tests based on
the norms of autocovariance operators that are built under both strong and weak
white noise assumptions.  Additionally, tests based on the spectral density
operator and on principal component dimensional reduction are included, which
are built under strong white noise assumptions.  Also, this package provides
goodness-of-fit tests for functional autoregressive of order 1 models.  These
methods are described in Kokoszka et al. (2017)
<doi:10.1016/j.jmva.2017.08.004>, Characiejus and Rice (2019)
<doi:10.1016/j.ecosta.2019.01.003>, Gabrys and Kokoszka (2007)
<doi:10.1198/016214507000001111>, and Kim et al. (2023) <doi: 10.1214/23-SS143>
respectively.")
    (license license:gpl3)))

(define-public r-wwgbook
  (package
    (name "r-wwgbook")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WWGbook" version))
       (sha256
        (base32 "05dzgb2b1md981882sp85dvmrsak5v7gwkww1shqfm34zmk9dbkn"))))
    (properties `((upstream-name . "WWGbook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www-personal.umich.edu/~bwest/almmussp.html")
    (synopsis "Functions and Datasets for WWGbook")
    (description
     "Book is \"Linear Mixed Models: A Practical Guide Using Statistical Software\"
published in 2006 by Chapman Hall / CRC Press.")
    (license license:gpl2+)))

(define-public r-wvplots
  (package
    (name "r-wvplots")
    (version "1.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WVPlots" version))
       (sha256
        (base32 "0gn3hf3c3z984y7gfpxgmywbdqcqyrfp2mbs293wzw9dj0939m07"))))
    (properties `((upstream-name . "WVPlots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrapr
                             r-sigr
                             r-rquery
                             r-rqdatatable
                             r-rlang
                             r-mgcv
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-cdata))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/WinVector/WVPlots")
    (synopsis "Common Plots for Analysis")
    (description
     "Select data analysis plots, under a standardized calling interface implemented
on top of ggplot2 and plotly'.  Plots of interest include: ROC', gain curve,
scatter plot with marginal distributions, conditioned scatter plot with marginal
densities, box and stem with matching theoretical distribution, and density with
matching theoretical distribution.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-wv
  (package
    (name "r-wv")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wv" version))
       (sha256
        (base32 "0s8mbl1bdnrbpfg80rzy9nw1gm6c6vx8yp230x951sk8aw3j090q"))))
    (properties `((upstream-name . "wv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-simts r-rcpparmadillo r-rcpp r-coda))
    (home-page "https://github.com/SMAC-Group/wv")
    (synopsis "Wavelet Variance")
    (description
     "This package provides a series of tools to compute and plot quantities related
to classical and robust wavelet variance for time series and regular lattices.
More details can be found, for example, in Serroukh, A., Walden, A.T., &
Percival, D.B. (2000) <doi:10.2307/2669537> and Guerrier, S. & Molinari, R.
(2016) <doi:10.48550/@code{arXiv.1607.05858>}.")
    (license license:agpl3)))

(define-public r-wufoor
  (package
    (name "r-wufoor")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WufooR" version))
       (sha256
        (base32 "0iq1lc1b22zdvclkr4yivxxf8z5mdxik7lx9r3b38h2qy2rckqb2"))))
    (properties `((upstream-name . "WufooR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dmpe/wufoor")
    (synopsis "R Wrapper for the 'Wufoo.com' - The Form Building Service")
    (description
     "Allows form managers to download entries from their respondents using Wufoo JSON
API (<https://www.wufoo.com>).  Additionally, the Wufoo reports - when public -
can be also acquired programmatically.  Note that building new forms within this
package is not supported.")
    (license license:asl2.0)))

(define-public r-wttopsis
  (package
    (name "r-wttopsis")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WtTopsis" version))
       (sha256
        (base32 "0zwx75rgdyh7pjxjvd5xvxqkfryvhq2csn4sd0py0dgmjxb5p3ja"))))
    (properties `((upstream-name . "WtTopsis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WtTopsis")
    (synopsis "Weighted Method for Multiple-Criteria Decision Making")
    (description
     "Evaluation of alternatives based on multiple criteria using weighted technique
for Order preference by similarity to an ideal solution method.  Reference:
Hwang CL. (1981, ISBN:978-3-540-10558-9).")
    (license license:expat)))

(define-public r-wto
  (package
    (name "r-wto")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wTO" version))
       (sha256
        (base32 "11400qmpkpk4y9af4c0q7ir32gwrxgyjspkxk0xlid2an7pbrsr3"))))
    (properties `((upstream-name . "wTO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-som
                             r-rfast
                             r-reshape2
                             r-plyr
                             r-magrittr
                             r-igraph
                             r-hiclimr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=wTO")
    (synopsis
     "Computing Weighted Topological Overlaps (wTO) & Consensus wTO Network")
    (description
     "Computes the Weighted Topological Overlap with positive and negative signs
(@code{wTO}) networks given a data frame containing the @code{mRNA} count/
expression/ abundance per sample, and a vector containing the interested nodes
of interaction (a subset of the elements of the full data frame).  It also
computes the cut-off threshold or p-value based on the individuals bootstrap or
the values reshuffle per individual.  It also allows the construction of a
consensus network, based on multiple @code{wTO} networks.  The package includes
a visualization tool for the networks.  More about the methodology can be found
at <doi:10.1186/s12859-018-2351-7>.")
    (license license:gpl2)))

(define-public r-wtest
  (package
    (name "r-wtest")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wtest" version))
       (sha256
        (base32 "063ax9mbb2dy33l1cl533mjzpvhf2akw3613pklfjg6bhprlniz7"))))
    (properties `((upstream-name . "wtest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wtest")
    (synopsis "The W-Test for Genetic Interactions Testing")
    (description
     "Perform the calculation of W-test, diagnostic checking, calculate minor allele
frequency (MAF) and odds ratio.")
    (license license:gpl2)))

(define-public r-wsyn
  (package
    (name "r-wsyn")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsyn" version))
       (sha256
        (base32 "0wq07n69l52rs0ddl1r3ml5jh5nflsg9mddvc3dxjdpd00mgbxnl"))))
    (properties `((upstream-name . "wsyn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-fields))
    (native-inputs (list r-rmarkdown r-mvtnorm r-knitr))
    (home-page "https://cran.r-project.org/package=wsyn")
    (synopsis
     "Wavelet Approaches to Studies of Synchrony in Ecology and Other Fields")
    (description
     "This package provides tools for a wavelet-based approach to analyzing spatial
synchrony, principally in ecological data.  Some tools will be useful for
studying community synchrony.  See, for instance, Sheppard et al (2016) <doi:
10.1038/NCLIMATE2991>, Sheppard et al (2017) <doi: 10.1051/epjnbp/2017000>,
Sheppard et al (2019) <doi: 10.1371/journal.pcbi.1006744>.")
    (license license:gpl3)))

(define-public r-wstdiff
  (package
    (name "r-wstdiff")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wstdiff" version))
       (sha256
        (base32 "10ivk556vg450fp6mhsp16nnvg7fq83jiq61n43npx60s45ayvxv"))))
    (properties `((upstream-name . "wstdiff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wstdiff")
    (synopsis
     "Welch-Satterthwaite Approximation for t-Distribution Differences")
    (description
     "This package implements the Welch-Satterthwaite approximation for differences of
non-standardized t-distributed random variables in both univariate and
multivariate settings.  The package provides methods for computing effective
degrees of freedom and scale parameters, as well as distribution functions for
the approximated difference distribution.  The methodology extends the classical
Welch-Satterthwaite framework from variance combinations to t-distribution
differences through careful moment matching.  Methods build on the classical
Welch-Satterthwaite approach described in Welch (1947)
<doi:10.1093/biomet/34.1-2.28> and Satterthwaite (1946) <doi:10.2307/3002019>.")
    (license license:expat)))

(define-public r-wsrf
  (package
    (name "r-wsrf")
    (version "1.7.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsrf" version))
       (sha256
        (base32 "0q1rd84lwimncz0x38i8k39hqrgnkv6ymhass0i0sf1frvpqs46p"))))
    (properties `((upstream-name . "wsrf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SimonYansenZhao/wsrf")
    (synopsis "Weighted Subspace Random Forest for Classification")
    (description
     "This package provides a parallel implementation of Weighted Subspace Random
Forest.  The Weighted Subspace Random Forest algorithm was proposed in the
International Journal of Data Warehousing and Mining by Baoxun Xu, Joshua Zhexue
Huang, Graham Williams, Qiang Wang, and Yunming Ye (2012)
<DOI:10.4018/jdwm.2012040103>.  The algorithm can classify very high-dimensional
data with random forests built using small subspaces.  A novel variable
weighting method is used for variable subspace selection in place of the
traditional random variable sampling.This new approach is particularly useful in
building models from high-dimensional data.")
    (license license:gpl3+)))

(define-public r-wsprv
  (package
    (name "r-wsprv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsprv" version))
       (sha256
        (base32 "0l2c2zv6ypqqynaj9fxdwgwb0drm27zylbk9irhxxm2bp55s2pdy"))))
    (properties `((upstream-name . "wsprv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mnormt r-glmnet))
    (home-page "https://cran.r-project.org/package=wsprv")
    (synopsis "Weighted Selection Probability for Rare Variant Analysis")
    (description
     "This package provides a weighted selection probability to locate rare variants
associated with multiple phenotypes.")
    (license license:gpl2)))

(define-public r-wsmed
  (package
    (name "r-wsmed")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsMed" version))
       (sha256
        (base32 "1bl6q4a4ipicf2dij02qb32jn9hk43rspadmvxlxkdlily97rn3r"))))
    (properties `((upstream-name . "wsMed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-semmcci
                             r-semboottools
                             r-rlang
                             r-mice
                             r-mass
                             r-lavaan
                             r-knitr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://yangzhen1999.github.io/wsMed/")
    (synopsis
     "Within-Subject Mediation Analysis Using Structural Equation Modeling")
    (description
     "Within-subject mediation analysis using structural equation modeling.  Examine
how changes in an outcome variable between two conditions are mediated through
one or more variables.  Supports within-subject mediation analysis using the
lavaan package by Rosseel (2012) <doi:10.18637/jss.v048.i02>, and extends Monte
Carlo confidence interval estimation to missing data scenarios using the semmcci
package by Pesigan and Cheung (2023) <doi:10.3758/s13428-023-02114-4>.")
    (license license:gpl3+)))

(define-public r-wskm
  (package
    (name "r-wskm")
    (version "1.4.40")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wskm" version))
       (sha256
        (base32 "0x5nc3bwqawx0k95v088dsx83dm7lw5lkryjvq6bl57bgrcn7n0l"))))
    (properties `((upstream-name . "wskm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-latticeextra r-lattice r-fpc))
    (home-page "https://github.com/SimonYansenZhao/wskm")
    (synopsis "Weighted k-Means Clustering")
    (description
     "Entropy weighted k-means (ewkm) by Liping Jing, Michael K. Ng and Joshua Zhexue
Huang (2007) <doi:10.1109/TKDE.2007.1048> is a weighted subspace clustering
algorithm that is well suited to very high dimensional data.  Weights are
calculated as the importance of a variable with regard to cluster membership.
The two-level variable weighting clustering algorithm tw-k-means (twkm) by
Xiaojun Chen, Xiaofei Xu, Joshua Zhexue Huang and Yunming Ye (2013)
<doi:10.1109/TKDE.2011.262> introduces two types of weights, the weights on
individual variables and the weights on variable groups, and they are calculated
during the clustering process.  The feature group weighted k-means (fgkm) by
Xiaojun Chen, Yunminng Ye, Xiaofei Xu and Joshua Zhexue Huang (2012)
<doi:10.1016/j.patcog.2011.06.004> extends this concept by grouping features and
weighting the group in addition to weighting individual features.")
    (license license:gpl3+)))

(define-public r-wsjplot
  (package
    (name "r-wsjplot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsjplot" version))
       (sha256
        (base32 "1vgf823j3ychdnvg4nq59ah4rkv5lpwbg0r7sijir2b18sgxsrbi"))))
    (properties `((upstream-name . "wsjplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-scales r-magrittr r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=wsjplot")
    (synopsis "Style Time Series Plots Like the Wall Street Journal")
    (description
     "Easily override the default visual choices in ggplot2 to make your time series
plots look more like the Wall Street Journal.  Specific theme design choices
include omitting x-axis grid lines and displaying sparse light grey y-axis grid
lines.  Additionally, this allows to label the y-axis scales with your units
only displayed on the top-most number, while also removing the bottom most
number (unless specifically overridden).  The goal is visual simplicity, because
who has time to waste looking at a cluttered graph?")
    (license license:expat)))

(define-public r-wscdata
  (package
    (name "r-wscdata")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WSCdata" version))
       (sha256
        (base32 "1q4hlgdqr00cr1i5sk5ywh5p8ipwix9i9p6zxf02dwnq4jndi9sf"))))
    (properties `((upstream-name . "WSCdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/jzangela/WSCdata")
    (synopsis
     "New Four-Arm Within-Study Comparison Data on Math and Vocabulary Training")
    (description
     "This dataset was collected using a new four-arm within-study comparison design.
The study aimed to examine the impact of a mathematics training intervention and
a vocabulary study session on post-test scores in mathematics and vocabulary,
respectively.  The innovative four-arm within-study comparison design
facilitates both experimental and quasi-experimental identification of average
causal effects.")
    (license license:expat)))

(define-public r-wsbackfit
  (package
    (name "r-wsbackfit")
    (version "1.0-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wsbackfit" version))
       (sha256
        (base32 "18y2r6v19a4lnpa3y2q0whm5kizmd29r0abj7rcirb9fd5jqrsp2"))))
    (properties `((upstream-name . "wsbackfit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=wsbackfit")
    (synopsis "Weighted Smooth Backfitting for Structured Models")
    (description
     "Non- and semiparametric regression for generalized additive, partial linear, and
varying coefficient models as well as their combinations via smoothed
backfitting.  Based on Roca-Pardinas J and Sperlich S (2010)
<doi:10.1007/s11222-009-9130-2>; Mammen E, Linton O and Nielsen J (1999)
<doi:10.1214/aos/1017939138>; Lee YK, Mammen E, Park BU (2012)
<doi:10.1214/12-AOS1026>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-wru
  (package
    (name "r-wru")
    (version "3.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wru" version))
       (sha256
        (base32 "1d8k9bmzwg11ypkhhcnj2l6i2qnk13a09la0nc713nlwc21zqc44"))))
    (properties `((upstream-name . "wru")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-pl94171
                             r-piggyback
                             r-future
                             r-furrr
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/kosukeimai/wru")
    (synopsis
     "Who are You? Bayesian Prediction of Racial Category Using Surname, First Name, Middle Name, and Geolocation")
    (description
     "Predicts individual race/ethnicity using surname, first name, middle name,
geolocation, and other attributes, such as gender and age.  The method utilizes
Bayes Rule (with optional measurement error correction) to compute the posterior
probability of each racial category for any given individual.  The package
implements methods described in Imai and Khanna (2016) \"Improving Ecological
Inference by Predicting Individual Ethnicity from Voter Registration Records\"
Political Analysis <DOI:10.1093/pan/mpw001> and Imai, Olivella, and Rosenman
(2022) \"Addressing census data problems in race imputation via fully Bayesian
Improved Surname Geocoding and name supplements\" <DOI:10.1126/sciadv.adc9824>.
The package also incorporates the data described in Rosenman, Olivella, and Imai
(2023) \"Race and ethnicity data for first, middle, and surnames\"
<DOI:10.1038/s41597-023-02202-2>.")
    (license license:gpl3+)))

(define-public r-wrtopdownfrag
  (package
    (name "r-wrtopdownfrag")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrTopDownFrag" version))
       (sha256
        (base32 "08pn5dc5665rn3vma684wwcwvr70y8nawydpymav0j8xnwly6wid"))))
    (properties `((upstream-name . "wrTopDownFrag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrproteo r-wrmisc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrTopDownFrag")
    (synopsis
     "Internal Fragment Identification from Top-Down Mass Spectrometry")
    (description
     "Top-Down mass spectrometry aims to identify entire proteins as well as their
(post-translational) modifications or ions bound (eg Chen et al (2018)
<doi:10.1021/acs.analchem.7b04747>).  The pattern of internal fragments
(Haverland et al (2017) <doi:10.1007/s13361-017-1635-x>) may reveal important
information about the original structure of the proteins studied (Skinner et al
(2018) <doi:10.1038/nchembio.2515> and Li et al (2018)
<doi:10.1038/nchem.2908>).  However, the number of possible internal fragments
gets huge with longer proteins and subsequent identification of internal
fragments remains challenging, in particular since the the accuracy of
measurements with current mass spectrometers represents a limiting factor.  This
package attempts to deal with the complexity of internal fragments and allows
identification of terminal and internal fragments from deconvoluted
mass-spectrometry data.")
    (license license:gpl3)))

(define-public r-wrtdstidal
  (package
    (name "r-wrtdstidal")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WRTDStidal" version))
       (sha256
        (base32 "03gxc79d46v1aczrllf769b2mkz727505cdsgblls56j8pvkb0ff"))))
    (properties `((upstream-name . "WRTDStidal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-rcolorbrewer
                             r-quantreg
                             r-purrr
                             r-lubridate
                             r-gridextra
                             r-ggplot2
                             r-forecast
                             r-foreach
                             r-fields
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WRTDStidal")
    (synopsis
     "Weighted Regression for Water Quality Evaluation in Tidal Waters")
    (description
     "An adaptation for estuaries (tidal waters) of weighted regression on time,
discharge, and season to evaluate trends in water quality time series.  Please
see Beck and Hagy (2015) <doi:10.1007/s10666-015-9452-8> for details.")
    (license license:cc0)))

(define-public r-wrswor
  (package
    (name "r-wrswor")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrswoR" version))
       (sha256
        (base32 "0f8lbpypik0vl7dldpgviyqigc1qgf74g2l2xj5r0g01vl9826k1"))))
    (properties `((upstream-name . "wrswoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-logging))
    (home-page "http://krlmlr.github.io/wrswoR/")
    (synopsis "Weighted Random Sampling without Replacement")
    (description
     "This package provides a collection of implementations of classical and novel
algorithms for weighted sampling without replacement.  Implementations include
the algorithm of Efraimidis and Spirakis (2006) <doi:10.1016/j.ipl.2005.11.003>
and Wong and Easton (1980) <doi:10.1137/0209009>.")
    (license license:gpl3)))

(define-public r-wrproteo
  (package
    (name "r-wrproteo")
    (version "1.13.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrProteo" version))
       (sha256
        (base32 "02vg6rq5fj4hl9clp56i0107g1hfdh3aj0wrnyk3klwgy04pb0x6"))))
    (properties `((upstream-name . "wrProteo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrmisc r-limma r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrProteo")
    (synopsis "Proteomics Data Analysis Functions")
    (description
     "Data analysis of proteomics experiments by mass spectrometry is supported by
this collection of functions mostly dedicated to the analysis of (bottom-up)
quantitative (XIC) data.  Fasta-formatted proteomes (eg from @code{UniProt}
Consortium <doi:10.1093/nar/gky1049>) can be read with automatic parsing and
multiple annotation types (like species origin, abbreviated gene names, etc)
extracted.  Initial results from multiple software for protein (and peptide)
quantitation can be imported (to a common format): @code{MaxQuant} (Tyanova et
al 2016 <doi:10.1038/nprot.2016.136>), Dia-NN (Demichev et al 2020
<doi:10.1038/s41592-019-0638-x>), Fragpipe (da Veiga et al 2020
<doi:10.1038/s41592-020-0912-y>), ionbot (Degroeve et al 2021
<doi:10.1101/2021.07.02.450686>), @code{MassChroq} (Valot et al 2011
<doi:10.1002/pmic.201100120>), @code{OpenMS} (Strauss et al 2021
<doi:10.1038/nmeth.3959>), @code{ProteomeDiscoverer} (Orsburn 2021
<doi:10.3390/proteomes9010015>), Proline (Bouyssie et al 2020
<doi:10.1093/bioinformatics/btaa118>), @code{AlphaPept} (preprint Strauss et al
<doi:10.1101/2021.07.23.453379>) and Wombat-P (Bouyssie et al 2023
<doi:10.1021/acs.jproteome.3c00636>.  Meta-data provided by initial analysis
software and/or in sdrf format can be integrated to the analysis.  Quantitative
proteomics measurements frequently contain multiple NA values, due to physical
absence of given peptides in some samples, limitations in sensitivity or other
reasons.  Help is provided to inspect the data graphically to investigate the
nature of NA-values via their respective replicate measurements and to
help/confirm the choice of NA-replacement algorithms.  Meta-data in sdrf-format
(Perez-Riverol et al 2020 <doi:10.1021/acs.jproteome.0c00376>) or similar
tabular formats can be imported and included.  Missing values can be inspected
and imputed based on the concept of NA-neighbours or other methods.  Dedicated
filtering and statistical testing using the framework of package limma
<doi:10.18129/B9.bioc.limma> can be run, enhanced by multiple rounds of
NA-replacements to provide robustness towards rare stochastic events.
Multi-species samples, as frequently used in benchmark-tests (eg Navarro et al
2016 <doi:10.1038/nbt.3685>, Ramus et al 2016
<doi:10.1016/j.jprot.2015.11.011>), can be run with special options considering
such sub-groups during normalization and testing.  Subsequently, ROC curves
(Hand and Till 2001 <doi:10.1023/A:1010920819831>) can be constructed to compare
multiple analysis approaches.  As detailed example the data-set from Ramus et al
2016 <doi:10.1016/j.jprot.2015.11.011>) quantified by @code{MaxQuant},
@code{ProteomeDiscoverer}, and Proline is provided with a detailed analysis of
heterologous spike-in proteins.")
    (license license:gpl3)))

(define-public r-wrmisc
  (package
    (name "r-wrmisc")
    (version "1.15.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrMisc" version))
       (sha256
        (base32 "0740bvsb748zh3a0vd1dgb2cpl6i8f6ivz023qf0jr1609p8271c"))))
    (properties `((upstream-name . "wrMisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrMisc")
    (synopsis "Analyze Experimental High-Throughput (Omics) Data")
    (description
     "The efficient treatment and convenient analysis of experimental high-throughput
(omics) data gets facilitated through this collection of diverse functions.
Several functions address advanced object-conversions, like manipulating lists
of lists or lists of arrays, reorganizing lists to arrays or into separate
vectors, merging of multiple entries, etc.  Another set of functions provides
speed-optimized calculation of standard deviation (sd), coefficient of variance
(CV) or standard error of the mean (SEM) for data in matrixes or means per line
with respect to additional grouping (eg n groups of replicates).  A group of
functions facilitate dealing with non-redundant information, by indexing unique,
adding counters to redundant or eliminating lines with respect redundancy in a
given reference-column, etc.  Help is provided to identify very closely matching
numeric values to generate (partial) distance matrixes for very big data in a
memory efficient manner or to reduce the complexity of large data-sets by
combining very close values.  Other functions help aligning a matrix or
data.frame to a reference using partial matching or to mine an experimental
setup to extract patterns of replicate samples.  Many times large experimental
datasets need some additional filtering, adequate functions are provided.
Convenient data normalization is supported in various different modes, parameter
estimation via permutations or boot-strap as well as flexible testing of
multiple pair-wise combinations using the framework of limma is provided, too.
Batch reading (or writing) of sets of files and combining data to arrays is
supported, too.")
    (license license:gpl3)))

(define-public r-writer
  (package
    (name "r-writer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "writer" version))
       (sha256
        (base32 "03173c2gkw5bwxkr5m20w38xksy4sp092wzpq7drdg225plnywcd"))))
    (properties `((upstream-name . "writer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-glue
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-cli))
    (home-page "https://github.com/talegari/writer")
    (synopsis "Write from Multiple Sources to a Database Table")
    (description
     "This package provides unified syntax to write data from lazy dplyr tbl or dplyr
sql query or a dataframe to a database table with modes such as create, append,
insert, update, upsert, patch, delete, overwrite, overwrite_schema.")
    (license license:lgpl3+)))

(define-public r-writealizer
  (package
    (name "r-writealizer")
    (version "1.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "writeAlizer" version))
       (sha256
        (base32 "16vh668bhn837lknni94wsybpxmgpngsi8nxivz1llviczw9ak3m"))))
    (properties `((upstream-name . "writeAlizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-rlang
                             r-magrittr
                             r-glue
                             r-dplyr
                             r-digest
                             r-cli
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shmercer/writeAlizer/")
    (synopsis "Generate Predicted Writing Quality Scores")
    (description
     "Imports variables from @code{ReaderBench} (Dascalu et al.,
2018)<doi:10.1007/978-3-319-66610-5_48>, Coh-Metrix (@code{McNamara} et al.,
2014)<doi:10.1017/CBO9780511894664>, and/or GAMET (Crossley et al., 2019)
<doi:10.17239/jowr-2019.11.02.01> output files; downloads predictive scoring
models described in Mercer & Cannon (2022)<doi:10.31244/jero.2022.01.03> and
Mercer et al.(2021)<doi:10.1177/0829573520987753>; and generates predicted
writing quality and curriculum-based measurement (@code{McMaster} & Espin,
2007)<doi:10.1177/00224669070410020301> scores.")
    (license license:expat)))

(define-public r-wrightmap
  (package
    (name "r-wrightmap")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WrightMap" version))
       (sha256
        (base32 "1ncng7mj207h50s8kc1c0d8z20qvzqxf28rbnbaddaj41bns23id"))))
    (properties `((upstream-name . "WrightMap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer))
    (home-page "https://cran.r-project.org/package=WrightMap")
    (synopsis "IRT Item-Person Map with 'ConQuest' Integration")
    (description
     "This package provides a powerful yet simple graphical tool available in the
field of psychometrics is the Wright Map (also known as item maps or item-person
maps), which presents the location of both respondents and items on the same
scale.  Wright Maps are commonly used to present the results of dichotomous or
polytomous item response models.  The @code{WrightMap} package provides
functions to create these plots from item parameters and person estimates stored
as R objects.  Although the package can be used in conjunction with any software
used to estimate the IRT model (e.g. TAM', mirt', @code{eRm} or IRToys in R', or
Stata', Mplus', etc.), @code{WrightMap} features special integration with
@code{ConQuest} to facilitate reading and plotting its output directly.The
@code{wrightMap} function creates Wright Maps based on person estimates and item
parameters produced by an item response analysis.  The CQmodel function reads
output files created using @code{ConQuest} software and creates a set of data
frames for easy data manipulation, bundled in a CQmodel object.  The
@code{wrightMap} function can take a CQmodel object as input or it can be used
to create Wright Maps directly from data frames of person and item parameters.")
    (license license:bsd-2)))

(define-public r-wri
  (package
    (name "r-wri")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WRI" version))
       (sha256
        (base32 "1c1jf66bmggsvk4ivdpx7cy80qmda8p6bkfr80cfpds5vr58kfwn"))))
    (properties `((upstream-name . "WRI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rfast
                             r-rcpparmadillo
                             r-rcpp
                             r-polynom
                             r-mvtnorm
                             r-gridextra
                             r-ggplot2
                             r-fdapace
                             r-expm
                             r-cvxr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WRI")
    (synopsis "Wasserstein Regression and Inference")
    (description
     "Implementation of the methodologies described in 1) Alexander Petersen, Xi Liu
and Afshin A. Divani (2021) <doi:10.1214/20-aos1971>, including global F tests,
partial F tests, intrinsic Wasserstein-infinity bands and Wasserstein density
bands, and 2) Chao Zhang, Piotr Kokoszka and Alexander Petersen (2022)
<doi:10.1111/jtsa.12590>, including estimation, prediction, and inference of the
Wasserstein autoregressive models.")
    (license license:gpl2)))

(define-public r-wrgraph
  (package
    (name "r-wrgraph")
    (version "1.3.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrGraph" version))
       (sha256
        (base32 "14gx1vr9mkr4bmjg5kamdlgykbbhrh7vif1g8fwpcij0av1hr0yg"))))
    (properties `((upstream-name . "wrGraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrmisc r-rcolorbrewer r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrGraph")
    (synopsis "Graphics in the Context of Analyzing High-Throughput Data")
    (description
     "Additional options for making graphics in the context of analyzing
high-throughput data are available here.  This includes automatic segmenting of
the current device (eg window) to accommodate multiple new plots, automatic
checking for optimal location of legends in plots, small histograms to insert as
legends, histograms re-transforming axis labels to linear when plotting
log2-transformed data, a violin-plot <doi:10.1080/00031305.1998.10480559>
function for a wide variety of input-formats, principal components analysis
(PCA) <doi:10.1080/14786440109462720> with bag-plots
<doi:10.1080/00031305.1999.10474494> to highlight and compare the center areas
for groups of samples, generic MA-plots (differential- versus average-value
plots) <doi:10.1093/nar/30.4.e15>, staggered count plots and generation of
mouse-over interactive html pages.")
    (license license:gpl3)))

(define-public r-wrestimates
  (package
    (name "r-wrestimates")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WRestimates" version))
       (sha256
        (base32 "03anhcwq9xlzj3zh7kpqm5n6znqiwvkwnd0w1b82my9rk3gp63gw"))))
    (properties `((upstream-name . "WRestimates")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WRestimates")
    (synopsis "Sample Size, Power and CI for the Win Ratio")
    (description
     "Calculates non-parametric estimates of the sample size, power and confidence
intervals for the win-ratio.  For more detail on the theory behind the
methodologies implemented see Yu, R. X. and Ganju, J. (2022)
<doi:10.1002/sim.9297>.")
    (license license:expat)))

(define-public r-wrensbookshelf
  (package
    (name "r-wrensbookshelf")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WrensBookshelf" version))
       (sha256
        (base32 "1g83i9qmlidxy55cmvx0sqqrkps9fmvj0sh7jc92v89qwx73pfr0"))))
    (properties `((upstream-name . "WrensBookshelf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/buveges/WrensBookshelf")
    (synopsis "Collection of Palettes and Some Functions to Help Use Them")
    (description
     "This package provides a collection of color palettes that were extracted from
various books on my sons(Wren) bookshelf.  Also included are a number of
functions and wrappers to utilize them, as well as to subset the palettes to
desired number/specific colors.")
    (license license:expat)))

(define-public r-wrassp
  (package
    (name "r-wrassp")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrassp" version))
       (sha256
        (base32 "05laij1bmv4vschakpnjapqjjzb70xmp5idab97l3fr9kvblqj19"))))
    (properties `((upstream-name . "wrassp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IPS-LMU/wrassp")
    (synopsis "Interface to the 'ASSP' Library")
    (description
     "This package provides a wrapper around Michel Scheffers's libassp
(<https://libassp.sourceforge.net/>).  The libassp (Advanced Speech Signal
Processor) library aims at providing functionality for handling speech signal
files in most common audio formats and for performing analyses common in
phonetic science/speech science.  This includes the calculation of formants,
fundamental frequency, root mean square, auto correlation, a variety of spectral
analyses, zero crossing rate, filtering etc.  This wrapper provides R with a
large subset of libassp's signal processing functions and provides them to the
user in a (hopefully) user-friendly manner.")
    (license license:gpl3+)))

(define-public r-wrapr
  (package
    (name "r-wrapr")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrapr" version))
       (sha256
        (base32 "1r2mqgf4wiwx83lgs20r59c3h7yynkaif4qp6lbd20y06avb1jz1"))))
    (properties `((upstream-name . "wrapr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/WinVector/wrapr")
    (synopsis "Wrap R Tools for Debugging and Parametric Programming")
    (description
     "This package provides tools for writing and debugging R code.  Provides: %.>%
dot-pipe (an S3 configurable pipe), unpack/to (R style multiple
assignment/return), @code{build_frame()'/'draw_frame()} ('data.frame example
tools), @code{qc()} (quoting concatenate), := (named map builder), @code{let()}
(converts non-standard evaluation interfaces to parametric standard evaluation
interfaces, inspired by @code{gtools::strmacro()} and @code{base::bquote()}'),
and more.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-wrappr
  (package
    (name "r-wrappr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrappr" version))
       (sha256
        (base32 "0n60var32fyk40mgk6crq565qcpif8cbgmqkqkl0a2ip1l0vrs30"))))
    (properties `((upstream-name . "wrappr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wrappr")
    (synopsis "Collection of Helper and Wrapper Functions")
    (description
     "Helper functions to easily add functionality to functions.  The package can
assign functions to have an lazy evaluation allowing you to save and update the
arguments before and after each function call.  You can set a temporary working
directory within functions and wrap console messages around other functions.")
    (license license:expat)))

(define-public r-wrappedtools
  (package
    (name "r-wrappedtools")
    (version "0.9.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrappedtools" version))
       (sha256
        (base32 "1xnm6jlbgsbidbq44j02gj2jrsrlj6ih3g05q9pix8bqyv8d6hrg"))))
    (properties `((upstream-name . "wrappedtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlist
                             r-rlang
                             r-purrr
                             r-nortest
                             r-lifecycle
                             r-knitr
                             r-kableextra
                             r-glue
                             r-ggplot2
                             r-forcats
                             r-flextable
                             r-dplyr
                             r-desctools
                             r-coin
                             r-broom
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/abusjahn/wrappedtools")
    (synopsis "Useful Wrappers Around Commonly Used Functions")
    (description
     "The main functionalities of wrappedtools are: adding backticks to variable
names; rounding to desired precision with special case for p-values; selecting
columns based on pattern and storing their position, name, and backticked name;
computing and formatting of descriptive statistics (e.g. meanÂ±SD), comparing
groups and creating publication-ready tables with descriptive statistics and
p-values; creating specialized plots for correlation matrices.  Functions were
mainly written for my own daily work or teaching, but may be of use to others as
well.")
    (license license:gpl3)))

(define-public r-wrangle
  (package
    (name "r-wrangle")
    (version "0.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wrangle" version))
       (sha256
        (base32 "04l9m3x0yj5nccqpyaxd55dzw7mk2kjyrsysn680wx98jhwj05b2"))))
    (properties `((upstream-name . "wrangle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-rlang r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=wrangle")
    (synopsis "Systematic Data Wrangling Idiom")
    (description
     "Supports systematic scrutiny, modification, and integration of data.  The
function @code{status()} counts rows that have missing values in grouping
columns (returned by @code{na()} ), have non-unique combinations of grouping
columns (returned by @code{dup()} ), and that are not locally sorted (returned
by @code{unsorted()} ).  Functions @code{enumerate()} and @code{itemize()} give
sorted unique combinations of columns, with or without occurrence counts,
respectively.  Function @code{ignore()} drops columns in x that are present in
y, and @code{informative()} drops columns in x that are entirely NA;
@code{constant()} returns values that are constant, given a key.  Data that have
defined unique combinations of grouping values behave more predictably during
merge operations.")
    (license license:gpl3)))

(define-public r-wr
  (package
    (name "r-wr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WR" version))
       (sha256
        (base32 "10813dzq3pn354g5x7hczi6aq61kmfrl8y4wc005bsxj0ipz0a06"))))
    (properties `((upstream-name . "WR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-gumbel r-cubature))
    (native-inputs (list r-knitr))
    (home-page "https://sites.google.com/view/lmaowisc/")
    (synopsis "Win Ratio Analysis of Composite Time-to-Event Outcomes")
    (description
     "This package implements various win ratio methodologies for composite endpoints
of death and non-fatal events, including the (stratified) proportional
win-fractions (PW) regression models (Mao and Wang, 2020
<doi:10.1111/biom.13382>), (stratified) two-sample tests with possibly recurrent
nonfatal event, and sample size calculation for standard win ratio test (Mao et
al., 2021 <doi:10.1111/biom.13501>).")
    (license license:gpl2+)))

(define-public r-wqtrends
  (package
    (name "r-wqtrends")
    (version "1.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wqtrends" version))
       (sha256
        (base32 "1fj5zph878i4s91v5z2gsml2a78f84ldi7cz10wlcj5ca6ljnb17"))))
    (properties `((upstream-name . "wqtrends")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-tidyr
                             r-tibble
                             r-purrr
                             r-plotly
                             r-mixmeta
                             r-mgcv
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "<https://github.com/tbep-tech/wqtrends/>")
    (synopsis "Assess Water Quality Trends with Generalized Additive Models")
    (description
     "Assess Water Quality Trends for Long-Term Monitoring Data in Estuaries using
Generalized Additive Models following Wood (2017) <doi:10.1201/9781315370279>
and Error Propagation with Mixed-Effects Meta-Analysis following Sera et al.
(2019) <doi:10.1002/sim.8362>.  Methods are available for model fitting,
assessment of fit, annual and seasonal trend tests, and visualization of
results.")
    (license license:cc0)))

(define-public r-wqspt
  (package
    (name "r-wqspt")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wqspt" version))
       (sha256
        (base32 "1myzac99m696bgddjnl84d6j72j4r4kz8qdzs11c6b0pjrzldqjn"))))
    (properties `((upstream-name . "wqspt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-rlang
                             r-reshape2
                             r-pscl
                             r-pbapply
                             r-nnet
                             r-mvtnorm
                             r-mass
                             r-gwqs
                             r-ggplot2
                             r-future-apply
                             r-future
                             r-extradistr
                             r-cowplot
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wqspt")
    (synopsis "Permutation Test for Weighted Quantile Sum Regression")
    (description
     "This package implements a permutation test method for the weighted quantile sum
(WQS) regression, building off the @code{gWQS} package (Renzetti et al.
<https://CRAN.R-project.org/package=@code{gWQS>}).  Weighted quantile sum
regression is a statistical technique to evaluate the effect of complex exposure
mixtures on an outcome (Carrico et al.  2015 <doi:10.1007/s13253-014-0180-3>).
The model features a statistical power and Type I error (i.e., false positive)
rate trade-off, as there is a machine learning step to determine the weights
that optimize the linear model fit.  This package provides an alternative method
based on a permutation test that should reliably allow for both high power and
low false positive rate when utilizing WQS regression (Day et al.  2022
<doi:10.1289/EHP10570>).")
    (license license:gpl3)))

(define-public r-wqm
  (package
    (name "r-wqm")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WQM" version))
       (sha256
        (base32 "108cpsm7m8s4irh2k737hiljsznk98i9z4iaiv35sq1626ljalcg"))))
    (properties `((upstream-name . "WQM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveletcomp r-mbc r-matrixstats r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WQM")
    (synopsis
     "Wavelet-Based Quantile Mapping for Postprocessing Numerical Weather Predictions")
    (description
     "The wavelet-based quantile mapping (WQM) technique is designed to correct biases
in spatio-temporal precipitation forecasts across multiple time scales.  The WQM
method effectively enhances forecast accuracy by generating an ensemble of
precipitation forecasts that account for uncertainties in the prediction
process.  For a comprehensive overview of the methodologies employed in this
package, please refer to Jiang, Z., and Johnson, F. (2023)
<doi:10.1029/2022EF003350>.  The package relies on two packages for continuous
wavelet transforms: @code{WaveletComp}', which can be installed automatically,
and wmtsa', which is optional and available from the CRAN archive
<https://cran.r-project.org/src/contrib/Archive/wmtsa/>.  Users need to manually
install wmtsa from this archive if they prefer to use wmtsa based decomposition.")
    (license license:gpl3+)))

(define-public r-wql
  (package
    (name "r-wql")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wql" version))
       (sha256
        (base32 "1629crl2704ycxpnkxzd4zzwvgi33w8lp2gymr6mbyc3vqlip3b5"))))
    (properties `((upstream-name . "wql")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-reshape2 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsta/wql")
    (synopsis "Exploring Water Quality Monitoring Data")
    (description
     "This package provides functions to assist in the processing and exploration of
data from environmental monitoring programs.  The package name stands for \"water
quality\" and reflects the original focus on time series data for physical and
chemical properties of water, as well as the biota.  Intended for programs that
sample approximately monthly, quarterly or annually at discrete stations, a
feature of many legacy data sets.  Most of the functions should be useful for
analysis of similar-frequency time series regardless of the subject matter.")
    (license license:gpl2)))

(define-public r-wqc
  (package
    (name "r-wqc")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wqc" version))
       (sha256
        (base32 "0145w1vn2k2fhbzfawn58cpxcwny1cha0yihn5pz4i9v2lsyh84q"))))
    (properties `((upstream-name . "wqc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveslim r-viridislite r-qcsis r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wqc")
    (synopsis "Wavelet Quantile Correlation Analysis")
    (description
     "Estimate and plot wavelet quantile correlations(Kumar and Padakandla,2022)
between two time series.  Wavelet quantile correlation is used to capture the
dependency between two time series across quantiles and different frequencies.
This method is useful in identifying potential hedges and safe-haven instruments
for investment purposes.  See Kumar and Padakandla(2022)
<doi:10.1016/j.frl.2022.102707> for further details.")
    (license license:gpl3)))

(define-public r-wpproj
  (package
    (name "r-wpproj")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WpProj" version))
       (sha256
        (base32 "07d1f9mf31nb80f45pcamvjm3dsghhfkkrqf0zy4pv9cm8rhqh0g"))))
    (properties `((upstream-name . "WpProj")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-slam
                             r-rspectra
                             r-rqpen
                             r-roi-plugin-lpsolve
                             r-roi-plugin-ecos
                             r-roi
                             r-rlang
                             r-rcppprogress
                             r-rcppeigen
                             r-rcppcgal
                             r-rcpp
                             r-quantreg
                             r-oem
                             r-matrix
                             r-magrittr
                             r-lifecycle
                             r-glmnet
                             r-foreach
                             r-dplyr
                             r-dorng
                             r-doparallel
                             r-bh
                             r-approxot))
    (home-page "https://github.com/ericdunipace/WpProj")
    (synopsis "Linear p-Wasserstein Projections")
    (description
     "This package performs Wasserstein projections from the predictive distributions
of any model into the space of predictive distributions of linear models.  We
utilize L1 penalties to also reduce the complexity of the model space.  This
package employs the methods as described in Dunipace, Eric and Lorenzo Trippa
(2020) <doi:10.48550/@code{arXiv.2012.09999>}.")
    (license (license:fsdg-compatible "GPL (== 3.0)"))))

(define-public r-wppexplorer
  (package
    (name "r-wppexplorer")
    (version "2.3-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wppExplorer" version))
       (sha256
        (base32 "1pbmjg6y543aih8mxf9njfwpm090virhgqf8w0a5yx0jdfjwmz04"))))
    (properties `((upstream-name . "wppExplorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wpp2019
                             r-shinythemes
                             r-shinyjs
                             r-shiny
                             r-reshape2
                             r-plyr
                             r-hmisc
                             r-googlevis
                             r-ggplot2
                             r-dt))
    (home-page "https://cran.r-project.org/package=wppExplorer")
    (synopsis "Explorer of World Population Prospects")
    (description
     "Explore data in the wpp2019 (or 2017, 2015, ...) package using a shiny
interface.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-wpp2019
  (package
    (name "r-wpp2019")
    (version "1.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2019" version))
       (sha256
        (base32 "12h1z082xs9l58v69nilaqhdgz5jd0c90p85szibfzhfb7vs6xl5"))))
    (properties `((upstream-name . "wpp2019")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-data-table))
    (home-page "http://population.un.org/wpp")
    (synopsis "World Population Prospects 2019")
    (description
     "This package provides data from the United Nation's World Population Prospects
2019.")
    (license (license:fsdg-compatible "file://LICENSE"))))

(define-public r-wpp2017
  (package
    (name "r-wpp2017")
    (version "1.2-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2017" version))
       (sha256
        (base32 "1w7cg31larvgaah16ch6z11jjq02i5f20hfwg63wvw5p6fyafivz"))))
    (properties `((upstream-name . "wpp2017")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-data-table))
    (home-page "http://population.un.org/wpp")
    (synopsis "World Population Prospects 2017")
    (description
     "This package provides data from the United Nation's World Population Prospects
2017.")
    (license license:gpl2+)))

(define-public r-wpp2015
  (package
    (name "r-wpp2015")
    (version "1.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2015" version))
       (sha256
        (base32 "1lpripfs331lgjlqxx3wsiha82n2lfwx4ffpjy8f9mv3zmrxylpp"))))
    (properties `((upstream-name . "wpp2015")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr))
    (home-page "http://esa.un.org/wpp")
    (synopsis "World Population Prospects 2015")
    (description
     "This package provides data from the United Nation's World Population Prospects
2015.")
    (license license:gpl2+)))

(define-public r-wpp2012
  (package
    (name "r-wpp2012")
    (version "2.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2012" version))
       (sha256
        (base32 "00283s4r36zzwn67fydrl7ldg6jhn14qkf47h0ifmsky95bd1n5k"))))
    (properties `((upstream-name . "wpp2012")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://esa.un.org/wpp")
    (synopsis "World Population Prospects 2012")
    (description
     "Data from the United Nation's World Population Prospects 2012.")
    (license license:gpl2+)))

(define-public r-wpp2010
  (package
    (name "r-wpp2010")
    (version "1.2-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2010" version))
       (sha256
        (base32 "1h87r1cn4lnx80dprvawsyzfkriscqjgr27gvv7n19wvsx8qd57k"))))
    (properties `((upstream-name . "wpp2010")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://esa.un.org/wpp")
    (synopsis "World Population Prospects 2010")
    (description
     "Data from the United Nation's World Population Prospects 2010.")
    (license license:gpl2+)))

(define-public r-wpp2008
  (package
    (name "r-wpp2008")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpp2008" version))
       (sha256
        (base32 "0gd3vjw1fpzhp3qlf1jpc24f76i0pxsjs5pb1v3k2si6df7q4msd"))))
    (properties `((upstream-name . "wpp2008")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://esa.un.org/wpp/index.htm")
    (synopsis "World Population Prospects 2008")
    (description
     "Data from the United Nation's World Population Prospects 2008.")
    (license license:gpl2+)))

(define-public r-wpkde
  (package
    (name "r-wpkde")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WPKDE" version))
       (sha256
        (base32 "1i837d16q4j0q8jzlkkar0znayhzpdlyjj63ij0cw27s7lvigpff"))))
    (properties `((upstream-name . "WPKDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-rann r-plotly))
    (home-page "https://cran.r-project.org/package=WPKDE")
    (synopsis "Weighted Piecewise Kernel Density Estimation")
    (description
     "Weighted Piecewise Kernel Density Estimation for large data.")
    (license license:gpl2+)))

(define-public r-wperm
  (package
    (name "r-wperm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wPerm" version))
       (sha256
        (base32 "0f3v0kba87wkwyii0pzvs6a8ja897aifpvwkvryl2hzxxxaml7z4"))))
    (properties `((upstream-name . "wPerm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wPerm")
    (synopsis "Permutation Tests")
    (description
     "Supplies permutation-test alternatives to traditional hypothesis-test procedures
such as two-sample tests for means, medians, and standard deviations;
correlation tests; tests for homogeneity and independence; and more.  Suitable
for general audiences, including individual and group users, introductory
statistics courses, and more advanced statistics courses that desire an
introduction to permutation tests.")
    (license license:gpl2+)))

(define-public r-wper
  (package
    (name "r-wper")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpeR" version))
       (sha256
        (base32 "0lzqx60zmr4zczl2rm8pr56jv1pmbk5hd909lnf1ksa357dnrpb4"))))
    (properties `((upstream-name . "wpeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://gr3602.github.io/wpeR/")
    (synopsis "Streamlined Analysis of Wild Pedigree Data")
    (description
     "Analyzing pedigree data of wild populations.  While primarily designed to
process outputs from the COLONY (Jones & Wang (2010)
<doi:10.1111/j.1755-0998.2009.02787.x>) pedigree reconstruction software, it can
also accommodate data from other sources.  By linking reconstructed pedigrees
with genetic sample metadata, @code{wpeR} produces spatial and temporal
visualizations as well as tabular summaries that support interpretation of
family structures and dynamics.  The main goal of the package is to provide a
solution for the analysis of complex wild pedigree data and to help the user to
gain insights into genetic relationships within wild animal populations.")
    (license license:gpl3+)))

(define-public r-wpa
  (package
    (name "r-wpa")
    (version "1.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wpa" version))
       (sha256
        (base32 "1ng9s1ppq0sdvb7m9f5zkzazrrxf5fh45bhfadnawlcga0cp8hg7"))))
    (properties `((upstream-name . "wpa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidytext
                             r-tidyselect
                             r-tidyr
                             r-scales
                             r-rmarkdown
                             r-reshape2
                             r-purrr
                             r-proxy
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
    (home-page "https://github.com/microsoft/wpa/")
    (synopsis "Tools for Analysing and Visualising Viva Insights Data")
    (description
     "Opinionated functions that enable easier and faster analysis of Viva Insights
data.  There are three main types of functions in wpa': (i) Standard functions
create a ggplot visual or a summary table based on a specific Viva Insights
metric; (2) Report Generation functions generate HTML reports on a specific
analysis area, e.g. Collaboration; (3) Other miscellaneous functions cover more
specific applications (e.g. Subject Line text mining) of Viva Insights data.
This package adheres to tidyverse principles and works well with the pipe
syntax.  wpa is built with the beginner-to-intermediate R users in mind, and is
optimised for simplicity.")
    (license license:expat)))

(define-public r-woylier
  (package
    (name "r-woylier")
    (version "0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "woylier" version))
       (sha256
        (base32 "12hn1jn5q1gnc71w7mcbxq8zkaf2y3vwy8i06s7cakpdcrs0971z"))))
    (properties `((upstream-name . "woylier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tourr r-tibble r-geozoo r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://numbats.github.io/woylier/")
    (synopsis "Alternative Tour Frame Interpolation Method")
    (description
     "This method generates a tour path by interpolating between d-D frames in p-D
using Givens rotations.  The algorithm arises from the problem of zeroing
elements of a matrix.  This interpolation method is useful for showing specific
d-D frames in the tour, as opposed to d-D planes, as done by the geodesic
interpolation.  It is useful for projection pursuit indexes which are not s
invariant.  See more details in Buj, Cook, Asimov and Hurley (2005)
<doi:10.1016/S0169-7161(04)24014-7> and Batsaikhan, Cook and Laa (2023)
<doi:10.48550/@code{arXiv.2311.08181>}.")
    (license license:expat)))

(define-public r-wowa
  (package
    (name "r-wowa")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wowa" version))
       (sha256
        (base32 "0i677bzgd9qx57x7n7qsaqpacgpap2d0n8gq1lc9hsmg13bs2v8f"))))
    (properties `((upstream-name . "wowa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=wowa")
    (synopsis "Weighted Ordered Weighted Average")
    (description
     "Introduce weights into Ordered Weighted Averages and extend bivariate means
based on n-ary tree construction.  Please refer to the following: G. Beliakov,
H. Bustince, and T. Calvo (2016, ISBN: 978-3-319-24753-3), G. Beliakov(2018)
<doi:10.1002/int.21913>, G. Beliakov, J.J. Dujmovic (2016)
<doi:10.1016/j.ins.2015.10.040>, J.J. Dujmovic and G. Beliakov (2017)
<doi:10.1002/int.21828>.")
    (license license:lgpl3)))

(define-public r-wotply
  (package
    (name "r-wotply")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WOTPLY" version))
       (sha256
        (base32 "1m0k21ywy6lgchddlaywl6rhqimjbd4npsnmx3l1w4jgnlgj9z76"))))
    (properties `((upstream-name . "WOTPLY")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sna r-network r-ggally))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WOTPLY")
    (synopsis "Plot Connectivity Between Cells from Different Time Points")
    (description
     "It shows the connections between selected clusters from the latest time point
and the clusters from all the previous time points.  The transition matrices
between time point t and t+1 are obtained from Waddington-OT analysis
<https://github.com/@code{ScialdoneLab/WOTPLY>}.")
    (license license:gpl3)))

(define-public r-wosr
  (package
    (name "r-wosr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wosr" version))
       (sha256
        (base32 "0fl9mizrjg3r7n7gslsxgaw3k2v63scqmvnv6341q8sq7018hzln"))))
    (properties `((upstream-name . "wosr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-pbapply r-jsonlite r-httr))
    (home-page "https://vt-arc.github.io/wosr/index.html")
    (synopsis "Clients to the 'Web of Science' and 'InCites' APIs")
    (description
     "R clients to the Web of Science and @code{InCites}
<https://clarivate.com/products/data-integration/> APIs, which allow you to
programmatically download publication and citation data indexed in the Web of
Science and @code{InCites} databases.")
    (license license:expat)))

(define-public r-worrrd
  (package
    (name "r-worrrd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worrrd" version))
       (sha256
        (base32 "1czzm30xwssjrhw7kqw23d2s03v9lbwa0crld9qf9q80h5zc0kxi"))))
    (properties `((upstream-name . "worrrd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-glue
                             r-ggtext
                             r-ggplot2
                             r-ggfittext
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://www.stochastic-squirrel.com/worrrd/")
    (synopsis "Generate Wordsearch and Crossword Puzzles")
    (description
     "Generate wordsearch and crossword puzzles using custom lists of words (and
clues).  Make them easy or hard, and print them to solve offline with paper and
pencil!")
    (license license:expat)))

(define-public r-worrms
  (package
    (name "r-worrms")
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worrms" version))
       (sha256
        (base32 "1bdr3x1pg4l37p5kg36za32skmwwn7hlfrnf2a3hf65347wiif9j"))))
    (properties `((upstream-name . "worrms")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-jsonlite r-data-table r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/worrms/")
    (synopsis "World Register of Marine Species (WoRMS) Client")
    (description
     "Client for World Register of Marine Species (<https://www.marinespecies.org/>).
Includes functions for each of the API methods, including searching for names by
name, date and common names, searching using external identifiers, fetching
synonyms, as well as fetching taxonomic children and taxonomic classification.")
    (license license:expat)))

(define-public r-wormtensor
  (package
    (name "r-wormtensor")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WormTensor" version))
       (sha256
        (base32 "0laaia9y3pm8kq0ajl6k1dw6aj15blb7xxhy3jn555hxs2dypwhd"))))
    (properties `((upstream-name . "WormTensor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uwot
                             r-usedist
                             r-rtsne
                             r-rtensor
                             r-ggrepel
                             r-ggplot2
                             r-factoextra
                             r-dtwclust
                             r-cowplot
                             r-clvalid
                             r-clustersim
                             r-cluster
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rikenbit/WormTensor")
    (synopsis
     "Clustering Method for Time-Series Whole-Brain Activity Data of 'C. elegans'")
    (description
     "This package provides a toolkit to detect clusters from distance matrices.  The
distance matrices are assumed to be calculated between the cells of multiple
animals ('Caenorhabditis elegans') from input time-series matrices.  Some
functions for generating distance matrices, performing clustering, evaluating
the clustering, and visualizing the results of clustering and evaluation are
available.  We're also providing the download function to retrieve the
calculated distance matrices from figshare <https://figshare.com>.")
    (license license:expat)))

(define-public r-worldmet
  (package
    (name "r-worldmet")
    (version "0.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worldmet" version))
       (sha256
        (base32 "00y46cx3wmamcqyfzvmgbbhbw4cjhdxlsbgq0m1i1ipw5klr15wz"))))
    (properties `((upstream-name . "worldmet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-leaflet
                             r-dplyr
                             r-cli))
    (home-page "https://openair-project.github.io/worldmet/")
    (synopsis
     "Import Surface Meteorological Data from NOAA Integrated Surface Database (ISD)")
    (description
     "This package provides functions to import data from more than 30,000 surface
meteorological sites around the world managed by the National Oceanic and
Atmospheric Administration (NOAA) Integrated Surface Database (ISD, see
<https://www.ncei.noaa.gov/products/land-based-station/integrated-surface-database>).")
    (license license:expat)))

(define-public r-worldmapr
  (package
    (name "r-worldmapr")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WorldMapR" version))
       (sha256
        (base32 "0rp0xh0wxzbwikvvz91mjpxlw8pp8kb1v7127b2mnbcmb03zc7d7"))))
    (properties `((upstream-name . "WorldMapR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-ggplot2 r-ggfx r-countrycode))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Luigi-Annic/WorldMapR/")
    (synopsis "Worldwide or Coordinates-Based Heat Maps")
    (description
     "Easily plot heat maps of the world, based on continuous or categorical data.
Country labels can also be added to the map.")
    (license license:gpl3)))

(define-public r-worldfootballr
  (package
    (name "r-worldfootballr")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worldfootballR" version))
       (sha256
        (base32 "1s11qa30x2an8ndjahnx3wxbwf51xdwfqs42qw14wh83m35q2zn2"))))
    (properties `((upstream-name . "worldfootballR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-withr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rvest
                             r-rstudioapi
                             r-rlang
                             r-readr
                             r-qdapregex
                             r-purrr
                             r-progress
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-glue
                             r-dplyr
                             r-curl
                             r-cli))
    (home-page "https://github.com/JaseZiv/worldfootballR")
    (synopsis "Extract and Clean World Football (Soccer) Data")
    (description
     "Allow users to obtain clean and tidy football (soccer) game, team and player
data.  Data is collected from a number of popular sites, including FBref',
transfer and valuations data from Transfermarkt'<https://www.transfermarkt.com/>
and shooting location and other match stats data from
Understat'<https://understat.com/> and fotmob'<https://www.fotmob.com/>.  It
gives users the ability to access data more efficiently, rather than having to
export data tables to files before being able to complete their analysis.")
    (license license:gpl3)))

(define-public r-worldflora
  (package
    (name "r-worldflora")
    (version "1.14-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WorldFlora" version))
       (sha256
        (base32 "0wasm5fd387kih4a6g3z378560sbw3c2n9kdnbr1y47agysma9fp"))))
    (properties `((upstream-name . "WorldFlora")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WorldFlora")
    (synopsis
     "Standardize Plant Names According to World Flora Online Taxonomic Backbone")
    (description
     "World Flora Online is an online flora of all known plants, available from
<https://www.worldfloraonline.org/>.  Methods are provided of matching a list of
plant names (scientific names, taxonomic names, botanical names) against a
static copy of the World Flora Online Taxonomic Backbone data that can be
downloaded from the World Flora Online website.  The World Flora Online
Taxonomic Backbone is an updated version of The Plant List
(<http://www.theplantlist.org/>), a working list of plant names that has become
static since 2013.")
    (license license:gpl3)))

(define-public r-worldbank
  (package
    (name "r-worldbank")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worldbank" version))
       (sha256
        (base32 "1c6pnvqk8wghk3afcs6qaryc50vm2ai8gd7yzpbx6b29s1a246jw"))))
    (properties `((upstream-name . "worldbank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr2))
    (home-page "https://m-muecke.github.io/worldbank/")
    (synopsis
     "Client for World Banks's 'Indicators' and 'Poverty and Inequality Platform (PIP)' APIs")
    (description
     "Download and search data from the World Bank Indicators API', which provides
access to nearly 16,000 time series indicators.  See
<https://datahelpdesk.worldbank.org/knowledgebase/articles/889392-about-the-indicators-api-documentation>
for further details about the API.")
    (license license:expat)))

(define-public r-workspace
  (package
    (name "r-workspace")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "workspace" version))
       (sha256
        (base32 "1ii5sb757ncbpva3fnp0c2vyn5c7hxih1py7mm7rdr8hsycgrm87"))))
    (properties `((upstream-name . "workspace")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip
                             r-yaml
                             r-tibble
                             r-stringi
                             r-rlang
                             r-dplyr
                             r-cli
                             r-arrow))
    (home-page "https://github.com/ardata-fr/workspace")
    (synopsis "Manage Collections of Datasets and Objects")
    (description
     "Create, store, read and manage structured collections of datasets and other
objects using a workspace', then bundle it into a compressed archive.  Using
open and interoperable formats makes it possible to exchange bundled data from R
to other languages such as Python or Julia'.  Multiple formats are supported
Parquet', JSON', yaml', spatial data and raster data are supported.")
    (license license:expat)))

(define-public r-workloopr
  (package
    (name "r-workloopr")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "workloopR" version))
       (sha256
        (base32 "1gynlvmqxyibql5j3db9dwvc0jsc9jqzpy3d3gp43d5lcl11mcmq"))))
    (properties `((upstream-name . "workloopR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-signal r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/workloopR/")
    (synopsis
     "Analysis of Work Loops and Other Data from Muscle Physiology Experiments")
    (description
     "This package provides functions for the import, transformation, and analysis of
data from muscle physiology experiments.  The work loop technique is used to
evaluate the mechanical work and power output of muscle.  Josephson (1985)
<doi:10.1242/jeb.114.1.493> modernized the technique for application in
comparative biomechanics.  Although our initial motivation was to provide
functions to analyze work loop experiment data, as we developed the package we
incorporated the ability to analyze data from experiments that are often
complementary to work loops.  There are currently three supported experiment
types: work loops, simple twitches, and tetanus trials.  Data can be imported
directly from .ddf files or via an object constructor function.  Through either
method, data can then be cleaned or transformed via methods typically used in
studies of muscle physiology.  Data can then be analyzed to determine the timing
and magnitude of force development and relaxation (for isometric trials) or the
magnitude of work, net power, and instantaneous power among other things (for
work loops).  Although we do not provide plotting functions, all resultant
objects are designed to be friendly to visualization via either base-R plotting
or tidyverse functions.  This package has been peer-reviewed by @code{rOpenSci}
(v.  1.1.0).")
    (license license:gpl3+)))

(define-public r-workflowr
  (package
    (name "r-workflowr")
    (version "1.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "workflowr" version))
       (sha256
        (base32 "1zkpsaj1klc0k05k5dwyp6z8mxi0araypjb3nma26sirj0cfq1hl"))))
    (properties `((upstream-name . "workflowr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-whisker
                             r-stringr
                             r-rstudioapi
                             r-rprojroot
                             r-rmarkdown
                             r-knitr
                             r-httr
                             r-httpuv
                             r-glue
                             r-git2r
                             r-getpass
                             r-fs
                             r-callr))
    (native-inputs (list r-knitr))
    (home-page "https://workflowr.github.io/workflowr/")
    (synopsis "Framework for Reproducible and Collaborative Data Science")
    (description
     "This package provides a workflow for your analysis projects by combining
literate programming ('knitr and rmarkdown') and version control ('Git', via
git2r') to generate a website containing time-stamped, versioned, and documented
results.")
    (license license:expat)))

(define-public r-wordvector
  (package
    (name "r-wordvector")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordvector" version))
       (sha256
        (base32 "1n1ihk5snr5vbq9d3218xdbymxz2acd4fn55bkzn5kv2aqax9p2b"))))
    (properties `((upstream-name . "wordvector")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rsvd
                             r-rspectra
                             r-rcpp
                             r-quanteda
                             r-proxyc
                             r-matrix
                             r-irlba))
    (home-page "https://github.com/koheiw/wordvector")
    (synopsis "Word and Document Vector Models")
    (description
     "Create dense vector representation of words and documents using quanteda'.
Currently implements Word2vec (Mikolov et al., 2013)
<doi:10.48550/@code{arXiv.1310.4546>} and Latent Semantic Analysis (Deerwester
et al., 1990)
<doi:10.1002/(SICI)1097-4571(199009)41:6%3C391::AID-ASI1%3E3.0.CO;2-9>.")
    (license license:asl2.0)))

(define-public r-wordsalad
  (package
    (name "r-wordsalad")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordsalad" version))
       (sha256
        (base32 "18kgwq6f9ymm1bmbvpmxq9gz5fx0qj64439scr21kk1cvsfl4y88"))))
    (properties `((upstream-name . "wordsalad")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-word2vec r-tibble r-text2vec r-fasttextr))
    (home-page "https://github.com/EmilHvitfeldt/wordsalad")
    (synopsis "Provide Tools to Extract and Analyze Word Vectors")
    (description
     "This package provides access to various word embedding methods (@code{GloVe},
fasttext and word2vec) to extract word vectors using a unified framework to
increase reproducibility and correctness.")
    (license license:expat)))

(define-public r-words
  (package
    (name "r-words")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "words" version))
       (sha256
        (base32 "1kd9f5470c7bdayb324m4m72v7s2kknr68qbggl5m0ww29gxs9wd"))))
    (properties `((upstream-name . "words")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=words")
    (synopsis "List of English Words from the Scrabble Dictionary")
    (description
     "List of english scrabble words as listed in the OTCWL2014
<https://www.scrabbleplayers.org/w/Official_Tournament_and_Club_Word_List_2014_Edition>.
 Words are collated from the Word Game Dictionary
<https://www.wordgamedictionary.com/word-lists/>.")
    (license license:expat)))

(define-public r-wordr
  (package
    (name "r-wordr")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WordR" version))
       (sha256
        (base32 "096b6msnl1rmikx40j7abb9rhw1vayvf9fjq6i8hrjvv38dbaa1d"))))
    (properties `((upstream-name . "WordR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-officer r-flextable r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WordR")
    (synopsis "Rendering Word Documents with R Inline Code")
    (description
     "Serves for rendering MS Word documents with R inline code and inserting tables
and plots.")
    (license license:gpl3)))

(define-public r-wordpuzzler
  (package
    (name "r-wordpuzzler")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordPuzzleR" version))
       (sha256
        (base32 "04cxniagz9y2szq2b9qhz8lfjsmbdc6d928rfayy22yigy6mwi1i"))))
    (properties `((upstream-name . "wordPuzzleR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-scales r-purrr))
    (home-page "https://github.com/zhuxr11/wordPuzzleR")
    (synopsis "Word Puzzle Game")
    (description
     "The word puzzle game requires you to find out the letters in a word within a
limited number of guesses.  In each round, if your guess hit any letters in the
word, they reveal themselves.  If all letters are revealed before your guesses
run out, you win this game; otherwise you fail.  You may run multiple games to
guess different words.")
    (license license:expat)))

(define-public r-wordpredictor
  (package
    (name "r-wordpredictor")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordpredictor" version))
       (sha256
        (base32 "0gr04si037rwnmkb2i9p4cc75lrshjfwh3chbgl86dxyxryx9mdy"))))
    (properties `((upstream-name . "wordpredictor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-snowballc
                             r-patchwork
                             r-ggplot2
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pakjiddat/word-predictor")
    (synopsis "Develop Text Prediction Models Based on N-Grams")
    (description
     "This package provides a framework for developing n-gram models for text
prediction.  It provides data cleaning, data sampling, extracting tokens from
text, model generation, model evaluation and word prediction.  For information
on how n-gram models work we referred to: \"Speech and Language Processing\"
<https://web.archive.org/web/20240919222934/https%3A%2F%2Fweb.stanford.edu%2F~jurafsky%2Fslp3%2F3.pdf>.
 For optimizing R code and using R6 classes we referred to \"Advanced R\"
<https://adv-r.hadley.nz/r6.html>.  For writing R extensions we referred to \"R
Packages\", <https://r-pkgs.org/index.html>.")
    (license license:expat)))

(define-public r-wordpools
  (package
    (name "r-wordpools")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WordPools" version))
       (sha256
        (base32 "0g3ws2ndl34f8z4nxqij8ifwqs5n3nwn9fjgjqgg1sn5apkc2zcf"))))
    (properties `((upstream-name . "WordPools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WordPools")
    (synopsis "Word Pools Used in Studies of Learning and Memory")
    (description
     "Collects several classical word pools used most often to provide lists of words
in psychological studies of learning and memory.  It provides a simple function,
@code{pickList} for selecting random samples of words within given ranges.")
    (license license:gpl2)))

(define-public r-wordpiece-data
  (package
    (name "r-wordpiece-data")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordpiece.data" version))
       (sha256
        (base32 "0x5m8vkszxpz8mf9pblzm39wpaa247336zkja560zsqgzdvcj3hx"))))
    (properties `((upstream-name . "wordpiece.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/macmillancontentscience/wordpiece.data")
    (synopsis "Data for Wordpiece-Style Tokenization")
    (description
     "This package provides data to be used by the wordpiece algorithm in order to
tokenize text into somewhat meaningful chunks.  Included vocabularies were
retrieved from <https://huggingface.co/bert-base-cased/resolve/main/vocab.txt>
and <https://huggingface.co/bert-base-uncased/resolve/main/vocab.txt> and parsed
into an R-friendly format.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-wordpiece
  (package
    (name "r-wordpiece")
    (version "2.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordpiece" version))
       (sha256
        (base32 "1xg9xsaqpz5l2f2vk1qnc7cwplnwvv6jl9wbdg0f92klhk1nanyp"))))
    (properties `((upstream-name . "wordpiece")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wordpiece-data
                             r-stringi
                             r-rlang
                             r-piecemaker
                             r-memoise
                             r-fastmatch
                             r-dlr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/macmillancontentscience/wordpiece")
    (synopsis "R Implementation of Wordpiece Tokenization")
    (description
     "Apply Wordpiece (<@code{arXiv:1609.08144>}) tokenization to input text, given an
appropriate vocabulary.  The BERT (<@code{arXiv:1810.04805>}) tokenization
conventions are used by default.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-wordofmouth
  (package
    (name "r-wordofmouth")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WordOfMouth" version))
       (sha256
        (base32 "1fqljppymxwshzrjlcqk0h68q6gfmi82hpgc5jgpk9iqxfd90561"))))
    (properties `((upstream-name . "WordOfMouth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lambertw))
    (home-page "https://cran.r-project.org/package=WordOfMouth")
    (synopsis "Estimates Economic Variables for Word-of-Mouth-Campaigns")
    (description
     "This package provides methods for estimating profit, profit-maximizing price,
demand and consumer surplus of Word-of-Mouth-campaigns on mean-field networks.")
    (license license:gpl3)))

(define-public r-wordnet
  (package
    (name "r-wordnet")
    (version "0.1-17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordnet" version))
       (sha256
        (base32 "1m08k2z7a1zf41n8gnffv6q3b3rgssw3smdwy7v9fjvngf04w7ax"))))
    (properties `((upstream-name . "wordnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava))
    (home-page "https://wordnet.princeton.edu/")
    (synopsis "WordNet Interface")
    (description
     "An interface to @code{WordNet} using the Jawbone Java API to @code{WordNet}.
@code{WordNet} (<https://wordnet.princeton.edu/>) is a large lexical database of
English.  Nouns, verbs, adjectives and adverbs are grouped into sets of
cognitive synonyms (synsets), each expressing a distinct concept.  Synsets are
interlinked by means of conceptual-semantic and lexical relations.  Please note
that @code{WordNet(R}) is a registered tradename.  Princeton University makes
@code{WordNet} available to research and commercial users free of charge
provided the terms of their license
(<https://wordnet.princeton.edu/license-and-commercial-use>) are followed, and
proper reference is made to the project using an appropriate citation
(<https://wordnet.princeton.edu/citing-wordnet>).  The @code{WordNet} database
files need to be made available separately, either via package
@code{wordnetDicts} from <https://datacube.wu.ac.at>, installing system packages
where available, or direct download from
<https://wordnetcode.princeton.edu/3.0/WNdb-3.0.tar.gz>.")
    (license license:expat)))

(define-public r-wordmap
  (package
    (name "r-wordmap")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordmap" version))
       (sha256
        (base32 "180mwy47j33c6ssw56jaay10zh10d82pmvaacacfhzca4w0x3fq1"))))
    (properties `((upstream-name . "wordmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-quanteda r-matrix r-ggrepel r-ggplot2))
    (home-page "https://github.com/koheiw/wordmap")
    (synopsis
     "Feature Extraction and Document Classification with Noisy Labels")
    (description
     "Extract features and classify documents with noisy labels given by document-meta
data or keyword matching Watanabe & Zhou (2020) <doi:10.1177/0894439320907027>.")
    (license license:expat)))

(define-public r-wordlistsanalytics
  (package
    (name "r-wordlistsanalytics")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WordListsAnalytics" version))
       (sha256
        (base32 "0ynn3wb3b226mnj6a51xb3an2vdn4v6ckaykbf52wyrnd94a6i7x"))))
    (properties `((upstream-name . "WordListsAnalytics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-reshape2
                             r-readr
                             r-lsa
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=WordListsAnalytics")
    (synopsis "Multiple Data Analysis Tools for Property Listing Tasks")
    (description
     "Application to estimate statistical values using properties provided by a group
of individuals to describe concepts using shiny'.  It estimates the underlying
distribution to generate new descriptive words Canessa et al. (2023)
<doi:10.3758/s13428-022-01811-w>, applies a new clustering model, and uses
simulations to estimate the probability that two persons describe the same words
based on their descriptions Canessa et al. (2022)
<doi:10.3758/s13428-022-02030-z>.")
    (license license:gpl3+)))

(define-public r-wordler
  (package
    (name "r-wordler")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordler" version))
       (sha256
        (base32 "0pvnijh2gvwjbd86ivky0zbi8y1x40xazsv2bdy5s2rfsscf4l88"))))
    (properties `((upstream-name . "wordler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DavidASmith/wordler")
    (synopsis "The 'WORDLE' Game")
    (description
     "The Wordle game.  Players have six attempts to guess a five-letter word.  After
each guess, the player is informed which letters in their guess are either:
anywhere in the word; in the right position in the word.  This can be used to
inform the next guess.  Can be played interactively in the console, or
programmatically.  Based on Josh Wardle's game
<https://www.powerlanguage.co.uk/wordle/>.")
    (license license:expat)))

(define-public r-wordcloud2
  (package
    (name "r-wordcloud2")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wordcloud2" version))
       (sha256
        (base32 "1a2q42bn65q4idxq0vxysyam16q6c18inxv4dqhfy0x52j8z9x6k"))))
    (properties `((upstream-name . "wordcloud2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-htmlwidgets r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lchiffon/wordcloud2")
    (synopsis "Create Word Cloud by 'htmlwidget'")
    (description
     "This package provides a fast visualization tool for creating wordcloud by using
wordcloud2.js'.  wordcloud2.js is a @code{JavaScript} library to create wordle
presentation on 2D canvas or HTML <https://timdream.org/wordcloud2.js/>.")
    (license license:gpl2)))

(define-public r-word-alignment
  (package
    (name "r-word-alignment")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "word.alignment" version))
       (sha256
        (base32 "0inlq96j4zkjncz2v66amz91l5y3b5lx49qi2jg6jbqdldw7aa02"))))
    (properties `((upstream-name . "word.alignment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-openxlsx r-data-table))
    (home-page "https://cran.r-project.org/package=word.alignment")
    (synopsis
     "Computing Word Alignment Using IBM Model 1 (and Symmetrization) for a Given Parallel Corpus and Its Evaluation")
    (description
     "For a given Sentence-Aligned Parallel Corpus, it aligns words for each sentence
pair.  It considers one-to-many and symmetrization alignments.  Moreover, it
evaluates the quality of word alignment based on this package and some other
software.  It also builds an automatic dictionary of two languages based on
given parallel corpus.")
    (license license:gpl2+)))

(define-public r-worcs
  (package
    (name "r-worcs")
    (version "0.1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "worcs" version))
       (sha256
        (base32 "1q41ijd2pl8bdyv2nf61yh07n2nm9zgqd4n3zlrq357izbj5pl3j"))))
    (properties `((upstream-name . "worcs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-xfun
                             r-usethis
                             r-tinytex
                             r-rticles
                             r-rmarkdown
                             r-rlang
                             r-renv
                             r-ranger
                             r-prereg
                             r-gh
                             r-gert
                             r-digest
                             r-credentials
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cjvanlissa/worcs")
    (synopsis "Workflow for Open Reproducible Code in Science")
    (description
     "Create reproducible and transparent research projects in R'.  This package is
based on the Workflow for Open Reproducible Code in Science (WORCS), a
step-by-step procedure based on best practices for Open Science.  It includes an
RStudio project template, several convenience functions, and all dependencies
required to make your project reproducible and transparent.  WORCS is explained
in the tutorial paper by Van Lissa, Brandmaier, Brinkman, Lamprecht, Struiksma,
& Vreede (2021). <doi:10.3233/DS-210031>.")
    (license license:gpl3+)))

(define-public r-wooldridge
  (package
    (name "r-wooldridge")
    (version "1.4-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wooldridge" version))
       (sha256
        (base32 "0ga4b754l3w6hs1ffyk2zljxzjbwzny03zlph4p4836lhk9m4q1b"))))
    (properties `((upstream-name . "wooldridge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://justinmshea.github.io/wooldridge/")
    (synopsis
     "115 Data Sets from \"Introductory Econometrics: A Modern Approach, 7e\" by Jeffrey M. Wooldridge")
    (description
     "Students learning both econometrics and R may find the introduction to both
challenging.  The wooldridge data package aims to lighten the task by
efficiently loading any data set found in the text with a single command.  Data
sets have been compressed to a fraction of their original size.  Documentation
files contain page numbers, the original source, time of publication, and notes
from the author suggesting avenues for further analysis and research.  If one
needs an introduction to R model syntax, a vignette contains solutions to
examples from chapters of the text.  Data sets are from the 7th edition
(Wooldridge 2020, ISBN-13 978-1-337-55886-0), and are backwards compatible with
all previous versions of the text.")
    (license license:gpl3)))

(define-public r-woodvaluationde
  (package
    (name "r-woodvaluationde")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "woodValuationDE" version))
       (sha256
        (base32 "0lm6br7nnycng2lidkgg41li58q3pgsh85hi6b1mj2r6vkbnk3rx"))))
    (properties `((upstream-name . "woodValuationDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (home-page
     "https://github.com/Forest-Economics-Goettingen/woodValuationDE")
    (synopsis "Wood Valuation Germany")
    (description
     "Monetary valuation of wood in German forests (stumpage values), including
estimations of harvest quantities, wood revenues, and harvest costs.  The
functions are sensitive to tree species, mean diameter of the harvested trees,
stand quality, and logging method.  The functions include estimations for the
consequences of disturbances on revenues and costs.  The underlying assortment
tables are taken from Offer and Staupendahl (2018) with corresponding functions
for salable and skidded volume derived in Fuchs et al. (2023).  Wood revenue and
harvest cost functions were taken from v.  Bodelschwingh (2018).  The
consequences of disturbances refer to Dieter (2001), Moellmann and Moehring
(2017), and Fuchs et al. (2022a, 2022b).  For the full references see
documentation of the functions, package README, and Fuchs et al. (2023).  Apart
from Dieter (2001) and Moellmann and Moehring (2017), all functions and factors
are based on data from @code{HessenForst}, the forest administration of the
Federal State of Hesse in Germany.")
    (license license:expat)))

(define-public r-woodsimulatr
  (package
    (name "r-woodsimulatr")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WoodSimulatR" version))
       (sha256
        (base32 "1ddpygg7vdc2wls8j2mf920h419ij680jymdbpw967nv0cj4m8fs"))))
    (properties `((upstream-name . "WoodSimulatR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WoodSimulatR")
    (synopsis "Generate Simulated Sawn Timber Strength Grading Data")
    (description
     "This package provides tools for generating simulated sawn timber strength
grading data with a main focus on statistical simulation based on covariance
matrices.  Simulation data for Norway spruce sawn timber from Austria and
reference values of means and standard deviations of grade determining
properties from literature for a number of European countries are provided, as
well.")
    (license license:expat)))

(define-public r-woodburymatrix
  (package
    (name "r-woodburymatrix")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WoodburyMatrix" version))
       (sha256
        (base32 "1bfm778pm94l7n4nikvdxndxa9d87hpml1cxqyhpph5bczsidy9d"))))
    (properties `((upstream-name . "WoodburyMatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mbertolacci/WoodburyMatrix")
    (synopsis "Fast Matrix Operations via the Woodbury Matrix Identity")
    (description
     "This package provides a hierarchy of classes and methods for manipulating
matrices formed implicitly from the sums of the inverses of other matrices, a
situation commonly encountered in spatial statistics and related fields.
Enables easy use of the Woodbury matrix identity and the matrix determinant
lemma to allow computation (e.g., solving linear systems) without having to form
the actual matrix.  More information on the underlying linear algebra can be
found in Harville, D. A. (1997) <doi:10.1007/b98818>.")
    (license license:expat)))

(define-public r-womblr
  (package
    (name "r-womblr")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "womblR" version))
       (sha256
        (base32 "1dl0737msnaiy20rg9zs41j46q3yrf6pjf0agz3hynr1i8rxvb5z"))))
    (properties `((upstream-name . "womblR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mvtnorm r-msm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=womblR")
    (synopsis "Spatiotemporal Boundary Detection Model for Areal Unit Data")
    (description
     "This package implements a spatiotemporal boundary detection model with a
dissimilarity metric for areal data with inference in a Bayesian setting using
Markov chain Monte Carlo (MCMC).  The response variable can be modeled as
Gaussian (no nugget), probit or Tobit link and spatial correlation is introduced
at each time point through a conditional autoregressive (CAR) prior.  Temporal
correlation is introduced through a hierarchical structure and can be specified
as exponential or first-order autoregressive.  Full details of the package can
be found in the accompanying vignette.  Furthermore, the details of the package
can be found in \"Diagnosing Glaucoma Progression with Visual Field Data Using a
Spatiotemporal Boundary Detection Method\", by Berchuck et al (2019)
<doi:10.1080/01621459.2018.1537911>.")
    (license license:gpl2+)))

(define-public r-woebinning
  (package
    (name "r-woebinning")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "woeBinning" version))
       (sha256
        (base32 "0x890h5fh59n54587adyzphr956fkg3px8i7c378aq1fs7k35gxs"))))
    (properties `((upstream-name . "woeBinning")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=woeBinning")
    (synopsis
     "Supervised Weight of Evidence Binning of Numeric Variables and Factors")
    (description
     "This package implements an automated binning of numeric variables and factors
with respect to a dichotomous target variable.  Two approaches are provided: An
implementation of fine and coarse classing that merges granular classes and
levels step by step.  And a tree-like approach that iteratively segments the
initial bins via binary splits.  Both procedures merge, respectively split, bins
based on similar weight of evidence (WOE) values and stop via an information
value (IV) based criteria.  The package can be used with single variables or an
entire data frame.  It provides flexible tools for exploring different binning
solutions and for deploying them to (new) data.")
    (license license:gpl2+)))

(define-public r-woe
  (package
    (name "r-woe")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "woe" version))
       (sha256
        (base32 "15mvcmwnrqxpzn054lq85vyzq5rgxkiwbd40gnn4s3ny1xdrwgsm"))))
    (properties `((upstream-name . "woe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=woe")
    (synopsis "Computes Weight of Evidence and Information Values")
    (description
     "Shows the relationship between an independent and dependent variable through
Weight of Evidence and Information Value.")
    (license license:gpl2)))

(define-public r-wodds
  (package
    (name "r-wodds")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wodds" version))
       (sha256
        (base32 "00rk7wmz0rknh4v9p0r6syi1c5dch7wkq7cz9zg6n8d72sia4azv"))))
    (properties `((upstream-name . "wodds")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-purrr r-magrittr r-glue r-dplyr))
    (home-page "https://github.com/alexhallam/wodds")
    (synopsis "Calculates Whisker Odds")
    (description
     "Descriptive statistics for large data tend to be low resolution on the tails.
Whisker Odds generate a table of descriptive statistics for large data.  This is
the same as letter-values, but with an alternative naming of depths which allow
for depths beyond 26.  For a reference to letter-values see Heike Hofmann and
Hadley Wickham and Karen Kafadar (2017) <doi:10.1080/10618600.2017.1305277>.")
    (license license:expat)))

(define-public r-woakmedoids
  (package
    (name "r-woakmedoids")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WOAkMedoids" version))
       (sha256
        (base32 "0hh5dkjzqxwkzx5d28cywr9q5bdk3a44md57irj3gp6bd00rv0p6"))))
    (properties `((upstream-name . "WOAkMedoids")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-proxy r-dtwclust r-cluster))
    (home-page "https://cran.r-project.org/package=WOAkMedoids")
    (synopsis "Whale Optimization Algorithm for K-Medoids Clustering")
    (description
     "This package implements the Whale Optimization Algorithm(WOA) for k-medoids
clustering, providing tools for effective and efficient cluster analysis in
various data sets.  The methodology is based on \"The Whale Optimization
Algorithm\" by Mirjalili and Lewis (2016) <doi:10.1016/j.advengsoft.2016.01.008>.")
    (license license:gpl2+)))

(define-public r-wnominate
  (package
    (name "r-wnominate")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wnominate" version))
       (sha256
        (base32 "1lqz57438ikcbf2smi54qavwnw6p27qqh0ri33ijyzmcl6yakncg"))))
    (properties `((upstream-name . "wnominate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pscl))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=wnominate")
    (synopsis "Roll Call Analysis Software")
    (description
     "Estimates Poole and Rosenthal's (1985 <doi:10.2307/2111172>, 1991
<doi:10.2307/2111445>) W-NOMINATE scores from roll call votes supplied though a
rollcall object from the pscl package.")
    (license license:gpl2)))

(define-public r-wnnsel
  (package
    (name "r-wnnsel")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wNNSel" version))
       (sha256
        (base32 "19j2yz6lvkxpmjr0vv6pjc7j1c02y0hb3gay5sy1y0xk706aggb5"))))
    (properties `((upstream-name . "wNNSel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wNNSel")
    (synopsis
     "Weighted Nearest Neighbor Imputation of Missing Values using Selected Variables")
    (description
     "New tools for the imputation of missing values in high-dimensional data are
introduced using the non-parametric nearest neighbor methods.  It includes
weighted nearest neighbor imputation methods that use specific distances for
selected variables.  It includes an automatic procedure of cross validation and
does not require prespecified values of the tuning parameters.  It can be used
to impute missing values in high-dimensional data when the sample size is
smaller than the number of predictors.  For more information see Faisal and Tutz
(2017) <doi:10.1515/sagmb-2015-0098>.")
    (license license:gpl2)))

(define-public r-wnl
  (package
    (name "r-wnl")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wnl" version))
       (sha256
        (base32 "04knhnd01cyrnwjfi1a5d8mcallrp3ifwrm6l003zgvkgw33c5z4"))))
    (properties `((upstream-name . "wnl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=wnl")
    (synopsis
     "Minimization Tool for Pharmacokinetic-Pharmacodynamic Data Analysis")
    (description
     "This is a set of minimization tools (maximum likelihood estimation and least
square fitting) to solve examples in the Johan Gabrielsson and Dan Weiner's book
\"Pharmacokinetic and Pharmacodynamic Data Analysis - Concepts and Applications\"
5th ed. (ISBN:9198299107).  Examples include linear and nonlinear compartmental
model, turn-over model, single or multiple dosing bolus/infusion/oral models,
allometry, toxicokinetics, reversible metabolism, in-vitro/in-vivo
extrapolation, enterohepatic circulation, metabolite modeling, Emax model,
inhibitory model, tolerance model, oscillating response model, enantiomer
interaction model, effect compartment model, drug-drug interaction model,
receptor occupancy model, and rebound phenomena model.")
    (license license:gpl3)))

(define-public r-wmwssp
  (package
    (name "r-wmwssp")
    (version "0.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WMWssp" version))
       (sha256
        (base32 "1himh43a3s7zgw971cnmzx8gmxvgm3irjmzs0cfq0qxld06cpria"))))
    (properties `((upstream-name . "WMWssp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/happma/WMWssp")
    (synopsis "Wilcoxon-Mann-Whitney Sample Size Planning")
    (description
     "Calculates the minimal sample size for the Wilcoxon-Mann-Whitney test that is
needed for a given power and two sided type I error rate.  The method works for
metric data with and without ties, count data, ordered categorical data, and
even dichotomous data.  But data is needed for the reference group to generate
synthetic data for the treatment group based on a relevant effect.  See Happ et
al. (2019, <doi:10.1002/sim.7983>) for details.")
    (license license:gpl3)))

(define-public r-wmwpow
  (package
    (name "r-wmwpow")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wmwpow" version))
       (sha256
        (base32 "03rd75r4wih1w7srhnwqxjkirisb43y1sd2f1wzixqj8lq0dmb25"))))
    (properties `((upstream-name . "wmwpow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-smoothmest r-mass r-lamw))
    (home-page "https://cran.r-project.org/package=wmwpow")
    (synopsis
     "Precise and Accurate Power of the Wilcoxon-Mann-Whitney Rank-Sum Test for a Continuous Variable")
    (description
     "Power calculator for the two-sample Wilcoxon-Mann-Whitney rank-sum test for a
continuous outcome (Mollan, Trumble, Reifeis et.  al., Mar.  2020)
<doi:10.1080/10543406.2020.1730866> <@code{arXiv:1901.04597>}, (Mann and Whitney
1947) <doi:10.1214/aoms/1177730491>, (Shieh, Jan, and Randles 2006)
<doi:10.1080/10485250500473099>.")
    (license license:gpl3)))

(define-public r-wmwm
  (package
    (name "r-wmwm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wmwm" version))
       (sha256
        (base32 "0dhh36wzcjg4c3yrg2qgb6kj7p8fpadvfwiach04dlqmbzjj2knw"))))
    (properties `((upstream-name . "wmwm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wmwm")
    (synopsis "Performs Wilcoxon-Mann-Whitney Test with Missing Data")
    (description
     "This package performs Wilcoxon-Mann-Whitney test in the presence of missing data
with controlled Type I error regardless of the values of missing data.")
    (license license:expat)))

(define-public r-wmwauc
  (package
    (name "r-wmwauc")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wmwAUC" version))
       (sha256
        (base32 "1hvhxxnr4f75yfa6dnzbcxcv74nkq3lcfwwvaan1j6046jb15s5h"))))
    (properties `((upstream-name . "wmwAUC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/grendar/wmwAUC")
    (synopsis "Wilcoxon-Mann-Whitney Test of No Group Discrimination")
    (description
     "This package provides inference for the Wilcoxon-Mann-Whitney test under the
null hypothesis H0: AUC = 0.5 for continuous, discrete or mixed random
variables.  Traditional implementations test H0: F = G, which is inappropriately
broad and leads to erroneous inferences.  Methods are described in M. Grendar
(2025) \"Wilcoxon-Mann-Whitney Test of No Group Discrimination\"
<doi:10.48550/@code{arXiv.2511.20308>}.")
    (license license:expat)))

(define-public r-wmm
  (package
    (name "r-wmm")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wmm" version))
       (sha256
        (base32 "0qy4cp4d8nlcqlcs4mqjv1f1kf1yh9y2wvh1ak6f049qlj7yfwfb"))))
    (properties `((upstream-name . "wmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/wfrierson/wmm")
    (synopsis "World Magnetic Model")
    (description
     "Calculate magnetic field at a given location and time according to the World
Magnetic Model (WMM).  Both the main field and secular variation components are
returned.  This functionality is useful for physicists and geophysicists who
need orthogonal components from WMM. Currently, this package supports annualized
time inputs between 2000 and 2025.  If desired, users can specify which WMM
version to use, e.g., the original WMM2015 release or the recent out-of-cycle
WMM2015 release.  Methods used to implement WMM, including the Gauss
coefficients for each release, are described in the following publications:
Chulliat et al (2020) <doi:10.25923/ytk1-yx35>, Chulliat et al (2019)
<doi:10.25921/xhr3-0t19>, Chulliat et al (2015) <doi:10.7289/V5TB14V7>, Maus et
al (2010)
<https://www.ngdc.noaa.gov/geomag/WMM/data/WMMReports/WMM2010_Report.pdf>,
@code{McLean} et al (2004)
<https://www.ngdc.noaa.gov/geomag/WMM/data/WMMReports/TRWMM_2005.pdf>, and
Macmillian et al (2000)
<https://www.ngdc.noaa.gov/geomag/WMM/data/WMMReports/wmm2000.pdf>.")
    (license license:expat)))

(define-public r-wmap
  (package
    (name "r-wmap")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WMAP" version))
       (sha256
        (base32 "1j0fkxar850s4sgjz1hjlljanp2y1dayjpr2kn9r7n0zdnb2z7px"))))
    (properties `((upstream-name . "WMAP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-randomforest
                             r-pkgcond
                             r-ggplot2
                             r-forcats
                             r-caret))
    (home-page "https://cran.r-project.org/package=WMAP")
    (synopsis "Weighted Meta-Analysis with Pseudo-Populations")
    (description
     "Implementation of integrative weighting approaches for multiple observational
studies and causal inferences.  The package features three weighting approaches,
each representing a special case of the unified weighting framework, introduced
by Guha and Li (2024) <doi:10.1093/biomtc/ujae070>, which includes an extension
of inverse probability weights for data integration settings.")
    (license license:gpl3)))

(define-public r-wlreg
  (package
    (name "r-wlreg")
    (version "1.0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WLreg" version))
       (sha256
        (base32 "1j9ffilg61a4pxk26rwmpwrigm63lnnd4h0k8ivqk6flxal41jqb"))))
    (properties `((upstream-name . "WLreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-inline))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=WLreg")
    (synopsis "Regression Analysis Based on Win Loss Endpoints")
    (description
     "Use various regression models for the analysis of win loss endpoints adjusting
for non-binary and multivariate covariates.")
    (license license:gpl2+)))

(define-public r-wlogit
  (package
    (name "r-wlogit")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WLogit" version))
       (sha256
        (base32 "06mhc6n9mszqrj9hi61z5yfyny5aqsvv11a5n7l0wwhpirgi3i8m"))))
    (properties `((upstream-name . "WLogit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-matrix
                             r-mass
                             r-glmnet
                             r-ggplot2
                             r-genlasso
                             r-cvcovest
                             r-corpcor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WLogit")
    (synopsis
     "Variable Selection in High-Dimensional Logistic Regression Models using a Whitening Approach")
    (description
     "It proposes a novel variable selection approach in classification problem that
takes into account the correlations that may exist between the predictors of the
design matrix in a high-dimensional logistic model.  Our approach consists in
rewriting the initial high-dimensional logistic model to remove the correlation
between the predictors and in applying the generalized Lasso criterion.")
    (license license:gpl2)))

(define-public r-wktmo
  (package
    (name "r-wktmo")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wktmo" version))
       (sha256
        (base32 "05pjyk0xsdazbi1x7xfmg097ybybd60zmzzm7sch1ikp05hzn0wb"))))
    (properties `((upstream-name . "wktmo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wktmo")
    (synopsis "Converting Weekly Data to Monthly Data")
    (description
     "Converts weekly data to monthly data.  Users can use three types of week
formats: ISO week, epidemiology week (epi week) and calendar date.")
    (license license:gpl2)))

(define-public r-wkb
  (package
    (name "r-wkb")
    (version "0.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wkb" version))
       (sha256
        (base32 "0mah538345npkb06bcj18mb6qnnx8nn7bdqmvqqpbawallh546a9"))))
    (properties `((upstream-name . "wkb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp))
    (home-page "https://cran.r-project.org/package=wkb")
    (synopsis "Convert Between Spatial Objects and Well-Known Binary Geometry")
    (description
     "Utility functions to convert between the Spatial classes specified by the
package sp', and the well-known binary (WKB) representation for geometry
specified by the Open Geospatial Consortium'.  Supports Spatial objects of class
@code{SpatialPoints}', @code{SpatialPointsDataFrame}', @code{SpatialLines}',
@code{SpatialLinesDataFrame}', @code{SpatialPolygons}', and
@code{SpatialPolygonsDataFrame}'.  Supports WKB geometry types Point',
@code{LineString}', Polygon', @code{MultiPoint}', @code{MultiLineString}', and
@code{MultiPolygon}'.  Includes extensions to enable creation of maps with TIBCO
Spotfire'.")
    (license license:bsd-3)))

(define-public r-wizardry
  (package
    (name "r-wizardry")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wizaRdry" version))
       (sha256
        (base32 "081hwswpic50y2lbqvqpcxxwk46k5qa0jasm1n5kfh1kspap8w23"))))
    (properties `((upstream-name . "wizaRdry")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat
                             r-stringdist
                             r-rstudioapi
                             r-rmariadb
                             r-rlang
                             r-redcapr
                             r-r6
                             r-qualtrics
                             r-openxlsx2
                             r-openxlsx
                             r-odbc
                             r-mongolite
                             r-lubridate
                             r-knitr
                             r-jsonlite
                             r-httr
                             r-haven
                             r-future-apply
                             r-future
                             r-dplyr
                             r-dbi
                             r-config
                             r-cli
                             r-beepr))
    (home-page "https://github.com/belieflab/wizaRdry")
    (synopsis
     "Magical Framework for Collaborative & Reproducible Data Analysis")
    (description
     "This package provides a comprehensive data analysis framework for NIH-funded
research that streamlines workflows for both data cleaning and preparing and
modifying NIH Data Archive ('NDA') data structures and submission templates.
Provides unified access to multiple data sources ('REDCap', @code{MongoDB}',
Qualtrics', SQL', ORACLE') through interfaces to their APIs, with specialized
functions for data cleaning, filtering, merging, and parsing.  Features
automatic validation, field harmonization, and memory-aware processing to
enhance reproducibility in multi-site collaborative research as described in
Mittal et al. (2021) <doi:10.20900/jpbs.20210011>.")
    (license license:expat)))

(define-public r-wither
  (package
    (name "r-wither")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wither" version))
       (sha256
        (base32 "0m4hz06y2dlgnr91nq7jf70fgdl9l6z6b7cf1nxcbc1q0a6rzxv0"))))
    (properties `((upstream-name . "wither")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr r-here r-fs))
    (home-page "https://github.com/torbjorn/wither")
    (synopsis "Temporarily Change Project Root")
    (description
     "Lets you temporarily execute an expression or a local block with a different
@code{here()} root in the here package.  This is useful for sourcing code in
other projects which expect the root directory of @code{here()} to be the
project directory of those projects.  This may be the case with git submodules
for example.")
    (license license:expat)))

(define-public r-withdots
  (package
    (name "r-withdots")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "withdots" version))
       (sha256
        (base32 "0vpbw9swyi8qf5s2nlml9pdmrzvwn4rpm4gbfsc0vikbzp29dmvi"))))
    (properties `((upstream-name . "withdots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/NikKrieger/withdots")
    (synopsis "Put ... in a Function's Argument List")
    (description
     "Adds ...  to a function's argument list so that it can tolerate non-matching
arguments.")
    (license license:expat)))

(define-public r-wishmom
  (package
    (name "r-wishmom")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wishmom" version))
       (sha256
        (base32 "1j43s6n9y757gs7q9xjps9qsy81jznh5vyij1yds8nfz1r53wg3h"))))
    (properties `((upstream-name . "wishmom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-roxygen2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wishmom")
    (synopsis
     "Compute Moments Related to Beta-Wishart and Inverse Beta-Wishart Distributions")
    (description
     "This package provides functions for computing moments and coefficients related
to the Beta-Wishart and Inverse Beta-Wishart distributions.  It includes
functions for calculating the expectation of matrix-valued functions of the
Beta-Wishart distribution, coefficient matrices C_k and H_k, expectation of
matrix-valued functions of the inverse Beta-Wishart distribution, and
coefficient matrices \\tilde{C}_k and \\tilde{H}_k.  For more details, refer
Hillier and Kan (2024)
<https://www-2.rotman.utoronto.ca/~kan/papers/wishmom.pdf>, \"On the Expectations
of Equivariant Matrix-valued Functions of Wishart and Inverse Wishart Matrices\".")
    (license license:expat)))

(define-public r-wisam
  (package
    (name "r-wisam")
    (version "0.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wISAM" version))
       (sha256
        (base32 "0c5ic98ihpzkycsj9wg0127civm4w1rmkkw6zsjp8sfn20cl8a8z"))))
    (properties `((upstream-name . "wISAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=wISAM")
    (synopsis "Weighted Inbred Strain Association Mapping")
    (description
     "In the course of a genome-wide association study, the situation often arises
that some phenotypes are known with greater precision than others.  It could be
that some individuals are known to harbor more micro-environmental variance than
others.  In the case of inbred strains of model organisms, it could be the case
that more organisms were observed from some strains than others, so the strains
with more organisms have better-estimated means.  Package @code{wISAM} handles
this situation by allowing for weighting of each observation according to
residual variance.  Specifically, the weight parameter to the function
@code{conduct_scan()} takes the precision of each observation (one over the
variance).")
    (license license:gpl3)))

(define-public r-wipf
  (package
    (name "r-wipf")
    (version "0.1.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WIPF" version))
       (sha256
        (base32 "0ax43vrlksgd001dyp7h49qhzw6p8d4685vayphxzs5d90vb11h8"))))
    (properties `((upstream-name . "WIPF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WIPF")
    (synopsis "Weighted Iterative Proportional Fitting")
    (description
     "Implementation of the weighted iterative proportional fitting (WIPF) procedure
for updating/adjusting a N-dimensional array given a weight structure and some
target marginals.  Acknowledgements: The author wish to thank Conselleria de
EducaciÃ³n, Cultura, Universidades y Empleo (grant CIAICO/2023/031), Ministerio
de Ciencia, InnovaciÃ³n y Universidades (grant PID2021-128228NB-I00) and
FundaciÃ³n Mapfre (grant ModelizaciÃ³n espacial e intra-anual de la mortalidad
en EspaÃ±a.  Una herramienta automÃ¡tica para el cÃ¡lculo de productos de vida')
for supporting this research.")
    (license license:gpl2+)))

(define-public r-wintime
  (package
    (name "r-wintime")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wintime" version))
       (sha256
        (base32 "183aw2iq3silm4s59748gwg4hcllr9kh7605zbmiax5bz1fb1dkr"))))
    (properties `((upstream-name . "wintime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://pubmed.ncbi.nlm.nih.gov/38417455/")
    (synopsis "Win Time Methods for Time-to-Event Data in Clinical Trials")
    (description
     "This package performs an analysis of time-to-event clinical trial data using
various \"win time\" methods, including ewt', ewtr', rmt', ewtp', rewtp', ewtpr',
rewtpr', max', wtr', rwtr', pwt', and rpwt'.  These methods are used to
calculate and compare treatment effects on ordered composite endpoints.  The
package handles event times, event indicators, and treatment arm indicators and
supports calculations on observed and resampled data.  Detailed explanations of
each method and usage examples are provided in \"Use of win time for ordered
composite endpoints in clinical trials,\" by Troendle et al.
(2024)<https://pubmed.ncbi.nlm.nih.gov/38417455/>.  For more information, see
the package documentation or the vignette titled \"Introduction to wintime.\".")
    (license license:expat)))

(define-public r-wins
  (package
    (name "r-wins")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WINS" version))
       (sha256
        (base32 "0j44d0qknpm95nfncwbmvqxmwzllrbw1j5zhmd2cw8fsjcgl47g3"))))
    (properties `((upstream-name . "WINS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-survival
                             r-stringr
                             r-reshape2
                             r-ggpubr
                             r-ggplot2
                             r-copula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WINS")
    (synopsis "The R WINS Package")
    (description
     "Calculate the win statistics (win ratio, net benefit and win odds) for
prioritized multiple endpoints, plot the win statistics and win proportions over
study time if at least one time-to-event endpoint is analyzed, and simulate
datasets with dependent endpoints.  The package can handle any type of outcomes
(continuous, ordinal, binary, time-to-event) and allow users to perform
stratified analysis, inverse probability of censoring weighting (IPCW) and
inverse probability of treatment weighting (IPTW) analysis.")
    (license license:gpl2+)))

(define-public r-winratio
  (package
    (name "r-winratio")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WinRatio" version))
       (sha256
        (base32 "0d064qq9zad9bdacldhicj3xhyrvp0fcqrxfj594yzra2qwgkx90"))))
    (properties `((upstream-name . "WinRatio")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse r-tidyselect r-rcpp r-magrittr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=WinRatio")
    (synopsis "Win Ratio for Prioritized Outcomes and 95% Confidence Interval")
    (description
     "Calculate the win ratio for prioritized outcomes and the 95% confidence interval
based on Bebu and Lachin (2016) <doi:10.1093/biostatistics/kxv032>.  Three type
of outcomes can be analyzed: survival \"failure-time\" events, repeated survival
\"failure-time\" events and continuous or ordinal \"non-failure time\" events that
are captured at specific time-points in the study.")
    (license license:gpl2+)))

(define-public r-winr
  (package
    (name "r-winr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "winr" version))
       (sha256
        (base32 "1iw7xmqa03zqba9qvs1hdxmig5fgj7hz1ydj8cbcm2dscz4686sr"))))
    (properties `((upstream-name . "winr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-rdpack r-dplyr))
    (home-page "https://cran.r-project.org/package=winr")
    (synopsis "Randomization-Based Covariance Adjustment of Win Statistics")
    (description
     "This package provides a multi-visit clinical trial may collect participant
responses on an ordinal scale and may utilize a stratified design, such as
randomization within centers, to assess treatment efficacy across multiple
visits.  Baseline characteristics may be strongly associated with the outcome,
and adjustment for them can improve power.  The win ratio (ignores ties) and the
win odds (accounts for ties) can be useful when analyzing these types of data
from randomized controlled trials.  This package provides straightforward
functions for adjustment of the win ratio and win odds for stratification and
baseline covariates, facilitating the comparison of test and control treatments
in multi-visit clinical trials.  For additional information concerning the
methodologies and applied examples within this package, please refer to the
following publications: 1.  Weideman, A.M.K., Kowalewski, E.K., & Koch, G.G.
(2024).  âRandomization-based covariance adjustment of win ratios and win odds
for 	randomized multi-visit studies with ordinal outcomes.â Journal of
Statistical Research, 58(1), 33â48. <doi:10.3329/jsr.v58i1.75411>.  2.
Kowalewski, E.K., Weideman, A.M.K., & Koch, G.G. (2023).  âSAS macro for
randomization-based methods for covariance and stratified adjustment 	of win
ratios and win odds for ordinal outcomes.â SESUG 2023 Proceedings, Paper
139-2023.")
    (license license:expat)))

(define-public r-winputall
  (package
    (name "r-winputall")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "winputall" version))
       (sha256
        (base32 "17jwnnzy5a38a2n9ixhs8vk8ybq2a8lhjv5hfx4dwdg73iklnmib"))))
    (properties `((upstream-name . "winputall")))
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
                             r-plm
                             r-matrixstats
                             r-matrixcalc
                             r-matrix
                             r-mass
                             r-learnbayes
                             r-ks
                             r-future-apply
                             r-future
                             r-dplyr
                             r-bh))
    (home-page "https://cran.r-project.org/package=winputall")
    (synopsis "Variable Input Allocation Among Crops")
    (description
     "Using a time-varying random parameters model developed in Koutchade et al.,
(2024) <https://hal.science/hal-04318163>, this package allows allocating
variable input costs among crops produced by farmers based on panel data
including information on input expenditure aggregated at the farm level and
acreage shares.  It also considers in fairly way the weighting data and can
allow integrating time-varying and time-constant control variables.")
    (license license:gpl3+)))

(define-public r-wingen
  (package
    (name "r-wingen")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wingen" version))
       (sha256
        (base32 "0aga1gf16a6s2vxhspic8ls1zjq1071z707qcy3qhkawvlsfsaz7"))))
    (properties `((upstream-name . "wingen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-vcfr
                             r-tidyselect
                             r-tidyr
                             r-terra
                             r-sf
                             r-rlang
                             r-raster
                             r-purrr
                             r-pegas
                             r-magrittr
                             r-lifecycle
                             r-hierfstat
                             r-gstat
                             r-ggplot2
                             r-gdistance
                             r-furrr
                             r-dplyr
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AnushaPB/wingen")
    (synopsis "Continuous Mapping of Genetic Diversity")
    (description
     "Generate continuous maps of genetic diversity using moving windows with options
for rarefaction, interpolation, and masking as described in Bishop et al. (2023)
<doi:10.1111/2041-210X.14090>.")
    (license license:expat)))

(define-public r-winfapreader
  (package
    (name "r-winfapreader")
    (version "0.1-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "winfapReader" version))
       (sha256
        (base32 "0jni53gswr4amln87c6kksrb54apdacw3mdcg0dgz2107f9l0a4g"))))
    (properties `((upstream-name . "winfapReader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://ilapros.github.io/winfapReader/")
    (synopsis "Interact with Peak Flow Data in the United Kingdom")
    (description
     "Obtain information on peak flow data from the National River Flow Archive (NRFA)
in the United Kingdom, either from the Peak Flow Dataset files
<https://nrfa.ceh.ac.uk/data/peak-flow-dataset> once these have been downloaded
to the user's computer or using the NRFA's API. These files are in a format
suitable for direct use in the WINFAP software, hence the name of the package.")
    (license license:gpl3)))

(define-public r-wineq
  (package
    (name "r-wineq")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wINEQ" version))
       (sha256
        (base32 "09iqi3z6lw5mv4d8hl19c11slvy0gfgv99rhvia637wdihgbg8j2"))))
    (properties `((upstream-name . "wINEQ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sampling r-dplyr))
    (home-page "https://cran.r-project.org/package=wINEQ")
    (synopsis "Inequality Measures for Weighted Data")
    (description
     "Computes inequality measures of a given variable taking into account weights.
Suitable for ratio, interval and ordered scale.  Includes Gini, Theil, Leti
index, Palma ratio, 20:20 ratio, Allison and Foster index, Jenkins index, Cowell
and Flechaire index, Abul Naga and Yalcin index, Apouey index, Blair and Lacy
index.  Bootstrap provides distribution of inequality measures enabling
significance tests.")
    (license license:gpl3)))

(define-public r-windsorair
  (package
    (name "r-windsorair")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "windsoraiR" version))
       (sha256
        (base32 "1smd3zw5ra1fba6mds3diadcmbw59jlvmrvfzzi4fss91wv50jql"))))
    (properties `((upstream-name . "windsoraiR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/windsor-ai/windsoraiR/")
    (synopsis "Access the 'Windsor.ai' API")
    (description
     "Collect multichannel marketing data from sources such as Google analytics,
Facebook Ads, and many others using the Windsor.ai API
<https://www.windsor.ai/api-fields/>.")
    (license license:expat)))

(define-public r-windows-pls
  (package
    (name "r-windows-pls")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "windows.pls" version))
       (sha256
        (base32 "1n8az7zsbj2xlgkws7rfnk4ihnj1lchsjvglm7qnkrmjchj8asmn"))))
    (properties `((upstream-name . "windows.pls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-stringr
                             r-readr
                             r-mdatools
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/egonzato/windows.pls")
    (synopsis "Segmentation Approaches in Chemometrics")
    (description
     "Evaluation of prediction performance of smaller regions of spectra for
Chemometrics.  Segmentation of spectra, evolving dimensions regions and sliding
windows as selection methods.  Election of the best model among those computed
based on error metrics.  Chen et al.(2017) <doi:10.1007/s00216-017-0218-9>.")
    (license license:expat)))

(define-public r-windex
  (package
    (name "r-windex")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "windex" version))
       (sha256
        (base32 "1hl5hiwf2gh38424hdya2cra18dgzj93ny98193j2bgyhkx60cnl"))))
    (properties `((upstream-name . "windex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d r-phytools r-phangorn r-geiger
                             r-ape))
    (home-page "https://cran.r-project.org/package=windex")
    (synopsis "Analysing Convergent Evolution using the Wheatsheaf Index")
    (description
     "Analysing convergent evolution using the Wheatsheaf index, described in Arbuckle
et al. (2014) <doi: 10.1111/2041-210X.12195>, and some other unrelated but
perhaps useful functions.")
    (license license:gpl2)))

(define-public r-windcurves
  (package
    (name "r-windcurves")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WindCurves" version))
       (sha256
        (base32 "1vvcp1g5a677g9zqssdkh3zdy646zdkzy75nqhy497bpcgw43q1b"))))
    (properties `((upstream-name . "WindCurves")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readbitmap))
    (native-inputs (list r-knitr))
    (home-page "https://www.neerajbokde.in/viggnette/2021-10-14-WindCurves/")
    (synopsis "Tool to Fit Wind Turbine Power Curves")
    (description
     "This package provides a tool to fit and compare the wind turbine power curves
with successful curve fitting techniques.  Facilitates to examine and compare
the performance of a user-defined power curve fitting techniques.  Also, provide
features to generate power curve discrete points from a graphical power curves.
Data on the power curves of the wind turbine from major manufacturers are
provided.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-windac
  (package
    (name "r-windac")
    (version "1.2.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "windAC" version))
       (sha256
        (base32 "077kl7j1db0g2pnr7gc91x2anbw80y5sbl4gy49rzclbhhnwjlrs"))))
    (properties `((upstream-name . "windAC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-mvtnorm))
    (home-page "https://cran.r-project.org/package=windAC")
    (synopsis "Area Correction Methods")
    (description
     "Post-construction fatality monitoring studies at wind facilities are based on
data from searches for bird and bat carcasses in plots beneath turbines.  Bird
and bat carcasses can fall outside of the search plot.  Bird and bat carcasses
from wind turbines often fall outside of the searched area.  To compensate, area
correction (AC) estimations are calculated to estimate the percentage of
fatalities that fall within the searched area versus those that fall outside of
it.  This package provides two likelihood based methods and one physics based
method (Hull and Muir (2010) <doi:10.1080/14486563.2010.9725253>, Huso and
Dalthorp (2014) <doi:10.1002/jwmg.663>) to estimate the carcass fall
distribution.  There are also functions for calculating the proportion of area
searched within one unit annuli, log logistic distribution functions, and
truncated distribution functions.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-winch
  (package
    (name "r-winch")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "winch" version))
       (sha256
        (base32 "1fnvv3w3xj6k09v82hb0p8y4n7sic469flzv8m79ildqbhdggs0k"))))
    (properties `((upstream-name . "winch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-procmaps r-lifecycle))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://r-prof.github.io/winch/")
    (synopsis "Portable Native and Joint Stack Traces")
    (description
     "Obtain the native stack trace and fuse it with R's stack trace for easier
debugging of R packages with native code.")
    (license license:gpl3)))

(define-public r-wilson
  (package
    (name "r-wilson")
    (version "2.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wilson" version))
       (sha256
        (base32 "050hi6rigs024is1ry0yymqapgqfhzpp0ghk5ya028k71k22lksx"))))
    (properties `((upstream-name . "wilson")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip
                             r-viridis
                             r-shinywidgets
                             r-shinyjs
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-rjsonio
                             r-rjson
                             r-rje
                             r-rintrojs
                             r-reshape
                             r-rcolorbrewer
                             r-r6
                             r-plyr
                             r-plotly
                             r-openssl
                             r-log4r
                             r-heatmaply
                             r-gplots
                             r-ggrepel
                             r-ggplot2
                             r-factominer
                             r-factoextra
                             r-dt
                             r-deseq2
                             r-data-table
                             r-complexheatmap
                             r-colourpicker
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/loosolab/wilson/")
    (synopsis "Web-Based Interactive Omics Visualization")
    (description
     "Tool-set of modules for creating web-based applications that use plot based
strategies to visualize and analyze multi-omics data.  This package utilizes the
shiny and plotly frameworks to provide a user friendly dashboard for interactive
plotting.")
    (license license:expat)))

(define-public r-wildpoker
  (package
    (name "r-wildpoker")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wildpoker" version))
       (sha256
        (base32 "1302ain55spz34irmq49sp9b1pvrn2nxmzmqs8m9wdk6g82h3s27"))))
    (properties `((upstream-name . "wildpoker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wildpoker")
    (synopsis "Best Hand Analysis for Poker Variants Including Wildcards")
    (description
     "This package provides insight into how the best hand for a poker game changes
based on the game dealt, players who stay in until the showdown and wildcards
added to the base game.  At this time the package does not support player
tactics, so draw poker variants are not included.")
    (license license:gpl3)))

(define-public r-wildmeta
  (package
    (name "r-wildmeta")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wildmeta" version))
       (sha256
        (base32 "1ixrajbxmlsr8xniagywlfd8knik7c93phvsdbpas0k8ai7wfv9r"))))
    (properties `((upstream-name . "wildmeta")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich r-robumeta r-metafor r-clubsandwich))
    (native-inputs (list r-knitr))
    (home-page "https://meghapsimatrix.github.io/wildmeta/index.html")
    (synopsis "Cluster Wild Bootstrapping for Meta-Analysis")
    (description
     "Conducts single coefficient tests and multiple-contrast hypothesis tests of
meta-regression models using cluster wild bootstrapping, based on methods
examined in Joshi, Pustejovsky, and Beretvas (2022) <DOI:10.1002/jrsm.1554>.")
    (license license:gpl3)))

(define-public r-wildlifedi
  (package
    (name "r-wildlifedi")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wildlifeDI" version))
       (sha256
        (base32 "0r677xa1v1h90j9nfqdqdqff4p8npw66dgdh6crf4i6g5layqplx"))))
    (properties `((upstream-name . "wildlifeDI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-units
                             r-sp
                             r-sf
                             r-move2
                             r-lwgeom
                             r-dplyr
                             r-adehabitatlt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jedalong/wildlifeDI")
    (synopsis
     "Calculate Indices of Dynamic Interaction for Wildlife Tracking Data")
    (description
     "Dynamic interaction refers to spatial-temporal associations in the movements of
two (or more) animals.  This package provides tools for calculating a suite of
indices used for quantifying dynamic interaction with wildlife telemetry data.
For more information on each of the methods employed see the references within.
The package (as of version >= 0.3) also has new tools for automating contact
analysis in large tracking datasets.  The package (as of version 1.0) uses the
move2 class of objects for working with tracking dataset.")
    (license license:gpl3)))

(define-public r-wildcard
  (package
    (name "r-wildcard")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wildcard" version))
       (sha256
        (base32 "0qkzab84z95g5f4fv3v4wisccgd7k9m3210pz4nvm1x8rfaqfjf1"))))
    (properties `((upstream-name . "wildcard")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wlandau/wildcard")
    (synopsis "Templates for Data Frames")
    (description "Generate data frames from templates.")
    (license license:gpl3+)))

(define-public r-wilcoxmed
  (package
    (name "r-wilcoxmed")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wilcoxmed" version))
       (sha256
        (base32 "0wnwxgm5g4fxdkrb6h124ngaw0s88yr2s8iqshb77vzj12kvb9m1"))))
    (properties `((upstream-name . "wilcoxmed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wilcoxmed")
    (synopsis
     "Computes Values for the 1-Sample Wilcoxon Sign Rank Test for Medians")
    (description
     "An implementation of the 1-Sample Wilcoxon Sign rank test for medians.  It
includes 2 functions, @code{W_stat()}, which computes the exact probabilities of
the Wilcoxon Sign Rank Test Statistic, W. The second function,
@code{Wilcox.m.test()} allows the user to conduct the 1-Sample Wilcoxon Sign
Rank hypothesis test for medians, this also allows the user to conduct the
hypothesis test for the normal approximation, based on the techniques of Bickel
and Doksum (1973, ISBN:013850363X).")
    (license license:gpl2)))

(define-public r-wikkitidy
  (package
    (name "r-wikkitidy")
    (version "0.1.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikkitidy" version))
       (sha256
        (base32 "0arnz67spxpxn7zaysx1wdc21p68apqyrfwg9m0kflc7r3h1iyxv"))))
    (properties `((upstream-name . "wikkitidy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-webfakes
                             r-vctrs
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-openssl
                             r-magrittr
                             r-lubridate
                             r-httr2
                             r-glue
                             r-dplyr
                             r-coro
                             r-cli))
    (home-page "https://wikihistories.github.io/wikkitidy/")
    (synopsis "Tidy Analysis of Wikipedia")
    (description
     "Access Wikipedia through the several @code{MediaWiki} APIs
(<https://www.mediawiki.org/wiki/API>), as well as through the XTools API
(<https://www.mediawiki.org/wiki/XTools/API>).  Ensure your API calls are
correct, and receive results in tidy tibbles.")
    (license license:expat)))

(define-public r-wikitools
  (package
    (name "r-wikitools")
    (version "1.2.15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikiTools" version))
       (sha256
        (base32 "0yg5s7njsimwjhh468ag95q89xjppi313s7i6hqm84b0rg0llcqd"))))
    (properties `((upstream-name . "wikiTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-netcoin r-jsonlite r-httr r-curl r-collections))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wikiTools")
    (synopsis "Tools for Wikidata and Wikipedia")
    (description
     "This package provides a set of wrappers intended to check, read and download
information from the Wikimedia sources.  It is specifically created to work with
names of celebrities, in which case their information and statistics can be
downloaded.  Additionally, it also builds links and snippets to use in
combination with the function @code{gallery()} in @code{netCoin} package.")
    (license license:gpl3)))

(define-public r-wikitaxa
  (package
    (name "r-wikitaxa")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikitaxa" version))
       (sha256
        (base32 "1z7p7dwgl8x4ambwss5dqlp4zgz52mgj0vhx2bqwizarmx9ji1xs"))))
    (properties `((upstream-name . "wikitaxa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-wikidatar
                             r-tibble
                             r-jsonlite
                             r-data-table
                             r-curl
                             r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/wikitaxa")
    (synopsis "Taxonomic Information from 'Wikipedia'")
    (description
     "Taxonomic information from Wikipedia', Wikicommons', Wikispecies', and
Wikidata'.  Functions included for getting taxonomic information from each of
the sources just listed, as well performing taxonomic search.")
    (license license:expat)))

(define-public r-wikiprofiler
  (package
    (name "r-wikiprofiler")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikiprofiler" version))
       (sha256
        (base32 "0ygfs55fcmhd78ybdf42l2746zyckzczw79y14d3cjwfysifxhfh"))))
    (properties `((upstream-name . "wikiprofiler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yulab-utils r-rsvg r-gson r-ggplotify r-ggplot2))
    (home-page "https://yulab-smu.top/contribution-knowledge-mining/")
    (synopsis "'WikiPathway' Based Data Integration and Visualization")
    (description
     "Queries online @code{WikiPathway} graphics and allows mapping user data (e.g.,
expression values) on the graph.  The package designs a grammar of graphic
syntax that using pipe operator to add graphic layer.")
    (license license:artistic2.0)))

(define-public r-wikipedir
  (package
    (name "r-wikipedir")
    (version "1.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WikipediR" version))
       (sha256
        (base32 "08mj3flildcvqdbj5y5c225ipbwfd2ivrjmlcwyg3v84ydhrbrkf"))))
    (properties `((upstream-name . "WikipediR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ironholds/WikipediR/")
    (synopsis "MediaWiki API Wrapper")
    (description
     "This package provides a wrapper for the @code{MediaWiki} API, aimed particularly
at the Wikimedia production wikis, such as Wikipedia.  It can be used to
retrieve page text, information about users or the history of pages, and
elements of the category tree.")
    (license license:expat)))

(define-public r-wikilake
  (package
    (name "r-wikilake")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikilake" version))
       (sha256
        (base32 "0niym9azy4qzcr4rriw0bfd97scx1mdpx67szinj7qsh569xb61m"))))
    (properties `((upstream-name . "wikilake")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-wikipedir
                             r-units
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-sp
                             r-selectr
                             r-rvest
                             r-maps
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jsta/wikilake")
    (synopsis "Scrape Lake Metadata Tables from Wikipedia")
    (description
     "Scrape lake metadata tables from Wikipedia <https://www.wikipedia.org/>.")
    (license license:gpl2+)))

(define-public r-wikifacts
  (package
    (name "r-wikifacts")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikifacts" version))
       (sha256
        (base32 "1fw1chha6mcrmv1f9rjg01g84bgzkgf1h76l926brjs5gsn4i414"))))
    (properties `((upstream-name . "wikifacts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-rvest r-magrittr))
    (home-page "https://cran.r-project.org/package=wikifacts")
    (synopsis "Get Facts and Data from Wikipedia and Wikidata")
    (description
     "Query Wikidata and get facts from current and historic Wikipedia main pages.")
    (license license:cc0)))

(define-public r-wikidatar
  (package
    (name "r-wikidatar")
    (version "2.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WikidataR" version))
       (sha256
        (base32 "120833b7zyq1rhmn9c8iv0j6br60af7gbn5lc4dil55qhh2lp9rx"))))
    (properties `((upstream-name . "WikidataR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wikipedir
                             r-wikidataqueryservicer
                             r-tibble
                             r-stringr
                             r-readr
                             r-progress
                             r-pbapply
                             r-jsonlite
                             r-httr
                             r-hmisc
                             r-dplyr
                             r-crayon))
    (home-page "https://github.com/TS404/WikidataR")
    (synopsis "Read-Write API Client Library for Wikidata")
    (description
     "Read from, interogate, and write to Wikidata <https://www.wikidata.org> - the
multilingual, interdisciplinary, semantic knowledgebase.  Includes functions to:
read from wikidata (single items, properties, or properties); query wikidata
(retrieving all items that match a set of criterial via Wikidata SPARQL query
service); write to Wikidata (adding new items or statements via
@code{QuickStatements}); and handle and manipulate Wikidata objects (as lists
and tibbles).  Uses the Wikidata and Quickstatements APIs.")
    (license license:expat)))

(define-public r-wikidataqueryservicer
  (package
    (name "r-wikidataqueryservicer")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WikidataQueryServiceR" version))
       (sha256
        (base32 "1bl1nbhbmss8cj9ni7plsjs996n4rwqv6h8bh1zj4whs8z4fw50f"))))
    (properties `((upstream-name . "WikidataQueryServiceR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wikipedir
                             r-rex
                             r-readr
                             r-ratelimitr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/bearloga/WikidataQueryServiceR")
    (synopsis "API Client Library for 'Wikidata Query Service'")
    (description
     "An API client for the Wikidata Query Service <https://query.wikidata.org/>.")
    (license license:expat)))

(define-public r-wikibooks
  (package
    (name "r-wikibooks")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wikibooks" version))
       (sha256
        (base32 "1ws6spwxxcnjrzcngbr6n4hqy1di7s2h8iz6a62gyw84kpl542bw"))))
    (properties `((upstream-name . "wikibooks")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://de.wikibooks.org/wiki/GNU_R")
    (synopsis "Functions and Datasets of the German WikiBook \"GNU R\"")
    (description
     "The german Wikibook \"GNU R\" introduces R to new users.  This package is a
collection of functions and datas used in the german @code{WikiBook} \"GNU R\".")
    (license license:gpl2+)))

(define-public r-wig
  (package
    (name "r-wig")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wig" version))
       (sha256
        (base32 "0gj8sxd5903h0rizd260ffskarywkvf87ck4ixf8gb1z1vgqf8i4"))))
    (properties `((upstream-name . "wig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-stringr r-magrittr r-dplyr))
    (home-page "https://github.com/ramiromagno/wig")
    (synopsis "Import WIG Data into R in Long Format")
    (description "Import WIG data into R in long format.")
    (license license:expat)))

(define-public r-wienr
  (package
    (name "r-wienr")
    (version "0.3-15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WienR" version))
       (sha256
        (base32 "00a5d287h78j7ccfarzc2l6i76shw5akzh4ggn6mb183b67nf9k8"))))
    (properties `((upstream-name . "WienR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WienR")
    (synopsis
     "Derivatives of the First-Passage Time Density and Cumulative Distribution Function, and Random Sampling from the (Truncated) First-Passage Time Distribution")
    (description
     "First, we provide functions to calculate the partial derivative of the
first-passage time diffusion probability density function (PDF) and cumulative
distribution function (CDF)	with respect to the first-passage time t (only for
PDF), the upper barrier a, the drift rate v, the relative starting point w, the
non-decision time t0, the inter-trial variability of the drift rate sv, the
inter-trial variability of the rel.  starting point sw, and the inter-trial
variability of the non-decision time st0.  In addition the PDF and CDF
themselves are also provided.  Most calculations are done on the logarithmic
scale to make it more stable.  Since the PDF, CDF, and their derivatives are
represented as infinite series, we give the user the option to control the
approximation errors with the argument precision'.  For the numerical
integration we used the C library cubature by Johnson, S. G. (2005-2013)
<https://github.com/stevengj/cubature>.  Numerical integration is required
whenever sv, sw, and/or st0 is not zero.  Note that numerical integration
reduces speed of the computation and the precision cannot be guaranteed anymore.
 Therefore, whenever numerical integration is used an estimate of the
approximation error is provided in the output list.  Note: The large number of
contributors (ctb) is due to copying a lot of C/C++ code chunks from the GNU
Scientific Library (GSL).  Second, we provide methods to sample from the
first-passage time distribution with or without user-defined truncation from
above.  The first method is a new adaptive rejection sampler building on the
works of Gilks and Wild (1992; <doi:10.2307/2347565>) and Hartmann and Klauer
(in press).  The second method is a rejection sampler provided by Drugowitsch
(2016; <doi:10.1038/srep20490>).  The third method is an inverse transformation
sampler.  The fourth method is a \"pseudo\" adaptive rejection sampler that builds
on the first method.  For more details see the corresponding help files.")
    (license license:gpl2+)))

(define-public r-widyr
  (package
    (name "r-widyr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "widyr" version))
       (sha256
        (base32 "05300hslrfpsqaxzzbmxgl2s2dz3wldpmnxh9hzgy97xkdc0c6fn"))))
    (properties `((upstream-name . "widyr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidytext
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-reshape2
                             r-purrr
                             r-matrix
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/juliasilge/widyr")
    (synopsis "Widen, Process, then Re-Tidy Data")
    (description
     "Encapsulates the pattern of untidying data into a wide matrix, performing some
processing, then turning it back into a tidy form.  This is useful for several
operations such as co-occurrence counts, correlations, or clustering that are
mathematically convenient on wide matrices.")
    (license license:expat)))

(define-public r-widgetframe
  (package
    (name "r-widgetframe")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "widgetframe" version))
       (sha256
        (base32 "0j0d73m72nzfc1wyrgsqr99ldx72adis6pd57mpim55hz0n9l224"))))
    (properties `((upstream-name . "widgetframe")))
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
    (propagated-inputs (list r-purrr r-magrittr r-htmlwidgets r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/bhaskarvk/widgetframe")
    (synopsis "'Htmlwidgets' in Responsive 'iframes'")
    (description
     "This package provides two functions @code{frameableWidget()}', and
@code{frameWidget()}'.  The @code{frameableWidget()} is used to add extra code
to a htmlwidget which allows is to be rendered correctly inside a responsive
iframe'.  The @code{frameWidget()} is a htmlwidget which displays content of
another htmlwidget inside a responsive iframe'.  These functions allow for
easier embedding of htmlwidgets in content management systems such as
wordpress', blogger etc.  They also allow for separation of widget content from
main HTML content where CSS of the main HTML could interfere with the widget.")
    (license license:expat)))

(define-public r-widerhino
  (package
    (name "r-widerhino")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wideRhino" version))
       (sha256
        (base32 "016w9p2apsyz75qq96rq24mvxj435crsijcj4m5rr45mnnb1hd50"))))
    (properties `((upstream-name . "wideRhino")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass r-ggplot2 r-geigen r-dplyr))
    (home-page "https://cran.r-project.org/package=wideRhino")
    (synopsis
     "High-Dimensional Methods via Generalised Singular Decomposition")
    (description
     "Construct a Canonical Variate Analysis Biplot via the Generalised Singular Value
Decomposition, for cases when the number of samples is less than the number of
variables.  For more information on biplots, see Gower JC, Lubbe SG, Le Roux NJ
(2011) <doi:10.1002/9780470973196> and for more information on the generalised
singular value decomposition, see Edelman A, Wang Y (2020)
<doi:10.1137/18M1234412>.")
    (license license:expat)))

(define-public r-widals
  (package
    (name "r-widals")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "widals" version))
       (sha256
        (base32 "0lwc5lkk45rp3fvmf551sijmjnnwg7n5cni6bfyr1jjn9hp2j3bw"))))
    (properties `((upstream-name . "widals")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snowfall))
    (home-page "https://cran.r-project.org/package=widals")
    (synopsis "Weighting by Inverse Distance with Adaptive Least Squares")
    (description
     "Computationally easy modeling, interpolation, forecasting of massive
temporal-spacial data.")
    (license license:gpl2+)))

(define-public r-whsample
  (package
    (name "r-whsample")
    (version "0.9.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whSample" version))
       (sha256
        (base32 "1dkw155xk36r9vmkqxlg2vw45nbpypivd8q5v3i5995biyib4l2k"))))
    (properties `((upstream-name . "whSample")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr
                             r-openxlsx
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-bit64))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=whSample")
    (synopsis "Utilities for Sampling")
    (description
     "Interactive tools for generating random samples.  Users select an .xlsx, .csv,
or delimited .txt file with population data and are walked through selecting the
sample type (Simple Random Sample or Stratified), the number of backups desired,
and a \"stratify_on\" value (if desired).  The sample size is determined using a
normal approximation to the hypergeometric distribution based on Nicholson
(1956) <doi:10.1214/aoms/1177728270>.  An .xlsx file is created with the sample
and key metadata for reference.  It is menu-driven and lets users pick an output
directory.  See vignettes for a detailed walk-through.")
    (license license:gpl3)))

(define-public r-whomds
  (package
    (name "r-whomds")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whomds" version))
       (sha256
        (base32 "1n7i7hh18mplqrhz554pwx4n70p1k7ryfzcgpxigzqphdny44npp"))))
    (properties `((upstream-name . "whomds")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrightmap
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-tam
                             r-stringr
                             r-srvyr
                             r-scales
                             r-rlang
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-psych
                             r-polycor
                             r-plyr
                             r-nfactors
                             r-igraph
                             r-gparotation
                             r-ggraph
                             r-ggplot2
                             r-erm
                             r-dplyr
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lindsayevanslee/whomds")
    (synopsis "Calculate Results from WHO Model Disability Survey Data")
    (description
     "The Model Disability Survey (MDS)
<https://www.who.int/activities/collection-of-data-on-disability> is a World
Health Organization (WHO) general population survey instrument to assess the
distribution of disability within a country or region, grounded in the
International Classification of Functioning, Disability and Health
<https://www.who.int/standards/classifications/international-classification-of-functioning-disability-and-health>.
 This package provides fit-for-purpose functions for calculating and presenting
the results from this survey, as used by the WHO. The package primarily provides
functions for implementing Rasch Analysis (see Andrich (2011)
<doi:10.1586/erp.11.59>) to calculate a metric scale for disability.")
    (license license:gpl3)))

(define-public r-whoa
  (package
    (name "r-whoa")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whoa" version))
       (sha256
        (base32 "1wa1s2dqwkmfa3avrgqkm6w59b6vm2xnnb77q25w187wdpjq65xx"))))
    (properties `((upstream-name . "whoa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-vcfr
                             r-tidyr
                             r-tibble
                             r-rcpp
                             r-magrittr
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=whoa")
    (synopsis "Evaluation of Genotyping Error in Genotype-by-Sequencing Data")
    (description
     "This is a small, lightweight package that lets users investigate the
distribution of genotypes in genotype-by-sequencing (GBS) data where they expect
(by and large) Hardy-Weinberg equilibrium, in order to assess rates of
genotyping errors and the dependence of those rates on read depth.  It
implements a Markov chain Monte Carlo (MCMC) sampler using Rcpp to compute a
Bayesian estimate of what we call the heterozygote miscall rate for
restriction-associated digest (RAD) sequencing data and other types of reduced
representation GBS data.  It also provides functions to generate plots of
expected and observed genotype frequencies.  Some background on these topics can
be found in a recent paper \"Recent advances in conservation and population
genomics data analysis\" by Hendricks et al. (2018) <doi:10.1111/eva.12659>, and
another paper describing the MCMC approach is in preparation with Gordon Luikart
and Thierry Gosselin.")
    (license license:cc0)))

(define-public r-whitewater
  (package
    (name "r-whitewater")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whitewater" version))
       (sha256
        (base32 "0313rsph166qwmxb96lkzc8rzc1afm6is57v9fxlm6wzwr0cv4d0"))))
    (properties `((upstream-name . "whitewater")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usethis
                             r-tidyr
                             r-stringr
                             r-readr
                             r-purrr
                             r-plyr
                             r-lubridate
                             r-httr
                             r-future
                             r-furrr
                             r-dplyr
                             r-dataretrieval
                             r-crayon
                             r-cli))
    (home-page "https://github.com/joshualerickson/whitewater/")
    (synopsis "Parallel Processing Options for Package 'dataRetrieval'")
    (description
     "This package provides methods for retrieving United States Geological Survey
(USGS) water data using sequential and parallel processing (Bengtsson, 2022
<doi:10.32614/RJ-2021-048>).  In addition to parallel methods, data wrangling
and additional statistical attributes are provided.")
    (license license:expat)))

(define-public r-whitestripe
  (package
    (name "r-whitestripe")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WhiteStripe" version))
       (sha256
        (base32 "0l87wpkfad3dzkl9ay92xdgaalq796c3jl4y2w71kv7msjs1mlfd"))))
    (properties `((upstream-name . "WhiteStripe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-oro-nifti r-neurobase r-mgcv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WhiteStripe")
    (synopsis "White Matter Normalization for Magnetic Resonance Images")
    (description
     "Shinohara (2014) <doi:10.1016/j.nicl.2014.08.008> introduced
@code{WhiteStripe}', an intensity-based normalization of T1 and T2 images, where
normal appearing white matter performs well, but requires segmentation.  This
method performs white matter mean and standard deviation estimates on data that
has been rigidly-registered to the MNI template and uses histogram-based
methods.")
    (license license:gpl3)))

(define-public r-whitestrap
  (package
    (name "r-whitestrap")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whitestrap" version))
       (sha256
        (base32 "1jcnxqxvkhyz9j6jay5834ncv5fxb9qiyyyj3b8al75mqknmn8ra"))))
    (properties `((upstream-name . "whitestrap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=whitestrap")
    (synopsis "White Test and Bootstrapped White Test for Heteroskedasticity")
    (description
     "Formal implementation of White test of heteroskedasticity and a bootstrapped
version of it, developed under the methodology of Jeong, J., Lee, K. (1999)
<https://yonsei.pure.elsevier.com/en/publications/bootstrapped-whites-test-for-heteroskedasticity-in-regression-mod>.")
    (license license:expat)))

(define-public r-whitening
  (package
    (name "r-whitening")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whitening" version))
       (sha256
        (base32 "1gc5pf4b9s8w4jh1wygyb9a9w6hi4zfd7ivlwshhzrmb43x5srsp"))))
    (properties `((upstream-name . "whitening")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-corpcor))
    (home-page "https://strimmerlab.github.io/software/whitening/")
    (synopsis "Whitening and High-Dimensional Canonical Correlation Analysis")
    (description
     "This package implements the whitening methods (ZCA, PCA, Cholesky, ZCA-cor, and
PCA-cor) discussed in Kessy, Lewin, and Strimmer (2018) \"Optimal whitening and
decorrelation\", <doi:10.1080/00031305.2016.1277159>, as well as the whitening
approach to canonical correlation analysis allowing negative canonical
correlations described in Jendoubi and Strimmer (2019) \"A whitening approach to
probabilistic canonical correlation analysis for omics data integration\",
<doi:10.1186/s12859-018-2572-9>.  The package also offers functions to simulate
random orthogonal matrices, compute (correlation) loadings and explained
variation.  It also contains four example data sets (extended UCI wine data,
TCGA LUSC data, nutrimouse data, extended pitprops data).")
    (license license:gpl3+)))

(define-public r-whitelabrt
  (package
    (name "r-whitelabrt")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WhiteLabRt" version))
       (sha256
        (base32 "05vdk83xxyphhhyfcb01kscr0gwxrd01yjwlpr4afxh6ppbgvx6v"))))
    (properties `((upstream-name . "WhiteLabRt")))
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
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WhiteLabRt")
    (synopsis
     "Novel Methods for Reproduction Number Estimation, Back-Calculation, and Forecasting")
    (description
     "This package provides a collection of functions related to novel methods for
estimating R(t), created by the lab of Professor Laura White.  Currently
implemented methods include two-step Bayesian back-calculation and now-casting
for line-list data with missing reporting delays, adapted in STAN from Li (2021)
<doi:10.1371/journal.pcbi.1009210>, and calculation of time-varying reproduction
number assuming a flux between various adjacent states, adapted into STAN from
Zhou (2021) <doi:10.1371/journal.pcbi.1010434>.")
    (license license:expat)))

(define-public r-whitechapelr
  (package
    (name "r-whitechapelr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whitechapelR" version))
       (sha256
        (base32 "0mnq5m59mw8w5g1p0h2xzlz738j397b3444km59bm5yln3j0nsbi"))))
    (properties `((upstream-name . "whitechapelR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-igraph))
    (home-page "https://cran.r-project.org/package=whitechapelR")
    (synopsis
     "Advanced Policing Techniques for the Board Game \"Letters from Whitechapel\"")
    (description
     "This package provides a set of functions to make tracking the hidden movements
of the Jack player easier.  By tracking every possible path Jack might have
traveled from the point of the initial murder including special movement such as
through alleyways and via carriages, the police can more accurately narrow the
field of their search.  Additionally, by tracking all possible hideouts from
round to round, rounds 3 and 4 should have a vastly reduced field of search.")
    (license license:expat)))

(define-public r-whitebox
  (package
    (name "r-whitebox")
    (version "2.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whitebox" version))
       (sha256
        (base32 "1zi0gi6xj1kzrr4p3vrjjzkzicmkwqlxhlqad99fi7wnk6xvni3z"))))
    (properties `((upstream-name . "whitebox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (native-inputs (list r-knitr))
    (home-page "https://whiteboxr.gishub.org/")
    (synopsis "'WhiteboxTools' R Frontend")
    (description
     "An R frontend for the @code{WhiteboxTools} library, which is an advanced
geospatial data analysis platform developed by Prof. John Lindsay at the
University of Guelph's Geomorphometry and Hydrogeomatics Research Group.
@code{WhiteboxTools} can be used to perform common geographical information
systems (GIS) analysis operations, such as cost-distance analysis, distance
buffering, and raster reclassification.  Remote sensing and image processing
tasks include image enhancement (e.g. panchromatic sharpening, contrast
adjustments), image mosaicing, numerous filtering operations, simple
classification (k-means), and common image transformations. @code{WhiteboxTools}
also contains advanced tooling for spatial hydrological analysis (e.g.
flow-accumulation, watershed delineation, stream network analysis, sink
removal), terrain analysis (e.g. common terrain indices such as slope,
curvatures, wetness index, hillshading; hypsometric analysis; multi-scale
topographic position analysis), and @code{LiDAR} data processing.  Suggested
citation: Lindsay (2016) <doi:10.1016/j.cageo.2016.07.003>.")
    (license license:expat)))

(define-public r-whirl
  (package
    (name "r-whirl")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whirl" version))
       (sha256
        (base32 "05sk9qhh3ll1hw2flzsdah88i8043yhzlwcn184fr8sny2w5x3yw"))))
    (properties `((upstream-name . "whirl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zephyr
                             r-yaml
                             r-withr
                             r-unglue
                             r-tibble
                             r-stringr
                             r-sessioninfo
                             r-rlang
                             r-reticulate
                             r-r6
                             r-quarto
                             r-purrr
                             r-knitr
                             r-kableextra
                             r-jsonlite
                             r-dplyr
                             r-cli
                             r-callr))
    (native-inputs (list r-knitr))
    (home-page "https://novonordisk-opensource.github.io/whirl/")
    (synopsis "Log Execution of Scripts")
    (description
     "Logging of scripts suitable for clinical trials using Quarto to create nice
human readable logs.  whirl enables execution of scripts in batch, while
simultaneously creating logs for the execution of each script, and providing an
overview summary log of the entire batch execution.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-whippr
  (package
    (name "r-whippr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whippr" version))
       (sha256
        (base32 "19iyj3nrar3wlim8ndbnfrfjg1y6ih7x9hx1z5g1qvn8x6slzxxw"))))
    (properties `((upstream-name . "whippr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readxl
                             r-purrr
                             r-pillar
                             r-patchwork
                             r-nlstools
                             r-minpack-lm
                             r-magrittr
                             r-lubridate
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-cli
                             r-broom))
    (home-page "https://fmmattioni.github.io/whippr/")
    (synopsis "Tools for Manipulating Gas Exchange Data")
    (description
     "Set of tools for manipulating gas exchange data from cardiopulmonary exercise
testing.")
    (license license:expat)))

(define-public r-whereport
  (package
    (name "r-whereport")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whereport" version))
       (sha256
        (base32 "1gdqzr2hrnpxbwl7cfps4m3xja8wkgwfs50i2nailybympvdnxm4"))))
    (properties `((upstream-name . "whereport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=whereport")
    (synopsis "Geolocalization of IATA Codes")
    (description
     "Retrieve geographical information for airports using their IATA or ICAO codes.")
    (license license:expat)))

(define-public r-whereami
  (package
    (name "r-whereami")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whereami" version))
       (sha256
        (base32 "0vg1vcs0b660zm08rwd6kg7vs8956pgdkjlba0z9f5ff9z69j1rr"))))
    (properties `((upstream-name . "whereami")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstudioapi r-jsonlite r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yonicd/whereami")
    (synopsis "Reliably Return the Source and Call Location of a Command")
    (description
     "Robust and reliable functions to return informative outputs to console with the
run or source location of a command.  This can be from the RScript'/R terminal
commands or RStudio console, source editor, Rmarkdown document and a Shiny
application.")
    (license license:expat)))

(define-public r-where
  (package
    (name "r-where")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "where" version))
       (sha256
        (base32 "11i91wqr64ginwzy8flv7d3z4wsnha223mjnpjljj98x7ixx3xm2"))))
    (properties `((upstream-name . "where")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/KiwiMateo/where")
    (synopsis "Vectorised Substitution and Evaluation")
    (description
     "This package provides a clean syntax for vectorising the use of Non-Standard
Evaluation (NSE), for example in ggplot2', dplyr', or data.table'.")
    (license license:expat)))

(define-public r-whep
  (package
    (name "r-whep")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whep" version))
       (sha256
        (base32 "1sm3m4hb8hj6iizg4hh8c7k5vvcza92qc723r74fqa7riavpgf1l"))))
    (properties `((upstream-name . "whep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-withr
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-pins
                             r-nanoparquet
                             r-mipfp
                             r-httr
                             r-fs
                             r-faostat
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://eduaguilera.github.io/whep/")
    (synopsis "Processing Agro-Environmental Data")
    (description
     "This package provides a set of tools for processing and analyzing data developed
in the context of the \"Who Has Eaten the Planet\" (WHEP) project, funded by the
European Research Council (ERC).  For more details on multi-regional
inputâoutput model \"Food and Agriculture Biomass InputâOutput\" (FABIO) see
Bruckner et al. (2019) <doi:10.1021/acs.est.9b03554>.")
    (license license:expat)))

(define-public r-when
  (package
    (name "r-when")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "when" version))
       (sha256
        (base32 "16xzhwvhd3zdklyvdb1lla5lykbvkq5hghfm9yz0cc6ykcnz7afr"))))
    (properties `((upstream-name . "when")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xlsx
                             r-tibble
                             r-snakecase
                             r-rlang
                             r-lubridate
                             r-hms
                             r-dplyr
                             r-dm
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://josesamos.github.io/when/")
    (synopsis "Definition of Date and Time Dimension Tables")
    (description
     "In Multidimensional Systems the When dimension allows us to express when the
analysed facts have occurred.  The purpose of this package is to provide support
for implementing this dimension in the form of date and time tables for
Relational On-Line Analytical Processing star database systems.")
    (license license:expat)))

(define-public r-whatthreewords
  (package
    (name "r-whatthreewords")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whatthreewords" version))
       (sha256
        (base32 "1shr4d1q2vallz251s6h0m2ncbx7lh0i194pm416q32ha0cz8ska"))))
    (properties `((upstream-name . "whatthreewords")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://davidasmith.github.io/whatthreewords/")
    (synopsis "Work with the 'what3words' API for Easy Location Referencing")
    (description
     "Use the what3words API <https://developer.what3words.com/public-api> to return
three words which uniquely identify every 3m x 3m square on Earth.  It is also
possible to return coordinates from any valid three words location.  Supports
multiple languages.")
    (license license:expat)))

(define-public r-whatsr
  (package
    (name "r-whatsr")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WhatsR" version))
       (sha256
        (base32 "1j1s8avr449sbm8683669n91q94nr9wqy65n05pzmywkzs7nbiis"))))
    (properties `((upstream-name . "WhatsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-tokenizers
                             r-stringi
                             r-readr
                             r-ragg
                             r-qdapregex
                             r-qdap
                             r-mgsub
                             r-lubridate
                             r-leaflet
                             r-ggwordcloud
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-checkmate
                             r-anytime))
    (home-page "https://gesiscss.github.io/WhatsR/")
    (synopsis
     "Parsing, Anonymizing and Visualizing Exported 'WhatsApp' Chat Logs")
    (description
     "Imports @code{WhatsApp} chat logs and parses them into a usable dataframe
object.  The parser works on chats exported from Android or @code{iOS} phones
and on Linux, @code{macOS} and Windows.  The parser has multiple options for
extracting smileys and emojis from the messages, extracting URLs and domains
from the messages, extracting names and types of sent media files from the
messages, extracting timestamps from messages, extracting and anonymizing author
names from messages.  Can be used to create anonymized versions of data.")
    (license license:gpl3)))

(define-public r-whatifbandit
  (package
    (name "r-whatifbandit")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whatifbandit" version))
       (sha256
        (base32 "1jskymg8n0axjli902g98s73xl07m0r416826sica3h7f9aqx45a"))))
    (properties `((upstream-name . "whatifbandit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-randomizr
                             r-purrr
                             r-lubridate
                             r-ggplot2
                             r-furrr
                             r-dplyr
                             r-data-table
                             r-bandit))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Noch05/whatifbandit")
    (synopsis "Analyzing Randomized Experiments as Multi-Arm Bandits")
    (description
     "Simulates the results of completed randomized controlled trials, as if they had
been conducted as adaptive Multi-Arm Bandit (MAB) trials instead.  Augmented
inverse probability weighted estimation (AIPW), outlined by Hadad et al. (2021)
<doi:10.1073/pnas.2014602118>, is used to robustly estimate the probability of
success for each treatment arm under the adaptive design.  Provides
customization options to simulate perfect/imperfect information,
stationary/non-stationary bandits, blocked treatment assignments, along with
control augmentation, and other hybrid strategies for assigning treatment arms.
The methods used in simulation were inspired by Offer-Westort et al. (2021)
<doi:10.1111/ajps.12597>.")
    (license license:gpl3+)))

(define-public r-whapi
  (package
    (name "r-whapi")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "whapi" version))
       (sha256
        (base32 "07656jl6nsfw9r45rp7dczbw8wqkgpjs6wy5ncahkxhi0f0ny4m0"))))
    (properties `((upstream-name . "whapi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-stringi
                             r-readr
                             r-purrr
                             r-openssl
                             r-mime
                             r-lubridate
                             r-jsonlite
                             r-httr2
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/StrategicProjects/whapi/")
    (synopsis "R Client for 'whapi.cloud'")
    (description
     "This package provides an R interface to the Whapi API <https://whapi.cloud>,
enabling sending and receiving @code{WhatsApp} messages directly from R'.
Functions include sending text, images, documents, stickers, geographic
locations, and interactive messages (buttons and lists).  Also includes webhook
parsing utilities and channel health checks.")
    (license license:expat)))

(define-public r-wh
  (package
    (name "r-wh")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WH" version))
       (sha256
        (base32 "0m0f16grkvv9z68q8niq7l75hif3ppb96gprw973zh2dcnac26br"))))
    (properties `((upstream-name . "WH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list lapack))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GuillaumeBiessy/WH")
    (synopsis "Enhanced Implementation of Whittaker-Henderson Smoothing")
    (description
     "An enhanced implementation of Whittaker-Henderson smoothing for the graduation
of one-dimensional and two-dimensional actuarial tables used to quantify Life
Insurance risks.  WH is based on the methods described in Biessy (2025)
<doi:10.48550/@code{arXiv.2306.06932>}.  Among other features, it generalizes
the original smoothing algorithm to maximum likelihood estimation, automatically
selects the smoothing parameter(s) and extrapolates beyond the range of data.")
    (license license:gpl3+)))

(define-public r-wgteff
  (package
    (name "r-wgteff")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WgtEff" version))
       (sha256
        (base32 "1z8pndv43ssgmzldwaq0088lmf1g2mkmrbmzyaismcpngn9fqxsk"))))
    (properties `((upstream-name . "WgtEff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WgtEff")
    (synopsis "Functions for Weighting Effects")
    (description
     "This package provides functions for determining the effect of data weights on
the variance of survey data: users will load a data set which has a weights
column, and the package will calculate the design effect (DEFF), weighting loss,
root design effect (DEFT), effective sample size (ESS), and/or weighted margin
of error.")
    (license license:gpl2+)))

(define-public r-wgscan
  (package
    (name "r-wgscan")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WGScan" version))
       (sha256
        (base32 "0jma6di9hbdimswdfm58568vahcjy46hbhb78idjsdz4bl9apvq3"))))
    (properties `((upstream-name . "WGScan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-skat r-seqminer r-matrix r-mass r-data-table))
    (home-page "https://cran.r-project.org/package=WGScan")
    (synopsis
     "Genome-Wide Scan Statistic Framework for Whole-Genome Sequence Data Analysis")
    (description
     "This package provides functions for the analysis of whole-genome sequencing
studies to simultaneously detect the existence, and estimate the locations of
association signals at genome-wide scale.  The functions allow genome-wide
association scan, candidate region scan and single window test.")
    (license license:gpl3)))

(define-public r-wget
  (package
    (name "r-wget")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wget" version))
       (sha256
        (base32 "0bqlcwj4bzkjr10i8kqxjjmz1lbh69l2k21dhwj56dmfvk8kfc0i"))))
    (properties `((upstream-name . "wget")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yulab-utils))
    (home-page "https://cran.r-project.org/package=wget")
    (synopsis "Setting Download Method to 'wget'")
    (description
     "This package provides function, @code{wget_set()}, to change the method (default
to wget -c') using in @code{download.file()}.  Using wget -c allowing continued
downloading, which is especially useful for slow internet connection and for
downloading large files.  User can run @code{wget_unset()} to restore previous
setting.")
    (license license:artistic2.0)))

(define-public r-wflo
  (package
    (name "r-wflo")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wflo" version))
       (sha256
        (base32 "1lxndfm58jz9q7vg1w9jzdf0m3w504hsx7xcsjj78s9sn8d4a0xq"))))
    (properties `((upstream-name . "wflo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-sf r-progress r-plotrix r-emstreer))
    (home-page "https://cran.r-project.org/package=wflo")
    (synopsis
     "Data Set and Helper Functions for Wind Farm Layout Optimization Problems")
    (description
     "This package provides a convenient data set, a set of helper functions, and a
benchmark function for economically (profit) driven wind farm layout
optimization.  This enables researchers in the field of the NP-hard
(non-deterministic polynomial-time hard) problem of wind farm layout
optimization to focus on their optimization methodology contribution and also
provides a realistic benchmark setting for comparability among contributions.
See Croonenbroeck, Carsten & Hennecke, David (2020)
<doi:10.1016/j.energy.2020.119244>.")
    (license license:gpl3)))

(define-public r-wfindr
  (package
    (name "r-wfindr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wfindr" version))
       (sha256
        (base32 "0m5xj50hqdjj4lpbgx1kp3my4njr0nz09hd63rf4qf1ls8r7zil9"))))
    (properties `((upstream-name . "wfindr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-dplyr))
    (home-page "https://github.com/idmn/wfindr")
    (synopsis "Crossword, Scrabble and Anagram Solver")
    (description
     "This package provides a large English words list and tools to find words by
patterns.  In particular, anagram finder and scrabble word finder.")
    (license license:gpl2)))

(define-public r-wfg
  (package
    (name "r-wfg")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wfg" version))
       (sha256
        (base32 "1r6wb8v42mpapjfhmkmghm9fq21c3s4zmdxy8nlh31nsja71c37d"))))
    (properties `((upstream-name . "wfg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=wfg")
    (synopsis "Weighted Fast Greedy Algorithm")
    (description
     "Implementation of Weighted Fast Greedy algorithm for community detection in
networks with mixed types of attributes.")
    (license license:gpl2+)))

(define-public r-wfe
  (package
    (name "r-wfe")
    (version "1.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wfe" version))
       (sha256
        (base32 "0lcg7hzdll1wqdwydkk96m4n715h8sjn3qwhabm245m0hqhdf7is"))))
    (properties `((upstream-name . "wfe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass r-arm))
    (home-page "https://cran.r-project.org/package=wfe")
    (synopsis
     "Weighted Linear Fixed Effects Regression Models for Causal Inference")
    (description
     "This package provides a computationally efficient way of fitting weighted linear
fixed effects estimators for causal inference with various weighting schemes.
Weighted linear fixed effects estimators can be used to estimate the average
treatment effects under different identification strategies.  This includes
stratified randomized experiments, matching and stratification for observational
studies, first differencing, and difference-in-differences.  The package
implements methods described in Imai and Kim (2017) \"When should We Use Linear
Fixed Effects Regression Models for Causal Inference with Longitudinal Data?\",
available at <https://imai.fas.harvard.edu/research/FEmatch.html>.")
    (license license:gpl2+)))

(define-public r-weyl
  (package
    (name "r-weyl")
    (version "0.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weyl" version))
       (sha256
        (base32 "1k25p3m3baq5j4yp3vgvq47b0fbjk2rhw4y7czlac1i6896xsxvr"))))
    (properties `((upstream-name . "weyl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spray r-freealg r-disordr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/weyl")
    (synopsis "The Weyl Algebra")
    (description
     "This package provides a suite of routines for Weyl algebras.  Notation follows
Coutinho (1995, ISBN 0-521-55119-6, \"A Primer of Algebraic D-Modules\").  Uses
@code{disordR} discipline (Hankin 2022 <doi:10.48550/@code{arXiv.2210.03856>}).
To cite the package in publications, use Hankin 2022
<doi:10.48550/@code{arXiv.2212.09230>}.")
    (license license:gpl2+)))

(define-public r-wex
  (package
    (name "r-wex")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wex" version))
       (sha256
        (base32 "1mrif8czhcrb58mda6c2332q464sdggx742ddksgzzm38n8pjg4x"))))
    (properties `((upstream-name . "wex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fkf))
    (home-page "https://github.com/timginker/wex")
    (synopsis
     "Compute the Exact Observation Weights for the Kalman Filter and Smoother")
    (description
     "Computes the exact observation weights for the Kalman filter and smoother, based
on the method described in Koopman and Harvey (2003)
<www.sciencedirect.com/science/article/pii/S0165188902000611>.  The package
supports in-depth exploration of state-space models, enabling researchers and
practitioners to extract meaningful insights from time series data.  This
functionality is especially valuable in dynamic factor models, where the
computed weights can be used to decompose the contributions of individual
variables to the latent factors.  See the README file for examples.")
    (license license:expat)))

(define-public r-wevid
  (package
    (name "r-wevid")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wevid" version))
       (sha256
        (base32 "1ranmqhgfkrky7r4qk563n9nlz2syn3vj85lmfajq01csadzjdpl"))))
    (properties `((upstream-name . "wevid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-reshape2 r-proc r-mclust r-ggplot2))
    (home-page
     "http://www.homepages.ed.ac.uk/pmckeigu/preprints/classify/wevidtutorial.html")
    (synopsis
     "Quantifying Performance of a Binary Classifier Through Weight of Evidence")
    (description
     "The distributions of the weight of evidence (log Bayes factor) favouring case
over noncase status in a test dataset (or test folds generated by
cross-validation) can be used to quantify the performance of a diagnostic test
(@code{McKeigue} (2019), <doi:10.1177/0962280218776989>).  The package can be
used with any test dataset on which you have observed case-control status and
have computed prior and posterior probabilities of case status using a model
learned on a training dataset.  To quantify how the predictor will behave as a
risk stratifier, the quantiles of the distributions of weight of evidence in
cases and controls can be calculated and plotted.")
    (license license:gpl3)))

(define-public r-westerlund
  (package
    (name "r-westerlund")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Westerlund" version))
       (sha256
        (base32 "1fjkqdrmw4ymhzl9c007ja9rlwksyb16glxcwm2j8pwfargr9n6r"))))
    (properties `((upstream-name . "Westerlund")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-scales r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bosco-hung/WesterlundTest")
    (synopsis "Panel Cointegration Tests Based on Westerlund (2007)")
    (description
     "This package implements a functional approximation of the four panel
cointegration tests developed by Westerlund (2007)
<doi:10.1111/j.1468-0084.2007.00477.x>.  The tests are based on structural
rather than residual dynamics and allow for heterogeneity in both the long-run
cointegrating relationship and the short-run dynamics.  The package includes
logic for automated lag and lead selection via AIC, Bartlett kernel long-run
variance estimation, and a bootstrap procedure to handle cross-sectional
dependence.  It also includes a bootstrapping distribution visualization
function for diagnostic purposes.")
    (license license:expat)))

(define-public r-wemix
  (package
    (name "r-wemix")
    (version "4.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeMix" version))
       (sha256
        (base32 "1ykg7sphnm15a3dlkkhv18ycsclaw363yldfsyc83hf01vlghf77"))))
    (properties `((upstream-name . "WeMix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-minqa r-matrixstats r-matrix r-lme4))
    (native-inputs (list r-knitr))
    (home-page "https://american-institutes-for-research.github.io/WeMix/")
    (synopsis
     "Weighted Mixed-Effects Models Using Multilevel Pseudo Maximum Likelihood Estimation")
    (description
     "Run mixed-effects models that include weights at every level.  The @code{WeMix}
package fits a weighted mixed model, also known as a multilevel, mixed, or
hierarchical linear model (HLM).  The weights could be inverse selection
probabilities, such as those developed for an education survey where schools are
sampled probabilistically, and then students inside of those schools are sampled
probabilistically.  Although mixed-effects models are already available in R,
@code{WeMix} is unique in implementing methods for mixed models using weights at
multiple levels.  Both linear and logit models are supported.  Models may have
up to three levels.  Random effects are estimated using the PIRLS algorithm from
lme4@code{pureR} (Walker and Bates (2013)
<https://github.com/lme4/lme4@code{pureR>}).")
    (license license:gpl2)))

(define-public r-welo
  (package
    (name "r-welo")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "welo" version))
       (sha256
        (base32 "14561rxbcc0w326nk24zl52nfw262z1pwvxsjfg9yx300byjljx3"))))
    (properties `((upstream-name . "welo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xts
                             r-rio
                             r-reshape2
                             r-rdpack
                             r-ggplot2
                             r-boot))
    (home-page "https://cran.r-project.org/package=welo")
    (synopsis "Weighted and Standard Elo Rates")
    (description
     "Estimates the standard and weighted Elo (WElo, Angelini et al., 2022
<doi:10.1016/j.ejor.2021.04.011>) rates.  The current version provides Elo and
WElo rates for tennis, according to different systems of weights (games or sets)
and scale factors (constant, proportional to the number of matches, with more
weight on Grand Slam matches or matches played on a specific surface).
Moreover, the package gives the possibility of estimating the (bootstrap)
standard errors for the rates.  Finally, the package includes betting functions
that automatically select the matches on which place a bet.")
    (license license:gpl3)))

(define-public r-welchadf
  (package
    (name "r-welchadf")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "welchADF" version))
       (sha256
        (base32 "02a8w1dhc2nd74hml4z3cdlx0d2a9rcx47v341kgav620i8bn88g"))))
    (properties `((upstream-name . "welchADF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lme4))
    (home-page "<http://decsai.ugr.es/~pjvi/r-packages.html>")
    (synopsis
     "Welch-James Statistic for Robust Hypothesis Testing under Heterocedasticity and Non-Normality")
    (description
     "Implementation of Johansen's general formulation of Welch-James's statistic with
Approximate Degrees of Freedom, which makes it suitable for testing any linear
hypothesis concerning cell means in univariate and multivariate mixed model
designs when the data pose non-normality and non-homogeneous variance.  Some
improvements, namely trimmed means and Winsorized variances, and bootstrapping
for calculating an empirical critical value, have been added to the classical
formulation.  The code departs from a previous SAS implementation by L.M. Lix
and H.J. Keselman, available at
<http://supp.apa.org/psycarticles/supplemental/met_13_2_110/SAS_Program.pdf> and
published in Keselman, H.J., Wilcox, R.R., and Lix, L.M. (2003)
<DOI:10.1111/1469-8986.00060>.")
    (license license:lgpl3+)))

(define-public r-weirs
  (package
    (name "r-weirs")
    (version "0.25")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weirs" version))
       (sha256
        (base32 "17a0ppi7ghikrwn39zvhg2cvhmnr3w0qi7r9lj22x65ii9nzadd7"))))
    (properties `((upstream-name . "weirs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=weirs")
    (synopsis "Hydraulics Package to Compute Open-Channel Flow over Weirs")
    (description
     "This package provides computational support for flow over weirs, such as
sharp-crested, broad-crested, and embankments.  Initially, the package supports
broad- and sharp-crested weirs.")
    (license license:gpl2)))

(define-public r-weird
  (package
    (name "r-weird")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weird" version))
       (sha256
        (base32 "1xn1a7ssdwjvqynh5crr9dqf81smm1ldix1xlgfm42mpc478wplb"))))
    (properties `((upstream-name . "weird")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stray
                             r-rstudioapi
                             r-robustbase
                             r-rlang
                             r-purrr
                             r-ks
                             r-interpolation
                             r-ggplot2
                             r-evd
                             r-dplyr
                             r-dbscan
                             r-crayon
                             r-cli
                             r-broom
                             r-aplpack))
    (home-page "https://pkg.robjhyndman.com/weird-package/")
    (synopsis
     "Functions and Data Sets for \"That's Weird: Anomaly Detection Using R\" by Rob J Hyndman")
    (description
     "All functions and data sets required for the examples in the book Hyndman (2024)
\"That's Weird: Anomaly Detection Using R\" <https://OTexts.com/weird/>.  All
packages needed to run the examples are also loaded.")
    (license license:gpl3)))

(define-public r-weightsvm
  (package
    (name "r-weightsvm")
    (version "1.7-16")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightSVM" version))
       (sha256
        (base32 "0cbcfdn76cq54rs9qdbmji8zkbb7rb5r1dllc3f0qsv4jv9dabaw"))))
    (properties `((upstream-name . "WeightSVM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.csie.ntu.edu.tw/~cjlin/libsvmtools/#weights_for_data_instances")
    (synopsis "Subject Weighted Support Vector Machines")
    (description
     "This package provides functions for subject/instance weighted support vector
machines (SVM).  It uses a modified version of libsvm and is compatible with
package e1071'.  It also allows user defined kernel matrix.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-weightr
  (package
    (name "r-weightr")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightr" version))
       (sha256
        (base32 "1qsyak91kdgv48wf6qhpfbiirlg4ba9w6rw8ynjcsnqqdvmly1lb"))))
    (properties `((upstream-name . "weightr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggplot2))
    (home-page "http://faculty.ucmerced.edu/jvevea/")
    (synopsis "Estimating Weight-Function Models for Publication Bias")
    (description
     "Estimates the Vevea and Hedges (1995) weight-function model.  By specifying
arguments, users can also estimate the modified model described in Vevea and
Woods (2005), which may be more practical with small datasets.  Users can also
specify moderators to estimate a linear model.  The package functionality allows
users to easily extract the results of these analyses as R objects for other
uses.  In addition, the package includes a function to launch both models as a
Shiny application.  Although the Shiny application is also available online,
this function allows users to launch it locally if they choose.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-weightquant
  (package
    (name "r-weightquant")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightQuant" version))
       (sha256
        (base32 "0v2wxgvv8v5filiabcd19bmcprfv3l8gg79v6s3c5wmnzir617s5"))))
    (properties `((upstream-name . "weightQuant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-quantreg r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=weightQuant")
    (synopsis
     "Weights for Incomplete Longitudinal Data and Quantile Regression")
    (description
     "Estimation of observation-specific weights for incomplete longitudinal data and
bootstrap procedure for weighted quantile regressions.  See Jacqmin-Gadda,
Rouanet, Mba, Philipps, Dartigues (2020) for details
<doi:10.1177/0962280220909986>.")
    (license license:gpl2+)))

(define-public r-weightmyitems
  (package
    (name "r-weightmyitems")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightMyItems" version))
       (sha256
        (base32 "14l4a79ws2yay2a7vdj7kq39rpi8q4wdysckh1vsyz1snw1rs2jy"))))
    (properties `((upstream-name . "WeightMyItems")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-psychometric))
    (home-page "https://cran.r-project.org/package=WeightMyItems")
    (synopsis "An Item Weighting Method for Item Response Matrices")
    (description
     "Applies the item weighting method from Kilic & Dogan (2019)
<doi:10.21031/epod.516057>.  To improve construct validity, this method
re-computes scores by utilizing the item discrimination index in conjunction
with a condition established upon person ability and item difficulty.")
    (license license:gpl3)))

(define-public r-weightit
  (package
    (name "r-weightit")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightIt" version))
       (sha256
        (base32 "1wclv2vfv1zrnnmggbqw6p8a1liq025yslbjn6nmmjz33si2sjvx"))))
    (properties `((upstream-name . "WeightIt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich
                             r-rlang
                             r-ggplot2
                             r-generics
                             r-crayon
                             r-cobalt
                             r-chk))
    (native-inputs (list r-knitr))
    (home-page "https://ngreifer.github.io/WeightIt/")
    (synopsis "Weighting for Covariate Balance in Observational Studies")
    (description
     "Generates balancing weights for causal effect estimation in observational
studies with binary, multi-category, or continuous point or longitudinal
treatments by easing and extending the functionality of several R packages and
providing in-house estimation methods.  Available methods include those that
rely on parametric modeling, optimization, and machine learning.  Also allows
for assessment of weights and checking of covariate balance by interfacing
directly with the cobalt package.  Methods for estimating weighted regression
models that take into account uncertainty in the estimation of the weights via
M-estimation or bootstrapping are available.  See the vignette \"Installing
Supporting Packages\" for instructions on how to install any package
@code{WeightIt} uses, including those that may not be on CRAN.")
    (license license:gpl2+)))

(define-public r-weightedtreemaps
  (package
    (name "r-weightedtreemaps")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightedTreemaps" version))
       (sha256
        (base32 "0kwp25iv7m1yi0r71m65g4p0kc1lr0hf90czgzhpv7w0l01aq8nx"))))
    (properties `((upstream-name . "WeightedTreemaps")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-sp
                             r-sf
                             r-scales
                             r-rcppcgal
                             r-rcpp
                             r-lattice
                             r-dplyr
                             r-colorspace
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/m-jahn/WeightedTreemaps")
    (synopsis
     "Generate and Plot Voronoi or Sunburst Treemaps from Hierarchical Data")
    (description
     "Treemaps are a visually appealing graphical representation of numerical data
using a space-filling approach.  A plane or map is subdivided into smaller areas
called cells.  The cells in the map are scaled according to an underlying metric
which allows to grasp the hierarchical organization and relative importance of
many objects at once.  This package contains two different implementations of
treemaps, Voronoi treemaps and Sunburst treemaps.  The Voronoi treemap function
subdivides the plot area in polygonal cells according to the highest
hierarchical level, then continues to subdivide those parental cells on the next
lower hierarchical level, and so on.  The Sunburst treemap is a computationally
less demanding treemap that does not require iterative refinement, but simply
generates circle sectors that are sized according to predefined weights.  The
Voronoi tesselation is based on functions from Paul Murrell (2012)
<https://www.stat.auckland.ac.nz/~paul/Reports/@code{VoronoiTreemap/voronoiTreeMap.html>}.")
    (license license:gpl3)))

(define-public r-weightedsurv
  (package
    (name "r-weightedsurv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightedsurv" version))
       (sha256
        (base32 "1iqi7c8f3iv7rmcgp8q7fr0jzmg4bb6f035fpxv00c9p23b0c3fq"))))
    (properties `((upstream-name . "weightedsurv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rlang r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/larry-leon/weightedsurv")
    (synopsis
     "Survival Analysis with Subject-Specific (Case Weights) and Time-Dependent Weighting")
    (description
     "This package provides survival analysis functions with support for
time-dependent and subject-specific (e.g., propensity score) weighting.
Implements weighted estimation for Cox models, Kaplan-Meier survival curves, and
treatment differences with point-wise and simultaneous confidence bands.
Includes restricted mean survival time (RMST) comparisons evaluated across all
potential truncation times with both point-wise and simultaneous confidence
bands.  See Cole, S. R. & HernÃ¡n, M. A. (2004) <doi:10.1016/j.cmpb.2003.10.004>
for methodological background.")
    (license license:expat)))

(define-public r-weightedscores
  (package
    (name "r-weightedscores")
    (version "0.9.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightedScores" version))
       (sha256
        (base32 "1wf01z94snwbqp22waz7qays3ymg5lsxpfpafdarad2b6mg5j2g8"))))
    (properties `((upstream-name . "weightedScores")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rootsolve r-mvtnorm))
    (home-page "https://cran.r-project.org/package=weightedScores")
    (synopsis
     "Weighted Scores Method for Regression Models with Dependent Data")
    (description
     "The weighted scores method and composite likelihood information criteria as an
intermediate step for variable/correlation selection for longitudinal ordinal
and count data in Nikoloulopoulos, Joe and Chaganty (2011)
<doi:10.1093/biostatistics/kxr005>, Nikoloulopoulos (2016)
<doi:10.1002/sim.6871> and Nikoloulopoulos (2017) <@code{arXiv:1510.07376>}.")
    (license license:gpl2+)))

(define-public r-weightedroc
  (package
    (name "r-weightedroc")
    (version "2020.1.31")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightedROC" version))
       (sha256
        (base32 "1f43hwsabciraj1qxfh5wcqnnx1vvcf4pwqs376rcfd9161k15xv"))))
    (properties `((upstream-name . "WeightedROC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/tdhock/WeightedROC")
    (synopsis "Fast, Weighted ROC Curves")
    (description
     "Fast computation of Receiver Operating Characteristic (ROC) curves and Area
Under the Curve (AUC) for weighted binary classification problems (weights are
example-specific cost values).")
    (license license:gpl3)))

(define-public r-weightedrank
  (package
    (name "r-weightedrank")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightedRank" version))
       (sha256
        (base32 "1iyyc3rb91f5xqrr7rr0bzrw3fq9ldfys6hcj9dc6npdbg4j9vih"))))
    (properties `((upstream-name . "weightedRank")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-senstrat r-sensitivitymv r-mvtnorm r-biasedurn))
    (home-page "https://cran.r-project.org/package=weightedRank")
    (synopsis "Sensitivity Analysis Using Weighted Rank Statistics")
    (description
     "This package performs a sensitivity analysis using weighted rank tests in
observational studies with I blocks of size J; see Rosenbaum (2024)
<doi:10.1080/01621459.2023.2221402>.  The package can perform adaptive inference
in block designs; see Rosenbaum (2012) <doi:10.1093/biomet/ass032>.  The package
can increase design sensitivity using the conditioning tactic in Rosenbaum
(2025) <doi:10.1093/jrsssb/qkaf007>.  The main functions are @code{wgtRank()},
@code{wgtRankCI()}, @code{wgtRanktt()} and @code{wgtRankC()}.")
    (license license:gpl2)))

(define-public r-weightedporttest
  (package
    (name "r-weightedporttest")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightedPortTest" version))
       (sha256
        (base32 "0kv9ip38l659cwqkw6l831za2y2610w4cxpw1jxsph0h2qdfm8fx"))))
    (properties `((upstream-name . "WeightedPortTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WeightedPortTest")
    (synopsis "Weighted Portmanteau Tests for Time Series Goodness-of-Fit")
    (description
     "An implementation of the Weighted Portmanteau Tests described in \"New Weighted
Portmanteau Statistics for Time Series Goodness-of-Fit Testing\" published by the
Journal of the American Statistical Association, Volume 107, Issue 498, pages
777-787, 2012.")
    (license license:gpl3+)))

(define-public r-weightedgcm
  (package
    (name "r-weightedgcm")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightedGCM" version))
       (sha256
        (base32 "06kdh499nlvcdiz4amambgvs6pdd5dl7zghp4y6yy4nkaivggk4c"))))
    (properties `((upstream-name . "weightedGCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost r-mgcv))
    (home-page "https://cran.r-project.org/package=weightedGCM")
    (synopsis
     "Weighted Generalised Covariance Measure Conditional Independence Test")
    (description
     "This package provides a conditional independence test that can be applied both
to univariate and multivariate random variables.  The test is based on a
weighted form of the sample covariance of the residuals after a nonlinear
regression on the conditioning variables.  Details are described in Scheidegger,
Hoerrmann and Buehlmann (2022) \"The Weighted Generalised Covariance Measure\"
<http://jmlr.org/papers/v23/21-1328.html>.  The test is a generalisation of the
Generalised Covariance Measure (GCM) implemented in the R package
@code{GeneralisedCovarianceMeasure} by Jonas Peters and Rajen D. Shah based on
Shah and Peters (2020) \"The Hardness of Conditional Independence Testing and the
Generalised Covariance Measure\" <doi:10.1214/19-AOS1857>.")
    (license license:gpl2)))

(define-public r-weightedensemble
  (package
    (name "r-weightedensemble")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightedEnsemble" version))
       (sha256
        (base32 "0lvi8362fpmybm1icdp63ys5pdsa2qc54bsdwp7345xk7jmqzh1v"))))
    (properties `((upstream-name . "WeightedEnsemble")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-metaheuristicopt))
    (home-page "https://cran.r-project.org/package=WeightedEnsemble")
    (synopsis "Weighted Ensemble for Hybrid Model")
    (description
     "The weighted ensemble method is a valuable approach for combining forecasts.
This algorithm employs several optimization techniques to generate optimized
weights.  This package has been developed using algorithm of Armstrong (1989)
<doi:10.1016/0024-6301(90)90317-W>.")
    (license license:gpl3)))

(define-public r-weightedcluster
  (package
    (name "r-weightedcluster")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeightedCluster" version))
       (sha256
        (base32 "1k4kyd2dmb7djz5zvp41gbzqdml8xcdapyhhljc29j8a16ygn0va"))))
    (properties `((upstream-name . "WeightedCluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegclust
                             r-traminer
                             r-rcolorbrewer
                             r-progressr
                             r-nnet
                             r-margins
                             r-lme4
                             r-future
                             r-foreach
                             r-fastcluster
                             r-dofuture
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "http://mephisto.unige.ch/weightedcluster/")
    (synopsis "Clustering of Weighted Data")
    (description
     "Clusters state sequences and weighted data.  It provides an optimized weighted
PAM algorithm as well as functions for aggregating replicated cases, computing
cluster quality measures for a range of clustering solutions, sequence analysis
typology validation using parametric bootstraps and plotting (fuzzy) clusters of
state sequences.  It further provides a fuzzy and crisp CLARA algorithm to
cluster large database with sequence analysis, and a methodological framework
for Robustness Assessment of Regressions using Cluster Analysis Typologies
(RARCAT).")
    (license license:gpl2+)))

(define-public r-weightedcl
  (package
    (name "r-weightedcl")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weightedCL" version))
       (sha256
        (base32 "1pdgslkknfbvimnsf588qgb12l93kk141y70vjm2sxdbmn7xdh18"))))
    (properties `((upstream-name . "weightedCL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sure r-rootsolve r-matlab r-mass))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=weightedCL")
    (synopsis
     "Efficient and Feasible Inference for High-Dimensional Normal Copula Regression Models")
    (description
     "Estimates high-dimensional multivariate normal copula regression models with the
weighted composite likelihood estimating equations in Nikoloulopoulos (2023)
<doi:10.1016/j.csda.2022.107654>.  It provides autoregressive moving average
correlation structures and binary, ordinal, Poisson, and negative binomial
regressions.")
    (license license:gpl2+)))

(define-public r-weighted-desc-stat
  (package
    (name "r-weighted-desc-stat")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Weighted.Desc.Stat" version))
       (sha256
        (base32 "030i12mnwlj976avvk3grrccgprsckmc35dm2ajwdfc9dijhypnj"))))
    (properties `((upstream-name . "Weighted.Desc.Stat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Weighted.Desc.Stat")
    (synopsis "Weighted Descriptive Statistics")
    (description
     "Weighted descriptive statistics is the discipline of quantitatively describing
the main features of real-valued fuzzy data which usually given from a fuzzy
population.  One can summarize this special kind of fuzzy data numerically or
graphically using this package.  To interpret some of the properties of one or
several sets of real-valued fuzzy data, numerically summarize is possible by
some weighted statistics which are designed in this package such as mean,
variance, covariance and correlation coefficent.  Also, graphically
interpretation can be given by weighted histogram and weighted scatter plot
using this package to describe properties of real-valued fuzzy data set.")
    (license license:lgpl3+)))

(define-public r-weibulltools
  (package
    (name "r-weibulltools")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weibulltools" version))
       (sha256
        (base32 "1scdpxvc9sj4jfxnf8xcsnpnp2vn0kl25gn1m2yqa3dw97h64mcl"))))
    (properties `((upstream-name . "weibulltools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-segmented
                             r-sandwich
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://tim-tu.github.io/weibulltools/")
    (synopsis "Statistical Methods for Life Data Analysis")
    (description
     "This package provides statistical methods and visualizations that are often used
in reliability engineering.  Comprises a compact and easily accessible set of
methods and visualization tools that make the examination and adjustment as well
as the analysis and interpretation of field data (and bench tests) as simple as
possible.  Non-parametric estimators like Median Ranks, Kaplan-Meier (Abernethy,
2006, <ISBN:978-0-9653062-3-2>), Johnson (Johnson, 1964, <ISBN:978-0444403223>),
and Nelson-Aalen for failure probability estimation within samples that contain
failures as well as censored data are included.  The package supports methods
like Maximum Likelihood and Rank Regression, (Genschel and Meeker, 2010,
<DOI:10.1080/08982112.2010.503447>) for the estimation of multiple parametric
lifetime distributions, as well as the computation of confidence intervals of
quantiles and probabilities using the delta method related to Fisher's
confidence intervals (Meeker and Escobar, 1998, <ISBN:9780471673279>) and the
beta-binomial confidence bounds.  If desired, mixture model analysis can be done
with segmented regression and the EM algorithm.  Besides the well-known Weibull
analysis, the package also contains Monte Carlo methods for the correction and
completion of imprecisely recorded or unknown lifetime characteristics. (Verband
der Automobilindustrie e.V. (VDA), 2016, <ISSN:0943-9412>).  Plots are created
statically ('ggplot2') or interactively ('plotly') and can be customized with
functions of the respective visualization package.  The graphical technique of
probability plotting as well as the addition of regression lines and confidence
bounds to existing plots are supported.")
    (license license:gpl2)))

(define-public r-weibullr-alt
  (package
    (name "r-weibullr-alt")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeibullR.ALT" version))
       (sha256
        (base32 "153zxw20gwv5rx5cxmygl97nv1c2pxb3yczmqvjxq7vwwxl04gr9"))))
    (properties `((upstream-name . "WeibullR.ALT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-weibullr))
    (home-page
     "http://www.openreliability.org/weibull-r-weibull-analysis-on-r/")
    (synopsis "Accelerated Life Testing Using 'WeibullR'")
    (description
     "Graphical data analysis of accelerated life tests.  Methods derived from Wayne
Nelson (1990, ISBN: 9780471522775), William Q. Meeker and Lois A. Escobar (1998,
ISBN: 1-471-14328-6).")
    (license license:gpl3+)))

(define-public r-weibullr
  (package
    (name "r-weibullr")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeibullR" version))
       (sha256
        (base32 "0x8i6js1ar4wkpgh8h48374hfvsvmqs3zfqvz731qig0b7ks8nb3"))))
    (properties `((upstream-name . "WeibullR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page
     "http://www.openreliability.org/weibull-r-weibull-analysis-on-r/")
    (synopsis "Weibull Analysis for Reliability Engineering")
    (description
     "Life data analysis in the graphical tradition of Waloddi Weibull.  Methods
derived from Robert B. Abernethy (2008, ISBN 0-965306-3-2), Wayne Nelson (1982,
ISBN: 9780471094586), William Q. Meeker and Lois A. Escobar (1998, ISBN:
1-471-14328-6), John I. @code{McCool}, (2012, ISBN: 9781118217986).")
    (license license:gpl3+)))

(define-public r-weibullness
  (package
    (name "r-weibullness")
    (version "1.24.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weibullness" version))
       (sha256
        (base32 "072w8av27ldass8alk50rdzqijmp2jpk243hnqqg0sfs69qs7px1"))))
    (properties `((upstream-name . "weibullness")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://AppliedStat.GitHub.io/R/")
    (synopsis "Goodness-of-Fit Test for Weibull Distribution (Weibullness)")
    (description
     "Conducts a goodness-of-fit test for the Weibull distribution (referred to as the
weibullness test) and furnishes parameter estimations for both the two-parameter
and three-parameter Weibull distributions.  Notably, the threshold parameter is
derived through correlation from the Weibull plot.  Additionally, this package
conducts goodness-of-fit assessments for the exponential, Gumbel, and inverse
Weibull distributions, accompanied by parameter estimations.  For more details,
see Park (2017) <doi:10.23055/ijietap.2017.24.4.2848>, Park (2018)
<doi:10.1155/2018/6056975>, and Park (2023) <doi:10.3390/math11143156>.  This
work was supported by the National Research Foundation of Korea (NRF) grants
funded by the Korea government (MSIT) (No.  2022R1A2C1091319, RS-2023-00242528).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-weibullmodiamr
  (package
    (name "r-weibullmodiamr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeibullModiAMR" version))
       (sha256
        (base32 "1hr9inlifq8a5f5cx3ccs187n221yzhhg2miij60q9ic3r3r6i4s"))))
    (properties `((upstream-name . "WeibullModiAMR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WeibullModiAMR")
    (synopsis "Fit Modified Weibull-Type Distributions")
    (description
     "This package provides maximum likelihood estimation methods for eight modified
Weibull-type distributions.  It returns parameter estimates, log-likelihood,
AIC, and BIC, and also supports model fitting, validation, and comparison across
different distributional forms.  These methods can be applied to reliability,
survival, and lifetime data analysis, making the package useful for researchers
and practitioners in statistics, engineering, and medicine.  The following
distributions are included: Rangoli2023, Peng2014, Lai2003, Xie1996, Sarhan2009,
Rangoli2025, Mustafa2012, and Alwasel2009.")
    (license license:gpl3)))

(define-public r-weibullfit
  (package
    (name "r-weibullfit")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeibullFit" version))
       (sha256
        (base32 "1a80gcqbmvb1rz2dr2syy16wn6ixjn6l40gayys9zy8302hky9ir"))))
    (properties `((upstream-name . "WeibullFit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-sqldf
                             r-r-oo
                             r-r-methodss3
                             r-optimx
                             r-mixdist
                             r-ksamples
                             r-glue
                             r-fadist
                             r-e1071))
    (home-page "https://cran.r-project.org/package=WeibullFit")
    (synopsis
     "Fits and Plots a Dataset to the Weibull Probability Distribution Function")
    (description
     "This package provides a single function to fit data of an input data frame into
one of the selected Weibull functions (w2, w3 and it's truncated versions),
calculating the scale, location and shape parameters accordingly.  The resulting
plots and files are saved into the folder parameter provided by the user.
References: a) John C. Nash, Ravi Varadhan (2011). \"Unifying Optimization
Algorithms to Aid Software System Users: optimx for R\"
<doi:10.18637/jss.v043.i09>.")
    (license license:gpl3)))

(define-public r-wehoop
  (package
    (name "r-wehoop")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wehoop" version))
       (sha256
        (base32 "0lg5k4w7k9pcp8dv4ayzlnd3xc39z5p6wabqnnhicy0byhjny838"))))
    (properties `((upstream-name . "wehoop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
                             r-glue
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://wehoop.sportsdataverse.org")
    (synopsis "Access Women's Basketball Play by Play Data")
    (description
     "This package provides a utility for working with women's basketball data.  A
scraping and aggregating interface for the WNBA Stats API
<https://stats.wnba.com/> and ESPN's <https://www.espn.com> women's college
basketball and WNBA statistics.  It provides users with the capability to access
the game play-by-plays, box scores, standings and results to analyze the data
for themselves.")
    (license license:expat)))

(define-public r-wege
  (package
    (name "r-wege")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WEGE" version))
       (sha256
        (base32 "17g4cgx0ajgj7lgxzi467cjbmbc47skyarcm88vqjc3i1j55dw12"))))
    (properties `((upstream-name . "WEGE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp r-sf r-raster))
    (home-page "https://cran.r-project.org/package=WEGE")
    (synopsis "Metric to Rank Locations for Biodiversity Conservation")
    (description
     "Calculates the WEGE (Weighted Endemism including Global Endangerment index)
index for a particular area.  Additionally it also calculates rasters of KBA's
(Key Biodiversity Area) criteria (A1a, A1b, A1e, and B1), Weighted endemism
(WE), the EDGE (Evolutionarily Distinct and Globally Endangered) score,
Evolutionary Distinctiveness (ED) and Extinction risk (ER).  Farooq, H.,
Azevedo, J., Belluardo F., Nanvonamuquitxo, C., Bennett, D., Moat, J., Soares,
A., Faurby, S. & Antonelli, A. (2020) <doi:10.1101/2020.01.17.910299>.")
    (license license:expat)))

(define-public r-weed
  (package
    (name "r-weed")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weed" version))
       (sha256
        (base32 "1i44v0swnlpgmicjllha3sk64cq55gygsphhi27yszg4jpd0sjqm"))))
    (properties `((upstream-name . "weed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidytext
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-readxl
                             r-purrr
                             r-magrittr
                             r-here
                             r-ggplot2
                             r-geonames
                             r-forcats
                             r-dplyr
                             r-countrycode))
    (home-page "https://github.com/rammkripa/weed")
    (synopsis "Wrangler for Emergency Events Database")
    (description
     "Makes research involving EMDAT and related datasets easier.  These Datasets are
manually filled and have several formatting and compatibility issues.  Weed aims
to resolve these with its functions.")
    (license license:expat)))

(define-public r-wec
  (package
    (name "r-wec")
    (version "0.4-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wec" version))
       (sha256
        (base32 "10lqh43536d44d6082rpp11q1323pmjbmgrgb8v9mrk9c1ysf50w"))))
    (properties `((upstream-name . "wec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (home-page "http://www.ru.nl/sociology/mt/wec/downloads/")
    (synopsis "Weighted Effect Coding")
    (description
     "This package provides functions to create factor variables with contrasts based
on weighted effect coding, and their interactions.  In weighted effect coding
the estimates from a first order regression model show the deviations per group
from the sample mean.  This is especially useful when a researcher has no
directional hypotheses and uses a sample from a population in which the number
of observation per group is different.")
    (license license:gpl3)))

(define-public r-webuse
  (package
    (name "r-webuse")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webuse" version))
       (sha256
        (base32 "09xvw0v991cq1ck2kfxblp5cngfh9j6swvh5xv420mvky0kshv32"))))
    (properties `((upstream-name . "webuse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-haven))
    (home-page "https://github.com/leeper/webuse")
    (synopsis "Import Stata 'webuse' Datasets")
    (description
     "This package provides a Stata-style @code{`webuse()}` function for importing
named datasets from Stata's online collection.")
    (license license:expat)))

(define-public r-webtrackr
  (package
    (name "r-webtrackr")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webtrackR" version))
       (sha256
        (base32 "18lch5l2i6pkwsba32mlnw13m2drqn1mqj9ivdihz8d1jmq4ikz0"))))
    (properties `((upstream-name . "webtrackR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr r-fastmatch r-data-table r-adar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/schochastics/webtrackR")
    (synopsis "Preprocessing and Analyzing Web Tracking Data")
    (description
     "Data structures and methods to work with web tracking data.  The functions cover
data preprocessing steps, enriching web tracking data with external information
and methods for the analysis of digital behavior as used in several academic
papers (e.g., Clemm von Hohenberg et al., 2023 <doi:10.17605/OSF.IO/M3U9P>;
Stier et al., 2022 <doi:10.1017/S0003055421001222>).")
    (license license:expat)))

(define-public r-websocket
  (package
    (name "r-websocket")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "websocket" version))
       (sha256
        (base32 "0bhlyh8qxx0x288zq8q194jr334zbwaq7vsavbgcj7j63qkh1kcz"))))
    (properties `((upstream-name . "websocket")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib openssl))
    (propagated-inputs (list r-r6 r-later r-cpp11 r-asioheaders))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://cran.r-project.org/package=websocket")
    (synopsis "'WebSocket' Client Library")
    (description
     "This package provides a @code{WebSocket} client interface for R.
@code{WebSocket} is a protocol for low-overhead real-time communication:
<https://en.wikipedia.org/wiki/@code{WebSocket>}.")
    (license license:gpl2)))

(define-public r-webshot2
  (package
    (name "r-webshot2")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webshot2" version))
       (sha256
        (base32 "151fg3d4w3h4v3ipac0a8z1hc4gbhny00n4hqmihak0pz6g49ai7"))))
    (properties `((upstream-name . "webshot2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-promises r-magrittr r-later r-chromote r-callr))
    (home-page "https://rstudio.github.io/webshot2/")
    (synopsis "Take Screenshots of Web Pages")
    (description
     "Takes screenshots of web pages, including Shiny applications and R Markdown
documents.  webshot2 uses headless Chrome or Chromium as the browser back-end.")
    (license license:expat)))

(define-public r-websearchr
  (package
    (name "r-websearchr")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "websearchr" version))
       (sha256
        (base32 "1c6dwm5g5rjq0b12zrwwi5k9760jb0ph83v4j2gm8zm0x9dhiqm9"))))
    (properties `((upstream-name . "websearchr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/fschaff/websearchr")
    (synopsis "Access Domains and Search Popular Websites")
    (description
     "This package provides functions that allow for accessing domains and a number of
search engines.")
    (license license:expat)))

(define-public r-websdm
  (package
    (name "r-websdm")
    (version "1.1-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webSDM" version))
       (sha256
        (base32 "0dcqq99779isn5456j9zd1pvhrnx7b1gblwmm9v8qkjaf7darbg6"))))
    (properties `((upstream-name . "webSDM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstantools
                             r-rstanarm
                             r-jtools
                             r-igraph
                             r-gridextra
                             r-glmnet
                             r-ggplot2
                             r-ggally
                             r-dplyr
                             r-dismo
                             r-broom-mixed
                             r-brms
                             r-bayesplot
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/giopogg/webSDM")
    (synopsis "Including Known Interactions in Species Distribution Models")
    (description
     "This package provides a collection of tools to fit and work with trophic Species
Distribution Models.  Trophic Species Distribution Models combine knowledge of
trophic interactions with Bayesian structural equation models that model each
species as a function of its prey (or predators) and environmental conditions.
It exploits the topological ordering of the known trophic interaction network to
predict species distribution in space and/or time, where the prey (or predator)
distribution is unavailable.  The method implemented by the package is described
in Poggiato, AndrÃ©oletti, Pollock and Thuiller (2022)
<doi:10.22541/au.166853394.45823739/v1>.")
    (license license:gpl3)))

(define-public r-webreadr
  (package
    (name "r-webreadr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webreadr" version))
       (sha256
        (base32 "0l3l5g4zj5faxqi1kqwx9lq91gbj40z2q3csrsmpal08qnwkxs90"))))
    (properties `((upstream-name . "webreadr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readr r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ironholds/webreadr")
    (synopsis "Tools for Reading Formatted Access Log Files")
    (description
     "R is used by a vast array of people for a vast array of purposes - including web
analytics.  This package contains functions for consuming and munging various
common forms of request log, including the Common and Combined Web Log formats
and various Amazon access logs.")
    (license license:expat)))

(define-public r-webr
  (package
    (name "r-webr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webr" version))
       (sha256
        (base32 "03yhlla74i71nphrfhr5sd57ykj7rjanh2a8nw3cq22rg9g668jk"))))
    (properties `((upstream-name . "webr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ztable
                             r-vcd
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sjlabelled
                             r-shiny
                             r-scales
                             r-rrtable
                             r-rlang
                             r-purrr
                             r-psych
                             r-moonbook
                             r-magrittr
                             r-ggplot2
                             r-ggforce
                             r-flextable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cardiomoon/webr")
    (synopsis "Data and Functions for Web-Based Analysis")
    (description
     "Several analysis-related functions for the book entitled \"Web-based Analysis
without R in Your Computer\"(written in Korean, ISBN 978-89-5566-185-9) by
Keon-Woong Moon.  The main function @code{plot.htest()} shows the distribution
of statistic for the object of class htest'.")
    (license license:gpl3)))

(define-public r-webpower
  (package
    (name "r-webpower")
    (version "0.9.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WebPower" version))
       (sha256
        (base32 "0idfm9mr4sffyzyihggy5kmsklx178g8c5ikp34kxz74jkz0rzn5"))))
    (properties `((upstream-name . "WebPower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pearsonds r-mass r-lme4 r-lavaan r-dplyr))
    (home-page "https://webpower.psychstat.org")
    (synopsis "Basic and Advanced Statistical Power Analysis")
    (description
     "This is a collection of tools for conducting both basic and advanced statistical
power analysis including correlation, proportion, t-test, one-way ANOVA, two-way
ANOVA, linear regression, logistic regression, Poisson regression, mediation
analysis, longitudinal data analysis, structural equation modeling and
multilevel modeling.  It also serves as the engine for conducting power analysis
online at <https://webpower.psychstat.org>.")
    (license license:gpl3+)))

(define-public r-webp
  (package
    (name "r-webp")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webp" version))
       (sha256
        (base32 "0gm238kmn51r0z3yrg1i1w49r3gph6xqyb8w75r76agic6nv9p9s"))))
    (properties `((upstream-name . "webp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list libwebp))
    (native-inputs (list pkg-config))
    (home-page "https://jeroen.r-universe.dev/webp")
    (synopsis "New Format for Lossless and Lossy Image Compression")
    (description
     "Lossless webp images are 26% smaller in size compared to PNG. Lossy webp images
are 25-34% smaller in size compared to JPEG. This package reads and writes webp
images into a 3 (rgb) or 4 (rgba) channel bitmap array using conventions from
the jpeg and png packages.")
    (license license:expat)))

(define-public r-webmap
  (package
    (name "r-webmap")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webmap" version))
       (sha256
        (base32 "09waqr34fy0bg6d2n3i8i0i8qv5w4f2srv0rh2054lr44dl1mj8d"))))
    (properties `((upstream-name . "webmap")))
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
    (propagated-inputs (list r-leaflet r-htmlwidgets r-htmltools r-checkmate))
    (native-inputs (list esbuild))
    (home-page "https://rconnect.usgs.gov/INLPO/webmap-main/")
    (synopsis "Create Interactive Web Maps Using 'The National Map' Services")
    (description
     "This package creates interactive web maps using the @code{JavaScript} Leaflet
library with base layers of The National Map ('TNM').  TNM services provide
access to base geospatial information that describes the landscape of the United
States and its territories.  This package is dependent on, and intended to be
used with, the leaflet package.")
    (license license:expat)))

(define-public r-webglobe
  (package
    (name "r-webglobe")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webglobe" version))
       (sha256
        (base32 "0gbg4pai4cn7hdc1943aqpx4bn3vgc82zp93a1wl6bmmajv1da4b"))))
    (properties `((upstream-name . "webglobe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-jsonlite r-httpuv r-geojsonio))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/r-barnes/webglobe/")
    (synopsis "3D Interactive Globes")
    (description
     "Displays geospatial data on an interactive 3D globe in the web browser.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-webgestaltr
  (package
    (name "r-webgestaltr")
    (version "0.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WebGestaltR" version))
       (sha256
        (base32 "1xwadw9maj3n9yxm4bv63hx4x1lh6krqhfcnwn2ay6jgwh7y6zxw"))))
    (properties `((upstream-name . "WebGestaltR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-whisker
                             r-svglite
                             r-rlang
                             r-readr
                             r-rcpp
                             r-jsonlite
                             r-igraph
                             r-httr
                             r-foreach
                             r-dplyr
                             r-dorng
                             r-doparallel
                             r-apcluster))
    (home-page "https://github.com/bzhanglab/WebGestaltR")
    (synopsis "Gene Set Analysis Toolkit WebGestaltR")
    (description
     "The web version @code{WebGestalt} <https://www.webgestalt.org> supports 12
organisms, 354 gene identifiers and 321,251 function categories.  Users can
upload the data and functional categories with their own gene identifiers.  In
addition to the Over-Representation Analysis, @code{WebGestalt} also supports
Gene Set Enrichment Analysis and Network Topology Analysis.  The user-friendly
output report allows interactive and efficient exploration of enrichment
results.  The @code{WebGestaltR} package not only supports all above functions
but also can be integrated into other pipeline or simultaneously analyze
multiple gene lists.")
    (license license:lgpl2.0+)))

(define-public r-webexercises
  (package
    (name "r-webexercises")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webexercises" version))
       (sha256
        (base32 "1r2wgg89a84q54mrwqv4wcsjvcndiwwjn6rk7qz37pfyciv68hzy"))))
    (properties `((upstream-name . "webexercises")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-rstudioapi r-rmarkdown r-knitr
                             r-jsonlite))
    (home-page "https://github.com/psyteachr/webexercises")
    (synopsis
     "Create Interactive Web Exercises in 'R Markdown' (Formerly 'webex')")
    (description
     "This package provides functions for easily creating interactive web pages using
R Markdown that students can use in self-guided learning.")
    (license license:cc-by-sa4.0)))

(define-public r-webdriver
  (package
    (name "r-webdriver")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webdriver" version))
       (sha256
        (base32 "0k87any9rvv367p2zwy89r3rxszsq3w78pzdq36by4ijn659la2l"))))
    (properties `((upstream-name . "webdriver")))
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
    (inputs (list))
    (propagated-inputs (list r-withr
                             r-showimage
                             r-r6
                             r-jsonlite
                             r-httr
                             r-debugme
                             r-curl
                             r-callr
                             r-base64enc))
    (native-inputs (list esbuild))
    (home-page "https://github.com/rstudio/webdriver")
    (synopsis "'WebDriver' Client for 'PhantomJS'")
    (description
     "This package provides a client for the @code{WebDriver} API'.  It allows driving
a (probably headless) web browser, and can be used to test web applications,
including Shiny apps.  In theory it works with any @code{WebDriver}
implementation, but it was only tested with @code{PhantomJS}'.")
    (license license:expat)))

(define-public r-webdeveloper
  (package
    (name "r-webdeveloper")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webdeveloper" version))
       (sha256
        (base32 "1nw97df9q0dpzl82pdybw527hc407ch2xg8f0s2z4kf89yp6ckhg"))))
    (properties `((upstream-name . "webdeveloper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-readr
                             r-promises
                             r-httpuv
                             r-html5
                             r-future))
    (home-page "https://cran.r-project.org/package=webdeveloper")
    (synopsis "Functions for Web Development")
    (description
     "Organizational framework for web development in R including functions to serve
static and dynamic content via HTTP methods, includes the html5 package to
create HTML pages, and offers other utility functions for common tasks related
to web development.")
    (license license:gpl2+)))

(define-public r-webdav
  (package
    (name "r-webdav")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "webdav" version))
       (sha256
        (base32 "1f8h0ivyzi27vhcb9myjw5ygl3nvh86cns1vcsv00i26skdfwr6j"))))
    (properties `((upstream-name . "webdav")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-httr2
                             r-httpuv
                             r-glue
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "<https://github.com/StrategicProjects/webdav>")
    (synopsis "Simple Interface for Interacting with 'WebDAV' Servers")
    (description
     "An easy-to-use interface for interacting with @code{WebDAV} servers, including
@code{OwnCloud}'.  It simplifies the use of @code{WebDAV} methods such as COPY,
MOVE, DELETE and others.  With built-in authentication and request handling, it
allows for easy management of files and directories over the @code{WebDAV}
protocol.")
    (license license:expat)))

(define-public r-webanalytics
  (package
    (name "r-webanalytics")
    (version "0.9.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WebAnalytics" version))
       (sha256
        (base32 "1z12lvb7qln08zg42gsjrjxp5ksg8awbdwnw3y8cfv7zmh316sf6"))))
    (properties `((upstream-name . "WebAnalytics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-uaparserjs
                             r-scales
                             r-reshape2
                             r-ggplot2
                             r-fs
                             r-digest
                             r-data-table
                             r-brew))
    (home-page "https://github.com/gregfrog/WebAnalytics")
    (synopsis "Web Server Log Analysis")
    (description
     "This package provides Apache and IIS log analytics for transaction performance,
client populations and workload definitions.")
    (license license:gpl3)))

(define-public r-weathr
  (package
    (name "r-weathr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weathR" version))
       (sha256
        (base32 "1v7wshidg5l5znyr7lb92ixhidx64rq3p89171h3na2wdwf77dq3"))))
    (properties `((upstream-name . "weathR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-sf
                             r-purrr
                             r-magrittr
                             r-lutz
                             r-lubridate
                             r-jsonlite
                             r-janitor
                             r-httr2
                             r-dplyr))
    (home-page "https://github.com/JeffreyFowler/weathR")
    (synopsis "Interact with the U.S. National Weather Service API")
    (description
     "Enables interaction with the National Weather Service application programming
web-interface for fetching of real-time and forecast meteorological data.  Users
can provide latitude and longitude, Automated Surface Observing System
identifier, or Automated Weather Observing System identifier to fetch recent
weather observations and recent forecasts for the given location or station.
Additionally, auxiliary functions exist to identify stations nearest to a point,
convert wind direction from character to degrees, and fetch active warnings.
Results are returned as simple feature objects whenever possible.")
    (license license:expat)))

(define-public r-weathersentiment
  (package
    (name "r-weathersentiment")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WeatherSentiment" version))
       (sha256
        (base32 "1v8bi4w9h1yi0fk9l4in7f7fhqv8ws85n06134x740rscrsa3aws"))))
    (properties `((upstream-name . "WeatherSentiment")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wordcloud
                             r-tidyverse
                             r-tidytext
                             r-tidyr
                             r-stringr
                             r-sentimentr
                             r-rcolorbrewer
                             r-ggplot2
                             r-data-table))
    (home-page "https://cran.r-project.org/package=WeatherSentiment")
    (synopsis "Comprehensive Analysis of Tweet Sentiments and Weather Data")
    (description
     "This package provides a comprehensive suite of functions for processing,
analyzing, and visualizing textual data from tweets is offered.  Users can clean
tweets, analyze their sentiments, visualize data, and examine the correlation
between sentiments and environmental data such as weather conditions.  Main
features include text processing, sentiment analysis, data visualization,
correlation analysis, and synthetic data generation.  Text processing involves
cleaning and preparing tweets by removing textual noise and irrelevant words.
Sentiment analysis extracts and accurately analyzes sentiments from tweet texts
using advanced algorithms.  Data visualization creates various charts like word
clouds and sentiment polarity graphs for visual representation of data.
Correlation analysis examines and calculates the correlation between tweet
sentiments and environmental variables such as weather conditions.
Additionally, random tweets can be generated for testing and evaluating the
performance of analyses, empowering users to effectively analyze and interpret
Twitter data for research and commercial purposes.")
    (license license:gpl3)))

(define-public r-weatheroz
  (package
    (name "r-weatheroz")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weatherOz" version))
       (sha256
        (base32 "1ng126f6cgm8934wcqz6d7wklfca61x6lf4ljafd051q7m2zs3f0"))))
    (properties `((upstream-name . "weatherOz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-terra
                             r-stars
                             r-sf
                             r-magick
                             r-lubridate
                             r-knitr
                             r-jsonlite
                             r-foreign
                             r-data-table
                             r-curl
                             r-crul
                             r-crayon
                             r-clock
                             r-apsimx))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/weatherOz/")
    (synopsis
     "An API Client for Australian Weather and Climate Data Resources")
    (description
     "This package provides automated downloading, parsing and formatting of weather
data for Australia through API endpoints provided by the Department of Primary
Industries and Regional Development (DPIRD) of Western Australia and by the
Science and Technology Division of the Queensland Government's Department of
Environment and Science (DES).  As well as the Bureau of Meteorology (BOM) of
the Australian government precis and coastal forecasts, and downloading and
importing radar and satellite imagery files.  DPIRD weather data are accessed
through public APIs provided by DPIRD,
<https://www.dpird.wa.gov.au/online-tools/apis/>, providing access to weather
station data from the DPIRD weather station network.  Australia-wide weather
data are based on data from the Australian Bureau of Meteorology (BOM) data and
accessed through SILO (Scientific Information for Land Owners) Jeffrey et al.
(2001) <doi:10.1016/S1364-8152(01)00008-1>.  DPIRD data are made available under
a Creative Commons Attribution 3.0 Licence (CC BY 3.0 AU) license
<https://creativecommons.org/licenses/by/3.0/au/deed.en>.  SILO data are
released under a Creative Commons Attribution 4.0 International licence (CC BY
4.0) <https://creativecommons.org/licenses/by/4.0/>.  BOM data are (c)
Australian Government Bureau of Meteorology and released under a Creative
Commons (CC) Attribution 3.0 licence or Public Access Licence (PAL) as
appropriate, see <http://www.bom.gov.au/other/copyright.shtml> for further
details.")
    (license license:gpl3+)))

(define-public r-weathermetrics
  (package
    (name "r-weathermetrics")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weathermetrics" version))
       (sha256
        (base32 "1hjhgsy3v8328hv4czxxz7kp68sxc10sy10f3dv5j8f6pka6qlsp"))))
    (properties `((upstream-name . "weathermetrics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/geanders/weathermetrics/")
    (synopsis "Functions to Convert Between Weather Metrics")
    (description
     "This package provides functions to convert between weather metrics, including
conversions for metrics of temperature, air moisture, wind speed, and
precipitation.  This package also includes functions to calculate the heat index
from air temperature and air moisture.")
    (license license:gpl2)))

(define-public r-weatherindices
  (package
    (name "r-weatherindices")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weatherindices" version))
       (sha256
        (base32 "1rqkrbzbihgygx2bg6lpkxqlwmdk88ljdp4j02xygvm0brqy2dc9"))))
    (properties `((upstream-name . "weatherindices")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=weatherindices")
    (synopsis "Calculate Weather Indices")
    (description
     "Weather indices represent the overall weekly effect of a weather variable on
crop yield throughout the cropping season.  This package contains functions that
can convert the weekly weather data into yearly weighted Weather indices with
weights being the correlation coefficient between weekly weather data over the
years and crop yield over the years.  This can be done for an individual weather
variable and for two weather variables at a time as the interaction effect.
This method was first devised by Jain, RC, Agrawal R, and Jha, MP (1980),
\"Effect of climatic variables on rice yield and its forecast\",MAUSAM, 31(4),
591â596, <doi:10.54302/mausam.v31i4.3477>.  Later, the method have been used
by various researchers and the latest can found in Gupta, AK, Sarkar, KA,
Dhakre, DS, & Bhattacharya, D (2022), \"Weather Based Potato Yield Modelling
using Statistical and Machine Learning Technique\",Environment and Ecology,
40(3B), 1444â1449,<https://www.environmentandecology.com/volume-40-2022>.")
    (license license:gpl3+)))

(define-public r-wearables
  (package
    (name "r-wearables")
    (version "0.11.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wearables" version))
       (sha256
        (base32 "06yhg1q8k38cwsp1xdi5fvbmxzsrpasfnbqyvlbq30m0njdqgg39"))))
    (properties `((upstream-name . "wearables")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xts
                             r-waveslim
                             r-varian
                             r-sparklyr
                             r-signal
                             r-rlang
                             r-rhrv
                             r-r-utils
                             r-padr
                             r-magrittr
                             r-lubridate
                             r-kernlab
                             r-jsonlite
                             r-ggplot2
                             r-dplyr
                             r-cli))
    (home-page "https://cran.r-project.org/package=wearables")
    (synopsis "Tools to Read and Convert Wearables Data")
    (description
     "Package to read Empatica E4, Embrace Plus, and Nowatch data, perform several
transformations, perform signal processing and analyses, including batch
analyses.")
    (license license:gpl2)))

(define-public r-weakarma
  (package
    (name "r-weakarma")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weakARMA" version))
       (sha256
        (base32 "16dzyw7jiyqv9hd94dff9lxhqv9rwib1xs1km0xfqcy6xa2jhw8w"))))
    (properties `((upstream-name . "weakARMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vars r-matrixstats r-mass r-compquadform))
    (home-page "https://plmlab.math.cnrs.fr/jrolland/weakARMA")
    (synopsis "Tools for the Analysis of Weak ARMA Models")
    (description
     "Numerous time series admit autoregressive moving average (ARMA) representations,
in which the errors are uncorrelated but not necessarily independent.  These
models are called weak ARMA by opposition to the standard ARMA models, also
called strong ARMA models, in which the error terms are supposed to be
independent and identically distributed (iid).  This package allows the study of
nonlinear time series models through weak ARMA representations.  It determines
identification, estimation and validation for ARMA models and for AR and MA
models in particular.  Functions can also be used in the strong case.  This
package also works on white noises by omitting arguments p', q', ar and ma'.
See Francq, C. and ZakoÃ¯an, J. (1998) <doi:10.1016/S0378-3758(97)00139-0> and
Boubacar MaÃ¯nassara, Y. and Saussereau, B. (2018)
<doi:10.1080/01621459.2017.1380030> for more details.")
    (license license:gpl3+)))

(define-public r-weaana
  (package
    (name "r-weaana")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "weaana" version))
       (sha256
        (base32 "01wk6z66kr51ja7wc6hyj05f977s24psq0w1ia65k8i8bp24pba3"))))
    (properties `((upstream-name . "weaana")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-settings
                             r-rlang
                             r-reshape2
                             r-magrittr
                             r-lubridate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://weaana.bangyou.me/")
    (synopsis "Analysis the Weather Data")
    (description
     "This package provides functions are collected to analyse weather data for
agriculture purposes including to read weather records in multiple formats,
calculate extreme climate index.  Demonstration data are included the SILO daily
climate data (licensed under CC BY 4.0,
<https://www.longpaddock.qld.gov.au/silo/>).")
    (license license:expat)))

(define-public r-wdpar
  (package
    (name "r-wdpar")
    (version "1.3.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wdpar" version))
       (sha256
        (base32 "0mn05wg755xkj3pw6qv0g50p4h5v6n0if31gr9a2i04zjza5nr86"))))
    (properties `((upstream-name . "wdpar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-withr
                             r-tibble
                             r-sf
                             r-rappdirs
                             r-progress
                             r-pingr
                             r-lwgeom
                             r-httr
                             r-curl
                             r-countrycode
                             r-cli
                             r-chromote
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://prioritizr.github.io/wdpar/")
    (synopsis "Interface to the World Database on Protected Areas")
    (description
     "Fetch and clean data from the World Database on Protected Areas (WDPA) and the
World Database on Other Effective Area-Based Conservation Measures (WDOECM).
Data is obtained from Protected Planet <https://www.protectedplanet.net/en>.  To
augment data cleaning procedures, users can install the prepr R package
(available at <https://github.com/prioritizr/prepr>).  For more information on
this package, see Hanson (2022) <doi:10.21105/joss.04594>.")
    (license license:gpl3)))

(define-public r-wdnr-gis
  (package
    (name "r-wdnr-gis")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wdnr.gis" version))
       (sha256
        (base32 "0va1zhfchlvsdm5nix6y2sj2di87vpfd7vxb5x0iaid4jd6swac1"))))
    (properties `((upstream-name . "wdnr.gis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-rlang r-dplyr r-arcpullr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wdnr.gis")
    (synopsis "Pull Spatial Layers from 'WDNR ArcGIS REST API'")
    (description
     "This package provides functions for finding and pulling data from the Wisconsin
Department of Natural Resources @code{ArcGIS} REST APIs
<https://dnrmaps.wi.gov/arcgis/rest/services> and
<https://dnrmaps.wi.gov/arcgis2/rest/services>.")
    (license license:gpl3)))

(define-public r-wdnet
  (package
    (name "r-wdnet")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wdnet" version))
       (sha256
        (base32 "02sz8rdj3wy2lj5zxb3znc4hymahmpxmsi1n3bg30naz7492k9pk"))))
    (properties `((upstream-name . "wdnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wdm
                             r-rcppxptrutils
                             r-rcpparmadillo
                             r-rcpp
                             r-rarpack
                             r-matrix
                             r-igraph
                             r-cvxr))
    (home-page "https://gitlab.com/wdnetwork/wdnet")
    (synopsis "Weighted and Directed Networks")
    (description
     "Assortativity coefficients, centrality measures, and clustering coefficients for
weighted and directed networks.  Rewiring unweighted networks with given
assortativity coefficients.  Generating general preferential attachment
networks.")
    (license license:gpl3+)))

(define-public r-wdm
  (package
    (name "r-wdm")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wdm" version))
       (sha256
        (base32 "04kv1x9nv3g3sckbi7i0amnps7q91mk5a3820cgv3jp2icq6hblz"))))
    (properties `((upstream-name . "wdm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/tnagler/wdm-r")
    (synopsis "Weighted Dependence Measures")
    (description
     "This package provides efficient implementations of weighted dependence measures
and related asymptotic tests for independence.  Implemented measures are the
Pearson correlation, Spearman's rho, Kendall's tau, Blomqvist's beta, and
Hoeffding's D; see, e.g., Nelsen (2006) <doi:10.1007/0-387-28678-0> and
Hollander et al. (2015, ISBN:9780470387375).")
    (license license:expat)))

(define-public r-wdief
  (package
    (name "r-wdief")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wdiEF" version))
       (sha256
        (base32 "1rsvcl64h8669f79b2sbiyjdkcfdl09jyk9gsx21qdkl79pb4h9m"))))
    (properties `((upstream-name . "wdiEF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-dplyr))
    (home-page "https://cran.r-project.org/package=wdiEF")
    (synopsis
     "Calculation of the Water Deficit Index (WDI) and the Evaporative Fraction (EF) on Rasters")
    (description
     "This package provides functions to calculate the Water Deficit Index (WDI) and
the Evaporative Fraction (EF) using geospatial raster data such as fractional
vegetation cover (FVC) and surface-air temperature difference (TS-TA).  The
package automates regression-based edge fitting and produces continuous spatial
maps of surface moisture and evaporative dynamics.")
    (license license:gpl3)))

(define-public r-wdi
  (package
    (name "r-wdi")
    (version "2.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WDI" version))
       (sha256
        (base32 "1kjl0iv16fdhkdzbywn5n15kh9bj231xg8glx9md801qin9j23ra"))))
    (properties `((upstream-name . "WDI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (home-page "https://vincentarelbundock.github.io/WDI/")
    (synopsis "World Development Indicators and Other World Bank Data")
    (description
     "Search and download data from over 40 databases hosted by the World Bank,
including the World Development Indicators ('WDI'), International Debt
Statistics, Doing Business, Human Capital Index, and Sub-national Poverty
indicators.")
    (license license:gpl3)))

(define-public r-wdata
  (package
    (name "r-wdata")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WData" version))
       (sha256
        (base32 "0h1xsif6pyy9aam4w1pdh9v4qa1p8mhpc9rfg9b6y248dm9zkf1x"))))
    (properties `((upstream-name . "WData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack
                             r-rcpp
                             r-progress
                             r-kscorrect
                             r-evmix
                             r-bayesmeta))
    (home-page "https://github.com/noeliasanchmrt/WData")
    (synopsis "Statistical Inference for Weighted Data")
    (description
     "Analyzes and models data subject to sampling biases.  Provides functions to
estimate the density and cumulative distribution functions from biased samples
of continuous distributions.  Includes the estimators proposed by Bhattacharyya
et al. (1988) <doi:10.1080/03610928808829825> and Jones (1991)
<doi:10.2307/2337020> for density, and by Cox (2005, ISBN:052184939X) and Bose
and Dutta (2022) <doi:10.1007/s00184-021-00824-3> for distribution, with
different bandwidth selectors.  Also includes a real length-biased dataset on
shrub width from Muttlak (1988)
<https://www.proquest.com/openview/3dd74592e623cdbcfa6176e85bd3d390/1?cbl=18750&diss=y&pq-origsite=gscholar>.")
    (license license:gpl3)))

(define-public r-wcox
  (package
    (name "r-wcox")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wcox" version))
       (sha256
        (base32 "13shz5iz2ab9yqp24m6z7ciw70sdg2jdyqifmshq4flp4a737fr7"))))
    (properties `((upstream-name . "wcox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-survival r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wcox")
    (synopsis
     "Weights to Correct for Outcome Dependent Sampling in Time to Event Data")
    (description
     "This package provides a new inverse probability of selection weighted Cox model
to deal with outcome-dependent sampling in survival analysis.")
    (license license:gpl3)))

(define-public r-wcorr
  (package
    (name "r-wcorr")
    (version "1.9.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wCorr" version))
       (sha256
        (base32 "0ja51w17q80r7xpwqhzn416b48ji9178026wf5ibm4s0hsfz7vb2"))))
    (properties `((upstream-name . "wCorr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mnormt r-minqa))
    (native-inputs (list r-knitr))
    (home-page "https://american-institutes-for-research.github.io/wCorr/")
    (synopsis "Weighted Correlations")
    (description
     "Calculates Pearson, Spearman, polychoric, and polyserial correlation
coefficients, in weighted or unweighted form.  The package implements
tetrachoric correlation as a special case of the polychoric and biserial
correlation as a specific case of the polyserial.")
    (license license:gpl2)))

(define-public r-wconf
  (package
    (name "r-wconf")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wconf" version))
       (sha256
        (base32 "01ngm0ragl9fqhnk9l9pxdf23n16mvmy9znfdfd1q70qvj9y8v22"))))
    (properties `((upstream-name . "wconf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://www.alexandrumonahov.eu.org/projects")
    (synopsis "Weighted Confusion Matrix")
    (description
     "Allows users to create weighted confusion matrices and accuracy metrics that
help with the model selection process for classification problems, where
distance from the correct category is important.  The package includes several
weighting schemes which can be parameterized, as well as custom configuration
options.  Furthermore, users can decide whether they wish to positively or
negatively affect the accuracy score as a result of applying weights to the
confusion matrix.  Functions are included to calculate accuracy metrics for
imbalanced data.  Finally, wconf integrates well with the caret package, but it
can also work standalone when provided data in matrix form.  References: Kuhn,
M. (2008) \"Building Perspective Models in R Using the caret Package\"
<doi:10.18637/jss.v028.i05> Monahov, A. (2021) \"Model Evaluation with Weighted
Threshold Optimization (and the mewto R package)\" <doi:10.2139/ssrn.3805911>
Monahov, A. (2024) \"Improved Accuracy Metrics for Classification with Imbalanced
Data and Where Distance from the Truth Matters, with the wconf R Package\"
<doi:10.2139/ssrn.4802336> Starovoitov, V., Golub, Y. (2020).  New Function for
Estimating Imbalanced Data Classification Results.  Pattern Recognition and
Image Analysis, 295â302 Van de Velden, M., Iodice D'Enza, A., Markos, A.,
Cavicchia, C. (2023) \"A general framework for implementing distances for
categorical variables\" <doi:10.48550/@code{arXiv.2301.02190>}.")
    (license license:cc-by-sa4.0)))

(define-public r-wcompo
  (package
    (name "r-wcompo")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Wcompo" version))
       (sha256
        (base32 "1rd7y86q8qi7w9878ng0zdk3zpxnjyzpmrm2mj5lm60hkd72xyrw"))))
    (properties `((upstream-name . "Wcompo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://sites.google.com/view/lmaowisc/")
    (synopsis
     "Semiparametric Proportional Means Regression of Weighted Composite Endpoint")
    (description
     "This package implements inferential and graphic procedures for the
semiparametric proportional means regression of weighted composite endpoint of
recurrent event and death (Mao and Lin, 2016,
<doi:10.1093/biostatistics/kxv050>).")
    (license license:gpl2+)))

(define-public r-wcm
  (package
    (name "r-wcm")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WCM" version))
       (sha256
        (base32 "0w1m2vcxc64ksw3dm94wdigil2fpv3cvzyqmkhs2zrfjlgrdchcd"))))
    (properties `((upstream-name . "WCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-raster r-pracma))
    (home-page "https://cran.r-project.org/package=WCM")
    (synopsis
     "Water Cloud Model (WCM) for the Simulation of Leaf Area Index (LAI) and Soil Moisture (SM) from Microwave Backscattering")
    (description
     "Retrieval the leaf area index (LAI) and soil moisture (SM) from microwave
backscattering data using water cloud model (WCM) model .  The WCM algorithm
attributed to Pervot et al.(1993) <doi:10.1016/0034-4257(93)90053-Z>.  The
authors are grateful to SAC, ISRO, Ahmedabad for providing financial support to
Dr. Prashant K Srivastava to conduct this research work.")
    (license license:gpl3+)))

(define-public r-wcluster
  (package
    (name "r-wcluster")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WCluster" version))
       (sha256
        (base32 "0llsgf485wrnlih2pbwxf8yl29nms4q9nhdj47hhly4amazvg095"))))
    (properties `((upstream-name . "WCluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-datanugget r-cluster))
    (home-page "https://cran.r-project.org/package=WCluster")
    (synopsis "Clustering and PCA with Weights, and Data Nuggets Clustering")
    (description
     "K-means clustering, hierarchical clustering, and PCA with observational weights
and/or variable weights.  It also includes the corresponding functions for data
nuggets which serve as representative samples of large datasets.  Cherasia et
al., (2022) <doi:10.1007/978-3-031-22687-8_20>.  Amaratunga et al., (2009)
<doi:10.1002/9780470317129>.")
    (license license:gpl2)))

(define-public r-wcep
  (package
    (name "r-wcep")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wcep" version))
       (sha256
        (base32 "1gbxw0hizlsgckcjjhi1xlzd7mmqqjhyzfxdrvriwb2v113x5sy9"))))
    (properties `((upstream-name . "wcep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-progress r-dplyr r-coin))
    (home-page "https://github.com/sarah-0k/wcep")
    (synopsis "Survival Analysis for Weighted Composite Endpoints")
    (description
     "Analyze given data frame with multiple endpoints and return Kaplan-Meier
survival probabilities together with the specified confidence interval.  See
Nabipoor M, Westerhout CM, Rathwell S, and Bakal JA (2023)
<doi:10.1186/s12874-023-01857-0>.")
    (license license:expat)))

(define-public r-wce
  (package
    (name "r-wce")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WCE" version))
       (sha256
        (base32 "0sb1wp073wlyzddk65k39sz3axwkrmjjbjv76b3izbklb0ww69q7"))))
    (properties `((upstream-name . "WCE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-plyr))
    (home-page "https://cran.r-project.org/package=WCE")
    (synopsis "Weighted Cumulative Exposure Models")
    (description
     "This package provides a flexible method for modeling cumulative effects of
time-varying exposures, weighted according to their relative proximity in time,
and represented by time-dependent covariates.  The current implementation
estimates the weight function in the Cox proportional hazards model.  The
function that assigns weights to doses taken in the past is estimated using
cubic regression splines.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-wcde
  (package
    (name "r-wcde")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wcde" version))
       (sha256
        (base32 "1wyq4m6ziv4b8zkzg3gjjnyhj2bg18ikfxz98q9c2nxqdiq4kbir"))))
    (properties `((upstream-name . "wcde")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rcurl
                             r-purrr
                             r-progress
                             r-magrittr
                             r-forcats
                             r-dplyr
                             r-countrycode))
    (native-inputs (list r-knitr))
    (home-page "https://guyabel.github.io/wcde/")
    (synopsis
     "Download Data from the Wittgenstein Centre Human Capital Data Explorer")
    (description
     "Download and plot education specific demographic data from the Wittgenstein
Centre for Demography and Human Capital Data Explorer
<http://dataexplorer.wittgensteincentre.org/>.")
    (license license:gpl3)))

(define-public r-wbwdi
  (package
    (name "r-wbwdi")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbwdi" version))
       (sha256
        (base32 "0x8gwczv6sqkclw7s6vacrlvc91867f6qw25j0vr7hh0ws4mqm91"))))
    (properties `((upstream-name . "wbwdi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-jsonlite
                             r-httr2
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tidy-intelligence/r-wbwdi")
    (synopsis
     "Seamless Access to World Bank World Development Indicators (WDI)")
    (description
     "Access and analyze the World Bank's World Development Indicators (WDI) using the
corresponding API
<https://datahelpdesk.worldbank.org/knowledgebase/articles/889392-about-the-indicators-api-documentation>.
 WDI provides more than 24,000 country or region-level indicators for various
contexts.  wbwdi enables users to download, process and work with WDI series
across multiple countries, aggregates, and time periods.")
    (license license:expat)))

(define-public r-wbsts
  (package
    (name "r-wbsts")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbsts" version))
       (sha256
        (base32 "07h3wqmb9ya878fwdj49r0npks0pnd3jlnzri1cmf27c691hwka4"))))
    (properties `((upstream-name . "wbsts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-rcpp r-mvtnorm))
    (home-page "https://cran.r-project.org/package=wbsts")
    (synopsis "Multiple Change-Point Detection for Nonstationary Time Series")
    (description
     "This package implements detection for the number and locations of the
change-points in a time series using the Wild Binary Segmentation and the
Locally Stationary Wavelet model of Korkas and Fryzlewicz (2017)
<doi:10.5705/ss.202015.0262>.")
    (license license:gpl2+)))

(define-public r-wbstats
  (package
    (name "r-wbstats")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbstats" version))
       (sha256
        (base32 "0jl9r2rppyc5pi1swylqm4iq3hgq6szp10cxk6d0vrs21yrmznj1"))))
    (properties `((upstream-name . "wbstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pachadotdev/wbstats")
    (synopsis
     "Programmatic Access to Data and Statistics from the World Bank API")
    (description "Search and download data from the World Bank Data API.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-wbsd
  (package
    (name "r-wbsd")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbsd" version))
       (sha256
        (base32 "16jhimsq8symf6f2awczqkaqkdmlkzhmgk01iimhkvqlx8g2v219"))))
    (properties `((upstream-name . "wbsd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=wbsd")
    (synopsis "Wild Bootstrap Size Diagnostics")
    (description
     "This package implements the diagnostic \"theta\" developed in Poetscher and
Preinerstorfer (2020) \"How Reliable are Bootstrap-based Heteroskedasticity
Robust Tests?\" <@code{arXiv:2005.04089>}.  This diagnostic can be used to detect
and weed out bootstrap-based procedures that provably have size equal to one for
a given testing problem.  The implementation covers a large variety of
bootstrap-based procedures, cf.  the above mentioned article for details.  A
function for computing bootstrap p-values is provided.")
    (license license:gpl2)))

(define-public r-wbs
  (package
    (name "r-wbs")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbs" version))
       (sha256
        (base32 "1xrkh51xrvri1m48ndx9szj661ymjb23xgf0l4k8iggd9dllz9nl"))))
    (properties `((upstream-name . "wbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wbs")
    (synopsis "Wild Binary Segmentation for Multiple Change-Point Detection")
    (description
     "This package provides efficient implementation of the Wild Binary Segmentation
and Binary Segmentation algorithms for estimation of the number and locations of
multiple change-points in the piecewise constant function plus Gaussian noise
model.")
    (license license:gpl2)))

(define-public r-wbids
  (package
    (name "r-wbids")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbids" version))
       (sha256
        (base32 "0h66351m4brfvglagkdys075w949dlgkjjavmqxh9vg9df7gglq2"))))
    (properties `((upstream-name . "wbids")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-httr2
                             r-econdatasets
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://teal-insights.github.io/r-wbids/")
    (synopsis
     "Seamless Access to World Bank International Debt Statistics (IDS)")
    (description
     "Access and analyze the World Bank's International Debt Statistics (IDS)
<https://www.worldbank.org/en/programs/debt-statistics/ids>.  IDS provides
creditor-debtor relationships between countries, regions, and institutions.
wbids enables users to download, process and work with IDS series across
multiple geographies, counterparts, and time periods.")
    (license license:expat)))

(define-public r-wbacon
  (package
    (name "r-wbacon")
    (version "0.6-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wbacon" version))
       (sha256
        (base32 "1srnamcb3kqbc5caw012sxa1j2fyply72w7mbcwyzgn7nchpxjn8"))))
    (properties `((upstream-name . "wbacon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hexbin))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/tobiasschoch/wbacon")
    (synopsis "Weighted BACON Algorithms")
    (description
     "The BACON algorithms are methods for multivariate outlier nomination (detection)
and robust linear regression by Billor, Hadi, and Velleman (2000)
<doi:10.1016/S0167-9473(99)00101-2>.  The extension to weighted problems is due
to Beguin and Hulliger (2008)
<https://www150.statcan.gc.ca/n1/en/catalogue/12-001-X200800110616>; see also
<doi:10.21105/joss.03238>.")
    (license license:gpl2+)))

(define-public r-waywiser
  (package
    (name "r-waywiser")
    (version "0.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waywiser" version))
       (sha256
        (base32 "0px1iahwrjzwiakjbam2ik49qc0sskc2vpl3shmv22fhxw61jdh6"))))
    (properties `((upstream-name . "waywiser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yardstick
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-spdep
                             r-sf
                             r-rlang
                             r-purrr
                             r-matrix
                             r-hardhat
                             r-glue
                             r-fnn
                             r-fields
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/waywiser")
    (synopsis "Ergonomic Methods for Assessing Spatial Models")
    (description
     "Assessing predictive models of spatial data can be challenging, both because
these models are typically built for extrapolating outside the original region
represented by training data and due to potential spatially structured errors,
with \"hot spots\" of higher than expected error clustered geographically due to
spatial structure in the underlying data.  Methods are provided for assessing
models fit to spatial data, including approaches for measuring the spatial
structure of model errors, assessing model predictions at multiple spatial
scales, and evaluating where predictions can be made safely.  Methods are
particularly useful for models fit using the tidymodels framework.  Methods
include Moran's I ('Moran (1950) <doi:10.2307/2332142>), Geary's C ('Geary
(1954) <doi:10.2307/2986645>), Getis-Ord's G ('Ord and Getis (1995)
<doi:10.1111/j.1538-4632.1995.tb00912.x>), agreement coefficients from Ji and
Gallo (2006) (<doi: 10.14358/PERS.72.7.823>), agreement metrics from Willmott
(1981) (<doi: 10.1080/02723646.1981.10642213>) and Willmott et al'. (2012)
(<doi: 10.1002/joc.2419>), an implementation of the area of applicability
methodology from Meyer and Pebesma (2021) (<doi:10.1111/2041-210X.13650>), and
an implementation of multi-scale assessment as described in Riemann et al'.
(2010) (<doi:10.1016/j.rse.2010.05.010>).")
    (license license:expat)))

(define-public r-waysign
  (package
    (name "r-waysign")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waysign" version))
       (sha256
        (base32 "0jqspg1xdyi16vm8l9cvvs1pmxq644qbjmb9qfxgazq1fr36nayj"))))
    (properties `((upstream-name . "waysign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list xz))
    (propagated-inputs (list r-rlang))
    (home-page "https://github.com/thomasp85/waysign")
    (synopsis "Multi-Purpose and High-Performance Routing")
    (description
     "This package provides routing based on the path-tree Rust crate.  The routing is
general purpose in the sense that any type of R object can be associated with a
path, not just a handler function.")
    (license license:expat)))

(define-public r-waypoint
  (package
    (name "r-waypoint")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Waypoint" version))
       (sha256
        (base32 "1l1arjs5wiz9rmp0kc743cq6an7x5vkwracrabgh23s4pbq5n6zj"))))
    (properties `((upstream-name . "Waypoint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://mark-eis.github.io/Waypoint/")
    (synopsis
     "Convert, Validate, Format and Print Geographic Coordinates and Waypoints")
    (description
     "Convert, validate, format and elegantly print geographic coordinates and
waypoints (paired latitude and longitude values) in decimal degrees, degrees and
minutes, and degrees, minutes and seconds using high performance C++ code to
enable rapid conversion and formatting of large coordinate and waypoint
datasets.")
    (license license:expat)))

(define-public r-wayfindr
  (package
    (name "r-wayfindr")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WayFindR" version))
       (sha256
        (base32 "1ipydfw34pw3jmndz61vfqv77vfvss33i7g16kyn34lrc4h8pvdm"))))
    (properties `((upstream-name . "WayFindR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-rgraphviz r-keggrest r-igraph r-desctools))
    (native-inputs (list r-knitr))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Computing Graph Structures on WikiPathways")
    (description
     "Converts pathways from @code{WikiPathways} GPML format or KEGG KGML format into
igraph objects.  Includes tools to find all cycles in the resulting graphs and
determine which ones involve negative feedback (inhibition).")
    (license license:artistic2.0)))

(define-public r-waydown
  (package
    (name "r-waydown")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waydown" version))
       (sha256
        (base32 "1yjx9cd8h8rsi44s7dcqrvfmsbjhw7vkg2z7bl4knsgbki0c978g"))))
    (properties `((upstream-name . "waydown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=waydown")
    (synopsis
     "Computation of Approximate Potentials for Weakly Non-Gradient Fields")
    (description
     "Computation of approximate potentials for both gradient and non gradient fields.
 It is known from physics that only gradient fields, also known as conservative,
have a well defined potential function.  Here we present an algorithm, based on
the classical Helmholtz decomposition, to obtain an approximate potential
function for non gradient fields.  More information in RodrÃ­guez-SÃ¡nchez
(2020) <doi:10.1371/journal.pcbi.1007788>.")
    (license license:expat)))

(define-public r-wavscalogram
  (package
    (name "r-wavscalogram")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wavScalogram" version))
       (sha256
        (base32 "06a38hvggvx39h0m7g35r0d4v8gbi1a5m0x1kv9q88vngwm4mxkv"))))
    (properties `((upstream-name . "wavScalogram")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fields r-abind))
    (home-page "https://cran.r-project.org/package=wavScalogram")
    (synopsis "Wavelet Scalogram Tools for Time Series Analysis")
    (description
     "This package provides scalogram based wavelet tools for time series analysis:
wavelet power spectrum, scalogram, windowed scalogram, windowed scalogram
difference (see Bolos et al. (2017) <doi:10.1016/j.amc.2017.05.046>), scale
index and windowed scale index (Benitez et al. (2010)
<doi:10.1016/j.camwa.2010.05.010>).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-wavethresh
  (package
    (name "r-wavethresh")
    (version "4.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wavethresh" version))
       (sha256
        (base32 "133msy9bn32531n9z9wr9z6hccz5w8zczv0a5f2awkfbap8nlwn2"))))
    (properties `((upstream-name . "wavethresh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=wavethresh")
    (synopsis "Wavelets Statistics and Transforms")
    (description
     "This package performs 1, 2 and 3D real and complex-valued wavelet transforms,
nondecimated transforms, wavelet packet transforms, nondecimated wavelet packet
transforms, multiple wavelet transforms, complex-valued wavelet transforms,
wavelet shrinkage for various kinds of data, locally stationary wavelet time
series, nonstationary multiscale transfer function modeling, density estimation.")
    (license license:gpl2+)))

(define-public r-wavesampling
  (package
    (name "r-wavesampling")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveSampling" version))
       (sha256
        (base32 "0nfpd6r1bjc1vl38lgfqmdfimwsz400v61q7vy51idp6zr00s58h"))))
    (properties `((upstream-name . "WaveSampling")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix))
    (home-page "https://github.com/RJauslin/WaveSampling")
    (synopsis "Weakly Associated Vectors (WAVE) Sampling")
    (description
     "Spatial data are generally auto-correlated, meaning that if two units selected
are close to each other, then it is likely that they share the same properties.
For this reason, when sampling in the population it is often needed that the
sample is well spread over space.  A new method to draw a sample from a
population with spatial coordinates is proposed.  This method is called wave
(Weakly Associated Vectors) sampling.  It uses the less correlated vector to a
spatial weights matrix to update the inclusion probabilities vector into a
sample.  For more details see RaphaÃ«l Jauslin and Yves TillÃ© (2019)
<doi:10.1007/s13253-020-00407-1>.")
    (license license:gpl2+)))

(define-public r-waves
  (package
    (name "r-waves")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waves" version))
       (sha256
        (base32 "09nz6bvq22rc6i1kghiz0dz5ag2rzj0f8q6vwg653ssmx3mamqma"))))
    (properties `((upstream-name . "waves")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-spectacles
                             r-scales
                             r-rlang
                             r-readr
                             r-randomforest
                             r-prospectr
                             r-pls
                             r-magrittr
                             r-lifecycle
                             r-ggplot2
                             r-dplyr
                             r-caret))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://GoreLab.github.io/waves/")
    (synopsis "Vis-NIR Spectral Analysis Wrapper")
    (description
     "Originally designed application in the context of resource-limited plant
research and breeding programs, waves provides an open-source solution to
spectral data processing and model development by bringing useful packages
together into a streamlined pipeline.  This package is wrapper for functions
related to the analysis of point visible and near-infrared reflectance
measurements.  It includes visualization, filtering, aggregation, preprocessing,
cross-validation set formation, model training, and prediction functions to
enable open-source association of spectral and reference data.  This package is
documented in a peer-reviewed manuscript in the Plant Phenome Journal
<doi:10.1002/ppj2.20012>.  Specialized cross-validation schemes are described in
detail in JarquÃ­n et al. (2017) <doi:10.3835/plantgenome2016.12.0130>.  Example
data is from Ikeogu et al. (2017) <doi:10.1371/journal.pone.0188918>.")
    (license license:expat)))

(define-public r-waverr
  (package
    (name "r-waverr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaverR" version))
       (sha256
        (base32 "084fhzggzm075w6wp2lqd3j0an21idhw8z5l8ynz4y96mpmn204a"))))
    (properties `((upstream-name . "WaverR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-kimisc))
    (home-page "https://cran.r-project.org/package=WaverR")
    (synopsis
     "Data Estimation using Weighted Averages of Multiple Regressions")
    (description
     "For multivariate datasets, this function enables the estimation of missing data
using the Weighted AVERage of all possible Regressions using the data available.")
    (license license:gpl2)))

(define-public r-waverider
  (package
    (name "r-waverider")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaverideR" version))
       (sha256
        (base32 "1ag80sj1fn9apbxhfibfl1b9zazz0j3llk03qahjrm2gd469badd"))))
    (properties `((upstream-name . "WaverideR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-truncnorm
                             r-trapezoid
                             r-rlist
                             r-reshape2
                             r-rcolorbrewer
                             r-matrixstats
                             r-matrix
                             r-magick
                             r-hmisc
                             r-foreach
                             r-fancova
                             r-dosnow
                             r-desctools
                             r-decomposer
                             r-colorramps
                             r-colorednoise
                             r-astrochron))
    (home-page "https://github.com/stratigraphy/WaverideR")
    (synopsis "Extracting Signals from Wavelet Spectra")
    (description
     "The continuous wavelet transform enables the observation of
transient/non-stationary cyclicity in time-series.  The goal of
cyclostratigraphic studies is to define frequency/period in the depth/time
domain.  By conducting the continuous wavelet transform on cyclostratigraphic
data series one can observe and extract cyclic signals/signatures from signals.
These results can then be visualized and interpreted enabling one to
identify/interpret cyclicity in the geological record, which can be used to
construct astrochronological age-models and identify and interpret cyclicity in
past and present climate systems.  The @code{WaverideR} R package builds upon
existing literature and existing codebase.  The list of articles which are
relevant can be grouped in four subjects; cyclostratigraphic data
analysis,example data sets,the (continuous) wavelet transform and astronomical
solutions.  References for the cyclostratigraphic data analysis articles are:
Stephen Meyers (2019) <doi:10.1016/j.earscirev.2018.11.015>.  Mingsong Li, Linda
Hinnov, Lee Kump (2019) <doi:10.1016/j.cageo.2019.02.011> Stephen Meyers
(2012)<doi:10.1029/2012PA002307> Mingsong Li, Lee R. Kump, Linda A. Hinnov,
Michael E. Mann (2018) <doi:10.1016/j.epsl.2018.08.041>.  Wouters, S., Crucifix,
M., Sinnesael, M., Da Silva, A.C., Zeeden, C., Zivanovic, M., Boulvain, F.,
Devleeschouwer, X. (2022) <doi:10.1016/j.earscirev.2021.103894>.  Wouters, S.,
Da Silva, A.-C., Boulvain, F., and Devleeschouwer, X. (2021)
<doi:10.32614/RJ-2021-039>.  Huang, Norden E., Zhaohua Wu, Steven R. Long,
Kenneth C. Arnold, Xianyao Chen, and Karin Blank (2009)
<doi:10.1142/S1793536909000096>.  Cleveland, W. S.
(1979)<doi:10.1080/01621459.1979.10481038> Hurvich, C.M., Simonoff, J.S., and
Tsai, C.L. (1998) <doi:10.1111/1467-9868.00125>, Golub, G., Heath, M. and Wahba,
G. (1979) <doi:10.2307/1268518>.  References for the example data articles are:
Damien Pas, Linda Hinnov, James E. (Jed) Day, Kenneth Kodama, Matthias
Sinnesael, Wei Liu (2018) <doi:10.1016/j.epsl.2018.02.010>.  Steinhilber,
Friedhelm, Abreu, Jacksiel, Beer, Juerg , Brunner, Irene, Christl, Marcus,
Fischer, Hubertus, @code{HeikkilA}, U., Kubik, Peter, Mann, Mathias, Mccracken,
K. , Miller, Heinrich, Miyahara, Hiroko, Oerter, Hans , Wilhelms, Frank. (2012
<doi:10.1073/pnas.1118965109>.  Christian Zeeden, Frederik Hilgen, Thomas
Westerhold, Lucas Lourens, Ursula RÃ¶hl, Torsten Bickert (2013)
<doi:10.1016/j.palaeo.2012.11.009>.  References for the (continuous) wavelet
transform articles are: Morlet, Jean, Georges Arens, Eliane Fourgeau, and
Dominique Glard (1982a) <doi:10.1190/1.1441328>.  J. Morlet, G. Arens, E.
Fourgeau, D. Giard (1982b) <doi:10.1190/1.1441329>.  Torrence, C., and G. P.
Compo (1998)<https://paos.colorado.edu/research/wavelets/bams_79_01_0061.pdf>,
Gouhier TC, Grinsted A, Simko V (2021) <https://github.com/tgouhier/biwavelet>.
Angi Roesch and Harald Schmidbauer (2018)
<https://CRAN.R-project.org/package=@code{WaveletComp>}.  Russell, Brian, and
Jiajun Han
(2016)<https://www.crewes.org/Documents/@code{ResearchReports/2016/CRR201668.pdf>}.
 Gabor, Dennis (1946) <http://genesis.eecg.toronto.edu/gabor1946.pdf>.  J.
Laskar, P. Robutel, F. Joutel, M. Gastineau, A.C.M. Correia, and B. Levrard, B.
(2004) <doi:10.1051/0004-6361:20041335>.  Laskar, J., Fienga, A., Gastineau, M.,
Manche, H. (2011a) <doi:10.1051/0004-6361/201116836>.  References for the
astronomical solutions articles are: Laskar, J., Gastineau, M., Delisle, J.-B.,
Farres, A., Fienga, A. (2011b <doi:10.1051/0004-6361/201117504>.  J. Laskar
(2019) <doi:10.1016/B978-0-12-824360-2.00004-8>.  Zeebe, Richard E (2017)
<doi:10.3847/1538-3881/aa8cce>.  Zeebe, R. E. and Lourens, L. J. (2019)
<doi:10.1016/j.epsl.2022.117595>.  Richard E. Zeebe Lucas J. Lourens (2022)
<doi:10.1126/science.aax0612>.")
    (license license:gpl2+)))

(define-public r-waver
  (package
    (name "r-waver")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waver" version))
       (sha256
        (base32 "1yhbp1jimx33g4sjigr5vmqqrinz1mdfgvkaaj4y2gcx7sihiiwx"))))
    (properties `((upstream-name . "waver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-geosphere))
    (home-page "https://github.com/pmarchand1/waver")
    (synopsis "Calculate Fetch and Wave Energy")
    (description
     "This package provides functions for calculating the fetch (length of open water
distance along given directions) and estimating wave energy from wind and wave
monitoring data.")
    (license license:gpl3)))

(define-public r-wavemulcor
  (package
    (name "r-wavemulcor")
    (version "3.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wavemulcor" version))
       (sha256
        (base32 "0a9qhcgf0l3zpwq8m476py94wb4rasy6a8xj302y6kwg3gvh1smm"))))
    (properties `((upstream-name . "wavemulcor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveslim r-rcolorbrewer r-plot3d))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wavemulcor")
    (synopsis
     "Wavelet Routines for Global and Local Multiple Regression and Correlation")
    (description
     "Wavelet routines that calculate single sets of wavelet multiple regressions and
correlations, and cross-regressions and cross-correlations from a multivariate
time series.  Dynamic versions of the routines allow the wavelet local multiple
(cross-)regressions and (cross-)correlations to evolve over time.")
    (license license:gpl3)))

(define-public r-waveletsvr
  (package
    (name "r-waveletsvr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletSVR" version))
       (sha256
        (base32 "05sqvqklbz7barf1jfrhd7n4mj60z57sqpikl3lykigl3m9ravhm"))))
    (properties `((upstream-name . "WaveletSVR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-tsutils r-fracdiff r-forecast
                             r-e1071))
    (home-page "https://cran.r-project.org/package=WaveletSVR")
    (synopsis "Wavelet-SVR Hybrid Model for Time Series Forecasting")
    (description
     "The main aim of this package is to combine the advantage of wavelet and support
vector machine models for time series forecasting.  This package also gives the
accuracy measurements in terms of RMSE and MAPE. This package fits the hybrid
Wavelet SVR model for time series forecasting The main aim of this package is to
combine the advantage of wavelet and Support Vector Regression (SVR) models for
time series forecasting.  This package also gives the accuracy measurements in
terms of Root Mean Square Error (RMSE) and Mean Absolute Prediction Error
(MAPE).  This package is based on the algorithm of Raimundo and Okamoto (2018)
<DOI: 10.1109/INFOCT.2018.8356851>.")
    (license license:gpl3)))

(define-public r-wavelets
  (package
    (name "r-wavelets")
    (version "0.3-0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wavelets" version))
       (sha256
        (base32 "07706rsjdmzj46ib2kfm5lfk4bnm2wfw7rby0ixs6x0myyzxdl92"))))
    (properties `((upstream-name . "wavelets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=wavelets")
    (synopsis
     "Functions for Computing Wavelet Filters, Wavelet Transforms and Multiresolution Analyses")
    (description
     "This package contains functions for computing and plotting discrete wavelet
transforms (DWT) and maximal overlap discrete wavelet transforms (MODWT), as
well as their inverses.  Additionally, it contains functionality for computing
and plotting wavelet transform filters that are used in the above decompositions
as well as multiresolution analyses.")
    (license license:gpl2+)))

(define-public r-waveletrf
  (package
    (name "r-waveletrf")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletRF" version))
       (sha256
        (base32 "08czmifw1dz2arz9f4jk76vlwwnf24ha9pm3dfihqkxjcc16dkgz"))))
    (properties `((upstream-name . "WaveletRF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-tsutils r-randomforest r-fracdiff
                             r-forecast))
    (home-page "https://cran.r-project.org/package=WaveletRF")
    (synopsis "Wavelet-RF Hybrid Model for Time Series Forecasting")
    (description
     "The Wavelet Decomposition followed by Random Forest Regression (RF) models have
been applied for time series forecasting.  The maximum overlap discrete wavelet
transform (MODWT) algorithm was chosen as it works for any length of the series.
 The series is first divided into training and testing sets.  In each of the
wavelet decomposed series, the supervised machine learning approach namely
random forest was employed to train the model.  This package also provides
accuracy metrics in the form of Root Mean Square Error (RMSE) and Mean Absolute
Prediction Error (MAPE).  This package is based on the algorithm of Ding et al.
(2021) <DOI: 10.1007/s11356-020-12298-3>.")
    (license license:gpl3)))

(define-public r-waveletmlbestfl
  (package
    (name "r-waveletmlbestfl")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletMLbestFL" version))
       (sha256
        (base32 "0qz5c3w7d0vyxfdvs28cr02ilsiac3nlmc206j7qm9pr735lcrj0"))))
    (properties `((upstream-name . "WaveletMLbestFL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveletml r-describedf r-ceemdanml))
    (home-page "https://cran.r-project.org/package=WaveletMLbestFL")
    (synopsis
     "The Best Wavelet Filter-Level for Prepared Wavelet-Based Models")
    (description
     "Four filters have been chosen namely haar', c6', la8', and bl14 (Kindly refer to
wavelets in CRAN repository for more supported filters).  Levels of
decomposition are 2, 3, 4, etc.  up to maximum decomposition level which is
ceiling value of logarithm of length of the series base 2.  For each combination
two models are run separately.  Results are stored in input'.  First five
metrics are expected to be minimum and last three metrics are expected to be
maximum for a model to be considered good.  Firstly, every metric value (among
first five) is searched in every columns and minimum values are denoted as MIN
and other values are denoted as NA'.  Secondly, every metric (among last three)
is searched in every columns and maximum values are denoted as MAX and other
values are denoted as NA'.  output contains the similar number of rows (which is
8) and columns (which is number filter-level combinations) as of input'.  Values
in output are corresponding NA', MIN or MAX'.  Finally, the column containing
minimum number of NA values is denoted as the best ('FL').  In special case, if
two columns having equal NA', it has been checked among these two columns which
one is having least NA in first five rows and has been inferred as the best.
FL_metrics_values are the corresponding metrics values.  WARIGAANbest is the
data frame (dimension: 1*8) containing different metrics of the best
filter-level combination.  More details can be found in Garai and others (2023)
<doi:10.13140/RG.2.2.11977.42087>.")
    (license license:gpl3)))

(define-public r-waveletml
  (package
    (name "r-waveletml")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletML" version))
       (sha256
        (base32 "0y3aclnrjk3zhw3ls00iwjif1ghdnfjhhglf37kr7f7alqbqg0ax"))))
    (properties `((upstream-name . "WaveletML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets
                             r-tseries
                             r-pso
                             r-neuralnet
                             r-lsts
                             r-forecast
                             r-fints
                             r-fgarch
                             r-earth
                             r-e1071
                             r-caret
                             r-atsa))
    (home-page "https://cran.r-project.org/package=WaveletML")
    (synopsis "Wavelet Decomposition Based Hybrid Machine Learning Models")
    (description
     "Wavelet decomposes a series into multiple sub series called detailed and smooth
components which helps to capture volatility at multi resolution level by
various models.  Two hybrid Machine Learning (ML) models (Artificial Neural
Network and Support Vector Regression have been used) have been developed in
combination with stochastic models, feature selection, and optimization
algorithms for prediction of the data.  The algorithms have been developed
following Paul and Garai (2021) <doi:10.1007/s00500-021-06087-4>.")
    (license license:gpl3)))

(define-public r-waveletlstm
  (package
    (name "r-waveletlstm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletLSTM" version))
       (sha256
        (base32 "1imf51ihwhzga6xscqh5lawyrx3smk6czxpmyahxgd696xg70c1q"))))
    (properties `((upstream-name . "WaveletLSTM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets
                             r-tslstm
                             r-tseries
                             r-dplyr
                             r-caretforecast
                             r-caret))
    (home-page "https://cran.r-project.org/package=WaveletLSTM")
    (synopsis "Wavelet Based LSTM Model")
    (description
     "This package provides a wavelet-based LSTM model is a type of neural network
architecture that uses wavelet technique to pre-process the input data before
passing it through a Long Short-Term Memory (LSTM) network.  The wavelet-based
LSTM model is a powerful approach that combines the benefits of wavelet analysis
and LSTM networks to improve the accuracy of predictions in various
applications.  This package has been developed using the algorithm of Anjoy and
Paul (2017) and Paul and Garai (2021) <DOI:10.1007/s00521-017-3289-9>
<doi:10.1007/s00500-021-06087-4>.")
    (license license:gpl3)))

(define-public r-waveletknn
  (package
    (name "r-waveletknn")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletKNN" version))
       (sha256
        (base32 "1pr2w74r9qrbwdhacqa4xbyk5xd33sk208slgaq4dydbx3ndh5wp"))))
    (properties `((upstream-name . "WaveletKNN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets
                             r-tseries
                             r-metrics
                             r-dplyr
                             r-caretforecast
                             r-caret))
    (home-page "https://cran.r-project.org/package=WaveletKNN")
    (synopsis "Wavelet Based K-Nearest Neighbor Model")
    (description
     "The employment of the Wavelet decomposition technique proves to be highly
advantageous in the modelling of noisy time series data.  Wavelet decomposition
technique using the \"haar\" algorithm has been incorporated to formulate a hybrid
Wavelet KNN (K-Nearest Neighbour) model for time series forecasting, as proposed
by Anjoy and Paul (2017) <DOI:10.1007/s00521-017-3289-9>.")
    (license license:gpl3)))

(define-public r-waveletgbm
  (package
    (name "r-waveletgbm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletGBM" version))
       (sha256
        (base32 "0jilj6mgq6wb6a5zb4j9backfgyf38w687ppbyfsz40263srj081"))))
    (properties `((upstream-name . "WaveletGBM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets
                             r-tseries
                             r-metrics
                             r-gbm
                             r-dplyr
                             r-caretforecast
                             r-caret))
    (home-page "https://cran.r-project.org/package=WaveletGBM")
    (synopsis "Wavelet Based Gradient Boosting Method")
    (description
     "Wavelet decomposition method is very useful for modelling noisy time series
data.  Wavelet decomposition using haar algorithm has been implemented to
developed hybrid Wavelet GBM (Gradient Boosting Method) model for time series
forecasting using algorithm by Anjoy and Paul (2017)
<DOI:10.1007/s00521-017-3289-9>.")
    (license license:gpl3)))

(define-public r-waveletgarch
  (package
    (name "r-waveletgarch")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletGARCH" version))
       (sha256
        (base32 "0dj5bmvzfhj1cpn8qi2ax3iipr7jlq0f9vk4b1idqgh5dmdi8lh6"))))
    (properties `((upstream-name . "WaveletGARCH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-rugarch r-fracdiff r-forecast
                             r-fints))
    (home-page "https://cran.r-project.org/package=WaveletGARCH")
    (synopsis "Fit the Wavelet-GARCH Model to Volatile Time Series Data")
    (description
     "Fits the combination of Wavelet-GARCH model for time series forecasting using
algorithm by Paul (2015) <doi:10.3233/MAS-150328>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-waveletets
  (package
    (name "r-waveletets")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletETS" version))
       (sha256
        (base32 "1cxzhmyhvq7ip32csqlxzfxx6gxnwn49vvm8xx3idal4nkdlids1"))))
    (properties `((upstream-name . "WaveletETS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets
                             r-tseries
                             r-metrics
                             r-forecast
                             r-dplyr
                             r-caretforecast))
    (home-page "https://cran.r-project.org/package=WaveletETS")
    (synopsis "Wavelet Based Error Trend Seasonality Model")
    (description
     "ETS stands for Error, Trend, and Seasonality, and it is a popular time series
forecasting method.  Wavelet decomposition can be used for denoising,
compression, and feature extraction of signals.  By removing the high-frequency
components, wavelet decomposition can remove noise from the data while
preserving important features.  A hybrid Wavelet ETS (Error Trend-Seasonality)
model has been developed for time series forecasting using algorithm of Anjoy
and Paul (2017) <DOI:10.1007/s00521-017-3289-9>.")
    (license license:gpl3)))

(define-public r-waveletcomp
  (package
    (name "r-waveletcomp")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletComp" version))
       (sha256
        (base32 "0f3a9rq3sz9nv35vsypnkn7xs3dpsg2qjqi51j3brhw05zincpav"))))
    (properties `((upstream-name . "WaveletComp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page
     "http://www.hs-stat.com/projects/WaveletComp/WaveletComp_guided_tour.pdf")
    (synopsis "Computational Wavelet Analysis")
    (description
     "Wavelet analysis and reconstruction of time series, cross-wavelets and
phase-difference (with filtering options), significance with simulation
algorithms.")
    (license license:gpl2)))

(define-public r-waveletarima
  (package
    (name "r-waveletarima")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletArima" version))
       (sha256
        (base32 "00pg446c6vy3kgjlyzds35nlfgwnkl7a63pjcgbqy80gb3y6snhw"))))
    (properties `((upstream-name . "WaveletArima")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-fracdiff r-forecast))
    (home-page "https://cran.r-project.org/package=WaveletArima")
    (synopsis "Wavelet-ARIMA Model for Time Series Forecasting")
    (description
     "Noise in the time-series data significantly affects the accuracy of the ARIMA
model.  Wavelet transformation decomposes the time series data into
subcomponents to reduce the noise and help to improve the model performance.
The wavelet-ARIMA model can achieve higher prediction accuracy than the
traditional ARIMA model.  This package provides Wavelet-ARIMA model for time
series forecasting based on the algorithm by Aminghafari and Poggi (2012) and
Paul and Anjoy (2018) <doi:10.1142/S0219691307002002>
<doi:10.1007/s00704-017-2271-x>.")
    (license license:gpl3)))

(define-public r-waveletann
  (package
    (name "r-waveletann")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaveletANN" version))
       (sha256
        (base32 "1j16jsnz9j735348a5ybgrl7p6bg45gwwp863y4pg85h4mwg37c9"))))
    (properties `((upstream-name . "WaveletANN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavelets r-metrics r-fracdiff r-forecast))
    (home-page "https://cran.r-project.org/package=WaveletANN")
    (synopsis "Wavelet ANN Model")
    (description
     "The wavelet and ANN technique have been combined to reduce the effect of data
noise.  This wavelet-ANN conjunction model is able to forecast time series data
with better accuracy than the traditional time series model.  This package fits
hybrid Wavelet ANN model for time series forecasting using algorithm by Anjoy
and Paul (2017) <DOI: 10.1007/s00521-017-3289-9>.")
    (license license:gpl3)))

(define-public r-waved
  (package
    (name "r-waved")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waved" version))
       (sha256
        (base32 "120dh64288daiq3k9ixcqxscy3brafwvv1964ndab1am0w466bqc"))))
    (properties `((upstream-name . "waved")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://www.jstatsoft.org/v21/i02")
    (synopsis "Wavelet Deconvolution")
    (description
     "Makes available code necessary to reproduce figures and tables in papers on the
@code{WaveD} method for wavelet deconvolution of noisy signals as presented in
The @code{WaveD} Transform in R, Journal of Statistical Software Volume 21, No.
3, 2007.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-waveband
  (package
    (name "r-waveband")
    (version "4.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waveband" version))
       (sha256
        (base32 "0z0a273z3gaqfhpjgqlxql2faz794xpr3yhnzd26r9r5680niq3a"))))
    (properties `((upstream-name . "waveband")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=waveband")
    (synopsis "Computes Credible Intervals for Bayesian Wavelet Shrinkage")
    (description
     "Computes Bayesian wavelet shrinkage credible intervals for nonparametric
regression.  The method uses cumulants to derive Bayesian credible intervals for
wavelet regression estimates.  The first four cumulants of the posterior
distribution of the estimates are expressed in terms of the observed data and
integer powers of the mother wavelet functions.  These powers are closely
approximated by linear combinations of wavelet scaling functions at an
appropriate finer scale.  Hence, a suitable modification of the discrete wavelet
transform allows the posterior cumulants to be found efficiently for any data
set.  Johnson transformations then yield the credible intervals themselves.
Barber, S., Nason, G.P. and Silverman, B.W. (2002)
<doi:10.1111/1467-9868.00332>.")
    (license license:gpl2+)))

(define-public r-wav
  (package
    (name "r-wav")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wav" version))
       (sha256
        (base32 "0yn7fc7mlrv0pkpr707v4vbsky6pg2mask4czipc8yqniabxxc29"))))
    (properties `((upstream-name . "wav")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/mlverse/wav")
    (synopsis "Read and Write WAV Files")
    (description
     "Efficiently read and write Waveform (WAV) audio files
<https://en.wikipedia.org/wiki/WAV>.  Support for unsigned 8 bit Pulse-code
modulation (PCM), signed 12, 16, 24 and 32 bit PCM and other encodings.")
    (license license:expat)))

(define-public r-watson
  (package
    (name "r-watson")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "watson" version))
       (sha256
        (base32 "154sq86ghabc90bf64402gf84f3wjcakn39djl0ix2gwh5awlcqi"))))
    (properties `((upstream-name . "watson")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tinflex r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/lsablica/watson")
    (synopsis "Fitting and Simulating Mixtures of Watson Distributions")
    (description
     "This package provides tools for fitting and simulating mixtures of Watson
distributions.  The package is described in Sablica, Hornik and Leydold (2026)
<doi:10.18637/jss.v115.i04>.  The random sampling scheme of the package offers
two sampling algorithms that are based of the results of Sablica, Hornik and
Leydold (2022) <doi:10.1080/10618600.2024.2416521>.  What is more, the package
offers a smart tool to combine these two methods, and based on the selected
parameters, it approximates the relative sampling speed for both methods and
picks the faster one.  In addition, the package offers a fitting function for
the mixtures of Watson distribution, that uses the expectation-maximization (EM)
algorithm.  Special features are the possibility to use multiple variants of the
E-step and M-step, sparse matrices for the data representation and state of the
art methods for numerical evaluation of needed special functions using the
results of Sablica and Hornik (2022) <doi:10.1090/mcom/3690> and Sablica and
Hornik (2024) <doi:10.1016/j.jmaa.2024.128262>.")
    (license license:gpl3)))

(define-public r-wats
  (package
    (name "r-wats")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Wats" version))
       (sha256
        (base32 "0xld5163srlyqd9rbmi618drkrimys7ifgzrq05ky22ns2qa4qfv"))))
    (properties `((upstream-name . "Wats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tibble
                             r-testit
                             r-rlang
                             r-rcolorbrewer
                             r-lubridate
                             r-ggplot2
                             r-dplyr
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://ouhscbbmc.github.io/Wats/")
    (synopsis "Wrap Around Time Series Graphics")
    (description
     "Wrap-around Time Series (WATS) plots for interrupted time series designs with
seasonal patterns.  Longitudinal trajectories are shown in both Cartesian and
polar coordinates.  In many scenarios, a WATS plot more clearly shows the
existence and effect size of of an intervention.  This package accompanies
\"Graphical Data Analysis on the Circle: Wrap-Around Time Series Plots for
(Interrupted) Time Series Designs\" by Rodgers, Beasley, & Schuelke (2014)
<doi:10.1080/00273171.2014.946589>; see citation(\"Wats\") for details.")
    (license license:expat)))

(define-public r-wateryeartype
  (package
    (name "r-wateryeartype")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waterYearType" version))
       (sha256
        (base32 "09brbqcd41khycz9lhn84w68wpk8lsdnzb6lzc10gm5s5ambgj06"))))
    (properties `((upstream-name . "waterYearType")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=waterYearType")
    (synopsis "Sacramento and San Joaquin Valley Water Year Types")
    (description
     "This package provides Water Year Hydrologic Classification Indices based on
measured unimpaired runoff (in million acre-feet).  Data is provided by
California Department of Water Resources and subject to revision.")
    (license license:expat)))

(define-public r-waterquality
  (package
    (name "r-waterquality")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waterquality" version))
       (sha256
        (base32 "06dj21zi3g7m93iq588w1c5cpvakd1mjra79y3p4ibwrkizdqzhl"))))
    (properties `((upstream-name . "waterquality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-purrr r-magrittr r-dplyr r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RAJohansen/waterquality")
    (synopsis "Satellite Derived Water Quality Detection Algorithms")
    (description
     "The main purpose of waterquality is to quickly and easily convert
satellite-based reflectance imagery into one or many well-known water quality
algorithms designed for the detection of harmful algal blooms or the following
pigment proxies: chlorophyll-a, blue-green algae (phycocyanin), and turbidity.
Johansen et al. (2019) <doi:10.21079/11681/35053>.")
    (license license:expat)))

(define-public r-waterfalls
  (package
    (name "r-waterfalls")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waterfalls" version))
       (sha256
        (base32 "1wj1wlih1fh3y3wj3czhz5fzik7i499l6pycj44rq8rpvi7bkj0d"))))
    (properties `((upstream-name . "waterfalls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://github.com/hughparsonage/waterfalls")
    (synopsis "Create Waterfall Charts using 'ggplot2' Simply")
    (description
     "This package provides a not uncommon task for quants is to create waterfall
charts'.  There seems to be no simple way to do this in ggplot2 currently.  This
package contains a single function (waterfall) that simply draws a waterfall
chart in a ggplot2 object.  Some flexibility is provided, though often the
object created will need to be modified through a theme.")
    (license license:expat)))

(define-public r-waterbalancer
  (package
    (name "r-waterbalancer")
    (version "0.1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaterBalanceR" version))
       (sha256
        (base32 "0a4d2vila5dv6gilgwnv9y6zz9vw8sbnpaa0gi7zcsricx5kdili"))))
    (properties `((upstream-name . "WaterBalanceR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-tidyr
                             r-terra
                             r-stringr
                             r-stars
                             r-sp
                             r-sf
                             r-scales
                             r-rvest
                             r-rselenium
                             r-rlang
                             r-readxl
                             r-rdwd
                             r-rcurl
                             r-raster
                             r-openeo
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-gridextra
                             r-ggplot2
                             r-geosphere
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.5281/zenodo.15046338")
    (synopsis "Calculate High Resolution Water Balance of Starch Potatoes")
    (description
     "Calculates the water balance of starch potatoes from Normalized Distance
Vegetation Index (NDVI) images, German Weather Service (DWD) reference
evapotranspiration, German Weather Service RADOLAN precipitation data and
irrigation information.  For more details see Piernicke et al. (2025)
<doi:10.3390/rs17183227>.")
    (license license:agpl3)))

(define-public r-watcher
  (package
    (name "r-watcher")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "watcher" version))
       (sha256
        (base32 "1rsc6gfgv248s1dc8in8zr3a4igbg2yzvnihbq957a6c6cj5h3nn"))))
    (properties `((upstream-name . "watcher")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-rlang r-r6 r-later))
    (home-page "https://watcher.r-lib.org")
    (synopsis "Watch the File System for Changes")
    (description
     "R binding for libfswatch', a file system monitoring library.  Watch files, or
directories recursively, for changes in the background.  Log activity, or call
an R function, upon every change event.")
    (license license:expat)))

(define-public r-waspr
  (package
    (name "r-waspr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waspr" version))
       (sha256
        (base32 "1l2q4bc3wx81a6ay7v118yw7rxl9aqih6xa4rdbjd9644ng27whn"))))
    (properties `((upstream-name . "waspr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/joliencremers/waspr")
    (synopsis "Wasserstein Barycenters of Subset Posteriors")
    (description
     "This package provides functions to compute Wasserstein barycenters of subset
posteriors using the swapping algorithm developed by Puccetti, RÃ¼schendorf and
Vanduffel (2020) <doi:10.1016/j.jmaa.2017.02.003>.  The Wasserstein barycenter
is a geometric approach for combining subset posteriors.  It allows for parallel
and distributed computation of the posterior in case of complex models and/or
big datasets, thereby increasing computational speed tremendously.")
    (license license:gpl3)))

(define-public r-waspasr
  (package
    (name "r-waspasr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waspasR" version))
       (sha256
        (base32 "09c1w9c8ql1xcpwsc0j2p9d0fmzkkq22jn16xvdl8hmlyc409br5"))))
    (properties `((upstream-name . "waspasR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=waspasR")
    (synopsis
     "Tool Kit to Implement a W.A.S.P.A.S. Based Multi-Criteria Decision Analysis Solution")
    (description
     "This package provides a set of functions to implement decision-making systems
based on the W.A.S.P.A.S. method (Weighted Aggregated Sum Product Assessment),
Chakraborty and Zavadskas (2012) <doi:10.5755/j01.eee.122.6.1810>.  So this
package offers functions that analyze and validate the raw data, which must be
entered in a determined format; extract specific vectors and matrices from this
raw database; normalize the input data; calculate rankings by intermediate
methods; apply the lambda parameter for the main method; and a function that
does everything at once.  The package has an example database called choppers,
with which the user can see how the input data should be organized so that
everything works as recommended by the decision methods based on multiple
criteria that this package solves.  Basically, the data are composed of a set of
alternatives, which will be ranked, a set of choice criteria, a matrix of values
for each Alternative-Criterion relationship, a vector of weights associated with
the criteria, since certain criteria are considered more important than others,
as well as a vector that defines each criterion as cost or benefit, this
determines the calculation formula, as there are those criteria that we want the
highest possible value (e.g. durability) and others that we want the lowest
possible value (e.g. price).")
    (license license:gpl2+)))

(define-public r-wasp
  (package
    (name "r-wasp")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WASP" version))
       (sha256
        (base32 "1jjas0qklb3dyax4x26c327l59biyym5m2x6mv8z7dnkyfrw3vfq"))))
    (properties `((upstream-name . "WASP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-waveslim
                             r-tidyr
                             r-sp
                             r-readr
                             r-ggplot2
                             r-fitdistrplus))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zejiang-unsw/WASP#readme")
    (synopsis "Wavelet System Prediction")
    (description
     "The wavelet-based variance transformation method is used for system modelling
and prediction.  It refines predictor spectral representation using Wavelet
Theory, which leads to improved model specifications and prediction accuracy.
Details of methodologies used in the package can be found in Jiang, Z., Sharma,
A., & Johnson, F. (2020) <doi:10.1029/2019WR026962>, Jiang, Z., Rashid, M. M.,
Johnson, F., & Sharma, A. (2020) <doi:10.1016/j.envsoft.2020.104907>, and Jiang,
Z., Sharma, A., & Johnson, F. (2021) <doi:10.1016/J.JHYDROL.2021.126816>.")
    (license license:gpl3)))

(define-public r-washr
  (package
    (name "r-washr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "washr" version))
       (sha256
        (base32 "0c8rvgbiqfn6n36rhp9i8czzbb3qywddj97x9vixr53vq22m96gz"))))
    (properties `((upstream-name . "washr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usethis
                             r-rlang
                             r-pkgdown
                             r-devtools
                             r-desc
                             r-cffr))
    (native-inputs (list r-knitr))
    (home-page "https://openwashdata.github.io/washr/")
    (synopsis
     "Publication Toolkit for Water, Sanitation and Hygiene (WASH) Data")
    (description
     "This package provides a toolkit to set up an R data package in a consistent
structure.  Automates tasks like tidy data export, data dictionary
documentation, README and website creation, and citation management.")
    (license license:gpl3+)))

(define-public r-washi
  (package
    (name "r-washi")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "washi" version))
       (sha256
        (base32 "0n1n4vkgcr63vm1b52jfy9jk8rq6paj8hcgfmi9frsi84wbxgvpy"))))
    (properties `((upstream-name . "washi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-systemfonts
                             r-scales
                             r-officer
                             r-ggplot2
                             r-flextable
                             r-cli))
    (home-page "https://github.com/WA-Department-of-Agriculture/washi")
    (synopsis "Washington Soil Health Initiative Branding")
    (description
     "Create plots and tables in a consistent style with @code{WaSHI} (Washington Soil
Health Initiative) branding.  Use washi to easily style your ggplot2 plots and
flextable tables.")
    (license license:expat)))

(define-public r-washer
  (package
    (name "r-washer")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "washeR" version))
       (sha256
        (base32 "082myz7lw9dyk4ygyj0q39n4h1gghsd1q7667ngzxa20lm0658wd"))))
    (properties `((upstream-name . "washeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gplots))
    (home-page "https://cran.r-project.org/package=washeR")
    (synopsis "Time Series Outlier Detection")
    (description
     "Time series outlier detection with non parametric test.  This is a new outlier
detection methodology (washer): efficient for time saving elaboration and
implementation procedures, adaptable for general assumptions and for needing
very short time series, reliable and effective as involving robust non
parametric test.  You can find two approaches: single time series (a vector) and
grouped time series (a data frame).  For other informations: Andrea Venturini
(2011) Statistica - Universita di Bologna, Vol.71, pp.329-344.  For an informal
explanation look at R-bloggers on web.")
    (license license:gpl2+)))

(define-public r-washdata
  (package
    (name "r-washdata")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "washdata" version))
       (sha256
        (base32 "17hmhcnh53fivxaywa0hvjl9y527ms2pqlapd1wvyx3gjqkggwyg"))))
    (properties `((upstream-name . "washdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/katilingban/washdata/")
    (synopsis "Urban Water and Sanitation Survey Dataset")
    (description
     "Urban water and sanitation survey dataset collected by Water and Sanitation for
the Urban Poor (WSUP) with technical support from Valid International.  These
citywide surveys have been collecting data allowing water and sanitation service
levels across the entire city to be characterised, while also allowing more
detailed data to be collected in areas of the city of particular interest.
These surveys are intended to generate useful information for others working in
the water and sanitation sector.  Current release version includes datasets
collected from a survey conducted in Dhaka, Bangladesh in March 2017.  This
survey in Dhaka is one of a series of surveys to be conducted by WSUP in various
cities in which they operate including Accra, Ghana; Nakuru, Kenya;
Antananarivo, Madagascar; Maputo, Mozambique; and, Lusaka, Zambia.  This package
will be updated once the surveys in other cities are completed and datasets have
been made available.")
    (license license:cc0)))

(define-public r-warpmix
  (package
    (name "r-warpmix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "warpMix" version))
       (sha256
        (base32 "13zbl4aifhg7j5b3vpwgzgs09hr7yblz0rckmj5qh40s78j8cpfn"))))
    (properties `((upstream-name . "warpMix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-nlme
                             r-mass
                             r-lme4
                             r-fields
                             r-fda))
    (home-page "https://cran.r-project.org/package=warpMix")
    (synopsis
     "Mixed Effects Modeling with Warping for Functional Data Using B-Spline")
    (description
     "Mixed effects modeling with warping for functional data using B- spline.
Warping coefficients are considered as random effects, and warping functions are
general functions, parameters representing the projection onto B- spline basis
of a part of the warping functions.  Warped data are modelled by a linear mixed
effect functional model, the noise is Gaussian and independent from the warping
functions.")
    (license license:gpl3+)))

(define-public r-warnepi
  (package
    (name "r-warnepi")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WarnEpi" version))
       (sha256
        (base32 "1p1hdgxy4y7sap0kcqcz4y5d65lxqgxsga7qmkdfkspiwfyprf8b"))))
    (properties `((upstream-name . "WarnEpi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/pan-mingyue/WarnEpi")
    (synopsis "Comprehensive Tool for Early Warning in Infectious Disease")
    (description
     "Infectious disease surveillance requires early outbreak detection.  This package
provides statistical tools for analyzing time-series monitoring data through
three core methods: a) EWMA (Exponentially Weighted Moving Average) b)
Modified-CUSUM (Modified Cumulative Sum) c) Adjusted-Serfling models
Methodologies are based on: - Wang et al. (2010) <doi:10.1016/j.jbi.2009.08.003>
- Wang et al. (2015) <doi:10.1371/journal.pone.0119923> Designed for
epidemiologists and public health researchers working with disease surveillance
systems.")
    (license license:gpl3+)))

(define-public r-warn
  (package
    (name "r-warn")
    (version "1.2-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WARN" version))
       (sha256
        (base32 "1dgi4q6gn6550crqmpkzhk7d0d6s76ykfq94srrgs0rgwmswf455"))))
    (properties `((upstream-name . "WARN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=WARN")
    (synopsis "Weaning Age Reconstruction with Nitrogen Isotope Analysis")
    (description
     "This estimates precise weaning ages for a given skeletal population by analyzing
the stable nitrogen isotope ratios of them.  Bone collagen turnover rates
estimated anew and the approximate Bayesian computation (ABC) were adopted in
this package.")
    (license license:gpl3+)))

(define-public r-warehousetools
  (package
    (name "r-warehousetools")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "warehouseTools" version))
       (sha256
        (base32 "1d6s58ihl58836clxrpfg9mc106c6rjcx5v8ibrziw3p157b6xk9"))))
    (properties `((upstream-name . "warehouseTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr r-clustersim))
    (home-page "https://cran.r-project.org/package=warehouseTools")
    (synopsis
     "Heuristics for Solving the Traveling Salesman Problem in Warehouse Layouts")
    (description
     "Heuristic methods to solve the routing problems in a warehouse management.
Package includes several heuristics such as the Midpoint, Return, S-Shape and
Semi-Optimal Heuristics for designation of the pickerâs route in order
picking.  The heuristics aim to provide the acceptable travel distances while
considering warehouse layout constraints such as aisles and shelves.  It also
includes implementation of the COPRAS (COmplex PRoportional ASsessment) method
for supporting selection of locations to be visited by the picker in shared
storage systems.  The package is designed to facilitate more efficient warehouse
routing and logistics operations.  see: Bartholdi, J. J., Hackman, S. T. (2019).
\"WAREHOUSE & DISTRIBUTION SCIENCE. Release 0.98.1.\" The Supply Chain & Logistics
Institute.  H. Milton Stewart School of Industrial and Systems Engineering.
Georgia Institute of Technology.
<https://www.warehouse-science.com/book/editions/wh-sci-0.98.1.pdf>.")
    (license license:gpl3)))

(define-public r-warden
  (package
    (name "r-warden")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WARDEN" version))
       (sha256
        (base32 "0m48gb2z45511wm5hwknqmpq0klk6m7vid7q3f81kfyhffryyfmj"))))
    (properties `((upstream-name . "WARDEN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-rcpp
                             r-purrr
                             r-progressr
                             r-mass
                             r-magrittr
                             r-lifecycle
                             r-future
                             r-foreach
                             r-flexsurv
                             r-dofuture
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://jsanchezalv.github.io/WARDEN/")
    (synopsis
     "Workflows for Health Technology Assessments in R using Discrete EveNts")
    (description
     "Toolkit to support and perform discrete event simulations with and without
resource constraints in the context of health technology assessments (HTA).  The
package focuses on cost-effectiveness modelling and aims to be submission-ready
to relevant HTA bodies in alignment with NICE TSD 15
<https://sheffield.ac.uk/nice-dsu/tsds/patient-level-simulation>.  More details
an examples can be found in the package website
<https://jsanchezalv.github.io/WARDEN/>.")
    (license license:gpl3+)))

(define-public r-warbler
  (package
    (name "r-warbler")
    (version "1.1.37")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "warbleR" version))
       (sha256
        (base32 "1walcj3lpdk5ch42rd1g6ia3gak0zk1pfv7hmpl18dwn6m944fqa"))))
    (properties `((upstream-name . "warbleR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list sox libsndfile ghostscript gdal fftw))
    (propagated-inputs (list r-tuner
                             r-testthat
                             r-seewave
                             r-rjson
                             r-rcurl
                             r-rcpp
                             r-pbapply
                             r-naturesounds
                             r-monitor
                             r-knitr
                             r-httr
                             r-fftw
                             r-dtw
                             r-curl
                             r-cli
                             r-bioacoustics))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://marce10.github.io/warbleR/")
    (synopsis "Streamline Bioacoustic Analysis")
    (description
     "This package provides functions aiming to facilitate the analysis of the
structure of animal acoustic signals in R'. @code{warbleR} makes use of the
basic sound analysis tools from the packages @code{tuneR} and seewave', and
offers new tools for exploring and quantifying acoustic signal structure.  The
package allows to organize and manipulate multiple sound files, create
spectrograms of complete recordings or individual signals in different formats,
run several measures of acoustic structure, and characterize different
structural levels in acoustic signals (Araya-Salas et al 2016
<doi:10.1111/2041-210X.12624>).")
    (license license:gpl2+)))

(define-public r-warabandi
  (package
    (name "r-warabandi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "warabandi" version))
       (sha256
        (base32 "0b1g2fpshhkd15b6fz4v3qwf425p5ahbh57acclqq6znl1acl1hg"))))
    (properties `((upstream-name . "warabandi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readtext r-lubridate r-flextable))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=warabandi")
    (synopsis "Roster Generation of Turn for Weekdays:'warabandi'")
    (description
     "It generates the roster of turn for an outlet which is flowing (water) 24X7 or
168 hours towards the area under command or agricutural area (to be irrigated).
The area under command is differentially owned by different individual farmers.
The Outlet runs for free of cost to irrigate the area under command 24X7.  So,
flow time of the outlet has to be divided based on an area owned by an
individual farmer and the location of his land or farm.  This roster is known as
warabandi and its generation in agriculture practices is a very tedious task.
Calculations of time in microseconds are more error-prone, especially whenever
it is performed by hands.  That division of flow time for an individual farmer
can be calculated by warabandi'.  However, it generates a full publishable
report for an outlet and all the farmers who have farms subjected to be
irrigated.  It reduces error risk and makes a more reproducible roster.  For
more details about warabandi system you can found elsewhere in Bandaragoda
DJ(1995) <https://publications.iwmi.org/pdf/H_17571i.pdf>.")
    (license license:gpl3)))

(define-public r-waou
  (package
    (name "r-waou")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waou" version))
       (sha256
        (base32 "1dba05c8dwjdiwhiwnipi8d8lczzinxznirs8vnk1k5fbp2n5d78"))))
    (properties `((upstream-name . "waou")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-stringr
                             r-purrr
                             r-nonprobsvy
                             r-mice
                             r-glue
                             r-glmnet
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=waou")
    (synopsis "Weighting All of Us")
    (description
     "Utilities for using a probability sample to reweight prevalence estimates
calculated from the All of Us research program.  Weighted estimates will still
not be representative of the general U.S. population.  However, they will
provide an early indication for how unweighted estimates may be biased by the
sampling bias in the All of Us sample.")
    (license license:agpl3+)))

(define-public r-wanova
  (package
    (name "r-wanova")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WAnova" version))
       (sha256
        (base32 "1c4fpl8n5ynp3fwrpqnwb2v16gv8slchy3pffga9yldr0hfn957a"))))
    (properties `((upstream-name . "WAnova")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-suppdists r-car))
    (home-page "https://cran.r-project.org/package=WAnova")
    (synopsis "Welch's Anova from Summary Statistics")
    (description
     "This package provides the functions to perform a Welch's one-way Anova with
fixed effects based on summary statistics (sample size, means, standard
deviation) and the Games-Howell post hoc test for multiple comparisons and
provides the effect size estimator adjusted omega squared.  In addition sample
size estimation can be computed based on Levy's method, and a Monte Carlo
simulation is included to bootstrap residual normality and homoscedasticity
Welch, B. L. (1951) <doi:10.1093/biomet/38.3-4.330> Kirk, R. E. (1996)
<doi:10.1177/0013164496056005002> Carroll, R. M., & Nordholm, L. A. (1975)
<doi:10.1177/001316447503500304> Albers, C., & Lakens, D. (2018)
<doi:10.1016/j.jesp.2017.09.004> Games, P. A., & Howell, J. F. (1976)
<doi:10.2307/1164979> Levy, K. J. (1978a) <doi:10.1080/00949657808810246>
Show-Li, J., & Gwowen, S. (2014) <doi:10.1111/bmsp.12006>.")
    (license license:gpl3+)))

(define-public r-wand
  (package
    (name "r-wand")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wand" version))
       (sha256
        (base32 "0y9xmh9a93lnadg83i223j2nf77jazz8m1ck1bmdf5jwj4vyzaqa"))))
    (properties `((upstream-name . "wand")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://gitlab.com/hrbrmstr/wand")
    (synopsis "Retrieve 'Magic' Attributes from Files and Directories")
    (description
     "MIME types are shorthand descriptors for file contents and can be determined
from \"magic\" bytes in file headers, file contents or intuited from file
extensions.  Tools are provided to perform curated \"magic\" tests as well as
mapping MIME types from a database of over 1,500 extension mappings.")
    (license license:expat)))

(define-public r-wamasim
  (package
    (name "r-wamasim")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WaMaSim" version))
       (sha256
        (base32 "0sa7qd2bpn3sp06mlpissxxkfhg7j1d07nnwlnz7nyg7pivwnpan"))))
    (properties `((upstream-name . "WaMaSim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr))
    (home-page "https://github.com/scheidan/WaMaSim")
    (synopsis
     "Simulate Rehabilitation Strategies for Water Distribution Systems")
    (description
     "The outcome of various rehabilitation strategies for water distribution systems
can be modeled with the Water Management Simulator (@code{WaMaSim}).  Pipe
breaks and the corresponding damage and rehabilitation costs are simulated.  It
is mainly intended to be used as educational tool for the Water Infrastructure
Experimental and Computer Laboratory at ETH Zurich, Switzerland.")
    (license license:gpl3)))

(define-public r-wals
  (package
    (name "r-wals")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WALS" version))
       (sha256
        (base32 "0rv61z62qfs0ss80lfv2jb537ixqfdwap7xbk0a1fwfr9h4zhfgw"))))
    (properties `((upstream-name . "WALS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-mass r-formula))
    (home-page "https://github.com/kevhuy/WALS")
    (synopsis "Weighted-Average Least Squares Model Averaging")
    (description
     "This package implements Weighted-Average Least Squares model averaging for
negative binomial regression models of Huynh (2024)
<doi:10.48550/@code{arXiv.2404.11324>}, generalized linear models of De Luca,
Magnus, Peracchi (2018) <doi:10.1016/j.jeconom.2017.12.007> and linear
regression models of Magnus, Powell, Pruefer (2010)
<doi:10.1016/j.jeconom.2009.07.004>, see also Magnus, De Luca (2016)
<doi:10.1111/joes.12094>.  Weighted-Average Least Squares for the linear
regression model is based on the original MATLAB code by Magnus and De Luca
<https://www.janmagnus.nl/items/WALS.pdf>, see also Kumar, Magnus (2013)
<doi:10.1007/s13571-013-0060-9> and De Luca, Magnus (2011)
<doi:10.1177/1536867X1201100402>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-walrus
  (package
    (name "r-walrus")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walrus" version))
       (sha256
        (base32 "0z674sg78rdv9rmqr7s4w9rw8diciifwr4bc2v57yfvp0n9gcys4"))))
    (properties `((upstream-name . "walrus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wrs2 r-r6 r-jmvcore r-ggplot2))
    (home-page "https://github.com/jamovi/walrus")
    (synopsis "Robust Statistical Methods")
    (description
     "This package provides a toolbox of common robust statistical tests, including
robust descriptives, robust t-tests, and robust ANOVA. It is also available as a
module for jamovi (see <https://www.jamovi.org> for more information).  Walrus
is based on the WRS2 package by Patrick Mair, which is in turn based on the
scripts and work of Rand Wilcox.  These analyses are described in depth in the
book Introduction to Robust Estimation & Hypothesis Testing'.")
    (license license:gpl3)))

(define-public r-walmartapi
  (package
    (name "r-walmartapi")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walmartAPI" version))
       (sha256
        (base32 "1nng8izncj2nmmpywn1ggpzvjh8q7y3q6260qhy9kbmvrrl26spf"))))
    (properties `((upstream-name . "walmartAPI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-httr
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/EmilHvitfeldt/walmartAPI")
    (synopsis "Walmart Open API Wrapper")
    (description
     "This package provides API access to the Walmart Open API
<https://developer.walmartlabs.com/>, that contains data about stores, Value of
the day and products which includes names, sale prices, shipping rates and
taxonomies.")
    (license license:expat)))

(define-public r-wally
  (package
    (name "r-wally")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wally" version))
       (sha256
        (base32 "1d03vxn6q7v0nsrkd7dxkkv3siysgicv6c13fkvwmypln9vsl6sl"))))
    (properties `((upstream-name . "wally")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-riskregression r-prodlim r-data-table))
    (home-page "https://cran.r-project.org/package=wally")
    (synopsis "The Wally Calibration Plot for Risk Prediction Models")
    (description
     "This package provides a prediction model is calibrated if, roughly, for any
percentage x we can expect that x subjects out of 100 experience the event among
all subjects that have a predicted risk of x%.  A calibration plot provides a
simple, yet useful, way of assessing the calibration assumption.  The Wally plot
consists of a sequence of usual calibration plots.  Among the plots contained
within the sequence, one is the actual calibration plot which has been obtained
from the data and the others are obtained from similar simulated data under the
calibration assumption.  It provides the investigator with a direct visual
understanding of the shape and sampling variability that are common under the
calibration assumption.  The original calibration plot from the data is included
randomly among the simulated calibration plots, similarly to a police lineup.
If the original calibration plot is not easily identified then the calibration
assumption is not contradicted by the data.  The method handles the common
situations in which the data contain censored observations and occurrences of
competing events.")
    (license license:gpl2+)))

(define-public r-wallomicsdata
  (package
    (name "r-wallomicsdata")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WallomicsData" version))
       (sha256
        (base32 "1bv2v0gjb6v5p7rmm8nc00xnkdw60552siyfhz4y60wm1cygclbq"))))
    (properties `((upstream-name . "WallomicsData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=WallomicsData")
    (synopsis
     "Datasets for Multi-Omics Integration in a Plant Abiotic Stress Context")
    (description
     "Datasets from the @code{WallOmics} project.  Contains phenomics, metabolomics,
proteomics and transcriptomics data collected from two organs of five ecotypes
of the model plant Arabidopsis thaliana exposed to two temperature growth
conditions.  Exploratory and integrative analyses of these data are presented in
Durufle et al (2020) <doi:10.1093/bib/bbaa166> and Durufle et al (2020)
<doi:10.3390/cells9102249>.")
    (license license:gpl3)))

(define-public r-wallace
  (package
    (name "r-wallace")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wallace" version))
       (sha256
        (base32 "1fkp7v3wfnr9qmhz4c2yf934c7l87mrxzvqdablpzihs02h8jxwn"))))
    (properties `((upstream-name . "wallace")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip
                             r-spthin
                             r-spocc
                             r-shinywidgets
                             r-shinyjs
                             r-shinyalert
                             r-shiny
                             r-sf
                             r-rmarkdown
                             r-rlang
                             r-rjava
                             r-rcolorbrewer
                             r-markdown
                             r-magrittr
                             r-leaflet-extras
                             r-leaflet
                             r-leafem
                             r-knitcitations
                             r-geodata
                             r-enmeval
                             r-ecospat
                             r-dt
                             r-dplyr))
    (home-page "http://wallaceecomod.github.io/wallace/")
    (synopsis
     "Modular Platform for Reproducible Modeling of Species Niches and Distributions")
    (description
     "The shiny application Wallace is a modular platform for reproducible modeling of
species niches and distributions.  Wallace guides users through a complete
analysis, from the acquisition of species occurrence and environmental data to
visualizing model predictions on an interactive map, thus bundling complex
workflows into a single, streamlined interface.  An extensive vignette, which
guides users through most package functionality can be found on the package's
@code{GitHub} Pages website:
<https://wallaceecomod.github.io/wallace/articles/tutorial-v2.html>.")
    (license license:gpl3)))

(define-public r-walkscoreapi
  (package
    (name "r-walkscoreapi")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walkscoreAPI" version))
       (sha256
        (base32 "1c2gfkl5yl3mkviah8s8zjnqk6lnzma1yilxgfxckdh5wywi39fx"))))
    (properties `((upstream-name . "walkscoreAPI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=walkscoreAPI")
    (synopsis "Walk Score and Transit Score API")
    (description
     "This package provides a collection of functions to perform the Application
Programming Interface (API) calls associated with the Walk Score website
(www.walkscore.com) within the R environment.  These functions can be used to
query the Walk Score and Transit Score database for a wide variety of
information using R scripts.  This package includes the simple Walk Score and
Transit Score API calls, which return the scores associated with an input
location, as well as calls which return some data used to calculate the scores.
These functions are especially useful for mass data collection and gathering
Walk Score and Transit Score values for large lists of locations.")
    (license license:gpl2)))

(define-public r-walkscore
  (package
    (name "r-walkscore")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walkscore" version))
       (sha256
        (base32 "0ayqkmj7iramg234n3ygvssqjy70jw7x327xjzn2izdyfww59z8k"))))
    (properties `((upstream-name . "walkscore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-httr r-dplyr))
    (home-page "https://github.com/chris31415926535/walkscore")
    (synopsis "Tidy Interface to the 'Walk Score' API")
    (description
     "Easily collect walk scores, bike scores, and transit scores (where available)
from the Walk Score API <https://www.walkscore.com/professional/api.php>, a
proprietary API that assigns locations a walkability score between 0 and 100.")
    (license license:expat)))

(define-public r-walker
  (package
    (name "r-walker")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walker" version))
       (sha256
        (base32 "135psiyyhv91x5rfj2y8im3a0l4gkby75p9k5d1kdb5lrkyhq8ib"))))
    (properties `((upstream-name . "walker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-loo
                             r-kfas
                             r-hmisc
                             r-ggplot2
                             r-dplyr
                             r-coda
                             r-bh
                             r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/helske/walker")
    (synopsis
     "Bayesian Generalized Linear Models with Time-Varying Coefficients")
    (description
     "Efficient Bayesian generalized linear models with time-varying coefficients as
in Helske (2022, <doi:10.1016/j.softx.2022.101016>).  Gaussian, Poisson, and
binomial observations are supported.  The Markov chain Monte Carlo (MCMC)
computations are done using Hamiltonian Monte Carlo provided by Stan, using a
state space representation of the model in order to marginalise over the
coefficients for efficient sampling.  For non-Gaussian models, the package uses
the importance sampling type estimators based on approximate marginal MCMC as in
Vihola, Helske, Franks (2020, <doi:10.1111/sjos.12492>).")
    (license license:gpl3+)))

(define-public r-walkboutr
  (package
    (name "r-walkboutr")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "walkboutr" version))
       (sha256
        (base32 "1h5fxl8ylnfdxwshjn9zp0zbiaz3qr15z7333wicvjp7ibzglqrj"))))
    (properties `((upstream-name . "walkboutr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-sp
                             r-sf
                             r-measurements
                             r-magrittr
                             r-lwgeom
                             r-lubridate
                             r-ggplot2
                             r-ggforce
                             r-geosphere
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rwalkbout/walkboutr")
    (synopsis "Generate Walk Bouts from GPS and Accelerometry Data")
    (description
     "Process GPS and accelerometry data to generate walk bouts.  A walk bout is a
period of activity with accelerometer movement matching the patterns of walking
with corresponding GPS measurements that confirm travel.  The inputs of the
walkboutr package are individual-level accelerometry and GPS data.  The outputs
of the model are walk bouts with corresponding times, duration, and summary
statistics on the sample population, which collapse all personally identifying
information.  These bouts can be used to measure walking both as an outcome of a
change to the built environment or as a predictor of health outcomes such as a
cardioprotective behavior.  Kang B, Moudon AV, Hurvitz PM, Saelens BE (2017)
<doi:10.1016/j.trd.2017.09.026>.")
    (license license:bsd-3)))

(define-public r-wal
  (package
    (name "r-wal")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wal" version))
       (sha256
        (base32 "07igmqpyif0hn0x1ydv0ia1fb8zy9l86v51j445qn7jwc0rvxzvp"))))
    (properties `((upstream-name . "wal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spacesxyz r-png r-jpeg r-imager
                             r-freesurferformats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dfsp-spirit/wal")
    (synopsis
     "Read and Write 'wal' Bitmap Image Files and Other 'Quake' Assets")
    (description
     "Read Quake assets including bitmap images and textures in wal file format.  This
package also provides support for extracting these assets from WAD and PAK file
archives.  It can also read models in MDL and MD2 formats.")
    (license license:gpl2)))

(define-public r-wakefield
  (package
    (name "r-wakefield")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wakefield" version))
       (sha256
        (base32 "1rssh6v8m6fim2pvm4cjw8cbni77bv5qp0rwi6vwdl3jhi5zws7n"))))
    (properties `((upstream-name . "wakefield")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi r-ggplot2 r-dplyr r-chron))
    (home-page "https://github.com/trinker/wakefield")
    (synopsis "Generate Random Data Sets")
    (description
     "Generates random data sets including: data.frames, lists, and vectors.")
    (license license:gpl2)))

(define-public r-waetr
  (package
    (name "r-waetr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "waetr" version))
       (sha256
        (base32 "11az8zx9cmh9nsfj89gp2z2cngvvr5x3cycni0s84b18lgqqr2dp"))))
    (properties `((upstream-name . "waetr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/benjaminlistyg/waetr")
    (synopsis "'WebAIM' 'WAVE' Accessibility Evaluation Tool")
    (description
     "An R interface to the @code{WebAIM} WAVE accessibility evaluation API
<https://wave.webaim.org/api/>.  This package provides tools for analyzing web
pages for accessibility issues, generating reports, and comparing accessibility
across multiple websites.")
    (license license:expat)))

(define-public r-wactor
  (package
    (name "r-wactor")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wactor" version))
       (sha256
        (base32 "0dc7413jb3yz0nns2lc93w32wv6m4sg17j2ip63gc12vis0nf855"))))
    (properties `((upstream-name . "wactor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-tokenizers
                             r-tibble
                             r-text2vec
                             r-r6
                             r-matrix
                             r-ggplot2))
    (home-page "https://github.com/mkearney/wactor")
    (synopsis "Word Factor Vectors")
    (description
     "This package provides a user-friendly factor-like interface for converting
strings of text into numeric vectors and rectangular data structures.")
    (license license:expat)))

(define-public r-wacs
  (package
    (name "r-wacs")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WACS" version))
       (sha256
        (base32 "09fmdlpb99q9dw17lwp0bwpklgvgiqq7bfs9ryx5r54m0niklr9d"))))
    (properties `((upstream-name . "WACS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tmvtnorm r-mvtnorm r-mnormt r-mclust))
    (home-page "https://miat.inrae.fr/site/Ronan_TREPOS")
    (synopsis
     "Multivariate Weather-State Approach Conditionally Skew-Normal Generator")
    (description
     "This package provides a multivariate weather generator for daily climate
variables based on weather-states (Flecher et al. (2010)
<doi:10.1029/2009WR008098>).  It uses a Markov chain for modeling the succession
of weather states.  Conditionally to the weather states, the multivariate
variables are modeled using the family of Complete Skew-Normal distributions.
Parameters are estimated on measured series.  Must include the variable Rain and
can accept as many other variables as desired.")
    (license license:gpl2+)))

(define-public r-wacolors
  (package
    (name "r-wacolors")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "wacolors" version))
       (sha256
        (base32 "0c5ja70vgb2f1l2k5j7amxhkydbj44nc290ccr816xglj31nvsiy"))))
    (properties `((upstream-name . "wacolors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggplot2))
    (home-page "https://github.com/CoryMcCartan/wacolors")
    (synopsis "Colorblind-Friendly Palettes from Washington State")
    (description
     "Color palettes taken from the landscapes and cities of Washington state.  Colors
were extracted from a set of photographs, and then combined to form a set of
continuous and discrete palettes.  Continuous palettes were designed to be
perceptually uniform, while discrete palettes were chosen to maximize contrast
at several different levels of overall brightness and saturation.  Each palette
has been evaluated to ensure colors are distinguishable by colorblind people.")
    (license license:expat)))

(define-public r-wa
  (package
    (name "r-wa")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "WA" version))
       (sha256
        (base32 "0i6hkajfalwpvxmmzfl7nhk4x6hhrf0xqpgny8b1gk1hw05yv03m"))))
    (properties `((upstream-name . "WA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://sites.google.com/view/lmaowisc/")
    (synopsis
     "While-Alive Loss Rate for Recurrent Event in the Presence of Death")
    (description
     "This package contains inferential and graphical routines for multi-group
analysis of while-alive loss (or event) rate for possibly recurrent nonfatal
event in the presence of death.")
    (license license:gpl2+)))

(define-public r-w4mrutils
  (package
    (name "r-w4mrutils")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "W4MRUtils" version))
       (sha256
        (base32 "1xrqs2c78k8havx9v52iqrgspqq2h7q844xqrq9l6gr8581x4jbl"))))
    (properties `((upstream-name . "W4MRUtils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=W4MRUtils")
    (synopsis "Useful Functions for Harmonized W4M Tool Development")
    (description
     "This package provides a set of utility function to prevent the spread of utility
scripts in W4M (Workflow4Metabolomics) tools, and centralize them in a single
package.  To note, some are meant to be replaced by the use of dedicated
packages in the future, like the @code{parse_args()} function: it is here only
to prepare the ground for more global changes in W4M scripts and tools.  This
package is used by part of the W4M Galaxy modules, some of them being available
on the community-maintained @code{GitHub} repository for Metabolomics Galaxy
tools <https://github.com/workflow4metabolomics/tools-metabolomics>.  See
Delporte et al (2025) <doi:10.1002/cpz1.70095> for more details.")
    (license license:agpl3+)))

(define-public r-w3cmarkupvalidator
  (package
    (name "r-w3cmarkupvalidator")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "W3CMarkupValidator" version))
       (sha256
        (base32 "02lyp2f35jg2f40zqra8vw8y3q50rc83s3zqchxb2p76yn9730px"))))
    (properties `((upstream-name . "W3CMarkupValidator")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-curl))
    (home-page "https://cran.r-project.org/package=W3CMarkupValidator")
    (synopsis "R Interface to W3C Markup Validation Services")
    (description
     "R interface to a W3C Markup Validation service.  See <https://validator.w3.org/>
for more information.")
    (license license:gpl2)))

(define-public r-w2cwm2c
  (package
    (name "r-w2cwm2c")
    (version "2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "W2CWM2C" version))
       (sha256
        (base32 "0544wnyyv8glv4ljldmaqgynpshd5bvsqwsz9q1071dfshhxki1v"))))
    (properties `((upstream-name . "W2CWM2C")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveslim r-wavemulcor r-colorspace))
    (home-page "https://github.com/jomopo/W2CWM2C")
    (synopsis
     "Graphical Tool for Wavelet (Cross) Correlation and Wavelet Multiple (Cross) Correlation Analysis")
    (description
     "Set of functions that improves the graphical presentations of the functions:
wave.correlation and spin.correlation (waveslim package, Whitcher 2012) and the
wave.multiple.correlation and wave.multiple.cross.correlation (wavemulcor
package, Fernandez-Macho 2012b).  The plot outputs (heatmaps) can be displayed
in the screen or can be saved as PNG or JPG images or as PDF or EPS formats.
The W2CWM2C package also helps to handle the (input data) multivariate time
series easily as a list of N elements (times series) and provides a multivariate
data set (dataexample) to exemplify its use.  A description of the package was
published in a scientific paper: Polanco-Martinez and Fernandez-Macho (2014),
<doi:10.1109/MCSE.2014.96>.")
    (license license:gpl2+)))

