(define-module (guix-cran packages y)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages gcc)
  #:use-module (guix-cran packages z)
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
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-yyjsonr
  (package
    (name "r-yyjsonr")
    (version "0.1.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yyjsonr" version))
       (sha256
        (base32 "0gkvls7rd1rbklg9f548rhpmqpa0kb0s1xgf7mhvlhxk45x32ipd"))))
    (properties `((upstream-name . "yyjsonr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/coolbutuseless/yyjsonr")
    (synopsis "Fast 'JSON', 'NDJSON' and 'GeoJSON' Parser and Generator")
    (description
     "This package provides a fast JSON parser, generator and validator which converts
JSON', NDJSON (Newline Delimited JSON') and @code{GeoJSON} (Geographic JSON')
data to/from R objects.  The standard R data types are supported (e.g. logical,
numeric, integer) with configurable handling of NULL and NA values.  Data
frames, atomic vectors and lists are all supported as data containers translated
to/from JSON'. @code{GeoJSON} data is read in as simple features objects.  This
implementation wraps the yyjson C library which is available from
<https://github.com/ibireme/yyjson>.")
    (license license:expat)))

(define-public r-yum
  (package
    (name "r-yum")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yum" version))
       (sha256
        (base32 "1k9q34n1pzv4c7hp7cd4yhm8v1qv41an8vfh65n4byvyzipxp85y"))))
    (properties `((upstream-name . "yum")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml))
    (home-page "https://r-packages.gitlab.io/yum")
    (synopsis "Utilities to Extract and Process 'YAML' Fragments")
    (description
     "This package provides a number of functions to facilitate extracting information
in YAML fragments from one or multiple files, optionally structuring the
information in a data.tree'.  YAML (recursive acronym for \"YAML ain't Markup
Language\") is a convention for specifying structured data in a format that is
both machine- and human-readable.  YAML therefore lends itself well for
embedding (meta)data in plain text files, such as Markdown files.  This
principle is implemented in yum with minimal dependencies (i.e.  only the yaml
packages, and the data.tree package can be used to enable additional
functionality).")
    (license license:gpl3)))

(define-public r-yuimagui
  (package
    (name "r-yuimagui")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yuimaGUI" version))
       (sha256
        (base32 "1sl45kmqqq7hg3lkpn3cy70f409fwsgg76gjldx1l4cvmyzyf9hl"))))
    (properties `((upstream-name . "yuimaGUI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yuima
                             r-shinyjs
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-sde
                             r-quantmod
                             r-plotly
                             r-ghyp
                             r-ggplot2
                             r-dt))
    (home-page "https://yuimaproject.com")
    (synopsis "Graphical User Interface for the 'yuima' Package")
    (description
     "This package provides a graphical user interface for the yuima package.")
    (license license:gpl2)))

(define-public r-yuima
  (package
    (name "r-yuima")
    (version "1.15.27")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yuima" version))
       (sha256
        (base32 "1w0g6yq1g2maq8wslgj5bis1f514ngxkxxbc9j7dsz7w51vppcwd"))))
    (properties `((upstream-name . "yuima")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-glassofast
                             r-expm
                             r-cubature
                             r-coda
                             r-calculus
                             r-boot))
    (home-page "https://yuimaproject.com")
    (synopsis "The YUIMA Project Package for SDEs")
    (description
     "Simulation and Inference for SDEs and Other Stochastic Processes.")
    (license license:gpl2)))

(define-public r-ytanalytics
  (package
    (name "r-ytanalytics")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YTAnalytics" version))
       (sha256
        (base32 "0v293xvmkn1cydn92w0mkvbfw89glq9caknqs42nbm4bsyhwxjwb"))))
    (properties `((upstream-name . "YTAnalytics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-progress r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/davisj95/YTAnalytics")
    (synopsis "Wrapper for 'YouTube Analytics' API")
    (description
     "Simplify working with the @code{YouTube} Analytics API
<https://developers.google.com/youtube/analytics>.  Collect data for your
channel including geography, traffic sources, time period, etc.")
    (license license:expat)))

(define-public r-yrmisc
  (package
    (name "r-yrmisc")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YRmisc" version))
       (sha256
        (base32 "1crms7dqmhj7br1a5p5j0j7p6sdfimnip31207i6g24f9jkkysv1"))))
    (properties `((upstream-name . "YRmisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gridextra r-ggplot2))
    (home-page "https://cran.r-project.org/package=YRmisc")
    (synopsis "Y&R Miscellaneous R Functions")
    (description
     "Miscellaneous functions for data analysis, portfolio management, graphics, data
manipulation, statistical investigation, including descriptive statistics,
creating leading and lagging variables, portfolio return analysis, time series
difference and percentage change calculation, stacking data for higher efficient
analysis.")
    (license license:gpl2+)))

(define-public r-ypssc
  (package
    (name "r-ypssc")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ypssc" version))
       (sha256
        (base32 "0fpph19amj1cafcbh5k6s75pi7nahzgfvnsbs9i5644gv43iavbj"))))
    (properties `((upstream-name . "ypssc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-svdialogs
                             r-stringr
                             r-spelling
                             r-readxl
                             r-peptides
                             r-eulerr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=ypssc")
    (synopsis "Yeast-Proteome Secondary-Structure Calculator")
    (description
     "An extension for @code{NetSurfP-2.0} (Klausen et al. (2019)
<doi:10.1002/prot.25674>) which is specifically designed to analyze the results
of bottom-up-proteomics that is primarily analyzed with @code{MaxQuant} (Cox,
J., Mann, M. (2008) <doi:10.1038/nbt.1511>).  This tool is designed to process a
large number of yeast peptides that produced as a results of whole yeast
cell-proteome digestion and provide a coherent picture of secondary structure of
proteins.")
    (license license:gpl3+)))

(define-public r-ypr
  (package
    (name "r-ypr")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ypr" version))
       (sha256
        (base32 "0hn4zbg270p8yg4wxcszwfc0vsf2mb21lkqi1745000rh5cbz8sa"))))
    (properties `((upstream-name . "ypr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yesno
                             r-tidyplus
                             r-tibble
                             r-purrr
                             r-lifecycle
                             r-ggplot2
                             r-chk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/poissonconsulting/ypr")
    (synopsis "Yield Per Recruit")
    (description
     "An implementation of equilibrium-based yield per recruit methods.  Yield per
recruit methods can used to estimate the optimal yield for a fish population as
described by Walters and Martell (2004) <isbn:0-691-11544-3>.  The yield can be
based on the number of fish caught (or harvested) or biomass caught for all fish
or just large (trophy) individuals.")
    (license license:expat)))

(define-public r-yppe
  (package
    (name "r-yppe")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YPPE" version))
       (sha256
        (base32 "01q0l22nwfpld2wcygk5x28c2c6cv35hxy2fm1azn8bqsv7xy5il"))))
    (properties `((upstream-name . "YPPE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppeigen
                             r-rcpp
                             r-mass
                             r-formula
                             r-bh))
    (home-page "https://github.com/fndemarqui/YPPE")
    (synopsis
     "Yang and Prentice Model with Piecewise Exponential Baseline Distribution")
    (description
     "Semiparametric modeling of lifetime data with crossing survival curves via Yang
and Prentice model with piecewise exponential baseline distribution.  Details
about the model can be found in Demarqui and Mayrink (2019)
<@code{arXiv:1910.02406>}.  Model fitting carried out via likelihood-based and
Bayesian approaches.  The package also provides point and interval estimation
for the crossing survival times.")
    (license license:gpl2+)))

(define-public r-ypmodelphreg
  (package
    (name "r-ypmodelphreg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YPmodelPhreg" version))
       (sha256
        (base32 "1bgzibrqdwsy93zscffmbjgxnnl3axip9l4amfp0g5517p7i78hp"))))
    (properties `((upstream-name . "YPmodelPhreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=YPmodelPhreg")
    (synopsis
     "The Short-Term and Long-Term Hazard Ratio Model with Proportional Adjustment")
    (description
     "This package provides covariate-adjusted comparison of two groups of right
censored data, where the binary group variable has separate short-term and
long-term effects on the hazard function, while effects of covariates such as
age, blood pressure, etc.  are proportional on the hazard.  The model was
studied in Yang and Prentice (2015) <doi:10.1002/sim.6453> and it extends the
two sample version of the short-term and long-term hazard ratio model proposed
in Yang and Prentice (2005) <doi:10.1093/biomet/92.1.1>.  The model extends the
usual Cox proportional hazards model to allow more flexible hazard ratio
patterns, such as gradual onset of effect, diminishing effect, and crossing
hazard or survival functions.  This package provides the following: 1) point
estimates and confidence intervals for model parameters; 2) point estimate and
confidence interval of the average hazard ratio; and 3) plots of estimated
hazard ratio function with point-wise and simultaneous confidence bands.")
    (license license:gpl2+)))

(define-public r-ypmodel
  (package
    (name "r-ypmodel")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YPmodel" version))
       (sha256
        (base32 "177rzbd8k0356b8z2sbvl3x5cg2w9kr8ryf36laqijyayhcik093"))))
    (properties `((upstream-name . "YPmodel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=YPmodel")
    (synopsis
     "The Short-Term and Long-Term Hazard Ratio Model for Survival Data")
    (description
     "Inference procedures accommodate a flexible range of hazard ratio patterns with
a two-sample semi-parametric model.  This model contains the proportional
hazards model and the proportional odds model as sub-models, and accommodates
non-proportional hazards situations to the extreme of having crossing hazards
and crossing survivor functions.  Overall, this package has four major
functions: 1) the parameter estimation, namely short-term and long-term hazard
ratio parameters; 2) 95 percent and 90 percent point-wise confidence intervals
and simultaneous confidence bands for the hazard ratio function; 3) p-value of
the adaptive weighted log-rank test; 4) p-values of two lack-of-fit tests for
the model.  See the included \"read_me_first.pdf\" for brief instructions.  In
this version (1.1), there is no need to sort the data before applying this
package.")
    (license license:gpl3+)))

(define-public r-ypinterimtesting
  (package
    (name "r-ypinterimtesting")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YPInterimTesting" version))
       (sha256
        (base32 "0fca963rsbs9k7ivffsqk4hzap6ll7s709kqs6aby0plghrdla2w"))))
    (properties `((upstream-name . "YPInterimTesting")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-mass))
    (home-page "https://cran.r-project.org/package=YPInterimTesting")
    (synopsis
     "Interim Monitoring Using Adaptively Weighted Log-Rank Test in Clinical Trials")
    (description
     "For any spending function specified by the user, this package provides
corresponding boundaries for interim testing using the adaptively weighted
log-rank test developed by Yang and Prentice (2010
<doi:10.1111/j.1541-0420.2009.01243.x>).  The package uses a re-sampling method
to obtain stopping boundaries at the interim looks.The output consists of
stopping boundaries and observed values of the test statistics at the interim
looks, along with nominal p-values defined as the probability of the test
exceeding the specific observed test statistic value or critical value,
regardless of the test behavior at other looks.  The asymptotic validity of the
stopping boundaries is established in Yang (2018 <doi:10.1002/sim.7958>).")
    (license license:gpl3+)))

(define-public r-ypbp
  (package
    (name "r-ypbp")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YPBP" version))
       (sha256
        (base32 "1slc7glr4hb0my5zkssprngb6si98npjj33nsbsm0nbm61hnb9n8"))))
    (properties `((upstream-name . "YPBP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppeigen
                             r-rcpp
                             r-mass
                             r-formula
                             r-bh))
    (home-page "https://github.com/fndemarqui/YPBP")
    (synopsis
     "Yang and Prentice Model with Baseline Distribution Modeled by Bernstein Polynomials")
    (description
     "Semiparametric modeling of lifetime data with crossing survival curves via Yang
and Prentice model with baseline hazard/odds modeled with Bernstein polynomials.
 Details about the model can be found in Demarqui et al. (2019)
<@code{arXiv:1910.04475>}.  Model fitting can be carried out via both maximum
likelihood and Bayesian approaches.  The package also provides point and
interval estimation for the crossing survival times.")
    (license license:gpl2+)))

(define-public r-youngswimmers
  (package
    (name "r-youngswimmers")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "youngSwimmers" version))
       (sha256
        (base32 "02ih66ad8v5qkgyszllkh9319sfd6fqcci4zrvbjr1dfwlwa2ri1"))))
    (properties `((upstream-name . "youngSwimmers")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lifecycle r-data-table))
    (home-page "https://github.com/NIM-ACh/youngSwimmers/")
    (synopsis "Young Swimmers Dataset")
    (description "Dataset from the young elite swimmers study.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-yorkr
  (package
    (name "r-yorkr")
    (version "0.0.42")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yorkr" version))
       (sha256
        (base32 "0czi3ylqlzpd2h8g5500hrk0ql4b3qlcgmlcmcfa44s1w8fgny33"))))
    (properties `((upstream-name . "yorkr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-rpart-plot
                             r-reshape2
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/tvganesh/yorkr/")
    (synopsis "Analyze Cricket Performances Based on Data from Cricsheet")
    (description
     "Analyzing performances of cricketers and cricket teams based on yaml match data
from Cricsheet <https://cricsheet.org/>.")
    (license license:expat)))

(define-public r-yodel
  (package
    (name "r-yodel")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yodel" version))
       (sha256
        (base32 "04glh59dcwahprxcw9a1wanbcxrmbfmkndw3w1idynwbmyarj4wf"))))
    (properties `((upstream-name . "yodel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-purrr r-dplyr))
    (home-page "https://github.com/rich-payne/yodel")
    (synopsis "General Bayesian Model Averaging Helper")
    (description
     "This package provides helper functions to perform Bayesian model averaging using
Markov chain Monte Carlo samples from separate models.  Calculates weights and
obtains draws from the model-averaged posterior for quantities of interest
specified by the user.  Weight calculations can be done using marginal
likelihoods or log-predictive likelihoods as in Ando, T., & Tsay, R. (2010)
<doi:10.1016/j.ijforecast.2009.08.001>.")
    (license license:expat)))

(define-public r-ympes
  (package
    (name "r-ympes")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ympes" version))
       (sha256
        (base32 "1180vmgicjzysd8lxgq5m17f3mchgj41n8g4yf2903s33sxkmb8c"))))
    (properties `((upstream-name . "ympes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-litedown))
    (home-page "https://timtaylor.github.io/ympes/")
    (synopsis "Collection of Helper Functions")
    (description
     "This package provides a collection of lightweight helper functions (imps) both
for interactive use and for inclusion within other packages.  These include
functions for minimal input assertions, visualising colour palettes, quoting
user input, searching rows of a data frame and capturing string tokens.")
    (license license:gpl3)))

(define-public r-ymlthis
  (package
    (name "r-ymlthis")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ymlthis" version))
       (sha256
        (base32 "127rh8mfff0ii6wcd7iaaz60vlkynjlrs188wwcap8l2qgv67idy"))))
    (properties `((upstream-name . "ymlthis")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-withr
                             r-whoami
                             r-usethis
                             r-stringr
                             r-rstudioapi
                             r-rmarkdown
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-glue
                             r-fs
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://ymlthis.r-lib.org")
    (synopsis
     "Write 'YAML' for 'R Markdown', 'bookdown', 'blogdown', and More")
    (description
     "Write YAML front matter for R Markdown and related documents.  Work with YAML
objects more naturally and write the resulting YAML to your clipboard or to YAML
files related to your project.")
    (license license:expat)))

(define-public r-ymisc
  (package
    (name "r-ymisc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Ymisc" version))
       (sha256
        (base32 "0mw430a0qdi9lddxlzc8vdk2yhm57c2mblj0yyy3g6icf5m7pppn"))))
    (properties `((upstream-name . "Ymisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Ymisc")
    (synopsis "Miscellaneous Functions")
    (description
     "The Author's personal R Package that contains miscellaneous functions.  The
current version of package contains miscellaneous functions for brain data to
compute Asymmetry Index (AI) and bilateral (L+R) measures and reshape the data.")
    (license license:gpl2+)))

(define-public r-ymd
  (package
    (name "r-ymd")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ymd" version))
       (sha256
        (base32 "0xw8qf9dzih6jwrld45dhy47pmvsphk9fwkccygmm153x724aama"))))
    (properties `((upstream-name . "ymd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list xz))
    (home-page "https://shrektan.github.io/ymd/")
    (synopsis "Parse 'YMD' Format Number or String to Date")
    (description
     "Convert YMD format number or string to Date efficiently, using Rust's standard
library.  It also provides helper functions to handle Date, e.g., quick finding
the beginning or end of the given period, adding months to Date, etc.")
    (license license:expat)))

(define-public r-yll
  (package
    (name "r-yll")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yll" version))
       (sha256
        (base32 "0lf3cd6pfzki29nk2iy0vd6v4dw6zlsbrjh2839zq5vlpiimsvck"))))
    (properties `((upstream-name . "yll")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/AntoineSoetewey/yll")
    (synopsis "Compute Expected Years of Life Lost (YLL) and Average YLL")
    (description
     "Compute the standard expected years of life lost (YLL), as developed by the
Global Burden of Disease Study (Murray, C.J., Lopez, A.D. and World Health
Organization, 1996).  The YLL is based on comparing the age of death to an
external standard life expectancy curve.  It also computes the average YLL,
which highlights premature causes of death and brings attention to preventable
deaths (Aragon et al., 2008).")
    (license license:gpl2+)))

(define-public r-yieldcurve
  (package
    (name "r-yieldcurve")
    (version "5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YieldCurve" version))
       (sha256
        (base32 "0dckpls1g8787ysb3q11i531223d48zdimnmhvbyynmm2a8gi0xv"))))
    (properties `((upstream-name . "YieldCurve")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xts))
    (home-page "https://cran.r-project.org/package=YieldCurve")
    (synopsis "Modelling and Estimation of the Yield Curve")
    (description
     "Modelling the yield curve with some parametric models.  The models implemented
are: Nelson, C.R., and A.F. Siegel (1987) <doi: 10.1086/296409>, Diebold, F.X.
and Li, C. (2006) <doi: 10.1016/j.jeconom.2005.03.005> and Svensson, L.E. (1994)
<doi: 10.3386/w4871>.  The package also includes the data of the term structure
of interest rate of Federal Reserve Bank and European Central Bank.")
    (license license:gpl2+)))

(define-public r-yhatr
  (package
    (name "r-yhatr")
    (version "0.15.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yhatr" version))
       (sha256
        (base32 "18g2cr1kjxnfw6cwzl62ynppfv1zz732kbx18zq8918l85kx6wbw"))))
    (properties `((upstream-name . "yhatr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-jsonlite r-httr))
    (home-page "https://github.com/yhat/yhatr")
    (synopsis "R Binder for the Yhat API")
    (description "Deploy, maintain, and invoke models via the Yhat REST API.")
    (license (license:fsdg-compatible "FreeBSD"))))

(define-public r-yhat
  (package
    (name "r-yhat")
    (version "2.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yhat" version))
       (sha256
        (base32 "0hzf6fns37jv67ssa6zwivpj2nlaykfjmj5y21dyh739i3102jnv"))))
    (properties `((upstream-name . "yhat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yacca r-plotrix r-misctools r-boot))
    (home-page "https://cran.r-project.org/package=yhat")
    (synopsis "Interpreting Regression Effects")
    (description
     "The purpose of this package is to provide methods to interpret multiple linear
regression and canonical correlation results including beta weights,structure
coefficients, validity coefficients, product measures, relative weights,
all-possible-subsets regression, dominance analysis, commonality analysis, and
adjusted effect sizes.")
    (license license:gpl2+)))

(define-public r-yfr
  (package
    (name "r-yfr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yfR" version))
       (sha256
        (base32 "1jdqz0cb13fgvrak1sgs4h2cwgr8rcbg68c35mlaqnmkfn2w3xvc"))))
    (properties `((upstream-name . "yfR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-readr
                             r-quantmod
                             r-purrr
                             r-pingr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-humanize
                             r-httr
                             r-glue
                             r-future
                             r-furrr
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/yfR")
    (synopsis "Downloads and Organizes Financial Data from Yahoo Finance")
    (description
     "Facilitates download of financial data from Yahoo Finance
<https://finance.yahoo.com/>, a vast repository of stock price data across
multiple financial exchanges.  The package offers a local caching system and
support for parallel computation.")
    (license license:expat)))

(define-public r-yesno
  (package
    (name "r-yesno")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yesno" version))
       (sha256
        (base32 "06qxjacvx17b0mry2qk5ksh814gyz88av80cpgz3d9fx01x3sxlv"))))
    (properties `((upstream-name . "yesno")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/poissonconsulting/yesno")
    (synopsis "Ask Yes-No Questions")
    (description "Asks Yes-No questions with variable or custom responses.")
    (license license:expat)))

(define-public r-yeab
  (package
    (name "r-yeab")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YEAB" version))
       (sha256
        (base32 "01snai59sbr08g247phmqf41vjipjprpn1xin3ayxvjqhw63sh14"))))
    (properties `((upstream-name . "YEAB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-usethis
                             r-sfsmisc
                             r-scales
                             r-polychrome
                             r-minpack-lm
                             r-mass
                             r-magrittr
                             r-ks
                             r-kernsmooth
                             r-infotheo
                             r-gridextra
                             r-ggplot2
                             r-foreach
                             r-fnn
                             r-dplyr
                             r-doparallel
                             r-data-table
                             r-cluster
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=YEAB")
    (synopsis "Analyze Data from Analysis of Behavior Experiments")
    (description
     "Analyze data from behavioral experiments conducted using MED-PC software
developed by Med Associates Inc.  Includes functions to fit exponential and
hyperbolic models for delay discounting tasks, exponential mixtures for
inter-response times, and Gaussian plus ramp models for peak procedure data,
among others.  For more details, refer to Alcala et al. (2023)
<doi:10.31234/osf.io/8aq2j>.")
    (license license:gpl3+)))

(define-public r-ycevo
  (package
    (name "r-ycevo")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ycevo" version))
       (sha256
        (base32 "0gih1dq62k7163pjsjl32smdqy54wjhsp31mv7ddhp4xmr6qb7cw"))))
    (properties `((upstream-name . "ycevo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-progressr
                             r-matrix
                             r-lubridate
                             r-ggplot2
                             r-generics
                             r-future-apply
                             r-dplyr))
    (home-page "https://github.com/bonsook/ycevo")
    (synopsis "Nonparametric Estimation of the Yield Curve Evolution")
    (description
     "Nonparametric estimation of discount functions and yield curves from transaction
data of coupon paying bonds.  Koo, B., La Vecchia, D., & Linton, O. B. (2021)
<doi:10.1016/j.jeconom.2020.04.014> describe an application of this package
using the Center for Research in Security Prices (CRSP) Bond Data and document
its implementation.")
    (license license:gpl3)))

(define-public r-yatesalgo-factorialexp-sr
  (package
    (name "r-yatesalgo-factorialexp-sr")
    (version "4.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YatesAlgo.FactorialExp.SR" version))
       (sha256
        (base32 "0jr2q2dla7dpf0ail0l8ar44cnaxrkvqc7cvsrsdgj97hr970lp9"))))
    (properties `((upstream-name . "YatesAlgo.FactorialExp.SR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lubridate))
    (home-page "https://cran.r-project.org/package=YatesAlgo.FactorialExp.SR")
    (synopsis "Yates' Algorithm in 2^n Factorial Experiment")
    (description
     "Determines the sum of squares of the (2^n)-1 factorial effects in a 2^n
factorial experiment using Yates algorithm.")
    (license license:expat)))

(define-public r-yatchewtest
  (package
    (name "r-yatchewtest")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YatchewTest" version))
       (sha256
        (base32 "1m951cin2wlxrmg5k7b6zjmfyc5frxgzr4aibyj4lh9vbr9hlqk8"))))
    (properties `((upstream-name . "YatchewTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-ggplot2))
    (home-page "https://cran.r-project.org/package=YatchewTest")
    (synopsis
     "Yatchew (1997), De Chaisemartin & D'Haultfoeuille (2024) Linearity Test")
    (description
     "Test of linearity originally proposed by Yatchew (1997)
<doi:10.1016/S0165-1765(97)00218-8> and improved by de Chaisemartin &
D'Haultfoeuille (2024) <doi:10.2139/ssrn.4284811> to be robust under
heteroskedasticity.")
    (license license:expat)))

(define-public r-yatah
  (package
    (name "r-yatah")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yatah" version))
       (sha256
        (base32 "0q0c9rgkjcj4i7jjc6a9znlvk7b4vawa84g9d1i4v6m5z7nrfdzd"))))
    (properties `((upstream-name . "yatah")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-purrr r-lifecycle r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://abichat.github.io/yatah/")
    (synopsis "Yet Another TAxonomy Handler")
    (description
     "This package provides functions to manage taxonomy when lineages are described
with strings and ranks separated with special patterns like \"|*__\" or \";*__\".")
    (license license:gpl3)))

(define-public r-yasp
  (package
    (name "r-yasp")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yasp" version))
       (sha256
        (base32 "0fza8h9y1wmarsmjcvw4r970d6j4ii795pd2h4xh9nlsirv50adi"))))
    (properties `((upstream-name . "yasp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/t-kalinowski/yasp")
    (synopsis "String Functions for Compact R Code")
    (description
     "This package provides a collection of string functions designed for writing
compact and expressive R code.  yasp (Yet Another String Package) is simple,
fast, dependency-free, and written in pure R. The package provides: a coherent
set of abbreviations for @code{paste()} from package base with a variety of
defaults, such as @code{p()} for \"paste\" and @code{pcc()} for \"paste and
collapse with commas\"; @code{wrap()}, @code{bracket()}, and others for wrapping
a string in flanking characters; @code{unwrap()} for removing pairs of
characters (at any position in a string); and @code{sentence()} for cleaning
whitespace around punctuation and capitalization appropriate for prose
sentences.")
    (license license:expat)))

(define-public r-yarrr
  (package
    (name "r-yarrr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yarrr" version))
       (sha256
        (base32 "1258bj7x4icaxfabnnd3fgwydnqbzxkih7zw0sdlwdax3q8fw5c5"))))
    (properties `((upstream-name . "yarrr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jpeg r-circlize r-bayesfactor))
    (native-inputs (list r-knitr))
    (home-page "www.thepiratesguidetor.com")
    (synopsis "Companion to the e-Book \"YaRrr!: The Pirate's Guide to R\"")
    (description
     "This package contains a mixture of functions and data sets referred to in the
introductory e-book \"@code{YaRrr}!: The Pirate's Guide to R\".  The latest
version of the e-book is available for free at
<https://www.thepiratesguidetor.com>.")
    (license license:gpl2)))

(define-public r-yamlme
  (package
    (name "r-yamlme")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yamlme" version))
       (sha256
        (base32 "1019nzchqif4r3c7ywq23bjx711g359q44s8jy0rxyv03rij6xh9"))))
    (properties `((upstream-name . "yamlme")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-rmarkdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kamapu/yamlme")
    (synopsis "Writing 'YAML' Headers for 'R-Markdown' Documents")
    (description
     "Setting layout through YAML headers in R-Markdown documents, enabling their
automatic generation.  Functions and methods may summarize R objects in
automatic reports, for instance check-lists and further reports applied to the
packages taxlist and vegtable'.")
    (license license:gpl2+)))

(define-public r-yamlet
  (package
    (name "r-yamlet")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yamlet" version))
       (sha256
        (base32 "0ia9z8410raa54fm2jzh95zr8szbwicp7jg80pj818mbg1xi8lhn"))))
    (properties `((upstream-name . "yamlet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-xtable
                             r-vctrs
                             r-units
                             r-tidyr
                             r-spork
                             r-scales
                             r-rlang
                             r-pillar
                             r-knitr
                             r-ggplot2
                             r-encode
                             r-dplyr
                             r-csv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=yamlet")
    (synopsis "Versatile Curation of Table Metadata")
    (description
     "This package provides a YAML-based mechanism for working with table metadata.
Supports compact syntax for creating, modifying, viewing, exporting, importing,
displaying, and plotting metadata coded as column attributes.  The yamlet
dialect is valid YAML with defaults and conventions chosen to improve
readability.  See ?yamlet, ?decorate, ?modify, ?io_csv, and ?ggplot.decorated.")
    (license license:gpl3)))

(define-public r-yaletoolkit
  (package
    (name "r-yaletoolkit")
    (version "4.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "YaleToolkit" version))
       (sha256
        (base32 "07rqi8j9gzrr4jj9h8mdnh5i251q8rwfdj4lbcmszp64pi09rkck"))))
    (properties `((upstream-name . "YaleToolkit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-iterators r-foreach))
    (home-page "https://cran.r-project.org/package=YaleToolkit")
    (synopsis "Data Exploration Tools from Yale University")
    (description
     "This collection of data exploration tools was developed at Yale University for
the graphical exploration of complex multivariate data; barcode and gpairs now
have their own packages.  The @code{big.read.table()} function provided here may
be useful for large files when only a subset is needed (but please see the note
in the help page for this function).")
    (license license:lgpl3)))

(define-public r-yaimpute
  (package
    (name "r-yaimpute")
    (version "1.0-34.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yaImpute" version))
       (sha256
        (base32 "1ph8cg23pdv2rjbz9ddg8znpzxl8ij1aizgqi7dxqbb8hzc1k6b7"))))
    (properties `((upstream-name . "yaImpute")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/jeffreyevans/yaImpute")
    (synopsis "Nearest Neighbor Observation Imputation and Evaluation Tools")
    (description
     "This package performs nearest neighbor-based imputation using one or more
alternative approaches to processing multivariate data.  These include methods
based on canonical correlation: analysis, canonical correspondence analysis, and
a multivariate adaptation of the random forest classification and regression
techniques of Leo Breiman and Adele Cutler.  Additional methods are also
offered.  The package includes functions for comparing the results from running
alternative techniques, detecting imputation targets that are notably distant
from reference observations, detecting and correcting for bias, bootstrapping
and building ensemble imputations, and mapping results.")
    (license license:gpl2+)))

(define-public r-yahoofinancer
  (package
    (name "r-yahoofinancer")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yahoofinancer" version))
       (sha256
        (base32 "1qs358lxl3pycy64f3dxc74g5kz5yrl8m2lq0w6kn0zdbligy459"))))
    (properties `((upstream-name . "yahoofinancer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-r6
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-curl))
    (home-page "https://yahoofinancer.rsquaredacademy.com/")
    (synopsis "Fetch Data from Yahoo Finance API")
    (description
     "Obtain historical and near real time data related to stocks, index and
currencies from the Yahoo Finance API. This package is community maintained and
is not officially supported by Yahoo'.  The accuracy of data is only as correct
as provided on <https://finance.yahoo.com/>.")
    (license license:expat)))

(define-public r-yager
  (package
    (name "r-yager")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yager" version))
       (sha256
        (base32 "178ypdr3f0w9rb4ci8q2hshr62b7993m8q6zxc4pf0msq175n1ml"))))
    (properties `((upstream-name . "yager")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randtoolbox r-mlmetrics r-lhs))
    (home-page "https://github.com/statcompute/yager")
    (synopsis "Yet Another General Regression Neural Network")
    (description
     "Another implementation of general regression neural network in R based on Specht
(1991) <DOI:10.1109/72.97934>.  It is applicable to the functional approximation
or the classification.")
    (license license:gpl2+)))

(define-public r-yaconsensus
  (package
    (name "r-yaconsensus")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yaConsensus" version))
       (sha256
        (base32 "1p961y1x1a5hp7dw7fhmq6phnh4xybjbh0m90s6p48mg62kan6pk"))))
    (properties `((upstream-name . "yaConsensus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pheatmap r-foreach r-doparallel))
    (native-inputs (list gfortran))
    (home-page "https://github.com/stefanoMP/yaConsensus")
    (synopsis "Consensus Clustering of Omic Data")
    (description
     "Procedures to perform consensus clustering starting from a dissimilarity matrix
or a data matrix.  It's allowed to select if the subsampling has to be by
samples or features.  In case of computational heavy load, the procedures can
run in parallel.")
    (license license:expat)))

(define-public r-yacca
  (package
    (name "r-yacca")
    (version "1.4-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "yacca" version))
       (sha256
        (base32 "197iv7qcbp9xx8kmpwb98acpkgzn9m7sncn6qi7k0chjx78095ws"))))
    (properties `((upstream-name . "yacca")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=yacca")
    (synopsis "Yet Another Canonical Correlation Analysis Package")
    (description
     "An alternative canonical correlation/redundancy analysis function, with
associated print, plot, and summary methods.  A method for generating helio
plots is also included.")
    (license license:gpl3+)))

