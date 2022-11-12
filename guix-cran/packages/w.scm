(define-module (guix-cran packages w)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages image)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wyz.code.testthat" version))
              (sha256
               (base32
                "1h3mf898wrqx212xxaqqm6vqgg1aicrykrnc32f9wl5hyjcbnq70"))))
    (properties `((upstream-name . "wyz.code.testthat")))
    (build-system r-build-system)
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
need is nearly void when using wyz.code.offensiveProgramming'.")
    (license license:gpl3)))

(define-public r-wyz-code-rdoc
  (package
    (name "r-wyz-code-rdoc")
    (version "1.1.19")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wyz.code.rdoc" version))
              (sha256
               (base32
                "02k6wk45dn6i8kzxhgcxqxvrzxf063dny17jjnj83wsxx2b37jgv"))))
    (properties `((upstream-name . "wyz.code.rdoc")))
    (build-system r-build-system)
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
    (version "1.1.23")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wyz.code.offensiveProgramming" version))
              (sha256
               (base32
                "1cxzh5yp6y2r5n6qkhb4g4dkbyw7mdnsfh883bhksk527ra4qaln"))))
    (properties `((upstream-name . "wyz.code.offensiveProgramming")))
    (build-system r-build-system)
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
    (version "1.1.21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wyz.code.metaTesting" version))
              (sha256
               (base32
                "1033kz6zhbhd09dh40gp03dfy2kf9zskqh942i06jx1z2dvx3vvi"))))
    (properties `((upstream-name . "wyz.code.metaTesting")))
    (build-system r-build-system)
    (propagated-inputs (list r-wyz-code-offensiveprogramming r-tidyr
                             r-data-table r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://neonira.github.io/offensiveProgrammingBook_v1.2.2/")
    (synopsis "Wizardry Code Meta Testing")
    (description
     "Meta testing is the ability to test a function without having to provide its
parameter values.  Those values will be generated, based on semantic naming of
parameters, as introduced by package wyz.code.offensiveProgramming'.  Value
generation logic can be completed with your own data types and generation
schemes.  This to meet your most specific requirements and to answer to a wide
variety of usages, from general use case to very specific ones.  While using
meta testing, it becomes easier to generate stress test campaigns,
non-regression test campaigns and robustness test campaigns, as generated tests
can be saved and reused from session to session.  Main benefits of using
wyz.code.metaTesting is ability to discover valid and invalid function parameter
combinations, ability to infer valid parameter values, and to provide smart
summaries that allows you to focus on dysfunctional cases.")
    (license license:gpl3)))

(define-public r-wwr
  (package
    (name "r-wwr")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WWR" version))
              (sha256
               (base32
                "0ia1dd12r1l08s9nhgvk55jmqwv58jawm25gd2ni6wpa3mcmq02g"))))
    (properties `((upstream-name . "WWR")))
    (build-system r-build-system)
    (propagated-inputs (list r-inline))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=WWR")
    (synopsis "Weighted Win Loss Statistics and their Variances")
    (description
     "Calculate the (weighted) win loss statistics including the win ratio, win
difference and win product and their variances, with which the p-values are also
calculated.  The variance estimation is based on Luo et al. (2015)
<doi:10.1111/biom.12225> and Luo et al. (2017) <doi:10.1002/sim.7284>.  This
package also calculates general win loss statistics with user-specified win loss
function with variance estimation based on Bebu and Lachin (2016)
<doi:10.1093/biostatistics/kxv032>.  This version corrected an error when
outputting confidence interval for win difference.")
    (license license:gpl2+)))

(define-public r-wwntests
  (package
    (name "r-wwntests")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wwntests" version))
              (sha256
               (base32
                "0lp5xipf1lq8mlpdamsvan82s3fr3g5xbxpdnqjc68abnify0r8s"))))
    (properties `((upstream-name . "wwntests")))
    (build-system r-build-system)
    (propagated-inputs (list r-sde r-rainbow r-mass r-ftsa))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wwntests")
    (synopsis "Hypothesis Tests for Functional Time Series")
    (description
     "This package provides an array of white noise hypothesis tests for functional
data and related visualizations.  These include tests based on the norms of
autocovariance operators that are built under both strong and weak white noise
assumptions.  Additionally, tests based on the spectral density operator and on
principal component dimensional reduction are included, which are built under
strong white noise assumptions.  These methods are described in Kokoszka et al.
(2017) <doi:10.1016/j.jmva.2017.08.004>, Characiejus and Rice (2019)
<doi:10.1016/j.ecosta.2019.01.003>, and Gabrys and Kokoszka (2007)
<doi:10.1198/016214507000001111>, respectively.")
    (license license:gpl3)))

(define-public r-wwgbook
  (package
    (name "r-wwgbook")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WWGbook" version))
              (sha256
               (base32
                "05dzgb2b1md981882sp85dvmrsak5v7gwkww1shqfm34zmk9dbkn"))))
    (properties `((upstream-name . "WWGbook")))
    (build-system r-build-system)
    (home-page "http://www-personal.umich.edu/~bwest/almmussp.html")
    (synopsis "Functions and Datasets for WWGbook")
    (description
     "Book is \"Linear Mixed Models: A Practical Guide Using Statistical Software\"
published in 2006 by Chapman Hall / CRC Press.")
    (license license:gpl2+)))

(define-public r-wvplots
  (package
    (name "r-wvplots")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WVPlots" version))
              (sha256
               (base32
                "07gwb984mmfwi9b7m44d60f787szw089xlvqwclpkpjgz677k1cg"))))
    (properties `((upstream-name . "WVPlots")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrapr
                             r-sigr
                             r-rquery
                             r-rqdatatable
                             r-mgcv
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
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wv" version))
              (sha256
               (base32
                "06xf3c97pjhln1v31waj8rmp4r0y2kp6v2x10pbpvi8m0nf5zfs1"))))
    (properties `((upstream-name . "wv")))
    (build-system r-build-system)
    (propagated-inputs (list r-simts r-rcpparmadillo r-rcpp r-coda))
    (home-page "https://github.com/SMAC-Group/wv")
    (synopsis "Wavelet Variance")
    (description
     "This package provides a series of tools to compute and plot quantities related
to classical and robust wavelet variance for time series and regular lattices.
More details can be found, for example, in Serroukh, A., Walden, A.T., &
Percival, D.B. (2000) <doi:10.2307/2669537> and Guerrier, S. & Molinari, R.
(2016) <arXiv:1607.05858>.")
    (license license:agpl3)))

(define-public r-wux
  (package
    (name "r-wux")
    (version "2.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wux" version))
              (sha256
               (base32
                "0iw0kf0wfspnpc83v7gxhcakmp0z34cccnm0jn9c2za9ay9l2swv"))))
    (properties `((upstream-name . "wux")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sp
                             r-rworldmap
                             r-rgeos
                             r-rgdal
                             r-reshape
                             r-ncdf4
                             r-hmisc
                             r-gdata
                             r-fields
                             r-corpcor
                             r-class
                             r-abind))
    (home-page "https://cran.r-project.org/package=wux")
    (synopsis "Wegener Center Climate Uncertainty Explorer")
    (description
     "This package provides methods to calculate and interpret climate change signals
and time series from climate multi-model ensembles.  Climate model output in
binary NetCDF format is read in and aggregated over a specified region to a
data.frame for statistical analysis.  Global Circulation Models, as the CMIP5
simulations, can be read in the same way as Regional Climate Models, as e.g. the
CORDEX or ENSEMBLES simulations.  The package has been developed at the Wegener
Center for Climate and Global Change at the University of Graz, Austria.")
    (license license:gpl2+)))

(define-public r-wufoor
  (package
    (name "r-wufoor")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WufooR" version))
              (sha256
               (base32
                "0iq1lc1b22zdvclkr4yivxxf8z5mdxik7lx9r3b38h2qy2rckqb2"))))
    (properties `((upstream-name . "WufooR")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WtTopsis" version))
              (sha256
               (base32
                "0zwx75rgdyh7pjxjvd5xvxqkfryvhq2csn4sd0py0dgmjxb5p3ja"))))
    (properties `((upstream-name . "WtTopsis")))
    (build-system r-build-system)
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
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wTO" version))
              (sha256
               (base32
                "1g2imlkjdq2sa0kzrmriwmvpgrlh0x9a56ks9d11p4pjpylmcj1m"))))
    (properties `((upstream-name . "wTO")))
    (build-system r-build-system)
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
     "Computes the Weighted Topological Overlap with positive and negative signs (wTO)
networks given a data frame containing the mRNA count/ expression/ abundance per
sample, and a vector containing the interested nodes of interaction (a subset of
the elements of the full data frame).  It also computes the cut-off threshold or
p-value based on the individuals bootstrap or the values reshuffle per
individual.  It also allows the construction of a consensus network, based on
multiple wTO networks.  The package includes a visualization tool for the
networks.  More about the methodology can be found at <arXiv:1711.04702>.")
    (license license:gpl2)))

(define-public r-wtest
  (package
    (name "r-wtest")
    (version "3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wtest" version))
              (sha256
               (base32
                "063ax9mbb2dy33l1cl533mjzpvhf2akw3613pklfjg6bhprlniz7"))))
    (properties `((upstream-name . "wtest")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wsyn" version))
              (sha256
               (base32
                "0wq07n69l52rs0ddl1r3ml5jh5nflsg9mddvc3dxjdpd00mgbxnl"))))
    (properties `((upstream-name . "wsyn")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-fields))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wsyn")
    (synopsis
     "Wavelet Approaches to Studies of Synchrony in Ecology and Other Fields")
    (description
     "Tools for a wavelet-based approach to analyzing spatial synchrony, principally
in ecological data.  Some tools will be useful for studying community synchrony.
 See, for instance, Sheppard et al (2016) <doi: 10.1038/NCLIMATE2991>, Sheppard
et al (2017) <doi: 10.1051/epjnbp/2017000>, Sheppard et al (2019) <doi:
10.1371/journal.pcbi.1006744>.")
    (license license:gpl3)))

(define-public r-wsrf
  (package
    (name "r-wsrf")
    (version "1.7.27")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wsrf" version))
              (sha256
               (base32
                "1pw4z6a91yyx0j2wnf4y29smdxan1ws0l2jgvqckfqmx5y101czk"))))
    (properties `((upstream-name . "wsrf")))
    (build-system r-build-system)
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
    (license license:gpl2+)))

(define-public r-wsprv
  (package
    (name "r-wsprv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wsprv" version))
              (sha256
               (base32
                "0l2c2zv6ypqqynaj9fxdwgwb0drm27zylbk9irhxxm2bp55s2pdy"))))
    (properties `((upstream-name . "wsprv")))
    (build-system r-build-system)
    (propagated-inputs (list r-mnormt r-glmnet))
    (home-page "https://cran.r-project.org/package=wsprv")
    (synopsis "Weighted Selection Probability for Rare Variant Analysis")
    (description
     "This package provides a weighted selection probability to locate rare variants
associated with multiple phenotypes.")
    (license license:gpl2)))

(define-public r-wskm
  (package
    (name "r-wskm")
    (version "1.4.40")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wskm" version))
              (sha256
               (base32
                "0x5nc3bwqawx0k95v088dsx83dm7lw5lkryjvq6bl57bgrcn7n0l"))))
    (properties `((upstream-name . "wskm")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wsjplot" version))
              (sha256
               (base32
                "1vgf823j3ychdnvg4nq59ah4rkv5lpwbg0r7sijir2b18sgxsrbi"))))
    (properties `((upstream-name . "wsjplot")))
    (build-system r-build-system)
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

(define-public r-wsgeometry
  (package
    (name "r-wsgeometry")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WSGeometry" version))
              (sha256
               (base32
                "073cvvbhzx5nllrwfyz6bxvskmkm88i7wq93m2d0q60pzwzsxwzl"))))
    (properties `((upstream-name . "WSGeometry")))
    (build-system r-build-system)
    (propagated-inputs (list r-transport
                             r-rspectra
                             r-rcpparmadillo
                             r-rcpp
                             r-plot3d
                             r-matrix
                             r-lpsolve
                             r-imager
                             r-expm))
    (home-page "https://cran.r-project.org/package=WSGeometry")
    (synopsis "Geometric Tools Based on Balanced/Unbalanced Optimal Transport")
    (description
     "Includes a variety of methods to compute objects related to the Wasserstein
distance (also known as Kantorovich distance or Earth-Mover distance').  The
main effort of this package is to allow for computations of Wasserstein
barycenter using regularised, unregularised and stochastic methods.  It also
provides convenient wrappers to call the transport package with more general
inputs.  Handy visual tools are provided to showcase, barycenters, animations of
optimal transport geodesics and animations of principal components in the
Wasserstein space'.  It also includes tools to compute Kantorovich-Rubinstein
distances and barycenters.")
    (license license:gpl3)))

(define-public r-wsbackfit
  (package
    (name "r-wsbackfit")
    (version "1.0-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wsbackfit" version))
              (sha256
               (base32
                "18y2r6v19a4lnpa3y2q0whm5kizmd29r0abj7rcirb9fd5jqrsp2"))))
    (properties `((upstream-name . "wsbackfit")))
    (build-system r-build-system)
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
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wru" version))
              (sha256
               (base32
                "1z7issqzrqykqhmxbny0h39s28xrrwxdx8jmaw0flxyyn96gbcw0"))))
    (properties `((upstream-name . "wru")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-pl94171
                             r-piggyback
                             r-future
                             r-furrr
                             r-dplyr))
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
Political Analysis <DOI:10.1093/pan/mpw001>.")
    (license license:gpl3+)))

(define-public r-wrtopdownfrag
  (package
    (name "r-wrtopdownfrag")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrTopDownFrag" version))
              (sha256
               (base32
                "1rdg6rzjz2h514i3c8z89mvj2j3h1s7rr5fry2mq3xvrwrgd3738"))))
    (properties `((upstream-name . "wrTopDownFrag")))
    (build-system r-build-system)
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
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WRTDStidal" version))
              (sha256
               (base32
                "1ssrqqf2hypif4nnfyl4lq03glyyg9ry9s14llf1njxamhjggfgg"))))
    (properties `((upstream-name . "WRTDStidal")))
    (build-system r-build-system)
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
discharge, and season to evaluate trends in water quality time series.")
    (license license:cc0)))

(define-public r-wrswor
  (package
    (name "r-wrswor")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrswoR" version))
              (sha256
               (base32
                "1q0nc08q8f3kl9yvcivzylykk1ar5j5dw3ian2y9nrzgzri5l10i"))))
    (properties `((upstream-name . "wrswoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-logging))
    (home-page "http://krlmlr.github.io/wrswoR")
    (synopsis "Weighted Random Sampling without Replacement")
    (description
     "This package provides a collection of implementations of classical and novel
algorithms for weighted sampling without replacement.")
    (license license:gpl3)))

(define-public r-wrss
  (package
    (name "r-wrss")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WRSS" version))
              (sha256
               (base32
                "0fhmdnkk94m1bqm1i69szv3ycbkzr08xy30mwpqvbij9nh2sqj0w"))))
    (properties `((upstream-name . "WRSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-nloptr r-network r-hmisc r-ggplot2 r-ggally))
    (home-page "https://cran.r-project.org/package=WRSS")
    (synopsis "Water Resources System Simulator")
    (description
     "Water resources system simulator is a tool for simulation and analysis of
large-scale water resources systems.  WRSS proposes functions and methods for
construction, simulation and analysis of primary storage and hydropower water
resources features (e.g. reservoirs, aquifers, and etc.) based on Standard
Operating Policy (SOP).")
    (license license:gpl3)))

(define-public r-wrs2
  (package
    (name "r-wrs2")
    (version "1.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WRS2" version))
              (sha256
               (base32
                "1838wy59cqd65s0bw6c24xcvx7zflypqcbgs35l9s2fj87vw2hdc"))))
    (properties `((upstream-name . "WRS2")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape r-plyr r-mc2d r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://r-forge.r-project.org/projects/psychor/")
    (synopsis "Collection of Robust Statistical Methods")
    (description
     "This package provides a collection of robust statistical methods based on Wilcox
WRS functions.  It implements robust t-tests (independent and dependent
samples), robust ANOVA (including between-within subject designs), quantile
ANOVA, robust correlation, robust mediation, and nonparametric ANCOVA models
based on robust location measures.")
    (license license:gpl3)))

(define-public r-wrproteo
  (package
    (name "r-wrproteo")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrProteo" version))
              (sha256
               (base32
                "0iq75zdip51aw8y37ckah1mddm69cp0lds2cj0xaavrdbaarww49"))))
    (properties `((upstream-name . "wrProteo")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrmisc r-limma r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrProteo")
    (synopsis "Proteomics Data Analysis Functions")
    (description
     "Data analysis of proteomics experiments by mass spectrometry is supported by
this collection of functions mostly dedicated to the analysis of (bottom-up)
quantitative (XIC) data.  Fasta-formatted proteomes (eg from UniProt Consortium
<doi:10.1093/nar/gky1049>) can be read with automatic parsing and multiple
annotation types (like species origin, abbreviated gene names, etc) extracted.
Quantitative proteomics measurements frequently contain multiple NA values, due
to physical absence of given peptides in some samples, limitations in
sensitivity or other reasons.  The functions provided here help to inspect
graphically the data to investigate the nature of NA-values via their respective
replicate measurements and to help/confirm the choice of NA-replacement by low
random values.  Dedicated filtering and statistical testing using the framework
of package limma <doi:10.18129/B9.bioc.limma> can be run, enhanced by multiple
rounds of NA-replacements to provide robustness towards rare stochastic events.
Multi-species samples, as frequently used in benchmark-tests (eg Navarro et al
2016 <doi:10.1038/nbt.3685>, Ramus et al 2016
<doi:10.1016/j.jprot.2015.11.011>), can be run with special options separating
the data into sub-groups during normalization and testing.  As example the
data-set from Ramus et al 2016 <doi:10.1016/j.jprot.2015.11.011>) is provided
quantified by MaxQuant (Tyanova et al 2016 <doi:10.1038/nprot.2016.136>),
ProteomeDiscoverer, OpenMS (<doi:10.1038/nmeth.3959>) and Proline (Bouyssie et
al 2020 <doi:10.1093/bioinformatics/btaa118>).  Meta-data provided in sdrf
format can be integrated to the analysis.  Subsequently, ROC curves (Hand and
Till 2001 <doi:10.1023/A:1010920819831>) can be constructed to compare multiple
analysis approaches.")
    (license license:gpl3)))

(define-public r-wrmisc
  (package
    (name "r-wrmisc")
    (version "1.10.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrMisc" version))
              (sha256
               (base32
                "1mz2a7bmzblky9z1d32zxnbdjiap6v8jhiah38lln2s4vrbx67yd"))))
    (properties `((upstream-name . "wrMisc")))
    (build-system r-build-system)
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
with respect to additional grouping (eg n groups of replicates).  Other
functions facilitate dealing with non-redundant information, by indexing unique,
adding counters to redundant or eliminating lines with respect redundancy in a
given reference-column, etc.  Help is provided to identify very closely matching
numeric values to generate (partial) distance matrixes for very big data in a
memory efficient manner or to reduce the complexity of large data-sets by
combining very close values.  Many times large experimental datasets need some
additional filtering, adequate functions are provided.  Batch reading (or
writing) of sets of files and combining data to arrays is supported, too.
Convenient data normalization is supported in various different modes, parameter
estimation via permutations or boot-strap as well as flexible testing of
multiple pair-wise combinations using the framework of limma is provided, too.")
    (license license:gpl3)))

(define-public r-writexls
  (package
    (name "r-writexls")
    (version "6.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WriteXLS" version))
              (sha256
               (base32
                "1dqr98kx930y6mcvb9b39xiwshhs250gkd2vw2v6iil34sl90jv4"))))
    (properties `((upstream-name . "WriteXLS")))
    (build-system r-build-system)
    (inputs (list perl))
    (home-page "https://github.com/marcschwartz/WriteXLS")
    (synopsis
     "Cross-Platform Perl Based R Function to Create Excel 2003 (XLS) and Excel 2007 (XLSX) Files")
    (description
     "Cross-platform Perl based R function to create Excel 2003 (XLS) and Excel 2007
(XLSX) files from one or more data frames.  Each data frame will be written to a
separate named worksheet in the Excel spreadsheet.  The worksheet name will be
the name of the data frame it contains or can be specified by the user.")
    (license license:gpl2+)))

(define-public r-write-snns
  (package
    (name "r-write-snns")
    (version "0.0-4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "write.snns" version))
              (sha256
               (base32
                "0sxg7z8rnh4lssbivkrfxldv4ivy37wkndzzndpbvq2gbvbjnp4l"))))
    (properties `((upstream-name . "write.snns")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=write.snns")
    (synopsis "Function for exporting data to SNNS pattern files")
    (description
     "Function for writing a SNNS pattern file from a data.frame or matrix.")
    (license license:gpl2+)))

(define-public r-wrightmap
  (package
    (name "r-wrightmap")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WrightMap" version))
              (sha256
               (base32
                "0c1v8wjqbr9y447h9iz9h2izrm1msdaz3mx1ry47qlcrq6ddlj9v"))))
    (properties `((upstream-name . "WrightMap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer))
    (home-page "https://cran.r-project.org/package=WrightMap")
    (synopsis "IRT Item-Person Map with 'ConQuest' Integration")
    (description
     "This package provides a powerful yet simple graphical tool available in the
field of psychometrics is the Wright Map (also known as item maps or item-person
maps), which presents the location of both respondents and items on the same
scale.  Wright Maps are commonly used to present the results of dichotomous or
polytomous item response models.  The WrightMap package provides functions to
create these plots from item parameters and person estimates stored as R
objects.  Although the package can be used in conjunction with any software used
to estimate the IRT model (e.g. TAM', mirt', eRm or IRToys in R', or Stata',
Mplus', etc.), WrightMap features special integration with ConQuest to
facilitate reading and plotting its output directly.The wrightMap function
creates Wright Maps based on person estimates and item parameters produced by an
item response analysis.  The CQmodel function reads output files created using
ConQuest software and creates a set of data frames for easy data manipulation,
bundled in a CQmodel object.  The wrightMap function can take a CQmodel object
as input or it can be used to create Wright Maps directly from data frames of
person and item parameters.")
    (license license:bsd-2)))

(define-public r-wri
  (package
    (name "r-wri")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WRI" version))
              (sha256
               (base32
                "1hm23p0b4k03dxrbia9kq6r3n2c57glllraglxrj2vgnvwn6sl2c"))))
    (properties `((upstream-name . "WRI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rfast
                             r-rcpparmadillo
                             r-rcpp
                             r-polynom
                             r-mvtnorm
                             r-modeest
                             r-locpol
                             r-locfit
                             r-gridextra
                             r-ggplot2
                             r-fdapace
                             r-fdadensity
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
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrGraph" version))
              (sha256
               (base32
                "128qhrv2zkl8hl906gf7snqkl4gic41brawcy3a6aq8c4j1dxjvm"))))
    (properties `((upstream-name . "wrGraph")))
    (build-system r-build-system)
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

(define-public r-wrensbookshelf
  (package
    (name "r-wrensbookshelf")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WrensBookshelf" version))
              (sha256
               (base32
                "1g83i9qmlidxy55cmvx0sqqrkps9fmvj0sh7jc92v89qwx73pfr0"))))
    (properties `((upstream-name . "WrensBookshelf")))
    (build-system r-build-system)
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
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrassp" version))
              (sha256
               (base32
                "02f4r6ax91sxv05mjbz33g04i33gd3548zym5iszzx26mbr6rwkv"))))
    (properties `((upstream-name . "wrassp")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IPS-LMU/wrassp")
    (synopsis "Interface to the 'ASSP' Library")
    (description
     "This package provides a wrapper around Michel Scheffers's libassp
(<http://libassp.sourceforge.net/>).  The libassp (Advanced Speech Signal
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
    (version "2.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrapr" version))
              (sha256
               (base32
                "1swgf10vg9sh29mn4gsia1rjln47lrqsv765yl19hlpk85qwhsk4"))))
    (properties `((upstream-name . "wrapr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/WinVector/wrapr")
    (synopsis "Wrap R Tools for Debugging and Parametric Programming")
    (description
     "Tools for writing and debugging R code.  Provides: %.>% dot-pipe (an S3
configurable pipe), unpack/to (R style multiple assignment/return),
build_frame()'/'draw_frame() ('data.frame example tools), qc() (quoting
concatenate), := (named map builder), let() (converts non-standard evaluation
interfaces to parametric standard evaluation interfaces, inspired by
gtools::strmacro() and base::bquote()'), and more.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-wrappedtools
  (package
    (name "r-wrappedtools")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrappedtools" version))
              (sha256
               (base32
                "1dr70w2y556l664067crrl7ly68d1pb0chyz00cl1sfiyma7nj6x"))))
    (properties `((upstream-name . "wrappedtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-knitr
                             r-kableextra
                             r-glue
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-coin
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wrappedtools")
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
    (version "0.5.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wrangle" version))
              (sha256
               (base32
                "0gap15hinsgfjrxajr9kvs0rp76gl5kk2dqs92s9mfyh10kxxqpa"))))
    (properties `((upstream-name . "wrangle")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-rlang r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=wrangle")
    (synopsis "Systematic Data Wrangling Idiom")
    (description
     "Supports systematic scrutiny, modification, and integration of data.  The
function status() counts rows that have missing values in grouping columns
(returned by na() ), have non-unique combinations of grouping columns (returned
by dup() ), and that are not locally sorted (returned by unsorted() ).
Functions enumerate() and itemize() give sorted unique combinations of columns,
with or without occurrence counts, respectively.  Function ignore() drops
columns in x that are present in y, and informative() drops columns in x that
are entirely NA; constant() returns values that are constant, given a key.  Data
that have defined unique combinations of grouping values behave more predictably
during merge operations.")
    (license license:gpl3)))

(define-public r-wr
  (package
    (name "r-wr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WR" version))
              (sha256
               (base32
                "10813dzq3pn354g5x7hczi6aq61kmfrl8y4wc005bsxj0ipz0a06"))))
    (properties `((upstream-name . "WR")))
    (build-system r-build-system)
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

(define-public r-wqs
  (package
    (name "r-wqs")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wqs" version))
              (sha256
               (base32
                "14qaa9g9v4nqrv897laflib3wwhflyfaf9wpllmbi5xfv9223rcg"))))
    (properties `((upstream-name . "wqs")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsolnp r-glm2))
    (home-page "https://cran.r-project.org/package=wqs")
    (synopsis "Weighted Quantile Sum Regression")
    (description
     "Fits weighted quantile sum regression models, calculates weighted quantile sum
index and estimated component weights.")
    (license license:gpl2+)))

(define-public r-wql
  (package
    (name "r-wql")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wql" version))
              (sha256
               (base32
                "1s702gvwx49wky2ylh8q5h1vmh6sls2pq69w6jcijh1qs587dngs"))))
    (properties `((upstream-name . "wql")))
    (build-system r-build-system)
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

(define-public r-wppexplorer
  (package
    (name "r-wppexplorer")
    (version "2.3-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wppExplorer" version))
              (sha256
               (base32
                "1pbmjg6y543aih8mxf9njfwpm090virhgqf8w0a5yx0jdfjwmz04"))))
    (properties `((upstream-name . "wppExplorer")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2019" version))
              (sha256
               (base32
                "12h1z082xs9l58v69nilaqhdgz5jd0c90p85szibfzhfb7vs6xl5"))))
    (properties `((upstream-name . "wpp2019")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2017" version))
              (sha256
               (base32
                "1w7cg31larvgaah16ch6z11jjq02i5f20hfwg63wvw5p6fyafivz"))))
    (properties `((upstream-name . "wpp2017")))
    (build-system r-build-system)
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
    (version "1.1-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2015" version))
              (sha256
               (base32
                "07bnbmrshlqnlpca5djpq5crnpsmz228wmbpv1ah7ywnjvks6fyx"))))
    (properties `((upstream-name . "wpp2015")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2012" version))
              (sha256
               (base32
                "00283s4r36zzwn67fydrl7ldg6jhn14qkf47h0ifmsky95bd1n5k"))))
    (properties `((upstream-name . "wpp2012")))
    (build-system r-build-system)
    (home-page "http://esa.un.org/wpp")
    (synopsis "World Population Prospects 2012")
    (description
     "Data from the United Nation's World Population Prospects 2012")
    (license license:gpl2+)))

(define-public r-wpp2010
  (package
    (name "r-wpp2010")
    (version "1.2-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2010" version))
              (sha256
               (base32
                "1h87r1cn4lnx80dprvawsyzfkriscqjgr27gvv7n19wvsx8qd57k"))))
    (properties `((upstream-name . "wpp2010")))
    (build-system r-build-system)
    (home-page "http://esa.un.org/wpp")
    (synopsis "World Population Prospects 2010")
    (description
     "Data from the United Nation's World Population Prospects 2010")
    (license license:gpl2+)))

(define-public r-wpp2008
  (package
    (name "r-wpp2008")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpp2008" version))
              (sha256
               (base32
                "0gd3vjw1fpzhp3qlf1jpc24f76i0pxsjs5pb1v3k2si6df7q4msd"))))
    (properties `((upstream-name . "wpp2008")))
    (build-system r-build-system)
    (home-page "http://esa.un.org/wpp/index.htm")
    (synopsis "World Population Prospects 2008")
    (description
     "Data from the United Nation's World Population Prospects 2008")
    (license license:gpl2+)))

(define-public r-wpkde
  (package
    (name "r-wpkde")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WPKDE" version))
              (sha256
               (base32
                "100vla11fbw16x5n4w4kbslz4n725v4x6j0hrxzrk99ryl0crmf6"))))
    (properties `((upstream-name . "WPKDE")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=WPKDE")
    (synopsis "Weighted Piecewise Kernel Density Estimation")
    (description
     "Weighted Piecewise Kernel Density Estimation for large data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-wperm
  (package
    (name "r-wperm")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wPerm" version))
              (sha256
               (base32
                "0f3v0kba87wkwyii0pzvs6a8ja897aifpvwkvryl2hzxxxaml7z4"))))
    (properties `((upstream-name . "wPerm")))
    (build-system r-build-system)
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

(define-public r-wpc
  (package
    (name "r-wpc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WPC" version))
              (sha256
               (base32
                "0li502hwa4n945yfnilslyvl12ls66kazbfmxb4kkjbaf500mjp9"))))
    (properties `((upstream-name . "WPC")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-msm))
    (home-page "https://cran.r-project.org/package=WPC")
    (synopsis "Weighted Predictiveness Curve")
    (description
     "Implementing weighted predictiveness curve to visualize the marker-by-treatment
relationship and measure the performance of biomarkers for guiding treatment
decision.")
    (license license:lgpl2.0+)))

(define-public r-wpa
  (package
    (name "r-wpa")
    (version "1.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wpa" version))
              (sha256
               (base32
                "1nbnv0s75v752bkidjs41mqhbxzqywi9rkqv25s92l924yk73r16"))))
    (properties `((upstream-name . "wpa")))
    (build-system r-build-system)
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

(define-public r-wowa
  (package
    (name "r-wowa")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wowa" version))
              (sha256
               (base32
                "0i677bzgd9qx57x7n7qsaqpacgpap2d0n8gq1lc9hsmg13bs2v8f"))))
    (properties `((upstream-name . "wowa")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WOTPLY" version))
              (sha256
               (base32
                "1m0k21ywy6lgchddlaywl6rhqimjbd4npsnmx3l1w4jgnlgj9z76"))))
    (properties `((upstream-name . "WOTPLY")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna r-network r-ggally))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WOTPLY")
    (synopsis "Plot Connectivity Between Cells from Different Time Points")
    (description
     "It shows the connections between selected clusters from the latest time point
and the clusters from all the previous time points.  The transition matrices
between time point t and t+1 are obtained from Waddington-OT analysis
<https://github.com/ScialdoneLab/WOTPLY>.")
    (license license:gpl3)))

(define-public r-wosr
  (package
    (name "r-wosr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wosr" version))
              (sha256
               (base32
                "0fl9mizrjg3r7n7gslsxgaw3k2v63scqmvnv6341q8sq7018hzln"))))
    (properties `((upstream-name . "wosr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-pbapply r-jsonlite r-httr))
    (home-page "https://vt-arc.github.io/wosr/index.html")
    (synopsis "Clients to the 'Web of Science' and 'InCites' APIs")
    (description
     "R clients to the Web of Science and InCites
<https://clarivate.com/products/data-integration/> APIs, which allow you to
programmatically download publication and citation data indexed in the Web of
Science and InCites databases.")
    (license license:expat)))

(define-public r-worrrd
  (package
    (name "r-worrrd")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worrrd" version))
              (sha256
               (base32
                "1czzm30xwssjrhw7kqw23d2s03v9lbwa0crld9qf9q80h5zc0kxi"))))
    (properties `((upstream-name . "worrrd")))
    (build-system r-build-system)
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
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worrms" version))
              (sha256
               (base32
                "1gpbyplfpcrapmci8axarrjjijsgh2dmhnsn79g1lhrafvm2ichs"))))
    (properties `((upstream-name . "worrms")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-jsonlite r-data-table r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/worrms")
    (synopsis "World Register of Marine Species (WoRMS) Client")
    (description
     "Client for World Register of Marine Species (<http://www.marinespecies.org/>).
Includes functions for each of the API methods, including searching for names by
name, date and common names, searching using external identifiers, fetching
synonyms, as well as fetching taxonomic children and taxonomic classification.")
    (license license:expat)))

(define-public r-wormtensor
  (package
    (name "r-wormtensor")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WormTensor" version))
              (sha256
               (base32
                "0l55dbcf65cpw03b26va4ssvk3wc0i6hnchb9jyw44369y5xfniy"))))
    (properties `((upstream-name . "WormTensor")))
    (build-system r-build-system)
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

(define-public r-worms
  (package
    (name "r-worms")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worms" version))
              (sha256
               (base32
                "183chjdi5qvsmdznvc9igcxaz769a37rwh5nzgvf5zf012a85wir"))))
    (properties `((upstream-name . "worms")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-httr))
    (home-page "https://cran.r-project.org/package=worms")
    (synopsis
     "Retriving Aphia Information from World Register of Marine Species")
    (description
     "Retrieves taxonomic information from <http://www.marinespecies.org> using WoRMS
RESTful Webservice.  Utility functions aim at taxonomic consistency.")
    (license (license:fsdg-compatible "GNU Affero General Public License"))))

(define-public r-worldmet
  (package
    (name "r-worldmet")
    (version "0.9.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worldmet" version))
              (sha256
               (base32
                "1yb8x9iv8ndnqlpadg1x9sxd48maw9b4ih03rkr508xn98xksyhb"))))
    (properties `((upstream-name . "worldmet")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-readr
                             r-purrr
                             r-openair
                             r-leaflet
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (home-page "https://davidcarslaw.github.io/worldmet/index.html")
    (synopsis
     "Import Surface Meteorological Data from NOAA Integrated Surface Database (ISD)")
    (description
     "This package provides functions to import data from more than 30,000 surface
meteorological sites around the world managed by the National Oceanic and
Atmospheric Administration (NOAA) Integrated Surface Database (ISD, see
<https://www.ncei.noaa.gov/products/land-based-station/integrated-surface-database>).")
    (license license:gpl2+)))

(define-public r-worldfootballr
  (package
    (name "r-worldfootballr")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worldfootballR" version))
              (sha256
               (base32
                "0w1r7d2xsz0gavzq9yh7gpvkyrx8y9v1ppxg5pj8cxly0w20ikfq"))))
    (properties `((upstream-name . "worldfootballR")))
    (build-system r-build-system)
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
    (version "1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WorldFlora" version))
              (sha256
               (base32
                "1c99h56bhx4zsgwpn0d1jjjgjcfs6k6cvml3kbv08z3j2s5pg8v0"))))
    (properties `((upstream-name . "WorldFlora")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=WorldFlora")
    (synopsis
     "Standardize Plant Names According to World Flora Online Taxonomic Backbone")
    (description
     "World Flora Online is an online flora of all known plants, available from
<http://www.worldfloraonline.org/>.  Methods are provided of matching a list of
plant names (scientific names, taxonomic names, botanical names) against a
static copy of the World Flora Online Taxonomic Backbone data that can be
downloaded from the World Flora Online website.  The World Flora Online
Taxonomic Backbone is an updated version of The Plant List
(<http://www.theplantlist.org/>), a working list of plant names that has become
static since 2013.")
    (license license:gpl3)))

(define-public r-workloopr
  (package
    (name "r-workloopr")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "workloopR" version))
              (sha256
               (base32
                "1gynlvmqxyibql5j3db9dwvc0jsc9jqzpy3d3gp43d5lcl11mcmq"))))
    (properties `((upstream-name . "workloopR")))
    (build-system r-build-system)
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
or tidyverse functions.  This package has been peer-reviewed by rOpenSci (v.
1.1.0).")
    (license license:gpl3+)))

(define-public r-workflowr
  (package
    (name "r-workflowr")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "workflowr" version))
              (sha256
               (base32
                "0j1ahxm7xjla1xa38dc8ykn1j5a4yw1p8ivjk3k3va25kam25cp3"))))
    (properties `((upstream-name . "workflowr")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xfun
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
    (home-page "https://github.com/workflowr/workflowr")
    (synopsis "Framework for Reproducible and Collaborative Data Science")
    (description
     "This package provides a workflow for your analysis projects by combining
literate programming ('knitr and rmarkdown') and version control ('Git', via
git2r') to generate a website containing time-stamped, versioned, and documented
results.")
    (license license:expat)))

(define-public r-workboots
  (package
    (name "r-workboots")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "workboots" version))
              (sha256
               (base32
                "0n55iypiw59n1f09fbynsdznv5mz885rbz4gaqi48ig0hwz896b7"))))
    (properties `((upstream-name . "workboots")))
    (build-system r-build-system)
    (propagated-inputs (list r-workflows
                             r-vip
                             r-tidyr
                             r-tibble
                             r-rsample
                             r-rlang
                             r-purrr
                             r-metrics
                             r-lifecycle
                             r-generics
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/markjrieke/workboots")
    (synopsis
     "Generate Bootstrap Prediction Intervals from a 'tidymodels' Workflow")
    (description
     "This package provides functions for generating bootstrap prediction intervals
from a tidymodels workflow.  tidymodels <https://www.tidymodels.org/> is a
collection of packages for modeling and machine learning using tidyverse
<https://www.tidyverse.org/> principles.  This package is not affiliated with or
maintained by RStudio or the tidymodels maintainers.")
    (license license:expat)))

(define-public r-wordsalad
  (package
    (name "r-wordsalad")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordsalad" version))
              (sha256
               (base32
                "18kgwq6f9ymm1bmbvpmxq9gz5fx0qj64439scr21kk1cvsfl4y88"))))
    (properties `((upstream-name . "wordsalad")))
    (build-system r-build-system)
    (propagated-inputs (list r-word2vec r-tibble r-text2vec r-fasttextr))
    (home-page "https://github.com/EmilHvitfeldt/wordsalad")
    (synopsis "Provide Tools to Extract and Analyze Word Vectors")
    (description
     "This package provides access to various word embedding methods (GloVe, fasttext
and word2vec) to extract word vectors using a unified framework to increase
reproducibility and correctness.")
    (license license:expat)))

(define-public r-words
  (package
    (name "r-words")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "words" version))
              (sha256
               (base32
                "1kd9f5470c7bdayb324m4m72v7s2kknr68qbggl5m0ww29gxs9wd"))))
    (properties `((upstream-name . "words")))
    (build-system r-build-system)
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
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WordR" version))
              (sha256
               (base32
                "1jlhdh6ysxlx3b7v4bdxi652038lixldh7vfs7hf80dzn3vyk4f9"))))
    (properties `((upstream-name . "WordR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-officer r-flextable r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WordR")
    (synopsis "Rendering Word Documents with R Inline Code")
    (description
     "Serves for rendering MS Word documents with R inline code and inserting tables
and plots.")
    (license license:gpl3)))

(define-public r-wordpredictor
  (package
    (name "r-wordpredictor")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordpredictor" version))
              (sha256
               (base32
                "0079nkjimzz07yzqx8ksgk7isi0b5j1nxmisicbc8qvsamirm68v"))))
    (properties `((upstream-name . "wordpredictor")))
    (build-system r-build-system)
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
<https://web.stanford.edu/~jurafsky/slp3/3.pdf>.  For optimizing R code and
using R6 classes we referred to \"Advanced R\" <https://adv-r.hadley.nz/r6.html>.
For writing R extensions we referred to \"R Packages\",
<https://r-pkgs.org/index.html>.")
    (license license:expat)))

(define-public r-wordpools
  (package
    (name "r-wordpools")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WordPools" version))
              (sha256
               (base32
                "081qnsq7wn1vczgf6ipz8wjmyg4vwhj1s5nrzh0dw4p9yz28dxv2"))))
    (properties `((upstream-name . "WordPools")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=WordPools")
    (synopsis "Classical Word Pools Used in Studies of Learning and Memory")
    (description
     "Collects several classical word pools used most often to provide lists of words
in psychological studies of learning and memory.  It provides a simple function,
pickList for selecting random samples of words within given ranges.")
    (license license:gpl2)))

(define-public r-wordpiece-data
  (package
    (name "r-wordpiece-data")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordpiece.data" version))
              (sha256
               (base32
                "0x5m8vkszxpz8mf9pblzm39wpaa247336zkja560zsqgzdvcj3hx"))))
    (properties `((upstream-name . "wordpiece.data")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordpiece" version))
              (sha256
               (base32
                "1xg9xsaqpz5l2f2vk1qnc7cwplnwvv6jl9wbdg0f92klhk1nanyp"))))
    (properties `((upstream-name . "wordpiece")))
    (build-system r-build-system)
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
     "Apply Wordpiece (<arXiv:1609.08144>) tokenization to input text, given an
appropriate vocabulary.  The BERT (<arXiv:1810.04805>) tokenization conventions
are used by default.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-wordofmouth
  (package
    (name "r-wordofmouth")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WordOfMouth" version))
              (sha256
               (base32
                "199hnirbmwarn04ky1147x5c048j087rdml86qcp92kzp20679v3"))))
    (properties `((upstream-name . "WordOfMouth")))
    (build-system r-build-system)
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
    (version "0.1-15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordnet" version))
              (sha256
               (base32
                "158c5fps4kvfd9mj1im8jb9rv7ipfshyagrv0q3b55ywnkrkvjqb"))))
    (properties `((upstream-name . "wordnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava))
    (home-page "https://wordnet.princeton.edu/")
    (synopsis "WordNet Interface")
    (description
     "An interface to WordNet using the Jawbone Java API to WordNet.  WordNet
(<https://wordnet.princeton.edu/>) is a large lexical database of English.
Nouns, verbs, adjectives and adverbs are grouped into sets of cognitive synonyms
(synsets), each expressing a distinct concept.  Synsets are interlinked by means
of conceptual-semantic and lexical relations.  Please note that WordNet(R) is a
registered tradename.  Princeton University makes WordNet available to research
and commercial users free of charge provided the terms of their license
(<https://wordnet.princeton.edu/license-and-commercial-use>) are followed, and
proper reference is made to the project using an appropriate citation
(<https://wordnet.princeton.edu/citing-wordnet>).")
    (license license:expat)))

(define-public r-wordler
  (package
    (name "r-wordler")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordler" version))
              (sha256
               (base32
                "0pvnijh2gvwjbd86ivky0zbi8y1x40xazsv2bdy5s2rfsscf4l88"))))
    (properties `((upstream-name . "wordler")))
    (build-system r-build-system)
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

(define-public r-wordgraph
  (package
    (name "r-wordgraph")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordgraph" version))
              (sha256
               (base32
                "06q42sjdj7i680zqx66hsvrpmkrlcyxnvsk1lygnqhlv97ycl3vv"))))
    (properties `((upstream-name . "wordgraph")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidygraph
                             r-tibble
                             r-purrr
                             r-plyr
                             r-ggraph
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=wordgraph")
    (synopsis "Graph Functionality of Free Associated Words")
    (description
     "This package provides functions that help less experienced R users to make graph
analysis for free associated words, or more generally for repeated nominal data
for which a undirected graph analysis is meaningful.  By corresponding to each
word its centrality, it is possible to apply standard quantitative analysis
methods in order to associate word selection with other variables.  The
functions are implemented with the aid of the tibble', tidygraph', ggraph and
ggplot2 packages.  Supported centrality functions are centrality_alpha(),
centrality_authority(), centrality_betweenness(), centrality_closeness(),
centrality_pagerank(), centrality_eigen().  A data set is included.")
    (license license:gpl2+)))

(define-public r-wordcloud2
  (package
    (name "r-wordcloud2")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wordcloud2" version))
              (sha256
               (base32
                "1a2q42bn65q4idxq0vxysyam16q6c18inxv4dqhfy0x52j8z9x6k"))))
    (properties `((upstream-name . "wordcloud2")))
    (build-system r-build-system)
    (propagated-inputs (list r-htmlwidgets r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lchiffon/wordcloud2")
    (synopsis "Create Word Cloud by 'htmlwidget'")
    (description
     "This package provides a fast visualization tool for creating wordcloud by using
wordcloud2.js'.  wordcloud2.js is a JavaScript library to create wordle
presentation on 2D canvas or HTML <https://timdream.org/wordcloud2.js/>.")
    (license license:gpl2)))

(define-public r-word2vec
  (package
    (name "r-word2vec")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "word2vec" version))
              (sha256
               (base32
                "0qj39vms6zgwb8lpmfkppayizdmhakic3pkacglary3ain61vnsk"))))
    (properties `((upstream-name . "word2vec")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress r-rcpp))
    (home-page "https://github.com/bnosac/word2vec")
    (synopsis "Distributed Representations of Words")
    (description
     "Learn vector representations of words by continuous bag of words and skip-gram
implementations of the word2vec algorithm.  The techniques are detailed in the
paper \"Distributed Representations of Words and Phrases and their
Compositionality\" by Mikolov et al. (2013), available at <arXiv:1310.4546>.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-word-alignment
  (package
    (name "r-word-alignment")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "word.alignment" version))
              (sha256
               (base32
                "0inlq96j4zkjncz2v66amz91l5y3b5lx49qi2jg6jbqdldw7aa02"))))
    (properties `((upstream-name . "word.alignment")))
    (build-system r-build-system)
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
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "worcs" version))
              (sha256
               (base32
                "0n4ypq430ln13bwc6g2m58pz071g9kwg0qcc450lqf9idal1l1j0"))))
    (properties `((upstream-name . "worcs")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-usethis
                             r-tinytex
                             r-rticles
                             r-rmarkdown
                             r-renv
                             r-ranger
                             r-prereg
                             r-gh
                             r-gert
                             r-digest
                             r-credentials))
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
    (version "1.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wooldridge" version))
              (sha256
               (base32
                "06rc510wmkakc19hcqmya6mgrg2g3x0fkzjb3ix0rayh7lddhy4p"))))
    (properties `((upstream-name . "wooldridge")))
    (build-system r-build-system)
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
(Wooldridge 2020, ISBN-13: 978-1-337-55886-0), and are backwards compatible with
all previous versions of the text.")
    (license license:gpl3)))

(define-public r-woodvaluationde
  (package
    (name "r-woodvaluationde")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "woodValuationDE" version))
              (sha256
               (base32
                "1sbyl4yd766lhjqghm4hq9162wz0qabiwiwnsiwzdn4fbfihxl7v"))))
    (properties `((upstream-name . "woodValuationDE")))
    (build-system r-build-system)
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
for salable and skidded volume derived in Fuchs et al. (in preparation).  Wood
revenue and harvest cost functions were taken from v.  Bodelschwingh (2018).
The consequences of disturbances refer to Dieter (2001), Moellmann and Moehring
(2017), and Fuchs et al. (2022a, 2022b).  For the full references see
documentation of the functions, package README, and Fuchs et al. (in
preparation).  Apart from Dieter (2001) and Moellmann and Moehring (2017), all
functions and factors are based on data from HessenForst, the forest
administration of the Federal State of Hesse in Germany.")
    (license license:expat)))

(define-public r-woodsimulatr
  (package
    (name "r-woodsimulatr")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WoodSimulatR" version))
              (sha256
               (base32
                "1hd696wc9r65cfsfklh6gv502gx8qp75i8j26291rgc94hb11wlr"))))
    (properties `((upstream-name . "WoodSimulatR")))
    (build-system r-build-system)
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
     "Tools for generating simulated sawn timber strength grading data with a main
focus on statistical simulation based on covariance matrices.  Simulation data
for Norway spruce sawn timber from Austria and reference values of means and
standard deviations of grade determining properties from literature for a number
of European countries are provided, as well.")
    (license license:expat)))

(define-public r-woodburymatrix
  (package
    (name "r-woodburymatrix")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WoodburyMatrix" version))
              (sha256
               (base32
                "0qimpqzr2vjlb9dcx4ysw9vjzsslwli0ps2x7qfdkl7gqjn6wv7m"))))
    (properties `((upstream-name . "WoodburyMatrix")))
    (build-system r-build-system)
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
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "womblR" version))
              (sha256
               (base32
                "0acvv7jylissacvln51pi14a8i9y02q5whrz3sx5dsnvsk00slzm"))))
    (properties `((upstream-name . "womblR")))
    (build-system r-build-system)
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
Spatiotemporal Boundary Detection Method\", by Berchuck et al (2018),
<arXiv:1805.11636>.  The paper is in press at the Journal of the American
Statistical Association.")
    (license license:gpl2+)))

(define-public r-woebinning
  (package
    (name "r-woebinning")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "woeBinning" version))
              (sha256
               (base32
                "0x890h5fh59n54587adyzphr956fkg3px8i7c378aq1fs7k35gxs"))))
    (properties `((upstream-name . "woeBinning")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "woe" version))
              (sha256
               (base32
                "15mvcmwnrqxpzn054lq85vyzq5rgxkiwbd40gnn4s3ny1xdrwgsm"))))
    (properties `((upstream-name . "woe")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wodds" version))
              (sha256
               (base32
                "00rk7wmz0rknh4v9p0r6syi1c5dch7wkq7cz9zg6n8d72sia4azv"))))
    (properties `((upstream-name . "wodds")))
    (build-system r-build-system)
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

(define-public r-wnominate
  (package
    (name "r-wnominate")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wnominate" version))
              (sha256
               (base32
                "0k4w6qbmwqd720dsslmb3xl53lr0b16rr0w9frybfq4046g9i2c6"))))
    (properties `((upstream-name . "wnominate")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wNNSel" version))
              (sha256
               (base32
                "19j2yz6lvkxpmjr0vv6pjc7j1c02y0hb3gay5sy1y0xk706aggb5"))))
    (properties `((upstream-name . "wNNSel")))
    (build-system r-build-system)
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
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wnl" version))
              (sha256
               (base32
                "06jw2crz4dfm9xpivapc8ipjjiziqn2ahgn0ssgzagkmv3idc7h1"))))
    (properties `((upstream-name . "wnl")))
    (build-system r-build-system)
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
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WMWssp" version))
              (sha256
               (base32
                "16m4hvjqdcpkvswvqwgm0pq9nm7vjrlqldzi4i69izlwccp37v47"))))
    (properties `((upstream-name . "WMWssp")))
    (build-system r-build-system)
    (home-page "http://github.com/happma/WMWssp")
    (synopsis "Wilcoxon-Mann-Whitney Sample Size Planning")
    (description
     "Calculates the minimal sample size for the Wilcoxon-Mann-Whitney test that is
needed for a given power and two sided type I error rate.  The method works for
metric data with and without ties, count data, ordered categorical data, and
even dichotomous data.  But data is needed for the reference group to generate
synthetic data for the treatment group based on a relevant effect.  For details,
see Brunner, E., Bathke A. C. and Konietschke, F: Rank- and Pseudo-Rank
Procedures in Factorial Designs - Using R and SAS, Springer Verlag, to appear.")
    (license license:gpl3)))

(define-public r-wmwpow
  (package
    (name "r-wmwpow")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wmwpow" version))
              (sha256
               (base32
                "03rd75r4wih1w7srhnwqxjkirisb43y1sd2f1wzixqj8lq0dmb25"))))
    (properties `((upstream-name . "wmwpow")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoothmest r-mass r-lamw))
    (home-page "https://cran.r-project.org/package=wmwpow")
    (synopsis
     "Precise and Accurate Power of the Wilcoxon-Mann-Whitney Rank-Sum Test for a Continuous Variable")
    (description
     "Power calculator for the two-sample Wilcoxon-Mann-Whitney rank-sum test for a
continuous outcome (Mollan, Trumble, Reifeis et.  al., Mar.  2020)
<doi:10.1080/10543406.2020.1730866> <arXiv:1901.04597>, (Mann and Whitney 1947)
<doi:10.1214/aoms/1177730491>, (Shieh, Jan, and Randles 2006)
<doi:10.1080/10485250500473099>.")
    (license license:gpl3)))

(define-public r-wmm
  (package
    (name "r-wmm")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wmm" version))
              (sha256
               (base32
                "0qy4cp4d8nlcqlcs4mqjv1f1kf1yh9y2wvh1ak6f049qlj7yfwfb"))))
    (properties `((upstream-name . "wmm")))
    (build-system r-build-system)
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
McLean et al (2004)
<https://www.ngdc.noaa.gov/geomag/WMM/data/WMMReports/TRWMM_2005.pdf>, and
Macmillian et al (2000)
<https://www.ngdc.noaa.gov/geomag/WMM/data/WMMReports/wmm2000.pdf>.")
    (license license:expat)))

(define-public r-wlreg
  (package
    (name "r-wlreg")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WLreg" version))
              (sha256
               (base32
                "0paghjcshhrr6y1gm98d6gr78zvgzhl678g9f96hppfa4q3lfpr7"))))
    (properties `((upstream-name . "WLreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-inline))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=WLreg")
    (synopsis "Regression Analysis Based on Win Loss Endpoints")
    (description
     "Use various regression models for the analysis of win loss endpoints adjusting
for non-binary and multivariate covariates.")
    (license license:gpl2+)))

(define-public r-wkutils
  (package
    (name "r-wkutils")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wkutils" version))
              (sha256
               (base32
                "1b2sbq31z9bfqm6jim56r92ilrxf9hvfd5h9xfw94ypykybvr38n"))))
    (properties `((upstream-name . "wkutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-wk r-vctrs r-tibble r-rcpp))
    (home-page "https://paleolimbot.github.io/wkutils/")
    (synopsis "Utilities for Well-Known Geometry Vectors")
    (description
     "This package provides extra utilities for well-known formats in the wk package
that are outside the scope of that package.  Utilities to parse coordinates from
data frames, plot well-known geometry vectors, extract meta information from
well-known geometry vectors, and calculate bounding boxes are provided.")
    (license license:expat)))

(define-public r-wktmo
  (package
    (name "r-wktmo")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wktmo" version))
              (sha256
               (base32
                "05pjyk0xsdazbi1x7xfmg097ybybd60zmzzm7sch1ikp05hzn0wb"))))
    (properties `((upstream-name . "wktmo")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=wktmo")
    (synopsis "Converting Weekly Data to Monthly Data")
    (description
     "Converts weekly data to monthly data.  Users can use three types of week
formats: ISO week, epidemiology week (epi week) and calendar date.")
    (license license:gpl2)))

(define-public r-wknnmi
  (package
    (name "r-wknnmi")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wkNNMI" version))
              (sha256
               (base32
                "0qpl1b2134kz9mjl38w93lp3g6kpv9ygv9hygpssm845k02hkw7c"))))
    (properties `((upstream-name . "wkNNMI")))
    (build-system r-build-system)
    (propagated-inputs (list r-infotheo r-foreach))
    (home-page "https://cran.r-project.org/package=wkNNMI")
    (synopsis "Mutual Information-Weighted k-NN Imputation Algorithm")
    (description
     "Implementation of an adaptive weighted k-nearest neighbours (wk-NN) imputation
algorithm for clinical register data developed to explicitly handle missing
values of continuous/ordinal/categorical and static/dynamic features conjointly.
 For each subject with missing data to be imputed, the method creates a feature
vector constituted by the information collected over his/her first window_size
time units of visits.  This vector is used as sample in a k-nearest neighbours
procedure, in order to select, among the other patients, the ones with the most
similar temporal evolution of the disease over time.  An ad hoc similarity
metric was implemented for the sample comparison, capable of handling the
different nature of the data, the presence of multiple missing values and
include the cross-information among features.")
    (license license:gpl3)))

(define-public r-wkb
  (package
    (name "r-wkb")
    (version "0.4-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wkb" version))
              (sha256
               (base32
                "0mah538345npkb06bcj18mb6qnnx8nn7bdqmvqqpbawallh546a9"))))
    (properties `((upstream-name . "wkb")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (home-page "https://cran.r-project.org/package=wkb")
    (synopsis "Convert Between Spatial Objects and Well-Known Binary Geometry")
    (description
     "Utility functions to convert between the Spatial classes specified by the
package sp', and the well-known binary (WKB) representation for geometry
specified by the Open Geospatial Consortium'.  Supports Spatial objects of class
SpatialPoints', SpatialPointsDataFrame', SpatialLines', SpatialLinesDataFrame',
SpatialPolygons', and SpatialPolygonsDataFrame'.  Supports WKB geometry types
Point', LineString', Polygon', MultiPoint', MultiLineString', and MultiPolygon'.
 Includes extensions to enable creation of maps with TIBCO Spotfire'.")
    (license license:bsd-3)))

(define-public r-wiser
  (package
    (name "r-wiser")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wiseR" version))
              (sha256
               (base32
                "187ylwhk06957x9zm5r0m6w9wg08im83myz3s4gr927ig8yv3b5f"))))
    (properties `((upstream-name . "wiseR")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-shinywidgets
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinybs
                             r-shinyalert
                             r-shiny
                             r-rintrojs
                             r-rhandsontable
                             r-rgraphviz
                             r-rbgl
                             r-psych
                             r-missranger
                             r-linkcomm
                             r-igraph
                             r-hydenet
                             r-graph
                             r-dt
                             r-dplyr
                             r-desctools
                             r-bnlearn
                             r-arules))
    (home-page "https://github.com/SAFE-ICU/wiseR")
    (synopsis
     "Shiny Application for End-to-End Bayesian Decision Network Analysis and Web-Deployment")
    (description
     "This package provides a Shiny application for learning Bayesian Decision
Networks from data.  This package can be used for probabilistic reasoning (in
the observational setting), causal inference (in the presence of interventions)
and learning policy decisions (in Decision Network setting).  Functionalities
include end-to-end implementations for data-preprocessing, structure-learning,
exact inference, approximate inference, extending the learned structure to
Decision Networks and policy optimization using statistically rigorous methods
such as bootstraps, resampling, ensemble-averaging and cross-validation.  In
addition to Bayesian Decision Networks, it also features correlation networks,
community-detection, graph visualizations, graph exports and web-deployment of
the learned models as Shiny dashboards.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-wisam
  (package
    (name "r-wisam")
    (version "0.2.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wISAM" version))
              (sha256
               (base32
                "0c5ic98ihpzkycsj9wg0127civm4w1rmkkw6zsjp8sfn20cl8a8z"))))
    (properties `((upstream-name . "wISAM")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=wISAM")
    (synopsis "Weighted Inbred Strain Association Mapping")
    (description
     "In the course of a genome-wide association study, the situation often arises
that some phenotypes are known with greater precision than others.  It could be
that some individuals are known to harbor more micro-environmental variance than
others.  In the case of inbred strains of model organisms, it could be the case
that more organisms were observed from some strains than others, so the strains
with more organisms have better-estimated means.  Package wISAM handles this
situation by allowing for weighting of each observation according to residual
variance.  Specifically, the weight parameter to the function conduct_scan()
takes the precision of each observation (one over the variance).")
    (license license:gpl3)))

(define-public r-wiqid
  (package
    (name "r-wiqid")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wiqid" version))
              (sha256
               (base32
                "0ccx009r53yz52q3jjh6kify640qgc895y226p1gacnv9sdajssp"))))
    (properties `((upstream-name . "wiqid")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-plotrix
                             r-mcmcoutput
                             r-mass
                             r-hdinterval
                             r-coda))
    (home-page "https://mmeredith.net/R/wiqid/")
    (synopsis "Quick and Dirty Estimates for Wildlife Populations")
    (description
     "This package provides simple, fast functions for maximum likelihood and Bayesian
estimates of wildlife population parameters, suitable for use with simulated
data or bootstraps.  Early versions were indeed quick and dirty, but optional
error-checking routines and meaningful error messages have been added.  Includes
single and multi-season occupancy, closed capture population estimation,
survival, species richness and distance measures.")
    (license license:gpl3)))

(define-public r-wins
  (package
    (name "r-wins")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WINS" version))
              (sha256
               (base32
                "05jrf77nzw7q8j0jifl6icrwwqw07aa9gqsjl6214gzr7c2ma8f3"))))
    (properties `((upstream-name . "WINS")))
    (build-system r-build-system)
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
stratified analysis and inverse probability of censoring weighting (IPCW)
analysis.")
    (license license:gpl2+)))

(define-public r-winratio
  (package
    (name "r-winratio")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WinRatio" version))
              (sha256
               (base32
                "0d064qq9zad9bdacldhicj3xhyrvp0fcqrxfj594yzra2qwgkx90"))))
    (properties `((upstream-name . "WinRatio")))
    (build-system r-build-system)
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

(define-public r-wingui
  (package
    (name "r-wingui")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wingui" version))
              (sha256
               (base32
                "0yf6k33qpcjzyb7ckwsxpdw3pcsja2wsf08vaca7qw27yxrbmaa3"))))
    (properties `((upstream-name . "wingui")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=wingui")
    (synopsis "Advanced Windows Functions")
    (description
     "Helps for interfacing with the operating system particularly for Windows.")
    (license (list license:gpl2 license:gpl3 license:expat))))

(define-public r-winfapreader
  (package
    (name "r-winfapreader")
    (version "0.1-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "winfapReader" version))
              (sha256
               (base32
                "01hc0kcm7qfzk47rci6lfmrqs4zfj8z7abqydgi2ckq8n1k2pd0h"))))
    (properties `((upstream-name . "winfapReader")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://ilapros.github.io/winfapReader/")
    (synopsis "Interact with Peak Flow Data in the United Kingdom")
    (description
     "Obtain information on peak flow data from the National River Flow Archive (NRFA)
in the United Kingdom, either from the Peak Flow Dataset files
<https://nrfa.ceh.ac.uk/peak-flow-dataset> once these have been downloaded to
the user's computer or using the NRFA's API. These files are in a format
suitable for direct use in the WINFAP software, hence the name of the package.")
    (license license:gpl3)))

(define-public r-wineq
  (package
    (name "r-wineq")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wINEQ" version))
              (sha256
               (base32
                "0vsi930gp7w2ddqfy7dw82w89v7vrrv8x5zg9j8bhiz4kaf53153"))))
    (properties `((upstream-name . "wINEQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampling r-dplyr))
    (home-page "https://cran.r-project.org/package=wINEQ")
    (synopsis "Inequality Measures for Weighted Data")
    (description
     "Computes inequality measures of a given variable taking into account weights.
Bootstrap method provides distribution of inequality measures and several
additional statistics.")
    (license license:gpl3)))

(define-public r-windsorair
  (package
    (name "r-windsorair")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "windsoraiR" version))
              (sha256
               (base32
                "1smd3zw5ra1fba6mds3diadcmbw59jlvmrvfzzi4fss91wv50jql"))))
    (properties `((upstream-name . "windsoraiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/windsor-ai/windsoraiR/")
    (synopsis "Access the 'Windsor.ai' API")
    (description
     "Collect multichannel marketing data from sources such as Google analytics,
Facebook Ads, and many others using the Windsor.ai API
<https://www.windsor.ai/api-fields/>.")
    (license license:expat)))

(define-public r-windex
  (package
    (name "r-windex")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "windex" version))
              (sha256
               (base32
                "063lhxpa8gwkaxa5p61dac239s6b11mv53d8dcah5h1q04inshm0"))))
    (properties `((upstream-name . "windex")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d r-phangorn r-geiger r-ape))
    (home-page "https://cran.r-project.org/package=windex")
    (synopsis "Analysing Convergent Evolution using the Wheatsheaf Index")
    (description
     "Analysing convergent evolution using the Wheatsheaf index, described in Arbuckle
et al. (2014) <doi: 10.1111/2041-210X.12195>, and some other random but perhaps
useful functions.")
    (license license:gpl2)))

(define-public r-windcurves
  (package
    (name "r-windcurves")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WindCurves" version))
              (sha256
               (base32
                "1vvcp1g5a677g9zqssdkh3zdy646zdkzy75nqhy497bpcgw43q1b"))))
    (properties `((upstream-name . "WindCurves")))
    (build-system r-build-system)
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
    (version "1.2.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "windAC" version))
              (sha256
               (base32
                "00jmgyzi3ars0pwxg5b1dy99pwwwiavzg672x4c46pr65k3iy957"))))
    (properties `((upstream-name . "windAC")))
    (build-system r-build-system)
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
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "winch" version))
              (sha256
               (base32
                "05yph3z34jsl8lgxd3wnq0in9l9ypl7qbiib1cngr1q0si2xvfp8"))))
    (properties `((upstream-name . "winch")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-procmaps))
    (native-inputs (list r-knitr pkg-config))
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wilson" version))
              (sha256
               (base32
                "050hi6rigs024is1ry0yymqapgqfhzpp0ghk5ya028k71k22lksx"))))
    (properties `((upstream-name . "wilson")))
    (build-system r-build-system)
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

(define-public r-wildviz
  (package
    (name "r-wildviz")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wildviz" version))
              (sha256
               (base32
                "03vhacaxp5fahq5afcf1q0qvmndpqc6a63pnins7h3p8ryvlpx14"))))
    (properties `((upstream-name . "wildviz")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shinythemes
                             r-shiny
                             r-rsqlite
                             r-rnoaa
                             r-purrr
                             r-plotly
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bradraff/wildviz")
    (synopsis
     "Compiles and Visualizes Wildfire, Climate, and Air Quality Data")
    (description
     "Fetches data from three disparate data sources and allows user to perform
analyses on them.  It offers two core components: 1.  A robust data retrieval
and preparation infrastructure for wildfire, climate, and air quality index data
and 2.  A simple, informative, and interactive visualizations of the
aforementioned datasets for California counties from 2011 through 2015.  The
sources of data are: wildfire data from Kaggle
<https://www.kaggle.com/rtatman/188-million-us-wildfires>, climate data from the
National Oceanic and Atmospheric Administration
<https://www.ncdc.noaa.gov/cdo-web/token>, and air quality data from the
Environmental Protection Agency
<https://aqs.epa.gov/aqsweb/documents/data_api.html>.")
    (license license:gpl2)))

(define-public r-wildpoker
  (package
    (name "r-wildpoker")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wildpoker" version))
              (sha256
               (base32
                "1302ain55spz34irmq49sp9b1pvrn2nxmzmqs8m9wdk6g82h3s27"))))
    (properties `((upstream-name . "wildpoker")))
    (build-system r-build-system)
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
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wildmeta" version))
              (sha256
               (base32
                "1ibcq9lpfdzgnph9n4r00k14bqzzkcv9r04wfgmal8ixlzki7fni"))))
    (properties `((upstream-name . "wildmeta")))
    (build-system r-build-system)
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
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wildlifeDI" version))
              (sha256
               (base32
                "0rpbrnclj07pdcsrkc2bin52msh1k2a38454227jk6wfb372gprg"))))
    (properties `((upstream-name . "wildlifeDI")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-sf r-dplyr r-adehabitatlt))
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
analysis in large tracking datasets.  The package draws heavily on the classes
and methods developed in the adehabitat packages.")
    (license license:gpl3)))

(define-public r-wildcard
  (package
    (name "r-wildcard")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wildcard" version))
              (sha256
               (base32
                "0qkzab84z95g5f4fv3v4wisccgd7k9m3210pz4nvm1x8rfaqfjf1"))))
    (properties `((upstream-name . "wildcard")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wilcoxmed" version))
              (sha256
               (base32
                "0wnwxgm5g4fxdkrb6h124ngaw0s88yr2s8iqshb77vzj12kvb9m1"))))
    (properties `((upstream-name . "wilcoxmed")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=wilcoxmed")
    (synopsis
     "Computes Values for the 1-Sample Wilcoxon Sign Rank Test for Medians")
    (description
     "An implementation of the 1-Sample Wilcoxon Sign rank test for medians.  It
includes 2 functions, W_stat(), which computes the exact probabilities of the
Wilcoxon Sign Rank Test Statistic, W. The second function, Wilcox.m.test()
allows the user to conduct the 1-Sample Wilcoxon Sign Rank hypothesis test for
medians, this also allows the user to conduct the hypothesis test for the normal
approximation, based on the techniques of Bickel and Doksum (1973,
ISBN:013850363X).")
    (license license:gpl2)))

(define-public r-wikitools
  (package
    (name "r-wikitools")
    (version "0.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikiTools" version))
              (sha256
               (base32
                "1h0xi7vw2vzmarxfx0gdy895sh53mz4gj4zwrpynwc9d8cppx50q"))))
    (properties `((upstream-name . "wikiTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-wikidatar r-wikidataqueryservicer r-ratelimitr
                             r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=wikiTools")
    (synopsis "Tools for Wikidata and Wikipedia")
    (description
     "This package provides a set of wrappers intended to check, read and download
information from the Wikimedia sources.  It is specifically created to work with
names of celebrities, in which case their information and statistics can be
downloaded.  Additionally, it also builds links and snippets to use in
combination with the function gallery() in netCoin package.")
    (license license:gpl3)))

(define-public r-wikitaxa
  (package
    (name "r-wikitaxa")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikitaxa" version))
              (sha256
               (base32
                "1z7p7dwgl8x4ambwss5dqlp4zgz52mgj0vhx2bqwizarmx9ji1xs"))))
    (properties `((upstream-name . "wikitaxa")))
    (build-system r-build-system)
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

(define-public r-wikipedir
  (package
    (name "r-wikipedir")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WikipediR" version))
              (sha256
               (base32
                "1w4ggq42vlq7zbrz3v9ripz9yscbd8m8as60q7cplpxn9zqfdl7q"))))
    (properties `((upstream-name . "WikipediR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ironholds/WikipediR/")
    (synopsis "MediaWiki API Wrapper")
    (description
     "This package provides a wrapper for the MediaWiki API, aimed particularly at the
Wikimedia production wikis, such as Wikipedia.  It can be used to retrieve page
text, information about users or the history of pages, and elements of the
category tree.")
    (license license:expat)))

(define-public r-wikipediatrend
  (package
    (name "r-wikipediatrend")
    (version "2.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikipediatrend" version))
              (sha256
               (base32
                "11ng7qsb4954mgsz55ix86z0ynh4xgflcp6dzl0y4zi6zdrj87i7"))))
    (properties `((upstream-name . "wikipediatrend")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rvest
                             r-pageviews
                             r-httr
                             r-hellno
                             r-glue
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=wikipediatrend")
    (synopsis "Public Subject Attention via Wikipedia Page View Statistics")
    (description
     "This package provides a convenience wrapper for the Wikipedia page access
statistics API binding the pageviews package and using an additional self
composed data source thus covering a time span from very late 2007 up to the
present for daily page views.")
    (license license:gpl2+)))

(define-public r-wikipediar
  (package
    (name "r-wikipediar")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WikipediaR" version))
              (sha256
               (base32
                "0fxk247jb82g0f3nmwraa4kvdpjxy5s4dcyzj9vkjw2lq8by3l0h"))))
    (properties `((upstream-name . "WikipediaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-httr))
    (home-page "http://www.r-project.org")
    (synopsis "R-Based Wikipedia Client")
    (description
     "This package provides an interface to the Wikipedia web application programming
interface (API), using internet connexion.Three functions provide details for a
specific Wikipedia page : all links that are present, all pages that link to,
all the contributions (revisions for main pages, and discussions for talk
pages).  Two functions provide details for a specific user : all contributions,
and general information (as name, gender, rights or groups).  It provides
additional information compared to others packages, as WikipediR. It does not
need login.  The multiplex network that can be constructed from the results of
the functions of WikipediaR can be modeled as Stochastic Block Model as in
Barbillon P., Donnet, S., Lazega E., and Bar-Hen A. : Stochastic Block Models
for Multiplex networks: an application to networks of researchers, ArXiv
1501.06444, http://arxiv.org/abs/1501.06444.")
    (license license:gpl3+)))

(define-public r-wikilake
  (package
    (name "r-wikilake")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikilake" version))
              (sha256
               (base32
                "1zz5v6kfg5blpz9kl6pz4z9xqs8xpcklncq4k8996hjn4a8mpvyz"))))
    (properties `((upstream-name . "wikilake")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikifacts" version))
              (sha256
               (base32
                "1fw1chha6mcrmv1f9rjg01g84bgzkgf1h76l926brjs5gsn4i414"))))
    (properties `((upstream-name . "wikifacts")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WikidataR" version))
              (sha256
               (base32
                "120833b7zyq1rhmn9c8iv0j6br60af7gbn5lc4dil55qhh2lp9rx"))))
    (properties `((upstream-name . "WikidataR")))
    (build-system r-build-system)
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
QuickStatements); and handle and manipulate Wikidata objects (as lists and
tibbles).  Uses the Wikidata and Quickstatements APIs.")
    (license license:expat)))

(define-public r-wikidataqueryservicer
  (package
    (name "r-wikidataqueryservicer")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WikidataQueryServiceR" version))
              (sha256
               (base32
                "1bl1nbhbmss8cj9ni7plsjs996n4rwqv6h8bh1zj4whs8z4fw50f"))))
    (properties `((upstream-name . "WikidataQueryServiceR")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wikibooks" version))
              (sha256
               (base32
                "1ws6spwxxcnjrzcngbr6n4hqy1di7s2h8iz6a62gyw84kpl542bw"))))
    (properties `((upstream-name . "wikibooks")))
    (build-system r-build-system)
    (home-page "https://de.wikibooks.org/wiki/GNU_R")
    (synopsis "Functions and Datasets of the German WikiBook \"GNU R\"")
    (description
     "The german Wikibook \"GNU R\" introduces R to new users.  This package is a
collection of functions and datas used in the german WikiBook \"GNU R\".")
    (license license:gpl2+)))

(define-public r-wig
  (package
    (name "r-wig")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wig" version))
              (sha256
               (base32
                "0gj8sxd5903h0rizd260ffskarywkvf87ck4ixf8gb1z1vgqf8i4"))))
    (properties `((upstream-name . "wig")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-magrittr r-dplyr))
    (home-page "https://github.com/ramiromagno/wig")
    (synopsis "Import WIG Data into R in Long Format")
    (description "Import WIG data into R in long format.")
    (license license:expat)))

(define-public r-wiesbaden
  (package
    (name "r-wiesbaden")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wiesbaden" version))
              (sha256
               (base32
                "04xr757lhcfafcc8xfcbqrg982ifig50lx1khw718kzydf7xwr7w"))))
    (properties `((upstream-name . "wiesbaden")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-stringi
                             r-readr
                             r-keyring
                             r-jsonlite
                             r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sumtxt/wiesbaden/")
    (synopsis
     "Access Databases from the Federal Statistical Office of Germany")
    (description
     "Retrieve and import data from different databases of the Federal Statistical
Office of Germany (DESTATIS) using their SOAP XML web service
<https://www-genesis.destatis.de/>.")
    (license license:gpl3)))

(define-public r-wienr
  (package
    (name "r-wienr")
    (version "0.3-7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WienR" version))
              (sha256
               (base32
                "1z0adlw9gr966035gkmkrnsl89r8llqfpl7ya31s4c9ijbjdap87"))))
    (properties `((upstream-name . "WienR")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "widyr" version))
              (sha256
               (base32
                "05300hslrfpsqaxzzbmxgl2s2dz3wldpmnxh9hzgy97xkdc0c6fn"))))
    (properties `((upstream-name . "widyr")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "widgetframe" version))
              (sha256
               (base32
                "0j0d73m72nzfc1wyrgsqr99ldx72adis6pd57mpim55hz0n9l224"))))
    (properties `((upstream-name . "widgetframe")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-magrittr r-htmlwidgets r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bhaskarvk/widgetframe")
    (synopsis "'Htmlwidgets' in Responsive 'iframes'")
    (description
     "This package provides two functions frameableWidget()', and frameWidget()'.  The
frameableWidget() is used to add extra code to a htmlwidget which allows is to
be rendered correctly inside a responsive iframe'.  The frameWidget() is a
htmlwidget which displays content of another htmlwidget inside a responsive
iframe'.  These functions allow for easier embedding of htmlwidgets in content
management systems such as wordpress', blogger etc.  They also allow for
separation of widget content from main HTML content where CSS of the main HTML
could interfere with the widget.")
    (license license:expat)))

(define-public r-widals
  (package
    (name "r-widals")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "widals" version))
              (sha256
               (base32
                "1094yaaq2xb0ykvc1j3hs87j1p4h7zgf8mkn4han8iw5fmr9zncy"))))
    (properties `((upstream-name . "widals")))
    (build-system r-build-system)
    (propagated-inputs (list r-snowfall))
    (home-page "https://cran.r-project.org/package=widals")
    (synopsis "Weighting by Inverse Distance with Adaptive Least Squares")
    (description
     "Computationally easy modeling, interpolation, forecasting of massive
temporal-spacial data.")
    (license license:gpl2+)))

(define-public r-wiad
  (package
    (name "r-wiad")
    (version "0.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wiad" version))
              (sha256
               (base32
                "1yr1cng5659n8chfghpyfxvqzl8b57vdjzv5m22cbcvrlq6m6p4j"))))
    (properties `((upstream-name . "wiad")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-dt r-dplyr r-data-table r-abind))
    (home-page "https://cran.r-project.org/package=wiad")
    (synopsis "Wood Image Analysis and Dataset")
    (description
     "Providing a user-friendly interface to digitize wood imagery such as tree ring
scans.  The package offers a web-based application that the user can run locally
from their computers to analyze wood characteristics.")
    (license license:agpl3)))

(define-public r-whsample
  (package
    (name "r-whsample")
    (version "0.9.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whSample" version))
              (sha256
               (base32
                "1dkw155xk36r9vmkqxlg2vw45nbpypivd8q5v3i5995biyib4l2k"))))
    (properties `((upstream-name . "whSample")))
    (build-system r-build-system)
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
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whomds" version))
              (sha256
               (base32
                "1wzdf4lm0kmqn3hq09rydib5z96vzb2lhd3k98mamlfvydagscxi"))))
    (properties `((upstream-name . "whomds")))
    (build-system r-build-system)
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

(define-public r-whoami
  (package
    (name "r-whoami")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whoami" version))
              (sha256
               (base32
                "19fwl7z55s4kl2xzwqwh8iwg13kdrv222vyl3kibxgwrjcjwj2y2"))))
    (properties `((upstream-name . "whoami")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://github.com/r-lib/whoami#readme")
    (synopsis
     "Username, Full Name, Email Address, 'GitHub' Username of the Current User")
    (description
     "Look up the username and full name of the current user, the current user's email
address and GitHub username, using various sources of system and configuration
information.")
    (license license:expat)))

(define-public r-whoa
  (package
    (name "r-whoa")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whoa" version))
              (sha256
               (base32
                "1wa1s2dqwkmfa3avrgqkm6w59b6vm2xnnb77q25w187wdpjq65xx"))))
    (properties `((upstream-name . "whoa")))
    (build-system r-build-system)
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

(define-public r-whitestripe
  (package
    (name "r-whitestripe")
    (version "2.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WhiteStripe" version))
              (sha256
               (base32
                "1w9shk9qx365pxi2nglvjd26xggylswd83aclg7l45q0dlli3x31"))))
    (properties `((upstream-name . "WhiteStripe")))
    (build-system r-build-system)
    (propagated-inputs (list r-oro-nifti r-neurobase r-mgcv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=WhiteStripe")
    (synopsis "White Matter Normalization for Magnetic Resonance Images")
    (description
     "Shinohara (2014) <doi:10.1016/j.nicl.2014.08.008> introduced WhiteStripe', an
intensity-based normalization of T1 and T2 images, where normal appearing white
matter performs well, but requires segmentation.  This method performs white
matter mean and standard deviation estimates on data that has been
rigidly-registered to the MNI template and uses histogram-based methods.")
    (license license:gpl3)))

(define-public r-whitestrap
  (package
    (name "r-whitestrap")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whitestrap" version))
              (sha256
               (base32
                "1jcnxqxvkhyz9j6jay5834ncv5fxb9qiyyyj3b8al75mqknmn8ra"))))
    (properties `((upstream-name . "whitestrap")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whitening" version))
              (sha256
               (base32
                "1gc5pf4b9s8w4jh1wygyb9a9w6hi4zfd7ivlwshhzrmb43x5srsp"))))
    (properties `((upstream-name . "whitening")))
    (build-system r-build-system)
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

(define-public r-whitechapelr
  (package
    (name "r-whitechapelr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whitechapelR" version))
              (sha256
               (base32
                "0mnq5m59mw8w5g1p0h2xzlz738j397b3444km59bm5yln3j0nsbi"))))
    (properties `((upstream-name . "whitechapelR")))
    (build-system r-build-system)
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
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whitebox" version))
              (sha256
               (base32
                "0l17wik30fbrr2b1hraqs55y76vcc2v826giq92rzgdzh0v7di3n"))))
    (properties `((upstream-name . "whitebox")))
    (build-system r-build-system)
    (inputs (list))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/giswqs/whiteboxR")
    (synopsis "'WhiteboxTools' R Frontend")
    (description
     "An R frontend for the WhiteboxTools library, which is an advanced geospatial
data analysis platform developed by Prof. John Lindsay at the University of
Guelph's Geomorphometry and Hydrogeomatics Research Group.  WhiteboxTools can be
used to perform common geographical information systems (GIS) analysis
operations, such as cost-distance analysis, distance buffering, and raster
reclassification.  Remote sensing and image processing tasks include image
enhancement (e.g. panchromatic sharpening, contrast adjustments), image
mosaicing, numerous filtering operations, simple classification (k-means), and
common image transformations.  WhiteboxTools also contains advanced tooling for
spatial hydrological analysis (e.g. flow-accumulation, watershed delineation,
stream network analysis, sink removal), terrain analysis (e.g. common terrain
indices such as slope, curvatures, wetness index, hillshading; hypsometric
analysis; multi-scale topographic position analysis), and LiDAR data processing.
 Suggested citation: Lindsay (2016) <doi:10.1016/j.cageo.2016.07.003>.")
    (license license:expat)))

(define-public r-whippr
  (package
    (name "r-whippr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whippr" version))
              (sha256
               (base32
                "16xmbsjzzdf2s19ix655jqpy8v98c39lkllh390zsv9xb12rgryr"))))
    (properties `((upstream-name . "whippr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-usethis
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
    (home-page "https://github.com/fmmattioni/whippr")
    (synopsis "Tools for Manipulating Gas Exchange Data")
    (description
     "Set of tools for manipulating gas exchange data from cardiopulmonary exercise
testing.")
    (license license:expat)))

(define-public r-whereport
  (package
    (name "r-whereport")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whereport" version))
              (sha256
               (base32
                "1gdqzr2hrnpxbwl7cfps4m3xja8wkgwfs50i2nailybympvdnxm4"))))
    (properties `((upstream-name . "whereport")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=whereport")
    (synopsis "Geolocalization of IATA Codes")
    (description
     "Retrieve geographical information for airports using their IATA or ICAO codes.")
    (license license:expat)))

(define-public r-whereami
  (package
    (name "r-whereami")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "whereami" version))
              (sha256
               (base32
                "0mjq9haacsf0zkgh7xxx8dr67hnw5ijjdhaz8c69mfjmd2zfzfwq"))))
    (properties `((upstream-name . "whereami")))
    (build-system r-build-system)
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

(define-public r-wheatmap
  (package
    (name "r-wheatmap")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wheatmap" version))
              (sha256
               (base32
                "064idlrnb85xxav39gp3n854fic6514khvazrf5d0x48crpzyvdp"))))
    (properties `((upstream-name . "wheatmap")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zwdzwd/wheatmap")
    (synopsis "Incrementally Build Complex Plots using Natural Semantics")
    (description
     "Builds complex plots, heatmaps in particular, using natural semantics.  Bigger
plots can be assembled using directives such as LeftOf', RightOf', TopOf', and
Beneath and more.  Other features include clustering, dendrograms and
integration with ggplot2 generated grid objects.  This package is particularly
designed for bioinformaticians to assemble complex plots for publication.")
    (license license:gpl3)))

(define-public r-whatif
  (package
    (name "r-whatif")
    (version "1.5-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WhatIf" version))
              (sha256
               (base32
                "19w5qw123iahrx96379lrx8i7v3x2ck5dhklf58iw0dmj4pfy2kg"))))
    (properties `((upstream-name . "WhatIf")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbmcapply r-lpsolve))
    (home-page "https://gking.harvard.edu/whatif")
    (synopsis "Software for Evaluating Counterfactuals")
    (description
     "Inferences about counterfactuals are essential for prediction, answering what if
questions, and estimating causal effects.  However, when the counterfactuals
posed are too far from the data at hand, conclusions drawn from well-specified
statistical analyses become based largely on speculation hidden in convenient
modeling assumptions that few would be willing to defend.  Unfortunately,
standard statistical approaches assume the veracity of the model rather than
revealing the degree of model-dependence, which makes this problem hard to
detect.  WhatIf offers easy-to-apply methods to evaluate counterfactuals that do
not require sensitivity testing over specified classes of models.  If an
analysis fails the tests offered here, then we know that substantive inferences
will be sensitive to at least some modeling choices that are not based on
empirical evidence, no matter what method of inference one chooses to use.
WhatIf implements the methods for evaluating counterfactuals discussed in Gary
King and Langche Zeng, 2006, \"The Dangers of Extreme Counterfactuals,\" Political
Analysis 14 (2) <DOI:10.1093/pan/mpj004>; and Gary King and Langche Zeng, 2007,
\"When Can History Be Our Guide? The Pitfalls of Counterfactual Inference,\"
International Studies Quarterly 51 (March)
<DOI:10.1111/j.1468-2478.2007.00445.x>.")
    (license license:gpl3+)))

(define-public r-wgteff
  (package
    (name "r-wgteff")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WgtEff" version))
              (sha256
               (base32
                "1z8pndv43ssgmzldwaq0088lmf1g2mkmrbmzyaismcpngn9fqxsk"))))
    (properties `((upstream-name . "WgtEff")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WGScan" version))
              (sha256
               (base32
                "0jma6di9hbdimswdfm58568vahcjy46hbhb78idjsdz4bl9apvq3"))))
    (properties `((upstream-name . "WGScan")))
    (build-system r-build-system)
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

(define-public r-wgeesel
  (package
    (name "r-wgeesel")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wgeesel" version))
              (sha256
               (base32
                "0lybvsq5168cjybzv2dbyx2z8aakcx7i7ivm8zc90haiispm9n5x"))))
    (properties `((upstream-name . "wgeesel")))
    (build-system r-build-system)
    (propagated-inputs (list r-poisnor r-mass r-geepack r-crtgeedr r-bindata))
    (home-page "https://cran.r-project.org/package=wgeesel")
    (synopsis "Weighted Generalized Estimating Equations and Model Selection")
    (description
     "Weighted generalized estimating equations (WGEE) is an extension of generalized
linear models to longitudinal clustered data by incorporating the correlation
within-cluster when data is missing at random (MAR).  The parameters in mean,
scale correlation structures are estimated based on quasi-likelihood.  Multiple
model selection criterion are provided for selection of mean model and working
correlation structure based on WGEE/GEE.")
    (license license:gpl2)))

(define-public r-wflo
  (package
    (name "r-wflo")
    (version "1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wflo" version))
              (sha256
               (base32
                "051hgfj74qc8ilcsrkd2ppvaab685l4c7kk9rwr2zb6aj6asfbkl"))))
    (properties `((upstream-name . "wflo")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-raster r-progress r-plotrix r-emstreer))
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wfindr" version))
              (sha256
               (base32
                "0m5xj50hqdjj4lpbgx1kp3my4njr0nz09hd63rf4qf1ls8r7zil9"))))
    (properties `((upstream-name . "wfindr")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wfg" version))
              (sha256
               (base32
                "1r6wb8v42mpapjfhmkmghm9fq21c3s4zmdxy8nlh31nsja71c37d"))))
    (properties `((upstream-name . "wfg")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wfe" version))
              (sha256
               (base32
                "0lcg7hzdll1wqdwydkk96m4n715h8sjn3qwhabm245m0hqhdf7is"))))
    (properties `((upstream-name . "wfe")))
    (build-system r-build-system)
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
    (version "0.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weyl" version))
              (sha256
               (base32
                "0gpfs0a20hxjkpakmfdpf9a98hipjwgaajdm4364qvqrx8y5ifna"))))
    (properties `((upstream-name . "weyl")))
    (build-system r-build-system)
    (propagated-inputs (list r-spray r-mathjaxr r-freealg r-disordr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/weyl")
    (synopsis "The Weyl Algebra")
    (description
     "This package provides a suite of routines for Weyl algebras.  Notation follows
Coutinho (1995, ISBN 0-521-55119-6, \"A Primer of Algebraic D-Modules\").")
    (license license:gpl2+)))

(define-public r-wevid
  (package
    (name "r-wevid")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wevid" version))
              (sha256
               (base32
                "1ranmqhgfkrky7r4qk563n9nlz2syn3vj85lmfajq01csadzjdpl"))))
    (properties `((upstream-name . "wevid")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-reshape2 r-proc r-mclust r-ggplot2))
    (home-page
     "http://www.homepages.ed.ac.uk/pmckeigu/preprints/classify/wevidtutorial.html")
    (synopsis
     "Quantifying Performance of a Binary Classifier Through Weight of Evidence")
    (description
     "The distributions of the weight of evidence (log Bayes factor) favouring case
over noncase status in a test dataset (or test folds generated by
cross-validation) can be used to quantify the performance of a diagnostic test
(McKeigue (2019), <doi:10.1177/0962280218776989>).  The package can be used with
any test dataset on which you have observed case-control status and have
computed prior and posterior probabilities of case status using a model learned
on a training dataset.  To quantify how the predictor will behave as a risk
stratifier, the quantiles of the distributions of weight of evidence in cases
and controls can be calculated and plotted.")
    (license license:gpl3)))

(define-public r-wemix
  (package
    (name "r-wemix")
    (version "3.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeMix" version))
              (sha256
               (base32
                "0ikq7ykxa7dz3463ppwx8kpbzmlbv4kjm97vc45xd39pv21ici9r"))))
    (properties `((upstream-name . "WeMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod
                             r-rmpfr
                             r-numderiv
                             r-npflow
                             r-minqa
                             r-matrix
                             r-lme4))
    (native-inputs (list r-knitr))
    (home-page "https://american-institutes-for-research.github.io/WeMix/")
    (synopsis
     "Weighted Mixed-Effects Models Using Multilevel Pseudo Maximum Likelihood Estimation")
    (description
     "Run mixed-effects models that include weights at every level.  The WeMix package
fits a weighted mixed model, also known as a multilevel, mixed, or hierarchical
linear model (HLM).  The weights could be inverse selection probabilities, such
as those developed for an education survey where schools are sampled
probabilistically, and then students inside of those schools are sampled
probabilistically.  Although mixed-effects models are already available in R,
WeMix is unique in implementing methods for mixed models using weights at
multiple levels.  Both linear and logit models are supported.  Models may have
up to three levels.")
    (license license:gpl2)))

(define-public r-welo
  (package
    (name "r-welo")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "welo" version))
              (sha256
               (base32
                "1byhqlh2nykvqira0fqbbdzsgpn3alhkd16snsl3783mlcl3cp7f"))))
    (properties `((upstream-name . "welo")))
    (build-system r-build-system)
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

(define-public r-wellknown
  (package
    (name "r-wellknown")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wellknown" version))
              (sha256
               (base32
                "0d0sxmp58dscfxny1492lgw8x0ypwakmrkkl7rcfs2fz7v26ygj8"))))
    (properties `((upstream-name . "wellknown")))
    (build-system r-build-system)
    (propagated-inputs (list r-wk r-rcpp r-jsonlite r-bh))
    (home-page "https://docs.ropensci.org/wellknown/")
    (synopsis "Convert Between 'WKT' and 'GeoJSON'")
    (description
     "Convert WKT to GeoJSON and GeoJSON to WKT'.  Functions included for converting
between GeoJSON to WKT', creating both GeoJSON features, and non-features,
creating WKT from R objects (e.g., lists, data.frames, vectors), and linting
WKT'.")
    (license license:expat)))

(define-public r-welchadf
  (package
    (name "r-welchadf")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "welchADF" version))
              (sha256
               (base32
                "02a8w1dhc2nd74hml4z3cdlx0d2a9rcx47v341kgav620i8bn88g"))))
    (properties `((upstream-name . "welchADF")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weirs" version))
              (sha256
               (base32
                "17a0ppi7ghikrwn39zvhg2cvhmnr3w0qi7r9lj22x65ii9nzadd7"))))
    (properties `((upstream-name . "weirs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=weirs")
    (synopsis "Hydraulics Package to Compute Open-Channel Flow over Weirs")
    (description
     "This package provides computational support for flow over weirs, such as
sharp-crested, broad-crested, and embankments.  Initially, the package supports
broad- and sharp-crested weirs.")
    (license license:gpl2)))

(define-public r-weightsvm
  (package
    (name "r-weightsvm")
    (version "1.7-11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeightSVM" version))
              (sha256
               (base32
                "0sbf81j579k46bg11wv987ax7ncfmp6sy61w6ydk1dr9hcfjv3s9"))))
    (properties `((upstream-name . "WeightSVM")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightr" version))
              (sha256
               (base32
                "1qsyak91kdgv48wf6qhpfbiirlg4ba9w6rw8ynjcsnqqdvmly1lb"))))
    (properties `((upstream-name . "weightr")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightQuant" version))
              (sha256
               (base32
                "0v2wxgvv8v5filiabcd19bmcprfv3l8gg79v6s3c5wmnzir617s5"))))
    (properties `((upstream-name . "weightQuant")))
    (build-system r-build-system)
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

(define-public r-weightit
  (package
    (name "r-weightit")
    (version "0.13.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeightIt" version))
              (sha256
               (base32
                "0z32v7p59c1xb3rfcgb76gl3kyxz0ayqg3q0cjs9pb1x4wjdhl8f"))))
    (properties `((upstream-name . "WeightIt")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-crayon r-cobalt r-backports))
    (native-inputs (list r-knitr))
    (home-page "https://ngreifer.github.io/WeightIt/")
    (synopsis "Weighting for Covariate Balance in Observational Studies")
    (description
     "Generates balancing weights for causal effect estimation in observational
studies with binary, multi-category, or continuous point or longitudinal
treatments by easing and extending the functionality of several R packages and
providing in-house estimation methods.  Available methods include propensity
score weighting using generalized linear models, gradient boosting machines, the
covariate balancing propensity score algorithm, Bayesian additive regression
trees, and SuperLearner, and directly estimating balancing weights using entropy
balancing, empirical balancing calibration weights, energy balancing, and
optimization-based weights.  Also allows for assessment of weights and checking
of covariate balance by interfacing directly with the cobalt package.  See the
vignette \"Installing Supporting Packages\" for instructions on how to install any
package WeightIt uses, including those that may not be on CRAN.")
    (license license:gpl2+)))

(define-public r-weightedzdiff
  (package
    (name "r-weightedzdiff")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightedZdiff" version))
              (sha256
               (base32
                "1mrhjg0h7qiwya8jrmf5h4gc352ahc6fczlk5kfhqw5vkwr0b1k3"))))
    (properties `((upstream-name . "weightedZdiff")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=weightedZdiff")
    (synopsis "Calculation of z-Differences")
    (description
     "Calculates z-differences (O.Kuss (2013) <doi:10.1016/j.jclinepi.2013.06.001>)
for each variable scale (continuous, binary, ordinal and nominal) with or
without weights (e.g. generated by propensity score methods).")
    (license license:gpl2)))

(define-public r-weightedscores
  (package
    (name "r-weightedscores")
    (version "0.9.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightedScores" version))
              (sha256
               (base32
                "1wf01z94snwbqp22waz7qays3ymg5lsxpfpafdarad2b6mg5j2g8"))))
    (properties `((upstream-name . "weightedScores")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-mvtnorm))
    (home-page "https://cran.r-project.org/package=weightedScores")
    (synopsis
     "Weighted Scores Method for Regression Models with Dependent Data")
    (description
     "The weighted scores method and composite likelihood information criteria as an
intermediate step for variable/correlation selection for longitudinal ordinal
and count data in Nikoloulopoulos, Joe and Chaganty (2011)
<doi:10.1093/biostatistics/kxr005>, Nikoloulopoulos (2016)
<doi:10.1002/sim.6871> and Nikoloulopoulos (2017) <arXiv:1510.07376>.")
    (license license:gpl2+)))

(define-public r-weightedroc
  (package
    (name "r-weightedroc")
    (version "2020.1.31")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeightedROC" version))
              (sha256
               (base32
                "1f43hwsabciraj1qxfh5wcqnnx1vvcf4pwqs376rcfd9161k15xv"))))
    (properties `((upstream-name . "WeightedROC")))
    (build-system r-build-system)
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
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightedRank" version))
              (sha256
               (base32
                "0nl0qynifxj3ndalliffj5mlyfcnmgmjz8hin9mjiras16fj7aas"))))
    (properties `((upstream-name . "weightedRank")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=weightedRank")
    (synopsis "Sensitivity Analysis Using Weighted Rank Statistics")
    (description
     "This package performs a sensitivity analysis using weighted rank tests in
observational studies with I blocks of size J; see Rosenbaum (2018)
<doi:10.1214/18-AOAS1153>.  The package can perform adaptive inference in block
designs; see Rosenbaum (2012) <doi:10.1093/biomet/ass032>.  The main functions
are wgtRank() and wgtRanktt().")
    (license license:gpl2)))

(define-public r-weightedgcm
  (package
    (name "r-weightedgcm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightedGCM" version))
              (sha256
               (base32
                "04c24mxpvqdaprg6627w84ikmwxy96c1zcifn2y5n9ir7dlih5r3"))))
    (properties `((upstream-name . "weightedGCM")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost r-mgcv r-generalisedcovariancemeasure))
    (home-page "https://cran.r-project.org/package=weightedGCM")
    (synopsis
     "Weighted Generalised Covariance Measure Conditional Independence Test")
    (description
     "This package provides a conditional independence test that can be applied both
to univariate and multivariate random variables.  The test is based on a
weighted form of the sample covariance of the residuals after a nonlinear
regression on the conditioning variables.  Details are described in Scheidegger,
Hoerrmann and Buehlmann (2021) \"The Weighted Generalised Covariance Measure\"
<arXiv:2111.04361>.  The test is a generalisation of the Generalised Covariance
Measure (GCM) implemented in the R package GeneralisedCovarianceMeasure by Jonas
Peters and Rajen D. Shah based on Shah and Peters (2020) \"The Hardness of
Conditional Independence Testing and the Generalised Covariance Measure\"
<arXiv:1804.07203>.")
    (license license:gpl2)))

(define-public r-weightedcluster
  (package
    (name "r-weightedcluster")
    (version "1.6-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeightedCluster" version))
              (sha256
               (base32
                "1hrwvfiyqcxf864isf2qvhszmgwv9rabyly0ipkskjhi8cyx8h9j"))))
    (properties `((upstream-name . "WeightedCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-traminer r-rcolorbrewer r-cluster))
    (native-inputs (list r-knitr))
    (home-page "http://mephisto.unige.ch/weightedcluster/")
    (synopsis "Clustering of Weighted Data")
    (description
     "Clusters state sequences and weighted data.  It provides an optimized weighted
PAM algorithm as well as functions for aggregating replicated cases, computing
cluster quality measures for a range of clustering solutions and plotting
(fuzzy) clusters of state sequences.  Parametric bootstraps methods to validate
typology of sequences are also provided.")
    (license license:gpl2+)))

(define-public r-weightedcl
  (package
    (name "r-weightedcl")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weightedCL" version))
              (sha256
               (base32
                "0gb9p3qvbnqmccsfi3a0hx6i67n5z9fg3jgjrgg6qikgngbq3sld"))))
    (properties `((upstream-name . "weightedCL")))
    (build-system r-build-system)
    (propagated-inputs (list r-sure r-rootsolve r-matlab r-mass))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=weightedCL")
    (synopsis
     "Efficient and Feasible Inference for High-Dimensional Normal Copula Regression Models")
    (description
     "Estimates high-dimensional multivariate normal copula regression models with the
weighted composite likelihood estimating equations in Nikoloulopoulos (2022)
<arXiv:2203.04619>.  It provides autoregressive moving average correlation
structures and binary, ordinal, Poisson, and negative binomial regressions.")
    (license (license:fsdg-compatible "GPL (>= 3.5.0)"))))

(define-public r-weighted-desc-stat
  (package
    (name "r-weighted-desc-stat")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Weighted.Desc.Stat" version))
              (sha256
               (base32
                "030i12mnwlj976avvk3grrccgprsckmc35dm2ajwdfc9dijhypnj"))))
    (properties `((upstream-name . "Weighted.Desc.Stat")))
    (build-system r-build-system)
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
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weibulltools" version))
              (sha256
               (base32
                "1flgnsivam9vyrs6hwn3119s5bzczjm5qb1xjwydl1cd6r2984k5"))))
    (properties `((upstream-name . "weibulltools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-survival
                             r-spreda
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
    (home-page "https://tim-tu.github.io/weibulltools")
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeibullR.ALT" version))
              (sha256
               (base32
                "153zxw20gwv5rx5cxmygl97nv1c2pxb3yczmqvjxq7vwwxl04gr9"))))
    (properties `((upstream-name . "WeibullR.ALT")))
    (build-system r-build-system)
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
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeibullR" version))
              (sha256
               (base32
                "1i83dhd6202myfgsjwc3h68dflfvd74zjskvchbzd2407a30m8n7"))))
    (properties `((upstream-name . "WeibullR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page
     "http://www.openreliability.org/weibull-r-weibull-analysis-on-r/")
    (synopsis "Weibull Analysis for Reliability Engineering")
    (description
     "Life data analysis in the graphical tradition of Waloddi Weibull.  Methods
derived from Robert B. Abernethy (2008, ISBN 0-965306-3-2), Wayne Nelson (1982,
ISBN: 9780471094586), William Q. Meeker and Lois A. Escobar (1998, ISBN:
1-471-14328-6), John I. McCool, (2012, ISBN: 9781118217986).")
    (license license:gpl3+)))

(define-public r-weibullness
  (package
    (name "r-weibullness")
    (version "1.19.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weibullness" version))
              (sha256
               (base32
                "19s44mxxcnhngifxshsyjr3a9zvbwywmqgby5dxd73yid1p2k9mr"))))
    (properties `((upstream-name . "weibullness")))
    (build-system r-build-system)
    (home-page "https://github.com/AppliedStat/R")
    (synopsis "Goodness-of-Fit Test for Weibull Distribution (Weibullness)")
    (description
     "This package performs a goodness-of-fit test of Weibull distribution
(weibullness test) and provides the maximum likelihood estimates of the
three-parameter Weibull distribution.  Note that the threshold parameter is
estimated based on the correlation from the Weibull plot.  For more details, see
Park (2018) <doi:10.1155/2018/6056975>.  This work was supported by the National
Research Foundation of Korea (NRF) grant funded by the Korea government (No.
NRF-2017R1A2B4004169).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-weibullfit
  (package
    (name "r-weibullfit")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WeibullFit" version))
              (sha256
               (base32
                "1a80gcqbmvb1rz2dr2syy16wn6ixjn6l40gayys9zy8302hky9ir"))))
    (properties `((upstream-name . "WeibullFit")))
    (build-system r-build-system)
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
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wehoop" version))
              (sha256
               (base32
                "0zlmsjw01ca0q9l7myq0sg6qaknc1i91s8jmf5b7v0crnmivd6rd"))))
    (properties `((upstream-name . "wehoop")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WEGE" version))
              (sha256
               (base32
                "17g4cgx0ajgj7lgxzi467cjbmbc47skyarcm88vqjc3i1j55dw12"))))
    (properties `((upstream-name . "WEGE")))
    (build-system r-build-system)
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
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weed" version))
              (sha256
               (base32
                "18kz10c580a25cxcghvp81irwqncvhjan3y5gnzy8gxm894q3p7m"))))
    (properties `((upstream-name . "weed")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytext
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rgeos
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

(define-public r-wee
  (package
    (name "r-wee")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WEE" version))
              (sha256
               (base32
                "0i3h67p72lr708mwdw3rbzr1lqqr8n2dxv7f0bwyqzxv41sx1iz3"))))
    (properties `((upstream-name . "WEE")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=WEE")
    (synopsis
     "Weighted Estimated Equation (WEE) Approaches in Genetic Case-Control Studies")
    (description
     "Secondary analysis of case-control studies using a weighted estimating equation
(WEE) approach: logistic regression for binary secondary outcomes, linear
regression and quantile regression for continuous secondary outcomes.")
    (license license:gpl2)))

(define-public r-wec
  (package
    (name "r-wec")
    (version "0.4-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wec" version))
              (sha256
               (base32
                "10lqh43536d44d6082rpp11q1323pmjbmgrgb8v9mrk9c1ysf50w"))))
    (properties `((upstream-name . "wec")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webuse" version))
              (sha256
               (base32
                "09xvw0v991cq1ck2kfxblp5cngfh9j6swvh5xv420mvky0kshv32"))))
    (properties `((upstream-name . "webuse")))
    (build-system r-build-system)
    (propagated-inputs (list r-haven))
    (home-page "https://github.com/leeper/webuse")
    (synopsis "Import Stata 'webuse' Datasets")
    (description
     "This package provides a Stata-style `webuse()` function for importing named
datasets from Stata's online collection.")
    (license license:expat)))

(define-public r-websocket
  (package
    (name "r-websocket")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "websocket" version))
              (sha256
               (base32
                "1ks9cyj39jnb0rkx2ii3ckmpl373m5f8sz0i4q3gk7kkv3js07r8"))))
    (properties `((upstream-name . "websocket")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-r6 r-later r-cpp11 r-asioheaders))
    (native-inputs (list r-knitr pkg-config))
    (home-page "https://cran.r-project.org/package=websocket")
    (synopsis "'WebSocket' Client Library")
    (description
     "This package provides a WebSocket client interface for R. WebSocket is a
protocol for low-overhead real-time communication:
<https://en.wikipedia.org/wiki/WebSocket>.")
    (license license:gpl2)))

(define-public r-webshot2
  (package
    (name "r-webshot2")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webshot2" version))
              (sha256
               (base32
                "12y5ilky4h1wif9rbbmn7d37a6mvxjyy0rbgk2jvr7wy41n72xmw"))))
    (properties `((upstream-name . "webshot2")))
    (build-system r-build-system)
    (propagated-inputs (list r-promises r-magrittr r-later r-chromote r-callr))
    (home-page "https://github.com/rstudio/webshot2")
    (synopsis "Take Screenshots of Web Pages")
    (description
     "Takes screenshots of web pages, including Shiny applications and R Markdown
documents.  webshot2 uses headless Chrome or Chromium as the browser back-end.")
    (license license:gpl2)))

(define-public r-websearchr
  (package
    (name "r-websearchr")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "websearchr" version))
              (sha256
               (base32
                "1c6dwm5g5rjq0b12zrwwi5k9760jb0ph83v4j2gm8zm0x9dhiqm9"))))
    (properties `((upstream-name . "websearchr")))
    (build-system r-build-system)
    (home-page "https://github.com/fschaff/websearchr")
    (synopsis "Access Domains and Search Popular Websites")
    (description
     "This package provides functions that allow for accessing domains and a number of
search engines.")
    (license license:expat)))

(define-public r-webreadr
  (package
    (name "r-webreadr")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webreadr" version))
              (sha256
               (base32
                "0l3l5g4zj5faxqi1kqwx9lq91gbj40z2q3csrsmpal08qnwkxs90"))))
    (properties `((upstream-name . "webreadr")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webr" version))
              (sha256
               (base32
                "03yhlla74i71nphrfhr5sd57ykj7rjanh2a8nw3cq22rg9g668jk"))))
    (properties `((upstream-name . "webr")))
    (build-system r-build-system)
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
Keon-Woong Moon.  The main function plot.htest() shows the distribution of
statistic for the object of class htest'.")
    (license license:gpl3)))

(define-public r-webpower
  (package
    (name "r-webpower")
    (version "0.8.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WebPower" version))
              (sha256
               (base32
                "1k7wx9jpi300zy9gfy1riq8rynwi5pvdxkk28s41dmaan2lncb2w"))))
    (properties `((upstream-name . "WebPower")))
    (build-system r-build-system)
    (propagated-inputs (list r-pearsonds r-mass r-lme4 r-lavaan))
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
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webp" version))
              (sha256
               (base32
                "199l6qhf7f96gqsg0bqzazvl09q383z4087vb1vjiy22k031zbh6"))))
    (properties `((upstream-name . "webp")))
    (build-system r-build-system)
    (inputs (list libwebp))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=webp")
    (synopsis "New Format for Lossless and Lossy Image Compression")
    (description
     "Lossless webp images are 26% smaller in size compared to PNG. Lossy webp images
are 25-34% smaller in size compared to JPEG. This package reads and writes webp
images into a 3 (rgb) or 4 (rgba) channel bitmap array using conventions from
the jpeg and png packages.")
    (license license:expat)))

(define-public r-webmorphr
  (package
    (name "r-webmorphr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webmorphR" version))
              (sha256
               (base32
                "1f3sjzck4ys1knn2jmk472yww65wblrdwdlvn1gz2a00nc738rn4"))))
    (properties `((upstream-name . "webmorphR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsvg
                             r-progress
                             r-magick
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-geomorph
                             r-dplyr))
    (home-page "https://debruine.github.io/webmorphR/")
    (synopsis "Reproducible Stimuli")
    (description
     "Create reproducible image stimuli, specialised for face images with psychomorph
or webmorph templates.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-webglobe
  (package
    (name "r-webglobe")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webglobe" version))
              (sha256
               (base32
                "0gbg4pai4cn7hdc1943aqpx4bn3vgc82zp93a1wl6bmmajv1da4b"))))
    (properties `((upstream-name . "webglobe")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httpuv r-geojsonio))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-barnes/webglobe/")
    (synopsis "3D Interactive Globes")
    (description
     "Displays geospatial data on an interactive 3D globe in the web browser.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-webgestaltr
  (package
    (name "r-webgestaltr")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WebGestaltR" version))
              (sha256
               (base32
                "1rgf9s80hk35baiknrwgnqnhxssrcxdansgpvpyhqv07bqd472nn"))))
    (properties `((upstream-name . "WebGestaltR")))
    (build-system r-build-system)
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
     "The web version WebGestalt <http://www.webgestalt.org> supports 12 organisms,
354 gene identifiers and 321,251 function categories.  Users can upload the data
and functional categories with their own gene identifiers.  In addition to the
Over-Representation Analysis, WebGestalt also supports Gene Set Enrichment
Analysis and Network Topology Analysis.  The user-friendly output report allows
interactive and efficient exploration of enrichment results.  The WebGestaltR
package not only supports all above functions but also can be integrated into
other pipeline or simultaneously analyze multiple gene lists.")
    (license license:lgpl2.0+)))

(define-public r-webfakes
  (package
    (name "r-webfakes")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webfakes" version))
              (sha256
               (base32
                "0aqa315a8ymfjgg3n7nri7r135r60gwkz118r2jy2bigml31szd4"))))
    (properties `((upstream-name . "webfakes")))
    (build-system r-build-system)
    (home-page "https://webfakes.r-lib.org/")
    (synopsis "Fake Web Apps for HTTP Testing")
    (description
     "Create a web app that makes it easier to test web clients without using the
internet.  It includes a web app framework with path matching, parameters and
templates.  Can parse various HTTP request bodies.  Can send JSON data or files
from the disk.  Includes a web app that implements the <https://httpbin.org> web
service.")
    (license license:expat)))

(define-public r-webexercises
  (package
    (name "r-webexercises")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webexercises" version))
              (sha256
               (base32
                "1z0dqiqk0v6h97qg89nwn9d57zn1png066va8dirk3mmk4jlfrqc"))))
    (properties `((upstream-name . "webexercises")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-rmarkdown r-knitr r-jsonlite))
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webdriver" version))
              (sha256
               (base32
                "0k87any9rvv367p2zwy89r3rxszsq3w78pzdq36by4ijn659la2l"))))
    (properties `((upstream-name . "webdriver")))
    (build-system r-build-system)
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
    (home-page "https://github.com/rstudio/webdriver")
    (synopsis "'WebDriver' Client for 'PhantomJS'")
    (description
     "This package provides a client for the WebDriver API'.  It allows driving a
(probably headless) web browser, and can be used to test web applications,
including Shiny apps.  In theory it works with any WebDriver implementation, but
it was only tested with PhantomJS'.")
    (license license:expat)))

(define-public r-webdeveloper
  (package
    (name "r-webdeveloper")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webdeveloper" version))
              (sha256
               (base32
                "1nw97df9q0dpzl82pdybw527hc407ch2xg8f0s2z4kf89yp6ckhg"))))
    (properties `((upstream-name . "webdeveloper")))
    (build-system r-build-system)
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

(define-public r-webchem
  (package
    (name "r-webchem")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "webchem" version))
              (sha256
               (base32
                "0mvd0hppdrqngg1j7x2sdh3nkdb3zmsdf1gwqvzm128v6clsi7ls"))))
    (properties `((upstream-name . "webchem")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-tree
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/webchem/")
    (synopsis "Chemical Information from the Web")
    (description
     "Chemical information from around the web.  This package interacts with a suite
of web services for chemical information.  Sources include: Alan Wood's
Compendium of Pesticide Common Names, Chemical Identifier Resolver, ChEBI,
Chemical Translation Service, ChemIDplus, ChemSpider, ETOX, Flavornet, NIST
Chemistry WebBook, OPSIN, PAN Pesticide Database, PubChem, SRS, Wikidata.")
    (license license:expat)))

(define-public r-webanalytics
  (package
    (name "r-webanalytics")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WebAnalytics" version))
              (sha256
               (base32
                "1fas6pj9xqxdm2ln825bgghycn7226z6ha09d6a93w53m789dcby"))))
    (properties `((upstream-name . "WebAnalytics")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-uaparserjs
                             r-tinytex
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

(define-public r-weathermetrics
  (package
    (name "r-weathermetrics")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weathermetrics" version))
              (sha256
               (base32
                "1hjhgsy3v8328hv4czxxz7kp68sxc10sy10f3dv5j8f6pka6qlsp"))))
    (properties `((upstream-name . "weathermetrics")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/geanders/weathermetrics/")
    (synopsis "Functions to Convert Between Weather Metrics")
    (description
     "This package provides functions to convert between weather metrics, including
conversions for metrics of temperature, air moisture, wind speed, and
precipitation.  This package also includes functions to calculate the heat index
from air temperature and air moisture.")
    (license license:gpl2)))

(define-public r-wearables
  (package
    (name "r-wearables")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wearables" version))
              (sha256
               (base32
                "0fjf43cgna1mg4mgg98kqhhl88yfhrr57rln2z6xm6d6bj73q5zn"))))
    (properties `((upstream-name . "wearables")))
    (build-system r-build-system)
    (propagated-inputs (list r-xts
                             r-waveslim
                             r-varian
                             r-signal
                             r-rhrv
                             r-r-utils
                             r-padr
                             r-magrittr
                             r-lubridate
                             r-kernlab
                             r-ggplot2
                             r-futile-logger
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=wearables")
    (synopsis "Tools to Read and Convert Wearables Data")
    (description
     "Package to read Empatica E4 data, perform several transformations, perform
signal processing and analyses, including batch analyses.")
    (license license:gpl2)))

(define-public r-weakarma
  (package
    (name "r-weakarma")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weakARMA" version))
              (sha256
               (base32
                "16dzyw7jiyqv9hd94dff9lxhqv9rwib1xs1km0xfqcy6xa2jhw8w"))))
    (properties `((upstream-name . "weakARMA")))
    (build-system r-build-system)
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
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "weaana" version))
              (sha256
               (base32
                "1wjvn78fkgc28ag1idy7h6sm0rvl57wbqdbxgbl3g5xv844vh8ls"))))
    (properties `((upstream-name . "weaana")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-settings
                             r-rlang
                             r-reshape2
                             r-magrittr
                             r-lubridate
                             r-dplyr))
    (home-page "https://weaana.bangyou.me/")
    (synopsis "Analysis the Weather Data")
    (description
     "This package provides functions are collected to analyse weather data for
agriculture purposes including to read weather records in multiple formats,
calculate extreme climate index.")
    (license license:expat)))

(define-public r-wdpar
  (package
    (name "r-wdpar")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wdpar" version))
              (sha256
               (base32
                "09b3j7yrclnabv5lk4g4r2p4r74hph4bilvz371kkcs5k2pb2xs0"))))
    (properties `((upstream-name . "wdpar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-wdman
                             r-tibble
                             r-sp
                             r-sf
                             r-rselenium
                             r-rappdirs
                             r-progress
                             r-pingr
                             r-lwgeom
                             r-httr
                             r-curl
                             r-countrycode
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://prioritizr.github.io/wdpar/")
    (synopsis "Interface to the World Database on Protected Areas")
    (description
     "Fetch and clean data from the World Database on Protected Areas (WDPA) and the
World Database on Other Effective Area-Based Conservation Measures (WDOECM).
Data is obtained from Protected Planet <https://www.protectedplanet.net/en>.  To
augment data cleaning procedures, users can install the prepr R package
(available at <https://github.com/dickoa/prepr>).")
    (license license:gpl3)))

(define-public r-wdnr-gis
  (package
    (name "r-wdnr-gis")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wdnr.gis" version))
              (sha256
               (base32
                "071mjqk117xidqva5qp9xqnca91c5i28j4pv5k0ccfcz6mlj9sbm"))))
    (properties `((upstream-name . "wdnr.gis")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-rlang
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-arcpullr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=wdnr.gis")
    (synopsis "Pull Spatial Layers from 'WDNR ArcGIS REST API'")
    (description
     "This package provides functions for finding and pulling data from the Wisconsin
Department of Natural Resources ArcGIS REST APIs
<https://dnrmaps.wi.gov/arcgis/rest/services> and
<https://dnrmaps.wi.gov/arcgis2/rest/services>.")
    (license license:gpl3)))

(define-public r-wdnet
  (package
    (name "r-wdnet")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wdnet" version))
              (sha256
               (base32
                "1cdsm7zr1nqpajxnqig9jwf9g9cs7y8j9c1jvnw83aslddqcj5b2"))))
    (properties `((upstream-name . "wdnet")))
    (build-system r-build-system)
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
     "Implementations of network analysis including (1) assortativity coefficient of
weighted and directed networks, Yuan, Yan and Zhang (2021)
<doi:10.1093/comnet/cnab017>, (2) centrality measures for weighted and directed
networks, Opsahl, Agneessens and Skvoretz (2010)
<doi:10.1016/j.socnet.2010.03.006>, Zhang, Wang and Yan (2022)
<doi:10.1016/j.physa.2021.126438>, (3) clustering coefficient of weighted and
directed networks, Fagiolo (2007) <doi:10.1103/PhysRevE.76.026107> and Clemente
and Grassi (2018) <doi:10.1016/j.chaos.2017.12.007>, (4) network rewiring, (5)
preferential attachment network generation.")
    (license license:gpl3+)))

(define-public r-wdm
  (package
    (name "r-wdm")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wdm" version))
              (sha256
               (base32
                "0fsr5kskg71bwhc5zzhalm29cc7z9p9y8wdmgz2bisgry3v880az"))))
    (properties `((upstream-name . "wdm")))
    (build-system r-build-system)
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

(define-public r-wdi
  (package
    (name "r-wdi")
    (version "2.7.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WDI" version))
              (sha256
               (base32
                "1q7d74y3vi13zmpinky4ayn0n292rslg7fd112hxvjiqbmq6mxdc"))))
    (properties `((upstream-name . "WDI")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://vincentarelbundock.github.io/WDI/")
    (synopsis "World Development Indicators and Other World Bank Data")
    (description
     "Search and download data from over 40 databases hosted by the World Bank,
including the World Development Indicators ('WDI'), International Debt
Statistics, Doing Business, Human Capital Index, and Sub-national Poverty
indicators.")
    (license license:gpl3)))

(define-public r-wcorr
  (package
    (name "r-wcorr")
    (version "1.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wCorr" version))
              (sha256
               (base32
                "10mnrs5ymc3ms1z5vs0h05rjq1642n3asvm77x7lxq9qwx67s3vn"))))
    (properties `((upstream-name . "wCorr")))
    (build-system r-build-system)
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

(define-public r-wcompo
  (package
    (name "r-wcompo")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Wcompo" version))
              (sha256
               (base32
                "1rd7y86q8qi7w9878ng0zdk3zpxnjyzpmrm2mj5lm60hkd72xyrw"))))
    (properties `((upstream-name . "Wcompo")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WCM" version))
              (sha256
               (base32
                "0w1m2vcxc64ksw3dm94wdigil2fpv3cvzyqmkhs2zrfjlgrdchcd"))))
    (properties `((upstream-name . "WCM")))
    (build-system r-build-system)
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

(define-public r-wcep
  (package
    (name "r-wcep")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wcep" version))
              (sha256
               (base32
                "1hpakygvh3b64i5hwkriwq5g8vnvghvgdj0jn9m59j43050k32cy"))))
    (properties `((upstream-name . "wcep")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-progress r-dplyr r-coin))
    (home-page "https://cran.r-project.org/package=wcep")
    (synopsis "Survival Analysis for Weighted Composite Endpoints")
    (description
     "Analyze given data frame with multiple endpoints and return Kaplan-Meier
survival probabilities together with the specified confidence interval.")
    (license license:expat)))

(define-public r-wce
  (package
    (name "r-wce")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WCE" version))
              (sha256
               (base32
                "105pwpd9ikm0gwz4r12jl6cgs1riwsk9pn5qk9cn3msgwa0sdynx"))))
    (properties `((upstream-name . "WCE")))
    (build-system r-build-system)
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
    (license license:gpl2+)))

(define-public r-wcde
  (package
    (name "r-wcde")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wcde" version))
              (sha256
               (base32
                "1nrzfcrkrq9vff4anj94wcy3jrmjgrm4py854dm4mcsykprxwgd1"))))
    (properties `((upstream-name . "wcde")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
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

(define-public r-wbsts
  (package
    (name "r-wbsts")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wbsts" version))
              (sha256
               (base32
                "07h3wqmb9ya878fwdj49r0npks0pnd3jlnzri1cmf27c691hwka4"))))
    (properties `((upstream-name . "wbsts")))
    (build-system r-build-system)
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
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wbstats" version))
              (sha256
               (base32
                "1va3lrksr5zg4k729xvbh176f8zcp9vfrvwxcp04znyh1rvmh6vz"))))
    (properties `((upstream-name . "wbstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-lubridate
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nset-ornl/wbstats")
    (synopsis
     "Programmatic Access to Data and Statistics from the World Bank API")
    (description "Search and download data from the World Bank Data API.")
    (license license:expat)))

(define-public r-wbsd
  (package
    (name "r-wbsd")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wbsd" version))
              (sha256
               (base32
                "16jhimsq8symf6f2awczqkaqkdmlkzhmgk01iimhkvqlx8g2v219"))))
    (properties `((upstream-name . "wbsd")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=wbsd")
    (synopsis "Wild Bootstrap Size Diagnostics")
    (description
     "This package implements the diagnostic \"theta\" developed in Poetscher and
Preinerstorfer (2020) \"How Reliable are Bootstrap-based Heteroskedasticity
Robust Tests?\" <arXiv:2005.04089>.  This diagnostic can be used to detect and
weed out bootstrap-based procedures that provably have size equal to one for a
given testing problem.  The implementation covers a large variety of
bootstrap-based procedures, cf.  the above mentioned article for details.  A
function for computing bootstrap p-values is provided.")
    (license license:gpl2)))

(define-public r-wbs
  (package
    (name "r-wbs")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wbs" version))
              (sha256
               (base32
                "0ibrf30riavy6shaxgiznwh4gmnkx92260gsl0d74jkys98mlxdj"))))
    (properties `((upstream-name . "wbs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=wbs")
    (synopsis "Wild Binary Segmentation for Multiple Change-Point Detection")
    (description
     "This package provides efficient implementation of the Wild Binary Segmentation
and Binary Segmentation algorithms for estimation of the number and locations of
multiple change-points in the piecewise constant function plus Gaussian noise
model.")
    (license license:gpl2)))

(define-public r-wbacon
  (package
    (name "r-wbacon")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wbacon" version))
              (sha256
               (base32
                "0b91h71fs07knnqrbr167wdlb1iakafbadzr4zznndwplx3ygpbz"))))
    (properties `((upstream-name . "wbacon")))
    (build-system r-build-system)
    (propagated-inputs (list r-hexbin))
    (native-inputs (list r-knitr))
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
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waywiser" version))
              (sha256
               (base32
                "1bx1hmln9z2yaa6r8q30wv3mm0908y0yqqcbyzzgpqpcijvgxxng"))))
    (properties `((upstream-name . "waywiser")))
    (build-system r-build-system)
    (propagated-inputs (list r-yardstick
                             r-tibble
                             r-spdep
                             r-sf
                             r-rsample
                             r-rlang
                             r-purrr
                             r-matrix
                             r-hardhat
                             r-glue
                             r-fields))
    (home-page "https://github.com/mikemahoney218/waywiser")
    (synopsis "Methods for Assessing Spatial Models")
    (description
     "Assessing predictive models of spatial data can be challenging, both because
these models are typically built for extrapolating outside the original region
represented by training data and due to potential spatially structured errors,
with \"hot spots\" of higher than expected error clustered geographically due to
spatial structure in the underlying data.  These functions provide methods for
measuring the spatial structure of model errors and evaluating where predictions
can be made safely, and are particularly useful for models fit using the
tidymodels framework.  Methods include Moran's I ('Moran (1950)
<doi:10.2307/2332142>), Geary's C ('Geary (1954) <doi:10.2307/2986645>),
Getis-Ord's G ('Ord and Getis (1995) <doi:10.1111/j.1538-4632.1995.tb00912.x>),
as well as an implementation of the area of applicability methodology from Meyer
and Pebesma (2021) (<doi:10.1111/2041-210X.13650>).")
    (license license:expat)))

(define-public r-waydown
  (package
    (name "r-waydown")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waydown" version))
              (sha256
               (base32
                "1yjx9cd8h8rsi44s7dcqrvfmsbjhw7vkg2z7bl4knsgbki0c978g"))))
    (properties `((upstream-name . "waydown")))
    (build-system r-build-system)
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
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wavScalogram" version))
              (sha256
               (base32
                "15y5gqp39jx0ggsimmf7k22qg1142c55apd04q05jqi50ljzda70"))))
    (properties `((upstream-name . "wavScalogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-fields r-colorramps r-abind))
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
    (version "4.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wavethresh" version))
              (sha256
               (base32
                "1780jnlcx4fw1k5h023fmc5nh8srivq14h2yis9xw9szfpmg231k"))))
    (properties `((upstream-name . "wavethresh")))
    (build-system r-build-system)
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
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveSampling" version))
              (sha256
               (base32
                "1r8fzvihpmpaak0pkcf9s1nkj6dlvj2maw30yflpifa6422y15va"))))
    (properties `((upstream-name . "WaveSampling")))
    (build-system r-build-system)
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
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waves" version))
              (sha256
               (base32
                "128q1l0ishdgpa33zh77xpi79nvziix8swq1rwyawnznl9ybs29w"))))
    (properties `((upstream-name . "waves")))
    (build-system r-build-system)
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
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GoreLab/waves")
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaverR" version))
              (sha256
               (base32
                "084fhzggzm075w6wp2lqd3j0an21idhw8z5l8ynz4y96mpmn204a"))))
    (properties `((upstream-name . "WaverR")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-kimisc))
    (home-page "https://cran.r-project.org/package=WaverR")
    (synopsis
     "Data Estimation using Weighted Averages of Multiple Regressions")
    (description
     "For multivariate datasets, this function enables the estimation of missing data
using the Weighted AVERage of all possible Regressions using the data available.")
    (license license:gpl2)))

(define-public r-waver
  (package
    (name "r-waver")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waver" version))
              (sha256
               (base32
                "1kl14cd96fwrqvk35sqbgi8bf31gc2ccxxy5d1v46scwyqkb0g5l"))))
    (properties `((upstream-name . "waver")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rgeos r-rgdal r-geosphere))
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wavemulcor" version))
              (sha256
               (base32
                "0a9qhcgf0l3zpwq8m476py94wb4rasy6a8xj302y6kwg3gvh1smm"))))
    (properties `((upstream-name . "wavemulcor")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletSVR" version))
              (sha256
               (base32
                "05sqvqklbz7barf1jfrhd7n4mj60z57sqpikl3lykigl3m9ravhm"))))
    (properties `((upstream-name . "WaveletSVR")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wavelets" version))
              (sha256
               (base32
                "07706rsjdmzj46ib2kfm5lfk4bnm2wfw7rby0ixs6x0myyzxdl92"))))
    (properties `((upstream-name . "wavelets")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletRF" version))
              (sha256
               (base32
                "08czmifw1dz2arz9f4jk76vlwwnf24ha9pm3dfihqkxjcc16dkgz"))))
    (properties `((upstream-name . "WaveletRF")))
    (build-system r-build-system)
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

(define-public r-waveletgarch
  (package
    (name "r-waveletgarch")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletGARCH" version))
              (sha256
               (base32
                "0dj5bmvzfhj1cpn8qi2ax3iipr7jlq0f9vk4b1idqgh5dmdi8lh6"))))
    (properties `((upstream-name . "WaveletGARCH")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavelets r-rugarch r-fracdiff r-forecast
                             r-fints))
    (home-page "https://cran.r-project.org/package=WaveletGARCH")
    (synopsis "Fit the Wavelet-GARCH Model to Volatile Time Series Data")
    (description
     "Fits the combination of Wavelet-GARCH model for time series forecasting using
algorithm by Paul (2015) <doi:10.3233/MAS-150328>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-waveletcomp
  (package
    (name "r-waveletcomp")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletComp" version))
              (sha256
               (base32
                "07w2aa0jiflvxyqhgh48705hg8hjspd103jd00i2pcw2v42hwmf8"))))
    (properties `((upstream-name . "WaveletComp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=WaveletComp")
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletArima" version))
              (sha256
               (base32
                "00pg446c6vy3kgjlyzds35nlfgwnkl7a63pjcgbqy80gb3y6snhw"))))
    (properties `((upstream-name . "WaveletArima")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaveletANN" version))
              (sha256
               (base32
                "1j16jsnz9j735348a5ybgrl7p6bg45gwwp863y4pg85h4mwg37c9"))))
    (properties `((upstream-name . "WaveletANN")))
    (build-system r-build-system)
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

(define-public r-wavefunction
  (package
    (name "r-wavefunction")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wavefunction" version))
              (sha256
               (base32
                "1g0g9i0s93lcpcx7icqn15bvkmd79slkgimspvvwp2bxdsc5nnf2"))))
    (properties `((upstream-name . "wavefunction")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=wavefunction")
    (synopsis "Wave Function Representation of Real Distributions")
    (description
     "Real probability distributions can be represented as the square of an orthogonal
sum in the Hermite basis.  This representation is formally similar to the
representation of quantum mechanical states as wave functions, whose squared
modulus is a probability density.  This is described in more detail in \"Wave
function representation of probability distributions,\" by Madeleine B. Thompson
<arXiv:1712.07764>.  This package provides a reference implementation of the
technique.")
    (license license:asl2.0)))

(define-public r-waved
  (package
    (name "r-waved")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waved" version))
              (sha256
               (base32
                "0zv4rgazk9s295pggzfa7sc062zv68dgds1ngxcz7vg1fx0qkgxg"))))
    (properties `((upstream-name . "waved")))
    (build-system r-build-system)
    (home-page "http://www.jstatsoft.org/v21/i02")
    (synopsis "Wavelet Deconvolution")
    (description
     "Makes available code necessary to reproduce figures and tables in papers on the
WaveD method for wavelet deconvolution of noisy signals as presented in The
WaveD Transform in R, Journal of Statistical Software Volume 21, No.  3, 2007.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-waveband
  (package
    (name "r-waveband")
    (version "4.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waveband" version))
              (sha256
               (base32
                "1aa1rdwpfj3fx3xc7i9h0la268yv7hsm1fxndq3rk5slzy12zq8z"))))
    (properties `((upstream-name . "waveband")))
    (build-system r-build-system)
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

(define-public r-watson
  (package
    (name "r-watson")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "watson" version))
              (sha256
               (base32
                "06wszdk9d8b07kp5s30q474nd3rz0za6k158g4dl9cpd3bbwzj72"))))
    (properties `((upstream-name . "watson")))
    (build-system r-build-system)
    (propagated-inputs (list r-tinflex r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=watson")
    (synopsis "Fitting and Simulating Mixtures of Watson Distributions")
    (description
     "Tools for fitting and simulating mixtures of Watson distributions.  The random
sampling scheme of the package offers two sampling algorithms that are based of
the results of Sablica, Hornik and Leydold (2022)
<https://research.wu.ac.at/en/publications/random-sampling-from-the-watson-distribution>.
 What is more, the package offers a smart tool to combine these two methods, and
based on the selected parameters, it approximates the relative sampling speed
for both methods and picks the faster one.  In addition, the package offers a
fitting function for the mixtures of Watson distribution, that uses the
expectation-maximization (EM) algorithm.  Special features are the possibility
to use multiple variants of the E-step and M-step, sparse matrices for the data
representation and state of the art methods for numerical evaluation of needed
special functions using the results of Sablica and Hornik (2022)
<https://www.ams.org/journals/mcom/2022-91-334/S0025-5718-2021-03690-X/>.")
    (license license:gpl3)))

(define-public r-wateryeartype
  (package
    (name "r-wateryeartype")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waterYearType" version))
              (sha256
               (base32
                "09brbqcd41khycz9lhn84w68wpk8lsdnzb6lzc10gm5s5ambgj06"))))
    (properties `((upstream-name . "waterYearType")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=waterYearType")
    (synopsis "Sacramento and San Joaquin Valley Water Year Types")
    (description
     "This package provides Water Year Hydrologic Classification Indices based on
measured unimpaired runoff (in million acre-feet).  Data is provided by
California Department of Water Resources and subject to revision.")
    (license license:expat)))

(define-public r-watersheds
  (package
    (name "r-watersheds")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Watersheds" version))
              (sha256
               (base32
                "1gn52nl0rr29pqq94gjasc4fi1kjxlrpjdkgm2x56j5jbd162drk"))))
    (properties `((upstream-name . "Watersheds")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs r-sp r-rgeos r-maptools r-lattice))
    (home-page "https://cran.r-project.org/package=Watersheds")
    (synopsis
     "Spatial Watershed Aggregation and Spatial Drainage Network Analysis")
    (description
     "This package provides methods for watersheds aggregation and spatial drainage
network analysis.")
    (license license:gpl2+)))

(define-public r-waterquality
  (package
    (name "r-waterquality")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waterquality" version))
              (sha256
               (base32
                "0aikgz4x2ny2q7mnxsyk5pl87yb9gq6pcvvnj1s32383683j5ys9"))))
    (properties `((upstream-name . "waterquality")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-rgdal
                             r-raster
                             r-purrr
                             r-pingr
                             r-magrittr
                             r-dplyr
                             r-caret))
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
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waterfalls" version))
              (sha256
               (base32
                "01gby1mlhrwcalizpywxcakkx2zifswb0188nrl6z9dkkd1866lm"))))
    (properties `((upstream-name . "waterfalls")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=waterfalls")
    (synopsis "Create Waterfall Charts using 'ggplot2' Simply")
    (description
     "This package provides a not uncommon task for quants is to create waterfall
charts'.  There seems to be no simple way to do this in ggplot2 currently.  This
package contains a single function (waterfall) that simply draws a waterfall
chart in a ggplot2 object.  Some flexibility is provided, though often the
object created will need to be modified through a theme.")
    (license license:expat)))

(define-public r-waterfall
  (package
    (name "r-waterfall")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waterfall" version))
              (sha256
               (base32
                "0jy6l9mx0dixwnkychdl18sf4xh73pm0qd1jyxp9rlnv1vcragjp"))))
    (properties `((upstream-name . "waterfall")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://jameshoward.us/software/waterfall/")
    (synopsis "Waterfall Charts")
    (description
     "This package provides support for creating waterfall charts in R using both
traditional base and lattice graphics.")
    (license license:bsd-2)))

(define-public r-waterdata
  (package
    (name "r-waterdata")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waterData" version))
              (sha256
               (base32
                "0884agh876wf3qlbc75fbaa47x2iwvncz7r2l25qw34n8lxq1yr6"))))
    (properties `((upstream-name . "waterData")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-lubridate r-latticeextra r-lattice
                             r-dataretrieval))
    (home-page "https://pubs.usgs.gov/of/2012/1168/")
    (synopsis
     "Retrieval, Analysis, and Anomaly Calculation of Daily Hydrologic Time Series Data")
    (description
     "Imports U.S. Geological Survey (USGS) daily hydrologic data from USGS web
services (see <https://waterservices.usgs.gov/> for more information), plots the
data, addresses some common data problems, and calculates and plots anomalies.")
    (license (list (license:fsdg-compatible "Unlimited")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-waspr
  (package
    (name "r-waspr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waspr" version))
              (sha256
               (base32
                "0rs7h9pjiqq7as5k7yrj3phn6lgdl7dzyirbmk2jjp7mw9iqhy9i"))))
    (properties `((upstream-name . "waspr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=waspr")
    (synopsis "Wasserstein Barycenters of Subset Posteriors")
    (description
     "This package provides functions to compute Wasserstein barycenters of subset
posteriors using the swapping algorithm developed by Puccetti, RÃ¼schendorf and
Vanduffel (2020) <doi:10.1016/j.jmaa.2017.02.003>.  The Wasserstein barycenter
is a geometric approach for combining subset posteriors.  It allows for parallel
and distributed computation of the posterior in case of complex models and/or
big datasets, thereby increasing computational speed tremendously.")
    (license license:gpl3)))

(define-public r-wasp
  (package
    (name "r-wasp")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WASP" version))
              (sha256
               (base32
                "1w822wl8zp94a60y9jsryc1r1m025pl2100fx5i8np46mm3pmn58"))))
    (properties `((upstream-name . "WASP")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim r-tidyr r-sp r-rlang r-ggplot2))
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

(define-public r-washex
  (package
    (name "r-washex")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "washex" version))
              (sha256
               (base32
                "0g5cgs6y3l7ng4bcia1w3ysb8z7s3187ph5g052bssd3w01kim6g"))))
    (properties `((upstream-name . "washex")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xml
                             r-rlang
                             r-purrr
                             r-httr
                             r-dplyr
                             r-curl))
    (home-page "https://github.com/rwrandles/washex-r")
    (synopsis "Washington State Legislative Explorer")
    (description "Gets data from the Washington State Legislature.")
    (license license:expat)))

(define-public r-washer
  (package
    (name "r-washer")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "washeR" version))
              (sha256
               (base32
                "082myz7lw9dyk4ygyj0q39n4h1gghsd1q7667ngzxa20lm0658wd"))))
    (properties `((upstream-name . "washeR")))
    (build-system r-build-system)
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
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "washdata" version))
              (sha256
               (base32
                "0m7rwwi189sbsv3144x14jqmfax30f6ri1pisy47yggmmjpdplps"))))
    (properties `((upstream-name . "washdata")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "warpMix" version))
              (sha256
               (base32
                "13zbl4aifhg7j5b3vpwgzgs09hr7yblz0rckmj5qh40s78j8cpfn"))))
    (properties `((upstream-name . "warpMix")))
    (build-system r-build-system)
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

(define-public r-warn
  (package
    (name "r-warn")
    (version "1.2-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WARN" version))
              (sha256
               (base32
                "18gfk9vqcqarj7j5i240wqv2dclg3csng4mih5izj40xaaxaf6q5"))))
    (properties `((upstream-name . "WARN")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=WARN")
    (synopsis "Weaning Age Reconstruction with Nitrogen Isotope Analysis")
    (description
     "This estimates precise weaning ages for a given skeletal population by analyzing
the stable nitrogen isotope ratios of them.  Bone collagen turnover rates
estimated anew and the approximate Bayesian computation (ABC) were adopted in
this package.")
    (license license:gpl3+)))

(define-public r-warbler
  (package
    (name "r-warbler")
    (version "1.1.27")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "warbleR" version))
              (sha256
               (base32
                "1fd008v3di7z5ixljk5zwaw2wcc4zfqlnw9546894ybw5m9jsk26"))))
    (properties `((upstream-name . "warbleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner
                             r-stringi
                             r-seewave
                             r-rjson
                             r-rcurl
                             r-rcpp
                             r-pbapply
                             r-naturesounds
                             r-monitor
                             r-knitr
                             r-fftw
                             r-dtw
                             r-crayon
                             r-bioacoustics))
    (native-inputs (list r-knitr))
    (home-page "https://marce10.github.io/warbleR/")
    (synopsis "Streamline Bioacoustic Analysis")
    (description
     "This package provides functions aiming to facilitate the analysis of the
structure of animal acoustic signals in R'.  warbleR makes use of the basic
sound analysis tools from the package seewave', and offers new tools for
acoustic structure analysis.  The main features of the package are the use of
loops to apply tasks through acoustic signals referenced in a selection
(annotation) table and the production of spectrograms in image files that allow
to organize data and verify acoustic analyzes.  The package offers functions to
explore, organize and manipulate multiple sound files, explore and download
Xeno-Canto recordings, detect signals automatically, create spectrograms of
complete recordings or individual signals, run different measures of acoustic
signal structure, evaluate the performance of measurement methods, catalog
signals, characterize different structural levels in acoustic signals, run
statistical analysis of duet coordination and consolidate databases and
annotation tables, among others.")
    (license license:gpl2+)))

(define-public r-warabandi
  (package
    (name "r-warabandi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "warabandi" version))
              (sha256
               (base32
                "0b1g2fpshhkd15b6fz4v3qwf425p5ahbh57acclqq6znl1acl1hg"))))
    (properties `((upstream-name . "warabandi")))
    (build-system r-build-system)
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

(define-public r-wand
  (package
    (name "r-wand")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wand" version))
              (sha256
               (base32
                "0y9xmh9a93lnadg83i223j2nf77jazz8m1ck1bmdf5jwj4vyzaqa"))))
    (properties `((upstream-name . "wand")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WaMaSim" version))
              (sha256
               (base32
                "0sa7qd2bpn3sp06mlpissxxkfhg7j1d07nnwlnz7nyg7pivwnpan"))))
    (properties `((upstream-name . "WaMaSim")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "https://github.com/scheidan/WaMaSim")
    (synopsis
     "Simulate Rehabilitation Strategies for Water Distribution Systems")
    (description
     "The outcome of various rehabilitation strategies for water distribution systems
can be modeled with the Water Management Simulator (WaMaSim).  Pipe breaks and
the corresponding damage and rehabilitation costs are simulated.  It is mainly
intended to be used as educational tool for the Water Infrastructure
Experimental and Computer Laboratory at ETH Zurich, Switzerland.")
    (license license:gpl3)))

(define-public r-walrus
  (package
    (name "r-walrus")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "walrus" version))
              (sha256
               (base32
                "0z674sg78rdv9rmqr7s4w9rw8diciifwr4bc2v57yfvp0n9gcys4"))))
    (properties `((upstream-name . "walrus")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "walmartAPI" version))
              (sha256
               (base32
                "1nng8izncj2nmmpywn1ggpzvjh8q7y3q6260qhy9kbmvrrl26spf"))))
    (properties `((upstream-name . "walmartAPI")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wally" version))
              (sha256
               (base32
                "1d03vxn6q7v0nsrkd7dxkkv3siysgicv6c13fkvwmypln9vsl6sl"))))
    (properties `((upstream-name . "wally")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WallomicsData" version))
              (sha256
               (base32
                "1bv2v0gjb6v5p7rmm8nc00xnkdw60552siyfhz4y60wm1cygclbq"))))
    (properties `((upstream-name . "WallomicsData")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=WallomicsData")
    (synopsis
     "Datasets for Multi-Omics Integration in a Plant Abiotic Stress Context")
    (description
     "Datasets from the WallOmics project.  Contains phenomics, metabolomics,
proteomics and transcriptomics data collected from two organs of five ecotypes
of the model plant Arabidopsis thaliana exposed to two temperature growth
conditions.  Exploratory and integrative analyses of these data are presented in
Durufle et al (2020) <doi:10.1093/bib/bbaa166> and Durufle et al (2020)
<doi:10.3390/cells9102249>.")
    (license license:gpl3)))

(define-public r-wallace
  (package
    (name "r-wallace")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wallace" version))
              (sha256
               (base32
                "0q9nppyiijzbmdi6dvgnh8l8i1vassqcl5wc7bv08hidxbkw3pqs"))))
    (properties `((upstream-name . "wallace")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-spthin
                             r-spocc
                             r-sp
                             r-shinyjs
                             r-shiny
                             r-rmarkdown
                             r-rgeos
                             r-rgdal
                             r-rcolorbrewer
                             r-raster
                             r-magrittr
                             r-leaflet-extras
                             r-leaflet
                             r-jsonlite
                             r-enmeval
                             r-ecospat
                             r-dt
                             r-dplyr
                             r-dismo))
    (home-page "https://wallaceEcoMod.github.io")
    (synopsis
     "Modular Platform for Reproducible Modeling of Species Niches and Distributions")
    (description
     "The shiny application wallace is a modular platform for reproducible modeling of
species niches and distributions.  wallace guides users through a complete
analysis, from the acquisition of species occurrence and environmental data to
visualizing model predictions on an interactive map, thus bundling complex
workflows into a single, streamlined interface.")
    (license license:gpl3)))

(define-public r-walkscoreapi
  (package
    (name "r-walkscoreapi")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "walkscoreAPI" version))
              (sha256
               (base32
                "1c2gfkl5yl3mkviah8s8zjnqk6lnzma1yilxgfxckdh5wywi39fx"))))
    (properties `((upstream-name . "walkscoreAPI")))
    (build-system r-build-system)
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

(define-public r-walker
  (package
    (name "r-walker")
    (version "1.0.6-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "walker" version))
              (sha256
               (base32
                "0kmk8lxg3m3436bdghqizjgzln4lqrs3ks1mgfza63n59z5d20h8"))))
    (properties `((upstream-name . "walker")))
    (build-system r-build-system)
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

(define-public r-wal
  (package
    (name "r-wal")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wal" version))
              (sha256
               (base32
                "0n81c2i2wzmy33kk1k4zjjgv1irh8xqw05clif8n86qr4m0a01sv"))))
    (properties `((upstream-name . "wal")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wakefield" version))
              (sha256
               (base32
                "1rssh6v8m6fim2pvm4cjw8cbni77bv5qp0rwi6vwdl3jhi5zws7n"))))
    (properties `((upstream-name . "wakefield")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-ggplot2 r-dplyr r-chron))
    (home-page "https://github.com/trinker/wakefield")
    (synopsis "Generate Random Data Sets")
    (description
     "Generates random data sets including: data.frames, lists, and vectors.")
    (license license:gpl2)))

(define-public r-waiter
  (package
    (name "r-waiter")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waiter" version))
              (sha256
               (base32
                "0ya92qr25ssfkzn888b7rr8rn0304f3gz4h4pnc2a95rknbmxhls"))))
    (properties `((upstream-name . "waiter")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-r6 r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://waiter.john-coene.com/")
    (synopsis "Loading Screen for 'Shiny'")
    (description
     "Full screen and partial loading screens for Shiny with spinners, progress bars,
and notifications.")
    (license license:expat)))

(define-public r-waffle
  (package
    (name "r-waffle")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "waffle" version))
              (sha256
               (base32
                "1qjmai33p96cyavi9lgi6k30h6fj7db5sr569v9jf4kwx92c61df"))))
    (properties `((upstream-name . "waffle")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-gtable r-gridextra r-ggplot2
                             r-extrafont))
    (home-page "https://github.com/hrbrmstr/waffle/tree/cran")
    (synopsis "Create Waffle Chart Visualizations in R")
    (description
     "Square pie charts (a.k.a.  waffle charts) can be used to communicate parts of a
whole for categorical quantities.  To emulate the percentage view of a pie
chart, a 10x10 grid should be used with each square representing 1% of the
total.  Modern uses of waffle charts do not necessarily adhere to this rule and
can be created with a grid of any rectangular shape.  Best practices suggest
keeping the number of categories small, just as should be done when creating pie
charts.  Tools are provided to create waffle charts as well as stitch them
together, and to use glyphs for making isotype pictograms.")
    (license license:gpl2+)))

(define-public r-wactor
  (package
    (name "r-wactor")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wactor" version))
              (sha256
               (base32
                "0dc7413jb3yz0nns2lc93w32wv6m4sg17j2ip63gc12vis0nf855"))))
    (properties `((upstream-name . "wactor")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WACS" version))
              (sha256
               (base32
                "09fmdlpb99q9dw17lwp0bwpklgvgiqq7bfs9ryx5r54m0niklr9d"))))
    (properties `((upstream-name . "WACS")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "wacolors" version))
              (sha256
               (base32
                "0c5ja70vgb2f1l2k5j7amxhkydbj44nc290ccr816xglj31nvsiy"))))
    (properties `((upstream-name . "wacolors")))
    (build-system r-build-system)
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
    (source (origin
              (method url-fetch)
              (uri (cran-uri "WA" version))
              (sha256
               (base32
                "0i6hkajfalwpvxmmzfl7nhk4x6hhrf0xqpgny8b1gk1hw05yv03m"))))
    (properties `((upstream-name . "WA")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://sites.google.com/view/lmaowisc/")
    (synopsis
     "While-Alive Loss Rate for Recurrent Event in the Presence of Death")
    (description
     "This package contains inferential and graphical routines for multi-group
analysis of while-alive loss (or event) rate for possibly recurrent nonfatal
event in the presence of death.")
    (license license:gpl2+)))

(define-public r-w3cmarkupvalidator
  (package
    (name "r-w3cmarkupvalidator")
    (version "0.1-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "W3CMarkupValidator" version))
              (sha256
               (base32
                "0nfay5nqss3zlw4nikj8h3zzlnjfxjch4pm3qky15qrcigrybrbl"))))
    (properties `((upstream-name . "W3CMarkupValidator")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-curl))
    (home-page "https://cran.r-project.org/package=W3CMarkupValidator")
    (synopsis "R Interface to W3C Markup Validation Services")
    (description
     "R interface to a W3C Markup Validation service.  See <http://validator.w3.org/>
for more information.")
    (license license:gpl2)))

(define-public r-w2cwm2c
  (package
    (name "r-w2cwm2c")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "W2CWM2C" version))
              (sha256
               (base32
                "0544wnyyv8glv4ljldmaqgynpshd5bvsqwsz9q1071dfshhxki1v"))))
    (properties `((upstream-name . "W2CWM2C")))
    (build-system r-build-system)
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

