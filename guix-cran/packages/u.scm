(define-module (guix-cran packages u)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages pcre)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages apparmor)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages web)
  #:use-module (gnu packages perl)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
  #:use-module (guix-cran packages v)
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

(define-public r-uxr
  (package
    (name "r-uxr")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uxr" version))
       (sha256
        (base32 "0zq89xjbmbc4pmzb3w8frnrqafpxbj2s8lhgj7kvmf6k0yqvpyd3"))))
    (properties `((upstream-name . "uxr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-huxtable
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://joe-chelladurai.github.io/uxr/")
    (synopsis "User Experience Research")
    (description
     "This package provides convenience functions for user experience research with an
emphasis on quantitative user experience testing and reporting.  The functions
are designed to translate statistical approaches to applied user experience
research.")
    (license license:expat)))

(define-public r-uwham
  (package
    (name "r-uwham")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UWHAM" version))
       (sha256
        (base32 "162manvbmlvf8pqhcda9wx17nrdcwscb88ny2r7cvag3j04yxl54"))))
    (properties `((upstream-name . "UWHAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trust))
    (home-page "http://www.stat.rutgers.edu/~ztan")
    (synopsis "Unbinned Weighted Histogram Analysis Method (UWHAM)")
    (description
     "This package provides a method for estimating log-normalizing constants (or free
energies) and expectations from multiple distributions (such as multiple
generalized ensembles).")
    (license license:gpl2+)))

(define-public r-uwedragon
  (package
    (name "r-uwedragon")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uwedragon" version))
       (sha256
        (base32 "00rrklym9ms74ad58cbn4xkibp8k5d12kcrnb68x7b27grvgfnqf"))))
    (properties `((upstream-name . "uwedragon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gtools))
    (home-page "https://cran.r-project.org/package=uwedragon")
    (synopsis
     "Data Research, Access, Governance Network : Statistical Disclosure Control")
    (description
     "This package provides a tool for checking how much information is disclosed when
reporting summary statistics.")
    (license license:gpl3)))

(define-public r-utsf
  (package
    (name "r-utsf")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utsf" version))
       (sha256
        (base32 "04bpx4wb92w41z8h54har5jb9cblhs34qhaqcfkywg83rhp5qgaz"))))
    (properties `((upstream-name . "utsf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctsfr
                             r-rpart
                             r-ranger
                             r-ipred
                             r-ggplot2
                             r-generics
                             r-forecast
                             r-fnn
                             r-cubist))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/franciscomartinezdelrio/utsf")
    (synopsis "Univariate Time Series Forecasting")
    (description
     "An engine for univariate time series forecasting using different regression
models in an autoregressive way.  The engine provides an uniform interface for
applying the different models.  Furthermore, it is extensible so that users can
easily apply their own regression models to univariate time series forecasting
and benefit from all the features of the engine, such as preprocessings or
estimation of forecast accuracy.")
    (license license:expat)))

(define-public r-utilsipea
  (package
    (name "r-utilsipea")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utilsIPEA" version))
       (sha256
        (base32 "07avc0j6qkzqmznbydn0zdg743g7g7kn2bcx5n03m3wg0fqyggr7"))))
    (properties `((upstream-name . "utilsIPEA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-stringdist r-rcurl r-dplyr
                             r-data-table))
    (home-page "https://github.com/ipea/utilsIPEA")
    (synopsis "IPEA Common Functions")
    (description
     "The most used functions on IPEA (Instituto de Pesquisa Economica Aplicada).
Most of functions deal with brazilian names.  It can guess the women single's
name, extract prepositions or extract the first name.")
    (license license:gpl3)))

(define-public r-utilityfunctiontools
  (package
    (name "r-utilityfunctiontools")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utilityFunctionTools" version))
       (sha256
        (base32 "1225nl83yka31j0adm1210kc89vs3hi9i2pqrykax109sgk0nw97"))))
    (properties `((upstream-name . "utilityFunctionTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spatstat-geom))
    (home-page "https://www.sebastianoschneider.com")
    (synopsis "P-Spline Regression for Utility Functions and Derived Measures")
    (description
     "Predicts a smooth and continuous (individual) utility function from utility
points, and computes measures of intensity for risk and higher order risk
measures (or any other measure computed with user-written function) based on
this utility function and its derivatives according to the method introduced in
Schneider (2017) <http://hdl.handle.net/21.11130/00-1735-0000-002E-E306-0>.")
    (license license:gpl3)))

(define-public r-utilityfrailtyph12
  (package
    (name "r-utilityfrailtyph12")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UtilityFrailtyPH12" version))
       (sha256
        (base32 "06f5gmwwk1r14ab6v5jcxz0pmdph7ffi4y57mjg9byn7pjnibflk"))))
    (properties `((upstream-name . "UtilityFrailtyPH12")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-phase123 r-mvtnorm
                             r-bindata))
    (home-page "https://cran.r-project.org/package=UtilityFrailtyPH12")
    (synopsis
     "Implementing EFF-TOX and Monotone Utility Based Phase 12 Trials")
    (description
     "This package contains functions for simulating phase 12 trial designs described
by Chapple and Thall (2019) including simulation and the EFF-TOX trial and
simulation and implementation of the U12 trial.  Functions for implementing the
EFF-TOX trial are found in the package Phase123'.")
    (license license:gpl2)))

(define-public r-utility
  (package
    (name "r-utility")
    (version "1.4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utility" version))
       (sha256
        (base32 "0785pyapq03kyk9lwxyqvs2fdagay1dg71fjqikr6hidbid5fqr3"))))
    (properties `((upstream-name . "utility")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=utility")
    (synopsis "Construct, Evaluate and Plot Value and Utility Functions")
    (description
     "Construct and plot objective hierarchies and associated value and utility
functions.  Evaluate the values and utilities and visualize the results as
colored objective hierarchies or tables.  Visualize uncertainty by plotting
median and quantile intervals within the nodes of objective hierarchies.  Get
numerical results of the evaluations in standard R data types for further
processing.")
    (license license:gpl3)))

(define-public r-utile-visuals
  (package
    (name "r-utile-visuals")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utile.visuals" version))
       (sha256
        (base32 "1f5zhbsx3iaayh9a92w3hlz8nxbfahdk1j8x62r84yp3aw1skbvz"))))
    (properties `((upstream-name . "utile.visuals")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr r-gridextra r-ggplot2 r-dplyr))
    (home-page "https://efinite.github.io/utile.visuals/")
    (synopsis "Create Visuals for Publication")
    (description
     "This package provides a set of functions to aid in the production of visuals in
ggplot2.")
    (license license:lgpl2.0+)))

(define-public r-utile-tools
  (package
    (name "r-utile-tools")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utile.tools" version))
       (sha256
        (base32 "0qxslz6wi4gss9g16p7q6w99pds81pcp9nkffi8b5wrjxj0z2igq"))))
    (properties `((upstream-name . "utile.tools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs r-purrr r-lubridate))
    (home-page "https://efinite.github.io/utile.tools/")
    (synopsis "Summarize Data for Publication")
    (description
     "This package provides tools for formatting and summarizing data for outcomes
research.")
    (license license:lgpl2.0+)))

(define-public r-utile-tables
  (package
    (name "r-utile-tables")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utile.tables" version))
       (sha256
        (base32 "0lsfv5mhyzf1mw2mlyp7xqdin7nhbw473gbibsk1anwmhlvwkipy"))))
    (properties `((upstream-name . "utile.tables")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-utile-tools r-tidyselect r-rlang r-purrr
                             r-dplyr))
    (home-page "https://efinite.github.io/utile.tables/")
    (synopsis "Build Tables for Publication")
    (description
     "This package provides functions for building customized ready-to-export tables
for publication.")
    (license license:lgpl2.0+)))

(define-public r-utf8ify
  (package
    (name "r-utf8ify")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utf8ify" version))
       (sha256
        (base32 "18a0glmyc86xnxgz6igjvphhjrnsr4ma57vx5j6w3hj395pgw4rr"))))
    (properties `((upstream-name . "utf8ify")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rolkra/utf8ify")
    (synopsis "Format Text Using Unicode")
    (description
     "Format text (bold, italic, ...) and numbers using UTF-8.  Offers functions to
search for emojis and include them in your text.")
    (license license:expat)))

(define-public r-utc
  (package
    (name "r-utc")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "utc" version))
       (sha256
        (base32 "1lhm5rhr78cxp3cz5n6j2zkhjphj7csk026xvvhkjqdi39rrq6i4"))))
    (properties `((upstream-name . "utc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=utc")
    (synopsis "Coordinated Universal Time Transformations")
    (description
     "Three functions are provided: first function changes time from local to UTC,
other changes from UTC to local and third returns difference between local and
UTC. %h+% operator is also provided it adds hours to a time.")
    (license license:gpl2)))

(define-public r-ustyc
  (package
    (name "r-ustyc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ustyc" version))
       (sha256
        (base32 "1267bng2dz3229cbbq47w22i2yq2ydpw26ngqa1nbi3ma6hwqsv4"))))
    (properties `((upstream-name . "ustyc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-plyr))
    (home-page "https://github.com/mrbcuda/ustyc")
    (synopsis "Fetch US Treasury yield curve data")
    (description
     "Forms a query to submit for US Treasury yield curve data, posting this query to
the US Treasury web site's data feed service.  By default the download includes
data yield data for 12 products from January 1, 1990, some of which are NA
during this span.  The caller can pass parameters to limit the query to a
certain year or year and month, but the full download is not especially large.
The download data from the service is in XML format.  The package's main
function transforms that XML data into a numeric data frame with treasury
product items (constant maturity yields for 12 kinds of bills, notes, and bonds)
as columns and dates as row names.  The function returns a list which includes
an item for this data frame as well as query-related values for reference and
the update date from the service.")
    (license license:expat)))

(define-public r-ustfd
  (package
    (name "r-ustfd")
    (version "0.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ustfd" version))
       (sha256
        (base32 "1s4qwfjjy0x9hwhfgxx2f1fjwf09dx6m3z3x3mhmpxxgw5arzn5y"))))
    (properties `((upstream-name . "ustfd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-snakecase
                             r-rlang
                             r-readr
                             r-purrr
                             r-lubridate
                             r-httr
                             r-glue
                             r-dplyr))
    (home-page "https://github.com/groditi/ustfd")
    (synopsis "API Client for US Treasury Fiscal Data")
    (description
     "Make requests from the US Treasury Fiscal Data API endpoints.")
    (license license:expat)))

(define-public r-ustatbookabsc
  (package
    (name "r-ustatbookabsc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UStatBookABSC" version))
       (sha256
        (base32 "16r6clhfaalfsg5hmvzm8a128zygxax5hyc0vr1q9bsw9hj7cs0c"))))
    (properties `((upstream-name . "UStatBookABSC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UStatBookABSC")
    (synopsis
     "Companion Package to the Book \"U-Statistics, M-Estimation and Resampling\"")
    (description
     "This package provides a set of functions leading to multivariate response L1
regression.  This includes functions on computing Euclidean inner products and
norms, weighted least squares estimates on multivariate responses, function to
compute fitted values and residuals.  This package is a companion to the book
\"U-Statistics, M-estimation and Resampling\", by Arup Bose and Snigdhansu
Chatterjee, to appear in 2017 as part of the \"Texts and Readings in Mathematics\"
(TRIM) series of Hindustan Book Agency and Springer-Verlag.")
    (license license:gpl3)))

(define-public r-ussherr
  (package
    (name "r-ussherr")
    (version "1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ussherR" version))
       (sha256
        (base32 "0awhric6xrhgv4wb9saq7jyikd3h74i6vlq3aqip4i1m9j3ym3k1"))))
    (properties `((upstream-name . "ussherR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=ussherR")
    (synopsis "Ussher Data Set Drawn from 1658 Chronology")
    (description
     "The \"ussher\" data set is drawn from original chronological textual historic
events.  Commonly known as James Ussher's Annals of the World, the source text
was originally written in Latin in 1650, and published in English translation in
1658.The data are classified by index, year, epoch (or one of the 7 ancient
\"Ages of the World\"), Biblical source book if referenced (rarely), as well as
alternate dating mechanisms, such as \"Anno Mundi\" (age of the world) or \"Julian
Period\" (dates based upon the Julian calendar).  Additional file \"usshfull\"
includes variables that may be of further interest to historians, such as
Southern Kingdom and Northern Kingdom discrepant dates, and the original
amalgamated dating mechanic used by Ussher in the original text.  The raw data
can also be called using \"usshraw\", as described in: Ussher, J. (1658)
<https://archive.org/stream/@code{AnnalsOfTheWorld/Annals_djvu.txt>}.")
    (license license:expat)))

(define-public r-uspopcenters
  (package
    (name "r-uspopcenters")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "USpopcenters" version))
       (sha256
        (base32 "0x3908g399zp03l78d53490rmciq66k8v85hyqircf4z0hfbaxja"))))
    (properties `((upstream-name . "USpopcenters")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page
     "https://www.census.gov/geographies/reference-files/time-series/geo/centers-population.html")
    (synopsis "United States Centers of Population (Centroids)")
    (description
     "Centers of population (centroid) data for census areas in the United States.")
    (license license:cc0)))

(define-public r-usp
  (package
    (name "r-usp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "USP" version))
       (sha256
        (base32 "1fngs82r1xbym8qa1lj9jv1i57r3nx9rr093nfpjl82f7r0kr3sn"))))
    (properties `((upstream-name . "USP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack))
    (home-page "https://cran.r-project.org/package=USP")
    (synopsis
     "U-Statistic Permutation Tests of Independence for all Data Types")
    (description
     "This package implements various independence tests for discrete, continuous, and
infinite-dimensional data.  The tests are based on a U-statistic permutation
test, the USP of Berrett, Kontoyiannis and Samworth (2020)
<@code{arXiv:2001.05513>}, and shown to be minimax rate optimal in a wide range
of settings.  As the permutation principle is used, all tests have exact,
non-asymptotic Type I error control at the nominal level.")
    (license license:expat)))

(define-public r-usmapdata
  (package
    (name "r-usmapdata")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usmapdata" version))
       (sha256
        (base32 "1nji6r0cx7vdfgjji1c50095ad5wchas9m832znd80jkg373i1vs"))))
    (properties `((upstream-name . "usmapdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-rlang))
    (home-page "https://usmap.dev")
    (synopsis "Mapping Data for 'usmap' Package")
    (description
     "This package provides a container for data used by the usmap package.  The data
used by usmap has been extracted into this package so that the file size of the
usmap package can be reduced greatly.  The data in this package will be updated
roughly once per year as new map data files are provided by the US Census
Bureau.")
    (license license:gpl3+)))

(define-public r-usmap
  (package
    (name "r-usmap")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usmap" version))
       (sha256
        (base32 "19wkma0lj3dk725cjjra7grb2ywb96cflqijsjq9q7kngkn0qvdf"))))
    (properties `((upstream-name . "usmap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-usmapdata r-rlang))
    (native-inputs (list r-knitr))
    (home-page "https://usmap.dev")
    (synopsis "US Maps Including Alaska and Hawaii")
    (description
     "Obtain United States map data frames of varying region types (e.g. county,
state).  The map data frames include Alaska and Hawaii conveniently placed to
the bottom left, as they appear in most maps of the US. Convenience functions
for plotting choropleths, visualizing spatial data, and working with FIPS codes
are also provided.")
    (license license:gpl3+)))

(define-public r-usl
  (package
    (name "r-usl")
    (version "3.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usl" version))
       (sha256
        (base32 "0cz837n5kaaa199gci2m9sa4kchz3qy18msq8byxwbx7mr9k6w3c"))))
    (properties `((upstream-name . "usl")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlsr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=usl")
    (synopsis "Analyze System Scalability with the Universal Scalability Law")
    (description
     "The Universal Scalability Law (Gunther 2007) <doi:10.1007/978-3-540-31010-5> is
a model to predict hardware and software scalability.  It uses system capacity
as a function of load to forecast the scalability for the system.")
    (license license:bsd-2)))

(define-public r-uskewfactors
  (package
    (name "r-uskewfactors")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uskewFactors" version))
       (sha256
        (base32 "0ndi5987ak8sa7krgiglsibfg0k7z9j8fg47hg1m8ar0sq4r1yj6"))))
    (properties `((upstream-name . "uskewFactors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tmvtnorm r-mvtnorm r-mcmcpack r-mass))
    (home-page "https://cran.r-project.org/package=uskewFactors")
    (synopsis
     "Model-Based Clustering via Mixtures of Unrestricted Skew-t Sactor Analyzer Models")
    (description
     "This package implements mixtures of unrestricted skew-t factor analyzer models
via the EM algorithm.")
    (license license:gpl2+)))

(define-public r-usingr
  (package
    (name "r-usingr")
    (version "2.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UsingR" version))
       (sha256
        (base32 "17ljllslhfmi80yj1336lx9pmzy2i8zdb6byky5yay1lry7s1g30"))))
    (properties `((upstream-name . "UsingR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-hmisc r-histdata))
    (home-page "https://cran.r-project.org/package=UsingR")
    (synopsis
     "Data Sets, Etc. for the Text \"Using R for Introductory Statistics\", Second Edition")
    (description
     "This package provides a collection of data sets to accompany the textbook \"Using
R for Introductory Statistics,\" second edition.")
    (license license:gpl2+)))

(define-public r-usincometaxes
  (package
    (name "r-usincometaxes")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usincometaxes" version))
       (sha256
        (base32 "1ryml266c7zbzlh5rq2h6gy8flchrjbrlapsy2vvc9s5mwc58vaj"))))
    (properties `((upstream-name . "usincometaxes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom r-v8 r-tibble))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shanejorr/usincometaxes")
    (synopsis "Calculate Federal and State Income Taxes in the United States")
    (description
     "Calculates federal and state income taxes in the United States.  It acts as a
wrapper to the NBER's TAXSIM 35 (<http://taxsim.nber.org/taxsim35/>) tax
simulator.  TAXSIM 35 conducts the calculations, while usincometaxes prepares
the data for TAXSIM 35, sends the data to TAXSIM 35's server or communicates
with the Web Assembly file, retrieves the data, and places it into a data frame.
 All without the user worrying about this process.")
    (license license:expat)))

(define-public r-ushr
  (package
    (name "r-ushr")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ushr" version))
       (sha256
        (base32 "1ygyqgxw849165lpk81f114kgx9015b9a9dngavjy3ffqzrbb41k"))))
    (properties `((upstream-name . "ushr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/SineadMorris/ushr")
    (synopsis "Understanding Suppression of HIV")
    (description
     "Analyzes longitudinal data of HIV decline in patients on antiretroviral therapy
using the canonical biphasic exponential decay model (pioneered, for example, by
work in Perelson et al. (1997) <doi:10.1038/387188a0>; and Wu and Ding (1999)
<doi:10.1111/j.0006-341X.1999.00410.x>).  Model fitting and parameter estimation
are performed, with additional options to calculate the time to viral
suppression.  Plotting and summary tools are also provided for fast assessment
of model results.")
    (license license:expat)))

(define-public r-usgrid
  (package
    (name "r-usgrid")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "USgrid" version))
       (sha256
        (base32 "0babwjnbdyfa2cf65gn08nzy1bs92i56lnhpx558yn0dyk75cz5s"))))
    (properties `((upstream-name . "USgrid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tsibble))
    (home-page "https://github.com/RamiKrispin/USgrid")
    (synopsis "The Demand and Supply for Electricity in the US")
    (description
     "This package provides a set of regular time-series datasets, describing the US
electricity grid.  That includes the total demand and supply, and as well as the
demand by energy source (coal, solar, wind, etc.).  Source: US Energy
Information Administration (Dec 2019) <https://www.eia.gov/>.")
    (license license:expat)))

(define-public r-usgas
  (package
    (name "r-usgas")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "USgas" version))
       (sha256
        (base32 "13aqwwigscvnvp55pmbx2z2ypqgw2ph35c4r6chwcqzsgz32zihq"))))
    (properties `((upstream-name . "USgas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RamiKrispin/USgas")
    (synopsis "The Demand for Natural Gas in the US")
    (description
     "This package provides an overview of the demand for natural gas in the US by
state and country level.  Data source: US Energy Information Administration
<https://www.eia.gov/>.")
    (license license:expat)))

(define-public r-usfertilizer
  (package
    (name "r-usfertilizer")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usfertilizer" version))
       (sha256
        (base32 "05zjn39hqjjzzp4v4b1zbqq59205s7k0kikms951h57kbyvjz6vk"))))
    (properties `((upstream-name . "usfertilizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wenlong-liu/usfertilizer")
    (synopsis "County-Level Estimates of Fertilizer Application in USA")
    (description
     "Compiled and cleaned the county-level estimates of fertilizer, nitrogen and
phosphorus, from 1945 to 2012 in United States of America (USA).  The commercial
fertilizer data were originally generated by USGS based on the sales data of
commercial fertilizer.  The manure data were estimated based on county-level
population data of livestock, poultry, and other animals.  See the user manual
for detailed data sources and cleaning methods.  usfertilizer utilized the
tidyverse to clean the original data and provide user-friendly dataframe.
Please note that USGS does not endorse this package.  Also data from 1986 is not
available for now.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-usemodels
  (package
    (name "r-usemodels")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usemodels" version))
       (sha256
        (base32 "1dc74v4dnbj532cdphskm0y7sqgq1q4yzq634dbvq2bjpqdzf3si"))))
    (properties `((upstream-name . "usemodels")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tune
                             r-tidyr
                             r-rlang
                             r-recipes
                             r-purrr
                             r-dplyr
                             r-clipr
                             r-cli))
    (home-page "https://usemodels.tidymodels.org/")
    (synopsis "Boilerplate Code for 'Tidymodels' Analyses")
    (description
     "Code snippets to fit models using the tidymodels framework can be easily created
for a given data set.")
    (license license:expat)))

(define-public r-usefun
  (package
    (name "r-usefun")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usefun" version))
       (sha256
        (base32 "0w8l35a9kpk735s6j7xc9cb8nr7s3gkywjgvhhk6zycr6f50cx67"))))
    (properties `((upstream-name . "usefun")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-prroc r-precrec r-dplyr r-checkmate))
    (home-page "https://github.com/bblodfon/usefun")
    (synopsis "Collection of Useful Functions by John")
    (description
     "This package provides a set of general functions that I have used in various
projects and other R packages.  Miscellaneous operations on data frames,
matrices and vectors, ROC and PR statistics.")
    (license license:expat)))

(define-public r-usedthese
  (package
    (name "r-usedthese")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usedthese" version))
       (sha256
        (base32 "0ahcyvy2w87mx2qr7pl1fzihiqnsjqbbx1ba435b8ypyz7fzrpy6"))))
    (properties `((upstream-name . "usedthese")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-lifecycle
                             r-knitr
                             r-kableextra
                             r-httr
                             r-highr
                             r-dplyr
                             r-conflicted
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cgoo4.github.io/usedthese/")
    (synopsis "Summarises Package & Function Usage")
    (description
     "Consistent with knitr syntax highlighting, usedthese adds a summary table of
package & function usage to a Quarto document and enables aggregation of usage
across a website.")
    (license license:expat)))

(define-public r-usdoj
  (package
    (name "r-usdoj")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdoj" version))
       (sha256
        (base32 "018kknkabm75h2zzb76lc4mci1cw50f64f1jfbrsyg408syca3qv"))))
    (properties `((upstream-name . "usdoj")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-anytime))
    (home-page "https://github.com/ropengov/usdoj")
    (synopsis "For Accessing U.S. Department of Justice (DOJ) Open Data")
    (description
     "Fetch data from the <https://www.justice.gov/developer/api-documentation/api_v1>
API such as press releases, blog entries, and speeches.  Optional parameters
allow users to specify the number of results starting from the earliest or
latest entries, and whether these results contain keywords.  Data is cleaned for
analysis and returned in a dataframe.")
    (license license:expat)))

(define-public r-usdm
  (package
    (name "r-usdm")
    (version "2.1-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdm" version))
       (sha256
        (base32 "1mr728wmi37kj8m47wjlkc23ifv4rk2fyypyj8rqkpwml5nwjprh"))))
    (properties `((upstream-name . "usdm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra r-raster))
    (home-page "https://r-gis.net/")
    (synopsis "Uncertainty Analysis for Species Distribution Models")
    (description
     "This is a framework that aims to provide methods and tools for assessing the
impact of different sources of uncertainties (e.g.positional uncertainty) on
performance of species distribution models (SDMs).).")
    (license license:gpl3+)))

(define-public r-usdatasets
  (package
    (name "r-usdatasets")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdatasets" version))
       (sha256
        (base32 "0gr4284pzzf2l2h0kxd9i1zj0jx9h874zllzp6ng01fazsyajb3p"))))
    (properties `((upstream-name . "usdatasets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lightbluetitan/usdatasets")
    (synopsis "Comprehensive Collection of U.S. Datasets")
    (description
     "This package provides a diverse collection of U.S. datasets encompassing various
fields such as crime, economics, education, finance, energy, healthcare, and
more.  It serves as a valuable resource for researchers and analysts seeking to
perform in-depth analyses and derive insights from U.S.-specific data.")
    (license license:gpl3)))

(define-public r-usdata
  (package
    (name "r-usdata")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdata" version))
       (sha256
        (base32 "0b6q733l5mrkdbxi9h9gpzz19pmr3c5phigrmmp6fas8gnsm3b3c"))))
    (properties `((upstream-name . "usdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/OpenIntroStat/usdata")
    (synopsis "Data on the States and Counties of the United States")
    (description
     "Demographic data on the United States at the county and state levels spanning
multiple years.")
    (license license:gpl3)))

(define-public r-usdarnass
  (package
    (name "r-usdarnass")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdarnass" version))
       (sha256
        (base32 "10fh9anpmbb7i70q3hjxbplrkqa1q86zgh8nldsf2i526p62hpm1"))))
    (properties `((upstream-name . "usdarnass")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rdinter/usdarnass")
    (synopsis "USDA NASS Quick Stats API")
    (description
     "An alternative for downloading various United States Department of Agriculture
(USDA) data from <https://quickstats.nass.usda.gov/> through R. You must sign up
for an API token from the mentioned website in order for this package to work.")
    (license license:gpl3)))

(define-public r-usdampr
  (package
    (name "r-usdampr")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usdampr" version))
       (sha256
        (base32 "0x84hzsylg22jhvhn4xhkzv4g8j17g73cpj274n7f8cwzcmpj9sx"))))
    (properties `((upstream-name . "usdampr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/cbw1243/usdampr")
    (synopsis "Request USDA MPR Historical Data via the 'LMR' API")
    (description
     "Interface to easily access data via the United States Department of Agriculture
(USDA)'s Livestock Mandatory Reporting ('LMR') Data API at
<https://mpr.datamart.ams.usda.gov/>.  The downloaded data can be saved for
later off-line use.  Also provide relevant information and metadata for each of
the input variables needed for sending the data inquiry.")
    (license license:gpl2+)))

(define-public r-uscongress
  (package
    (name "r-uscongress")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uscongress" version))
       (sha256
        (base32 "1rkq7q5w5ki5sh6n196jyxrkf1ai503qjwf6zsghafb2r37jxfik"))))
    (properties `((upstream-name . "uscongress")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-stringr r-rvest r-httr r-dplyr))
    (home-page "https://cran.r-project.org/package=uscongress")
    (synopsis "Fetch United States Congressional Records (1995-Present)")
    (description
     "Fetch United States Congressional Records from their API
<https://api.govinfo.gov/docs/> such as congressional speeches, speaker names,
and metadata about congressional sessions, and detailed granule records.
Optional parameters allow users to specify congressional sessions, and the
maximum number of speeches to retrieve.  Data is parsed, cleaned, and returned
in a structured dataframe for analysis.")
    (license license:gpl3)))

(define-public r-uscoauditlog
  (package
    (name "r-uscoauditlog")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uscoauditlog" version))
       (sha256
        (base32 "156by8lans2jk8kjll88ljc6z5idgvqwkvrgdwjkr4l4xnsz0sif"))))
    (properties `((upstream-name . "uscoauditlog")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-readxl r-openxlsx))
    (home-page "https://cran.r-project.org/package=uscoauditlog")
    (synopsis
     "United States Copyright Office Product Management Division SR Audit Data Dataset Cleaning Algorithms")
    (description
     "Intended to be used by the United States Copyright Office Product Management
Division Business Analysts.  Include algorithms for the United States Copyright
Office Product Management Division SR Audit Data dataset.  The algorithm takes
in the SR Audit Data excel file and reformat the spreadsheet such that the
values and variables fit the format of the online database.  Support functions
in this package include @code{clean_str()}, which cleans instances of variable
AUDIT_LOG; @code{clean_data_to_excel()}, which cleans and output the reorganized
SR Audit Data dataset in excel format; @code{clean_data_to_dataframe()}, which
cleans and stores the reorganized SR Audit Data data set to a data frame;
@code{format_from_excel()}, which reads in the outputted excel file from the
@code{clean_data_to_excel()} function and formats and returns the data as a
dictionary that uses FIELD types as keys and NON-FIELD types as the values of
those keys. @code{format_from_dataframe()}, which reads in the outputted data
frame from the @code{clean_data_to_dataframe()} function and formats and returns
the data as a dictionary that uses FIELD types as keys and NON-FIELD types as
the values of those keys; @code{support_function()}, which takes in the
dictionary outputted either from the @code{format_from_dataframe()} or
@code{format_from_excel()} function and returns the data as a formatted data
frame according to the original U.S. Copyright Office SR Audit Data online
database.  The main function of this package is @code{clean_format_all()}, which
takes in an excel file and returns the formatted data into a new excel and text
file according to the format from the U.S. Copyright Office SR Audit Data online
database.")
    (license license:gpl2+)))

(define-public r-usaidplot
  (package
    (name "r-usaidplot")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usaidplot" version))
       (sha256
        (base32 "0ar4raxmmsy8v4qakq2bff9dr85mnbpid5z94nqk43nxwcrhs7lx"))))
    (properties `((upstream-name . "usaidplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-extrafontdb r-extrafont))
    (home-page "https://github.com/jacobpstein/usaid_plot")
    (synopsis
     "Make Graphs with US Agency for International Development Colors")
    (description
     "Automatically apply the United States Agency for International Development's
color palette and fonts for either discrete or continuous variables.")
    (license license:expat)))

(define-public r-usa-state-boundaries
  (package
    (name "r-usa-state-boundaries")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "USA.state.boundaries" version))
       (sha256
        (base32 "0pdqnfpijs9n1vxkngs3mm5q9dwqfmlkm60jq8isxcd9fiadsig6"))))
    (properties `((upstream-name . "USA.state.boundaries")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://gitlab.com/iembry/usa.state.boundaries")
    (synopsis
     "WGS84 Datum Map of the USA, Including Puerto Rico and the U.S. Virgin Islands")
    (description
     "This package contains a WGS84 datum map of the USA, which includes all
Commonwealth and State boundaries & also includes Puerto Rico and the U.S.
Virgin Islands.  This map is a reprojection of the NAD83 datum map from the USGS
National Map.  This package contains a subset of the data included in the
USA.state.boundaries.data package, which is available in a drat repository.  To
install that data package, please follow the instructions at
<https://gitlab.com/iembry/usa.state.boundaries.data>.")
    (license license:cc0)))

(define-public r-usa
  (package
    (name "r-usa")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "usa" version))
       (sha256
        (base32 "1hvdflhdwf9dkwqld32kjllr6669mn20v2q6mi06baqfnf5jjmki"))))
    (properties `((upstream-name . "usa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble))
    (home-page "https://k5cents.github.io/usa/")
    (synopsis "Updated US State Facts and Figures")
    (description
     "Updated versions of the 1970's \"US State Facts and Figures\" objects from the
datasets package included with R. The new data is compiled from a number of
sources, primarily from United States Census Bureau or the relevant federal
agency.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-us-census-geoheader
  (package
    (name "r-us-census-geoheader")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "us.census.geoheader" version))
       (sha256
        (base32 "17mss1ggaqkd0ac7g9chgqdrpi5xlbfkxsm1jvj48rp2jfwpp4jw"))))
    (properties `((upstream-name . "us.census.geoheader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-tibble))
    (native-inputs (list r-r-rsp))
    (home-page "https://gitlab.com/minshall/us-census-geoheader")
    (synopsis "US 2010 Census SF2 Geographic Header Summary Levels 010-050")
    (description
     "This package provides a simple interface to the Geographic Header information
from the \"2010 US Census Summary File 2\".  The entire Summary File 2 is
described at <https://catalog.data.gov/dataset/census-2000-summary-file-2-sf2>,
but note that this package only provides access to parts of the geographic
header ('geoheader') of the file.  In particular, only the first 101 columns of
the geoheader are included and, more importantly, only rows with summary levels
(SUMLEVs) 010 through 050 (nation down through county level) are included.  In
addition to access to (part of) the geoheader, the package also provides a
decode function that takes a column name and value and, for certain columns,
returns \"the meaning\" of that column (i.e., a \"SUMLEV\" value of 40 means
\"State\"); without a value, the decode function attempts to describe the column
itself.")
    (license license:bsd-2)))

(define-public r-ursa
  (package
    (name "r-ursa")
    (version "3.11.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ursa" version))
       (sha256
        (base32 "14wkf41k4ws79qc0w92ixh56dk1d5pdiipcgk3n61s6bg7yq7wry"))))
    (properties `((upstream-name . "ursa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf))
    (home-page "https://github.com/nplatonov/ursa")
    (synopsis
     "Non-Interactive Spatial Tools for Raster Processing and Visualization")
    (description
     "S3 classes and methods for manipulation with georeferenced raster data:
reading/writing, processing, multi-panel visualization.")
    (license license:gpl2+)))

(define-public r-urootab
  (package
    (name "r-urootab")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "URooTab" version))
       (sha256
        (base32 "0455ssqi0byi6absaxh5xvvyw9isn2fw3rjvyhmd7h9r5w3a1yd6"))))
    (properties `((upstream-name . "URooTab")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-zoo r-xts r-magrittr r-knitr r-eviewsr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sagirumati/URooTab")
    (synopsis "Tabular Reporting of 'EViews' Unit Root Tests")
    (description
     "Conduct unit root tests based on EViews (<https://eviews.com>) routines and
report them in tables.  EViews (Econometric Views) is a commercial software for
econometrics.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-uroot
  (package
    (name "r-uroot")
    (version "2.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uroot" version))
       (sha256
        (base32 "0bscxlpy1jrgabif2kk9xjb1x095x21psmqwr0h81719378j7xih"))))
    (properties `((upstream-name . "uroot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://geobosh.github.io/uroot/")
    (synopsis "Unit Root Tests for Seasonal Time Series")
    (description
     "Seasonal unit roots and seasonal stability tests.  P-values based on response
surface regressions are available for both tests.  P-values based on bootstrap
are available for seasonal unit root tests.")
    (license license:gpl2)))

(define-public r-urlshortener
  (package
    (name "r-urlshortener")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "urlshorteneR" version))
       (sha256
        (base32 "09v8zif81lygq5w6hrgvzdi15bhfvzjn5jz21xqy14v2665p692p"))))
    (properties `((upstream-name . "urlshorteneR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-miniui
                             r-lubridate
                             r-jsonlite
                             r-httr2
                             r-clipr
                             r-cli
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dmpe/urlshorteneR")
    (synopsis
     "R Wrapper for the 'Bit.ly' and 'Is.gd'/'v.gd' URL Shortening Services")
    (description
     "Allows using two URL shortening services, which also provide expanding and
analytic functions.  Specifically developed for Bit.ly (which requires OAuth
2.0) and is.gd (no API key).")
    (license license:asl2.0)))

(define-public r-urlparse
  (package
    (name "r-urlparse")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "urlparse" version))
       (sha256
        (base32 "03fynxqmrfwkvnsh915r77l8sakj0v1pr4wb13xbqhhqaz44fmff"))))
    (properties `((upstream-name . "urlparse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/dyfanjones/urlparse")
    (synopsis "Fast Simple URL Parser")
    (description
     "This package provides a fast and simple URL parser package for R'.  This package
provides functions to parse URLs into their components, such as scheme, user,
password, host, port, path, query, and fragment.")
    (license license:expat)))

(define-public r-urlexplorer
  (package
    (name "r-urlexplorer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "urlexplorer" version))
       (sha256
        (base32 "0ds243hqf807zkjxja09l45796im1vd7vclx8adjwyb8d1vgsmyb"))))
    (properties `((upstream-name . "urlexplorer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr r-tibble r-stringr r-rlang r-dplyr))
    (home-page "https://github.com/MarekProkop/urlexplorer")
    (synopsis "Structural Analysis and Pattern Discovery in URL Datasets")
    (description
     "Offers tools for parsing and analyzing URL datasets, extracting key components
and identifying common patterns.  It aids in examining website architecture and
identifying SEO issues, helping users optimize web presence and content
strategy.")
    (license license:expat)))

(define-public r-urbin
  (package
    (name "r-urbin")
    (version "0.1-16")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "urbin" version))
       (sha256
        (base32 "0jw2ih916m1nrhmdggpg5kx3ldhvpr2fpxmm638nb366zmynaf0z"))))
    (properties `((upstream-name . "urbin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/arne-henningsen/urbin/")
    (synopsis "Unifying Estimation Results with Binary Dependent Variables")
    (description
     "Calculate unified measures that quantify the effect of a covariate on a binary
dependent variable (e.g., for meta-analyses).  This can be particularly
important if the estimation results are obtained with different
models/estimators (e.g., linear probability model, logit, probit, ...) and/or
with different transformations of the explanatory variable of interest (e.g.,
linear, quadratic, interval-coded, ...).  The calculated unified measures are:
(a) semi-elasticities of linear, quadratic, or interval-coded covariates and (b)
effects of linear, quadratic, interval-coded, or categorical covariates when a
linear or quadratic covariate changes between distinct intervals, the reference
category of a categorical variable or the reference interval of an
interval-coded variable needs to be changed, or some categories of a categorical
covariate or some intervals of an interval-coded covariate need to be grouped
together.  Approximate standard errors of the unified measures are also
calculated.  All methods that are implemented in this package are described in
the vignette \"Extracting and Unifying Semi-Elasticities and Effect Sizes from
Studies with Binary Dependent Variables\" that is included in this package.")
    (license license:gpl2+)))

(define-public r-ura
  (package
    (name "r-ura")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ura" version))
       (sha256
        (base32 "1ahj58yn7gn8lcj95xxzg39p7vznppslqj4vyq5x66c21vq7dmn4"))))
    (properties `((upstream-name . "ura")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-magrittr
                             r-irr
                             r-dplyr))
    (home-page "https://github.com/bengoehring/ura")
    (synopsis "Monitoring Rater Reliability")
    (description
     "This package provides researchers with a simple set of diagnostic tools for
monitoring the progress and reliability of raters conducting content coding
tasks.  Goehring (2024)
<https://bengoehring.github.io/improving-content-analysis-tools-for-working-with-undergraduate-research-assistants.pdf>
argues that supervisors---especially supervisors of small teams---should utilize
computational tools to monitor reliability in real time.  As such, this package
provides easy-to-use functions for calculating inter-rater reliability
statistics and measuring the reliability of one coder compared to the rest of
the team.")
    (license license:expat)))

(define-public r-uptimerobot
  (package
    (name "r-uptimerobot")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uptimeRobot" version))
       (sha256
        (base32 "1sbr0vs6jqcyxjbs7q45bsfdnp3bc59phw0h3fwajqq1cxjgzdww"))))
    (properties `((upstream-name . "uptimeRobot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjson r-rcurl r-plyr))
    (home-page "https://gabrielebaldassarre.com/r/uptimerobot")
    (synopsis "Access the UptimeRobot Ping API")
    (description
     "Provide a set of wrappers to call all the endpoints of @code{UptimeRobot} API
which includes various kind of ping, keep-alive and speed tests.  See
<https://uptimerobot.com/> for more information.")
    (license license:expat)))

(define-public r-uptasticsearch
  (package
    (name "r-uptasticsearch")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uptasticsearch" version))
       (sha256
        (base32 "0qi75s0c7ngwgqhkyyrmnd0krr5din90f2xpa1w2s6rf7nz6z4sd"))))
    (properties `((upstream-name . "uptasticsearch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-purrr
                             r-jsonlite
                             r-futile-logger
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/uptake/uptasticsearch")
    (synopsis "Get Data Frame Representations of 'Elasticsearch' Results")
    (description
     "Elasticsearch is an open-source, distributed, document-based datastore
(<https://www.elastic.co/products/elasticsearch>).  It provides an HTTP API for
querying the database and extracting datasets, but that API was not designed for
common data science workflows like pulling large batches of records and
normalizing those documents into a data frame that can be used as a training
dataset for statistical models.  uptasticsearch provides an interface for
Elasticsearch that is explicitly designed to make these data science workflows
easy and fun.")
    (license license:bsd-3)))

(define-public r-upsvarapprox
  (package
    (name "r-upsvarapprox")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UPSvarApprox" version))
       (sha256
        (base32 "14hj8yv366qix30x7hq1sfzrcrsx4ckfa010azi1ihzp307hfkbz"))))
    (properties `((upstream-name . "UPSvarApprox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UPSvarApprox")
    (synopsis
     "Approximate the Variance of the Horvitz-Thompson Total Estimator")
    (description
     "Variance approximations for the Horvitz-Thompson total estimator in Unequal
Probability Sampling using only first-order inclusion probabilities.  See Matei
and TillÃ© (2005) and Haziza, Mecatti and Rao (2008) for details.")
    (license license:gpl3)))

(define-public r-upstartr
  (package
    (name "r-upstartr")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "upstartr" version))
       (sha256
        (base32 "08afvjk428r3hdhzpb5ah7iba1y8knxa0ziq9zik7fg984hr4hak"))))
    (properties `((upstream-name . "upstartr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidytext
                             r-tgamtheme
                             r-textclean
                             r-stringr
                             r-sf
                             r-scales
                             r-rmarkdown
                             r-readxl
                             r-readr
                             r-purrr
                             r-openxlsx
                             r-magrittr
                             r-librarian
                             r-knitr
                             r-here
                             r-glue
                             r-ggplot2
                             r-dplyr
                             r-crayon
                             r-beepr))
    (home-page "https://github.com/globeandmail/upstartr")
    (synopsis
     "Utilities Powering the Globe and Mail's Data Journalism Template")
    (description
     "Core functions necessary for using The Globe and Mail's R data journalism
template, startr', along with utilities for day-to-day data journalism tasks,
such as reading and writing files, producing graphics and cleaning up datasets.")
    (license license:expat)))

(define-public r-upsetvp
  (package
    (name "r-upsetvp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UpSetVP" version))
       (sha256
        (base32 "1v6djfwaix978vzfjnj0vd3r0m3svfqkn9aqnf9qz2xsjk43m9zr"))))
    (properties `((upstream-name . "UpSetVP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdacca-hp r-patchwork r-ggplot2))
    (home-page "https://github.com/LiuXYh/UpSetVP")
    (synopsis
     "An Alternative Visualization of VPA and HP in Canonical Analysis")
    (description
     "Using matrix layout to visualize the unique, common, or individual contribution
of each predictor (or matrix of predictors) towards explained variation on
canonical analysis.  These contributions were derived from variance partitioning
analysis (VPA) and hierarchical partitioning (HP), applying the algorithm of Lai
J., Zou Y., Zhang J., Peres-Neto P. (2022) Generalizing hierarchical and
variation partitioning in multiple regression and canonical analyses using the
rdacca.hp R package.Methods in Ecology and Evolution, 13: 782-788
<doi:10.1111/2041-210X.13800>.")
    (license license:gpl2+)))

(define-public r-upsetjs
  (package
    (name "r-upsetjs")
    (version "1.11.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "upsetjs" version))
       (sha256
        (base32 "0flpamy4wfjz1b0wi338rcim2zsh33jpskrq6g8jvljlc4asr485"))))
    (properties `((upstream-name . "upsetjs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-htmlwidgets))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/upsetjs/upsetjs_r/")
    (synopsis
     "'HTMLWidget' Wrapper of 'UpSet.js' for Exploring Large Set Intersections")
    (description
     "@code{UpSet.js} is a re-implementation of @code{UpSetR} to create interactive
set visualizations for more than three sets.  This is a htmlwidget wrapper
around the @code{JavaScript} library @code{UpSet.js}'.")
    (license (list license:agpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-upset-hp
  (package
    (name "r-upset-hp")
    (version "0.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "upset.hp" version))
       (sha256
        (base32 "02yz5hn0zph3y7aamanppihvjd3l4klrphlns71g79r0i6qpzap3"))))
    (properties `((upstream-name . "upset.hp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan r-patchwork r-mumin r-glmm-hp r-ggplot2))
    (home-page "https://github.com/laijiangshan/upset.hp")
    (synopsis "Generate UpSet Plots of VP and HP Based on the ASV Concept")
    (description
     "Using matrix layout to visualize the unique, common, or individual contribution
of each predictor (or matrix of predictors) towards explained variation on
different models.  These contributions were derived from variation partitioning
(VP) and hierarchical partitioning (HP), applying the algorithm of \"Lai et al.
(2022) Generalizing hierarchical and variation partitioning in multiple
regression and canonical analyses using the rdacca.hp R package.Methods in
Ecology and Evolution, 13: 782-788 <doi:10.1111/2041-210X.13800>\".")
    (license license:gpl2+)))

(define-public r-upndown
  (package
    (name "r-upndown")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "upndown" version))
       (sha256
        (base32 "02qz24zzl0d4hiwc35l21sp06sm1k1swrk8kp8wqxfjknps5qcvp"))))
    (properties `((upstream-name . "upndown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-mass r-expm r-cir))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=upndown")
    (synopsis "Utilities and Design Aids for Up-and-Down Dose-Finding Studies")
    (description
     "Up-and-Down (UD) is the most popular design approach for dose-finding, but it
has been severely under-served by the statistical and computing communities.
This is the first package that comprehensively addresses UD's needs.  Recent
applied UD tutorial: Oron et al., 2022 <doi:10.1097/ALN.0000000000004282>.
Recent methodological overview: Oron and Flournoy, 2024
<doi:10.51387/24-NEJSDS74>.")
    (license license:gpl2)))

(define-public r-upg
  (package
    (name "r-upg")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UPG" version))
       (sha256
        (base32 "1drfcmxfk16gvcgnmb5m8pnqxjhs2ai10rr1nzrzpid610b01r54"))))
    (properties `((upstream-name . "UPG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-reshape2
                             r-pgdraw
                             r-mnormt
                             r-matrixstats
                             r-knitr
                             r-ggplot2
                             r-coda))
    (home-page "https://cran.r-project.org/package=UPG")
    (synopsis
     "Efficient Bayesian Algorithms for Binary and Categorical Data Regression Models")
    (description
     "Efficient Bayesian implementations of probit, logit, multinomial logit and
binomial logit models.  Functions for plotting and tabulating the estimation
output are available as well.  Estimation is based on Gibbs sampling where the
Markov chain Monte Carlo algorithms are based on the latent variable
representations and marginal data augmentation algorithms described in \"Gregor
Zens, Sylvia FrÃ¼hwirth-Schnatter & Helga Wagner (2023).  Ultimate PÃ³lya Gamma
Samplers â Efficient MCMC for possibly imbalanced binary and categorical data,
Journal of the American Statistical Association
<doi:10.1080/01621459.2023.2259030>\".")
    (license license:gpl3)))

(define-public r-updown
  (package
    (name "r-updown")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UpDown" version))
       (sha256
        (base32 "0c1mi43mkadhpalrd3wlp94ri1sp9ii5wcn44pgz35ki7nngrnaj"))))
    (properties `((upstream-name . "UpDown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-reshape2
                             r-mixtools
                             r-mclust
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=UpDown")
    (synopsis "Detecting Group Disturbances from Longitudinal Observations")
    (description
     "This package provides an algorithm to detect and characterize disturbances
(start, end dates, intensity) that can occur at different hierarchical levels by
studying the dynamics of longitudinal observations at the unit level and group
level based on Nadaraya-Watson's smoothing curves, but also a shiny app which
allows to visualize the observations and the detected disturbances.  Finally the
package provides a dataframe mimicking a pig farming system subsected to
disturbances simulated according to Le et al.(2022)
<doi:10.1016/j.animal.2022.100496>.")
    (license license:gpl3+)))

(define-public r-updog
  (package
    (name "r-updog")
    (version "2.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "updog" version))
       (sha256
        (base32 "118i7z797cc7hhsk0i4w7n0p7znw9szvn7mbymc7d9yqnck4x6d9"))))
    (properties `((upstream-name . "updog")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-iterators
                             r-ggplot2
                             r-future
                             r-foreach
                             r-dorng
                             r-dofuture
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dcgerard/updog/")
    (synopsis "Flexible Genotyping for Polyploids")
    (description
     "This package implements empirical Bayes approaches to genotype polyploids from
next generation sequencing data while accounting for allele bias,
overdispersion, and sequencing error.  The main functions are @code{flexdog()}
and @code{multidog()}, which allow the specification of many different genotype
distributions.  Also provided are functions to simulate genotypes,
@code{rgeno()}, and read-counts, @code{rflexdog()}, as well as functions to
calculate oracle genotyping error rates, @code{oracle_mis()}, and correlation
with the true genotypes, @code{oracle_cor()}.  These latter two functions are
useful for read depth calculations.  Run @code{browseVignettes(package} =
\"updog\") in R for example usage.  See Gerard et al. (2018)
<doi:10.1534/genetics.118.301468> and Gerard and Ferrao (2020)
<doi:10.1093/bioinformatics/btz852> for details on the implemented methods.")
    (license license:gpl3)))

(define-public r-updater
  (package
    (name "r-updater")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "updater" version))
       (sha256
        (base32 "1grf0wv1z8n8fabrj4f5mj9vn9fngkqhniqngspbfkxkgws0rilf"))))
    (properties `((upstream-name . "updater")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-renv r-cli))
    (home-page "https://github.com/ddsjoberg/updater")
    (synopsis "Utilities for Updating R")
    (description
     "When updating major or minor R versions all packages should be re-installed.
The utilities in this package assist in getting a user up-and-running again by
installing all previously installed R packages.  The package uses renv to
install; immediately replenishing your renv package cache.")
    (license license:expat)))

(define-public r-updateme
  (package
    (name "r-updateme")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "updateme" version))
       (sha256
        (base32 "1jacr70r8fz4svxz3vm6dnvf5jfp7zxazgnbqkyiirg704v3wf0n"))))
    (properties `((upstream-name . "updateme")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-memoise r-curl r-cli r-cachem))
    (home-page "https://github.com/wurli/updateme")
    (synopsis "Informative Messages About Outdated Packages")
    (description
     "When a package is loaded, the source repository is checked for new versions and
a message is shown in the console indicating whether the package is out of date.")
    (license license:expat)))

(define-public r-upcm
  (package
    (name "r-upcm")
    (version "0.0-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UPCM" version))
       (sha256
        (base32 "1c6fc1yrbhsia33qxjq29fgwa1hynpd006jvvb79dx1klwmmn4kk"))))
    (properties `((upstream-name . "UPCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-numderiv
                             r-mvtnorm
                             r-ltm
                             r-cubature))
    (home-page "https://cran.r-project.org/package=UPCM")
    (synopsis "Uncertainty in Partial Credit Models")
    (description
     "This package provides an extension to the Partial Credit Model and Generalized
Partial Credit Models which allows for an additional person parameter that
characterizes the uncertainty of the person.  The method was originally proposed
by Tutz and Schauberger (2020) <doi:10.1177/0146621620920932>.")
    (license license:gpl2+)))

(define-public r-upanddownplots
  (package
    (name "r-upanddownplots")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UpAndDownPlots" version))
       (sha256
        (base32 "0q19a64dy0g89yyxgs88vpcisc9apji3cl7b7gdm778y6j59jnjq"))))
    (properties `((upstream-name . "UpAndDownPlots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-gridextra
                             r-ggthemes
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UpAndDownPlots")
    (synopsis "Displays Percentage and Absolute Changes")
    (description
     "Displays percentage changes by height and absolute changes by area for up to
three nested or non-nested levels.  The plots visualise changes in indices and
markets, showing how the changes for sectors or for individual components
contribute to the overall change.  Data can be classified by up to three levels
of grouping variables in a layered, hierarchical plot.  Each level can be
ordered in several ways including by baseline, by percentage change, and by
absolute change.  The vignettes give examples.")
    (license license:gpl2+)))

(define-public r-uotm
  (package
    (name "r-uotm")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uotm" version))
       (sha256
        (base32 "0f8mkamgkyn97n6795hi385lakws6nm8aqwrccpdxhpj1ymmrjv7"))))
    (properties `((upstream-name . "uotm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hash r-ggplot2 r-forecast r-boot))
    (home-page "https://cran.r-project.org/package=uotm")
    (synopsis "Uncertainty of Time Series Model Selection Methods")
    (description
     "We propose a new procedure, called model uncertainty variance, which can
quantify the uncertainty of model selection on Autoregressive Moving Average
models.  The model uncertainty variance not pay attention to the accuracy of
prediction, but focus on model selection uncertainty and providing more
information of the model selection results.  And to estimate the model measures,
we propose an simplify and faster algorithm based on bootstrap method, which is
proven to be effective and feasible by Monte-Carlo simulation.  At the same
time, we also made some optimizations and adjustments to the Model Confidence
Bounds algorithm, so that it can be applied to the time series model selection
method.  The consistency of the algorithm result is also verified by Monte-Carlo
simulation.  We propose a new procedure, called model uncertainty variance,
which can quantify the uncertainty of model selection on Autoregressive Moving
Average models.  The model uncertainty variance focuses on model selection
uncertainty and providing more information of the model selection results.  To
estimate the model uncertainty variance, we propose an simplified and faster
algorithm based on bootstrap method, which is proven to be effective and
feasible by Monte-Carlo simulation.  At the same time, we also made some
optimizations and adjustments to the Model Confidence Bounds algorithm, so that
it can be applied to the time series model selection method.  The consistency of
the algorithm result is also verified by Monte-Carlo simulation.  Please see
Li,Y., Luo,Y., Ferrari,D., Hu,X. and Qin,Y. (2019) Model Confidence Bounds for
Variable Selection.  Biometrics, 75:392-403.<DOI:10.1111/biom.13024> for more
information.")
    (license license:gpl3)))

(define-public r-unvs-med
  (package
    (name "r-unvs-med")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unvs.med" version))
       (sha256
        (base32 "0lr7dyzfp3j6znyiawzjvg9bfwh0b8nh60ld4wjq2awj9mcmh0sw"))))
    (properties `((upstream-name . "unvs.med")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-snowfall r-data-table))
    (home-page "https://cran.r-project.org/package=unvs.med")
    (synopsis "Universal Approach for Causal Mediation Analysis")
    (description
     "This program realizes a universal estimation approach that accommodates
multi-category variables and effect scales, making up for the deficiencies of
the existing approaches when dealing with non-binary exposures and complex
models.  The estimation via bootstrapping can simultaneously provide results of
causal mediation on risk difference (RD), odds ratio (OR) and risk ratio (RR)
scales with tests of the effects difference.  The estimation is also applicable
to many other settings, e.g., moderated mediation, inconsistent covariates,
panel data, etc.  The high flexibility and compatibility make it possible to
apply for any type of model, greatly meeting the needs of current empirical
researches.")
    (license license:gpl3)))

(define-public r-unvotes
  (package
    (name "r-unvotes")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unvotes" version))
       (sha256
        (base32 "1vfyvwqfbxp29x2a0sqng6l5pkp2hc3hadp95ysnpannnsd6x0jw"))))
    (properties `((upstream-name . "unvotes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dgrtwo/unvotes")
    (synopsis "United Nations General Assembly Voting Data")
    (description
     "Historical voting data of the United Nations General Assembly.  This includes
votes for each country in each roll call, as well as descriptions and topic
classifications for each vote.")
    (license license:expat)))

(define-public r-unusualprofile
  (package
    (name "r-unusualprofile")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unusualprofile" version))
       (sha256
        (base32 "0c2jcnl0aj45dw0rcryjcr24mbsf7r39xxv4gcli583czj3grp4g"))))
    (properties `((upstream-name . "unusualprofile")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-ggnormalviolin
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wjschne/unusualprofile")
    (synopsis "Calculates Conditional Mahalanobis Distances")
    (description
     "Calculates a Mahalanobis distance for every row of a set of outcome variables
(Mahalanobis, 1936 <doi:10.1007/s13171-019-00164-5>).  The conditional
Mahalanobis distance is calculated using a conditional covariance matrix (i.e.,
a covariance matrix of the outcome variables after controlling for a set of
predictors).  Plotting the output of the @code{cond_maha()} function can help
identify which elements of a profile are unusual after controlling for the
predictors.")
    (license license:gpl3+)))

(define-public r-unsystation
  (package
    (name "r-unsystation")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unsystation" version))
       (sha256
        (base32 "0j928sh0z0rnd43i1n3y4ywps3hwy8pvd8xnqvp8nxf6kk5pknjy"))))
    (properties `((upstream-name . "unsystation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-iterators r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=unsystation")
    (synopsis "Stationarity Test Based on Unsystematic Sub-Sampling")
    (description
     "This package performs a test for second-order stationarity of time series based
on unsystematic sub-samples.")
    (license license:gpl2)))

(define-public r-unsum
  (package
    (name "r-unsum")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unsum" version))
       (sha256
        (base32 "0x3jlahx78dip1r6dld8h0gwiiivznj7m001fdzb83s2709a81jf"))))
    (properties `((upstream-name . "unsum")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-tibble
                             r-scales
                             r-roundwork
                             r-rlang
                             r-readr
                             r-nanoparquet
                             r-ggplot2
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lhdjung/unsum")
    (synopsis "Reconstruct Raw Data from Summary Statistics")
    (description
     "Reconstructs all possible raw data that could have led to reported summary
statistics.  Provides a wrapper for the Rust implementation of the CLOSURE
algorithm.")
    (license license:expat)))

(define-public r-unstruwwel
  (package
    (name "r-unstruwwel")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unstruwwel" version))
       (sha256
        (base32 "1j3l68lcsmkdlfpw20p7nqh2lalds1inz82xmy9kiw7lwpq74ycj"))))
    (properties `((upstream-name . "unstruwwel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-r6
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-assertthat))
    (home-page "https://github.com/stefanieschneider/unstruwwel")
    (synopsis "Detect and Parse Historic Dates")
    (description
     "Automatically converts language-specific verbal information, e.g., \"1st half of
the 19th century,\" to its standardized numerical counterparts, e.g.,
\"1801-01-01/1850-12-31.\" It follows the recommendations of the MIDAS ('Marburger
Informations-, Dokumentations- und Administrations-System'), see
<doi:10.11588/artdok.00003770>.")
    (license license:gpl3)))

(define-public r-unrtf
  (package
    (name "r-unrtf")
    (version "1.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unrtf" version))
       (sha256
        (base32 "1z5bdck8ykj9dh6ngr3qf88ad209hx8xizv02z7iil0jgycriqqr"))))
    (properties `((upstream-name . "unrtf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list pcre2))
    (propagated-inputs (list r-sys))
    (home-page "https://cran.r-project.org/package=unrtf")
    (synopsis "Extract Text from Rich Text Format (RTF) Documents")
    (description
     "Wraps the unrtf utility <https://www.gnu.org/software/unrtf/> to extract text
from RTF files.  Supports document conversion to HTML, @code{LaTeX} or plain
text.  Output in HTML is recommended because unrtf has limited support for
converting between character encodings.")
    (license license:gpl3)))

(define-public r-unrepx
  (package
    (name "r-unrepx")
    (version "1.0-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unrepx" version))
       (sha256
        (base32 "1v27r1lap282zjykki377ni2mmimng81fwmpgs1q6kszvpq8fby6"))))
    (properties `((upstream-name . "unrepx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unrepx")
    (synopsis "Analysis and Graphics for Unreplicated Experiments")
    (description
     "This package provides half-normal plots, reference plots, and Pareto plots of
effects from an unreplicated experiment, along with various
pseudo-standard-error measures, simulated reference distributions, and other
tools.  Many of these methods are described in Daniel C. (1959)
<doi:10.1080/00401706.1959.10489866> and/or Lenth R.V. (1989)
<doi:10.1080/00401706.1989.10488595>, but some new approaches are added and
integrated in one package.")
    (license license:gpl2+)))

(define-public r-unplansimon
  (package
    (name "r-unplansimon")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnplanSimon" version))
       (sha256
        (base32 "193vanpin2fxqnvjjc631593dqskz99zn4wbgrmysabqc0s6baqn"))))
    (properties `((upstream-name . "UnplanSimon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UnplanSimon")
    (synopsis
     "Methods for Managing Enrollment Deviation in Simon's Two-Stage Design")
    (description
     "This package provides methods for managing under- and over-enrollment in Simon's
Two-Stage Design are offered by providing adaptive threshold adjustments and
sample size recalibration.  It also includes post-inference analysis tools to
support clinical trial design and evaluation.  The package is designed to
enhance flexibility and accuracy in trial design, ensuring better outcomes in
oncology and other clinical studies.  Yunhe Liu, Haitao Pan (2024).  Submitted.")
    (license license:gpl3+)))

(define-public r-unpivotr
  (package
    (name "r-unpivotr")
    (version "0.6.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unpivotr" version))
       (sha256
        (base32 "0rkkq4m0w8pcya1yvxvilpdxmn0wjg7xfz6d06026zlhx8c4xm9s"))))
    (properties `((upstream-name . "unpivotr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-pillar
                             r-magrittr
                             r-forcats
                             r-dplyr
                             r-cellranger))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nacnudus/unpivotr")
    (synopsis "Unpivot Complex and Irregular Data Layouts")
    (description
     "This package provides tools for converting data from complex or irregular
layouts to a columnar structure.  For example, tables with multilevel column or
row headers, or spreadsheets.  Header and data cells are selected by their
contents and position, as well as formatting and comments where available, and
are associated with one other by their proximity in given directions.  Functions
for data frames and HTML tables are provided.")
    (license license:expat)))

(define-public r-unpac
  (package
    (name "r-unpac")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UNPaC" version))
       (sha256
        (base32 "1dqli7fanh0gk2bfbcykrrswyjrl9g4rbplxjxgjri7kkmf03cd0"))))
    (properties `((upstream-name . "UNPaC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pdsce r-huge))
    (home-page "https://cran.r-project.org/package=UNPaC")
    (synopsis
     "Non-Parametric Cluster Significance Testing with Reference to a Unimodal Null Distribution")
    (description
     "Assess the significance of identified clusters and estimates the true number of
clusters by comparing the explained variation due to the clustering from the
original data to that produced by clustering a unimodal reference distribution
which preserves the covariance structure in the data.  The reference
distribution is generated using kernel density estimation and a Gaussian copula
framework.  A dimension reduction strategy and sparse covariance estimation
optimize this method for the high-dimensional, low-sample size setting.  This
method is described in Helgeson, Vock, and Bair (2021) <doi:10.1111/biom.13376>.")
    (license license:gpl2+)))

(define-public r-unnest
  (package
    (name "r-unnest")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unnest" version))
       (sha256
        (base32 "0mi0lawmlwhbmlrpvfjab3m203lgwh21lpr1llpxd8g357kbkcak"))))
    (properties `((upstream-name . "unnest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vspinu/unnest/")
    (synopsis "Unnest Hierarchical Data Structures")
    (description
     "Fast flattening of hierarchical data structures (e.g. JSON, XML) into
data.frames with a flexible spec language.")
    (license license:gpl2+)))

(define-public r-unmconf
  (package
    (name "r-unmconf")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unmconf" version))
       (sha256
        (base32 "0h07n154z5pwrvllan4gpgmcnsqnpq8aiyrjhpyvsdgbgn6s89wm"))))
    (properties `((upstream-name . "unmconf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjags r-janitor r-glue r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unmconf")
    (synopsis "Modeling with Unmeasured Confounding")
    (description
     "This package provides tools for fitting and assessing Bayesian multilevel
regression models that account for unmeasured confounders.")
    (license license:expat)))

(define-public r-unmarked
  (package
    (name "r-unmarked")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unmarked" version))
       (sha256
        (base32 "0kjrbfjxan7micc230vqnx34s3bl62vsrg2gqv3i2j9s348yhmqk"))))
    (properties `((upstream-name . "unmarked")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tmb
                             r-reformulas
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-mass
                             r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://groups.google.com/d/forum/unmarked")
    (synopsis "Models for Data from Unmarked Animals")
    (description
     "Fits hierarchical models of animal abundance and occurrence to data collected
using survey methods such as point counts, site occupancy sampling, distance
sampling, removal sampling, and double observer sampling.  Parameters governing
the state and observation processes can be modeled as functions of covariates.
References: Kellner et al. (2023) <doi:10.1111/2041-210X.14123>, Fiske and
Chandler (2011) <doi:10.18637/jss.v043.i10>.")
    (license license:gpl3+)))

(define-public r-unjoin
  (package
    (name "r-unjoin")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unjoin" version))
       (sha256
        (base32 "1hp9fxkb59z0cpnwxpaf5whglrljg2nrmsygdb98klxsama9gr5z"))))
    (properties `((upstream-name . "unjoin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rlang r-dplyr))
    (home-page "https://github.com/hypertidy/unjoin")
    (synopsis "Separate a Data Frame by Normalization")
    (description
     "Separate a data frame in two based on key columns.  The function @code{unjoin()}
provides an inside-out version of a nested data frame.  This is used to identify
duplication and normalize it (in the database sense) by linking two tables with
the redundancy removed.  This is a basic requirement for detecting topology
within spatial structures that has motivated the need for this package as a
building block for workflows within more applied projects.")
    (license license:gpl3)))

(define-public r-unix
  (package
    (name "r-unix")
    (version "1.5.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unix" version))
       (sha256
        (base32 "0jbbdrrcb13w7c3rb2f3z4mja2cw0lf2c45pf4294qzsrnkq422j"))))
    (properties `((upstream-name . "unix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list apparmor))
    (native-inputs (list pkg-config))
    (home-page "https://jeroen.r-universe.dev/unix")
    (synopsis "POSIX System Utilities")
    (description
     "Bindings to system utilities found in most Unix systems such as POSIX functions
which are not part of the Standard C Library.")
    (license license:expat)))

(define-public r-univrng
  (package
    (name "r-univrng")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnivRNG" version))
       (sha256
        (base32 "14z2yqv14sv16ycf7jf2kkp8pqn12d9lq4l568vmdm10qrl5x39d"))))
    (properties `((upstream-name . "UnivRNG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UnivRNG")
    (synopsis "Univariate Pseudo-Random Number Generation")
    (description
     "Pseudo-random number generation of 17 univariate distributions proposed by
Demirtas. (2005) <DOI:10.22237/jmasm/1114907220>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-universals
  (package
    (name "r-universals")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "universals" version))
       (sha256
        (base32 "1038x1ymzyiim7gdz09hrs8i0qdzya0p0c5l7y3kgw1a4if2zhmj"))))
    (properties `((upstream-name . "universals")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://poissonconsulting.github.io/universals/")
    (synopsis "S3 Generics for Bayesian Analyses")
    (description
     "This package provides S3 generic methods and some default implementations for
Bayesian analyses that generate Markov Chain Monte Carlo (MCMC) samples.  The
purpose of universals is to reduce package dependencies and conflicts.  The
nlist package implements many of the methods for its nlist class.")
    (license license:expat)))

(define-public r-universalcvi
  (package
    (name "r-universalcvi")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UniversalCVI" version))
       (sha256
        (base32 "12va8dv4ni2q1h493mx4h72h5ccya9di5220rp9ia8ishyvy0crk"))))
    (properties `((upstream-name . "UniversalCVI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mclust r-e1071))
    (home-page "https://cran.r-project.org/package=UniversalCVI")
    (synopsis "Hard and Soft Cluster Validity Indices")
    (description
     "Algorithms for checking the accuracy of a clustering result with known classes,
computing cluster validity indices, and generating plots for comparing them.
The package is compatible with K-means, fuzzy C means, EM clustering, and
hierarchical clustering (single, average, and complete linkage).  The details of
the indices in this package can be found in: J. C. Bezdek, M. Moshtaghi, T.
Runkler, C. Leckie (2016) <doi:10.1109/TFUZZ.2016.2540063>, T. Calinski, J.
Harabasz (1974) <doi:10.1080/03610927408827101>, C. H. Chou, M. C. Su, E. Lai
(2004) <doi:10.1007/s10044-004-0218-1>, D. L. Davies, D. W. Bouldin (1979)
<doi:10.1109/TPAMI.1979.4766909>, J. C. Dunn (1973)
<doi:10.1080/01969727308546046>, F. Haouas, Z. Ben Dhiaf, A. Hammouda, B.
Solaiman (2017) <doi:10.1109/FUZZ-IEEE.2017.8015651>, M. Kim, R. S. Ramakrishna
(2005) <doi:10.1016/j.patrec.2005.04.007>, S. H. Kwon (1998)
<doi:10.1049/EL:19981523>, S. H. Kwon, J. Kim, S. H. Son (2021)
<doi:10.1049/ell2.12249>, G. W. Miligan (1980) <doi:10.1007/BF02293907>, M. K.
Pakhira, S. Bandyopadhyay, U. Maulik (2004) <doi:10.1016/j.patcog.2003.06.005>,
M. Popescu, J. C. Bezdek, T. C. Havens, J. M. Keller (2013)
<doi:10.1109/TSMCB.2012.2205679>, S. Saitta, B. Raphael, I. Smith (2007)
<doi:10.1007/978-3-540-73499-4_14>, A. Starczewski (2017)
<doi:10.1007/s10044-015-0525-8>, Y. Tang, F. Sun, Z. Sun (2005)
<doi:10.1109/ACC.2005.1470111>, N. Wiroonsri (2024)
<doi:10.1016/j.patcog.2023.109910>, N. Wiroonsri, O. Preedasawakul (2023)
<doi:10.48550/@code{arXiv.2308.14785>}, C. H. Wu, C. S. Ouyang, L. W. Chen, L.
W. Lu (2015) <doi:10.1109/TFUZZ.2014.2322495>, X. Xie, G. Beni (1991)
<doi:10.1109/34.85677> and Rousseeuw (1987) and Kaufman and Rousseeuw(2009)
<doi:10.1016/0377-0427(87)90125-7> and <doi:10.1002/9780470316801> C. Alok.
(2010).")
    (license license:gpl3+)))

(define-public r-univariateml
  (package
    (name "r-univariateml")
    (version "1.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "univariateML" version))
       (sha256
        (base32 "0jd7n3gvr1azhlmspyqy2d24r8khi4v25izghawshra3if75f4nx"))))
    (properties `((upstream-name . "univariateML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-sads
                             r-rlang
                             r-rfast
                             r-pracma
                             r-nakagami
                             r-logitnorm
                             r-intervals
                             r-fgarch
                             r-extradistr
                             r-assertthat
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JonasMoss/univariateML")
    (synopsis "Maximum Likelihood Estimation for Univariate Densities")
    (description "User-friendly maximum likelihood estimation (Fisher (1921)
<doi:10.1098/rsta.1922.0009>) of univariate densities.")
    (license license:expat)))

(define-public r-unival
  (package
    (name "r-unival")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unival" version))
       (sha256
        (base32 "0j7fl77my2273k72s8k9v5pcb85swxfipjxmk4vw487i7aq8b1nq"))))
    (properties `((upstream-name . "unival")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-psych))
    (home-page "https://cran.r-project.org/package=unival")
    (synopsis
     "Assessing Essential Unidimensionality Using External Validity Information")
    (description
     "Assess essential unidimensionality using external validity information using the
procedure proposed by Ferrando & Lorenzo-Seva (2019)
<doi:10.1177/0013164418824755>.  Provides two indices for assessing differential
and incremental validity, both based on a second-order modelling schema for the
general factor.")
    (license license:gpl3)))

(define-public r-unittest
  (package
    (name "r-unittest")
    (version "1.7-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unittest" version))
       (sha256
        (base32 "157py251fq3hkqv4782jaymahskahh10mcsva4nci681p2683wvb"))))
    (properties `((upstream-name . "unittest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unittest")
    (synopsis "TAP-Compliant Unit Testing")
    (description
     "Concise TAP <http://testanything.org/> compliant unit testing package.  Authored
tests can be run using CMD check with minimal implementation overhead.")
    (license license:gpl3+)))

(define-public r-unitstat
  (package
    (name "r-unitstat")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnitStat" version))
       (sha256
        (base32 "185ivm4kg6hzqx3srk1shvpd5vlc0akn1sbg3wqcdsk2i2x6vhhm"))))
    (properties `((upstream-name . "UnitStat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lmtest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UnitStat")
    (synopsis "Performs Unit Root Test Statistics")
    (description
     "This package provides a test to understand the stability of the underlying
stochastic data.  Helps the userâs understand whether the random variable
under consideration is stationary or non-stationary without any manual
interpretation of the results.  It further ensures to check all the
prerequisites and assumptions which are underlying the unit root test statistics
and if the underlying data is found to be non-stationary in all the 4 lags the
function diagnoses the input data and returns with an optimised solution on the
same.")
    (license license:gpl3)))

(define-public r-unitquantreg
  (package
    (name "r-unitquantreg")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unitquantreg" version))
       (sha256
        (base32 "087d4v5fpiznl37frjg6c01bfgvx3vx0yw8cnbm3wsdj9dak94ym"))))
    (properties `((upstream-name . "unitquantreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp
                             r-quantreg
                             r-optimx
                             r-numderiv
                             r-mass
                             r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://andrmenezes.github.io/unitquantreg/")
    (synopsis "Parametric Quantile Regression Models for Bounded Data")
    (description
     "This package provides a collection of parametric quantile regression models for
bounded data.  At present, the package provides 13 parametric quantile
regression models.  It can specify regression structure for any quantile and
shape parameters.  It also provides several S3 methods to extract information
from fitted model, such as residual analysis, prediction, plotting, and model
comparison.  For more computation efficient the [dpqr]'s, likelihood, score and
hessian functions are written in C++.  For further details see Mazucheli et.  al
(2022) <doi:10.1016/j.cmpb.2022.106816>.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-unitizer
  (package
    (name "r-unitizer")
    (version "1.4.22")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unitizer" version))
       (sha256
        (base32 "0wnvg1vn5xydd3rfm43n1c40777cfx81wvfgnw58yjff2lqz9xw3"))))
    (properties `((upstream-name . "unitizer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-diffobj r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brodieG/unitizer")
    (synopsis "Interactive R Unit Tests")
    (description
     "Simplifies regression tests by comparing objects produced by test code with
earlier versions of those same objects.  If objects are unchanged the tests
pass, otherwise execution stops with error details.  If in interactive mode,
tests can be reviewed through the provided interactive environment.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-unitedr
  (package
    (name "r-unitedr")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unitedR" version))
       (sha256
        (base32 "0h4i814awb8419693jz3x5cyhs2x6y5flmz339bg6ivmg13d9h3s"))))
    (properties `((upstream-name . "unitedR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unitedR")
    (synopsis "Assessment and Evaluation of Formations in United")
    (description
     "United is a software tool which can be downloaded at the following website
<http://www.schroepl.net/pbm/software/united/>.  In general, it is a virtual
manager game for football teams.  This package contains helpful functions for
determining an optimal formation for a virtual match in United.  E.g.  knowing
that the opponent has a strong defensive it is advisable to beat him in the
midfield.  Furthermore, this package contains functions for computing the
optimal usage of hardness in a game.")
    (license license:gpl2+)))

(define-public r-unitcircle
  (package
    (name "r-unitcircle")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnitCircle" version))
       (sha256
        (base32 "0z5ssps8l5ka4aw4984qml15scw4pfssara5dls82afhfhpkszsr"))))
    (properties `((upstream-name . "UnitCircle")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/BerriJ/UnitCircle")
    (synopsis "Check if Roots of a Polynomial Lie Outside the Unit Circle")
    (description
     "The @code{uc.check()} function checks whether the roots of a given polynomial
lie outside the Unit circle.  You can also easily draw an unit circle.")
    (license license:gpl3)))

(define-public r-unisensr
  (package
    (name "r-unisensr")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unisensR" version))
       (sha256
        (base32 "11mshcvjzag8px0g7cl8f1hl76y2fnqyi0iwbv83w51rzf61xp81"))))
    (properties `((upstream-name . "unisensR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-vroom r-hexview))
    (home-page "https://unisens.org/")
    (synopsis "Read 'Unisens' Data")
    (description
     "This package provides the ability to read Unisens data into R. Unisens is a
universal data format for multi sensor data.")
    (license license:lgpl2.0+)))

(define-public r-unireg
  (package
    (name "r-unireg")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uniReg" version))
       (sha256
        (base32 "0wjc7pgaisvk26j7grxp2ypsabb5my9wg6c9i5w9zhh5jdx1fdab"))))
    (properties `((upstream-name . "uniReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sel r-quadprog r-mvtnorm r-mass r-dosefinding))
    (home-page "https://cran.r-project.org/package=uniReg")
    (synopsis "Unimodal Penalized Spline Regression using B-Splines")
    (description
     "Univariate spline regression.  It is possible to add the shape constraint of
unimodality and predefined or self-defined penalties on the B-spline
coefficients.")
    (license license:gpl3+)))

(define-public r-uniqtag
  (package
    (name "r-uniqtag")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uniqtag" version))
       (sha256
        (base32 "0vmd5w4p2qvpg6djddl92q9d3c6kiq0rjv6hq6j7x1b1zwqhgfi5"))))
    (properties `((upstream-name . "uniqtag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/sjackman/uniqtag")
    (synopsis "Abbreviate Strings to Short, Unique Identifiers")
    (description
     "For each string in a set of strings, determine a unique tag that is a substring
of fixed size k unique to that string, if it has one.  If no such unique
substring exists, the least frequent substring is used.  If multiple unique
substrings exist, the lexicographically smallest substring is used.  This
lexicographically smallest substring of size k is called the \"@code{UniqTag}\" of
that string.")
    (license license:expat)))

(define-public r-uniprotr
  (package
    (name "r-uniprotr")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UniprotR" version))
       (sha256
        (base32 "1rfaavzfqbllgnc45wawr15v53xfbbzg17z35plxxz6v9ibqxa6a"))))
    (properties `((upstream-name . "UniprotR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-stringr
                             r-scales
                             r-qdapregex
                             r-progress
                             r-plyr
                             r-networkd3
                             r-magrittr
                             r-magick
                             r-httr
                             r-htmlwidgets
                             r-gridextra
                             r-gprofiler2
                             r-ggsci
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-data-tree
                             r-curl
                             r-alakazam))
    (home-page "https://github.com/Proteomicslab57357/UniprotR")
    (synopsis "Retrieving Information of Proteins from Uniprot")
    (description
     "Connect to Uniprot <https://www.uniprot.org/> to retrieve information about
proteins using their accession number such information could be name or taxonomy
information, For detailed information kindly read the publication
<doi:10.1016/j.jprot.2019.103613>.")
    (license license:gpl3)))

(define-public r-unine
  (package
    (name "r-unine")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unine" version))
       (sha256
        (base32 "051dk8fss19h4d9815a7994krr1s3n5q0pxq9gir6zns0vvn05pw"))))
    (properties `((upstream-name . "unine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/pommedeterresautee/unine")
    (synopsis "Unine Light Stemmer")
    (description
     "Implementation of \"light\" stemmers for French, German, Italian, Spanish,
Portuguese, Finnish, Swedish.  They are based on the same work as the \"light\"
stemmers found in @code{SolR} <https://lucene.apache.org/solr/> or
@code{ElasticSearch} <https://www.elastic.co/fr/products/elasticsearch>.  A
\"light\" stemmer consists in removing inflections only for noun and adjectives.
Indexing verbs for these languages is not of primary importance compared to
nouns and adjectives.  The stemming procedure for French is described in (Savoy,
1999) <doi:10.1002/(SICI)1097-4571(1999)50:10%3C944::AID-ASI9%3E3.3.CO;2-H>.")
    (license license:expat)))

(define-public r-unikn
  (package
    (name "r-unikn")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unikn" version))
       (sha256
        (base32 "1h8d6m1dvck2ps2kqiv2b8i6sw3gm799bimmcq86k93m0515vpbf"))))
    (properties `((upstream-name . "unikn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=unikn")
    (synopsis
     "Graphical Elements of the University of Konstanz's Corporate Design")
    (description
     "Define and use graphical elements of corporate design manuals in R. The unikn
package provides color functions (by defining dedicated colors and color
palettes, and commands for finding, changing, viewing, and using them) and
styled text elements (e.g., for marking, underlining, or plotting colored
titles).  The pre-defined range of colors and text decoration functions is based
on the corporate design of the University of Konstanz
<https://www.uni-konstanz.de/>, but can be adapted and extended for other
purposes or institutions.")
    (license license:cc-by-sa4.0)))

(define-public r-uniisoregression
  (package
    (name "r-uniisoregression")
    (version "0.0-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UniIsoRegression" version))
       (sha256
        (base32 "0lmrmb9sbk41ak7sbcrzhfnijb1skgb4lqg9m9imc98lcp69h7z0"))))
    (properties `((upstream-name . "UniIsoRegression")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/xzp1995/UniIsoRegression")
    (synopsis "Unimodal and Isotonic L1, L2 and Linf Regression")
    (description
     "Perform L1 or L2 isotonic and unimodal regression on 1D weighted or unweighted
input vector and isotonic regression on 2D weighted or unweighted input vector.
It also performs L infinity isotonic and unimodal regression on 1D unweighted
input vector.  Reference: Quentin F. Stout (2008)
<doi:10.1016/j.csda.2008.08.005>.  Spouge, J., Wan, H. & Wilbur, W.(2003)
<doi:10.1023/A:1023901806339>.  Q.F. Stout (2013)
<doi:10.1007/s00453-012-9628-4>.")
    (license license:gpl2+)))

(define-public r-unifyr
  (package
    (name "r-unifyr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unifyR" version))
       (sha256
        (base32 "0pfd4fzw50dgqjyh3kbn0wdbw562gxf29ik8p14ljbzfi962yanr"))))
    (properties `((upstream-name . "unifyR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=unifyR")
    (synopsis
     "Unified Scores, Reliabilities and Validities from Multiple Tests")
    (description
     "In diagnostic contexts, individuals are often assessed using multiple tests that
measure the same latent variable (e.g., intelligence).  These test scores are
typically not exactly identical.  Simple averaging neglects the correlation
between tests and the reduced variance of their combination.  The @code{unifyR}
package provides functions to compute statistically accurate unified scores,
reliabilities and validities of multiple tests.  The underlying algorithms build
on and extend the method proposed by Evans (1996, <DOI:10.3758/BF03204767>) and
have been validated through simulations.")
    (license license:gpl3)))

(define-public r-uniformly
  (package
    (name "r-uniformly")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uniformly" version))
       (sha256
        (base32 "05zhx5a3ka3xa3h2j2dc17q7alq3zcnahvzbngyrz5ri0q3w1l5l"))))
    (properties `((upstream-name . "uniformly")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl r-pgnorm r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stla/uniformly")
    (synopsis "Uniform Sampling")
    (description
     "Uniform sampling on various geometric shapes, such as spheres, ellipsoids,
simplices.")
    (license license:gpl3)))

(define-public r-unifir
  (package
    (name "r-unifir")
    (version "0.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unifir" version))
       (sha256
        (base32 "02d9h1yalha7b7bdsjqpq1xa3gg0spfk42q2wxv1bjsizzbnbq2r"))))
    (properties `((upstream-name . "unifir")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-r6 r-proceduralnames r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/unifir/")
    (synopsis "Unifying API for Calling the 'Unity' '3D' Video Game Engine")
    (description
     "This package provides functions for the creation and manipulation of scenes and
objects within the Unity 3D video game engine (<https://unity.com/>).  Specific
focuses include the creation and import of terrain data and @code{GameObjects}
as well as scene management.")
    (license license:expat)))

(define-public r-unifieddosefinding
  (package
    (name "r-unifieddosefinding")
    (version "0.1.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnifiedDoseFinding" version))
       (sha256
        (base32 "07yppm6zazqgvsv6h8kwknrbi5dfa1fivh3kb22mc2y156k7kjjz"))))
    (properties `((upstream-name . "UnifiedDoseFinding")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UnifiedDoseFinding")
    (synopsis "Dose-Finding Methods for Non-Binary Outcomes")
    (description
     "In many phase I trials, the design goal is to find the dose associated with a
certain target toxicity rate.  In some trials, the goal can be to find the dose
with a certain weighted sum of rates of various toxicity grades.  For others,
the goal is to find the dose with a certain mean value of a continuous response.
 This package provides the setup and calculations needed to run a dose-finding
trial with non-binary endpoints and performs simulations to assess designâs
operating characteristics under various scenarios.  Three dose finding designs
are included in this package: unified phase I design (Ivanova et al. (2009)
<doi:10.1111/j.1541-0420.2008.01045.x>), Quasi-CRM/Robust-Quasi-CRM (Yuan et al.
(2007) <doi:10.1111/j.1541-0420.2006.00666.x>, Pan et al. (2014)
<doi:10.1371/journal.pone.0098147>) and generalized BOIN design (Mu et al.
(2018) <doi:10.1111/rssc.12263>).  The toxicity endpoints can be handled with
these functions including equivalent toxicity score (ETS), total toxicity burden
(TTB), general continuous toxicity endpoints, with incorporating ordinal grade
toxicity information into dose-finding procedure.  These functions allow
customization of design characteristics to vary sample size, cohort sizes,
target dose-limiting toxicity (DLT) rates, discrete or continuous toxicity
score, and incorporate safety and/or stopping rules.")
    (license license:gpl2)))

(define-public r-unifed
  (package
    (name "r-unifed")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unifed" version))
       (sha256
        (base32 "0wy2hasgkzw08l50qq30wb62i1q4skc3zccipv8pm911qlldk3sr"))))
    (properties `((upstream-name . "unifed")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unifed")
    (synopsis "The Unifed Distribution")
    (description
     "Probability functions, family for @code{glm()} and Stan code for working with
the unifed distribution (Quijano Xacur, 2019; <doi:10.1186/s40488-019-0102-6>).")
    (license license:gpl3+)))

(define-public r-unifdag
  (package
    (name "r-unifdag")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unifDAG" version))
       (sha256
        (base32 "0h620q5cy6x4f7fnf65vq6xjyjk1frc2b0sbia5da2y1ppk4y48a"))))
    (properties `((upstream-name . "unifDAG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-graph r-gmp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=unifDAG")
    (synopsis "Uniform Sampling of Directed Acyclic Graphs")
    (description
     "Uniform sampling of Directed Acyclic Graphs (DAG) using exact enumeration by
relating each DAG to a sequence of outpoints (nodes with no incoming edges) and
then to a composition of integers as suggested by Kuipers, J. and Moffa, G.
(2015) <doi:10.1007/s11222-013-9428-y>.")
    (license license:gpl2+)))

(define-public r-uniexactfuntest
  (package
    (name "r-uniexactfuntest")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UniExactFunTest" version))
       (sha256
        (base32 "00416fnqsyq7qzhafw5g2h77wliz657a76vdik1il0qnj7s6hynk"))))
    (properties `((upstream-name . "UniExactFunTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UniExactFunTest")
    (synopsis "Uniform Exact Functional Tests for Contingency Tables")
    (description
     "Testing whether two discrete variables have a functional relationship under null
distributions where the two variables are statistically independent with fixed
marginal counts.  The fast enumeration algorithm was based on (Nguyen et al.
2020) <doi:10.24963/ijcai.2020/372>.")
    (license license:lgpl3+)))

(define-public r-unicol
  (package
    (name "r-unicol")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unicol" version))
       (sha256
        (base32 "07fxp7gh8sbvr88b4a0kllqskd88w7xfawj6y6gjkgmhn5ykmxx0"))))
    (properties `((upstream-name . "unicol")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-unikn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hneth/unicol/")
    (synopsis "The Colors of your University")
    (description
     "Most universities use specific color combinations to express their unique brand
identity.  The unicol package provides the colors and color palettes of various
universities for easy plotting and printing in R. We collect and provide a
diverse range of color palettes for creating scientific visualizations.")
    (license license:cc-by-sa4.0)))

(define-public r-unicode
  (package
    (name "r-unicode")
    (version "16.0.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Unicode" version))
       (sha256
        (base32 "0q19qn0x5pi8fhylx1c381y4ssysysf30pi3cq948jkg0s84cp1z"))))
    (properties `((upstream-name . "Unicode")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Unicode")
    (synopsis "Unicode Data and Utilities")
    (description "Data from Unicode 16.0.0 and related utilities.")
    (license license:gpl2)))

(define-public r-unico
  (package
    (name "r-unico")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Unico" version))
       (sha256
        (base32 "16zp9fdd1a0w3zisqyiklhhn2y84f3aq63wzzqkfg0hsf2sdcvya"))))
    (properties `((upstream-name . "Unico")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testit
                             r-pracma
                             r-pbapply
                             r-nloptr
                             r-mgcv
                             r-matrixstats
                             r-matrixcalc
                             r-mass
                             r-futile-logger
                             r-data-table
                             r-config
                             r-compositions))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cozygene.github.io/Unico/")
    (synopsis "Unified Cross-Omics Deconvolution")
    (description
     "UNIfied Cross-Omics deconvolution (Unico) deconvolves standard 2-dimensional
bulk matrices of samples by features into a 3-dimensional tensors representing
samples by features by cell types.  Unico stands out as the first principled
model-based deconvolution method that is theoretically justified for any
heterogeneous genomic data.  For more details see Chen and Rahmani et al. (2024)
<doi:10.1101/2024.01.27.577588>.")
    (license license:gpl3)))

(define-public r-uniah
  (package
    (name "r-uniah")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uniah" version))
       (sha256
        (base32 "0hv7zgj55am1mlb8vl8k690z641lwsnsxdcvg7zzkhfpj58p7wai"))))
    (properties `((upstream-name . "uniah")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-iso r-ahaz))
    (home-page "https://cran.r-project.org/package=uniah")
    (synopsis "Unimodal Additive Hazards Model")
    (description
     "Nonparametric estimation of a unimodal or U-shape covariate effect under
additive hazards model.")
    (license license:gpl2+)))

(define-public r-uni-survival-tree
  (package
    (name "r-uni-survival-tree")
    (version "1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uni.survival.tree" version))
       (sha256
        (base32 "1brkppsk7likpffzz0ykhqxw99qin57zzcjcib2fcdn3n8gpwq7w"))))
    (properties `((upstream-name . "uni.survival.tree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-compound-cox))
    (home-page "https://cran.r-project.org/package=uni.survival.tree")
    (synopsis
     "Survival Tree Based on Stabilized Score Tests for High-dimensional Covariates")
    (description
     "This package provides a classification (decision) tree is constructed from
survival data with high-dimensional covariates.  The method is a robust version
of the logrank tree, where the variance is stabilized.  The main function
\"uni.tree\" returns a classification tree for a given survival dataset.  The
inner nodes (splitting criterion) are selected by minimizing the P-value of the
two-sample the score tests.  The decision of declaring terminal nodes (stopping
criterion) is the P-value threshold given by an argument (specified by user).
This tree construction algorithm is proposed by Emura et al. (2021, in review).")
    (license license:gpl3)))

(define-public r-uni-shrinkage
  (package
    (name "r-uni-shrinkage")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uni.shrinkage" version))
       (sha256
        (base32 "0pba68jnsipc52rw091mx3dmxk1cp4w8f4dn0w7nmk7q93av09kp"))))
    (properties `((upstream-name . "uni.shrinkage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=uni.shrinkage")
    (synopsis "Shrinkage Estimation for Univariate Normal Mean")
    (description
     "Implement a shrinkage estimation for the univariate normal mean based on a
preliminary test (pretest) estimator.  This package also provides the confidence
interval based on pivoting the cumulative density function.  The methodologies
are published in Taketomi et al.(2024) <doi:10.1007/s42081-023-00221-2> and
Taketomi et al.(2024-)(under review).")
    (license license:gpl2)))

(define-public r-unheadr
  (package
    (name "r-unheadr")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unheadr" version))
       (sha256
        (base32 "1p5dl3906gbaszvny33gj56phqcclnj1c73lmnz6l1b1h5xahyw0"))))
    (properties `((upstream-name . "unheadr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyxl
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readxl
                             r-magrittr
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luisDVA/unheadr")
    (synopsis "Handle Data with Messy Header Rows and Broken Values")
    (description
     "Verb-like functions to work with messy data, often derived from spreadsheets or
parsed PDF tables.  Includes functions for unwrapping values broken up across
rows, relocating embedded grouping values, and to annotate meaningful formatting
in spreadsheet files.")
    (license license:expat)))

(define-public r-unhcrthemes
  (package
    (name "r-unhcrthemes")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unhcrthemes" version))
       (sha256
        (base32 "1wxm0n5gr36r9350wyhalwik79ch6n5s3b3iy7y0d4b02ys966a4"))))
    (properties `((upstream-name . "unhcrthemes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-systemfonts
                             r-scales
                             r-ggtext
                             r-ggrepel
                             r-ggplot2
                             r-extrafont))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/unhcr-dataviz/unhcrthemes")
    (synopsis "UNHCR 'ggplot2' Theme and Colour Palettes")
    (description
     "This package provides a ggplot2 theme and color palettes following the United
Nations High Commissioner for Refugees (UNHCR) Data Visualization Guidelines
recommendations.")
    (license license:expat)))

(define-public r-unhcrdown
  (package
    (name "r-unhcrdown")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unhcrdown" version))
       (sha256
        (base32 "0hb1a7fsxqfdvvy4hrmazp0f3c5g4db48rvdw3a2pz4yf0askn6d"))))
    (properties `((upstream-name . "unhcrdown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xaringan
                             r-rmarkdown
                             r-pagedown
                             r-officedown
                             r-magick
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/unhcr-dataviz/unhcrdown")
    (synopsis "UNHCR Branded Templates for R Markdown Documents")
    (description
     "Create United Nations High Commissioner for Refugees (UNHCR) branded documents,
presentations, and reports using R Markdown templates.  This package provides
customized formats that align with UNHCR's official brand guidelines for
creating professional PDF reports, Word documents, @code{PowerPoint}
presentations, and HTML outputs.")
    (license license:expat)))

(define-public r-ungroup
  (package
    (name "r-ungroup")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ungroup" version))
       (sha256
        (base32 "12dqhysz26l1jrnf4sz43hdpsxch8g1iah7cxsx7rcac42lhzwdk"))))
    (properties `((upstream-name . "ungroup")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-rcppeigen r-rcpp r-pbapply r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mpascariu/ungroup")
    (synopsis
     "Penalized Composite Link Model for Efficient Estimation of Smooth Distributions from Coarsely Binned Data")
    (description
     "Versatile method for ungrouping histograms (binned count data) assuming that
counts are Poisson distributed and that the underlying sequence on a fine grid
to be estimated is smooth.  The method is based on the composite link model and
estimation is achieved by maximizing a penalized likelihood.  Smooth detailed
sequences of counts and rates are so estimated from the binned counts.
Ungrouping binned data can be desirable for many reasons: Bins can be too coarse
to allow for accurate analysis; comparisons can be hindered when different
grouping approaches are used in different histograms; and the last interval is
often wide and open-ended and, thus, covers a lot of information in the tail
area.  Age-at-death distributions grouped in age classes and abridged life
tables are examples of binned data.  Because of modest assumptions, the approach
is suitable for many demographic and epidemiological applications.  For a
detailed description of the method and applications see Rizzi et al. (2015)
<doi:10.1093/aje/kwv020>.")
    (license license:expat)))

(define-public r-undidr
  (package
    (name "r-undidr")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "undidR" version))
       (sha256
        (base32 "0z4fsa22nbb5kv76ldbars6q6003bm484nl7d806war75x5hc7c4"))))
    (properties `((upstream-name . "undidR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ebjamieson97/undidR")
    (synopsis "Difference-in-Differences with Unpoolable Data")
    (description
     "This package provides a framework for estimating difference-in-differences with
unpoolable data, based on Karim, Webb, Austin, and Strumpf (2024)
<doi:10.48550/@code{arXiv.2403.15910>}.  Supports common or staggered adoption,
multiple groups, and the inclusion of covariates.  Also computes p-values for
the aggregate average treatment effect on the treated via the randomization
inference procedure described in @code{MacKinnon} and Webb (2020)
<doi:10.1016/j.jeconom.2020.04.024>.")
    (license license:expat)))

(define-public r-understandbpmn
  (package
    (name "r-understandbpmn")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "understandBPMN" version))
       (sha256
        (base32 "04wnyxplrn5c6jb76dw25pawwcvvn5xq80lqn5imsf31nbwybpm5"))))
    (properties `((upstream-name . "understandBPMN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-usethis
                             r-tidyr
                             r-tibble
                             r-rcpp
                             r-r-utils
                             r-purrr
                             r-dplyr
                             r-devtools))
    (home-page "https://cran.r-project.org/package=understandBPMN")
    (synopsis "Calculator of Understandability Metrics for BPMN")
    (description
     "Calculate several understandability metrics of BPMN models.  BPMN stands for
business process modelling notation and is a language for expressing business
processes into business process diagrams.  Examples of these understandability
metrics are: average connector degree, maximum connector degree, sequentiality,
cyclicity, diameter, depth, token split, control flow complexity, connector
mismatch, connector heterogeneity, separability, structuredness and cross
connectivity.  See R documentation and paper on metric implementation included
in this package for more information concerning the metrics.")
    (license license:expat)))

(define-public r-uncover
  (package
    (name "r-uncover")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UNCOVER" version))
       (sha256
        (base32 "0x5ggwnzca6wz3ikpsa3aq8b715w8drkpchqp3jsg0g9imiw5y3m"))))
    (properties `((upstream-name . "UNCOVER")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-mvnfast
                             r-memoise
                             r-igraph
                             r-ggpubr
                             r-ggplot2
                             r-ggnewscale
                             r-ggally
                             r-crayon
                             r-cachem))
    (home-page "https://cran.r-project.org/package=UNCOVER")
    (synopsis
     "Utilising Normalisation Constant Optimisation via Edge Removal (UNCOVER)")
    (description
     "Model data with a suspected clustering structure (either in co-variate space,
regression space or both) using a Bayesian product model with a logistic
regression likelihood.  Observations are represented graphically and clusters
are formed through various edge removals or additions.  Cluster quality is
assessed through the log Bayesian evidence of the overall model, which is
estimated using either a Sequential Monte Carlo sampler or a suitable
transformation of the Bayesian Information Criterion as a fast approximation of
the former.  The internal Iterated Batch Importance Sampling scheme (Chopin
(2002 <doi:10.1093/biomet/89.3.539>)) is made available as a free standing
function.")
    (license license:gpl2)))

(define-public r-uncorbets
  (package
    (name "r-uncorbets")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uncorbets" version))
       (sha256
        (base32 "1kp1rglxz4p38y399ym6q1p5i3xmb38px44bc4bba4r7x7b47n1x"))))
    (properties `((upstream-name . "uncorbets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlcoptim r-assertthat))
    (home-page "https://github.com/Reckziegel/uncorbets")
    (synopsis "Uncorrelated Bets via Minimum Torsion Algorithm")
    (description
     "This package implements Minimum Torsion for portfolio diversification as
described in Meucci, Attilio (2013) <doi:10.2139/ssrn.2276632>.")
    (license license:expat)))

(define-public r-uncmbb
  (package
    (name "r-uncmbb")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uncmbb" version))
       (sha256
        (base32 "0szlz52p0ywl8526mhm0i0pk1vx72kc3474cx0w47xxig83a1j9b"))))
    (properties `((upstream-name . "uncmbb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-dplyr))
    (home-page "https://github.com/joongsup/uncmbb")
    (synopsis "UNC Men's Basketball Match Results Since 1949-1950 Season")
    (description
     "Dataset contains select attributes for each match result since 1949-1950 season
for UNC men's basketball team.")
    (license license:cc0)))

(define-public r-uncertainucdp
  (package
    (name "r-uncertainucdp")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uncertainUCDP" version))
       (sha256
        (base32 "1426cxapg8yrsdj32l40labhxh1xpky0m84xwnzyj2wdpz15alvg"))))
    (properties `((upstream-name . "uncertainUCDP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rlang r-mistr r-dplyr))
    (home-page "https://cran.r-project.org/package=uncertainUCDP")
    (synopsis
     "Parametric Mixture Models for Uncertainty Estimation of Fatalities in UCDP Conflict Data")
    (description
     "This package provides functions for estimating uncertainty in the number of
fatalities in the Uppsala Conflict Data Program (UCDP) data.  The package
implements a parametric reported-value Gumbel mixture distribution that accounts
for the uncertainty in the number of fatalities in the UCDP data.  The model is
based on information from a survey on UCDP coders and how they view the
uncertainty of the number of fatalities from UCDP events.  The package provides
functions for making random draws of fatalities from the mixture distribution,
as well as to estimate percentiles, quantiles, means, and other statistics of
the distribution.  Full details on the survey and estimation procedure can be
found in Vesco et al (2024).")
    (license license:expat)))

(define-public r-uncertainty
  (package
    (name "r-uncertainty")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uncertainty" version))
       (sha256
        (base32 "1mq14ny7l3gy3wjsqijnm37azavyapxszjnckd861h4hgcpdcdjz"))))
    (properties `((upstream-name . "uncertainty")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-triangle r-mvtnorm))
    (home-page "https://cran.r-project.org/package=uncertainty")
    (synopsis "Uncertainty Estimation and Contribution Analysis")
    (description
     "This package implements the Gaussian method of first and second order, the
Kragten numerical method and the Monte Carlo simulation method for uncertainty
estimation and analysis.")
    (license license:gpl2+)))

(define-public r-uncdecomp
  (package
    (name "r-uncdecomp")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UncDecomp" version))
       (sha256
        (base32 "1m44pgk7nffay09m4gkwb0khq0qjd7bq1p72blsmib46wmnwqfsa"))))
    (properties `((upstream-name . "UncDecomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-dplyr))
    (home-page
     "https://www.sciencedirect.com/science/article/pii/S2589915519300082")
    (synopsis "Uncertainty Decomposition")
    (description
     "If a procedure consists of several stages and there are several models that can
be selected for each stage, uncertainty of the procedure can be decomposed by
stages or models.  This package includes the ANOVA-based method, the cumulative
uncertainty-based method, and the balanced decomposition method.  Yongdai Kim et
al. (2019) <doi:10.1016/j.hydroa.2019.100024> is a related paper which is
accessible via the URL below.")
    (license license:gpl2)))

(define-public r-unbalhaar
  (package
    (name "r-unbalhaar")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "unbalhaar" version))
       (sha256
        (base32 "0fgnvl9ammawgm5nf2icw64yzivqw7sl07dpvrsb5rypvrm8d040"))))
    (properties `((upstream-name . "unbalhaar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=unbalhaar")
    (synopsis "Function Estimation via Unbalanced Haar Wavelets")
    (description
     "Top-down and bottom-up algorithms for nonparametric function estimation in
Gaussian noise using Unbalanced Haar wavelets.")
    (license license:gpl2)))

(define-public r-unalr
  (package
    (name "r-unalr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UnalR" version))
       (sha256
        (base32 "1zw68ss0jlyg9mm5qy0k7dqbag8qz08yc96kfmib028d72jsh41d"))))
    (properties `((upstream-name . "UnalR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-xts
                             r-xml
                             r-webshot
                             r-treemap
                             r-tidyr
                             r-sunburstr
                             r-stringr
                             r-sp
                             r-sf
                             r-scales
                             r-rlang
                             r-png
                             r-plotly
                             r-maps
                             r-magrittr
                             r-lifecycle
                             r-leaflet-extras
                             r-leaflet
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-highcharter
                             r-gtextras
                             r-gt
                             r-gridsvg
                             r-ggspatial
                             r-ggrepel
                             r-ggplot2
                             r-forcats
                             r-fmsb
                             r-echarts4r
                             r-dygraphs
                             r-dt
                             r-dplyr
                             r-data-tree
                             r-d3r
                             r-cli))
    (home-page "https://unal.edu.co")
    (synopsis "Una implementaciÃ³n de funciones de uso interno")
    (description
     "Una herramienta rÃ¡pida y consistente para la disposiciÃ³n de microdatos y la
visualizaciÃ³n de las cifras y estadÃ­sticas oficiales de la Universidad
Nacional de Colombia <https://unal.edu.co>.  Contiene una biblioteca de
funciones grÃ¡ficas, tanto estÃ¡ticas como interactivas, que ofrece numerosos
tipos de grÃ¡ficos con una sintaxis altamente configurable y simple.  Entre
estos encontramos la visualizaciÃ³n de tablas HTML, series, grÃ¡ficos de barras
y circulares, mapas, etc.  Todo lo anterior apoyado en bibliotecas de
@code{JavaScript}.  English: A fast and consistent tool for the arrangement of
microdata and the visualization of official figures and statistics from the
National University of Colombia <https://unal.edu.co>.  It includes a library of
graphical functions, both static and interactive, offering numerous types of
charts with a highly configurable and simple syntax.  Among these, we find the
visualization of HTML tables, series, bar and pie charts, maps, etc.  It
provides the capability to transition from the interactive to the dynamic world
and from one library to another without changing function or syntax.")
    (license license:gpl3+)))

(define-public r-umx
  (package
    (name "r-umx")
    (version "4.21.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "umx" version))
       (sha256
        (base32 "0iyrpqv8z49vcnv021j1iwxpahc2gflfq9nfx7clr7gjnbkxx98k"))))
    (properties `((upstream-name . "umx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xtable
                             r-scales
                             r-rmarkdown
                             r-rcurl
                             r-r2html
                             r-pwr
                             r-psychtools
                             r-psych
                             r-polycor
                             r-paran
                             r-openxlsx
                             r-openmx
                             r-nlme
                             r-mvtnorm
                             r-mumin
                             r-matrix
                             r-mass
                             r-lavaan
                             r-knitr
                             r-kableextra
                             r-hrbrthemes
                             r-ggplot2
                             r-gert
                             r-foreign
                             r-diagrammer
                             r-cowplot))
    (home-page "https://github.com/tbates/umx#readme")
    (synopsis "Structural Equation Modeling and Twin Modeling in R")
    (description
     "Quickly create, run, and report structural equation models, and twin models.
See ?umx for help, and umx_open_CRAN_page(\"umx\") for NEWS. Timothy C. Bates,
Michael C. Neale, Hermine H. Maes, (2019).  umx: A library for Structural
Equation and Twin Modelling in R. Twin Research and Human Genetics, 22, 27-41.
<doi:10.1017/thg.2019.2>.")
    (license license:gpl3)))

(define-public r-umpire
  (package
    (name "r-umpire")
    (version "2.0.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Umpire" version))
       (sha256
        (base32 "1ss3pamkj3071376i3807bh363ybid9w8c3py9k1z6cz6zcvj4w3"))))
    (properties `((upstream-name . "Umpire")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mc2d r-bimodalindex))
    (native-inputs (list r-knitr))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Simulating Realistic Gene Expression and Clinical Data")
    (description
     "The Ultimate Microrray Prediction, Reality and Inference Engine (UMPIRE) is a
package to facilitate the simulation of realistic microarray data sets with
links to associated outcomes.  See Zhang and Coombes (2012)
<doi:10.1186/1471-2105-13-S13-S1>.  Version 2.0 adds the ability to simulate
realistic mixed-typed clinical data.")
    (license license:asl2.0)))

(define-public r-ump
  (package
    (name "r-ump")
    (version "0.5-8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ump" version))
       (sha256
        (base32 "1sg226caq9y41cwl7wr5s9z3bpq2j5p6rj6fy2pasbzimgzw0byx"))))
    (properties `((upstream-name . "ump")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://www.stat.umn.edu/geyer/fuzz/")
    (synopsis "Uniformly Most Powerful Tests")
    (description
     "Does uniformly most powerful (UMP) and uniformly most powerful unbiased (UMPU)
tests.  At present only distribution implemented is binomial distribution.  Also
does fuzzy tests and confidence intervals (following Geyer and Meeden, 2005,
<doi:10.1214/088342305000000340>) for the binomial distribution (one-tailed
procedures based on UMP test and two-tailed procedures based on UMPU test).")
    (license license:expat)))

(define-public r-umoments
  (package
    (name "r-umoments")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Umoments" version))
       (sha256
        (base32 "0g19371lg3rk2gsfjxxbb9j6nrq20gn5m3vdh2z86756yyhcn0yy"))))
    (properties `((upstream-name . "Umoments")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Umoments")
    (synopsis "Unbiased Central Moment Estimates")
    (description
     "Calculates one-sample unbiased central moment estimates and two-sample pooled
estimates up to 6th order, including estimates of powers and products of central
moments.  Provides the machinery for obtaining unbiased central moment
estimators beyond 6th order by generating expressions for expectations of raw
sample moments and their powers and products.  Gerlovina and Hubbard (2019)
<doi:10.1080/25742558.2019.1701917>.")
    (license license:gpl2+)))

(define-public r-umianalyzer
  (package
    (name "r-umianalyzer")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "umiAnalyzer" version))
       (sha256
        (base32 "147x48mr9mj0njwbz39876795rninvk89zm9immkppdm4s5g1ghf"))))
    (properties `((upstream-name . "umiAnalyzer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shinywidgets
                             r-shinyfiles
                             r-shinydashboard
                             r-shiny
                             r-scales
                             r-rsamtools
                             r-readr
                             r-plotly
                             r-pheatmap
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-forcats
                             r-dt
                             r-dplyr
                             r-biocmanager))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sfilges/umiAnalyzer")
    (synopsis
     "Tools for Analyzing Sequencing Data with Unique Molecular Identifiers")
    (description
     "This package provides tools for analyzing sequencing data containing unique
molecular identifiers generated by UMI@code{ErrorCorrect}
(<https://github.com/stahlberggroup/umierrorcorrect>).")
    (license license:gpl3)))

(define-public r-umbridge
  (package
    (name "r-umbridge")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "umbridge" version))
       (sha256
        (base32 "0p49mwi8qy90vb5xbv6w97sjv373cmp26vkk5y1nacqx6g6yvc5f"))))
    (properties `((upstream-name . "umbridge")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-jsonlite r-httr2))
    (home-page "https://cran.r-project.org/package=umbridge")
    (synopsis "Integration for the UM-Bridge Protocol")
    (description
     "This package provides a convenient wrapper for the UM-Bridge protocol.
UM-Bridge is a protocol designed for coupling uncertainty quantification (or
statistical / optimization) software to numerical models.  A model is
represented as a mathematical function with optional support for derivatives via
Jacobian actions etc.")
    (license license:expat)))

(define-public r-umatrix
  (package
    (name "r-umatrix")
    (version "4.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Umatrix" version))
       (sha256
        (base32 "067jwf9h6j4m2vxzfj4c4aj8iiq2cyjl42lww4bd94v2vvdzm2ak"))))
    (properties `((upstream-name . "Umatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-reshape2
                             r-rcpp
                             r-png
                             r-plyr
                             r-pdist
                             r-ggrepel
                             r-ggplot2
                             r-geometry
                             r-fields
                             r-deldir
                             r-datavisualizations
                             r-adaptgauss
                             r-abind))
    (home-page "http://wscg.zcu.cz/wscg2016/short/A43-full.pdf")
    (synopsis "Visualization of Structures in High-Dimensional Data")
    (description
     "By gaining the property of emergence through self-organization, the enhancement
of SOMs(self organizing maps) is called Emergent SOM (ESOM).  The result of the
projection by ESOM is a grid of neurons which can be visualised as a three
dimensional landscape in form of the Umatrix.  Further details can be found in
the referenced publications (see url).  This package offers tools for
calculating and visualising the ESOM as well as Umatrix, Pmatrix and
U@code{StarMatrix}.  All the functionality is also available through graphical
user interfaces implemented in shiny'.  Based on the recognized data structures,
the method can be used to generate new data.")
    (license license:gpl3)))

(define-public r-ultrapolarplot
  (package
    (name "r-ultrapolarplot")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ultrapolaRplot" version))
       (sha256
        (base32 "0a1dyz59ian3l1d4qjj8zqnmaiix33nwlsg42m2rq87p3zhh3h6z"))))
    (properties `((upstream-name . "ultrapolaRplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rjson
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-plyr
                             r-ggplot2
                             r-cairo))
    (home-page "https://cran.r-project.org/package=ultrapolaRplot")
    (synopsis "Plotting Ultrasound Tongue Traces")
    (description
     "Plots traced ultrasound tongue imaging data according to a polar coordinate
system.  There is currently support for plotting means and standard deviations
of each category's trace; Smoothing Splines Analysis of Variance (SSANOVA) could
be implemented as well.  The origin of the polar coordinates may be defined
manually or automatically determined based on different algorithms.  Currently
@code{ultrapolaRplot} supports ultrasound tongue imaging trace data from
@code{UltraTrace} (<https://github.com/@code{SwatPhonLab/UltraTrace>}).
@code{UltraTrace} is capable of importing data from Articulate Instruments AAA.
read_textgrid.R is required for opening @code{TextGrids} to determine category
and alignment information of ultrasound traces.")
    (license license:gpl3)))

(define-public r-ultimixt
  (package
    (name "r-ultimixt")
    (version "2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Ultimixt" version))
       (sha256
        (base32 "0fh2qpm7qpv1170jzbmzqhvwsn69lblizzisgasswy2nix2jjz4y"))))
    (properties `((upstream-name . "Ultimixt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-gtools r-coda))
    (home-page "https://cran.r-project.org/package=Ultimixt")
    (synopsis
     "Bayesian Analysis of Location-Scale Mixture Models using a Weakly Informative Prior")
    (description
     "This package provides a generic reference Bayesian analysis of unidimensional
mixture distributions obtained by a location-scale parameterisation of the model
is implemented.  The including functions simulate and summarize posterior
samples for location-scale mixture models using a weakly informative prior.
There is no need to define priors for scale-location parameters except two
hyperparameters in which are associated with a Dirichlet prior for weights and a
simplex.")
    (license license:gpl2+)))

(define-public r-ulrb
  (package
    (name "r-ulrb")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ulrb" version))
       (sha256
        (base32 "15i7vbm12jfx26azd139h5600r1ccraq1axc2qrzy2i9qfdxf1vi"))))
    (properties `((upstream-name . "ulrb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-clustersim
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://pascoalf.github.io/ulrb/")
    (synopsis
     "Unsupervised Learning Based Definition of Microbial Rare Biosphere")
    (description
     "This package provides a tool to define the rare biosphere.  ulrb solves the
problem of the definition of rarity by replacing arbitrary thresholds with an
unsupervised machine learning algorithm (partitioning around medoids, or
k-medoids).  This algorithm works for any type of microbiome data, provided
there is an abundance table.  This method also works for non-microbiome data.")
    (license license:gpl3+)))

(define-public r-ulid
  (package
    (name "r-ulid")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ulid" version))
       (sha256
        (base32 "1g227bslfb4ffm2s0s6yblss4449kkpgq7cndcd5nmg5h48dxh4q"))))
    (properties `((upstream-name . "ulid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/eddelbuettel/ulid")
    (synopsis
     "Generate Universally Unique 'Lexicographically' 'Sortable' Identifiers")
    (description
     "Universally unique identifiers ('UUIDs') can be sub-optimal for many uses-cases
because they are not the most character efficient way of encoding 128 bits of
randomness; v1/v2 versions are impractical in many environments, as they require
access to a unique, stable MAC address; v3/v5 versions require a unique seed and
produce randomly distributed IDs, which can cause fragmentation in many data
structures; v4 provides no other information than randomness which can cause
fragmentation in many data structures.  Providing an alternative, ULIDs
(<https://github.com/ulid/spec>) have 128-bit compatibility with UUID', 1.21e+24
unique ULIDs per millisecond, support standard (text) sorting, canonically
encoded as a 26 character string, as opposed to the 36 character UUID', use
base32 encoding for better efficiency and readability (5 bits per character),
are case insensitive, have no special characters (i.e.  are URL safe) and have a
monotonic sort order (correctly detects and handles the same millisecond).")
    (license license:expat)))

(define-public r-ulex
  (package
    (name "r-ulex")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ulex" version))
       (sha256
        (base32 "1h379kqnnp1vvgx35q67h47fd8q9g81m234xsx5vshm3jvqakhn0"))))
    (properties `((upstream-name . "ulex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tm
                             r-tidytext
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-stringdist
                             r-spacyr
                             r-sf
                             r-readr
                             r-raster
                             r-quanteda
                             r-purrr
                             r-ngram
                             r-hunspell
                             r-geodist
                             r-dplyr))
    (home-page "https://dime-worldbank.github.io/ulex/")
    (synopsis "Unique Location Extractor")
    (description
     "Extracts coordinates of an event location from text based on dictionaries of
landmarks, roads, and areas.  Only returns the location of an event of interest
and ignores other location references; for example, if determining the location
of a road traffic crash from the text \"crash near [location 1] heading towards
[location 2]\", only the coordinates of \"location 1\" would be returned.
Moreover, accounts for differences in spelling between how a user references a
location and how a location is captured in location dictionaries.")
    (license license:expat)))

(define-public r-ukpolice
  (package
    (name "r-ukpolice")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ukpolice" version))
       (sha256
        (base32 "1dwwixhiarlpdss7rhiamzcsl1k2yphgmjzh7wn2my4vxj06817l"))))
    (properties `((upstream-name . "ukpolice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-snakecase r-purrr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EvanOdell/ukpolice/")
    (synopsis "Download Data on UK Police and Crime")
    (description
     "Downloads data from the UK Police public data API, the full docs of which are
available at <https://data.police.uk/docs/>.  Includes data on police forces and
police force areas, crime reports, and the use of stop-and-search powers.")
    (license license:expat)))

(define-public r-uklr
  (package
    (name "r-uklr")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uklr" version))
       (sha256
        (base32 "1x5lfzb0a64k84dscdj61kcibww8mizf9w62anmb207f8dggj7lg"))))
    (properties `((upstream-name . "uklr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-jsonlite r-httr r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://kvasilopoulos.github.io/uklr/")
    (synopsis "Client to United Kingdom Land Registry")
    (description
     "Access data from Land Registry Open Data <http://landregistry.data.gov.uk/>
through SPARQL queries.  uklr supports the house price index, transaction and
price paid data.")
    (license license:gpl3)))

(define-public r-ukhsadatr
  (package
    (name "r-ukhsadatr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ukhsadatR" version))
       (sha256
        (base32 "0qpyl4cyscc6wssfq9x1nqaw3llshd2bhl1q3r50kxl0fnfbzz5k"))))
    (properties `((upstream-name . "ukhsadatR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/silverfoxdoc/ukhsadatR")
    (synopsis "R Interface to Access UKHSA Dashboard Data")
    (description
     "Programmatic interface to access data from the UK Health Security Agency (UKHSA)
Data Dashboard API. The package was originally based on the ukcovid19 package by
Pouria Hadjibagheri and has been substantially rewritten and extended.  For more
information on the API, see
<https://ukhsa-dashboard.data.gov.uk/access-our-data>.")
    (license license:expat)))

(define-public r-ukgrid
  (package
    (name "r-ukgrid")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UKgrid" version))
       (sha256
        (base32 "1x44iry2j5qbvd8ac9rv9dmg60hbhry2v4jj9hmm49bx10iwl9h2"))))
    (properties `((upstream-name . "UKgrid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-xts
                             r-tsibble
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-data-table))
    (home-page "https://github.com/RamiKrispin/UKgrid")
    (synopsis "The UK National Electricity Transmission System Dataset")
    (description
     "This package provides a time series of the national grid demand (high-voltage
electric power transmission network) in the UK since 2011.")
    (license license:expat)))

(define-public r-ukgasapi
  (package
    (name "r-ukgasapi")
    (version "0.21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ukgasapi" version))
       (sha256
        (base32 "1acl04bm8f2hgi26mpmzcwp44yv9zxarzw4r4k20b367k8g9rh8a"))))
    (properties `((upstream-name . "ukgasapi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ukgasapi")
    (synopsis "API for UK Energy Market Information")
    (description
     "Allows users to access live UK energy market information via various APIs.")
    (license license:gpl2)))

(define-public r-ukfe
  (package
    (name "r-ukfe")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UKFE" version))
       (sha256
        (base32 "1xx7sn9ia8a7902q65qa7g4lcnj3zvr0ix7p9mkaf3v0pa9kygzc"))))
    (properties `((upstream-name . "UKFE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2 r-sf))
    (home-page "https://cran.r-project.org/package=UKFE")
    (synopsis "UK Flood Estimation")
    (description
     "This package provides functions to implement the methods of the Flood Estimation
Handbook (FEH), associated updates and the revitalised flood hydrograph model
(@code{ReFH}).  Currently the package uses NRFA peak flow dataset version 13.
Aside from FEH functionality, further hydrological functions are available.
Most of the methods implemented in this package are described in one or more of
the following: \"Flood Estimation Handbook\", Centre for Ecology & Hydrology
(1999, ISBN:0 948540 94 X). \"Flood Estimation Handbook Supplementary Report No.
1\", Kjeldsen (2007, ISBN:0 903741 15 7). \"Regional Frequency Analysis - an
approach based on L-moments\", Hosking & Wallis (1997, ISBN: 978 0 521 01940 8).
\"Proposal of the extreme rank plot for extreme value analysis: with an emphasis
on flood frequency studies\", Hammond (2019, <doi:10.2166/nh.2019.157>). \"Making
better use of local data in flood frequency estimation\", Environment Agency
(2017, ISBN: 978 1 84911 387 8). \"Sampling uncertainty of UK design flood
estimation\" , Hammond (2021, <doi:10.2166/nh.2021.059>). \"Improving the FEH
statistical procedures for flood frequency estimation\", Environment Agency
(2008, ISBN: 978 1 84432 920 5). \"Low flow estimation in the United Kingdom\",
Institute of Hydrology (1992, ISBN 0 948540 45 1).  Wallingford
@code{HydroSolutions}, (2016,
<http://software.hydrosolutions.co.uk/winfap4/Urban-Adjustment-Procedure-Technical-Note.pdf>).
 Data from the UK National River Flow Archive (<https://nrfa.ceh.ac.uk/>, terms
and conditions: <https://nrfa.ceh.ac.uk/costs-terms-and-conditions>).")
    (license license:gpl3)))

(define-public r-ukbnmr
  (package
    (name "r-ukbnmr")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ukbnmr" version))
       (sha256
        (base32 "0ajdnc75bqbc1i2x157h59sj7x8xwickf6llc8iwzzacs1hnj481"))))
    (properties `((upstream-name . "ukbnmr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-lubridate r-data-table r-bit64))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ukbnmr")
    (synopsis
     "Removal of Unwanted Technical Variation from UK Biobank NMR Metabolomics Biomarker Data")
    (description
     "This package provides a suite of utilities for working with the UK Biobank
<https://www.ukbiobank.ac.uk/> Nuclear Magnetic Resonance spectroscopy (NMR)
metabolomics data <https://biobank.ndph.ox.ac.uk/showcase/label.cgi?id=220>.
Includes functions for extracting biomarkers from decoded UK Biobank field data,
removing unwanted technical variation from biomarker concentrations, computing
an extended set of lipid, fatty acid, and cholesterol fractions, and for
re-deriving composite biomarkers and ratios after adjusting data for unwanted
biological variation.  For further details on methods see Ritchie SC et al.  Sci
Data (2023) <doi:10.1038/s41597-023-01949-y>.")
    (license license:expat)))

(define-public r-ukbabynames
  (package
    (name "r-ukbabynames")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ukbabynames" version))
       (sha256
        (base32 "1akmg1sj5438nsbjp2xqlrkgsw772j1a1shnn1jqh25d1q3lb0nz"))))
    (properties `((upstream-name . "ukbabynames")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://mine-cetinkaya-rundel.github.io/ukbabynames/")
    (synopsis "UK Baby Names Data")
    (description
     "Full listing of UK baby names occurring more than three times per year between
1974 and 2020, and rankings of baby name popularity by decade from 1904 to 1994.")
    (license license:cc0)))

(define-public r-ukb-covid19
  (package
    (name "r-ukb-covid19")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UKB.COVID19" version))
       (sha256
        (base32 "02crz9spzl7xpa1csrwrrja9a6z8937rghfkm1awwwv4nrx1cwr6"))))
    (properties `((upstream-name . "UKB.COVID19")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse
                             r-questionr
                             r-magrittr
                             r-here
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bahlolab/UKB.COVID19")
    (synopsis
     "UK Biobank COVID-19 Data Processing and Risk Factor Association Tests")
    (description
     "Process UK Biobank COVID-19 test result data for susceptibility, severity and
mortality analyses, perform potential non-genetic COVID-19 risk factor and
co-morbidity association tests.  Wang et al. (2021)
<doi:10.5281/zenodo.5174381>.")
    (license license:expat)))

(define-public r-uk2us
  (package
    (name "r-uk2us")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uk2us" version))
       (sha256
        (base32 "1iskjfifksx9gh94zwh4kk7l984804fidzg4j1k2ww9a4j63rk19"))))
    (properties `((upstream-name . "uk2us")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/bldavies/uk2us")
    (synopsis "Convert Words Between UK and US English")
    (description
     "This package provides functions for converting between UK and US spellings of
English words.")
    (license license:expat)))

(define-public r-uiucthemes
  (package
    (name "r-uiucthemes")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uiucthemes" version))
       (sha256
        (base32 "01gfmf0zfkng2fnfx7a1r627qxlnwr8k5cplj3flj6122vzcsifs"))))
    (properties `((upstream-name . "uiucthemes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xaringan r-rmarkdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/illinois-r/uiucthemes")
    (synopsis "'R' 'Markdown' Themes for 'UIUC' Documents and Presentations")
    (description
     "This package provides a set of custom R Markdown templates for documents and
presentations with the University of Illinois at Urbana-Champaign (UIUC) color
scheme and identity standards.")
    (license license:expat)))

(define-public r-uisapi
  (package
    (name "r-uisapi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uisapi" version))
       (sha256
        (base32 "1yk9arr3hyi5n7qf1dfpkmx6sp2zmvk2rzvfcg7dn61cmjjmgjnp"))))
    (properties `((upstream-name . "uisapi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-jsonlite
                             r-httr2
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/tidy-intelligence/r-uisapi")
    (synopsis "Access the UNESCO Institute for Statistics API")
    (description
     "Retrieve data from the UNESCO Institute for Statistics (UIS) API
<https://api.uis.unesco.org/api/public/documentation/>.  UIS provides public
access to more than 4,000 indicators focusing on education, science and
technology, culture, and communication.")
    (license license:expat)))

(define-public r-ui
  (package
    (name "r-ui")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ui" version))
       (sha256
        (base32 "15hcdzaj75ip6j7yglx8rqhp4y3yf3aw5cpbjgk1mjr4cya7lvzi"))))
    (properties `((upstream-name . "ui")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-mvtnorm r-maxlik r-matrix))
    (home-page "https://cran.r-project.org/package=ui")
    (synopsis
     "Uncertainty Intervals and Sensitivity Analysis for Missing Data")
    (description
     "This package implements functions to derive uncertainty intervals for (i)
regression (linear and probit) parameters when outcome is missing not at random
(non-ignorable missingness) introduced in Genbaeck, M., Stanghellini, E., de
Luna, X. (2015) <doi:10.1007/s00362-014-0610-x> and Genbaeck, M., Ng, N.,
Stanghellini, E., de Luna, X. (2018) <doi:10.1007/s10433-017-0448-x>; and (ii)
double robust and outcome regression estimators of average causal effects (on
the treated) with possibly unobserved confounding introduced in Genbaeck, M., de
Luna, X. (2018) <doi:10.1111/biom.13001>.")
    (license license:gpl2)))

(define-public r-uhmm
  (package
    (name "r-uhmm")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uHMM" version))
       (sha256
        (base32 "1516ipadxi7rc1dbinr5rva2fbcr5i2zg3rlli5wy7r6naf8fzzl"))))
    (properties `((upstream-name . "uHMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tkrplot
                             r-tcltk2
                             r-hmm
                             r-factominer
                             r-corrplot
                             r-clvalid
                             r-cluster
                             r-class
                             r-chron))
    (home-page "https://cran.r-project.org/package=uHMM")
    (synopsis "Construct an Unsupervised Hidden Markov Model")
    (description
     "Construct a Hidden Markov Model with states learnt by unsupervised
classification.")
    (license license:gpl2+)))

(define-public r-uhm
  (package
    (name "r-uhm")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UHM" version))
       (sha256
        (base32 "0gl98v7cya740vldimx3ygjqqi3ld1wlpm48hcbylgmvb97745k1"))))
    (properties `((upstream-name . "UHM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numbers r-jagsui))
    (home-page "https://github.com/tbaghfalaki/UHM")
    (synopsis "Unified Zero-Inflated Hurdle Regression Models")
    (description
     "Run a Gibbs sampler for hurdle models to analyze data showing an excess of
zeros, which is common in zero-inflated count and semi-continuous models.  The
package includes the hurdle model under Gaussian, Gamma, inverse Gaussian,
Weibull, Exponential, Beta, Poisson, negative binomial, logarithmic, Bell,
generalized Poisson, and binomial distributional assumptions.  The models
described in Ganjali et al. (2024).")
    (license license:gpl2+)))

(define-public r-ugomquantreg
  (package
    (name "r-ugomquantreg")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ugomquantreg" version))
       (sha256
        (base32 "1a5vc1qgy3kp1by5bp296w980lkxcghzzxibhap2jg06jnzjfcq8"))))
    (properties `((upstream-name . "ugomquantreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-pracma r-gamlss-dist r-gamlss))
    (home-page "https://cran.r-project.org/package=ugomquantreg")
    (synopsis "Quantile Regression Modeling for Unit-Gompertz Responses")
    (description
     "Unit-Gompertz density, cumulative distribution, quantile functions and random
deviate generation of the unit-Gompertz distribution.  In addition, there are a
function for fitting the Generalized Additive Models for Location, Scale and
Shape.")
    (license license:expat)))

(define-public r-ugmar
  (package
    (name "r-ugmar")
    (version "3.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uGMAR" version))
       (sha256
        (base32 "0ggrjcy4ay88sys1jhx56vcs7v3fl8v4fkmnz91kk5c6q5nkgr87"))))
    (properties `((upstream-name . "uGMAR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pbapply r-gsl r-brobdingnag))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=uGMAR")
    (synopsis
     "Estimate Univariate Gaussian and Student's t Mixture Autoregressive Models")
    (description
     "Maximum likelihood estimation of univariate Gaussian Mixture Autoregressive
(GMAR), Student's t Mixture Autoregressive (@code{StMAR}), and Gaussian and
Student's t Mixture Autoregressive (G-@code{StMAR}) models, quantile residual
tests, graphical diagnostics, forecast and simulate from GMAR, @code{StMAR} and
G-@code{StMAR} processes.  Leena Kalliovirta, Mika Meitz, Pentti Saikkonen
(2015) <doi:10.1111/jtsa.12108>, Mika Meitz, Daniel Preve, Pentti Saikkonen
(2023) <doi:10.1080/03610926.2021.1916531>, Savi Virolainen (2022)
<doi:10.1515/snde-2020-0060>.")
    (license license:gpl3)))

(define-public r-ugatsdb
  (package
    (name "r-ugatsdb")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ugatsdb" version))
       (sha256
        (base32 "098dzh6slaxj22730nm9g6b5653600ms2ahxr87iblh5xq0dcidl"))))
    (properties `((upstream-name . "ugatsdb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-writexl r-rmysql r-dbi r-data-table r-collapse))
    (home-page "https://mepd.finance.go.ug/apps.html")
    (synopsis "Uganda Time Series Database API")
    (description
     "An R API providing easy access to a relational database with macroeconomic,
financial and development related time series data for Uganda.  Overall more
than 5000 series at varying frequency (daily, monthly, quarterly, annual in
fiscal or calendar years) can be accessed through the API. The data is provided
by the Bank of Uganda, the Ugandan Ministry of Finance, Planning and Economic
Development, the IMF and the World Bank.  The database is being updated once a
month.")
    (license license:gpl3)))

(define-public r-ufs
  (package
    (name "r-ufs")
    (version "25.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ufs" version))
       (sha256
        (base32 "1ryf4a2fkr83xbpwb4y9nmkn14jpqmqr3qigwb8jg5idji0q6wps"))))
    (properties `((upstream-name . "ufs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-suppdists
                             r-scales
                             r-rmdpartials
                             r-pwr
                             r-plyr
                             r-pander
                             r-knitr
                             r-kableextra
                             r-htmltools
                             r-gtable
                             r-gridextra
                             r-gparotation
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-diptest
                             r-digest))
    (home-page "https://ufs.opens.science")
    (synopsis "Collection of Utilities")
    (description
     "This is a new version of the userfriendlyscience package, which has grown a bit
unwieldy.  Therefore, distinct functionalities are being consciously uncoupled
into different packages.  This package contains the general-purpose tools and
utilities (see the behaviorchange package, the rosetta package, and the
soon-to-be-released scd package for other functionality), and is the most direct
successor of the original userfriendlyscience package.  For example, this
package contains a number of basic functions to create higher level plots, such
as diamond plots, to easily plot sampling distributions, to generate confidence
intervals, to plan study sample sizes for confidence intervals, and to do some
basic operations such as (dis)attenuate effect size estimates.")
    (license license:gpl3+)))

(define-public r-ufrisk
  (package
    (name "r-ufrisk")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ufRisk" version))
       (sha256
        (base32 "1cqx416kb8pfaxx2hidv6vyackbps7azrkgkqzwyycrbi177riwb"))))
    (properties `((upstream-name . "ufRisk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-smoots r-rugarch r-fracdiff r-esemifar))
    (home-page "https://wiwi.uni-paderborn.de/en/dep4/feng/")
    (synopsis "Risk Measure Calculation in Financial TS")
    (description
     "Enables the user to calculate Value at Risk (@code{VaR}) and Expected Shortfall
(ES) by means of various parametric and semiparametric GARCH-type models.  For
the latter the estimation of the nonparametric scale function is carried out by
means of a data-driven smoothing approach.  Model quality, in terms of
forecasting @code{VaR} and ES, can be assessed by means of various backtesting
methods such as the traffic light test for @code{VaR} and a newly developed
traffic light test for ES. The approaches implemented in this package are
described in e.g. Feng Y., Beran J., Letmathe S. and Ghosh S. (2020)
<https://ideas.repec.org/p/pdn/ciepap/137.html> as well as Letmathe S., Feng Y.
and Uhde A. (2021) <https://ideas.repec.org/p/pdn/ciepap/141.html>.")
    (license license:gpl3)))

(define-public r-uei
  (package
    (name "r-uei")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UEI" version))
       (sha256
        (base32 "0q72avm90x518dcnl60jvg1rpxnizz0hr02mc8wlfr9cinz7r841"))))
    (properties `((upstream-name . "UEI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-metrics r-factominer r-factoextra))
    (home-page "https://cran.r-project.org/package=UEI")
    (synopsis "Compute Uniform Error Index")
    (description
     "Uniform Error Index is the weighted average of different error measures.
Uniform Error Index utilizes output from different error function and gives more
robust and stable error values.  This package has been developed to compute
Uniform Error Index from ten different loss function like Error Square, Square
of Square Error, Quasi Likelihood Error, @code{LogR-Square}, Absolute Error,
Absolute Square Error etc.  The weights are determined using Principal Component
Analysis (PCA) algorithm of Yeasin and Paul (2024)
<doi:10.1007/s11227-023-05542-3>.")
    (license license:gpl3)))

(define-public r-udpipe
  (package
    (name "r-udpipe")
    (version "0.8.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "udpipe" version))
       (sha256
        (base32 "0crjcfrpb0m7f58w7ksz7kvglvmc45axy9kbbvqz9w6i4kg00aaj"))))
    (properties `((upstream-name . "udpipe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-matrix r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://bnosac.github.io/udpipe/en/index.html")
    (synopsis
     "Tokenization, Parts of Speech Tagging, Lemmatization and Dependency Parsing with the 'UDPipe' 'NLP' Toolkit")
    (description
     "This natural language processing toolkit provides language-agnostic
tokenization', parts of speech tagging', lemmatization and dependency parsing of
raw text.  Next to text parsing, the package also allows you to train annotation
models based on data of treebanks in @code{CoNLL-U} format as provided at
<https://universaldependencies.org/format.html>.  The techniques are explained
in detail in the paper: Tokenizing, POS Tagging, Lemmatizing and Parsing UD 2.0
with UDPipe', available at <doi:10.18653/v1/K17-3009>.  The toolkit also
contains functionalities for commonly used data manipulations on texts which are
enriched with the output of the parser.  Namely functionalities and algorithms
for collocations, token co-occurrence, document term matrix handling, term
frequency inverse document frequency calculations, information retrieval metrics
(Okapi BM25), handling of multi-word expressions, keyword detection (Rapid
Automatic Keyword Extraction, noun phrase extraction, syntactical patterns)
sentiment scoring and semantic similarity analysis.")
    (license (license:fsdg-compatible "MPL-2.0"))))

(define-public r-udderquarterinfectiondata
  (package
    (name "r-udderquarterinfectiondata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UdderQuarterInfectionData" version))
       (sha256
        (base32 "084bq5ai1ccp4www64z0ipic74zkd8j1ygv0py900164a25wdr9b"))))
    (properties `((upstream-name . "UdderQuarterInfectionData")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UdderQuarterInfectionData")
    (synopsis "Udder Quarter Infection Data")
    (description
     "The udder quarter infection data set contains infection times of individual cow
udder quarters with Corynebacterium bovis (Laevens et al.  1997
<DOI:10.3168/jds.S0022-0302(97)76295-7>).  Obviously, the four udder quarters
are clustered within a cow, and udder quarters are sampled only approximately
monthly, generating interval-censored data.  The data set contains both
covariates that change within a cow (e.g., front and rear udder quarters) and
covariates that change between cows (e.g., parity [the number of previous
calvings]).  The correlation between udder infection times within a cow also is
of interest, because this is a measure of the infectivity of the agent causing
the disease.  Various models have been applied to address the problem of
interdependence for right-censored event times.  These models, as applied to
this data set, can be found back in the publications found in the reference
list.")
    (license license:gpl3)))

(define-public r-ucsfindustrydocs
  (package
    (name "r-ucsfindustrydocs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ucsfindustrydocs" version))
       (sha256
        (base32 "17c3cfnc8k189dlz0asrp6kkfvfi59xd8f8rzp0v6sbg3lwrxiha"))))
    (properties `((upstream-name . "ucsfindustrydocs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-r6
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-table
                             r-arrow))
    (home-page "https://cran.r-project.org/package=ucsfindustrydocs")
    (synopsis "UCSF Industry Documents Library API Wrapper")
    (description
     "Serves as a R wrapper for the University of California San Francisco's [Industry
Documents Digital Library]<https://www.industrydocuments.ucsf.edu/> API. The
API, and this wrapper, serve to pull metadata about of items within the digital
library.  For more information the API, see the [API's
documentation]<https://www.industrydocuments.ucsf.edu/wp-content/uploads/2020/08/@code{IndustryDocumentsDataAPI_v7.pdf>}.")
    (license license:expat)))

(define-public r-ucscxenatools
  (package
    (name "r-ucscxenatools")
    (version "1.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UCSCXenaTools" version))
       (sha256
        (base32 "0w0rps6jsiw67k6h8j1g0nqzwwhl1kb2by90xd4w61i71vk0fda7"))))
    (properties `((upstream-name . "UCSCXenaTools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-readr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/UCSCXenaTools/")
    (synopsis "Download and Explore Datasets from UCSC Xena Data Hubs")
    (description
     "Download and explore datasets from UCSC Xena data hubs, which are a collection
of UCSC-hosted public databases such as TCGA, ICGC, TARGET, GTEx, CCLE, and
others.  Databases are normalized so they can be combined, linked, filtered,
explored and downloaded.")
    (license license:gpl3)))

(define-public r-ucscxenashiny
  (package
    (name "r-ucscxenashiny")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UCSCXenaShiny" version))
       (sha256
        (base32 "0ygxwsllqhk6c82aw6282az1p3q8sldgmryf94c37fzj8kkjwvig"))))
    (properties `((upstream-name . "UCSCXenaShiny")))
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
    (propagated-inputs (list r-ucscxenatools
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shiny
                             r-rlang
                             r-purrr
                             r-psych
                             r-ppcor
                             r-magrittr
                             r-httr
                             r-ggpubr
                             r-ggplot2
                             r-forcats
                             r-ezcox
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/openbiox/UCSCXenaShiny")
    (synopsis "Interactive Analysis of UCSC Xena Data")
    (description
     "This package provides functions and a Shiny application for downloading,
analyzing and visualizing datasets from UCSC Xena (<http://xena.ucsc.edu/>),
which is a collection of UCSC-hosted public databases such as TCGA, ICGC,
TARGET, GTEx, CCLE, and others.")
    (license license:gpl3+)))

(define-public r-ucr-columnnames
  (package
    (name "r-ucr-columnnames")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UCR.ColumnNames" version))
       (sha256
        (base32 "1nwwq93f60r9aik51l7mzckg81f81nz5kgzynyzp5sm4y2wmpzwn"))))
    (properties `((upstream-name . "UCR.ColumnNames")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UCR.ColumnNames")
    (synopsis
     "Fixes Column Names for Uniform Crime Report \"Offenses Known and Clearance by Arrest\" Datasets")
    (description
     "Changes the column names of the inputted dataset to the correct names from the
Uniform Crime Report codebook for the \"Offenses Known and Clearance by Arrest\"
datasets from 1998-2014.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ucomp
  (package
    (name "r-ucomp")
    (version "5.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UComp" version))
       (sha256
        (base32 "0a3jxdw3aicllbabfqabyfzvdq1mxz9xd60j90288bb7bxynp4j4"))))
    (properties `((upstream-name . "UComp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tsoutliers
                             r-tsibble
                             r-rcpparmadillo
                             r-rcpp
                             r-gridextra
                             r-ggplot2
                             r-ggforce))
    (home-page "https://cran.r-project.org/package=UComp")
    (synopsis "Automatic Univariate Time Series Modelling of many Kinds")
    (description
     "Comprehensive analysis and forecasting of univariate time series using automatic
time series models of many kinds.  Harvey AC (1989)
<doi:10.1017/CBO9781107049994>.  Pedregal DJ and Young PC (2002)
<doi:10.1002/9780470996430>.  Durbin J and Koopman SJ (2012)
<doi:10.1093/acprof:oso/9780199641178.001.0001>.  Hyndman RJ, Koehler AB, Ord
JK, and Snyder RD (2008) <doi:10.1007/978-3-540-71918-2>.  GÃ³mez V, Maravall A
(2000) <doi:10.1002/9781118032978>.  Pedregal DJ, Trapero JR and Holgado E
(2024) <doi:10.1016/j.ijforecast.2023.09.004>.")
    (license license:gpl3)))

(define-public r-uclust
  (package
    (name "r-uclust")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uclust" version))
       (sha256
        (base32 "10i78fc81sy635mi8nn1gmryvcbqq7f99ws6byqlnhwyw79qmvb1"))))
    (properties `((upstream-name . "uclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-robcor r-dendextend))
    (home-page "https://cran.r-project.org/package=uclust")
    (synopsis "Clustering and Classification Inference with U-Statistics")
    (description
     "Clustering and classification inference for high dimension low sample size
(HDLSS) data with U-statistics.  The package contains implementations of
nonparametric statistical tests for sample homogeneity, group separation,
clustering, and classification of multivariate data.  The methods have high
statistical power and are tailored for data in which the dimension L is much
larger than sample size n.  See Gabriela B. Cybis, Marcio Valk and SÃ­lvia RC
Lopes (2018) <doi:10.1080/00949655.2017.1374387>, Marcio Valk and Gabriela B.
Cybis (2020) <doi:10.1080/10618600.2020.1796398>, Debora Z. Bello, Marcio Valk
and Gabriela B. Cybis (2021) <@code{arXiv:2106.09115>}.")
    (license license:gpl3)))

(define-public r-ucimlrepo
  (package
    (name "r-ucimlrepo")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ucimlrepo" version))
       (sha256
        (base32 "19r8iy0s4jwjs99bx49l8acx94c5jgn1kzpvlmyqv0311kydry51"))))
    (properties `((upstream-name . "ucimlrepo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr2))
    (home-page "https://r-pkg.thecoatlessprofessor.com/ucimlrepo/")
    (synopsis "Explore UCI ML Repository Datasets")
    (description
     "Find and import datasets from the University of California Irvine Machine
Learning (UCI ML) Repository into R. Supports working with data from UCI ML
repository inside of R scripts, notebooks, and Quarto'/'RMarkdown documents.
Access the UCI ML repository directly at <https://archive.ics.uci.edu/>.")
    (license license:expat)))

(define-public r-ucie
  (package
    (name "r-ucie")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ucie" version))
       (sha256
        (base32 "032anlli29a0iwzmn35afrcs4if5kipplpn8n4qpy1g14hc5zgvd"))))
    (properties `((upstream-name . "ucie")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl
                             r-remotes
                             r-ptinpoly
                             r-pracma
                             r-geometry
                             r-dplyr
                             r-colorspace))
    (home-page "https://cran.r-project.org/package=ucie")
    (synopsis "Mapping 3D Data into CIELab Color Space")
    (description
     "Returns a data frame with the names of the input data points and hex colors (or
CIELab coordinates).  Data can be mapped to colors for use in data
visualization.  It optimally maps data points into a polygon that represents the
CIELab colour space.  Since Euclidean distance approximates relative perceptual
differences in CIELab color space, the result is a color encoding that aims to
capture much of the structure of the original data.")
    (license license:expat)))

(define-public r-uci
  (package
    (name "r-uci")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uci" version))
       (sha256
        (base32 "0bqyj69xplr8hbc1b9rpjxvzmnhwkqy2xdyd4my53niq2gm55750"))))
    (properties `((upstream-name . "uci")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spdep
                             r-sf
                             r-pbapply
                             r-future
                             r-furrr
                             r-fields
                             r-data-table
                             r-cpprouting
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ipeaGIT/uci")
    (synopsis "Urban Centrality Index")
    (description
     "Calculates the Urban Centrality Index (UCI) as in Pereira et al., (2013)
<doi:10.1111/gean.12002>.  The UCI measures the extent to which the spatial
organization of a city or region varies from extreme polycentric to extreme
monocentric in a continuous scale from 0 to 1.  Values closer to 0 indicate more
polycentric patterns and values closer to 1 indicate a more monocentric urban
form.")
    (license license:expat)))

(define-public r-ubstats
  (package
    (name "r-ubstats")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UBStats" version))
       (sha256
        (base32 "1x8pc1lb7xbjbydyl6bsckws7as6mgxr0nvmgg06kilk7s07ahmm"))))
    (properties `((upstream-name . "UBStats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UBStats")
    (synopsis "Basic Statistics")
    (description
     "Basic statistical analyses.  The package has been developed to be used in
statistics courses at Bocconi University (Milan, Italy).  Currently, the package
includes some exploratory and inferential analyses usually presented in
introductory statistics courses.")
    (license license:gpl3)))

(define-public r-ubms
  (package
    (name "r-ubms")
    (version "1.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ubms" version))
       (sha256
        (base32 "0q2fz2nz5k1jvyh57c3wlagrb5ik0d7w4imm5yx473aii3a963n7"))))
    (properties `((upstream-name . "ubms")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-unmarked
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rspectra
                             r-rlang
                             r-reformulas
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-pbapply
                             r-matrix
                             r-loo
                             r-gridextra
                             r-ggplot2
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://biodiverse.github.io/ubms/")
    (synopsis "Bayesian Models for Data from Unmarked Animals using 'Stan'")
    (description
     "Fit Bayesian hierarchical models of animal abundance and occurrence via the
rstan package, the R interface to the Stan C++ library.  Supported models
include single-season occupancy, dynamic occupancy, and N-mixture abundance
models.  Covariates on model parameters are specified using a formula-based
interface similar to package unmarked', while also allowing for estimation of
random slope and intercept terms.  References: Carpenter et al. (2017)
<doi:10.18637/jss.v076.i01>; Fiske and Chandler (2011)
<doi:10.18637/jss.v043.i10>.")
    (license license:gpl3+)))

(define-public r-ubiquity
  (package
    (name "r-ubiquity")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ubiquity" version))
       (sha256
        (base32 "19qb2cc0x75mzviqs049n52n6y98ss4c3l8n8y0iwnp25ldwyj12"))))
    (properties `((upstream-name . "ubiquity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list perl))
    (propagated-inputs (list r-stringr
                             r-shiny
                             r-scales
                             r-rmarkdown
                             r-rhandsontable
                             r-readxl
                             r-pso
                             r-pknca
                             r-optimx
                             r-onbrand
                             r-mass
                             r-knitr
                             r-ggplot2
                             r-foreach
                             r-flextable
                             r-dplyr
                             r-doparallel
                             r-digest
                             r-desolve
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://r.ubiquity.tools")
    (synopsis "PKPD, PBPK, and Systems Pharmacology Modeling Tools")
    (description
     "Complete work flow for the analysis of pharmacokinetic pharmacodynamic (PKPD),
physiologically-based pharmacokinetic (PBPK) and systems pharmacology models
including: creation of ordinary differential equation-based models, pooled
parameter estimation, individual/population based simulations, rule-based
simulations for clinical trial design and modeling assays, deployment with a
customizable Shiny app, and non-compartmental analysis.  System-specific
analysis templates can be generated and each element includes integrated
reporting with @code{PowerPoint} and Word'.")
    (license license:bsd-2)))

(define-public r-ubcrm
  (package
    (name "r-ubcrm")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UBCRM" version))
       (sha256
        (base32 "0sbw0kvviczpccv3nq2n1nkj61hng178px4381zkaf1yrv44x9l6"))))
    (properties `((upstream-name . "UBCRM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=UBCRM")
    (synopsis "Simulate and Conduct Dose-Escalation Phase I Studies")
    (description
     "Two Phase I designs are implemented in the package: the classical 3+3 and the
Continual Reassessment Method (<doi:10.2307/2531628>).  Simulations tools are
also available to estimate the operating characteristics of the methods with
several user-dependent options.")
    (license license:gpl2+)))

(define-public r-ubayfs
  (package
    (name "r-ubayfs")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UBayFS" version))
       (sha256
        (base32 "1aj627f8w30wfnf313adza85jffnp1yq34ri8cfaz5v0jzs1bfib"))))
    (properties `((upstream-name . "UBayFS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny
                             r-rdimtools
                             r-mrmre
                             r-matrixstats
                             r-hyper2
                             r-gridextra
                             r-ggplot2
                             r-ga
                             r-dirichletreg))
    (native-inputs (list r-knitr))
    (home-page "https://annajenul.github.io/UBayFS/")
    (synopsis "User-Guided Bayesian Framework for Ensemble Feature Selection")
    (description
     "The framework proposed in Jenul et al., (2022) <doi:10.1007/s10994-022-06221-9>,
together with an interactive Shiny dashboard.  U@code{BayFS} is an ensemble
feature selection technique embedded in a Bayesian statistical framework.  The
method combines data and user knowledge, where the first is extracted via
data-driven ensemble feature selection.  The user can control the feature
selection by assigning prior weights to features and penalizing specific feature
combinations.  U@code{BayFS} can be used for common feature selection as well as
block feature selection.")
    (license license:gpl3)))

(define-public r-ubair
  (package
    (name "r-ubair")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ubair" version))
       (sha256
        (base32 "17ddfphgr8j45ig0d6hbsyv6rnyf87g3wnqjl8qhv18rx25rjkvl"))))
    (properties `((upstream-name . "ubair")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-rlang
                             r-ranger
                             r-lubridate
                             r-lightgbm
                             r-ggplot2
                             r-forecast
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.opencode.de/uba-ki-lab/ubair")
    (synopsis "Effects of External Conditions on Air Quality")
    (description
     "Analyzes the impact of external conditions on air quality using counterfactual
approaches, featuring methods for data preparation, modeling, and visualization.")
    (license license:gpl3+)))

(define-public r-uavrmp
  (package
    (name "r-uavrmp")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uavRmp" version))
       (sha256
        (base32 "1bv5979x3c3vbls40vih83mm29cq7yjv37w544cg63sml2k2bj3v"))))
    (properties `((upstream-name . "uavRmp")))
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
    (propagated-inputs (list r-zoo
                             r-xfun
                             r-terra
                             r-spatialeco
                             r-sp
                             r-sf
                             r-rlist
                             r-log4r
                             r-link2gi
                             r-jsonlite
                             r-geosphere
                             r-exifr
                             r-dplyr
                             r-data-table
                             r-concaveman
                             r-brew))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/gisma/uavRmp")
    (synopsis "UAV Mission Planner")
    (description
     "The Unmanned Aerial Vehicle Mission Planner provides an easy to use work flow
for planning autonomous obstacle avoiding surveys of ready to fly unmanned
aerial vehicles to retrieve aerial or spot related data.  It creates either
intermediate flight control files for the DJI-Litchi supported series or ready
to upload control files for the pixhawk-based flight controller.  Additionally
it contains some useful tools for digitizing and data manipulation.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-uaparserjs
  (package
    (name "r-uaparserjs")
    (version "0.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "uaparserjs" version))
       (sha256
        (base32 "0v24smgsz1p2wa23mc2llx7dycwmgf7zyxdhwxgwplabpmy3xzhl"))))
    (properties `((upstream-name . "uaparserjs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-v8 r-progress))
    (home-page "https://gitlab.com/hrbrmstr/uaparserjs")
    (synopsis "Parse 'User-Agent' Strings")
    (description
     "Despite there being a section in RFC 7231
<https://tools.ietf.org/html/rfc7231#section-5.5.3> defining a suggested
structure for User-Agent headers this data is notoriously difficult to parse
consistently.  Tools are provided that will take in user agent strings and
return structured R objects.  This is a V8'-backed package based on the
ua-parser project <https://github.com/ua-parser>.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-uahdatascienceuc
  (package
    (name "r-uahdatascienceuc")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UAHDataScienceUC" version))
       (sha256
        (base32 "1p1xyfcscwx9ahzmfiiwz8jxqac9h4v12nc5r76pmvk0v376k9hm"))))
    (properties `((upstream-name . "UAHDataScienceUC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-proxy r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UAHDataScienceUC")
    (synopsis "Learn Clustering Techniques Through Examples and Code")
    (description
     "This package provides a comprehensive educational package combining clustering
algorithms with detailed step-by-step explanations.  Provides implementations of
both traditional (hierarchical, k-means) and modern (Density-Based Spatial
Clustering of Applications with Noise (DBSCAN), Gaussian Mixture Models (GMM),
genetic k-means) clustering methods as described in Ezugwu et.  al., (2022)
<doi:10.1016/j.engappai.2022.104743>.  Includes educational datasets
highlighting different clustering challenges, based on scikit-learn examples
(Pedregosa et al., 2011)
<https://jmlr.csail.mit.edu/papers/v12/pedregosa11a.html>.  Features detailed
algorithm explanations, visualizations, and weighted distance calculations for
enhanced learning.")
    (license license:expat)))

(define-public r-uahdatasciencesf
  (package
    (name "r-uahdatasciencesf")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UAHDataScienceSF" version))
       (sha256
        (base32 "1xm7nmbl8hx52md2avf4ypf0s8wqmfcnk8c532lyhdhn1s557jh3"))))
    (properties `((upstream-name . "UAHDataScienceSF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magick r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UAHDataScienceSF")
    (synopsis "Interactive Statistical Learning Functions")
    (description
     "An educational toolkit for learning statistical concepts through interactive
exploration.  Provides functions for basic statistics (mean, variance, etc.) and
probability distributions with step-by-step explanations and interactive
learning modes.  Each function can be used for simple calculations, detailed
learning with explanations, or interactive practice with feedback.")
    (license license:expat)))

(define-public r-uahdatasciencesc
  (package
    (name "r-uahdatasciencesc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UAHDataScienceSC" version))
       (sha256
        (base32 "1x9m9zgdad08rvs5y0ndshsav7n0plj4xpa8fysx75phhi8q6yx7"))))
    (properties `((upstream-name . "UAHDataScienceSC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UAHDataScienceSC")
    (synopsis
     "Learn Supervised Classification Methods Through Examples and Code")
    (description
     "Supervised classification methods, which (if asked) can provide step-by-step
explanations of the algorithms used, as described in PK Josephine et.  al.,
(2021) <doi:10.59176/kjcs.v1i1.1259>; and datasets to test them on, which
highlight the strengths and weaknesses of each technique.")
    (license license:expat)))

(define-public r-uahdatascienceo
  (package
    (name "r-uahdatascienceo")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "UAHDataScienceO" version))
       (sha256
        (base32 "0pg797p94q47qln11xkix63g17zz0kyw6qpmk6llnbfm8sdgxnbv"))))
    (properties `((upstream-name . "UAHDataScienceO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=UAHDataScienceO")
    (synopsis
     "Educational Outlier Detection Algorithms with Step-by-Step Tutorials")
    (description
     "This package provides implementations of some of the most important outlier
detection algorithms.  Includes a tutorial mode option that shows a description
of each algorithm and provides a step-by-step execution explanation of how it
identifies outliers from the given data with the specified input parameters.
References include the works of Azzedine Boukerche, Lining Zheng, and Omar
Alfandi (2020) <doi:10.1145/3381028>, Abir Smiti (2020)
<doi:10.1016/j.cosrev.2020.100306>, and Xiaogang Su, Chih-Ling Tsai (2011)
<doi:10.1002/widm.19>.")
    (license license:expat)))

(define-public r-u5mr
  (package
    (name "r-u5mr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "u5mr" version))
       (sha256
        (base32 "16znlmxanhg1m6fq28z62jv033fxgr4njzz50hgskprvgvx8svkj"))))
    (properties `((upstream-name . "u5mr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lifecycle))
    (home-page "https://github.com/myominnoo/u5mr")
    (synopsis "Under-Five Child Mortality Estimation")
    (description
     "This package contains functions for calculating under-five child mortality
estimates using the Trussell version of the Brass method (United Nations (1990)
<https://www.un.org/en/development/desa/population/publications/pdf/mortality/stepguide_childmort.pdf>
and United Nations (1983)
<https://www.un.org/en/development/desa/population/publications/pdf/mortality/stepguide_childmort.pdf>)
as well as applying the cohort-derived methods by Rajaratnam and colleagues
(Rajaratnam JK, Tran LN, Lopez AD, Murray CJL (2010) \"Measuring Under-Five
Mortality: Validation of New Low-Cost Methods\"
<doi:10.1371/journal.pmed.1000253>).")
    (license license:gpl2+)))

