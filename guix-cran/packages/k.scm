(define-module (guix-cran packages k)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages multiprecision)
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

(define-public r-kzs
  (package
    (name "r-kzs")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kzs" version))
              (sha256
               (base32
                "1srffwfg0ps8zx0c6hs2rc2y2p01qjl5g1ypqsbhq88vkcppx1w9"))))
    (properties `((upstream-name . "kzs")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=kzs")
    (synopsis "Kolmogorov-Zurbenko Spatial Smoothing and Applications")
    (description
     "This package provides a spatial smoothing algorithm based on convolutions of
finite rectangular kernels that provides sharp resolution in the presence of
high levels of noise.")
    (license license:gpl2+)))

(define-public r-kza
  (package
    (name "r-kza")
    (version "4.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kza" version))
              (sha256
               (base32
                "1vx7wc8iwmr9d6ff2kcy6y3nyfj6jfzv4hxkv1fsas0rbjgfick4"))))
    (properties `((upstream-name . "kza")))
    (build-system r-build-system)
    (inputs (list fftw))
    (home-page "https://cran.r-project.org/package=kza")
    (synopsis "Kolmogorov-Zurbenko Adaptive Filters")
    (description
     "Time Series Analysis including break detection, spectral analysis, KZ Fourier
Transforms.")
    (license license:gpl3)))

(define-public r-kyotil
  (package
    (name "r-kyotil")
    (version "2022.12-20")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kyotil" version))
              (sha256
               (base32
                "08j1pdg8mwypcpidpkb1rxkh9rdj58640qh9f5dsmn8y875qxna8"))))
    (properties `((upstream-name . "kyotil")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kyotil")
    (synopsis
     "Utility Functions for Statistical Analysis Report Generation and Monte Carlo Studies")
    (description
     "Helper functions for creating formatted summary of regression models, writing
publication-ready tables to latex files, and running Monte Carlo experiments.")
    (license license:gpl2+)))

(define-public r-kwb-hantush
  (package
    (name "r-kwb-hantush")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kwb.hantush" version))
              (sha256
               (base32
                "1rlm7i95yw66asgkag93phig2y9lic4xl2fv3cbnr3v751f6a59m"))))
    (properties `((upstream-name . "kwb.hantush")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-hydrogof))
    (native-inputs (list r-knitr))
    (home-page "https://kwb-r.github.io/kwb.hantush")
    (synopsis
     "Calculation of Groundwater Mounding Beneath an Infiltration Basin")
    (description
     "Calculation groundwater mounding beneath an infiltration basin based on the
Hantush (1967) equation (<doi:10.1029/WR003i001p00227>).  The correct
implementation is shown with a verification example based on a USGS report (page
25, <https://pubs.usgs.gov/sir/2010/5102/support/sir2010-5102.pdf#page=35>).")
    (license license:expat)))

(define-public r-kvh
  (package
    (name "r-kvh")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kvh" version))
              (sha256
               (base32
                "0lx7p2rgvcjgg99chcan0qb9hafx226sqvdb1g1xpkdwvzbyxci8"))))
    (properties `((upstream-name . "kvh")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "http://serguei.sokol.free.fr/kvh-format/")
    (synopsis "Read/Write Files in Key-Value-Hierarchy Format")
    (description
     "The format KVH is a lightweight format that can be read/written both by humans
and machines.  It can be useful in situations where XML or alike formats seem to
be an overkill.  We provide an ability to parse KVH files in R pretty fast due
to Rcpp use.")
    (license license:gpl2+)))

(define-public r-kurt
  (package
    (name "r-kurt")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Kurt" version))
              (sha256
               (base32
                "0fmd3m6pgsyf614wf11yclxl9zsac5jrffci5c2514wvs1slqw1p"))))
    (properties `((upstream-name . "Kurt")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-matrixcalc r-labstatr r-expm))
    (home-page "https://cran.r-project.org/package=Kurt")
    (synopsis "Performs Kurtosis-Based Statistical Analyses")
    (description
     "Computes measures of multivariate kurtosis, matrices of fourth-order moments and
cumulants, kurtosis-based projection pursuit.  Franceschini, C. and Loperfido,
N. (2018, ISBN:978-3-319-73905-2). \"An Algorithm for Finding Projections with
Extreme Kurtosis\".  Loperfido, N. (2017,ISSN:0024-3795). \"A New Kurtosis Matrix,
with Statistical Applications\".")
    (license license:gpl2+)))

(define-public r-kuiper-2samp
  (package
    (name "r-kuiper-2samp")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kuiper.2samp" version))
              (sha256
               (base32
                "0gcgayh7qdic9zprdvs6r8qvpqs467zrm0qzp2acb7alcp01jhpi"))))
    (properties `((upstream-name . "kuiper.2samp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kuiper.2samp")
    (synopsis "Two-Sample Kuiper Test")
    (description
     "This function performs the two-sample Kuiper test to assess the anomaly of
continuous, one-dimensional probability distributions.  References used for this
method are (1).  Kuiper, N. H. (1960). <DOI:10.1016/S1385-7258(60)50006-0> and
(2).  Paltani, S. (2004). <DOI:10.1051/0004-6361:20034220>.")
    (license license:agpl3)))

(define-public r-ktweedie
  (package
    (name "r-ktweedie")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ktweedie" version))
              (sha256
               (base32
                "1q946qdsbs7cjzfl97npi1lyqwrwxc72w4wv602faj74x33n0hjp"))))
    (properties `((upstream-name . "ktweedie")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=ktweedie")
    (synopsis
     "'Tweedie' Compound Poisson Model in the Reproducing Kernel Hilbert Space")
    (description
     "Kernel-based Tweedie compound Poisson gamma model using high-dimensional
predictors for the analyses of zero-inflated response variables.  The package
features built-in estimation, prediction and cross-validation tools and supports
choice of different kernel functions.")
    (license license:gpl3)))

(define-public r-ktsolve
  (package
    (name "r-ktsolve")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ktsolve" version))
              (sha256
               (base32
                "0brxqb60m1lyqhsmds1c3c6cmbcxlzk2nwvi0fhkc8ziwzlfmd09"))))
    (properties `((upstream-name . "ktsolve")))
    (build-system r-build-system)
    (propagated-inputs (list r-nleqslv r-bb))
    (home-page "https://cran.r-project.org/package=ktsolve")
    (synopsis
     "Configurable Function for Solving Families of Nonlinear Equations")
    (description
     "This is designed for use with an arbitrary set of equations with an arbitrary
set of unknowns.  The user selects \"fixed\" values for enough unknowns to leave
as many variables as there are equations, which in most cases means the system
is properly defined and a unique solution exists.  The function, the fixed
values and initial values for the remaining unknowns are fed to a nonlinear
backsolver.  The original version of \"TK!Solver\" , now a product of Universal
Technical Systems (<https://www.uts.com>) was the inspiration for this function.")
    (license license:lgpl3)))

(define-public r-ktensorgraphs
  (package
    (name "r-ktensorgraphs")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KTensorGraphs" version))
              (sha256
               (base32
                "1szl66ix6c6vb0zzyp404psglx3lk125903zc4za0qfzcic7a9p6"))))
    (properties `((upstream-name . "KTensorGraphs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KTensorGraphs")
    (synopsis "Co-Tucker3 Analysis of Two Sequences of Matrices")
    (description
     "This package provides a function called COTUCKER3() (Co-Inertia Analysis +
Tucker3 method) which performs a Co-Tucker3 analysis of two sequences of
matrices, as well as other functions called PCA() (Principal Component Analysis)
and BGA() (Between-Groups Analysis), which perform analysis of one matrix,
COIA() (Co-Inertia Analysis), which performs analysis of two matrices, PTA()
(Partial Triadic Analysis), STATIS(), STATISDUAL() and TUCKER3(), which perform
analysis of a sequence of matrices, and BGCOIA() (Between-Groups Co-Inertia
Analysis), STATICO() (STATIS method + Co-Inertia Analysis), COSTATIS()
(Co-Inertia Analysis + STATIS method), which also perform analysis of two
sequences of matrices.")
    (license license:gpl2+)))

(define-public r-ktaucenters
  (package
    (name "r-ktaucenters")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ktaucenters" version))
              (sha256
               (base32
                "15ddjr4c90b5hc4977gk35zb2kswrcvai3xighy7qj6g9lgiszgf"))))
    (properties `((upstream-name . "ktaucenters")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-gse r-dplyr r-dbscan))
    (home-page "https://cran.r-project.org/package=ktaucenters")
    (synopsis "Robust Clustering Procedures")
    (description
     "This package provides a clustering algorithm similar to K-Means is implemented,
it has two main advantages, namely (a) The estimator is resistant to outliers,
that means that results of estimator are still correct when there are atypical
values in the sample and (b) The estimator is efficient, roughly speaking, if
there are no outliers in the sample, results will be similar than those obtained
by a classic algorithm (K-Means).  Clustering procedure is carried out by
minimizing the overall robust scale so-called tau scale. (see Gonzalez, Yohai
and Zamar (2019) <arxiv:1906.08198>).")
    (license license:gpl2+)))

(define-public r-kstmatrix
  (package
    (name "r-kstmatrix")
    (version "0.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kstMatrix" version))
              (sha256
               (base32
                "0iy4dnl07pbgsv3343gh0szsab1kls2m5cskha08dchz0vqwpwf6"))))
    (properties `((upstream-name . "kstMatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kstMatrix")
    (synopsis
     "Basic Functions in Knowledge Space Theory Using Matrix Representation")
    (description
     "Knowledge space theory by Doignon and Falmagne (1999)
<doi:10.1007/978-3-642-58625-5> is a set- and order-theoretical framework, which
proposes mathematical formalisms to operationalize knowledge structures in a
particular domain.  The kstMatrix package provides basic functionalities to
generate, handle, and manipulate knowledge structures and knowledge spaces.
Opposed to the kst package, kstMatrix uses matrix representations for knowledge
structures.  Furthermore, kstMatrix contains several knowledge spaces developed
by the research group around Cornelia Dowling through querying experts.")
    (license license:gpl3)))

(define-public r-kstio
  (package
    (name "r-kstio")
    (version "0.3-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kstIO" version))
              (sha256
               (base32
                "0pmgb7n4gvslzc6qhqga39593k45vimj1y774bfsxhsacsb1ad9l"))))
    (properties `((upstream-name . "kstIO")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sets
                             r-relations
                             r-pks
                             r-mass
                             r-kstmatrix))
    (home-page "https://cran.r-project.org/package=kstIO")
    (synopsis "Knowledge Space Theory Input/Output")
    (description
     "Knowledge space theory by Doignon and Falmagne (1999)
<doi:10.1007/978-3-642-58625-5> is a set- and order-theoretical framework which
proposes mathematical formalisms to operationalize knowledge structures in a
particular domain.  The kstIO package provides basic functionalities to read and
write KST data from/to files to be used together with the kst', kstMatrix', pks
or DAKS packages.")
    (license license:gpl3+)))

(define-public r-kstatistics
  (package
    (name "r-kstatistics")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kStatistics" version))
              (sha256
               (base32
                "149aly73m7ls4pvyhg861j6yi2yyyr4hdwzh53hfyrakr73rq7y4"))))
    (properties `((upstream-name . "kStatistics")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kStatistics")
    (synopsis
     "Unbiased Estimators for Cumulant Products and Faa Di Bruno's Formula")
    (description
     "Tools for estimate (joint) cumulants and (joint) products of cumulants of a
random sample using (multivariate) k-statistics and (multivariate) polykays,
unbiased estimators with minimum variance.  Tools for generating univariate and
multivariate Faa di Bruno's formula and related polynomials, such as Bell
polynomials, generalized complete Bell polynomials, partition polynomials and
generalized partition polynomials.  For more details see Di Nardo E., Guarino
G., Senato D. (2009) <arXiv:0807.5008>, <arXiv:1012.6008>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-kst
  (package
    (name "r-kst")
    (version "0.5-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kst" version))
              (sha256
               (base32
                "0drh5zjin73jfa5vksprv43ak4s8jr4y4py6sbcc4835rkl9qzph"))))
    (properties `((upstream-name . "kst")))
    (build-system r-build-system)
    (propagated-inputs (list r-sets r-relations r-proxy))
    (home-page "https://homepage.uni-graz.at/en/cord.hockemeyer/")
    (synopsis "Knowledge Space Theory")
    (description
     "Knowledge space theory by Doignon and Falmagne (1999)
<doi:10.1007/978-3-642-58625-5> is a set- and order-theoretical framework, which
proposes mathematical formalisms to operationalize knowledge structures in a
particular domain.  The kst package provides basic functionalities to generate,
handle, and manipulate knowledge structures and knowledge spaces.")
    (license license:gpl2+)))

(define-public r-kssa
  (package
    (name "r-kssa")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kssa" version))
              (sha256
               (base32
                "1vrd7zlwigg7ipfq2pjnndp5mwkc0yglvrdiirv3kqm5lq0f14qa"))))
    (properties `((upstream-name . "kssa")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-rlang
                             r-missmethods
                             r-metrics
                             r-magrittr
                             r-imputets
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (home-page "https://github.com/pipeben/kssa")
    (synopsis "Known Sub-Sequence Algorithm")
    (description
     "This package implements the Known Sub-Sequence Algorithm
<doi:10.1016/j.aaf.2021.12.013>, which helps to automatically identify and
validate the best method for missing data imputation in a time series.  Supports
the comparison of multiple state-of-the-art algorithms.")
    (license license:agpl3+)))

(define-public r-ksrlive
  (package
    (name "r-ksrlive")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ksrlive" version))
              (sha256
               (base32
                "1zd3ggzgjks0jay69s5m7ihbd7v7zha6ssj2m9ahnyp00ghpk83j"))))
    (properties `((upstream-name . "ksrlive")))
    (build-system r-build-system)
    (propagated-inputs (list r-tightclust))
    (home-page "https://cran.r-project.org/package=ksrlive")
    (synopsis "Identify Kinase Substrate Relationships Using Dynamic Data")
    (description
     "Using this package you can combine known kinase substrate relationships with
experimental data and determine active kinases and their substrates.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-kspm
  (package
    (name "r-kspm")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KSPM" version))
              (sha256
               (base32
                "13fq0d016z6880rr93y918l27fsxd5dxc6gbdnkma5sgsjni5cxh"))))
    (properties `((upstream-name . "KSPM")))
    (build-system r-build-system)
    (propagated-inputs (list r-expm r-deoptim r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=KSPM")
    (synopsis "Kernel Semi-Parametric Models")
    (description
     "To fit the kernel semi-parametric model and its extensions.  It allows multiple
kernels and unlimited interactions in the same model.  Coefficients are
estimated by maximizing a penalized log-likelihood; penalization terms and
hyperparameters are estimated by minimizing leave-one-out error.  It includes
predictions with confidence/prediction intervals, statistical tests for the
significance of each kernel, a procedure for variable selection and graphical
tools for diagnostics and interpretation of covariate effects.  Currently it is
implemented for continuous dependent variables.  The package is based on the
paper of Liu et al. (2007), <doi:10.1111/j.1541-0420.2007.00799.x>.")
    (license license:gpl3)))

(define-public r-ksnn
  (package
    (name "r-ksnn")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ksNN" version))
              (sha256
               (base32
                "06x471hck95xqy7rbh53ibhzh6kfjra7y9ipqdj2rqdkmfdj72q8"))))
    (properties `((upstream-name . "ksNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=ksNN")
    (synopsis "K* Nearest Neighbors Algorithm")
    (description
     "Prediction with k* nearest neighbor algorithm based on a publication by Anava
and Levy (2016) <arXiv:1701.07266>.")
    (license license:gpl2+)))

(define-public r-ksharp
  (package
    (name "r-ksharp")
    (version "0.1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ksharp" version))
              (sha256
               (base32
                "1dnkj838y8c1b53mlljhjqs3nd864i9xcqsv9n4fw28b4br9m570"))))
    (properties `((upstream-name . "ksharp")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tkonopka/ksharp")
    (synopsis "Cluster Sharpening")
    (description
     "Clustering typically assigns data points into discrete groups, but the clusters
can sometimes be indistinct.  Cluster sharpening adjusts an existing clustering
to create contrast between groups.  This package provides a general interface
for cluster sharpening along with several implementations based on different
excision criteria.")
    (license license:expat)))

(define-public r-ksgeneral
  (package
    (name "r-ksgeneral")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KSgeneral" version))
              (sha256
               (base32
                "0fxkykvkfdh492pzs7fs8x8qnkrr0v5hmvykr8x94lqhnmsr4axn"))))
    (properties `((upstream-name . "KSgeneral")))
    (build-system r-build-system)
    (inputs (list fftw))
    (propagated-inputs (list r-rcpp r-mass r-dgof))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/raymondtsr/KSgeneral")
    (synopsis
     "Computing P-Values of the K-S Test for (Dis)Continuous Null Distribution")
    (description
     "Computes a p-value of the one-sample two-sided (or one-sided, as a special case)
Kolmogorov-Smirnov (KS) statistic, for any fixed critical level, and an
arbitrary, possibly large sample size for a pre-specified purely discrete, mixed
or continuous cumulative distribution function (cdf) under the null hypothesis.
If a data sample is supplied, KSgeneral computes the p-value corresponding to
the value of the KS test statistic computed based on the user provided data
sample.  The package KSgeneral implements a novel, accurate and efficient method
named Exact-KS-FFT, expressing the p-value as a double-boundary non-crossing
probability for a homogeneous Poisson process, which is then efficiently
computed using Fast Fourier Transform (FFT).  The package can also be used to
compute and plot the complementary cdf of the KS statistic which is known to
depend on the hypothesized distribution when the latter is discontinuous (i.e.
purely discrete or mixed).  To cite this package in publication use: Dimitrina
S. Dimitrova, Vladimir K. Kaishev, and Senren Tan.  Computing the
Kolmogorov-Smirnov Distribution When the Underlying CDF is Purely Discrete,
Mixed, or Continuous.  Journal of Statistical Software.  2020; 95(10): 1--42.
<doi:10.18637/jss.v095.i10>.")
    (license license:gpl2+)))

(define-public r-kselection
  (package
    (name "r-kselection")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kselection" version))
              (sha256
               (base32
                "03ax8b63fkq4sfsb9zvh2hk4g9nmd8wh5lla26wb7lan4s197dz6"))))
    (properties `((upstream-name . "kselection")))
    (build-system r-build-system)
    (home-page "https://github.com/drodriguezperez/kselection")
    (synopsis "Selection of K in K-Means Clustering")
    (description
     "Selection of k in k-means clustering based on Pham et al.  paper ``Selection of
k in k-means clustering''.")
    (license license:gpl3)))

(define-public r-kseaapp
  (package
    (name "r-kseaapp")
    (version "0.99.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KSEAapp" version))
              (sha256
               (base32
                "1gfgpa2d32y6bzvf4ww70sm7niq34sqmyrhi0phlqxshqq9xviqc"))))
    (properties `((upstream-name . "KSEAapp")))
    (build-system r-build-system)
    (propagated-inputs (list r-gplots))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=KSEAapp")
    (synopsis "Kinase-Substrate Enrichment Analysis")
    (description
     "This package infers relative kinase activity from phosphoproteomics data using
the method described by Casado et al. (2013) <doi:10.1126/scisignal.2003573>.")
    (license license:expat)))

(define-public r-ksd
  (package
    (name "r-ksd")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KSD" version))
              (sha256
               (base32
                "1g7fkk399mgnz0h4nhbxf295d3ph9ssv345c26j6sanqbbd9d7g3"))))
    (properties `((upstream-name . "KSD")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr))
    (home-page "https://cran.r-project.org/package=KSD")
    (synopsis "Goodness-of-Fit Tests using Kernelized Stein Discrepancy")
    (description
     "An adaptation of Kernelized Stein Discrepancy, this package provides a
goodness-of-fit test of whether a given i.i.d.  sample is drawn from a given
distribution.  It works for any distribution once its score function (the
derivative of log-density) can be provided.  This method is based on \"A
Kernelized Stein Discrepancy for Goodness-of-fit Tests and Model Evaluation\" by
Liu, Lee, and Jordan, available at <arXiv:1602.03253>.")
    (license license:expat)))

(define-public r-kscorrect
  (package
    (name "r-kscorrect")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KScorrect" version))
              (sha256
               (base32
                "1khvwc610yp3fd4fn0wcgqpzxg9g7sicjjmwvfcahs8qxn3m5vfa"))))
    (properties `((upstream-name . "KScorrect")))
    (build-system r-build-system)
    (propagated-inputs (list r-mclust r-mass r-iterators r-foreach
                             r-doparallel))
    (home-page "https://github.com/pnovack-gottshall/KScorrect")
    (synopsis "Lilliefors-Corrected Kolmogorov-Smirnov Goodness-of-Fit Tests")
    (description
     "This package implements the Lilliefors-corrected Kolmogorov-Smirnov test for use
in goodness-of-fit tests, suitable when population parameters are unknown and
must be estimated by sample statistics.  P-values are estimated by simulation.
Can be used with a variety of continuous distributions, including normal,
lognormal, univariate mixtures of normals, uniform, loguniform, exponential,
gamma, and Weibull distributions.  Functions to generate random numbers and
calculate density, distribution, and quantile functions are provided for use
with the log uniform and mixture distributions.")
    (license license:cc0)))

(define-public r-ksa
  (package
    (name "r-ksa")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KSA" version))
              (sha256
               (base32
                "1q72l28cfk4721w3qbkqcm0ak8qgp1fcnpj50idghr7hds6kmc2l"))))
    (properties `((upstream-name . "KSA")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KSA")
    (synopsis "Retained Component Criterion for Principal Component Analysis")
    (description
     "The Retained Component Criterion for Principal Component Analysis (RCC_PCA) is a
tool to determine the optimal number of components to retain in PCA.")
    (license license:gpl2)))

(define-public r-krmm
  (package
    (name "r-krmm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KRMM" version))
              (sha256
               (base32
                "0wxzhrrc4lx20nxjny7rcfw3bya7drn88zbrlzx9f531298xwbrk"))))
    (properties `((upstream-name . "KRMM")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase r-mass r-kernlab r-cvtools))
    (home-page "https://cran.r-project.org/package=KRMM")
    (synopsis "Kernel Ridge Mixed Model")
    (description
     "Solves kernel ridge regression, within the the mixed model framework, for the
linear, polynomial, Gaussian, Laplacian and ANOVA kernels.  The model components
(i.e.  fixed and random effects) and variance parameters are estimated using the
expectation-maximization (EM) algorithm.  All the estimated components and
parameters, e.g. BLUP of dual variables and BLUP of random predictor effects for
the linear kernel (also known as RR-BLUP), are available.  The kernel ridge
mixed model (KRMM) is described in Jacquin L, Cao T-V and Ahmadi N (2016) A
Unified and Comprehensible View of Parametric and Kernel Methods for Genomic
Prediction with Application to Rice.  Front.  Genet.  7:145.
<doi:10.3389/fgene.2016.00145>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-krm
  (package
    (name "r-krm")
    (version "2022.10-17")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "krm" version))
              (sha256
               (base32
                "142scj7cgg7sv0g17mivpgzk3h8jczf40h1padixfgx3204fj4xa"))))
    (properties `((upstream-name . "krm")))
    (build-system r-build-system)
    (propagated-inputs (list r-kyotil))
    (home-page "https://cran.r-project.org/package=krm")
    (synopsis "Kernel Based Regression Models")
    (description
     "This package implements several methods for testing the variance component
parameter in regression models that contain kernel-based random effects,
including a maximum of adjusted scores test.  Several kernels are supported,
including a profile hidden Markov model mutual information kernel for protein
sequence.  This package is described in Fong et al. (2015)
<DOI:10.1093/biostatistics/kxu056>.")
    (license license:gpl2)))

(define-public r-krls
  (package
    (name "r-krls")
    (version "1.0-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KRLS" version))
              (sha256
               (base32
                "1zyf3smfzfm3n43i35rlj1w6vcip2hxkvk4f8lp77xbsry0gmwjw"))))
    (properties `((upstream-name . "KRLS")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis "Kernel-Based Regularized Least Squares")
    (description
     "Package implements Kernel-based Regularized Least Squares (KRLS), a machine
learning method to fit multidimensional functions y=f(x) for regression and
classification problems without relying on linearity or additivity assumptions.
KRLS finds the best fitting function by minimizing the squared loss of a
Tikhonov regularization problem, using Gaussian kernels as radial basis
functions.  For further details see Hainmueller and Hazlett (2014).")
    (license license:gpl2+)))

(define-public r-kris
  (package
    (name "r-kris")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KRIS" version))
              (sha256
               (base32
                "1alr1va8xi4840ki1r48yf441vyn81lhdakcm7w3wxzlx5mbkkp7"))))
    (properties `((upstream-name . "KRIS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rarpack))
    (home-page "https://gitlab.com/kris.ccp/kris")
    (synopsis
     "Keen and Reliable Interface Subroutines for Bioinformatic Analysis")
    (description
     "This package provides useful functions which are needed for bioinformatic
analysis such as calculating linear principal components from numeric data and
Single-nucleotide polymorphism (SNP) dataset, calculating fixation index (Fst)
using Hudson method, creating scatter plots in 3 views, handling with PLINK
binary file format, detecting rough structures and outliers using unsupervised
clustering, and calculating matrix multiplication in the faster way for big
data.")
    (license license:expat)))

(define-public r-krippendorffsalpha
  (package
    (name "r-krippendorffsalpha")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "krippendorffsalpha" version))
              (sha256
               (base32
                "0zzhpdmmaiaqrg1xi9jg6lzrhzpav8wyrc8z38rf8x6kxmr2bx3m"))))
    (properties `((upstream-name . "krippendorffsalpha")))
    (build-system r-build-system)
    (home-page "http://www.johnhughes.org")
    (synopsis "Measuring Agreement Using Krippendorff's Alpha Coefficient")
    (description
     "This package provides tools for applying Krippendorff's Alpha methodology
<DOI:10.1080/19312450709336664>.  Both the customary methodology and Hughes
methodology <DOI:10.48550/arXiv.2210.13265> are supported, the former being
preferred for larger datasets, the latter for smaller datasets.  The framework
supports common and user-defined distance functions, and can accommodate any
number of units, any number of coders, and missingness.  Interval estimation can
be done in parallel for either methodology.")
    (license license:gpl2+)))

(define-public r-kriginv
  (package
    (name "r-kriginv")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KrigInv" version))
              (sha256
               (base32
                "01i953b0xrqrwbgzv8giz4dmcbc18jni9whhkmpg8sxvhqac59ns"))))
    (properties `((upstream-name . "KrigInv")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgenoud
                             r-randtoolbox
                             r-pbivnorm
                             r-mvtnorm
                             r-dicekriging
                             r-anmc))
    (home-page "https://doi.org/10.1016/j.csda.2013.03.008")
    (synopsis
     "Kriging-Based Inversion for Deterministic and Noisy Computer Experiments")
    (description
     "Criteria and algorithms for sequentially estimating level sets of a multivariate
numerical function, possibly observed with noise.")
    (license license:gpl3)))

(define-public r-kriging
  (package
    (name "r-kriging")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kriging" version))
              (sha256
               (base32
                "1s8cvc88g0wldr40hsv00145bym071bmp8klr0pbmvx0gfrqs8y8"))))
    (properties `((upstream-name . "kriging")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kriging")
    (synopsis "Ordinary Kriging")
    (description
     "An implementation of a simple and highly optimized ordinary kriging algorithm to
plot geographical data.")
    (license license:gpl2)))

(define-public r-krige
  (package
    (name "r-krige")
    (version "0.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "krige" version))
              (sha256
               (base32
                "03xqj8aqlxxxpxadrl64rxxz79k062bx953z958wg3adjip776q4"))))
    (properties `((upstream-name . "krige")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-coda))
    (home-page "https://cran.r-project.org/package=krige")
    (synopsis "Geospatial Kriging with Metropolis Sampling")
    (description
     "Estimates kriging models for geographical point-referenced data.  Method is
described in Gill (2020) <doi:10.1177/1532440020930197>.")
    (license license:gpl2+)))

(define-public r-kriens
  (package
    (name "r-kriens")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kriens" version))
              (sha256
               (base32
                "1qi65k9fsbbkbw0w40rv60p5ygrvr10rmlyxdaqa5bdpcmrbly5z"))))
    (properties `((upstream-name . "kriens")))
    (build-system r-build-system)
    (home-page "http://www.alephdue.com")
    (synopsis "Continuation Passing Style Development")
    (description
     "This package provides basic functions for Continuation-Passing Style
development.")
    (license license:bsd-3)))

(define-public r-kraljicmatrix
  (package
    (name "r-kraljicmatrix")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KraljicMatrix" version))
              (sha256
               (base32
                "0yzilmiiyzd2x3v0cnjphf0wdwiblh37kgrvmfrdy49qly48pvi2"))))
    (properties `((upstream-name . "KraljicMatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-magrittr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/koalaverse/KraljicMatrix")
    (synopsis "Quantified Implementation of the Kraljic Matrix")
    (description
     "This package implements a quantified approach to the Kraljic Matrix (Kraljic,
1983, <https://hbr.org/1983/09/purchasing-must-become-supply-management>) for
strategically analyzing a firm??????s purchasing portfolio.  It combines
multi-objective decision analysis to measure purchasing characteristics and uses
this information to place products and services within the Kraljic Matrix.")
    (license license:expat)))

(define-public r-kpodclustr
  (package
    (name "r-kpodclustr")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kpodclustr" version))
              (sha256
               (base32
                "1gwy59sh4gp06hr3il3hz0iiwdrzrlya5b026qxvz5q62msf6q5a"))))
    (properties `((upstream-name . "kpodclustr")))
    (build-system r-build-system)
    (home-page "http://jocelynchi.com/kpodclustr")
    (synopsis "Method for Clustering Partially Observed Data")
    (description
     "Software for k-means clustering of partially observed data from Chi, Chi, and
Baraniuk (2016) <doi:10.1080/00031305.2015.1086685>.")
    (license license:expat)))

(define-public r-kpmt
  (package
    (name "r-kpmt")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kpmt" version))
              (sha256
               (base32
                "15d26khc0v3kc1c7l1avqp48pfqmc6xj32029mv7myivr41ashk3"))))
    (properties `((upstream-name . "kpmt")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (home-page "https://cran.r-project.org/package=kpmt")
    (synopsis "Known Population Median Test")
    (description
     "This package provides functions that implement the known population median test.")
    (license license:expat)))

(define-public r-kpeaks
  (package
    (name "r-kpeaks")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kpeaks" version))
              (sha256
               (base32
                "057xfqn08lqczgrj1r63d7vbncg24x9va9lnk8c47nwzl1x8aphd"))))
    (properties `((upstream-name . "kpeaks")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kpeaks")
    (synopsis
     "Determination of K Using Peak Counts of Features for Clustering")
    (description
     "The number of clusters (k) is needed to start all the partitioning clustering
algorithms.  An optimal value of this input argument is widely determined by
using some internal validity indices.  Since most of the existing internal
indices suggest a k value which is computed from the clustering results after
several runs of a clustering algorithm they are computationally expensive.  On
the contrary, the package kpeaks enables to estimate k before running any
clustering algorithm.  It is based on a simple novel technique using the
descriptive statistics of peak counts of the features in a data set.")
    (license license:gpl2+)))

(define-public r-kpcalg
  (package
    (name "r-kpcalg")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kpcalg" version))
              (sha256
               (base32
                "1gd5bisyfwb12l9jmwhi2arlxrabc01vgv4m1qqs23vybsd6yh52"))))
    (properties `((upstream-name . "kpcalg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-pcalg
                             r-mgcv
                             r-kernlab
                             r-graph
                             r-energy))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kpcalg")
    (synopsis "Kernel PC Algorithm for Causal Structure Detection")
    (description
     "Kernel PC (kPC) algorithm for causal structure learning and causal inference
using graphical models.  kPC is a version of PC algorithm that uses kernel based
independence criteria in order to be able to deal with non-linear relationships
and non-Gaussian noise.")
    (license license:gpl2+)))

(define-public r-kpc
  (package
    (name "r-kpc")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KPC" version))
              (sha256
               (base32
                "1i9kpr0pib6a8qn7ibmhbay4vxr96ca4kcp5aswmlvcv4ycmw6lx"))))
    (properties `((upstream-name . "KPC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-proxy r-mlpack r-kernlab r-data-table))
    (home-page "https://www.jmlr.org/papers/v23/21-493.html")
    (synopsis "Kernel Partial Correlation Coefficient")
    (description
     "Implementations of two empirical versions the kernel partial correlation (KPC)
coefficient and the associated variable selection algorithms.  KPC is a measure
of the strength of conditional association between Y and Z given X, with X, Y, Z
being random variables taking values in general topological spaces.  As the name
suggests, KPC is defined in terms of kernels on reproducing kernel Hilbert
spaces (RKHSs).  The population KPC is a deterministic number between 0 and 1;
it is 0 if and only if Y is conditionally independent of Z given X, and it is 1
if and only if Y is a measurable function of Z and X. One empirical KPC
estimator is based on geometric graphs, such as K-nearest neighbor graphs and
minimum spanning trees, and is consistent under very weak conditions.  The other
empirical estimator, defined using conditional mean embeddings (CMEs) as used in
the RKHS literature, is also consistent under suitable conditions.  Using KPC, a
stepwise forward variable selection algorithm KFOCI (using the graph based
estimator of KPC) is provided, as well as a similar stepwise forward selection
algorithm based on the RKHS based estimator.  For more details on KPC, its
empirical estimators and its application on variable selection, see Huang, Z.,
N. Deb, and B. Sen (2022).  ??????Kernel partial correlation coefficient ?????? a
measure of conditional dependence?????? (URL listed below).  When X is empty, KPC
measures the unconditional dependence between Y and Z, which has been described
in Deb, N., P. Ghosal, and B. Sen (2020), ??????Measuring association on
topological spaces using kernels and geometric graphs?????? <arXiv:2010.01768>, and
it is implemented in the functions KMAc() and Klin() in this package.  The
latter can be computed in near linear time.")
    (license license:gpl3)))

(define-public r-kpart
  (package
    (name "r-kpart")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Kpart" version))
              (sha256
               (base32
                "02df0pr8a0gm8558gbw9svxf5sybmg27grymy71ar9hjnhw5xlf2"))))
    (properties `((upstream-name . "Kpart")))
    (build-system r-build-system)
    (propagated-inputs (list r-leaps))
    (home-page "https://cran.r-project.org/package=Kpart")
    (synopsis "Cubic Spline Fitting with Knot Selection")
    (description
     "Cubic spline fitting along with knot selection, includes support for additional
variables.")
    (license license:gpl2+)))

(define-public r-koulmde
  (package
    (name "r-koulmde")
    (version "3.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KoulMde" version))
              (sha256
               (base32
                "0yx04my2vwjpi4l35h1i5xwqckca8b72divww39y1frcvia33g08"))))
    (properties `((upstream-name . "KoulMde")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-expm))
    (home-page "https://cran.r-project.org/package=KoulMde")
    (synopsis
     "Koul's Minimum Distance Estimation in Regression and Image Segmentation Problems")
    (description
     "Many methods are developed to deal with two major statistical problems: image
segmentation and nonparametric estimation in various regression models.  Image
segmentation is nowadays gaining a lot of attention from various scientific
subfields.  Especially, image segmentation has been popular in medical research
such as magnetic resonance imaging (MRI) analysis.  When a patient suffers from
some brain diseases such as dementia and Parkinson's disease, those diseases can
be easily diagnosed in brain MRI: the area affected by those diseases is
brightly expressed in MRI, which is called a white lesion.  For the purpose of
medical research, locating and segment those white lesions in MRI is a critical
issue; it can be done manually.  However, manual segmentation is very expensive
in that it is error-prone and demands a huge amount of time.  Therefore,
supervised machine learning has emerged as an alternative solution.  Despite its
powerful performance in a classification problem such as hand-written digits,
supervised machine learning has not shown the same satisfactory result in MRI
analysis.  Setting aside all issues of the supervised machine learning, it
exposed a critical problem when employed for MRI analysis: it requires
time-consuming data labeling.  Thus, there is a strong demand for an
unsupervised approach, and this package - based on Hira L. Koul (1986)
<DOI:10.1214/aos/1176350059> - proposes an efficient method for simple image
segmentation - here, \"simple\" means that an image is black-and-white - which can
easily be applied to MRI analysis.  This package includes a function
GetSegImage(): when a black-and-white image is given as an input, GetSegImage()
separates an area of white pixels - which corresponds to a white lesion in MRI -
from the given image.  For the second problem, consider linear regression model
and autoregressive model of order q where errors in the linear regression model
and innovations in the autoregression model are independent and symmetrically
distributed.  Hira L. Koul (1986) <DOI:10.1214/aos/1176350059> proposed a
nonparametric minimum distance estimation method by minimizing L2-type distance
between certain weighted residual empirical processes.  He also proposed a
simpler version of the loss function by using symmetry of the integrating
measure in the distance.  Kim (2018) <DOI:10.1080/00949655.2017.1392527>
proposed a fast computational method which enables practitioners to compute the
minimum distance estimator of the vector of general multiple regression
parameters for several integrating measures.  This package contains three
functions: KoulLrMde(), KoulArMde(), and Koul2StageMde().  The former two
provide minimum distance estimators for linear regression model and
autoregression model, respectively, where both are based on Koul's method.
These two functions take much less time for the computation than those based on
parametric minimum distance estimation methods.  Koul2StageMde() provides
estimators for regression and autoregressive coefficients of linear regression
model with autoregressive errors through minimum distant method of two stages.
The new version is written in Rcpp and dramatically reduces computational time.")
    (license license:gpl2)))

(define-public r-kosel
  (package
    (name "r-kosel")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kosel" version))
              (sha256
               (base32
                "1gdsy4i58byqxddpsm5nk1r3hlgik5gs2b8jqcm8n1r4ib6pg0ay"))))
    (properties `((upstream-name . "kosel")))
    (build-system r-build-system)
    (propagated-inputs (list r-ordinalnet r-glmnet))
    (home-page "https://arxiv.org/pdf/1907.03153.pdf")
    (synopsis "Variable Selection by Revisited Knockoffs Procedures")
    (description
     "This package performs variable selection for many types of L1-regularised
regressions using the revisited knockoffs procedure.  This procedure uses a
matrix of knockoffs of the covariates independent from the response variable Y.
The idea is to determine if a covariate belongs to the model depending on
whether it enters the model before or after its knockoff.  The procedure suits
for a wide range of regressions with various types of response variables.
Regression models available are exported from the R packages glmnet and
ordinalNet'.  Based on the paper linked to via the URL below: Gegout A., Gueudin
A., Karmann C. (2019) <arXiv:1907.03153>.")
    (license license:gpl3)))

(define-public r-korpus-lang-en
  (package
    (name "r-korpus-lang-en")
    (version "0.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "koRpus.lang.en" version))
              (sha256
               (base32
                "1faj065wjj7a68i57y7zmrrj4ckp01gvq8qknf6a56idi8kzr732"))))
    (properties `((upstream-name . "koRpus.lang.en")))
    (build-system r-build-system)
    (propagated-inputs (list r-sylly-en r-korpus))
    (home-page "https://reaktanz.de/?c=hacking&s=koRpus")
    (synopsis "Language Support for 'koRpus' Package: English")
    (description
     "Adds support for the English language to the koRpus package.  To ask for help,
report bugs, suggest feature improvements, or discuss the global development of
the package, please consider subscribing to the koRpus-dev mailing list
(<https://korpusml.reaktanz.de>).")
    (license license:gpl3+)))

(define-public r-korpus
  (package
    (name "r-korpus")
    (version "0.13-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "koRpus" version))
              (sha256
               (base32
                "0r9a2fzi3w53kixcjzbij8qmmkjl2p53dazys34s0czb5qrlm6hf"))))
    (properties `((upstream-name . "koRpus")))
    (build-system r-build-system)
    (propagated-inputs (list r-sylly r-matrix r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://reaktanz.de/?c=hacking&s=koRpus")
    (synopsis
     "Text Analysis with Emphasis on POS Tagging, Readability, and Lexical Diversity")
    (description
     "This package provides a set of tools to analyze texts.  Includes, amongst
others, functions for automatic language detection, hyphenation, several indices
of lexical diversity (e.g., type token ratio, HD-D/vocd-D, MTLD) and readability
(e.g., Flesch, SMOG, LIX, Dale-Chall).  Basic import functions for language
corpora are also provided, to enable frequency analyses (supports Celex and
Leipzig Corpora Collection file formats) and measures like tf-idf.  Note: For
full functionality a local installation of TreeTagger is recommended.  It is
also recommended to not load this package directly, but by loading one of the
available language support packages from the l10n repository
<https://undocumeantit.github.io/repos/l10n/>.  koRpus also includes a plugin
for the R GUI and IDE RKWard, providing graphical dialogs for its basic
features.  The respective R package rkward cannot be installed directly from a
repository, as it is a part of RKWard.  To make full use of this feature, please
install RKWard from <https://rkward.kde.org> (plugins are detected
automatically).  Due to some restrictions on CRAN, the full package sources are
only available from the project homepage.  To ask for help, report bugs, request
features, or discuss the development of the package, please subscribe to the
koRpus-dev mailing list (<https://korpusml.reaktanz.de>).")
    (license license:gpl3+)))

(define-public r-konpsurv
  (package
    (name "r-konpsurv")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KONPsurv" version))
              (sha256
               (base32
                "08z24w04rzydm86z201crcmyw88sg92yqma5hzj0blj0fyqakwmi"))))
    (properties `((upstream-name . "KONPsurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rcpp))
    (home-page "https://cran.r-project.org/package=KONPsurv")
    (synopsis "KONP Tests: Powerful K-Sample Tests for Right-Censored Data")
    (description
     "The K-sample omnibus non-proportional hazards (KONP) tests are powerful
non-parametric tests for comparing K (>=2) hazard functions based on
right-censored data (Gorfine, Schlesinger and Hsu, 2020,
<doi:10.1177/0962280220907355>).  These tests are consistent against any
differences between the hazard functions of the groups.  The KONP tests are
often more powerful than other existing tests, especially under non-proportional
hazard functions.")
    (license license:gpl2+)))

(define-public r-konfound
  (package
    (name "r-konfound")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "konfound" version))
              (sha256
               (base32
                "14d8a1ngrf24gbxfg8c8h4svjvsjc3gflcnzxza17xv2rcgzygnr"))))
    (properties `((upstream-name . "konfound")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-mice
                             r-ggplot2
                             r-dplyr
                             r-crayon
                             r-broom-mixed
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jrosen48/konfound")
    (synopsis "Quantify the Robustness of Causal Inferences")
    (description
     "Statistical methods that quantify the conditions necessary to alter inferences,
also known as sensitivity analysis, are becoming increasingly important to a
variety of quantitative sciences.  A series of recent works, including Frank
(2000) <doi:10.1177/0049124100029002001> and Frank et al. (2013)
<doi:10.3102/0162373713493129> extend previous sensitivity analyses by
considering the characteristics of omitted variables or unobserved cases that
would change an inference if such variables or cases were observed.  These
analyses generate statements such as \"an omitted variable would have to be
correlated at xx with the predictor of interest (e.g., treatment) and outcome to
invalidate an inference of a treatment effect\".  Or \"one would have to replace
pp percent of the observed data with null hypothesis cases to invalidate the
inference\".  We implement these recent developments of sensitivity analysis and
provide modules to calculate these two robustness indices and generate such
statements in R. In particular, the functions konfound(), pkonfound() and
mkonfound() allow users to calculate the robustness of inferences for a user's
own model, a single published study and multiple studies respectively.")
    (license license:expat)))

(define-public r-komaletter
  (package
    (name "r-komaletter")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "komaletter" version))
              (sha256
               (base32
                "1cll8cb69gyxl5mg04jibxf7szh38xrqksjkcswbgjcqidp6yxi2"))))
    (properties `((upstream-name . "komaletter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rnuske/komaletter")
    (synopsis "Simply Beautiful PDF Letters from Markdown")
    (description
     "Write beautiful yet customizable letters in R Markdown and directly obtain the
finished PDF. Smooth generation of PDFs is realized by rmarkdown', the
pandoc-letter template and the KOMA-Script letter class.  KOMA-Script provides
enhanced replacements for the standard LaTeX classes with emphasis on typography
and versatility.  KOMA-Script is particularly useful for international writers
as it handles various paper formats well, provides layouts for many common
window envelope types (e.g. German, US, French, Japanese) and lets you define
your own layouts.  The package comes with a default letter layout based on DIN
5008B'.")
    (license license:gpl3)))

(define-public r-kokudosuuchi
  (package
    (name "r-kokudosuuchi")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kokudosuuchi" version))
              (sha256
               (base32
                "0h4r7bd9989pahx34lc2i5h1f8nipir941l7sahhgz28lskfkc3h"))))
    (properties `((upstream-name . "kokudosuuchi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-sf r-rlang r-glue))
    (home-page "https://yutannihilation.github.io/kokudosuuchi/")
    (synopsis "Utilities for 'Kokudo Suuchi'")
    (description
     "This package provides utilities for Kokudo Suuchi', the GIS data service of the
Japanese government.  See <https://nlftp.mlit.go.jp/index.html> for more
information.")
    (license license:expat)))

(define-public r-kogmwu
  (package
    (name "r-kogmwu")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KOGMWU" version))
              (sha256
               (base32
                "1vz0099gp1r10n7w4p480l8rswdw100sns196d9xin2ibmmd2fx9"))))
    (properties `((upstream-name . "KOGMWU")))
    (build-system r-build-system)
    (propagated-inputs (list r-pheatmap))
    (home-page "https://cran.r-project.org/package=KOGMWU")
    (synopsis "Functional Summary and Meta-Analysis of Gene Expression Data")
    (description
     "Rank-based tests for enrichment of KOG (euKaryotic Orthologous Groups) classes
with up- or down-regulated genes based on a continuous measure.  The
meta-analysis is based on correlation of KOG delta-ranks across datasets
(delta-rank is the difference between mean rank of genes belonging to a KOG
class and mean rank of all other genes).  With binary measure (1 or 0 to
indicate significant and non-significant genes), one-tailed Fisher's exact test
for over-representation of each KOG class among significant genes will be
performed.")
    (license license:gpl3)))

(define-public r-kofnga
  (package
    (name "r-kofnga")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kofnGA" version))
              (sha256
               (base32
                "0w0881ydnqdah04sifi25ypzxdwnsiqxfq1xam4yhr670bdak1vm"))))
    (properties `((upstream-name . "kofnGA")))
    (build-system r-build-system)
    (propagated-inputs (list r-bigmemory))
    (home-page "https://cran.r-project.org/package=kofnGA")
    (synopsis "Genetic Algorithm for Fixed-Size Subset Selection")
    (description
     "This package provides a function that uses a genetic algorithm to search for a
subset of size k from the integers 1:n, such that a user-supplied objective
function is minimized at that subset.  The selection step is done by tournament
selection based on ranks, and elitism may be used to retain a portion of the
best solutions from one generation to the next.  Population objective function
values may optionally be evaluated in parallel.")
    (license license:gpl2)))

(define-public r-kofdata
  (package
    (name "r-kofdata")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kofdata" version))
              (sha256
               (base32
                "1gxw85pliyw2sc4d5108z5097x95gcxdsphc028lj4bh5y24fmzz"))))
    (properties `((upstream-name . "kofdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-jsonlite r-httr))
    (home-page "https://github.com/KOF-ch/kofdata")
    (synopsis "Get Data from the 'KOF Datenservice' API")
    (description
     "Read Swiss time series data from the KOF Data API,
<https://datenservice.kof.ethz.ch>.  The API provides macro economic time series
data mostly about Switzerland.  The package itself is a set of wrappers around
the KOF Datenservice API. The kofdata package is able to consume public
information as well as data that requires an API token.")
    (license license:gpl2)))

(define-public r-koboconnectr
  (package
    (name "r-koboconnectr")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KoboconnectR" version))
              (sha256
               (base32
                "0mb539y80apxzzvfpgq4yj8vcjqnamkszn37p8bibr1yvfzdzy1j"))))
    (properties `((upstream-name . "KoboconnectR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-readxl
                             r-r6
                             r-purrr
                             r-openssl
                             r-mime
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/asitav-sen/KoboconnectR")
    (synopsis "Download Data from Kobotoolbox to R")
    (description
     "Wrapper for Kobotoolbox APIs ver 2 mentioned at
<https://support.kobotoolbox.org/api.html>, to download data from Kobotoolbox to
R. Small and simple package that adds immense convenience for the data
professionals using Kobotoolbox'.")
    (license license:gpl3+)))

(define-public r-kntnr
  (package
    (name "r-kntnr")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kntnr" version))
              (sha256
               (base32
                "1af5qhj82dixf1qcbz3sfj52pzgy8gnafzifwxnhrp7vpn4rnv6m"))))
    (properties `((upstream-name . "kntnr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rstudioapi
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-base64enc))
    (home-page "https://yutannihilation.github.io/kntnr/")
    (synopsis "R Client for 'kintone' API")
    (description
     "Retrieve data from kintone (<https://www.kintone.com/>) via its API. kintone is
an enterprise application platform.")
    (license license:expat)))

(define-public r-knowbr
  (package
    (name "r-knowbr")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KnowBR" version))
              (sha256
               (base32
                "0r4df95axsrsr72ksy3sdc37sjjd6fvcpj5si7jag7q7ffs8kzmw"))))
    (properties `((upstream-name . "KnowBR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-sp r-plotrix r-mgcv r-fossil))
    (home-page "https://cran.r-project.org/package=KnowBR")
    (synopsis
     "Discriminating Well Surveyed Spatial Units from Exhaustive Biodiversity Databases")
    (description
     "It uses species accumulation curves and diverse estimators to assess, at the
same time, the levels of survey coverage in multiple geographic cells of a size
defined by the user or polygons.  It also enables the geographical depiction of
observed species richness, survey effort and completeness values including a
background with administrative areas.")
    (license license:gpl2+)))

(define-public r-knotr
  (package
    (name "r-knotr")
    (version "1.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knotR" version))
              (sha256
               (base32
                "0kd1b9wibpwyaanz9ny61qgfvcg4d3rzpy05sfshlpp0b1y8d3xj"))))
    (properties `((upstream-name . "knotR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=knotR")
    (synopsis "Knot Diagrams using Bezier Curves")
    (description
     "Makes nice pictures of knots using Bezier curves and numerical optimization.")
    (license license:gpl2)))

(define-public r-knockofftrio
  (package
    (name "r-knockofftrio")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KnockoffTrio" version))
              (sha256
               (base32
                "1xm7hx6c8w305wk4qc6w3awc6pykn7b5v5lakpv9rkikn4c7rkrf"))))
    (properties `((upstream-name . "KnockoffTrio")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KnockoffTrio")
    (synopsis "Trio Data Analysis with Knockoff Statistics for FDR Control")
    (description
     "Identification of putative causal variants in genome-wide association studies
with the trio design.  The package implements the methods in the paper: Yang,
Y., Wang, C., Liu, L., Buxbaum, J., He, Z., & Ionita-Laza, I. (2022).
KnockoffTrio: A knockoff framework for the identification of putative causal
variants in genome-wide association studies with trio design.  The American
Journal of Human Genetics, 109(10), 1761-1776.")
    (license license:gpl3)))

(define-public r-knockoffscreen
  (package
    (name "r-knockoffscreen")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KnockoffScreen" version))
              (sha256
               (base32
                "01r04d9ha9l5pkz3lwdcb5x5qqwk8vil9avnbnfn76wg63mdfhbk"))))
    (properties `((upstream-name . "KnockoffScreen")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatest
                             r-seqminer
                             r-matrix
                             r-irlba
                             r-data-table
                             r-compquadform
                             r-bigmemory))
    (home-page "https://cran.r-project.org/package=KnockoffScreen")
    (synopsis "Whole-Genome Sequencing Data Analysis via Knockoff Statistics")
    (description
     "This package provides functions for identification of putative causal loci in
whole-genome sequencing data.  The functions allow genome-wide association scan.
 It also includes an efficient knockoff generator for genetic data.")
    (license license:gpl3)))

(define-public r-knockoff
  (package
    (name "r-knockoff")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knockoff" version))
              (sha256
               (base32
                "1fj6n39i8wfkc16pmkl8jli81nny8sjjfdgklys4mbcavcmlrv5g"))))
    (properties `((upstream-name . "knockoff")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra
                             r-rdsdp
                             r-matrix
                             r-gtools
                             r-glmnet
                             r-corpcor))
    (native-inputs (list r-knitr))
    (home-page "https://web.stanford.edu/group/candes/knockoffs/index.html")
    (synopsis "The Knockoff Filter for Controlled Variable Selection")
    (description
     "The knockoff filter is a general procedure for controlling the false discovery
rate (FDR) when performing variable selection.  For more information, see the
website below and the accompanying paper: Candes et al., \"Panning for gold:
model-X knockoffs for high-dimensional controlled variable selection\", J. R.
Statist.  Soc.  B (2018) 80, 3, pp.  551-577.")
    (license license:gpl3)))

(define-public r-knnwtsim
  (package
    (name "r-knnwtsim")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knnwtsim" version))
              (sha256
               (base32
                "1sxz1hzbx41z3w1qf2zf8fmf3pd64jrnc37ndxx28yc70vhwjd1n"))))
    (properties `((upstream-name . "knnwtsim")))
    (build-system r-build-system)
    (home-page "https://github.com/mtrupiano1/knnwtsim")
    (synopsis
     "K Nearest Neighbor Forecasting with a Tailored Similarity Metric")
    (description
     "This package provides functions to implement K Nearest Neighbor forecasting
using a weighted similarity metric tailored to the problem of forecasting
univariate time series where recent observations, seasonal patterns, and
exogenous predictors are all relevant in predicting future observations of the
series in question.  For more information on the formulation of this similarity
metric please see Trupiano (2021) <arXiv:2112.06266>.")
    (license license:gpl3+)))

(define-public r-knnvs
  (package
    (name "r-knnvs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kNNvs" version))
              (sha256
               (base32
                "1zbfk8fanwmzn0ryhyxmq7npl1pysgnhs4chpfi1kxlnlbgfxfl1"))))
    (properties `((upstream-name . "kNNvs")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kNNvs")
    (synopsis "k Nearest Neighbors with Grid Search Variable Selection")
    (description
     "k Nearest Neighbors with variable selection, combine grid search and forward
selection to achieve variable selection in order to improve k Nearest Neighbors
predictive performance.")
    (license license:gpl3)))

(define-public r-knnshiny
  (package
    (name "r-knnshiny")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KNNShiny" version))
              (sha256
               (base32
                "16zm8bhdivaap3mvhdx2qn1b1j2iqyarclb0y2qd1n4viwcfm9c1"))))
    (properties `((upstream-name . "KNNShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-rhandsontable
                             r-psycho
                             r-fnn
                             r-e1071
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=KNNShiny")
    (synopsis "Interactive Document for Working with KNN Analysis")
    (description
     "An interactive document on the topic of K-nearest neighbour (KNN) using
rmarkdown and shiny packages.  Runtime examples are provided in the package
function as well as at <https://kartikeyabolar.shinyapps.io/KNNShiny/>.")
    (license license:gpl2)))

(define-public r-knnp
  (package
    (name "r-knnp")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knnp" version))
              (sha256
               (base32
                "0qgq8la3zndlb1wwqv9b2kw52y9ns36pi4ds68pkm81bhzq5nqis"))))
    (properties `((upstream-name . "knnp")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-paralleldist r-forecast r-foreach
                             r-doparallel))
    (home-page "https://github.com/Grasia/knnp")
    (synopsis
     "Time Series Prediction using K-Nearest Neighbors Algorithm (Parallel)")
    (description
     "Two main functionalities are provided.  One of them is predicting values with
k-nearest neighbors algorithm and the other is optimizing the parameters k and d
of the algorithm.  These are carried out in parallel using multiple threads.")
    (license license:agpl3)))

(define-public r-knitrprogressbar
  (package
    (name "r-knitrprogressbar")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knitrProgressBar" version))
              (sha256
               (base32
                "18v5jrscfrin3mcs63bpj0q1drxk3zkhlbw93sqh0qrq04d4x02v"))))
    (properties `((upstream-name . "knitrProgressBar")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-r-oo))
    (native-inputs (list r-knitr))
    (home-page "https://rmflight.github.io/knitrProgressBar")
    (synopsis "Provides Progress Bars in 'knitr'")
    (description
     "This package provides a progress bar similar to dplyr that can write progress
out to a variety of locations, including stdout(), stderr(), or from file().
Useful when using knitr or rmarkdown', and you still want to see progress of
calculations in the terminal.")
    (license license:expat)))

(define-public r-knitrdata
  (package
    (name "r-knitrdata")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knitrdata" version))
              (sha256
               (base32
                "1am79r4rkrw7vjmyzc0cq4p52l2ypdw99rfhrvdsaq11yllx08mx"))))
    (properties `((upstream-name . "knitrdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xfun r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dmkaplan2000/knitrdata")
    (synopsis "Data Language Engine for 'knitr' / 'rmarkdown'")
    (description
     "This package implements a data language engine for incorporating data directly
in rmarkdown documents so that they can be made completely standalone.")
    (license license:gpl3)))

(define-public r-knitlatex
  (package
    (name "r-knitlatex")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knitLatex" version))
              (sha256
               (base32
                "1igacc2sx8897wmnhh8kngd0fq6zqbi30chy5c8jw60zc38mi3wi"))))
    (properties `((upstream-name . "knitLatex")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=knitLatex")
    (synopsis "'Knitr' Helpers - Mostly Tables")
    (description
     "This package provides several helper functions for working with knitr and
LaTeX'.  It includes xTab for creating traditional LaTeX tables, lTab for
generating longtable environments, and sTab for generating a supertabular
environment.  Additionally, this package contains a knitr_setup() function which
fixes a well-known bug in knitr', which distorts the results=\"asis\" command when
used in conjunction with user-defined commands; and a com command
(<<com=TRUE>>=) which renders the output from knitr as a LaTeX command.")
    (license license:gpl3)))

(define-public r-knitcitations
  (package
    (name "r-knitcitations")
    (version "1.0.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "knitcitations" version))
              (sha256
               (base32
                "1c7pl8jh61pv0brqanmyfy6s0ipxn312b2hjypcsjaph6b8mhj2q"))))
    (properties `((upstream-name . "knitcitations")))
    (build-system r-build-system)
    (propagated-inputs (list r-refmanager r-httr r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cboettig/knitcitations")
    (synopsis "Citations for 'Knitr' Markdown Files")
    (description
     "This package provides the ability to create dynamic citations in which the
bibliographic information is pulled from the web rather than having to be
entered into a local database such as bibtex ahead of time.  The package is
primarily aimed at authoring in the R markdown format, and can provide outputs
for web-based authoring such as linked text for inline citations.  Cite using a
DOI', URL, or bibtex file key.  See the package URL for details.")
    (license license:expat)))

(define-public r-kneearrower
  (package
    (name "r-kneearrower")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KneeArrower" version))
              (sha256
               (base32
                "1blmim4l7375psa9c3wbpksywj5nfbawly4001n6311wcv4dybl5"))))
    (properties `((upstream-name . "KneeArrower")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=KneeArrower")
    (synopsis "Finds Cutoff Points on Knee Curves")
    (description
     "Given a set of points around a knee curve, analyzes first and second derivatives
to find knee points.")
    (license license:gpl3)))

(define-public r-knapsacksampling
  (package
    (name "r-knapsacksampling")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KnapsackSampling" version))
              (sha256
               (base32
                "17yzmd11k1n5iy54vbcvpzvkm8ypbl6n1kfi931wwrrcq9y7hg22"))))
    (properties `((upstream-name . "KnapsackSampling")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://github.com/chinsoon12/KnapsackSampling")
    (synopsis "Generate Feasible Samples of a Knapsack Problem")
    (description
     "The sampl.mcmc() function creates samples of the feasible region of a knapsack
problem with both equalities and inequalities constraints.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-kmunicate
  (package
    (name "r-kmunicate")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KMunicate" version))
              (sha256
               (base32
                "13lkblm4kn8m4fr6cms8jz1ankxkynics04ajzfrxf6rd6b1xhc8"))))
    (properties `((upstream-name . "KMunicate")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-pammtools
                             r-ggplot2
                             r-cowplot
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://ellessenne.github.io/KMunicate-package/")
    (synopsis "KMunicate-Style Kaplan??????Meier Plots")
    (description
     "Produce Kaplan??????Meier plots in the style recommended following the KMunicate
study by Morris et al. (2019) <doi:10.1136/bmjopen-2019-030215>.  The KMunicate
style consists of Kaplan-Meier curves with confidence intervals to quantify
uncertainty and an extended risk table (per treatment arm) depicting the number
of study subjects at risk, events, and censored observations over time.  The
resulting plots are built using ggplot2 and can be further customised to a
certain extent, including themes, fonts, and colour scales.")
    (license license:expat)))

(define-public r-kmscv
  (package
    (name "r-kmscv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kmscv" version))
              (sha256
               (base32
                "053608dks4q8171wrm6izh4pf0glbq6zpw30i9yq36f5azgy59sk"))))
    (properties `((upstream-name . "kmscv")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rsample r-purrr r-parsnip r-dplyr))
    (home-page "https://cran.r-project.org/package=kmscv")
    (synopsis "K-Means Based Stratified Resampling")
    (description
     "An rsample extension to create cluster based stratified resamples for
cross-validation.")
    (license license:gpl3+)))

(define-public r-kmodr
  (package
    (name "r-kmodr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kmodR" version))
              (sha256
               (base32
                "1khp383k5rr7nnn1fih7wfw6k202igxcj3ddwawyp895qa9w12cj"))))
    (properties `((upstream-name . "kmodR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kmodR")
    (synopsis "K-Means with Simultaneous Outlier Detection")
    (description
     "An implementation of the k-means-- algorithm proposed by Chawla and Gionis, 2013
in their paper, \"k-means-- : A unified approach to clustering and outlier
detection.  SIAM International Conference on Data Mining (SDM13)\",
<doi:10.1137/1.9781611972832.21> and using ordering described by Howe, 2013 in
the thesis, Clustering and anomaly detection in tropical cyclones\".  Useful for
creating (potentially) tighter clusters than standard k-means and simultaneously
finding outliers inexpensively in multidimensional space.")
    (license license:gpl3)))

(define-public r-kml3d
  (package
    (name "r-kml3d")
    (version "2.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kml3d" version))
              (sha256
               (base32
                "1a3hqyhrsh12l1j1xlz4zy88impw3biz6w2qc80r11m549h0m6s9"))))
    (properties `((upstream-name . "kml3d")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-misc3d r-longitudinaldata r-kml r-clv))
    (home-page "http:www.r-project.org")
    (synopsis "K-Means for Joint Longitudinal Data")
    (description
     "An implementation of k-means specifically design to cluster joint trajectories
(longitudinal data on several variable-trajectories).  Like kml', it provides
facilities to deal with missing value, compute several quality criterion
(Calinski and Harabatz, Ray and Turie, Davies and Bouldin, BIC,...) and propose
a graphical interface for choosing the best number of clusters.  In addition,
the 3D graph representing the mean joint-trajectories of each cluster can be
exported through LaTeX in a 3D dynamic rotating PDF graph.")
    (license license:gpl2+)))

(define-public r-kml
  (package
    (name "r-kml")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kml" version))
              (sha256
               (base32
                "1my9gcripiqc6iphycjr3srj8qxy05yvd0648vblygrx2qym5hy2"))))
    (properties `((upstream-name . "kml")))
    (build-system r-build-system)
    (propagated-inputs (list r-longitudinaldata r-clv))
    (home-page "http:www.r-project.org")
    (synopsis "K-Means for Longitudinal Data")
    (description
     "An implementation of k-means specifically design to cluster longitudinal data.
It provides facilities to deal with missing value, compute several quality
criterion (Calinski and Harabatz, Ray and Turie, Davies and Bouldin, BIC, ...)
and propose a graphical interface for choosing the best number of clusters.")
    (license license:gpl2+)))

(define-public r-kmi
  (package
    (name "r-kmi")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kmi" version))
              (sha256
               (base32
                "1j6fyi004fl97l569sn05pb7bmc2jx5hi0blfd896qi309s9qkd8"))))
    (properties `((upstream-name . "kmi")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mitools))
    (home-page "https://github.com/aallignol/kmi")
    (synopsis
     "Kaplan-Meier Multiple Imputation for the Analysis of Cumulative Incidence Functions in the Competing Risks Setting")
    (description
     "This package performs a Kaplan-Meier multiple imputation to recover the missing
potential censoring information from competing risks events, so that standard
right-censored methods could be applied to the imputed data sets to perform
analyses of the cumulative incidence functions (Allignol and Beyersmann, 2010
<doi:10.1093/biostatistics/kxq018>).")
    (license license:gpl2+)))

(define-public r-kmedians
  (package
    (name "r-kmedians")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Kmedians" version))
              (sha256
               (base32
                "10akh0jbnk7hrgqp414p66ddlhs6rdgd1ifjx18wpnfn4c81xcnj"))))
    (properties `((upstream-name . "Kmedians")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-mvtnorm
                             r-gmedian
                             r-ggplot2
                             r-genieclust
                             r-foreach
                             r-doparallel
                             r-capushe))
    (home-page "https://cran.r-project.org/package=Kmedians")
    (synopsis "K-Medians")
    (description
     "Online, Semi-online, and Offline K-medians algorithms are given.  For both
methods, the algorithms can be initialized randomly or with the help of a robust
hierarchical clustering.  The number of clusters can be selected with the help
of a penalized criterion.  We provide functions to provide robust clustering.
Function gen_K() enables to generate a sample of data following a contaminated
Gaussian mixture.  Functions Kmedians() and Kmeans() consists in a K-median and
a K-means algorithms while Kplot() enables to produce graph for both methods.
Cardot, H., Cenac, P. and Zitt, P-A. (2013). \"Efficient and fast estimation of
the geometric median in Hilbert spaces with an averaged stochastic gradient
algorithm\".  Bernoulli, 19, 18-43. <doi:10.3150/11-BEJ390>.  Cardot, H. and
Godichon-Baggioni, A. (2017). \"Fast Estimation of the Median Covariation Matrix
with Application to Online Robust Principal Components Analysis\".  Test, 26(3),
461-480 <doi:10.1007/s11749-016-0519-x>.  Godichon-Baggioni, A. and Surendran,
S. \"A penalized criterion for selecting the number of clusters for K-medians\"
<arXiv:2209.03597> Vardi, Y. and Zhang, C.-H. (2000). \"The multivariate
L1-median and associated data depth\".  Proc.  Natl.  Acad.  Sci.  USA,
97(4):1423-1426. <doi:10.1073/pnas.97.4.1423>.")
    (license license:gpl2+)))

(define-public r-kmed
  (package
    (name "r-kmed")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kmed" version))
              (sha256
               (base32
                "1pamwl28g6gc84x7sw9czqj8dpraq5pd3hdrf5m3yziwzkfxawnc"))))
    (properties `((upstream-name . "kmed")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kmed")
    (synopsis "Distance-Based k-Medoids")
    (description
     "Algorithms of distance-based k-medoids clustering: simple and fast k-medoids,
ranked k-medoids, and increasing number of clusters in k-medoids.  Calculate
distances for mixed variable data such as Gower, Podani, Wishart, Huang,
Harikumar-PV, and Ahmad-Dey.  Cluster validation applies internal and relative
criteria.  The internal criteria includes silhouette index and shadow values.
The relative criterium applies bootstrap procedure producing a heatmap with a
flexible reordering matrix algorithm such as complete, ward, or average
linkages.  The cluster result can be plotted in a marked barplot or pca biplot.")
    (license license:gpl3)))

(define-public r-kmd
  (package
    (name "r-kmd")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KMD" version))
              (sha256
               (base32
                "0sgcfh5b4dl1gy3dxsdsqgmyfrd6kqrzvxv9g4slskwyrjsirsp5"))))
    (properties `((upstream-name . "KMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann
                             r-proxy
                             r-mlpack
                             r-igraph
                             r-data-table
                             r-boot))
    (home-page "https://cran.r-project.org/package=KMD")
    (synopsis "Kernel Measure of Multi-Sample Dissimilarity")
    (description
     "Implementations of the kernel measure of multi-sample dissimilarity (KMD)
between several samples using K-nearest neighbor graphs and minimum spanning
trees.  The KMD measures the dissimilarity between multiple samples, based on
the observations from them.  It converges to the population quantity (depending
on the kernel) which is between 0 and 1.  A small value indicates the multiple
samples are from the same distribution, and a large value indicates the
corresponding distributions are different.  The population quantity is 0 if and
only if all distributions are the same, and 1 if and only if all distributions
are mutually singular.  The package also implements the tests based on KMD for
H0: the M distributions are equal against H1: not all the distributions are
equal.  Both permutation test and asymptotic test are available.  These tests
are consistent against all alternatives where at least two samples have
different distributions.  For more details on KMD and the associated tests, see
Huang, Z. and B. Sen (2022) <arXiv:2210.00634>.")
    (license license:gpl3)))

(define-public r-kmc
  (package
    (name "r-kmc")
    (version "0.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kmc" version))
              (sha256
               (base32
                "0rnrwqsmxcmf4sjd9p2xz7w12lv58wmy2p349s0x4b34b5arf75d"))))
    (properties `((upstream-name . "kmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-rcpp r-emplik))
    (home-page "https://github.com/yfyang86/kmc/")
    (synopsis
     "Kaplan-Meier Estimator with Constraints for Right Censored Data -- a Recursive Computational Algorithm")
    (description
     "Given constraints for right censored data, we use a recursive computational
algorithm to calculate the the \"constrained\" Kaplan-Meier estimator.  The
constraint is assumed given in linear estimating equations or mean functions.
We also illustrate how this leads to the empirical likelihood ratio test with
right censored data and accelerated failure time model with given coefficients.
EM algorithm from emplik package is used to get the initial value.  The
properties and performance of the EM algorithm is discussed in Mai Zhou and
Yifan Yang (2015)<doi: 10.1007/s00180-015-0567-9> and Mai Zhou and Yifan Yang
(2017) <doi: 10.1002/wics.1400>.  More applications could be found in Mai Zhou
(2015) <doi: 10.1201/b18598>.")
    (license license:lgpl3)))

(define-public r-klustr
  (package
    (name "r-klustr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klustR" version))
              (sha256
               (base32
                "1g2q6h3cbm8v3gqz0f6v8bl5na9972k38d94czjfxmx4cv7wfgx8"))))
    (properties `((upstream-name . "klustR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmlwidgets))
    (home-page "https://mckaymdavis.github.io/klustR/")
    (synopsis "D3 Dynamic Cluster Visualizations")
    (description
     "Used to create dynamic, interactive D3.js based parallel coordinates and
principal component plots in R'.  The plots make visualizing k-means or other
clusters simple and informative.")
    (license license:gpl3+)))

(define-public r-klsh
  (package
    (name "r-klsh")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klsh" version))
              (sha256
               (base32
                "1r354fd5da6mp7v3048ii09hnghhfwdg6pvmx2ib0cr88ql431sy"))))
    (properties `((upstream-name . "klsh")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-snowballc r-rcpp r-plyr r-blink))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=klsh")
    (synopsis "Blocking for Record Linkage")
    (description
     "An implementation of the blocking algorithm KLSH in Steorts, Ventura, Sadinle,
Fienberg (2014) <DOI:10.1007/978-3-319-11257-2_20>, which is a k-means variant
of locality sensitive hashing.  The method is illustrated with examples and a
vignette.")
    (license license:gpl3)))

(define-public r-klic
  (package
    (name "r-klic")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klic" version))
              (sha256
               (base32
                "1ggsdq8xcg6hi12rq356myhngx3j475gpwlvpynm1581r4z0lkbk"))))
    (properties `((upstream-name . "klic")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-pheatmap r-matrix r-coca
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/acabassi/klic")
    (synopsis "Kernel Learning Integrative Clustering")
    (description
     "Kernel Learning Integrative Clustering (KLIC) is an algorithm that allows to
combine multiple kernels, each representing a different measure of the
similarity between a set of observations.  The contribution of each kernel on
the final clustering is weighted according to the amount of information carried
by it.  As well as providing the functions required to perform the kernel-based
clustering, this package also allows the user to simply give the data as input:
the kernels are then built using consensus clustering.  Different strategies to
choose the best number of clusters are also available.  For further details
please see Cabassi and Kirk (2020) <doi:10.1093/bioinformatics/btaa593>.")
    (license license:expat)))

(define-public r-klexp
  (package
    (name "r-klexp")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KLexp" version))
              (sha256
               (base32
                "1knnqzzywh6zcj60133a5bfzqqxmf86gn4m1kggm7gzv1k9mx90b"))))
    (properties `((upstream-name . "KLexp")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet))
    (home-page "https://github.com/Zongrui-Dai/Kernel-lasso-feature-expansion")
    (synopsis "Kernel_lasso Expansion")
    (description
     "This package provides the function to calculate the kernel-lasso expansion,
Z-score, and max-min-scale standardization.It can increase the dimension of
existed dataset and remove abundant features by lasso.  Z Dai, L Jiayi, T Gong,
C Wang (2021) <doi:10.1088/1742-6596/1955/1/012047>.")
    (license license:gpl2)))

(define-public r-klexdatr
  (package
    (name "r-klexdatr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klexdatr" version))
              (sha256
               (base32
                "141xs03sb0ixhjpr388fwf5h124mqkbj0k1xqw0whdhrm5051qsz"))))
    (properties `((upstream-name . "klexdatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf))
    (home-page "https://github.com/poissonconsulting/klexdatr")
    (synopsis "Kootenay Lake Exploitation Study Data")
    (description
     "Six relational tibbles from the Kootenay Lake Large Trout Exploitation study.
The study which ran from 2008 to 2014 caught, tagged and released large Rainbow
Trout and Bull Trout in Kootenay Lake by boat angling.  The fish were tagged
with internal acoustic tags and/or high reward external tags and subsequently
detected by an acoustic receiver array as well as reported by anglers.  The data
are analysed by Thorley and Andrusak (1994) <doi:10.7717/peerj.2874> to estimate
the natural and fishing mortality of both species.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-kldtools
  (package
    (name "r-kldtools")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kldtools" version))
              (sha256
               (base32
                "1r6j6ddylzxsfmymnf8hp7sm8c2ckr8xrdz75xlkgp4fgay106r2"))))
    (properties `((upstream-name . "kldtools")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kldtools")
    (synopsis
     "Kullback-Leibler Divergence and Other Tools to Analyze Frequencies")
    (description
     "Most importantly, calculates Kullback-Leibler Divergence (KLD), Turing's
perspective estimator and their confidence intervals.")
    (license license:gpl2+)))

(define-public r-klausur
  (package
    (name "r-klausur")
    (version "0.12-14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klausuR" version))
              (sha256
               (base32
                "1nc84q5jaya4d7bi1m8zwbmyfsxzmv470nq2nj2j8xn5jv6ch4a5"))))
    (properties `((upstream-name . "klausuR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-psych))
    (home-page "https://reaktanz.de/?c=hacking&s=klausuR")
    (synopsis "Multiple Choice Test Evaluation")
    (description
     "This package provides a set of functions designed to quickly generate results of
a multiple choice test.  Generates detailed global results, lists for anonymous
feedback and personalised result feedback (in LaTeX and/or PDF format), as well
as item statistics like Cronbach's alpha or disciminatory power.  klausuR also
includes a plugin for the R GUI and IDE RKWard, providing graphical dialogs for
its basic features.  The respective R package rkward cannot be installed
directly from a repository, as it is a part of RKWard.  To make full use of this
feature, please install RKWard from <https://rkward.kde.org> (plugins are
detected automatically).  Due to some restrictions on CRAN, the full package
sources are only available from the project homepage.")
    (license license:gpl3+)))

(define-public r-klassr
  (package
    (name "r-klassr")
    (version "0.1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klassR" version))
              (sha256
               (base32
                "1ashnwiqjil8rbx2i8aqgrxjdn2iajfc8kwzrgc67yhj0l2rjm79"))))
    (properties `((upstream-name . "klassR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=klassR")
    (synopsis "Classifications and Codelists for Statistics Norway")
    (description
     "This package provides functions to search, retrieve and apply classifications
and codelists using Statistics Norway's API <https://www.ssb.no/klass> from the
system KLASS'.  Retrieves classifications by date with options to choose
language, hierarchical level and formatting.")
    (license license:asl2.0)))

(define-public r-klar
  (package
    (name "r-klar")
    (version "1.7-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "klaR" version))
              (sha256
               (base32
                "098x2zmy8jd0mxjgy5cxls0jig2rhgkwzkqfcqww8ar03bxvlm03"))))
    (properties `((upstream-name . "klaR")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-questionr r-mass r-combinat))
    (home-page "https://www.statistik.tu-dortmund.de")
    (synopsis "Classification and Visualization")
    (description
     "Miscellaneous functions for classification and visualization, e.g. regularized
discriminant analysis, sknn() kernel-density naive Bayes, an interface to
svmlight and stepclass() wrapper variable selection for supervised
classification, partimat() visualization of classification rules and
shardsplot() of cluster results as well as kmodes() clustering for categorical
data, corclust() variable clustering, variable extraction from different
variable clustering models and weight of evidence preprocessing.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-kko
  (package
    (name "r-kko")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kko" version))
              (sha256
               (base32
                "08mgi7j1kirfnjsj3xi2wgr32cnqb88vxs15gfm6f1gq853xvhch"))))
    (properties `((upstream-name . "kko")))
    (build-system r-build-system)
    (propagated-inputs (list r-knockoff r-grpreg r-foreach r-extdist
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kko")
    (synopsis "Kernel Knockoffs Selection for Nonparametric Additive Models")
    (description
     "This package provides a variable selection procedure, dubbed KKO, for
nonparametric additive model with finite-sample false discovery rate control
guarantee.  The method integrates three key components: knockoffs, subsampling
for stability, and random feature mapping for nonparametric function
approximation.  For more information, see the accompanying paper: Dai, X., Lyu,
X., & Li, L. (2021).  ??????Kernel Knockoffs Selection for Nonparametric Additive
Models??????.  arXiv preprint <arXiv:2105.11659>.")
    (license license:gpl2+)))

(define-public r-kiwisr
  (package
    (name "r-kiwisr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kiwisR" version))
              (sha256
               (base32
                "14fzf72swy221jcbiplss9dh7g03idrpbbyvbxp4bcqpxwr6hbsa"))))
    (properties `((upstream-name . "kiwisR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-purrr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/rywhale/kiwisR")
    (synopsis
     "Wrapper for Querying KISTERS 'WISKI' Databases via the 'KiWIS' API")
    (description
     "This package provides a wrapper for querying WISKI databases via the KiWIS REST
API. WISKI is an SQL relational database used for the collection and storage of
water data developed by KISTERS and KiWIS is a REST service that provides access
to WISKI databases via HTTP requests
(<https://water.kisters.de/en/technology-trends/kisters-and-open-data/>).
Contains a list of default databases (called hubs') and also allows users to
provide their own KiWIS URL. Supports the entire query process- from metadata to
specific time series values.  All data is returned as tidy tibbles.")
    (license license:expat)))

(define-public r-kitagawa
  (package
    (name "r-kitagawa")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kitagawa" version))
              (sha256
               (base32
                "190xi88zc3vybpyawayh8m78sgcn951n3axmc2fc67sic458r02s"))))
    (properties `((upstream-name . "kitagawa")))
    (build-system r-build-system)
    (propagated-inputs (list r-psd r-kelvin r-bessel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/abarbour/kitagawa")
    (synopsis
     "Spectral Response of Water Wells to Harmonic Strain and Pressure Signals")
    (description
     "This package provides tools to calculate the theoretical hydrodynamic response
of an aquifer undergoing harmonic straining or pressurization, or analyze
measured responses.  There are two classes of models here, designed for use with
confined aquifers: (1) for sealed wells, based on the model of Kitagawa et al
(2011, <doi:10.1029/2010JB007794>), and (2) for open wells, based on the models
of Cooper et al (1965, <doi:10.1029/JZ070i016p03915>), Hsieh et al (1987,
<doi:10.1029/WR023i010p01824>), Rojstaczer (1988,
<doi:10.1029/JB093iB11p13619>), Liu et al (1989, <doi:10.1029/JB094iB07p09453>),
and Wang et al (2018, <doi:10.1029/2018WR022793>).  Wang's solution is a special
exception which allows for leakage out of the aquifer (semi-confined); it is
equivalent to Hsieh's model when there is no leakage (the confined case).  These
models treat strain (or aquifer head) as an input to the physical system, and
fluid-pressure (or water height) as the output.  The applicable frequency band
of these models is characteristic of seismic waves, atmospheric pressure
fluctuations, and solid earth tides.")
    (license license:gpl2+)))

(define-public r-kit
  (package
    (name "r-kit")
    (version "0.0.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kit" version))
              (sha256
               (base32
                "0kj7x8wlwpdpdwxv5ngflzw4xqfyc2n7vx6d2ssz7k47qcm57rdb"))))
    (properties `((upstream-name . "kit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kit")
    (synopsis "Data Manipulation Functions Implemented in C")
    (description
     "Basic functions, implemented in C, for large data manipulation.  Fast vectorised
ifelse()/nested if()/switch() functions, psum()/pprod() functions equivalent to
pmin()/pmax() plus others which are missing from base R. Most of these functions
are callable at C level.")
    (license license:gpl3)))

(define-public r-kissmig
  (package
    (name "r-kissmig")
    (version "1.0-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kissmig" version))
              (sha256
               (base32
                "0qm9psbi42xv69y2095j6nk51w15x6gl71qjhmfk9jq0r9llfbax"))))
    (properties `((upstream-name . "kissmig")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-raster))
    (home-page "https://purl.oclc.org/wsl/kissmig")
    (synopsis "a Keep It Simple Species Migration Model")
    (description
     "Simulating species migration and range dynamics under stable or changing
environmental conditions based on a simple, raster-based, stochastic migration
model.  Providing accessibility from an origin or previous distribution for
niche-based species distribution models.  Nobis & Normand (2014)
<doi:10.1111/ecog.00930>.")
    (license license:gpl3+)))

(define-public r-kirby21-t1
  (package
    (name "r-kirby21-t1")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kirby21.t1" version))
              (sha256
               (base32
                "0bv8rrk9jh02h3gill1g2w246j4zv98cjchz7i2c092lvqps8szs"))))
    (properties `((upstream-name . "kirby21.t1")))
    (build-system r-build-system)
    (propagated-inputs (list r-kirby21-base))
    (home-page "https://www.nitrc.org/projects/multimodal/")
    (synopsis
     "Example T1 Structural Data from the Multi-Modal MRI 'Reproducibility' Resource")
    (description
     "Structural T1 magnetic resonance imaging ('MRI') data from the Kirby21
reproducibility study <doi:10.1016/j.neuroimage.2010.11.047>.")
    (license license:gpl2)))

(define-public r-kirby21-fmri
  (package
    (name "r-kirby21-fmri")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kirby21.fmri" version))
              (sha256
               (base32
                "1z2l6bn53mwkll9ki4169lqlz6wcfp29xzdrqyw606j2xrs4wc22"))))
    (properties `((upstream-name . "kirby21.fmri")))
    (build-system r-build-system)
    (propagated-inputs (list r-kirby21-base))
    (home-page "https://www.nitrc.org/projects/multimodal/")
    (synopsis
     "Example Functional Imaging Data from the Multi-Modal MRI 'Reproducibility' Resource")
    (description
     "Functional magnetic resonance imaging ('fMRI') data from the Kirby21
reproducibility study <doi:10.1016/j.neuroimage.2010.11.047>.")
    (license license:gpl2)))

(define-public r-kirby21-base
  (package
    (name "r-kirby21-base")
    (version "1.7.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kirby21.base" version))
              (sha256
               (base32
                "1ymhldippxybj6lkh7ibpix68285rdsyw28krjndyzvx39jl78gj"))))
    (properties `((upstream-name . "kirby21.base")))
    (build-system r-build-system)
    (propagated-inputs (list r-git2r))
    (home-page "https://www.nitrc.org/projects/multimodal/")
    (synopsis
     "Example Data from the Multi-Modal MRI 'Reproducibility' Resource")
    (description
     "Multi-modal magnetic resonance imaging ('MRI') data from the Kirby21
reproducibility study <https://www.nitrc.org/projects/multimodal/>, including
functional and structural imaging.")
    (license license:gpl2)))

(define-public r-kinship2
  (package
    (name "r-kinship2")
    (version "1.9.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kinship2" version))
              (sha256
               (base32
                "1xmvfg6y1a16vp4wy3cil1a10dpnq7rrjbpzys2ri8f2ficvsl01"))))
    (properties `((upstream-name . "kinship2")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-matrix r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kinship2")
    (synopsis "Pedigree Functions")
    (description
     "Routines to handle family data with a pedigree object.  The initial purpose was
to create correlation structures that describe family relationships such as
kinship and identity-by-descent, which can be used to model family data in mixed
effects models, such as in the coxme function.  Also includes a tool for
pedigree drawing which is focused on producing compact layouts without
intervention.  Recent additions include utilities to trim the pedigree object
with various criteria, and kinship for the X chromosome.")
    (license license:gpl2+)))

(define-public r-kingcountyhouses
  (package
    (name "r-kingcountyhouses")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KingCountyHouses" version))
              (sha256
               (base32
                "17l415v290lm99rsifpk6324mm1sk79ns4cvjkyh9ibj8n7l44c1"))))
    (properties `((upstream-name . "KingCountyHouses")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KingCountyHouses")
    (synopsis "Data on House Sales in King County WA")
    (description
     "Data on houses in and around Seattle WA are included.  Basic characteristics are
given along with sale prices.")
    (license license:expat)))

(define-public r-kinematics
  (package
    (name "r-kinematics")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kinematics" version))
              (sha256
               (base32
                "1mn09isszg53zxss4q29fiv3ci7y25xsx36cmipk93b7s6p30mhn"))))
    (properties `((upstream-name . "kinematics")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kinematics")
    (synopsis "Studying Sampled Trajectories")
    (description
     "Allows analyzing time series representing two-dimensional movements.  It accepts
a data frame with a time (t), horizontal (x) and vertical (y) coordinate as
columns, and returns several dynamical properties such as speed, acceleration or
curvature.")
    (license license:expat)))

(define-public r-kindisperse
  (package
    (name "r-kindisperse")
    (version "0.10.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kindisperse" version))
              (sha256
               (base32
                "0f2i2j1mwk6bwsc42xkkf18nyffp1983bbarwvscjj7saibhfpyj"))))
    (properties `((upstream-name . "kindisperse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tibble
                             r-stringr
                             r-shinythemes
                             r-shiny
                             r-rlang
                             r-readr
                             r-plotly
                             r-magrittr
                             r-laplacesdemon
                             r-here
                             r-ggrepel
                             r-ggplot2
                             r-fitdistrplus
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/moshejasper/kindisperse")
    (synopsis "Simulate and Estimate Close-Kin Dispersal Kernels")
    (description
     "This package provides functions for simulating and estimating kinship-related
dispersal.  Based on the methods described in M. Jasper, T.L. Schmidt., N.W.
Ahmad, S.P. Sinkins & A.A. Hoffmann (2019) <doi:10.1111/1755-0998.13043> \"A
genomic approach to inferring kinship reveals limited intergenerational
dispersal in the yellow fever mosquito\".  Assumes an additive variance model of
dispersal in two dimensions, compatible with Wright's neighbourhood area.
Simple and composite dispersal simulations are supplied, as well as the
functions needed to estimate parent-offspring dispersal for simulated or
empirical data, and to undertake sampling design for future field studies of
dispersal.  For ease of use an integrated Shiny app is also included.")
    (license license:expat)))

(define-public r-kin-cohort
  (package
    (name "r-kin-cohort")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kin.cohort" version))
              (sha256
               (base32
                "0wijsjz0piz5j9rm2nr3d5dfpiyba740mbfbkmfll9pz72s58wz8"))))
    (properties `((upstream-name . "kin.cohort")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=kin.cohort")
    (synopsis "Analysis of Kin-Cohort Studies")
    (description
     "Analysis of kin-cohort studies.  kin.cohort provides estimates of age-specific
cumulative risk of a disease for carriers and noncarriers of a mutation.  The
cohorts are retrospectively built from relatives of probands for whom the
genotype is known.  Currently the method of moments and marginal maximum
likelihood are implemented.  Confidence intervals are calculated from bootstrap
samples.  Most of the code is a translation from previous MATLAB code by N.
Chatterjee.")
    (license license:gpl2+)))

(define-public r-kimisc
  (package
    (name "r-kimisc")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kimisc" version))
              (sha256
               (base32
                "0nbjspbq9akhmamfdn192p5b6ki7xqhp422ih6v77xsnrhl5m24z"))))
    (properties `((upstream-name . "kimisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-pryr r-plyr r-memoise))
    (home-page "http://krlmlr.github.io/kimisc")
    (synopsis "Kirill's Miscellaneous Functions")
    (description
     "This package provides a collection of useful functions not found anywhere else,
mainly for programming: Pretty intervals, generalized lagged differences,
checking containment in an interval, and an alternative interface to assign().")
    (license license:gpl3)))

(define-public r-kimfilter
  (package
    (name "r-kimfilter")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kimfilter" version))
              (sha256
               (base32
                "1hlwid9irk6d1f4rywk5vknb02dp1qwm7cc54aicfyhf69fag1jh"))))
    (properties `((upstream-name . "kimfilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kimfilter")
    (synopsis "Kim Filter")
    (description
     "Rcpp implementation of the multivariate Kim filter, which combines the Kalman
and Hamilton filters for state probability inference.  The filter is designed
for state space models and can handle missing values and exogenous data in the
observation and state equations.  Kim, Chang-Jin and Charles R. Nelson (1999)
\"State-Space Models with Regime Switching: Classical and Gibbs-Sampling
Approaches with Applications\"
<doi:10.7551/mitpress/6444.001.0001><http://econ.korea.ac.kr/~cjkim/>.")
    (license license:gpl2+)))

(define-public r-kim
  (package
    (name "r-kim")
    (version "0.5.55")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kim" version))
              (sha256
               (base32
                "1ggkqc952436kp3kln0mqc4nxgh6vpkdbrxbz8q4jgv9jnd9vmk6"))))
    (properties `((upstream-name . "kim")))
    (build-system r-build-system)
    (propagated-inputs (list r-remotes r-data-table))
    (home-page "https://github.com/jinkim3/kim")
    (synopsis "Toolkit for Behavioral Scientists")
    (description
     "This package provides a collection of functions for analyzing data typically
collected or used by behavioral scientists.  Examples of the functions include a
function that compares groups in a factorial experimental design, a function
that conducts (robust) two-way analysis of variance (ANOVA), and a function that
cleans a data set generated by Qualtrics surveys.  Some of the functions will
require installing additional package(s).  Such packages and other references
are cited within the section describing the relevant functions.  Many functions
in this package rely heavily on these two popular R packages: Dowle et al.
(2021) <https://CRAN.R-project.org/package=data.table>.  Wickham et al. (2021)
<https://CRAN.R-project.org/package=ggplot2>.")
    (license license:gpl3)))

(define-public r-kidney-epi
  (package
    (name "r-kidney-epi")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kidney.epi" version))
              (sha256
               (base32
                "1hd6w7kxim5slmmqalf5sfjg8jcvhyzn5g4gf6h0lmaprsfszhja"))))
    (properties `((upstream-name . "kidney.epi")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://kidneyepidemiology.org/r/")
    (synopsis "Kidney Functions: Clinical and Epidemiological")
    (description
     "This package contains kidney care oriented functions.  Current version contains
functions for calculation of: - Kidney Donor Risk Index and Kidney Donor Profile
Index for kidney transplant donors by Rao et al. (2009)
<doi:10.1097/TP.0b013e3181ac620b>. - Estimated glomerular filtration rate by
CKD-EPI, MDRD and other equations.  Citation: Bikbov B. R open source
programming code for calculation of the Kidney Donor Profile Index and Kidney
Donor Risk Index.  Kidney Diseases (2018) 4:269??????272 <doi:10.1159/000492427>
(the only citation for the whole package).")
    (license license:lgpl2.0+)))

(define-public r-kibior
  (package
    (name "r-kibior")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kibior" version))
              (sha256
               (base32
                "1acrdlqbklhhd69i1gija8r3nsdgcnfvk5ngz7b2ndy2f58w5ynf"))))
    (properties `((upstream-name . "kibior")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rtracklayer
                             r-rsamtools
                             r-rio
                             r-r6
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-elastic
                             r-dplyr
                             r-data-table
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/regisoc/kibior")
    (synopsis "Simple Data Management and Sharing Tool")
    (description
     "An interface to store, retrieve, search, join and share datasets, based on
Elasticsearch (ES) API. As a decentralized, FAIR and collaborative search engine
and database effort, it proposes a simple push/pull/search mechanism only based
on ES, a tool which can be deployed on nearly any hardware.  It is a high-level
R-ES binding to ease data usage using elastic package (S. Chamberlain (2020))
<https://docs.ropensci.org/elastic/>, extends joins from dplyr package (H.
Wickham et al. (2020)) <https://dplyr.tidyverse.org/> and integrates specific
biological format importation with Bioconductor packages such as rtracklayer (M.
Lawrence and al. (2009) <doi:10.1093/bioinformatics/btp328>)
<http://bioconductor.org/packages/rtracklayer>, Biostrings (H. Pag????s and al.
(2020) <doi:10.18129/B9.bioc.Biostrings>)
<http://bioconductor.org/packages/Biostrings>, and Rsamtools (M. Morgan and al.
(2020) <doi:10.18129/B9.bioc.Rsamtools>)
<http://bioconductor.org/packages/Rsamtools>, but also a long list of more
common ones with rio (C-h.  Chan and al. (2018))
<https://cran.r-project.org/package=rio>.")
    (license license:gpl2)))

(define-public r-khroma
  (package
    (name "r-khroma")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "khroma" version))
              (sha256
               (base32
                "1bdwh6b1jbfygghf9vwar8x104np2z02yn6gg8zsddzc3jgc70dr"))))
    (properties `((upstream-name . "khroma")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://packages.tesselle.org/khroma/")
    (synopsis "Colour Schemes for Scientific Data Visualization")
    (description
     "Colour schemes ready for each type of data (qualitative, diverging or
sequential), with colours that are distinct for all people, including
colour-blind readers.  This package provides an implementation of Paul Tol
(2018) and Fabio Crameri (2018) <doi:10.5194/gmd-11-2541-2018> colour schemes
for use with graphics or ggplot2'.  It provides tools to simulate
colour-blindness and to test how well the colours of any palette are
identifiable.  Several scientific thematic schemes (geologic timescale, land
cover, FAO soils, etc.) are also implemented.")
    (license license:gpl3+)))

(define-public r-khq
  (package
    (name "r-khq")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KHQ" version))
              (sha256
               (base32
                "1vg0p3igbw81fbp2gli9msqbvymbn0qf3g3y0nb3q51d7wfax0qd"))))
    (properties `((upstream-name . "KHQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/augustobrusaca/KHQ")
    (synopsis
     "Methods for Calculating 'KHQ' Scores and 'KHQ5D' Utility Index Scores")
    (description
     "The King's Health Questionnaire (KHQ) is a disease-specific, self-administered
questionnaire designed specific to assess the impact of Urinary Incontinence
(UI) on Quality of Life.  The questionnaire was developed by Kelleher and
collaborators (1997) <doi:10.1111/j.1471-0528.1997.tb11006.x>.  It is a simple,
acceptable and reliable measure to use in the clinical setting and a research
tool that is useful in evaluating UI treatment outcomes.  The KHQ five
dimensions (KHQ5D) is a condition-specific preference-based measure developed by
Brazier and collaborators (2008) <doi:10.1177/0272989X07301820>.  Although not
as popular as the SF6D <doi:10.1016/S0895-4356(98)00103-6> and EQ-5D
<https://euroqol.org/>, the KHQ5D measures health-related quality of life
(HRQoL) specifically for UI, not general conditions like the others two
instruments mentioned.  The KHQ5D ca be used in the clinical and economic
evaluation of health care.  The subject self-rates their health in terms of five
dimensions: Role Limitation (RL), Physical Limitations (PL), Social Limitations
(SL), Emotions (E), and Sleep (S).  Frequently the states on these five
dimensions are converted to a single utility index using country specific value
sets, which can be used in the clinical and economic evaluation of health care
as well as in population health surveys.  This package provides methods to
calculate scores for each dimension of the KHQ; converts KHQ item scores to
KHQ5D scores; and also calculates the utility index of the KHQ5D.")
    (license license:expat)))

(define-public r-kgschart
  (package
    (name "r-kgschart")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kgschart" version))
              (sha256
               (base32
                "1gdsrmnv8z99cldvig7grlq8gsbv3wpx7zdamw85lz563n4ln94d"))))
    (properties `((upstream-name . "kgschart")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-png
                             r-nnet
                             r-matrixstats
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-deepnet
                             r-abind))
    (home-page "https://github.com/kota7/kgschart")
    (synopsis "KGS Rank Graph Parser")
    (description
     "Restore underlining numeric data from rating history graph of KGS (an online
platform of the game of go, <http://www.gokgs.com/>).  A shiny application is
also provided.")
    (license license:expat)))

(define-public r-kgrams
  (package
    (name "r-kgrams")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kgrams" version))
              (sha256
               (base32
                "0m1cw55lr0bl83p379wh3103d1rw9933lvf457kvxy56r1164l2h"))))
    (properties `((upstream-name . "kgrams")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rdpack r-rcppprogress r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://vgherard.github.io/kgrams/")
    (synopsis "Classical k-gram Language Models")
    (description
     "Tools for training and evaluating k-gram language models in R, supporting
several probability smoothing techniques, perplexity computations, random text
generation and more.")
    (license license:gpl3+)))

(define-public r-kgp
  (package
    (name "r-kgp")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kgp" version))
              (sha256
               (base32
                "021113hqs7ack852mksssaac1lj0k4mpf94yiws67qiygmsa693k"))))
    (properties `((upstream-name . "kgp")))
    (build-system r-build-system)
    (home-page "https://github.com/stephenturner/kgp")
    (synopsis "1000 Genomes Project Metadata")
    (description
     "Metadata about populations and data about samples from the 1000 Genomes Project,
including the 2,504 samples sequenced for the Phase 3 release and the expanded
collection of 3,202 samples with 602 additional trios.  The data is described in
Auton et al. (2015) <doi:10.1038/nature15393> and Byrska-Bishop et al. (2022)
<doi:10.1016/j.cell.2022.08.004>, and raw data is available at
<http://ftp.1000genomes.ebi.ac.uk/vol1/ftp/>.  See Turner (2022)
<doi:10.48550/arXiv.2210.00539> for more details.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-kgode
  (package
    (name "r-kgode")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KGode" version))
              (sha256
               (base32
                "0q39x34rwya3pqhvly1g0n2ykzvwrwdpdnp3y3ya9cyai63l2sgn"))))
    (properties `((upstream-name . "KGode")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-pspline r-pracma r-mvtnorm))
    (home-page "https://cran.r-project.org/package=KGode")
    (synopsis
     "Kernel Based Gradient Matching for Parameter Inference in Ordinary Differential Equations")
    (description
     "The kernel ridge regression and the gradient matching algorithm proposed in Niu
et al. (2016) <https://proceedings.mlr.press/v48/niu16.html> and the warping
algorithm proposed in Niu et al. (2017) <DOI:10.1007/s00180-017-0753-z> are
implemented for parameter inference in differential equations.  Four schemes are
provided for improving parameter estimation in odes by using the odes
regularisation and warping.")
    (license license:gpl2+)))

(define-public r-kgc
  (package
    (name "r-kgc")
    (version "1.0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kgc" version))
              (sha256
               (base32
                "14zbcimnglh5jj07dcaxp1dfjaz8syswy29nf8z39qmslv1hg9kk"))))
    (properties `((upstream-name . "kgc")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinythemes r-shiny r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kgc")
    (synopsis "Koeppen-Geiger Climatic Zones")
    (description
     "Aids in identifying the Koeppen-Geiger (KG) climatic zone for a given location.
The Koeppen-Geiger climate zones were first published in 1884, as a system to
classify regions of the earth by their relative heat and humidity through the
year, for the benefit of human health, plant and agriculture and other human
activity [1].  This climate zone classification system, applicable to all of the
earths surface, has continued to be developed by scientists up to the present
day.  Recently one of use (FZ) has published updated, higher accuracy KG climate
zone definitions [2].  In this package we use these updated high-resolution maps
as the data source [3].  We provide functions that return the KG climate zone
for a given longitude and lattitude, or for a given United States zip code.  In
addition the CZUncertainty() function will check climate zones nearby to check
if the given location is near a climate zone boundary.  In addition an
interactive shiny app is provided to define the KG climate zone for a given
longitude and lattitude, or United States zip code.  Digital data, as well as
animated maps, showing the shift of the climate zones are provided on the
following website <http://koeppen-geiger.vu-wien.ac.at>.  This work was
supported by the DOE-EERE SunShot award DE-EE-0007140. [1] W. Koeppen, (2011)
<doi:10.1127/0941-2948/2011/105>. [2] F. Rubel and M. Kottek, (2010)
<doi:10.1127/0941-2948/2010/0430>. [3] F. Rubel, K. Brugger, K. Haslinger, and
I. Auer, (2016) <doi:10.1127/metz/2016/0816>.")
    (license license:bsd-2)))

(define-public r-kfpls
  (package
    (name "r-kfpls")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KFPLS" version))
              (sha256
               (base32
                "1bdba738mhsa6yw515fyaw96pycvflw596fh9dkhhns498lg7356"))))
    (properties `((upstream-name . "KFPLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-fda))
    (home-page "https://cran.r-project.org/package=KFPLS")
    (synopsis "Kernel Functional Partial Least Squares")
    (description
     "Implementation for kernel functional partial least squares (KFPLS) method.
KFPLS method is developed for functional nonlinear models, and the method does
not require strict constraints for the nonlinear structures.  The crucial
function of this package is KFPLS().")
    (license license:gpl3+)))

(define-public r-kfpca
  (package
    (name "r-kfpca")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KFPCA" version))
              (sha256
               (base32
                "1dzywxnp3ywg3zbvmacj3a1i7w5cg1g93a9ncl7ddwb7wqpzg6x1"))))
    (properties `((upstream-name . "KFPCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-kader r-fdapace r-fda))
    (home-page "https://cran.r-project.org/package=KFPCA")
    (synopsis "Kendall Functional Principal Component Analysis")
    (description
     "Implementation for Kendall functional principal component analysis.  Kendall
functional principal component analysis is a robust functional principal
component analysis technique for non-Gaussian functional/longitudinal data.  The
crucial function of this package is KFPCA() and KFPCA_reg().  Moreover, least
square estimates of functional principal component scores are also provided.
Refer to Rou Zhong, Shishi Liu, Haocheng Li, Jingxiao Zhang. (2021)
<arXiv:2102.01286>.  Rou Zhong, Shishi Liu, Haocheng Li, Jingxiao Zhang. (2021)
<doi:10.1016/j.jmva.2021.104864>.")
    (license license:gpl3+)))

(define-public r-kfino
  (package
    (name "r-kfino")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kfino" version))
              (sha256
               (base32
                "14gpc72nin96g2sqzbj7z9ca2gs3kjl2k0yg1zfdrv8fgjsn9s6i"))))
    (properties `((upstream-name . "kfino")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://forgemia.inra.fr/isabelle.sanchez/kfino")
    (synopsis "Kalman Filter for Impulse Noised Outliers")
    (description
     "This package provides a method for detecting outliers with a Kalman filter on
impulsed noised outliers and prediction on cleaned data.  kfino is a robust
sequential algorithm allowing to filter data with a large number of outliers.
This algorithm is based on simple latent linear Gaussian processes as in the
Kalman Filter method and is devoted to detect impulse-noised outliers.  These
are data points that differ significantly from other observations.  ML
(Maximization Likelihood) and EM (Expectation-Maximization algorithm) algorithms
were implemented in kfino'.  The method is described in full details in the
following arXiv e-Print: <arXiv:2208.00961>.")
    (license license:gpl3)))

(define-public r-kfigr
  (package
    (name "r-kfigr")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kfigr" version))
              (sha256
               (base32
                "0kys4j2n2n1v918v877798m34q431fpz0p0s6gxnfqnn26z2hy14"))))
    (properties `((upstream-name . "kfigr")))
    (build-system r-build-system)
    (propagated-inputs (list r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mkoohafkan/kfigr")
    (synopsis
     "Integrated Code Chunk Anchoring and Referencing for R Markdown Documents")
    (description
     "This package provides a streamlined cross-referencing system for R Markdown
documents generated with knitr'.  R Markdown is an authoring format for
generating dynamic content from R. kfigr provides a hook for anchoring code
chunks and a function to cross-reference document elements generated from said
chunks, e.g. figures and tables.")
    (license license:gpl3+)))

(define-public r-kfda
  (package
    (name "r-kfda")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kfda" version))
              (sha256
               (base32
                "0861hzry55gj8ykdd8cwil1wb7234pkmipp4v1749fpmzggq1xgi"))))
    (properties `((upstream-name . "kfda")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-kernlab))
    (home-page "https://github.com/ainsuotain/kfda")
    (synopsis "Kernel Fisher Discriminant Analysis")
    (description
     "Kernel Fisher Discriminant Analysis (KFDA) is performed using Kernel Principal
Component Analysis (KPCA) and Fisher Discriminant Analysis (FDA).  There are
some similar packages.  First, lfda is a package that performs Local Fisher
Discriminant Analysis (LFDA) and performs other functions.  In particular, lfda
seems to be impossible to test because it needs the label information of the
data in the function argument.  Also, the ks package has a limited dimension,
which makes it difficult to analyze properly.  This package is a simple and
practical package for KFDA based on the paper of Yang, J., Jin, Z., Yang, J. Y.,
Zhang, D., and Frangi, A. F. (2004) <DOI:10.1016/j.patcog.2003.10.015>.")
    (license license:gpl3)))

(define-public r-kfas
  (package
    (name "r-kfas")
    (version "1.4.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KFAS" version))
              (sha256
               (base32
                "1395xqm8rbg0i2vrd9n83fslf8v40csh0h17wczdnwnff3z3gpfy"))))
    (properties `((upstream-name . "KFAS")))
    (build-system r-build-system)
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/helske/KFAS")
    (synopsis
     "Kalman Filter and Smoother for Exponential Family State Space Models")
    (description
     "State space modelling is an efficient and flexible framework for statistical
inference of a broad class of time series and other data.  KFAS includes
computationally efficient functions for Kalman filtering, smoothing,
forecasting, and simulation of multivariate exponential family state space
models, with observations from Gaussian, Poisson, binomial, negative binomial,
and gamma distributions.  See the paper by Helske (2017)
<doi:10.18637/jss.v078.i10> for details.")
    (license license:gpl2+)))

(define-public r-kfa
  (package
    (name "r-kfa")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kfa" version))
              (sha256
               (base32
                "11v0w1j8vispzbrwvsjig83bhrzbdvv13li7ibzyi2n7d1bcrji2"))))
    (properties `((upstream-name . "kfa")))
    (build-system r-build-system)
    (propagated-inputs (list r-simstandard
                             r-semtools
                             r-semplot
                             r-rmarkdown
                             r-officer
                             r-lavaan
                             r-knitr
                             r-gparotation
                             r-foreach
                             r-flextable
                             r-doparallel
                             r-caret))
    (home-page "https://github.com/knickodem/kfa")
    (synopsis "K-Fold Cross Validation for Factor Analysis")
    (description
     "This package provides functions to identify plausible and replicable factor
structures for a set of variables via k-fold cross validation.  The process
combines the exploratory and confirmatory factor analytic approach to scale
development (Flora & Flake, 2017) <doi:10.1037/cbs0000069> with a cross
validation technique that maximizes the available data (Hastie, Tibshirani, &
Friedman, 2009) <isbn:978-0-387-21606-5>.  Also available are functions to
determine k by drawing on power analytic techniques for covariance structures
(MacCallum, Browne, & Sugawara, 1996) <doi:10.1037/1082-989X.1.2.130>, generate
model syntax, and summarize results in a report.")
    (license license:gpl3+)))

(define-public r-keytoenglish
  (package
    (name "r-keytoenglish")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keyToEnglish" version))
              (sha256
               (base32
                "1wzn93gp1v6y8qh9kypydqadnf6fc7xzjili77b7j402hvb0a8zg"))))
    (properties `((upstream-name . "keyToEnglish")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-openssl r-jsonlite))
    (home-page "https://github.com/mcandocia/keyToEnglish")
    (synopsis "Convert Data to Memorable Phrases")
    (description
     "Convert keys and other values to memorable phrases.  Includes some methods to
build lists of words.")
    (license license:gpl2+)))

(define-public r-keys
  (package
    (name "r-keys")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keys" version))
              (sha256
               (base32
                "0jq7c70hyxpaxkrciy2jz4bf2mdcbcnmpjniwqffk1lkaxr0ni9b"))))
    (properties `((upstream-name . "keys")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jsonlite r-htmltools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r4fun/keys")
    (synopsis "Keyboard Shortcuts for 'shiny'")
    (description
     "Assign and listen to keyboard shortcuts in shiny using the Mousetrap Javascript
library.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-keyringr
  (package
    (name "r-keyringr")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keyringr" version))
              (sha256
               (base32
                "04f0z6mqj75l5qhiab0zvjsvz3jz1bp6dfazkpgihjmls5k11dnh"))))
    (properties `((upstream-name . "keyringr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=keyringr")
    (synopsis
     "Decrypt Passwords from Gnome Keyring, Windows Data Protection API and macOS Keychain")
    (description
     "Decrypts passwords stored in the Gnome Keyring, macOS Keychain and strings
encrypted with the Windows Data Protection API.")
    (license license:expat)))

(define-public r-keypress
  (package
    (name "r-keypress")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keypress" version))
              (sha256
               (base32
                "0y9zz4q2kmya85j1dr0a3874k65r57wcwqgsbsa0l0az6lyc4v0i"))))
    (properties `((upstream-name . "keypress")))
    (build-system r-build-system)
    (home-page "https://github.com/gaborcsardi/keypress#readme")
    (synopsis "Wait for a Key Press in a Terminal")
    (description
     "Wait for a single key press at the R prompt.  This works in terminals, but does
not currently work in the Windows GUI', the OS X GUI ('R.app'), in Emacs ESS',
in an Emacs shell buffer or in R Studio'.  In these cases keypress stops with an
error message.")
    (license license:expat)))

(define-public r-keyplayer
  (package
    (name "r-keyplayer")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keyplayer" version))
              (sha256
               (base32
                "0j4n46r9ivkbzqz8g22dq2bpmx7bs05yb5qp27p9jnfh5x19v2ds"))))
    (properties `((upstream-name . "keyplayer")))
    (build-system r-build-system)
    (propagated-inputs (list r-sna r-matpow r-igraph))
    (home-page "https://cran.r-project.org/package=keyplayer")
    (synopsis "Locating Key Players in Social Networks")
    (description
     "Computes group centrality scores and identifies the most central group of
players in a network.")
    (license license:gpl3)))

(define-public r-keyholder
  (package
    (name "r-keyholder")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keyholder" version))
              (sha256
               (base32
                "0f8pqmp4va8y92zlld42shig0r9idif5wi1vi378753pkibfd4yb"))))
    (properties `((upstream-name . "keyholder")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://echasnovski.github.io/keyholder/")
    (synopsis "Store Data About Rows")
    (description
     "Tools for keeping track of information, named \"keys\", about rows of data frame
like objects.  This is done by creating special attribute \"keys\" which is
updated after every change in rows (subsetting, ordering, etc.).  This package
is designed to work tightly with dplyr package.")
    (license license:expat)))

(define-public r-keyboardsimulator
  (package
    (name "r-keyboardsimulator")
    (version "2.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KeyboardSimulator" version))
              (sha256
               (base32
                "0fm57ln8l2g28ddq4m3iwd8drvc8hcgnwmhps39nj7rhjx2rnysv"))))
    (properties `((upstream-name . "KeyboardSimulator")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/ChiHangChen/KeyboardSimulator")
    (synopsis "Keyboard and Mouse Input Simulation for Windows OS")
    (description
     "Control your keyboard and mouse with R code by simulating key presses and mouse
clicks.  The input simulation is implemented with the Windows API.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-keyboard
  (package
    (name "r-keyboard")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Keyboard" version))
              (sha256
               (base32
                "1yfcn1r0zngc1nlj5axqps8an66p1q1qmxwagxq2q15d9qipb5wh"))))
    (properties `((upstream-name . "Keyboard")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-iso r-ggplot2))
    (home-page "https://cran.r-project.org/package=Keyboard")
    (synopsis "Bayesian Designs for Early Phase Clinical Trials")
    (description
     "We developed a package Keyboard for designing single-agent, drug-combination, or
phase I/II dose-finding clinical trials.  The Keyboard designs are novel early
phase trial designs that can be implemented simply and transparently, similar to
the 3+3 design, but yield excellent performance, comparable to those of
more-complicated, model-based designs (Yan F, Mandrekar SJ, Yuan Y (2017)
<doi:10.1158/1078-0432.CCR-17-0220>, Li DH, Whitmore JB, Guo W, Ji Y. (2017)
<doi:10.1158/1078-0432.CCR-16-1125>, Liu S, Johnson VE (2016)
<doi:10.1093/biostatistics/kxv040>, Zhou Y, Lee JJ, Yuan Y (2019)
<doi:10.1002/sim.8475>, Pan H, Lin R, Yuan Y (2020)
<doi:10.1016/j.cct.2020.105972>).  The Keyboard package provides tools for
designing, conducting, and analyzing single-agent, drug-combination, and phase
I/II dose-finding clinical trials.  For more details about how to use this
packge, please refer to Li C, Sun H, Cheng C, Tang L, and Pan H. (2022) \"A
software tool for both the maximum tolerated dose and the optimal biological
dose finding trials in early phase designs\".  Manuscript submitted for
publication.")
    (license license:gpl2)))

(define-public r-keyatm
  (package
    (name "r-keyatm")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keyATM" version))
              (sha256
               (base32
                "0zjdg5q38a1pw74id1hk9sxkk2k0gbwy1irvmg76i2q4x8cayd0w"))))
    (properties `((upstream-name . "keyATM")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-rcppprogress
                             r-rcppeigen
                             r-rcpp
                             r-quanteda
                             r-purrr
                             r-pgdraw
                             r-matrixnormal
                             r-matrix
                             r-mass
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-future-apply
                             r-fastmap
                             r-dplyr))
    (home-page "https://keyatm.github.io/keyATM/")
    (synopsis "Keyword Assisted Topic Models")
    (description
     "Fits keyword assisted topic models (keyATM) using collapsed Gibbs samplers.  The
keyATM combines the latent dirichlet allocation (LDA) models with a small number
of keywords selected by researchers in order to improve the interpretability and
topic classification of the LDA. The keyATM can also incorporate covariates and
directly model time trends.  The keyATM is proposed in Eshima, Imai, and Sasaki
(2020) <arXiv:2004.05964>.")
    (license license:gpl3)))

(define-public r-kesernetwork
  (package
    (name "r-kesernetwork")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kesernetwork" version))
              (sha256
               (base32
                "0q42zry3qgg38aas0cxy7lwpj9mj45crcbs353d1d1is0w1avh09"))))
    (properties `((upstream-name . "kesernetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-visnetwork
                             r-stringr
                             r-shinywidgets
                             r-shinyhelper
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-rlang
                             r-rintrojs
                             r-reactable
                             r-plotly
                             r-htmltools
                             r-golem
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-data-table
                             r-config))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/celehs/kesernetwork")
    (synopsis "Visualization of the KESER Network")
    (description
     "This package provides a shiny app to visualize the knowledge networks for the
code concepts.  Using co-occurrence matrices of EHR codes from Veterans Affairs
(VA) and Massachusetts General Brigham (MGB), the knowledge extraction via
sparse embedding regression (KESER) algorithm was used to construct knowledge
networks for the code concepts.  Background and details about the method can be
found at Chuan et al. (2021) <doi:10.1038/s41746-021-00519-z>.")
    (license license:gpl3+)))

(define-public r-kertests
  (package
    (name "r-kertests")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kerTests" version))
              (sha256
               (base32
                "0981q4n4wrv62x4b8jccj5hx58n975rls3sn3s0mz7ajhh1xxbi9"))))
    (properties `((upstream-name . "kerTests")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kerTests")
    (synopsis "Generalized Kernel Two-Sample Tests")
    (description
     "New kernel-based test and fast tests for testing whether two samples are from
the same distribution.  They work well particularly for high-dimensional data.")
    (license license:gpl2+)))

(define-public r-kerseg
  (package
    (name "r-kerseg")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kerSeg" version))
              (sha256
               (base32
                "0f0v2yz93wm85kqgcxkb492n60n9j7xjnxkqpkrbgkdv5rh3b33k"))))
    (properties `((upstream-name . "kerSeg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=kerSeg")
    (synopsis "New Kernel-Based Change-Point Detection")
    (description
     "New kernel-based test and fast tests for detecting change-points or
changed-intervals where the distributions abruptly change.  They work well
particularly for high-dimensional data.  Song, H. and Chen, H. (2022)
<arXiv:2206.01853>.")
    (license license:gpl2+)))

(define-public r-kernstadapt
  (package
    (name "r-kernstadapt")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernstadapt" version))
              (sha256
               (base32
                "0hbzc0xqlgs3kbblm247hkaic7s9a5slz22slh5dz9ddgfdy1z21"))))
    (properties `((upstream-name . "kernstadapt")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-utils
                             r-spatstat-random
                             r-spatstat-geom
                             r-spatstat-explore
                             r-sparr
                             r-misc3d))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kernstadapt")
    (synopsis "Spatio-Temporal Adaptive Kernel Estimators for Intensities")
    (description
     "Adaptive estimation of the first-order intensity function of a spatio-temporal
point process using kernels and variable bandwidths.  The methodology used for
estimation is presented in Gonz????lez and Moraga (2022). <arXiv:2208.12026>.")
    (license license:expat)))

(define-public r-kernsmoothirt
  (package
    (name "r-kernsmoothirt")
    (version "6.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KernSmoothIRT" version))
              (sha256
               (base32
                "0qqlmcd04m89pmhrbmxxx4lzzb6sksgrm0j8x7fs5r0sxdqy6rcp"))))
    (properties `((upstream-name . "KernSmoothIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-rcpp r-plotrix))
    (home-page "https://cran.r-project.org/package=KernSmoothIRT")
    (synopsis "Nonparametric Item Response Theory")
    (description
     "Fits nonparametric item and option characteristic curves using kernel smoothing.
 It allows for optimal selection of the smoothing bandwidth using
cross-validation and a variety of exploratory plotting tools.  The kernel
smoothing is based on methods described in Silverman, B.W. (1986).  Density
Estimation for Statistics and Data Analysis.  Chapman & Hall, London.")
    (license license:gpl2)))

(define-public r-kernscr
  (package
    (name "r-kernscr")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernscr" version))
              (sha256
               (base32
                "1kcj710q8jbc34g6fcv2nk07hpsb81mfx8hvivgxq8x58028gjzs"))))
    (properties `((upstream-name . "kernscr")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-mass))
    (home-page "https://cran.r-project.org/package=kernscr")
    (synopsis "Kernel Machine Score Test for Semi-Competing Risks")
    (description
     "Kernel Machine Score Test for Pathway Analysis in the Presence of Semi-Competing
Risks.  Method is detailed in: Neykov, Hejblum & Sinnott (2018) <doi:
10.1177/0962280216653427>.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-kernplus
  (package
    (name "r-kernplus")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernplus" version))
              (sha256
               (base32
                "0z5zpj89nw7cdphg6frmjwqjxsl6g95xsa8zgsxmw2q75wwj1saz"))))
    (properties `((upstream-name . "kernplus")))
    (build-system r-build-system)
    (propagated-inputs (list r-mixtools r-kernsmooth r-circular))
    (home-page "https://cran.r-project.org/package=kernplus")
    (synopsis
     "Kernel Regression-Based Multidimensional Wind Turbine Power Curve")
    (description
     "This package provides wind energy practitioners with an effective machine
learning-based tool that estimates a multivariate power curve and predicts the
wind power output for a specific environmental condition.")
    (license license:gpl3)))

(define-public r-kernhaz
  (package
    (name "r-kernhaz")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernhaz" version))
              (sha256
               (base32
                "1cxwjnfyhxfjdbhs21airycs704jic21pdpsbxsx37wkl11cxpai"))))
    (properties `((upstream-name . "kernhaz")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl r-ga r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=kernhaz")
    (synopsis "Kernel Estimation of Hazard Function in Survival Analysis")
    (description
     "Producing kernel estimates of the unconditional and conditional hazard function
for right-censored data including methods of bandwidth selection.")
    (license license:gpl2+)))

(define-public r-kernelshap
  (package
    (name "r-kernelshap")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernelshap" version))
              (sha256
               (base32
                "07k4hy1pcy6p2sxw971ifaqfagj4plp3k8wcjlqn114i2m0zqsw4"))))
    (properties `((upstream-name . "kernelshap")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-foreach r-dorng))
    (home-page "https://github.com/mayer79/kernelshap")
    (synopsis "Kernel SHAP")
    (description
     "Multidimensional refinement of the Kernel SHAP algorithm described in Ian Covert
and Su-In Lee (2021) <http://proceedings.mlr.press/v130/covert21a>.  The package
allows to calculate Kernel SHAP values in an exact way, by iterative sampling
(as in the reference above), or by a hybrid of the two.  As soon as sampling is
involved, the algorithm iterates until convergence, and standard errors are
provided.  The package works with any model that provides numeric predictions of
dimension one or higher.  Examples include linear regression, logistic
regression (on logit or probability scale), other generalized linear models,
generalized additive models, and neural networks.  The package plays well
together with meta-learning packages like tidymodels', caret or mlr3'.
Visualizations can be done using the R package shapviz'.")
    (license license:gpl2+)))

(define-public r-kernelpsi
  (package
    (name "r-kernelpsi")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernelPSI" version))
              (sha256
               (base32
                "1gnp3ixqmijy6xanlc4l8255biwxmlfyhd3y68arry9rzfjkmxpz"))))
    (properties `((upstream-name . "kernelPSI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-lmtest
                             r-kernlab
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "http://proceedings.mlr.press/v97/slim19a.html")
    (synopsis "Post-Selection Inference for Nonlinear Variable Selection")
    (description
     "Different post-selection inference strategies for kernel selection, as described
in \"kernelPSI: a Post-Selection Inference Framework for Nonlinear Variable
Selection\", Slim et al., Proceedings of Machine Learning Research, 2019,
<http://proceedings.mlr.press/v97/slim19a/slim19a.pdf>.  The strategies rest
upon quadratic kernel association scores to measure the association between a
given kernel and an outcome of interest.  The inference step tests for the joint
effect of the selected kernels on the outcome.  A fast constrained sampling
algorithm is proposed to derive empirical p-values for the test statistics.")
    (license license:gpl2+)))

(define-public r-kernelphil
  (package
    (name "r-kernelphil")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernelPhil" version))
              (sha256
               (base32
                "0pzsknb0ibm3v0ibfaklb4g2mx7zrva4m29356cirwd29nmd8bqw"))))
    (properties `((upstream-name . "kernelPhil")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordspace
                             r-rgdal
                             r-reshape2
                             r-pbapply
                             r-hmisc
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-directlabels
                             r-benchmarkme))
    (home-page "http://www.icge.co.uk/")
    (synopsis
     "Kernel Smoothing Tools for Philology and Historical Dialectology")
    (description
     "This package contains kernel smoothing tools designed for use by historical
dialectologists and philologists for exploring spatial and temporal patterns in
noisy historical language data, such as that obtained from historical texts.
The main way in which these might differ from other implementations of kernel
smoothing is that they assume that the function (linguistic variable) being
explored has the form of the relative frequency of a series of discrete
possibilities (linguistic variants).  This package also offers a way of
exploring distributions in 2-dimensional space and in time with separate
kernels, and tools for identifying appropriate bandwidths for these.")
    (license license:gpl3+)))

(define-public r-kernelknn
  (package
    (name "r-kernelknn")
    (version "1.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KernelKnn" version))
              (sha256
               (base32
                "1b361qqkicbdwcmh7fj8rfqqj5yaf2ygmh4hwy5qxbpw8zkagccj"))))
    (properties `((upstream-name . "KernelKnn")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/KernelKnn")
    (synopsis "Kernel k Nearest Neighbors")
    (description
     "Extends the simple k-nearest neighbors algorithm by incorporating numerous
kernel functions and a variety of distance metrics.  The package takes advantage
of RcppArmadillo to speed up the calculation of distances between observations.")
    (license license:expat)))

(define-public r-kernelheaping
  (package
    (name "r-kernelheaping")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Kernelheaping" version))
              (sha256
               (base32
                "0nd8kbprpm2jrpnqr4xb4z8wklv5js2y3kdpjc2q0ay229hf85j8"))))
    (properties `((upstream-name . "Kernelheaping")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparr
                             r-sp
                             r-plyr
                             r-mvtnorm
                             r-mass
                             r-magrittr
                             r-ks
                             r-gb2
                             r-fitdistrplus
                             r-fastmatch
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=Kernelheaping")
    (synopsis "Kernel Density Estimation for Heaped and Rounded Data")
    (description
     "In self-reported or anonymised data the user often encounters heaped data, i.e.
data which are rounded (to a possibly different degree of coarseness).  While
this is mostly a minor problem in parametric density estimation the bias can be
very large for non-parametric methods such as kernel density estimation.  This
package implements a partly Bayesian algorithm treating the true unknown values
as additional parameters and estimates the rounding parameters to give a
corrected kernel density estimate.  It supports various standard bandwidth
selection methods.  Varying rounding probabilities (depending on the true value)
and asymmetric rounding is estimable as well: Gross, M. and Rendtel, U. (2016)
(<doi:10.1093/jssam/smw011>).  Additionally, bivariate non-parametric density
estimation for rounded data, Gross, M. et al. (2016) (<doi:10.1111/rssa.12179>),
as well as data aggregated on areas is supported.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-kernelboot
  (package
    (name "r-kernelboot")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kernelboot" version))
              (sha256
               (base32
                "1xqkkgy2b5x9ykwnk0pfhy7cmghzg5aivw6514cx9g0yvdprjmyy"))))
    (properties `((upstream-name . "kernelboot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-parallelly r-future-apply r-future))
    (home-page "https://github.com/twolodzko/kernelboot")
    (synopsis "Smoothed Bootstrap and Random Generation from Kernel Densities")
    (description
     "Smoothed bootstrap and functions for random generation from univariate and
multivariate kernel densities.  It does not estimate kernel densities.")
    (license license:gpl2)))

(define-public r-kerndwd
  (package
    (name "r-kerndwd")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kerndwd" version))
              (sha256
               (base32
                "0lvm007wzhyagyafmq47819hn66riwdcpymn56clc1sgch9i933m"))))
    (properties `((upstream-name . "kerndwd")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=kerndwd")
    (synopsis "Distance Weighted Discrimination (DWD) and Kernel Methods")
    (description
     "This package provides a novel implementation that solves the linear distance
weighted discrimination and the kernel distance weighted discrimination.
Reference: Wang and Zou (2018) <doi:10.1111/rssb.12244>.")
    (license license:gpl2)))

(define-public r-kergp
  (package
    (name "r-kergp")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kergp" version))
              (sha256
               (base32
                "0qkjjrjgny8jvklgbddx0n1fq2bwr434shdn7xzdp0krxxnh7h64"))))
    (properties `((upstream-name . "kergp")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rcpp
                             r-numderiv
                             r-nloptr
                             r-mass
                             r-lattice
                             r-doparallel
                             r-dofuture))
    (home-page "https://cran.r-project.org/package=kergp")
    (synopsis "Gaussian Process Laboratory")
    (description
     "Gaussian process regression with an emphasis on kernels.  Quantitative and
qualitative inputs are accepted.  Some pre-defined kernels are available, such
as radial or tensor-sum for quantitative inputs, and compound symmetry, low
rank, group kernel for qualitative inputs.  The user can define new kernels and
composite kernels through a formula mechanism.  Useful methods include parameter
estimation by maximum likelihood, simulation, prediction and leave-one-out
validation.")
    (license license:gpl3)))

(define-public r-kere
  (package
    (name "r-kere")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KERE" version))
              (sha256
               (base32
                "1b16cb3ihcsp9jffmd45sd7ia4pibikmj62ad344wmq22q4fpliy"))))
    (properties `((upstream-name . "KERE")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=KERE")
    (synopsis "Expectile Regression in Reproducing Kernel Hilbert Space")
    (description
     "An efficient algorithm inspired by majorization-minimization principle for
solving the entire solution path of a flexible nonparametric expectile
regression estimator constructed in a reproducing kernel Hilbert space.")
    (license license:gpl2)))

(define-public r-kerastuner
  (package
    (name "r-kerastuner")
    (version "0.1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kerastuneR" version))
              (sha256
               (base32
                "0mnigff937mcy5saamx7r6rp8mghnghnlzv0hancnmccv7rhfnnj"))))
    (properties `((upstream-name . "kerastuneR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyjson
                             r-tensorflow
                             r-rstudioapi
                             r-rjsonio
                             r-rjson
                             r-reticulate
                             r-plotly
                             r-magick
                             r-keras
                             r-echarts4r
                             r-dplyr
                             r-data-table
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EagerAI/kerastuneR/")
    (synopsis "Interface to 'Keras Tuner'")
    (description
     "Keras Tuner <https://keras-team.github.io/keras-tuner/> is a hypertuning
framework made for humans.  It aims at making the life of AI practitioners,
hypertuner algorithm creators and model designers as simple as possible by
providing them with a clean and easy to use API for hypertuning.  Keras Tuner
makes moving from a base model to a hypertuned one quick and easy by only
requiring you to change a few lines of code.")
    (license license:asl2.0)))

(define-public r-kerasr
  (package
    (name "r-kerasr")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kerasR" version))
              (sha256
               (base32
                "0h278g3s6awbnq05n4fi80h80yrikybqccq23wzk3m08p5h9ay6f"))))
    (properties `((upstream-name . "kerasR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statsmaths/kerasR")
    (synopsis "R Interface to the Keras Deep Learning Library")
    (description
     "This package provides a consistent interface to the Keras Deep Learning Library
directly from within R. Keras provides specifications for describing dense
neural networks, convolution neural networks (CNN) and recurrent neural networks
(RNN) running on top of either TensorFlow or Theano'.  Type conversions between
Python and R are automatically handled correctly, even when the default choices
would otherwise lead to errors.  Includes complete R documentation and many
working examples.")
    (license license:lgpl2.0)))

(define-public r-kequate
  (package
    (name "r-kequate")
    (version "1.6.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kequate" version))
              (sha256
               (base32
                "0zlc1n69908011zz5aydcl41apg6l0l3dvmsm3fgpnr1vm76g9y1"))))
    (properties `((upstream-name . "kequate")))
    (build-system r-build-system)
    (propagated-inputs (list r-mirt r-ltm r-equateirt))
    (home-page "https://cran.r-project.org/package=kequate")
    (synopsis "The Kernel Method of Test Equating")
    (description
     "This package implements the kernel method of test equating as defined in von
Davier, A. A., Holland, P. W. and Thayer, D. T. (2004) <doi:10.1007/b97446> and
Andersson, B. and Wiberg, M. (2017) <doi:10.1007/s11336-016-9528-7> using the
CB, EG, SG, NEAT CE/PSE and NEC designs, supporting Gaussian, logistic and
uniform kernels and unsmoothed and pre-smoothed input data.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-kensyn
  (package
    (name "r-kensyn")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KenSyn" version))
              (sha256
               (base32
                "0s8sq3caxn4swac81196dp52r9lbmxb3ni45yaxh53f5g34slsi8"))))
    (properties `((upstream-name . "KenSyn")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme r-metafor r-lme4))
    (home-page "http://www.modelia.org")
    (synopsis
     "Knowledge Synthesis in Agriculture - From Experimental Network to Meta-Analysis")
    (description
     "Demo and dataset accompaying the books : De l'analyse des r????seaux
exp????rimentaux ???? la m????ta-analyse: M????thodes et applications avec le logiciel R
pour les sciences agronomiques et environnementales (Published 2018-06-28, Quae,
for french version) by David Makowski, Francois Piraux and Francois Brun -
<https://www.quae.com/produit/1514/9782759228164/de-l-analyse-des-reseaux-experimentaux-a-la-meta-analyse>
Knowledge Synthesis in Agriculture : from Experimental Network to Meta-Analysis
(in preparation for 2018-06, Springer , for English version) by David Makowski,
Francois Piraux and Francois Brun A full description of all the material is in
both books.  ACKNOWLEDGMENTS : The French network \"RMT modeling and data
analysis for agriculture\" (<http://www.modelia.org>) have contributed to the
development of this R package.  This project and network are lead by ACTA
(French Technical Institute for Agriculture) and was funded by a grant from the
Ministry of Agriculture and Fishing of France.")
    (license license:lgpl3)))

(define-public r-kendl
  (package
    (name "r-kendl")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KENDL" version))
              (sha256
               (base32
                "05vsh3x0li964a485q3n19c7fahcprvg1bnrvffagkxf8w1iz153"))))
    (properties `((upstream-name . "KENDL")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KENDL")
    (synopsis
     "Kernel-Smoothed Nonparametric Methods for Environmental Exposure Data Subject to Detection Limits")
    (description
     "Calculate the kernel-smoothed nonparametric estimator for the exposure
distribution in presence of detection limits.")
    (license license:gpl2)))

(define-public r-kendallrandomwalks
  (package
    (name "r-kendallrandomwalks")
    (version "0.9.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kendallRandomWalks" version))
              (sha256
               (base32
                "1mfqblvsn9p6gdcnbypfpzk0xzn6bz1ajbrkz2dap5w35dia3kxa"))))
    (properties `((upstream-name . "kendallRandomWalks")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-ggplot2 r-dplyr r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kendallRandomWalks")
    (synopsis
     "Simulate and Visualize Kendall Random Walks and Related Distributions")
    (description
     "Kendall random walks are a continuous-space Markov chains generated by the
Kendall generalized convolution.  This package provides tools for simulating
these random walks and studying distributions related to them.  For more
information about Kendall random walks see Jasiulis-Go????dyn (2014)
<arXiv:1412.0220>.")
    (license license:expat)))

(define-public r-kelvin
  (package
    (name "r-kelvin")
    (version "2.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kelvin" version))
              (sha256
               (base32
                "0hjycqga3yjrzpgc911nk64nsjrpim4v7219f7iwi1snx0ydhqzf"))))
    (properties `((upstream-name . "kelvin")))
    (build-system r-build-system)
    (propagated-inputs (list r-bessel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/abarbour/kelvin")
    (synopsis
     "Calculate Solutions to the Kelvin Differential Equation using Bessel Functions")
    (description
     "Uses Bessel functions to calculate the fundamental and complementary analytic
solutions to the Kelvin differential equation.")
    (license license:gpl2+)))

(define-public r-kehra
  (package
    (name "r-kehra")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kehra" version))
              (sha256
               (base32
                "1cc0bmbg0dncay50ap7cs2516qngzz3ddaab0jk5r6lwfq87h8qx"))))
    (properties `((upstream-name . "kehra")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-stringr
                             r-sp
                             r-reshape2
                             r-raster
                             r-hmisc))
    (home-page "https://github.com/kehraProject/r_kehra")
    (synopsis
     "Collect, Assemble and Model Air Pollution, Weather and Health Data")
    (description
     "Collection of utility functions used in the KEHRA project (see
http://www.brunel.ac.uk/ife/britishcouncil).  It refers to the multidimensional
analysis of air pollution, weather and health data.")
    (license license:gpl3)))

(define-public r-keep
  (package
    (name "r-keep")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "keep" version))
              (sha256
               (base32
                "12803hhrs9v94rv6qaihk1f1ls7lx4cy2pa30v4p1r2z9afx9bjf"))))
    (properties `((upstream-name . "keep")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=keep")
    (synopsis "Arrays with Better Control over Dimension Dropping")
    (description
     "This package provides arrays with flexible control over dimension dropping when
subscripting.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-kdpee
  (package
    (name "r-kdpee")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kdpee" version))
              (sha256
               (base32
                "1vrpr1rkk0ypl5yi3cjgw0fglyx9r2fbcq21n172ax0w3kdyflgk"))))
    (properties `((upstream-name . "kdpee")))
    (build-system r-build-system)
    (propagated-inputs (list r-checkmate))
    (home-page "https://cran.r-project.org/package=kdpee")
    (synopsis "Fast Multidimensional Entropy Estimation by k-d Partitioning")
    (description "Estimate entropy of multidimensional data set.")
    (license license:gpl3+)))

(define-public r-kdist
  (package
    (name "r-kdist")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kdist" version))
              (sha256
               (base32
                "18q7njvsb9sbm412c6ms4b4nxg768z9qahws5rnin06gvb25nfcx"))))
    (properties `((upstream-name . "kdist")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kdist")
    (synopsis "K-Distribution and Weibull Paper")
    (description
     "Density, distribution function, quantile function and random generation for the
K-distribution.  A plotting function that plots data on Weibull paper and
another function to draw additional lines.  See results from package in T
Lamont-Smith (2018), submitted J. R. Stat.  Soc.")
    (license license:gpl3)))

(define-public r-kdevine
  (package
    (name "r-kdevine")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kdevine" version))
              (sha256
               (base32
                "1508dyjqn4vrs83b70h06ffygrx6iwqcaa360b08j3qlrlq742c6"))))
    (properties `((upstream-name . "kdevine")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula
                             r-rcpp
                             r-qrng
                             r-mass
                             r-kernsmooth
                             r-kdecopula
                             r-foreach
                             r-doparallel
                             r-cctools))
    (home-page "https://github.com/tnagler/kdevine")
    (synopsis "Multivariate Kernel Density Estimation with Vine Copulas")
    (description
     "This package implements the vine copula based kernel density estimator of Nagler
and Czado (2016) <doi:10.1016/j.jmva.2016.07.003>.  The estimator does not
suffer from the curse of dimensionality and is therefore well suited for
high-dimensional applications.")
    (license license:gpl3)))

(define-public r-kdensity
  (package
    (name "r-kdensity")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kdensity" version))
              (sha256
               (base32
                "07d1p3ysdm66a9sf0gih5xjb3wfab44c3sr8aaraz22s2a9q9b55"))))
    (properties `((upstream-name . "kdensity")))
    (build-system r-build-system)
    (propagated-inputs (list r-univariateml r-eql r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JonasMoss/kdensity")
    (synopsis
     "Kernel Density Estimation with Parametric Starts and Asymmetric Kernels")
    (description
     "Handles univariate non-parametric density estimation with parametric starts and
asymmetric kernels in a simple and flexible way.  Kernel density estimation with
parametric starts involves fitting a parametric density to the data before
making a correction with kernel density estimation, see Hjort & Glad (1995)
<doi:10.1214/aos/1176324627>.  Asymmetric kernels make kernel density estimation
more efficient on bounded intervals such as (0, 1) and the positive half-line.
Supported asymmetric kernels are the gamma kernel of Chen (2000)
<doi:10.1023/A:1004165218295>, the beta kernel of Chen (1999)
<doi:10.1016/S0167-9473(99)00010-9>, and the copula kernel of Jones & Henderson
(2007) <doi:10.1093/biomet/asm068>.  User-supplied kernels, parametric starts,
and bandwidths are supported.")
    (license license:expat)))

(define-public r-kdecopula
  (package
    (name "r-kdecopula")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kdecopula" version))
              (sha256
               (base32
                "0g5c12wm3byd4chd8i9mxv599gsf4ip4qghx83j3mmhsmn05zf4y"))))
    (properties `((upstream-name . "kdecopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-quadprog
                             r-qrng
                             r-locfit
                             r-lattice))
    (home-page "https://github.com/tnagler/kdecopula")
    (synopsis "Kernel Smoothing for Bivariate Copula Densities")
    (description
     "This package provides fast implementations of kernel smoothing techniques for
bivariate copula densities, in particular density estimation and resampling, see
Nagler (2018) <doi:10.18637/jss.v084.i07>.")
    (license license:gpl3)))

(define-public r-kde1d
  (package
    (name "r-kde1d")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kde1d" version))
              (sha256
               (base32
                "0s14dw0l6869a7zasda7hkdwqky6kbrxzbqhxvg1jy2a75mbgymm"))))
    (properties `((upstream-name . "kde1d")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp r-randtoolbox r-bh))
    (home-page "https://github.com/tnagler/kde1d")
    (synopsis "Univariate Kernel Density Estimation")
    (description
     "This package provides an efficient implementation of univariate local polynomial
kernel density estimators that can handle bounded and discrete data.  See
Geenens (2014) <arXiv:1303.4121>, Geenens and Wang (2018) <arXiv:1602.04862>,
Nagler (2018a) <arXiv:1704.07457>, Nagler (2018b) <arXiv:1705.05431>.")
    (license license:expat)))

(define-public r-kcsnbshiny
  (package
    (name "r-kcsnbshiny")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KCSNBShiny" version))
              (sha256
               (base32
                "1lv5r9qyvr3dnvcs00jyam0whv64qmv5vphhijlar1xa1g1llwqr"))))
    (properties `((upstream-name . "KCSNBShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rhandsontable r-e1071 r-dplyr r-caret))
    (home-page "https://karnechaithanyasai.shinyapps.io/KCSNBShiny/")
    (synopsis "Naive Bayes Classifier")
    (description
     "Predicts any variable in any categorical dataset for given values of predictor
variables.  If a dataset contains 4 variables, then any variable can be
predicted based on the values of the other three variables given by the user.
The user can upload their own datasets and select what variable they want to
predict.  A handsontable is provided to enter the predictor values and also
accuracy of the prediction is also shown.")
    (license license:gpl2)))

(define-public r-kcsknnshiny
  (package
    (name "r-kcsknnshiny")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KCSKNNShiny" version))
              (sha256
               (base32
                "13gzqf3g7vj8cc0xm5902q7lad2way8d0ri1fs01dnv97wmwbxvn"))))
    (properties `((upstream-name . "KCSKNNShiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rhandsontable r-fnn r-dplyr r-caret))
    (home-page "https://cran.r-project.org/package=KCSKNNShiny")
    (synopsis "K-Nearest Neighbour Classifier")
    (description
     "It predicts any attribute (categorical) given a set of input numeric predictor
values.  Note that only numeric input predictors should be given.  The k value
can be chosen according to accuracies provided.  The attribute to be predicted
can be selected from the dropdown provided (select categorical attribute).  This
is because categorical attributes cannot be given as inputs here.  A
handsontable is also provided to enter the input predictor values.")
    (license license:gpl2)))

(define-public r-kcprs
  (package
    (name "r-kcprs")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kcpRS" version))
              (sha256
               (base32
                "067j91rhw56kf15h7hxpm9qr6i59fvy5fh9ycfdqcps83wjgx62x"))))
    (properties `((upstream-name . "kcpRS")))
    (build-system r-build-system)
    (propagated-inputs (list r-roll r-rcpp r-rcolorbrewer r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=kcpRS")
    (synopsis "Kernel Change Point Detection on the Running Statistics")
    (description
     "The running statistics of interest is first extracted using a time window which
is slid across the time series, and in each window, the running statistics value
is computed.  KCP (Kernel Change Point) detection proposed by Arlot et al.
(2012) <arXiv:1202.3878> is then implemented to flag the change points on the
running statistics (Cabrieto et al., 2018, <doi:10.1016/j.ins.2018.03.010>).
Change points are located by minimizing a variance criterion based on the
pairwise similarities between running statistics which are computed via the
Gaussian kernel.  KCP can locate change points for a given k number of change
points.  To determine the optimal k, the KCP permutation test is first carried
out by comparing the variance of the running statistics extracted from the
original data to that of permuted data.  If this test is significant, then there
is sufficient evidence for at least one change point in the data.  Model
selection is then used to determine the optimal k>0.")
    (license license:gpl2+)))

(define-public r-kcopula
  (package
    (name "r-kcopula")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kcopula" version))
              (sha256
               (base32
                "07ddrq4lxp8i6n7c7ac7x9mdg9gfmlh7bv3n34qalwv0a6fa061w"))))
    (properties `((upstream-name . "kcopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://github.com/mlkremer/kcopula")
    (synopsis "The Bivariate K-Copula")
    (description
     "This package provides the density and distribution function of the bivariate
K-copula by Wollschl????ger and Sch????fer (2016) <doi:10.21314/JOR.2016.342>.")
    (license license:gpl3)))

(define-public r-kcop
  (package
    (name "r-kcop")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Kcop" version))
              (sha256
               (base32
                "0p9ik4z2jc2ib70v8lxxa40f13jbqgq6bb9s7yx335na9l43h1j8"))))
    (properties `((upstream-name . "Kcop")))
    (build-system r-build-system)
    (propagated-inputs (list r-orthopolynom r-gtools r-dplyr r-copula))
    (home-page "https://cran.r-project.org/package=Kcop")
    (synopsis
     "Smooth Test for Equality of Copulas and Clustering Multivariate")
    (description
     "This package implements approaches of non-parametric smooth test to compare
simultaneously K(K>1) copulas and non-parametric clustering of multivariate
populations with arbitrary sizes.  See Yves I. Ngounou Bakam and Denys Pommeret
(2022) <arXiv:2112.05623> and Yves I. Ngounou Bakam and Denys Pommeret (2022)
<arXiv:2211.06338>.")
    (license license:gpl3+)))

(define-public r-kbmvtskew
  (package
    (name "r-kbmvtskew")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KbMvtSkew" version))
              (sha256
               (base32
                "14g27a0dkj4gpf5l2k96fd3aa21fz8b85lf5a1jxj0qgjmr4kib0"))))
    (properties `((upstream-name . "KbMvtSkew")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=KbMvtSkew")
    (synopsis "Khattree-Bahuguna's Univariate and Multivariate Skewness")
    (description
     "Computes Khattree-Bahuguna's univariate and multivariate skewness,
principal-component-based Khattree-Bahuguna's multivariate skewness.  It also
provides several measures of univariate or multivariate skewnesses including,
Pearson??????s coefficient of skewness, Bowley??????s univariate skewness and Mardia's
multivariate skewness.  See Khattree, R. and Bahuguna, M. (2019) <doi:
10.1007/s41060-018-0106-1>.")
    (license license:gpl3)))

(define-public r-kazaam
  (package
    (name "r-kazaam")
    (version "0.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kazaam" version))
              (sha256
               (base32
                "0j7vysnmiv9sggcxdn3nrgfvyl52pza4kkjnsa0xlb3fzq9qpwlz"))))
    (properties `((upstream-name . "kazaam")))
    (build-system r-build-system)
    (propagated-inputs (list r-pbdmpi))
    (home-page "http://r-pbd.org/")
    (synopsis "Tools for Tall Distributed Matrices")
    (description
     "Many data science problems reduce to operations on very tall, skinny matrices.
However, sometimes these matrices can be so tall that they are difficult to work
with, or do not even fit into main memory.  One strategy to deal with such
objects is to distribute their rows across several processors.  To this end, we
offer an S4 class for tall, skinny, distributed matrices, called the shaq'.  We
also provide many useful numerical methods and statistics operations for
operating on these distributed objects.  The naming is a bit \"tongue-in-cheek\",
with the class a play on the fact that Shaquille ONeal ('Shaq') is very tall,
and he starred in the film Kazaam'.")
    (license (license:fsdg-compatible "BSD 2-clause License + file LICENSE"))))

(define-public r-kayadata
  (package
    (name "r-kayadata")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kayadata" version))
              (sha256
               (base32
                "0dpfgqhhdfgkpp06y49c8rs6q0cnx9yvz6qya7jhwkanh8zj8pvq"))))
    (properties `((upstream-name . "kayadata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://jonathan-g.github.io/kayadata/")
    (synopsis "Kaya Identity Data for Nations and Regions")
    (description
     "This package provides data for Kaya identity variables (population, gross
domestic product, primary energy consumption, and energy-related CO2 emissions)
for the world and for individual nations, and utility functions for looking up
data, plotting trends of Kaya variables, and plotting the fuel mix for a given
country or region.  The Kaya identity (Yoichi Kaya and Keiichi Yokobori,
\"Environment, Energy, and Economy: Strategies for Sustainability\" (United
Nations University Press, 1998) and
<https://en.wikipedia.org/wiki/Kaya_identity>) expresses a nation's or region's
greenhouse gas emissions in terms of its population, per-capita Gross Domestic
Product, the energy intensity of its economy, and the carbon-intensity of its
energy supply.")
    (license license:expat)))

(define-public r-katex
  (package
    (name "r-katex")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "katex" version))
              (sha256
               (base32
                "18cziglz8qy1v9gfcjiixq2d3l3na5p51zrxpy3x8asjiddq13d3"))))
    (properties `((upstream-name . "katex")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/katex/")
    (synopsis "Rendering Math to HTML, 'MathML', or R-Documentation Format")
    (description
     "Convert latex math expressions to HTML and MathML for use in markdown documents
or package manual pages.  The rendering is done in R using the V8 engine (i.e.
server-side), which eliminates the need for embedding the MathJax library into
your web pages.  In addition a math-to-rd wrapper is provided to automatically
render beautiful math in R documentation files.")
    (license license:expat)))

(define-public r-karsts
  (package
    (name "r-karsts")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KarsTS" version))
              (sha256
               (base32
                "1km8321a8vzff26g3x2hvdv5ciyk3fdpcn7g1xqbsx96fzxyd22n"))))
    (properties `((upstream-name . "KarsTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tserieschaos
                             r-tseries
                             r-tcltk2
                             r-stlplus
                             r-stinepack
                             r-rgl
                             r-plot3d
                             r-nonlineartseries
                             r-mvn
                             r-missforest
                             r-mgcv
                             r-infotheo
                             r-forecast
                             r-circular))
    (home-page "https://cran.r-project.org/package=KarsTS")
    (synopsis "An Interface for Microclimate Time Series Analysis")
    (description
     "An R code with a GUI for microclimate time series, with an emphasis on
underground environments.  KarsTS provides linear and nonlinear methods,
including recurrence analysis (Marwan et al. (2007)
<doi:10.1016/j.physrep.2006.11.001>) and filling methods (Moffat et al. (2007)
<doi:10.1016/j.agrformet.2007.08.011>), as well as tools to manipulate easily
time series and gap sets.")
    (license license:gpl2+)))

(define-public r-karen
  (package
    (name "r-karen")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Karen" version))
              (sha256
               (base32
                "1yy80j15lra1zmak3klvqspy9ikhr0v7csl88l9cpbdpp73972by"))))
    (properties `((upstream-name . "Karen")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-tmvtnorm
                             r-stringr
                             r-scales
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-igraph
                             r-gaussquad
                             r-expm
                             r-abind))
    (home-page "https://cran.r-project.org/package=Karen")
    (synopsis "Kalman Reaction Networks")
    (description
     "This is a stochastic framework that combines biochemical reaction networks with
extended Kalman filter and Rauch-Tung-Striebel smoothing.  This framework allows
to investigate the dynamics of cell differentiation from high-dimensional clonal
tracking data subject to measurement noise, false negative errors, and
systematically unobserved cell types.  Our tool can provide statistical support
to biologists in gene therapy clonal tracking studies for a deeper understanding
of clonal reconstitution dynamics.  Further details on the methods can be found
in L. Del Core et al., (2022) <doi:10.1101/2022.07.08.499353>.")
    (license license:gpl3)))

(define-public r-karel
  (package
    (name "r-karel")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "karel" version))
              (sha256
               (base32
                "0nvzvd8aq0sipcvn8agjjd2k1wykpgc99nrrk2cxrlvsjbpd2w52"))))
    (properties `((upstream-name . "karel")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-purrr
                             r-magrittr
                             r-gifski
                             r-ggplot2
                             r-gganimate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://mpru.github.io/karel/")
    (synopsis "Learning programming with Karel the robot")
    (description
     "This is the R implementation of Karel the robot, a programming language created
by Dr. R. E. Pattis at Stanford University in 1981.  Karel is an useful tool to
teach introductory concepts about general programming, such as algorithmic
decomposition, conditional statements, loops, etc., in an interactive and fun
way, by writing programs to make Karel the robot achieve certain tasks in the
world she lives in.  Originally based on Pascal, Karel was implemented in many
languages through these decades, including Java', C++', Ruby and Python'.  This
is the first package implementing Karel in R.")
    (license license:gpl2)))

(define-public r-karaoke
  (package
    (name "r-karaoke")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "karaoke" version))
              (sha256
               (base32
                "1kx11lijdffhhh8prjgsamshgg2v29b2i129fjqi079waa335352"))))
    (properties `((upstream-name . "karaoke")))
    (build-system r-build-system)
    (propagated-inputs (list r-tuner r-seewave))
    (home-page "https://cran.r-project.org/package=karaoke")
    (synopsis "Remove Vocals from a Song")
    (description
     "Attempts to remove vocals from a stereo .wav recording of a song.")
    (license license:gpl3)))

(define-public r-kappasize
  (package
    (name "r-kappasize")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kappaSize" version))
              (sha256
               (base32
                "0lrcyj85zcl73m6bhbzl6rkprrfpfwmm4amyjkg1xsasy5zlwk67"))))
    (properties `((upstream-name . "kappaSize")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kappaSize")
    (synopsis
     "Sample Size Estimation Functions for Studies of Interobserver Agreement")
    (description
     "This package contains basic tools for sample size estimation in studies of
interobserver/interrater agreement (reliability).  Includes functions for both
the power-based and confidence interval-based methods, with binary or
multinomial outcomes and two through six raters.")
    (license license:gpl2+)))

(define-public r-kappalab
  (package
    (name "r-kappalab")
    (version "0.4-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kappalab" version))
              (sha256
               (base32
                "1ybr3nci04f9j91hwb5rv6ahwy89rdicxx2b2bl8rm70pj0vaq4r"))))
    (properties `((upstream-name . "kappalab")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-lpsolve r-kernlab))
    (home-page "https://cran.r-project.org/package=kappalab")
    (synopsis "Non-Additive Measure and Integral Manipulation Functions")
    (description
     "S4 tool box for capacity (or non-additive measure, fuzzy measure) and integral
manipulation in a finite setting.  It contains routines for handling various
types of set functions such as games or capacities.  It can be used to compute
several non-additive integrals: the Choquet integral, the Sugeno integral, and
the symmetric and asymmetric Choquet integrals.  An analysis of capacities in
terms of decision behavior can be performed through the computation of various
indices such as the Shapley value, the interaction index, the orness degree,
etc.  The well-known M??bius transform, as well as other equivalent
representations of set functions can also be computed.  Kappalab further
contains seven capacity identification routines: three least squares based
approaches, a method based on linear programming, a maximum entropy like method
based on variance minimization, a minimum distance approach and an unsupervised
approach based on parametric entropies.  The functions contained in Kappalab can
for instance be used in the framework of multicriteria decision making or
cooperative game theory.")
    (license license:cecill)))

(define-public r-kappagui
  (package
    (name "r-kappagui")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "KappaGUI" version))
              (sha256
               (base32
                "0vklny804xpd9r60j4a01j2gak8jizwjw0abf7yvbcalv3zbpb3k"))))
    (properties `((upstream-name . "KappaGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-irr))
    (home-page "https://cran.r-project.org/package=KappaGUI")
    (synopsis
     "An R-Shiny Application for Calculating Cohen's and Fleiss' Kappa")
    (description
     "Offers a graphical user interface for the evaluation of inter-rater agreement
with Cohen's and Fleiss Kappa.  The calculation of kappa statistics is done
using the R package irr', so that KappaGUI is essentially a Shiny front-end for
irr'.")
    (license license:gpl2+)))

(define-public r-kaphom
  (package
    (name "r-kaphom")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kaphom" version))
              (sha256
               (base32
                "081drgckirc0wv2viyhhnabrlfzi0nkpq6pffw2rxfjyxdsyvnwa"))))
    (properties `((upstream-name . "kaphom")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=kaphom")
    (synopsis "Test the Homogeneity of Kappa Statistics")
    (description
     "Tests the homogeneity of intraclass kappa statistics obtained from independent
studies or a stratified study with binary results.  It is desired to compare the
kappa statistics obtained in multi-center studies or in a single stratified
study to give a common or summary kappa using all available information.  If the
homogeneity test of these kappa statistics is not rejected, then it is possible
to make inferences over a single kappa statistic that summarizes all the
studies.  Muammer Albayrak, Kemal Turhan, Yasemin Yavuz, Zeliha Aydin Kasap
(2019) <doi:10.1080/03610918.2018.1538457> Jun-mo Nam (2003)
<doi:10.1111/j.0006-341X.2003.00118.x> Jun-mo Nam (2005)
<doi:10.1002/sim.2321>Mousumi Banerjee, Michelle Capozzoli, Laura
McSweeney,Debajyoti Sinha (1999) <doi:10.2307/3315487> Allan Donner, Michael
Eliasziw, Neil Klar (1996) <doi:10.2307/2533154>.")
    (license license:gpl3)))

(define-public r-kaos
  (package
    (name "r-kaos")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kaos" version))
              (sha256
               (base32
                "0hzzb8ldydl4g3cl1579q8jv835q4cdmn8agafp6qqdhwi1xxw8k"))))
    (properties `((upstream-name . "kaos")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2))
    (home-page "https://cran.r-project.org/package=kaos")
    (synopsis
     "Encoding of Sequences Based on Frequency Matrix Chaos Game Representation")
    (description
     "Sequences encoding by using the chaos game representation.  L????chel et al.
(2019) <doi:10.1093/bioinformatics/btz493>.")
    (license license:gpl2+)))

(define-public r-kantorovich
  (package
    (name "r-kantorovich")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kantorovich" version))
              (sha256
               (base32
                "140fmbwaxn968n75my9336svgk7jw5zdq2ah1lcnl2m7qhxkvdxk"))))
    (properties `((upstream-name . "kantorovich")))
    (build-system r-build-system)
    (inputs (list gmp))
    (propagated-inputs (list r-slam
                             r-rglpk
                             r-rcdd
                             r-lpsolve
                             r-gmp
                             r-cvxr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stla/kantorovich")
    (synopsis "Kantorovich Distance Between Probability Measures")
    (description
     "Computes the Kantorovich distance between two probability measures on a finite
set.  The Kantorovich distance is also known as the Monge-Kantorovich distance
or the first Wasserstein distance.")
    (license license:gpl3)))

(define-public r-kangar00
  (package
    (name "r-kangar00")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kangar00" version))
              (sha256
               (base32
                "0c3wrzk7k322xj0yzladxdhh2j91qm7m0dyqqqfsshfkh8d22m48"))))
    (properties `((upstream-name . "kangar00")))
    (build-system r-build-system)
    (propagated-inputs (list r-sqldf
                             r-lattice
                             r-kegggraph
                             r-igraph
                             r-data-table
                             r-compquadform
                             r-biomart
                             r-bigmemory))
    (home-page "https://cran.r-project.org/package=kangar00")
    (synopsis "Kernel Approaches for Nonlinear Genetic Association Regression")
    (description
     "This package provides methods to extract information on pathways, genes and
various single-nucleotid polymorphisms (SNPs) from online databases.  It
provides functions for data preparation and evaluation of genetic influence on a
binary outcome using the logistic kernel machine test (LKMT).  Three different
kernel functions are offered to analyze genotype information in this variance
component test: A linear kernel, a size-adjusted kernel and a network-based
kernel (Friedrichs et al., 2017, <doi:10.1155/2017/6742763>).")
    (license license:gpl2)))

(define-public r-kamila
  (package
    (name "r-kamila")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kamila" version))
              (sha256
               (base32
                "01rwalv2qigxl3j3jyhrdbxlarwf0xdc8xa6c42sgcl6qpna5vn7"))))
    (properties `((upstream-name . "kamila")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-plyr r-kernsmooth r-gtools r-abind))
    (home-page "https://github.com/ahfoss/kamila")
    (synopsis "Methods for Clustering Mixed-Type Data")
    (description
     "This package implements methods for clustering mixed-type data, specifically
combinations of continuous and nominal data.  Special attention is paid to the
often-overlooked problem of equitably balancing the contribution of the
continuous and categorical variables.  This package implements KAMILA
clustering, a novel method for clustering mixed-type data in the spirit of
k-means clustering.  It does not require dummy coding of variables, and is
efficient enough to scale to rather large data sets.  Also implemented is
Modha-Spangler clustering, which uses a brute-force strategy to maximize the
cluster separation simultaneously in the continuous and categorical variables.
For more information, see Foss, Markatou, Ray, & Heching (2016)
<doi:10.1007/s10994-016-5575-7> and Foss & Markatou (2018)
<doi:10.18637/jss.v083.i13>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-kalmanfilter
  (package
    (name "r-kalmanfilter")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kalmanfilter" version))
              (sha256
               (base32
                "1i55cdlm3f4qmykv4p5q62yiw4bhkq5nnzd7wfpzf1hbnjp94d87"))))
    (properties `((upstream-name . "kalmanfilter")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=kalmanfilter")
    (synopsis "Kalman Filter")
    (description
     "Rcpp implementation of the multivariate Kalman filter for state space models
that can handle missing values and exogenous data in the observation and state
equations.  Kim, Chang-Jin and Charles R. Nelson (1999) \"State-Space Models with
Regime Switching: Classical and Gibbs-Sampling Approaches with Applications\"
<doi:10.7551/mitpress/6444.001.0001><http://econ.korea.ac.kr/~cjkim/>.")
    (license license:gpl2+)))

(define-public r-kairos
  (package
    (name "r-kairos")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kairos" version))
              (sha256
               (base32
                "1fivyh61wqkq77aicqc90pihrn2kwir4mpbcp5jl9sklcdmh3l3w"))))
    (properties `((upstream-name . "kairos")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-hmisc
                             r-ggplot2
                             r-extradistr
                             r-dimensio
                             r-arkhe))
    (native-inputs (list r-knitr))
    (home-page "https://packages.tesselle.org/kairos/")
    (synopsis
     "Analysis of Chronological Patterns from Archaeological Count Data")
    (description
     "This package provides a toolkit for absolute and relative dating and analysis of
chronological patterns.  This package includes functions for chronological
modeling and dating of archaeological assemblages from count data.  It provides
methods for matrix seriation.  It also allows to compute time point estimates
and density estimates of the occupation and duration of an archaeological site.")
    (license license:gpl3+)))

(define-public r-kaigiroku
  (package
    (name "r-kaigiroku")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kaigiroku" version))
              (sha256
               (base32
                "11f9lxk4kx3d65i2xnbpw1ixcc9qgahqdirl42aiyph4hzah1fhh"))))
    (properties `((upstream-name . "kaigiroku")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-r-utils r-jsonlite r-dplyr))
    (home-page "https://github.com/amatsuo/kaigiroku")
    (synopsis "Programmatic Access to the API for Japanese Diet Proceedings")
    (description
     "Search and download data from the API for Japanese Diet Proceedings (see the
reference at <https://kokkai.ndl.go.jp/api.html>).")
    (license license:gpl3)))

(define-public r-kader
  (package
    (name "r-kader")
    (version "0.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "kader" version))
              (sha256
               (base32
                "15f2swgngw5rdjdsh5kd55wm2nivlfs8pv4mdn0b75qihwgg1zkk"))))
    (properties `((upstream-name . "kader")))
    (build-system r-build-system)
    (home-page "http://github.com/GerritEichner/kader")
    (synopsis "Kernel Adaptive Density Estimation and Regression")
    (description
     "Implementation of various kernel adaptive methods in nonparametric curve
estimation like density estimation as introduced in Stute and Srihera (2011)
<doi:10.1016/j.spl.2011.01.013> and Eichner and Stute (2013)
<doi:10.1016/j.jspi.2012.03.011> for pointwise estimation, and like regression
as described in Eichner and Stute (2012) <doi:10.1080/10485252.2012.760737>.")
    (license license:gpl3)))

