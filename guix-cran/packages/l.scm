(define-module (guix-cran packages l)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages multiprecision)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages web)
  #:use-module (gnu packages docker)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages cmake)
  #:use-module (gnu packages finance)
  #:use-module (gnu packages java)
  #:use-module (gnu packages linux)
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

(define-public r-lzstring
  (package
    (name "r-lzstring")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lzstring" version))
       (sha256
        (base32 "02ij8nrgwzz4201kiskvsh101y2qj896k1h7kqhf5zp2j98pipmr"))))
    (properties `((upstream-name . "lzstring")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cpp11))
    (home-page "https://parmsam.github.io/lzstring-r/")
    (synopsis "Wrapper for 'lz-string' 'C++' Library")
    (description
     "Provide access to the lz-string
<http://pieroxy.net/blog/pages/lz-string/index.html> C++ library for Lempel-Ziv
(LZ) based compression and decompression of strings.")
    (license license:expat)))

(define-public r-lzerospikeinference
  (package
    (name "r-lzerospikeinference")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LZeroSpikeInference" version))
       (sha256
        (base32 "15x29afaq13iwlj66h97k3kczg9rfgp6i9d76rji58hfgh8i8by6"))))
    (properties `((upstream-name . "LZeroSpikeInference")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LZeroSpikeInference")
    (synopsis "Exact Spike Train Inference via L0 Optimization")
    (description
     "An implementation of algorithms described in Jewell and Witten (2017)
<@code{arXiv:1703.08644>}.")
    (license license:gpl3)))

(define-public r-lwqs
  (package
    (name "r-lwqs")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lwqs" version))
       (sha256
        (base32 "11hkz3b3sgm6v30gwaq463klljjf6c4qx26a5ccc1wl6r439gxqp"))))
    (properties `((upstream-name . "lwqs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr
                             r-gwqs
                             r-gridextra
                             r-ggplot2
                             r-gamm4
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lwqs")
    (synopsis "Lagged Weighted Quantile Sum Regression")
    (description
     "Wrapper functions for the implementation of lagged weighted quantile sum
regression, as per Gennings et al (2020) <doi:10.1016/j.envres.2020.109529>.")
    (license license:gpl2+)))

(define-public r-lwfbrook90r
  (package
    (name "r-lwfbrook90r")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LWFBrook90R" version))
       (sha256
        (base32 "0kndnl8pzh0ancb9skgcqnh2g30iadq2597fjbjdzi9yb4yg8lv9"))))
    (properties `((upstream-name . "LWFBrook90R")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegperiod
                             r-progressr
                             r-parallelly
                             r-iterators
                             r-future
                             r-foreach
                             r-dofuture
                             r-data-table))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://pschmidtwalter.github.io/LWFBrook90R/")
    (synopsis
     "Simulate Evapotranspiration and Soil Moisture with the SVAT Model LWF-Brook90")
    (description
     "This package provides a flexible and easy-to use interface for the soil
vegetation atmosphere transport (SVAT) model LWF-BROOK90, written in Fortran.
The model simulates daily transpiration, interception, soil and snow
evaporation, streamflow and soil water fluxes through a soil profile covered
with vegetation, as described in Hammel & Kennel (2001, ISBN:978-3-933506-16-0)
and Federer et al. (2003)
<doi:10.1175/1525-7541(2003)004%3C1276:SOAETS%3E2.0.CO;2>.  A set of high-level
functions for model set up, execution and parallelization provides easy access
to plot-level SVAT simulations, as well as multi-run and large-scale
applications.")
    (license license:gpl3)))

(define-public r-lwc2022
  (package
    (name "r-lwc2022")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lwc2022" version))
       (sha256
        (base32 "0w05bsin1wl00h0s1na2acf37jwdh4x9f09p9kr1nz1kvax861k8"))))
    (properties `((upstream-name . "lwc2022")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/C-Monaghan/lwc2022")
    (synopsis
     "Langa-Weir Classification of Cognitive Function for 2022 HRS Data")
    (description
     "Generates the Langa-Weir classification of cognitive function for the 2022
Health and Retirement Study (HRS) cognition data.  It is particularly useful for
researchers studying cognitive aging who wish to work with the most recent
release of HRS data.  The package provides user-friendly functions for data
preprocessing, scoring, and classification allowing users to easily apply the
Langa-Weir classification system.  For details regarding the; HRS
<https://hrsdata.isr.umich.edu/> and Langa-Weir classifications
<https://hrsdata.isr.umich.edu/data-products/langa-weir-classification-cognitive-function-1995-2020>.")
    (license license:expat)))

(define-public r-lvplot
  (package
    (name "r-lvplot")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lvplot" version))
       (sha256
        (base32 "0zby40866kvqxdz4hk6r0f4rfh7rzmy0n899cjjg5rqzcap7s5di"))))
    (properties `((upstream-name . "lvplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rcolorbrewer r-ggplot2))
    (home-page "https://cran.r-project.org/package=lvplot")
    (synopsis "Letter Value 'Boxplots'")
    (description
     "This package implements the letter value boxplot which extends the standard
boxplot to deal with both larger and smaller number of data points by
dynamically selecting the appropriate number of letter values to display.")
    (license license:gpl2+)))

(define-public r-lvnet
  (package
    (name "r-lvnet")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lvnet" version))
       (sha256
        (base32 "1wqqxavs2s0hmlifyaa1jrlc8hj4z72fkgjckkmh9m2r4jp9zy0g"))))
    (properties `((upstream-name . "lvnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-semplot
                             r-qgraph
                             r-psych
                             r-openmx
                             r-mvtnorm
                             r-matrix
                             r-lavaan
                             r-glasso
                             r-dplyr
                             r-corpcor))
    (home-page "https://cran.r-project.org/package=lvnet")
    (synopsis "Latent Variable Network Modeling")
    (description
     "Estimate, fit and compare Structural Equation Models (SEM) and network models
(Gaussian Graphical Models; GGM) using @code{OpenMx}.  Allows for two possible
generalizations to include GGMs in SEM: GGMs can be used between latent
variables (latent network modeling; LNM) or between residuals (residual network
modeling; RNM).  For details, see Epskamp, Rhemtulla and Borsboom (2017)
<doi:10.1007/s11336-017-9557-x>.")
    (license license:gpl2)))

(define-public r-lvmisc
  (package
    (name "r-lvmisc")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lvmisc" version))
       (sha256
        (base32 "1yrcrgz38ql3w870agcjldr4b5ibi5g2vm8nabbgkp33wmbk3hgs"))))
    (properties `((upstream-name . "lvmisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rsample
                             r-rlang
                             r-purrr
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://lveras.com/lvmisc/")
    (synopsis "Veras Miscellaneous")
    (description
     "This package contains a collection of useful functions for basic data
computation and manipulation, wrapper functions for generating ggplot2 graphics,
including statistical model diagnostic plots, methods for computing statistical
models quality measures (such as AIC, BIC, r squared, root mean squared error)
and general utilities.")
    (license license:expat)))

(define-public r-lvmcomp
  (package
    (name "r-lvmcomp")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lvmcomp" version))
       (sha256
        (base32 "08hs97bdz4n0bdhvqqq5xywfy140s69c750rn38criq4cw4gm3z7"))))
    (properties `((upstream-name . "lvmcomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-coda))
    (home-page "https://github.com/slzhang-fd/lvmcomp")
    (synopsis
     "Stochastic EM Algorithms for Latent Variable Models with a High-Dimensional Latent Space")
    (description
     "This package provides stochastic EM algorithms for latent variable models with a
high-dimensional latent space.  So far, we provide functions for confirmatory
item factor analysis based on the multidimensional two parameter logistic (M2PL)
model and the generalized multidimensional partial credit model.  These
functions scale well for problems with many latent traits (e.g., thirty or even
more) and are virtually tuning-free.  The computation is facilitated by
multiprocessing @code{OpenMP} API. For more information, please refer to: Zhang,
S., Chen, Y., & Liu, Y. (2018).  An Improved Stochastic EM Algorithm for
Large-scale Full-information Item Factor Analysis.  British Journal of
Mathematical and Statistical Psychology. <doi:10.1111/bmsp.12153>.")
    (license license:gpl3)))

(define-public r-lvgp
  (package
    (name "r-lvgp")
    (version "2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LVGP" version))
       (sha256
        (base32 "03sd777s16nv04ikn9b3rj67ad6n4bwi0rycc7wqdnq0dx6xgniy"))))
    (properties `((upstream-name . "LVGP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randtoolbox r-lhs))
    (home-page "https://cran.r-project.org/package=LVGP")
    (synopsis
     "Latent Variable Gaussian Process Modeling with Qualitative and Quantitative Input Variables")
    (description
     "Fit response surfaces for datasets with latent-variable Gaussian process
modeling, predict responses for new inputs, and plot latent variables locations
in the latent space (only 1D or 2D).  The input variables of the datasets can be
quantitative, qualitative/categorical or mixed.  The output variable of the
datasets is a scalar (quantitative).  The optimization of the likelihood
function is done using a successive approximation/relaxation algorithm similar
to another GP modeling package \"GPM\".  The modeling method is published in \"A
Latent Variable Approach to Gaussian Process Modeling with Qualitative and
Quantitative Factors\" by Yichi Zhang, Siyu Tao, Wei Chen, and Daniel W. Apley
(2018) <@code{arXiv:1806.07504>}.  The package is developed in IDEAL of
Northwestern University.")
    (license license:gpl2)))

(define-public r-luzlogr
  (package
    (name "r-luzlogr")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "luzlogr" version))
       (sha256
        (base32 "0x9dzkhshnsspj0pisjn11b76422akj3jl6s109m60kq7rykcqyp"))))
    (properties `((upstream-name . "luzlogr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=luzlogr")
    (synopsis "Lightweight Logging for R Scripts")
    (description
     "This package provides flexible but lightweight logging facilities for R scripts.
 Supports priority levels for logs and messages, flagging messages, capturing
script output, switching logs, and logging to files or connections.")
    (license license:expat)))

(define-public r-luz
  (package
    (name "r-luz")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "luz" version))
       (sha256
        (base32 "0agpcs4m3yil19bzanj08qqnsirnld4pdkqwzfyynalsi7hgvmzl"))))
    (properties `((upstream-name . "luz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-torch
                             r-rlang
                             r-r6
                             r-purrr
                             r-progress
                             r-prettyunits
                             r-magrittr
                             r-glue
                             r-generics
                             r-fs
                             r-coro
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://mlverse.github.io/luz/")
    (synopsis "Higher Level 'API' for 'torch'")
    (description
     "This package provides a high level interface for torch providing utilities to
reduce the the amount of code needed for common tasks, abstract away torch
details and make the same code work on both the CPU and GPU'.  It's flexible
enough to support expressing a large range of models.  It's heavily inspired by
fastai by Howard et al. (2020) <doi:10.48550/@code{arXiv.2002.04688>}, Keras by
Chollet et al. (2015) and @code{PyTorch} Lightning by Falcon et al. (2019)
<doi:10.5281/zenodo.3828935>.")
    (license license:expat)))

(define-public r-lutz
  (package
    (name "r-lutz")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lutz" version))
       (sha256
        (base32 "19p41pz2q5abqi6ba4l6fzww90g11lscjz2223ml0gkcryxn3447"))))
    (properties `((upstream-name . "lutz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-lubridate))
    (home-page "https://andyteucher.ca/lutz/")
    (synopsis "Look Up Time Zones of Point Coordinates")
    (description
     "Input latitude and longitude values or an sf/sfc POINT object and get back the
time zone in which they exist.  Two methods are implemented.  One is very fast
and uses Rcpp in conjunction with data from the Javascript library
(<https://github.com/darkskyapp/tz-lookup-oss/>).  This method also works
outside of countries borders and in international waters, however speed comes at
the cost of accuracy - near time zone borders away from populated centres there
is a chance that it will return the incorrect time zone.  The other method is
slower but more accurate - it uses the sf package to intersect points with a
detailed map of time zones from here:
<https://github.com/evansiroky/timezone-boundary-builder/>.  The package also
contains several utility functions for helping to understand and visualize time
zones, such as listing of world time zones, including information about daylight
savings times and their offsets from UTC. You can also plot a time zone to
visualize the UTC offset over a year and when daylight savings times are in
effect.")
    (license license:expat)))

(define-public r-lunar
  (package
    (name "r-lunar")
    (version "0.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lunar" version))
       (sha256
        (base32 "0mmy68wawrh7rxk0mqq6f3vhmcwbx27xsp7g63v1djz7rx2w69yv"))))
    (properties `((upstream-name . "lunar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lunar")
    (synopsis
     "Calculate Lunar Phase & Distance, Seasons and Related Environmental Factors")
    (description
     "This package provides functions to calculate lunar and other related
environmental covariates.")
    (license license:expat)))

(define-public r-luminescence
  (package
    (name "r-luminescence")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Luminescence" version))
       (sha256
        (base32 "05jrw2nys0h48b3xqda5m956ya8njzydzy6ph08941i5bm8y1cq8"))))
    (properties `((upstream-name . "Luminescence")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-xml
                             r-shape
                             r-rcpparmadillo
                             r-rcpp
                             r-minpack-lm
                             r-mclust
                             r-matrixstats
                             r-lamw
                             r-interp
                             r-httr
                             r-deoptim
                             r-data-table
                             r-bbmle))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://r-lum.github.io/Luminescence/")
    (synopsis "Comprehensive Luminescence Dating Data Analysis")
    (description
     "This package provides a collection of various R functions for the purpose of
Luminescence dating data analysis.  This includes, amongst others, data import,
export, application of age models, curve deconvolution, sequence analysis and
plotting of equivalent dose distributions.")
    (license license:gpl3)))

(define-public r-lumberjack
  (package
    (name "r-lumberjack")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lumberjack" version))
       (sha256
        (base32 "15yp64vrl4wzxb3zmakiaqnz1mp0xqjfj7wbn56rm33slxwqrrkw"))))
    (properties `((upstream-name . "lumberjack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6))
    (home-page "https://github.com/markvanderloo/lumberjack")
    (synopsis "Track Changes in Data")
    (description
     "This package provides a framework that allows for easy logging of changes in
data.  Main features: start tracking changes by adding a single line of code to
an existing script.  Track changes in multiple datasets, using multiple loggers.
 Add custom-built loggers or use loggers offered by other packages.
<doi:10.18637/jss.v098.i01>.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-lulcc
  (package
    (name "r-lulcc")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lulcc" version))
       (sha256
        (base32 "00ymbp20kbjyzrsrxa262y0y7fj4jgsbqf56aapb657xvafxvy5q"))))
    (properties `((upstream-name . "lulcc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rocr r-rastervis r-raster r-lattice))
    (home-page "https://cran.r-project.org/package=lulcc")
    (synopsis "Land Use Change Modelling in R")
    (description
     "This package provides classes and methods for spatially explicit land use change
modelling in R.")
    (license license:gpl2+)))

(define-public r-lulab-utils
  (package
    (name "r-lulab-utils")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lulab.utils" version))
       (sha256
        (base32 "0rll4x1fjxr1308fhymi40cml31ysh0z45vzq8hprplr9f5fqrqc"))))
    (properties `((upstream-name . "lulab.utils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-table1
                             r-stringr
                             r-rappdirs
                             r-purrr
                             r-openxlsx
                             r-magrittr
                             r-httr2
                             r-dplyr
                             r-descr
                             r-car
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://leslie-lu.github.io/")
    (synopsis "Supporting Functions Maintained by Zhen Lu")
    (description
     "Miscellaneous functions commonly used by @code{LuLab}.  This package aims to
help more researchers on epidemiology to perform data management and
visualization more efficiently.")
    (license license:artistic2.0)))

(define-public r-lue
  (package
    (name "r-lue")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lue" version))
       (sha256
        (base32 "0is5rd1dz91bzphmfbbzi3s6rgc5g9qza2r26k70xs67dgn0qbjq"))))
    (properties `((upstream-name . "lue")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-raster r-ncdf4))
    (home-page "https://cran.r-project.org/package=lue")
    (synopsis
     "Light Use Efficiency Model to Estimate Biomass and YIELD with and Without Vapour Pressure Deficit")
    (description
     "This package contains @code{LUE_BIOMASS(),LUE_BIOMASS_VPD()}, @code{LUE_YIELD()}
and @code{LUE_YIELD_VPD()} to estimate aboveground biomass and crop yield
firstly by calculating the Absorbed Photosynthetically Active Radiation (APAR)
and secondly the actual values of light use efficiency with and without vapour
presure deficit Shi et al.(2007) <doi:10.2134/agronj2006.0260>.")
    (license license:gpl2)))

(define-public r-ludic
  (package
    (name "r-ludic")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ludic" version))
       (sha256
        (base32 "19g38jr9im6shla7paldfddm2gz8ywm7dbqis9slppy9fqpm8dlw"))))
    (properties `((upstream-name . "ludic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rootsolve
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-landpred
                             r-fgarch))
    (home-page "https://borishejblum.github.io/ludic/")
    (synopsis "Linkage Using Diagnosis Codes")
    (description
     "Probabilistic record linkage without direct identifiers using only diagnosis
codes.  Method is detailed in: Hejblum, Weber, Liao, Palmer, Churchill,
Szolovits, Murphy, Kohane & Cai (2019) <doi: 10.1038/sdata.2018.298> ; Zhang,
Hejblum, Weber, Palmer, Churchill, Szolovits, Murphy, Liao, Kohane & Cai (2021)
<doi: 10.1093/jamia/ocab187>.")
    (license license:expat)))

(define-public r-lucidus
  (package
    (name "r-lucidus")
    (version "3.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LUCIDus" version))
       (sha256
        (base32 "1gxhad64hwyfq2ff21mphlbawclxap684717x4jg5bnnbphihi4d"))))
    (properties `((upstream-name . "LUCIDus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-progress
                             r-nnet
                             r-networkd3
                             r-mclust
                             r-jsonlite
                             r-glmnet
                             r-glasso
                             r-boot))
    (home-page "https://cran.r-project.org/package=LUCIDus")
    (synopsis "LUCID with Multiple Omics Data")
    (description
     "An implementation of estimating the Latent Unknown Clusters By Integrating
Multi-omics Data (LUCID) model (Peng (2019)
<doi:10.1093/bioinformatics/btz667>).  LUCID conducts integrated clustering
using exposures, omics information (and outcome information as an option).  This
package implements three different integration strategies for multi-omics data
analysis within the LUCID framework: LUCID early integration (the original LUCID
model), LUCID in parallel (intermediate integration), and LUCID in serial (late
integration).  Automated model selection for each LUCID model is available to
obtain the optimal number of latent clusters, and an integrated imputation
approach is implemented to handle sporadic and list-wise missingness in
multi-omics data.  Lasso-type regularity for exposure and omics features were
added.  S3 methods for summary and plotting functions were fixed.  Fixed minor
bugs.")
    (license license:expat)))

(define-public r-lucid
  (package
    (name "r-lucid")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lucid" version))
       (sha256
        (base32 "02jn3zgcsw8wqab3cdp5s4h1lfrx72xfnh7ypi8rcd9gmsbcaf5q"))))
    (properties `((upstream-name . "lucid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme))
    (native-inputs (list r-knitr))
    (home-page "https://kwstat.github.io/lucid/")
    (synopsis "Printing Floating Point Numbers in a Human-Friendly Format")
    (description
     "Print vectors (and data frames) of floating point numbers using a non-scientific
format optimized for human readers.  Vectors of numbers are rounded using
significant digits, aligned at the decimal point, and all zeros trailing the
decimal point are dropped.  See: Wright (2016).  Lucid: An R Package for
Pretty-Printing Floating Point Numbers.  In JSM Proceedings, Statistical
Computing Section.  Alexandria, VA: American Statistical Association.
2270-2279.")
    (license license:expat)))

(define-public r-lucas
  (package
    (name "r-lucas")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lucas" version))
       (sha256
        (base32 "1ws35f2pq2y7nnik40nj4qpz1d499gfc5isr1409pwy6r5knb78q"))))
    (properties `((upstream-name . "lucas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpostgresql r-rpostgis r-plyr r-dbi))
    (home-page "https://cran.r-project.org/package=lucas")
    (synopsis "Package to Download and Create the DB of LUCAS Data Harmonized")
    (description
     "Reproduces the harmonized DB of the ESTAT survey of the same name.  The survey
data is served as separate spreadsheets with noticeable differences in the
collected attributes.  The tool here presented carries out a series of
instructions that harmonize the attributes in terms of name, meaning, and
occurrence, while also introducing a series of new variables, instrumental to
adding value to the product.  Outputs include one harmonized table with all the
years, and three separate geometries, corresponding to the theoretical point,
the gps location where the measurement was made and the 250m east-facing
transect.")
    (license license:gpl3+)))

(define-public r-lubrilog
  (package
    (name "r-lubrilog")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lubrilog" version))
       (sha256
        (base32 "0y6daqwks4sb5h1789z01y0qp80gfrprxarcr2an71ijfvp8cksf"))))
    (properties `((upstream-name . "lubrilog")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lubridate r-cli))
    (home-page "https://github.com/arrismo/lubrilog")
    (synopsis "Get Insights on 'lubridate' Operations")
    (description
     "This package provides a set of tools designed to enhance transparency and
understanding of date-time manipulation functions from the lubridate package.
It provides detailed feedback about the operations performed by lubridate
functions, allowing users to better comprehend and debug their code.  These
insights serve as both a learning tool for newcomers and a debugging aid for
programmers working with date-time data.")
    (license license:gpl3+)))

(define-public r-luajr
  (package
    (name "r-luajr")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "luajr" version))
       (sha256
        (base32 "0134ykrwraq66pcd3gfgqdp3agblsl70bvafrag4yhrq52vf7a85"))))
    (properties `((upstream-name . "luajr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nicholasdavies/luajr")
    (synopsis "'LuaJIT' Scripting")
    (description
     "An interface to @code{LuaJIT} <https://luajit.org>, a just-in-time compiler for
the Lua scripting language <https://www.lua.org>.  Allows users to run Lua code
from R'.")
    (license license:expat)))

(define-public r-ltxsparklines
  (package
    (name "r-ltxsparklines")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltxsparklines" version))
       (sha256
        (base32 "0f2ycgjdw9z9m730wh3k362aq71mwmxhnsxhcjxhj8c4lknr50br"))))
    (properties `((upstream-name . "ltxsparklines")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/borisveytsman/ltxsparklines")
    (synopsis "Lightweight Sparklines for a LaTeX Document")
    (description
     "Sparklines are small plots (about one line of text high), made popular by Edward
Tufte.  This package is the interface from R to the @code{LaTeX} package
sparklines by Andreas Loeffer and Dan Luecking
(<http://www.ctan.org/pkg/sparklines>).  It can work with Sweave or knitr or
other engines that produce @code{TeX}.  The package can be used to plot vectors,
matrices, data frames, time series (in ts or zoo format).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ltsspca
  (package
    (name "r-ltsspca")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltsspca" version))
       (sha256
        (base32 "0hgl2zd8y01z8mhnqg1hlv1l7klpwhwk7q8b99pw9vgnh1f2gnfs"))))
    (properties `((upstream-name . "ltsspca")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-pracma))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ltsspca")
    (synopsis "Sparse Principal Component Based on Least Trimmed Squares")
    (description
     "Implementation of robust and sparse PCA algorithm of Wang and Van Aelst (2019)
<DOI:10.1080/00401706.2019.1671234>.")
    (license license:gpl2+)))

(define-public r-ltsk
  (package
    (name "r-ltsk")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltsk" version))
       (sha256
        (base32 "1l599dc52l5sq9avrb6ij6apxwba3qqa4vgcngmwsn9y76h3wal7"))))
    (properties `((upstream-name . "ltsk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=ltsk")
    (synopsis "Local Time Space Kriging")
    (description
     "This package implements local spatial and local spatiotemporal Kriging based on
local spatial and local spatiotemporal variograms, respectively.  The method is
documented in Kumar et al (2013) <https://www.nature.com/articles/jes201352)>.")
    (license license:gpl2)))

(define-public r-ltsa
  (package
    (name "r-ltsa")
    (version "1.4.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltsa" version))
       (sha256
        (base32 "0apiknfi0jhd2pn27ybid60ws8xbj5pgv5gak4y619g2jzmy0229"))))
    (properties `((upstream-name . "ltsa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.stats.uwo.ca/faculty/aim")
    (synopsis "Linear Time Series Analysis")
    (description
     "This package provides methods of developing linear time series modelling.
Methods are given for loglikelihood computation, forecasting and simulation.")
    (license license:gpl2+)))

(define-public r-ltrctrees
  (package
    (name "r-ltrctrees")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTRCtrees" version))
       (sha256
        (base32 "0qf3dlks1aq5xjsjrs37d3636hhiinxh52c2hfl7p04z49pz8nax"))))
    (properties `((upstream-name . "LTRCtrees")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rpart r-partykit r-inum r-icenreg))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=LTRCtrees")
    (synopsis
     "Survival Trees to Fit Left-Truncated and Right-Censored and Interval-Censored Survival Data")
    (description
     "Recursive partition algorithms designed for fitting survival trees with
left-truncated and right-censored (LTRC) data, as well as interval-censored
data.  The LTRC trees can also be used to fit survival trees with time-varying
covariates.")
    (license license:gpl3)))

(define-public r-ltpdvar
  (package
    (name "r-ltpdvar")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTPDvar" version))
       (sha256
        (base32 "0sdsdx71mpian7gfw7brkzyjjr7bai7dsdifwnib3jpq9p7w7n84"))))
    (properties `((upstream-name . "LTPDvar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LTPDvar")
    (synopsis
     "LTPD and AOQL Plans for Acceptance Sampling Inspection by Variables")
    (description
     "Calculation of rectifying LTPD and AOQL plans for sampling inspection by
variables which minimize mean inspection cost per lot of process average
quality.")
    (license license:gpl2)))

(define-public r-ltmle
  (package
    (name "r-ltmle")
    (version "1.3-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltmle" version))
       (sha256
        (base32 "1bcahkykwwn67zvi5b0aw5awd48yq8ab8y9j3yw8f5mqdbfx0cgv"))))
    (properties `((upstream-name . "ltmle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats r-matrix))
    (home-page "https://github.com/joshuaschwab/ltmle")
    (synopsis "Longitudinal Targeted Maximum Likelihood Estimation")
    (description
     "Targeted Maximum Likelihood Estimation ('TMLE') of treatment/censoring specific
mean outcome or marginal structural model for point-treatment and longitudinal
data.")
    (license license:gpl2)))

(define-public r-ltmix
  (package
    (name "r-ltmix")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltmix" version))
       (sha256
        (base32 "11da87dr040021rkiv9qa28psw4j6wivmnh0g27gav60hmgzwbvh"))))
    (properties `((upstream-name . "ltmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-gtools))
    (home-page "https://cran.r-project.org/package=ltmix")
    (synopsis
     "Left-Truncated Mixtures of Gamma, Weibull, and Lognormal Distributions")
    (description
     "Mixture modelling of one-dimensional data using combinations of left-truncated
Gamma, Weibull, and Lognormal Distributions.  Blostein, Martin & Miljkovic,
Tatjana. (2019) <doi:10.1016/j.insmatheco.2018.12.001>.")
    (license license:gpl3)))

(define-public r-ltfhplus
  (package
    (name "r-ltfhplus")
    (version "2.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTFHPlus" version))
       (sha256
        (base32 "00bwbcjs18mkxn09fz6rfg9djl90ck9rh2h21z3sf1av1kggp278"))))
    (properties `((upstream-name . "LTFHPlus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-tmvtnorm
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-igraph
                             r-future-apply
                             r-future
                             r-dplyr
                             r-batchmeans))
    (home-page "https://github.com/EmilMiP/LTFHPlus")
    (synopsis "Implementation of LT-FH++")
    (description
     "Implementation of LT-FH++, an extension of the liability threshold family
history (LT-FH) model.  LT-FH++ uses a Gibbs sampler for sampling from the
truncated multivariate normal distribution and allows for flexible family
structures.  LT-FH++ was first described in Pedersen, Emil M., et al. (2022)
<doi:10.1016/j.ajhg.2022.01.009> as an extension to LT-FH with more flexible
family structures, and again as the age-dependent liability threshold
(A@code{DuLT}) model Pedersen, Emil M., et al. (2023)
<https://www.nature.com/articles/s41467-023-41210-z> as an alternative to
traditional time-to-event genome-wide association studies, where family history
was not considered.")
    (license license:gpl3)))

(define-public r-ltfgrs
  (package
    (name "r-ltfgrs")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTFGRS" version))
       (sha256
        (base32 "0i3qk1lsks6mv6fasabfz69y9x5ml8k8yn28jk5r82varw1cdhgd"))))
    (properties `((upstream-name . "LTFGRS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-tmvtnorm
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcpp
                             r-purrr
                             r-lubridate
                             r-igraph
                             r-future-apply
                             r-future
                             r-dplyr
                             r-batchmeans))
    (native-inputs (list r-knitr))
    (home-page "https://emilmip.github.io/LTFGRS/")
    (synopsis
     "Implementation of Several Phenotype-Based Family Genetic Risk Scores")
    (description
     "Implementation of several phenotype-based family genetic risk scores with
unified input data and data preparation functions to help facilitate the
required data preparation and management.  The implemented family genetic risk
scores are the extended liability threshold model conditional on family history
(LT-FH++) from Pedersen (2022) <doi:10.1016/j.ajhg.2022.01.009> and Pedersen
(2023) <https://www.nature.com/articles/s41467-023-41210-z>, Pearson-Aitken
Family Genetic Risk Scores (PA-FGRS) from Krebs (2024)
<doi:10.1016/j.ajhg.2024.09.009>, and family genetic risk score by Kendler
(2021) <doi:10.1001/jamapsychiatry.2021.0336>.")
    (license license:gpl3+)))

(define-public r-ltertools
  (package
    (name "r-ltertools")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltertools" version))
       (sha256
        (base32 "1731v50k3akr2kjwy79l9mkhwcc15rzp0fzjr1zmgmydxyslwi1q"))))
    (properties `((upstream-name . "ltertools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-supportr
                             r-stringr
                             r-readxl
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-generics
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://lter.github.io/ltertools/")
    (synopsis "Tools Developed by the Long Term Ecological Research Community")
    (description
     "Set of the data science tools created by various members of the Long Term
Ecological Research (LTER) community.  These functions were initially written
largely as standalone operations and have later been aggregated into this
package.")
    (license license:bsd-3)))

(define-public r-lterpalettefinder
  (package
    (name "r-lterpalettefinder")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lterpalettefinder" version))
       (sha256
        (base32 "0wpqh5im43753mcb792gfvs48rm1sd1qb342kig2svbp0xaa1cnv"))))
    (properties `((upstream-name . "lterpalettefinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tiff
                             r-tidyr
                             r-png
                             r-magrittr
                             r-magick
                             r-jpeg
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lterpalettefinder")
    (synopsis
     "Extract Color Palettes from Photos and Pick Official LTER Palettes")
    (description
     "Allows identification of palettes derived from LTER (Long Term Ecological
Research) photographs based on user criteria.  Also facilitates extraction of
palettes from users photos directly.")
    (license license:bsd-3)))

(define-public r-lterdatasampler
  (package
    (name "r-lterdatasampler")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lterdatasampler" version))
       (sha256
        (base32 "1bfhsd5crhmpxbxwb5lg2gak2myxb2y8lywg8dmyyzlrlnjw93y3"))))
    (properties `((upstream-name . "lterdatasampler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/lter/lterdatasampler")
    (synopsis
     "Educational Dataset Examples from the Long Term Ecological Research Program")
    (description
     "Curated datasets from US Long Term Ecological Research sites.")
    (license license:cc0)))

(define-public r-ltcdm
  (package
    (name "r-ltcdm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTCDM" version))
       (sha256
        (base32 "0q9lj69vpkyc6a40m9xj46qi5h8h2r6rl4k49bs3z19661gcxydd"))))
    (properties `((upstream-name . "LTCDM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggsignif r-ggpubr r-ggplot2 r-gdina))
    (home-page "https://cran.r-project.org/package=LTCDM")
    (synopsis "Latent Transition Cognitive Diagnosis Model with Covariates")
    (description
     "Implementation of the three-step approach of latent transition cognitive
diagnosis model (CDM) with covariates.  This approach can be used to assess
changes in attribute mastery status and to evaluate the covariate effects on
both the initial states and transition probabilities over time using latent
logistic regression.  Because stepwise approaches often yield biased estimates,
correction for classification error probabilities (CEPs) is considered in this
approach.  The three-step approach for latent transition CDM with covariates
involves the following steps: (1) fitting a CDM to the response data without
covariates at each time point separately, (2) assigning examinees to latent
states at each time point and computing the associated CEPs, and (3) estimating
the latent transition CDM with the known CEPs and computing the regression
coefficients.  The method was proposed in Liang et al. (2023)
<doi:10.3102/10769986231163320> and demonstrated using mental health data in
Liang et al. (in press; annotated R code and data utilized in this example are
available in Mendeley data) <doi:10.17632/kpjp3gnwbt.1>.")
    (license license:gpl3)))

(define-public r-ltasr
  (package
    (name "r-ltasr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LTASR" version))
       (sha256
        (base32 "07vkdk5pfhxw4xw5m46bqhdkgyqwjjfd7jw9g4m2vmj5dr648gyk"))))
    (properties `((upstream-name . "LTASR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-zoo
                             r-xml
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-knitr
                             r-dplyr))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://cran.r-project.org/package=LTASR")
    (synopsis
     "Functions to Replicate the Center for Disease Control and Prevention's 'LTAS' Software in R")
    (description
     "This package provides a suite of functions for reading in a rate file in XML
format, stratify a cohort, and calculate SMRs from the stratified cohort and
rate file.")
    (license license:expat)))

(define-public r-ltable
  (package
    (name "r-ltable")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ltable" version))
       (sha256
        (base32 "1z3wbmxmjjwkb7f8qcpyn7a8wnh6q7592j39l4r92gq9gcg39n8x"))))
    (properties `((upstream-name . "ltable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nloptr r-mass r-clipr))
    (home-page "https://cran.r-project.org/package=ltable")
    (synopsis "Easy to Make (Lazy) Tables")
    (description
     "Constructs tables of counts and proportions out of data sets with possibility to
insert tables to Excel, Word, HTML, and PDF documents.  Transforms tables to
data suitable for modelling.  Features Gibbs sampling based log-linear (NB2) and
power analyses (original by Oleksandr Ocheredko <doi:10.35566/isdsa2019c5>) for
tabulated data.")
    (license license:gpl2+)))

(define-public r-lsx
  (package
    (name "r-lsx")
    (version "1.4.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSX" version))
       (sha256
        (base32 "1x4zc0nkfr5h4m8pj3zwv6yxmkz7yyb1mr52vd88303ymjsbc9a0"))))
    (properties `((upstream-name . "LSX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rspectra
                             r-reshape2
                             r-quanteda-textstats
                             r-quanteda
                             r-proxyc
                             r-matrix
                             r-locfit
                             r-ggrepel
                             r-ggplot2
                             r-digest))
    (home-page "https://koheiw.github.io/LSX/")
    (synopsis "Semi-Supervised Algorithm for Document Scaling")
    (description
     "This package provides a word embeddings-based semi-supervised model for document
scaling Watanabe (2020) <doi:10.1080/19312458.2020.1832976>.  LSS allows users
to analyze large and complex corpora on arbitrary dimensions with seed words
exploiting efficiency of word embeddings (SVD, Glove).  It can generate word
vectors on a users-provided corpus or incorporate a pre-trained word vectors.")
    (license license:gpl3)))

(define-public r-lswplib
  (package
    (name "r-lswplib")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSWPlib" version))
       (sha256
        (base32 "1z4lcpmbm3wdzbi04flvspkimk4jfhjqi5pd0ab4pbb0ii1z26hs"))))
    (properties `((upstream-name . "LSWPlib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh r-waveslim))
    (home-page "https://cran.r-project.org/package=LSWPlib")
    (synopsis
     "Simulation and Spectral Estimation of Locally Stationary Wavelet Packet Processes")
    (description
     "Library of functions for the statistical analysis and simulation of Locally
Stationary Wavelet Packet (LSWP) processes.  The methods implemented by this
library are described in Cardinali and Nason (2017) <doi:10.1111/jtsa.12230>.")
    (license license:gpl3)))

(define-public r-lsvar
  (package
    (name "r-lsvar")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSVAR" version))
       (sha256
        (base32 "0lhx9a5l3s2c5isd3fhvxxfdazdxddpkg07hk4rckvhmxln7j1dj"))))
    (properties `((upstream-name . "LSVAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-mvtnorm r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LSVAR")
    (synopsis
     "Estimation of Low Rank Plus Sparse Structured Vector Auto-Regressive (VAR) Model")
    (description
     "Implementations of estimation algorithm of low rank plus sparse structured VAR
model by using Fast Iterative Shrinkage-Thresholding Algorithm (FISTA).  It
relates to the algorithm in Sumanta, Li, and Michailidis (2019)
<doi:10.1109/TSP.2018.2887401>.")
    (license license:gpl2)))

(define-public r-lsts
  (package
    (name "r-lsts")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSTS" version))
       (sha256
        (base32 "0pxcw5awm6fr6v1n8gd7yap0y1mba9khwgq27qlv9h2kmrzbr3hp"))))
    (properties `((upstream-name . "LSTS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-rdpack r-patchwork r-ggplot2))
    (home-page "https://pacha.dev/LSTS/")
    (synopsis "Locally Stationary Time Series")
    (description
     "This package provides a set of functions that allow stationary analysis and
locally stationary time series analysis.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-lstmfactors
  (package
    (name "r-lstmfactors")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSTMfactors" version))
       (sha256
        (base32 "1m1vk52ssq4srvn8mvlzkqlq5hn0f0blsxmpvvphmjr7px7z944c"))))
    (properties `((upstream-name . "LSTMfactors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reticulate r-efafactors))
    (home-page "https://haijiangqin.com/LSTMfactors/")
    (synopsis
     "Determining the Number of Factors in Exploratory Factor Analysis by LSTM")
    (description
     "This package provides a method for factor retention using a pre-trained Long
Short Term Memory (LSTM) Network, which is originally developed by Hochreiter
and Schmidhuber (1997) <doi:10.1162/neco.1997.9.8.1735>, is provided.  The
sample size of the dataset used to train the LSTM model is 1,000,000.  Each
sample is a batch of simulated response data with a specific latent factor
structure.  The eigenvalues of these response data will be used as sequential
data to train the LSTM. The pre-trained LSTM is capable of factor retention for
real response data with a true latent factor number ranging from 1 to 10, that
is, determining the number of factors.")
    (license license:gpl3)))

(define-public r-lstbook
  (package
    (name "r-lstbook")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSTbook" version))
       (sha256
        (base32 "11zr03frp2wg33c3y828m8rmzj4kl0k43dxlfvr35by99kbkal0f"))))
    (properties `((upstream-name . "LSTbook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-rlang
                             r-mass
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dtkaplan/LSTbook")
    (synopsis "Data and Software for \"Lessons in Statistical Thinking\"")
    (description
     "\"Lessons in Statistical Thinking\" D.T. Kaplan (2014)
<https://dtkaplan.github.io/Lessons-in-statistical-thinking/> is a textbook for
a first or second course in statistics that embraces data wrangling, causal
reasoning, modeling, statistical adjustment, and simulation.  LSTbook supports
the student-centered, tidy, pipeline-oriented computing style featured in the
book.")
    (license license:expat)))

(define-public r-lst
  (package
    (name "r-lst")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LST" version))
       (sha256
        (base32 "16fgbj8i2j87b5r2qrq75r0l6gk56zy62i5g0jx7h078kan5vvvp"))))
    (properties `((upstream-name . "LST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra))
    (home-page "https://cran.r-project.org/package=LST")
    (synopsis "Land Surface Temperature Retrieval for Landsat 8")
    (description
     "Calculates Land Surface Temperature from Landsat band 10 and 11.  Revision of
the Single-Channel Algorithm for Land Surface Temperature Retrieval From Landsat
Thermal-Infrared Data.  Jimenez-Munoz JC, Cristobal J, Sobrino JA, et al (2009).
<doi: 10.1109/TGRS.2008.2007125>.  Land surface temperature retrieval from
LANDSAT TM 5.  Sobrino JA, JimÃ©nez-MuÃ±oz JC, Paolini L (2004).
<doi:10.1016/j.rse.2004.02.003>.  Surface temperature estimation in Singhbhum
Shear Zone of India using Landsat-7 ETM+ thermal infrared data.  Srivastava PK,
Majumdar TJ, Bhattacharya AK (2009). <doi: 10.1016/j.asr.2009.01.023>.  Mapping
land surface emissivity from NDVI: Application to European, African, and South
American areas.  Valor E (1996). <doi:10.1016/0034-4257(96)00039-9>.  On the
relationship between thermal emissivity and the normalized difference vegetation
index for natural surfaces.  Van de Griend AA, Owe M (1993).
<doi:10.1080/01431169308904400>.  Land Surface Temperature Retrieval from
Landsat 8 TIRSâComparison between Radiative Transfer Equation-Based Method,
Split Window Algorithm and Single Channel Method.  Yu X, Guo X, Wu Z (2014).
<doi:10.3390/rs6109829>.  Calibration and Validation of land surface temperature
for Landsat8-TIRS sensor.  Land product validation and evolution.  SkokoviÄ D,
Sobrino JA, Jimenez-Munoz JC, Soria G, Julien Y, Mattar C, CristÃ³bal J. (2014).")
    (license license:agpl3)))

(define-public r-lss2
  (package
    (name "r-lss2")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lss2" version))
       (sha256
        (base32 "1rkv26zq36zyh891xkkllxphwplljmzpy15g619x1w4qvsajyyg8"))))
    (properties `((upstream-name . "lss2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg))
    (home-page "https://cran.r-project.org/package=lss2")
    (synopsis
     "The Accelerated Failure Time Model to Right Censored Data Based on Least-Squares Principle")
    (description
     "Due to lack of proper inference procedure and software, the ordinary linear
regression model is seldom used in practice for the analysis of right censored
data.  This paper presents an S-Plus/R program that implements a recently
developed inference procedure (Jin, Lin and Ying, 2006)
<doi:10.1093/biomet/93.1.147> for the accelerated failure time model based on
the least-squares principle.")
    (license license:gpl2+)))

(define-public r-lsrs
  (package
    (name "r-lsrs")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSRS" version))
       (sha256
        (base32 "0p70v5vbxi1rf055mqgsp8v0lxnaj53bmbghli1764yn3x1k3iw6"))))
    (properties `((upstream-name . "LSRS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LSRS")
    (synopsis "Land Surface Remote Sensing")
    (description
     "Rapid satellite data streams in operational applications have clear benefits for
monitoring land cover, especially when information can be delivered as fast as
changing surface conditions.  Over the past decade, remote sensing has become a
key tool for monitoring and predicting environmental variables by using
satellite data.  This package presents the main applications in remote sensing
for land surface monitoring and land cover mapping (soil, vegetation, water...).
 Tomlinson, C.J., Chapman, L., Thornes, E., Baker, C (2011)
<doi:10.1002/met.287>.")
    (license license:gpl3)))

(define-public r-lsr
  (package
    (name "r-lsr")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsr" version))
       (sha256
        (base32 "00mbnla74k7xcs8640chkcjydi945dahs2d6h1lv89nsrm8hpzx9"))))
    (properties `((upstream-name . "lsr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/djnavarro/lsr")
    (synopsis "Companion to \"Learning Statistics with R\"")
    (description
     "This package provides a collection of tools intended to make introductory
statistics easier to teach, including wrappers for common hypothesis tests and
basic data manipulation.  It accompanies Navarro, D. J. (2015).  Learning
Statistics with R: A Tutorial for Psychology Students and Other Beginners,
Version 0.6.")
    (license license:expat)))

(define-public r-lspls
  (package
    (name "r-lspls")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lspls" version))
       (sha256
        (base32 "1cmffkyc881659l9m1miwhr3jfpwb0xb9n5chg317vcm8l9r4wcn"))))
    (properties `((upstream-name . "lspls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pls))
    (home-page "http://mevik.net/work/software/lspls.html")
    (synopsis "LS-PLS Models")
    (description
     "This package implements the LS-PLS (least squares - partial least squares)
method described in for instance JÃ¸rgensen, K., Segtnan, V. H., Thyholt, K.,
NÃ¦s, T. (2004) \"A Comparison of Methods for Analysing Regression Models with
Both Spectral and Designed Variables\" Journal of Chemometrics, 18(10), 451--464,
<doi:10.1002/cem.890>.")
    (license license:gpl2)))

(define-public r-lspline
  (package
    (name "r-lspline")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lspline" version))
       (sha256
        (base32 "0bc1nfpp1r5fi8rrg295k4r8pm03baqplrzwmk3sn4kdbp0apvgk"))))
    (properties `((upstream-name . "lspline")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lspline")
    (synopsis "Linear Splines with Convenient Parametrisations")
    (description
     "Linear splines with convenient parametrisations such that (1) coefficients are
slopes of consecutive segments or (2) coefficients are slope changes at
consecutive knots.  Knots can be set manually or at break points of
equal-frequency or equal-width intervals covering the range of x'.  The
implementation follows Greene (2003), chapter 7.2.5.")
    (license license:expat)))

(define-public r-lspfp
  (package
    (name "r-lspfp")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSPFP" version))
       (sha256
        (base32 "0wxqpwfyyhk9dig9ji5na7czk19jx14lr9iqb2rllggz4cji9y65"))))
    (properties `((upstream-name . "LSPFP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinr r-rcurl r-r-utils r-data-table r-bit64))
    (home-page "https://cran.r-project.org/package=LSPFP")
    (synopsis "Lysate and Secretome Peptide Feature Plotter")
    (description
     "This package creates plots of peptides from shotgun proteomics analysis of
secretome and lysate samples.  These plots contain associated protein features
and scores for potential secretion and truncation.")
    (license license:gpl3)))

(define-public r-lspartition
  (package
    (name "r-lspartition")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lspartition" version))
       (sha256
        (base32 "17v85al3a1b8gk8vhcp8c7in5lah3p1hm78slhhyr6545b6gdvzw"))))
    (properties `((upstream-name . "lspartition")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma
                             r-mgcv
                             r-matrixstats
                             r-mass
                             r-ggplot2
                             r-dplyr
                             r-combinat))
    (home-page "https://cran.r-project.org/package=lspartition")
    (synopsis
     "Nonparametric Estimation and Inference Procedures using Partitioning-Based Least Squares Regression")
    (description
     "This package provides tools for statistical analysis using partitioning-based
least squares regression as described in Cattaneo, Farrell and Feng (2020a,
<doi:10.48550/@code{arXiv.1804.04916>}) and Cattaneo, Farrell and Feng (2020b,
<doi:10.48550/@code{arXiv.1906.00202>}): @code{lsprobust()} for nonparametric
point estimation of regression functions and their derivatives and for robust
bias-corrected (pointwise and uniform) inference; @code{lspkselect()} for
data-driven selection of the IMSE-optimal number of knots;
@code{lsprobust.plot()} for regression plots with robust confidence intervals
and confidence bands; @code{lsplincom()} for estimation and inference for linear
combinations of regression functions from different groups.")
    (license license:gpl2)))

(define-public r-lsoda
  (package
    (name "r-lsoda")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsoda" version))
       (sha256
        (base32 "1rbw66xs5xa8b2pgkdhy5acv7g250hanqhwkvxmc15al3nyjmdc5"))))
    (properties `((upstream-name . "lsoda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/mclements/lsoda")
    (synopsis "'C++' Header Library for Ordinary Differential Equations")
    (description
     "This package provides a C++ header library for using the libsoda-cxx library
with R. The C++ header reimplements the lsoda function from the ODEPACK library
for solving initial value problems for first order ordinary differential
equations (Hindmarsh, 1982;
<https://computing.llnl.gov/sites/default/files/ODEPACK_pub1_u88007.pdf>).  The
C++ header can be used by other R packages by linking against this package.  The
C++ functions can be called inline using Rcpp'.  Finally, the package provides
an ode function to call from R.")
    (license license:expat)))

(define-public r-lsmrealoptions
  (package
    (name "r-lsmrealoptions")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSMRealOptions" version))
       (sha256
        (base32 "0paa5yahpyr8jpgy8aqk2fcixdny6ip09vqm8varvpiqfxrjd6ww"))))
    (properties `((upstream-name . "LSMRealOptions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LSMRealOptions")
    (synopsis "Value American and Real Options Through LSM Simulation")
    (description
     "The least-squares Monte Carlo (LSM) simulation method is a popular method for
the approximation of the value of early and multiple exercise options.
LSM@code{RealOptions} provides implementations of the LSM simulation method to
value American option products and capital investment projects through real
options analysis.  LSM@code{RealOptions} values capital investment projects with
cash flows dependent upon underlying state variables that are stochastically
evolving, providing analysis into the timing and critical values at which
investment is optimal.  LSM@code{RealOptions} provides flexibility in the
stochastic processes followed by underlying assets, the number of state
variables, basis functions and underlying asset characteristics to allow a broad
range of assets to be valued through the LSM simulation method.  Real options
projects are further able to be valued whilst considering construction periods,
time-varying initial capital expenditures and path-dependent operational
flexibility including the ability to temporarily shutdown or permanently abandon
projects after initial investment has occurred.  The LSM simulation method was
first presented in the prolific work of Longstaff and Schwartz (2001)
<doi:10.1093/rfs/14.1.113>.")
    (license license:gpl3)))

(define-public r-lsmontecarlo
  (package
    (name "r-lsmontecarlo")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSMonteCarlo" version))
       (sha256
        (base32 "0w5042phkba5dw92r67ppp2s4khjpw5mm701dh9dya9lhj88bz6s"))))
    (properties `((upstream-name . "LSMonteCarlo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-fbasics))
    (home-page "https://cran.r-project.org/package=LSMonteCarlo")
    (synopsis "American options pricing with Least Squares Monte Carlo method")
    (description
     "The package compiles functions for calculating prices of American put options
with Least Squares Monte Carlo method.  The option types are plain vanilla
American put, Asian American put, and Quanto American put.  The pricing
algorithms include variance reduction techniques such as Antithetic Variates and
Control Variates.  Additional functions are given to derive \"price surfaces\" at
different volatilities and strikes, create 3-D plots, quickly generate Geometric
Brownian motion, and calculate prices of European options with Black & Scholes
analytical solution.")
    (license license:gpl3)))

(define-public r-lsmeans
  (package
    (name "r-lsmeans")
    (version "2.30-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsmeans" version))
       (sha256
        (base32 "1q6y0l0s8wz7jqhvia7bzhas8ipa7v9jary1n9hr1zj2j079a38v"))))
    (properties `((upstream-name . "lsmeans")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-emmeans))
    (home-page "https://cran.r-project.org/package=lsmeans")
    (synopsis "Least-Squares Means")
    (description
     "Obtain least-squares means for linear, generalized linear, and mixed models.
Compute contrasts or linear functions of least-squares means, and comparisons of
slopes.  Plots and compact letter displays.  Least-squares means were proposed
in Harvey, W (1960) \"Least-squares analysis of data with unequal subclass
numbers\", Tech Report ARS-20-8, USDA National Agricultural Library, and
discussed further in Searle, Speed, and Milliken (1980) \"Population marginal
means in the linear model: An alternative to least squares means\", The American
Statistician 34(4), 216-221 <doi:10.1080/00031305.1980.10483031>.  NOTE: lsmeans
now relies primarily on code in the emmeans package.  lsmeans will be archived
in the near future.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-lsm
  (package
    (name "r-lsm")
    (version "0.2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsm" version))
       (sha256
        (base32 "0gpca0bf51ihs1w6cp1awrs85jzcbrdkhd9icjnbnsawmyrky55n"))))
    (properties `((upstream-name . "lsm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=lsm")
    (synopsis "Estimation of the log Likelihood of the Saturated Model")
    (description
     "When the values of the outcome variable Y are either 0 or 1, the function
@code{lsm()} calculates the estimation of the log likelihood in the saturated
model.  This model is characterized by Llinas (2006, ISSN:2389-8976) in section
2.3 through the assumptions 1 and 2.  The function @code{LogLik()} works (almost
perfectly) when the number of independent variables K is high, but for small K
it calculates wrong values in some cases.  For this reason, when Y is
dichotomous and the data are grouped in J populations, it is recommended to use
the function @code{lsm()} because it works very well for all K.")
    (license license:expat)))

(define-public r-lslx
  (package
    (name "r-lslx")
    (version "0.6.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lslx" version))
       (sha256
        (base32 "1mjkz3zgcajrrkq1igqq0a1rpxwvv41ankr5mj6mcjqpg4ggng1p"))))
    (properties `((upstream-name . "lslx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp r-r6 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/psyphh/lslx/wiki")
    (synopsis
     "Semi-Confirmatory Structural Equation Modeling via Penalized Likelihood or Least Squares")
    (description
     "Fits semi-confirmatory structural equation modeling (SEM) via penalized
likelihood (PL) or penalized least squares (PLS).  For details, please see Huang
(2020) <doi:10.18637/jss.v093.i07>.")
    (license license:gpl3)))

(define-public r-lsl
  (package
    (name "r-lsl")
    (version "0.5.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsl" version))
       (sha256
        (base32 "1hwzklx1qp5ljc059j2hridg3caw4cgn7rbqs8xh2arzcvqdw3rb"))))
    (properties `((upstream-name . "lsl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-lavaan r-ggplot2))
    (home-page "https://cran.r-project.org/package=lsl")
    (synopsis "Latent Structure Learning")
    (description "Fits structural equation modeling via penalized likelihood.")
    (license license:gpl3+)))

(define-public r-lsirm12pl
  (package
    (name "r-lsirm12pl")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsirm12pl" version))
       (sha256
        (base32 "0v2pdw0g56qz1z0cm3q2sxs92qry21xfv7pspb55g68bkyfjjjqb"))))
    (properties `((upstream-name . "lsirm12pl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-spatstat-random
                             r-spatstat-geom
                             r-spatstat
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-proc
                             r-plyr
                             r-plotly
                             r-mcmcpack
                             r-kernlab
                             r-gridextra
                             r-gparotation
                             r-ggplot2
                             r-fpc
                             r-dplyr
                             r-coda))
    (home-page "https://cran.r-project.org/package=lsirm12pl")
    (synopsis "Latent Space Item Response Model")
    (description
     "Analysis of dichotomous and continuous response data using latent factor by both
1PL LSIRM and 2PL LSIRM as described in Jeon et al. (2021)
<doi:10.1007/s11336-021-09762-5>.  It includes original 1PL LSIRM and 2PL LSIRM
provided for binary response data and its extension for continuous response
data.  Bayesian model selection with spike-and-slab prior and method for dealing
data with missing value under missing at random, missing completely at random
are also supported.  Various diagnostic plots are available to inspect the
latent space and summary of estimated parameters.")
    (license license:gpl3)))

(define-public r-lsebootls
  (package
    (name "r-lsebootls")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSEbootLS" version))
       (sha256
        (base32 "11ckfrlhz4zgz5bzbvbrx5j8dcxs2ka4xv8f2b2mlpv6jr9f5h1y"))))
    (properties `((upstream-name . "LSEbootLS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-rlecuyer
                             r-lsts
                             r-iterators
                             r-foreach
                             r-dorng
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=LSEbootLS")
    (synopsis
     "Bootstrap Methods for Regression Models with Locally Stationary Errors")
    (description
     "This package implements bootstrap methods for linear regression models with
errors following a time-varying process, focusing on approximating the
distribution of the least-squares estimator for regression models with locally
stationary errors.  It enables the construction of bootstrap and classical
confidence intervals for regression coefficients, leveraging intensive
simulation studies and real data analysis.")
    (license license:gpl3+)))

(define-public r-lse
  (package
    (name "r-lse")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSE" version))
       (sha256
        (base32 "01qj0zasv7dbwg0qxryz1d5jp4rapvnm9i6a4jd7c4pxqdm11j7y"))))
    (properties `((upstream-name . "LSE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-mass))
    (home-page "https://github.com/sergio05acm/LSE")
    (synopsis "Constrained Least Squares and Generalized QR Factorization")
    (description
     "The solution of equality constrained least squares problem (LSE) is given
through four analytics methods (Generalized QR Factorization, Lagrange
Multipliers, Direct Elimination and Null Space method).  We expose the
orthogonal decomposition called Generalized QR Factorization (GQR) and also RQ
factorization.  Finally some codes for the solution of LSE applied in
quaternions.")
    (license license:gpl3)))

(define-public r-lsdsensitivity
  (package
    (name "r-lsdsensitivity")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSDsensitivity" version))
       (sha256
        (base32 "0r308ja0nd239bwfz537qz6q4a1y8iirb0fmg9qq6s6hdfzwhz80"))))
    (properties `((upstream-name . "LSDsensitivity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-tseries
                             r-sensitivity
                             r-rgenoud
                             r-randtoolbox
                             r-lsdinterface
                             r-lawstat
                             r-ksamples
                             r-diptest
                             r-dicekriging
                             r-car
                             r-abind))
    (home-page "https://cran.r-project.org/package=LSDsensitivity")
    (synopsis "Sensitivity Analysis Tools for LSD Simulations")
    (description
     "This package provides tools for sensitivity analysis of LSD simulation models.
Reads object-oriented data produced by LSD simulation models and performs
screening and global sensitivity analysis (Sobol decomposition method, Saltelli
et al. (2008) ISBN:9780470725177).  A Kriging or polynomial meta-model (Kleijnen
(2009) <doi:10.1016/j.ejor.2007.10.013>) is estimated using the simulation data
to provide the data required by the Sobol decomposition.  LSD (Laboratory for
Simulation Development) is free software developed by Marco Valente and Marcelo
C. Pereira (documentation and downloads available at
<https://www.labsimdev.org/>).")
    (license license:gpl3)))

(define-public r-lsdirf
  (package
    (name "r-lsdirf")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSDirf" version))
       (sha256
        (base32 "0malgsq6gdc53iylkbbndn11b9pf5l7wdaj406ips2k42idfzk91"))))
    (properties `((upstream-name . "LSDirf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randomforest
                             r-partykit
                             r-gplots
                             r-digest
                             r-boot
                             r-abind))
    (home-page "https://cran.r-project.org/package=LSDirf")
    (synopsis "Impulse-Response Function Analysis for Agent-Based Models")
    (description
     "Performing impulse-response function (IRF) analysis of relevant variables of
agent-based simulation models, in particular for models described in LSD format.
 Based on the data produced by the simulation model, it performs both linear and
state-dependent IRF analysis, providing the tools required by the Counterfactual
Monte Carlo (CMC) methodology (Amendola and Pereira (2024)
<doi:10.2139/ssrn.4740360>), including state identification and sensitivity.
CMC proposes retrieving the causal effect of shocks by exploiting the
opportunity to directly observe the counterfactual in a fully controlled
experimental setup.  LSD (Laboratory for Simulation Development) is free
software available at <https://www.labsimdev.org/>).")
    (license license:gpl3)))

(define-public r-lsdinterface
  (package
    (name "r-lsdinterface")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSDinterface" version))
       (sha256
        (base32 "10g7hlqg99hjachjsfa7bx1s7h4f7avf3jway7zdmagv0kh54rxs"))))
    (properties `((upstream-name . "LSDinterface")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tsdist r-boot r-abind))
    (home-page "https://cran.r-project.org/package=LSDinterface")
    (synopsis "Interface Tools for LSD Simulation Results Files")
    (description
     "Interfaces R with LSD simulation models.  Reads object-oriented data in results
files (.res[.gz]) produced by LSD and creates appropriate multi-dimensional
arrays in R. Supports multiple core parallel threads of multi-file data reading
for increased performance.  Also provides functions to extract basic information
and statistics from data files.  LSD (Laboratory for Simulation Development) is
free software developed by Marco Valente and Marcelo C. Pereira (documentation
and downloads available at <https://www.labsimdev.org/>).")
    (license license:gpl3)))

(define-public r-lsdbc
  (package
    (name "r-lsdbc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsdbc" version))
       (sha256
        (base32 "1dk07zlvwwfhlll21ql264gx94v3jvgidy3yvxidwmhnyc1vx80x"))))
    (properties `((upstream-name . "lsdbc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lsdbc")
    (synopsis "Locally Scaled Density Based Clustering")
    (description
     "Implementation of Locally Scaled Density Based Clustering (LSDBC) algorithm
proposed by Bicici and Yuret (2007) <doi:10.1007/978-3-540-71618-1_82>.  This
package also contains some supporting functions such as @code{betaCV()} function
and @code{get_spectral()} function.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lsbs
  (package
    (name "r-lsbs")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsbs" version))
       (sha256
        (base32 "14aq80zg89lq7hffv1v1m4n7hbzqzxkazcga4y2fq40ij3v7kv6n"))))
    (properties `((upstream-name . "lsbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-matrix r-ks))
    (home-page "http://arxiv.org/abs/1806.00731")
    (synopsis "Bandwidth Selection for Level Sets and HDR Estimation")
    (description
     "Bandwidth selection for kernel density estimators of 2-d level sets and highest
density regions.  It applies a plug-in strategy to estimate the asymptotic risk
function and minimize to get the optimal bandwidth matrix.  See Doss and Weng
(2018) <@code{arXiv:1806.00731>} for more detail.")
    (license license:gpl3)))

(define-public r-lsasim
  (package
    (name "r-lsasim")
    (version "2.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lsasim" version))
       (sha256
        (base32 "0nflqz1zwgyrk75jyyizv69jvxcskz94pp0m325x8210ldhrdfd9"))))
    (properties `((upstream-name . "lsasim")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-polycor r-mvtnorm r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lsasim")
    (synopsis
     "Functions to Facilitate the Simulation of Large Scale Assessment Data")
    (description
     "This package provides functions to simulate data from large-scale educational
assessments, including background questionnaire data and cognitive item
responses that adhere to a multiple-matrix sampled design.  The theoretical
foundation can be found on Matta, T.H., Rutkowski, L., Rutkowski, D. et al.
(2018) <doi:10.1186/s40536-018-0068-8>.")
    (license license:gpl3)))

(define-public r-lsamitr
  (package
    (name "r-lsamitr")
    (version "1.0-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSAmitR" version))
       (sha256
        (base32 "1c2i9wy72v9923ngkipwmc49nc6r3znibadgffzkhci583ib55ym"))))
    (properties `((upstream-name . "LSAmitR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lme4 r-hmisc))
    (home-page
     "https://www.iqs.gv.at/themen/bildungsforschung/publikationen/veroeffentlichte-publikationen")
    (synopsis
     "Daten, Beispiele und Funktionen zu 'Large-Scale Assessment mit R'")
    (description
     "Dieses R-Paket stellt Zusatzmaterial in Form von Daten, Funktionen und
R-Hilfe-Seiten fÃ¼r den Herausgeberband Breit, S. und Schreiner, C. (Hrsg.).
(2016). \"Large-Scale Assessment mit R: Methodische Grundlagen der
Ã¶sterreichischen BildungsstandardÃ¼berprÃ¼fung.\" Wien: facultas. (ISBN:
978-3-7089-1343-8,
<https://www.iqs.gv.at/themen/bildungsforschung/publikationen/veroeffentlichte-publikationen>)
zur VerfÃ¼gung.")
    (license license:gpl3+)))

(define-public r-lsamba
  (package
    (name "r-lsamba")
    (version "2024.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSAMBA" version))
       (sha256
        (base32 "0hal52c4diaakli002h85v0hdjysx28wqfahrl2ymqajajk9m8cx"))))
    (properties `((upstream-name . "LSAMBA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-stringr
                             r-sharp
                             r-rsmlx
                             r-mass
                             r-latex2exp
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=LSAMBA")
    (synopsis "Lasso-SAMBA Algorithm")
    (description
     "This package provides a lasso-based method for building mechanistic models using
the SAMBA algorithm (Stochastic Approximation for Model Building Algorithm) (M
Prague, M Lavielle (2022) <doi:10.1002/psp4.12742>).  The package extends the
Rsmlx package (version 2024.1.0) to better handle high-dimensional data.  It
relies on the Monolix software (version 2024R1; see
(<https://monolixsuite.slp-software.com/monolix/2024R1/>), which must be
installed beforehand.")
    (license license:gpl3+)))

(define-public r-lsafun
  (package
    (name "r-lsafun")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LSAfun" version))
       (sha256
        (base32 "1h1pbrjgxdvzvjnkcfs19d78f0n31bc0f77aysay0pn3wqxdkdds"))))
    (properties `((upstream-name . "LSAfun")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl r-lsa))
    (home-page "https://cran.r-project.org/package=LSAfun")
    (synopsis "Applied Latent Semantic Analysis (LSA) Functions")
    (description
     "This package provides functions that allow for convenient working with vector
space models of semantics/distributional semantic models/word embeddings.
Originally built for LSA models (hence the name), but can be used for all such
vector-based models.  For actually building a vector semantic space, use the
package lsa or other specialized software.  Downloadable semantic spaces can be
found at <https://sites.google.com/site/fritzgntr/software-resources>.")
    (license license:gpl2+)))

(define-public r-ls2wstat
  (package
    (name "r-ls2wstat")
    (version "2.1-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LS2Wstat" version))
       (sha256
        (base32 "194mqp5v0hm1h97f6d5zdj5526329r55pjf9a4azrv5cmcnmwgjv"))))
    (properties `((upstream-name . "LS2Wstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spdep r-matrixstats r-ls2w))
    (home-page "https://cran.r-project.org/package=LS2Wstat")
    (synopsis "Multiscale Test of Spatial Stationarity for LS2W Processes")
    (description
     "Wavelet-based methods for testing stationarity and quadtree segmenting of
images, see Taylor et al (2014) <doi:10.1080/00401706.2013.823890>.")
    (license license:gpl2)))

(define-public r-ls2w
  (package
    (name "r-ls2w")
    (version "1.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LS2W" version))
       (sha256
        (base32 "0qsrf9x45z0waiv10fh0a8rw0zyr5raj6l832yhq76vd9gjfpn9i"))))
    (properties `((upstream-name . "LS2W")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh r-mass))
    (home-page "https://cran.r-project.org/package=LS2W")
    (synopsis
     "Locally Stationary Two-Dimensional Wavelet Process Estimation Scheme")
    (description "Estimates two-dimensional local wavelet spectra.")
    (license license:gpl2)))

(define-public r-lrtester
  (package
    (name "r-lrtester")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LRTesteR" version))
       (sha256
        (base32 "0hjpk39s2001kgs7slp3hz0rlnbdda1zmjf4l2kmhvli2il7w93j"))))
    (properties `((upstream-name . "LRTesteR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-statmod r-rlang r-envstats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gmcmacran/LRTesteR")
    (synopsis "Likelihood Ratio Tests and Confidence Intervals")
    (description
     "This package provides a collection of hypothesis tests and confidence intervals
based on the likelihood ratio
<https://en.wikipedia.org/wiki/Likelihood-ratio_test>.")
    (license license:gpl3)))

(define-public r-lrstat
  (package
    (name "r-lrstat")
    (version "0.2.15")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lrstat" version))
       (sha256
        (base32 "0f4r5r3i706qi52fih4lx1rkc990pf37332dni5callzfjw88f4v"))))
    (properties `((upstream-name . "lrstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rcpp r-mvtnorm r-lpsolve))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaifenglu/lrstat")
    (synopsis
     "Power and Sample Size Calculation for Non-Proportional Hazards and Beyond")
    (description
     "This package performs power and sample size calculation for non-proportional
hazards model using the Fleming-Harrington family of weighted log-rank tests.
The sequentially calculated log-rank test score statistics are assumed to have
independent increments as characterized in Anastasios A. Tsiatis (1982)
<doi:10.1080/01621459.1982.10477898>.  The mean and variance of log-rank test
score statistics are calculated based on Kaifeng Lu (2021)
<doi:10.1002/pst.2069>.  The boundary crossing probabilities are calculated
using the recursive integration algorithm described in Christopher Jennison and
Bruce W. Turnbull (2000, ISBN:0849303168).  The package can also be used for
continuous, binary, and count data.  For continuous data, it can handle missing
data through mixed-model for repeated measures (MMRM).  In crossover designs, it
can estimate direct treatment effects while accounting for carryover effects.
For binary data, it can design Simon's 2-stage, modified toxicity probability-2
(@code{mTPI-2}), and Bayesian optimal interval (BOIN) trials.  For count data,
it can design group sequential trials for negative binomial endpoints with
censoring.  Additionally, it facilitates group sequential equivalence trials for
all supported data types.  Moreover, it can design adaptive group sequential
trials for changes in sample size, error spending function, number and spacing
or future looks.  Finally, it offers various options for adjusted p-values,
including graphical and gatekeeping procedures.")
    (license license:gpl2+)))

(define-public r-lrmf3
  (package
    (name "r-lrmf3")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LRMF3" version))
       (sha256
        (base32 "0j9hnin3yic118766if6gysq0g4mkqw40b0873g4ggjkgxndxrqn"))))
    (properties `((upstream-name . "LRMF3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-glue))
    (home-page "https://github.com/RoheLab/LRMF3")
    (synopsis "Low Rank Matrix Factorization S3 Objects")
    (description
     "This package provides S3 classes to represent low rank matrix decompositions.")
    (license license:expat)))

(define-public r-lrgs
  (package
    (name "r-lrgs")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lrgs" version))
       (sha256
        (base32 "0mf6wqlv21z68w81hvpmhgngvdsklf3x2678d9c9lxfmqmpv4a7y"))))
    (properties `((upstream-name . "lrgs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://github.com/abmantz/lrgs")
    (synopsis "Linear Regression by Gibbs Sampling")
    (description
     "This package implements a Gibbs sampler to do linear regression with multiple
covariates, multiple responses, Gaussian measurement errors on covariates and
responses, Gaussian intrinsic scatter, and a covariate prior distribution which
is given by either a Gaussian mixture of specified size or a Dirichlet process
with a Gaussian base distribution.  Described further in Mantz (2016)
<DOI:10.1093/mnras/stv3008>.")
    (license license:expat)))

(define-public r-lrequire
  (package
    (name "r-lrequire")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lrequire" version))
       (sha256
        (base32 "03c8h9v2xhlv7bj5jv117a27gaqaly2kdxs9zyihsm9yh9rg3d79"))))
    (properties `((upstream-name . "lrequire")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/rickwargo/lrequire")
    (synopsis
     "Sources an R \"Module\" with Caching & Encapsulation, Returning Exported Vars")
    (description
     "In the fashion of node.js <https://nodejs.org/>, requires a file, sourcing into
the current environment only the variables explicitly specified in the
module.exports or exports list variable.  If the file was already sourced, the
result of the earlier sourcing is returned to the caller.")
    (license license:expat)))

(define-public r-lrep
  (package
    (name "r-lrep")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LREP" version))
       (sha256
        (base32 "1dh6f12zvm8ff7vkl118bygyly68rdw6bqf2isjd01ji7d4w70cj"))))
    (properties `((upstream-name . "LREP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LREP")
    (synopsis "Estimate and Test Exponential vs. Pareto Distributions")
    (description
     "The programs were developed for estimation of parameters and testing exponential
versus Pareto distribution during our work on hydrologic extremes.  See
Kozubowski, T.J., A.K. Panorska, F. Qeadan, and A. Gershunov (2007)
<doi:10.1080/03610910802439121>, and Panorska, A.K., A. Gershunov, and T.J.
Kozubowski (2007) <doi:10.1007/978-0-387-34918-3_26>.")
    (license license:gpl3+)))

(define-public r-lrd
  (package
    (name "r-lrd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lrd" version))
       (sha256
        (base32 "08g7i6y2isq2vq53byxh58908na4jghka20dznk19lc5mcfpkw97"))))
    (properties `((upstream-name . "lrd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://npm27.github.io/lrd/")
    (synopsis "Package for Processing Lexical Response Data")
    (description
     "Lexical response data is a package that can be used for processing cued-recall,
free-recall, and sentence responses from memory experiments.")
    (license license:lgpl3)))

(define-public r-lqr
  (package
    (name "r-lqr")
    (version "5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lqr" version))
       (sha256
        (base32 "073n59niqy27zchmwp0y7a5p8dnkn5libzs5lbbwfnp0j2mkc7n1"))))
    (properties `((upstream-name . "lqr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-univar r-quantreg r-numderiv
                             r-momtrunc r-mass))
    (home-page "https://cran.r-project.org/package=lqr")
    (synopsis "Robust Linear Quantile Regression")
    (description
     "It fits a robust linear quantile regression model using a new family of
zero-quantile distributions for the error term.  Missing values and censored
observations can be handled as well.  This family of distribution includes
skewed versions of the Normal, Student's t, Laplace, Slash and Contaminated
Normal distribution.  It also performs logistic quantile regression for bounded
responses as shown in Galarza et.al.(2020) <doi:10.1007/s13571-020-00231-0>.  It
provides estimates and full inference.  It also provides envelopes plots for
assessing the fit and confidences bands when several quantiles are provided
simultaneously.")
    (license license:gpl2+)))

(define-public r-lqmm
  (package
    (name "r-lqmm")
    (version "1.5.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lqmm" version))
       (sha256
        (base32 "1ywiyq6k8fb1ffild1r0rglwc6a5sv1kqfqam28337bbxppdxv8i"))))
    (properties `((upstream-name . "lqmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsegrid r-nlme))
    (home-page "https://cran.r-project.org/package=lqmm")
    (synopsis "Linear Quantile Mixed Models")
    (description
     "This package provides functions to fit quantile regression models for
hierarchical data (2-level nested designs) as described in Geraci and Bottai
(2014, Statistics and Computing) <doi:10.1007/s11222-013-9381-9>.  A vignette is
given in Geraci (2014, Journal of Statistical Software)
<doi:10.18637/jss.v057.i13> and included in the package documents.  The packages
also provides functions to fit quantile models for independent	data and for
count responses.")
    (license license:gpl2+)))

(define-public r-lqmix
  (package
    (name "r-lqmix")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lqmix" version))
       (sha256
        (base32 "12yhqr66yx2v23nsavdrlbg46bpirp97mj2mffjwrmw07d2jhgax"))))
    (properties `((upstream-name . "lqmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack
                             r-quantreg
                             r-foreach
                             r-dosnow
                             r-doparallel
                             r-diagram))
    (home-page "https://cran.r-project.org/package=lqmix")
    (synopsis "Linear Quantile Mixture Models")
    (description
     "Estimate linear quantile mixtures based on Time-Constant (TC) and/or
Time-Varying (TV), discrete, random coefficients.")
    (license license:gpl2+)))

(define-public r-lqg
  (package
    (name "r-lqg")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LqG" version))
       (sha256
        (base32 "08v6qyvg96jn096xvayivywllcja782mg4zi4gcaaq12hhwdhl1m"))))
    (properties `((upstream-name . "LqG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LqG")
    (synopsis
     "Robust Group Variable Screening Based on Maximum Lq-Likelihood Estimation")
    (description
     "This package produces a group screening procedure that is based on maximum
Lq-likelihood estimation, to simultaneously account for the group structure and
data contamination in variable screening.  The methods are described in Li, Y.,
Li, R., Qin, Y., Lin, C., & Yang, Y. (2021) Robust Group Variable Screening
Based on Maximum Lq-likelihood Estimation.  Statistics in Medicine,
40:6818-6834.<doi:10.1002/sim.9212>.")
    (license license:gpl3)))

(define-public r-lpsmooth
  (package
    (name "r-lpsmooth")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPsmooth" version))
       (sha256
        (base32 "0fvn6vwfl37xhzzj44vadk8fr3d85zv58jjg7qfdjqvyw8khd59p"))))
    (properties `((upstream-name . "LPsmooth")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-polynom
                             r-orthopolynom
                             r-nloptr
                             r-lpgraph
                             r-lpbkg
                             r-hmisc))
    (home-page "https://cran.r-project.org/package=LPsmooth")
    (synopsis "LP Smoothed Inference and Graphics")
    (description
     "Classical tests of goodness-of-fit aim to validate the conformity of a
postulated model to the data under study.  In their standard formulation,
however, they do not allow exploring how the hypothesized model deviates from
the truth nor do they provide any insight into how the rejected model could be
improved to better fit the data.  To overcome these shortcomings, we establish a
comprehensive framework for goodness-of-fit which naturally integrates modeling,
estimation, inference and graphics.  In this package, the deviance tests and
comparison density plots are performed to conduct the LP smoothed inference,
where the letter L denotes nonparametric methods based on quantiles and P stands
for polynomials.  Simulations methods are used to perform variance estimation,
inference and post-selection adjustments.  Algeri S. and Zhang X. (2020)
<@code{arXiv:2005.13011>}.")
    (license license:gpl3)))

(define-public r-lpridge
  (package
    (name "r-lpridge")
    (version "1.1-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpridge" version))
       (sha256
        (base32 "0xkp22v8401av7l0qpmbffkg8h66mkic87gdp3nyzjk9agx4jzkf"))))
    (properties `((upstream-name . "lpridge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
    (home-page "https://curves-etc.r-forge.r-project.org/")
    (synopsis "Local Polynomial (Ridge) Regression")
    (description "Local Polynomial Regression with Ridging.")
    (license license:gpl2+)))

(define-public r-lprelevance
  (package
    (name "r-lprelevance")
    (version "3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPRelevance" version))
       (sha256
        (base32 "1harwhgqd9swyljijj7bfir176an92kdy8mik1q0nbc061jdgx0i"))))
    (properties `((upstream-name . "LPRelevance")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-polynom
                             r-mass
                             r-locfdr
                             r-leaps
                             r-glmnet
                             r-ggplot2
                             r-caret
                             r-bolstad2
                             r-bayesgof))
    (home-page "https://cran.r-project.org/package=LPRelevance")
    (synopsis "Relevance-Integrated Statistical Inference Engine")
    (description
     "Provide methods to perform customized inference at individual level by taking
contextual covariates into account.  Three main functions are provided in this
package: (i) @code{LASER()}: it generates specially-designed artificial relevant
samples for a given case; (ii) @code{g2l.proc()}: computes customized fdr(z|x);
and (iii) @code{rEB.proc()}: performs empirical Bayes inference based on LASERs.
 The details can be found in Mukhopadhyay, S., and Wang, K (2021,
<@code{arXiv:2004.09588>}).")
    (license license:gpl2)))

(define-public r-lpower
  (package
    (name "r-lpower")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPower" version))
       (sha256
        (base32 "00sabp2snfm0175c0cfyv83yd1zb3b8h2wrr7yxgkmr4i3py1fn7"))))
    (properties `((upstream-name . "LPower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-mass))
    (home-page "https://cran.r-project.org/package=LPower")
    (synopsis
     "Calculates Power, Sample Size, or Detectable Effect for Longitudinal Analyses")
    (description
     "Computes power, or sample size or the detectable difference for a repeated
measures model with attrition.  It requires the variance covariance matrix of
the observations but can compute this matrix for several common random effects
models.  See Diggle, P, Liang, KY and Zeger, SL (1994, ISBN:9780198522843).")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-lpmerge
  (package
    (name "r-lpmerge")
    (version "1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPmerge" version))
       (sha256
        (base32 "1wf7hfj670pnzzxyqm3vwrbrvxdbyprh42s5vpv4y54a0w4nr83g"))))
    (properties `((upstream-name . "LPmerge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rglpk r-matrix))
    (home-page "http://potatobreeding.cals.wisc.edu/software")
    (synopsis "Merging Linkage Maps by Linear Programming")
    (description
     "This package creates a consensus genetic map by merging linkage maps from
different populations.  The software uses linear programming (LP) to efficiently
minimize the mean absolute error between the consensus map and the linkage maps.
 This minimization is performed subject to linear inequality constraints that
ensure the ordering of the markers in the linkage maps is preserved.  When
marker order is inconsistent between linkage maps, a minimum set of ordinal
constraints is deleted to resolve the conflicts.")
    (license license:gpl3)))

(define-public r-lpm
  (package
    (name "r-lpm")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPM" version))
       (sha256
        (base32 "0xyyfvaa65wi3vz252y59hv4018bw6xwa24rs9d6w53b3slr7pnn"))))
    (properties `((upstream-name . "LPM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-powdist r-mass r-fracdiff))
    (home-page "http://www.corradotallerini.altervista.org/LPM.html")
    (synopsis "Linear Parametric Models Applied to Hydrological Series")
    (description
     "Apply Univariate Long Memory Models, Apply Multivariate Short Memory Models To
Hydrological Dataset, Estimate Intensity Duration Frequency curve to rainfall
series.  NEW -- Calculate the monthly water requirement for herbaceous and
arboreal plants.")
    (license license:gpl2)))

(define-public r-lpl
  (package
    (name "r-lpl")
    (version "0.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpl" version))
       (sha256
        (base32 "0rx0zl3vxza5bjq9564l4gvscbj2wg1b4k2lpfb6m08cslllykiy"))))
    (properties `((upstream-name . "lpl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-mass))
    (home-page "https://cran.r-project.org/package=lpl")
    (synopsis
     "Local Partial Likelihood Estimation and Simultaneous Confidence Band")
    (description
     "Local partial likelihood estimation by Fan, Lin and
Zhou(2006)<doi:10.1214/009053605000000796> and simultaneous confidence band is a
set of tools to test the covariates-biomarker interaction for survival data.
Test for the covariates-biomarker interaction using the bootstrap method and the
asymptotic method with simultaneous confidence band (Liu, Jiang and Chen
(2015)<doi:10.1002/sim.6563>).")
    (license license:gpl2)))

(define-public r-lpksample
  (package
    (name "r-lpksample")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPKsample" version))
       (sha256
        (base32 "0ifhx8w9f6sacmnck2g7i7r742i8bwwzf0rgajw3klw2wni9ikqx"))))
    (properties `((upstream-name . "LPKsample")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mclust r-lpgraph r-igraph r-apcluster))
    (home-page "https://cran.r-project.org/package=LPKsample")
    (synopsis "LP Nonparametric High Dimensional K-Sample Comparison")
    (description
     "LP nonparametric high-dimensional K-sample comparison method that includes (i)
confirmatory test, (ii) exploratory analysis, and (iii) options to output a
data-driven LP-transformed matrix for classification.  The primary reference is
Mukhopadhyay, S. and Wang, K. (2020, Biometrika); <@code{arXiv:1810.01724>}.")
    (license license:gpl2)))

(define-public r-lpirfs
  (package
    (name "r-lpirfs")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpirfs" version))
       (sha256
        (base32 "19p0hwhcapc72a4b0y7ldpwlrcd497y2rdvmiah10z8vj4msagm2"))))
    (properties `((upstream-name . "lpirfs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich
                             r-rcpparmadillo
                             r-rcpp
                             r-plm
                             r-lmtest
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lpirfs")
    (synopsis "Local Projections Impulse Response Functions")
    (description
     "This package provides functions to estimate and visualize linear as well as
nonlinear impulse responses based on local projections by JordÃ  (2005)
<doi:10.1257/0002828053828518>.  The methods and the package are explained in
detail in AdÃ¤mmer (2019) <doi:10.32614/RJ-2019-052>.")
    (license license:gpl2+)))

(define-public r-lpint
  (package
    (name "r-lpint")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpint" version))
       (sha256
        (base32 "0xakxmzgxlg3pmc978sgfnk0wgpbzmm5lbn1wqkz792j0g97jr31"))))
    (properties `((upstream-name . "lpint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lpint")
    (synopsis
     "Local Polynomial Estimators of the Intensity Function and Its Derivatives")
    (description
     "This package provides functions to estimate the intensity function and its
derivative of a given order of a multiplicative counting process using the local
polynomial method.")
    (license license:gpl2+)))

(define-public r-lphom
  (package
    (name "r-lphom")
    (version "0.3.5-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lphom" version))
       (sha256
        (base32 "1jn6cjg7q1w8aaqxh0zfa14h2bd2mn4zjgsg0xm0rx995j81p3an"))))
    (properties `((upstream-name . "lphom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=lphom")
    (synopsis "Ecological Inference by Linear Programming under Homogeneity")
    (description
     "This package provides a bunch of algorithms based on linear programming for
estimating, under the homogeneity hypothesis, @code{RxC} ecological contingency
tables (or vote transition matrices) using mainly aggregate data (from voting
units).  References: PavÃ­a and Romero (2024) <doi:10.1177/00491241221092725>.
PavÃ­a and Romero (2024) <doi:10.1093/jrsssa/qnae013>.  PavÃ­a (2023)
<doi:10.1007/s43545-023-00658-y>.  PavÃ­a (2024)
<doi:10.1080/0022250X.2024.2423943>.  PavÃ­a (2024)
<doi:10.1177/07591063241277064>.  PavÃ­a and PenadÃ©s (2024).  A bottom-up
approach for ecological inference.  Romero, PavÃ­a, MartÃ­n and Romero (2020)
<doi:10.1080/02664763.2020.1804842>.  Acknowledgements: The authors wish to
thank ConsellerÃ­a de EducaciÃ³n, Universidades y Empleo, Generalitat Valenciana
(grants AICO/2021/257, CIAICO/2023/031) and Ministerio de EconomÃ­a e
InnovaciÃ³n (grant PID2021-128228NB-I00) for supporting this research.")
    (license (list (license:fsdg-compatible "EPL")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-lpgraph
  (package
    (name "r-lpgraph")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPGraph" version))
       (sha256
        (base32 "1d2kslravi3v9kf6sdabwfpa9s9xxqj3s3d7f7qfcrpfydqixq1q"))))
    (properties `((upstream-name . "LPGraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pma r-car))
    (home-page "https://cran.r-project.org/package=LPGraph")
    (synopsis "Nonparametric Smoothing of Laplacian Graph Spectra")
    (description
     "This package provides a nonparametric method to approximate Laplacian graph
spectra of a network with ordered vertices.  This provides a computationally
efficient algorithm for obtaining an accurate and smooth estimate of the graph
Laplacian basis.  The approximation results can then be used for tasks like
change point detection, k-sample testing, and so on.  The primary reference is
Mukhopadhyay, S. and Wang, K. (2018, Technical Report).")
    (license license:gpl2)))

(define-public r-lpdynr
  (package
    (name "r-lpdynr")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPDynR" version))
       (sha256
        (base32 "1p74wwcs1h6sy9x8naag76xw5ichwwd9103f3smp31pckrzqbb3x"))))
    (properties `((upstream-name . "LPDynR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-virtualspecies r-terra r-magrittr r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/xavi-rp/LPDynR")
    (synopsis "Land Productivity Dynamics Indicator")
    (description
     "It uses phenological and productivity-related variables derived from time series
of vegetation indexes, such as the Normalized Difference Vegetation Index, to
assess ecosystem dynamics and change, which eventually might drive to land
degradation.  The final result of the Land Productivity Dynamics indicator is a
categorical map with 5 classes of land productivity dynamics, ranging from
declining to increasing productivity.  See
www.sciencedirect.com/science/article/pii/S1470160X21010517/ for a description
of the methods used in the package to calculate the indicator.")
    (license license:gpl3)))

(define-public r-lpdensity
  (package
    (name "r-lpdensity")
    (version "2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpdensity" version))
       (sha256
        (base32 "15w6paw8kd0sblmsif7bg0g6zm47c87x8isjj0a36gs65fwx5mad"))))
    (properties `((upstream-name . "lpdensity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-ggplot2))
    (home-page "https://cran.r-project.org/package=lpdensity")
    (synopsis "Local Polynomial Density Estimation and Inference")
    (description
     "Without imposing stringent distributional assumptions or shape restrictions,
nonparametric estimation has been popular in economics and other social sciences
for counterfactual analysis, program evaluation, and policy recommendations.
This package implements a novel density (and derivatives) estimator based on
local polynomial regressions, documented in Cattaneo, Jansson and Ma (2022)
<doi:10.18637/jss.v101.i02>: @code{lpdensity()} to construct local polynomial
based density (and derivatives) estimator, and @code{lpbwdensity()} to perform
data-driven bandwidth selection.")
    (license license:gpl2)))

(define-public r-lpda
  (package
    (name "r-lpda")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpda" version))
       (sha256
        (base32 "0i2qmjgvqr6hqbx820achm56shqb0nd4jn1w1v806kr3n9gx006m"))))
    (properties `((upstream-name . "lpda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rglpk r-multiway))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lpda")
    (synopsis "Linear Programming Discriminant Analysis")
    (description
     "Classification method obtained through linear programming.  It is advantageous
with respect to the classical developments when the distribution of the
variables involved is unknown or when the number of variables is much greater
than the number of individuals.  Mathematical details behind the method are
published in Nueda, et al. (2022) \"LPDA: A new classification method based on
linear programming\". <doi:10.1371/journal.pone.0270403>.")
    (license license:gpl2+)))

(define-public r-lpcm
  (package
    (name "r-lpcm")
    (version "0.47-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPCM" version))
       (sha256
        (base32 "0876211qxadwzaqgxpvm10mymqwjx1k9jay0nwhrz7w377mi3zni"))))
    (properties `((upstream-name . "LPCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LPCM")
    (synopsis "Local Principal Curve Methods")
    (description
     "Fitting multivariate data patterns with local principal curves, including tools
for data compression (projection) and measuring goodness-of-fit; with some
additional functions for mean shift clustering.  See Einbeck, Tutz and Evers
(2005) <doi:10.1007/s11222-005-4073-8> and Ameijeiras-Alonso and Einbeck (2023)
<doi:10.1007/s11634-023-00575-1>.")
    (license license:gpl2+)))

(define-public r-lpcde
  (package
    (name "r-lpcde")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpcde" version))
       (sha256
        (base32 "0b7hycykr29m7alsjfjlr34z70rvjpan9x9iich9bfmx9qs4662i"))))
    (properties `((upstream-name . "lpcde")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-ggplot2
                             r-combinat))
    (home-page "https://cran.r-project.org/package=lpcde")
    (synopsis
     "Boundary Adaptive Local Polynomial Conditional Density Estimator")
    (description
     "This package provides tools for estimation and inference of conditional
densities, derivatives and functions.  This is the companion software for
Cattaneo, Chandak, Jansson and Ma (2024) <doi:10.3150/23-BEJ1711>.")
    (license license:gpl3+)))

(define-public r-lpc
  (package
    (name "r-lpc")
    (version "1.0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpc" version))
       (sha256
        (base32 "1g1dzm7pcrbrdk1dmhbdhj58j69dzar41al3i8q4gysf3adqzsvv"))))
    (properties `((upstream-name . "lpc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lpc")
    (synopsis
     "Lassoed Principal Components for Testing Significance of Features")
    (description
     "This package implements the LPC method of Witten&Tibshirani(Annals of Applied
Statistics 2008) for identification of significant genes in a microarray
experiment.")
    (license license:gpl2+)))

(define-public r-lpbkg
  (package
    (name "r-lpbkg")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LPBkg" version))
       (sha256
        (base32 "1pgv6cb7m2j7qnrzybnv6x67a3ry8kpvisqj86rvxzclc9q56fdn"))))
    (properties `((upstream-name . "LPBkg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-polynom r-orthopolynom r-hmisc))
    (home-page "https://cran.r-project.org/package=LPBkg")
    (synopsis "Detecting New Signals under Background Mismodelling")
    (description
     "Given a postulated model and a set of data, the comparison density is estimated
and the deviance test is implemented in order to assess if the data distribution
deviates significantly from the postulated model.  Finally, the results are
summarized in a CD-plot as described in Algeri S. (2019)
<@code{arXiv:1906.06615>}.")
    (license license:gpl3)))

(define-public r-lpacf
  (package
    (name "r-lpacf")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lpacf" version))
       (sha256
        (base32 "0lg1r7pjg9f5msvjqaq93v43mssvq7jqgv2canhp3wybnmcw0p8v"))))
    (properties `((upstream-name . "lpacf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh r-locits))
    (home-page "https://cran.r-project.org/package=lpacf")
    (synopsis
     "Local Partial Autocorrelation Function Estimation for Locally Stationary Wavelet Processes")
    (description
     "This package provides the method for computing the local partial autocorrelation
function for locally stationary wavelet time series from Killick, Knight, Nason,
Eckley (2020) <doi:10.1214/20-EJS1748>.")
    (license license:gpl2)))

(define-public r-lowwafomsobol
  (package
    (name "r-lowwafomsobol")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LowWAFOMSobol" version))
       (sha256
        (base32 "1ym3i2m1am356di9lcp5nfmxq0np3c4bwsv6bbmf7hg02j7dhwi4"))))
    (properties `((upstream-name . "LowWAFOMSobol")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://mersennetwister-lab.github.io/LowWAFOMSobol/")
    (synopsis "Low WAFOM Sobol Sequence")
    (description
     "Implementation of Low Walsh Figure of Merit (WAFOM) sequence based on Sobol
sequence.")
    (license license:bsd-3)))

(define-public r-lowwafomnx
  (package
    (name "r-lowwafomnx")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LowWAFOMNX" version))
       (sha256
        (base32 "0f75qsv6pisgvk39yagzfxscnyfsgh63rmhp4gpybpl0pqmjp48x"))))
    (properties `((upstream-name . "LowWAFOMNX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://mersennetwister-lab.github.io/LowWAFOMNX/")
    (synopsis "Low WAFOM Niederreiter-Xing Sequence")
    (description
     "Implementation of Low Walsh Figure of Merit (WAFOM) sequence based on
Niederreiter-Xing sequence <DOI:10.1007/978-3-642-56046-0_30>.")
    (license license:bsd-3)))

(define-public r-lowrankqp
  (package
    (name "r-lowrankqp")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LowRankQP" version))
       (sha256
        (base32 "0ki7b2y4vcm0cqflf76nqfnfyvljgawnng4ffxqavfj21l8p62kg"))))
    (properties `((upstream-name . "LowRankQP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LowRankQP")
    (synopsis "Low Rank Quadratic Programming")
    (description
     "Solves quadratic programming problems where the Hessian is represented as the
product of two matrices.  Thanks to Greg Hunt for helping getting this version
back on CRAN. The methods in this package are described in: Ormerod, Wand and
Koch (2008) \"Penalised spline support vector classifiers: computational issues\"
<doi:10.1007/s00180-007-0102-8>.")
    (license license:gpl2+)))

(define-public r-lowpassfilter
  (package
    (name "r-lowpassfilter")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lowpassFilter" version))
       (sha256
        (base32 "1ic4xissqm7cq951yw7cf74a520mnm34yr6mlw1byhn5w4nzbk2x"))))
    (properties `((upstream-name . "lowpassFilter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=lowpassFilter")
    (synopsis "Lowpass Filtering")
    (description
     "This package creates lowpass filters which are commonly used in ion channel
recordings.  It supports generation of random numbers that are filtered, i.e.
follow a model for ion channel recordings, see <doi:10.1109/TNB.2018.2845126>.
Furthermore, time continuous convolutions of piecewise constant signals with the
kernel of lowpass filters can be computed.")
    (license license:gpl3)))

(define-public r-lowmemtkmeans
  (package
    (name "r-lowmemtkmeans")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lowmemtkmeans" version))
       (sha256
        (base32 "08zhdw48rzw47yzhg4s37bkliyngxs46cyb57dvng1s3m0w0dhvi"))))
    (properties `((upstream-name . "lowmemtkmeans")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=lowmemtkmeans")
    (synopsis "Low Memory Use Trimmed K-Means")
    (description
     "This package performs the trimmed k-means clustering algorithm with lower memory
use.  It also provides a number of utility functions such as BIC calculations.")
    (license license:gpl3+)))

(define-public r-lovecraftr
  (package
    (name "r-lovecraftr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lovecraftr" version))
       (sha256
        (base32 "16pnbfqdbn0n0zmm9dzpbpx7gyifrh5qybqy3w0swi3clvz007ds"))))
    (properties `((upstream-name . "lovecraftr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-rvest r-magrittr))
    (home-page "https://github.com/SergejRuff/lovecraftr")
    (synopsis "Collection of Lovecraftian Tales and Texts")
    (description
     "This package provides a curated collection of Howard Phillips Lovecraft's
complete stories, collected for the purpose of text analysis.")
    (license license:gpl3+)))

(define-public r-lotta
  (package
    (name "r-lotta")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LoTTA" version))
       (sha256
        (base32 "1lhcdf5g5nbc3cx984c3gmq9h76y6cvs2ka9np72i4fcily1hh9r"))))
    (properties `((upstream-name . "LoTTA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-runjags r-ggpubr r-ggplot2 r-bayestestr))
    (home-page "https://cran.r-project.org/package=LoTTA")
    (synopsis "Bayesian Inference in Regression Discontinuity Designs")
    (description
     "Implementation of the @code{LoTTA} (Local Trimmed Taylor Approximation) model
described in \"Bayesian Regression Discontinuity Design with Unknown Cutoff\" by
Kowalska, van de Wiel, van der Pas (2024)
<doi:10.48550/@code{arXiv.2406.11585>}.")
    (license license:gpl2+)))

(define-public r-lotri
  (package
    (name "r-lotri")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lotri" version))
       (sha256
        (base32 "0qg69a41fr0py6rqj1w7sv84rvh8mxf1d4djyniaq5vbqrkf3ax3"))))
    (properties `((upstream-name . "lotri")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-crayon r-cpp11armadillo r-cpp11 r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://nlmixr2.github.io/lotri/")
    (synopsis "Simple Way to Specify Symmetric, Block Diagonal Matrices")
    (description
     "This package provides a simple mechanism to specify a symmetric block diagonal
matrices (often used for covariance matrices).  This is based on the domain
specific language implemented in nlmixr2 but expanded to create matrices in R
generally instead of specifying parts of matrices to estimate.  It has expanded
to include some matrix manipulation functions that are generally useful for
rxode2 and nlmixr2'.")
    (license license:gpl2+)))

(define-public r-lost
  (package
    (name "r-lost")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LOST" version))
       (sha256
        (base32 "0wkixqzwlsygq8mly39j64mbxrxhs7rdxa62jlcl41jkr1c6w2k7"))))
    (properties `((upstream-name . "LOST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shapes
                             r-rgl
                             r-pcamethods
                             r-misctools
                             r-mass
                             r-geomorph
                             r-gdata
                             r-e1071))
    (home-page "https://cran.r-project.org/package=LOST")
    (synopsis "Missing Morphometric Data Simulation and Estimation")
    (description
     "This package provides functions for simulating missing morphometric data
randomly, with taxonomic bias and with anatomical bias.  LOST also includes
functions for estimating linear and geometric morphometric data.")
    (license license:gpl2+)))

(define-public r-lorme
  (package
    (name "r-lorme")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LorMe" version))
       (sha256
        (base32 "1960a5d5sfbrnkw56mpm2vcccsi0438x7c7ikg8a5lj217fapq4a"))))
    (properties `((upstream-name . "LorMe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan
                             r-tidyr
                             r-stringr
                             r-scales
                             r-rcolorbrewer
                             r-multcompview
                             r-magrittr
                             r-igraph
                             r-hmisc
                             r-hh
                             r-ggpubr
                             r-ggplot2
                             r-ggalluvial
                             r-fdrtool
                             r-dplyr
                             r-desctools
                             r-coin
                             r-ape
                             r-agricolae))
    (home-page "https://cran.r-project.org/package=LorMe")
    (synopsis "Lightening One-Code Resolving Microbial Ecology Solution")
    (description
     "This package provides a robust collection of functions tailored for microbial
ecology analysis, encompassing both data analysis and visualization.  It
introduces an encapsulation feature that streamlines the process into a summary
object.  With the initial configuration of this summary object, users can
execute a wide range of analyses with a single line of code, requiring only two
essential parameters for setup.  The package delivers comprehensive outputs
including analysis objects, statistical outcomes, and visualization-ready data,
enhancing the efficiency of research workflows.  Designed with user-friendliness
in mind, it caters to both novices and seasoned researchers, offering an
intuitive interface coupled with adaptable customization options to meet diverse
analytical needs.")
    (license license:gpl3)))

(define-public r-lori
  (package
    (name "r-lori")
    (version "2.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lori" version))
       (sha256
        (base32 "06x6p2f315aw3a3j377ay1slhryg7nb14lb9qpchx9cg4qq0f8nv"))))
    (properties `((upstream-name . "lori")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-svd r-rarpack r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lori")
    (synopsis
     "Imputation of High-Dimensional Count Data using Side Information")
    (description
     "Analysis, imputation, and multiple imputation of count data using covariates.
LORI uses a log-linear Poisson model where main row and column effects, as well
as effects of known covariates and interaction terms can be fitted.  The
estimation procedure is based on the convex optimization of the Poisson loss
penalized by a Lasso type penalty and a nuclear norm.  LORI returns estimates of
main effects, covariate effects and interactions, as well as an imputed count
table.  The package also contains a multiple imputation procedure.  The methods
are described in Robin, Josse, Moulines and Sardy (2019)
<doi:10.1016/j.jmva.2019.04.004>.")
    (license license:gpl3)))

(define-public r-lorenzregression
  (package
    (name "r-lorenzregression")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LorenzRegression" version))
       (sha256
        (base32 "1bw6nbj56s5vfswmm1qdab2rflnzkvfms3ilfgijlx6w21zv9phl"))))
    (properties `((upstream-name . "LorenzRegression")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsample
                             r-rearrangement
                             r-rcpparmadillo
                             r-rcpp
                             r-progress
                             r-parsnip
                             r-mass
                             r-ggplot2
                             r-ga
                             r-foreach
                             r-doparallel
                             r-boot))
    (home-page "https://github.com/AlJacq/LorenzRegression")
    (synopsis "Lorenz and Penalized Lorenz Regressions")
    (description
     "Inference for the Lorenz and penalized Lorenz regressions.  More broadly, the
package proposes functions to assess inequality and graphically represent it.
The Lorenz Regression procedure is introduced in Heuchenne and Jacquemain (2022)
<doi:10.1016/j.csda.2021.107347> and in Jacquemain, A., C. Heuchenne, and E.
Pircalabelu (2024) <doi:10.1214/23-EJS2200>.")
    (license license:gpl3)))

(define-public r-lorenz
  (package
    (name "r-lorenz")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lorenz" version))
       (sha256
        (base32 "1zclxjr1ya4rc48hm8a1s6ayr4yvjydgwwsi4fwg3qqf4mspa2dl"))))
    (properties `((upstream-name . "lorenz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-dineq))
    (home-page "https://cran.r-project.org/package=lorenz")
    (synopsis
     "Tools for Deriving Income Inequality Estimates from Grouped Income Data")
    (description
     "This package provides two methods of estimating income inequality statistics
from binned income data, such as the income data provided in the Census.  These
methods use different interpolation techniques to infer the distribution of
incomes within income bins.  One method is an implementation of Jargowsky and
Wheeler's mean-constrained integration over brackets (MCIB).  The other method
is based on a new technique, Lorenz interpolation, which estimates income
inequality by constructing an interpolated Lorenz curve based on the binned
income data.  These methods can be used to estimate three income inequality
measures: the Gini (the default measure returned), the Theil, and the Atkinson's
index.  Jargowsky and Wheeler (2018) <doi:10.1177/0081175018782579>.")
    (license license:expat)))

(define-public r-lorentz
  (package
    (name "r-lorentz")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lorentz" version))
       (sha256
        (base32 "1c0srmraphjwjhycxx59y6crag1ykkjbxhxpxvb6df8wx0hpkkx6"))))
    (properties `((upstream-name . "lorentz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tensor r-quadform r-magrittr r-magic))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/lorentz")
    (synopsis "The Lorentz Transform in Relativistic Physics")
    (description
     "The Lorentz transform in special relativity; also the gyrogroup structure of
three-velocities.  Performs active and passive transforms and has the ability to
use units in which the speed of light is not unity.  Includes some experimental
functionality for celerity and rapidity.  For general relativity, see the
schwarzschild package.")
    (license license:gpl3)))

(define-public r-lorem
  (package
    (name "r-lorem")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lorem" version))
       (sha256
        (base32 "06pi088m1j60p3ckvz0mdfjlzqfdcjmzlalhy8pipnysv90ln5rm"))))
    (properties `((upstream-name . "lorem")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-knitr r-htmltools))
    (home-page "https://github.com/gadenbuie/lorem")
    (synopsis "Generate Lorem Ipsum Text")
    (description
     "Quickly generate lorem ipsum placeholder text.  Easy to integrate in RMarkdown
documents.  Includes an RStudio addin to insert lorem ipsum into the current
document.")
    (license license:expat)))

(define-public r-lorec
  (package
    (name "r-lorec")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lorec" version))
       (sha256
        (base32 "0mgypd8awixh1lzbh5559br4k7vi3pfmwniqhgh68wc06sc6bn65"))))
    (properties `((upstream-name . "lorec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=lorec")
    (synopsis "LOw Rand and sparsE Covariance matrix estimation")
    (description
     "Estimate covariance matrices that contain low rank and sparse components.")
    (license license:gpl2)))

(define-public r-lordif
  (package
    (name "r-lordif")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lordif" version))
       (sha256
        (base32 "1zrgkzma47vv5qfrr9rjidkdj6a3r0x37xcgvxq8sjl0alfflyqp"))))
    (properties `((upstream-name . "lordif")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rms r-mirt r-foreach r-dosnow))
    (home-page "https://cran.r-project.org/package=lordif")
    (synopsis
     "Logistic Ordinal Regression Differential Item Functioning using IRT")
    (description
     "This package performs analysis of Differential Item Functioning (DIF) for
dichotomous and polytomous items using an iterative hybrid of ordinal logistic
regression and item response theory (IRT) according to Choi, Gibbons, and Crane
(2011) <doi:10.18637/jss.v039.i08>.")
    (license license:gpl2+)))

(define-public r-lorad
  (package
    (name "r-lorad")
    (version "0.0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lorad" version))
       (sha256
        (base32 "1pab66bngvcmk38id42ns6imdn014g14j6inrdkj39v6djy8xg0w"))))
    (properties `((upstream-name . "lorad")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=lorad")
    (synopsis
     "Lowest Radial Distance Method of Marginal Likelihood Estimation")
    (description
     "Estimates marginal likelihood from a posterior sample using the method described
in Wang et al. (2023) <doi:10.1093/sysbio/syad007>, which does not require
evaluation of any additional points and requires only the log of the
unnormalized posterior density for each sampled parameter vector.")
    (license license:expat)))

(define-public r-lopart
  (package
    (name "r-lopart")
    (version "2024.6.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LOPART" version))
       (sha256
        (base32 "1y3jvg97n15iwp7v71jm5l765k3lz3c7jp0y2apz0is9wc02q5la"))))
    (properties `((upstream-name . "LOPART")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-data-table))
    (home-page "https://github.com/tdhock/LOPART")
    (synopsis "Labeled Optimal Partitioning")
    (description
     "Change-point detection algorithm with label constraints and a penalty for each
change outside of labels.  Read TD Hocking, A Srivastava (2023)
<doi:10.1007/s00180-022-01238-z> for details.")
    (license license:gpl3)))

(define-public r-looprig
  (package
    (name "r-looprig")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LoopRig" version))
       (sha256
        (base32 "11rarb9fg8abc4dpd8sd8safqw3v6g8k6rcrg2nw97xppwcz8c6b"))))
    (properties `((upstream-name . "LoopRig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-s4vectors r-iranges r-genomicranges))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LoopRig")
    (synopsis "Integration and Analysis of Chromatin Loop Data")
    (description
     "Common coordinate-based workflows involving processed chromatin loop and genomic
element data are considered and packaged into appropriate customizable
functions.  Includes methods for linking element sets via chromatin loops and
creating consensus loop datasets.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-loopevd
  (package
    (name "r-loopevd")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loopevd" version))
       (sha256
        (base32 "0g75m3sjkyzp3b2d3hcmyw68dz1az1g705816irg0inkqc0yfwvc"))))
    (properties `((upstream-name . "loopevd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-ncdf4 r-ismev r-evd))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loopevd")
    (synopsis "Loop Functions for Extreme Value Distributions")
    (description
     "This package performs extreme value analysis at multiple locations using
functions from the evd package.  Supports both point-based and gridded input
data using the terra package, enabling flexible looping across spatial datasets
for batch processing of generalised extreme value, Gumbel fits.")
    (license license:gpl3+)))

(define-public r-loopdetectr
  (package
    (name "r-loopdetectr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LoopDetectR" version))
       (sha256
        (base32 "0c65svz9v8z9886awdf9jm3ysk7nc7gk7q2ihpy20fcciiv05b30"))))
    (properties `((upstream-name . "LoopDetectR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LoopDetectR")
    (synopsis "Comprehensive Feedback Loop Detection in ODE Models")
    (description
     "Detect feedback loops (cycles, circuits) between species (nodes) in ordinary
differential equation (ODE) models.  Feedback loops are paths from a node to
itself without visiting any other node twice, and they have important regulatory
functions.  Loops are reported with their order of participating nodes and their
length, and whether the loop is a positive or a negative feedback loop.  An
upper limit of the number of feedback loops limits runtime (which scales with
feedback loop count).  Model parametrizations and values of the modelled
variables are accounted for.  Computation uses the characteristics of the
Jacobian matrix as described e.g. in Thomas and Kaufman (2002)
<doi:10.1016/s1631-0691(02)01452-x>.  Input can be the Jacobian matrix of the
ODE model or the ODE function definition; in the latter case, the Jacobian
matrix is determined using @code{numDeriv}'.  Graph-based algorithms from igraph
are employed for path detection.")
    (license license:gpl3)))

(define-public r-loopanalyst
  (package
    (name "r-loopanalyst")
    (version "1.2-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LoopAnalyst" version))
       (sha256
        (base32 "1fp7j1q20xpgysdpyy2z3p1fzrr4bv6mjyb7hn3nh820z0bl554y"))))
    (properties `((upstream-name . "LoopAnalyst")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme))
    (home-page "https://alexisdinno.com/LoopAnalyst/")
    (synopsis "Collection of Tools to Conduct Levins' Loop Analysis")
    (description
     "This package performs Levins loop analysis of qualitatively-specified complex
causal systems.  Loop analysis makes qualitative predictions of variable change
in a system of causally interdependent variables, where \"qualitative\" means
direct causal relationships and indirect causal effects are coded as sign only
(i.e.  increases, decreases, no change, and ambiguous).  This implementation
includes output support for graphs in .dot file format for use with
visualization software such as graphviz (<https://graphviz.org>).
@code{LoopAnalyst} provides tools for the construction and output of community
matrices, computation and output of community effect matrices, tables of
correlations, adjoint, absolute feedback, weighted feedback and weighted
prediction matrices, change in life expectancy matrices, and feedback, path and
loop enumeration tools.")
    (license license:gpl2)))

(define-public r-loon-tourr
  (package
    (name "r-loon-tourr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loon.tourr" version))
       (sha256
        (base32 "1ggy3kkz86lk332pnlihc1i2bki3nks7r2bvl6bprcmds9lg689i"))))
    (properties `((upstream-name . "loon.tourr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tourr r-tibble r-mass r-loon-ggplot r-loon))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loon.tourr")
    (synopsis "Tour in 'Loon'")
    (description
     "Implement tour algorithms in interactive graphical system loon'.")
    (license license:gpl2)))

(define-public r-loon-shiny
  (package
    (name "r-loon-shiny")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loon.shiny" version))
       (sha256
        (base32 "1bv8a4rrrlf80r9pidjxaaql4rrm6gz13pjz1mii97q9s3xjn0id"))))
    (properties `((upstream-name . "loon.shiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-loon-ggplot
                             r-loon
                             r-gridextra
                             r-colourpicker
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loon.shiny")
    (synopsis
     "Automatically Create a 'Shiny' App Based on Interactive 'Loon' Widgets")
    (description
     "Package shiny provides interactive web applications in R. Package loon is an
interactive toolkit engaged in open-ended, creative and unscripted data
exploration.  The loon.shiny package can take loon widgets and display a
selfsame shiny app.")
    (license license:gpl2)))

(define-public r-loon-ggplot
  (package
    (name "r-loon-ggplot")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loon.ggplot" version))
       (sha256
        (base32 "1ysdzsb2cc6ps3mbssxgnwpd0j4m5zj14f7b49py939yl4qg42cj"))))
    (properties `((upstream-name . "loon.ggplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-rlang
                             r-patchwork
                             r-loon
                             r-gridextra
                             r-ggplot2
                             r-ggmulti
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loon.ggplot")
    (synopsis "Grammar of Interactive Graphics")
    (description
     "This package provides a bridge between the loon and ggplot2 packages.  Extends
the grammar of ggplot to add clauses to create interactive loon plots.  Existing
ggplot(s) can be turned into interactive loon plots and loon plots into static
ggplot(s); the function @code{loon.ggplot()} is the bridge from one plot
structure to the other.")
    (license license:gpl2)))

(define-public r-loon-data
  (package
    (name "r-loon-data")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loon.data" version))
       (sha256
        (base32 "01jf411n8l4bwgx2h0az2wgaakz1drbkwb0j1lzbaw6rj13plcas"))))
    (properties `((upstream-name . "loon.data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://great-northern-diver.github.io/loon.data/")
    (synopsis "Data Used to Illustrate 'Loon' Functionality")
    (description "Data used as examples in the loon package.")
    (license license:gpl2)))

(define-public r-loon
  (package
    (name "r-loon")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loon" version))
       (sha256
        (base32 "0rxbr93p4j14x5mh60l73jq8lg6gbj61ih5na4jv3p2j06l2mn9a"))))
    (properties `((upstream-name . "loon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gridextra))
    (native-inputs (list r-knitr))
    (home-page "https://great-northern-diver.github.io/loon/")
    (synopsis "Interactive Statistical Data Visualization")
    (description
     "An extendable toolkit for interactive data visualization and exploration.")
    (license license:gpl2)))

(define-public r-lookuptable
  (package
    (name "r-lookuptable")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lookupTable" version))
       (sha256
        (base32 "0ipy0glrad2gfr75kd8p3999xnfw4pgpbg6p064qa8ljqg0n1s49"))))
    (properties `((upstream-name . "lookupTable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr r-data-table))
    (home-page "https://cran.r-project.org/package=lookupTable")
    (synopsis "Look-Up Tables using S4")
    (description
     "Fits look-up tables by filling entries with the mean or median values of
observations fall in partitions of the feature space.  Partitions can be
determined by user of the package using input argument feature.boundaries, and
dimensions of the feature space can be any combination of continuous and
categorical features provided by the data set.  A Predict function directly
fetches corresponding entry value, and a default value is defined as the mean or
median of all available observations.  The table and other components are
represented using the S4 class @code{lookupTable}.")
    (license license:expat)))

(define-public r-lookup
  (package
    (name "r-lookup")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lookup" version))
       (sha256
        (base32 "0ppxi97rw1sp71x9knbs59vd4vhxnc3kswd61i9ab5w2w6qbym4b"))))
    (properties `((upstream-name . "lookup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://kwstat.github.io/lookup/")
    (synopsis "Functions Similar to VLOOKUP in Excel")
    (description
     "Simple functions to lookup items in key-value pairs.  See Mehta (2021)
<doi:10.1007/978-1-4842-6613-7_6>.")
    (license license:expat)))

(define-public r-lookout
  (package
    (name "r-lookout")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lookout" version))
       (sha256
        (base32 "0d08804h61dal80sd6z34ls1g5i0qly1zdxankw8gfrb60b41lnx"))))
    (properties `((upstream-name . "lookout")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-tdastats r-rann r-ggplot2 r-evd))
    (home-page "https://sevvandi.github.io/lookout/")
    (synopsis "Leave One Out Kernel Density Estimates for Outlier Detection")
    (description
     "Outlier detection using leave-one-out kernel density estimates and extreme value
theory.  The bandwidth for kernel density estimates is computed using persistent
homology, a technique in topological data analysis.  Using peak-over-threshold
method, a generalized Pareto distribution is fitted to the log of leave-one-out
kde values to identify outliers.")
    (license license:gpl3)))

(define-public r-longurl
  (package
    (name "r-longurl")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longurl" version))
       (sha256
        (base32 "16r6gzyfy7aq8sqdzvc6wqinfp0yj46bsz4yg8n3jf0jdyx0zrc8"))))
    (properties `((upstream-name . "longurl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr))
    (home-page "https://cran.r-project.org/package=longurl")
    (synopsis "Expand Short 'URLs'")
    (description
     "This package provides tools are provided to expand vectors of short URLs into
long URLs'.  No API services are used, which may mean that this operates more
slowly than API services do (since they usually cache results of expansions that
every user of the service requests).  You can setup your own caching layer with
the memoise package if you wish to have a speedup during single sessions or add
larger dependencies, such as Redis', to gain a longer-term performance boost at
the expense of added complexity.")
    (license license:expat)))

(define-public r-longsurr
  (package
    (name "r-longsurr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longsurr" version))
       (sha256
        (base32 "0hlsgf7cfqg3f9m3hmqhsfa8a5xqwb3k0z22dzkrcmxynikc416s"))))
    (properties `((upstream-name . "longsurr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rsurrogate
                             r-refund
                             r-readr
                             r-purrr
                             r-plyr
                             r-mvnfast
                             r-mgcv
                             r-magrittr
                             r-lme4
                             r-kernsmooth
                             r-here
                             r-grf
                             r-glue
                             r-fs
                             r-fdapace
                             r-fda-usc
                             r-fda
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=longsurr")
    (synopsis "Longitudinal Surrogate Marker Analysis")
    (description
     "Assess the proportion of treatment effect explained by a longitudinal surrogate
marker as described in Agniel D and Parast L (2021) <doi:10.1111/biom.13310>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-longrpart2
  (package
    (name "r-longrpart2")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longRPart2" version))
       (sha256
        (base32 "1vqcsxi6c4hqrpk3ns7yhghfryin1psxl38qkz2xz8cvyn58f685"))))
    (properties `((upstream-name . "longRPart2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-nlme r-mass r-ggplot2 r-formula-tools))
    (home-page "https://cran.r-project.org/package=longRPart2")
    (synopsis "Recursive Partitioning of Longitudinal Data")
    (description
     "This package performs recursive partitioning of linear and nonlinear mixed
effects models, specifically for longitudinal data.  The package is an extension
of the original @code{longRPart} package by Stewart and Abdolell (2013)
<https://cran.r-project.org/package=@code{longRPart>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-longroc
  (package
    (name "r-longroc")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longROC" version))
       (sha256
        (base32 "1fs11vqi4hy99d7shzzdvd6ic5gay6rh2027w6j0qpd04n8q88m8"))))
    (properties `((upstream-name . "longROC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=longROC")
    (synopsis
     "Time-Dependent Prognostic Accuracy with Multiply Evaluated Bio Markers or Scores")
    (description
     "Time-dependent Receiver Operating Characteristic curves, Area Under the Curve,
and Net Reclassification Indexes for repeated measures.  It is based on methods
in Barbati and Farcomeni (2017) <doi:10.1007/s10260-017-0410-2>.")
    (license license:gpl2+)))

(define-public r-longreadvqs
  (package
    (name "r-longreadvqs")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longreadvqs" version))
       (sha256
        (base32 "07b55vkklz3qrkdlsnydkpj1kgrkqmprvd9p7iqk86cyr4bdhgna"))))
    (properties `((upstream-name . "longreadvqs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringdist
                             r-seqinr
                             r-scales
                             r-reshape2
                             r-rcolorbrewer
                             r-purrr
                             r-plyr
                             r-magrittr
                             r-iranges
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-biostrings
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/NakarinP/longreadvqs")
    (synopsis "Viral Quasispecies Comparison from Long-Read Sequencing Data")
    (description
     "This package performs variety of viral quasispecies diversity analyses [see
Pamornchainavakul et al. (2024) <doi:10.21203/rs.3.rs-4637890/v1>] based on
long-read sequence alignment.  Main functions include 1) sequencing error and
other noise minimization and read sampling, 2) Single nucleotide variant (SNV)
profiles comparison, and 3) viral quasispecies profiles comparison and
visualization.")
    (license license:gpl3)))

(define-public r-longpower
  (package
    (name "r-longpower")
    (version "1.0.27")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longpower" version))
       (sha256
        (base32 "1n6g2frmpsg8990gcvnky9s96qql816zn1r01vn7kjbkyba99vx9"))))
    (properties `((upstream-name . "longpower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-lme4))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mcdonohue/longpower")
    (synopsis "Sample Size Calculations for Longitudinal Data")
    (description
     "Compute power and sample size for linear models of longitudinal data.  Supported
models include mixed-effects models and models fit by generalized least squares
and generalized estimating equations.  The package is described in Iddi and
Donohue (2022) <DOI:10.32614/RJ-2022-022>.  Relevant formulas are derived by Liu
and Liang (1997) <DOI:10.2307/2533554>, Diggle et al (2002)
<ISBN:9780199676750>, and Lu, Luo, and Chen (2008) <DOI:10.2202/1557-4679.1098>.")
    (license license:gpl2+)))

(define-public r-longmixr
  (package
    (name "r-longmixr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longmixr" version))
       (sha256
        (base32 "03hh1zrpxqnal4j7rmlllzdhhmrvbdnvdr7rd955hlnkr9946p6c"))))
    (properties `((upstream-name . "longmixr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmatch r-flexmix r-consensusclusterplus
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cellmapslab.github.io/longmixr/")
    (synopsis "Longitudinal Consensus Clustering with 'flexmix'")
    (description
     "An adaption of the consensus clustering approach from
@code{ConsensusClusterPlus} for longitudinal data.  The longitudinal data is
clustered with flexible mixture models from flexmix', while the consensus
matrices are hierarchically clustered as in @code{ConsensusClusterPlus}'.  By
using the flexibility from flexmix and @code{FactoMineR}', one can use mixed
data types for the clustering.")
    (license license:gpl2+)))

(define-public r-longmemo
  (package
    (name "r-longmemo")
    (version "1.1-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longmemo" version))
       (sha256
        (base32 "1yd06j4zr3k7b4rpk9swvym8347wb06n3czpnsgqlr7zqg4lj21r"))))
    (properties `((upstream-name . "longmemo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=longmemo")
    (synopsis
     "Statistics for Long-Memory Processes (Book Jan Beran), and Related Functionality")
    (description
     "Datasets and Functionality from Jan Beran (1994).  Statistics for Long-Memory
Processes; Chapman & Hall.  Estimation of Hurst (and more) parameters for
fractional Gaussian noise, @code{fARIMA} and FEXP models.")
    (license license:gpl2+)))

(define-public r-longke
  (package
    (name "r-longke")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longke" version))
       (sha256
        (base32 "1fc34wrc7dn6j2nlwqgil5jqyvrp5nbwsbvppmkj78w7awla1f18"))))
    (properties `((upstream-name . "longke")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-purrr
                             r-mvtnorm
                             r-fdapace
                             r-dplyr
                             r-bvls))
    (home-page "https://cran.r-project.org/package=longke")
    (synopsis
     "Nonparametric Predictive Model for Sparse and Irregular Longitudinal Data")
    (description
     "The proposed method aims at predicting the longitudinal mean response trajectory
by a kernel-based estimator.  The kernel estimator is constructed by imposing
weights based on subject-wise similarity on L2 metric space between predictor
trajectories as well as time proximity.  Users could also perform variable
selections to derive functional predictors with predictive significance by the
proposed multiplicative model with multivariate Gaussian kernels.")
    (license license:gpl3)))

(define-public r-longiturf
  (package
    (name "r-longiturf")
    (version "0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LongituRF" version))
       (sha256
        (base32 "0h70g0qhv0rgz40i58ykrcak1wibbvya7fql0v79xkd21217y1av"))))
    (properties `((upstream-name . "LongituRF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-randomforest r-mvtnorm r-latex2exp))
    (home-page "https://cran.r-project.org/package=LongituRF")
    (synopsis "Random Forests for Longitudinal Data")
    (description
     "Random forests are a statistical learning method widely used in many areas of
scientific research essentially for its ability to learn complex relationships
between input and output variables and also its capacity to handle
high-dimensional data.  However, current random forests approaches are not
flexible enough to handle longitudinal data.  In this package, we propose a
general approach of random forests for high-dimensional longitudinal data.  It
includes a flexible stochastic model which allows the covariance structure to
vary over time.  Furthermore, we introduce a new method which takes
intra-individual covariance into consideration to build random forests.  The
method is fully detailled in Capitaine et.al. (2020)
<doi:10.1177/0962280220946080> Random forests for high-dimensional longitudinal
data.")
    (license license:gpl2)))

(define-public r-longitudinaldata
  (package
    (name "r-longitudinaldata")
    (version "2.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longitudinalData" version))
       (sha256
        (base32 "12saa9ycmh2ysap0k36fgwcf2skjkrhdf3pk67xsh6qpw1h65dhc"))))
    (properties `((upstream-name . "longitudinalData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl r-misc3d r-clv r-class))
    (home-page "https://cran.r-project.org/package=longitudinalData")
    (synopsis "Longitudinal Data")
    (description
     "This package provides tools for longitudinal data and joint longitudinal data
(used by packages kml and kml3d).")
    (license license:gpl2+)))

(define-public r-longitudinalcascade
  (package
    (name "r-longitudinalcascade")
    (version "0.3.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longitudinalcascade" version))
       (sha256
        (base32 "0ifslwmn71v6725xw3fa44qb01391dq8nsa95281x0crb5zrki8d"))))
    (properties `((upstream-name . "longitudinalcascade")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-survival
                             r-scales
                             r-rlang
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=longitudinalcascade")
    (synopsis "Longitudinal Cascade")
    (description
     "This package creates a series of sets of graphics and statistics related to the
longitudinal cascade, all included in a single object.  The longitudinal cascade
inputs longitudinal data to identify gaps in the HIV and related cascades by
observing differences using time to event and survival methods.  The stage
definitions are set by the user, with default standard options.  Outputs include
graphics, datasets, and formal statistical tests.")
    (license license:expat)))

(define-public r-longitudinalanal
  (package
    (name "r-longitudinalanal")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longitudinalANAL" version))
       (sha256
        (base32 "1mvagvjmycnmk3bp02194k7qpwgj94lxzvv30dm0c8jmrhznyh4c"))))
    (properties `((upstream-name . "longitudinalANAL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-mass r-dplyr r-dlm))
    (home-page "https://cran.r-project.org/package=longitudinalANAL")
    (synopsis "Longitudinal Data Analysis")
    (description
     "Regression analysis of mixed sparse synchronous and asynchronous longitudinal
covariates.  Please cite the manuscripts corresponding to this package: Sun, Z.
et al. (2023) <@code{arXiv:2305.17715>} and Liu, C. et al. (2023)
<@code{arXiv:2305.17662>}.")
    (license license:gpl3)))

(define-public r-longit
  (package
    (name "r-longit")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longit" version))
       (sha256
        (base32 "08d7pfwd2anx6cdgpyzrn5na3s75z6plbxb11774zcxyzg81rz69"))))
    (properties `((upstream-name . "longit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjags r-r2jags r-missforest r-aiccmodavg))
    (home-page "https://cran.r-project.org/package=longit")
    (synopsis "High Dimensional Longitudinal Data Analysis Using MCMC")
    (description
     "High dimensional longitudinal data analysis with Markov Chain Monte Carlo(MCMC).
 Currently support mixed effect regression with or without missing observations
by considering covariance structures.  It provides estimates by missing at
random and missing not at random assumptions.  In this R package, we present
Bayesian approaches that statisticians and clinical researchers can easily use.
The functions methodology is based on the book \"Bayesian Approaches in Oncology
Using R and @code{OpenBUGS}\" by Bhattacharjee A (2020)
<doi:10.1201/9780429329449-14>.")
    (license license:gpl3)))

(define-public r-longevity
  (package
    (name "r-longevity")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longevity" version))
       (sha256
        (base32 "0d1sfbq0z6b46yzwvqm8sbjk73arj69gy8dx189x816rl2qd460h"))))
    (properties `((upstream-name . "longevity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp r-rlang r-rcpparmadillo r-rcpp
                             r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://lbelzile.github.io/longevity/")
    (synopsis "Statistical Methods for the Analysis of Excess Lifetimes")
    (description
     "This package provides a collection of parametric and nonparametric methods for
the analysis of survival data.  Parametric families implemented include
Gompertz-Makeham, exponential and generalized Pareto models and extended models.
 The package includes an implementation of the nonparametric maximum likelihood
estimator for arbitrary truncation and censoring pattern based on Turnbull
(1976) <doi:10.1111/j.2517-6161.1976.tb01597.x>, along with graphical
goodness-of-fit diagnostics.  Parametric models for positive random variables
and peaks over threshold models based on extreme value theory are described in
RootzÃ©n and Zholud (2017) <doi:10.1007/s10687-017-0305-5>; Belzile et al.
(2021) <doi:10.1098/rsos.202097> and Belzile et al. (2022)
<doi:10.1146/annurev-statistics-040120-025426>.")
    (license license:gpl3)))

(define-public r-longdecomphe
  (package
    (name "r-longdecomphe")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LongDecompHE" version))
       (sha256
        (base32 "1dx7f4qsckj9jbfd25bbfzcl33287iwfiak92y39nyd9znrm5fli"))))
    (properties `((upstream-name . "LongDecompHE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-patchwork r-ggplot2 r-corpcor r-copula))
    (home-page "https://cran.r-project.org/package=LongDecompHE")
    (synopsis
     "Longitudinal Decomposition of Health Expectancy by Age and Cause")
    (description
     "This package provides tools to decompose differences in cohort health expectancy
(HE) by age and cause using longitudinal data.  The package implements a novel
longitudinal attribution method based on a semiparametric additive hazards model
with time-dependent covariates, specifically designed to address interval
censoring and semi-competing risks via a copula framework.  The resulting
age-cause-specific contributions to disability prevalence and death probability
can be used to quantify and decompose differences in cohort HE between groups.
The package supports stepwise replacement decomposition algorithms and is
applicable to cohort-based health disparity research across diverse populations.
 Related methods include Sun et al. (2023) <doi:10.1177/09622802221133552>.")
    (license license:gpl3+)))

(define-public r-longclust
  (package
    (name "r-longclust")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "longclust" version))
       (sha256
        (base32 "0x44arc5c3xnrby1c8f5q3lvbipjsm3gsair99ybrzs4j31sgcky"))))
    (properties `((upstream-name . "longclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=longclust")
    (synopsis
     "Model-Based Clustering and Classification for Longitudinal Data")
    (description
     "Clustering or classification of longitudinal data based on a mixture of
multivariate t or Gaussian distributions with a Cholesky-decomposed covariance
structure.  Details in @code{McNicholas} and Murphy (2010)
<doi:10.1002/cjs.10047> and @code{McNicholas} and Subedi (2012)
<doi:10.1016/j.jspi.2011.11.026>.")
    (license license:gpl2+)))

(define-public r-longcart
  (package
    (name "r-longcart")
    (version "3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LongCART" version))
       (sha256
        (base32 "05jzl4wb52fa9781pn8a3wqdnpyfrr9fv7h3xfz81xm5bl5d8mf1"))))
    (properties `((upstream-name . "LongCART")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survminer
                             r-survival
                             r-rpart
                             r-nlme
                             r-magic
                             r-formula))
    (home-page "https://www.r-project.org")
    (synopsis
     "Recursive Partitioning for Longitudinal Data and Right Censored Data Using Baseline Covariates")
    (description
     "Constructs tree for continuous longitudinal data and survival data using
baseline covariates as partitioning variables according to the @code{LongCART}
and @code{SurvCART} algorithm, respectively.  Later also included functions to
calculate conditional power and predictive power of success based on interim
results and probability of success for a prospective trial.")
    (license license:gpl2+)))

(define-public r-long2lstmarray
  (package
    (name "r-long2lstmarray")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "long2lstmarray" version))
       (sha256
        (base32 "1d0w5qqqq3jak72ci7p12rcs4hjwmvwlaf47pibc6y9lax609kxw"))))
    (properties `((upstream-name . "long2lstmarray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luisgarcez11/long2lstmarray")
    (synopsis
     "Longitudinal Dataframes into Arrays for Machine Learning Training")
    (description
     "An easy tool to transform 2D longitudinal data into 3D arrays suitable for Long
short-term memory neural networks training.  The array output can be used by the
keras package.  Long short-term memory neural networks are described in:
Hochreiter, S., & Schmidhuber, J. (1997) <doi:10.1162/neco.1997.9.8.1735>.")
    (license license:gpl3+)))

(define-public r-lomb
  (package
    (name "r-lomb")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lomb" version))
       (sha256
        (base32 "1jlmdbxlxk2a1sbkzn3x18z82i0mwhjhy72j1l02qcnyxp3clbh4"))))
    (properties `((upstream-name . "lomb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-plotly r-knitr r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lomb")
    (synopsis "Lomb-Scargle Periodogram")
    (description
     "Computes the Lomb-Scargle Periodogram and actogram for evenly or unevenly
sampled time series.  Includes a randomization procedure to obtain exact
p-values.  Partially based on C original by Press et al. (Numerical Recipes) and
the Python module Astropy.  For more information see Ruf, T. (1999).  The
Lomb-Scargle periodogram in biological rhythm research: analysis of incomplete
and unequally spaced time-series.  Biological Rhythm Research, 30(2), 178-201.")
    (license license:gpl3+)))

(define-public r-lomar
  (package
    (name "r-lomar")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LOMAR" version))
       (sha256
        (base32 "18hj7f5gmkikahb7v120n79qg01zk9a58isdz4z8gr1ba1y31zlj"))))
    (properties `((upstream-name . "LOMAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gmp fftw))
    (propagated-inputs (list r-transport
                             r-rhdf5
                             r-reshape2
                             r-rcpp
                             r-rann
                             r-proxy
                             r-pracma
                             r-mclust
                             r-foreach
                             r-fnn
                             r-ff
                             r-ebimage
                             r-doparallel
                             r-dbscan
                             r-data-table
                             r-bh
                             r-alphashape3d
                             r-abind))
    (home-page "https://git.embl.de/heriche/lomar")
    (synopsis "Localization Microscopy Data Analysis")
    (description
     "Read, register and compare point sets from single molecule localization
microscopy.")
    (license license:gpl3)))

(define-public r-lolr
  (package
    (name "r-lolr")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lolR" version))
       (sha256
        (base32 "0lrmn9lzyyfr1y0i7qp6xfpdxyisbkajwg0jkrqkiw687psnh2rc"))))
    (properties `((upstream-name . "lolR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-robustbase
                             r-robust
                             r-pls
                             r-mass
                             r-irlba
                             r-ggplot2
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neurodata/lol")
    (synopsis "Linear Optimal Low-Rank Projection")
    (description
     "Supervised learning techniques designed for the situation when the
dimensionality exceeds the sample size have a tendency to overfit as the
dimensionality of the data increases.  To remedy this High dimensionality; low
sample size (HDLSS) situation, we attempt to learn a lower-dimensional
representation of the data before learning a classifier.  That is, we project
the data to a situation where the dimensionality is more manageable, and then
are able to better apply standard classification or clustering techniques since
we will have fewer dimensions to overfit.  A number of previous works have
focused on how to strategically reduce dimensionality in the unsupervised case,
yet in the supervised HDLSS regime, few works have attempted to devise
dimensionality reduction techniques that leverage the labels associated with the
data.  In this package and the associated manuscript Vogelstein et al. (2017)
<@code{arXiv:1709.01233>}, we provide several methods for feature extraction,
some utilizing labels and some not, along with easily extensible utilities to
simplify cross-validative efforts to identify the best feature extraction
method.  Additionally, we include a series of adaptable benchmark simulations to
serve as a standard for future investigative efforts into supervised HDLSS.
Finally, we produce a comprehensive comparison of the included algorithms across
a range of benchmark simulations and real data applications.")
    (license license:gpl2)))

(define-public r-lolog
  (package
    (name "r-lolog")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lolog" version))
       (sha256
        (base32 "0hc95ff1radpc8q0xnrvhsgbhf902fhhhkjmj51sxds4mn5wdaj3"))))
    (properties `((upstream-name . "lolog")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-rcpp
                             r-network
                             r-matrix
                             r-intergraph
                             r-ggplot2
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statnet/lolog")
    (synopsis "Latent Order Logistic Graph Models")
    (description
     "Estimation of Latent Order Logistic (LOLOG) Models for Networks.  LOLOGs are a
flexible and fully general class of statistical graph models.  This package
provides functions for performing MOM, GMM and variational inference.  Visual
diagnostics and goodness of fit metrics are provided.  See Fellows (2018)
<@code{arXiv:1804.04583>} for a detailed description of the methods.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-lolliplot
  (package
    (name "r-lolliplot")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lolliplot" version))
       (sha256
        (base32 "1rr0j0y298dmmllck11jq36glxczcsz6z7kw9290k77z75fi3vzi"))))
    (properties `((upstream-name . "lolliplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-iranges r-grimport r-genomicranges))
    (home-page "https://cran.r-project.org/package=lolliplot")
    (synopsis "Plot Variants and Somatic Mutations")
    (description
     "Draw lolliplot using GRanges objects.  this package was designed only for
drawing lolliplot.  So, it's faster than @code{trackViewer}', but un-related
functions has been derived.")
    (license license:gpl2+)))

(define-public r-lokern
  (package
    (name "r-lokern")
    (version "1.1-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lokern" version))
       (sha256
        (base32 "0xymmkq5pnqiv5ipakx5w8nl0qhxix0lz8xvn88801r5zygyywbc"))))
    (properties `((upstream-name . "lokern")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sfsmisc))
    (native-inputs (list gfortran))
    (home-page "https://curves-etc.r-forge.r-project.org/")
    (synopsis
     "Kernel Regression Smoothing with Local or Global Plug-in Bandwidth")
    (description
     "Kernel regression smoothing with adaptive local or global plug-in bandwidth
selection.")
    (license license:gpl2+)))

(define-public r-logrxaddin
  (package
    (name "r-logrxaddin")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logrxaddin" version))
       (sha256
        (base32 "1yqcbd8v6q7yc0k1mwr396wkpd2war6q0wbx1q6vnyvqx04qbplf"))))
    (properties `((upstream-name . "logrxaddin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waiter
                             r-stringr
                             r-shiny
                             r-rstudioapi
                             r-miniui
                             r-logrx))
    (home-page "https://github.com/pharmaverse/logrxaddin")
    (synopsis "Addin for the 'logrx' Package")
    (description
     "This is an extension package to logrx', which is a log creation program focused
on Clinical Reporting within the Pharma Industry.  This package enables a simple
shiny-based Add-in that provides a point and click interface to produce a log
for a single program.")
    (license license:expat)))

(define-public r-logrx
  (package
    (name "r-logrx")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logrx" version))
       (sha256
        (base32 "1rc1yxgch9hhwkn6k1v52793c19z411kl5b29cg3lj4665fvdsxd"))))
    (properties `((upstream-name . "logrx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-sessioninfo
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://pharmaverse.github.io/logrx/")
    (synopsis "Logging Utility Focus on Clinical Trial Programming Workflows")
    (description
     "This package provides a utility to facilitate the logging and review of R
programs in clinical trial programming workflows.")
    (license license:expat)))

(define-public r-logregequiv
  (package
    (name "r-logregequiv")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogRegEquiv" version))
       (sha256
        (base32 "1j23w3fmd2swk2mzbmsq7hy878cm7cs1li65srjc9m79az9vgr3h"))))
    (properties `((upstream-name . "LogRegEquiv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LogRegEquiv")
    (synopsis "Logistic Regression Equivalence")
    (description
     "This package provides tools for assessing equivalence of similar Logistic
Regression models.")
    (license license:expat)))

(define-public r-logr
  (package
    (name "r-logr")
    (version "1.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logr" version))
       (sha256
        (base32 "1469178a3as395kl239sq54v3rla63nyah96i779vbvqhaa3nblz"))))
    (properties `((upstream-name . "logr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr r-common))
    (native-inputs (list r-knitr))
    (home-page "https://logr.r-sassy.org")
    (synopsis "Creates Log Files")
    (description
     "This package contains functions to help create log files.  The package aims to
overcome the difficulty of the base R @code{sink()} command.  The
@code{log_print()} function will print to both the console and the file log,
without interfering in other write operations.")
    (license license:cc0)))

(define-public r-logos
  (package
    (name "r-logos")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logos" version))
       (sha256
        (base32 "1b5marbb3yi3q9xn8gka9xk2gp97vbc8qvazwgdgc48s3k20idhd"))))
    (properties `((upstream-name . "logos")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (home-page "https://github.com/jpmonteagudo28/logos")
    (synopsis "Access to the Hebrew, Greek, and English Version of the Bible")
    (description
     "Access to the Greek New Testament (27 books) and the Old Testament (39 books)
and allow users to do textual analysis on the data.  The New and Old Testament
have been provided in their original languages, Greek and Hebrew, respectively.
Additionally, the Revised American Standard Bible is also provided for users
who'd rather use a wordâforâword modern English translation.")
    (license license:gpl3+)))

(define-public r-logofgamma
  (package
    (name "r-logofgamma")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logOfGamma" version))
       (sha256
        (base32 "0r7di0l646ycfmdjk8hli6b0v7qj0i8z3i8i7rwd3fsblb2q22vd"))))
    (properties `((upstream-name . "logOfGamma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=logOfGamma")
    (synopsis "Natural Logarithms of the Gamma Function for Large Values")
    (description
     "Uses approximations to compute the natural logarithm of the Gamma function for
large values.")
    (license license:gpl3)))

(define-public r-lognormreg
  (package
    (name "r-lognormreg")
    (version "0.5-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logNormReg" version))
       (sha256
        (base32 "0lv5m6yz1v8pi1svw9qh3gkq3r0lp13qhx3p6g6yvzqwd0px0pip"))))
    (properties `((upstream-name . "logNormReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=logNormReg")
    (synopsis "log Normal Linear Regression")
    (description
     "This package provides functions to fits simple linear regression models with log
normal errors and identity link, i.e.  taking the responses on the original
scale.  See Muggeo (2018) <doi:10.13140/RG.2.2.18118.16965>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lognorm
  (package
    (name "r-lognorm")
    (version "0.1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lognorm" version))
       (sha256
        (base32 "021g3g7hyxcrj2lzqfjxj2ypcn8c6qminr0l6sdydynvjdjjv0pc"))))
    (properties `((upstream-name . "lognorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bgctw/lognorm")
    (synopsis "Functions for the Lognormal Distribution")
    (description
     "The lognormal distribution (Limpert et al. (2001)
<doi:10.1641/0006-3568(2001)051%5B0341:lndats%5D2.0.co;2>) can characterize
uncertainty that is bounded by zero.  This package provides estimation of
distribution parameters, computation of moments and other basic statistics, and
an approximation of the distribution of the sum of several correlated
lognormally distributed variables (Lo 2013 <doi:10.12988/ams.2013.39511>) and
the approximation of the difference of two correlated lognormally distributed
variables (Lo 2012 <doi:10.1155/2012/838397>).")
    (license license:gpl2)))

(define-public r-logngpd
  (package
    (name "r-logngpd")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lognGPD" version))
       (sha256
        (base32 "1rlbn48yd0gank5sf2k731irfm1hksm5y4p7ska6b33m4gm0i3lf"))))
    (properties `((upstream-name . "lognGPD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-lnpar r-evd r-envstats))
    (home-page "https://github.com/marco-bee/lognGPD")
    (synopsis "Estimation of a Lognormal - Generalized Pareto Mixture")
    (description
     "Estimation of a lognormal - Generalized Pareto mixture via the
Expectation-Maximization algorithm.  Computation of bootstrap standard errors is
supported and performed via parallel computing.  Functions for random number
simulation and density evaluation are also available.  For more details see Bee
and Santi (2025) <doi:10.48550/@code{arXiv.2505.22507>}.")
    (license license:expat)))

(define-public r-logmult
  (package
    (name "r-logmult")
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logmult" version))
       (sha256
        (base32 "1k9izgna3bfi8gvnpks85gj3zv3lp35991ml58q7pcqqr78giii2"))))
    (properties `((upstream-name . "logmult")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qvcalc r-gnm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nalimilan/logmult")
    (synopsis "Log-Multiplicative Models, Including Association Models")
    (description
     "This package provides functions to fit log-multiplicative models using gnm',
with support for convenient printing, plots, and jackknife/bootstrap standard
errors.  For complex survey data, models can be fitted from design objects from
the survey package.  Currently supported models include UNIDIFF (Erikson &
Goldthorpe, 1992), a.k.a.  log-multiplicative layer effect model (Xie, 1992)
<doi:10.2307/2096242>, and several association models: Goodman (1979)
<doi:10.2307/2286971> row-column association models of the RC(M) and RC(M)-L
families with one or several dimensions; two skew-symmetric association models
proposed by Yamaguchi (1990) <doi:10.2307/271086> and by van der Heijden &
Mooijaart (1995) <doi:10.1177/0049124195024001002> Functions allow computing the
intrinsic association coefficient (see Bouchet-Valat (2022)
<doi:10.1177/0049124119852389>) and the Altham (1970) index
<doi:10.1111/j.2517-6161.1970.tb00816.x>, including via the Bayes shrinkage
estimator proposed by Zhou (2015) <doi:10.1177/0081175015570097>; and the
RAS/IPF/Deming-Stephan algorithm.")
    (license license:gpl2+)))

(define-public r-loglognorm
  (package
    (name "r-loglognorm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loglognorm" version))
       (sha256
        (base32 "0ha1b7hl86486v38ap9rm71wwvg95szqx5rb5q097vm6dl091qcr"))))
    (properties `((upstream-name . "loglognorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=loglognorm")
    (synopsis "Double Log Normal Distribution Functions")
    (description
     "This package provides functions to sample from the double log normal
distribution and calculate the density, distribution and quantile functions.")
    (license license:gpl2)))

(define-public r-logkde
  (package
    (name "r-logkde")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logKDE" version))
       (sha256
        (base32 "09gachibj0klqa9ijw572lwphbh9qj6zqray5byq1dh7zsiq516q"))))
    (properties `((upstream-name . "logKDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rcpp r-pracma))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=logKDE")
    (synopsis
     "Computing Log-Transformed Kernel Density Estimates for Positive Data")
    (description
     "Computes log-transformed kernel density estimates for positive data using a
variety of kernels.  It follows the methods described in Jones, Nguyen and
@code{McLachlan} (2018) <doi:10.21105/joss.00870>.")
    (license license:gpl3)))

(define-public r-logitr
  (package
    (name "r-logitr")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logitr" version))
       (sha256
        (base32 "0ns7z0g2r0ypisb924mkzzpd0p9x0zrhnc0slk55g90d4kbi51gv"))))
    (properties `((upstream-name . "logitr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-randtoolbox r-nloptr r-mass r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhelvy/logitr")
    (synopsis
     "Logit Models w/Preference & WTP Space Utility Parameterizations")
    (description
     "Fast estimation of multinomial (MNL) and mixed logit (MXL) models in R. Models
can be estimated using \"Preference\" space or \"Willingness-to-pay\" (WTP) space
utility parameterizations.  Weighted models can also be estimated.  An option is
available to run a parallelized multistart optimization loop with random
starting points in each iteration, which is useful for non-convex problems like
MXL models or models with WTP space utility parameterizations.  The main
optimization loop uses the nloptr package to minimize the negative
log-likelihood function.  Additional functions are available for computing and
comparing WTP from both preference space and WTP space models and for predicting
expected choices and choice probabilities for sets of alternatives based on an
estimated model.  Mixed logit models can include uncorrelated or correlated
heterogeneity covariances and are estimated using maximum simulated likelihood
based on the algorithms in Train (2009) <doi:10.1017/CBO9780511805271>.  More
details can be found in Helveston (2023) <doi:10.18637/jss.v105.i10>.")
    (license license:expat)))

(define-public r-logitnorm
  (package
    (name "r-logitnorm")
    (version "0.8.39")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logitnorm" version))
       (sha256
        (base32 "17lizqrw2fs2kj32x6kv2iajcy629d69y77a84s5pv1qb8c4avjy"))))
    (properties `((upstream-name . "logitnorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=logitnorm")
    (synopsis "Functions for the Logitnormal Distribution")
    (description
     "Density, distribution, quantile and random generation function for the
logitnormal distribution.  Estimation of the mode and the first two moments.
Estimation of distribution parameters.")
    (license license:gpl2)))

(define-public r-logitfd
  (package
    (name "r-logitfd")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logitFD" version))
       (sha256
        (base32 "0jl9x7ssh0lbb7r68l7nkyvbmmrsxfvpfjg9q6wa225xvz1i6yzh"))))
    (properties `((upstream-name . "logitFD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-proc r-fda-usc r-fda r-expm))
    (home-page "https://cran.r-project.org/package=logitFD")
    (synopsis "Functional Principal Components Logistic Regression")
    (description
     "This package provides functions for fitting a functional principal components
logit regression model in four different situations: ordinary and filtered
functional principal components of functional predictors, included in the model
according to their variability explanation power, and according to their
prediction ability by stepwise methods.  The proposed methods were developed in
Escabias et al (2004) <doi:10.1080/10485250310001624738> and Escabias et al
(2005) <doi:10.1016/j.csda.2005.03.011>.")
    (license license:gpl2+)))

(define-public r-logisticrr
  (package
    (name "r-logisticrr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logisticRR" version))
       (sha256
        (base32 "0i9x7rynxcybdnjqbjsny8jsl96mivzdazdgmcg72qrv8qfwpszl"))))
    (properties `((upstream-name . "logisticRR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/youjin1207/logisticRR")
    (synopsis "Adjusted Relative Risk from Logistic Regression")
    (description
     "Adjusted odds ratio conditional on potential confounders can be directly
obtained from logistic regression.  However, those adjusted odds ratios have
been widely incorrectly interpreted as a relative risk.  As relative risk is
often of interest in public health, we provide a simple code to return adjusted
relative risks from logistic regression model under potential confounders.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-logisticrci
  (package
    (name "r-logisticrci")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogisticRCI" version))
       (sha256
        (base32 "158rl8jjmmhnja287i29rjiq309niwbvxmzx4f9lkl83nxn4mzf7"))))
    (properties `((upstream-name . "LogisticRCI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LogisticRCI")
    (synopsis "Linear and Logistic Regression-Based Reliable Change Index")
    (description
     "Here we provide an implementation of the linear and logistic regression-based
Reliable Change Index (RCI), to be used with lm and binomial glm model objects,
respectively, following Moral et al. <https://psyarxiv.com/gq7az/>.  The RCI
function returns a score assumed to be approximately normally distributed, which
is helpful to detect patients that may present cognitive decline.")
    (license license:gpl2+)))

(define-public r-logisticpca
  (package
    (name "r-logisticpca")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logisticPCA" version))
       (sha256
        (base32 "07ikyn127ld0fjdw7x911wrswqwqpw4lbcz0iffvh6jfjkgyk341"))))
    (properties `((upstream-name . "logisticPCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andland/logisticPCA")
    (synopsis "Binary Dimensionality Reduction")
    (description
     "Dimensionality reduction techniques for binary data including logistic PCA.")
    (license license:expat)))

(define-public r-logisticensembles
  (package
    (name "r-logisticensembles")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogisticEnsembles" version))
       (sha256
        (base32 "04n2541kcy84jiwm03bw1ccz2gbhv6f3bjlsy0insydq18ry7lhr"))))
    (properties `((upstream-name . "LogisticEnsembles")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-tree
                             r-tidyr
                             r-scales
                             r-rpart
                             r-readr
                             r-reactablefmtr
                             r-reactable
                             r-ranger
                             r-randomforest
                             r-purrr
                             r-proc
                             r-pls
                             r-mda
                             r-mass
                             r-magrittr
                             r-machineshop
                             r-klar
                             r-ipred
                             r-gt
                             r-gridextra
                             r-ggplotify
                             r-ggplot2
                             r-gbm
                             r-gam
                             r-e1071
                             r-dplyr
                             r-doparallel
                             r-cubist
                             r-corrplot
                             r-car
                             r-c50
                             r-brnn
                             r-arm
                             r-adabag))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/InfiniteCuriosity/LogisticEnsembles")
    (synopsis
     "Automatically Runs 36 Logistic Models (Individual and Ensembles)")
    (description
     "Automatically returns 36 logistic models including 23 individual models and 13
ensembles of models of logistic data.  The package also returns 10 plots, 5
tables, and a summary report.  The package automatically builds all 36 models,
reports all results, and provides graphics to show how the models performed.
This can be used for a wide range of data sets.  The package includes medical
data (the Pima Indians data set), and information about the performance of
Lebron James.  The package can be used to analyze many other examples, such as
stock market data.  The package automatically returns many values for each
model, such as True Positive Rate, True Negative Rate, False Positive Rate,
False Negative Rate, Positive Predictive Value, Negative Predictive Value, F1
Score, Area Under the Curve.  The package also returns 36 Receiver Operating
Characteristic (ROC) curves for each of the 36 models.")
    (license license:expat)))

(define-public r-logisticcurvefitting
  (package
    (name "r-logisticcurvefitting")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogisticCurveFitting" version))
       (sha256
        (base32 "0b564jc3gv6lnzyxmrmbrk9pa8c6v9vbn2q68h9v0d02n58h1kbl"))))
    (properties `((upstream-name . "LogisticCurveFitting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LogisticCurveFitting")
    (synopsis "Logistic Curve Fitting by Rhodes Method")
    (description
     "This package provides a system for fitting Logistic Curve by Rhodes Method.
Method for fitting logistic curve by Rhodes Method is described in
A.M.Gun,M.K.Gupta and B.Dasgupta(2019,ISBN:81-87567-81-3).")
    (license license:gpl3)))

(define-public r-logisticcopula
  (package
    (name "r-logisticcopula")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogisticCopula" version))
       (sha256
        (base32 "1ld8s3swxx93xh14agpk4ygq3majc52pkdkzp4ma24hxjcasn367"))))
    (properties `((upstream-name . "LogisticCopula")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vinecopula
                             r-stringr
                             r-rvinecopulib
                             r-numderiv
                             r-igraph
                             r-brglm2))
    (home-page "https://cran.r-project.org/package=LogisticCopula")
    (synopsis "Copula Based Extension of Logistic Regression")
    (description
     "An implementation of a method of extending a logistic regression model beyond
linear effects of the co-variates.  The extension in is constructed by first
equating the logistic regression model to a naive Bayes model where all the
margins are specified to follow natural exponential distributions conditional on
Y, that is, a model for Y given X that is specified through the distribution of
X given Y, where the columns of X are assumed to be mutually independent
conditional on Y. Subsequently, the model is expanded by adding vine - copulas
to relax the assumption of mutual independence, where pair-copulas are added in
a stage-wise, forward selection manner.  Some heuristics are employed during the
process of selecting edges, as well as the families of pair-copula models.
After each component is added, the parameters are updated by a (smaller) number
of gradient steps to maximise the likelihood.  When the algorithm has stopped
adding edges, based the criterion that a new edge should improve the likelihood
more than k times the number new parameters, the parameters are updated with a
larger number of gradient steps, or until convergence.")
    (license license:expat)))

(define-public r-logistic4p
  (package
    (name "r-logistic4p")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logistic4p" version))
       (sha256
        (base32 "1gyg6wmv15l9kn30icrbh3zny0h419la6722nynv80ls0r2b495g"))))
    (properties `((upstream-name . "logistic4p")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=logistic4p")
    (synopsis
     "Logistic Regression with Misclassification in Dependent Variables")
    (description
     "Error in a binary dependent variable, also known as misclassification, has not
drawn much attention in psychology.  Ignoring misclassification in logistic
regression can result in misleading parameter estimates and statistical
inference.  This package conducts logistic regression analysis with
misspecification in outcome variables.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-login
  (package
    (name "r-login")
    (version "0.9.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "login" version))
       (sha256
        (base32 "0sar30sy0g9pa3qsw68a3mfqwq1c2c5kqs8am8dljvf419pdbyrp"))))
    (properties `((upstream-name . "login")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shinyjs
                             r-shinybusy
                             r-shiny
                             r-htmltools
                             r-emayili
                             r-digest
                             r-dbi
                             r-cookies))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jbryer/login")
    (synopsis "'shiny' Login Module")
    (description
     "Framework for adding authentication to shiny applications.  Provides flexibility
as compared to other options for where user credentials are saved, allows users
to create their own accounts, and password reset functionality.  Bryer (2024)
<doi:10.5281/zenodo.10987876>.")
    (license license:gpl3+)))

(define-public r-logihist
  (package
    (name "r-logihist")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logihist" version))
       (sha256
        (base32 "03mnd4ycbx56i5m57bskpf46c68gyw6if8fk8q512naf509nbhs5"))))
    (properties `((upstream-name . "logihist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=logihist")
    (synopsis "Combined Graphs for Logistic Regression")
    (description
     "This package provides histograms, boxplots and dotplots as alternatives to
scatterplots of data when plotting fitted logistic regressions.")
    (license license:gpl2+)))

(define-public r-logicreg
  (package
    (name "r-logicreg")
    (version "1.6.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogicReg" version))
       (sha256
        (base32 "18xzszw2g4sx08imjwglab0midrchg8z5lr91w0my7ld7vwaxmll"))))
    (properties `((upstream-name . "LogicReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=LogicReg")
    (synopsis "Logic Regression")
    (description
     "Routines for fitting Logic Regression models.  Logic Regression is described in
Ruczinski, Kooperberg, and @code{LeBlanc} (2003) <DOI:10.1198/1061860032238>.
Monte Carlo Logic Regression is described in and Kooperberg and Ruczinski (2005)
<DOI:10.1002/gepi.20042>.")
    (license license:gpl2+)))

(define-public r-logicforest
  (package
    (name "r-logicforest")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogicForest" version))
       (sha256
        (base32 "1sf41sj9l7dfpr3giay9q84v52rscrrfh1x45njx3g9ysn3pl3i3"))))
    (properties `((upstream-name . "LogicForest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-logicreg))
    (home-page "https://cran.r-project.org/package=LogicForest")
    (synopsis "Logic Forest")
    (description
     "Logic Forest is an ensemble machine learning method that identifies important
and interpretable combinations of binary predictors using logic regression trees
to model complex relationships with an outcome.  Wolf, B.J., Slate, E.H., Hill,
E.G. (2010) <doi:10.1093/bioinformatics/btq354>.")
    (license license:gpl3)))

(define-public r-logicdt
  (package
    (name "r-logicdt")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logicDT" version))
       (sha256
        (base32 "1ghs7qp1sjsxrj1a96vb1h7bxrvy208i9dqjy9fb6gj101ssjvj9"))))
    (properties `((upstream-name . "logicDT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-glmnet))
    (home-page "https://cran.r-project.org/package=logicDT")
    (synopsis "Identifying Interactions Between Binary Predictors")
    (description
     "This package provides a statistical learning method that tries to find the best
set of predictors and interactions between predictors for modeling binary or
quantitative response data in a decision tree.  Several search algorithms and
ensembling techniques are implemented allowing for finetuning the method to the
specific problem.  Interactions with quantitative covariables can be properly
taken into account by fitting local regression models.  Moreover, a variable
importance measure for assessing marginal and interaction effects is provided.
Implements the procedures proposed by Lau et al. (2024,
<doi:10.1007/s10994-023-06488-6>).")
    (license license:expat)))

(define-public r-logibin
  (package
    (name "r-logibin")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logiBin" version))
       (sha256
        (base32 "06y5bqm3j6xdr1cd607v2sqkghnd2bv6bvxc6cz8dvp8jabqa0zm"))))
    (properties `((upstream-name . "logiBin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-partykit r-iterators r-foreach r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=logiBin")
    (synopsis "Binning Variables to Use in Logistic Regression")
    (description
     "Fast binning of multiple variables using parallel processing.  A summary of all
the variables binned is generated which provides the information value, entropy,
an indicator of whether the variable follows a monotonic trend or not, etc.  It
supports rebinning of variables to force a monotonic trend as well as manual
binning based on pre specified cuts.  The cut points of the bins are based on
conditional inference trees as implemented in the partykit package.  The
conditional inference framework is described by Hothorn T, Hornik K, Zeileis A
(2006) <doi:10.1198/106186006X133933>.")
    (license license:gpl2)))

(define-public r-logib
  (package
    (name "r-logib")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logib" version))
       (sha256
        (base32 "1zf6xw88ikp587g9whqx4cs0lrf2lxivqqpxz0457v7r971g02ih"))))
    (properties `((upstream-name . "logib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readxl r-lubridate))
    (home-page "https://github.com/admin-ebg/logib")
    (synopsis
     "Salary Analysis by the Swiss Federal Office for Gender Equality")
    (description
     "Implementation of the Swiss Confederation's standard analysis model for salary
analyses <https://www.ebg.admin.ch/en/equal-pay-analysis-with-logib> in R. The
analysis is run at company-level and the model is intended for medium-sized and
large companies.  It can technically be used with 50 or more employees
(apprentices, trainees/interns and expats are not included in the analysis).
Employees with at least 100 employees are required by the Gender Equality Act to
conduct an equal pay analysis.  This package allows users to run the equal
salary analysis in R, providing additional transparency with respect to the
methodology and simple automation possibilities.")
    (license license:gpl3+)))

(define-public r-loggit2
  (package
    (name "r-loggit2")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loggit2" version))
       (sha256
        (base32 "0y22ilr0jvicwv359h92c3vnlr8f71zsj5jzc0vff3xxhrrdjjyd"))))
    (properties `((upstream-name . "loggit2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MEO265/loggit2")
    (synopsis "Easy-to-Use, Dependencyless Logger")
    (description
     "An easy-to-use ndjson (newline-delimited JSON') logger.  It provides a set of
wrappers for base R's @code{message()}, @code{warning()}, and @code{stop()}
functions that maintain identical functionality, but also log the handler
message to an ndjson log file.  No change in existing code is necessary to use
this package, and only a few additional adjustments are needed to fully utilize
its potential.")
    (license license:expat)))

(define-public r-loggit
  (package
    (name "r-loggit")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loggit" version))
       (sha256
        (base32 "1fkr2fnfazxhm3pq0gysxhz6aqsdx38d017y0xbmlsg9hfgfx6q1"))))
    (properties `((upstream-name . "loggit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ryapric/loggit")
    (synopsis "Modern Logging for the R Ecosystem")
    (description
     "An effortless ndjson (newline-delimited JSON') logger, with two primary
log-writing interfaces.  It provides a set of wrappings for base R's
@code{message()}, @code{warning()}, and @code{stop()} functions that maintain
identical functionality, but also log the handler message to an ndjson log file.
 loggit also exports its internal @code{loggit()} function for powerful and
configurable custom logging.  No change in existing code is necessary to use
this package, and should only require additions to fully leverage the power of
the logging system.  loggit also provides a log reader for reading an ndjson log
file into a data frame, log rotation, and live echo of the ndjson log messages
to terminal stdout for log capture by external systems (like containers).
loggit is ideal for Shiny apps, data pipelines, modeling work flows, and more.
Please see the vignettes for detailed example use cases.")
    (license license:expat)))

(define-public r-logcondiscr
  (package
    (name "r-logcondiscr")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logcondiscr" version))
       (sha256
        (base32 "08wwxsrpflwbzgs6vb3r0f52hscxz1f4q0xabr1yqns06gir1kxd"))))
    (properties `((upstream-name . "logcondiscr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-matrix r-cobs))
    (home-page "http://www.kasparrufibach.ch")
    (synopsis
     "Estimate a Log-Concave Probability Mass Function from Discrete i.i.d. Observations")
    (description
     "Given independent and identically distributed observations X(1), ..., X(n),
allows to compute the maximum likelihood estimator (MLE) of probability mass
function (pmf) under the assumption that it is log-concave, see Weyermann (2007)
and Balabdaoui, Jankowski, Rufibach, and Pavlides (2012).  The main functions of
the package are @code{logConDiscrMLE} that allows computation of the log-concave
MLE, @code{logConDiscrCI} that computes pointwise confidence bands for the MLE,
and @code{kInflatedLogConDiscr} that computes a mixture of a log-concave PMF and
a point mass at k.")
    (license license:gpl2+)))

(define-public r-logcondens
  (package
    (name "r-logcondens")
    (version "2.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logcondens" version))
       (sha256
        (base32 "001a2qr2bsdcw784s9mr5j4srqkw3l64aj4jngy7y1yi8xp20fgi"))))
    (properties `((upstream-name . "logcondens")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ks))
    (home-page "http://www.kasparrufibach.ch")
    (synopsis
     "Estimate a Log-Concave Probability Density from Iid Observations")
    (description
     "Given independent and identically distributed observations X(1), ..., X(n),
compute the maximum likelihood estimator (MLE) of a density as well as a
smoothed version of it under the assumption that the density is log-concave, see
Rufibach (2007) and Duembgen and Rufibach (2009).  The main function of the
package is @code{logConDens} that allows computation of the log-concave MLE and
its smoothed version.  In addition, we provide functions to compute (1) the
value of the density and distribution function estimates (MLE and smoothed) at a
given point (2) the characterizing functions of the estimator, (3) to sample
from the estimated distribution, (5) to compute a two-sample permutation test
based on log-concave densities, (6) the ROC curve based on log-concave estimates
within cases and controls, including confidence intervals for given values of
false positive fractions (7) computation of a confidence interval for the value
of the true density at a fixed point.  Finally, three datasets that have been
used to illustrate log-concave density estimation are made available.")
    (license license:gpl2+)))

(define-public r-logconcens
  (package
    (name "r-logconcens")
    (version "0.17-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logconcens" version))
       (sha256
        (base32 "0z0cd2sa4p27f8hyklg80l1vv3nahkr3q4ipjz31cpnkgc8flmxa"))))
    (properties `((upstream-name . "logconcens")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=logconcens")
    (synopsis
     "Maximum Likelihood Estimation of a Log-Concave Density Based on Censored Data")
    (description
     "Based on right or interval censored data, compute the maximum likelihood
estimator of a (sub)probability density under the assumption that it is
log-concave.  For further information see Duembgen, Rufibach and Schuhmacher
(2014) <doi:10.1214/14-EJS930>.")
    (license license:gpl2+)))

(define-public r-logconcdead
  (package
    (name "r-logconcdead")
    (version "1.6-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LogConcDEAD" version))
       (sha256
        (base32 "1s5qjifa8q38ixyzdbp9n486p3zrv77sdw620q8clzfwa5543ba2"))))
    (properties `((upstream-name . "LogConcDEAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-mclust r-mass))
    (home-page "https://cran.r-project.org/package=LogConcDEAD")
    (synopsis "Log-Concave Density Estimation in Arbitrary Dimensions")
    (description
     "Software for computing a log-concave (maximum likelihood) estimator for
independent and identically distributed data in any number of dimensions.  For a
detailed description of the method see Cule, Samworth and Stewart (2010, Journal
of Royal Statistical Society Series B, <doi:10.1111/j.1467-9868.2010.00753.x>).")
    (license license:gpl2+)))

(define-public r-logbin
  (package
    (name "r-logbin")
    (version "2.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "logbin" version))
       (sha256
        (base32 "1ya1ll7lq7ygajz1nw12gramw2ixa0q1hb3hjrip4sh2j6gswzsc"))))
    (properties `((upstream-name . "logbin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-turboem r-matrix r-itertools2 r-iterators
                             r-glm2))
    (home-page "https://github.com/mdonoghoe/logbin")
    (synopsis "Relative Risk Regression Using the Log-Binomial Model")
    (description
     "This package provides methods for fitting log-link GLMs and GAMs to binomial
data, including EM-type algorithms with more stable convergence properties than
standard methods.")
    (license license:gpl2+)))

(define-public r-logan
  (package
    (name "r-logan")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LOGAN" version))
       (sha256
        (base32 "0fjcmfzmjgnks6a8x5v7lmqxpswljzrb9b881qjvyy7hi8asx7gy"))))
    (properties `((upstream-name . "LOGAN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-psych
                             r-pander
                             r-modules
                             r-magrittr
                             r-ggplot2
                             r-foreign
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=LOGAN")
    (synopsis "Log File Analysis in International Large-Scale Assessments")
    (description
     "Enables users to handle the dataset cleaning for conducting specific analyses
with the log files from two international educational assessments: the Programme
for International Student Assessment (PISA, <https://www.oecd.org/pisa/>) and
the Programme for the International Assessment of Adult Competencies (PIAAC,
<https://www.oecd.org/skills/piaac/>).  An illustration of the analyses can be
found on the LOGAN Shiny app (<https://loganpackage.shinyapps.io/shiny/>) on
your browser.")
    (license license:gpl3)))

(define-public r-log4r
  (package
    (name "r-log4r")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "log4r" version))
       (sha256
        (base32 "0cp7divn39mdy5hg42ayva1r8iqmnpn7crz3h1kdd4pla8jjs7zz"))))
    (properties `((upstream-name . "log4r")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/johnmyleswhite/log4r")
    (synopsis "Fast and Lightweight Logging System for R, Based on 'log4j'")
    (description
     "The log4r package is meant to provide a fast, lightweight, object-oriented
approach to logging in R based on the widely-emulated log4j system and
etymology.")
    (license license:artistic2.0)))

(define-public r-log
  (package
    (name "r-log")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "log" version))
       (sha256
        (base32 "1vzssrg2qqxd27b9d36v3mmkhgkx8n724ql9yhl5p8dy28zgsdxd"))))
    (properties `((upstream-name . "log")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-crayon r-cli))
    (home-page "https://cran.r-project.org/package=log")
    (synopsis "Record Events and Issues")
    (description
     "Logger to keep track of informational events and errors useful for debugging.")
    (license license:agpl3)))

(define-public r-lofifonts
  (package
    (name "r-lofifonts")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lofifonts" version))
       (sha256
        (base32 "162l0ijgam1jykpdzrmhscqai67m9dlarxnqjzaq932g3aib9bqg"))))
    (properties `((upstream-name . "lofifonts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/coolbutuseless/lofifonts")
    (synopsis "Text Rendering with Bitmap and Vector Fonts")
    (description
     "Alternate font rendering is useful when rendering text to novel graphics outputs
where modern font rendering is not available or where bespoke text positioning
is required.  Bitmap and vector fonts allow for custom layout and rendering
using pixel coordinates and line drawing.  Formatted text is created as a
data.frame of pixel coordinates (for bitmap fonts) or stroke coordinates (for
vector fonts).  All text can be easily previewed as a matrix or raster image.  A
selection of fonts is included with this package.")
    (license license:expat)))

(define-public r-loewesadditivity
  (package
    (name "r-loewesadditivity")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loewesadditivity" version))
       (sha256
        (base32 "0j9vvh2ys09hy2k3mbrlf0p493ymrxvfsdcjw0p6rlls54z9lqqc"))))
    (properties `((upstream-name . "loewesadditivity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-rootsolve
                             r-rlang
                             r-metr
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loewesadditivity")
    (synopsis "Loewe's Additivity")
    (description
     "Estimate model parameters to determine whether two compounds have synergy,
antagonism, or Loewe's Additivity.")
    (license license:expat)))

(define-public r-loedata
  (package
    (name "r-loedata")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loedata" version))
       (sha256
        (base32 "01w0f83n1jzchw12w1wg18lq6idlp9ywr52nipg2l7pn9aa30gvv"))))
    (properties `((upstream-name . "loedata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=loedata")
    (synopsis "Data Sets from \"Lectures on Econometrics\" by Chirok Han")
    (description
     "Data sets for Chirok Han (2022, ISBN:979-11-303-1497-6, \"Lectures on
Econometrics\").  Students, teachers, and self-learners will find the data sets
essential for replicating the results in the book.")
    (license license:gpl3)))

(define-public r-lodr
  (package
    (name "r-lodr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lodr" version))
       (sha256
        (base32 "0bmdw489dv1069krnx9yi0bcgx1vx4ymc6s4pix4shha5c5fbiz4"))))
    (properties `((upstream-name . "lodr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=lodr")
    (synopsis "Linear Model Fitting with LOD Covariates")
    (description
     "This package provides tools to fit linear regression model to data while taking
into account covariates with lower limit of detection (LOD).")
    (license license:expat)))

(define-public r-lodi
  (package
    (name "r-lodi")
    (version "0.9.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lodi" version))
       (sha256
        (base32 "16xqcza87gsqi6kzx0bdv3w9zyvvppjd20rq08lc8vb75nlkx1yb"))))
    (properties `((upstream-name . "lodi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/umich-cphds/lodi")
    (synopsis "Limit of Detection Imputation for Single-Pollutant Models")
    (description
     "Impute observed values below the limit of detection (LOD) via censored
likelihood multiple imputation (CLMI) in single-pollutant models, developed by
Boss et al (2019) <doi:10.1097/EDE.0000000000001052>.  CLMI handles exposure
detection limits that may change throughout the course of exposure assessment.
lodi provides functions for imputing and pooling for this method.")
    (license license:gpl3)))

(define-public r-lodgwas
  (package
    (name "r-lodgwas")
    (version "1.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lodGWAS" version))
       (sha256
        (base32 "0g5b44d3wb5hnx5l2n76myb1pc9ml3a052n1a4gvgqapa5as35s2"))))
    (properties `((upstream-name . "lodGWAS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rms))
    (home-page "https://cran.r-project.org/package=lodGWAS")
    (synopsis
     "Genome-Wide Association Analysis of a Biomarker Accounting for Limit of Detection")
    (description
     "Genome-wide association (GWAS) analyses of a biomarker that account for the
limit of detection.")
    (license license:gpl3+)))

(define-public r-loder
  (package
    (name "r-loder")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loder" version))
       (sha256
        (base32 "19l3rim2k3kd15i86gdbwlma63w68n1cjqbahqbrgck2irx9f6vy"))))
    (properties `((upstream-name . "loder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/jonclayden/loder")
    (synopsis "Dependency-Free Access to PNG Image Files")
    (description
     "Read and write access to PNG image files using the @code{LodePNG} library.  The
package has no external dependencies.")
    (license (license:fsdg-compatible "BSD_3_clause + file LICENCE"))))

(define-public r-locuszoomr
  (package
    (name "r-locuszoomr")
    (version "0.3.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locuszoomr" version))
       (sha256
        (base32 "1rmxdpls33336wj7njkiwkisgsrmxr09jbplzyihxf3r8qi4j20m"))))
    (properties `((upstream-name . "locuszoomr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-rtracklayer
                             r-rlang
                             r-plotly
                             r-memoise
                             r-ldlinkr
                             r-iranges
                             r-ggrepel
                             r-ggplot2
                             r-gggrid
                             r-genomicranges
                             r-genomeinfodb
                             r-ensembldb
                             r-dplyr
                             r-cowplot
                             r-biocgenerics
                             r-annotationfilter))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/myles-lewis/locuszoomr")
    (synopsis "Gene Locus Plot with Gene Annotations")
    (description
     "Publication-ready regional gene locus plots similar to those produced by the web
interface @code{LocusZoom} <https://my.locuszoom.org>, but running locally in R.
Genetic or genomic data with gene annotation tracks are plotted via R base
graphics, ggplot2 or plotly', allowing flexibility and easy customisation
including laying out multiple locus plots on the same page.  It uses the LDlink
API <https://ldlink.nih.gov/?tab=apiaccess> to query linkage disequilibrium data
from the 1000 Genomes Project and can overlay this on plots
<doi:10.1093/bioadv/vbaf006>.")
    (license license:gpl3+)))

(define-public r-locus
  (package
    (name "r-locus")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LOCUS" version))
       (sha256
        (base32 "16hfgj7ilwqlywy3xhfag4fwrbbfqvlmwi55chskc8s2km997pdb"))))
    (properties `((upstream-name . "LOCUS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-ica r-far))
    (home-page "https://cran.r-project.org/package=LOCUS")
    (synopsis
     "Low-Rank Decomposition of Brain Connectivity Matrices with Uniform Sparsity")
    (description
     "To decompose symmetric matrices such as brain connectivity matrices so that one
can extract sparse latent component matrices and also estimate mixing
coefficients, a blind source separation (BSS) method named LOCUS was proposed in
Wang and Guo (2023) <@code{arXiv:2008.08915>}.  For brain connectivity matrices,
the outputs correspond to sparse latent connectivity traits and individual-level
trait loadings.")
    (license license:gpl2)))

(define-public r-locstra
  (package
    (name "r-locstra")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locStra" version))
       (sha256
        (base32 "0vblsxdlngpa0mzyay9w23nx85riq0dwjc04z20vyha0vdsnkfk6"))))
    (properties `((upstream-name . "locStra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rspectra
                             r-rdpack
                             r-rcppeigen
                             r-rcpp
                             r-matrix
                             r-bigsnpr))
    (home-page "https://cran.r-project.org/package=locStra")
    (synopsis
     "Fast Implementation of (Local) Population Stratification Methods")
    (description
     "Fast implementations to compute the genetic covariance matrix, the Jaccard
similarity matrix, the s-matrix (the weighted Jaccard similarity matrix), and
the (classic or robust) genomic relationship matrix of a (dense or sparse) input
matrix (see Hahn, Lutz, Hecker, Prokopenko, Cho, Silverman, Weiss, and Lange
(2020) <doi:10.1002/gepi.22356>).  Full support for sparse matrices from the
R-package Matrix'.  Additionally, an implementation of the power method (von
Mises iteration) to compute the largest eigenvector of a matrix is included, a
function to perform an automated full run of global and local correlations in
population stratification data, a function to compute sliding windows, and a
function to invert minor alleles and to select those variants/loci exceeding a
minimal cutoff value.  New functionality in @code{locStra} allows one to extract
the k leading eigenvectors of the genetic covariance matrix, Jaccard similarity
matrix, s-matrix, and genomic relationship matrix via fast PCA without actually
computing the similarity matrices.  The fast PCA to compute the k leading
eigenvectors can now also be run directly from bed'+'bim'+'fam files.")
    (license license:gpl2+)))

(define-public r-locker
  (package
    (name "r-locker")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LocKer" version))
       (sha256
        (base32 "034r6215aigb5hdm2a7cs8qw3nikjdjqnqpn1g27p3lxwfp0n3pr"))))
    (properties `((upstream-name . "LocKer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-psych r-matrix r-fda))
    (home-page "https://cran.r-project.org/package=LocKer")
    (synopsis
     "Locally Sparse Estimator of Generalized Varying Coefficient Model for Asynchronous Longitudinal Data")
    (description
     "Locally sparse estimator of generalized varying coefficient model for
asynchronous longitudinal data by kernel-weighted estimating equation.")
    (license license:gpl3+)))

(define-public r-lock5data
  (package
    (name "r-lock5data")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Lock5Data" version))
       (sha256
        (base32 "1407vkcdphy5pb4sgy2ms36vjffiwg2l2753gbszm9wv2m0wrnv4"))))
    (properties `((upstream-name . "Lock5Data")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Lock5Data")
    (synopsis "Datasets for \"Statistics: UnLocking the Power of Data\"")
    (description
     "Datasets for the third edition of \"Statistics: Unlocking the Power of Data\" by
Lock^5 Includes version of datasets from earlier editions.")
    (license license:gpl2)))

(define-public r-locits
  (package
    (name "r-locits")
    (version "1.7.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locits" version))
       (sha256
        (base32 "07pl34c6mgjym8358kypxlkbnzk16ci5b05lz27194qrbphlhy2h"))))
    (properties `((upstream-name . "locits")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wavethresh r-igraph))
    (home-page "https://cran.r-project.org/package=locits")
    (synopsis "Test of Stationarity and Localized Autocovariance")
    (description
     "This package provides test of second-order stationarity for time series (for
dyadic and arbitrary-n length data).  Provides localized autocovariance, with
confidence intervals, for locally stationary (nonstationary) time series.  See
Nason, G P (2013) \"A test for second-order stationarity and approximate
confidence intervals for localized autocovariance for locally stationary time
series.\" Journal of the Royal Statistical Society, Series B, 75, 879-904.
<doi:10.1111/rssb.12015>.")
    (license license:gpl2+)))

(define-public r-locatt
  (package
    (name "r-locatt")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LocaTT" version))
       (sha256
        (base32 "0zbhf5mpyg1cn0ab033lajjaqh7j2614lhwcxxwra5by26b6gh75"))))
    (properties `((upstream-name . "LocaTT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/Urodelan/LocaTT")
    (synopsis
     "Geographically-Conscious Taxonomic Assignment for Metabarcoding")
    (description
     "This package provides a bioinformatics pipeline for performing taxonomic
assignment of DNA metabarcoding sequence data while considering geographic
location.  A detailed tutorial is available at
<https://urodelan.github.io/Local_Taxa_Tool_Tutorial/>.  A manuscript describing
these methods is in preparation.")
    (license license:gpl3+)))

(define-public r-locationgamer
  (package
    (name "r-locationgamer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locationgamer" version))
       (sha256
        (base32 "0y99m003s177x57m4ynxd8jd2xzl5zb4bj7jnbc04h22ffdl6m6f"))))
    (properties `((upstream-name . "locationgamer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=locationgamer")
    (synopsis "Identification of Location Game Equilibria in Networks")
    (description
     "Identification of equilibrium locations in location games (Hotelling (1929)
<doi:10.2307/2224214>).  In these games, two competing actors place
customer-serving units in two locations simultaneously.  Customers make the
decision to visit the location that is closest to them.  The functions in this
package include Prim algorithm (Prim (1957)
<doi:10.1002/j.1538-7305.1957.tb01515.x>) to find the minimum spanning tree
connecting all network vertices, an implementation of Dijkstra algorithm
(Dijkstra (1959) <doi:10.1007/BF01386390>) to find the shortest distance and
path between any two vertices, a self-developed algorithm using elimination of
purely dominated strategies to find the equilibrium, and several plotting
functions.")
    (license license:expat)))

(define-public r-locatexec
  (package
    (name "r-locatexec")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locatexec" version))
       (sha256
        (base32 "03vssc243nczwqp6z4adchcxql5aq0h3cs0daq5xwnncjmy3k7mx"))))
    (properties `((upstream-name . "locatexec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=locatexec")
    (synopsis "Detection and Localization of Executable Files")
    (description
     "This package provides a set of functions to locate some programs available on
the user machine.  The package provides functions to locate Node.js', npm',
@code{LibreOffice}', Microsoft Word', Microsoft @code{PowerPoint}', Microsoft
Excel', Python', pip', Mozilla Firefox and Google Chrome'.  User can test the
availability of a program with eventually a version and call it with function
@code{system2()} or @code{system()}.  This allows the use of a single function
to retrieve the path to a program regardless of the operating system and its
configuration.")
    (license license:expat)))

(define-public r-locateip
  (package
    (name "r-locateip")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locateip" version))
       (sha256
        (base32 "00l462bjl3lj5wiqr2mx08pcnfiv2jvnnfzwgrv5sh723kjxm4r3"))))
    (properties `((upstream-name . "locateip")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-stringr r-readr r-lifecycle r-httr2))
    (home-page "https://cran.r-project.org/package=locateip")
    (synopsis "Locate IP Addresses with 'ip-api'")
    (description
     "Download Internet Protocol (IP) address location and more from the ip-api
application programming interface (API) <https://ip-api.com/>.  The package
makes it easy to get the latitude, longitude, country, region, and organisation
associated to the provided IP address.  The information is conveniently returned
in a rectangular format.")
    (license license:expat)))

(define-public r-locar
  (package
    (name "r-locar")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "locaR" version))
       (sha256
        (base32 "1qjbf6g2sb5bpgg3fvqbp3xbyrk31lnxwp3c3pfbrnm5llh4w5qd"))))
    (properties `((upstream-name . "locaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tuner
                             r-synchwave
                             r-signal
                             r-seewave
                             r-oce
                             r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhedley/locaR")
    (synopsis "Set of Tools for Sound Localization")
    (description
     "This package provides a set of functions and tools to conduct acoustic source
localization, as well as organize and check localization data and results.  The
localization functions implement the modified steered response power algorithm
described by Cobos et al. (2010) <doi:10.1109/LSP.2010.2091502>.")
    (license license:expat)))

(define-public r-localsp
  (package
    (name "r-localsp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localsp" version))
       (sha256
        (base32 "19ga1ih5i4cnplidg1l86j50w1li6sf6xazpx4ls9y3fbkcbrxlz"))))
    (properties `((upstream-name . "localsp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-sf
                             r-sdsfun
                             r-purrr
                             r-gdverse
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://ausgis.github.io/localsp/")
    (synopsis "Local Indicator of Stratified Power")
    (description
     "This package implements a local indicator of stratified power to analyze local
spatial stratified association and demonstrate how spatial stratified
association changes spatially and in local regions, as outlined in Hu et al.
(2024) <doi:10.1080/13658816.2024.2437811>.")
    (license license:gpl3)))

(define-public r-localsolver
  (package
    (name "r-localsolver")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localsolver" version))
       (sha256
        (base32 "1d18rihzqf1f5j9agfp8jysll7lqk1ai23hkdqkn6wwxj442llv4"))))
    (properties `((upstream-name . "localsolver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=localsolver")
    (synopsis "R API to LocalSolver")
    (description
     "The package converts R data onto input and data for @code{LocalSolver}, executes
optimization and exposes optimization results as R data. @code{LocalSolver}
(http://www.localsolver.com/) is an optimization engine developed by
Innovation24 (http://www.innovation24.fr/).  It is designed to solve large-scale
mixed-variable non-convex optimization problems.  The localsolver package is
developed and maintained by WLOG Solutions (http://www.wlogsolutions.com/en/) in
collaboration with Decision Support and Analysis Division at Warsaw School of
Economics (http://www.sgh.waw.pl/en/).")
    (license license:lgpl2.1)))

(define-public r-localscore
  (package
    (name "r-localscore")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localScore" version))
       (sha256
        (base32 "1nbdj9s1s32hm8fswg61yxcf9z9npybkyp2mipci0h45lfzhxvys"))))
    (properties `((upstream-name . "localScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=localScore")
    (synopsis "Package for Sequence Analysis by Local Score")
    (description
     "Functionalities for calculating the local score and calculating statistical
relevance (p-value) to find a local Score in a sequence of given distribution
(S. Mercier and J.-J. Daudin (2001) <https://hal.science/hal-00714174/>) ; S.
Karlin and S. Altschul (1990) <https://pmc.ncbi.nlm.nih.gov/articles/PMC53667/>
; S. Mercier, D. Cellier and F. Charlot (2003)
<https://hal.science/hal-00937529v1/> ; A. Lagnoux, S. Mercier and P. Valois
(2017) <doi:10.1093/bioinformatics/btw699> ).")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-localmodel
  (package
    (name "r-localmodel")
    (version "0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localModel" version))
       (sha256
        (base32 "12kx3bhcdllrkmhgbpx4i8k64amm39dihd6y4a5vvyhvjpbv0ssj"))))
    (properties `((upstream-name . "localModel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-partykit r-ingredients r-glmnet r-ggplot2
                             r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/localModel")
    (synopsis
     "LIME-Based Explanations with Interpretable Inputs Based on Ceteris Paribus Profiles")
    (description
     "Local explanations of machine learning models describe, how features contributed
to a single prediction.  This package implements an explanation method based on
LIME (Local Interpretable Model-agnostic Explanations, see Tulio Ribeiro, Singh,
Guestrin (2016) <doi:10.1145/2939672.2939778>) in which interpretable inputs are
created based on local rather than global behaviour of each original feature.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-localiv
  (package
    (name "r-localiv")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localIV" version))
       (sha256
        (base32 "1z3q5hk6qfc1pzqdrxwm8y3am27648lfz66lm84bf8abifw4kk60"))))
    (properties `((upstream-name . "localIV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sampleselection r-rlang r-mgcv r-kernsmooth))
    (home-page "https://github.com/xiangzhou09/localIV")
    (synopsis
     "Estimation of Marginal Treatment Effects using Local Instrumental Variables")
    (description
     "In the generalized Roy model, the marginal treatment effect (MTE) can be used as
a building block for constructing conventional causal parameters such as the
average treatment effect (ATE) and the average treatment effect on the treated
(ATT).  Given a treatment selection equation and an outcome equation, the
function @code{mte()} estimates the MTE via the semiparametric local
instrumental variables method or the normal selection model.  The function
@code{mte_at()} evaluates MTE at different values of the latent resistance u
with a given X = x, and the function @code{mte_tilde_at()} evaluates MTE
projected onto the estimated propensity score.  The function @code{ace()}
estimates population-level average causal effects such as ATE, ATT, or the
marginal policy relevant treatment effect.")
    (license license:gpl3+)))

(define-public r-localice
  (package
    (name "r-localice")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localICE" version))
       (sha256
        (base32 "1pyq6kdahsy9qa0jzmring48r0i9h4rkp8lxpf9afksgm1qn0c5z"))))
    (properties `((upstream-name . "localICE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-checkmate))
    (home-page "https://github.com/viadee/localICE")
    (synopsis "Local Individual Conditional Expectation")
    (description
     "Local Individual Conditional Expectation ('@code{localICE}') is a local
explanation approach from the field of @code{eXplainable} Artificial
Intelligence (XAI). @code{localICE} is a model-agnostic XAI approach which
provides three-dimensional local explanations for particular data instances.
The approach is proposed in the master thesis of Martin Walter as an extension
to ICE (see Reference).  The three dimensions are the two features at the
horizontal and vertical axes as well as the target represented by different
colors.  The approach is applicable for classification and regression problems
to explain interactions of two features towards the target.  For classification
models, the number of classes can be more than two and each class is added as a
different color to the plot.  The given instance is added to the plot as two
dotted lines according to the feature values.  The @code{localICE-package} can
explain features of type factor and numeric of any machine learning model.
Automatically supported machine learning packages are mlr',
@code{randomForest}', caret or all other with an S3 predict function.  For
further model types from other libraries, a predict function has to be provided
as an argument in order to get access to the model.  Reference to the ICE
approach: Alex Goldstein, Adam Kapelner, Justin Bleich, Emil Pitkin (2013)
<@code{arXiv:1309.6392>}.")
    (license license:bsd-3)))

(define-public r-localgauss
  (package
    (name "r-localgauss")
    (version "0.41")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localgauss" version))
       (sha256
        (base32 "0cy8xawkph364828wpivhjikmlvaxhyrr3lv8a8xn21qxjri9mdy"))))
    (properties `((upstream-name . "localgauss")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrixstats r-mass r-ggplot2 r-foreach))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=localgauss")
    (synopsis "Estimating Local Gaussian Parameters")
    (description
     "Computational routines for estimating local Gaussian parameters.  Local Gaussian
parameters are useful for characterizing and testing for non-linear dependence
within bivariate data.  See e.g. Tjostheim and Hufthammer, Local Gaussian
correlation: A new measure of dependence, Journal of Econometrics, 2013, Volume
172 (1), pages 33-48 <DOI:10.1016/j.jeconom.2012.08.001>.")
    (license license:gpl2)))

(define-public r-localfda
  (package
    (name "r-localfda")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localFDA" version))
       (sha256
        (base32 "099hqnd0q4ylg03qi7icc6a9w1x7p76vlv5wxk8f53l7y9pp27b3"))))
    (properties `((upstream-name . "localFDA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/aefdz/localFDA")
    (synopsis "Localization Processes for Functional Data Analysis")
    (description
     "Implementation of a theoretically supported alternative to k-nearest neighbors
for functional data to solve problems of estimating unobserved segments of a
partially observed functional data sample, functional classification and outlier
detection.  The approximating neighbor curves are piecewise functions built from
a functional sample.  Instead of a distance on a function space we use a locally
defined distance function that satisfies stabilization criteria.  The package
allows the implementation of the methodology and the replication of the results
in ElÃ­as, A., JimÃ©nez, R. and Yukich, J. (2020) <@code{arXiv:2007.16059>}.")
    (license license:gpl3)))

(define-public r-localcop
  (package
    (name "r-localcop")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LocalCop" version))
       (sha256
        (base32 "0kxm4jhfyd2hbh94pzi8xaq3w7l8lb6c6bpcipdc1p0m5z93lh9h"))))
    (properties `((upstream-name . "LocalCop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vinecopula r-tmb r-rcppeigen))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlysy/LocalCop")
    (synopsis "Local Likelihood Inference for Conditional Copula Models")
    (description
     "This package implements a local likelihood estimator for the dependence
parameter in bivariate conditional copula models.  Copula family and local
likelihood bandwidth parameters are selected by leave-one-out cross-validation.
The models are implemented in TMB', meaning that the local score function is
efficiently calculated via automated differentiation (AD), such that
quasi-Newton algorithms may be used for parameter estimation.")
    (license license:gpl3)))

(define-public r-localcontrol
  (package
    (name "r-localcontrol")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LocalControl" version))
       (sha256
        (base32 "0c8032657nhk62c5a4nd3ja5kq5igmnfxqi3r5fkpjgvx43s82s6"))))
    (properties `((upstream-name . "LocalControl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-lattice r-gss r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/OHDSI/LocalControl")
    (synopsis
     "Nonparametric Methods for Generating High Quality Comparative Effectiveness Evidence")
    (description
     "This package implements novel nonparametric approaches to address biases and
confounding when comparing treatments or exposures in observational studies of
outcomes.  While designed and appropriate for use in studies involving medicine
and the life sciences, the package can be used in other situations involving
outcomes with multiple confounders.  The package implements a family of methods
for non-parametric bias correction when comparing treatments in observational
studies, including survival analysis settings, where competing risks and/or
censoring may be present.  The approach extends to bias-corrected personalized
predictions of treatment outcome differences, and analysis of heterogeneity of
treatment effect-sizes across patient subgroups.  For further details, please
see: Lauve NR, Nelson SJ, Young SS, Obenchain RL, Lambert CG.
@code{LocalControl}: An R Package for Comparative Safety and Effectiveness
Research.  Journal of Statistical Software.  2020.  p.  1â32.  Available from
<doi:10.18637/jss.v096.i04>.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-localboot
  (package
    (name "r-localboot")
    (version "0.9.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "localboot" version))
       (sha256
        (base32 "0pjbz87makg1lib4d346my58r42x40yh65lygfbalvmnrmchk1b8"))))
    (properties `((upstream-name . "localboot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis r-rcppeigen r-rcpp))
    (home-page "https://cran.r-project.org/package=localboot")
    (synopsis "Local Bootstrap Methods for Various Networks")
    (description
     "Network analysis usually requires estimating the uncertainty of graph
statistics.  Through this package, we provide tools to bootstrap various
networks via local bootstrap procedure.  Additionally, it includes functions for
generating probability matrices, creating network adjacency matrices from
probability matrices, and plotting network structures.  The reference will be
updated soon.")
    (license license:gpl3)))

(define-public r-lobstercatch
  (package
    (name "r-lobstercatch")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LobsterCatch" version))
       (sha256
        (base32 "186h2727ii7y2x8wmvx7favrhg4pwv4ijf7zvjg6vh7lnj365cfb"))))
    (properties `((upstream-name . "LobsterCatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LobsterCatch")
    (synopsis "Models the Capture Processes in American Lobster Trap Fishery")
    (description
     "Simulate lobster catch process in a trap fishery.  Factors such as lobster
density on ocean floor, their movement, trap saturation and bait shrinkage rate
can be modeled.  Details of the methods for modeling those processes can be
found in: Addison and Bell (1997) <doi:10.1071/MF97169>.")
    (license license:gpl3+)))

(define-public r-lobra
  (package
    (name "r-lobra")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LoBrA" version))
       (sha256
        (base32 "0rsxkli6xhjwy058skgij2cf3n1lcjsaw3pd51i55l2bpwlrmci6"))))
    (properties `((upstream-name . "LoBrA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-qpdf r-nlme r-lawstat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LoBrA")
    (synopsis
     "Generalized Spline Mixed Effect Models for Longitudinal Breath Data")
    (description
     "Automated analysis and modeling of longitudinal omics data (e.g. breath
metabolomics') using generalized spline mixed effect models.  Including
automated filtering of noise parameters and determination of breakpoints.")
    (license license:gpl3)))

(define-public r-loadshaper
  (package
    (name "r-loadshaper")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loadshaper" version))
       (sha256
        (base32 "10fypkybqi6kpvxcrwsvzczqc11mihyj5f1d3jhd22s8llm8k0gc"))))
    (properties `((upstream-name . "loadshaper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=loadshaper")
    (synopsis "Producing Load Shape with Target Peak and Load Factor")
    (description
     "Modifying a load shape to match specific peak and load factor is a fundamental
component for various power system planning and operation studies.  This package
is an efficient tool to modify a reference load shape while matching the desired
peak and load factor.  The package offers both linear and non-linear method,
described in <https://rpubs.com/riazakhan94/load_shape_match_peak_energy>.  The
user can control the shape of the final load shape by regulating certain
parameters.  The package provides validation metrics for assessing the derived
load shape in terms of preserving time series properties.  It also offers
powerful graphics, that allows the user to visually assess the derived load
shape.")
    (license license:gpl3)))

(define-public r-loadings
  (package
    (name "r-loadings")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loadings" version))
       (sha256
        (base32 "0ar8xryk8xd2p5zscwshk83pg3ivwbp60kmjamjzwk56fjn8zb9k"))))
    (properties `((upstream-name . "loadings")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-geigen))
    (home-page "https://cran.r-project.org/package=loadings")
    (synopsis
     "Loadings for Principal Component Analysis and Partial Least Squares")
    (description
     "Computing statistical hypothesis testing for loading in principal component
analysis (PCA) (Yamamoto, H. et al. (2014) <doi:10.1186/1471-2105-15-51>),
orthogonal smoothed PCA (OS-PCA) (Yamamoto, H. et al. (2021)
<doi:10.3390/metabo11030149>), one-sided kernel PCA (Yamamoto, H. (2023)
<doi:10.51094/jxiv.262>), partial least squares (PLS) and PLS discriminant
analysis (PLS-DA) (Yamamoto, H. et al. (2009)
<doi:10.1016/j.chemolab.2009.05.006>), PLS with rank order of groups (PLS-ROG)
(Yamamoto, H. (2017) <doi:10.1002/cem.2883>), regularized canonical correlation
analysis discriminant analysis (RCCA-DA) (Yamamoto, H. et al. (2008)
<doi:10.1016/j.bej.2007.12.009>), multiset PLS and PLS-ROG (Yamamoto, H. (2022)
<doi:10.1101/2022.08.30.505949>).")
    (license license:lgpl3)))

(define-public r-loader
  (package
    (name "r-loader")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loadeR" version))
       (sha256
        (base32 "06jzk5mdp5cx6aj71lb0g8zwrqv4r7m0gckn8aq5vd244nr53l5r"))))
    (properties `((upstream-name . "loadeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexl
                             r-shinyjs
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycustomloader
                             r-shinyace
                             r-shiny
                             r-rlang
                             r-readxl
                             r-htmlwidgets
                             r-htmltools
                             r-golem
                             r-echarts4r
                             r-dt
                             r-data-table
                             r-config
                             r-colourpicker
                             r-caret))
    (home-page "https://promidat.website")
    (synopsis "Load Data for Analysis System")
    (description
     "This package provides a framework to load text and excel files through a shiny
graphical interface.  It allows renaming, transforming, ordering and removing
variables.  It includes basic exploratory methods such as the mean, median,
mode, normality test, histogram and correlation.")
    (license license:gpl2+)))

(define-public r-loa
  (package
    (name "r-loa")
    (version "0.3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "loa" version))
       (sha256
        (base32 "1j99lh6sv6gax29q66277w4yxwnyv99gm4nixqlrhn9b2q6rjwbd"))))
    (properties `((upstream-name . "loa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp
                             r-rgooglemaps
                             r-rcolorbrewer
                             r-png
                             r-plyr
                             r-openstreetmap
                             r-mgcv
                             r-mass
                             r-lattice))
    (home-page "https://loa.r-forge.r-project.org/")
    (synopsis "Lattice Options and Add-Ins")
    (description
     "Various plots and functions that make use of the lattice/trellis plotting
framework.  The plots, which include @code{loaPlot()}, @code{loaMapPlot()} and
@code{trianglePlot()}, and use @code{panelPal()}, a function that extends
lattice and hexbin package methods to automate plot subscript and panel-to-panel
and panel-to-key synchronization/management.")
    (license license:gpl2+)))

(define-public r-lnpar
  (package
    (name "r-lnpar")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LNPar" version))
       (sha256
        (base32 "0y2v5kshbqhinyfjx9iri3zp04wzmfx6csxjn6pqzja21g07z063"))))
    (properties `((upstream-name . "LNPar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack))
    (home-page "https://cran.r-project.org/package=LNPar")
    (synopsis "Estimation and Testing for a Lognormal-Pareto Mixture")
    (description
     "Estimates a lognormal-Pareto mixture by means of the
Expectation-Conditional-Maximization-Either algorithm and by maximizing the
profile likelihood function.  A likelihood ratio test for discriminating between
lognormal and Pareto tail is also implemented.  See Bee, M. (2022)
<doi:10.1007/s11634-022-00497-4>.")
    (license license:expat)))

(define-public r-lnmixsurv
  (package
    (name "r-lnmixsurv")
    (version "3.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lnmixsurv" version))
       (sha256
        (base32 "0ddjsnl8r5sk1jnf2kg6yh80qankfdjkfcwx9fjm2mm4yk8cf5bv"))))
    (properties `((upstream-name . "lnmixsurv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-survival
                             r-rlang
                             r-readr
                             r-rcppparallel
                             r-rcppgsl
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-posterior
                             r-parsnip
                             r-hardhat
                             r-ggplot2
                             r-generics
                             r-dplyr
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://vivianalobo.github.io/lnmixsurv/")
    (synopsis "Bayesian Mixture Log-Normal Survival Model")
    (description
     "Bayesian Survival models via the mixture of Log-Normal distribution extends the
well-known survival models and accommodates different behaviour over time and
considers higher censored survival times.  The proposal combines mixture
distributions Fruhwirth-Schnatter(2006) <doi:10.1007/s11336-009-9121-4>, and
data augmentation techniques Tanner and Wong (1987)
<doi:10.1080/01621459.1987.10478458>.")
    (license license:expat)))

(define-public r-lnmcluster
  (package
    (name "r-lnmcluster")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lnmCluster" version))
       (sha256
        (base32 "1y5zf2m4kgysm15xnbd1zc21svif2mxpm1zla4nhg68hljl41j8s"))))
    (properties `((upstream-name . "lnmCluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rcpp
                             r-pgmm
                             r-mclust
                             r-mass
                             r-gtools
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lnmCluster")
    (synopsis
     "Perform Logistic Normal Multinomial Clustering for Microbiome Compositional Data")
    (description
     "An implementation of logistic normal multinomial (LNM) clustering.  It is an
extension of LNM mixture model proposed by Fang and Subedi (2020)
<@code{arXiv:2011.06682>}, and is designed for clustering compositional data.
The package includes 3 extended models: LNM Factor Analyzer (LNM-FA), LNM
Bicluster Mixture Model (LNM-BMM) and Penalized LNM Factor Analyzer (LNM-FA).
There are several advantages of LNM models: 1.  LNM provides more flexible
covariance structure; 2.  Factor analyzer can reduce the number of parameters to
estimate; 3.  Bicluster can simultaneously cluster subjects and taxa, and
provides significant biological insights; 4.  Penalty term allows sparse
estimation in the covariance matrix.  Details for model assumptions and
interpretation can be found in papers: Tu and Subedi (2021)
<@code{arXiv:2101.01871>} and Tu and Subedi (2022) <doi:10.1002/sam.11555>.")
    (license license:gpl2+)))

(define-public r-lnirt
  (package
    (name "r-lnirt")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LNIRT" version))
       (sha256
        (base32 "0w32qvz5mhzg6f8050p57v26amn6d2il2icjfiypf7yi3gsx7w09"))))
    (properties `((upstream-name . "LNIRT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=LNIRT")
    (synopsis "LogNormal Response Time Item Response Theory Models")
    (description
     "Allows the simultaneous analysis of responses and response times in an Item
Response Theory (IRT) modelling framework.  Supports variable person speed
functions (intercept, trend, quadratic), and covariates for item and person
(random) parameters.  Data missing-by-design can be specified.  Parameter
estimation is done with a MCMC algorithm.  LNIRT replaces the package CIRT,
which was written by Rinke Klein Entink.  For reference, see the paper by Fox,
Klein Entink and Van der Linden (2007), \"Modeling of Responses and Response
Times with the Package cirt\", Journal of Statistical Software,
<doi:10.18637/jss.v020.i07>.")
    (license license:gpl3)))

(define-public r-lncfinder
  (package
    (name "r-lncfinder")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LncFinder" version))
       (sha256
        (base32 "183l5dqwsh0519qyy2kz5qns5kcqf6dr9h0da6hl57bf2wwngkjd"))))
    (properties `((upstream-name . "LncFinder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-seqinr r-e1071 r-caret))
    (home-page "https://lncfinder.osubmi.org/")
    (synopsis "LncRNA Identification and Analysis Using Heterologous Features")
    (description
     "Long non-coding RNAs identification and analysis.  Default models are trained
with human, mouse and wheat datasets by employing SVM. Features are based on
intrinsic composition of sequence, EIIP value (electron-ion interaction
pseudopotential), and secondary structure.  This package can also extract other
classic features and build new classifiers.  Reference: Han S., et al. (2019)
<doi:10.1093/bib/bby065>.")
    (license license:gpl3)))

(define-public r-lncdiff
  (package
    (name "r-lncdiff")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lncDIFF" version))
       (sha256
        (base32 "012dwrcp0pny59hvzj7mnyyc3nijcjgxc0dyx7ab2fknp9bhs5w8"))))
    (properties `((upstream-name . "lncDIFF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lncDIFF")
    (synopsis "Long Non-Coding RNA Differential Expression Analysis")
    (description
     "We developed an approach to detect differential expression features in long
non-coding RNA low counts, using generalized linear model with zero-inflated
exponential quasi likelihood ratio test.  Methods implemented in this package
are described in Li (2019) <doi:10.1186/s12864-019-5926-4>.")
    (license license:gpl2+)))

(define-public r-lmw
  (package
    (name "r-lmw")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmw" version))
       (sha256
        (base32 "1ij9jdf8zr0pq4q5qxgvnvjf4ciqr86p39ajq5v6zlinbcs7qaiq"))))
    (properties `((upstream-name . "lmw")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich r-chk r-backports))
    (home-page "https://github.com/ngreifer/lmw")
    (synopsis "Linear Model Weights")
    (description
     "Computes the implied weights of linear regression models for estimating average
causal effects and provides diagnostics based on these weights.  These
diagnostics rely on the analyses in Chattopadhyay and Zubizarreta (2023)
<doi:10.1093/biomet/asac058> where several regression estimators are represented
as weighting estimators, in connection to inverse probability weighting.  lmw
provides tools to diagnose representativeness, balance, extrapolation, and
influence for these models, clarifying the target population of inference.
Tools are also available to simplify estimating treatment effects for specific
target populations of interest.")
    (license license:gpl2+)))

(define-public r-lmviz
  (package
    (name "r-lmviz")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmviz" version))
       (sha256
        (base32 "0sl2k02m5bxkb4jg8y666ln0xxhr4dhsfz9hlp55p9smlhycl5s2"))))
    (properties `((upstream-name . "lmviz")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-scatterplot3d
                             r-rgl
                             r-mgcv
                             r-mass
                             r-lmtest
                             r-car))
    (home-page "https://cran.r-project.org/package=lmviz")
    (synopsis "Package to Visualize Linear Models Features and Play with Them")
    (description
     "This package contains a suite of shiny applications meant to explore linear
model inference feature through simulation and games.")
    (license license:gpl3)))

(define-public r-lmtp
  (package
    (name "r-lmtp")
    (version "1.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmtp" version))
       (sha256
        (base32 "0wcsmc6xldrz3ni1czxyhq8k5p0ak1izfrpbqbbfkj7iwygcf9j0"))))
    (properties `((upstream-name . "lmtp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-superlearner
                             r-r6
                             r-progressr
                             r-origami
                             r-nnls
                             r-lifecycle
                             r-isotone
                             r-ife
                             r-generics
                             r-future
                             r-data-table
                             r-cli
                             r-checkmate))
    (home-page "https://beyondtheate.com/")
    (synopsis
     "Non-Parametric Causal Effects of Feasible Interventions Based on Modified Treatment Policies")
    (description
     "Non-parametric estimators for casual effects based on longitudinal modified
treatment policies as described in Diaz, Williams, Hoffman, and Schenck
<doi:10.1080/01621459.2021.1955691>, traditional point treatment, and
traditional longitudinal effects.  Continuous, binary, categorical treatments,
and multivariate treatments are allowed as well are censored outcomes.  The
treatment mechanism is estimated via a density ratio classification procedure
irrespective of treatment variable type.  For both continuous and binary
outcomes, additive treatment effects can be calculated and relative risks and
odds ratios may be calculated for binary outcomes.  Supports survival outcomes
with competing risks (Diaz, Hoffman, and Hejazi;
<doi:10.1007/s10985-023-09606-7>).")
    (license license:agpl3)))

(define-public r-lmtestrob
  (package
    (name "r-lmtestrob")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmtestrob" version))
       (sha256
        (base32 "1637x7wp2kb97xbllyd0kwxszcjlajfr0c9qa956cn6fdk9yi61d"))))
    (properties `((upstream-name . "lmtestrob")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=lmtestrob")
    (synopsis "Outlier Robust Specification Testing")
    (description
     "Robust test(s) for model diagnostics in regression.  The current version
contains a robust test for functional specification (linearity).  The test is
based on the robust bounded-influence test by Heritier and Ronchetti (1994)
<doi:10.1080/01621459.1994.10476822>.")
    (license license:gpl2)))

(define-public r-lmsubsets
  (package
    (name "r-lmsubsets")
    (version "0.5-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmSubsets" version))
       (sha256
        (base32 "1afdpcp3qiiprzc47cbckf49jd3f8ip81441ghgx0kfx54d1m305"))))
    (properties `((upstream-name . "lmSubsets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/marc-hofmann/lmSubsets.R")
    (synopsis "Exact Variable-Subset Selection in Linear Regression")
    (description
     "Exact and approximation algorithms for variable-subset selection in ordinary
linear regression models.  Either compute all submodels with the lowest residual
sum of squares, or determine the single-best submodel according to a
pre-determined statistical criterion.  Hofmann et al. (2020)
<doi:10.18637/jss.v093.i03>.")
    (license license:gpl3+)))

(define-public r-lmridge
  (package
    (name "r-lmridge")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmridge" version))
       (sha256
        (base32 "1lngzhxgjdg4j2bxi680zdsj0ambrpn23v2ib0mbilscbv3p8701"))))
    (properties `((upstream-name . "lmridge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lmridge")
    (synopsis
     "Linear Ridge Regression with Ridge Penalty and Ridge Statistics")
    (description
     "Linear ridge regression coefficient's estimation and testing with different
ridge related measures such as MSE, R-squared etc.  REFERENCES i.  Hoerl and
Kennard (1970) <doi:10.1080/00401706.1970.10488634>, ii.  Halawa and
El-Bassiouni (2000) <doi:10.1080/00949650008812006>, iii.  Imdadullah, Aslam,
and Saima (2017), iv.  Marquardt (1970) <doi:10.2307/1267205>.")
    (license license:gpl2+)))

(define-public r-lmqcm
  (package
    (name "r-lmqcm")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmQCM" version))
       (sha256
        (base32 "1qblf2j51zr0ajf0zp0b0xhj9jclnhj4r6nsz3b5fqwj6h2cqkxv"))))
    (properties `((upstream-name . "lmQCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-progress r-genefilter r-biobase))
    (home-page "https://github.com/huangzhii/lmQCM/")
    (synopsis "An Algorithm for Gene Co-Expression Analysis")
    (description
     "Implementation based on Zhang, Jie & Huang, Kun (2014) <doi:10.4137/CIN.S14021>
Normalized @code{ImQCM}: An Algorithm for Detecting Weak Quasi-Cliques in
Weighted Graph with Applications in Gene Co-Expression Module Discovery in
Cancers.  Cancer informatics, 13, CIN-S14021.")
    (license license:expat)))

(define-public r-lmperm
  (package
    (name "r-lmperm")
    (version "2.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmPerm" version))
       (sha256
        (base32 "05hrja5q7ii41k4fg0am6rnj6k1s7cj4ns6fv2x54cnbfaznh5iv"))))
    (properties `((upstream-name . "lmPerm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/mtorchiano/lmPerm")
    (synopsis "Permutation Tests for Linear Models")
    (description "Linear model functions using permutation tests.")
    (license license:gpl2+)))

(define-public r-lmpdata
  (package
    (name "r-lmpdata")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMPdata" version))
       (sha256
        (base32 "0d2g0w1ail82vknj9pwisxswmns9zsa24cnlm1yqhc7bqry23vgj"))))
    (properties `((upstream-name . "LMPdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-data-table))
    (home-page "https://github.com/alekrutkowski/LMPdata")
    (synopsis "Easy Import of the EU Labour Market Policy Data")
    (description
     "European Commission's Labour Market Policy (LMP) database
(<https://webgate.ec.europa.eu/empl/redisstat/databrowser/explore/all/lmp?lang=en&display=card&sort=category>)
provides information on labour market interventions, which are government
actions to help and support the unemployed and other disadvantaged groups in the
transition from unemployment or inactivity to work.  It covers the EU countries
and Norway.  This package provides functions for downloading and importing the
LMP data and metadata (codelists).")
    (license license:expat)))

(define-public r-lmomrfa
  (package
    (name "r-lmomrfa")
    (version "3.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmomRFA" version))
       (sha256
        (base32 "125svks0i6yig6ydllgzyi5jaywaj8l9mmbv95wv2dzw4h7i37k9"))))
    (properties `((upstream-name . "lmomRFA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lmom))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=lmomRFA")
    (synopsis "Regional Frequency Analysis using L-Moments")
    (description
     "This package provides functions for regional frequency analysis using the
methods of J. R. M. Hosking and J. R. Wallis (1997), \"Regional frequency
analysis: an approach based on L-moments\".")
    (license (license:fsdg-compatible "Common Public License Version 1.0"))))

(define-public r-lmompi
  (package
    (name "r-lmompi")
    (version "0.6.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmomPi" version))
       (sha256
        (base32 "0a9ddfaa3micj3q7wcpkcsxhbd6dv3gn19rdy7ll3f76g63pknf1"))))
    (properties `((upstream-name . "lmomPi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-lmom))
    (home-page "https://cran.r-project.org/package=lmomPi")
    (synopsis
     "(Precipitation) Frequency Analysis and Variability with L-Moments from 'lmom'")
    (description
     "It is an extension of lmom R package: @code{pel...()','cdf...()',qua...()}
function families are lumped and called from one function per each family
respectively in order to create robust automatic tools to fit data with
different probability distributions and then to estimate probability values and
return periods.  The implemented functions are able to manage time series with
constant and/or missing values without stopping the execution with error
messages.  The package also contains tools to calculate several indices based on
variability (e.g. SPI , Standardized Precipitation Index, see
<https://climatedataguide.ucar.edu/climate-data/standardized-precipitation-index-spi>
and <http://spei.csic.es/>) for multiple time series or spatially gridded
values.")
    (license license:gpl3+)))

(define-public r-lmomco
  (package
    (name "r-lmomco")
    (version "2.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmomco" version))
       (sha256
        (base32 "0jkqm5cavixb1wfcw00k0pa6y8j252h6mhq5ldcz1qakp07rhzb4"))))
    (properties `((upstream-name . "lmomco")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-lmoments r-goftest))
    (home-page "https://www.amazon.com/dp/1463508417/")
    (synopsis
     "L-Moments, Censored L-Moments, Trimmed L-Moments, L-Comoments, and Many Distributions")
    (description
     "Extensive functions for Lmoments (LMs) and probability-weighted moments (PWMs),
distribution parameter estimation, LMs for distributions, LM ratio diagrams,
multivariate Lcomoments, and asymmetric (asy) trimmed LMs (TLMs).  Maximum
likelihood and maximum product spacings estimation are available.  Right-tail
and left-tail LM censoring by threshold or indicator variable are available.
LMs of residual (resid) and reversed (rev) residual life are implemented along
with 13 quantile operators for reliability analyses.  Exact analytical bootstrap
estimates of order statistics, LMs, and LM var-covars are available.
Harri-Coble Tau34-squared Normality Test is available.  Distributions with L,
TL, and added (+) support for right-tail censoring (RC) encompass: Asy
Exponential (Exp) Power [L], Asy Triangular [L], Cauchy [TL], Eta-Mu [L], Exp.
[L], Gamma [L], Generalized (Gen) Exp Poisson [L], Gen Extreme Value [L], Gen
Lambda [L, TL], Gen Logistic [L], Gen Normal [L], Gen Pareto [L+RC, TL],
Govindarajulu [L], Gumbel [L], Kappa [L], Kappa-Mu [L], Kumaraswamy [L], Laplace
[L], Linear Mean Residual Quantile Function [L], Normal [L], 3p log-Normal [L],
Pearson Type III [L], Polynomial Density-Quantile 3 and 4 [L], Rayleigh [L],
Rev-Gumbel [L+RC], Rice [L], Singh Maddala [L], Slash [TL], 3p Student t [L],
Truncated Exponential [L], Wakeby [L], and Weibull [L].")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lmofit
  (package
    (name "r-lmofit")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMoFit" version))
       (sha256
        (base32 "1lpn2b4fi2vlqcghbq6fzl4cj4w837v950cxxcrafky15gwzzn8m"))))
    (properties `((upstream-name . "LMoFit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-pracma r-lmom r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LMoFit")
    (synopsis "Advanced L-Moment Fitting of Distributions")
    (description
     "This package provides a complete framework for frequency analysis is provided by
L@code{MoFit}'.  It has functions related to the determination of sample
L-moments as in Hosking, J.R.M. (1990) <doi:10.1111/j.2517-6161.1990.tb01775.x>,
the fitting of various distributions as in Zaghloul et al. (2020)
<doi:10.1016/j.advwatres.2020.103720> and Hosking, J.R.M. (2019)
<https://CRAN.R-project.org/package=lmom>, besides plotting and manipulating
L-space diagrams as in Papalexiou, S.M. & Koutsoyiannis, D. (2016)
<doi:10.1016/j.advwatres.2016.05.005> for two-shape parametric distributions on
the L-moment ratio diagram.  Additionally, the quantile, probability density,
and cumulative probability functions of various distributions are provided in a
user-friendly manner.")
    (license license:gpl3)))

(define-public r-lmn
  (package
    (name "r-lmn")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMN" version))
       (sha256
        (base32 "0qnc74m2g4fl1cb39xmanvv1hwcnk0169xn4h4phlhxgr0313m63"))))
    (properties `((upstream-name . "LMN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-supergauss r-rcppeigen r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlysy/LMN")
    (synopsis "Inference for Linear Models with Nuisance Parameters")
    (description
     "Efficient Frequentist profiling and Bayesian marginalization of parameters for
which the conditional likelihood is that of a multivariate linear regression
model.  Arbitrary inter-observation error correlations are supported, with
optimized calculations provided for independent-heteroskedastic and stationary
dependence structures.")
    (license license:gpl3)))

(define-public r-lmmstar
  (package
    (name "r-lmmstar")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMMstar" version))
       (sha256
        (base32 "1hfj69iq9ina23kyz4xvp1xfvg4klzhi6kvfqng4amazlh1vncb1"))))
    (properties `((upstream-name . "LMMstar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-rlang
                             r-numderiv
                             r-nlme
                             r-multcomp
                             r-matrix
                             r-lava
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-copula))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/bozenne/LMMstar")
    (synopsis "Repeated Measurement Models for Discrete Times")
    (description
     "Companion R package for the course \"Statistical analysis of correlated and
repeated measurements for health science researchers\" taught by the section of
Biostatistics of the University of Copenhagen.  It implements linear mixed
models where the model for the variance-covariance of the residuals is specified
via patterns (compound symmetry, toeplitz, unstructured, ...).  Statistical
inference for mean, variance, and correlation parameters is performed based on
the observed information and a Satterthwaite approximation of the degrees of
freedom.  Normalized residuals are provided to assess model misspecification.
Statistical inference can be performed for arbitrary linear or non-linear
combination(s) of model coefficients.  Predictions can be computed conditional
to covariates only or also to outcome values.")
    (license license:gpl3)))

(define-public r-lmmsolver
  (package
    (name "r-lmmsolver")
    (version "1.0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMMsolver" version))
       (sha256
        (base32 "03c1c367m8pmxaij7ml9y0w40sndmgdk9ylvks1hwry0v4irlynv"))))
    (properties `((upstream-name . "LMMsolver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spam r-rcpp r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://biometris.github.io/LMMsolver/index.html")
    (synopsis "Linear Mixed Model Solver")
    (description
     "An efficient and flexible system to solve sparse mixed model equations.
Important applications are the use of splines to model spatial or temporal
trends as described in Boer (2023). (<doi:10.1177/1471082X231178591>).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lmmpar
  (package
    (name "r-lmmpar")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmmpar" version))
       (sha256
        (base32 "1l3zjmlfjfn2wv4yayqzv6qrwaxk2sgx3hjx371b5fs54zspdj20"))))
    (properties `((upstream-name . "lmmpar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr
                             r-mnormt
                             r-matrixcalc
                             r-mass
                             r-doparallel
                             r-bigmemory))
    (home-page "https://github.com/fulyagokalp/lmmpar")
    (synopsis "Parallel Linear Mixed Model")
    (description
     "Embarrassingly Parallel Linear Mixed Model calculations spread across local
cores which repeat until convergence.")
    (license license:expat)))

(define-public r-lmmot
  (package
    (name "r-lmmot")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmmot" version))
       (sha256
        (base32 "1a8msh9yvvd7cv1zxlxdv8arlfvxqghxzcxls23v6ifl5jf4d1p3"))))
    (properties `((upstream-name . "lmmot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-maxlik r-mass))
    (home-page "https://cran.r-project.org/package=lmmot")
    (synopsis "Multiple Ordinal Tobit (MOT) Model")
    (description "Fit right censored Multiple Ordinal Tobit (MOT) model.")
    (license license:gpl3)))

(define-public r-lmmelsm
  (package
    (name "r-lmmelsm")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMMELSM" version))
       (sha256
        (base32 "1pw7wvdr5dx3bn37bxcxdxprb7la1fhqny1ra3sjdg1fz8dmw618"))))
    (properties `((upstream-name . "LMMELSM")))
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
                             r-nlme
                             r-mass
                             r-loo
                             r-formula
                             r-bh))
    (home-page "https://cran.r-project.org/package=LMMELSM")
    (synopsis "Fit Latent Multivariate Mixed Effects Location Scale Models")
    (description
     "In addition to modeling the expectation (location) of an outcome, mixed effects
location scale models (MELSMs) include submodels on the variance components
(scales) directly.  This allows models on the within-group variance with mixed
effects, and between-group variances with fixed effects.  The MELSM can be used
to model volatility, intraindividual variance, uncertainty, measurement error
variance, and more.  Multivariate MELSMs (MMELSMs) extend the model to include
multiple correlated outcomes, and therefore multiple locations and scales.  The
latent multivariate MELSM (LMMELSM) further includes multiple correlated latent
variables as outcomes.  This package implements two-level mixed effects location
scale models on multiple observed or latent outcomes, and between-group variance
modeling.  Williams, Martin, Liu, and Rast (2020)
<doi:10.1027/1015-5759/a000624>.  Hedeker, Mermelstein, and Demirtas (2008)
<doi:10.1111/j.1541-0420.2007.00924.x>.")
    (license license:expat)))

(define-public r-lmm
  (package
    (name "r-lmm")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmm" version))
       (sha256
        (base32 "0ic3l311y7sq6q8kb5il3k115w1gpzy9kxx8fbjnx1zl2qsg10wf"))))
    (properties `((upstream-name . "lmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list gfortran))
    (home-page "https://github.com/jinghuazhao/R")
    (synopsis "Linear Mixed Models")
    (description
     "It implements Expectation/Conditional Maximization Either (ECME) and rapidly
converging algorithms as well as Bayesian inference for linear mixed models,
which is described in Schafer, J.L. (1998) \"Some improved procedures for linear
mixed models\".  Dept.  of Statistics, The Pennsylvania State University.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-lmls
  (package
    (name "r-lmls")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmls" version))
       (sha256
        (base32 "165wr49fnmd1xv33hic4b20nfmv4j86y7z90prlgjqhh8cdnk7nm"))))
    (properties `((upstream-name . "lmls")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://hriebl.github.io/lmls/")
    (synopsis "Gaussian Location-Scale Regression")
    (description
     "The Gaussian location-scale regression model is a multi-predictor model with
explanatory variables for the mean (= location) and the standard deviation (=
scale) of a response variable.  This package implements maximum likelihood and
Markov chain Monte Carlo (MCMC) inference (using algorithms from Girolami and
Calderhead (2011) <doi:10.1111/j.1467-9868.2010.00765.x> and Nesterov (2009)
<doi:10.1007/s10107-007-0149-x>), a parametric bootstrap algorithm, and
diagnostic plots for the model class.")
    (license license:expat)))

(define-public r-lmhelprs
  (package
    (name "r-lmhelprs")
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmhelprs" version))
       (sha256
        (base32 "06q79bzsxjgxk0q9zl7ymkc7kk6f9cl9kxmkvdn0g797nzpwkfj0"))))
    (properties `((upstream-name . "lmhelprs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://sfcheung.github.io/lmhelprs/")
    (synopsis "Helper Functions for Linear Model Analysis")
    (description
     "This package provides a collection of helper functions for multiple regression
models fitted by @code{lm()}.  Most of them are simple functions for simple
tasks which can be done with coding, but may not be easy for occasional users of
R. Most of the tasks addressed are those sometimes needed when using the
manymome package (Cheung and Cheung, 2023, <doi:10.3758/s13428-023-02224-z>) and
stdmod package (Cheung, Cheung, Lau, Hui, and Vong, 2022,
<doi:10.1037/hea0001188>).  However, they can also be used in other scenarios.")
    (license license:gpl3+)))

(define-public r-lmforc
  (package
    (name "r-lmforc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmForc" version))
       (sha256
        (base32 "1dx65bnwz2x83yw4v86zzwkgvyy3vh3609yxv80nz1aq4hj54zqw"))))
    (properties `((upstream-name . "lmForc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lmForc")
    (synopsis "Linear Model Forecasting")
    (description
     "Introduces in-sample, out-of-sample, pseudo out-of-sample, and benchmark model
forecast tests and a new class for working with forecast data, Forecast.")
    (license license:gpl3)))

(define-public r-lmfor
  (package
    (name "r-lmfor")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmfor" version))
       (sha256
        (base32 "0zhahfzphyywdnwkj8c94pxm86v296bvvszzcxp37xi4gayaknm6"))))
    (properties `((upstream-name . "lmfor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-geom
                             r-spatstat
                             r-nlme
                             r-matrix
                             r-mass
                             r-magic))
    (home-page "https://cran.r-project.org/package=lmfor")
    (synopsis "Functions for Forest Biometrics")
    (description
     "This package provides functions for different purposes related to forest
biometrics, including illustrative graphics, numerical computation, modeling
height-diameter relationships, prediction of tree volumes, modelling of diameter
distributions and estimation off stand density using ITD. Several empirical
datasets are also included.")
    (license license:gpl2)))

(define-public r-lmfilter
  (package
    (name "r-lmfilter")
    (version "0.1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMfilteR" version))
       (sha256
        (base32 "1ncx8kqnh43zxffy7rba1xjb3ar3qi1rzmnwpl6vldijajmnjrv8"))))
    (properties `((upstream-name . "LMfilteR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=LMfilteR")
    (synopsis
     "Filter Methods for Parameter Estimation in Linear and Non Linear Regression Models")
    (description
     "We present a method based on filtering algorithms to estimate the parameters of
linear, i.e.  the coefficients and the variance of the error term.  The proposed
algorithms make use of Particle Filters following Ristic, B., Arulampalam, S.,
Gordon, N. (2004, ISBN: 158053631X) resampling methods.  Parameters of logistic
regression models are also estimated using an evolutionary particle filter
method.")
    (license license:gpl2+)))

(define-public r-lmf
  (package
    (name "r-lmf")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmf" version))
       (sha256
        (base32 "1vrwshzaxq1vxin5f2hsp1vngn891y5nvvmhag26xbczc526gmac"))))
    (properties `((upstream-name . "lmf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lmf")
    (synopsis
     "Functions for Estimation and Inference of Selection in Age-Structured Populations")
    (description
     "This package provides methods for estimation and statistical inference on
directional and fluctuating selection in age-structured populations.")
    (license license:gpl2)))

(define-public r-lmest
  (package
    (name "r-lmest")
    (version "3.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMest" version))
       (sha256
        (base32 "0czy4yb07n71g6gvg6f3bgzywizkm4bjqszwhxx9ccw2ch48wm5j"))))
    (properties `((upstream-name . "LMest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d
                             r-mvtnorm
                             r-multilcirt
                             r-mix
                             r-mclust
                             r-mass
                             r-formula
                             r-diagram))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=LMest")
    (synopsis "Generalized Latent Markov Models")
    (description
     "Latent Markov models for longitudinal continuous and categorical data.  See
Bartolucci, Pandolfi, Pennoni (2017)<doi:10.18637/jss.v081.i04>.")
    (license license:gpl2+)))

(define-public r-lmesplines
  (package
    (name "r-lmesplines")
    (version "1.1-12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmeSplines" version))
       (sha256
        (base32 "140l95c6yys2rdpyh7clqx4x4qfd4w36hpz6jkb2ygbh90ikzi2r"))))
    (properties `((upstream-name . "lmeSplines")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=lmeSplines")
    (synopsis "Add Smoothing Spline Modelling Capability to `nlme`")
    (description
     "Adds smoothing spline modelling capability to nlme.  Fits smoothing spline terms
in Gaussian linear and nonlinear mixed-effects models.")
    (license license:gpl2+)))

(define-public r-lmerperm
  (package
    (name "r-lmerperm")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmerPerm" version))
       (sha256
        (base32 "1z69qr8nz89f4qbkyjs4n171yz9g6znxkgykrn0k3qbd3d7r9jds"))))
    (properties `((upstream-name . "lmerPerm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lmertest))
    (home-page "https://cran.r-project.org/package=lmerPerm")
    (synopsis
     "Perform Permutation Test on General Linear and Mixed Linear Regression")
    (description
     "We provide a solution for performing permutation tests on linear and mixed
linear regression models.  It allows users to obtain accurate p-values without
making distributional assumptions about the data.  By generating a null
distribution of the test statistics through repeated permutations of the
response variable, permutation tests provide a powerful alternative to
traditional parameter tests (Holt et al. (2023)
<doi:10.1007/s10683-023-09799-6>).  In this early version, we focus on the
permutation tests over observed t values of beta coefficients, i.e.original t
values generated by parameter tests.  After generating a null distribution of
the test statistic through repeated permutations of the response variable, each
observed t values would be compared to the null distribution to generate a
p-value.  To improve the efficiency,a stop criterion (Anscombe (1953)
<doi:10.1111/j.2517-6161.1953.tb00121.x>) is adopted to force permutation to
stop if the estimated standard deviation of the value falls below a fraction of
the estimated p-value.  By doing so, we avoid the need for massive calculations
in exact permutation methods while still generating stable and accurate
p-values.")
    (license license:gpl3)))

(define-public r-lmeresampler
  (package
    (name "r-lmeresampler")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmeresampler" version))
       (sha256
        (base32 "0y9bawakxyqxdmx74jsyrg3mgiwb22h8pskp4wzv99fl2dp3bfhs"))))
    (properties `((upstream-name . "lmeresampler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-statmod
                             r-purrr
                             r-nlmeu
                             r-matrix
                             r-magrittr
                             r-hlmdiag
                             r-ggplot2
                             r-ggdist
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/aloy/lmeresampler")
    (synopsis "Bootstrap Methods for Nested Linear Mixed-Effects Models")
    (description
     "Bootstrap routines for nested linear mixed effects models fit using either lme4
or nlme'.  The provided @code{bootstrap()} function implements the parametric,
residual, cases, random effect block (REB), and wild bootstrap procedures.  An
overview of these procedures can be found in Van der Leeden et al. (2008) <doi:
10.1007/978-0-387-73186-5_11>, Carpenter, Goldstein & Rasbash (2003) <doi:
10.1111/1467-9876.00415>, and Chambers & Chandra (2013) <doi:
10.1080/10618600.2012.681216>.")
    (license license:gpl3)))

(define-public r-lmerconveniencefunctions
  (package
    (name "r-lmerconveniencefunctions")
    (version "3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMERConvenienceFunctions" version))
       (sha256
        (base32 "0jg889qh5a9wdi01yiw6z7kivs9dzh5dcq39f4zifdpqzglhshzb"))))
    (properties `((upstream-name . "LMERConvenienceFunctions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mgcv r-matrix r-lme4 r-lcfdata r-fields))
    (home-page "https://cran.r-project.org/package=LMERConvenienceFunctions")
    (synopsis "Model Selection and Post-Hoc Analysis for (G)LMER Models")
    (description
     "The main function of the package is to perform backward selection of fixed
effects, forward fitting of the random effects, and post-hoc analysis using
parallel capabilities.  Other functionality includes the computation of ANOVAs
with upper- or lower-bound p-values and R-squared values for each model term,
model criticism plots, data trimming on model residuals, and data visualization.
 The data to run examples is contained in package LCF_data.")
    (license license:gpl2)))

(define-public r-lme4gs
  (package
    (name "r-lme4gs")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lme4GS" version))
       (sha256
        (base32 "1lwd0vgg3f4p5zvjfbr88fp530ymir3yl3zby9i1dc6isdb48h5v"))))
    (properties `((upstream-name . "lme4GS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-lme4))
    (home-page "https://cran.r-project.org/package=lme4GS")
    (synopsis "'lme4' for Genomic Selection")
    (description
     "Flexible functions that use lme4 as computational engine for fitting models used
in Genomic Selection (GS).  GS is a technology used for genetic improvement, and
it has many advantages over phenotype-based selection.  There are several
statistical models that adequately approach the statistical challenges in GS,
such as in linear mixed models (LMMs).  The lme4 is the standard package for
fitting linear and generalized LMMs in the R-package, but its use for genetic
analysis is limited because it does not allow the correlation between
individuals or groups of individuals to be defined.  The lme4GS package is
focused on fitting LMMs with covariance structures defined by the user,
bandwidth selection, and genomic prediction.  The new package is focused on
genomic prediction of the models used in GS and can fit LMMs using different
variance-covariance matrices.  Several examples of GS models are presented using
this package as well as the analysis using real data.  For more details see
Caamal-Pat et.al. (2021) <doi:10.3389/fgene.2021.680569>.")
    (license license:gpl2+)))

(define-public r-lme4breeding
  (package
    (name "r-lme4breeding")
    (version "1.0.63")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lme4breeding" version))
       (sha256
        (base32 "0sc3xkgk7s1kbryrja1svk90fkc6g6sd0ynimva3jj1wbjvj0a0y"))))
    (properties `((upstream-name . "lme4breeding")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-lme4 r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lme4breeding")
    (synopsis "Relationship-Based Mixed-Effects Models")
    (description
     "Fit relationship-based and customized mixed-effects models with complex
variance-covariance structures using the lme4 machinery.  The core computational
algorithms are implemented using the Eigen C++ library for numerical linear
algebra and @code{RcppEigen} glue'.")
    (license license:gpl2+)))

(define-public r-lmdiallel
  (package
    (name "r-lmdiallel")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmDiallel" version))
       (sha256
        (base32 "01z4lx9i7mz8wy6znwiqyygngqcf0ymbcpsshxykh1hcy4hsh4r6"))))
    (properties `((upstream-name . "lmDiallel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-sommer r-plyr r-multcomp))
    (home-page "https://www.statforbiology.com/lmDiallel/")
    (synopsis "Linear Fixed/Mixed Effects Models for Diallel Crosses")
    (description
     "Several service functions to be used to analyse datasets obtained from diallel
experiments within the frame of linear models in R, as described in Onofri et al
(2020) <DOI:10.1007/s00122-020-03716-8>.")
    (license license:gpl2+)))

(define-public r-lmd
  (package
    (name "r-lmd")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LMD" version))
       (sha256
        (base32 "0yizv25ssw9a2ydwlabgx6rfksi3bfz6ay4508fz21j18sq49dfy"))))
    (properties `((upstream-name . "LMD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-patchwork r-ggplot2 r-emd))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shubhra-opensource/LMD")
    (synopsis "Self-Adaptive Approach for Demodulating Multi-Component Signal")
    (description
     "Local Mean Decomposition is an iterative and self-adaptive approach for
demodulating, processing, and analyzing multi-component amplitude modulated and
frequency modulated signals.  This R package is based on the approach suggested
by Smith (2005) <doi:10.1098/rsif.2005.0058> and the Python library
@code{PyLMD}'.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-lmboot
  (package
    (name "r-lmboot")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmboot" version))
       (sha256
        (base32 "1v7a3vlv0187mpg3y3pj7f3pbk1v5n6amw732chy10vdw5nmfkwd"))))
    (properties `((upstream-name . "lmboot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-evd))
    (home-page "https://cran.r-project.org/package=lmboot")
    (synopsis "Bootstrap in Linear Models")
    (description
     "Various efficient and robust bootstrap methods are implemented for linear models
with least squares estimation.  Functions within this package allow users to
create bootstrap sampling distributions for model parameters, test hypotheses
about parameters, and visualize the bootstrap sampling or null distributions.
Methods implemented for linear models include the wild bootstrap by Wu (1986)
<doi:10.1214/aos/1176350142>, the residual and paired bootstraps by Efron (1979,
ISBN:978-1-4612-4380-9), the delete-1 jackknife by Quenouille (1956)
<doi:10.2307/2332914>, and the Bayesian bootstrap by Rubin (1981)
<doi:10.1214/aos/1176345338>.")
    (license license:gpl2)))

(define-public r-lmap
  (package
    (name "r-lmap")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lmap" version))
       (sha256
        (base32 "0b5l1rab6cwpw3cc4lss0ab816xcz3931i7wyxn9nysbai6n5vrp"))))
    (properties `((upstream-name . "lmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rfast
                             r-nnet
                             r-mass
                             r-magrittr
                             r-haven
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-ggforce
                             r-fmdu
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=lmap")
    (synopsis "Logistic Mapping")
    (description
     "Set of tools for mapping of categorical response variables based on principal
component analysis (pca) and multidimensional unfolding (mdu).")
    (license license:bsd-2)))

(define-public r-lm-br
  (package
    (name "r-lm-br")
    (version "2.9.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lm.br" version))
       (sha256
        (base32 "1v9izpyklxsm8bi2kaksgbzzpdrj33p4dxx01mxgal3dk5101v0b"))))
    (properties `((upstream-name . "lm.br")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=lm.br")
    (synopsis "Linear Model with Breakpoint")
    (description
     "Exact significance tests for a changepoint in linear or multiple linear
regression.  Confidence regions with exact coverage probabilities for the
changepoint.  Based on Knowles, Siegmund and Zhang (1991)
<doi:10.1093/biomet/78.1.15>.")
    (license license:gpl2+)))

(define-public r-lm-beta
  (package
    (name "r-lm-beta")
    (version "1.7-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lm.beta" version))
       (sha256
        (base32 "0r3j0y1fg6sffkab4r6pxjs6r7bysqddmk2mqbh5ym36f1g4q54i"))))
    (properties `((upstream-name . "lm.beta")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lm.beta")
    (synopsis
     "Add Standardized Regression Coefficients to Linear-Model-Objects")
    (description
     "Adds standardized regression coefficients to objects created by lm'.  Also
extends the S3 methods print', summary and coef with additional boolean argument
standardized and provides xtable'-support.")
    (license license:gpl3+)))

(define-public r-llsr
  (package
    (name "r-llsr")
    (version "0.0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LLSR" version))
       (sha256
        (base32 "0nci8p3gw35a3ifwrq7r2jih718p2iwmmh3495qnh0fk304y7kbi"))))
    (properties `((upstream-name . "LLSR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-svglite
                             r-svdialogs
                             r-rootsolve
                             r-openxlsx
                             r-nleqslv
                             r-minpack-lm
                             r-ggplot2
                             r-dplyr
                             r-digest
                             r-crayon))
    (home-page "https://CRAN.R-project.org/package=LLSR")
    (synopsis "Data Analysis of Liquid-Liquid Systems using R")
    (description
     "Originally design to characterise Aqueous Two Phase Systems, LLSR provide a
simple way to analyse experimental data and obtain phase diagram parameters,
among other properties, systematically.  The package will include (every other
update) new functions in order to comprise useful tools in liquid-liquid
extraction research.")
    (license license:gpl3)))

(define-public r-llogistic
  (package
    (name "r-llogistic")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "llogistic" version))
       (sha256
        (base32 "0wfszgcdi0i3lsm7gsih6a411v353c2gpbg3f06n6c2n35939lsl"))))
    (properties `((upstream-name . "llogistic")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=llogistic")
    (synopsis "The L-Logistic Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
L-Logistic distribution with parameters m and phi.  The parameter m is the
median of the distribution.")
    (license license:gpl3)))

(define-public r-llmr
  (package
    (name "r-llmr")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LLMR" version))
       (sha256
        (base32 "04jr1gvl524551xmhv9ydp9d8adp5wkqymx8md8v1dvdw0iyj8jg"))))
    (properties `((upstream-name . "LLMR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-mime
                             r-memoise
                             r-httr2
                             r-glue
                             r-future-apply
                             r-future
                             r-dplyr
                             r-base64enc))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/asanaei/LLMR")
    (synopsis "Interface for Large Language Model APIs in R")
    (description
     "This package provides a unified interface to interact with multiple Large
Language Model (LLM) APIs.  The package supports text generation, embeddings,
parallelization, as well as tidyverse integration.  Users can switch between
different LLM providers seamlessly within R workflows, or call multiple models
in parallel.  The package enables creation of LLM agents for automated tasks and
provides consistent error handling across all supported APIs.  APIs include
@code{OpenAI} (see <https://platform.openai.com/docs> for details), Anthropic
(see <https://docs.anthropic.com/en/api/getting-started> for details), Groq (see
<https://console.groq.com/docs/api-reference> for details), Together AI (see
<https://docs.together.ai/docs/quickstart> for details), @code{DeepSeek} (see
<https://api-docs.deepseek.com> for details), Gemini (see
<https://aistudio.google.com> for details), @code{xAI} (see <https://docs.x.ai/>
for details), and Voyage AI (see <https://docs.voyageai.com/docs/introduction>
for details).")
    (license license:expat)))

(define-public r-llmagentr
  (package
    (name "r-llmagentr")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LLMAgentR" version))
       (sha256
        (base32 "0qsql1qk15g5gskwqdb87hm6ki4v3xw4nj4xdgvnvlaw3v60djp7"))))
    (properties `((upstream-name . "LLMAgentR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-workflows
                             r-timetk
                             r-rsqlite
                             r-rsample
                             r-recipes
                             r-purrr
                             r-plotly
                             r-pdftools
                             r-parsnip
                             r-officer
                             r-modeltime-ensemble
                             r-modeltime
                             r-httr
                             r-glue
                             r-dplyr
                             r-dbi))
    (home-page "https://github.com/knowusuboaky/LLMAgentR")
    (synopsis "Language Model Agents in R for AI Workflows and Research")
    (description
     "This package provides modular, graph-based agents powered by large language
models (LLMs) for intelligent task execution in R. Supports structured workflows
for tasks such as forecasting, data visualization, feature engineering, data
wrangling, data cleaning, SQL', code generation, weather reporting, and
research-driven question answering.  Each agent performs iterative reasoning:
recommending steps, generating R code, executing, debugging, and explaining
results.  Includes built-in support for packages such as tidymodels',
modeltime', plotly', ggplot2', and prophet'.  Designed for analysts, developers,
and teams building intelligent, reproducible AI workflows in R. Compatible with
LLM providers such as @code{OpenAI}', Anthropic', Groq', and Ollama'.  Inspired
by the Python package langagent'.")
    (license license:expat)))

(define-public r-llm
  (package
    (name "r-llm")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LLM" version))
       (sha256
        (base32 "0kxppzaim7cmjawg5rjih4dsz8adq0asairgq3vx5lyjppb2cybx"))))
    (properties `((upstream-name . "LLM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-stringr
                             r-scales
                             r-rweka
                             r-reghelper
                             r-partykit))
    (home-page "https://cran.r-project.org/package=LLM")
    (synopsis "Logit Leaf Model Classifier for Binary Classification")
    (description
     "Fits the Logit Leaf Model, makes predictions and visualizes the output. (De
Caigny et al., (2018) <DOI:10.1016/j.ejor.2018.02.009>).")
    (license license:gpl3+)))

(define-public r-llic
  (package
    (name "r-llic")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LLIC" version))
       (sha256
        (base32 "0nvzhwv4g0vicv082vp7fl63gkn3zphggzpim2rvnkps9msygqs3"))))
    (properties `((upstream-name . "LLIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-rlang
                             r-relliptical
                             r-laplacesdemon
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=LLIC")
    (synopsis
     "Likelihood Criterion (LIC) Analysis for Laplace Regression Model")
    (description
     "This package performs likelihood criterion analysis using the Laplace regression
model to determine its optimal subset of variables.  The methodology is based on
Guo et al. (2023), LIC criterion for optimal subset selection in distributed
interval estimation <doi:10.1080/02331888.2020.1823979>.")
    (license license:expat)))

(define-public r-llbayesireg
  (package
    (name "r-llbayesireg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "llbayesireg" version))
       (sha256
        (base32 "0jhkmrjkqfm1flwsbpv6060j6g7cj4ngm0drvrlvsiqpni0k96mh"))))
    (properties `((upstream-name . "llbayesireg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stanheaders
                             r-rstan
                             r-rcpp
                             r-mcmcpack
                             r-mass
                             r-llogistic
                             r-ggplot2
                             r-coda))
    (home-page "https://cran.r-project.org/package=llbayesireg")
    (synopsis "The L-Logistic Bayesian Regression")
    (description
     "R functions and data sets for the work Paz, R.F., Balakrishnan, N and BazÃ¡n,
J.L. (2018).  L-logistic regression models: Prior sensitivity analysis,
robustness to outliers and applications.  Brazilian Journal of Probability and
Statistics, <https://www.imstat.org/wp-content/uploads/2018/05/BJPS397.pdf>.")
    (license license:gpl3+)))

(define-public r-llama
  (package
    (name "r-llama")
    (version "0.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "llama" version))
       (sha256
        (base32 "1rw4lbz172hwb24r424qq86bw7m3xxl66k474wx1scpcrsix2nzw"))))
    (properties `((upstream-name . "llama")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava
                             r-plyr
                             r-parallelmap
                             r-mlr
                             r-ggplot2
                             r-data-table
                             r-checkmate
                             r-bbmisc))
    (home-page "https://bitbucket.org/lkotthoff/llama")
    (synopsis "Leveraging Learning to Automatically Manage Algorithms")
    (description
     "This package provides functionality to train and evaluate algorithm selection
models for portfolios.")
    (license license:bsd-3)))

(define-public r-lkt
  (package
    (name "r-lkt")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LKT" version))
       (sha256
        (base32 "163vg974x7bav5fc6sd8pnnrkwcwy6kqdd66k8zg89m8jmy9iffp"))))
    (properties `((upstream-name . "LKT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsem
                             r-proc
                             r-matrix
                             r-lme4
                             r-liblinear
                             r-hdinterval
                             r-glmnetutils
                             r-glmnet
                             r-data-table
                             r-crayon
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LKT")
    (synopsis "Logistic Knowledge Tracing")
    (description
     "Computes Logistic Knowledge Tracing ('LKT') which is a general method for
tracking human learning in an educational software system.  Please see Pavlik,
Eglington, and Harrel-Williams (2021)
<https://ieeexplore.ieee.org/document/9616435>.  LKT is a method to compute
features of student data that are used as predictors of subsequent performance.
LKT allows great flexibility in the choice of predictive components and features
computed for these predictive components.  The system is built on top of
@code{LiblineaR}', which enables extremely fast solutions compared to base
@code{glm()} in R.")
    (license license:gpl3)))

(define-public r-ljr
  (package
    (name "r-ljr")
    (version "1.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ljr" version))
       (sha256
        (base32 "0jby94ml8w6pwnxbmv6qfjww2myvvnn9vrmlqpdh71dhgp3z35py"))))
    (properties `((upstream-name . "ljr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=ljr")
    (synopsis "Logistic Joinpoint Regression")
    (description "Fits and tests logistic joinpoint models.")
    (license license:gpl2+)))

(define-public r-ljmp3converter
  (package
    (name "r-ljmp3converter")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LJmp3converter" version))
       (sha256
        (base32 "1xyw0p1d8kfn07g64ns2vsr5ka475lxmwrd7kbnj37fc9ifdgph0"))))
    (properties `((upstream-name . "LJmp3converter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstudioapi r-httr r-fs))
    (home-page "https://cran.r-project.org/package=LJmp3converter")
    (synopsis
     "Convert Video Files to 'mp3' Format, Merge or Trim Audio Files using 'FFmpeg'")
    (description
     "Converts video files to mp3', merges multiple audio files and trims audio files
using FFmpeg', which is dynamically downloaded to avoid bundling any third-party
binaries.  Users must ensure compliance with the license terms of FFmpeg when
using the package.  See
<https://github.com/@code{BtbN/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip>}
for details.")
    (license license:gpl3)))

(define-public r-ljexm
  (package
    (name "r-ljexm")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LJexm" version))
       (sha256
        (base32 "1mxqqi39vpy4hm9dzbq423v5hyhx7hl0n00cj8pxnw0g1b4ifb57"))))
    (properties `((upstream-name . "LJexm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-webshot r-rstudioapi r-pdftools r-fs))
    (home-page "https://cran.r-project.org/package=LJexm")
    (synopsis "Extract, Convert, and Merge 'pdf' Files from 'zip' Files")
    (description
     "Extracts zip files, converts Word', Excel', and html'/'htm files to pdf format.
Word and Excel conversion uses VBScript', while html'/'htm conversion uses
webshot and @code{PhantomJS}'.  Additionally, the package merges pdf files into
a single document.  This package is only supported on Windows due to VBScript
dependencies.")
    (license license:gpl3+)))

(define-public r-liver
  (package
    (name "r-liver")
    (version "1.19")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liver" version))
       (sha256
        (base32 "0w4f3bl5f6l6728lnwj15zp45wawx7f0zaczcvvdfafwzr9r93mn"))))
    (properties `((upstream-name . "liver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-class))
    (native-inputs (list r-knitr))
    (home-page "https://uncovering-data-science.netlify.app")
    (synopsis "\"Eating the Liver of Data Science\"")
    (description
     "This package provides a suite of helper functions and a collection of datasets
used in the book <https://uncovering-data-science.netlify.app>.  It is designed
to make data science techniques accessible to individuals with minimal coding
experience.  Inspired by an ancient Persian idiom, the package likens this
learning process to \"eating the liver of data science,\" symbolizing deep and
immersive engagement with the field.")
    (license license:gpl2+)))

(define-public r-live
  (package
    (name "r-live")
    (version "1.5.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "live" version))
       (sha256
        (base32 "1s6yrbwlc4wqszl2yvy1x6d93my18ba8sm8pwfy547cd1x055vig"))))
    (properties `((upstream-name . "live")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-mlr
                             r-mass
                             r-gower
                             r-ggplot2
                             r-forestmodel
                             r-e1071
                             r-dplyr
                             r-data-table
                             r-breakdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/live")
    (synopsis "Local Interpretable (Model-Agnostic) Visual Explanations")
    (description
     "Interpretability of complex machine learning models is a growing concern.  This
package helps to understand key factors that drive the decision made by
complicated predictive model (so called black box model).  This is achieved
through local approximations that are either based on additive regression like
model or CART like model that allows for higher interactions.  The methodology
is based on Tulio Ribeiro, Singh, Guestrin (2016) <doi:10.1145/2939672.2939778>.
 More details can be found in Staniak, Biecek (2018) <doi:10.32614/RJ-2018-072>.")
    (license license:expat)))

(define-public r-liureg
  (package
    (name "r-liureg")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liureg" version))
       (sha256
        (base32 "1zhc5fs47whjvvwwiivykxfchzbjbldyvdmqh9rp7ccwba2q3956"))))
    (properties `((upstream-name . "liureg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=liureg")
    (synopsis "Liu Regression with Liu Biasing Parameters and Statistics")
    (description
     "Linear Liu regression coefficient's estimation and testing with different Liu
related measures such as MSE, R-squared etc.  REFERENCES i.  Akdeniz and
Kaciranlar (1995) <doi:10.1080/03610929508831585> ii.  Druilhet and Mom (2008)
<doi:10.1016/j.jmva.2006.06.011> iii.  Imdadullah, Aslam, and Saima (2017) iv.
Liu (1993) <doi:10.1080/03610929308831027> v.  Liu (2001)
<doi:10.1016/j.jspi.2010.05.030>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-litterfitter
  (package
    (name "r-litterfitter")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "litterfitter" version))
       (sha256
        (base32 "095jdrf0bfc465kabxnkdii1idqfnk4q7130kby0z499a88k1zpp"))))
    (properties `((upstream-name . "litterfitter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/traitecoevo/litterfitter/issues")
    (synopsis "Fit a Collection of Curves to Single Cohort Decomposition Data")
    (description
     "There is a long tradition of studying the flux of carbon from the biosphere to
the atmosphere by following a particular cohort of litter (wood, leaves, roots,
or other organic material) through time.  The resulting data are mass remaining
and time.  A variety of functional forms may be used to fit the resulting data.
Some work better empirically.  Some are better connected to a process-based
understanding.  Some have a small number of free parameters; others have more.
This package matches decomposition data to a family of these curves using
likelihood--based fitting.  This package is based on published research by
Cornwell & Weedon (2013) <doi:10.1111/2041-210X.12138>.")
    (license license:expat)))

(define-public r-litter
  (package
    (name "r-litter")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "litteR" version))
       (sha256
        (base32 "1j6wj3dg7lwq6kki0461pzy2k7jhkgn0h5cjh2aa7hgwp6d37s09"))))
    (properties `((upstream-name . "litteR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rmarkdown
                             r-rlang
                             r-readr
                             r-purrr
                             r-ggplot2
                             r-fs
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=litteR")
    (synopsis "Litter Analysis")
    (description
     "Data sets on various litter types like beach litter, riverain litter, floating
litter, and seafloor litter are rapidly growing.  This package offers a simple
user interface to analyse these litter data in a consistent and reproducible
way.  It also provides functions to facilitate several kinds of litter analysis,
e.g., trend analysis, power analysis, and baseline analysis.  Under the hood,
these functions are also used by the user interface.  See Schulz et al. (2019)
<doi:10.1016/j.envpol.2019.02.030> for details.  MS-Windows users are advised to
run @code{litteR} in RStudio'.  See our vignette: Installation manual for
RStudio and @code{litteR}'.")
    (license license:gpl3+)))

(define-public r-litriddle
  (package
    (name "r-litriddle")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "litRiddle" version))
       (sha256
        (base32 "18vy64wfxg6jfwi5rd5l5164wvg3rab6zcxsn6xhz0nj7byn5fgn"))))
    (properties `((upstream-name . "litRiddle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://literaryquality.huygens.knaw.nl/")
    (synopsis "Dataset and Tools to Research the Riddle of Literary Quality")
    (description
     "Dataset and functions to explore quality of literary novels.  The package is a
part of the Riddle of Literary Quality project, and it contains the data of a
reader survey about fiction in Dutch, a description of the novels the readers
rated, and the results of stylistic measurements of the novels.  The package
also contains functions to combine, analyze, and visualize these data.  For more
details, see: Eder M, van Zundert J, Lensink S, van Dalen-Oskam K (2022).
Replicating The Riddle of Literary Quality: The @code{litRiddle} package for R.
In _Digital Humanities 2022: Conference Abstracts_, 636-637.")
    (license license:gpl3+)))

(define-public r-literanger
  (package
    (name "r-literanger")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "literanger" version))
       (sha256
        (base32 "1rsf1f2p31kqjvkpkwfhsdl4fjcdqbffy38xdmxyzlm9q40qhqnh"))))
    (properties `((upstream-name . "literanger")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcereal r-cpp11))
    (home-page "https://gitlab.com/stephematician/literanger")
    (synopsis "Fast Serializable Random Forests Based on 'ranger'")
    (description
     "An updated implementation of R package ranger by Wright et al, (2017)
<doi:10.18637/jss.v077.i01> for training and predicting from random forests,
particularly suited to high-dimensional data, and for embedding in Multiple
Imputation by Chained Equations (MICE) by van Buuren (2007)
<doi:10.1177/0962280206074463>.  Ensembles of classification and regression
trees are currently supported.  Sparse data of class @code{dgCMatrix} (R package
Matrix') can be directly analyzed.  Conventional bagged predictions are
available alongside an efficient prediction for MICE via the algorithm proposed
by Doove et al (2014) <doi:10.1016/j.csda.2013.10.025>.  Trained forests can be
written to and read from storage.  Survival and probability forests are not
supported in the update, nor is data of class gwaa.data (R package
@code{GenABEL}'); use the original ranger package for these analyses.")
    (license license:gpl3)))

(define-public r-liteq
  (package
    (name "r-liteq")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liteq" version))
       (sha256
        (base32 "0w3w9f6374qwvlrqknavqh9b38n5q1r6aw5zmz5lahvadalwdbwi"))))
    (properties `((upstream-name . "liteq")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsqlite r-rappdirs r-dbi r-assertthat))
    (home-page "https://github.com/r-lib/liteq#readme")
    (synopsis "Lightweight Portable Message Queue Using 'SQLite'")
    (description
     "Temporary and permanent message queues for R. Built on top of SQLite databases.
SQLite provides locking, and makes it possible to detect crashed consumers.
Crashed jobs can be automatically marked as \"failed\", or put in the queue again,
potentially a limited number of times.")
    (license license:expat)))

(define-public r-lite
  (package
    (name "r-lite")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lite" version))
       (sha256
        (base32 "005lagzgyc05ssy4bvj6vlfjypqpacqh60bfj8yhj75b81m321a9"))))
    (properties `((upstream-name . "lite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich r-rust r-revdbayes r-exdex r-chandwich))
    (native-inputs (list r-knitr))
    (home-page "https://paulnorthrop.github.io/lite/")
    (synopsis "Likelihood-Based Inference for Time Series Extremes")
    (description
     "This package performs likelihood-based inference for stationary time series
extremes.  The general approach follows Fawcett and Walshaw (2012)
<doi:10.1002/env.2133>.  Marginal extreme value inferences are adjusted for
cluster dependence in the data using the methodology in Chandler and Bate (2007)
<doi:10.1093/biomet/asm015>, producing an adjusted log-likelihood for the model
parameters.  A log-likelihood for the extremal index is produced using the
K-gaps model of Suveges and Davison (2010) <doi:10.1214/09-AOAS292>.  These
log-likelihoods are combined to make inferences about extreme values.  Both
maximum likelihood and Bayesian approaches are available.")
    (license license:gpl2+)))

(define-public r-lit
  (package
    (name "r-lit")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lit" version))
       (sha256
        (base32 "0d148s09cd6d4pqn9yg98x9nm1dr8i6yjsh7mf9a6jnnyx8z6z45"))))
    (properties `((upstream-name . "lit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpparmadillo r-rcpp r-genio
                             r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ajbass/lit")
    (synopsis "Latent Interaction Testing for Genome-Wide Studies")
    (description
     "Identifying latent genetic interactions in genome-wide association studies using
the Latent Interaction Testing (LIT) framework.  LIT is a flexible kernel-based
approach that leverages information across multiple traits to detect latent
genetic interactions without specifying or observing the interacting variable
(e.g., environment).  LIT accepts standard PLINK files as inputs to analyze
large genome-wide association studies.")
    (license license:lgpl2.0+)))

(define-public r-listwithdefaults
  (package
    (name "r-listwithdefaults")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listWithDefaults" version))
       (sha256
        (base32 "1rv9jq9zlr5dm08mimba6ni2p5vkfybrgrqk1alm7y6mqpx56byp"))))
    (properties `((upstream-name . "listWithDefaults")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-assertthat))
    (home-page "https://github.com/drknexus/listWithDefaults")
    (synopsis "List with Defaults")
    (description
     "This package provides a function that, as an alternative to base::list, allows
default values to be inherited from another list.")
    (license license:gpl2)))

(define-public r-listviewer
  (package
    (name "r-listviewer")
    (version "4.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listviewer" version))
       (sha256
        (base32 "0hffp82mdk4rp34l3l50ph540mv0pdq6x9racmlcvis5lfpjicby"))))
    (properties `((upstream-name . "listviewer")))
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
    (propagated-inputs (list r-shiny r-htmlwidgets r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/timelyportfolio/listviewer")
    (synopsis "'htmlwidget' for Interactive Views of R Lists")
    (description
     "R lists, especially nested lists, can be very difficult to visualize or
represent.  Sometimes @code{str()} is not enough, so this suite of htmlwidgets
is designed to help see, understand, and maybe even modify your R lists.  The
function @code{reactjson()} requires a package @code{reactR} that can be
installed from CRAN or <https://github.com/timelyportfolio/@code{reactR>}.")
    (license license:expat)))

(define-public r-listr
  (package
    (name "r-listr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listr" version))
       (sha256
        (base32 "1k8djk2nvqyyl9ffmfr4djciryha9x22icq972k38990nx2w0al2"))))
    (properties `((upstream-name . "listr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=listr")
    (synopsis "Tools for Lists")
    (description
     "This package provides tools for common operations on lists.  Provided are
short-cuts to operations like selecting and merging data stored in lists.  The
functions in this package are designed to be used with pipes.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-listdown
  (package
    (name "r-listdown")
    (version "0.5.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listdown" version))
       (sha256
        (base32 "0dw41ylja9ibznsqfr0621sqsmwb4kzlrwaycjl2hc4wmbabbliv"))))
    (properties `((upstream-name . "listdown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-tibble r-rmarkdown r-fs r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kaneplusplus/listdown")
    (synopsis "Create R Markdown from Lists")
    (description "Programmatically create R Markdown documents from lists.")
    (license license:asl2.0)))

(define-public r-listcompr
  (package
    (name "r-listcompr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listcompr" version))
       (sha256
        (base32 "1pmk56wz6yl1qixfk9ci1p96z7qwz65xyb6k5k46l5nbwal6ik4a"))))
    (properties `((upstream-name . "listcompr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/patrickroocks/listcompr")
    (synopsis "List Comprehension for R")
    (description
     "Syntactic shortcuts for creating synthetic lists, vectors, data frames, and
matrices using list comprehension.")
    (license license:gpl2+)))

(define-public r-listcomp
  (package
    (name "r-listcomp")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listcomp" version))
       (sha256
        (base32 "0h3wmlm3y3vr21x4ik785ring57z5cjhlwvsljh06m5m3fkv8nxr"))))
    (properties `((upstream-name . "listcomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang))
    (home-page "https://github.com/dirkschumacher/listcomp")
    (synopsis "List Comprehensions")
    (description
     "An implementation of list comprehensions as purely syntactic sugar with a minor
runtime overhead.  It constructs nested for-loops and executes the byte-compiled
loops to collect the results.")
    (license license:expat)))

(define-public r-listarrays
  (package
    (name "r-listarrays")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listarrays" version))
       (sha256
        (base32 "1zrvab4d28rk0sp3prwmxn290423j83dvhbpc23d2c5601wlga9j"))))
    (properties `((upstream-name . "listarrays")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/t-kalinowski/listarrays")
    (synopsis
     "Toolbox for Working with R Arrays in a Functional Programming Style")
    (description
     "This package provides a toolbox for R arrays.  Flexibly split, bind, reshape,
modify, subset and name arrays.")
    (license license:gpl3)))

(define-public r-listarray
  (package
    (name "r-listarray")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "listArray" version))
       (sha256
        (base32 "0j8hdsda7p6m1q06mi32yh3wqsdjr77kb8js42nm63dgpfy7mvv5"))))
    (properties `((upstream-name . "listArray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=listArray")
    (synopsis "Incomplete Array with Arbitrary R Objects as Indices")
    (description
     "The aim of the package is to create data objects which allow for accesses like
x[\"test\"] and x[\"test\",\"test\"].")
    (license license:gpl3)))

(define-public r-list
  (package
    (name "r-list")
    (version "9.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "list" version))
       (sha256
        (base32 "1r1j4jk54mcvsgxm2gxpjh66h13frdiq9cszc0wxg1zfrpcisava"))))
    (properties `((upstream-name . "list")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-sandwich
                             r-quadprog
                             r-mvtnorm
                             r-mass
                             r-magic
                             r-gamlss-dist
                             r-corpcor
                             r-coda
                             r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=list")
    (synopsis
     "Statistical Methods for the Item Count Technique and List Experiment")
    (description
     "Allows researchers to conduct multivariate statistical analyses of survey data
with list experiments.  This survey methodology is also known as the item count
technique or the unmatched count technique and is an alternative to the commonly
used randomized response method.  The package implements the methods developed
by Imai (2011) <doi:10.1198/jasa.2011.ap10415>, Blair and Imai (2012)
<doi:10.1093/pan/mpr048>, Blair, Imai, and Lyall (2013)
<doi:10.1111/ajps.12086>, Imai, Park, and Greene (2014)
<doi:10.1093/pan/mpu017>, Aronow, Coppock, Crawford, and Green (2015)
<doi:10.1093/jssam/smu023>, Chou, Imai, and Rosenfeld (2017)
<doi:10.1177/0049124117729711>, and Blair, Chou, and Imai (2018)
<https://imai.fas.harvard.edu/research/files/listerror.pdf>.  This includes a
Bayesian MCMC implementation of regression for the standard and multiple
sensitive item list experiment designs and a random effects setup, a Bayesian
MCMC hierarchical regression model with up to three hierarchical groups, the
combined list experiment and endorsement experiment regression model, a joint
model of the list experiment that enables the analysis of the list experiment as
a predictor in outcome regression models, a method for combining list
experiments with direct questions, and methods for diagnosing and adjusting for
response error.  In addition, the package implements the statistical test that
is designed to detect certain failures of list experiments, and a placebo test
for the list experiment using data from direct questions.")
    (license license:gpl2+)))

(define-public r-lisa
  (package
    (name "r-lisa")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lisa" version))
       (sha256
        (base32 "05hijs66jfyr68yvmm1dn262p1k6y4q7f2zvqkfagcb483rhwi53"))))
    (properties `((upstream-name . "lisa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tyluRp/lisa")
    (synopsis "Color Palettes from Color Lisa")
    (description
     "This package contains 128 palettes from Color Lisa.  All palettes are based on
masterpieces from the worlds greatest artists.  For more information, see
<http://colorlisa.com/>.")
    (license license:expat)))

(define-public r-lira
  (package
    (name "r-lira")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lira" version))
       (sha256
        (base32 "10bjmapnlw5z5cnbdpkwisvjkmk7zi9xqrvgmb5psj317zcxfc2p"))))
    (properties `((upstream-name . "lira")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list jags))
    (propagated-inputs (list r-rjags r-coda))
    (home-page "https://cran.r-project.org/package=lira")
    (synopsis "LInear Regression in Astronomy")
    (description
     "This package performs Bayesian linear regression and forecasting in astronomy.
The method accounts for heteroscedastic errors in both the independent and the
dependent variables, intrinsic scatters (in both variables) and scatter
correlation, time evolution of slopes, normalization, scatters, Malmquist and
Eddington bias, upper limits and break of linearity.  The posterior distribution
of the regression parameters is sampled with a Gibbs method exploiting the JAGS
library.")
    (license license:gpl2)))

(define-public r-liqueuer
  (package
    (name "r-liqueuer")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liqueueR" version))
       (sha256
        (base32 "0rpjib0dz39la63gy9bw9gmdfq2fcx40y4y4wcb6ky41qcjdp1nd"))))
    (properties `((upstream-name . "liqueueR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-itertools))
    (home-page "https://github.com/DataWookie/liqueueR")
    (synopsis "Implements Queue, PriorityQueue and Stack Classes")
    (description
     "This package provides three classes: Queue, @code{PriorityQueue} and Stack.
Queue is just a \"plain vanilla\" FIFO queue; @code{PriorityQueue} orders items
according to priority.  Stack implements LIFO.")
    (license license:gpl3)))

(define-public r-lipinskifilters
  (package
    (name "r-lipinskifilters")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LipinskiFilters" version))
       (sha256
        (base32 "0dfl3rww7x3n6a6d4qb3cyq4qwnx7bhvgw2r5w5hzc7ydl62mbwj"))))
    (properties `((upstream-name . "LipinskiFilters")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcdk r-knitr r-itertools r-ggplot2 r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LipinskiFilters")
    (synopsis "Computes and Visualize Lipinski's Parameters")
    (description
     "This computes Lipinski Rule of Five parameters and offers visualization for drug
discovery.  It analyzes molecular properties like molecular weight, hydrogen
bond donors, acceptors, and A@code{LogP}, providing histograms and pass/fail
status plots for efficient compound evaluation, aiding in drug development.")
    (license license:expat)))

(define-public r-lipidomicsr
  (package
    (name "r-lipidomicsr")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LipidomicsR" version))
       (sha256
        (base32 "1mg0lwmhb4rak6gzyypn6nbd8fdgkpxpksgf0vcagh3zlrynshp7"))))
    (properties `((upstream-name . "LipidomicsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-tidyselect
                             r-tidyr
                             r-stringr
                             r-scales
                             r-reshape2
                             r-rcompanion
                             r-rcolorbrewer
                             r-pheatmap
                             r-ggsci
                             r-ggrepel
                             r-ggplotify
                             r-ggplot2
                             r-ggiraph
                             r-ggforce
                             r-fmsb
                             r-dplyr
                             r-cowplot
                             r-car
                             r-broom))
    (home-page "https://github.com/mingshi1/LipidomicsR")
    (synopsis
     "Elegant Tools for Processing and Visualization of Lipidomics Data")
    (description
     "An elegant tool for processing and visualizing lipidomics data generated by mass
spectrometry. @code{LipidomicsR} simplifies channel and replicate handling while
providing thorough lipid species annotation.  Its visualization capabilities
encompass principal components analysis plots, heatmaps, volcano plots, and
radar plots, enabling concise data summarization and quality assessment.
Additionally, it can generate bar plots and line plots to visualize the
abundance of each lipid species.")
    (license license:expat)))

(define-public r-lipidomer
  (package
    (name "r-lipidomer")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lipidomeR" version))
       (sha256
        (base32 "1a9zi821mn7w18lg7psc9bagi3c5snvwqgda2f10rw5jff60fkfd"))))
    (properties `((upstream-name . "lipidomeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tableone
                             r-stringr
                             r-shadowtext
                             r-reshape2
                             r-limma
                             r-knitr
                             r-ggplot2
                             r-dplyr
                             r-biocmanager))
    (home-page "https://tommi-s.github.io/")
    (synopsis "Integrative Visualizations of the Lipidome")
    (description
     "Create lipidome-wide heatmaps of statistics with the @code{lipidomeR}'.  The
@code{lipidomeR} provides a streamlined pipeline for the systematic
interpretation of the lipidome through publication-ready visualizations of
regression models fitted on lipidomics data.  With @code{lipidomeR}',
associations between covariates and the lipidome can be interpreted
systematically and intuitively through heatmaps, where lipids are categorized by
the lipid class and are presented on two-dimensional maps organized by the lipid
size and level of saturation.  This way, the @code{lipidomeR} helps you gain an
immediate understanding of the multivariate patterns in the lipidome already at
first glance.  You can create lipidome-wide heatmaps of statistical
associations, changes, differences, variation, or other lipid-specific values.
The heatmaps are provided with publication-ready quality and the results behind
the visualizations are based on rigorous statistical models.")
    (license license:gpl3)))

(define-public r-lipidms
  (package
    (name "r-lipidms")
    (version "3.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LipidMS" version))
       (sha256
        (base32 "1c0dq1b5ns4kmvdf3viam7g7p5bgviqw1z967nkjslxiyxsjrvki"))))
    (properties `((upstream-name . "LipidMS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinythemes
                             r-shiny
                             r-scales
                             r-readmzxmldata
                             r-iterators
                             r-foreach
                             r-doparallel
                             r-chnosz))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LipidMS")
    (synopsis "Lipid Annotation for LC-MS/MS DDA or DIA Data")
    (description
     "Lipid annotation in untargeted LC-MS lipidomics based on fragmentation rules.
Alcoriza-Balaguer MI, Garcia-Canaveras JC, Lopez A, Conde I, Juan O, Carretero
J, Lahoz A (2019) <doi:10.1021/acs.analchem.8b03409>.")
    (license license:gpl2+)))

(define-public r-lipidmapsr
  (package
    (name "r-lipidmapsr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lipidmapsR" version))
       (sha256
        (base32 "19yrqd28z5dvpvi0igarmz9fpv08yx78221nzrwc8yxp6m1agkgc"))))
    (properties `((upstream-name . "lipidmapsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjsonio r-httr))
    (home-page "https://cran.r-project.org/package=lipidmapsR")
    (synopsis "Lipid Maps Rest Service")
    (description
     "Lipid Maps Rest service.  Researchers can access the Lipid Maps Rest service
programmatically and conveniently integrate it into the current workflow or
packages.")
    (license license:gpl3)))

(define-public r-lionfish
  (package
    (name "r-lionfish")
    (version "1.0.27")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lionfish" version))
       (sha256
        (base32 "1npk3rw41w49mlgi895w84g75andp6kxj98sg1yh7agxcn1qddlf"))))
    (properties `((upstream-name . "lionfish")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tourr r-reticulate r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://mmedl94.github.io/lionfish/")
    (synopsis "Interactive 'tourr' Using 'python'")
    (description
     "Extends the functionality of the tourr package by an interactive graphical user
interface.  The interactivity allows users to effortlessly refine their tourr
results by manual intervention, which allows for integration of expert knowledge
and aids the interpretation of results.  For more information on tourr see
Wickham et.  al (2011) <doi:10.18637/jss.v040.i02> or
<https://github.com/ggobi/tourr>.")
    (license license:expat)))

(define-public r-linselect
  (package
    (name "r-linselect")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LINselect" version))
       (sha256
        (base32 "0sd2b0wqmf51x7hxpx2mgymsgn1abzwdiaxp66708pg5nskg48ah"))))
    (properties `((upstream-name . "LINselect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randomforest
                             r-pls
                             r-mvtnorm
                             r-mass
                             r-gtools
                             r-elasticnet))
    (home-page "https://cran.r-project.org/package=LINselect")
    (synopsis "Selection of Linear Estimators")
    (description
     "Estimate the mean of a Gaussian vector, by choosing among a large collection of
estimators, following the method developed by Y. Baraud, C. Giraud and S. Huet
(2014) <doi:10.1214/13-AIHP539>.  In particular it solves the problem of
variable selection by choosing the best predictor among predictors emanating
from different methods as lasso, elastic-net, adaptive lasso, pls,
@code{randomForest}.  Moreover, it can be applied for choosing the tuning
parameter in a Gauss-lasso procedure.")
    (license license:gpl3+)))

(define-public r-linreginteractive
  (package
    (name "r-linreginteractive")
    (version "0.3-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinRegInteractive" version))
       (sha256
        (base32 "08zmh0cxnad8v18x2jxlc4zr69x9709gb0ngypzgxba1c1kjrp6v"))))
    (properties `((upstream-name . "LinRegInteractive")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-rpanel))
    (home-page "https://cran.r-project.org/package=LinRegInteractive")
    (synopsis "Interactive Interpretation of Linear Regression Models")
    (description
     "Interactive visualization of effects, response functions and marginal effects
for different kinds of regression models.  In this version linear regression
models, generalized linear models, generalized additive models and linear
mixed-effects models are supported.  Major features are the interactive approach
and the handling of the effects of categorical covariates: if two or more
factors are used as covariates every combination of the levels of each factor is
treated separately.  The automatic calculation of marginal effects and a number
of possibilities to customize the graphical output are useful features as well.")
    (license license:gpl2)))

(define-public r-linpk
  (package
    (name "r-linpk")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linpk" version))
       (sha256
        (base32 "0i87sfh01dl3xqs5vy3ha2prg952zpiq8fbl2amaiamg1qwl2y34"))))
    (properties `((upstream-name . "linpk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/benjaminrich/linpk")
    (synopsis "Generate Concentration-Time Profiles from Linear PK Systems")
    (description
     "Generate concentration-time profiles from linear pharmacokinetic (PK) systems,
possibly with first-order absorption or zero-order infusion, possibly with one
or more peripheral compartments, and possibly under steady-state conditions.
Single or multiple doses may be specified.  Secondary (derived) PK parameters
(e.g. Cmax, Ctrough, AUC, Tmax, half-life, etc.) are computed.")
    (license license:gpl3)))

(define-public r-linne
  (package
    (name "r-linne")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linne" version))
       (sha256
        (base32 "19x13hf3skvxihlpa8wy05vlc94yv7nfs8b1pr8br76wk1xdkjvx"))))
    (properties `((upstream-name . "linne")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-rlang
                             r-r6
                             r-purrr
                             r-magrittr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://linne.john-coene.com/")
    (synopsis "Convenient 'CSS'")
    (description "Conveniently generate CSS using R code.")
    (license license:expat)))

(define-public r-linl
  (package
    (name "r-linl")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linl" version))
       (sha256
        (base32 "00pjrsv227hjzjz2cgvx4ika3jy1cszia1cyi5ak200sr4sv1n4x"))))
    (properties `((upstream-name . "linl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eddelbuettel/linl")
    (synopsis "'linl' is not 'Letter'")
    (description
     "This package provides a @code{LaTeX} Letter class for rmarkdown', using the
pandoc-letter template adapted for use with markdown'.")
    (license license:gpl3)))

(define-public r-linkspotter
  (package
    (name "r-linkspotter")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linkspotter" version))
       (sha256
        (base32 "0fwkbz84vq0v5n5xgv1n99ph7qdz08hjj46ac4q293zarg1xk328"))))
    (properties `((upstream-name . "linkspotter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork
                             r-tidyr
                             r-shinybusy
                             r-shiny
                             r-ramcharts
                             r-pbapply
                             r-minerva
                             r-mclust
                             r-infotheo
                             r-ggplot2
                             r-energy
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sambaala/linkspotter")
    (synopsis "Bivariate Correlations Calculation and Visualization")
    (description
     "Compute and visualize using the @code{visNetwork} package all the bivariate
correlations of a dataframe.  Several and different types of correlation
coefficients (Pearson's r, Spearman's rho, Kendall's tau, distance correlation,
maximal information coefficient and equal-freq discretization-based maximal
normalized mutual information) are used according to the variable couple type
(quantitative vs categorical, quantitative vs quantitative, categorical vs
categorical).")
    (license license:expat)))

(define-public r-linkprediction
  (package
    (name "r-linkprediction")
    (version "1.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linkprediction" version))
       (sha256
        (base32 "0p2abdq6ad689236w2d0khlycpjgy6j7xrlb96ngl6csgxwm07bl"))))
    (properties `((upstream-name . "linkprediction")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-intergraph r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/recon-icm/linkprediction")
    (synopsis "Link Prediction Methods")
    (description
     "Implementations of most of the existing proximity-based methods of link
prediction in graphs.  Among the 20 implemented methods are e.g.: Adamic L. and
Adar E. (2003) <doi:10.1016/S0378-8733(03)00009-1>, Leicht E., Holme P., Newman
M. (2006) <doi:10.1103/@code{PhysRevE.73.026120>}, Zhou T. and Zhang Y (2009)
<doi:10.1140/epjb/e2009-00335-8>, and Fouss F., Pirotte A., Renders J., and
Saerens M. (2007) <doi:10.1109/TKDE.2007.46>.")
    (license license:expat)))

(define-public r-linkedmatrix
  (package
    (name "r-linkedmatrix")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinkedMatrix" version))
       (sha256
        (base32 "0p6qjnrljxnj3c5nynmx563vcqhxj4jf7czqdg750h38gjy8qzxi"))))
    (properties `((upstream-name . "LinkedMatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-crochet))
    (home-page "https://github.com/QuantGen/LinkedMatrix")
    (synopsis "Column-Linked and Row-Linked Matrices")
    (description
     "This package provides a class that links matrix-like objects (nodes) by rows or
by columns while behaving similarly to a base R matrix.  Very large matrices are
supported if the nodes are file-backed matrices.")
    (license license:expat)))

(define-public r-linkedinadsr
  (package
    (name "r-linkedinadsr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linkedInadsR" version))
       (sha256
        (base32 "1849n9lk3j6jryshz9vz6pxsrqarzqjfrnf91xiwws8kiv65v8p4"))))
    (properties `((upstream-name . "linkedInadsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://windsor.ai/")
    (synopsis "Access to 'LinkedIn' Ads via the 'Windsor.ai' API")
    (description
     "Collect marketing data from @code{LinkedIn} Ads using the Windsor.ai API
<https://windsor.ai/api-fields/>.")
    (license license:gpl3)))

(define-public r-linkedgasp
  (package
    (name "r-linkedgasp")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinkedGASP" version))
       (sha256
        (base32 "1win1yd8y677rmic531dyd29f49p7pr1r3kbjysvv9syi5nkydyj"))))
    (properties `((upstream-name . "LinkedGASP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spbayes r-nloptr))
    (home-page "https://cran.r-project.org/package=LinkedGASP")
    (synopsis "Linked Emulator of a Coupled System of Simulators")
    (description
     "Prototypes for construction of a Gaussian Stochastic Process emulator (GASP) of
a computer model.  This is done within the objective Bayesian implementation of
the GASP. The package allows for construction of a linked GASP of the composite
computer model.  Computational implementation follows the mathematical
exposition given in publication: Ksenia N. Kyzyurova, James O. Berger, Robert L.
Wolpert.  Coupling computer models through linking their statistical emulators.
SIAM/ASA Journal on Uncertainty Quantification, 6(3): 1151-1171,
(2018).<DOI:10.1137/17M1157702>.")
    (license license:gpl3+)))

(define-public r-linkagemapview
  (package
    (name "r-linkagemapview")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinkageMapView" version))
       (sha256
        (base32 "101g4djzkxgxbn87an2vz4s9nwn8gwz7a3p3wg0y4zpdd1pdp716"))))
    (properties `((upstream-name . "LinkageMapView")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcolorbrewer r-qtl r-plotrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/louellette/LinkageMapView")
    (synopsis "Plot Linkage Group Maps with Quantitative Trait Loci")
    (description
     "This package produces high resolution, publication ready linkage maps and
quantitative trait loci maps.  Input can be output from R/qtl', simple text or
comma delimited files.  Output is currently a portable document file.")
    (license license:gpl3)))

(define-public r-linkage
  (package
    (name "r-linkage")
    (version "0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Linkage" version))
       (sha256
        (base32 "1qiz163qrmg0zp8kah6hrpa7wm6k6bm8a1xgmd7nhfnyvq67l8zs"))))
    (properties `((upstream-name . "Linkage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sna r-rcolorbrewer r-network r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=Linkage")
    (synopsis
     "Clustering Communication Networks Using the Stochastic Topic Block Model Through Linkage.fr")
    (description
     "It allows to cluster communication networks using the Stochastic Topic Block
Model <doi:10.1007/s11222-016-9713-7> by posting jobs through the API of the
linkage.fr server, which implements the clustering method.  The package also
allows to visualize the clustering results returned by the server.")
    (license license:gpl3)))

(define-public r-link2gi
  (package
    (name "r-link2gi")
    (version "0.6-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "link2GI" version))
       (sha256
        (base32 "01k15a88x574vcmgclglfrm5lm1jb97hgjwy13w388y4r45x27wk"))))
    (properties `((upstream-name . "link2GI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-xml2
                             r-xfun
                             r-terra
                             r-sf
                             r-rstudioapi
                             r-roxygen2
                             r-renv
                             r-r-utils
                             r-devtools
                             r-brew))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-spatial/link2GI/")
    (synopsis
     "Linking Geographic Information Systems, Remote Sensing and Other Command Line Tools")
    (description
     "This package provides functions and tools for using open GIS and remote sensing
command-line interfaces in a reproducible environment.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-link
  (package
    (name "r-link")
    (version "2024.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "link" version))
       (sha256
        (base32 "0yz610hi3si6z9kgfzhn5wj00kbp7bfqfbg1iqs871jcwihbz5xc"))))
    (properties `((upstream-name . "link")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rlang
                             r-knitr
                             r-httr2
                             r-htmltools
                             r-glue
                             r-downlit
                             r-bslib))
    (home-page "https://link.tada.science/")
    (synopsis "Hyperlink Automatic Detection")
    (description
     "Automatic detection of hyperlinks for packages and calls in the text of
rmarkdown or quarto documents.")
    (license license:expat)))

(define-public r-linguisticsdown
  (package
    (name "r-linguisticsdown")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linguisticsdown" version))
       (sha256
        (base32 "1y2g8h0p4q4mjrawzyprsdw8ynqcbpnjypyhdaf03pcwqglcirkl"))))
    (properties `((upstream-name . "linguisticsdown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-rstudioapi
                             r-miniui
                             r-magrittr
                             r-knitr
                             r-dt))
    (home-page "https://liao961120.github.io/linguisticsdown/")
    (synopsis "Easy Linguistics Document Writing with R Markdown")
    (description
     "This package provides Shiny gadgets to search, type, and insert IPA symbols into
documents or scripts, requiring only knowledge about phonetics or X-SAMPA'.
Also provides functions to facilitate the rendering of IPA symbols in
@code{LaTeX} and PDF format, making IPA symbols properly rendered in all output
formats.  A minimal R Markdown template for authoring Linguistics related
documents is also bundled with the package.  Some helper functions to facilitate
authoring with R Markdown is also provided.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-lingtypology
  (package
    (name "r-lingtypology")
    (version "1.1.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lingtypology" version))
       (sha256
        (base32 "14bk3dd4811vs7m02b730h33i696rvz8gzb5rri0c2qfwcjvmka9"))))
    (properties `((upstream-name . "lingtypology")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringdist r-leaflet-minicharts r-leaflet
                             r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=lingtypology")
    (synopsis "Linguistic Typology and Mapping")
    (description
     "This package provides R with the Glottolog database <https://glottolog.org/> and
some more abilities for purposes of linguistic mapping.  The Glottolog database
contains the catalogue of languages of the world.  This package helps
researchers to make a linguistic maps, using philosophy of the Cross-Linguistic
Linked Data project <https://clld.org/>, which allows for while at the same time
facilitating uniform access to the data across publications.  A tutorial for
this package is available on @code{GitHub} pages
<https://docs.ropensci.org/lingtypology/> and package vignette.  Maps created by
this package can be used both for the investigation and linguistic teaching.  In
addition, package provides an ability to download data from typological
databases such as WALS, AUTOTYP and some others and to create your own database
website.")
    (license license:gpl2+)))

(define-public r-lingmatch
  (package
    (name "r-lingmatch")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lingmatch" version))
       (sha256
        (base32 "0qciq4dcxsv33scvzcn3lmivisq7hl3llky1p9fj2xjlgc5l53yv"))))
    (properties `((upstream-name . "lingmatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppparallel r-rcpp r-matrix r-bh))
    (home-page "https://miserman.github.io/lingmatch/")
    (synopsis "Linguistic Matching and Accommodation")
    (description
     "Measure similarity between texts.  Offers a variety of processing tools and
similarity metrics to facilitate flexible representation of texts and matching.
Implements forms of Language Style Matching (Ireland & Pennebaker, 2010)
<doi:10.1037/a0020386> and Latent Semantic Analysis (Landauer & Dumais, 1997)
<doi:10.1037/0033-295X.104.2.211>.")
    (license license:gpl2+)))

(define-public r-lingglosses
  (package
    (name "r-lingglosses")
    (version "0.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lingglosses" version))
       (sha256
        (base32 "1nlili13y7jwcfwq726hmbvklfdjbic55hs9512p7ldnsxfr6h8w"))))
    (properties `((upstream-name . "lingglosses")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown r-knitr r-kableextra r-htmltools r-gt))
    (home-page "https://CRAN.R-project.org/package=phonfieldwork")
    (synopsis
     "Interlinear Glossed Linguistic Examples and Abbreviation Lists Generation")
    (description
     "Helps to render interlinear glossed linguistic examples in html rmarkdown
documents and then semi-automatically compiles the list of glosses at the end of
the document.  It also provides a database of linguistic glosses.")
    (license license:gpl3+)))

(define-public r-lingdist
  (package
    (name "r-lingdist")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lingdist" version))
       (sha256
        (base32 "17mcr487bb7brmjzbiq71snxxaxnfg33ml3dqdfldv13i8nv3shi"))))
    (properties `((upstream-name . "lingdist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppthread r-rcpp))
    (home-page "https://github.com/fncokg/lingdist")
    (synopsis "Fast Linguistic Distance and Alignment Computation")
    (description
     "This package provides a fast generalized edit distance and string alignment
computation mainly for linguistic aims.  As a generalization to the classic edit
distance algorithms, the package allows users to define custom cost for every
symbol's insertion, deletion, and substitution.  The package also allows
character combinations in any length to be seen as a single symbol which is very
useful for International Phonetic Alphabet (IPA) transcriptions with diacritics.
 In addition to edit distance result, users can get detailed alignment
information such as all possible alignment scenarios between two strings which
is useful for testing, illustration or any further usage.  Either the distance
matrix or its long table form can be obtained and tools to do such conversions
are provided.  All functions in the package are implemented in C++ and the
distance matrix computation is parallelized leveraging the @code{RcppThread}
package.")
    (license license:gpl2+)))

(define-public r-linevis
  (package
    (name "r-linevis")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linevis" version))
       (sha256
        (base32 "1dysg3q967njf1l7mm2bbk2cmhjz3aran12fkndmmi2qg3ca9xr8"))))
    (properties `((upstream-name . "linevis")))
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
    (propagated-inputs (list r-shiny
                             r-rmarkdown
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-crosstalk))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://gitlab.com/thomaschln/linevis")
    (synopsis "Interactive Time Series Visualizations")
    (description
     "Create interactive time series visualizations.  linevis includes an extensive
API to manipulate time series after creation, and supports getting data out of
the visualization.  Based on the timevis package and the vis.js Timeline
@code{JavaScript} library <https://visjs.github.io/vis-timeline/docs/graph2d/>.")
    (license license:gpl3)))

(define-public r-lineupjs
  (package
    (name "r-lineupjs")
    (version "4.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lineupjs" version))
       (sha256
        (base32 "198a87hhn1f77ix3mrv8mi04qxlv392aw1cg852h8s6sr2ayxqgl"))))
    (properties `((upstream-name . "lineupjs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lineupjs/lineup_htmlwidget/")
    (synopsis
     "'HTMLWidget' Wrapper of 'LineUp' for Visual Analysis of Multi-Attribute Rankings")
    (description
     "@code{LineUp} is an interactive technique designed to create, visualize and
explore rankings of items based on a set of heterogeneous attributes.  This is a
htmlwidget wrapper around the @code{JavaScript} library @code{LineUp.js}'.  It
is designed to be used in R Shiny apps and R Markddown files.  Due to an
outdated webkit version of RStudio it won't work in the integrated viewer.")
    (license license:expat)))

(define-public r-lineup2
  (package
    (name "r-lineup2")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lineup2" version))
       (sha256
        (base32 "0qkxwn30g0bjm9aq9a59pb3xq844qr43ribnk607zlf8lwbibsk2"))))
    (properties `((upstream-name . "lineup2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kbroman/lineup2")
    (synopsis "Lining Up Two Sets of Measurements")
    (description
     "This package provides tools for detecting and correcting sample mix-ups between
two sets of measurements, such as between gene expression data on two tissues.
This is a revised version of the lineup package, to be more general and not tied
to the qtl package.")
    (license license:gpl3)))

(define-public r-lineup
  (package
    (name "r-lineup")
    (version "0.44")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lineup" version))
       (sha256
        (base32 "1km5mafaww12pck0n3lgpx7sp0hpzi5h173m4apv8bbiy7cdn6x6"))))
    (properties `((upstream-name . "lineup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qtl r-class))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kbroman/lineup")
    (synopsis "Lining Up Two Sets of Measurements")
    (description
     "This package provides tools for detecting and correcting sample mix-ups between
two sets of measurements, such as between gene expression data on two tissues.
Broman et al. (2015) <doi:10.1534/g3.115.019778>.")
    (license license:gpl3)))

(define-public r-linerr
  (package
    (name "r-linerr")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linERR" version))
       (sha256
        (base32 "1mhiyqfpwagg161ncp5ndd22hlh12qzr360nms13rgyd8a077cq7"))))
    (properties `((upstream-name . "linERR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=linERR")
    (synopsis "Linear Excess Relative Risk Model")
    (description
     "Fits a linear excess relative risk model by maximum likelihood, possibly
including several variables and allowing for lagged exposures.")
    (license license:gpl2+)))

(define-public r-linemap
  (package
    (name "r-linemap")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linemap" version))
       (sha256
        (base32 "1fyvab2m742klsl94k2vc5qv0ykwcj0ybm3vv0mdv94nlmcm2gk7"))))
    (properties `((upstream-name . "linemap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra))
    (home-page "https://github.com/riatelab/linemap")
    (synopsis "Line Maps")
    (description
     "Create maps made of lines.  The package contains one function: @code{linemap()}.
@code{linemap()} displays a map made of lines using a raster or gridded data.")
    (license license:gpl3)))

(define-public r-linelistbayes
  (package
    (name "r-linelistbayes")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linelistBayes" version))
       (sha256
        (base32 "08xgqp1ldb76063k4dgyjjdzk50l4x0ddz1q3y4zzf4jfisp9720"))))
    (properties `((upstream-name . "linelistBayes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=linelistBayes")
    (synopsis
     "Bayesian Analysis of Epidemic Data Using Line List and Case Count Approaches")
    (description
     "This package provides tools for performing Bayesian inference on epidemiological
data to estimate the time-varying reproductive number and other related metrics.
 These methods were published in Li and White (2021)
<doi:10.1371/journal.pcbi.1009210>.  This package supports analyses based on
aggregated case count data and individual line list data, facilitating enhanced
surveillance and intervention planning for infectious diseases like COVID-19.")
    (license license:gpl3)))

(define-public r-linelist
  (package
    (name "r-linelist")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linelist" version))
       (sha256
        (base32 "05lcz5yiaf0d1dhrfxqmypqabcibryb5yl2bvy48h8k8dk69g9xm"))))
    (properties `((upstream-name . "linelist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect r-rlang r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://epiverse-trace.github.io/linelist/")
    (synopsis "Tagging and Validating Epidemiological Data")
    (description
     "This package provides tools to help storing and handling case line list data.
The linelist class adds a tagging system to classical data.frame objects to
identify key epidemiological data such as dates of symptom onset,
epidemiological case definition, age, gender or disease outcome.  Once tagged,
these variables can be seamlessly used in downstream analyses, making data
pipelines more robust and reliable.")
    (license license:expat)))

(define-public r-lineartestr
  (package
    (name "r-lineartestr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lineartestr" version))
       (sha256
        (base32 "0bzsywk97j2mmsi7pj9267za1q2601crynh9kszwj6xjbg08nvsm"))))
    (properties `((upstream-name . "lineartestr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-sandwich
                             r-readr
                             r-matrix
                             r-ggplot2
                             r-forecast
                             r-dplyr))
    (home-page "https://github.com/FedericoGarza/lineartestr")
    (synopsis "Linear Specification Testing")
    (description
     "Tests whether the linear hypothesis of a model is correct specified using
Dominguez-Lobato test.  Also Ramsey's RESET (Regression Equation Specification
Error Test) test is implemented and Wald tests can be carried out.  Although
RESET test is widely used to test the linear hypothesis of a model, Dominguez
and Lobato (2019) proposed a novel approach that generalizes well known
specification tests such as Ramsey's.  This test relies on wild-bootstrap; this
package implements this approach to be usable with any function that fits linear
models and is compatible with the @code{update()} function such as
@code{stats'::lm()}, @code{lfe'::felm()} and @code{forecast'::Arima()}, for ARMA
(autoregressiveâmoving-average) models.  Also the package can handle custom
statistics such as Cramer von Mises and Kolmogorov Smirnov, described by the
authors, and custom distributions such as Mammen (discrete and continuous) and
Rademacher.  Manuel A. Dominguez & Ignacio N. Lobato (2019)
<doi:10.1080/07474938.2019.1687116>.")
    (license license:gpl2+)))

(define-public r-linearregressionmde
  (package
    (name "r-linearregressionmde")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinearRegressionMDE" version))
       (sha256
        (base32 "0nl29l10y5kpds1i4sv7jwizq61fmh5c0zpj8x64qfif4l6y4v0d"))))
    (properties `((upstream-name . "LinearRegressionMDE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LinearRegressionMDE")
    (synopsis "Minimum Distance Estimation in Linear Regression Model")
    (description
     "Consider linear regression model Y = Xb + error where the distribution function
of errors is unknown, but errors are independent and symmetrically distributed.
The package contains a function named LRMDE which takes Y and X as input and
returns minimum distance estimator of parameter b in the model.")
    (license license:gpl2)))

(define-public r-linearmodel
  (package
    (name "r-linearmodel")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linearModel" version))
       (sha256
        (base32 "032liplyjw7n0ylvpqv038pf8sbfbcz58zka5rr76cvh2xzf87vg"))))
    (properties `((upstream-name . "linearModel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=linearModel")
    (synopsis "Linear Model Functions")
    (description
     "This package provides functions to access and test results from a linear model.")
    (license license:expat)))

(define-public r-lindleypowerseries
  (package
    (name "r-lindleypowerseries")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LindleyPowerSeries" version))
       (sha256
        (base32 "1hzncfknnyr7z95yv6146j362fz2dlmgyv755ac29b098x5ix808"))))
    (properties `((upstream-name . "LindleyPowerSeries")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lamw))
    (home-page "https://cran.r-project.org/package=LindleyPowerSeries")
    (synopsis "Lindley Power Series Distribution")
    (description
     "Computes the probability density function, the cumulative distribution function,
the hazard rate function, the quantile function and random generation for
Lindley Power Series distributions, see Nadarajah and Si (2018)
<doi:10.1007/s13171-018-0150-x>.")
    (license license:gpl2+)))

(define-public r-lindia
  (package
    (name "r-lindia")
    (version "0.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lindia" version))
       (sha256
        (base32 "0i4mi19pcbpiqbwzj5ga9jhzi0z1qsf779kndyz9sdd9wgxdz8zg"))))
    (properties `((upstream-name . "lindia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-gridextra r-ggplot2))
    (home-page "https://github.com/yeukyul/lindia")
    (synopsis "Automated Linear Regression Diagnostic")
    (description
     "This package provides a set of streamlined functions that allow easy generation
of linear regression diagnostic plots necessarily for checking linear model
assumptions.  This package is meant for easy scheming of linear regression
diagnostics, while preserving merits of \"The Grammar of Graphics\" as implemented
in ggplot2'.  See the ggplot2 website for more information regarding the
specific capability of graphics.")
    (license license:expat)))

(define-public r-lindenmayer
  (package
    (name "r-lindenmayer")
    (version "0.1.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LindenmayeR" version))
       (sha256
        (base32 "01wnvmxdb91ai21h3plgsmy6ds7564s5wq2xyr905ma4a2d8afn5"))))
    (properties `((upstream-name . "LindenmayeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=LindenmayeR")
    (synopsis "Functions to Explore L-Systems (Lindenmayer Systems)")
    (description
     "L-systems or Lindenmayer systems are parallel rewriting systems which can be
used to simulate biological forms and certain kinds of fractals.  Briefly, in an
L-system a series of symbols in a string are replaced iteratively according to
rules to give a more complex string.  Eventually, the symbols are translated
into turtle graphics for plotting.  Wikipedia has a very good introduction:
en.wikipedia.org/wiki/L-system This package provides basic functions for
exploring L-systems.")
    (license license:gpl3+)))

(define-public r-lincongaussr
  (package
    (name "r-lincongaussr")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linconGaussR" version))
       (sha256
        (base32 "10l7qajqa8f8yq3zbjmjxf0va2krq1rab42ihfhz2jyv3mn24xsi"))))
    (properties `((upstream-name . "linconGaussR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass))
    (home-page "https://github.com/YunyiShen/linconGaussR")
    (synopsis
     "Sampling Multivariate Normal Distribution under Linear Constraints")
    (description
     "Sample truncated multivariate Normal distribution following Gessner, A.,
Kanjilal, O., & Hennig, P. (2019).  Integrals over Gaussians under Linear Domain
Constraints.  108. <arxiv:1910.09328>.")
    (license license:gpl3)))

(define-public r-lincom
  (package
    (name "r-lincom")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lincom" version))
       (sha256
        (base32 "076pnzdr4h62h4grlk5vcbwl0aikl87ks0my86mbjzg7isyngyja"))))
    (properties `((upstream-name . "lincom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-sparsem r-rmosek))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=lincom")
    (synopsis
     "Linear Biomarker Combination: Empirical Performance Optimization")
    (description
     "Perform two linear combination methods for biomarkers: (1) Empirical performance
optimization for specificity (or sensitivity) at a controlled sensitivity (or
specificity) level of Huang and Sanda (2022) <doi:10.1214/22-aos2210>, and (2)
weighted maximum score estimator with empirical minimization of averaged false
positive rate and false negative rate.  Both adopt the algorithms of Huang and
Sanda (2022) <doi:10.1214/22-aos2210>.  MOSEK solver is used and needs to be
installed; an academic license for MOSEK is free.")
    (license license:gpl2+)))

(define-public r-lincal
  (package
    (name "r-lincal")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LinCal" version))
       (sha256
        (base32 "1zxl0p2lj0nnzsxv6lzncswj0czvzxy2islbjvdinjzkkfjm7izb"))))
    (properties `((upstream-name . "LinCal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LinCal")
    (synopsis "Static Univariate Frequentist and Bayesian Linear Calibration")
    (description
     "Estimate and confidence/credible intervals for an unknown regressor x0 given an
observed y0.")
    (license license:gpl2)))

(define-public r-linbin
  (package
    (name "r-linbin")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "linbin" version))
       (sha256
        (base32 "04x97ah45qljpa4kg1iqz85w0q7936n4sq7vbzk2mx5m87p83czh"))))
    (properties `((upstream-name . "linbin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ezwelty/linbin")
    (synopsis "Binning and Plotting of Linearly Referenced Data")
    (description
     "Short for linear binning', the linbin package provides functions for
manipulating, binning, and plotting linearly referenced data.  Although
developed for data collected on river networks, it can be used with any interval
or point data referenced to a 1-dimensional coordinate system.  Flexible bin
generation and batch processing makes it easy to compute and visualize variables
at multiple scales, useful for identifying patterns within and between variables
and investigating the influence of scale of observation on data interpretation.")
    (license license:agpl3)))

(define-public r-lin-eval
  (package
    (name "r-lin-eval")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lin.eval" version))
       (sha256
        (base32 "05saxzzwh3gs6a4ii63n5kjm06p399xkyrjnqvn9f164322p7pwb"))))
    (properties `((upstream-name . "lin.eval")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lin.eval")
    (synopsis "Perform Polynomial Evaluation of Linearity")
    (description
     "Evaluates whether the relationship between two vectors is linear or nonlinear.
Performs a test to determine how well a linear model fits the data compared to
higher order polynomial models.  Jhang et al. (2004)
<doi:10.1043/1543-2165(2004)128%3C44:EOLITC%3E2.0.CO;2>.")
    (license license:expat)))

(define-public r-limorhyde2
  (package
    (name "r-limorhyde2")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "limorhyde2" version))
       (sha256
        (base32 "0icwh7vvid7xxlk5jmqqkl6507b4vc0fmpp0wm10lsh0wxibmvwf"))))
    (properties `((upstream-name . "limorhyde2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zeallot
                             r-pbs
                             r-mashr
                             r-limma
                             r-iterators
                             r-hdinterval
                             r-foreach
                             r-deseq2
                             r-data-table
                             r-checkmate
                             r-ashr
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://limorhyde2.hugheylab.org")
    (synopsis
     "Quantify Rhythmicity and Differential Rhythmicity in Genomic Data")
    (description
     "Fit linear models based on periodic splines, moderate model coefficients using
multivariate adaptive shrinkage, then compute properties of the moderated
curves.")
    (license license:gpl2)))

(define-public r-limorhyde
  (package
    (name "r-limorhyde")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "limorhyde" version))
       (sha256
        (base32 "0ksz8chs5v7qss5yf24zcpszi6v0ylbn98zaxy7mz62qfx5i441g"))))
    (properties `((upstream-name . "limorhyde")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pbs))
    (native-inputs (list r-knitr))
    (home-page "https://limorhyde.hugheylab.org")
    (synopsis "Differential Analysis of Rhythmic Transcriptome Data")
    (description
     "This package provides a flexible approach, inspired by cosinor regression, for
differential analysis of rhythmic transcriptome data.  See Singer and Hughey
(2018) <doi:10.1177/0748730418813785>.")
    (license license:gpl2)))

(define-public r-limonaid
  (package
    (name "r-limonaid")
    (version "25.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "limonaid" version))
       (sha256
        (base32 "0c5mplz472jmxf6s2mxkqcv6h0k6b60nr1q1f616llvqkwqznybm"))))
    (properties `((upstream-name . "limonaid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-r6 r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://limonaid.opens.science")
    (synopsis "Working with 'LimeSurvey' Surveys and Responses")
    (description
     "@code{LimeSurvey} is Free/Libre Open Source Software for the development and
administrations of online studies, using sophisticated tailoring capabilities to
support multiple study designs (see <https://www.limesurvey.org>).  This package
supports programmatic creation of surveys that can then be imported into
@code{LimeSurvey}', as well as user friendly import of responses from
@code{LimeSurvey} studies.")
    (license license:gpl3+)))

(define-public r-limnopalettes
  (package
    (name "r-limnopalettes")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LimnoPalettes" version))
       (sha256
        (base32 "0qzcx182nn5ygqlsqmxl1r4r0gg89q0qqgk6hk5lvgb5ghf91z3y"))))
    (properties `((upstream-name . "LimnoPalettes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/SwampThingPaul/LimnoPalettes")
    (synopsis "Limnology Themed Palette Generator")
    (description
     "Palettes generated from limnology based field and laboratory photos.  Palettes
can be used to generate color values to be used in any functions that calls for
a color (i.e. @code{ggplot()}, @code{plot()}, @code{flextable()}, etc.).")
    (license license:gpl3)))

(define-public r-limexhub
  (package
    (name "r-limexhub")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "limexhub" version))
       (sha256
        (base32 "1f5s1m544fsm0dv5kd5g198f9f2lkz89f58pf28d4hvx89cmf103"))))
    (properties `((upstream-name . "limexhub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr r-data-table))
    (home-page "https://datahub.limex.com")
    (synopsis "Quantitative Trade Signals")
    (description
     "This package provides an interface to the financial data platform
<https://datahub.limex.com/>., enabling users to retrieve real-time and
historical financial data.  Functions within the package allow access to
instruments, candlestick charts, fundamentals, news, events, models, and trading
signals.  Authentication is managed through user-specific API tokens, which are
securely handled via environment variables.")
    (license license:gpl3)))

(define-public r-lime
  (package
    (name "r-lime")
    (version "0.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lime" version))
       (sha256
        (base32 "157ph4a1h3025nx5v8lw63bbrzk4skw2rnnw1g7h4d3qggcmlhf9"))))
    (properties `((upstream-name . "lime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringi
                             r-rcppeigen
                             r-rcpp
                             r-matrix
                             r-gower
                             r-glmnet
                             r-ggplot2
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://lime.data-imaginist.com")
    (synopsis "Local Interpretable Model-Agnostic Explanations")
    (description
     "When building complex models, it is often difficult to explain why the model
should be trusted.  While global measures such as accuracy are useful, they
cannot be used for explaining why a model made a specific prediction.  lime (a
port of the lime Python package) is a method for explaining the outcome of black
box models by fitting a local model around the point in question an
perturbations of this point.  The approach is described in more detail in the
article by Ribeiro et al. (2016) <@code{arXiv:1602.04938>}.")
    (license license:expat)))

(define-public r-lilrhino
  (package
    (name "r-lilrhino")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LilRhino" version))
       (sha256
        (base32 "1b3wbnzqakjxh3c3s4cxf14nnb1vrbvslqcyn9bh0zbw1arf5ixl"))))
    (properties `((upstream-name . "LilRhino")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tm
                             r-stringi
                             r-snowballc
                             r-readr
                             r-neuralnet
                             r-keras
                             r-ggplot2
                             r-fnn
                             r-fastmatch
                             r-e1071
                             r-dplyr
                             r-data-table
                             r-beepr))
    (home-page "https://cran.r-project.org/package=LilRhino")
    (synopsis
     "For Implementation of Feed Reduction, Learning Examples, NLP and Code Management")
    (description
     "This is for code management functions, NLP tools, a Monty Hall simulator, and
for implementing my own variable reduction technique called Feed Reduction.  The
Feed Reduction technique is not yet published, but is merely a tool for
implementing a series of binary neural networks meant for reducing data into N
dimensions, where N is the number of possible values of the response variable.")
    (license license:gpl2)))

(define-public r-lillies
  (package
    (name "r-lillies")
    (version "0.2.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lillies" version))
       (sha256
        (base32 "1ys1fzi9azj0nxvf8byy30zbcf7p90p18842kwy98m6my8iwqqj2"))))
    (properties `((upstream-name . "lillies")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-rlang
                             r-progress
                             r-pracma
                             r-knitr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=lillies")
    (synopsis "Estimation of Life Years Lost")
    (description
     "Estimation of life expectancy and Life Years Lost (LYL, or lillies for short)
for a given population, for example those with a given disease or condition.  In
addition, the package can be used to compare estimates from different
populations, or to estimate confidence intervals.  Technical details of the
method are available in Plana-Ripoll et al. (2020)
<doi:10.1371/journal.pone.0228073> and Andersen (2017) <doi:10.1002/sim.7357>.")
    (license license:expat)))

(define-public r-lilikoi
  (package
    (name "r-lilikoi")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lilikoi" version))
       (sha256
        (base32 "14bz7a1wcgr5fsf6mpsibxa7ks302a1lwnjdjzwh72z490fz8gaw"))))
    (properties `((upstream-name . "lilikoi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survminer
                             r-survival
                             r-stringr
                             r-scales
                             r-rweka
                             r-reticulate
                             r-reshape
                             r-rcy3
                             r-proc
                             r-princurve
                             r-preprocesscore
                             r-plyr
                             r-pathview
                             r-mlmetrics
                             r-metrics
                             r-m3c
                             r-limma
                             r-infotheo
                             r-impute
                             r-h2o
                             r-glmnet
                             r-ggplot2
                             r-gbm
                             r-dplyr
                             r-caret
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lilikoi")
    (synopsis "Metabolomics Personalized Pathway Analysis Tool")
    (description
     "This package provides a comprehensive analysis tool for metabolomics data.  It
consists a variety of functional modules, including several new modules: a
pre-processing module for normalization and imputation, an exploratory data
analysis module for dimension reduction and source of variation analysis, a
classification module with the new deep-learning method and other
machine-learning methods, a prognosis module with cox-PH and neural-network
based Cox-nnet methods, and pathway analysis module to visualize the pathway and
interpret metabolite-pathway relationships.  References: H. Paul Benton
<http://www.metabolomics-forum.com/index.php?topic=281.0> Jeff Xia
<https://github.com/cangfengzhe/Metabo/blob/master/@code{MetaboAnalyst/website/name_match.R>}
Travers Ching, Xun Zhu, Lana X. Garmire (2018)
<doi:10.1371/journal.pcbi.1006076>.")
    (license license:gpl2)))

(define-public r-likertmaker
  (package
    (name "r-likertmaker")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LikertMakeR" version))
       (sha256
        (base32 "1x0npv01jxpn3ry01sg024iwckgnldg8yr5c5anc00jvhb8zlpds"))))
    (properties `((upstream-name . "LikertMakeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-matrix r-gtools r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/WinzarH/LikertMakeR")
    (synopsis
     "Synthesise and Correlate Likert Scale and Rating-Scale Data Based on Summary Statistics")
    (description
     "Generate and correlate synthetic Likert and rating-scale data with predefined
means, standard deviations, Cronbach's Alpha, Factor Loading table, and other
summary statistics.  Worked examples and documentation are available in the
package vignettes, accessible via @code{browseVignettes(\"LikertMakeR}\").")
    (license license:expat)))

(define-public r-likertez
  (package
    (name "r-likertez")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LikertEZ" version))
       (sha256
        (base32 "1pa0gaj59b6xjr4iihvzps53v0l63sv9kdk630wg6xf3i959pqyq"))))
    (properties `((upstream-name . "LikertEZ")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=LikertEZ")
    (synopsis "Easy Analysis and Visualization of Likert Scale Data")
    (description
     "This package provides functions for summarizing, visualizing, and analyzing
Likert-scale survey data.  Includes support for computing descriptive
statistics, Relative Importance Index (RII), reliability analysis (Cronbach's
Alpha), and response distribution plots.")
    (license license:expat)))

(define-public r-likert
  (package
    (name "r-likert")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likert" version))
       (sha256
        (base32 "0c4irxs7pp1z8nj4s8cq23daw4h94n3h7x4f6q1d85614qcl9l3p"))))
    (properties `((upstream-name . "likert")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-reshape2
                             r-psych
                             r-plyr
                             r-gridextra
                             r-ggplot2))
    (native-inputs (list))
    (home-page "http://jason.bryer.org/likert")
    (synopsis "Analysis and Visualization Likert Items")
    (description
     "An approach to analyzing Likert response items, with an emphasis on
visualizations.  The stacked bar plot is the preferred method for presenting
Likert results.  Tabular results are also implemented along with density plots
to assist researchers in determining whether Likert responses can be used
quantitatively instead of qualitatively.  See the @code{likert()},
@code{summary.likert()}, and @code{plot.likert()} functions to get started.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-likelihoodtools
  (package
    (name "r-likelihoodtools")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likelihoodTools" version))
       (sha256
        (base32 "1dagyiy75ckf1mxlg22k4p0qdki0fa40zl874ax347rkdl6xl9rx"))))
    (properties `((upstream-name . "likelihoodTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-ggplot2 r-dplyr))
    (home-page "https://github.com/ajpelu/likelihoodTools")
    (synopsis "Managing Results from Maximum Likelihood Estimation")
    (description
     "Managing and exploring parameter estimation results derived from Maximum
Likelihood Estimation (MLE) using the likelihood package.  It provides functions
for organizing, visualizing, and summarizing MLE outcomes, streamlining
statistical analysis workflows.  By improving interpretation and facilitating
model evaluation, it helps users gain deeper insights into parameter estimation
and model fitting, making MLE result exploration more efficient and accessible.
See Goffe et al. (1994) <doi:10.1016/0304-4076(94)90038-8> for details on MLE,
and Canham and Uriarte (2006) <doi:10.1890/04-0657> for application of MLE using
likelihood'.")
    (license license:gpl3+)))

(define-public r-likelihoodr
  (package
    (name "r-likelihoodr")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likelihoodR" version))
       (sha256
        (base32 "126s7qs9mn3apjdnl6vmiqlms1c075wcj44wr8a0cyjfich7ajnh"))))
    (properties `((upstream-name . "likelihoodR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lme4))
    (home-page "https://cran.r-project.org/package=likelihoodR")
    (synopsis "Likelihood Analyses for Common Statistical Tests")
    (description
     "This package provides a collection of functions that calculate the log
likelihood (support) for a range of statistical tests.  Where possible the
likelihood function and likelihood interval for the observed data are displayed.
 The evidential approach used here is based on the book \"Likelihood\" by A.W.F.
Edwards (1992, ISBN-13 : 978-0801844430), \"Statistical Evidence\" by R. Royall
(1997, ISBN-13 : 978-0412044113), S.N. Goodman & R. Royall (2011)
<doi:10.2105/AJPH.78.12.1568>, \"Understanding Psychology as a Science\" by Z.
Dienes (2008, ISBN-13 : 978-0230542310), S. Glover & P. Dixon
<doi:10.3758/BF03196706> and others.  This package accompanies \"Evidence-Based
Statistics\" by P. Cahusac (2020, ISBN-13 : 978-1119549802)
<doi:10.1002/9781119549833>.")
    (license license:gpl2)))

(define-public r-likelihoodexplore
  (package
    (name "r-likelihoodexplore")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likelihoodExplore" version))
       (sha256
        (base32 "13cnql7pbx8qq1j3cfb3lkzzf2k55shpfa0jd00z30ys6imxzcfn"))))
    (properties `((upstream-name . "likelihoodExplore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-lazyeval))
    (home-page "https://likelihoodExplore.bearstatistics.com")
    (synopsis "Likelihood Exploration")
    (description
     "This package provides likelihood functions as defined by Fisher (1922)
<doi:10.1098/rsta.1922.0009> and a function that creates likelihood functions
from density functions.  The functions are meant to aid in education of
likelihood based methods.")
    (license license:gpl2)))

(define-public r-likelihoodasy
  (package
    (name "r-likelihoodasy")
    (version "0.51")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likelihoodAsy" version))
       (sha256
        (base32 "0qxwdf6npyj926zd2pbfscgz1z01hwgm6099h882d2l1sim2j9g7"))))
    (properties `((upstream-name . "likelihoodAsy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp
                             r-pracma
                             r-nleqslv
                             r-digest
                             r-cond
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=likelihoodAsy")
    (synopsis "Functions for Likelihood Asymptotics")
    (description
     "This package provides functions for computing the r and r* statistics for
inference on an arbitrary scalar function of model parameters, plus some code
for the (modified) profile likelihood.")
    (license license:gpl2+)))

(define-public r-likelihood
  (package
    (name "r-likelihood")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "likelihood" version))
       (sha256
        (base32 "0w9p2vzrcln6a35b8pmlli01vq67vdbp4cnc9hb256syldsj7pp4"))))
    (properties `((upstream-name . "likelihood")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=likelihood")
    (synopsis "Methods for Maximum Likelihood Estimation")
    (description
     "This package provides tools for maximum likelihood estimation of parameters of
scientific models.  Based on Goffe et al (1994)
<doi:10.1016/0304-4076(94)90038-8>.")
    (license license:gpl2)))

(define-public r-lightsout
  (package
    (name "r-lightsout")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lightsout" version))
       (sha256
        (base32 "0wkpg4yvn2br0r1vb23vl4ayhg4m8zph57p67wf3a4c0xqga3kvr"))))
    (properties `((upstream-name . "lightsout")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyjs r-shiny r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/daattali/lightsout")
    (synopsis "Implementation of the 'Lights Out' Puzzle Game")
    (description
     "Lights Out is a puzzle game consisting of a grid of lights that are either on or
off.  Pressing any light will toggle it and its adjacent lights.  The goal of
the game is to switch all the lights off.  This package provides an interface to
play the game on different board sizes, both through the command line or with a
visual application.  Puzzles can also be solved using the automatic solver
included.  View a demo online at <https://daattali.com/shiny/lightsout/>.")
    (license license:expat)))

(define-public r-lightr
  (package
    (name "r-lightr")
    (version "1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lightr" version))
       (sha256
        (base32 "0g49l7cqg485svwfc07i87626mcdv13g99mvmlkgl2fhsm69dibr"))))
    (properties `((upstream-name . "lightr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-progressr r-future-apply))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/lightr/")
    (synopsis "Read Spectrometric Data and Metadata")
    (description
     "Parse various reflectance/transmittance/absorbance spectra file formats to
extract spectral data and metadata, as described in Gruson, White & Maia (2019)
<doi:10.21105/joss.01857>.  Among other formats, it can import files from
Avantes <https://www.avantes.com/>, CRAIC <https://www.microspectra.com/>, and
@code{OceanOptics'/'OceanInsight} <https://www.oceanoptics.com/> brands.")
    (license license:gpl2+)))

(define-public r-lightparser
  (package
    (name "r-lightparser")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lightparser" version))
       (sha256
        (base32 "176lsx2qmy3iqwg1ashf81hj8biwvplcs4y5fbw0mb34fw93n876"))))
    (properties `((upstream-name . "lightparser")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-tibble r-rlang r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ThinkR-open/lightparser")
    (synopsis "From 'Rmarkdown' and 'Quarto' Files to Tibble and Back")
    (description
     "Split your rmarkdown or quarto files by sections into a tibble: titles, text,
chunks.  Rebuild the file from the tibble.")
    (license license:expat)))

(define-public r-lightlogr
  (package
    (name "r-lightlogr")
    (version "0.9.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LightLogR" version))
       (sha256
        (base32 "08zdxgcykyvb0yarjbznxb88a6v42cxhriywsjrwm05ybqrk5x4n"))))
    (properties `((upstream-name . "LightLogR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-suntools
                             r-stringr
                             r-slider
                             r-scales
                             r-rlang
                             r-readr
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-lubridate
                             r-janitor
                             r-hms
                             r-ggtext
                             r-ggsci
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (home-page "https://github.com/tscnlab/LightLogR")
    (synopsis
     "Process Data from Wearable Light Loggers and Optical Radiation Dosimeters")
    (description
     "Import, processing, validation, and visualization of personal light exposure
measurement data from wearable devices.  The package implements features such as
the import of data and metadata files, conversion of common file formats,
validation of light logging data, verification of crucial metadata, calculation
of common parameters, and semi-automated analysis and visualization.")
    (license license:expat)))

(define-public r-lightfitr
  (package
    (name "r-lightfitr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LightFitR" version))
       (sha256
        (base32 "1rs740abr9zcwwd37whgf0pd25kivswna3s6q7swv2qdgqp4ggp5"))))
    (properties `((upstream-name . "LightFitR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-nnls r-lubridate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ginavong/LightFitR/")
    (synopsis "Design Complex Light Regimes")
    (description
     "This package provides a system for accurately designing complex light regimes
using LEDs.  Takes calibration data and user-defined target irradiances and it
tells you what intensities to use.  For more details see Vong et al. (2025)
<doi:10.1101/2025.06.06.658293>.")
    (license license:gpl3+)))

(define-public r-lightauc
  (package
    (name "r-lightauc")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lightAUC" version))
       (sha256
        (base32 "0x8jrhwg50wr3aybh66sj74f651570p2jlqw4fpj112cgyryv7j8"))))
    (properties `((upstream-name . "lightAUC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppparallel r-rcpparmadillo r-rcpp))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/cadam00/lightAUC")
    (synopsis "Fast AUC Computation")
    (description
     "Fast calculation of Area Under Curve (AUC) metric of a Receiver Operating
Characteristic (ROC) curve, using the algorithm of Fawcett (2006)
<doi:10.1016/j.patrec.2005.10.010>.  Therefore it is appropriate for large-scale
AUC metric calculations.")
    (license license:gpl3)))

(define-public r-lifx
  (package
    (name "r-lifx")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lifx" version))
       (sha256
        (base32 "0p9ljd3s3lc1rkhzpp801izy9y52f0yc1dsrsxwx5gi89cnib596"))))
    (properties `((upstream-name . "lifx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr r-curl r-crayon r-assertthat))
    (home-page "https://cran.r-project.org/package=lifx")
    (synopsis "Control 'LIFX' Smart Light Bulbs")
    (description
     "Allows you to read and change the state of LIFX smart light bulbs via the LIFX
developer api <https://api.developer.lifx.com/>.  Covers most LIFX api
endpoints, including changing light color and brightness, selecting lights by
id, group or location as well as activating effects.")
    (license license:gpl3)))

(define-public r-lifttest
  (package
    (name "r-lifttest")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LiftTest" version))
       (sha256
        (base32 "097aj0b8gxly3gqvckcl9xcvv60yd06ydagdqzy80zhv4aqgxm5p"))))
    (properties `((upstream-name . "LiftTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LiftTest")
    (synopsis "Bootstrap Proportion Test for Brand Lift Testing")
    (description
     "This package provides a bootstrap proportion test for Brand Lift Testing to
quantify the effectiveness of online advertising.  Methods of the bootstrap
proportion test are presented in Liu, Yu, Mao, Wu, Dyer (2023)
<doi:10.1145/3583780.3615021>.")
    (license license:gpl3+)))

(define-public r-liftr
  (package
    (name "r-liftr")
    (version "0.9.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liftr" version))
       (sha256
        (base32 "0azi831c4f0vcq27a3q86vj90zvwrzcy4plhj9hqkk4qz8xw113x"))))
    (properties `((upstream-name . "liftr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list docker))
    (propagated-inputs (list r-yaml r-stringr r-rstudioapi r-rmarkdown r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://nanx.me/liftr/")
    (synopsis
     "Containerize R Markdown Documents for Continuous Reproducibility")
    (description
     "Persistent reproducible reporting by containerization of R Markdown documents.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-liftlrd
  (package
    (name "r-liftlrd")
    (version "1.0-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "liftLRD" version))
       (sha256
        (base32 "11xrh4pjvlqb0297a2wzngpa1m3b09axvcfd16hg393rifrisgh4"))))
    (properties `((upstream-name . "liftLRD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlt r-adlift))
    (home-page "https://cran.r-project.org/package=liftLRD")
    (synopsis
     "Wavelet Lifting Estimators of the Hurst Exponent for Regularly and Irregularly Sampled Time Series")
    (description
     "Implementations of Hurst exponent estimators based on the relationship between
wavelet lifting scales and wavelet energy of Knight et al (2017)
<doi:10.1007/s11222-016-9698-2>.")
    (license license:gpl2)))

(define-public r-lifertable
  (package
    (name "r-lifertable")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Lifertable" version))
       (sha256
        (base32 "0zvm9ayr3r0bs9bpan04wipwm6ghxgh90bj902km3n8m2bc4h3n0"))))
    (properties `((upstream-name . "Lifertable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-ggplot2))
    (home-page "https://cran.r-project.org/package=Lifertable")
    (synopsis "Life and Fertility Tables Specially for Insects")
    (description
     "Life and Fertility Tables are appropriate to study the dynamics of arthropods
populations.  This package provides utilities for constructing Life Tables and
Fertility Tables, related demographic parameters, and some simple graphs of
interest.  It also offers functions to transform the obtained data into a known
format for better manipulation.  This document is based on the article by Maia,
Luiz, and Campanhola \"Statistical Inference on Associated Fertility Life Table
Parameters Using Jackknife Technique Computational Aspects\" (April 2000, Journal
of Economic Entomology, Volume 93, Issue 2) <doi:10.1603/0022-0493-93.2.511>.")
    (license license:expat)))

(define-public r-lifer
  (package
    (name "r-lifer")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lifeR" version))
       (sha256
        (base32 "042d3i12r7kp6dh6y7gl72hspv1blah7xgpzdhr71zrrila6azmm"))))
    (properties `((upstream-name . "lifeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyterra
                             r-terra
                             r-stringr
                             r-rmarkdown
                             r-readr
                             r-maptiles
                             r-knitr
                             r-jsonlite
                             r-ggplot2
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://jcoliver.github.io/lifeR/")
    (synopsis "Identify Sites for Your Bird List")
    (description
     "This package provides a suite of tools to use the @code{eBird} database
(<https://ebird.org/home/>) and APIs to compare users species lists to recent
observations and create a report of the top sites to visit to see new species.")
    (license license:bsd-2)))

(define-public r-lifepack
  (package
    (name "r-lifepack")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lifepack" version))
       (sha256
        (base32 "0w61karznnr3swvzx9gnd6y80g47j4mvf6adfr4vbcxnvchf0ff1"))))
    (properties `((upstream-name . "lifepack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lifepack")
    (synopsis "Insurance Reserve Calculations")
    (description
     "Calculates insurance reserves and equivalence premiums using advanced numerical
methods, including the Runge-Kutta algorithm and product integrals for
transition probabilities.  This package is useful for actuarial analyses and
life insurance modeling, facilitating accurate financial projections.")
    (license license:gpl3)))

(define-public r-lifemapr
  (package
    (name "r-lifemapr")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LifemapR" version))
       (sha256
        (base32 "00lz5nfggfqd3ccq2srrxbdkkz9d0vivbg7ady7yz14qm9njqkix"))))
    (properties `((upstream-name . "LifemapR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-rlang
                             r-rcurl
                             r-leaflet-minicharts
                             r-leaflet
                             r-jsonlite
                             r-htmltools
                             r-fastmatch
                             r-dplyr
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://lifemap-tol.github.io/LifemapR/")
    (synopsis "Data Visualisation on 'Lifemap' Tree")
    (description
     "Allow to visualise data on the NCBI phylogenetic tree as presented in Lifemap
<https://lifemap.cnrs.fr/>.  It takes as input a dataframe with at least a
\"taxid\" column containing NCBI format @code{TaxIds} and allows to draw multiple
layers with different visualisation tools.")
    (license license:expat)))

(define-public r-lifeinsurer
  (package
    (name "r-lifeinsurer")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LifeInsureR" version))
       (sha256
        (base32 "1f61prf7172z6bvdgmdqrfwsqb3kzghb7i727n18nic2lcyldydd"))))
    (properties `((upstream-name . "LifeInsureR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-r6
                             r-pander
                             r-openxlsx
                             r-objectproperties
                             r-mortalitytables
                             r-lubridate
                             r-kableextra
                             r-dplyr
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.open-tools.net/R/LifeInsureR")
    (synopsis "Modelling Traditional Life Insurance Contracts")
    (description
     "R6 classes to model traditional life insurance contracts like annuities, whole
life insurances or endowments.  Such life insurance contracts provide a
guaranteed interest and are not directly linked to the performance of a
particular investment vehicle, but they typically provide (discretionary) profit
participation.  This package provides a framework to model such contracts in a
very generic (cash-flow-based) way and includes modelling profit participation
schemes, dynamic increases or more general contract layers, as well as contract
changes (like sum increases or premium waivers).  All relevant quantities like
premium decomposition, reserves and benefits over the whole contract period are
calculated and potentially exported to Excel'.  Mortality rates are given using
the @code{MortalityTables} package.")
    (license license:gpl2+)))

(define-public r-lifeinsurancecontracts
  (package
    (name "r-lifeinsurancecontracts")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LifeInsuranceContracts" version))
       (sha256
        (base32 "1i202lzrr496s2kgpzw5zd1lzcl4ng1aymx7paj42vnxv2j5152c"))))
    (properties `((upstream-name . "LifeInsuranceContracts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lifeinsurer))
    (home-page "https://gitlab.open-tools.net/R/LifeInsureR")
    (synopsis "Framework for Traditional Life Insurance Contracts")
    (description
     "Use of this package is deprecated.  It has been renamed to @code{LifeInsureR}'.")
    (license license:gpl2+)))

(define-public r-lifehist
  (package
    (name "r-lifehist")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LifeHist" version))
       (sha256
        (base32 "0q6l6rva5kxl8yzqa7ni4sdj6p4c61sdsjx8zhckzxb7xlwg2hh0"))))
    (properties `((upstream-name . "LifeHist")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-optimx r-hmisc r-bb))
    (home-page "https://cran.r-project.org/package=LifeHist")
    (synopsis "Life History Models of Individuals")
    (description
     "Likelihood-based estimation of individual growth and sexual maturity models for
organisms, usually fish and invertebrates.  It includes methods for data
organization, plotting standard exploratory and analytical plots, predictions.")
    (license license:gpl2+)))

(define-public r-lifecourse
  (package
    (name "r-lifecourse")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lifecourse" version))
       (sha256
        (base32 "1m8ihqvzhzpq2m2pdvh37bpq9pdbj23r3y0jkl3q8farh3qj473d"))))
    (properties `((upstream-name . "lifecourse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-traminer))
    (home-page "https://cran.r-project.org/package=lifecourse")
    (synopsis "Quantification of Lifecourse Fluidity")
    (description
     "This package provides in built datasets and three functions.  These functions
are mobility_index, @code{nonStanTest} and @code{linkedLives}.  The
mobility_index function facilitates the calculation of lifecourse fluidity,
whilst the @code{nonStanTest} and the @code{linkedLives} functions allow the
user to determine the probability that the observed sequence data was due to
chance.  The @code{linkedLives} function acknowledges the fact that some
individuals may have identical sequences.  The datasets available provide
sequence data on marital status(@code{maritalData}) and mobility (mydata) for a
selected group of individuals from the British Household Panel Study (BHPS).  In
addition, personal and house ID's for 100 individuals are provided in a third
dataset (@code{myHouseID}) from the BHPS.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lifecontingencies
  (package
    (name "r-lifecontingencies")
    (version "1.3.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lifecontingencies" version))
       (sha256
        (base32 "03kcfvm01il451hy9rg7adwg5vllv9kr61n58kkqkyvx7cj0xk5b"))))
    (properties `((upstream-name . "lifecontingencies")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-markovchain))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/spedygiorgio/lifecontingencies")
    (synopsis "Financial and Actuarial Mathematics for Life Contingencies")
    (description
     "This package provides classes and methods that allow the user to manage life
table, actuarial tables (also multiple decrements tables).  Moreover, functions
to easily perform demographic, financial and actuarial mathematics on life
contingencies insurances calculations are contained therein.  See Spedicato
(2013)	<doi:10.18637/jss.v055.i10>.")
    (license license:expat)))

(define-public r-lievens
  (package
    (name "r-lievens")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lievens" version))
       (sha256
        (base32 "0px5fi06cl8kvi8wgs2nh616acznx108nfphhlfkp2x00hapln6z"))))
    (properties `((upstream-name . "lievens")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble))
    (home-page "https://rmagno.eu/lievens/")
    (synopsis "Real-Time PCR Data Sets by Lievens et al. (2012)")
    (description
     "Real-time quantitative polymerase chain reaction (@code{qPCR}) data sets by
Lievens et al. (2012) <doi:10.1093/nar/gkr775>.  Provides one single tabular
tidy data set in long format, encompassing three dilution series, targeted
against the soybean Lectin endogene.  Each dilution series was assayed in one of
the following PCR-efficiency-modifying conditions: no PCR inhibition, inhibition
by isopropanol and inhibition by tannic acid.  The inhibitors were co-diluted
along with the dilution series.  The co-dilution series consists of a
five-point, five-fold serial dilution.  For each concentration there are 18
replicates.  Each amplification curve is 60 cycles long.  Original raw data file
is available at the Supplementary Data section at Nucleic Acids Research Online
<doi:10.1093/nar/gkr775>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-lidr
  (package
    (name "r-lidr")
    (version "4.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lidR" version))
       (sha256
        (base32 "0p8ripfni2n84wq2rihcfi4abhrbiqrhnk5sn3qvcygk21ls92az"))))
    (properties `((upstream-name . "lidR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-stars
                             r-sf
                             r-rlas
                             r-rgl
                             r-rcpparmadillo
                             r-rcpp
                             r-lazyeval
                             r-glue
                             r-data-table
                             r-classint
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-lidar/lidR")
    (synopsis
     "Airborne LiDAR Data Manipulation and Visualization for Forestry Applications")
    (description
     "Airborne @code{LiDAR} (Light Detection and Ranging) interface for data
manipulation and visualization.  Read/write las and laz files, computation of
metrics in area based approach, point filtering, artificial point reduction,
classification from geographic data, normalization, individual tree segmentation
and other manipulations.")
    (license license:gpl3)))

(define-public r-lidartree
  (package
    (name "r-lidartree")
    (version "4.0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lidaRtRee" version))
       (sha256
        (base32 "1nqf31bbgvy8b6ad4fa2vzzrjy3q42mfcp9hbv16363b64yl7nza"))))
    (properties `((upstream-name . "lidaRtRee")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-sf
                             r-reldist
                             r-lidr
                             r-leaps
                             r-imager
                             r-gvlma
                             r-car))
    (home-page "https://lidar.pages.mia.inra.fr/lidaRtRee/")
    (synopsis "Forest Analysis with Airborne Laser Scanning (LiDAR) Data")
    (description
     "This package provides functions for forest objects detection, structure metrics
computation, model calibration and mapping with airborne laser scanning:
co-registration of field plots (Monnet and Mermin (2014)
<doi:10.3390/f5092307>); tree detection (method 1 in Eysn et al. (2015)
<doi:10.3390/f6051721>) and segmentation; forest parameters estimation with the
area-based approach: model calibration with ground reference, and maps export
(Aussenac et al. (2023) <doi:10.12688/openreseurope.15373.2>); extraction of
both physical (gaps, edges, trees) and statistical features useful for e.g.
habitat suitability modeling (Glad et al. (2020) <doi:10.1002/rse2.117>) and
forest maturity mapping (Fuhr et al. (2022) <doi:10.1002/rse2.274>).")
    (license license:gpl3)))

(define-public r-licoread
  (package
    (name "r-licoread")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "licoread" version))
       (sha256
        (base32 "0js1r6xp4rjnnq6v0ahmy72s5mp4irndwmhyj8gvxh7r0z22wjdg"))))
    (properties `((upstream-name . "licoread")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-lubridate
                             r-jsonlite
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://jogaudard.github.io/licoread/")
    (synopsis "Reads Raw Files from Li-COR Gas Analyzers")
    (description
     "Reads raw files from Li-COR gas analyzers and produces a dataframe that can
directly be used with fluxible <https://cran.r-project.org/package=fluxible>.")
    (license license:gpl3+)))

(define-public r-lic
  (package
    (name "r-lic")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LIC" version))
       (sha256
        (base32 "01wqx3mqq0rz4m0zp07ln6d396fz7xcwm37kn8js26ravyhiipdq"))))
    (properties `((upstream-name . "LIC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LIC")
    (synopsis "The LIC Criterion for Optimal Subset Selection")
    (description
     "The LIC criterion is to determine the most informative subsets so that the
subset can retain most of the information contained in the complete data.  The
philosophy of the package is described in Guo G. (2022)
<doi:10.1080/02664763.2022.2053949>.")
    (license license:expat)))

(define-public r-libstable4u
  (package
    (name "r-libstable4u")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libstable4u" version))
       (sha256
        (base32 "166grdgqwzgk5zm8cj8y7gbgjqrv65wjnh2f750xgzwbyplsxmsp"))))
    (properties `((upstream-name . "libstable4u")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppgsl r-rcpp))
    (home-page "https://cran.r-project.org/package=libstable4u")
    (synopsis "Stable Distribution Functions...For You")
    (description
     "This package provides tools for fast and accurate evaluation of skew stable
distributions (CDF, PDF and quantile functions), random number generation, and
parameter estimation.  This is @code{libstableR} as per Royuela del Val,
Simmross-Wattenberg, and Alberola LÃ³pez (2017) <doi:10.18637/jss.v078.i01>
under a new maintainer.")
    (license license:gpl3)))

(define-public r-librarysnapshot
  (package
    (name "r-librarysnapshot")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "librarysnapshot" version))
       (sha256
        (base32 "0v4x564zpm58kxs5n84bi6mcjhbzjg6a2lc30vsc8kbm3qy0nq38"))))
    (properties `((upstream-name . "librarysnapshot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/petermeissner/librarysnapshot")
    (synopsis
     "Library Snapshot for Packages and Dependencies in Use by Current Session")
    (description
     "Generate a local library copy with relevant packages.  All packages currently
found within the search path - except base packages - will be copied to the
directory provided and can be used later on with the @code{.libPaths()}
function.")
    (license license:expat)))

(define-public r-librarian
  (package
    (name "r-librarian")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "librarian" version))
       (sha256
        (base32 "0bbgx9pdwcv64p6zdrw3m0893ar4bw6z90vhbgplp53l65cch548"))))
    (properties `((upstream-name . "librarian")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-remotes r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DesiQuintans/librarian")
    (synopsis
     "Install, Update, Load Packages from CRAN, 'GitHub', and 'Bioconductor' in One Step")
    (description
     "Automatically install, update, and load CRAN', @code{GitHub}', and Bioconductor
packages in a single function call.  By accepting bare unquoted names for
packages, it's easy to add or remove packages from the list.")
    (license license:gpl3)))

(define-public r-libra
  (package
    (name "r-libra")
    (version "1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Libra" version))
       (sha256
        (base32 "1fdxvjv3pwpvfw3hnff09s89b2lv13v3ds91lyg3yi7am820dyzg"))))
    (properties `((upstream-name . "Libra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nnls))
    (home-page "https://arxiv.org/abs/1406.7728")
    (synopsis "Linearized Bregman Algorithms for Generalized Linear Models")
    (description
     "Efficient procedures for fitting the regularization path for linear, binomial,
multinomial, Ising and Potts models with lasso, group lasso or column lasso(only
for multinomial) penalty.  The package uses Linearized Bregman Algorithm to
solve the regularization path through iterations.  Bregman Inverse Scale Space
Differential Inclusion solver is also provided for linear model with lasso
penalty.")
    (license license:gpl2)))

(define-public r-libr
  (package
    (name "r-libr")
    (version "1.3.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libr" version))
       (sha256
        (base32 "17f3qkxx1zk562ai5nzqgzrsr580cl9wz6kqcldgvh5cphw85a15"))))
    (properties `((upstream-name . "libr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-readxl
                             r-readr
                             r-rcpp
                             r-openxlsx
                             r-haven
                             r-dplyr
                             r-data-table
                             r-crayon
                             r-common))
    (native-inputs (list r-knitr))
    (home-page "https://libr.r-sassy.org")
    (synopsis "Libraries, Data Dictionaries, and a Data Step for R")
    (description
     "This package contains a set of functions to create data libraries, generate data
dictionaries, and simulate a data step.  The @code{libname()} function will load
a directory of data into a library in one line of code.  The @code{dictionary()}
function will generate data dictionaries for individual data frames or an entire
library.  And the @code{datestep()} function will perform row-by-row data
processing.")
    (license license:cc0)))

(define-public r-libopenexr
  (package
    (name "r-libopenexr")
    (version "3.4.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libopenexr" version))
       (sha256
        (base32 "04ic2b8m35662yc7d5d0h1c4d9vz10nx1dmblqrbkfhnibad3530"))))
    (properties `((upstream-name . "libopenexr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list cmake))
    (propagated-inputs (list r-libimath r-libdeflate))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=libopenexr")
    (synopsis "Static Library and Headers for 'OpenEXR' Image I/O")
    (description
     "This package provides the @code{OpenEXR} static library and C++ headers for
high-dynamic-range image I/O (see <https://openexr.com/>) needed to link R
packages against the @code{OpenEXR} library, along with a basic R interface to
load EXR images.")
    (license license:bsd-3)))

(define-public r-liblinear
  (package
    (name "r-liblinear")
    (version "2.10-24")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LiblineaR" version))
       (sha256
        (base32 "1j17y1bky1ymhxy1yynxih2v5haj7f3q8ddap5w7a33fydkaaj9r"))))
    (properties `((upstream-name . "LiblineaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "<https://dnalytics.com/software/liblinear/>")
    (synopsis "Linear Predictive Models Based on the LIBLINEAR C/C++ Library")
    (description
     "This package provides a wrapper around the LIBLINEAR C/C++ library for machine
learning (available at <https://www.csie.ntu.edu.tw/~cjlin/liblinear/>).
LIBLINEAR is a simple library for solving large-scale regularized linear
classification and regression.  It currently supports L2-regularized
classification (such as logistic regression, L2-loss linear SVM and L1-loss
linear SVM) as well as L1-regularized classification (such as L2-loss linear SVM
and logistic regression) and L2-regularized support vector regression (with L1-
or L2-loss).  The main features of @code{LiblineaR} include multi-class
classification (one-vs-the rest, and Crammer & Singer method), cross validation
for model selection, probability estimates (logistic regression only) or weights
for unbalanced data.  The estimation of the models is particularly fast as
compared to other libraries.")
    (license license:gpl2)))

(define-public r-libimath
  (package
    (name "r-libimath")
    (version "3.1.9-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libimath" version))
       (sha256
        (base32 "1q7hqbq84rk5q4fq3wnrhchm9nb087jkpq87p395mi84njbh7h05"))))
    (properties `((upstream-name . "libimath")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list cmake))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=libimath")
    (synopsis "'Imath' Computer Graphics Linear Algebra Static Library")
    (description
     "This package provides a static library for Imath (see
<https://github.com/@code{AcademySoftwareFoundation/Imath>}), a library for
functions and data types common in computer graphics applications, including a
16-bit floating-point type.")
    (license license:bsd-3)))

(define-public r-libdeflate
  (package
    (name "r-libdeflate")
    (version "1.24-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libdeflate" version))
       (sha256
        (base32 "1jq8wr2a9hzalpiilywankcpxgd3v7cy7xnf5xc4ff00ilbb6qal"))))
    (properties `((upstream-name . "libdeflate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list cmake))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=libdeflate")
    (synopsis "DEFLATE Compression and Static Library")
    (description
     "Whole-buffer DEFLATE-based compression and decompression of raw vectors using
the libdeflate library (see <https://github.com/ebiggers/libdeflate>).  Provides
the user with additional control over the speed and the quality of DEFLATE
compression compared to the fixed level of compression offered in R's
@code{memCompress()} function.  Also provides the libdeflate static library and
C headers along with a CMake target and packageâconfig file that ease linking
of libdeflate in packages that compile and statically link bundled libraries
using CMake'.")
    (license license:expat)))

(define-public r-libbib
  (package
    (name "r-libbib")
    (version "1.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "libbib" version))
       (sha256
        (base32 "1jcdsvg5xgc7yzdc00k2brsiviyzflsdgiyk77icw08bwlbxh9mk"))))
    (properties `((upstream-name . "libbib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-stringr r-pbapply r-data-table r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=libbib")
    (synopsis
     "Various Utilities for Library Science/Assessment and Cataloging")
    (description
     "This package provides functions for validating and normalizing bibliographic
codes such as ISBN, ISSN, and LCCN. Also includes functions to communicate with
the @code{WorldCat} API, translate Call numbers (Library of Congress and Dewey
Decimal) to their subject classifications or subclassifications, and provides
various loadable data files such call number / subject crosswalks and code
tables.")
    (license license:gpl3)))

(define-public r-lhmixr
  (package
    (name "r-lhmixr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lhmixr" version))
       (sha256
        (base32 "1c4ydgq1z2y0xk8xqdsim6xvgxdbl3gglfk5kcr9k4m01arvv0rf"))))
    (properties `((upstream-name . "lhmixr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/mintoc/lhmixr")
    (synopsis
     "Fit Sex-Specific Life History Models with Missing Classifications")
    (description
     "Fits sex-specific life-history models for fish and other taxa where some of the
individuals have unknown sex.")
    (license license:gpl3+)))

(define-public r-lhd
  (package
    (name "r-lhd")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LHD" version))
       (sha256
        (base32 "0lj56c9sp62lyavji3fb6ilhfk4jfckpr4xb2q732w3kljm604h1"))))
    (properties `((upstream-name . "LHD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numbers))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LHD")
    (synopsis "Latin Hypercube Designs (LHDs)")
    (description
     "This package contains different algorithms and construction methods for optimal
Latin hypercube designs (LHDs) with flexible sizes.  Our package is
comprehensive since it is capable of generating maximin distance LHDs, maximum
projection LHDs, and orthogonal and nearly orthogonal LHDs.  Detailed
comparisons and summary of all the algorithms and construction methods in this
package can be found at Hongzhi Wang, Qian Xiao and Abhyuday Mandal (2021)
<doi:10.48550/@code{arXiv.2010.09154>}.  This package is particularly useful in
the area of Design and Analysis of Experiments (DAE).  More specifically, design
of computer experiments.")
    (license license:expat)))

(define-public r-lgtdl
  (package
    (name "r-lgtdl")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgtdl" version))
       (sha256
        (base32 "1sixq56d2px36q0xq3kl0zwj2yzm3q8fhgqjvmajcdd5jl8l7130"))))
    (properties `((upstream-name . "lgtdl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lgtdl")
    (synopsis "Set of Methods for Longitudinal Data Objects")
    (description
     "This package provides a very simple implementation of a class for longitudinal
data.")
    (license license:gpl2+)))

(define-public r-lgspline
  (package
    (name "r-lgspline")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgspline" version))
       (sha256
        (base32 "08yx88acfyz5faal5ic930x8jxzlm4ja44m5jn5xjqwg8202rlpf"))))
    (properties `((upstream-name . "lgspline")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-quadprog
                             r-plotly
                             r-fnn))
    (home-page "https://github.com/matthewlouisdavisBioStat/lgspline")
    (synopsis
     "Lagrangian Multiplier Smoothing Splines for Smooth Function Estimation")
    (description
     "This package implements Lagrangian multiplier smoothing splines for flexible
nonparametric regression and function estimation.  Provides tools for fitting,
prediction, and inference using a constrained optimization approach to enforce
smoothness.  Supports generalized linear models, Weibull accelerated failure
time (AFT) models, quadratic programming problems, and customizable arbitrary
correlation structures.  Options for fitting in parallel are provided.  The
method builds upon the framework described by Ezhov et al. (2018)
<doi:10.1515/jag-2017-0029> using Lagrangian multipliers to fit cubic splines.
For more information on correlation structure estimation, see Searle et al.
(2009) <ISBN:978-0470009598>.  For quadratic programming and constrained
optimization in general, see Nocedal & Wright (2006)
<doi:10.1007/978-0-387-40065-5>.  For a comprehensive background on smoothing
splines, see Wahba (1990) <doi:10.1137/1.9781611970128> and Wood (2006)
<ISBN:978-1584884743> \"Generalized Additive Models: An Introduction with R\".")
    (license license:expat)))

(define-public r-lgrf
  (package
    (name "r-lgrf")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LGRF" version))
       (sha256
        (base32 "1kdx6y55aa9n6v43zfz6jk8amvvxbx79sqm1jx4ihgkpgcdglan7"))))
    (properties `((upstream-name . "LGRF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-skat r-geepack r-compquadform))
    (home-page "https://cran.r-project.org/package=LGRF")
    (synopsis
     "Set-Based Tests for Genetic Association in Longitudinal Studies")
    (description
     "This package provides functions for the longitudinal genetic random field method
(He et al., 2015, <doi:10.1111/biom.12310>) to test the association between a
longitudinally measured quantitative outcome and a set of genetic variants in a
gene/region.")
    (license license:gpl3)))

(define-public r-lgrextra
  (package
    (name "r-lgrextra")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgrExtra" version))
       (sha256
        (base32 "0bqr8fr8xxndfdjv2xr0b306f2kv55wy386skbldw6a88ssgqbnw"))))
    (properties `((upstream-name . "lgrExtra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-lgr r-data-table))
    (home-page "https://s-fleck.github.io/lgrExtra/")
    (synopsis "Extra Appenders for 'lgr'")
    (description
     "Additional appenders for the logging package lgr that support logging to
Elasticsearch', Dynatrace', AWS@code{CloudWatchLog}', databases, syslog', email-
and push notifications, and more.")
    (license license:expat)))

(define-public r-lgrdata
  (package
    (name "r-lgrdata")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgrdata" version))
       (sha256
        (base32 "0h1crdhqfp6hzx30lp0w015scf2566hhrl2i7mkxy868rkl3aig9"))))
    (properties `((upstream-name . "lgrdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lgrdata")
    (synopsis "Example Datasets for a Learning Guide to R")
    (description
     "This package provides a largish collection of example datasets, including
several classics.  Many of these datasets are well suited for regression,
classification, and visualization.")
    (license license:cc0)))

(define-public r-lgpr
  (package
    (name "r-lgpr")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgpr" version))
       (sha256
        (base32 "1xhkkykig3d2adh7nhvsjg75fxk8h9jdqdsadc9fwbdda354xvg7"))))
    (properties `((upstream-name . "lgpr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcurl
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-bh
                             r-bayesplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jtimonen/lgpr")
    (synopsis "Longitudinal Gaussian Process Regression")
    (description
     "Interpretable nonparametric modeling of longitudinal data using additive
Gaussian process regression.  Contains functionality for inferring covariate
effects and assessing covariate relevances.  Models are specified using a
convenient formula syntax, and can include shared, group-specific,
non-stationary, heterogeneous and temporally uncertain effects.  Bayesian
inference for model parameters is performed using Stan'.  The modeling approach
and methods are described in detail in Timonen et al. (2021)
<doi:10.1093/bioinformatics/btab021>.")
    (license license:gpl3+)))

(define-public r-lglasso
  (package
    (name "r-lglasso")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lglasso" version))
       (sha256
        (base32 "0qkmlr7gfbw9m403676p4ip4hn2v2ll1jcwj5vhshcyb5whsr866"))))
    (properties `((upstream-name . "lglasso")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-glasso))
    (home-page "https://github.com/jiezhou-2/lglasso")
    (synopsis "Longitudinal Graphical Lasso")
    (description
     "For high-dimensional correlated observations, this package carries out the L_1
penalized maximum likelihood estimation of the precision matrix (network) and
the correlation parameters.  The correlated data can be longitudinal data (may
be irregularly spaced) with dampening correlation or clustered data with uniform
correlation.  For the details of the algorithms, please see the paper Jie Zhou
et al.  Identifying Microbial Interaction Networks Based on Irregularly Spaced
Longitudinal 16S @code{rRNA} sequence data <doi:10.1101/2021.11.26.470159>.")
    (license license:gpl3)))

(define-public r-lgewis
  (package
    (name "r-lgewis")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LGEWIS" version))
       (sha256
        (base32 "1i52vp0ghjzmyh4r8h6jpyij7x4skw99xvw017b56m8fg64zy70r"))))
    (properties `((upstream-name . "LGEWIS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-skat r-mvtnorm r-geem r-compquadform))
    (home-page "https://cran.r-project.org/package=LGEWIS")
    (synopsis
     "Tests for Genetic Association/Gene-Environment Interaction in Longitudinal Studies")
    (description
     "This package provides functions for genome-wide association studies
(GWAS)/gene-environment-wide interaction studies (GEWIS) with longitudinal
outcomes and exposures.  He et al. (2017) \"Set-Based Tests for Gene-Environment
Interaction in Longitudinal Studies\" and He et al. (2017) \"Rare-variant
association tests in longitudinal studies, with an application to the
Multi-Ethnic Study of Atherosclerosis (MESA)\".")
    (license license:gpl3)))

(define-public r-lgdtoolkit
  (package
    (name "r-lgdtoolkit")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LGDtoolkit" version))
       (sha256
        (base32 "0ch3nmkwj3s9x5f5h9c5m5dcwl2dq0az0k49jw7szr4w25a8k3hh"))))
    (properties `((upstream-name . "LGDtoolkit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-monobin r-dplyr))
    (home-page "https://github.com/andrija-djurovic/LGDtoolkit")
    (synopsis "Collection of Tools for LGD Rating Model Development")
    (description
     "The goal of this package is to cover the most common steps in Loss Given Default
(LGD) rating model development.  The main procedures available are those that
refer to bivariate and multivariate analysis.  In particular two statistical
methods for multivariate analysis are currently implemented â OLS regression
and fractional logistic regression.  Both methods are also available within
different blockwise model designs and both have customized stepwise algorithms.
Descriptions of these customized designs are available in Siddiqi (2016)
<doi:10.1002/9781119282396.ch10> and Anderson, R.A. (2021)
<doi:10.1093/oso/9780192844194.001.0001>.  Although they are explained for PD
model, the same designs are applicable for LGD model with different underlying
regression methods (OLS and fractional logistic regression).  To cover other
important steps for LGD model development, it is recommended to use LGDtoolkit
package along with PDtoolkit', and monobin (or @code{monobinShiny}') packages.
Additionally, LGDtoolkit provides set of procedures handy for initial and
periodical model validation.")
    (license license:gpl3+)))

(define-public r-lgcu
  (package
    (name "r-lgcu")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LGCU" version))
       (sha256
        (base32 "14pasrdzrgd2lqfm19jv7wpii5h17kijwkcigbsimg5a4cqhp2qn"))))
    (properties `((upstream-name . "LGCU")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tictoc r-rcpp r-mass))
    (home-page "https://github.com/ingharold-madrid/LGCU")
    (synopsis
     "Implementation of Learning Gamma CUSUM (Cumulative Sum) Control Charts")
    (description
     "This package implements Cumulative Sum (CUSUM) control charts specifically
designed for monitoring processes following a Gamma distribution.  Provides
functions to estimate distribution parameters, simulate control limits, and
apply cautious learning schemes for adaptive thresholding.  It supports upward
and downward monitoring with guaranteed performance evaluated via Monte Carlo
simulations.  It is useful for quality control applications in industries where
data follows a Gamma distribution.  Methods are based on Madrid-Alvarez et al.
(2024) <doi:10.1002/qre.3464> and Madrid-Alvarez et al. (2024)
<doi:10.1080/08982112.2024.2440368>.")
    (license license:gpl3)))

(define-public r-lgcp
  (package
    (name "r-lgcp")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgcp" version))
       (sha256
        (base32 "0f7s53sypj5l6ry437albypf1j2g3vxh137vfjfx3n84r0bmp5mw"))))
    (properties `((upstream-name . "lgcp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-utils
                             r-spatstat-geom
                             r-spatstat-explore
                             r-sp
                             r-sf
                             r-rpanel
                             r-raster
                             r-ncdf4
                             r-matrix
                             r-iterators
                             r-fields))
    (home-page "https://cran.r-project.org/package=lgcp")
    (synopsis "Log-Gaussian Cox Process")
    (description
     "Spatial and spatio-temporal modelling of point patterns using the log-Gaussian
Cox process.  Bayesian inference for spatial, spatiotemporal, multivariate and
aggregated point processes using Markov chain Monte Carlo.  See Benjamin M.
Taylor, Tilman M. Davies, Barry S. Rowlingson, Peter J. Diggle (2015)
<doi:10.18637/jss.v063.i07>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-lgarch
  (package
    (name "r-lgarch")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lgarch" version))
       (sha256
        (base32 "1j1ph2vs31jsj2rr9rza97f086ca5mgynf30lrkbl05nx46m0lmj"))))
    (properties `((upstream-name . "lgarch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo))
    (home-page "https://www.sucarrat.net/")
    (synopsis "Simulation and Estimation of Log-GARCH Models")
    (description
     "Simulation and estimation of univariate and multivariate log-GARCH models.  The
main functions of the package are: @code{lgarchSim()}, @code{mlgarchSim()},
@code{lgarch()} and @code{mlgarch()}.  The first two functions simulate from a
univariate and a multivariate log-GARCH model, respectively, whereas the latter
two estimate a univariate and multivariate log-GARCH model, respectively.")
    (license license:gpl2)))

(define-public r-lg
  (package
    (name "r-lg")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lg" version))
       (sha256
        (base32 "1srlklq6hkb4yd3lbbazswj866i3wzk2524hhj1v45yr7d5qhxv0"))))
    (properties `((upstream-name . "lg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tseries
                             r-np
                             r-mvtnorm
                             r-logspline
                             r-localgauss
                             r-ks
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=lg")
    (synopsis "Locally Gaussian Distributions: Estimation and Methods")
    (description
     "An implementation of locally Gaussian distributions.  It provides methods for
implementing locally Gaussian multivariate density estimation, conditional
density estimation, various independence tests for iid and time series data, a
test for conditional independence and a test for financial contagion.")
    (license license:gpl3)))

(define-public r-lfstat
  (package
    (name "r-lfstat")
    (version "0.9.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfstat" version))
       (sha256
        (base32 "0hl5b78llydcphbrg04fi5b4v7p6xxwlcwpl70m2537gra52wvdr"))))
    (properties `((upstream-name . "lfstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-xts
                             r-scales
                             r-plyr
                             r-lmomrfa
                             r-lmom
                             r-latticeextra
                             r-lattice
                             r-dygraphs))
    (home-page "https://cran.r-project.org/package=lfstat")
    (synopsis "Calculation of Low Flow Statistics for Daily Stream Flow Data")
    (description
     "The \"Manual on Low-flow Estimation and Prediction\" (Gustard & Demuth (2009,
ISBN:978-92-63-11029-9)), published by the World Meteorological Organisation,
gives a comprehensive summary on how to analyse stream flow data focusing on
low-flows.  This packages provides functions to compute the described statistics
and produces plots similar to the ones in the manual.")
    (license license:gpl2+)))

(define-public r-lfproqc
  (package
    (name "r-lfproqc")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfproQC" version))
       (sha256
        (base32 "0zlzbhs8a50m10hsn93nbmip8qg98xls5dwa54h1dzpvsx5sz8rk"))))
    (properties `((upstream-name . "lfproQC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vsn
                             r-vim
                             r-tidyselect
                             r-tidyr
                             r-reshape2
                             r-reshape
                             r-plotly
                             r-pcamethods
                             r-matrixstats
                             r-mass
                             r-magrittr
                             r-limma
                             r-laeken
                             r-hmisc
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kabilansbio/lfproQC")
    (synopsis "Quality Control for Label-Free Proteomics Expression Data")
    (description
     "Label-free bottom-up proteomics expression data is often affected by data
heterogeneity and missing values.  Normalization and missing value imputation
are commonly used techniques to address these issues and make the dataset
suitable for further downstream analysis.  This package provides an optimal
combination of normalization and imputation methods for the dataset.  The
package utilizes three normalization methods and three imputation methods.The
statistical evaluation measures named pooled co-efficient of variance, pooled
estimate of variance and pooled median absolute deviation are used for selecting
the best combination of normalization and imputation method for the given
dataset.  The user can also visualize the results by using various plots
available in this package.  The user can also perform the differential
expression analysis between two sample groups with the function included in this
package.  The chosen three normalization methods, three imputation methods and
three evaluation measures were chosen for this study based on the research
papers published by	VÃ¤likangas et al. (2016) <doi:10.1093/bib/bbw095>, Jin et
al. (2021) <doi:10.1038/s41598-021-81279-4> and Srivastava et al. (2023)
<doi:10.2174/1574893618666230223150253>.This work has published by Sakthivel et
al. (2025) <doi:10.1021/acs.jproteome.4c00552>.")
    (license license:gpl3)))

(define-public r-lfmm
  (package
    (name "r-lfmm")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfmm" version))
       (sha256
        (base32 "1v2sb2qghwcln3b5rpzhakg562izlzyxzvz49nz74y0rh2gx7g9i"))))
    (properties `((upstream-name . "lfmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rspectra
                             r-rmarkdown
                             r-readr
                             r-rcppeigen
                             r-rcpp
                             r-purrr
                             r-mass
                             r-knitr
                             r-ggplot2
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lfmm")
    (synopsis "Latent Factor Mixed Models")
    (description
     "Fast and accurate inference of gene-environment associations (GEA) in
genome-wide studies (Caye et al., 2019, <doi:10.1093/molbev/msz008>).  We
developed a least-squares estimation approach for confounder and effect sizes
estimation that provides a unique framework for several categories of genomic
data, not restricted to genotypes.  The speed of the new algorithm is several
times faster than the existing GEA approaches, then our previous version of the
LFMM program present in the LEA package (Frichot and Francois, 2015,
<doi:10.1111/2041-210X.12382>).")
    (license license:gpl3)))

(define-public r-lfm
  (package
    (name "r-lfm")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LFM" version))
       (sha256
        (base32 "0i5f8hbdf4dlagj5jsszyqpscb0jbz2pa699ggy50v4l6vlvkhjf"))))
    (properties `((upstream-name . "LFM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sopc
                             r-relliptical
                             r-matrixcalc
                             r-mass
                             r-laplacesdemon
                             r-farmtest))
    (home-page "https://cran.r-project.org/package=LFM")
    (synopsis "Laplace Factor Model Analysis and Evaluation")
    (description
     "Enables the generation of Laplace factor models across diverse Laplace
distributions and facilitates the application of Sparse Online Principal
Component (SOPC), Incremental Principal Component (IPC), Perturbation Principal
Component (PPC), Stochastic Approximation Principal Component (SAPC), Sparse
Principal Component (SPC) and other PC methods and Farm Test methods to these
models.  Evaluates the efficacy of these methods within the context of Laplace
factor models by scrutinizing parameter estimation accuracy, mean square error,
and the degree of sparsity.")
    (license license:expat)))

(define-public r-lfl
  (package
    (name "r-lfl")
    (version "2.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfl" version))
       (sha256
        (base32 "01pdbxx7dr0r6sadlkx25h1r5i6pmsv0r1sxd49w1k39cmbvn4sv"))))
    (properties `((upstream-name . "lfl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tseries
                             r-tibble
                             r-rcpp
                             r-plyr
                             r-forecast
                             r-foreach
                             r-e1071))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=lfl")
    (synopsis "Linguistic Fuzzy Logic")
    (description
     "Various algorithms related to linguistic fuzzy logic: mining for linguistic
fuzzy association rules, composition of fuzzy relations, performing
perception-based logical deduction (@code{PbLD}), and forecasting time-series
using fuzzy rule-based ensemble (FRBE).  The package also contains basic
fuzzy-related algebraic functions capable of handling missing values in
different styles (Bochvar, Sobocinski, Kleene etc.), computation of Sugeno
integrals and fuzzy transform.")
    (license license:gpl3)))

(define-public r-lfe
  (package
    (name "r-lfe")
    (version "3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfe" version))
       (sha256
        (base32 "14barjzf87xrw9lpahi6ryw9qizvwggjisp9cd8kkapy0bxvy1y0"))))
    (properties `((upstream-name . "lfe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable r-sandwich r-matrix r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-econometrics/lfe")
    (synopsis "Linear Group Fixed Effects")
    (description
     "Transforms away factors with many levels prior to doing an OLS. Useful for
estimating linear models with multiple group fixed effects, and for estimating
linear models which uses factors with many levels as pure control variables.
See Gaure (2013) <doi:10.1016/j.csda.2013.03.024> Includes support for
instrumental variables, conditional F statistics for weak instruments, robust
and multi-way clustered standard errors, as well as limited mobility bias
correction (Gaure 2014 <doi:10.1002/sta4.68>).  Since version 3.0, it provides
dedicated functions to estimate Poisson models.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-lfdrempiricalbayes
  (package
    (name "r-lfdrempiricalbayes")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LFDREmpiricalBayes" version))
       (sha256
        (base32 "1imw3djmbpdyplv9dmdzzirp9imk88j0kcxcyfh8yr9ywgd77x6b"))))
    (properties `((upstream-name . "LFDREmpiricalBayes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-matrixstats))
    (home-page "https://davidbickel.com")
    (synopsis
     "Estimating Local False Discovery Rates Using Empirical Bayes Methods")
    (description
     "New empirical Bayes methods aiming at analyzing the association of single
nucleotide polymorphisms (SNPs) to some particular disease are implemented in
this package.  The package uses local false discovery rate (LFDR) estimates of
SNPs within a sample population defined as a \"reference class\" and discovers if
SNPs are associated with the corresponding disease.  Although SNPs are used
throughout this document, other biological data such as protein data and other
gene data can be used.  Karimnezhad, Ali and Bickel, D. R. (2016)
<http://hdl.handle.net/10393/34889>.")
    (license license:gpl3)))

(define-public r-lfdr-mme
  (package
    (name "r-lfdr-mme")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LFDR.MME" version))
       (sha256
        (base32 "1ln0s3ki37cz1a7r96xn0zqw42im7fcanmz2vjk5zycshb423y22"))))
    (properties `((upstream-name . "LFDR.MME")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LFDR.MME")
    (synopsis
     "Estimating Local False Discovery Rates Using the Method of Moments")
    (description
     "Estimation of the local false discovery rate using the method of moments.")
    (license license:gpl3)))

(define-public r-lfdr-mle
  (package
    (name "r-lfdr-mle")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LFDR.MLE" version))
       (sha256
        (base32 "0ykcd24w71zxb53nch041g7xh83gmg1ia3sysdpn0yzkhm0w7cdl"))))
    (properties `((upstream-name . "LFDR.MLE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.cran.r-project.org")
    (synopsis
     "Estimation of the Local False Discovery Rates by Type II Maximum Likelihood Estimation")
    (description
     "Suite of R functions for the estimation of the local false discovery rate (LFDR)
using Type II maximum likelihood estimation (MLE).")
    (license license:gpl3)))

(define-public r-lfda
  (package
    (name "r-lfda")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfda" version))
       (sha256
        (base32 "0sk409jx4chs2wzhpfw7rlg9pwpdqg32ncfl3w243ypq73jq0qv3"))))
    (properties `((upstream-name . "lfda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rarpack r-plyr))
    (home-page "https://github.com/terrytangyuan/lfda")
    (synopsis "Local Fisher Discriminant Analysis")
    (description
     "This package provides functions for performing and visualizing Local Fisher
Discriminant Analysis(LFDA), Kernel Fisher Discriminant Analysis(KLFDA), and
Semi-supervised Local Fisher Discriminant Analysis(SELF).")
    (license license:expat)))

(define-public r-lfapp
  (package
    (name "r-lfapp")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LFApp" version))
       (sha256
        (base32 "1gdapv0nxwxpg1sfc759lh9x8d4whp7h3102xb95sxi3h9xjaqin"))))
    (properties `((upstream-name . "LFApp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinythemes
                             r-shinymobile
                             r-shinyjs
                             r-shinyfiles
                             r-shiny
                             r-mgcv
                             r-ggplot2
                             r-fs
                             r-ebimage
                             r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fpaskali/LFApp")
    (synopsis "Shiny Apps for Lateral Flow Assays")
    (description
     "Shiny apps for the quantitative analysis of images from lateral flow assays
(LFAs).  The images are segmented and background corrected and color intensities
are extracted.  The apps can be used to import and export intensity data and to
calibrate LFAs by means of linear, loess, or gam models.  The calibration models
can further be saved and applied to intensity data from new images for
determining concentrations.")
    (license license:lgpl3)))

(define-public r-lfactors
  (package
    (name "r-lfactors")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lfactors" version))
       (sha256
        (base32 "1r8qlwj3zsm233jfx9ag0q5g1knvjmbwl3785pwcd12zi6f68dcc"))))
    (properties `((upstream-name . "lfactors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lfactors")
    (synopsis "Factors with Levels")
    (description
     "This package provides an extension to factors called lfactor that are similar to
factors but allows users to refer to lfactor levels by either the level or the
label.")
    (license license:gpl2)))

(define-public r-lexrankr
  (package
    (name "r-lexrankr")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lexRankr" version))
       (sha256
        (base32 "0vb4m4g88k05yhjla1gwp8ck08356r9dzwal6cq7lb6xm6pl5gvi"))))
    (properties `((upstream-name . "lexRankr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-snowballc r-rcpp r-igraph))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/AdamSpannbauer/lexRankr/")
    (synopsis "Extractive Summarization of Text with the LexRank Algorithm")
    (description
     "An R implementation of the @code{LexRank} algorithm described by G. Erkan and D.
R. Radev (2004) <DOI:10.1613/jair.1523>.")
    (license license:expat)))

(define-public r-lexisplotr
  (package
    (name "r-lexisplotr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LexisPlotR" version))
       (sha256
        (base32 "0vlm8wcaj3755cbxrfb7ybla9znd2cbklw2xwyyn6r9i4c9xsfih"))))
    (properties `((upstream-name . "LexisPlotR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-ggplot2 r-dplyr))
    (home-page "https://github.com/ottlngr/LexisPlotR")
    (synopsis "Plot Lexis Diagrams for Demographic Purposes")
    (description
     "Plots empty Lexis grids, adds lifelines and highlights certain areas of the
grid, like cohorts and age groups.")
    (license license:gpl2)))

(define-public r-lexisnexistools
  (package
    (name "r-lexisnexistools")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LexisNexisTools" version))
       (sha256
        (base32 "070swhryb37g73s2gawi6i60zdifkkwrz1zss2irp6cvawip7kxj"))))
    (properties `((upstream-name . "LexisNexisTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-stringdist
                             r-quanteda-textstats
                             r-quanteda
                             r-pbapply
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JBGruber/LexisNexisTools")
    (synopsis "Working with Files from 'LexisNexis'")
    (description
     "My @code{PhD} supervisor once told me that everyone doing newspaper analysis
starts by writing code to read in files from the @code{LexisNexis} newspaper
archive (retrieved e.g., from <https://www.lexisnexis.com/> or any of the
partner sites).  However, while this is a nice exercise I do recommend, not
everyone has the time.  This package takes files downloaded from the newspaper
archive of @code{LexisNexis}', reads them into R and offers functions for
further processing.")
    (license license:gpl3)))

(define-public r-lexiconpt
  (package
    (name "r-lexiconpt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lexiconPT" version))
       (sha256
        (base32 "0w53gnr29nzc1ib54rnxdycs0c5f7vpv586qmvxxzy4ar16kisaq"))))
    (properties `((upstream-name . "lexiconPT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lexiconPT")
    (synopsis "Lexicons for Portuguese Text Analysis")
    (description
     "This package provides easy access for sentiment lexicons for those who want to
do text analysis in Portuguese texts.  As of now, two Portuguese lexicons are
available: @code{SentiLex-PT02} and @code{OpLexicon} (v2.1 and v3.0).")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-lexfindr
  (package
    (name "r-lexfindr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LexFindR" version))
       (sha256
        (base32 "15pvlvgzx05sj69f3g485cabb476a24iaqv4wcwkai95ln5wk2i5"))))
    (properties `((upstream-name . "LexFindR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/maglab-uconn/LexFindR")
    (synopsis "Find Related Items and Lexical Dimensions in a Lexicon")
    (description
     "This package implements code to identify lexical competitors in a given list of
words.  We include many of the standard competitor types used in spoken word
recognition research, such as functions to find cohorts, neighbors, and rhymes,
amongst many others.  The package includes documentation for using a variety of
lexicon files, including those with form codes made up of multiple letters
(i.e., phoneme codes) and also basic orthographies.  Importantly, the code makes
use of multiple CPU cores and vectorization when possible, making it extremely
fast and able to handle large lexicons.  Additionally, the package contains
documentation for users to easily write new functions, allowing researchers to
examine other relationships within a lexicon.  Preprint:
<https://osf.io/preprints/psyarxiv/8dyru/>.  Open access:
<doi:10.3758/s13428-021-01667-6>.  Citation: Li, Z., Crinnion, A.M. & Magnuson,
J.S. (2021). <doi:10.3758/s13428-021-01667-6>.")
    (license license:gpl3+)))

(define-public r-levitate
  (package
    (name "r-levitate")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "levitate" version))
       (sha256
        (base32 "1mrpgq5505qs31vw2wif1cz4iqbqnj6mvfk60i5sg6p9nnn328wr"))))
    (properties `((upstream-name . "levitate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringdist r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lewinfox/levitate/")
    (synopsis "Fuzzy String Comparison")
    (description
     "This package provides string similarity calculations inspired by the Python
thefuzz package.  Compare strings by edit distance, similarity ratio, best
matching substring, ordered token matching and set-based token matching.  A
range of edit distance measures are available thanks to the stringdist package.")
    (license license:gpl3)))

(define-public r-lettervalue
  (package
    (name "r-lettervalue")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lettervalue" version))
       (sha256
        (base32 "1jqzh718xzhjb88nzxzjx2y501g1srs26xqah1byksz2aj4sn3g5"))))
    (properties `((upstream-name . "lettervalue")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-purrr r-glue))
    (home-page "https://cran.r-project.org/package=lettervalue")
    (synopsis "Computing Letter Values")
    (description
     "Letter Values for the course Exploratory Data Analysis at Federal University of
Bahia (Brazil).  The approach implemented in the package is presented in the
textbook of Tukey (1977) <ISBN: 978-0201076165>.")
    (license license:expat)))

(define-public r-letsr
  (package
    (name "r-letsr")
    (version "5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "letsR" version))
       (sha256
        (base32 "1snhs3m2jzb5mzkn4a3lhgfzmy385aii73aasxbayscfa10m23vb"))))
    (properties `((upstream-name . "letsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-sf r-geosphere))
    (native-inputs (list r-knitr))
    (home-page
     "https://besjournals.onlinelibrary.wiley.com/doi/full/10.1111/2041-210X.12401")
    (synopsis "Data Handling and Analysis in Macroecology")
    (description
     "Handling, processing, and analyzing geographic data on species distributions and
environmental variables.  Read Vilela & Villalobos (2015)
<doi:10.1111/2041-210X.12401> for details.")
    (license license:gpl2)))

(define-public r-letsherp
  (package
    (name "r-letsherp")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "letsHerp" version))
       (sha256
        (base32 "001h53kixzx3vjiwn6ffm2ji40la3sf6kl1639ypgzfmk2bys6h5"))))
    (properties `((upstream-name . "letsHerp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-rvest
                             r-pbmcapply
                             r-pbapply
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/joao-svalencar/letsHerp")
    (synopsis "An Interface to the Reptile Database")
    (description
     "This package provides tools to retrieve and summarize taxonomic information and
synonymy data for reptile species using data scraped from The Reptile Database
website (<https://reptile-database.reptarium.cz/>).  Outputs include clean and
structured data frames useful for ecological, evolutionary, and conservation
research.")
    (license license:expat)))

(define-public r-lestat
  (package
    (name "r-lestat")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lestat" version))
       (sha256
        (base32 "1skxymdf3ncmdbskh7711xxgwsmwxfxnl52gcgw06jscx6s6wrsd"))))
    (properties `((upstream-name . "lestat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=lestat")
    (synopsis "Package for Learning Statistics")
    (description
     "Some simple objects and functions to do statistics using linear models and a
Bayesian framework.")
    (license license:gpl2)))

(define-public r-lest
  (package
    (name "r-lest")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lest" version))
       (sha256
        (base32 "1d69kvdl31crv4ik8bwylq3s3f4skzrjc4x49c79w443g64n2jp9"))))
    (properties `((upstream-name . "lest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lest")
    (synopsis
     "Vectorised Nested if-else Statements Similar to CASE WHEN in 'SQL'")
    (description
     "This package provides functions for vectorised conditional recoding of
variables. @code{case_when()} enables you to vectorise multiple if and else
statements (like CASE WHEN in SQL'). @code{if_else()} is a stricter and more
predictable version of @code{ifelse()} in base that preserves attributes.  These
functions are forked from dplyr with all package dependencies removed and behave
identically to the originals.")
    (license license:expat)))

(define-public r-lesssem
  (package
    (name "r-lesssem")
    (version "1.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lessSEM" version))
       (sha256
        (base32 "10wh8rx3rbr3gprmd5x633k68hxc1afqm6m5l3cinib4acdp0r22"))))
    (properties `((upstream-name . "lessSEM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-rcppparallel
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-mvtnorm
                             r-lavaan
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhorzek/lessSEM")
    (synopsis "Non-Smooth Regularization for Structural Equation Models")
    (description
     "This package provides regularized structural equation modeling (regularized SEM)
with non-smooth penalty functions (e.g., lasso) building on lavaan'.  The
package is heavily inspired by the
['regsem'](<https://github.com/Rjacobucci/regsem>) and
['lslx'](<https://github.com/psyphh/lslx>) packages.")
    (license license:gpl2+)))

(define-public r-lessr
  (package
    (name "r-lessr")
    (version "4.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lessR" version))
       (sha256
        (base32 "1is297rg8sjj4jfhrhk5ad3rsi1lmjlz0w2ca7ygmbxdkmizwq46"))))
    (properties `((upstream-name . "lessR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-xts
                             r-shiny
                             r-robustbase
                             r-openxlsx
                             r-mass
                             r-leaps
                             r-latticeextra
                             r-lattice
                             r-knitr
                             r-kableextra
                             r-ellipse
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lessR")
    (synopsis "Less Code, More Results")
    (description
     "Each function replaces multiple standard R functions.  For example, two function
calls, @code{Read()} and @code{CountAll()}, generate summary statistics for all
variables in the data frame, plus histograms and bar charts as appropriate.
Other functions provide for summary statistics via pivot tables, a comprehensive
regression analysis, ANOVA and t-test, visualizations including the
Violin/Box/Scatter plot for a numerical variable, bar chart, histogram, box
plot, density curves, calibrated power curve, reading multiple data formats with
the same function call, variable labels, time series with aggregation and
forecasting, color themes, and Trellis (facet) graphics.  Also includes a
confirmatory factor analysis of multiple indicator measurement models,
pedagogical routines for data simulation such as for the Central Limit Theorem,
generation and rendering of regression instructions for interpretative output,
and interactive visualizations.")
    (license license:gpl2+)))

(define-public r-less
  (package
    (name "r-less")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "less" version))
       (sha256
        (base32 "1pgixa04rjngfg0yhxyg4qhd6g0pj8zyb3q8mfa3fjxzpywdy70a"))))
    (properties `((upstream-name . "less")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wordspace
                             r-rpart
                             r-rann
                             r-randomforest
                             r-r6
                             r-pracma
                             r-mlmetrics
                             r-fnn
                             r-e1071
                             r-caret))
    (home-page "https://cran.r-project.org/package=less")
    (synopsis "Learning with Subset Stacking")
    (description
     "\"Learning with Subset Stacking\" is a supervised learning algorithm that is based
on training many local estimators on subsets of a given dataset, and then
passing their predictions to a global estimator.  You can find the details about
LESS in our manuscript at <@code{arXiv:2112.06251>}.")
    (license license:expat)))

(define-public r-lero-lero
  (package
    (name "r-lero-lero")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lero.lero" version))
       (sha256
        (base32 "03ll7jzcay0swwpmxyf0y9k2h8mxx4p5v3ggm9dgdz4j99934l70"))))
    (properties `((upstream-name . "lero.lero")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lero.lero")
    (synopsis "Generate 'Lero Lero' Quotes")
    (description
     "Generates quotes from Lero Lero', a database for meaningless sentences filled
with corporate buzzwords, intended to be used as corporate lorem ipsum (see
<http://www.lerolero.com/> for more information).  Unfortunately, quotes are
currently portuguese-only.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-leptokurticmixture
  (package
    (name "r-leptokurticmixture")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leptokurticMixture" version))
       (sha256
        (base32 "0k107im942mi6kkd8sx7qj6h8hfa3gv3bnjz5jl34a98kj91hk49"))))
    (properties `((upstream-name . "leptokurticMixture")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=leptokurticMixture")
    (synopsis
     "Implements Parsimonious Finite Mixtures of Multivariate Elliptical Leptokurtic-Normals")
    (description
     "This package provides a way to fit Parsimonious Finite Mixtures of Multivariate
Elliptical Leptokurtic-Normals.  Two methods of estimation are implemented.")
    (license license:gpl2+)))

(define-public r-leprechaun
  (package
    (name "r-leprechaun")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leprechaun" version))
       (sha256
        (base32 "1y30s519502bqabzsf1njf3zzqlbmr4sbmsm57ci1r6dv4miijkh"))))
    (properties `((upstream-name . "leprechaun")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usethis r-roxygen2 r-jsonlite r-fs r-cli))
    (home-page "https://cran.r-project.org/package=leprechaun")
    (synopsis "Create Simple 'Shiny' Applications as Packages")
    (description
     "Code generator for robust dependency-free Shiny applications in the form of
packages.  It includes numerous convenience functions to create modules, include
utility functions to create common Bootstrap elements, setup a project from the
ground-up, and much more.")
    (license license:gpl2+)))

(define-public r-lepidochroma
  (package
    (name "r-lepidochroma")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lepidochroma" version))
       (sha256
        (base32 "1jsvz0ji4lh5jxg7vsdq32dmwr0188i7qz3ln7ixsn6462ybsm93"))))
    (properties `((upstream-name . "lepidochroma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lepidochroma")
    (synopsis "Colour Palettes Inspired by Butterflies")
    (description
     "This package provides a collection of colour palettes inspired by some of our
dearest butterfly species.  This package provides continuous and categorical
palettes, including some colour blind friendly options.")
    (license license:gpl3+)))

(define-public r-leontief
  (package
    (name "r-leontief")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leontief" version))
       (sha256
        (base32 "0ms50fqnbfvwj5a2a0s647nyzpcbxyzf61f3rcp9h1qf1wil860b"))))
    (properties `((upstream-name . "leontief")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pachadotdev/leontief")
    (synopsis "Input-Output Analysis")
    (description
     "An implementation of the Input-Output model developed by Wassily Leontief that
represents the interdependencies between different sectors of a national economy
or different regional economies.")
    (license license:expat)))

(define-public r-lenses
  (package
    (name "r-lenses")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lenses" version))
       (sha256
        (base32 "08akwzlc5gk2rxbh9xp67n5ahdcld60932ascczjv0accrkxizhk"))))
    (properties `((upstream-name . "lenses")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect r-rlang r-magrittr))
    (home-page "http://cfhammill.github.io/lenses")
    (synopsis "Elegant Data Manipulation with Lenses")
    (description
     "This package provides tools for creating and using lenses to simplify data
manipulation.  Lenses are composable getter/setter pairs for working with data
in a purely functional way.  Inspired by the Haskell library lens (Kmett, 2012)
<https://hackage.haskell.org/package/lens>.  For a fairly comprehensive (and
highly technical) history of lenses please see the lens wiki
<https://github.com/ekmett/lens/wiki/History-of-Lenses>.")
    (license license:expat)))

(define-public r-lenght
  (package
    (name "r-lenght")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lenght" version))
       (sha256
        (base32 "0w7r5rizif2g6dg5ldcdnd0lj1s6v2z46w9j9g0zdlidx83a8vdn"))))
    (properties `((upstream-name . "lenght")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lenght")
    (synopsis "Allow Misspellings of Length Function")
    (description
     "Convenient aliases for common ways of misspelling the base R function
@code{length()}.  These include every permutation of the final three letters.")
    (license license:expat)))

(define-public r-lemna
  (package
    (name "r-lemna")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lemna" version))
       (sha256
        (base32 "07bdxfd1zlw8id4fhib8hqpmlhyl9c4adva5acd907dqhznlbh0w"))))
    (properties `((upstream-name . "lemna")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gridextra r-ggplot2 r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nkehrein/lemna")
    (synopsis "Lemna Ecotox Effect Model")
    (description
     "The reference implementation of model equations and default parameters for the
toxicokinetic-toxicodynamic (TKTD) model of the Lemna (duckweed) aquatic plant.
Lemna is a standard test macrophyte used in ecotox effect studies.  The model
was described and published by the SETAC Europe Interest Group Effect Modeling.
It is a refined description of the Lemna TKTD model published by Schmitt et al.
(2013) <doi:10.1016/j.ecolmodel.2013.01.017>.")
    (license license:expat)))

(define-public r-lemarns
  (package
    (name "r-lemarns")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LeMaRns" version))
       (sha256
        (base32 "0k7mpl2dgy2qvs068mzgfagvlk116p80cxj4dfzjkrr8wzrmwyni"))))
    (properties `((upstream-name . "LeMaRns")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LeMaRns")
    (synopsis "Length-Based Multispecies Analysis by Numerical Simulation")
    (description
     "Set up, run and explore the outputs of the Length-based Multi-species model
(@code{LeMans}; Hall et al.  2006 <doi:10.1139/f06-039>), focused on the marine
environment.")
    (license license:gpl3)))

(define-public r-leiv
  (package
    (name "r-leiv")
    (version "2.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leiv" version))
       (sha256
        (base32 "15ay50886xx9k298npyksfpva8pck7fhqa40h9n3d7fzvqm5h1jp"))))
    (properties `((upstream-name . "leiv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.r-project.org")
    (synopsis "Bivariate Linear Errors-In-Variables Estimation")
    (description
     "Estimate the slope and intercept of a bivariate linear relationship by
calculating a posterior density that is invariant to interchange and scaling of
the coordinates.")
    (license license:gpl2+)))

(define-public r-lehuynh
  (package
    (name "r-lehuynh")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lehuynh" version))
       (sha256
        (base32 "1959f73184l8npcvcrqxnnmw5xzc3f99mj8jsaq3ldaqfqhkrrpp"))))
    (properties `((upstream-name . "lehuynh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usethis
                             r-tibble
                             r-stringr
                             r-rio
                             r-readxl
                             r-purrr
                             r-magrittr
                             r-ggpubr
                             r-ggplot2
                             r-fs
                             r-dplyr
                             r-brms))
    (home-page "https://github.com/le-huynh/lehuynh")
    (synopsis "Le-Huynh Truc-Ly's R Code and Templates")
    (description
     "Miscellaneous R functions (for graphics, data import, data transformation, and
general utilities) and templates (for exploratory analysis, Bayesian modeling,
and crafting scientific manuscripts).")
    (license license:expat)))

(define-public r-lehdr
  (package
    (name "r-lehdr")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lehdr" version))
       (sha256
        (base32 "16d5kmzn59ykdgbjrf3h1psxawwbzxdijzfc21j4kmh2z3ldc4xh"))))
    (properties `((upstream-name . "lehdr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-readr
                             r-magrittr
                             r-httr2
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jamgreen/lehdr/")
    (synopsis
     "Grab Longitudinal Employer-Household Dynamics (LEHD) Flat Files")
    (description
     "Designed to query Longitudinal Employer-Household Dynamics (LEHD)
workplace/residential association and origin-destination flat files and
optionally aggregate Census block-level data to block group, tract, county, or
state.  Data comes from the LODES FTP server
<https://lehd.ces.census.gov/data/lodes/LODES8/>.")
    (license license:expat)))

(define-public r-legocolors
  (package
    (name "r-legocolors")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "legocolors" version))
       (sha256
        (base32 "12ak1dfssqdzn0j9ag35kl26qqvzd84b78s640gxsn057viw1q1f"))))
    (properties `((upstream-name . "legocolors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/leonawicz/legocolors")
    (synopsis "Official Lego Color Palettes")
    (description
     "This package provides a dataset containing several color naming conventions
established by multiple sources, along with associated color metadata.  The
package also provides related helper functions for mapping among the different
Lego color naming conventions and between Lego colors, hex colors, and R color
names, making it easy to convert any color palette to one based on existing Lego
colors while keeping as close to the original color palette as possible.  The
functions use nearest color matching based on Euclidean distance in RGB space.
Naming conventions for color mapping include those from @code{BrickLink}
(<https://www.bricklink.com>), The Lego Group (<https://www.lego.com>), LDraw
(<https://www.ldraw.org/>), and Peeron (<http://www.peeron.com/>).")
    (license license:expat)))

(define-public r-legit
  (package
    (name "r-legit")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LEGIT" version))
       (sha256
        (base32 "0rwcbckkpmm849yl4rrk97ai31wb89sizbp7974rrfrjb707xl4i"))))
    (properties `((upstream-name . "LEGIT")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snow
                             r-rcolorbrewer
                             r-proc
                             r-lme4
                             r-iterators
                             r-hmisc
                             r-glmnet
                             r-formula-tools
                             r-foreach
                             r-dosnow
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LEGIT")
    (synopsis "Latent Environmental & Genetic InTeraction (LEGIT) Model")
    (description
     "Constructs genotype x environment interaction (@code{GxE}) models where G is a
weighted sum of genetic variants (genetic score) and E is a weighted sum of
environments (environmental score) using the alternating optimization algorithm
by Jolicoeur-Martineau et al. (2017) <@code{arXiv:1703.08111>}.  This approach
has greatly enhanced predictive power over traditional @code{GxE} models which
include only a single genetic variant and a single environmental exposure.
Although this approach was originally made for @code{GxE} modelling, it is
flexible and does not require the use of genetic and environmental variables.
It can also handle more than 2 latent variables (rather than just G and E) and
3-way interactions or more.  The LEGIT model produces highly interpretable
results and is very parameter-efficient thus it can even be used with small
sample sizes (n < 250).  Tools to determine the type of interaction (vantage
sensitivity, diathesis-stress or differential susceptibility), with any number
of genetic variants or environments, are available <@code{arXiv:1712.04058>}.
The software can now produce mixed-effects LEGIT models through the lme4
package.")
    (license license:gpl3)))

(define-public r-legislator
  (package
    (name "r-legislator")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "legislatoR" version))
       (sha256
        (base32 "12ij2xqasc4j7gx79wzbdg3wvg8dn9azj0qj61s4c6ficyr0x0bv"))))
    (properties `((upstream-name . "legislatoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/saschagobel/legislatoR")
    (synopsis "Interface to the Comparative Legislators Database")
    (description
     "Facilitates access to the Comparative Legislators Database (CLD).  The CLD
includes political, sociodemographic, career, online presence, public attention,
and visual information for over 67,000 contemporary and historical politicians
from 16 countries.")
    (license license:gpl3)))

(define-public r-legion
  (package
    (name "r-legion")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "legion" version))
       (sha256
        (base32 "0axp8zhj18rgbwc9x9dyhh1d05fi34mm27yzd3jh1myhsf0p6llv"))))
    (properties `((upstream-name . "legion")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-smooth
                             r-rcpparmadillo
                             r-rcpp
                             r-nloptr
                             r-matrix
                             r-greybox
                             r-generics))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/config-i1/legion")
    (synopsis "Forecasting Using Multivariate Models")
    (description
     "This package provides functions implementing multivariate state space models for
purposes of time series analysis and forecasting.  The focus of the package is
on multivariate models, such as Vector Exponential Smoothing, Vector ETS
(Error-Trend-Seasonal model) etc.  It currently includes Vector Exponential
Smoothing (VES, de Silva et al., 2010, <doi:10.1177/1471082X0901000401>), Vector
ETS (Svetunkov et al., 2023, <doi:10.1016/j.ejor.2022.04.040>) and simulation
function for VES.")
    (license license:lgpl2.1)))

(define-public r-legendry
  (package
    (name "r-legendry")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "legendry" version))
       (sha256
        (base32 "0mcfqvs2fb3g4q062w9rpb8h751n7g6r73xq05hg7cfn0x83s3ax"))))
    (properties `((upstream-name . "legendry")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-scales
                             r-rlang
                             r-lifecycle
                             r-gtable
                             r-ggplot2
                             r-cli))
    (home-page "https://teunbrand.github.io/legendry/")
    (synopsis "Extended Legends and Axes for 'ggplot2'")
    (description
     "This package provides a ggplot2 extension that focusses on expanding the
plotter's arsenal of guides.  Guides in ggplot2 include axes and legends.
legendry offers new axes and annotation options, as well as new legends and
colour displays.")
    (license license:expat)))

(define-public r-lefko3
  (package
    (name "r-lefko3")
    (version "6.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lefko3" version))
       (sha256
        (base32 "1xgls4ixmzwvaffc7fp9aj5aqjb3gs6wqqkvd4xhpifn6qlkmjlq"))))
    (properties `((upstream-name . "lefko3")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-pscl
                             r-mumin
                             r-matrix
                             r-mass
                             r-lme4
                             r-glmmtmb
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dormancy1/lefko3")
    (synopsis
     "Historical and Ahistorical Population Projection Matrix Analysis")
    (description
     "Complete analytical environment for the construction and analysis of matrix
population models and integral projection models.  Includes the ability to
construct historical matrices, which are 2d matrices comprising 3 consecutive
times of demographic information.  Estimates both raw and function-based forms
of historical and standard ahistorical matrices.  It also estimates
function-based age-by-stage matrices and raw and function-based Leslie matrices.")
    (license license:gpl2+)))

(define-public r-leem
  (package
    (name "r-leem")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leem" version))
       (sha256
        (base32 "1n1jiljxfhh25w0lah36zmri16xrkskd2k4afpvdpa4dkni9z1qq"))))
    (properties `((upstream-name . "leem")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tkrplotr r-tkrplot r-manipulate r-diagram
                             r-crayon))
    (home-page "https://bendeivide.github.io/project/leem/")
    (synopsis "Laboratory of Teaching to Statistics and Mathematics")
    (description
     "An educational package for teaching statistics and mathematics in both primary
and higher education.  The objective is to assist in the teaching/learning
process, both for student study planning and teacher teaching strategies.  The
leem package aims to provide, in a simple yet in-depth manner, knowledge of
statistics and mathematics to anyone who wants to study these areas of
knowledge.")
    (license license:gpl2+)))

(define-public r-ledger
  (package
    (name "r-ledger")
    (version "2.0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ledger" version))
       (sha256
        (base32 "0l26s7mnfrn9yi03xdx2i0965p17vif6cks1k9fi6h8lbfdj3id7"))))
    (properties `((upstream-name . "ledger")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list hledger beancount))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-dplyr))
    (home-page "https://github.com/trevorld/r-ledger")
    (synopsis "Utilities for Importing Data from Plain Text Accounting Files")
    (description
     "Utilities for querying plain text accounting files from Ledger', HLedger', and
Beancount'.")
    (license license:expat)))

(define-public r-leastcostpath
  (package
    (name "r-leastcostpath")
    (version "2.0.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leastcostpath" version))
       (sha256
        (base32 "05liw99iqi6nrz8wh272z878wa6cznq5nspm9d2hinc42rg1kjc6"))))
    (properties `((upstream-name . "leastcostpath")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-sf
                             r-matrix
                             r-igraph
                             r-gstat
                             r-foreach
                             r-doparallel))
    (home-page "https://CRAN.R-project.org/package=leastcostpath")
    (synopsis "Modelling Pathways and Movement Potential Within a Landscape")
    (description
     "Calculates cost surfaces based on slope to be used when modelling pathways and
movement potential within a landscape (Lewis, 2021)
<doi:10.1007/s10816-021-09522-w>.")
    (license license:gpl3)))

(define-public r-learnvizlmm
  (package
    (name "r-learnvizlmm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnVizLMM" version))
       (sha256
        (base32 "15yqy96mm1ignzpwsnjpzg3lm37k976254c1wk61089z9wb7l185"))))
    (properties `((upstream-name . "LearnVizLMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rsvg
                             r-dplyr
                             r-diagrammersvg
                             r-diagrammer
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kzavez/LearnVizLMM")
    (synopsis "Learning and Communicating Linear Mixed Models Without Data")
    (description
     "Summarizes characteristics of linear mixed effects models without data or a
fitted model by converting code for fitting @code{lmer()} from lme4 and
@code{lme()} from nlme into tables, equations, and visuals.  Outputs can be used
to learn how to fit linear mixed effects models in R and to communicate about
these models in presentations, manuscripts, and analysis plans.")
    (license license:gpl3+)))

(define-public r-learnsl
  (package
    (name "r-learnsl")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnSL" version))
       (sha256
        (base32 "0iqw9hj5066yj4ij7v1dfdvn0q3y4wjwwznhilgsyvlbr0lj642b"))))
    (properties `((upstream-name . "LearnSL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cli))
    (home-page "https://github.com/ComiSeng/LearnSL")
    (synopsis
     "Learn Supervised Classification Methods Through Examples and Code")
    (description
     "Supervised classification methods, which (if asked) can provide step-by-step
explanations of the algorithms used, as described in PK Josephine et.  al.,
(2021) <doi:10.59176/kjcs.v1i1.1259>; and datasets to test them on, which
highlight the strengths and weaknesses of each technique.")
    (license license:expat)))

(define-public r-learnrbook
  (package
    (name "r-learnrbook")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "learnrbook" version))
       (sha256
        (base32 "0yrh3d75zl4rqc22prw3rnwhzxh1nb9mk1rwdh2rr4sw71nmbvyv"))))
    (properties `((upstream-name . "learnrbook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://docs.r4photobiology.info/learnrbook/")
    (synopsis
              "Datasets and Code Examples from P. J. Aphalo's \"Learn R\" Book")
    (description
     "Data, scripts and code from chunks used as examples in the book \"Learn R: As a
Language\" 1ed and 2ed by Pedro J. Aphalo.  ISBN 9780367182533 (pbk 1ed); ISBN
9780367182557 (hbk 1ed); ISBN 9780429060342 (ebk 1ed).")
    (license license:gpl2+)))

(define-public r-learnpopgen
  (package
    (name "r-learnpopgen")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "learnPopGen" version))
       (sha256
        (base32 "04wxina3n2bspxdp3d4bgqrwyxqxx46pfp8zgzr3rsj89ml8if9l"))))
    (properties `((upstream-name . "learnPopGen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-phytools r-gtools))
    (home-page "http://github.com/liamrevell/learnPopGen")
    (synopsis "Population Genetic Simulations & Numerical Analysis")
    (description
     "Conducts various numerical analyses and simulations in population genetics and
evolutionary theory, primarily for the purpose of teaching (and learning about)
key concepts in population & quantitative genetics, and evolutionary theory.")
    (license license:gpl2+)))

(define-public r-learnpca
  (package
    (name "r-learnpca")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnPCA" version))
       (sha256
        (base32 "0ka46pfsr0971d6n1vpx4mmclp00f643cnz6yvssy3ywm1mbx8hm"))))
    (properties `((upstream-name . "LearnPCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rpart r-nnet r-markdown r-class))
    (native-inputs (list r-knitr))
    (home-page "https://bryanhanson.github.io/LearnPCA/")
    (synopsis
     "Functions, Data Sets and Vignettes to Aid in Learning Principal Components Analysis (PCA)")
    (description
     "Principal component analysis (PCA) is one of the most widely used data analysis
techniques.  This package provides a series of vignettes explaining PCA starting
from basic concepts.  The primary purpose is to serve as a self-study resource
for anyone wishing to understand PCA better.  A few convenience functions are
provided as well.")
    (license license:gpl3)))

(define-public r-learnnonparam
  (package
    (name "r-learnnonparam")
    (version "1.2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnNonparam" version))
       (sha256
        (base32 "1hs9lss2yamlldn65q21nl1h1s3fl4l0dc4k90wnh99wabqpic3c"))))
    (properties `((upstream-name . "LearnNonparam")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-r6))
    (home-page "https://github.com/qddyy/LearnNonparam")
    (synopsis "'R6'-Based Flexible Framework for Permutation Tests")
    (description
     "This package implements non-parametric tests from Higgins (2004,
ISBN:0534387756), including tests for one sample, two samples, k samples, paired
comparisons, blocked designs, trends and association.  Built with Rcpp for
efficiency and R6 for flexible, object-oriented design, the package provides a
unified framework for performing or creating custom permutation tests.")
    (license license:gpl2+)))

(define-public r-learningtower
  (package
    (name "r-learningtower")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "learningtower" version))
       (sha256
        (base32 "1vs115cyzji1ngpv3nyg1xdn84f1nm5hxqc474xrh9pcagy8qhyp"))))
    (properties `((upstream-name . "learningtower")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://kevinwang09.github.io/learningtower/")
    (synopsis "OECD PISA Datasets from 2000-2022 in an Easy-to-Use Format")
    (description
     "The Programme for International Student Assessment (PISA) is a global study
conducted by the Organization for Economic Cooperation and Development (OECD) in
member and non-member countries to assess educational systems by assessing
15-year-old school students academic performance in mathematics, science, and
reading.  This datasets contains information on their scores and other
socioeconomic characteristics, information about their school and its
infrastructure, as well as the countries that are taking part in the program.")
    (license license:expat)))

(define-public r-learningstats
  (package
    (name "r-learningstats")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearningStats" version))
       (sha256
        (base32 "0xrrb6jws4zj2nwnn30g338bib49b7j26v52ym7p2variwllz068"))))
    (properties `((upstream-name . "LearningStats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readxl r-readods r-haven r-data-table))
    (home-page "https://cran.r-project.org/package=LearningStats")
    (synopsis "Elemental Descriptive and Inferential Statistics")
    (description
     "This package provides tools to teach students elemental statistics.  The main
topics covered are descriptive statistics, probability models (discrete and
continuous variables) and statistical inference (confidence intervals and
hypothesis tests).  One of the main advantages of this package is that allows
the user to read quite a variety of types of data files with one unique command.
 Moreover it includes shortcuts to simple but up-to-now not in R descriptive
features such a complete frequency table or an histogram with the optimal number
of intervals.  Related to model distributions (both discrete and continuous),
the package allows the student to easy plot the mass/density function,
distribution function and quantile function just detailing as input arguments
the known population parameters.  The inference related tools are basically
confidence interval and hypothesis testing.  Having defined independent commands
for these two tools makes it easier for the student to understand what the
software is performing, and it also helps the student to have a better knowledge
on which specific tool they need to use in each situation.  Moreover, the
hypothesis testing commands provide not only the numeric result on the screen
but also a very intuitive graph (which includes the statistic distribution, the
observed value of the statistic, the rejection area and the p-value) that is
very useful for the student to visualise the process.  The regression section
includes up to now, a simple linear model, with one single command the student
can obtain the numeric summary as well as the corresponding diagram with the
adjusted regression model and a legend with basic information (formula of the
adjusted model and R-squared).")
    (license license:gpl2)))

(define-public r-learningrlab
  (package
    (name "r-learningrlab")
    (version "2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearningRlab" version))
       (sha256
        (base32 "0wjmdmj9c96fz83nnh9np3xlpbgdq7z0bjp020gidyw0cmfjqddf"))))
    (properties `((upstream-name . "LearningRlab")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magick r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LearningRlab")
    (synopsis "Statistical Learning Functions")
    (description
     "Aids in learning statistical functions incorporating the result of calculus done
with each function and how they are obtained, that is, which equation and
variables are used.  Also for all these equations and their related variables
detailed explanations and interactive exercises are also included.  All these
characteristics allow to the package user to improve the learning of statistics
basics by means of their use.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-learningr
  (package
    (name "r-learningr")
    (version "0.29.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "learningr" version))
       (sha256
        (base32 "0z3rs7y9yd81f14sbk3dwq1ifr4vca2s3kl1gnkqlns3dycgyp08"))))
    (properties `((upstream-name . "learningr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr))
    (home-page "https://cran.r-project.org/package=learningr")
    (synopsis "Data and Functions to Accompany the Book \"Learning R\"")
    (description
     "Crabs in the English channel, deer skulls, English monarchs, half-caste Manga
characters, Jamaican cities, Shakespeare's The Tempest, drugged up cyclists and
sexually transmitted diseases.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-learngeom
  (package
    (name "r-learngeom")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnGeom" version))
       (sha256
        (base32 "1pnxiwjkdj78p4hkl1lqagmd937q63yncb45fcra28sa9v9psrcs"))))
    (properties `((upstream-name . "LearnGeom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LearnGeom")
    (synopsis "Learning Plane Geometry")
    (description
     "This package contains some functions to learn and teach basic plane Geometry at
undergraduate level with the aim of being helpful to young students with little
programming skills.")
    (license license:gpl2)))

(define-public r-learner
  (package
    (name "r-learner")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "learner" version))
       (sha256
        (base32 "0mmwqjb19iz1iw6hrcacmg9njr4vpkjrsvf10wwsg5356gqnmz2a"))))
    (properties `((upstream-name . "learner")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-screenot r-rcppeigen r-rcpp))
    (home-page "https://github.com/stmcg/learner")
    (synopsis "Latent Space-Based Transfer Learning")
    (description
     "This package implements transfer learning methods for low-rank matrix
estimation.  These methods leverage similarity in the latent row and column
spaces between the source and target populations to improve estimation in the
target population.  The methods include the @code{LatEnt} @code{spAce-based}
@code{tRaNsfer} @code{lEaRning} (LEARNER) method and the direct projection
LEARNER (D-LEARNER) method described by @code{McGrath} et al. (2024)
<doi:10.48550/@code{arXiv.2412.20605>}.")
    (license license:gpl3+)))

(define-public r-learnclust
  (package
    (name "r-learnclust")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LearnClust" version))
       (sha256
        (base32 "0r2ns1bnsygc6jhr83v1ylfp8fkn3j76233zk5cwsxrq0grx5iqs"))))
    (properties `((upstream-name . "LearnClust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magick))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LearnClust")
    (synopsis "Learning Hierarchical Clustering Algorithms")
    (description
     "Classical hierarchical clustering algorithms, agglomerative and divisive
clustering.  Algorithms are implemented as a theoretical way, step by step.  It
includes some detailed functions that explain each step.  Every function allows
options to get different results using different techniques.  The package
explains non expert users how hierarchical clustering algorithms work.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-learest
  (package
    (name "r-learest")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LeArEst" version))
       (sha256
        (base32 "0kga9n0ia2zljyw4xa9n572zmxpwql8xd3ys4p9jp02h432pfkpp"))))
    (properties `((upstream-name . "LeArEst")))
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
    (propagated-inputs (list r-opencpu r-jpeg r-foreach r-doparallel
                             r-conicfit))
    (native-inputs (list esbuild))
    (home-page "https://cran.r-project.org/package=LeArEst")
    (synopsis
     "Border and Area Estimation of Data Measured with Additive Error")
    (description
     "This package provides methods for estimating borders of uniform distribution on
the interval (one-dimensional) and on the elliptical domain (two-dimensional)
under measurement errors.  For one-dimensional case, it also estimates the
length of underlying uniform domain and tests the hypothesized length against
two-sided or one-sided alternatives.  For two-dimensional case, it estimates the
area of underlying uniform domain.  It works with numerical inputs as well as
with pictures in JPG format.")
    (license license:gpl2)))

(define-public r-leapp
  (package
    (name "r-leapp")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leapp" version))
       (sha256
        (base32 "0w6pi527s4fig50zlwhqsp6zfdgqyyislm01vvp5rvxg7kskr5xr"))))
    (properties `((upstream-name . "leapp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sva r-mass r-corpcor))
    (home-page "https://cran.r-project.org/package=leapp")
    (synopsis "Latent Effect Adjustment After Primary Projection")
    (description
     "These functions take a gene expression value matrix, a primary covariate vector,
an additional known covariates matrix.  A two stage analysis is applied to
counter the effects of latent variables on the rankings of hypotheses.  The
estimation and adjustment of latent effects are proposed by Sun, Zhang and Owen
(2011). \"leapp\" is developed in the context of microarray experiments, but may
be used as a general tool for high throughput data sets where dependence may be
involved.")
    (license license:gpl2+)))

(define-public r-leapgp
  (package
    (name "r-leapgp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leapgp" version))
       (sha256
        (base32 "1nvi0r2iipiznjwfvdw34bm071z1j15rj600964grgz88qip0018"))))
    (properties `((upstream-name . "leapgp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rann r-lagp r-cluster))
    (home-page "https://cran.r-project.org/package=leapgp")
    (synopsis "Localized Ensemble of Approximate Gaussian Processes")
    (description
     "An emulator designed for rapid sequential emulation (e.g., Markov chain Monte
Carlo applications).  Works via extension of the @code{laGP} approach by Gramacy
and Apley (2015 <doi:10.1080/10618600.2014.914442>).  Details are given in
Rumsey et al. (2023 <doi:10.1002/sta4.576>).")
    (license license:gpl3+)))

(define-public r-leanpubr
  (package
    (name "r-leanpubr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leanpubr" version))
       (sha256
        (base32 "0shx5mg7m38zn46ra6v8bxkg72kkzcfcc7srw2xzs90j2sqz4bqz"))))
    (properties `((upstream-name . "leanpubr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-jsonlite r-httr r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/muschellij2/leanpubr")
    (synopsis "'Leanpub' API Interface")
    (description
     "This package provides access to the Leanpub API <https://leanpub.com/help/api>
for gathering information about publications and submissions to the Leanpub
platform.")
    (license license:gpl3)))

(define-public r-leakyiv
  (package
    (name "r-leakyiv")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leakyIV" version))
       (sha256
        (base32 "1pdxyw9sd78nwy70xlrckdjvdgrhcdjywrnbmilrffpzhb6hgky0"))))
    (properties `((upstream-name . "leakyIV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvnfast
                             r-matrix
                             r-glasso
                             r-foreach
                             r-data-table
                             r-corpcor))
    (home-page "https://github.com/dswatson/leakyIV")
    (synopsis "Leaky Instrumental Variables")
    (description
     "Instrumental variables (IVs) are a popular and powerful tool for estimating
causal effects in the presence of unobserved confounding.  However, classical
methods rely on strong assumptions such as the exclusion criterion, which states
that instrumental effects must be entirely mediated by treatments.  In the
so-called \"leaky\" IV setting, candidate instruments are allowed to have some
direct influence on outcomes, rendering the average treatment effect (ATE)
unidentifiable.  But with limits on the amount of information leakage, we may
still recover sharp bounds on the ATE, providing partial identification.  This
package implements methods for ATE bounding in the leaky IV setting with linear
structural equations.  For details, see Watson et al. (2024)
<doi:10.48550/@code{arXiv.2404.04446>}.")
    (license license:gpl3+)))

(define-public r-leaftime
  (package
    (name "r-leaftime")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaftime" version))
       (sha256
        (base32 "10ij06rq7kmfnzfa629l2kskwj96lh87m00wi9b1aq15b5h7bxls"))))
    (properties `((upstream-name . "leaftime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-leaflet r-htmlwidgets r-htmltools))
    (home-page "https://github.com/timelyportfolio/leaftime")
    (synopsis "'Leaflet-timeline' Plugin for Leaflet")
    (description
     "Use the leaflet-timeline plugin with a leaflet widget to add an interactive
slider with play, pause, and step buttons to explore temporal geographic spatial
data changes.")
    (license license:expat)))

(define-public r-leafsync
  (package
    (name "r-leafsync")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafsync" version))
       (sha256
        (base32 "0p6pb7w5yz2wj33kdh7ixii9f6b8zv018psp6b7ifr7npgdxi3vx"))))
    (properties `((upstream-name . "leafsync")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-leaflet r-htmlwidgets r-htmltools))
    (home-page "https://github.com/r-spatial/leafsync")
    (synopsis "Small Multiples for Leaflet Web Maps")
    (description
     "Create small multiples of several leaflet web maps with (optional) synchronised
panning and zooming control.  When syncing is enabled all maps respond to mouse
actions on one map.  This allows side-by-side comparisons of different
attributes of the same geometries.  Syncing can be adjusted so that any
combination of maps can be synchronised.")
    (license license:expat)))

(define-public r-leafstar
  (package
    (name "r-leafstar")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafSTAR" version))
       (sha256
        (base32 "16zfaj0v6dx6mhy6m126lxa6w0dzfw4acm83jlbrizaz52amhv6a"))))
    (properties `((upstream-name . "leafSTAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=leafSTAR")
    (synopsis "Silhouette to Area Ratio of Tilted Surfaces")
    (description
     "Implementation of trigonometric functions to calculate the exposure of flat,
tilted surfaces, such as leaves and slopes, to direct solar radiation.  It
implements the equations in A.G. Escribano-Rocafort, A. Ventre-Lespiaucq, C.
Granado-Yela, et al. (2014) <doi:10.1111/2041-210X.12141> in a few user-friendly
R functions.  All functions handle data obtained with Ahmes 1.0 for Android, as
well as more traditional data sources (compass, protractor, inclinometer).  The
main function @code{(star()}) calculates the potential exposure of flat, tilted
surfaces to direct solar radiation (silhouette to area ratio, STAR).  It is
equivalent to the ratio of the leaf projected area to total leaf area, but
instead of using area data it uses spatial position angles, such as pitch, roll
and course, and information on the geographical coordinates, hour, and date.
The package includes additional functions to recalculate STAR with custom
settings of location and time, to calculate the tilt angle of a surface, and the
minimum angle between two non-orthogonal planes.")
    (license license:agpl3)))

(define-public r-leafr
  (package
    (name "r-leafr")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafR" version))
       (sha256
        (base32 "02kimgffynf7nx164g1vw30wcv2plr7a5gf27q4x87c9c8b0cb1b"))))
    (properties `((upstream-name . "leafR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp r-raster r-lidr r-data-table))
    (home-page "https://github.com/DRAAlmeida/leafR")
    (synopsis
     "Calculates the Leaf Area Index (LAD) and Other Related Functions")
    (description
     "This package provides a set of functions for analyzing the structure of forests
based on the leaf area density (LAD) and leaf area index (LAI) measures
calculated from Airborne Laser Scanning (ALS), i.e., scanning lidar (Light
Detection and Ranging) data.  The methodology is discussed and described in
Almeida et al. (2019) <doi:10.3390/rs11010092> and Stark et al. (2012)
<doi:10.1111/j.1461-0248.2012.01864.x>.")
    (license license:gpl3)))

(define-public r-leafpop
  (package
    (name "r-leafpop")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafpop" version))
       (sha256
        (base32 "1ccxglglfxbm9rlz1lx0jrp6h38w6gld3rld0cxdjjnvw636hm3f"))))
    (properties `((upstream-name . "leafpop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uuid
                             r-svglite
                             r-sf
                             r-htmlwidgets
                             r-htmltools
                             r-brew
                             r-base64enc))
    (home-page "https://github.com/r-spatial/leafpop")
    (synopsis "Include Tables, Images and Graphs in Leaflet Pop-Ups")
    (description
     "This package creates HTML strings to embed tables, images or graphs in pop-ups
of interactive maps created with packages like leaflet or mapview'.  Handles
local images located on the file system or via remote URL. Handles graphs
created with lattice or ggplot2 as well as interactive plots created with
htmlwidgets'.")
    (license license:expat)))

(define-public r-leafpm
  (package
    (name "r-leafpm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafpm" version))
       (sha256
        (base32 "06d2k5x6bnv7bf4aw2bayi8sh5bw8z6akwnp7da5s7454hyqn0vv"))))
    (properties `((upstream-name . "leafpm")))
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
    (propagated-inputs (list r-sf
                             r-leaflet
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr))
    (native-inputs (list esbuild))
    (home-page "https://github.com/r-spatial/leafpm")
    (synopsis "Leaflet Map Plugin for Drawing and Editing")
    (description
     "This package provides a collection of tools for interactive manipulation of
(spatial) data layers on leaflet web maps.  Tools include editing of existing
layers, creation of new layers through drawing of shapes (points, lines,
polygons), deletion of shapes as well as cutting holes into existing shapes.
Provides control over options to e.g. prevent self-intersection of polygons and
lines or to enable/disable snapping to align shapes.")
    (license license:expat)))

(define-public r-leafletzh
  (package
    (name "r-leafletzh")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafletZH" version))
       (sha256
        (base32 "02q5znqjx5mhw469j5zfkhb518hv54vhc9lds8zc27m9i4jwpyfa"))))
    (properties `((upstream-name . "leafletZH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-sf
                             r-scales
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-leaflet-extras
                             r-leaflet
                             r-htmlwidgets
                             r-htmltools
                             r-geosphere
                             r-geojsonsf))
    (native-inputs (list r-knitr))
    (home-page "https://damonsoul.github.io/leafletZH/")
    (synopsis "Chinese Leaflet Map Relate Operation")
    (description
     "This package provides sf data for Chinese provinces and cities, methods for
plotting shape maps of Chinese provinces and cities, Convert Coordinates Between
Different Systems, and a layer for leaflet with Gaode tiles.  It is designed to
facilitate geographical data visualization in China.")
    (license license:expat)))

(define-public r-leaflet-minicharts
  (package
    (name "r-leaflet-minicharts")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaflet.minicharts" version))
       (sha256
        (base32 "0pmgr9c3z5zdm13kb17ldjdl3i792mv20gbxzn1asfyf7csp7jxi"))))
    (properties `((upstream-name . "leaflet.minicharts")))
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
    (propagated-inputs (list r-leaflet r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://cran.r-project.org/package=leaflet.minicharts")
    (synopsis "Mini Charts for Interactive Maps")
    (description
     "Add and modify small charts on an interactive map created with package leaflet'.
 These charts can be used to represent at same time multiple variables on a
single map.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-leaflet-extras2
  (package
    (name "r-leaflet-extras2")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaflet.extras2" version))
       (sha256
        (base32 "102n18bdnf23l7cblkn0m0qqa479m73bdzqyk0wgrd8lybd45g8m"))))
    (properties `((upstream-name . "leaflet.extras2")))
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
    (propagated-inputs (list r-magrittr r-leaflet r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://trafficonese.github.io/leaflet.extras2/")
    (synopsis "Extra Functionality for 'leaflet' Package")
    (description
     "Several leaflet plugins are integrated, which are available as extension to the
leaflet package.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-leaflet-extras
  (package
    (name "r-leaflet-extras")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaflet.extras" version))
       (sha256
        (base32 "0yhn8dz33wq1yka480hqbsn4izzj9xp2vj4m072dpc6iwgp5rjny"))))
    (properties `((upstream-name . "leaflet.extras")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-magrittr r-leaflet r-htmlwidgets
                             r-htmltools))
    (home-page "https://github.com/trafficonese/leaflet.extras")
    (synopsis "Extra Functionality for 'leaflet' Package")
    (description
     "The leaflet @code{JavaScript} library provides many plugins some of which are
available in the core leaflet package, but there are many more.  It is not
possible to support them all in the core leaflet package.  This package serves
as an add-on to the leaflet package by providing extra functionality via leaflet
plugins.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-leaflegend
  (package
    (name "r-leaflegend")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaflegend" version))
       (sha256
        (base32 "1lh6c0v365aaqygwfgzbgiy3g3wlq6w0nw0drdlhcgckw7a68mk2"))))
    (properties `((upstream-name . "leaflegend")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-leaflet r-htmlwidgets r-htmltools r-base64enc))
    (home-page "https://leaflegend.delveds.com")
    (synopsis "Add Custom Legends to 'leaflet' Maps")
    (description
     "This package provides extensions to the leaflet package to customize legends
with images, text styling, orientation, sizing, and symbology and functions to
create symbols to plot on maps.")
    (license license:expat)))

(define-public r-leafgl
  (package
    (name "r-leafgl")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafgl" version))
       (sha256
        (base32 "12l9aa97jp1hhqfnp7700za85x2n0r34b4878cnj2hg4k6r3vs19"))))
    (properties `((upstream-name . "leafgl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-leaflet r-jsonify r-htmltools r-geojsonsf))
    (home-page "https://github.com/r-spatial/leafgl")
    (synopsis "High-Performance 'WebGl' Rendering for Package 'leaflet'")
    (description
     "This package provides bindings to the Leaflet.glify @code{JavaScript} library
which extends the leaflet @code{JavaScript} library to render large data in the
browser using @code{WebGl}'.")
    (license license:expat)))

(define-public r-leafem
  (package
    (name "r-leafem")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafem" version))
       (sha256
        (base32 "1if5x8s75a0bbkfakf0iav2j8ybdswiv4viarnfzlh7x2lql5pki"))))
    (properties `((upstream-name . "leafem")))
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
    (propagated-inputs (list r-sf
                             r-raster
                             r-png
                             r-leaflet
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-geojsonsf
                             r-base64enc))
    (native-inputs (list esbuild))
    (home-page "https://github.com/r-spatial/leafem")
    (synopsis "'leaflet' Extensions for 'mapview'")
    (description
     "This package provides extensions for packages leaflet & mapdeck', many of which
are used by package mapview'.  Focus is on functionality readily available in
Geographic Information Systems such as Quantum GIS'.  Includes functions to
display coordinates of mouse pointer position, query image values via mouse
pointer and zoom-to-layer buttons.  Additionally, provides a feature type
agnostic function to add points, lines, polygons to a map.")
    (license license:expat)))

(define-public r-leafdown
  (package
    (name "r-leafdown")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leafdown" version))
       (sha256
        (base32 "0gpb37yjsjirglndld84bky83yyhy16qfk1wawkfpjv8j9pdfnqf"))))
    (properties `((upstream-name . "leafdown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-r6
                             r-magrittr
                             r-leaflet
                             r-checkmate))
    (native-inputs (list r-shinycssloaders r-knitr))
    (home-page "https://cran.r-project.org/package=leafdown")
    (synopsis "Provides Drill Down Functionality for 'leaflet' Choropleths")
    (description
     "This package provides drill down functionality for leaflet choropleths in shiny
apps.")
    (license license:gpl3)))

(define-public r-leafarea
  (package
    (name "r-leafarea")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LeafArea" version))
       (sha256
        (base32 "0a464bcanq6jfm5j6692h61pipy28vm7m89y5i0hrhz7lzpy9x5z"))))
    (properties `((upstream-name . "LeafArea")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (home-page "https://github.com/mattocci27/LeafArea")
    (synopsis "Rapid Digital Image Analysis of Leaf Area")
    (description
     "An interface for the image processing program @code{ImageJ}', which allows a
rapid digital image analysis for particle sizes.  This package includes function
to write an @code{ImageJ} macro which is optimized for a leaf area analysis by
default.")
    (license license:gpl2)))

(define-public r-leadsense
  (package
    (name "r-leadsense")
    (version "0.0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LeadSense" version))
       (sha256
        (base32 "0li2nz2aajxkmb1jrp1ijkrkn18v67whxa5qhf5yrib0h1mdnflm"))))
    (properties `((upstream-name . "LeadSense")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-signal
                             r-seewave
                             r-reshape2
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=LeadSense")
    (synopsis "Medtronic Brain Sense Local Field Potencial Analysis")
    (description
     "Extracts and creates an analysis pipeline for the JSON data files from Brain
Sense sessions using Medtronic's Deep Brain Stimulation surgery electrode
implants.")
    (license license:expat)))

(define-public r-leadercluster
  (package
    (name "r-leadercluster")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "leaderCluster" version))
       (sha256
        (base32 "1alm7ar71l0ylasy0f14mdnla5vfcm604nhmk227pwcgivl588mf"))))
    (properties `((upstream-name . "leaderCluster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=leaderCluster")
    (synopsis "Leader Clustering Algorithm")
    (description
     "The leader clustering algorithm provides a means for clustering a set of data
points.  Unlike many other clustering algorithms it does not require the user to
specify the number of clusters, but instead requires the approximate radius of a
cluster as its primary tuning parameter.  The package provides a fast
implementation of this algorithm in n-dimensions using Lp-distances (with
special cases for p=1,2, and infinity) as well as for spatial data using the
Haversine formula, which takes latitude/longitude pairs as inputs and clusters
based on great circle distances.")
    (license license:lgpl2.0)))

(define-public r-ldt
  (package
    (name "r-ldt")
    (version "0.5.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldt" version))
       (sha256
        (base32 "1l6q5rx8iqcsk8475vv0pxnzgxlf4lklpb1pdy3vmrgyffm644i3"))))
    (properties `((upstream-name . "ldt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tdata r-rdpack r-rcpp r-mass r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rmojab63/LDT")
    (synopsis "Automated Uncertainty Analysis")
    (description
     "This package provides methods and tools for model selection and multi-model
inference (Burnham and Anderson (2002) <doi:10.1007/b97636>, among others).  SUR
(for parameter estimation), logit'/'probit (for binary classification), and
VARMA (for time-series forecasting) are implemented.  Evaluations are both
in-sample and out-of-sample.  It is designed to be efficient in terms of CPU
usage and memory consumption.")
    (license license:gpl3+)))

(define-public r-ldsr
  (package
    (name "r-ldsr")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldsr" version))
       (sha256
        (base32 "0wmxpglad1mk2c1gi9kxmh149r8ad0l8i2xlfs1hdjb6a4wxsklr"))))
    (properties `((upstream-name . "ldsr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass r-foreach
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ntthung/ldsr")
    (synopsis "Linear Dynamical System Reconstruction")
    (description
     "Streamflow (and climate) reconstruction using Linear Dynamical Systems.  The
advantage of this method is the additional state trajectory which can reveal
more information about the catchment or climate system.  For details of the
method please refer to Nguyen and Galelli (2018) <doi:10.1002/2017WR022114>.")
    (license license:gpl2+)))

(define-public r-ldsep
  (package
    (name "r-ldsep")
    (version "2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldsep" version))
       (sha256
        (base32 "1abjb4ybxqipq5383r82ngy19p84331sfpi817wv7jsv6q99igrb"))))
    (properties `((upstream-name . "ldsep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-modeest
                             r-matrixstats
                             r-lpsolve
                             r-foreach
                             r-doparallel
                             r-corrplot
                             r-ashr
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ldsep")
    (synopsis "Linkage Disequilibrium Shrinkage Estimation for Polyploids")
    (description
     "Estimate haplotypic or composite pairwise linkage disequilibrium (LD) in
polyploids, using either genotypes or genotype likelihoods.  Support is provided
to estimate the popular measures of LD: the LD coefficient D, the standardized
LD coefficient D', and the Pearson correlation coefficient r.  All estimates are
returned with corresponding standard errors.  These estimates and standard
errors can then be used for shrinkage estimation.  The main functions are
@code{ldfast()}, @code{ldest()}, @code{mldest()}, @code{sldest()},
@code{plot.lddf()}, @code{format_lddf()}, and @code{ldshrink()}.  Details of the
methods are available in Gerard (2021a) <doi:10.1111/1755-0998.13349> and Gerard
(2021b) <doi:10.1038/s41437-021-00462-5>.")
    (license license:gpl3)))

(define-public r-ldrtools
  (package
    (name "r-ldrtools")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDRTools" version))
       (sha256
        (base32 "0ll6przymxa98drwp0lq4mlar4blj6cig91mf2avifmp2aqfmk6c"))))
    (properties `((upstream-name . "LDRTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LDRTools")
    (synopsis "Tools for Linear Dimension Reduction")
    (description
     "Linear dimension reduction subspaces can be uniquely defined using orthogonal
projection matrices.  This package provides tools to compute distances between
such subspaces and to compute the average subspace.  For details see Liski,
E.Nordhausen K., Oja H., Ruiz-Gazen A. (2016) Combining Linear Dimension
Reduction Subspaces <doi:10.1007/978-81-322-3643-6_7>.")
    (license license:gpl2+)))

(define-public r-ldnn
  (package
    (name "r-ldnn")
    (version "1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDNN" version))
       (sha256
        (base32 "092mnjdmc0l471vd8nym09r9sfx1scp4x6nh22mj6413vaicagq0"))))
    (properties `((upstream-name . "LDNN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tensorflow r-reticulate r-keras r-devtools))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LDNN")
    (synopsis "Longitudinal Data Neural Network")
    (description
     "This is a Neural Network regression model implementation using Keras',
consisting of 10 Long Short-Term Memory layers that are fully connected along
with the rest of the inputs.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ldmppr
  (package
    (name "r-ldmppr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldmppr" version))
       (sha256
        (base32 "0pwyvfxlm4i97y15wj1k8ppm2pk2b9bbb6j37hq9zh765zjm73b5"))))
    (properties `((upstream-name . "ldmppr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yardstick
                             r-xgboost
                             r-workflows
                             r-tune
                             r-terra
                             r-spatstat-geom
                             r-spatstat-explore
                             r-rsample
                             r-recipes
                             r-rcpparmadillo
                             r-rcpp
                             r-ranger
                             r-progress
                             r-parsnip
                             r-nloptr
                             r-magrittr
                             r-hardhat
                             r-ggplot2
                             r-get
                             r-future
                             r-furrr
                             r-dplyr
                             r-doparallel
                             r-dials
                             r-bundle))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lanedrew/ldmppr")
    (synopsis
     "Estimate and Simulate from Location Dependent Marked Point Processes")
    (description
     "This package provides a suite of tools for estimating, assessing model fit,
simulating from, and visualizing location dependent marked point processes
characterized by regularity in the pattern.  You provide a reference marked
point process, a set of raster images containing location specific covariates,
and select the estimation algorithm and type of mark model.  ldmppr estimates
the process and mark models and allows you to check the appropriateness of the
model using a variety of diagnostic tools.  Once a satisfactory model fit is
obtained, you can simulate from the model and visualize the results.
Documentation for the package ldmppr is available in the form of a vignette.")
    (license license:gpl3+)))

(define-public r-ldm
  (package
    (name "r-ldm")
    (version "6.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDM" version))
       (sha256
        (base32 "1943kw0aznjv82wps952wcab8jh7wh3hkav59q6xgk9zmf4day1d"))))
    (properties `((upstream-name . "LDM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-vegan
                             r-phangorn
                             r-permute
                             r-modeest
                             r-matrixstats
                             r-gunifrac
                             r-castor
                             r-biocparallel))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/yijuanhu/LDM")
    (synopsis
     "Testing Hypotheses About the Microbiome using the Linear Decomposition Model")
    (description
     "This package provides a single analysis path that includes distance-based
ordination, global tests of any effect of the microbiome, and tests of the
effects of individual taxa with false-discovery-rate (FDR) control.  It
accommodates both continuous and discrete covariates as well as interaction
terms to be tested either singly or in combination, allows for adjustment of
confounding covariates, and uses permutation-based p-values that can control for
sample correlations.  It can be applied to transformed data, and an omnibus test
can combine results from analyses conducted on different transformation scales.
It can also be used for testing presence-absence associations based on infinite
number of rarefaction replicates, testing mediation effects of the microbiome,
analyzing censored time-to-event outcomes, and for compositional analysis by
fitting linear models to centered-log-ratio taxa count data.")
    (license license:gpl2+)))

(define-public r-ldlinkr
  (package
    (name "r-ldlinkr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDlinkR" version))
       (sha256
        (base32 "0a9j6yyws6n3989ig53nzgadrhjbdj9y2cyr9q0f1svsi6h80lxj"))))
    (properties `((upstream-name . "LDlinkR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://ldlink.nih.gov")
    (synopsis
     "Calculating Linkage Disequilibrium (LD) in Human Population Groups of Interest")
    (description
     "This package provides access to the LDlink API
(<https://ldlink.nih.gov/?tab=apiaccess>) using the R console.  This
programmatic access facilitates researchers who are interested in performing
batch queries in 1000 Genomes Project (2015) <doi:10.1038/nature15393> data
using LDlink'.  LDlink is an interactive and powerful suite of web-based tools
for querying germline variants in human population groups of interest.  For more
details, please see Machiela et al. (2015) <doi:10.1093/bioinformatics/btv402>.")
    (license license:gpl2+)))

(define-public r-ldhmm
  (package
    (name "r-ldhmm")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldhmm" version))
       (sha256
        (base32 "0br0zx5qiv4q1gg3q4kw8jhm4rwycajgp968fwal87mzid65q3ni"))))
    (properties `((upstream-name . "ldhmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xts
                             r-scales
                             r-optimx
                             r-moments
                             r-gnorm
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=ldhmm")
    (synopsis
     "Hidden Markov Model for Financial Time-Series Based on Lambda Distribution")
    (description
     "Hidden Markov Model (HMM) based on symmetric lambda distribution framework is
implemented for the study of return time-series in the financial market.  Major
features in the S&P500 index, such as regime identification, volatility
clustering, and anti-correlation between return and volatility, can be extracted
from HMM cleanly.  Univariate symmetric lambda distribution is essentially a
location-scale family of exponential power distribution.  Such distribution is
suitable for describing highly leptokurtic time series obtained from the
financial market.  It provides a theoretically solid foundation to explore such
data where the normal distribution is not adequate.  The HMM implementation
follows closely the book: \"Hidden Markov Models for Time Series\", by Zucchini,
@code{MacDonald}, Langrock (2016).")
    (license license:artistic2.0)))

(define-public r-lddmm
  (package
    (name "r-lddmm")
    (version "0.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lddmm" version))
       (sha256
        (base32 "1xnqmhhv9yqkjbwbpz5s25bvzjy99zs6hmy1grbx6f324k3bapq7"))))
    (properties `((upstream-name . "lddmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rgen
                             r-reshape2
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-plyr
                             r-latex2exp
                             r-laplacesdemon
                             r-gtools
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lddmm")
    (synopsis "Longitudinal Drift-Diffusion Mixed Models (LDDMM)")
    (description
     "Implementation of the drift-diffusion mixed model for category learning as
described in Paulon et al. (2021) <doi:10.1080/01621459.2020.1801448>.")
    (license license:expat)))

(define-public r-ldcorsv
  (package
    (name "r-ldcorsv")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDcorSV" version))
       (sha256
        (base32 "1vj1zf2glj9xp1b1bk211wyyz6nhj13ww9j7s4347qixzfm603j1"))))
    (properties `((upstream-name . "LDcorSV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://gitlab.in2p3.fr/aursiber/ldcorsv")
    (synopsis
     "Linkage Disequilibrium Corrected by the Structure and the Relatedness")
    (description
     "Four measures of linkage disequilibrium are provided: the usual r^2 measure, the
r^2_S measure (r^2 corrected by the structure sample), the r^2_V (r^2 corrected
by the relatedness of genotyped individuals), the r^2_VS measure (r^2 corrected
by both the relatedness of genotyped individuals and the structure of the
sample).")
    (license license:gpl2+)))

(define-public r-ldbounds
  (package
    (name "r-ldbounds")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldbounds" version))
       (sha256
        (base32 "19xx8a4qn9lz8r9hf344xn2rhr177nzscivxgsai9n3gwjc893d9"))))
    (properties `((upstream-name . "ldbounds")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (native-inputs (list r-r-rsp))
    (home-page "https://cran.r-project.org/package=ldbounds")
    (synopsis "Lan-DeMets Method for Group Sequential Boundaries")
    (description
     "Computations related to group sequential boundaries.  Includes calculation of
bounds using the Lan-@code{DeMets} alpha spending function approach.  Based on
FORTRAN program ld98 implemented by Reboussin, et al. (2000)
<doi:10.1016/s0197-2456(00)00057-x>.")
    (license license:gpl2+)))

(define-public r-ldbod
  (package
    (name "r-ldbod")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldbod" version))
       (sha256
        (base32 "1ylzkswnhf4jnjx2ijasy49pj78ffx333za0bx2fnf3g85kicqiv"))))
    (properties `((upstream-name . "ldbod")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rann r-mnormt))
    (home-page "https://github.com/kwilliams83/ldbod")
    (synopsis "Local Density-Based Outlier Detection")
    (description
     "Flexible procedures to compute local density-based outlier scores for ranking
outliers.  Both exact and approximate nearest neighbor search can be
implemented, while also accommodating multiple neighborhood sizes and four
different local density-based methods.  It allows for referencing a random
subsample of the input data or a user specified reference data set to compute
outlier scores against, so both unsupervised and semi-supervised outlier
detection can be implemented.")
    (license license:gpl3)))

(define-public r-ldavis
  (package
    (name "r-ldavis")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDAvis" version))
       (sha256
        (base32 "1y9wd379rfv3rd3f65ll21nvh6i8yafvv11f8gw8nn06194dgfzg"))))
    (properties `((upstream-name . "LDAvis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjsonio r-proxy))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cpsievert/LDAvis")
    (synopsis "Interactive Visualization of Topic Models")
    (description
     "This package provides tools to create an interactive web-based visualization of
a topic model that has been fit to a corpus of text data using Latent Dirichlet
Allocation (LDA).  Given the estimated parameters of the topic model, it
computes various summary statistics as input to an interactive visualization
built with D3.js that is accessed via a browser.  The goal is to help users
interpret the topics in their LDA topic model.")
    (license license:expat)))

(define-public r-ldats
  (package
    (name "r-ldats")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDATS" version))
       (sha256
        (base32 "0qgn20a7n56y6n8bray39jxz79rkq1j1gqhb99ggnad7jfh2l41q"))))
    (properties `((upstream-name . "LDATS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-viridis
                             r-topicmodels
                             r-progress
                             r-nnet
                             r-mvtnorm
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-extradistr
                             r-digest
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://weecology.github.io/LDATS/")
    (synopsis "Latent Dirichlet Allocation Coupled with Time Series Analyses")
    (description
     "Combines Latent Dirichlet Allocation (LDA) and Bayesian multinomial time series
methods in a two-stage analysis to quantify dynamics in high-dimensional
temporal data.  LDA decomposes multivariate data into lower-dimension latent
groupings, whose relative proportions are modeled using generalized Bayesian
time series models that include abrupt changepoints and smooth dynamics.  The
methods are described in Blei et al. (2003) <doi:10.1162/jmlr.2003.3.4-5.993>,
Western and Kleykamp (2004) <doi:10.1093/pan/mph023>, Venables and Ripley (2002,
ISBN-13:978-0387954578), and Christensen et al. (2018) <doi:10.1002/ecy.2373>.")
    (license license:expat)))

(define-public r-ldatree
  (package
    (name "r-ldatree")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDATree" version))
       (sha256
        (base32 "0y3jc7xflhz4b6fhjmi7zqdd5j3bzmrgrrw6f7v7r7ap4d737lcz"))))
    (properties `((upstream-name . "LDATree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-visnetwork r-magrittr r-ggplot2 r-folda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Moran79/LDATree")
    (synopsis
     "Oblique Classification Trees with Uncorrelated Linear Discriminant Analysis Splits")
    (description
     "This package provides a classification tree method that uses Uncorrelated Linear
Discriminant Analysis (ULDA) for variable selection, split determination, and
model fitting in terminal nodes.  It automatically handles missing values and
offers visualization tools.  For more details, see Wang (2024)
<doi:10.48550/@code{arXiv.2410.23147>}.")
    (license license:expat)))

(define-public r-ldaprototype
  (package
    (name "r-ldaprototype")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldaPrototype" version))
       (sha256
        (base32 "1gnwss71488837ry9zhri7yv68hhnrckrn8qb1b8sszvsch5apan"))))
    (properties `((upstream-name . "ldaPrototype")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-progress
                             r-parallelmap
                             r-lda
                             r-future
                             r-fs
                             r-dendextend
                             r-data-table
                             r-colorspace
                             r-checkmate
                             r-batchtools))
    (home-page "https://github.com/JonasRieger/ldaPrototype")
    (synopsis "Prototype of Multiple Latent Dirichlet Allocation Runs")
    (description
     "Determine a Prototype from a number of runs of Latent Dirichlet Allocation (LDA)
measuring its similarities with S-CLOP: A procedure to select the LDA run with
highest mean pairwise similarity, which is measured by S-CLOP (Similarity of
multiple sets by Clustering with Local Pruning), to all other runs.  LDA runs
are specified by its assignments leading to estimators for distribution
parameters.  Repeated runs lead to different results, which we encounter by
choosing the most representative LDA run as prototype.")
    (license license:gpl3+)))

(define-public r-ldamatch
  (package
    (name "r-ldamatch")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ldamatch" version))
       (sha256
        (base32 "1vksgild5j7g1skx28jki9kjknc08h2xf715azyfqgbmvbkkljgc"))))
    (properties `((upstream-name . "ldamatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-runit
                             r-ksamples
                             r-iterpc
                             r-iterators
                             r-gmp
                             r-foreach
                             r-entropy
                             r-data-table
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ldamatch")
    (synopsis "Selection of Statistically Similar Research Groups")
    (description
     "Select statistically similar research groups by backward selection using various
robust algorithms, including a heuristic based on linear discriminant analysis,
multiple heuristics based on the test statistic, and parallelized exhaustive
search.")
    (license license:expat)))

(define-public r-ldacoop
  (package
    (name "r-ldacoop")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDAcoop" version))
       (sha256
        (base32 "0nvf4j0akpbh03b2rldfzrvzkyxgjq0i375qxbxi96lm4h8yayfh"))))
    (properties `((upstream-name . "LDAcoop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hmisc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ZytoHMGU/LDAcoop")
    (synopsis
     "Analysis of Data from Limiting Dilution Assay (LDA) with or without Cellular Cooperation")
    (description
     "Cellular cooperation compromises the established method of calculating
clonogenic activity from limiting dilution assay (LDA) data.  This tool provides
functions that enable robust analysis in presence or absence of cellular
cooperation.  The implemented method incorporates the same cooperativity module
to model the non-linearity associated with cellular cooperation as known from
the colony formation assay (Brix et al. (2021) <doi:10.1038/s41596-021-00615-0>:
\"Analysis of clonogenic growth in vitro.\" Nature protocols).")
    (license license:gpl3)))

(define-public r-ldaandldas
  (package
    (name "r-ldaandldas")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LDAandLDAS" version))
       (sha256
        (base32 "05mwml83bi24bg1ldqpr5khmh747s3n6vbkbbnj1ck6b91dxs1gc"))))
    (properties `((upstream-name . "LDAandLDAS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=LDAandLDAS")
    (synopsis "Linkage Disequilibrium of Ancestry (LDA) and LDA Score (LDAS)")
    (description
     "Computation of linkage disequilibrium of ancestry (LDA) and linkage
disequilibrium of ancestry score (LDAS).  LDA calculates the pairwise linkage
disequilibrium of ancestry between single nucleotide polymorphisms (SNPs).  LDAS
calculates the LDA score of SNPs.  The methods are described in Barrie W, Yang
Y, Irving-Pease E.K, et al (2024) <doi:10.1038/s41586-023-06618-z>.")
    (license license:gpl3)))

(define-public r-lcyanalysis
  (package
    (name "r-lcyanalysis")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcyanalysis" version))
       (sha256
        (base32 "0pwr6r8nbvmppqwd9gxap6v49l7iaq5syaq11spxp5yc2h3pa2rg"))))
    (properties `((upstream-name . "lcyanalysis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-xts r-ttr r-quantmod))
    (home-page "https://cran.r-project.org/package=lcyanalysis")
    (synopsis "Stock Data Analysis Functions")
    (description
     "Analysis of stock data ups and downs trend, the stock technical analysis
indicators function have trend line, reversal pattern and market trend.")
    (license license:gpl3)))

(define-public r-lctools
  (package
    (name "r-lctools")
    (version "0.2-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lctools" version))
       (sha256
        (base32 "0gv8glxwdjpmx9cvadf8ww9k79wps107h29i02mcsa43mvcb22k1"))))
    (properties `((upstream-name . "lctools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-weights r-sp r-reshape r-pscl r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://stamatisgeoai.eu")
    (synopsis
     "Local Correlation, Spatial Inequalities, Geographically Weighted Regression and Other Tools")
    (description
     "This package provides researchers and educators with easy-to-learn user friendly
tools for calculating key spatial statistics and to apply simple as well as
advanced methods of spatial analysis in real data.  These include: Local Pearson
and Geographically Weighted Pearson Correlation Coefficients, Spatial Inequality
Measures (Gini, Spatial Gini, LQ, Focal LQ), Spatial Autocorrelation (Global and
Local Moran's I), several Geographically Weighted Regression techniques and
other Spatial Analysis tools (other geographically weighted statistics).  This
package also contains functions for measuring the significance of each statistic
calculated, mainly based on Monte Carlo simulations.")
    (license license:gpl2+)))

(define-public r-lcsm
  (package
    (name "r-lcsm")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcsm" version))
       (sha256
        (base32 "13iy0d37rqlw7k6xgb2rsd2pz1rrjbc5c14gqaxgwmz9pk93dlxp"))))
    (properties `((upstream-name . "lcsm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-semplot
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lavaan
                             r-ggplot2
                             r-dplyr
                             r-cli
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://milanwiedemann.github.io/lcsm/")
    (synopsis "Univariate and Bivariate Latent Change Score Modelling")
    (description
     "Helper functions to implement univariate and bivariate latent change score
models in R using the lavaan package.  For details about Latent Change Score
Modeling (LCSM) see @code{McArdle} (2009)
<doi:10.1146/annurev.psych.60.110707.163612> and Grimm, An, @code{McArdle},
Zonderman and Resnick (2012) <doi:10.1080/10705511.2012.659627>.  The package
automatically generates lavaan syntax for different model specifications and
varying timepoints.  The lavaan syntax generated by this package can be returned
and further specifications can be added manually.  Longitudinal plots as well as
simplified path diagrams can be created to visualise data and model
specifications.  Estimated model parameters and fit statistics can be extracted
as data frames.  Data for different univariate and bivariate LCSM can be
simulated by specifying estimates for model parameters to explore their effects.
 This package combines the strengths of other R packages like lavaan', broom',
and @code{semPlot} by generating lavaan syntax that helps these packages work
together.")
    (license license:expat)))

(define-public r-lcra
  (package
    (name "r-lcra")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcra" version))
       (sha256
        (base32 "0bzv6m2113hzxxlinicc2x296vi7q5z1d31gqzri70klwn9qqy1l"))))
    (properties `((upstream-name . "lcra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-rjags r-coda))
    (home-page "https://github.com/umich-biostatistics/lcra")
    (synopsis "Bayesian Joint Latent Class and Regression Models")
    (description
     "For fitting Bayesian joint latent class and regression models using Gibbs
sampling.  See the documentation for the model.  The technical details of the
model implemented here are described in Elliott, Michael R., Zhao, Zhangchen,
Mukherjee, Bhramar, Kanaya, Alka, Needham, Belinda L., \"Methods to account for
uncertainty in latent class assignments when using latent classes as predictors
in regression models, with application to acculturation strategy measures\"
(2020) In press at Epidemiology <doi:10.1097/EDE.0000000000001139>.")
    (license license:gpl2)))

(define-public r-lcpm
  (package
    (name "r-lcpm")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcpm" version))
       (sha256
        (base32 "0pqmizli5rhyaxvxrjycf8d5kqrm23i3vdz00r8zmijjpiz2p9s2"))))
    (properties `((upstream-name . "lcpm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-numderiv r-matrix))
    (home-page "https://cran.r-project.org/package=lcpm")
    (synopsis "Ordinal Outcomes: Generalized Linear Models with the Log Link")
    (description
     "An implementation of the Log Cumulative Probability Model (LCPM) and
Proportional Probability Model (PPM) for which the Maximum Likelihood Estimates
are determined using constrained optimization.  This implementation accounts for
the implicit constraints on the parameter space.  Other features such as
standard errors, z tests and p-values use standard methods adapted from the
results based on constrained optimization.")
    (license license:gpl3)))

(define-public r-lcopula
  (package
    (name "r-lcopula")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcopula" version))
       (sha256
        (base32 "1lzk4lvdlqvnacmak75r4fn1mn2fxfzzlyh94k5r8iqgrpq5zsss"))))
    (properties `((upstream-name . "lcopula")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-copula))
    (home-page "https://cran.r-project.org/package=lcopula")
    (synopsis "Liouville Copulas")
    (description
     "Collections of functions allowing random number generations and estimation of
Liouville copulas, as described in Belzile and Neslehova (2017)
<doi:10.1016/j.jmva.2017.05.008>.")
    (license license:gpl3)))

(define-public r-lconnect
  (package
    (name "r-lconnect")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lconnect" version))
       (sha256
        (base32 "097dsq8d5jpvygd1kpdkcdl0pa7clgdyjka03pw9glnamvqpg8a7"))))
    (properties `((upstream-name . "lconnect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-scales r-rcpp r-igraph))
    (home-page "https://cran.r-project.org/package=lconnect")
    (synopsis "Simple Tools to Compute Landscape Connectivity Metrics")
    (description
     "This package provides functions to upload vectorial data and derive landscape
connectivity metrics in habitat or matrix systems.  Additionally, includes an
approach to assess individual patch contribution to the overall landscape
connectivity, enabling the prioritization of habitat patches.  The computation
of landscape connectivity and patch importance are very useful in Landscape
Ecology research.  The metrics available are: number of components, number of
links, size of the largest component, mean size of components, class coincidence
probability, landscape coincidence probability, characteristic path length,
expected cluster size, area-weighted flux and integral index of connectivity.
Pascual-Hortal, L., and Saura, S. (2006) <doi:10.1007/s10980-006-0013-z> Urban,
D., and Keitt, T. (2001) <doi:10.2307/2679983> Laita, A., Kotiaho, J.,
Monkkonen, M. (2011) <doi:10.1007/s10980-011-9620-4>.")
    (license license:gpl3)))

(define-public r-lcmsqa
  (package
    (name "r-lcmsqa")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCMSQA" version))
       (sha256
        (base32 "07lgqn8m2aqblm6539d5vrq9hklrjbpxi21zn93nf4akm57lvdxh"))))
    (properties `((upstream-name . "LCMSQA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shinycssloaders
                             r-shiny
                             r-plotly
                             r-ggplot2
                             r-dt
                             r-data-table
                             r-bsplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LCMSQA")
    (synopsis
     "Liquid Chromatography/Mass Spectrometry (LC/MS) Quality Assessment")
    (description
     "The goal of LCMSQA is to make it easy to check the quality of liquid
chromatograph/mass spectrometry (LC/MS) experiments using a shiny application.
This package provides interactive data visualizations for quality control (QC)
samples, including total ion current chromatogram (TIC), base peak chromatogram
(BPC), mass spectrum, extracted ion chromatogram (XIC), and feature detection
results from internal standards or known metabolites.")
    (license license:gpl3+)))

(define-public r-lcmm
  (package
    (name "r-lcmm")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcmm" version))
       (sha256
        (base32 "04h1b7ws1q2j48i3kbfl6qpq7yzl1c6cbbm5qgjbmczvdghpz432"))))
    (properties `((upstream-name . "lcmm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-spacefillr
                             r-numderiv
                             r-nlme
                             r-mvtnorm
                             r-marqlevalg
                             r-doparallel))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cecileproust-lima.github.io/lcmm/")
    (synopsis
     "Extended Mixed Models Using Latent Classes and Latent Processes")
    (description
     "Estimation of various extensions of the mixed models including latent class
mixed models, joint latent class mixed models, mixed models for curvilinear
outcomes, mixed models for multivariate longitudinal outcomes using a maximum
likelihood estimation method (Proust-Lima, Philipps, Liquet (2017)
<doi:10.18637/jss.v078.i02>).")
    (license license:gpl2+)))

(define-public r-lcmcr
  (package
    (name "r-lcmcr")
    (version "0.4.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCMCR" version))
       (sha256
        (base32 "12y12w2cdrfd1pqzlk7i7ddh2jypd0r0qm9l8gdb3jq301zi5lay"))))
    (properties `((upstream-name . "LCMCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (home-page "https://cran.r-project.org/package=LCMCR")
    (synopsis "Bayesian Non-Parametric Latent-Class Capture-Recapture")
    (description
     "Bayesian population size estimation using non parametric latent-class models.")
    (license license:gpl2+)))

(define-public r-lchemix
  (package
    (name "r-lchemix")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lchemix" version))
       (sha256
        (base32 "1g2w57fi6kvsyir14hnxh0v6xwjdnbisafvjxvn1g6a4h55dg9i0"))))
    (properties `((upstream-name . "lchemix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-mcmcpack))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/wzhang17/lchemix.git")
    (synopsis "Bayesian Multi-Dimensional Couple-Based Latent Risk Model")
    (description
     "This package provides a joint latent class model where a hierarchical structure
exists, with an interaction between female and male partners of a couple.  A
Bayesian perspective to inference and Markov chain Monte Carlo algorithms to
obtain posterior estimates of model parameters.  The reference paper is: Beom
Seuk Hwang, Zhen Chen, Germaine M.Buck Louis, Paul S. Albert, (2018) \"A Bayesian
multi-dimensional couple-based latent risk model with an application to
infertility\".  Biometrics, 75, 315-325. <doi:10.1111/biom.12972>.")
    (license license:gpl3)))

(define-public r-lcfdata
  (package
    (name "r-lcfdata")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCFdata" version))
       (sha256
        (base32 "1x3vbr6hdviqvd6dxn1kb449g0q5zkfmjsmr5nxd2g82p69lv3xm"))))
    (properties `((upstream-name . "LCFdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LCFdata")
    (synopsis "Data sets for package ``LMERConvenienceFunctions''")
    (description
     "This package contains (1) event-related brain potential data recorded from 10
participants at electrodes Fz, Cz, Pz, and Oz (0--300 ms) in the context of
Antoine Tremblay's @code{PhD} thesis (Tremblay, 2009); (2) ERP amplitudes at
electrode Fz restricted to the 100 to 175 millisecond time window; and (3)
plotting data generated from a linear mixed-effects model.")
    (license license:gpl2)))

(define-public r-lcda
  (package
    (name "r-lcda")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcda" version))
       (sha256
        (base32 "19s9rn7wg8acr74hsias81rz9yg8s35l1awr6jmw7ldjpfl22sj5"))))
    (properties `((upstream-name . "lcda")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-polca))
    (home-page "https://cran.r-project.org/package=lcda")
    (synopsis "Latent Class Discriminant Analysis")
    (description
     "Providing a method for Local Discrimination via Latent Class Models.  The
approach is described in
<https://www.r-project.org/conferences/@code{useR-2009/abstracts/pdf/Bucker.pdf>}.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lccr
  (package
    (name "r-lccr")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCCR" version))
       (sha256
        (base32 "157j386nymg58n6phnib2s0pv52g1ixfjasvaw8kaq8p6pjb3nmp"))))
    (properties `((upstream-name . "LCCR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=LCCR")
    (synopsis "Latent Class Capture-Recapture Models")
    (description
     "Estimation of latent class models with individual covariates for
capture-recapture data.  See Bartolucci, F. and Forcina, A. (2022), Estimating
the size of a closed population by modeling latent and observed heterogeneity,
Biometrics, 80(2), ujae017.")
    (license license:gpl2+)))

(define-public r-lcc
  (package
    (name "r-lcc")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcc" version))
       (sha256
        (base32 "16iaja9dgnm6rjsaliz574mds1rgz07rk0r5dgwp2mc7kx0lhvgz"))))
    (properties `((upstream-name . "lcc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme
                             r-hnp
                             r-ggplot2
                             r-foreach
                             r-dosnow
                             r-dorng))
    (home-page "https://cran.r-project.org/package=lcc")
    (synopsis "Longitudinal Concordance Correlation")
    (description
     "Estimates the longitudinal concordance correlation to access the longitudinal
agreement profile.  The estimation approach implemented is variance components
approach based on polynomial mixed effects regression model, as proposed by
Oliveira, Hinde and Zocchi (2018) <doi:10.1007/s13253-018-0321-1>.  In addition,
non-parametric confidence intervals were implemented using percentile method or
normal-approximation based on Fisher Z-transformation.")
    (license license:gpl2+)))

(define-public r-lcars
  (package
    (name "r-lcars")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lcars" version))
       (sha256
        (base32 "1dkn3ssmmis6cajg0zfl3ngrzbz83gzxidpz559qcxsq258m0gid"))))
    (properties `((upstream-name . "lcars")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trekcolors r-shiny r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/leonawicz/lcars")
    (synopsis "LCARS Aesthetic for Shiny")
    (description
     "This package provides Shiny widgets and theme that support a Library Computer
Access/Retrieval System (LCARS) aesthetic for Shiny apps.  The package also
includes functions for adding a minimal LCARS theme to static ggplot2 graphs.
More details about LCARS can be found at <https://en.wikipedia.org/wiki/LCARS>.")
    (license license:expat)))

(define-public r-lcaextend
  (package
    (name "r-lcaextend")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCAextend" version))
       (sha256
        (base32 "1l75y3vkbsmsm3pjd5pwy0hlv6gz5ryxs4pkx9aiyhxz2y9wnhpb"))))
    (properties `((upstream-name . "LCAextend")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rms r-mvtnorm r-kinship2 r-boot))
    (home-page "https://CRAN.R-project.org/package=LCAextend")
    (synopsis
     "Latent Class Analysis (LCA) with Familial Dependence in Extended Pedigrees")
    (description
     "Latent Class Analysis of phenotypic measurements in pedigrees and model
selection based on one of two methods: likelihood-based cross-validation and
Bayesian Information Criterion.  Computation of individual and triplet
child-parents weights in a pedigree is performed using an upward-downward
algorithm.  The model takes into account the familial dependence defined by the
pedigree structure by considering that a class of a child depends on his parents
classes via triplet-transition probabilities of the classes.  The package
handles the case where measurements are available on all subjects and the case
where measurements are available only on symptomatic (i.e.  affected) subjects.
Distributions for discrete (or ordinal) and continuous data are currently
implemented.  The package can deal with missing data.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lca
  (package
    (name "r-lca")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LCA" version))
       (sha256
        (base32 "014kih33y8b9nls0pcigw68jbz7vgnq8w1xbwm2d37g1m5y6xlyw"))))
    (properties `((upstream-name . "LCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://www.r-project.org")
    (synopsis "Localised Co-Dependency Analysis")
    (description
     "This package performs model fitting and significance estimation for Localised
Co-Dependency between pairs of features of a numeric dataset.")
    (license license:gpl2+)))

(define-public r-lbspr
  (package
    (name "r-lbspr")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LBSPR" version))
       (sha256
        (base32 "075wcjhvp90fj37ihrplnrc0vy8wpav5qivkw1rgv00fa8xj7pw0"))))
    (properties `((upstream-name . "LBSPR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-rcpp
                             r-rcolorbrewer
                             r-plotrix
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AdrianHordyk/LBSPR")
    (synopsis "Length-Based Spawning Potential Ratio")
    (description
     "Simulate expected equilibrium length composition, yield-per-recruit, and the
spawning potential ratio (SPR) using the length-based SPR (LBSPR) model.  Fit
the LBSPR model to length data to estimate selectivity, relative apical fishing
mortality, and the spawning potential ratio for data-limited fisheries.  See
Hordyk et al (2016) <doi:10.1139/cjfas-2015-0422> for more information about the
LBSPR assessment method.")
    (license license:gpl3)))

(define-public r-lbreg
  (package
    (name "r-lbreg")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lbreg" version))
       (sha256
        (base32 "1z9vixf6sl0k9lizngc3859lk32srkk1d8y133sl6s37ppmqb4s2"))))
    (properties `((upstream-name . "lbreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=lbreg")
    (synopsis "Log-Binomial Regression with Constrained Optimization")
    (description
     "Maximum likelihood estimation of log-binomial regression with special
functionality when the MLE is on the boundary of the parameter space.")
    (license license:gpl2)))

(define-public r-lbpg
  (package
    (name "r-lbpg")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LBPG" version))
       (sha256
        (base32 "01sky2388ylx960vd5lnj48an2n82fd909cnm11v91kklyvkxxlc"))))
    (properties `((upstream-name . "LBPG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gsl))
    (home-page "https://cran.r-project.org/package=LBPG")
    (synopsis "The Length-Biased Power Garima Distribution")
    (description
     "The Length-Biased Power Garima distribution for computes the probability
density, the cumulative density distribution and the quantile function of the
distribution, and generates sample values with random variables based on
Kittipong and Sirinapa(2021)<DOI: 10.14456/sjst-psu.2021.89>.")
    (license license:gpl3)))

(define-public r-lboxcox
  (package
    (name "r-lboxcox")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lboxcox" version))
       (sha256
        (base32 "0jklfgw7dwslafsivb9z2q1vgv367kk9gbgjabz04y0kracxaa8q"))))
    (properties `((upstream-name . "lboxcox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-r-utils
                             r-maxlik
                             r-mass
                             r-foreach
                             r-dplyr
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lboxcox")
    (synopsis "Implementation of Logistic Box-Cox Regression")
    (description
     "This package implements a logistic box-cox model.  This model is fully described
in Xing, L. et al. (2021) <doi:10.1002/cjs.11587>.")
    (license license:gpl3)))

(define-public r-lbm
  (package
    (name "r-lbm")
    (version "0.9.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lbm" version))
       (sha256
        (base32 "0mn0k5liwrnbsl5lf4k5b8j2y79bkk689v8wrvcmj3l7q2abaxhf"))))
    (properties `((upstream-name . "lbm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lbm")
    (synopsis "Log Binomial Regression Model in Exact Method")
    (description
     "Fit the log binomial regression model (LBM) by Exact method.  Limited parameter
space of LBM causes trouble to find admissible estimates and fail to converge
when MLE is close to or on the boundary of space.  Exact method utilizes the
property of boundary vectors to re-parametrize the model without losing any
information, and fits the model on the standard fitting algorithm with no
convergence issues.")
    (license license:gpl2+)))

(define-public r-lbi
  (package
    (name "r-lbi")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LBI" version))
       (sha256
        (base32 "1g265caip36vgpbx7lsjb8bpkk3ag86xxdl03hr81yh6gxx3gv98"))))
    (properties `((upstream-name . "LBI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LBI")
    (synopsis "Likelihood Based Inference")
    (description
     "Maximum likelihood estimation and likelihood ratio test are essential for modern
statistics.  This package supports in calculating likelihood based inference.
Reference: Pawitan Y. (2001, ISBN:0-19-850765-8).")
    (license license:gpl3)))

(define-public r-lbfgs
  (package
    (name "r-lbfgs")
    (version "1.2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lbfgs" version))
       (sha256
        (base32 "04fx9v1dn8rn09h98zxp71zcxidjmhmcv190h7mvbj3pqf3dh2bv"))))
    (properties `((upstream-name . "lbfgs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=lbfgs")
    (synopsis "Limited-memory BFGS Optimization")
    (description
     "This package provides a wrapper built around the @code{libLBFGS} optimization
library by Naoaki Okazaki.  The lbfgs package implements both the Limited-memory
Broyden-Fletcher-Goldfarb-Shanno (L-BFGS) and the Orthant-Wise Quasi-Newton
Limited-Memory (OWL-QN) optimization algorithms.  The L-BFGS algorithm solves
the problem of minimizing an objective, given its gradient, by iteratively
computing approximations of the inverse Hessian matrix.  The OWL-QN algorithm
finds the optimum of an objective plus the L1-norm of the problem's parameters.
The package offers a fast and memory-efficient implementation of these
optimization routines, which is particularly suited for high-dimensional
problems.")
    (license license:gpl2+)))

(define-public r-lbdiscover
  (package
    (name "r-lbdiscover")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LBDiscover" version))
       (sha256
        (base32 "1r473riqdf5zl26f1n0yv0sd59a92l5ihb2i7p8ylkwf4hc8ylc1"))))
    (properties `((upstream-name . "LBDiscover")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-rentrez
                             r-matrix
                             r-jsonlite
                             r-igraph
                             r-httr))
    (home-page "https://github.com/chaoliu-cl/LBDiscover")
    (synopsis "Literature-Based Discovery Tools for Biomedical Research")
    (description
     "This package provides a suite of tools for literature-based discovery in
biomedical research.  Provides functions for retrieving scientific articles from
@code{PubMed} and other NCBI databases, extracting biomedical entities
(diseases, drugs, genes, etc.), building co-occurrence networks, and applying
various discovery models including ABC', @code{AnC}', LSI', and BITOLA'.  The
package also includes visualization tools for exploring discovered connections.")
    (license license:gpl3)))

(define-public r-lba
  (package
    (name "r-lba")
    (version "2.4.52")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lba" version))
       (sha256
        (base32 "04w275da78naxz1imbw78kpd0rns4ipmjgfs4f23h1q8zp5711fw"))))
    (properties `((upstream-name . "lba")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d r-rgl r-plotrix r-mass r-alabama))
    (home-page "https://github.com/ivanalaman/lba")
    (synopsis "Latent Budget Analysis for Compositional Data")
    (description
     "Latent budget analysis is a method for the analysis of a two-way contingency
table with an exploratory variable and a response variable.  It is specially
designed for compositional data.")
    (license license:gpl2+)))

(define-public r-lazyweave
  (package
    (name "r-lazyweave")
    (version "3.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazyWeave" version))
       (sha256
        (base32 "1zzj6jp230pby7qnnk31yikcgjpsrq6i68h5vq32dz5wphc4says"))))
    (properties `((upstream-name . "lazyWeave")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-labelvector r-hmisc))
    (home-page "https://cran.r-project.org/package=lazyWeave")
    (synopsis "LaTeX Wrappers for R Users")
    (description
     "This package provides the functionality to write @code{LaTeX} code from within R
without having to learn @code{LaTeX}.  Functionality also exists to create HTML
and Markdown code.  While the functionality still exists to write complete
documents with @code{lazyWeave}, it is generally easier to do so with with
markdown and knitr. @code{lazyWeave's} main strength now is the ability to
design custom and complex tables for reporting results.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lazytrade
  (package
    (name "r-lazytrade")
    (version "0.5.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazytrade" version))
       (sha256
        (base32 "0yl3hndvzavag397071mkr8z7v7hb9b2dzcls5llqjpi7ayvbi8b"))))
    (properties `((upstream-name . "lazytrade")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-reinforcementlearning
                             r-readr
                             r-openssl
                             r-lubridate
                             r-lifecycle
                             r-h2o
                             r-ggplot2
                             r-dplyr
                             r-cluster))
    (home-page
     "https://vladdsm.github.io/myblog_attempt/topics/lazy%20trading/")
    (synopsis "Learn Computer and Data Science using Algorithmic Trading")
    (description
     "Provide sets of functions and methods to learn and practice data science using
idea of algorithmic trading.  Main goal is to process information within
\"Decision Support System\" to come up with analysis or predictions.  There are
several utilities such as dynamic and adaptive risk management using
reinforcement learning and even functions to generate predictions of price
changes using pattern recognition deep regression learning.  Summary of Methods
used: Awesome H2O tutorials: <https://github.com/h2oai/awesome-h2o>, Market Type
research of Van Tharp Institute: <https://vantharp.com/>, Reinforcement Learning
R package: <https://CRAN.R-project.org/package=@code{ReinforcementLearning>}.")
    (license license:expat)))

(define-public r-lazysql
  (package
    (name "r-lazysql")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazysql" version))
       (sha256
        (base32 "18vff80rl8ckjwfqi9dhzs1q35a1wrxvynidji6dy2kvvk38xnpa"))))
    (properties `((upstream-name . "lazysql")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-magrittr r-checkmate))
    (home-page "https://github.com/UweBlock/lazysql")
    (synopsis "Lazy SQL Programming")
    (description
     "Helper functions to build SQL statements for @code{dbGetQuery} or
@code{dbSendQuery} under program control.  They are intended to increase speed
of coding and to reduce coding errors.  Arguments are carefully checked, in
particular SQL identifiers such as names of tables or columns.  More patterns
will be added as required.")
    (license license:expat)))

(define-public r-lazysf
  (package
    (name "r-lazysf")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazysf" version))
       (sha256
        (base32 "0648ds8xdw9jmdlljg7732fpcyk5gb7cagcp84ix6f2rqfqn8say"))))
    (properties `((upstream-name . "lazysf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-sf
                             r-magrittr
                             r-dplyr
                             r-dbplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hypertidy/lazysf")
    (synopsis "Delayed Read for 'GDAL' Vector Data Sources")
    (description
     "Lazy read for drawings.  A dplyr back end for data sources supported by GDAL
vector drivers, that allows working with local or remote sources as if they are
in-memory data frames.  Basic features works with any drawing format ('GDAL
vector data source') supported by the sf package.")
    (license license:gpl3)))

(define-public r-lazydata
  (package
    (name "r-lazydata")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazyData" version))
       (sha256
        (base32 "0mbmmx6dh8ph4lrx1b4gxbwz3jwxv4nqi0xvfzpzrm3bwbsjc634"))))
    (properties `((upstream-name . "lazyData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lazyData")
    (synopsis "LazyData Facility")
    (description
     "Supplies a @code{LazyData} facility for packages which have data sets but do not
provide @code{LazyData}: true.  A single function is is included,
@code{requireData}, which is a drop-in replacement for base::require, but
carrying the additional functionality.  By default, it suppresses package
startup messages as well.  See argument @code{reallyQuitely}'.")
    (license license:gpl2)))

(define-public r-lazybar
  (package
    (name "r-lazybar")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazybar" version))
       (sha256
        (base32 "1hv9ciznbxv7xnaijfjqisq3lx8nd4vkdkj9clxpdsspi3inlf53"))))
    (properties `((upstream-name . "lazybar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6))
    (home-page "https://pkg.yangzhuoranyang.com/lazybar/")
    (synopsis "Progress Bar with Remaining Time Forecast Method")
    (description
     "This package provides a simple progress bar showing estimated remaining time.
Multiple forecast methods and user defined forecast method for the remaining
time are supported.")
    (license license:gpl3)))

(define-public r-lazyarray
  (package
    (name "r-lazyarray")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazyarray" version))
       (sha256
        (base32 "1bj1a8ab2479cl3d15h9f1fr1hh5d1p3sxpq8y84yzw0rrsxcldd"))))
    (properties `((upstream-name . "lazyarray")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-rcpp r-r6 r-fstcore))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dipterix/lazyarray")
    (synopsis "Persistent Large Data Array with Lazy-Loading on Demand")
    (description
     "Multi-threaded serialization of compressed array that fully utilizes modern
solid state drives.  It allows to store and load extremely large data on demand
within seconds without occupying too much memories.  With data stored on hard
drive, a lazy-array data can be loaded, shared across multiple R sessions.  For
arrays with partition mode on, multiple R sessions can write to a same array
simultaneously along the last dimension (partition).  The internal storage
format is provided by fstcore package geared by LZ4 and ZSTD compressors.")
    (license license:agpl3)))

(define-public r-lazy
  (package
    (name "r-lazy")
    (version "1.2-18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lazy" version))
       (sha256
        (base32 "02phj1l92dh5qmcl9i8scxgj4v21knbfrwwixq74bgyzwb51ni4r"))))
    (properties `((upstream-name . "lazy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=lazy")
    (synopsis "Lazy Learning for Local Regression")
    (description
     "By combining constant, linear, and quadratic local models, lazy estimates the
value of an unknown multivariate function on the basis of a set of possibly
noisy samples of the function itself.  This implementation of lazy learning
automatically adjusts the bandwidth on a query-by-query basis through a
leave-one-out cross-validation.")
    (license license:gpl2+)))

(define-public r-layer
  (package
    (name "r-layer")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "layer" version))
       (sha256
        (base32 "06px61dffy95p7f09fpm5islibppv41hrb38wfg8rjvjqhgdk2yq"))))
    (properties `((upstream-name . "layer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stars
                             r-sf
                             r-scico
                             r-raster
                             r-magrittr
                             r-ggplot2
                             r-ggnewscale
                             r-furrr
                             r-dplyr))
    (home-page "https://github.com/marcosci/layer")
    (synopsis "Tilt your Maps and Turn Them into 'ggplot' Plots")
    (description
     "Simplifies the whole process of creating stacked tilted maps, that are often
used in scientific publications to show different environmental layers for a
geographical region.  Tilting maps and layering them allows to easily draw
visual correlations between these environmental layers.")
    (license license:cc0)))

(define-public r-lay
  (package
    (name "r-lay")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lay" version))
       (sha256
        (base32 "0cg3sxbphmfyzdbqrgij5nm8xvhp5dizbjx82pl0xx1ms5p40b0r"))))
    (properties `((upstream-name . "lay")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs r-tibble r-rlang r-purrr))
    (home-page "https://courtiol.github.io/lay/")
    (synopsis "Simple but Efficient Rowwise Jobs")
    (description
     "Creating efficiently new column(s) in a data frame (including tibble) by
applying a function one row at a time.")
    (license license:expat)))

(define-public r-lax
  (package
    (name "r-lax")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lax" version))
       (sha256
        (base32 "1ddl7vgf8xmp4scpiifxvjzzqifcp9q6xiw7kg4cl204scm5z39w"))))
    (properties `((upstream-name . "lax")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sandwich r-revdbayes r-numderiv r-exdex
                             r-chandwich))
    (native-inputs (list r-knitr))
    (home-page "https://paulnorthrop.github.io/lax/")
    (synopsis "Loglikelihood Adjustment for Extreme Value Models")
    (description
     "This package performs adjusted inferences based on model objects fitted, using
maximum likelihood estimation, by the extreme value analysis packages eva
<https://cran.r-project.org/package=eva>, evd
<https://cran.r-project.org/package=evd>, evir
<https://cran.r-project.org/package=evir>, @code{extRemes}
<https://cran.r-project.org/package=@code{extRemes>}, @code{fExtremes}
<https://cran.r-project.org/package=@code{fExtremes>}, ismev
<https://cran.r-project.org/package=ismev>, mev
<https://cran.r-project.org/package=mev>, POT
<https://cran.r-project.org/package=POT> and texmex
<https://cran.r-project.org/package=texmex>.  Adjusted standard errors and an
adjusted loglikelihood are provided, using the chandwich package
<https://cran.r-project.org/package=chandwich> and the object-oriented features
of the sandwich package <https://cran.r-project.org/package=sandwich>.  The
adjustment is based on a robust sandwich estimator of the parameter covariance
matrix, based on the methodology in Chandler and Bate (2007)
<doi:10.1093/biomet/asm015>.  This can be used for cluster correlated data when
interest lies in the parameters of the marginal distributions, or for performing
inferences that are robust to certain types of model misspecification.
Univariate extreme value models, including regression models, are supported.")
    (license license:gpl2+)))

(define-public r-lawstat
  (package
    (name "r-lawstat")
    (version "3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lawstat" version))
       (sha256
        (base32 "1bmv3aw4z07ypsb1z65kwdybg6c268vdy46q9nri8xsmrby3fw8b"))))
    (properties `((upstream-name . "lawstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-mvtnorm r-kendall))
    (home-page "https://cran.r-project.org/package=lawstat")
    (synopsis "Tools for Biostatistics, Public Policy, and Law")
    (description
     "Statistical tests widely utilized in biostatistics, public policy, and law.
Along with the well-known tests for equality of means and variances, randomness,
and measures of relative variability, the package contains new robust tests of
symmetry, omnibus and directional tests of normality, and their graphical
counterparts such as robust QQ plot, robust trend tests for variances, etc.  All
implemented tests and methods are illustrated by simulations and real-life
examples from legal statistics, economics, and biostatistics.")
    (license license:gpl2+)))

(define-public r-lawbl
  (package
    (name "r-lawbl")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LAWBL" version))
       (sha256
        (base32 "0vqjp00nviyl6ghbjn2ayj3k0x2a7hihff0w0x7xwqv3z8x0mh8g"))))
    (properties `((upstream-name . "LAWBL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Jinsong-Chen/LAWBL")
    (synopsis "Latent (Variable) Analysis with Bayesian Learning")
    (description
     "This package provides a variety of models to analyze latent variables based on
Bayesian learning: the partially CFA (Chen, Guo, Zhang, & Pan, 2020) <DOI:
10.1037/met0000293>; generalized PCFA; partially confirmatory IRM (Chen, 2020)
<DOI: 10.1007/s11336-020-09724-3>; Bayesian regularized EFA <DOI:
10.1080/10705511.2020.1854763>; Fully and partially EFA.")
    (license license:gpl3)))

(define-public r-lavasearch2
  (package
    (name "r-lavasearch2")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaSearch2" version))
       (sha256
        (base32 "1z5aaajlgmn6i9jvziz2blrxkrnqfsyfgpflblxac5ljwmnw7yvn"))))
    (properties `((upstream-name . "lavaSearch2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-sandwich
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-nlme
                             r-mvtnorm
                             r-multcomp
                             r-matrix
                             r-mass
                             r-lava
                             r-ggplot2
                             r-doparallel
                             r-abind))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/bozenne/lavaSearch2")
    (synopsis "Tools for Model Specification in the Latent Variable Framework")
    (description
     "This package provides tools for model specification in the latent variable
framework (add-on to the lava package).  The package contains three main
functionalities: Wald tests/F-tests with improved control of the type 1 error in
small samples, adjustment for multiple comparisons when searching for local
dependencies, and adjustment for multiple comparisons when doing inference for
multiple latent variable models.")
    (license license:gpl3)))

(define-public r-lavacreg
  (package
    (name "r-lavacreg")
    (version "0.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavacreg" version))
       (sha256
        (base32 "0jbqf52j5iva39lf9w34aabg6wh5i8rczln3l7pbdyz9lmvmgycc"))))
    (properties `((upstream-name . "lavacreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparsegrid r-rcpparmadillo r-rcpp r-pracma
                             r-fastghquad))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chkiefer/lavacreg")
    (synopsis "Latent Variable Count Regression Models")
    (description
     "Estimation of a multi-group count regression models (i.e., Poisson, negative
binomial) with latent covariates.  This packages provides two extensions
compared to ordinary count regression models based on a generalized linear
model: First, measurement models for the predictors can be specified allowing to
account for measurement error.  Second, the count regression can be
simultaneously estimated in multiple groups with stochastic group weights.  The
marginal maximum likelihood estimation is described in Kiefer & Mayer (2020)
<doi:10.1080/00273171.2020.1751027>.")
    (license license:gpl2+)))

(define-public r-lavaanplot
  (package
    (name "r-lavaanplot")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaanPlot" version))
       (sha256
        (base32 "08isy888r5ispw2i74arnkc52qdba28yl6mzypx6j33rkbnbxrai"))))
    (properties `((upstream-name . "lavaanPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lavaan
                             r-dplyr
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alishinski/lavaanPlot")
    (synopsis "Path Diagrams for 'Lavaan' Models via 'DiagrammeR'")
    (description
     "Plots path diagrams from models in lavaan using the plotting functionality from
the @code{DiagrammeR} package. @code{DiagrammeR} provides nice path diagrams via
Graphviz', and these functions make it easy to generate these diagrams from a
lavaan path model without having to write the DOT language graph specification.")
    (license license:gpl2+)))

(define-public r-lavaangui
  (package
    (name "r-lavaangui")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaangui" version))
       (sha256
        (base32 "1bh3apsq750fv268g6ws8m6m4w7sxclph2gzxr7kjh6f4lphzxpf"))))
    (properties `((upstream-name . "lavaangui")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-readxl
                             r-readr
                             r-promises
                             r-plyr
                             r-lavaan
                             r-jsonlite
                             r-igraph
                             r-haven
                             r-future
                             r-dt
                             r-digest
                             r-colorspace
                             r-base64enc))
    (home-page "https://lavaangui.org/")
    (synopsis
     "Graphical User Interface with Integrated 'Diagrammer' for 'Lavaan'")
    (description
     "This package provides a graphical user interface with an integrated diagrammer
for latent variables from the lavaan package.  It offers two core functions:
first, @code{lavaangui()} launches a web application that allows users to
specify models by drawing path diagrams, fitting them, assessing model fit, and
more; second, @code{plot_lavaan()} creates interactive path diagrams from models
specified in lavaan'.  Karch (2024) <doi: 10.31234/osf.io/f4ary> contains a
tutorial.")
    (license license:gpl3+)))

(define-public r-lavaanextra
  (package
    (name "r-lavaanextra")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaanExtra" version))
       (sha256
        (base32 "1h83a7mxyqqlnjk2vddy6ngshinl0sih3m21hl7qbc84spx1g96b"))))
    (properties `((upstream-name . "lavaanExtra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lavaan r-insight))
    (native-inputs (list r-knitr))
    (home-page "https://lavaanExtra.remi-theriault.com")
    (synopsis "Convenience Functions for Package 'lavaan'")
    (description
     "Affords an alternative, vector-based syntax to lavaan', as well as other
convenience functions such as naming paths and defining indirect links
automatically, in addition to convenience formatting optimized for a publication
and script sharing workflow.")
    (license license:expat)))

(define-public r-lavaan-shiny
  (package
    (name "r-lavaan-shiny")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaan.shiny" version))
       (sha256
        (base32 "0qgswdpxb5af0l3v70sg0jrgsdwr88gz6zzwbk3pw5x6qnvnwb6r"))))
    (properties `((upstream-name . "lavaan.shiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyace r-shiny r-semplot r-psych r-lavaan))
    (home-page "https://github.com/kylehamilton/lavaan.shiny")
    (synopsis "Latent Variable Analysis with Shiny")
    (description
     "Interactive shiny application for working with different kinds of latent
variable analysis, with the lavaan package.  Graphical output for models are
provided and different estimators are supported.")
    (license license:gpl3)))

(define-public r-lavaan-printer
  (package
    (name "r-lavaan-printer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaan.printer" version))
       (sha256
        (base32 "1913bk8vqffa3jywgwyf01wq9vb038c0j7fvjnf2rmy9jrvwskl6"))))
    (properties `((upstream-name . "lavaan.printer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lavaan))
    (native-inputs (list r-knitr))
    (home-page "https://sfcheung.github.io/lavaan.printer/")
    (synopsis "Helper Functions for Printing 'lavaan' Outputs")
    (description
     "Helpers for customizing selected outputs from lavaan by Rosseel (2012)
<doi:10.18637/jss.v048.i02> and print them.  The functions are intended to be
used by package developers in their packages and so are not designed to be
user-friendly.  They are designed to be let developers customize the tables by
other functions.  Currently the parameter estimates tables of a fitted object
are supported.")
    (license license:gpl3+)))

(define-public r-lavaan-mi
  (package
    (name "r-lavaan-mi")
    (version "0.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lavaan.mi" version))
       (sha256
        (base32 "1b8m65ass9fr147wyfnbwdr0a2wg90h72k2bhwpf9gxz3khfm7i2"))))
    (properties `((upstream-name . "lavaan.mi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lavaan))
    (home-page "https://github.com/TDJorgensen/lavaan.mi")
    (synopsis "Fit Structural Equation Models to Multiply Imputed Data")
    (description
     "The primary purpose of lavaan.mi is to extend the functionality of the R package
lavaan', which implements structural equation modeling (SEM).  When incomplete
data have been multiply imputed, the imputed data sets can be analyzed by lavaan
using complete-data estimation methods, but results must be pooled across
imputations (Rubin, 1987, <doi:10.1002/9780470316696>).  The lavaan.mi package
automates the pooling of point and standard-error estimates, as well as a
variety of test statistics, using a familiar interface that allows users to fit
an SEM to multiple imputations as they would to a single data set using the
lavaan package.")
    (license license:gpl2+)))

(define-public r-latticekrig
  (package
    (name "r-latticekrig")
    (version "9.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LatticeKrig" version))
       (sha256
        (base32 "0spkbbpf6x990mv4s1dk9mhhavkjnn30m5q70gl34763flnbr0vm"))))
    (properties `((upstream-name . "LatticeKrig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spam64 r-spam r-fields r-fftwtools))
    (native-inputs (list gfortran))
    (home-page "https://www.r-project.org")
    (synopsis "Multi-Resolution Kriging Based on Markov Random Fields")
    (description
     "This package provides methods for the interpolation of large spatial datasets.
This package uses a basis function approach that provides a surface fitting
method that can approximate standard spatial data models.  Using a large number
of basis functions allows for estimates that can come close to interpolating the
observations (a spatial model with a small nugget variance.) Moreover, the
covariance model for this method can approximate the Matern covariance family
but also allows for a multi-resolution model and supports efficient computation
of the profile likelihood for estimating covariance parameters.  This is
accomplished through compactly supported basis functions and a Markov random
field model for the basis coefficients.  These features lead to sparse matrices
for the computations and this package makes of the R spam package for sparse
linear algebra.  An extension of this version over previous ones ( < 5.4 ) is
the support for different geometries besides a rectangular domain.  The Markov
random field approach combined with a basis function representation makes the
implementation of different geometries simple where only a few specific R
functions need to be added with most of the computation and evaluation done by
generic routines that have been tuned to be efficient.  One benefit of this
package's model/approach is the facility to do unconditional and conditional
simulation of the field for large numbers of arbitrary points.  There is also
the flexibility for estimating non-stationary covariances and also the case when
the observations are a linear combination (e.g. an integral) of the spatial
process.  Included are generic methods for prediction, standard errors for
prediction, plotting of the estimated surface and conditional and unconditional
simulation.  See the @code{LatticeKrigRPackage} @code{GitHub} repository for a
vignette of this package.  Development of this package was supported in part by
the National Science Foundation Grant 1417857 and the National Center for
Atmospheric Research.")
    (license license:gpl2+)))

(define-public r-latticedesign
  (package
    (name "r-latticedesign")
    (version "3.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LatticeDesign" version))
       (sha256
        (base32 "05gqazrqq3mpkhkcrgs64bsl9c0lwddvw3pkjd660mipy3chdr31"))))
    (properties `((upstream-name . "LatticeDesign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LatticeDesign")
    (synopsis "Lattice-Based Space-Filling Designs")
    (description
     "Lattice-based space-filling designs with fill or separation distance properties
including interleaved lattice-based minimax distance designs proposed in Xu He
(2017) <doi:10.1093/biomet/asx036>, interleaved lattice-based maximin distance
designs proposed in Xu He (2018) <doi:10.1093/biomet/asy069>, interleaved
lattice-based designs with low fill and high separation distance properties
proposed in Xu He (2024) <doi:10.1137/23M156940X>, rotated sphere packing
designs proposed in Xu He (2017) <doi:10.1080/01621459.2016.1222289>, sliced
rotated sphere packing designs proposed in Xu He (2019)
<doi:10.1080/00401706.2018.1458655>, and densest packing-based maximum
projections designs proposed in Xu He (2021) <doi:10.1093/biomet/asaa057> and Xu
He (2018) <doi:10.48550/@code{arXiv.1709.02062>}.")
    (license license:lgpl2.1)))

(define-public r-latticedensity
  (package
    (name "r-latticedensity")
    (version "1.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latticeDensity" version))
       (sha256
        (base32 "14znz7qfnrgixpcc48iyja1qqz102vanzayymzrv7wfail1rp8w6"))))
    (properties `((upstream-name . "latticeDensity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-splancs
                             r-spdep
                             r-spatstat-geom
                             r-spatstat
                             r-spatialreg
                             r-spam
                             r-sp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=latticeDensity")
    (synopsis
     "Density Estimation and Nonparametric Regression on Irregular Regions")
    (description
     "This package provides functions that compute the lattice-based density and
regression estimators for two-dimensional regions with irregular boundaries and
holes.  The density estimation technique is described in Barry and
@code{McIntyre} (2011) <doi:10.1016/j.ecolmodel.2011.02.016>, while the
non-parametric regression technique is described in @code{McIntyre} and Barry
(2018) <doi:10.1080/10618600.2017.1375935>.")
    (license license:gpl2)))

(define-public r-latte
  (package
    (name "r-latte")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latte" version))
       (sha256
        (base32 "0a6jw2yxyfl7hnj4w7ah5cyrkqas1ixfyxd8h3sqphilv2617946"))))
    (properties `((upstream-name . "latte")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usethis
                             r-stringr
                             r-mpoly
                             r-memoise
                             r-magrittr
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/dkahle/latte")
    (synopsis "Interface to 'LattE' and '4ti2'")
    (description
     "Back-end connections to @code{LattE} (<https://www.math.ucdavis.edu/~latte/>)
for counting lattice points and integration inside convex polytopes and 4ti2
(<http://www.4ti2.de/>) for algebraic, geometric, and combinatorial problems on
linear spaces and front-end tools facilitating their use in the R ecosystem.")
    (license license:gpl2)))

(define-public r-latrend
  (package
    (name "r-latrend")
    (version "1.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latrend" version))
       (sha256
        (base32 "1p468y9bnifk2ady9skc6521yzg1lv50m7m7wsliq5k0j2k6vq21"))))
    (properties `((upstream-name . "latrend")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown
                             r-rlang
                             r-rdpack
                             r-r-utils
                             r-matrixstats
                             r-magrittr
                             r-foreach
                             r-data-table
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/niekdt/latrend")
    (synopsis "Framework for Clustering Longitudinal Data")
    (description
     "This package provides a framework for clustering longitudinal datasets in a
standardized way.  The package provides an interface to existing R packages for
clustering longitudinal univariate trajectories, facilitating reproducible and
transparent analyses.  Additionally, standard tools are provided to support
cluster analyses, including repeated estimation, model validation, and model
assessment.  The interface enables users to compare results between methods, and
to implement and evaluate new methods with ease.  The akmedoids package is
available from <https://github.com/MAnalytics/akmedoids>.")
    (license license:gpl2+)))

(define-public r-latexsymb
  (package
    (name "r-latexsymb")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latexSymb" version))
       (sha256
        (base32 "0sdmp474vb8spbd3gwcl3c01cbss9gpjpa1a9l87m056wx1p3fl1"))))
    (properties `((upstream-name . "latexSymb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://nicoesve.github.io/latexSymb/")
    (synopsis "R Functions for Readable LaTeX Mathematical Expressions")
    (description
     "Build complex @code{LaTeX} mathematical expressions using intuitive R functions.
 Replace error-prone @code{LaTeX} syntax with readable, modular functions that
make mathematical typesetting straightforward and maintainable.")
    (license license:gpl3+)))

(define-public r-latexpdf
  (package
    (name "r-latexpdf")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latexpdf" version))
       (sha256
        (base32 "1drpb4mal389k7z3pcfkz68n3q5z1qjqdwp7q7k25awpvxjbrfbg"))))
    (properties `((upstream-name . "latexpdf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=latexpdf")
    (synopsis "Convert Tables to PDF or PNG")
    (description
     "Converts table-like objects to stand-alone PDF or PNG. Can be used to embed
tables and arbitrary content in PDF or Word documents.  Provides a low-level R
interface for creating @code{LaTeX} code, e.g. @code{command()} and a high-level
interface for creating PDF documents, e.g. @code{as.pdf.data.frame()}.
Extensive customization is available via mid-level functions, e.g.
@code{as.tabular()}.  See also package?latexpdf'.  Support for PNG is
experimental; see as.png.data.frame'.  Adapted from metrumrg
<https://r-forge.r-project.org/R/?group_id=1215>.  Requires a compatible
installation of pdflatex', e.g. <https://miktex.org/>.")
    (license license:gpl3)))

(define-public r-latexdiffr
  (package
    (name "r-latexdiffr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latexdiffr" version))
       (sha256
        (base32 "02myc3pgf8zmfd6ljknqlqakhhgb1dna2rbfa89v85gmf4fhsshh"))))
    (properties `((upstream-name . "latexdiffr")))
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
    (propagated-inputs (list r-rprojroot r-fs r-assertthat))
    (native-inputs (list esbuild))
    (home-page "https://github.com/hughjonesd/latexdiffr")
    (synopsis
     "Diff TeX, 'rmarkdown' or 'quarto' Files Using the 'latexdiff' Utility")
    (description
     "This package produces a PDF diff of two rmarkdown', quarto', Sweave or
@code{TeX} files, using the external latexdiff utility.")
    (license license:expat)))

(define-public r-latermodel
  (package
    (name "r-latermodel")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LATERmodel" version))
       (sha256
        (base32 "1dik3gzh3hm9wd32bbyj7jyks3aca32j3bbigjshlv5i3140k2nn"))))
    (properties `((upstream-name . "LATERmodel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rlang r-moments r-ggplot2 r-dplyr))
    (home-page "https://github.com/unimelbmdap/LATERmodel")
    (synopsis
     "Linear Approach to Threshold with Ergodic Rate for Reaction Times")
    (description
     "This package implements the Linear Approach to Threshold with Ergodic Rate
(LATER) model, which predicts distributions of reaction times and summarises
them with as little as two free parameters.  Allows for easy visualisation and
comparison of datasets, along with fitting of datasets using the LATER model.")
    (license license:expat)))

(define-public r-laterality
  (package
    (name "r-laterality")
    (version "0.9.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Laterality" version))
       (sha256
        (base32 "0n6qr6xbz79acjv2r1gic0cknpnm2cig37nzs7sb6x6hna39yscc"))))
    (properties `((upstream-name . "Laterality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ade4))
    (home-page "https://cran.r-project.org/package=Laterality")
    (synopsis
     "Functions to Calculate Common Laterality Statistics in Primatology")
    (description
     "Calculates and plots Handedness index (HI), absolute HI, mean HI and z-score
which are commonly used indexes for the study of hand preference (laterality) in
non-human primates.")
    (license license:gpl2+)))

(define-public r-latentnet
  (package
    (name "r-latentnet")
    (version "2.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latentnet" version))
       (sha256
        (base32 "1vd004bqcgjip2wrs5znk15yy45ay07cv4pa94x93kyri64v1g2g"))))
    (properties `((upstream-name . "latentnet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statnet-common
                             r-sna
                             r-network
                             r-mvtnorm
                             r-mass
                             r-ergm
                             r-coda
                             r-abind))
    (home-page "https://statnet.org")
    (synopsis "Latent Position and Cluster Models for Statistical Networks")
    (description
     "Fit and simulate latent position and cluster models for statistical networks.
See Krivitsky and Handcock (2008) <doi:10.18637/jss.v024.i05> and Krivitsky,
Handcock, Raftery, and Hoff (2009) <doi:10.1016/j.socnet.2009.04.001>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-latentgraph
  (package
    (name "r-latentgraph")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latentgraph" version))
       (sha256
        (base32 "11h7nrd81licvdikiwwfkz4x9i7drz09w5ns672b7fw0pj4qqgsr"))))
    (properties `((upstream-name . "latentgraph")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-pracma r-mass r-glmnet))
    (home-page "https://cran.r-project.org/package=latentgraph")
    (synopsis "Graphical Models with Latent Variables")
    (description
     "Three methods are provided to estimate graphical models with latent variables:
(1) Jin, Y., Ning, Y., and Tan, K. M. (2020) (preprint available); (2)
Chandrasekaran, V., Parrilo, P. A. & Willsky, A. S. (2012)
<doi:10.1214/11-AOS949>; (3) Tan, K. M., Ning, Y., Witten, D. M. & Liu, H.
(2016) <doi:10.1093/biomet/asw050>.")
    (license license:gpl3)))

(define-public r-latentfactor
  (package
    (name "r-latentfactor")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latentFactoR" version))
       (sha256
        (base32 "0zcvy7dafigv2zwjyyiwrs7zjn2j933ynfbwsk6qgzfbw1khh9bk"))))
    (properties `((upstream-name . "latentFactoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-rstudioapi
                             r-psych
                             r-mvtnorm
                             r-mlr
                             r-matrix
                             r-lavaan
                             r-ineq
                             r-googledrive
                             r-fspe
                             r-eganet
                             r-bbmisc))
    (home-page "https://cran.r-project.org/package=latentFactoR")
    (synopsis "Data Simulation Based on Latent Factors")
    (description
     "Generates data based on latent factor models.  Data can be continuous,
polytomous, dichotomous, or mixed.  Skews, cross-loadings, wording effects,
population errors, and local dependencies can be added.  All parameters can be
manipulated.  Data categorization is based on Garrido, Abad, and Ponsoda (2011)
<doi:10.1177/0013164410389489>.")
    (license license:gpl3+)))

(define-public r-latentcor
  (package
    (name "r-latentcor")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latentcor" version))
       (sha256
        (base32 "0c8ygjdqxb9zs6b42ncqh5va80vxamdphja18x8dazygynmcgjr0"))))
    (properties `((upstream-name . "latentcor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plotly
                             r-pcapp
                             r-mnormt
                             r-microbenchmark
                             r-matrix
                             r-mass
                             r-heatmaply
                             r-ggplot2
                             r-geometry
                             r-future
                             r-foreach
                             r-fmultivar
                             r-dorng
                             r-dofuture))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=latentcor")
    (synopsis "Fast Computation of Latent Correlations for Mixed Data")
    (description
     "The first stand-alone R package for computation of latent correlation that takes
into account all variable types (continuous/binary/ordinal/zero-inflated), comes
with an optimized memory footprint, and is computationally efficient,
essentially making latent correlation estimation almost as fast as rank-based
correlation estimation.  The estimation is based on latent copula Gaussian
models.  For continuous/binary types, see Fan, J., Liu, H., Ning, Y., and Zou,
H. (2017).  For ternary type, see Quan X., Booth J.G. and Wells M.T. (2018)
<@code{arXiv:1809.06255>}.  For truncated type or zero-inflated type, see Yoon
G., Carroll R.J. and Gaynanova I. (2020) <doi:10.1093/biomet/asaa007>.  For
approximation method of computation, see Yoon G., MÃ¼ller C.L. and Gaynanova I.
(2021) <doi:10.1080/10618600.2021.1882468>.  The latter method uses multi-linear
interpolation originally implemented in the R package
<https://cran.r-project.org/package=chebpol>.")
    (license license:gpl3)))

(define-public r-latentbma
  (package
    (name "r-latentbma")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LatentBMA" version))
       (sha256
        (base32 "0i2nfcbjiml6pzr0prbhwf5ywa1qxscrnbchsrs5gpwym3s9vibl"))))
    (properties `((upstream-name . "LatentBMA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-progress r-mnormt r-knitr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LatentBMA")
    (synopsis
     "Bayesian Model Averaging for Univariate Link Latent Gaussian Models")
    (description
     "Bayesian model averaging (BMA) algorithms for univariate link latent Gaussian
models (ULLGMs).  For detailed information, refer to Steel M.F.J. & Zens G.
(2024) \"Model Uncertainty in Latent Gaussian Models with Univariate Link
Function\" <doi:10.48550/@code{arXiv.2406.17318>}.  The package supports various
g-priors and a beta-binomial prior on the model space.  It also includes
auxiliary functions for visualizing and tabulating BMA results.  Currently, it
offers an out-of-the-box solution for model averaging of Poisson log-normal
(PLN) and binomial logistic-normal (@code{BiL}) models.  The codebase is
designed to be easily extendable to other likelihoods, priors, and link
functions.")
    (license license:expat)))

(define-public r-latent2likert
  (package
    (name "r-latent2likert")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latent2likert" version))
       (sha256
        (base32 "1fph5jfvmaw3js1gzv8vys5dck0kca9mysnqpyspsh53dwrji40p"))))
    (properties `((upstream-name . "latent2likert")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sn r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://lalovic.io/latent2likert/")
    (synopsis "Converting Latent Variables into Likert Scale Responses")
    (description
     "Effectively simulates the discretization process inherent to Likert scales while
minimizing distortion.  It converts continuous latent variables into ordinal
categories to generate Likert scale item responses.  Particularly useful for
accurately modeling and analyzing survey data that use Likert scales, especially
when applying statistical techniques that require metric data.")
    (license license:expat)))

(define-public r-latenetwork
  (package
    (name "r-latenetwork")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latenetwork" version))
       (sha256
        (base32 "0isqjsivywv51h1lf4fwvscib8sfgnpvvdq6gj9zzz7nrjpgf7k1"))))
    (properties `((upstream-name . "latenetwork")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statip r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://tkhdyanagi.github.io/latenetwork/")
    (synopsis "Inference on LATEs under Network Interference of Unknown Form")
    (description
     "Estimating causal parameters in the presence of treatment spillover is of great
interest in statistics.  This package provides tools for instrumental variables
estimation of average causal effects under network interference of unknown form.
 The target parameters are the local average direct effect, the local average
indirect effect, the local average overall effect, and the local average
spillover effect.  The methods are developed by Hoshino and Yanagi (2023)
<doi:10.48550/@code{arXiv.2108.07455>}.")
    (license license:expat)))

(define-public r-latdiag
  (package
    (name "r-latdiag")
    (version "0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latdiag" version))
       (sha256
        (base32 "13wk8vhiwr9drcx5f4wlgbin6hc83zv54yr4h3qhjagm3hxcxbw0"))))
    (properties `((upstream-name . "latdiag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack))
    (home-page "https://cran.r-project.org/package=latdiag")
    (synopsis "Draws Diagrams Useful for Checking Latent Scales")
    (description
     "This package provides a graph proposed by Rosenbaum is useful for checking some
properties of various sorts of latent scale, this program generates commands to
obtain the graph using dot from graphviz'.")
    (license license:gpl2)))

(define-public r-latcontrol
  (package
    (name "r-latcontrol")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "latcontrol" version))
       (sha256
        (base32 "1rkzc1kc5x5ndjl4p1jgzqc393cgb0sqm3x3pg5a5ci14j4jf8sf"))))
    (properties `((upstream-name . "latcontrol")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lavaan))
    (home-page "https://cran.r-project.org/package=latcontrol")
    (synopsis
     "Evaluation of the Role of Control Variables in Structural Equation Models")
    (description
     "Various opportunities to evaluate the effects of including one or more control
variable(s) in structural equation models onto model-implied variances,
covariances, and parameter estimates.  The derivation of the methodology
employed in this package can be obtained from BlÃ¶tner (2023)
<doi:10.31234/osf.io/dy79z>.")
    (license license:gpl3)))

(define-public r-lassosir
  (package
    (name "r-lassosir")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LassoSIR" version))
       (sha256
        (base32 "0y4lkzb7iw28g6bfdzh2kw09916ijmph4fikj8m2db4lmryzwhg3"))))
    (properties `((upstream-name . "LassoSIR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-glmnet))
    (home-page "https://cran.r-project.org/package=LassoSIR")
    (synopsis "Sparsed Sliced Inverse Regression via Lasso")
    (description
     "Estimate the sufficient dimension reduction space using sparsed sliced inverse
regression via Lasso (Lasso-SIR) introduced in Lin, Zhao, and Liu (2019)
<doi:10.1080/01621459.2018.1520115>.  The Lasso-SIR is consistent and achieve
the optimal convergence rate under certain sparsity conditions for the multiple
index models.")
    (license license:gpl3)))

(define-public r-lassonet
  (package
    (name "r-lassonet")
    (version "0.8.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LassoNet" version))
       (sha256
        (base32 "02m0g078wg9ka3ck92nrpqrm3msw1m7r8k43brcaiffqwhky99vy"))))
    (properties `((upstream-name . "LassoNet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=LassoNet")
    (synopsis "3CoSE Algorithm")
    (description
     "This package contains functions to estimate a penalized regression model using
3@code{CoSE} algorithm, see Weber, Striaukas, Schumacher Binder (2018)
<doi:10.2139/ssrn.3211163>.")
    (license license:gpl2+)))

(define-public r-lassogee
  (package
    (name "r-lassogee")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LassoGEE" version))
       (sha256
        (base32 "1zascnl9hihw0gx2ssmdiv8gcp2672kz9vmsp5vrc2wr9cdcdjz3"))))
    (properties `((upstream-name . "LassoGEE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-simcormultres
                             r-rcpparmadillo
                             r-rcpp
                             r-pgee
                             r-mvtnorm
                             r-mass
                             r-caret))
    (home-page "<https://github.com/liygCR/LassoGEE>")
    (synopsis "High-Dimensional Lasso Generalized Estimating Equations")
    (description
     "Fits generalized estimating equations with L1 regularization to longitudinal
data with high dimensional covariates.  Use a efficient iterative composite
gradient descent algorithm.")
    (license license:gpl2+)))

(define-public r-lassobacktracking
  (package
    (name "r-lassobacktracking")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LassoBacktracking" version))
       (sha256
        (base32 "0xd9y11k1wqmmjb8jjws6ivgcr2x6n7ra27d7mpa3adbvyxzj8dl"))))
    (properties `((upstream-name . "LassoBacktracking")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-matrix))
    (home-page "https://www.jmlr.org/papers/volume17/13-515/13-515.pdf")
    (synopsis
     "Modelling Interactions in High-Dimensional Data with Backtracking")
    (description
     "Implementation of the algorithm introduced in Shah, R. D. (2016)
<https://www.jmlr.org/papers/volume17/13-515/13-515.pdf>.  Data with thousands
of predictors can be handled.  The algorithm performs sequential Lasso fits on
design matrices containing increasing sets of candidate interactions.  Previous
fits are used to greatly speed up subsequent fits, so the algorithm is very
efficient.")
    (license license:gpl2+)))

(define-public r-larisk
  (package
    (name "r-larisk")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LARisk" version))
       (sha256
        (base32 "13d008v8aypqlx35bf16y7rcfcv5qnbsi8q0zpfcl03rzxmqpb8b"))))
    (properties `((upstream-name . "LARisk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LARisk")
    (synopsis
     "Estimation of Lifetime Attributable Risk of Cancer from Radiation Exposure")
    (description
     "Compute lifetime attributable risk of radiation-induced cancer reveals that it
can be helpful with enhancement of the flexibility in research with fast
calculation and various options.  Important reference papers include Berrington
de Gonzalez et al. (2012) <doi:10.1088/0952-4746/32/3/205>, National Research
Council (2006, ISBN:978-0-309-09156-5).")
    (license license:lgpl3)))

(define-public r-largevars
  (package
    (name "r-largevars")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Largevars" version))
       (sha256
        (base32 "1y5hszw2l9sq617x09msb89rp02m8vrq946x4pfzaf11cxsfpr2z"))))
    (properties `((upstream-name . "Largevars")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/eszter-kiss/Largevars")
    (synopsis "Testing Large VARs for the Presence of Cointegration")
    (description
     "Conducts a cointegration test for high-dimensional vector autoregressions (VARs)
of order k based on the large N,T asymptotics of Bykhovskaya and Gorin, 2022
(<doi:10.48550/@code{arXiv.2202.07150>}).  The implemented test is a
modification of the Johansen likelihood ratio test.  In the absence of
cointegration the test converges to the partial sum of the Airy-1 point process.
 This package contains simulated quantiles of the first ten partial sums of the
Airy-1 point process that are precise up to the first three digits.")
    (license license:expat)))

(define-public r-larf
  (package
    (name "r-larf")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LARF" version))
       (sha256
        (base32 "1sqib7smgjacn07ishwls1nlbvcb6fpp1vhrjwf9g4xf9jk30i8h"))))
    (properties `((upstream-name . "LARF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-formula))
    (home-page "https://cran.r-project.org/package=LARF")
    (synopsis
     "Local Average Response Functions for Instrumental Variable Estimation of Treatment Effects")
    (description
     "This package provides instrumental variable estimation of treatment effects when
both the endogenous treatment and its instrument are binary.  Applicable to both
binary and continuous outcomes.")
    (license license:gpl3)))

(define-public r-lareshiny
  (package
    (name "r-lareshiny")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lareshiny" version))
       (sha256
        (base32 "00pmlq3gz06p1g6xzx5y6n7ybljrhhmjnhi25chv3ii13r3nlfvf"))))
    (properties `((upstream-name . "lareshiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinywidgets
                             r-shinydashboard
                             r-shiny
                             r-miniui
                             r-htmltools
                             r-dt
                             r-dplyr))
    (home-page "https://github.com/laresbernardo/lareshiny")
    (synopsis "Lares 'shiny' Modules")
    (description
     "Useful shiny production-ready modules and helpers such as login window and
visualization tools.")
    (license license:agpl3)))

(define-public r-lares
  (package
    (name "r-lares")
    (version "5.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lares" version))
       (sha256
        (base32 "14qswq667s0cpxdlwlvrzzdzgrfkhm119ah5vxwyzpvsmw6chcm3"))))
    (properties `((upstream-name . "lares")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-stringr
                             r-rvest
                             r-rpart-plot
                             r-rpart
                             r-rlang
                             r-proc
                             r-patchwork
                             r-openxlsx
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/laresbernardo/lares")
    (synopsis "Lean Analytics and Robust Exploration Sidekick")
    (description
     "Auxiliary package for better/faster analytics, visualization, data mining, and
machine learning tasks.  With a wide variety of family functions, like Machine
Learning, Data Wrangling, Marketing Mix Modeling (Robyn), Exploratory, API, and
Scrapper, it helps the analyst or data scientist to get quick and robust
results, without the need of repetitive coding or advanced R programming skills.")
    (license license:agpl3)))

(define-public r-lans2r
  (package
    (name "r-lans2r")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lans2r" version))
       (sha256
        (base32 "0hk7rklkic4frp5w6k9kn5xi8hf3s87bgbjm58ca79sh3iyl0cnv"))))
    (properties `((upstream-name . "lans2r")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-reshape2
                             r-r-matlab
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/KopfLab/lans2r")
    (synopsis "Work with Look at NanoSIMS Data in R")
    (description
     "R interface for working with nanometer scale secondary ion mass spectrometry
(@code{NanoSIMS}) data exported from Look at @code{NanoSIMS}.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-languageserversetup
  (package
    (name "r-languageserversetup")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "languageserversetup" version))
       (sha256
        (base32 "05i8kcp1zpbkrqpq5vxxvxk9p7phyngxl0q6v76va0i7qnmy1v7a"))))
    (properties `((upstream-name . "languageserversetup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list procps))
    (home-page "https://github.com/jozefhajnala/languageserversetup")
    (synopsis "Automated Setup and Auto Run for R Language Server")
    (description
     "Allows to install the R languageserver with all dependencies into a separate
library and use that independent installation automatically when R is
instantiated as a language server process.  Useful for making language server
seamless to use without running into package version conflicts.")
    (license license:agpl3)))

(define-public r-languager
  (package
    (name "r-languager")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "languageR" version))
       (sha256
        (base32 "0x7r80v3rpjh961q6jgdy8bca894wgfvhp5vgqd6l8nqny1y5qrp"))))
    (properties `((upstream-name . "languageR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=languageR")
    (synopsis
     "Data Sets and Functions with Analyzing Linguistic Data: A Practical Introduction to Statistics")
    (description
     "Data sets exemplifying statistical methods, and some facilitatory utility
functions used in ``Analyzing Linguistic Data: A practical introduction to
statistics using R'', Cambridge University Press, 2008.")
    (license license:gpl2+)))

(define-public r-languagelayer
  (package
    (name "r-languagelayer")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "languagelayeR" version))
       (sha256
        (base32 "1q82shdcdd84nr6bnfwgyyb81z8dycvj1i3vhwvdg710s15rgiyk"))))
    (properties `((upstream-name . "languagelayeR")))
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
    (propagated-inputs (list r-jsonlite r-httr r-curl r-attempt))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ColinFay/languagelayer")
    (synopsis "Access the 'languagelayer' API")
    (description
     "Improve your text analysis with languagelayer <https://languagelayer.com>, a
powerful language detection API.")
    (license license:expat)))

(define-public r-langevitour
  (package
    (name "r-langevitour")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "langevitour" version))
       (sha256
        (base32 "0ji2dzn74m3b4b0r9hd8qrzz74qbh8b9fd9iag42hd9lrsc5n5sv"))))
    (properties `((upstream-name . "langevitour")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rann r-htmlwidgets r-crosstalk r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://logarithmic.net/langevitour/")
    (synopsis "Langevin Tour")
    (description
     "An HTML widget that randomly tours 2D projections of numerical data.  A random
walk through projections of the data is shown.  The user can manipulate the plot
to use specified axes, or turn on Guided Tour mode to find an informative
projection of the data.  Groups within the data can be hidden or shown, as can
particular axes.  Points can be brushed, and the selection can be linked to
other widgets using crosstalk.  The underlying method to produce the random walk
and projection pursuit uses Langevin dynamics.  The widget can be used from
within R, or included in a self-contained R Markdown or Quarto document or
presentation, or used in a Shiny app.")
    (license license:expat)))

(define-public r-langevin
  (package
    (name "r-langevin")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Langevin" version))
       (sha256
        (base32 "18pri14f9x4svcdq100lmzjjqahnkw83z3a62r48pqrs14zap7hw"))))
    (properties `((upstream-name . "Langevin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://gitlab.uni-oldenburg.de/TWiSt/Langevin")
    (synopsis "Langevin Analysis in One and Two Dimensions")
    (description
     "Estimate drift and diffusion functions from time series and generate synthetic
time series from given drift and diffusion coefficients.")
    (license license:gpl2+)))

(define-public r-landsepi
  (package
    (name "r-landsepi")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landsepi" version))
       (sha256
        (base32 "1n0ymmycgpfmv7drlazkws7vyw868lwkdyw2gfsb7fl615qwg6j3"))))
    (properties `((upstream-name . "landsepi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-testthat
                             r-splancs
                             r-sp
                             r-sf
                             r-rsqlite
                             r-rcpp
                             r-mvtnorm
                             r-matrix
                             r-foreach
                             r-fields
                             r-doparallel
                             r-desolve
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://csiro-inra.pages.biosp.inrae.fr/landsepi/")
    (synopsis "Landscape Epidemiology and Evolution")
    (description
     "This package provides a stochastic, spatially-explicit, demo-genetic model
simulating the spread and evolution of a plant pathogen in a heterogeneous
landscape to assess resistance deployment strategies.  It is based on a spatial
geometry for describing the landscape and allocation of different cultivars, a
dispersal kernel for the dissemination of the pathogen, and a SEIR
('Susceptible-Exposed-Infectious-Removedâ) structure with a discrete time
step.  It provides a useful tool to assess the performance of a wide range of
deployment options with respect to their epidemiological, evolutionary and
economic outcomes.  Loup Rimbaud, Julien PapaÃ¯x, Jean-FranÃ§ois Rey, Luke G
Barrett, Peter H Thrall (2018) <doi:10.1371/journal.pcbi.1006067>.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-landscaper
  (package
    (name "r-landscaper")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landscapeR" version))
       (sha256
        (base32 "1x8lfsvg995hkhik526w256phzdwwvb61i97zapyzwqpdqrrng9m"))))
    (properties `((upstream-name . "landscapeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dariomasante/landscapeR")
    (synopsis "Categorical Landscape Simulation Facility")
    (description
     "Simulates categorical maps on actual geographical realms, starting from either
empty landscapes or landscapes provided by the user (e.g. land use maps).
Allows to tweak or create landscapes while retaining a high degree of control on
its features, without the hassle of specifying each location attribute.  In this
it differs from other tools which generate null or neutral landscapes in a
theoretical space.  The basic algorithm currently implemented uses a simple
agent style/cellular automata growth model, with no rules (apart from areas of
exclusion) and von Neumann neighbourhood (four cells, aka Rook case).  Outputs
are raster dataset exportable to any common GIS format.")
    (license license:gpl2+)))

(define-public r-landscapemetrics
  (package
    (name "r-landscapemetrics")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landscapemetrics" version))
       (sha256
        (base32 "0vd7wdcjwy6v97xknl890knj5vjwbfpyxk1xns5wz077h8vkx3mj"))))
    (properties `((upstream-name . "landscapemetrics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-terra
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://r-spatialecology.github.io/landscapemetrics/")
    (synopsis "Landscape Metrics for Categorical Map Patterns")
    (description
     "Calculates landscape metrics for categorical landscape patterns in a tidy
workflow.  landscapemetrics reimplements the most common metrics from FRAGSTATS
(<https://www.fragstats.org/>) and new ones from the current literature on
landscape metrics.  This package supports terra @code{SpatRaster} objects as
input arguments.  It further provides utility functions to visualize patches,
select metrics and building blocks to develop new metrics.")
    (license license:gpl3)))

(define-public r-landsat
  (package
    (name "r-landsat")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landsat" version))
       (sha256
        (base32 "13xjpw9hd1hhcs6d7xw9dc36808zjyqw3isn0ayafpww0wvv073n"))))
    (properties `((upstream-name . "landsat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp r-mgcv r-lmodel2))
    (home-page "https://cran.r-project.org/package=landsat")
    (synopsis "Radiometric and Topographic Correction of Satellite Imagery")
    (description
     "Processing of Landsat or other multispectral satellite imagery.  Includes
relative normalization, image-based radiometric correction, and topographic
correction options.  The original package description was published as Goslee
(2011) <doi:10.18637/jss.v043.i04>, and details of the topographic corrections
in Goslee (2012) <doi:10.14358/PERS.78.9.973>.")
    (license license:gpl2+)))

(define-public r-landpred
  (package
    (name "r-landpred")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landpred" version))
       (sha256
        (base32 "0xbmr896fyl2gvh6vy7fy7aixa5n2ycvwm509z6ys5wh0r8p296k"))))
    (properties `((upstream-name . "landpred")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=landpred")
    (synopsis "Landmark Prediction of a Survival Outcome")
    (description
     "This package provides functions for landmark prediction of a survival outcome
incorporating covariate and short-term event information.  For more information
about landmark prediction please see: Parast, Layla, Su-Chun Cheng, and Tianxi
Cai.  Incorporating short-term outcome information to predict long-term survival
with discrete markers.  Biometrical Journal 53.2 (2011): 294-307,
<doi:10.1002/bimj.201000150>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-landmulti
  (package
    (name "r-landmulti")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landmulti" version))
       (sha256
        (base32 "1wqkrx4pxi1zzllm802y6wfhfpam7g3nbzgwj71ragk2psxa351a"))))
    (properties `((upstream-name . "landmulti")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-snow r-nmof r-landpred r-emdbook))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=landmulti")
    (synopsis "Landmark Prediction with Multiple Short-Term Events")
    (description
     "This package contains functions for a flexible varying-coefficient landmark
model by incorporating multiple short-term events into the prediction of
long-term survival probability.  For more information about landmark prediction
please see Li, W., Ning, J., Zhang, J., Li, Z., Savitz, S.I., Tahanan, A.,
Rahbar.M.H., (2023+). \"Enhancing Long-term Survival Prediction with Multiple
Short-term Events: Landmarking with A Flexible Varying Coefficient Model\".")
    (license license:gpl3)))

(define-public r-landmix
  (package
    (name "r-landmix")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landmix" version))
       (sha256
        (base32 "0qa5l82102r8y7sj7v5vcpqg93j2bpszp7fhlbxrzjxpisdh9vgx"))))
    (properties `((upstream-name . "landmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=landmix")
    (synopsis "Landmark Prediction for Mixture Data")
    (description
     "Non-parametric prediction of survival outcomes for mixture data that
incorporates covariates and a landmark time.  Details are described in Garcia
(2021) <doi:10.1093/biostatistics/kxz052>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-landmarking
  (package
    (name "r-landmarking")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Landmarking" version))
       (sha256
        (base32 "1gkfv1xcjkbh417kv9dkflfg6agvgrd893v8ams25c2pazfmrmnz"))))
    (properties `((upstream-name . "Landmarking")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-riskregression
                             r-prodlim
                             r-pec
                             r-nlme
                             r-mstate
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/isobelbarrott/Landmarking/")
    (synopsis "Analysis using Landmark Models")
    (description
     "The landmark approach allows survival predictions to be updated dynamically as
new measurements from an individual are recorded.  The idea is to set predefined
time points, known as \"landmark times\", and form a model at each landmark time
using only the individuals in the risk set.  This package allows the
longitudinal data to be modelled either using the last observation carried
forward or linear mixed effects modelling.  There is also the option to model
competing risks, either through cause-specific Cox regression or Fine-Gray
regression.  To find out more about the methods in this package, please see
<https://isobelbarrott.github.io/Landmarking/articles/Landmarking>.")
    (license license:gpl2+)))

(define-public r-landform
  (package
    (name "r-landform")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landform" version))
       (sha256
        (base32 "0i99glylj0nz3r5i0p22ng9aygmjkh7q2ynw02z7jm3bfpw0wmv0"))))
    (properties `((upstream-name . "landform")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra))
    (home-page "https://cran.r-project.org/package=landform")
    (synopsis "Topographic Position Index-Based Landform Classification")
    (description
     "This package provides a function for classifying a landscape into different
categories based on the Topographic Position Index (TPI) and slope.  It offers
two types of classifications: Slope Position Classification, and Landform
Classification.  The function internally calculates the TPI for the given
landscape and then uses it along with the slope to perform the classification.
Optionally, descriptive statistics for every class are calculated and plotted.
The classifications are useful for identifying the position of a location on a
slope and for identifying broader landform types.")
    (license license:gpl2+)))

(define-public r-landest
  (package
    (name "r-landest")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "landest" version))
       (sha256
        (base32 "1cr1qiz42j64yxpbpyll1l3lxazh1qq0ia4mh0qdyjk14kyyf9q0"))))
    (properties `((upstream-name . "landest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=landest")
    (synopsis "Landmark Estimation of Survival and Treatment Effect")
    (description
     "This package provides functions to estimate survival and a treatment effect
using a landmark estimation approach.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-landcomp
  (package
    (name "r-landcomp")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LandComp" version))
       (sha256
        (base32 "0lf9hypqhcic83r7xsb3w602sf4qgq2358n7rpiqisrpflh7w1pd"))))
    (properties `((upstream-name . "LandComp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-future-apply r-future))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ladylavender/LandComp")
    (synopsis
     "Analysing Landscape Composition and Structure at Multiple Scales")
    (description
     "Changes of landscape diversity and structure can be detected soon if relying on
landscape class combinations and analysing patterns at multiple scales.
@code{LandComp} provides such an opportunity, based on JuhÃ¡sz-Nagy's functions
(JuhÃ¡sz-Nagy P, Podani J 1983 <doi:10.1007/BF00129432>).  Functions can handle
multilayered data.  Requirements of the input: binary data contained by a
regular square or hexagonal grid, and the grid should have projected
coordinates.")
    (license license:expat)))

(define-public r-lancor
  (package
    (name "r-lancor")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lancor" version))
       (sha256
        (base32 "1wb50jy9qkb7knkmg2ghjb6h1s1c0y8mghaxn41pmbm9jzk8q6ym"))))
    (properties `((upstream-name . "lancor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sn r-boot r-arrangements r-acepack))
    (home-page "https://cran.r-project.org/package=lancor")
    (synopsis "Statistical Inference via Lancaster Correlation")
    (description
     "Implementation of the methods described in Holzmann, Klar (2024)
<doi:10.48550/@code{arXiv.2303.17872>}.  Lancaster correlation is a correlation
coefficient which equals the absolute value of the Pearson correlation for the
bivariate normal distribution, and is equal to or slightly less than the maximum
correlation coefficient for a variety of bivariate distributions.  Rank and
moment-based estimators and corresponding confidence intervals are implemented,
as well as independence tests based on these statistics.")
    (license license:gpl2)))

(define-public r-lamme
  (package
    (name "r-lamme")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lamme" version))
       (sha256
        (base32 "1x9jl79iqikpjixajly1k8w2nkzskns2m0v242giknl0ikw298h1"))))
    (properties `((upstream-name . "lamme")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lamme")
    (synopsis "Log-Analytic Methods for Multiplicative Effects")
    (description
     "Log-analytic methods intended for testing multiplicative effects.")
    (license license:gpl3)))

(define-public r-lamle
  (package
    (name "r-lamle")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lamle" version))
       (sha256
        (base32 "08fsylhqpk8hqm9kbqc4vlhmpaddr9cpgjjxvlfc9xqhnyhg7p3d"))))
    (properties `((upstream-name . "lamle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-numderiv r-mvtnorm
                             r-fastghquad))
    (home-page "https://cran.r-project.org/package=lamle")
    (synopsis "Maximum Likelihood Estimation of Latent Variable Models")
    (description
     "Approximate marginal maximum likelihood estimation of multidimensional latent
variable models via adaptive quadrature or Laplace approximations to the
integrals in the likelihood function, as presented for confirmatory factor
analysis models in Jin, S., Noh, M., and Lee, Y. (2018)
<doi:10.1080/10705511.2017.1403287>, for item response theory models in
Andersson, B., and Xin, T. (2021) <doi:10.3102/1076998620945199>, and for
generalized linear latent variable models in Andersson, B., Jin, S., and Zhang,
M. (2023) <doi:10.1016/j.csda.2023.107710>.  Models implemented include the
generalized	partial credit model, the graded response model, and generalized
linear latent variable models for Poisson, negative-binomial and normal
distributions.  Supports a combination of binary, ordinal, count and continuous
observed variables and multiple	group models.")
    (license license:gpl2+)))

(define-public r-laminr
  (package
    (name "r-laminr")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "laminr" version))
       (sha256
        (base32 "0q55rq71476kx586rd3663wygyc1c023nf2fxbvsi7zs57ma0lcz"))))
    (properties `((upstream-name . "laminr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-rlang
                             r-reticulate
                             r-r6
                             r-r-utils
                             r-purrr
                             r-pak
                             r-lifecycle
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://laminr.lamin.ai")
    (synopsis "Client for 'LaminDB'")
    (description
     "Interact with @code{LaminDB}'. @code{LaminDB} is an open-source data framework
for biology.  This package allows you to query and download data from
@code{LaminDB} instances.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-lambdr
  (package
    (name "r-lambdr")
    (version "1.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lambdr" version))
       (sha256
        (base32 "1vbaxy15a925lmc9a6d0b9yxivw0gd6pw4a89acg797y84fgmyl4"))))
    (properties `((upstream-name . "lambdr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-logger r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://lambdr.mdneuzerling.com/")
    (synopsis
     "Create a Runtime for Serving Containerised R Functions on 'AWS Lambda'")
    (description
     "Runtime for serving containers that can execute R code on the AWS Lambda
serverless compute service <https://aws.amazon.com/lambda/>.  Provides the
necessary functionality for handling the various endpoints required for
accepting new input and sending responses.")
    (license license:expat)))

(define-public r-lambdats
  (package
    (name "r-lambdats")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lambdaTS" version))
       (sha256
        (base32 "0fb44q5997588y6cv10kq3jv3qvwhg99q15i4cka4hsww08i9ib2"))))
    (properties `((upstream-name . "lambdaTS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-torch
                             r-tictoc
                             r-stringr
                             r-scales
                             r-readr
                             r-purrr
                             r-narray
                             r-modeest
                             r-lubridate
                             r-imputets
                             r-ggplot2
                             r-fancova
                             r-car
                             r-bizdays
                             r-abind))
    (home-page "https://cran.r-project.org/package=lambdaTS")
    (synopsis
     "Variational Seq2Seq Model with Lambda Transformer for Time Series Analysis")
    (description
     "Time series analysis based on lambda transformer and variational seq2seq, built
on Torch'.")
    (license license:gpl3)))

(define-public r-lama
  (package
    (name "r-lama")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LaMa" version))
       (sha256
        (base32 "1z33f7cr72swmfsffmpq4s1jy32ixsyy0qimpfk66azdhzi3p6pj"))))
    (properties `((upstream-name . "LaMa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-splines2
                             r-sn
                             r-rtmb
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-mgcv
                             r-matrix
                             r-mass
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://janoleko.github.io/LaMa/")
    (synopsis
     "Fast Numerical Maximum Likelihood Estimation for Latent Markov Models")
    (description
     "This package provides a variety of latent Markov models, including hidden Markov
models, hidden semi-Markov models, state-space models and continuous-time
variants can be formulated and estimated within the same framework via directly
maximising the likelihood function using the so-called forward algorithm.
Applied researchers often need custom models that standard software does not
easily support.  Writing tailored R code offers flexibility but suffers from
slow estimation speeds.  We address these issues by providing easy-to-use
functions (written in C++ for speed) for common tasks like the forward
algorithm.  These functions can be combined into custom models in a Lego-type
approach, offering up to 10-20 times faster estimation via standard numerical
optimisers.  To aid in building fully custom likelihood functions, several
vignettes are included that show how to simulate data from and estimate all the
above model classes.")
    (license license:gpl3)))

(define-public r-lam
  (package
    (name "r-lam")
    (version "0.7-22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LAM" version))
       (sha256
        (base32 "02kssj47nmps5yf4hqa2g9mwbml52gckj19w7mpqahzlnzib9xi3"))))
    (properties `((upstream-name . "LAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sirt r-rcpparmadillo r-rcpp r-cdm))
    (home-page "https://github.com/alexanderrobitzsch/LAM")
    (synopsis "Some Latent Variable Models")
    (description
     "Includes some procedures for latent variable modeling with a particular focus on
multilevel data.  The LAM package contains mean and covariance structure
modelling for multivariate normally distributed data @code{(mlnormal()};
Longford, 1987; <doi:10.1093/biomet/74.4.817>), a general Metropolis-Hastings
algorithm @code{(amh()}; Roberts & Rosenthal, 2001, <doi:10.1214/ss/1015346320>)
and penalized maximum likelihood estimation @code{(pmle()}; Cole, Chu &
Greenland, 2014; <doi:10.1093/aje/kwt245>).")
    (license license:gpl2+)))

(define-public r-lakhesis
  (package
    (name "r-lakhesis")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lakhesis" version))
       (sha256
        (base32 "0jbzzpvqid3samq90m3d8p0ac2cfh1qaqiglr19xpzlif63sl34y"))))
    (properties `((upstream-name . "lakhesis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinydashboard
                             r-shiny
                             r-readr
                             r-rdpack
                             r-ggplot2
                             r-ca
                             r-bslib))
    (home-page "https://cran.r-project.org/package=lakhesis")
    (synopsis "Consensus Seriation for Binary Data")
    (description
     "Determining consensus seriations for binary incidence matrices, using a two-step
process of Procrustes-fit correspondence analysis for heuristic selection of
partial seriations and iterative regression to establish a single consensus.
Contains the Lakhesis Calculator, a graphical platform for identifying seriated
sequences.  Collins-Elliott (2024)
<https://volweb.utk.edu/~scolli46/@code{sceLakhesis.pdf>}.")
    (license license:gpl3+)))

(define-public r-laketemps
  (package
    (name "r-laketemps")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "laketemps" version))
       (sha256
        (base32 "04742r379bzgbfr4243wwkb26cvfmnw50jzgygq7vblq00grzska"))))
    (properties `((upstream-name . "laketemps")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2 r-dplyr))
    (home-page "https://cran.r-project.org/package=laketemps")
    (synopsis
     "Lake Temperatures Collected by Situ and Satellite Methods from 1985-2009")
    (description
     "Lake temperature records, metadata, and climate drivers for 291 global lakes
during the time period 1985-2009.  Temperature observations were collected using
satellite and in situ methods.  Climatic drivers and geomorphometric
characteristics were also compiled and are included for each lake.  Data are
part of the associated publication from the Global Lake Temperature
Collaboration project (http://www.laketemperature.org).  See
citation('laketemps') for dataset attribution.")
    (license license:cc0)))

(define-public r-lakemorpho
  (package
    (name "r-lakemorpho")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lakemorpho" version))
       (sha256
        (base32 "11bvrr4h9bxa01sf6qilgglhljmfpfil5yz1xrwlyaiv091gvlfp"))))
    (properties `((upstream-name . "lakemorpho")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp r-sf r-raster r-geosphere r-cluster))
    (home-page "https://github.com/jhollist/lakemorpho/")
    (synopsis "Lake Morphometry Metrics")
    (description
     "Lake morphometry metrics are used by limnologists to understand, among other
things, the ecological processes in a lake.  Traditionally, these metrics are
calculated by hand, with planimeters, and increasingly with commercial GIS
products.  All of these methods work; however, they are either outdated,
difficult to reproduce, or require expensive licenses to use.  The lakemorpho
package provides the tools to calculate a typical suite of these metrics from an
input elevation model and lake polygon.  The metrics currently supported are:
fetch, major axis, minor axis, major/minor axis ratio, maximum length, maximum
width, mean width, maximum depth, mean depth, shoreline development, shoreline
length, surface area, and volume.")
    (license license:cc0)))

(define-public r-lakemetabolizer
  (package
    (name "r-lakemetabolizer")
    (version "1.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LakeMetabolizer" version))
       (sha256
        (base32 "09j4k5r441jpbxv9x6j9j5mlcl7yh2ydhfy55wx614wdlv862jn9"))))
    (properties `((upstream-name . "LakeMetabolizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlakeanalyzer r-plyr))
    (home-page "https://www.tandfonline.com/doi/abs/10.1080/IW-6.4.883")
    (synopsis "Tools for the Analysis of Ecosystem Metabolism")
    (description
     "This package provides a collection of tools for the calculation of freewater
metabolism from in situ time series of dissolved oxygen, water temperature, and,
optionally, additional environmental variables. @code{LakeMetabolizer}
implements 5 different metabolism models with diverse statistical underpinnings:
bookkeeping, ordinary least squares, maximum likelihood, Kalman filter, and
Bayesian.  Each of these 5 metabolism models can be combined with 1 of 7 models
for computing the coefficient of gas exchange across the airâwater interface
(k). @code{LakeMetabolizer} also features a variety of supporting functions that
compute conversions and implement calculations commonly applied to raw data
prior to estimating metabolism (e.g., oxygen saturation and optical conversion
models).")
    (license license:gpl2+)))

(define-public r-lair
  (package
    (name "r-lair")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LAIr" version))
       (sha256
        (base32 "092dk6fhp0fkd2fxhwqxfhrm4im1z8dvyd9kg4m2dbyyn17h5i1c"))))
    (properties `((upstream-name . "LAIr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-stringr r-purrr r-dplyr))
    (home-page "https://cran.r-project.org/package=LAIr")
    (synopsis "Converting NDVI to LAI of Field, Proximal and Satellite Data")
    (description
     "Convert Leaf Area Index (LAI) from the Normalized Difference Vegetation Index
(NDVI) using available equations from literature.  Detailed description of
conversion equations in Bajocco et al.  2022 <doi:10.3390/rs14153554>.")
    (license license:expat)))

(define-public r-lahman
  (package
    (name "r-lahman")
    (version "12.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Lahman" version))
       (sha256
        (base32 "0va8aq63knhwm2dk87bi0c94q0yqbmrplwih4za0mkdmv8r5i7lb"))))
    (properties `((upstream-name . "Lahman")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=Lahman")
    (synopsis "Sean 'Lahman' Baseball Database")
    (description
     "This package provides the tables from the Sean Lahman Baseball Database as a set
of R data.frames.  It uses the data on pitching, hitting and fielding
performance and other tables from 1871 through 2023, as recorded in the 2024
version of the database.  Documentation examples show how many baseball
questions can be investigated.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lagsequential
  (package
    (name "r-lagsequential")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LagSequential" version))
       (sha256
        (base32 "1i8h4acfx21r0kxbg4i0k48kvhwy2abri191wp4b22amhz4vqyyd"))))
    (properties `((upstream-name . "LagSequential")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=LagSequential")
    (synopsis "Lag-Sequential Categorical Data Analysis")
    (description
     "Lag-sequential analysis is a method of assessing of patterns (what tends to
follow what?) in sequences of codes.  The codes are typically for discrete
behaviors or states.  The functions in this package read a stream of codes, or a
frequency transition matrix, and produce a variety of lag sequential statistics,
including transitional frequencies, expected transitional frequencies,
transitional probabilities, z values, adjusted residuals, Yule's Q values,
likelihood ratio tests of stationarity across time and homogeneity across groups
or segments, transformed kappas for unidirectional dependence, bidirectional
dependence, parallel and nonparallel dominance, and significance levels based on
both parametric and randomization tests.  The methods are described in Bakeman &
Quera (2011) <doi:10.1017/CBO9781139017343>, O'Connor (1999)
<doi:10.3758/BF03200753>, Wampold & Margolin (1982)
<doi:10.1037/0033-2909.92.3.755>, and Wampold (1995, ISBN:0-89391-919-5).")
    (license license:gpl2+)))

(define-public r-lagsarlmtree
  (package
    (name "r-lagsarlmtree")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lagsarlmtree" version))
       (sha256
        (base32 "1v3a580scxb1v5na3ab3ax9qlzbnay7nhm3ln5l8f9zgsqrg5lyh"))))
    (properties `((upstream-name . "lagsarlmtree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatialreg r-partykit r-formula))
    (home-page "https://cran.r-project.org/package=lagsarlmtree")
    (synopsis "Spatial Lag Model Trees")
    (description
     "Model-based linear model trees adjusting for spatial correlation using a
simultaneous autoregressive spatial lag, Wagner and Zeileis (2019)
<doi:10.1111/geer.12146>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-lagp
  (package
    (name "r-lagp")
    (version "1.5-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "laGP" version))
       (sha256
        (base32 "1wwmy662mpifphf3bbaqamg9mnvb3rbxhpf1p00r6xqg2xfzgx1b"))))
    (properties `((upstream-name . "laGP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tgp))
    (home-page "https://bobby.gramacy.com/r_packages/laGP/")
    (synopsis "Local Approximate Gaussian Process Regression")
    (description
     "This package performs approximate GP regression for large computer experiments
and spatial datasets.  The approximation is based on finding small local designs
for prediction (independently) at particular inputs. @code{OpenMP} and SNOW
parallelization are supported for prediction over a vast out-of-sample testing
set; GPU acceleration is also supported for an important subroutine.
@code{OpenMP} and GPU features may require special compilation.  An interface to
lower-level (full) GP inference and prediction is provided.  Wrapper routines
for blackbox optimization under mixed equality and inequality constraints via an
augmented Lagrangian scheme, and for large scale computer model calibration, are
also provided.  For details and tutorial, see Gramacy (2016
<doi:10.18637/jss.v072.i01>.")
    (license license:lgpl2.0+)))

(define-public r-lagosne
  (package
    (name "r-lagosne")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LAGOSNE" version))
       (sha256
        (base32 "03x2ghcpl1ibpic4msb1n3n8fqbxjnv357phlb2a7y5lmy4fb1ny"))))
    (properties `((upstream-name . "LAGOSNE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-rappdirs
                             r-qs
                             r-purrr
                             r-progress
                             r-memoise
                             r-magrittr
                             r-lazyeval
                             r-httr
                             r-dplyr
                             r-curl))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/cont-limno/LAGOSNE")
    (synopsis
     "Interface to the Lake Multi-Scaled Geospatial and Temporal Database")
    (description
     "Client for programmatic access to the Lake Multi-scaled Geospatial and Temporal
database <https://lagoslakes.org>, with functions for accessing lake water
quality and ecological context data for the US.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-lagged
  (package
    (name "r-lagged")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lagged" version))
       (sha256
        (base32 "1ss69jdmfz2al131mvhflaa4hcg71a0balpnc8vkf0f9svhkcs52"))))
    (properties `((upstream-name . "lagged")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/GeoBosh/lagged")
    (synopsis "Classes and Methods for Lagged Objects")
    (description
     "This package provides classes and methods for objects, whose indexing naturally
starts from zero.  Subsetting, indexing and mathematical operations are defined
naturally between lagged objects and lagged and base R objects.  Recycling is
not used, except for singletons.  The single bracket operator doesn't drop
dimensions by default.")
    (license license:gpl2+)))

(define-public r-ladderfuelsr
  (package
    (name "r-ladderfuelsr")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LadderFuelsR" version))
       (sha256
        (base32 "1zz76kpbf6nibwhsssgpis7wv90jnrilcxjv3xglwak9hm18a6f1"))))
    (properties `((upstream-name . "LadderFuelsR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-segmented
                             r-magrittr
                             r-ggplot2
                             r-gdata
                             r-dplyr))
    (home-page "https://github.com/olgaviedma/LadderFuelsR")
    (synopsis
     "Automated Tool for Vertical Fuel Continuity Analysis using Airborne Laser Scanning Data")
    (description
     "Set of tools for analyzing vertical fuel continuity at the tree level using
Airborne Laser Scanning data.  The workflow consisted of: 1) calculating the
vertical height profiles of each segmented tree; 2) identifying gaps and fuel
layers; 3) estimating the distance between fuel layers; and 4) retrieving the
fuel layers base height and depth.  Additionally, other functions recalculate
previous metrics after considering distances greater than certain threshold.
Moreover, the package calculates: i) the percentage of Leaf Area Density
comprised in each fuel layer, ii) remove fuel layers with Leaf Area Density
(LAD) percentage less than 10, and iii) recalculate the distances among the
reminder ones.  On the other hand, it identifies the crown base height (CBH)
based on different criteria: the fuel layer with the highest LAD percentage and
the fuel layers located at the largest- and at the last-distance.  When there is
only one fuel layer, it also identifies the CBH performing a segmented linear
regression (breaking points) on the cumulative sum of LAD as a function of
height.  Finally, a collection of plotting functions is developed to represent:
i) the initial gaps and fuel layers; ii) the fuels base height, depths and gaps
with distances greater than certain threshold and, iii) the CBH based on
different criteria.  The methods implemented in this package are original and
have not been published elsewhere.")
    (license license:gpl3)))

(define-public r-ladder
  (package
    (name "r-ladder")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ladder" version))
       (sha256
        (base32 "0pjn73jzihp5wicjczij1hghr0fr72lgimprj86gdw7mb73c9qq5"))))
    (properties `((upstream-name . "ladder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-httr
                             r-httpuv
                             r-gargle
                             r-flextable
                             r-curl
                             r-cli
                             r-checkmate))
    (home-page "https://www.r-ladder.com")
    (synopsis "Get on to the Slides")
    (description
     "Create tables from within R directly on Google Slides presentations.  Currently
supports matrix, data.frame and flextable objects.")
    (license license:expat)))

(define-public r-lad
  (package
    (name "r-lad")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LAD" version))
       (sha256
        (base32 "0qms5w9fx0hqjiq2wirckay6x9v0h99h6dhahfkba4vcfa8vxnkx"))))
    (properties `((upstream-name . "LAD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=LAD")
    (synopsis
     "Derive Leaf Angle Distribution (LAD) from Measured Leaf Inclination Angles")
    (description
     "Calculate mean statistics and leaf angle distribution type from measured leaf
inclination angles.  LAD distribution is fitted using a two-parameters (mu, nu)
Beta distribution and compared with six theoretical LAD distributions.
Additional information is provided in Chianucci and Cesaretti (2022)
<doi:10.1101/2022.10.28.513998>.")
    (license license:expat)))

(define-public r-lacunr
  (package
    (name "r-lacunr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lacunr" version))
       (sha256
        (base32 "132k5vis9k3snhfy3zl0py039pm1b12k70qijdkq11knhlng7b1b"))))
    (properties `((upstream-name . "lacunr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rcppthread
                             r-rcpparmadillo
                             r-rcpp
                             r-ggplot2
                             r-data-table
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ElliottSmeds/lacunr")
    (synopsis "Fast 3D Lacunarity for Voxel Data")
    (description
     "Calculates 3D lacunarity from voxel data.  It is designed for use with point
clouds generated from Light Detection And Ranging (@code{LiDAR}) scans in order
to measure the spatial heterogeneity of 3-dimensional structures such as forest
stands.  It provides fast C++ functions to efficiently bin point cloud data into
voxels and calculate lacunarity using different variants of the gliding-box
algorithm originated by Allain & Cloitre (1991)
<doi:10.1103/@code{PhysRevA.44.3552>}.")
    (license license:gpl3+)))

(define-public r-lacunaritycovariance
  (package
    (name "r-lacunaritycovariance")
    (version "1.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lacunaritycovariance" version))
       (sha256
        (base32 "10l5q4plnh1nnbcb3zh68mglrilcmlxsviznli8w8vzj2h5yfnhm"))))
    (properties `((upstream-name . "lacunaritycovariance")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-random r-spatstat-geom
                             r-spatstat-explore r-spatstat r-rcpproll))
    (home-page "https://github.com/kasselhingee/lacunaritycovariance")
    (synopsis
     "Gliding Box Lacunarity and Other Metrics for 2D Random Closed Sets")
    (description
     "This package provides functions for estimating the gliding box lacunarity (GBL),
covariance, and pair-correlation of a random closed set (RACS) in 2D from a
binary coverage map (e.g. presence-absence land cover maps).  Contains a number
of newly-developed covariance-based estimators of GBL (Hingee et al., 2019)
<doi:10.1007/s13253-019-00351-9> and balanced estimators, proposed by Picka
(2000) <http://www.jstor.org/stable/1428408>, for covariance, centred
covariance, and pair-correlation.  Also contains methods for estimating
contagion-like properties of RACS and simulating 2D Boolean models.  Binary
coverage maps are usually represented as raster images with pixel values of
TRUE, FALSE or NA, with NA representing unobserved pixels.  A demo for
extracting such a binary map from a geospatial data format is provided.  Binary
maps may also be represented using polygonal sets as the foreground, however for
most computations such maps are converted into raster images.  The package is
based on research conducted during the author's @code{PhD} studies.")
    (license license:gpl2+)))

(define-public r-lactater
  (package
    (name "r-lactater")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lactater" version))
       (sha256
        (base32 "11wv998mapys2hgwwdgvgllcjsd4y7g7p19kg419xlx3py0c077p"))))
    (properties `((upstream-name . "lactater")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-segmented
                             r-rlang
                             r-pracma
                             r-patchwork
                             r-minpack-lm
                             r-magrittr
                             r-lubridate
                             r-ggtext
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-broom))
    (home-page "https://cran.r-project.org/package=lactater")
    (synopsis "Tools for Analyzing Lactate Thresholds")
    (description
     "Set of tools for analyzing lactate thresholds from a step incremental test to
exhaustion.  Easily analyze the methods Log-log, Onset of Blood Lactate
Accumulation (OBLA), Baseline plus (Bsln+), Dmax, Lactate Turning Point (LTP),
and Lactate / Intensity ratio (LTratio) in cycling, running, or swimming.
Beaver WL, Wasserman K, Whipp BJ (1985) <doi:10.1152/jappl.1985.59.6.1936>.
Heck H, Mader A, Hess G, MÃ¼cke S, MÃ¼ller R, Hollmann W (1985)
<doi:10.1055/s-2008-1025824>.  Kindermann W, Simon G, Keul J (1979)
<doi:10.1007/BF00421101>.  Skinner JS, Mclellan TH (1980)
<doi:10.1080/02701367.1980.10609285>.  Berg A, Jakob E, Lehmann M, Dickhuth HH,
Huber G, Keul J (1990) PMID 2408033.  Zoladz JA, Rademaker AC, Sargeant AJ
(1995) <doi:10.1113/jphysiol.1995.sp020959>.  Cheng B, Kuipers H, Snyder A,
Keizer H, Jeukendrup A, Hesselink M (1992) <doi:10.1055/s-2007-1021309>.  Bishop
D, Jenkins DG, Mackinnon LT (1998) <doi:10.1097/00005768-199808000-00014>.
Hughson RL, Weisiger KH, Swanson GD (1987) <doi:10.1152/jappl.1987.62.5.1975>.
Jamnick NA, Botella J, Pyne DB, Bishop DJ (2018)
<doi:10.1371/journal.pone.0199794>.  Hofmann P, Tschakert G (2017)
<doi:10.3389/fphys.2017.00337>.  Hofmann P, Pokan R, von Duvillard SP, Seibert
FJ, Zweiker R, Schmid P (1997) <doi:10.1097/00005768-199706000-00005>.  Pokan R,
Hofmann P, Von Duvillard SP, et al. (1997)
<doi:10.1097/00005768-199708000-00009>.  Dickhuth H-H, Yin L, Niess A, et al.
(1999) <doi:10.1055/s-2007-971105>.")
    (license license:expat)))

(define-public r-lacrmr
  (package
    (name "r-lacrmr")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lacrmr" version))
       (sha256
        (base32 "1lkn9hynqviz50h9k69wir4ajpymkdm1cfyg7hankjwnkypjp8rv"))))
    (properties `((upstream-name . "lacrmr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-sjmisc
                             r-magrittr
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://ixpantia.github.io/lacrmr/")
    (synopsis "Connect to the 'Less Annoying CRM' API")
    (description
     "Connect to the Less Annoying CRM API with ease to get your crm data in a clean
and tidy format.  Less Annoying CRM is a simple CRM built for small businesses,
more information is available on their website
<https://www.lessannoyingcrm.com/>.")
    (license license:gpl3)))

(define-public r-lacm
  (package
    (name "r-lacm")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lacm" version))
       (sha256
        (base32 "17ijc0q774rz5as1jpi7pxhp0hhh6nz6jlf110429s15haip425v"))))
    (properties `((upstream-name . "lacm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod r-numderiv))
    (home-page "https://cran.r-project.org/package=lacm")
    (synopsis "Latent Autoregressive Count Models")
    (description
     "Perform pairwise likelihood inference in latent autoregressive count models.
See Pedeli and Varin (2020) for details.")
    (license license:gpl2+)))

(define-public r-labstats
  (package
    (name "r-labstats")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labstats" version))
       (sha256
        (base32 "1780slp9l1rqwr5ika6hv606jzbaa3g1ywzkjkd3ff2gb0cby3ni"))))
    (properties `((upstream-name . "labstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/stanlazic/labstats")
    (synopsis
     "Data Sets for the Book \"Experimental Design for Laboratory Biologists\"")
    (description
     "This package contains data sets to accompany the book: Lazic SE (2016).
\"Experimental Design for Laboratory Biologists: Maximising Information and
Improving Reproducibility\".  Cambridge University Press.")
    (license license:gpl3)))

(define-public r-labstatr
  (package
    (name "r-labstatr")
    (version "1.0.13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labstatR" version))
       (sha256
        (base32 "0da891v97imx3x4d1lq5rbyxrwvsqdgfmgnxwqqlimls66zalh7k"))))
    (properties `((upstream-name . "labstatR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=labstatR")
    (synopsis "Libreria Del Laboratorio Di Statistica Con R")
    (description
     "Insieme di funzioni di supporto al volume \"Laboratorio di Statistica con R\",
Iacus-Masarotto, @code{MacGraw-Hill} Italia, 2006.  This package contains sets
of functions defined in \"Laboratorio di Statistica con R\", Iacus-Masarotto,
@code{MacGraw-Hill} Italia, 2006.  Function names and docs are in italian as
well.")
    (license license:gpl2+)))

(define-public r-labsimplex
  (package
    (name "r-labsimplex")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labsimplex" version))
       (sha256
        (base32 "07is5vi1y7qw9fjhhjf65z6fm77v26qgy908zhhp2581qqyn0b5s"))))
    (properties `((upstream-name . "labsimplex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scatterplot3d r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=labsimplex")
    (synopsis
     "Simplex Optimization Algorithms for Laboratory and Manufacturing Processes")
    (description
     "Simplex optimization algorithms as firstly proposed by Spendley et al. (1962)
<doi:10.1080/00401706.1962.10490033> and later modified by Nelder and Mead
(1965) <doi:10.1093/comjnl/7.4.308> for laboratory and manufacturing processes.
The package also provides tools for graphical representation of the simplexes
and some example response surfaces that are useful in illustrating the
optimization process.")
    (license license:gpl2+)))

(define-public r-labrs
  (package
    (name "r-labrs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LabRS" version))
       (sha256
        (base32 "1a9qafimia83qldsif5wfqx273mvqbx22p5i0hg8n4jvj4vzpy2w"))))
    (properties `((upstream-name . "LabRS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-knitr))
    (home-page "https://www.agnesevardanega.eu/")
    (synopsis "Laboratorio di \"Ricerca Sociale con R\"")
    (description
     "Dati, scripts e funzioni per il libro \"Ricerca sociale con R. Concetti e
funzioni base per la ricerca sociale\" (Datasets, scripts and functions to
support the book \"Ricerca sociale con R. Concetti e funzioni base per la ricerca
sociale\").")
    (license license:gpl3+)))

(define-public r-labourmarketareas
  (package
    (name "r-labourmarketareas")
    (version "3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LabourMarketAreas" version))
       (sha256
        (base32 "0cifbfijrb80q8xsj7jc6klv78k7sf820d2g5ag2i1lk1vxahwc4"))))
    (properties `((upstream-name . "LabourMarketAreas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tmap r-spdep r-sp r-sf r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=LabourMarketAreas")
    (synopsis
     "Identification, Tuning, Visualisation and Analysis of Labour Market Areas")
    (description
     "This package produces Labour Market Areas from commuting flows available at
elementary territorial units.  It provides tools for automatic tuning based on
spatial contiguity.  It also allows for statistical analyses and visualisation
of the new functional geography.")
    (license license:gpl2+)))

(define-public r-labnorm
  (package
    (name "r-labnorm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labNorm" version))
       (sha256
        (base32 "0sd77b4g9r3y1kch9zxxa2p7hnsjh72fspi3f2hkb8rk3g28npxx"))))
    (properties `((upstream-name . "labNorm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yesno
                             r-withr
                             r-tibble
                             r-scales
                             r-rappdirs
                             r-purrr
                             r-glue
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-cli))
    (home-page "https://cran.r-project.org/package=labNorm")
    (synopsis "Normalize Laboratory Measurements by Age and Sex")
    (description
     "This package provides functions for normalizing standard laboratory measurements
(e.g. hemoglobin, cholesterol levels) according to age and sex, based on the
algorithms described in \"Personalized lab test models to quantify disease
potentials in healthy individuals\" (Netta Mendelson Cohen, Omer Schwartzman, Ram
Jaschek, Aviezer Lifshitz, Michael Hoichman, Ran Balicer, Liran I. Shlush, Gabi
Barbash & Amos Tanay, <doi:10.1038/s41591-021-01468-6>).  Allows users to easily
obtain normalized values for standard lab results, and to visualize their
distributions.  See more at <https://tanaylab.weizmann.ac.il/labs/>.")
    (license license:expat)))

(define-public r-lablaster
  (package
    (name "r-lablaster")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lablaster" version))
       (sha256
        (base32 "082gyfqaakl08d016p7sk1qapdkpry82sbxcsj46z50ls7sza3ab"))))
    (properties `((upstream-name . "lablaster")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-smooth r-scales r-rlang r-magrittr r-ggplot2))
    (home-page "https://github.com/alexsb1/lablaster")
    (synopsis "Laser Ablation Blast Through Endpoint Detection")
    (description
     "Imports a data frame containing a single time resolved laser ablation mass
spectrometry analysis of a foraminifera (or other carbonate shell), then detects
when the laser has burnt through the foraminifera test as a function of change
in signal over time.")
    (license license:lgpl3+)))

(define-public r-labelvector
  (package
    (name "r-labelvector")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labelVector" version))
       (sha256
        (base32 "06pqkgn852min2mqhjkia6qqdwkp8cz32lbxzp3a2b8bcggbijn4"))))
    (properties `((upstream-name . "labelVector")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=labelVector")
    (synopsis "Label Attributes for Atomic Vectors")
    (description
     "Labels are a common construct in statistical software providing a human readable
description of a variable.  While variable names are succinct, quick to type,
and follow a language's naming conventions, labels may be more illustrative and
may use plain text and spaces.  R does not provide native support for labels.
Some packages, however, have made this feature available.  Most notably, the
Hmisc package provides labelling methods for a number of different object.  Due
to design decisions, these methods are not all exported, and so are unavailable
for use in package development.  The @code{labelVector} package supports labels
for atomic vectors in a light-weight design that is suitable for use in other
packages.")
    (license license:expat)))

(define-public r-labelr
  (package
    (name "r-labelr")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labelr" version))
       (sha256
        (base32 "09fw3nxbkjvjkgyh6rmm3bzqgwir9z9vqz4svrwz4hfagprapxhk"))))
    (properties `((upstream-name . "labelr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhartmano/labelr")
    (synopsis "Label Data Frames, Variables, and Values")
    (description
     "Create and use data frame labels for data frame objects (frame labels), their
columns (name labels), and individual values of a column (value labels).  Value
labels include one-to-one and many-to-one labels for nominal and ordinal
variables, as well as numerical range-based value labels for continuous
variables.  Convert value-labeled variables so each value is replaced by its
corresponding value label.  Add values-converted-to-labels columns to a
value-labeled data frame while preserving parent columns.  Filter and subset a
value-labeled data frame using labels, while returning results in terms of
values.  Overlay labels in place of values in common R commands to increase
interpretability.  Generate tables of value frequencies, with categories
expressed as raw values or as labels.  Access data frames that show
value-to-label mappings for easy reference.")
    (license license:gpl3+)))

(define-public r-labelmachine
  (package
    (name "r-labelmachine")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labelmachine" version))
       (sha256
        (base32 "18l7argmf7d60cv34w7acjg4bk08nhi2cc5p61sx2zmq28v8nndr"))))
    (properties `((upstream-name . "labelmachine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml))
    (native-inputs (list r-knitr))
    (home-page "https://a-maldet.github.io/labelmachine")
    (synopsis "Make Labeling of R Data Sets Easy")
    (description
     "Assign meaningful labels to data frame columns.  labelmachine manages your label
assignment rules in yaml files and makes it easy to use the same labels in
multiple projects.")
    (license license:gpl3)))

(define-public r-labeler
  (package
    (name "r-labeler")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labeleR" version))
       (sha256
        (base32 "1lkpj5hhkihy51rxkchs2wlcwr1aa2i7fxdxqf9c143mg2igvyql"))))
    (properties `((upstream-name . "labeleR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown))
    (home-page "https://github.com/EcologyR/labeleR/")
    (synopsis
     "Automate the Production of Custom Labels, Badges, Certificates, and Other Documents")
    (description
     "Create custom labels, badges, certificates and other documents.  Automate the
production of potentially large numbers of herbarium and collection labels,
accreditation badges, attendance and participation certificates, etc, and
deliver them automatically.  Documents are generated in PDF format, which
requires a working installation of @code{LaTeX}', such as @code{TinyTeX}'.")
    (license license:gpl3+)))

(define-public r-label-switching
  (package
    (name "r-label-switching")
    (version "1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "label.switching" version))
       (sha256
        (base32 "0xwwhn249aibip12yxjwlrpyqj6zvc95zc7n9jf2vjjpashyc3yk"))))
    (properties `((upstream-name . "label.switching")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lpsolve r-combinat))
    (home-page "https://cran.r-project.org/package=label.switching")
    (synopsis "Relabelling MCMC Outputs of Mixture Models")
    (description
     "The Bayesian estimation of mixture models (and more general hidden Markov
models) suffers from the label switching phenomenon, making the MCMC output
non-identifiable.  This package can be used in order to deal with this problem
using various relabelling algorithms.")
    (license license:gpl2)))

(define-public r-labdsv
  (package
    (name "r-labdsv")
    (version "2.1-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "labdsv" version))
       (sha256
        (base32 "1lawc8fm766p7z6kk0c3lda71i8lywg30znzyfkrx94sbr8r5nlr"))))
    (properties `((upstream-name . "labdsv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rtsne r-mgcv r-mass r-cluster))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=labdsv")
    (synopsis "Ordination and Multivariate Analysis for Ecology")
    (description
     "This package provides a variety of ordination and community analyses useful in
analysis of data sets in community ecology.  Includes many of the common
ordination methods, with graphical routines to facilitate their interpretation,
as well as several novel analyses.")
    (license license:gpl2+)))

(define-public r-labapplstat
  (package
    (name "r-labapplstat")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LabApplStat" version))
       (sha256
        (base32 "0wiyfrk5dfd2djgg461qxhk7zrpwhiagkjcr36w7fbrgibbnmm54"))))
    (properties `((upstream-name . "LabApplStat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs r-ggraph r-ggplot2 r-emmeans))
    (home-page "https://cran.r-project.org/package=LabApplStat")
    (synopsis "Miscellaneous Scripts from the Data Science Laboratory (UCPH)")
    (description
     "Miscellaneous scripts, e.g. functionality to make and plot factor diagrams for
the statistical design.")
    (license license:gpl3)))

(define-public r-lab2clean
  (package
    (name "r-lab2clean")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "lab2clean" version))
       (sha256
        (base32 "1836dr3g32lw71z8fgrbzn6fn9r6a92ckkk85m9fjwxp9xcmb9lj"))))
    (properties `((upstream-name . "lab2clean")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=lab2clean")
    (synopsis "Automation and Standardization of Cleaning Clinical Lab Data")
    (description
     "Navigating the shift of clinical laboratory data from primary everyday clinical
use to secondary research purposes presents a significant challenge.  Given the
substantial time and expertise required for lab data pre-processing and cleaning
and the lack of all-in-one tools tailored for this need, we developed our
algorithm lab2clean as an open-source R-package.  lab2clean package is set to
automate and standardize the intricate process of cleaning clinical laboratory
results.  With a keen focus on improving the data quality of laboratory result
values, our goal is to equip researchers with a straightforward, plug-and-play
tool, making it smoother for them to unlock the true potential of clinical
laboratory data in clinical research and clinical machine learning (ML) model
development.  Version 1.0 of the algorithm is described in detail in Zayed et
al. (2024) <doi:10.1186/s12911-024-02652-7>.")
    (license license:gpl3+)))

(define-public r-la
  (package
    (name "r-la")
    (version "2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "LA" version))
       (sha256
        (base32 "098gqnjw2zfl2s0hmbci8kahr9mjz9fh5ll3blnw2wc2ikn5n152"))))
    (properties `((upstream-name . "LA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=LA")
    (synopsis "Lioness Algorithm (LA)")
    (description
     "This package contains Lioness Algorithm (LA) for finding optimal designs over
continuous design space, optimal Latin hypercube designs, and optimal
order-of-addition designs.  LA is a brand new nature-inspired meta-heuristic
optimization algorithm.  Detailed methodologies of LA and its implementation on
numerical simulations can be found at Hongzhi Wang, Qian Xiao and Abhyuday
Mandal (2021) <doi:10.48550/@code{arXiv.2010.09154>}.")
    (license license:expat)))

(define-public r-l2hdchange
  (package
    (name "r-l2hdchange")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L2hdchange" version))
       (sha256
        (base32 "18gh6dc05w5ac7gdy202v3drb6258k8qnk73335hpwaiswp7i328"))))
    (properties `((upstream-name . "L2hdchange")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=L2hdchange")
    (synopsis "L2 Inference for Change Points in High-Dimensional Time Series")
    (description
     "This package provides a method for detecting multiple change points in
high-dimensional time series, targeting dense or spatially clustered signals.
See Li et al. (2023) \"L2 Inference for Change Points in High-Dimensional Time
Series via a Two-Way MOSUM\". @code{arXiv} preprint <@code{arXiv:2208.13074>}.")
    (license license:gpl3+)))

(define-public r-l2e
  (package
    (name "r-l2e")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L2E" version))
       (sha256
        (base32 "1ar8jmi7nddp6f5rfh8zvh8w8zkigdf1zjzdr5fz8zqj2ny5hy30"))))
    (properties `((upstream-name . "L2E")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-signal
                             r-robustbase
                             r-osqp
                             r-ncvreg
                             r-matrix
                             r-isotone
                             r-cobs))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=L2E")
    (synopsis "Robust Structured Regression via the L2 Criterion")
    (description
     "An implementation of a computational framework for performing robust structured
regression with the L2 criterion from Chi and Chi (2021+).  Improvements using
the majorization-minimization (MM) principle from Liu, Chi, and Lange (2022+)
added in Version 2.0.")
    (license license:gpl2+)))

(define-public r-l2densitygoftest
  (package
    (name "r-l2densitygoftest")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L2DensityGoFtest" version))
       (sha256
        (base32 "1fzfqfq77rf4hfrh1idb2nb67mwk9lwypxhr2qc1hiidvk060lq0"))))
    (properties `((upstream-name . "L2DensityGoFtest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nor1mix r-mvtnorm r-fgarch r-boot))
    (home-page "https://cran.r-project.org/package=L2DensityGoFtest")
    (synopsis "Density Goodness-of-Fit Test")
    (description
     "This package provides functions for the implementation of a density
goodness-of-fit test, based on piecewise approximation of the L2 distance.")
    (license license:gpl2+)))

(define-public r-l2boost
  (package
    (name "r-l2boost")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l2boost" version))
       (sha256
        (base32 "1ma11x5wb2iqh10wdlwbwdvgzm4qxp94c5pxgvnmwqzmjgngirdh"))))
    (properties `((upstream-name . "l2boost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=l2boost")
    (synopsis
     "Exploring Friedman's Boosting Algorithm for Regularized Linear Regression")
    (description
     "Efficient implementation of Friedman's boosting algorithm with l2-loss function
and coordinate direction (design matrix columns) basis functions.")
    (license license:gpl2+)))

(define-public r-l1spectral
  (package
    (name "r-l1spectral")
    (version "0.99.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l1spectral" version))
       (sha256
        (base32 "19q30g67pf2gx2h6s3il87n910f011lih3lh9321pkh4idl4awnb"))))
    (properties `((upstream-name . "l1spectral")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-igraph
                             r-glmnet
                             r-ggplot2
                             r-dplyr
                             r-cvtools
                             r-caret
                             r-aricode))
    (home-page "https://cran.r-project.org/package=l1spectral")
    (synopsis "An L1-Version of the Spectral Clustering")
    (description
     "This package provides an l1-version of the spectral clustering algorithm devoted
to robustly clustering highly perturbed graphs using l1-penalty.  This algorithm
is described with more details in the preprint C. Champion, M. Champion, M.
BlazÃ¨re, R. Burcelin and J.M. Loubes, \"l1-spectral clustering algorithm: a
spectral clustering method using l1-regularization\" (2022).")
    (license license:gpl2)))

(define-public r-l1rotation
  (package
    (name "r-l1rotation")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l1rotation" version))
       (sha256
        (base32 "094lf1mjbh2wdgg5xq3v7sc014py59n0lbrdis7a88ks0wqnfjqg"))))
    (properties `((upstream-name . "l1rotation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-pracma
                             r-matrixstats
                             r-magrittr
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://kobleary.github.io/l1rotation/")
    (synopsis "Identify Loading Vectors under Sparsity in Factor Models")
    (description
     "Simplify the loading matrix in factor models using the l1 criterion as proposed
in Freyaldenhoven (2025) <doi:10.21799/frbp.wp.2020.25>.  Given a data matrix,
find the rotation of the loading matrix with the smallest l1-norm and/or test
for the presence of local factors with main function @code{local_factors()}.")
    (license license:expat)))

(define-public r-l1pack
  (package
    (name "r-l1pack")
    (version "0.60")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L1pack" version))
       (sha256
        (base32 "0hvhxg0d1y9ryfahyqm9m55hx379d6k0vfrylm48rsh22rcinqfq"))))
    (properties `((upstream-name . "L1pack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fastmatrix))
    (native-inputs (list gfortran))
    (home-page "https://github.com/faosorios/L1pack")
    (synopsis "Routines for L1 Estimation")
    (description
     "L1 estimation for linear regression using Barrodale and Roberts method
<doi:10.1145/355616.361024> and the EM algorithm <doi:10.1023/A:1020759012226>.
Estimation of mean and covariance matrix using the multivariate Laplace
distribution, density, distribution function, quantile function and random
number generation for univariate and multivariate Laplace distribution
<doi:10.1080/03610929808832115>.  Implementation of Naik and Plungpongpun
<doi:10.1007/0-8176-4487-3_7> for the Generalized spatial median estimator is
included.")
    (license license:gpl3)))

(define-public r-l1kdeconv
  (package
    (name "r-l1kdeconv")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l1kdeconv" version))
       (sha256
        (base32 "1mk92sz9nsmxsn7yplhfcz07k022lrr61114ckrmm0x8hfd89zj8"))))
    (properties `((upstream-name . "l1kdeconv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mixtools r-ggplot2))
    (home-page "https://cran.r-project.org/package=l1kdeconv")
    (synopsis "Deconvolution for LINCS L1000 Data")
    (description
     "LINCS L1000 is a high-throughput technology that allows the gene expression
measurement in a large number of assays.  However, to fit the measurements of
~1000 genes in the ~500 color channels of LINCS L1000, every two landmark genes
are designed to share a single channel.  Thus, a deconvolution step is required
to infer the expression values of each gene.  Any errors in this step can be
propagated adversely to the downstream analyses.  We present a LINCS L1000 data
peak calling R package l1kdeconv based on a new outlier detection method and an
aggregate Gaussian mixture model.  Upon the remove of outliers and the borrowing
information among similar samples, l1kdeconv shows more stable and better
performance than methods commonly used in LINCS L1000 data deconvolution.")
    (license license:gpl2+)))

(define-public r-l1centrality
  (package
    (name "r-l1centrality")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L1centrality" version))
       (sha256
        (base32 "0dbbdrkyra5wrl9qh78m58siyaxrbbwzjagy19nrgwjayhga06za"))))
    (properties `((upstream-name . "L1centrality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr r-rcpp r-igraph))
    (home-page "https://github.com/seungwoo-stat/L1centrality")
    (synopsis "Graph/Network Analysis Based on L1 Centrality")
    (description
     "Analyze graph/network data using L1 centrality and prestige.  Functions for
deriving global, local, and group L1 centrality/prestige are provided.  Routines
for visual inspection of a graph/network are also provided.  Details are in Kang
and Oh (2024a) <doi:10.48550/@code{arXiv.2404.13233>} and Kang and Oh (2024b)
<doi:10.48550/@code{arXiv.2408.12078>}.")
    (license license:gpl3+)))

(define-public r-l1ball
  (package
    (name "r-l1ball")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l1ball" version))
       (sha256
        (base32 "1ryq1vfkwg465kgxbb2wf8df7qa85yr8lbx3a58j0az8dqkyzqix"))))
    (properties `((upstream-name . "l1ball")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam))
    (home-page "https://cran.r-project.org/package=l1ball")
    (synopsis "L1-Ball Prior for Sparse Regression")
    (description
     "This package provides function for the l1-ball prior on high-dimensional
regression.  The main function, @code{l1ball()}, yields posterior samples for
linear regression, as introduced by Xu and Duan (2020)
<@code{arXiv:2006.01340>}.")
    (license license:gpl2+)))

(define-public r-l0tfinv
  (package
    (name "r-l0tfinv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L0TFinv" version))
       (sha256
        (base32 "1zd5b6xmxjy8zyd6yw8m3q4jc0rsp0mdp8vxk2bb1bh9mj3d6rlj"))))
    (properties `((upstream-name . "L0TFinv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/C2S2-HF/InverseL0TF")
    (synopsis "Splicing Approach to the Inverse Problem of L0 Trend Filtering")
    (description
     "Trend filtering is a widely used nonparametric method for knot detection.  This
package provides an efficient solution for L0 trend filtering, avoiding the
traditional methods of using Lagrange duality or Alternating Direction Method of
Multipliers algorithms.  It employ a splicing approach that minimizes
L0-regularized sparse approximation by transforming the L0 trend filtering
problem.  The package excels in both efficiency and accuracy of trend estimation
and changepoint detection in segmented functions.  References: Wen et al. (2020)
<doi:10.18637/jss.v094.i04>; Zhu et al. (2020)<doi:10.1073/pnas.2014241117>; Wen
et al. (2023) <doi:10.1287/ijoc.2021.0313>.")
    (license license:gpl3+)))

(define-public r-l0learn
  (package
    (name "r-l0learn")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "L0Learn" version))
       (sha256
        (base32 "050r2rqmqgwmal53d82vi0nhnzzrm4q8mqz0pbpj77blflbqy740"))))
    (properties `((upstream-name . "L0Learn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-mass
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=L0Learn")
    (synopsis "Fast Algorithms for Best Subset Selection")
    (description
     "Highly optimized toolkit for approximately solving L0-regularized learning
problems (a.k.a.  best subset selection).  The algorithms are based on
coordinate descent and local combinatorial search.  For more details, check the
paper by Hazimeh and Mazumder (2020) <doi:10.1287/opre.2019.1919>.")
    (license license:expat)))

(define-public r-l0ara
  (package
    (name "r-l0ara")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "l0ara" version))
       (sha256
        (base32 "1cv48rbq080z7zx32hmlkpq7mi5axr09a1hyv3knl1vb9gql4qjq"))))
    (properties `((upstream-name . "l0ara")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=l0ara")
    (synopsis
     "Sparse Generalized Linear Model with L0 Approximation for Feature Selection")
    (description
     "An efficient procedure for feature selection for generalized linear models with
L0 penalty, including linear, logistic, Poisson, gamma, inverse Gaussian
regression.  Adaptive ridge algorithms are used to fit the models.")
    (license license:gpl2)))

