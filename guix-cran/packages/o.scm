(define-module (guix-cran packages o)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages version-control)
  #:use-module (gnu packages java)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages imagemagick)
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

(define-public r-ozmaps
  (package
    (name "r-ozmaps")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ozmaps" version))
              (sha256
               (base32
                "0sqxaiw1mdcg81228g7k7r6fla6d7hfk9ax2z6pws8457xbvrzka"))))
    (properties `((upstream-name . "ozmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-sf r-oz))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mdsumner/ozmaps")
    (synopsis "Australia Maps")
    (description
     "Maps of Australian coastline and administrative regions.  Data can be drawn or
accessed directly as simple features objects.  Includes simple functions for
country or state maps of Australia and in-built data sets of administrative
regions from the Australian Bureau of Statistics <https://www.abs.gov.au/>.
Layers include electoral divisions and local government areas, simplified from
the original sources but with sufficient detail to allow mapping of a local
municipality.")
    (license license:gpl3)))

(define-public r-oz
  (package
    (name "r-oz")
    (version "1.0-21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oz" version))
              (sha256
               (base32
                "0p4r8qbpv7q6vad940540pd3lk79pyfj41h2cn22hsy1j0va1qbv"))))
    (properties `((upstream-name . "oz")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=oz")
    (synopsis "Plot the Australian Coastline and States")
    (description
     "This package provides functions for plotting Australia's coastline and state
boundaries.")
    (license license:gpl2)))

(define-public r-oyster
  (package
    (name "r-oyster")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oysteR" version))
              (sha256
               (base32
                "11zg959h9104hh8wid4003s8c4z9xhmicj39cc5vq1j8g1g7ilr7"))))
    (properties `((upstream-name . "oysteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rjson
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/sonatype-nexus-community/oysteR")
    (synopsis "Scans R Projects for Vulnerable Third Party Dependencies")
    (description
     "Collects a list of your third party R packages, and scans them with the OSS
Index provided by Sonatype', reporting back on any vulnerabilities that are
found in the third party packages you use.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-oxybs
  (package
    (name "r-oxybs")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OxyBS" version))
              (sha256
               (base32
                "11l3gm0jvw993jb13f6kpv77m6z0d1jswscma2v28qzkw053r3dc"))))
    (properties `((upstream-name . "OxyBS")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OxyBS")
    (synopsis "Processing of Oxy-Bisulfite Microarray Data")
    (description
     "This package provides utilities for processing of Oxy-Bisulfite microarray data
(e.g. via the Illumina Infinium platform, <http://www.illumina.com>) with tandem
arrays, one using conventional bisulfite conversion, the other using
oxy-bisulfite conversion.")
    (license license:gpl2+)))

(define-public r-oxcaar
  (package
    (name "r-oxcaar")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oxcAAR" version))
              (sha256
               (base32
                "1szifw978qr7v8n178jhg4ap2jwvfnwjl2izbbiydwx8q1fyj2q4"))))
    (properties `((upstream-name . "oxcAAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-stringi r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=oxcAAR")
    (synopsis "Interface to 'OxCal' Radiocarbon Calibration")
    (description
     "This package provides a set of tools that enables using OxCal from within R.
OxCal (<https://c14.arch.ox.ac.uk/oxcal.html>) is a standard archaeological tool
intended to provide 14C calibration and analysis of archaeological and
environmental chronological information.  OxcAAR allows simple calibration with
Oxcal and plotting of the results as well as the execution of sophisticated
('OxCal') code and the import of the results of bulk analysis and complex
Bayesian sequential calibration.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ox
  (package
    (name "r-ox")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ox" version))
              (sha256
               (base32
                "0j0va301bmppvmk6paqaqqaw85h8yf92i3pz7i59f2j8q9im82rx"))))
    (properties `((upstream-name . "ox")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ox")
    (synopsis "Shorthand if-Else")
    (description
     "Short hand if-else function to easily switch the values depending on a logical
condition.")
    (license license:gpl2+)))

(define-public r-ows4r
  (package
    (name "r-ows4r")
    (version "0.3-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ows4R" version))
              (sha256
               (base32
                "0xi2xxyc6lxkwgaans0v2xj9jd0pvgxlyc5rmjilnc0afzwdv3x9"))))
    (properties `((upstream-name . "ows4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-terra
                             r-sf
                             r-r6
                             r-openssl
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-geometa))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eblondel/ows4R")
    (synopsis "Interface to OGC Web-Services (OWS)")
    (description
     "This package provides an Interface to Web-Services defined as standards by the
Open Geospatial Consortium (OGC), including Web Feature Service (WFS) for vector
data, Web Coverage Service (WCS), Catalogue Service (CSW) for ISO/OGC metadata,
and associated standards such as the common web-service specification (OWS) and
OGC Filter Encoding.  Partial support is provided for the Web Map Service (WMS)
and Web Processing Service (WPS).  The purpose is to add support for additional
OGC service standards such as Web Coverage Processing Service (WCPS) or OGC API.")
    (license license:expat)))

(define-public r-owmr
  (package
    (name "r-owmr")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "owmr" version))
              (sha256
               (base32
                "0qlb5aw6n06yf8y2gd2fjp8kp3w0xgqh3fka7rxqndgvaqmin1a6"))))
    (properties `((upstream-name . "owmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-plyr
                             r-magrittr
                             r-jsonlite
                             r-httr))
    (home-page "https://github.com/crazycapivara/owmr/")
    (synopsis "OpenWeatherMap API Wrapper")
    (description
     "Accesses OpenWeatherMap's (owm) <https://openweathermap.org/> API. owm itself is
a service providing weather data in the past, in the future and now.
Furthermore, owm serves weather map layers usable in frameworks like leaflet'.
In order to access the API, you need to sign up for an API key.  There are free
and paid plans.  Beside functions for fetching weather data from owm', owmr
supplies tools to tidy up fetched data (for fast and simple access) and to show
it on leaflet maps.")
    (license license:expat)))

(define-public r-owidr
  (package
    (name "r-owidr")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "owidR" version))
              (sha256
               (base32
                "1rp8rvqg292b88dxmm21cxnni4n7ciqckxxjan3h3skyss7mc95d"))))
    (properties `((upstream-name . "owidR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-sf
                             r-scales
                             r-rvest
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-leaflet
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-ggrepel
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/piersyork/owidR")
    (synopsis "Import Data from Our World in Data")
    (description
     "Search and download the data used in over 3,000 Our World in Data charts.")
    (license license:expat)))

(define-public r-owenq
  (package
    (name "r-owenq")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OwenQ" version))
              (sha256
               (base32
                "02x21ab8yifv1lpk45njmvqawnrch0mrnabav414b7qsaihvg364"))))
    (properties `((upstream-name . "OwenQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppnumerical r-rcppeigen r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stla/OwenQ")
    (synopsis "Owen Q-Function")
    (description
     "Evaluates the Owen Q-function for an integer value of the degrees of freedom, by
applying Owen's algorithm (1965) <doi:10.1093/biomet/52.3-4.437>.  It is useful
for the calculation of the power of equivalence tests.")
    (license license:bsd-3)))

(define-public r-owea
  (package
    (name "r-owea")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OWEA" version))
              (sha256
               (base32
                "05h3aj074manlwnlzqp023zkql6gmsm9p1nfs6zki7ifdd83wj7m"))))
    (properties `((upstream-name . "OWEA")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-mass r-gtools))
    (home-page "https://cran.r-project.org/package=OWEA")
    (synopsis
     "Optimal Weight Exchange Algorithm for Optimal Designs for Three Models")
    (description
     "An implementation of optimal weight exchange algorithm Yang(2013)
<doi:10.1080/01621459.2013.806268> for three models.  They are Crossover model
with subject dropout, crossover model with proportional first order residual
effects and interference model.  You can use it to find either A-opt or D-opt
approximate designs.  Exact designs can be automatically rounded from
approximate designs and relative efficiency is provided as well.")
    (license license:gpl3)))

(define-public r-owdbr
  (package
    (name "r-owdbr")
    (version "1.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "owdbr" version))
              (sha256
               (base32
                "0q4654zr5aw04sssy7127vafry72b7p3d8i44fqvqg3055awin0i"))))
    (properties `((upstream-name . "owdbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-table))
    (home-page "https://github.com/kimjoaoun/owdbr")
    (synopsis "Open Welfare Data Brazil")
    (description
     "Tools for collecting municipal-level data
<http://www.transparencia.gov.br/swagger-ui.html> from several Brazilian
governmental social programs.")
    (license license:expat)))

(define-public r-owd
  (package
    (name "r-owd")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "owd" version))
              (sha256
               (base32
                "08f1zzlnkfdzm5rlw14qm6yvn68j2yas21zjsy31pc59rh3lzkyh"))))
    (properties `((upstream-name . "owd")))
    (build-system r-build-system)
    (home-page "https://github.com/Feakster/owd")
    (synopsis "Open Working Directory")
    (description
     "Open the current working directory (or a given directory path) in your
computer's file manager.")
    (license license:expat)))

(define-public r-ovtool
  (package
    (name "r-ovtool")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OVtool" version))
              (sha256
               (base32
                "1ghfbvnfl092g0kikgjghgf0l1y7ihqykssfvvfi6q6pgzl8kz4y"))))
    (properties `((upstream-name . "OVtool")))
    (build-system r-build-system)
    (propagated-inputs (list r-varhandle
                             r-twang
                             r-tidyselect
                             r-tibble
                             r-survey
                             r-rlang
                             r-purrr
                             r-progress
                             r-metr
                             r-magrittr
                             r-glue
                             r-ggrepel
                             r-ggplot2
                             r-envstats
                             r-dplyr
                             r-devtools
                             r-amelia))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OVtool")
    (synopsis "Omitted Variable Tool")
    (description
     "This tool was designed to assess the sensitivity of research findings to omitted
variables when estimating causal effects using propensity score (PS) weighting.
This tool produces graphics and summary results that will enable a researcher to
quantify the impact an omitted variable would have on their results.  Burgette
et al. (2021) describe the methodology behind the primary function in this
package, ov_sim.  The method is demonstrated in Griffin et al. (2020)
<doi:10.1016/j.jsat.2020.108075>.")
    (license license:gpl3)))

(define-public r-overviewr
  (package
    (name "r-overviewr")
    (version "0.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "overviewR" version))
              (sha256
               (base32
                "0ppk7m1h05prwf0m9cahxwwbn2jx1cbhzlqf7zyzmndszqcqqhjz"))))
    (properties `((upstream-name . "overviewR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-ggvenn
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cosimameyer/overviewR")
    (synopsis "Easily Extracting Information About Your Data")
    (description
     "Makes it easy to display descriptive information on a data set.  Getting an easy
overview of a data set by displaying and visualizing sample information in
different tables (e.g., time and scope conditions).  The package also provides
publishable LaTeX code to present the sample information.")
    (license license:gpl3)))

(define-public r-overture
  (package
    (name "r-overture")
    (version "0.4-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "overture" version))
              (sha256
               (base32
                "1s16x5kn0apb0w1f7hqzcsqvw3x621y5n6yr1qn7yb7431pdw3cz"))))
    (properties `((upstream-name . "overture")))
    (build-system r-build-system)
    (propagated-inputs (list r-bigmemory))
    (home-page "https://github.com/kurtis-s/overture")
    (synopsis "Tools for Writing MCMC")
    (description
     "Simplifies MCMC setup by automatically looping through sampling functions and
saving the results.  Reduces the memory footprint of running MCMC and saves
samples to disk as the chain runs.  Allows samples from the chain to be analyzed
while the MCMC is still running.  Provides functions for commonly performed
operations such as calculating Metropolis acceptance ratios and creating
adaptive Metropolis samplers.  References: Roberts and Rosenthal (2009)
<doi:10.1198/jcgs.2009.06134>.")
    (license license:lgpl3)))

(define-public r-overlapptest
  (package
    (name "r-overlapptest")
    (version "1.2-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "overlapptest" version))
              (sha256
               (base32
                "148vswcvy0anw6xrpfsskjn0i7jkn0jbfqlaf4bb13pkini2bahf"))))
    (properties `((upstream-name . "overlapptest")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom))
    (home-page "https://cran.r-project.org/package=overlapptest")
    (synopsis "Test Overlapping of Polygons Against Random Rotation")
    (description
     "Tests the observed overlapping polygon area in a collection of polygons against
a null model of random rotation, as explained in De la Cruz et al. (2017)
<doi:10.13140/RG.2.2.12825.72801>.")
    (license license:gpl2+)))

(define-public r-overlapping
  (package
    (name "r-overlapping")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "overlapping" version))
              (sha256
               (base32
                "1rxd0pv6knmq0vdqbdch869prw1n4d75vj9l4n9anl0s7w2cz5y4"))))
    (properties `((upstream-name . "overlapping")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-ggplot2))
    (home-page "https://cran.r-project.org/package=overlapping")
    (synopsis "Estimation of Overlapping in Empirical Distributions")
    (description
     "This package provides functions for estimating the overlapping area of two or
more kernel density estimations from empirical data.")
    (license license:gpl2)))

(define-public r-overdisp
  (package
    (name "r-overdisp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "overdisp" version))
              (sha256
               (base32
                "0gncmirpiqyxsgpsdrv875i6a9bagpz76vcbqxsaql537m1fd99r"))))
    (properties `((upstream-name . "overdisp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=overdisp")
    (synopsis "Overdispersion in Count Data Multiple Regression Analysis")
    (description
     "Detection of overdispersion in count data for multiple regression analysis.
Log-linear count data regression is one of the most popular techniques for
predictive modeling where there is a non-negative discrete quantitative
dependent variable.  In order to ensure the inferences from the use of count
data models are appropriate, researchers may choose between the estimation of a
Poisson model and a negative binomial model, and the correct decision for
prediction from a count data estimation is directly linked to the existence of
overdispersion of the dependent variable, conditional to the explanatory
variables.  Based on the studies of Cameron and Trivedi (1990)
<doi:10.1016/0304-4076(90)90014-K> and Cameron and Trivedi (2013,
ISBN:978-1107667273), the overdisp() command is a contribution to researchers,
providing a fast and secure solution for the detection of overdispersion in
count data.  Another advantage is that the installation of other packages is
unnecessary, since the command runs in the basic R language.")
    (license license:gpl2+)))

(define-public r-ouwie
  (package
    (name "r-ouwie")
    (version "2.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OUwie" version))
              (sha256
               (base32
                "19bh0vb7azxpzrjw2829gcjcq91fnzb5ybhkp3fsvg9xccmjq9dg"))))
    (properties `((upstream-name . "OUwie")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer
                             r-phytools
                             r-phylolm
                             r-phangorn
                             r-paleotree
                             r-numderiv
                             r-nloptr
                             r-lhs
                             r-interp
                             r-igraph
                             r-geiger
                             r-corpcor
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/thej022214/OUwie")
    (synopsis "Analysis of Evolutionary Rates in an OU Framework")
    (description
     "Estimates rates for continuous character evolution under Brownian motion and a
new set of Ornstein-Uhlenbeck based Hansen models that allow both the strength
of the pull and stochastic motion to vary across selective regimes.  Beaulieu et
al (2012).")
    (license license:gpl2+)))

(define-public r-outreg
  (package
    (name "r-outreg")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outreg" version))
              (sha256
               (base32
                "04f1x7mxq4swbd7bfwjjgx4838jm6qj4piaighmhcscwrdkxa1cp"))))
    (properties `((upstream-name . "outreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-stringr r-sandwich r-reshape2
                             r-magrittr))
    (home-page "https://github.com/kota7/outreg")
    (synopsis "Regression Table for Publication")
    (description
     "Create regression tables for publication.  Currently supports lm', glm',
survreg', and ivreg outputs.")
    (license license:expat)))

(define-public r-outrankingtools
  (package
    (name "r-outrankingtools")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OutrankingTools" version))
              (sha256
               (base32
                "0z7pslkkinn7flc4xwjg0bsfswf8ad4jv9rmglaj3fmjcx9b6wgj"))))
    (properties `((upstream-name . "OutrankingTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=OutrankingTools")
    (synopsis
     "Functions for Solving Multiple-criteria Decision-making Problems")
    (description
     "This package provides functions to process outranking ELECTRE methods existing
in the literature.  See, e.g., <http://en.wikipedia.org/wiki/ELECTRE> about the
outranking approach and the foundations of ELECTRE methods.")
    (license license:gpl2+)))

(define-public r-outliertree
  (package
    (name "r-outliertree")
    (version "1.8.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outliertree" version))
              (sha256
               (base32
                "0hhhnhnz2avl4i2jv509yfi55xp69lannyfkadn9ipknyb1bbz1y"))))
    (properties `((upstream-name . "outliertree")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-rcereal))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/david-cortes/outliertree")
    (synopsis
     "Explainable Outlier Detection Through Decision Tree Conditioning")
    (description
     "Outlier detection method that flags suspicious values within observations,
constrasting them against the normal values in a user-readable format,
potentially describing conditions within the data that make a given outlier more
rare.  Full procedure is described in Cortes (2020) <arXiv:2001.00636>.  Loosely
based on the GritBot <https://www.rulequest.com/gritbot-info.html> software.")
    (license license:gpl3+)))

(define-public r-outlierso3
  (package
    (name "r-outlierso3")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OutliersO3" version))
              (sha256
               (base32
                "165v572w9bnvay9f0xyxzbhgj1i86ndia4rzqy98i48dfdbdb990"))))
    (properties `((upstream-name . "OutliersO3")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-robustx
                             r-robustbase
                             r-rlist
                             r-memisc
                             r-hdoutliers
                             r-ggplot2
                             r-ggally
                             r-forcats
                             r-fastpcs
                             r-dplyr
                             r-cellwise))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OutliersO3")
    (synopsis "Draws Overview of Outliers (O3) Plots")
    (description
     "Potential outliers are identified for all combinations of a dataset's variables.
 O3 plots are described in Unwin(2019) <doi:10.1080/10618600.2019.1575226>.  The
available methods are HDoutliers() from the package HDoutliers', FastPCS() from
the package FastPCS', mvBACON() from robustX', adjOutlyingness() from
robustbase', DectectDeviatingCells() from cellWise', covMcd() from robustbase'.")
    (license license:gpl2+)))

(define-public r-outlierensembles
  (package
    (name "r-outlierensembles")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outlierensembles" version))
              (sha256
               (base32
                "0m2iaf3rbpwvyrjz6qglbrinmz676hnbqqm6vc38zb3k3cjcllaq"))))
    (properties `((upstream-name . "outlierensembles")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-estcrm r-apcluster r-airt))
    (native-inputs (list r-knitr))
    (home-page "https://sevvandi.github.io/outlierensembles/")
    (synopsis "Collection of Outlier Ensemble Algorithms")
    (description
     "Ensemble functions for outlier/anomaly detection.  There is a new ensemble
method proposed using Item Response Theory.  Existing outlier ensemble methods
from Schubert et al (2012) <doi:10.1137/1.9781611972825.90>, Chiang et al (2017)
<doi:10.1016/j.jal.2016.12.002> and Aggarwal and Sathe (2015)
<doi:10.1145/2830544.2830549> are also included.")
    (license license:gpl3+)))

(define-public r-outforest
  (package
    (name "r-outforest")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outForest" version))
              (sha256
               (base32
                "0329yrqknr894l5dp7zdbr0mifrafx9km074yqjfbnxbi245fd65"))))
    (properties `((upstream-name . "outForest")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger r-missranger r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mayer79/outForest")
    (synopsis "Multivariate Outlier Detection and Replacement")
    (description
     "This package provides a random forest based implementation of the method
described in Chapter 7.1.2 (Regression model based anomaly detection) of
Chandola et al. (2009) <doi:10.1145/1541880.1541882>.  It works as follows: Each
numeric variable is regressed onto all other variables by a random forest.  If
the scaled absolute difference between observed value and out-of-bag prediction
of the corresponding random forest is suspiciously large, then a value is
considered an outlier.  The package offers different options to replace such
outliers, e.g. by realistic values found via predictive mean matching.  Once the
method is trained on a reference data, it can be applied to new data.")
    (license license:gpl2+)))

(define-public r-outerbase
  (package
    (name "r-outerbase")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outerbase" version))
              (sha256
               (base32
                "18c73vp0fjcgg4vhf9bfxm21j8s85cmicqi5j76q0wm800qaqvm9"))))
    (properties `((upstream-name . "outerbase")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://mattplumlee.github.io/outerbase/")
    (synopsis "Outer Product Regression")
    (description
     "High-dimensional regression using outer product models.  Research on the methods
is currently under investigation and published resources will be posted as they
are available.  As the method is new, the website is the best resource for
understanding the principals.  Some of the core ideas are based on Plumlee and
coauthors work on analysis of grid-structured experiments described in Plumlee
(2014) <doi:10.1080/01621459.2014.900250> and Plumlee, Erickson, Ankenman,
Lawrence (2021) <doi:10.1093/biomet/asaa084>.  Some additional textbooks for
additional information on Gaussian processes are Rasmussen and Williams (2005)
<doi:10.7551/mitpress/3206.001.0001> and Gramacy (2022)
<doi:10.1201/9780367815493>.")
    (license license:expat)))

(define-public r-outcomerate
  (package
    (name "r-outcomerate")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outcomerate" version))
              (sha256
               (base32
                "07mwml7r98qjgvrp938sqf7klyspz110583j0zwb72j69n4whmrj"))))
    (properties `((upstream-name . "outcomerate")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/outcomerate")
    (synopsis "AAPOR Survey Outcome Rates")
    (description
     "Standardized survey outcome rate functions, including the response rate, contact
rate, cooperation rate, and refusal rate.  These outcome rates allow survey
researchers to measure the quality of survey data using definitions published by
the American Association of Public Opinion Research (AAPOR).  For details on
these standards, see AAPOR (2016)
<https://www.aapor.org/Standards-Ethics/Standard-Definitions-(1).aspx>.")
    (license license:cc0)))

(define-public r-outbreaks
  (package
    (name "r-outbreaks")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outbreaks" version))
              (sha256
               (base32
                "0x6r4rzcvd1rp8j4brq9c0zl2xsl5jfi18dny20an7aqk310p11v"))))
    (properties `((upstream-name . "outbreaks")))
    (build-system r-build-system)
    (home-page "https://github.com/reconhub/outbreaks")
    (synopsis "Collection of Disease Outbreak Data")
    (description
     "Empirical or simulated disease outbreak data, provided either as RData or as
text files.")
    (license license:gpl2+)))

(define-public r-outbreaker2
  (package
    (name "r-outbreaker2")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "outbreaker2" version))
              (sha256
               (base32
                "06wlmf51ciy7zy5nchfn2myvkwrvq44cnzzjl75vz32ixn8iy56v"))))
    (properties `((upstream-name . "outbreaker2")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork r-rcpp r-magrittr r-ggplot2 r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=outbreaker2")
    (synopsis
     "Bayesian Reconstruction of Disease Outbreaks by Combining Epidemiologic and Genomic Data")
    (description
     "Bayesian reconstruction of disease outbreaks using epidemiological and genetic
information.  Jombart T, Cori A, Didelot X, Cauchemez S, Fraser C and Ferguson
N. 2014. <doi:10.1371/journal.pcbi.1003457>.  Campbell, F, Cori A, Ferguson N,
Jombart T. 2019. <doi:10.1371/journal.pcbi.1006930>.")
    (license license:expat)))

(define-public r-otutable
  (package
    (name "r-otutable")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OTUtable" version))
              (sha256
               (base32
                "1sm037ihm12xyp7ns5f0c1psflvm1aj3xnsj5nzh2rsjn35hvd6h"))))
    (properties `((upstream-name . "OTUtable")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OTUtable")
    (synopsis
     "North Temperate Lakes - Microbial Observatory 16S Time Series Data and Functions")
    (description
     "Analyses of OTU tables produced by 16S rRNA gene amplicon sequencing, as well as
example data.  It contains the data and scripts used in the paper Linz, et al.
(2017) \"Bacterial community composition and dynamics spanning five years in
freshwater bog lakes,\" <doi: 10.1128/mSphere.00169-17>.")
    (license license:gpl3)))

(define-public r-otusummary
  (package
    (name "r-otusummary")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otuSummary" version))
              (sha256
               (base32
                "04l667qmp7wqkbdsk87j92gf89s13090kzs8cjlmxsp6i69r34z2"))))
    (properties `((upstream-name . "otuSummary")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-reshape2))
    (home-page "https://github.com/cam315/otuSummary")
    (synopsis
     "Summarizing OTU Table Regarding the Composition, Abundance and Beta Diversity of Abundant and Rare Biospheres")
    (description
     "Summarizes the taxonomic composition, diversity contribution of the rare and
abundant community by using OTU (operational taxonomic unit) table which was
generated by analyzing pipeline of QIIME or mothur'.  The rare biosphere in this
package is subset by the relative abundance threshold (for details about rare
biosphere please see Lynch and Neufeld (2015) <doi:10.1038/nrmicro3400>).")
    (license license:gpl3+)))

(define-public r-ottrpal
  (package
    (name "r-ottrpal")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ottrpal" version))
              (sha256
               (base32
                "02y917r48mqkga27f8019cdbx4mh45dr8l9s2ai1anxgvccnb4yi"))))
    (properties `((upstream-name . "ottrpal")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xml2
                             r-stringr
                             r-rvest
                             r-rprojroot
                             r-rmarkdown
                             r-readr
                             r-r-utils
                             r-purrr
                             r-magrittr
                             r-knitr
                             r-httr
                             r-glue
                             r-fs
                             r-dplyr
                             r-curl
                             r-bookdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhudsl/ottrpal")
    (synopsis
     "Companion Tools for Open-Source Tools for Training Resources (OTTR)")
    (description
     "Tools for converting Open-Source Tools for Training Resources (OTTR) courses
into Leanpub or Coursera courses.  ottrpal is for use with the OTTR Template
repository to create courses.")
    (license license:gpl3)))

(define-public r-ottr
  (package
    (name "r-ottr")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ottr" version))
              (sha256
               (base32
                "0m88ijqyvm1yls7z6dihly5rr2i2s27sbypfljfb630051dnw44h"))))
    (properties `((upstream-name . "ottr")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip r-testthat r-r6 r-jsonlite))
    (home-page "https://cran.r-project.org/package=ottr")
    (synopsis "An R Autograding Extension for Otter-Grader")
    (description
     "An R autograding extension for Otter-Grader
(<https://otter-grader.readthedocs.io>).  It supports grading R scripts, R
Markdown documents, and R Jupyter Notebooks.")
    (license license:bsd-3)))

(define-public r-otsad
  (package
    (name "r-otsad")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otsad" version))
              (sha256
               (base32
                "1jb6raxm70aywbgs7bdyw8vccy1nj924f4hkpjrlgnvzmy0hyhvs"))))
    (properties `((upstream-name . "otsad")))
    (build-system r-build-system)
    (propagated-inputs (list r-sigmoid r-reticulate r-plotly r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alaineiturria/otsad")
    (synopsis "Online Time Series Anomaly Detectors")
    (description
     "This package implements a set of online fault detectors for time-series, called:
PEWMA see M. Carter et al. (2012) <doi:10.1109/SSP.2012.6319708>, SD-EWMA and
TSSD-EWMA see H. Raza et al. (2015) <doi:10.1016/j.patcog.2014.07.028>, KNN-CAD
see E. Burnaev et al. (2016) <arXiv:1608.04585>, KNN-LDCD see V. Ishimtsev et
al. (2017) <arXiv:1706.03412> and CAD-OSE see M. Smirnov (2018)
<https://github.com/smirmik/CAD>.  The first three algorithms belong to
prediction-based techniques and the last three belong to window-based
techniques.  In addition, the SD-EWMA and PEWMA algorithms are algorithms
designed to work in stationary environments, while the other four are algorithms
designed to work in non-stationary environments.")
    (license license:agpl3+)))

(define-public r-otrselect
  (package
    (name "r-otrselect")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OTRselect" version))
              (sha256
               (base32
                "007wnad6ka3d5hx9l537m6cvk9qlf0lirrz54yy665szyprpqy27"))))
    (properties `((upstream-name . "OTRselect")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-lars))
    (home-page "https://cran.r-project.org/package=OTRselect")
    (synopsis "Variable Selection for Optimal Treatment Decision")
    (description
     "This package provides a penalized regression framework that can simultaneously
estimate the optimal treatment strategy and identify important variables.
Appropriate for either censored or uncensored continuous response.")
    (license license:gpl2)))

(define-public r-otrimle
  (package
    (name "r-otrimle")
    (version "2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otrimle" version))
              (sha256
               (base32
                "0rca8ln9cyikfpsf1af550cfx2zx110c8jxv64xf8dnnd09s9h7b"))))
    (properties `((upstream-name . "otrimle")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase r-mvtnorm r-mclust r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=otrimle")
    (synopsis "Robust Model-Based Clustering")
    (description
     "This package performs robust cluster analysis allowing for outliers and noise
that cannot be fitted by any cluster.  The data are modelled by a mixture of
Gaussian distributions and a noise component, which is an improper uniform
distribution covering the whole Euclidean space.  Parameters are estimated by
(pseudo) maximum likelihood.  This is fitted by a EM-type algorithm.  See
Coretto and Hennig (2016) <doi:10.1080/01621459.2015.1100996>, and Coretto and
Hennig (2017) <https://jmlr.org/papers/v18/16-382.html>.")
    (license license:gpl2+)))

(define-public r-otrecod
  (package
    (name "r-otrecod")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OTrecod" version))
              (sha256
               (base32
                "1w3w6vsp5v2sccpn0zzjiwcnwmgcindh7wnsnf90qprvjwlys7mw"))))
    (properties `((upstream-name . "OTrecod")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd
                             r-statmatch
                             r-roi-plugin-glpk
                             r-roi
                             r-rdist
                             r-proxy
                             r-plyr
                             r-party
                             r-ompr-roi
                             r-ompr
                             r-missmda
                             r-mice
                             r-factominer
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OTrecod")
    (synopsis "Data Fusion using Optimal Transportation Theory")
    (description
     "In the context of data fusion, the package provides a set of functions dedicated
to the solving of recoding problems using optimal transportation theory (Gares,
Guernec, Savy (2019) <doi:10.1515/ijb-2018-0106> and Gares, Omer (2020)
<doi:10.1080/01621459.2020.1775615>).  From two databases with no overlapping
part except a subset of shared variables, the functions of the package assist
users until obtaining a unique synthetic database, where the missing information
is fully completed.")
    (license license:gpl3)))

(define-public r-otpr
  (package
    (name "r-otpr")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otpr" version))
              (sha256
               (base32
                "1wh5rmwwwdf1wkb18ayx6zcnhwf80zziznk64jg1974g8crgdxsb"))))
    (properties `((upstream-name . "otpr")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-sf
                             r-rrapply
                             r-rlang
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-geojsonsf
                             r-dplyr
                             r-checkmate))
    (home-page "https://cran.r-project.org/package=otpr")
    (synopsis "An R Wrapper for the 'OpenTripPlanner' REST API")
    (description
     "This package provides a wrapper for the OpenTripPlanner
<http://www.opentripplanner.org/> REST API. Queries are submitted to the
relevant OpenTripPlanner API resource, the response is parsed and useful R
objects are returned.")
    (license license:expat)))

(define-public r-otp
  (package
    (name "r-otp")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otp" version))
              (sha256
               (base32
                "0l0r56kn8jmjxhzz646fimi91blpgpynrrgfd03rh3dbifd5xhdz"))))
    (properties `((upstream-name . "otp")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-openssl r-base64url))
    (home-page "https://github.com/randy3k/otp")
    (synopsis "One Time Password Generation and Verification")
    (description
     "Generating and validating One-time Password based on Hash-based Message
Authentication Code (HOTP) and Time Based One-time Password (TOTP) according to
RFC 4226 <https://tools.ietf.org/html/rfc4226> and RFC 6238
<https://tools.ietf.org/html/rfc6238>.")
    (license license:expat)))

(define-public r-otinference
  (package
    (name "r-otinference")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "otinference" version))
              (sha256
               (base32
                "1l75jjnkyk8yzaw9zyk45jq9ys304i6pzm2xd5apxrb1jk75a3li"))))
    (properties `((upstream-name . "otinference")))
    (build-system r-build-system)
    (propagated-inputs (list r-transport r-sm r-rglpk r-mass))
    (home-page "https://cran.r-project.org/package=otinference")
    (synopsis "Inference for Optimal Transport")
    (description
     "Sample from the limiting distributions of empirical Wasserstein distances under
the null hypothesis and under the alternative.  Perform a two-sample test on
multivariate data using these limiting distributions and binning.")
    (license license:gpl2)))

(define-public r-ote
  (package
    (name "r-ote")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OTE" version))
              (sha256
               (base32
                "0jvvrrfhpc5kibbxrd5r4dj97jp5m072fxnkpcyz11gi65db3z4g"))))
    (properties `((upstream-name . "OTE")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest))
    (home-page "https://cran.r-project.org/package=OTE")
    (synopsis
     "Optimal Trees Ensembles for Regression, Classification and Class Membership Probability Estimation")
    (description
     "This package provides functions for creating ensembles of optimal trees for
regression, classification (Khan, Z., Gul, A., Perperoglou, A., Miftahuddin, M.,
Mahmoud, O., Adler, W., & Lausen, B. (2019). (2019)
<doi:10.1007/s11634-019-00364-9>) and class membership probability estimation
(Khan, Z, Gul, A, Mahmoud, O, Miftahuddin, M, Perperoglou, A, Adler, W & Lausen,
B (2016) <doi:10.1007/978-3-319-25226-1_34>) are given.  A few trees are
selected from an initial set of trees grown by random forest for the ensemble on
the basis of their individual and collective performance.  Three different
methods of tree selection for the case of classification are given.  The
prediction functions return estimates of the test responses and their class
membership probabilities.  Unexplained variations, error rates, confusion
matrix, Brier scores, etc.  are also returned for the test data.")
    (license license:gpl3+)))

(define-public r-ot
  (package
    (name "r-ot")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ot" version))
              (sha256
               (base32
                "0lym92hsxhfjdkh738rxlpkq084454055vgxm2b4wdhqw00jwf5y"))))
    (properties `((upstream-name . "ot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ot")
    (synopsis "'Open Tracing'")
    (description
     "Open Tracing <https://opentracing.io> allows developers to add instrumentation
to their application code using interfaces that are vendor-agnostic.  This is
used to monitor services, triage failures and find performance bottlenecks,
among other things.  The ot package has generic methods to be extended when
implementing the specification for a specific vendor.")
    (license license:gpl3)))

(define-public r-oste
  (package
    (name "r-oste")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSTE" version))
              (sha256
               (base32
                "0l8whr883g3jp5ckgxr4zf9vj055jrjb7pfraacd15smnrbl0v5d"))))
    (properties `((upstream-name . "OSTE")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-ranger r-prodlim r-pec))
    (home-page "https://cran.r-project.org/package=OSTE")
    (synopsis "Optimal Survival Trees Ensemble")
    (description
     "Function for growing survival trees ensemble ('Naz Gul', Nosheen Faiz', Dan
Brawn', Rafal Kulakowski', Zardad Khan', and Berthold Lausen (2020)
<arXiv:2005.09043>) is given.  The trees are grown by the method of random
survival forest ('Marvin Wright', Andreas Ziegler (2017)
<doi:10.18637/jss.v077.i01>).  The survival trees grown are assessed for both
individual and collective performances.  The ensemble can give promising results
on fewer survival trees selected in the final ensemble.")
    (license (license:fsdg-compatible "GPL (>= 3.5.0)"))))

(define-public r-ostats
  (package
    (name "r-ostats")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ostats" version))
              (sha256
               (base32
                "0d2qk76issb2k5f2ghfvpq0k8ra7d7nj9hp4ja1s0817zwr0g3zz"))))
    (properties `((upstream-name . "Ostats")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-sfsmisc
                             r-matrixstats
                             r-mass
                             r-hypervolume
                             r-gridextra
                             r-ggplot2
                             r-circular))
    (native-inputs (list r-knitr))
    (home-page "https://neon-biodiversity.github.io/Ostats/")
    (synopsis "O-Stats, or Pairwise Community-Level Niche Overlap Statistics")
    (description
     "O-statistics, or overlap statistics, measure the degree of community-level trait
overlap.  They are estimated by fitting nonparametric kernel density functions
to each speciesâ trait distribution and calculating their areas of overlap.
For instance, the median pairwise overlap for a community is calculated by first
determining the overlap of each species pair in trait space, and then taking the
median overlap of each species pair in a community.  This median overlap value
is called the O-statistic (O for overlap).  The Ostats() function calculates
separate univariate overlap statistics for each trait, while the
Ostats_multivariate() function calculates a single multivariate overlap
statistic for all traits.  O-statistics can be evaluated against null models to
obtain standardized effect sizes.  Ostats is part of the collaborative
Macrosystems Biodiversity Project \"Local- to continental-scale drivers of
biodiversity across the National Ecological Observatory Network (NEON).\" For
more information on this project, see the Macrosystems Biodiversity Website
(<https://neon-biodiversity.github.io/>).  Calculation of O-statistics is
described in Read et al. (2018) <doi:10.1111/ecog.03641>, and a teaching module
for introducing the underlying biological concepts at an undergraduate level is
described in Grady et al. (2018)
<http://tiee.esa.org/vol/v14/issues/figure_sets/grady/abstract.html>.")
    (license license:expat)))

(define-public r-ossurvival
  (package
    (name "r-ossurvival")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSsurvival" version))
              (sha256
               (base32
                "1fbxddbhppqlh49wgh2fldixar5mk7rywjbfvbpdb6fvpgn1sc4g"))))
    (properties `((upstream-name . "OSsurvival")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OSsurvival")
    (synopsis "Assessing Surrogacy with a Censored Outcome")
    (description
     "Identifies the optimal transformation of a surrogate marker and estimates the
proportion of treatment explained (PTE) by the optimally-transformed surrogate
at an earlier time point when the primary outcome of interest is a censored
time-to-event outcome; details are described in Wang et al (2021)
<doi:10.1002/sim.9185>.")
    (license license:gpl3)))

(define-public r-osrmr
  (package
    (name "r-osrmr")
    (version "0.1.36")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osrmr" version))
              (sha256
               (base32
                "1vnf6g1d9fjckz9ay910nb9gr1km2adwk3b0k460mxvpr36izkh7"))))
    (properties `((upstream-name . "osrmr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rjson r-r-utils r-bitops r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=osrmr")
    (synopsis "Wrapper for the 'OSRM' API")
    (description
     "Wrapper around the Open Source Routing Machine (OSRM) API
<http://project-osrm.org/>.  osrmr works with API versions 4 and 5 and can
handle servers that run locally as well as the OSRM webserver.")
    (license license:gpl3)))

(define-public r-osrm
  (package
    (name "r-osrm")
    (version "4.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osrm" version))
              (sha256
               (base32
                "0lp5idik0lp2jn7mkgz512kpgp1zxxn4c7b1xb7aaia112p9fapp"))))
    (properties `((upstream-name . "osrm")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-rcppsimdjson r-mapiso r-googlepolylines
                             r-curl))
    (home-page "https://github.com/riatelab/osrm")
    (synopsis
     "Interface Between R and the OpenStreetMap-Based Routing Service OSRM")
    (description
     "An interface between R and the OSRM API. OSRM is a routing service based on
OpenStreetMap data.  See <http://project-osrm.org/> for more information.  This
package enables the computation of routes, trips, isochrones and travel
distances matrices (travel time and kilometric distance).")
    (license license:gpl3+)))

(define-public r-osqp
  (package
    (name "r-osqp")
    (version "0.6.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osqp" version))
              (sha256
               (base32
                "1q669vscwypz0vf6s38b5yzn178miql4xf5dg7b7y2fnjqdl6gw5"))))
    (properties `((upstream-name . "osqp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-r6 r-matrix))
    (home-page "https://osqp.org")
    (synopsis "Quadratic Programming Solver using the 'OSQP' Library")
    (description
     "This package provides bindings to the OSQP solver.  The OSQP solver is a
numerical optimization package or solving convex quadratic programs written in C
and based on the alternating direction method of multipliers.  See
<arXiv:1711.08013> for details.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-osnmtf
  (package
    (name "r-osnmtf")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSNMTF" version))
              (sha256
               (base32
                "0g83wqh97iz3g4ganj2dy3biyn8cmb0v8zz6rydald1hfszj8aa2"))))
    (properties `((upstream-name . "OSNMTF")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OSNMTF")
    (synopsis "Orthogonal Sparse Non-Negative Matrix Tri-Factorization")
    (description
     "This package provides a novel method to implement cancer subtyping and subtype
specific drug targets identification via non-negative matrix tri-factorization.
To improve the interpretability, we introduce orthogonal constraint to the row
coefficient matrix and column coefficient matrix.  To meet the prior knowledge
that each subtype should be strongly associated with few gene sets, we introduce
sparsity constraint to the association sub-matrix.  The average residue was
introduced to evaluate the row and column cluster numbers.  This is part of the
work \"Liver Cancer Analysis via Orthogonal Sparse Non-Negative Matrix Tri-
Factorization\" which will be submitted to BBRC.")
    (license license:gpl2+)))

(define-public r-osmscale
  (package
    (name "r-osmscale")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSMscale" version))
              (sha256
               (base32
                "0rjhyhh1iafgd9h1pbd2clyg2sh0gg7y1aqmiislqyn6h6jrvgqn"))))
    (properties `((upstream-name . "OSMscale")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-openstreetmap r-berryfunctions))
    (home-page "https://github.com/brry/OSMscale")
    (synopsis "Add a Scale Bar to 'OpenStreetMap' Plots")
    (description
     "Functionality to handle and project lat-long coordinates, easily download
background maps and add a correct scale bar to OpenStreetMap plots in any map
projection.")
    (license license:gpl2+)))

(define-public r-osmplotr
  (package
    (name "r-osmplotr")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osmplotr" version))
              (sha256
               (base32
                "0p94phv7jn0q9k25300zz59ldfphm9xgy6i7n3r8xj4zay0c7mf2"))))
    (properties `((upstream-name . "osmplotr")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom
                             r-spatstat-core
                             r-spatstat
                             r-sp
                             r-rgeos
                             r-osmdata
                             r-mapproj
                             r-ggplot2
                             r-ggm
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/osmplotr/")
    (synopsis "Bespoke Images of 'OpenStreetMap' Data")
    (description
     "Bespoke images of OpenStreetMap ('OSM') data and data visualisation using OSM
objects.")
    (license license:gpl3)))

(define-public r-osmextract
  (package
    (name "r-osmextract")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osmextract" version))
              (sha256
               (base32
                "03bxdkykp081q3d9n14y0qp31vnllc4rzp2ldzs4s572xfcjd1hb"))))
    (properties `((upstream-name . "osmextract")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/osmextract/")
    (synopsis "Download and Import Open Street Map Data Extracts")
    (description
     "Match, download, convert and import Open Street Map data extracts obtained from
several providers.")
    (license license:gpl3)))

(define-public r-osmdata
  (package
    (name "r-osmdata")
    (version "0.1.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osmdata" version))
              (sha256
               (base32
                "0ysmjmab6yfqcwzbjjqlk0hbna0x8fg27p3svjs5y3qasyyx7wwq"))))
    (properties `((upstream-name . "osmdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-sp
                             r-rvest
                             r-reproj
                             r-rcpp
                             r-magrittr
                             r-lubridate
                             r-httr2
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/osmdata/https://github.com/ropensci/osmdata/")
    (synopsis
     "Import 'OpenStreetMap' Data as Simple Features or Spatial Objects")
    (description
     "Download and import of OpenStreetMap ('OSM') data as sf or sp objects.  OSM data
are extracted from the Overpass web server (<https://overpass-api.de/>) and
processed with very fast C++ routines for return to R'.")
    (license license:gpl3)))

(define-public r-osldecomposition
  (package
    (name "r-osldecomposition")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSLdecomposition" version))
              (sha256
               (base32
                "0xz27p4wd1a5y8x24sqgpyvgdwi2dzk4qh2s50xrdr82prb2znkv"))))
    (properties `((upstream-name . "OSLdecomposition")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rmarkdown
                             r-minpack-lm
                             r-luminescence
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-deoptim))
    (home-page "https://cran.r-project.org/package=OSLdecomposition")
    (synopsis
     "Signal Component Analysis for Optically Stimulated Luminescence")
    (description
     "Function library for the identification and separation of exponentially decaying
signal components in continuous-wave optically stimulated luminescence
measurements.  A special emphasis is laid on luminescence dating with quartz,
which is known for systematic errors due to signal components with unequal
physical behaviour.  Also, this package enables an easy to use signal
decomposition of data sets imported and analysed with the R package
Luminescence'.  This includes the optional automatic creation of HTML reports.
Further information and tutorials can be found at <https://luminescence.de>.")
    (license license:gpl3)))

(define-public r-oskeyring
  (package
    (name "r-oskeyring")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oskeyring" version))
              (sha256
               (base32
                "10ajmkw8sfcafs77flg0050s8vf88lq56rv2dxk9gv4pkvg8z498"))))
    (properties `((upstream-name . "oskeyring")))
    (build-system r-build-system)
    (home-page "https://github.com/r-lib/oskeyring#readme")
    (synopsis "Raw System Credential Store Access from R")
    (description
     "Aims to support all features of the system credential store, including
non-portable ones.  Supports Keychain on macOS', and Credential Manager on
Windows'.  See the keyring package if you need a portable API'.")
    (license license:expat)))

(define-public r-oshka
  (package
    (name "r-oshka")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oshka" version))
              (sha256
               (base32
                "02hglpq5lknq93zbcf219lhnhppzgygkhxqixb15f89rxf9fczgs"))))
    (properties `((upstream-name . "oshka")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brodieG/oshka")
    (synopsis "Recursive Quoted Language Expansion")
    (description
     "Expands quoted language by recursively replacing any symbol that points to
quoted language with the language it points to.  The recursive process continues
until only symbols that point to non-language objects remain.  The resulting
quoted language can then be evaluated normally.  This differs from the
traditional quote'/'eval pattern because it resolves intermediate language
objects that would interfere with evaluation.")
    (license license:gpl2+)))

(define-public r-osfr
  (package
    (name "r-osfr")
    (version "0.2.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osfr" version))
              (sha256
               (base32
                "0gbkg6hlip2bkwifsgvnaimrmi1pamaxf8xv7g0yxw5wdf8zyy5c"))))
    (properties `((upstream-name . "osfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-rlang
                             r-purrr
                             r-memoise
                             r-jsonlite
                             r-httr
                             r-fs
                             r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/osfr/")
    (synopsis "Interface to the 'Open Science Framework' ('OSF')")
    (description
     "An interface for interacting with OSF (<https://osf.io>).  osfr enables you to
access open research materials and data, or create and manage your own private
or public projects.")
    (license license:expat)))

(define-public r-osdr
  (package
    (name "r-osdr")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSDR" version))
              (sha256
               (base32
                "0yf9l0fkqf9adanl8182nyislj2s2xvsnf2xp5y7pdj3af2k4m7w"))))
    (properties `((upstream-name . "OSDR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OSDR")
    (synopsis "Finds an Optimal System of Distinct Representatives")
    (description
     "This package provides routines for finding an Optimal System of Distinct
Representatives (OSDR), as defined by D.Gale (1968)
<doi:10.1016/S0021-9800(68)80039-0>.")
    (license license:gpl3)))

(define-public r-osdesign
  (package
    (name "r-osdesign")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osDesign" version))
              (sha256
               (base32
                "0l5dq8rj4rg4v324610kj2j5nv7py6z1jcplhb6br1gvldj7ng1d"))))
    (properties `((upstream-name . "osDesign")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=osDesign")
    (synopsis "Design, Planning and Analysis of Observational Studies")
    (description
     "This package provides a suite of functions for the design of case-control and
two-phase studies, and the analysis of data that arise from them.  Functions in
this packages provides Monte Carlo based evaluation of operating characteristics
such as powers for estimators of the components of a logistic regression model.
For additional detail see: Haneuse S, Saegusa T and Lumley T
(2011)<doi:10.18637/jss.v043.i11>.")
    (license license:gpl3+)))

(define-public r-osd
  (package
    (name "r-osd")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osd" version))
              (sha256
               (base32
                "1py9p15nrcydr8w9ilxkxabiz9zlqnls8xn9avjkxd8x6602jx6p"))))
    (properties `((upstream-name . "osd")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnls r-jade))
    (home-page "https://cran.r-project.org/package=osd")
    (synopsis
     "Orthogonal Signal Deconvolution for Spectra Deconvolution in GC-MS and GCxGC-MS Data")
    (description
     "Compound deconvolution for chromatographic data, including gas chromatography -
mass spectrometry (GC-MS) and comprehensive gas chromatography - mass
spectrometry (GCxGC-MS).  The package includes functions to perform independent
component analysis - orthogonal signal deconvolution (ICA-OSD), independent
component regression (ICR), multivariate curve resolution (MCR-ALS) and
orthogonal signal deconvolution (OSD) alone.")
    (license license:gpl2+)))

(define-public r-oscv
  (package
    (name "r-oscv")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OSCV" version))
              (sha256
               (base32
                "17wrfak6b6m2l3iqbhdwcfh0rlqb14rkvrbari7v46gya9v7hq20"))))
    (properties `((upstream-name . "OSCV")))
    (build-system r-build-system)
    (propagated-inputs (list r-mc2d))
    (home-page "https://cran.r-project.org/package=OSCV")
    (synopsis "One-Sided Cross-Validation")
    (description
     "This package provides functions for implementing different versions of the OSCV
method in the kernel regression and density estimation frameworks.  The package
mainly supports the following articles: (1) Savchuk, O.Y., Hart, J.D. (2017).
Fully robust one-sided cross-validation for regression functions.  Computational
Statistics, <doi:10.1007/s00180-017-0713-7> and (2) Savchuk, O.Y. (2017).
One-sided cross-validation for nonsmooth density functions, <arXiv:1703.05157>.")
    (license license:gpl2)))

(define-public r-oscillatorgenerator
  (package
    (name "r-oscillatorgenerator")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OscillatorGenerator" version))
              (sha256
               (base32
                "0zqw8l955msxkdviw5vd493749zwc22qby9mfmyqnqqmq0pyjw4w"))))
    (properties `((upstream-name . "OscillatorGenerator")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OscillatorGenerator")
    (synopsis
     "Generation of Customizable, Discretized Time Series of Oscillating Species")
    (description
     "The supplied code allows for the generation of discrete time series of
oscillating species.  General shapes can be selected by means of individual
functions, which are widely customizable by means of function arguments.  All
code was developed in the Biological Information Processing Group at the
BioQuant Center at Heidelberg University, Germany.")
    (license license:gpl3+)))

(define-public r-oscar
  (package
    (name "r-oscar")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oscar" version))
              (sha256
               (base32
                "1xgjgmxv50c1378p3sa6fp2zp96sji21apqsrhmfz70gksv6r5l8"))))
    (properties `((upstream-name . "oscar")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-matrix r-hamlet))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/Syksy/oscar")
    (synopsis
     "Optimal Subset Cardinality Regression (OSCAR) Models Using the L0-Pseudonorm")
    (description
     "Optimal Subset Cardinality Regression (OSCAR) models offer regularized linear
regression using the L0-pseudonorm, conventionally known as the number of
non-zero coefficients.  The package estimates an optimal subset of features
using the L0-penalization via cross-validation, bootstrapping and visual
diagnostics.  Effective Fortran implementations are offered along the package
for finding optima for the DC-decomposition, which is used for transforming the
discrete L0-regularized optimization problem into a continuous non-convex
optimization task.  These optimization modules include DBDC ('Double Bundle
method for nonsmooth DC optimization as described in Joki et al. (2018)
<doi:10.1137/16M1115733>) and LMBM ('Limited Memory Bundle Method for
large-scale nonsmooth optimization as in Haarala et al. (2004)
<doi:10.1080/10556780410001689225>).  Multiple regression model families are
supported: Cox, logistic, and Gaussian.")
    (license license:gpl3)))

(define-public r-osc
  (package
    (name "r-osc")
    (version "1.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "osc" version))
              (sha256
               (base32
                "00a0ys5ni0hg5zxi0sr5ak3n4c252vhvd6gynnx1b0lqna7bz9qi"))))
    (properties `((upstream-name . "osc")))
    (build-system r-build-system)
    (propagated-inputs (list r-raster))
    (home-page "https://www.pik-potsdam.de/~kriewald/osc/")
    (synopsis "Orthodromic Spatial Clustering")
    (description
     "Allows distance based spatial clustering of georeferenced data by implementing
the City Clustering Algorithm - CCA. Multiple versions allow clustering for a
matrix, raster and single coordinates on a plain (Euclidean distance) or on a
sphere (great-circle or orthodromic distance).")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-oryzaprobe
  (package
    (name "r-oryzaprobe")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OryzaProbe" version))
              (sha256
               (base32
                "0sih1pc0ch5w769w7sc56ixppv4njqq31g7n49290kzn8d46i3fw"))))
    (properties `((upstream-name . "OryzaProbe")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OryzaProbe")
    (synopsis
     "Rice Microarray Probe ID Conversion, from Probe ID to RAP-DB ID")
    (description
     "Microarray probe ID is not convenient for further enrichment analysis and target
gene selection.  The package is created for the rice microarray probe ID
conversion.  This package can convert microarray probe ID from GPL6864
<https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL6864>, GPL8852
<https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL8852>, and GPL2025
<https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL2025> platforms to RAP-DB
ID. RAP-DB \"The Rice Annotation Project Database\"
<https://rapdb.dna.affrc.go.jp> is a well-known database for rice Oryza sativa,
and the gene ID in this database is widely used in many areas related to rice
research.  For multiple probes representing a single gene, This package can
merge them by taking the mean, max, or min value of these probes.  Or we can
keep multiple probes by appending sequence numbers to duplicate the RAP-DB ID.")
    (license license:gpl3)))

(define-public r-orus
  (package
    (name "r-orus")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oRus" version))
              (sha256
               (base32
                "0q6hgiidcpm95pyisndihxjg78v6k1zycdqd72309aankdk0g5h4"))))
    (properties `((upstream-name . "oRus")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx
                             r-topicmodels
                             r-tm
                             r-tidytext
                             r-tibble
                             r-stringr
                             r-rmarkdown
                             r-knitr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/melvidoni/oRus")
    (synopsis "Operational Research User Stories")
    (description
     "This package provides a first implementation of automated parsing of user
stories, when used to defined functional requirements for operational research
mathematical models.  It allows reading user stories, splitting them on the
who-what-why template, and classifying them according to the parts of the
mathematical model that they represent.  Also provides semantic grouping of
stories, for project management purposes.")
    (license license:gpl3)))

(define-public r-ortsc
  (package
    (name "r-ortsc")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORTSC" version))
              (sha256
               (base32
                "0byja1gi44ymn68cfai8apcimlxmnflqr1pj8k4y7l8lqd3fyz60"))))
    (properties `((upstream-name . "ORTSC")))
    (build-system r-build-system)
    (propagated-inputs (list r-googlecloudvisionr r-googleauthr))
    (home-page "https://github.com/MohmedSoudy/ORTSC")
    (synopsis "Connects to Google Cloud API for Label Detection")
    (description
     "Connects to Google cloud vision <https://cloud.google.com/vision> to perform
label detection and repurpose this feature for image classification.")
    (license license:gpl3)))

(define-public r-orthopolynom
  (package
    (name "r-orthopolynom")
    (version "1.0-6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orthopolynom" version))
              (sha256
               (base32
                "1ig2pyyibbynwmhapbicij5g47acnz8npjm46xnjybskcv96wjpc"))))
    (properties `((upstream-name . "orthopolynom")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom))
    (home-page "https://cran.r-project.org/package=orthopolynom")
    (synopsis
     "Collection of Functions for Orthogonal and Orthonormal Polynomials")
    (description
     "This package provides a collection of functions to construct sets of orthogonal
polynomials and their recurrence relations.  Additional functions are provided
to calculate the derivative, integral, value and roots of lists of polynomial
objects.")
    (license license:gpl2+)))

(define-public r-orthopanels
  (package
    (name "r-orthopanels")
    (version "1.2-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OrthoPanels" version))
              (sha256
               (base32
                "1l7fllkswiypdg88l3hy1ckd1gx7visfrzw24wrr2xc265iqyn26"))))
    (properties `((upstream-name . "OrthoPanels")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OrthoPanels")
    (synopsis
     "Dynamic Panel Models with Orthogonal Reparameterization of Fixed Effects")
    (description
     "This package implements the orthogonal reparameterization approach recommended
by Lancaster (2002) to estimate dynamic panel models with fixed effects (and
optionally: panel specific intercepts).  The approach uses a likelihood-based
estimator and produces estimates that are asymptotically unbiased as N goes to
infinity, with a T as low as 2.")
    (license license:gpl3+)))

(define-public r-orthogonalsplinebasis
  (package
    (name "r-orthogonalsplinebasis")
    (version "0.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orthogonalsplinebasis" version))
              (sha256
               (base32
                "0wdqyijvwf9fdg22s6ck22bjk3xc30snlx29sxvm15yiz3rj498v"))))
    (properties `((upstream-name . "orthogonalsplinebasis")))
    (build-system r-build-system)
    (home-page "https://github.com/halpo/obsplines")
    (synopsis "Orthogonal B-Spline Basis Functions")
    (description
     "Represents the basis functions for B-splines in a simple matrix formulation that
facilitates, taking integrals, derivatives, and making orthogonal the basis
functions.")
    (license license:gpl2+)))

(define-public r-orthodr
  (package
    (name "r-orthodr")
    (version "0.6.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orthoDr" version))
              (sha256
               (base32
                "0pnxm65k8c6hggixbyip0hyxkk29sqbpy933ivkmksnwg3ckzr8k"))))
    (properties `((upstream-name . "orthoDr")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rgl
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-plot3d
                             r-mass
                             r-dr))
    (home-page "https://github.com/teazrq/orthoDr")
    (synopsis
     "Semi-Parametric Dimension Reduction Models Using Orthogonality Constrained Optimization")
    (description
     "Utilize an orthogonality constrained optimization algorithm of Wen & Yin (2013)
<DOI:10.1007/s10107-012-0584-1> to solve a variety of dimension reduction
problems in the semiparametric framework, such as Ma & Zhu (2012)
<DOI:10.1080/01621459.2011.646925>, Ma & Zhu (2013) <DOI:10.1214/12-AOS1072>,
Sun, Zhu, Wang & Zeng (2019) <arXiv:1704.05046> and Zhou, Zhu & Zeng (2021)
<arXiv:1802.06156>.  It also serves as a general purpose optimization solver for
problems with orthogonality constraints.  Parallel computing for approximating
the gradient is enabled through OpenMP'.")
    (license license:gpl2+)))

(define-public r-orsk
  (package
    (name "r-orsk")
    (version "1.0-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orsk" version))
              (sha256
               (base32
                "18qhjnpp4cmgr2ynnkxd2lych2jfkxqc9m71xmh9dp6934qc8n0b"))))
    (properties `((upstream-name . "orsk")))
    (build-system r-build-system)
    (propagated-inputs (list r-bhh2 r-bb))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=orsk")
    (synopsis
     "Converting Odds Ratio to Relative Risk in Cohort Studies with Partial Data Information")
    (description
     "Convert odds ratio to relative risk in cohort studies with partial data
information (Wang (2013) <doi:10.18637/jss.v055.i05>).")
    (license license:gpl2+)))

(define-public r-orsifronts
  (package
    (name "r-orsifronts")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orsifronts" version))
              (sha256
               (base32
                "0nxhijiqhhrxwrm5fy619lsdqyji43xyfqg4309pfb7da4377i3q"))))
    (properties `((upstream-name . "orsifronts")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp))
    (native-inputs (list r-knitr))
    (home-page "https://australianantarcticdivision.github.io/orsifronts/")
    (synopsis "Southern Ocean Frontal Distributions (Orsi)")
    (description
     "This package provides a data set package with the \"Orsi\" and \"Park/Durand\"
fronts as SpatialLinesDataFrame objects.  The Orsi et al. (1995) fronts are
published at the Southern Ocean Atlas Database Page, and the Park et al. (2019)
fronts are published at the SEANOE Altimetry-derived Antarctic Circumpolar
Current fronts page, please see package CITATION for details.")
    (license license:gpl3)))

(define-public r-oro-pet
  (package
    (name "r-oro-pet")
    (version "0.2.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oro.pet" version))
              (sha256
               (base32
                "0drk4mlacg443y5qljyp5jrq3lcr08qmsxnr8mgp93cxrdlwvr1i"))))
    (properties `((upstream-name . "oro.pet")))
    (build-system r-build-system)
    (propagated-inputs (list r-oro-nifti r-oro-dicom r-msm r-minpack-lm))
    (home-page "http://rig.oro.us.com")
    (synopsis "Rigorous - Positron Emission Tomography")
    (description
     "Image analysis techniques for positron emission tomography (PET) that form part
of the Rigorous Analytics bundle.")
    (license license:bsd-3)))

(define-public r-oro-dicom
  (package
    (name "r-oro-dicom")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oro.dicom" version))
              (sha256
               (base32
                "1ar70xk2bqk7jgckfivgp4np3dxaynmgdg41n8x0sg9cpxl2lc38"))))
    (properties `((upstream-name . "oro.dicom")))
    (build-system r-build-system)
    (propagated-inputs (list r-oro-nifti))
    (home-page "http://rig.oro.us.com")
    (synopsis "Rigorous - DICOM Input / Output")
    (description
     "Data input/output functions for data that conform to the Digital Imaging and
Communications in Medicine (DICOM) standard, part of the Rigorous Analytics
bundle.")
    (license license:bsd-3)))

(define-public r-ormplot
  (package
    (name "r-ormplot")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ormPlot" version))
              (sha256
               (base32
                "1s38alb602javkizxp3gqkmsq6zvl983gv4bcgd8752fvvddbf4s"))))
    (properties `((upstream-name . "ormPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms r-gtable r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://doi.org/10.1186/s12889-019-8072-7")
    (synopsis "Advanced Plotting of Ordinal Regression Models")
    (description
     "An extension to the Regression Modeling Strategies package that facilitates
plotting ordinal regression model predictions together with confidence intervals
for each dependent variable level.  It also adds a functionality to plot the
model summary as a modifiable object.")
    (license license:expat)))

(define-public r-ormbigdata
  (package
    (name "r-ormbigdata")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ormBigData" version))
              (sha256
               (base32
                "1rq202k4assmij21bjjk1ba7121p5p3rp21k548cc6lk81xj1rcc"))))
    (properties `((upstream-name . "ormBigData")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsem
                             r-rms
                             r-iterators
                             r-hmisc
                             r-foreach
                             r-doparallel
                             r-benchmarkme))
    (home-page "https://cran.r-project.org/package=ormBigData")
    (synopsis
     "Fitting Semiparametric Cumulative Probability Models for Big Data")
    (description
     "This package provides a big data version for fitting cumulative probability
models using the orm() function.  See Liu et al. (2017) <DOI:10.1002/sim.7433>
for details.")
    (license license:gpl2+)))

(define-public r-orloca-es
  (package
    (name "r-orloca-es")
    (version "4.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orloca.es" version))
              (sha256
               (base32
                "00zb08dqcsh1ljl4f2djm1pwbrfbaddgapn3v8nascmwxlhb2hkw"))))
    (properties `((upstream-name . "orloca.es")))
    (build-system r-build-system)
    (propagated-inputs (list r-orloca))
    (home-page "http://knuth.uca.es/orloca")
    (synopsis
     "Spanish version of orloca package. Modelos de localizacion en investigacion operativa")
    (description
     "Help and demo in Spanish of the orloca package. (Ayuda y demo en espanol del
paquete orloca.) Objetos y metodos para manejar y resolver el problema de
localizacion de suma minima, tambien conocido como problema de Fermat-Weber.  El
problema de localizacion de suma minima busca un punto tal que la suma ponderada
de las distancias a los puntos de demanda se minimice.  Vease \"The Fermat-Weber
location problem revisited\" por Brimberg, Mathematical Programming, 1, pag.
71-76, 1995. <DOI: 10.1007/BF01592245>.  Se usan algoritmos generales de
optimizacion global para resolver el problema, junto con el metodo adhoc
Weiszfeld, vease \"Sur le point pour lequel la Somme des distance de n points
donnes est minimum\", por Weiszfeld, Tohoku Mathematical Journal, First Series,
43, pag.  355-386, 1937 o \"On the point for which the sum of the distances to n
given points is minimum\", por E. Weiszfeld y F. Plastria, Annals of Operations
Research, 167, pg.  7-41, 2009. <DOI:10.1007/s10479-008-0352-z>.")
    (license license:gpl3+)))

(define-public r-orloca
  (package
    (name "r-orloca")
    (version "4.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orloca" version))
              (sha256
               (base32
                "113y76gyhslpfyq7n1nnbgnxhxgr213f28vnc3n3b9pghkkr0p4z"))))
    (properties `((upstream-name . "orloca")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf r-rmarkdown r-png r-knitr))
    (native-inputs (list r-knitr))
    (home-page "http://knuth.uca.es/orloca")
    (synopsis "Operations Research LOCational Analysis Models")
    (description
     "Objects and methods to handle and solve the min-sum location problem, also known
as Fermat-Weber problem.  The min-sum location problem search for a point such
that the weighted sum of the distances to the demand points are minimized.  See
\"The Fermat-Weber location problem revisited\" by Brimberg, Mathematical
Programming, 1, pg.  71-76, 1995. <DOI:10.1007/BF01592245>.  General global
optimization algorithms are used to solve the problem, along with the adhoc
Weiszfeld method, see \"Sur le point pour lequel la Somme des distances de n
points donnes est minimum\", by Weiszfeld, Tohoku Mathematical Journal, First
Series, 43, pg.  355-386, 1937 or \"On the point for which the sum of the
distances to n given points is minimum\", by E. Weiszfeld and F. Plastria, Annals
of Operations Research, 167, pg.  7-41, 2009. <DOI:10.1007/s10479-008-0352-z>.")
    (license license:gpl3+)))

(define-public r-orkm
  (package
    (name "r-orkm")
    (version "0.4.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORKM" version))
              (sha256
               (base32
                "10bs8nh5pbnli80p0lgspicw0fkq5q5l14v76dq7y9c44gsh8m1z"))))
    (properties `((upstream-name . "ORKM")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=ORKM")
    (synopsis "The Online Regularized K-Means Clustering Algorithm")
    (description
     "Algorithm of online regularized k-means to deal with online multi(single) view
data.  The philosophy of the package is described in Guo G. (2020)
<doi:10.1080/02331888.2020.1823979>.")
    (license license:expat)))

(define-public r-orion
  (package
    (name "r-orion")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORION" version))
              (sha256
               (base32
                "0zzlvx1yd3hy8dy7nbmkj7d2k6609ys91s894qcgx5n7jirqviy3"))))
    (properties `((upstream-name . "ORION")))
    (build-system r-build-system)
    (propagated-inputs (list r-tunepareto
                             r-rmarkdown
                             r-randomforest
                             r-knitr
                             r-igraph
                             r-foreach
                             r-e1071
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ORION")
    (synopsis "Ordinal Relations")
    (description
     "This package provides functions to handle ordinal relations reflected within the
feature space.  Those function allow to search for ordinal relations in
multi-class datasets.  One can check whether proposed relations are reflected in
a specific feature representation.  Furthermore, it provides functions to
filter, organize and further analyze those ordinal relations.")
    (license license:gpl2)))

(define-public r-origin
  (package
    (name "r-origin")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "origin" version))
              (sha256
               (base32
                "0byzia26snxgwqzabbg634y1s2w7gbk065cbv6v9fxxkrjb5ifk3"))))
    (properties `((upstream-name . "origin")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mnist91/origin")
    (synopsis
     "Explicitly Qualifying Namespaces by Automatically Adding 'pkg::' to Functions")
    (description
     "Automatically adding pkg:: to a function, i.e.  mutate() becomes
dplyr::mutate().  It is up to the user to determine which packages should be
used explicitly, whether to include base R packages or use the functionality on
selected text, a file, or a complete directory.  User friendly logging is
provided in the RStudio Markers pane.  Lives in the spirit of lintr and styler'.
 Can also be used for checking which packages are actually used in a project.")
    (license license:expat)))

(define-public r-origami
  (package
    (name "r-origami")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "origami" version))
              (sha256
               (base32
                "0b66alm1mr6vsgj5cgliqxw8vpm1x504qs42crlf0n6339a38h5l"))))
    (properties `((upstream-name . "origami")))
    (build-system r-build-system)
    (propagated-inputs (list r-listenv
                             r-future-apply
                             r-future
                             r-data-table
                             r-assertthat
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://tlverse.org/origami/")
    (synopsis "Generalized Framework for Cross-Validation")
    (description
     "This package provides a general framework for the application of
cross-validation schemes to particular functions.  By allowing arbitrary lists
of results, origami accommodates a range of cross-validation applications.  This
implementation was first described by Coyle and Hejazi (2018)
<doi:10.21105/joss.00512>.")
    (license license:gpl3)))

(define-public r-orientlib
  (package
    (name "r-orientlib")
    (version "0.10.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orientlib" version))
              (sha256
               (base32
                "0lds3y05byag466asi8hmv1yfllsdx7z5i8hq21r6dx3w4n4f46x"))))
    (properties `((upstream-name . "orientlib")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=orientlib")
    (synopsis "Support for Orientation Data")
    (description
     "Representations, conversions and display of orientation SO(3) data.  See the
orientlib help topic for details.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-oriclust
  (package
    (name "r-oriclust")
    (version "1.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORIClust" version))
              (sha256
               (base32
                "036jbfq4klzlppybvcj8wjchcyqmmxwvvr3rn9436cz4zm2yjy4a"))))
    (properties `((upstream-name . "ORIClust")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ORIClust")
    (synopsis
     "Order-Restricted Information Criterion-Based Clustering Algorithm")
    (description
     "This package provides a user-friendly R-based software package for gene
clustering.  Clusters are given by genes matched to prespecified profiles across
various ordered treatment groups.  It is particularly useful for analyzing data
obtained from short time-course or dose-response microarray experiments.")
    (license license:gpl2)))

(define-public r-orgutils
  (package
    (name "r-orgutils")
    (version "0.4-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orgutils" version))
              (sha256
               (base32
                "1yc3avhq3786his7nd60zfbzd9inkfrfz938r8378z59zbb1mzqq"))))
    (properties `((upstream-name . "orgutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-textutils))
    (home-page "https://cran.r-project.org/package=orgutils")
    (synopsis "Helper Functions for Org Files")
    (description
     "Helper functions for Org files (<http://orgmode.org/>): a generic function toOrg
for transforming R objects into Org markup (most useful for data frames; there
are also methods for Dates/POSIXt) and a function to read Org tables into data
frames.")
    (license license:gpl2+)))

(define-public r-orgr
  (package
    (name "r-orgr")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orgR" version))
              (sha256
               (base32
                "1q4qbwnbhmja8rqiph7g7m4wxhzhk9mh91x1jgbnky8bs4ljdgrx"))))
    (properties `((upstream-name . "orgR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-lubridate r-ggthemes r-ggplot2
                             r-data-table))
    (home-page "https://cran.r-project.org/package=orgR")
    (synopsis "Analyse Text Files Created by Emacs' Org mode")
    (description
     "This package provides functionality to process text files created by Emacs Org
mode, and decompose the content to the smallest components (headlines, body,
tag, clock entries etc).  Emacs is an extensible, customizable text editor and
Org mode is for keeping notes, maintaining TODO lists, planning projects.
Allows users to analyze org files as data frames in R, e.g., to convieniently
group tasks by tag into project and calculate total working hours.  Also
provides some help functions like search.parent, gg.pie (visualise working hours
in ggplot2) and tree.headlines (visualise headline stricture in tree format) to
help user managing their complex org files.")
    (license license:gpl2+)))

(define-public r-organizr
  (package
    (name "r-organizr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "organizr" version))
              (sha256
               (base32
                "1i6j7c7d588gnjmh3ddknrs95mhw6ikq53c6wd3zy82lmjvh96bv"))))
    (properties `((upstream-name . "organizr")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-rstudioapi
                             r-rlang
                             r-readr
                             r-here
                             r-fs))
    (home-page "https://github.com/jobrachem/organizr")
    (synopsis "Shortcuts for File Creation with Informative Prefixes")
    (description
     "This package provides functions for quickly creating R and Python scripts, as
well as Rmarkdown or Quarto documents with automatically assigned name prefixes.
 Prefixes are either file counts (e.g. \"001\") or dates (e.g. \"2022-09-26\").")
    (license license:expat)))

(define-public r-org
  (package
    (name "r-org")
    (version "2022.7.21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "org" version))
              (sha256
               (base32
                "0gc01im9mpb7kj0dc4blgry868jrr1wy4v5wbfdsnbf5zy4xxivl"))))
    (properties `((upstream-name . "org")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://docs.sykdomspulsen.no/org/")
    (synopsis "Organising Projects")
    (description
     "This package provides a system to help you organize projects.  Most analyses
have three (or more) main sections: code, results, and data, each with different
requirements (version control/sharing/encryption).  You provide folder locations
and org helps you take care of the details.")
    (license license:expat)))

(define-public r-orf
  (package
    (name "r-orf")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orf" version))
              (sha256
               (base32
                "1njcnya5f2wx50l7gyf53js16xj1y6pwgbghxq4nm4grf2ck3mz1"))))
    (properties `((upstream-name . "orf")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable r-rcpp r-ranger r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/okasag/orf")
    (synopsis "Ordered Random Forests")
    (description
     "An implementation of the Ordered Forest estimator as developed in Lechner &
Okasa (2019) <arXiv:1907.02436>.  The Ordered Forest flexibly estimates the
conditional probabilities of models with ordered categorical outcomes (so-called
ordered choice models).  Additionally to common machine learning algorithms the
orf package provides functions for estimating marginal effects as well as
statistical inference thereof and thus provides similar output as in standard
econometric models for ordered choice.  The core forest algorithm relies on the
fast C++ forest implementation from the ranger package (Wright & Ziegler, 2017)
<arXiv:1508.04409>.")
    (license license:gpl3)))

(define-public r-ores
  (package
    (name "r-ores")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ores" version))
              (sha256
               (base32
                "0xzc0d38z7h5ghab3kqsv0r2cl3888j7vn94p51xlwcbhnq10kip"))))
    (properties `((upstream-name . "ores")))
    (build-system r-build-system)
    (propagated-inputs (list r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ironholds/ores")
    (synopsis "Connector to the Objective Revision Evaluation Service (ORES)")
    (description
     "This package provides a connector to ORES (<https://ores.wmflabs.org/>), an AI
project to provide edit scoring for content on Wikipedia and other Wikimedia
projects.  This lets a researcher identify if edits are likely to be reverted,
damaging, or made in good faith.")
    (license license:expat)))

(define-public r-oreo
  (package
    (name "r-oreo")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oreo" version))
              (sha256
               (base32
                "1qzv6fjana5fx45msqasqfniiancsch6j8r1llh1xyg2wjhqdj23"))))
    (properties `((upstream-name . "oreo")))
    (build-system r-build-system)
    (propagated-inputs (list r-spectral
                             r-scales
                             r-pracma
                             r-openxlsx
                             r-gridextra
                             r-ggplot2
                             r-fftwtools))
    (home-page "https://cran.r-project.org/package=oreo")
    (synopsis "Large Amplitude Oscillatory Shear (LAOS)")
    (description
     "The Sequence of Physical Processes (SPP) framework is a way of interpreting the
transient data derived from oscillatory rheological tests.  It is designed to
allow both the linear and non-linear deformation regimes to be understood within
a single unified framework.  This code provides a convenient way to determine
the SPP framework metrics for a given sample of oscillatory data.  It will
produce a text file containing the SPP metrics, which the user can then plot
using their software of choice.  It can also produce a second text file with
additional derived data (components of tangent, normal, and binormal vectors),
as well as pre-plotted figures if so desired.  It is the R version of the
Package SPP by Simon Rogers Group for Soft Matter (Simon A. Rogers, Brian M.
Erwin, Dimitris Vlassopoulos, Michel Cloitre (2011) <doi:10.1122/1.3544591>).")
    (license license:gpl2)))

(define-public r-ordr
  (package
    (name "r-ordr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordr" version))
              (sha256
               (base32
                "07nsl6mdm4dmyl8vsqzcpd2mihcxsm68gjx3v1dfqgjqmz477nvf"))))
    (properties `((upstream-name . "ordr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-labeling
                             r-ggrepel
                             r-ggplot2
                             r-generics
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/corybrunson/ordr")
    (synopsis "'tidyverse' Extension for Ordinations and Biplots")
    (description
     "Ordination comprises several multivariate exploratory and explanatory techniques
with theoretical foundations in geometric data analysis; see Podani (2000,
ISBN:90-5782-067-6) for techniques and applications and Le Roux & Rouanet (2005)
<doi:10.1007/1-4020-2236-0> for foundations.  Greenacre (2010,
ISBN:978-84-923846) shows how the most established of these, including principal
components analysis, correspondence analysis, multidimensional scaling, factor
analysis, and discriminant analysis, rely on eigen-decompositions or singular
value decompositions of pre-processed numeric matrix data.  These decompositions
give rise to a set of shared coordinates along which the row and column elements
can be measured.  The overlay of their scatterplots on these axes, introduced by
Gabriel (1971) <doi:10.1093/biomet/58.3.453>, is called a biplot.  ordr provides
inspection, extraction, manipulation, and visualization tools for several
popular ordination classes supported by a set of recovery methods.  It is
inspired by and designed to integrate into tidyverse workflows provided by
Wickham et al (2019) <doi:10.21105/joss.01686>.")
    (license license:gpl3)))

(define-public r-ordpens
  (package
    (name "r-ordpens")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordPens" version))
              (sha256
               (base32
                "1q6v3xkaahpzkycjnn75a62narwj4g86ha9m786nfp941ql44vlr"))))
    (properties `((upstream-name . "ordPens")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlrsim r-quadprog r-mgcv r-grplasso r-glmpath))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ordPens")
    (synopsis
     "Selection, Fusion, Smoothing and Principal Components Analysis for Ordinal Variables")
    (description
     "Selection, fusion, and/or smoothing of ordinally scaled independent variables
using a group lasso, fused lasso or generalized ridge penalty, as well as
non-linear principal components analysis for ordinal variables using a
second-order difference/smoothing penalty.")
    (license license:gpl2)))

(define-public r-ordnor
  (package
    (name "r-ordnor")
    (version "2.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OrdNor" version))
              (sha256
               (base32
                "0yjvylp8z24w6nbwy9rjyk0y7gpzsxzsqm8x4q4fn8g87cb3314v"))))
    (properties `((upstream-name . "OrdNor")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrix r-genord r-corpcor))
    (home-page "https://cran.r-project.org/package=OrdNor")
    (synopsis
     "Concurrent Generation of Ordinal and Normal Data with Given Correlation Matrix and Marginal Distributions")
    (description
     "Implementation of a procedure for generating samples from a mixed distribution
of ordinal and normal random variables with a pre-specified correlation matrix
and marginal distributions.  The details of the method are explained in Demirtas
et al. (2015) <DOI:10.1080/10543406.2014.920868>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ordmonreg
  (package
    (name "r-ordmonreg")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OrdMonReg" version))
              (sha256
               (base32
                "1xca8pvvq79j484l2rmn4nva8ncx8z51g5diljikck231y8qjqaz"))))
    (properties `((upstream-name . "OrdMonReg")))
    (build-system r-build-system)
    (home-page "http://www.ceremade.dauphine.fr/~fadoua")
    (synopsis
     "Compute least squares estimates of one bounded or two ordered isotonic regression curves")
    (description
     "We consider the problem of estimating two isotonic regression curves g1* and g2*
under the constraint that they are ordered, i.e.  g1* <= g2*.  Given two sets of
n data points y_1, ..., y_n and z_1, ..., z_n that are observed at (the same)
deterministic design points x_1, ..., x_n, the estimates are obtained by
minimizing the Least Squares criterion L(a, b) = sum_{i=1}^n (y_i - a_i)^2
w1(x_i) + sum_{i=1}^n (z_i - b_i)^2 w2(x_i) over the class of pairs of vectors
(a, b) such that a and b are isotonic and a_i <= b_i for all i = 1, ..., n.  We
offer two different approaches to compute the estimates: a projected subgradient
algorithm where the projection is calculated using a PAVA as well as Dykstra's
cyclical projection algorithm.")
    (license license:gpl2+)))

(define-public r-ordinalrr
  (package
    (name "r-ordinalrr")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalRR" version))
              (sha256
               (base32
                "1sfkq8gryyls22208ympw5scgb4jkd27pyc1qklw4x7cz9wfnfbp"))))
    (properties `((upstream-name . "ordinalRR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags))
    (home-page "https://cran.r-project.org/package=ordinalRR")
    (synopsis
     "Analysis of Repeatability and Reproducibility Studies with Ordinal Measurements")
    (description
     "This package implements Bayesian data analyses of balanced repeatability and
reproducibility studies with ordinal measurements.  Model fitting is based on
MCMC posterior sampling with rjags'.  Function ordinalRR() directly carries out
the model fitting, and this function has the flexibility to allow the user to
specify key aspects of the model, e.g., fixed versus random effects.  Functions
for preprocessing data and for the numerical and graphical display of a fitted
model are also provided.  There are also functions for displaying the model at
fixed (user-specified) parameters and for simulating a hypothetical data set at
a fixed (user-specified) set of parameters for a random-effects rater
population.  For additional technical details, refer to Culp, Ryan, Chen, and
Hamada (2018) and cite this Technometrics paper when referencing any aspect of
this work.  The demo of this package reproduces results from the Technometrics
paper.")
    (license license:gpl2)))

(define-public r-ordinalpattern
  (package
    (name "r-ordinalpattern")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalpattern" version))
              (sha256
               (base32
                "1hlzi8rd24d9ab28dn70hf96d82r275l784ryk0c3hx574a1brlq"))))
    (properties `((upstream-name . "ordinalpattern")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-gtools))
    (home-page "https://cran.r-project.org/package=ordinalpattern")
    (synopsis "Tests Based on Ordinal Patterns")
    (description
     "Ordinal patterns describe the dynamics of a time series by looking at the ranks
of subsequent observations.  By comparing ordinal patterns of two times series,
Schnurr (2014) <doi:10.1007/s00362-013-0536-8> defines a robust and
non-parametric dependence measure: the ordinal pattern coefficient.  Functions
to calculate this and a method to detect a change in the pattern coefficient
proposed in Schnurr and Dehling (2017) <doi:10.1080/01621459.2016.1164706> are
provided.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ordinalnet
  (package
    (name "r-ordinalnet")
    (version "2.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalNet" version))
              (sha256
               (base32
                "0ijgxp1lh4hbgks0p5041f5s6kpfrlm6f7hdz2nm3dn1rhq6bwvi"))))
    (properties `((upstream-name . "ordinalNet")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ordinalNet")
    (synopsis "Penalized Ordinal Regression")
    (description
     "Fits ordinal regression models with elastic net penalty.  Supported model
families include cumulative probability, stopping ratio, continuation ratio, and
adjacent category.  These families are a subset of vector glm's which belong to
a model class we call the elementwise link multinomial-ordinal (ELMO) class.
Each family in this class links a vector of covariates to a vector of class
probabilities.  Each of these families has a parallel form, which is appropriate
for ordinal response data, as well as a nonparallel form that is appropriate for
an unordered categorical response, or as a more flexible model for ordinal data.
 The parallel model has a single set of coefficients, whereas the nonparallel
model has a set of coefficients for each response category except the baseline
category.  It is also possible to fit a model with both parallel and nonparallel
terms, which we call the semi-parallel model.  The semi-parallel model has the
flexibility of the nonparallel model, but the elastic net penalty shrinks it
toward the parallel model.  For details, refer to Wurm, Hanlon, and Rathouz
(2021) <doi:10.18637/jss.v099.i06>.")
    (license license:expat)))

(define-public r-ordinallbm
  (package
    (name "r-ordinallbm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalLBM" version))
              (sha256
               (base32
                "1sfzkm3f9s5nbalakgk5v919wr7hdlr5p280rw2p8dy4wxr3xk3s"))))
    (properties `((upstream-name . "ordinalLBM")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rcolorbrewer))
    (home-page "https://cran.r-project.org/package=ordinalLBM")
    (synopsis
     "Co-Clustering of Ordinal Data via Latent Continuous Random Variables")
    (description
     "It implements functions for simulation and estimation of the ordinal latent
block model (OLBM), as described in Corneli, Bouveyron and Latouche (2019).")
    (license license:gpl2+)))

(define-public r-ordinalgmifs
  (package
    (name "r-ordinalgmifs")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalgmifs" version))
              (sha256
               (base32
                "0c1a4ziyh6jcqnblvc97gpv7bqyhd56gmxxyn1jascpvs2xxq2qy"))))
    (properties `((upstream-name . "ordinalgmifs")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=ordinalgmifs")
    (synopsis "Ordinal Regression for High-Dimensional Data")
    (description
     "This package provides a function for fitting cumulative link, adjacent category,
forward and backward continuation ratio, and stereotype ordinal response models
when the number of parameters exceeds the sample size, using the the generalized
monotone incremental forward stagewise method.")
    (license license:gpl2+)))

(define-public r-ordinalforest
  (package
    (name "r-ordinalforest")
    (version "2.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalForest" version))
              (sha256
               (base32
                "0s5isf8z6rrksl4jv1aizffxy3bcl726qjpj5j6z7642wkdkpygi"))))
    (properties `((upstream-name . "ordinalForest")))
    (build-system r-build-system)
    (propagated-inputs (list r-verification r-rcpp r-nnet r-combinat))
    (home-page "https://cran.r-project.org/package=ordinalForest")
    (synopsis
     "Ordinal Forests: Prediction and Variable Ranking with Ordinal Target Variables")
    (description
     "The ordinal forest (OF) method allows ordinal regression with high-dimensional
and low-dimensional data.  After having constructed an OF prediction rule using
a training dataset, it can be used to predict the values of the ordinal target
variable for new observations.  Moreover, by means of the (permutation-based)
variable importance measure of OF, it is also possible to rank the covariates
with respect to their importance in the prediction of the values of the ordinal
target variable.  OF is presented in Hornung (2020).  NOTE: Starting with
package version 2.4, it is also possible to obtain class probability predictions
in addition to the class point predictions.  Moreover, the variable importance
values can also be based on the class probability predictions.  Preliminary
results indicate that this might lead to a better discrimination between
influential and non-influential covariates.  The main functions of the package
are: ordfor() (construction of OF) and predict.ordfor() (prediction of the
target variable values of new observations).  References: Hornung R. (2020)
Ordinal Forests.  Journal of Classification 37, 4â17.
<doi:10.1007/s00357-018-9302-x>.")
    (license license:gpl2)))

(define-public r-ordinalcont
  (package
    (name "r-ordinalcont")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalCont" version))
              (sha256
               (base32
                "1azwcr1si3b8dxf2y59d3rxw4msfq79khzg7zgqd0kbzyka4ygl8"))))
    (properties `((upstream-name . "ordinalCont")))
    (build-system r-build-system)
    (propagated-inputs (list r-deriv r-boot))
    (home-page "https://cran.r-project.org/package=ordinalCont")
    (synopsis "Ordinal Regression Analysis for Continuous Scales")
    (description
     "This package provides a regression framework for response variables which are
continuous self-rating scales such as the Visual Analog Scale (VAS) used in pain
assessment, or the Linear Analog Self-Assessment (LASA) scales in quality of
life studies.  These scales measure subjects perception of an intangible
quantity, and cannot be handled as ratio variables because of their inherent
non-linearity.  We treat them as ordinal variables, measured on a continuous
scale.  A function (the g function) connects the scale with an underlying
continuous latent variable.  The link function is the inverse of the CDF of the
assumed underlying distribution of the latent variable.  A variety of link
functions are currently implemented.  Such models are described in Manuguerra et
al (2020) <doi:10.18637/jss.v096.i08>.")
    (license license:gpl2+)))

(define-public r-ordinalclust
  (package
    (name "r-ordinalclust")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalClust" version))
              (sha256
               (base32
                "0hmqvhrmijgzanh08z5v82a07zl7xm69wl8zzj99fksahyrgxjdc"))))
    (properties `((upstream-name . "ordinalClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress r-rcpparmadillo r-rcpp r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ordinalClust")
    (synopsis "Ordinal Data Clustering, Co-Clustering and Classification")
    (description
     "Ordinal data classification, clustering and co-clustering using model-based
approach with the BOS distribution for ordinal data (Christophe Biernacki and
Julien Jacques (2016) <doi:10.1007/s11222-015-9585-2>).")
    (license license:gpl2+)))

(define-public r-ordinalbayes
  (package
    (name "r-ordinalbayes")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordinalbayes" version))
              (sha256
               (base32
                "13f9rv6gndjr18rfk60rmginzam1xjsssjn45l6hhl6y3gglsyzh"))))
    (properties `((upstream-name . "ordinalbayes")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-summarizedexperiment
                             r-runjags
                             r-devtools
                             r-deseq2
                             r-dclone
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kelliejarcher/ordinalbayes")
    (synopsis "Bayesian Ordinal Regression for High-Dimensional Data")
    (description
     "This package provides a function for fitting various penalized Bayesian
cumulative link ordinal response models when the number of parameters exceeds
the sample size.  These models have been described in Zhang and Archer (2021)
<doi:10.1186/s12859-021-04432-w>.")
    (license license:expat)))

(define-public r-ordibreadth
  (package
    (name "r-ordibreadth")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordiBreadth" version))
              (sha256
               (base32
                "04faqhas1p9lxhghd4xq07yq1nxv7ns18avhvkql7sy5a9g7bfs1"))))
    (properties `((upstream-name . "ordiBreadth")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan))
    (home-page "https://cran.r-project.org/package=ordiBreadth")
    (synopsis "Ordinated Diet Breadth")
    (description
     "Calculates ordinated diet breadth with some plotting functions.")
    (license license:gpl3+)))

(define-public r-ordfacreg
  (package
    (name "r-ordfacreg")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OrdFacReg" version))
              (sha256
               (base32
                "16mavsmp6d8rfmimmp5ynwyzir0gycpg8rhd8cwanlrndyclqlpv"))))
    (properties `((upstream-name . "OrdFacReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mass r-eha))
    (home-page "http://www.kasparrufibach.ch")
    (synopsis
     "Least Squares, Logistic, and Cox-Regression with Ordered Predictors")
    (description
     "In biomedical studies, researchers are often interested in assessing the
association between one or more ordinal explanatory variables and an outcome
variable, at the same time adjusting for covariates of any type.  The outcome
variable may be continuous, binary, or represent censored survival times.  In
the absence of a precise knowledge of the response function, using monotonicity
constraints on the ordinal variables improves efficiency in estimating
parameters, especially when sample sizes are small.  This package implements an
active set algorithm that efficiently computes such estimators.")
    (license license:gpl2+)))

(define-public r-orderstats
  (package
    (name "r-orderstats")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orderstats" version))
              (sha256
               (base32
                "0a3ga0cjryvbininspsx5wzc96s3fza06s3d5fhbllbixz0rap4a"))))
    (properties `((upstream-name . "orderstats")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=orderstats")
    (synopsis "Efficiently Generates Random Order Statistic Variables")
    (description
     "All the methods in this package generate a vector of uniform order statistics
using a beta distribution and use an inverse cumulative distribution function
for some distribution to give a vector of random order statistic variables for
some distribution.  This is much more efficient than using a loop since it is
directly sampling from the order statistic distribution.")
    (license license:gpl2)))

(define-public r-orders
  (package
    (name "r-orders")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orders" version))
              (sha256
               (base32
                "0b1ysq22qhdzs5fb63m786iil0rkb9qsj9p730izn7dg3zx36gl1"))))
    (properties `((upstream-name . "orders")))
    (build-system r-build-system)
    (propagated-inputs (list r-newdistns r-gamlss-dist r-actuar))
    (home-page "https://cran.r-project.org/package=orders")
    (synopsis
     "Sampling from k-th Order Statistics of New Families of Distributions")
    (description
     "Set of tools to generate samples of k-th order statistics and others quantities
of interest from new families of distributions.  The main references for this
package are: C. Kleiber and S. Kotz (2003) Statistical size distributions in
economics and actuarial sciences; Gentle, J. (2009), Computational Statistics,
Springer-Verlag; Naradajah, S. and Rocha, R. (2016), <DOI:10.18637/jss.v069.i10>
and Stasinopoulos, M. and Rigby, R. (2015),
<DOI:10.1111/j.1467-9876.2005.00510.x>.  The families of distributions are: Burr
distributions, Feller-Pareto distributions, Generalized Pareto Distributions,
The Inverse Paralogistic Distributions, Marshall-Olkin G distributions,
exponentiated G distributions, beta G distributions, gamma G distributions,
Kumaraswamy G distributions, generalized beta G distributions, beta extended G
distributions, gamma G distributions, gamma uniform G distributions, beta
exponential G distributions, Weibull G distributions, log gamma G I
distributions, log gamma G II distributions, exponentiated generalized G
distributions, exponentiated Kumaraswamy G distributions, geometric exponential
Poisson G distributions, truncated-exponential skew-symmetric G distributions,
modified beta G distributions, exponentiated exponential Poisson G
distributions, Poisson-inverse gaussian distribution, Skew normal type 1
distributions, Skew student t distribution, Sinh-Arcsinh distribution, Sichel
distribution, Zero inflated Poisson.")
    (license license:gpl3)))

(define-public r-orderly
  (package
    (name "r-orderly")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orderly" version))
              (sha256
               (base32
                "0k7xk64schhw9jdbg50hlnf6gfhlgnv1n20rz3fga02z38441xkn"))))
    (properties `((upstream-name . "orderly")))
    (build-system r-build-system)
    (inputs (list git))
    (propagated-inputs (list r-zip
                             r-yaml
                             r-withr
                             r-rsqlite
                             r-r6
                             r-ids
                             r-gert
                             r-fs
                             r-docopt
                             r-digest
                             r-dbi
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://www.vaccineimpact.org/orderly/")
    (synopsis "Lightweight Reproducible Reporting")
    (description
     "Order, create and store reports from R. By defining a lightweight interface
around the inputs and outputs of an analysis, a lot of the repetitive work for
reproducible research can be automated.  We define a simple format for
organising and describing work that facilitates collaborative reproducible
research and acknowledges that all analyses are run multiple times over their
lifespans.")
    (license license:expat)))

(define-public r-ordering
  (package
    (name "r-ordering")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordering" version))
              (sha256
               (base32
                "0sgwgcjg6sazmi11c9qvxfrzg671kcp18i2q20xbmbj4v3yqhwbh"))))
    (properties `((upstream-name . "ordering")))
    (build-system r-build-system)
    (home-page "https://github.com/decisionpatterns/ordering")
    (synopsis
     "Test, Check, Verify, Investigate the Monotonic Properties of Vectors")
    (description
     "This package provides functions to test/check/verify/investigate the ordering of
vectors.  The is_[strictly_]* family of functions test vectors for sorted',
monotonic', increasing', decreasing order; is_constant and is_incremental test
for the degree of ordering. `ordering` provides a numeric indication of ordering
-2 (strictly decreasing) to 2 (strictly increasing).")
    (license license:gpl2+)))

(define-public r-ordensity
  (package
    (name "r-ordensity")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORdensity" version))
              (sha256
               (base32
                "1g9d85dyfhlqmwsigdn64hifasbvw70g3wpph2h9v2ksvia0cd31"))))
    (properties `((upstream-name . "ORdensity")))
    (build-system r-build-system)
    (propagated-inputs (list r-rfast
                             r-plyr
                             r-foreach
                             r-dorng
                             r-doparallel
                             r-distances
                             r-cluster))
    (home-page "https://cran.r-project.org/package=ORdensity")
    (synopsis "Identification of Differentially Expressed Genes")
    (description
     "Automated discovery of differentially expressed genes.  The method (called
ORdensity) is composed of two phases: discovering potential differentially
expressed genes and recognizing differentially expressed genes.  It makes use of
a permutation resampling procedure to build outlying and density indexes.
References: a) Irigoien, I. and Arenas, C. (2018). \"Identification of
differentially expressed genes by means of outlier detection\".
<doi:10.1186/s12859-018-2318-8>.  b) MartÃ­nez-Otzeta, J. M., Irigoien, I.,
Sierra, B., and Arenas, C. (2020). \"ORdensity: user-friendly R package to
identify differentially expressed genes\". <doi:10.1186/s12859-020-3463-4>.")
    (license license:gpl2+)))

(define-public r-orddisp
  (package
    (name "r-orddisp")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordDisp" version))
              (sha256
               (base32
                "0906y98ydiadyqhz9ad2ssw1282a10c418k20vkbwzad2xip7grg"))))
    (properties `((upstream-name . "ordDisp")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam))
    (home-page "https://cran.r-project.org/package=ordDisp")
    (synopsis
     "Separating Location and Dispersion in Ordinal Regression Models")
    (description
     "Estimate location-shift models or rating-scale models accounting for response
styles (RSRS) for the regression analysis of ordinal responses.")
    (license license:gpl2)))

(define-public r-ordcrm
  (package
    (name "r-ordcrm")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordcrm" version))
              (sha256
               (base32
                "1hy24s23l099b21w5j3p2f0748s8xmhxhslfp65fg7ycwda5qsyw"))))
    (properties `((upstream-name . "ordcrm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rms))
    (home-page "https://cran.r-project.org/package=ordcrm")
    (synopsis
     "Likelihood-Based Continual Reassessment Method (CRM) Dose Finding Designs")
    (description
     "This package provides the setup and calculations needed to run a
likelihood-based continual reassessment method (CRM) dose finding trial and
performs simulations to assess design performance under various scenarios.  3
dose finding designs are included in this package: ordinal proportional odds
model (POM) CRM, ordinal continuation ratio (CR) model CRM, and the binary
2-parameter logistic model CRM. These functions allow customization of design
characteristics to vary sample size, cohort sizes, target dose-limiting toxicity
(DLT) rates, discrete or continuous dose levels, combining ordinal grades 0 and
1 into one category, and incorporate safety and/or stopping rules.  For POM and
CR model designs, ordinal toxicity grades are specified by common terminology
criteria for adverse events (CTCAE) version 4.0.  Function pseudodata creates
the necessary starting models for these 3 designs, and function nextdose
estimates the next dose to test in a cohort of patients for a target DLT rate.
We also provide the function crmsimulations to assess the performance of these 3
dose finding designs under various scenarios.")
    (license license:gpl2+)))

(define-public r-ordcd
  (package
    (name "r-ordcd")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OrdCD" version))
              (sha256
               (base32
                "0b8jnv2h6by4yagwhizfxmnwn1ppgv6vpzp0ibhhzm86pj6ahl9d"))))
    (properties `((upstream-name . "OrdCD")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-igraph r-grbase r-bnlearn))
    (home-page "https://github.com/nySTAT/OCD")
    (synopsis "Ordinal Causal Discovery")
    (description
     "Algorithms for ordinal causal discovery.  This package aims to enable users to
discover causality for observational ordinal categorical data with greedy and
exhaustive search.  See Ni, Y., & Mallick, B. (2022)
<https://proceedings.mlr.press/v180/ni22a/ni22a.pdf> \"Ordinal Causal Discovery.
Proceedings of the 38th Conference on Uncertainty in Artificial Intelligence,
(UAI 2022), PMLR 180:1530â1540\".")
    (license license:expat)))

(define-public r-ordbetareg
  (package
    (name "r-ordbetareg")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ordbetareg" version))
              (sha256
               (base32
                "0fla9i98qlxk0harzhr79m1fq4lmcfvslrkmkh5nhm72fis6w0x0"))))
    (properties `((upstream-name . "ordbetareg")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-ggplot2 r-faux r-dplyr r-brms))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ordbetareg")
    (synopsis "Ordered Beta Regression Models with Brms")
    (description
     "This package implements ordered beta regression models, which are for modeling
continuous variables with upper and lower bounds, such as survey sliders,
dose-response relationships and indexes.  For more information, see Kubinec
(2022) <doi:10.31235/osf.io/2sx6y>.  The package is a front-end to the R package
brms', which facilitates a range of regression specifications, including
hierarchical, dynamic and multivariate modeling.")
    (license license:expat)))

(define-public r-orcutt
  (package
    (name "r-orcutt")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orcutt" version))
              (sha256
               (base32
                "0pj7pqzbcg4gp35nsz3avyawmx69dgj0l2w0x8ypw5qwl4zhmnyk"))))
    (properties `((upstream-name . "orcutt")))
    (build-system r-build-system)
    (propagated-inputs (list r-lmtest))
    (home-page "https://cran.r-project.org/package=orcutt")
    (synopsis "Estimate Procedure in Case of First Order Autocorrelation")
    (description
     "Solve first order autocorrelation problems using an iterative method.  This
procedure estimates both autocorrelation and beta coefficients recursively until
we reach the convergence (8th decimal as default).  The residuals are computed
after estimating Beta using EGLS approach and Rho is estimated using the
previous residuals.")
    (license license:gpl2)))

(define-public r-orcs
  (package
    (name "r-orcs")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Orcs" version))
              (sha256
               (base32
                "1sn1kj4wlcsri40s36jnhrpqp9gc5g2nf71ljznzifq9ivrn9sfh"))))
    (properties `((upstream-name . "Orcs")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-sp
                             r-sf
                             r-rgdal
                             r-remotes
                             r-rcpp
                             r-raster
                             r-plotrix
                             r-latticeextra
                             r-lattice
                             r-knitr
                             r-bookdown))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fdetsch/Orcs")
    (synopsis "Omnidirectional R Code Snippets")
    (description
     "I tend to repeat the same code chunks over and over again.  At first, this was
fine for me and I paid little attention to such redundancies.  A little later,
when I got tired of manually replacing Linux filepaths with the referring
Windows versions, and vice versa, I started to stuff some very frequently used
work-steps into functions and, even later, into a proper R package.  And that's
what this package is - a hodgepodge of various R functions meant to simplify
(my) everyday-life coding work without, at the same time, being devoted to a
particular scope of application.")
    (license license:expat)))

(define-public r-orcme
  (package
    (name "r-orcme")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ORCME" version))
              (sha256
               (base32
                "1pm8ajj24qqj2fir0gjzq5f4mfpl1cnj6fm2z5qg6g3sbnm57ayk"))))
    (properties `((upstream-name . "ORCME")))
    (build-system r-build-system)
    (propagated-inputs (list r-iso))
    (home-page "https://cran.r-project.org/package=ORCME")
    (synopsis "Order Restricted Clustering for Microarray Experiments")
    (description
     "This package provides clustering of genes with similar dose response (or time
course) profiles.  It implements the method described by Lin et al. (2012).")
    (license license:gpl3)))

(define-public r-orclus
  (package
    (name "r-orclus")
    (version "0.2-6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orclus" version))
              (sha256
               (base32
                "0d78mn2vl2yxlvdswyxkxp9zg59b8cvfksz9m56kddn79aps1ikl"))))
    (properties `((upstream-name . "orclus")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=orclus")
    (synopsis
     "Subspace Clustering Based on Arbitrarily Oriented Projected Cluster Generation")
    (description
     "This package provides functions to perform subspace clustering and
classification.")
    (license license:gpl2+)))

(define-public r-orca
  (package
    (name "r-orca")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "orca" version))
              (sha256
               (base32
                "1wd5nh2vh6j1rp78hbw17qipi67f0wimrbkiarak8f7k5pfiy1zn"))))
    (properties `((upstream-name . "orca")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=orca")
    (synopsis "Computation of Graphlet Orbit Counts in Sparse Graphs")
    (description
     "This package implements orbit counting using a fast combinatorial approach.
Counts orbits of nodes and edges from edge matrix or data frame, or a graph
object from the graph package.")
    (license license:lgpl3)))

(define-public r-ora
  (package
    (name "r-ora")
    (version "2.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ora" version))
              (sha256
               (base32
                "0albxqma220rnrpfdq3z9cawr83q1a0zzczbbcy4nijjm4mswphy"))))
    (properties `((upstream-name . "ora")))
    (build-system r-build-system)
    (propagated-inputs (list r-roracle r-dbi))
    (home-page "https://cran.r-project.org/package=ora")
    (synopsis "Convenient Tools for Working with Oracle Databases")
    (description
     "Easy-to-use functions to explore Oracle databases and import data into R. User
interface for the ROracle package.")
    (license license:gpl2+)))

(define-public r-opvar
  (package
    (name "r-opvar")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpVaR" version))
              (sha256
               (base32
                "1923p60yzh8fycwl1fwy01r7ml5yx0kx01ckhgii7slm4cachf5f"))))
    (properties `((upstream-name . "OpVaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-vinecopula
                             r-truncnorm
                             r-tea
                             r-reins
                             r-pracma
                             r-mass
                             r-evmix
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OpVaR")
    (synopsis "Statistical Methods for Modelling Operational Risk")
    (description
     "This package provides functions for computing the value-at-risk in compound
Poisson models.  The implementation comprises functions for modeling loss
frequencies and loss severities with plain, mixed (Frigessi et al. (2012)
<doi:10.1023/A:1024072610684>) or spliced distributions using Maximum Likelihood
estimation and Bayesian approaches (Ergashev et al. (2013)
<doi:10.21314/JOP.2013.131>).  In particular, the parametrization of tail
distributions includes the fitting of Tukey-type distributions (Kuo and Headrick
(2014) <doi:10.1155/2014/645823>).  Furthermore, the package contains the
modeling of bivariate dependencies between loss severities and frequencies,
Monte Carlo simulation for total loss estimation as well as a closed-form
approximation based on Degen (2010) <doi:10.21314/JOP.2010.084> to determine the
value-at-risk.")
    (license license:gpl3)))

(define-public r-opusminer
  (package
    (name "r-opusminer")
    (version "0.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opusminer" version))
              (sha256
               (base32
                "1vw6pbk1iiaxmfws95wmwf56p3afk10s5c3x9f0lliamckpyzkck"))))
    (properties `((upstream-name . "opusminer")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrix r-arules))
    (home-page "https://cran.r-project.org/package=opusminer")
    (synopsis "OPUS Miner Algorithm for Filtered Top-k Association Discovery")
    (description
     "This package provides a simple R interface to the OPUS Miner algorithm
(implemented in C++) for finding the top-k productive, non-redundant itemsets
from transaction data.  The OPUS Miner algorithm uses the OPUS search algorithm
to efficiently discover the key associations in transaction data, in the form of
self-sufficient itemsets, using either leverage or lift.  See
<http://i.giwebb.com/index.php/research/association-discovery/> for more
information in relation to the OPUS Miner algorithm.")
    (license license:gpl3)))

(define-public r-optweight
  (package
    (name "r-optweight")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optweight" version))
              (sha256
               (base32
                "1mfk9sp47flqq7i762wip5191j8m0q9kbyxs4a7f0pd76qwf67q2"))))
    (properties `((upstream-name . "optweight")))
    (build-system r-build-system)
    (propagated-inputs (list r-osqp r-matrix r-ggplot2))
    (home-page "https://cran.r-project.org/package=optweight")
    (synopsis "Targeted Stable Balancing Weights Using Optimization")
    (description
     "Use optimization to estimate weights that balance covariates for binary,
multinomial, and continuous treatments in the spirit of Zubizarreta (2015)
<doi:10.1080/01621459.2015.1023805>.  The degree of balance can be specified for
each covariate.  In addition, sampling weights can be estimated that allow a
sample to generalize to a population specified with given target moments of
covariates.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-opttesting
  (package
    (name "r-opttesting")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OPTtesting" version))
              (sha256
               (base32
                "1d5pkvrzz5hvr764kyliyba5mgix9y340gdcvc0d0si41rz12r91"))))
    (properties `((upstream-name . "OPTtesting")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-rootsolve r-quantreg))
    (home-page "https://cran.r-project.org/package=OPTtesting")
    (synopsis "Optimal Testing")
    (description
     "Optimal testing under general dependence.  The R package implements procedures
proposed in Wang, Han, and Tong (2022).  The package includes parameter
estimation procedures, the computation for the posterior probabilities, and the
testing procedure.")
    (license license:gpl2)))

(define-public r-optsig
  (package
    (name "r-optsig")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptSig" version))
              (sha256
               (base32
                "0fdszrblayi2hlmkgvwqxw1fh5nh2jad6sxlc788jrzjrd8nkldj"))))
    (properties `((upstream-name . "OptSig")))
    (build-system r-build-system)
    (propagated-inputs (list r-pwr))
    (home-page "https://cran.r-project.org/package=OptSig")
    (synopsis
     "Optimal Level of Significance for Regression and Other Statistical Tests")
    (description
     "The optimal level of significance is calculated based on a decision-theoretic
approach.  The optimal level is chosen so that the expected loss from hypothesis
testing is minimized.  A range of statistical tests are covered, including the
test for the population mean, population proportion, and a linear restriction in
a multiple regression model.  The details are covered in Kim and Choi (2020)
<doi:10.1111/abac.12172>, and Kim (2021) <doi:10.1080/00031305.2020.1750484>.")
    (license license:gpl2)))

(define-public r-opts
  (package
    (name "r-opts")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OPTS" version))
              (sha256
               (base32
                "0h382gcjq2f4qm63xnqvhjvxyn9w01dzx8964fk6cm2izhw04bk2"))))
    (properties `((upstream-name . "OPTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-cvtools r-changepoint))
    (home-page "https://cran.r-project.org/package=OPTS")
    (synopsis "Optimization via Subsampling (OPTS)")
    (description
     "Subsampling based variable selection for low dimensional generalized linear
models.  The methods repeatedly subsample the data minimizing an information
criterion (AIC/BIC) over a sequence of nested models for each subsample.
Marinela Capanu, Mihai Giurcanu, Colin B Begg, Mithat Gonen, Subsampling based
variable selection for generalized linear models.")
    (license license:gpl2)))

(define-public r-optrcdmaeat
  (package
    (name "r-optrcdmaeat")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optrcdmaeAT" version))
              (sha256
               (base32
                "16g4612mwyfsckn6l71fbrjnnjv4yvnac1cccbrn3k8jh07qgb1h"))))
    (properties `((upstream-name . "optrcdmaeAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-igraph))
    (home-page "https://cran.r-project.org/package=optrcdmaeAT")
    (synopsis
     "Optimal Row-Column Designs for Two-Colour cDNA Microarray Experiments")
    (description
     "Computes A-, MV-, D- and E-optimal or near-optimal row-column designs for
two-colour cDNA microarray experiments using the linear fixed effects and mixed
effects models where the interest is in a comparison of all pairwise treatment
contrasts.  The algorithms used in this package are based on the array exchange
and treatment exchange algorithms adopted from Debusho, Gemechu and Haines
(2016, unpublished) algorithms after adjusting for the row-column designs setup.
 The package also provides an optional method of using the graphical user
interface (GUI) R package tcltk to ensure that it is user friendly.")
    (license license:gpl2)))

(define-public r-optr
  (package
    (name "r-optr")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optR" version))
              (sha256
               (base32
                "0q7jf4m0gzm11izl5lff17pvr855smqmc6zzi1bc7m6h3z865l32"))))
    (properties `((upstream-name . "optR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=optR")
    (synopsis "Optimization Toolbox for Solving Linear Systems")
    (description
     "Solves linear systems of form Ax=b via Gauss elimination, LU decomposition,
Gauss-Seidel, Conjugate Gradient Method (CGM) and Cholesky methods.")
    (license license:gpl2+)))

(define-public r-optpart
  (package
    (name "r-optpart")
    (version "3.0-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optpart" version))
              (sha256
               (base32
                "18h659gbgzflq81lcchc058xjgljkmhpsjkh51ylygwrv1qjrz2i"))))
    (properties `((upstream-name . "optpart")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotrix r-mass r-labdsv r-cluster))
    (native-inputs (list gfortran))
    (home-page "http://ecology.msu.montana.edu/labdsv/R")
    (synopsis "Optimal Partitioning of Similarity Relations")
    (description
     "This package contains a set of algorithms for creating partitions and coverings
of objects largely based on operations on (dis)similarity relations (or
matrices).  There are several iterative re-assignment algorithms optimizing
different goodness-of-clustering criteria.  In addition, there are covering
algorithms clique which derives maximal cliques, and maxpact which creates a
covering of maximally compact sets.  Graphical analyses and conversion routines
are also included.")
    (license license:gpl2+)))

(define-public r-optmatch
  (package
    (name "r-optmatch")
    (version "0.10.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optmatch" version))
              (sha256
               (base32
                "0ybzfns6lhkif1s0npm71wpr4r4y7mnki53zyvqbymlpx81j41m8"))))
    (properties `((upstream-name . "optmatch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlemon r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://optmat.ch")
    (synopsis "Functions for Optimal Matching")
    (description
     "Distance based bipartite matching using minimum cost flow, oriented to matching
of treatment and control groups in observational studies (Hansen and Klopfer
2006 <doi:10.1198/106186006X137047>).  Routines are provided to generate
distances from generalised linear models (propensity score matching), formulas
giving variables on which to limit matched distances, stratified or exact
matching directives, or calipers, alone or in combination.")
    (license license:expat)))

(define-public r-optm
  (package
    (name "r-optm")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptM" version))
              (sha256
               (base32
                "1x3df5qmbs920rgxpc32grwran49nxpnw9swrba9877c0ixg2dww"))))
    (properties `((upstream-name . "OptM")))
    (build-system r-build-system)
    (propagated-inputs (list r-sizer r-boot))
    (home-page "https://cran.r-project.org/package=OptM")
    (synopsis
     "Estimating the Optimal Number of Migration Edges from 'Treemix'")
    (description
     "The popular population genetic software Treemix by Pickrell and Pritchard (2012)
<DOI:10.1371/journal.pgen.1002967> estimates the number of migration edges on a
population tree.  However, it can be difficult to determine the number of
migration edges to include.  Previously, it was customary to stop adding
migration edges when 99.8% of variation in the data was explained, but OptM
automates this process using an ad hoc statistic based on the second-order rate
of change in the log likelihood.  OptM also has added functionality for various
threshold modeling to compare with the ad hoc statistic.")
    (license license:gpl2+)))

(define-public r-optistock
  (package
    (name "r-optistock")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optistock" version))
              (sha256
               (base32
                "1nyz64bfi4s10i4mq7crdkn3b3zqr674vfxkdd3kphjqk0wmiv1j"))))
    (properties `((upstream-name . "optistock")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optistock")
    (synopsis "Determine Optimum Stocking Times Used in Fishery Enhancements")
    (description
     "This package provides a collection of functions that aid in calculating the
optimum time to stock hatchery reared fish into a body of water given the
growth, mortality and cost of raising a particular number of individuals to a
certain length.")
    (license license:expat)))

(define-public r-optisolve
  (package
    (name "r-optisolve")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optiSolve" version))
              (sha256
               (base32
                "0mhl5gdz3y3cs3p6v7z4n50na3sqj0w739gixcf4qgb1ppx0h1xa"))))
    (properties `((upstream-name . "optiSolve")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-shapes
                             r-rcpp
                             r-plyr
                             r-nloptr
                             r-matrix
                             r-mass
                             r-cccp
                             r-alabama))
    (home-page "https://cran.r-project.org/package=optiSolve")
    (synopsis "Linear, Quadratic, and Rational Optimization")
    (description
     "Solver for linear, quadratic, and rational programs with linear, quadratic, and
rational constraints.  A unified interface to different R packages is provided.
Optimization problems are transformed into equivalent formulations and solved by
the respective package.  For example, quadratic programming problems with
linear, quadratic and rational constraints can be solved by augmented Lagrangian
minimization using package alabama', or by sequential quadratic programming
using solver slsqp'.  Alternatively, they can be reformulated as optimization
problems with second order cone constraints and solved with package cccp'.")
    (license license:gpl2)))

(define-public r-optisembleforecasting
  (package
    (name "r-optisembleforecasting")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptiSembleForecasting" version))
              (sha256
               (base32
                "0j1xjh59iyb99p73wjvqr8yrsj6yplsl2rrx50bds9ksjbq1qmym"))))
    (properties `((upstream-name . "OptiSembleForecasting")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsutils
                             r-tibble
                             r-tensorflow
                             r-readxl
                             r-neuralnet
                             r-metrics
                             r-metaheuristicopt
                             r-mcs
                             r-kknn
                             r-keras
                             r-forecast
                             r-factominer
                             r-factoextra
                             r-dplyr
                             r-caretforecast))
    (home-page "https://cran.r-project.org/package=OptiSembleForecasting")
    (synopsis "Optimization Based Ensemble Forecasting Using MCS Algorithm")
    (description
     "The real-life data is complex in nature.  No single model can capture all aspect
of complex time series data.  In this package, 14 models, namely Recurrent
Neural Network (RNN), Gated Recurrent Unit (GRU), Long Short-Term Memory (LSTM),
Bidirectional LSTM, Deep LSTM, Artificial Neural Network (ANN), Support Vector
Regression (SVR), Random Forest (RF), k-Nearest Neighbour (KNN), XGBoost (XGB),
Autoregressive Integrated Moving Average (ARIMA), Error-Trend-Seasonality (ETS)
and TBATS models, have been implemented and their accuracy have been checked.
An PCA based error index has been proposed to select a group of best models
using MCS algorithms.  After selecting the models, the forecasts from these
models have been ensembled using optimization techniques.  This package allows
to implement 20 optimization techniques, namely, Artificial Bee Colony (ABC),
Ant Lion Optimizer (ALO), Bat Algorithm (BA), Black Hole Optimization Algorithm
(BHO), Clonal Selection Algorithm (CLONALG), Cuckoo Search (CS), Cat Swarm
Optimization (CSO), Dragonfly Algorithm (DA), Differential Evolution (DE),
Firefly Algorithm (FFA), Genetic Algorithm (GA), Gravitational Based Search
Algorithm (GBS), Grasshopper Optimisation Algorithm (GOA), Grey Wolf Optimizer
(GWO), Harmony Search Algorithm (HS), Krill-Herd Algorithm (KH), Moth Flame
Optimizer (MFO), Particle Swarm Optimization (PSO), Sine Cosine Algorithm (SCA),
Shuffled Frog Leaping (SFL) and Whale Optimization Algorithm (WOA).  This
package has been developed using concept of Wang et al. (2022)
<doi:10.1016/j.apm.2022.09.004>, Qu et al. (2022)
<doi:10.1016/j.eswa.2022.118746> and Kriz (2019)
<doi:10.1007/978-3-030-18195-6_21 >.")
    (license license:gpl3)))

(define-public r-optisel
  (package
    (name "r-optisel")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optiSel" version))
              (sha256
               (base32
                "13rxv6wqz5gpmsfb96173p1y8140zqj4llihxsvjczcqwhrayjha"))))
    (properties `((upstream-name . "optiSel")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-quadprog
                             r-purrr
                             r-pspline
                             r-plyr
                             r-pedigree
                             r-optisolve
                             r-nadiv
                             r-matrix
                             r-mass
                             r-magic
                             r-kinship2
                             r-foreach
                             r-ecosolver
                             r-doparallel
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optiSel")
    (synopsis "Optimum Contribution Selection and Population Genetics")
    (description
     "This package provides a framework for the optimization of breeding programs via
optimum contribution selection and mate allocation.  An easy to use set of
function for computation of optimum contributions of selection candidates, and
of the population genetic parameters to be optimized.  These parameters can be
estimated using pedigree or genotype information, and include kinships, kinships
at native haplotype segments, and breed composition of crossbred individuals.
They are suitable for managing genetic diversity, removing introgressed genetic
material, and accelerating genetic gain.  Additionally, functions are provided
for computing genetic contributions from ancestors, inbreeding coefficients, the
native effective size, the native genome equivalent, pedigree completeness, and
for preparing and plotting pedigrees.")
    (license license:gpl2)))

(define-public r-optiscale
  (package
    (name "r-optiscale")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optiscale" version))
              (sha256
               (base32
                "1ay2lfk4isv0gir5diwxlx4ml5bv5qyqbwm34py85fp6bh92987r"))))
    (properties `((upstream-name . "optiscale")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=optiscale")
    (synopsis "Optimal Scaling")
    (description
     "Optimal scaling of a data vector, relative to a set of targets, is obtained
through a least-squares transformation subject to appropriate measurement
constraints.  The targets are usually predicted values from a statistical model.
 If the data are nominal level, then the transformation must be
identity-preserving.  If the data are ordinal level, then the transformation
must be monotonic.  If the data are discrete, then tied data values must remain
tied in the optimal transformation.  If the data are continuous, then tied data
values can be untied in the optimal transformation.")
    (license license:gpl2)))

(define-public r-optionstrat
  (package
    (name "r-optionstrat")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optionstrat" version))
              (sha256
               (base32
                "0vidaf888zdls5yxy7637fqg6r39l3rxw9bhn16s4xmag7kawljv"))))
    (properties `((upstream-name . "optionstrat")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optionstrat")
    (synopsis
     "Utilizes the Black-Scholes Option Pricing Model to Perform Strategic Option Analysis and Plot Option Strategies")
    (description
     "Utilizes the Black-Scholes-Merton option pricing model to calculate key option
analytics and perform graphical analysis of various option strategies.  Provides
functions to calculate the option premium and option greeks of European-style
options.")
    (license license:gpl3)))

(define-public r-optionpricing
  (package
    (name "r-optionpricing")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptionPricing" version))
              (sha256
               (base32
                "1x90v95mm1cylq0gnswniaf9imrjd7diid9hcv0vmffz4xa9ixks"))))
    (properties `((upstream-name . "OptionPricing")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OptionPricing")
    (synopsis "Option Pricing with Efficient Simulation Algorithms")
    (description
     "Efficient Monte Carlo Algorithms for the price and the sensitivities of Asian
and European Options under Geometric Brownian Motion.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-optional
  (package
    (name "r-optional")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optional" version))
              (sha256
               (base32
                "1q7k9rsa7m3ag7mwx88101ksy0c01gk0xl0425jfkwm0d4g5pyy0"))))
    (properties `((upstream-name . "optional")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optional")
    (synopsis "Optional Types and Pattern Matching")
    (description
     "Introduces optional types with some() and none, as well as match_with() from
functional languages.")
    (license (license:fsdg-compatible "BSL"))))

(define-public r-optinterv
  (package
    (name "r-optinterv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optinterv" version))
              (sha256
               (base32
                "1yvjb9fyqj3pfglfdwdq4kpw9i5g5i3klgpqb05xdnacbnpdxvmp"))))
    (properties `((upstream-name . "optinterv")))
    (build-system r-build-system)
    (propagated-inputs (list r-weights
                             r-rootsolve
                             r-pbapply
                             r-lattice
                             r-hmisc
                             r-distances
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optinterv")
    (synopsis "Optimal Intervention")
    (description
     "This package provides both parametric and non-parametric estimates of the
correlates of some desired outcome (e.g. test scores, income) using a new method
proposed by Danieli, Devi and Fryer (2019).  This method relaxes the assumption
that one can alter individual characteristics in any way the data suggest is
optimal, and so can be used anytime one wants to use observational data to
better optimize social experiments designed to increase some desired outcome.")
    (license license:gpl3)))

(define-public r-optimus
  (package
    (name "r-optimus")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimus" version))
              (sha256
               (base32
                "01njyjfrm6kjwx2qq41c0hsgxzydnrmr3538cpbfdn5i0z5blgyx"))))
    (properties `((upstream-name . "optimus")))
    (build-system r-build-system)
    (propagated-inputs (list r-ordinal r-mvabund))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mitchest/optimus/")
    (synopsis "Model Based Diagnostics for Multivariate Cluster Analysis")
    (description
     "Assessment and diagnostics for comparing competing clustering solutions, using
predictive models.  The main intended use is for comparing
clustering/classification solutions of ecological data (e.g. presence/absence,
counts, ordinal scores) to 1) find an optimal partitioning solution, 2) identify
characteristic species and 3) refine a classification by merging clusters that
increase predictive performance.  However, in a more general sense, this package
can do the above for any set of clustering solutions for i observations of j
variables.")
    (license license:gpl3)))

(define-public r-optimstrat
  (package
    (name "r-optimstrat")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimStrat" version))
              (sha256
               (base32
                "1jkwhgpw7nknd7h8c01z25x566bw2qb388i6g5nwcygxsshdgpri"))))
    (properties `((upstream-name . "optimStrat")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-mvtnorm r-cubature))
    (home-page "https://cran.r-project.org/package=optimStrat")
    (synopsis "Choosing the Sample Strategy")
    (description
     "Intended to assist in the choice of the sampling strategy to implement in a
survey.")
    (license license:gpl2)))

(define-public r-optimsimplex
  (package
    (name "r-optimsimplex")
    (version "1.0-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimsimplex" version))
              (sha256
               (base32
                "1q5hfbiq265q5im6wg78spaqsfj421hpzh8bz51zmi188h6xwnwr"))))
    (properties `((upstream-name . "optimsimplex")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimbase))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optimsimplex")
    (synopsis "R Port of the 'Scilab' Optimsimplex Module")
    (description
     "This package provides a building block for optimization algorithms based on a
simplex.  The optimsimplex package may be used in the following optimization
methods: the simplex method of Spendley et al. (1962)
<doi:10.1080/00401706.1962.10490033>, the method of Nelder and Mead (1965)
<doi:10.1093/comjnl/7.4.308>, Box's algorithm for constrained optimization
(1965) <doi:10.1093/comjnl/8.1.42>, the multi-dimensional search by Torczon
(1989) <https://www.cs.wm.edu/~va/research/thesis.pdf>, etc...")
    (license (license:fsdg-compatible "CeCILL-2"))))

(define-public r-optimr
  (package
    (name "r-optimr")
    (version "2019-12.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimr" version))
              (sha256
               (base32
                "003wz9r3xdi47ad22l4dkhp0dalknb2s9fp82yamjx7x1xbfvcbk"))))
    (properties `((upstream-name . "optimr")))
    (build-system r-build-system)
    (propagated-inputs (list r-setrng r-rvmmin r-rcgmin r-optextras r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optimr")
    (synopsis "Replacement and Extension of the 'optim' Function")
    (description
     "This package provides a test of replacement and extension of the optim()
function to unify and streamline optimization capabilities in R for smooth,
possibly box constrained functions of several or many parameters.  This version
has a reduced set of methods and is intended to be on CRAN.")
    (license license:gpl2)))

(define-public r-optimparallel
  (package
    (name "r-optimparallel")
    (version "1.0-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimParallel" version))
              (sha256
               (base32
                "178ayfaivkbxkghxbg97lx4gl27kxkmgaaw9y8q5206r4cncd6qg"))))
    (properties `((upstream-name . "optimParallel")))
    (build-system r-build-system)
    (home-page "https://github.com/florafauna/optimParallel-R")
    (synopsis "Parallel Version of the L-BFGS-B Optimization Method")
    (description
     "This package provides a parallel version of the L-BFGS-B method of optim().  The
main function of the package is optimParallel(), which has the same usage and
output as optim().  Using optimParallel() can significantly reduce the
optimization time.")
    (license license:gpl2+)))

(define-public r-optimos-prime
  (package
    (name "r-optimos-prime")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimos.prime" version))
              (sha256
               (base32
                "1a76gfzpd2s4gq15cd3frndak7wc6q3xqh9sllkk665031fx6z1h"))))
    (properties `((upstream-name . "optimos.prime")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse r-plotly r-ggplot2))
    (home-page "https://cran.r-project.org/package=optimos.prime")
    (synopsis
     "Optimos Prime Helps Calculate Autoecological Data for Biological Species")
    (description
     "Calculates autoecological data (optima and tolerance ranges) of a biological
species given an environmental matrix.  The package calculates by weighted
averaging, using the number of occurrences to adjust the tolerance assigned to
each taxon to estimate optima and tolerance range in cases where taxa have
unequal occurrences.  See the detailed methodology by Birks et al. (1990)
<doi:10.1098/rstb.1990.0062>, and a case example by Potapova and Charles (2003)
<doi:10.1046/j.1365-2427.2003.01080.x>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-optimlanduse
  (package
    (name "r-optimlanduse")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimLanduse" version))
              (sha256
               (base32
                "0n30si6znvcyncvzbcm2149dvpqdmawamb5raz2fg19jjkj5qpfl"))))
    (properties `((upstream-name . "optimLanduse")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-lpsolveapi r-dplyr))
    (home-page "https://github.com/Forest-Economics-Goettingen/optimLanduse/")
    (synopsis "Robust Land-Use Optimization")
    (description
     "Robust multi-criteria land-allocation optimization that explicitly accounts for
the uncertainty of the indicators in the objective function.  Solves the problem
of allocating scarce land to various land-use options with regard to multiple,
coequal indicators.  The method aims to find the land allocation that represents
the indicator composition with the best possible trade-off under uncertainty.
optimLanduse includes the actual optimization procedure as described by Knoke et
al. (2016) <doi:10.1038/ncomms11877> and the post-hoc calculation of the
portfolio performance as presented by Gosling et al. (2020)
<doi:10.1016/j.jenvman.2020.110248>.")
    (license license:expat)))

(define-public r-optimizer
  (package
    (name "r-optimizer")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimizeR" version))
              (sha256
               (base32
                "1laxj4x77ws3q1bvdb5vqx2i3fspqws65x5jfsfj73j4qlc04z56"))))
    (properties `((upstream-name . "optimizeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lifecycle))
    (home-page "https://github.com/loelschlaeger/optimizeR")
    (synopsis "Unified Framework for Numerical Optimizer")
    (description
     "This package provides a unified framework for numerical optimizer, particularly
for inputs and outputs.")
    (license license:gpl3+)))

(define-public r-optimization
  (package
    (name "r-optimization")
    (version "1.0-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimization" version))
              (sha256
               (base32
                "1pg9a78hhm0h4pfagj13r1dmynv714knhw2dxhzhcvlgk9inpam8"))))
    (properties `((upstream-name . "optimization")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-colorspace))
    (home-page "https://github.com/kaihusmann/optimization")
    (synopsis
     "Flexible Optimization of Complex Loss Functions with State and Parameter Space Constraints")
    (description
     "Flexible optimizer with numerous input specifications for detailed
parameterisation.  Designed for complex loss functions with state and parameter
space constraints.  Visualization tools for validation and analysis of the
convergence are included.")
    (license license:gpl2+)))

(define-public r-optimg
  (package
    (name "r-optimg")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimg" version))
              (sha256
               (base32
                "0fc7d3g5nxjjcbwh6v5m0ryhanw80v250j8m7j2gv4c9ql4g650d"))))
    (properties `((upstream-name . "optimg")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf))
    (home-page "https://github.com/vthorrf/optimg")
    (synopsis "General-Purpose Gradient-Based Optimization")
    (description
     "This package provides general purpose tools for helping users to implement
steepest gradient descent methods for function optimization; for details see
Ruder (2016) <arXiv:1609.04747v2>.  Currently, the Steepest 2-Groups Gradient
Descent and the Adaptive Moment Estimation (Adam) are the methods implemented.
Other methods will be implemented in the future.")
    (license license:gpl3)))

(define-public r-optimcheck
  (package
    (name "r-optimcheck")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimCheck" version))
              (sha256
               (base32
                "1qjkv1mfyn7sw0dkxxcdaqj85vl71cgffpf3k3mvzy0s8yhxjb4n"))))
    (properties `((upstream-name . "optimCheck")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlysy/optimCheck")
    (synopsis "Graphical and Numerical Checks for Mode-Finding Routines")
    (description
     "Tools for checking that the output of an optimization algorithm is indeed at a
local mode of the objective function.  This is accomplished graphically by
calculating all one-dimensional \"projection plots\" of the objective function,
i.e., varying each input variable one at a time with all other elements of the
potential solution being fixed.  The numerical values in these plots can be
readily extracted for the purpose of automated and systematic unit-testing of
optimization routines.")
    (license license:gpl3)))

(define-public r-optimbase
  (package
    (name "r-optimbase")
    (version "1.0-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimbase" version))
              (sha256
               (base32
                "0hdzbqr03jwy1vz3q9iw0kvii5p9g1vm4c3hs3jxszcj1rgrfm12"))))
    (properties `((upstream-name . "optimbase")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=optimbase")
    (synopsis "R Port of the 'Scilab' Optimbase Module")
    (description
     "This package provides a set of commands to manage an abstract optimization
method.  The goal is to provide a building block for a large class of
specialized optimization methods.  This package manages: the number of
variables, the minimum and maximum bounds, the number of non linear inequality
constraints, the cost function, the logging system, various termination
criteria, etc...")
    (license (license:fsdg-compatible "CeCILL-2"))))

(define-public r-optimaregion
  (package
    (name "r-optimaregion")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimaRegion" version))
              (sha256
               (base32
                "1bikc12a5v3q7f26r14pdfmnxpyqzxa94a10mx5g954km3a329ly"))))
    (properties `((upstream-name . "OptimaRegion")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-spam
                             r-rsm
                             r-rdsdp
                             r-rdpack
                             r-nloptr
                             r-mclust
                             r-magrittr
                             r-geometry
                             r-fields
                             r-depthproc
                             r-boot))
    (home-page "https://cran.r-project.org/package=OptimaRegion")
    (synopsis "Confidence Regions for Optima")
    (description
     "Computes confidence regions on the location of response surface optima.")
    (license license:gpl3)))

(define-public r-optimaltiming
  (package
    (name "r-optimaltiming")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimalTiming" version))
              (sha256
               (base32
                "1mchb7wdk1v56la30ivi40aq6zma64lrdb94d64d0s7x67m8315w"))))
    (properties `((upstream-name . "OptimalTiming")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-mstate))
    (home-page "https://cran.r-project.org/package=OptimalTiming")
    (synopsis "Optimal Timing Identification")
    (description
     "Identify the optimal timing for new treatment initiation during multiple state
disease transition, including multistate model fitting, simulation of mean
residual lifetime for a given transition state, and estimation of confidence
interval.  The method is referred to de Wreede, L., Fiocco, M., & Putter, H.
(2011) <doi:10.18637/jss.v038.i07>.")
    (license license:gpl2+)))

(define-public r-optimalthreshold
  (package
    (name "r-optimalthreshold")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimalThreshold" version))
              (sha256
               (base32
                "1m39q36p7i7z31b90awriq5jf9rfybyw5lj3m1w33v2ssipkzp1n"))))
    (properties `((upstream-name . "optimalThreshold")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags r-mgcv r-hdinterval r-coda r-ars))
    (home-page "https://cran.r-project.org/package=optimalThreshold")
    (synopsis "Bayesian Methods for Optimal Threshold Estimation")
    (description
     "This package provides functions to estimate the optimal threshold of diagnostic
markers or treatment selection markers.  The optimal threshold is the marker
value that maximizes the utility of the marker based-strategy (for diagnostic or
treatment selection) in a given population.  The utility function depends on the
type of marker (diagnostic or treatment selection), but always takes into
account the preferences of the patients or the physician in the decision
process.  For estimating the optimal threshold, ones must specify the
distributions of the marker in different groups (defined according to the type
of marker, diagnostic or treatment selection) and provides data to estimate the
parameters of these distributions.  Ones must also provide some features of the
target populations (disease prevalence or treatment efficacies) as well as the
preferences of patients or physicians.  The functions rely on Bayesian inference
which helps producing several indicators derived from the optimal threshold.
See Blangero, Y, Rabilloud, M, Ecochard, R, and Subtil, F (2019)
<doi:10.1177/0962280218821394> for the original article that describes the
estimation method for treatment selection markers and Subtil, F, and Rabilloud,
M (2019) <doi:10.1002/bimj.200900242> for diagnostic markers.")
    (license license:gpl2+)))

(define-public r-optimalsurrogate
  (package
    (name "r-optimalsurrogate")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimalSurrogate" version))
              (sha256
               (base32
                "1kw87h6im3s1xzj0va22w0av67s0qz59vmf36lkh2mi5x1mi7gws"))))
    (properties `((upstream-name . "OptimalSurrogate")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=OptimalSurrogate")
    (synopsis "Model Free Approach to Quantifying Surrogacy")
    (description
     "Identifies an optimal transformation of a surrogate marker such that the
proportion of treatment effect explained can be inferred based on the
transformation of the surrogate and nonparametrically estimates two model-free
quantities of this proportion.  Details are described in Wang et al (2020)
<doi:10.1093/biomet/asz065>.")
    (license license:gpl3)))

(define-public r-optimalrerandexpdesigns
  (package
    (name "r-optimalrerandexpdesigns")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimalRerandExpDesigns" version))
              (sha256
               (base32
                "033qwzglpzjk302dr19yak34j2k19k6vihd3vlj9c8xsiikmrfmj"))))
    (properties `((upstream-name . "OptimalRerandExpDesigns")))
    (build-system r-build-system)
    (propagated-inputs (list r-momentchi2 r-greedyexperimentaldesign r-ggplot2))
    (home-page "https://github.com/kapelner/OptimalRerandExpDesigns")
    (synopsis "Optimal Rerandomization Experimental Designs")
    (description
     "This is a tool to find the optimal rerandomization threshold in non-sequential
experiments.  We offer three procedures based on assumptions made on the
residuals distribution: (1) normality assumed (2) excess kurtosis assumed (3)
entire distribution assumed.  Illustrations are included.  Also included is a
routine to unbiasedly estimate Frobenius norms of variance-covariance matrices.
Details of the method can be found in \"Optimal Rerandomization via a Criterion
that Provides Insurance Against Failed Experiments\" Adam Kapelner, Abba M.
Krieger, Michael Sklar and David Azriel (2020) <arXiv:1905.03337>.")
    (license license:gpl3)))

(define-public r-optimall
  (package
    (name "r-optimall")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optimall" version))
              (sha256
               (base32
                "15cq4b50j39ahpx84g0wrg7gs9n36rx4ij2srm14zcjsmvnxbv9p"))))
    (properties `((upstream-name . "optimall")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rlang r-magrittr r-glue r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yangjasp/optimall")
    (synopsis "Allocate Samples Among Strata")
    (description
     "This package provides functions for the design process of survey sampling, with
specific tools for multi-wave and multi-phase designs.  Perform optimum
allocation using Neyman (1934) <doi:10.2307/2342192> or Wright (2012)
<doi:10.1080/00031305.2012.733679> allocation, split strata based on quantiles
or values of known variables, randomly select samples from strata, allocate
sampling waves iteratively, and organize a complex survey design.  Also includes
a Shiny application for observing the effects of different strata splits.")
    (license license:gpl3)))

(define-public r-optimaldesign
  (package
    (name "r-optimaldesign")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimalDesign" version))
              (sha256
               (base32
                "02vxxb25q7fl73y7zq0a89ra0s88wji4mrql7p88014p073lj2as"))))
    (properties `((upstream-name . "OptimalDesign")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl
                             r-quadprog
                             r-plyr
                             r-matrixstats
                             r-matrixcalc
                             r-matrix
                             r-lpsolve))
    (home-page "https://cran.r-project.org/package=OptimalDesign")
    (synopsis "Toolbox for Computing Efficient Designs of Experiments")
    (description
     "Algorithms for D-, A-, I-, and c-optimal designs.  Some of the functions in this
package require the gurobi software and its accompanying R package.  For their
installation, please follow the instructions at <https://www.gurobi.com> and the
file gurobi_inst.txt, respectively.")
    (license license:gpl3)))

(define-public r-optimalcutpoints
  (package
    (name "r-optimalcutpoints")
    (version "1.1-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptimalCutpoints" version))
              (sha256
               (base32
                "07lgh3maxvz8vmw3zd02bfy7yp4jn0krflnqpp5bax3zhy6kmmbi"))))
    (properties `((upstream-name . "OptimalCutpoints")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OptimalCutpoints")
    (synopsis "Computing Optimal Cutpoints in Diagnostic Tests")
    (description
     "Computes optimal cutpoints for diagnostic tests or continuous markers.  Various
approaches for selecting optimal cutoffs have been implemented, including
methods based on cost-benefit analysis and diagnostic test accuracy measures
(Sensitivity/Specificity, Predictive Values and Diagnostic Likelihood Ratios).
Numerical and graphical output for all methods is easily obtained.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-optim-functions
  (package
    (name "r-optim-functions")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optim.functions" version))
              (sha256
               (base32
                "1la3v8yd9cdichp3mka4x86hr9lynh6qfg7h9ab6cwijw6kzkn6g"))))
    (properties `((upstream-name . "optim.functions")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-randtoolbox r-lhs))
    (home-page "https://cran.r-project.org/package=optim.functions")
    (synopsis "Standard Benchmark Optimization Functions")
    (description
     "This package provides a set of standard benchmark optimization functions for R
and a common interface to sample them.")
    (license license:expat)))

(define-public r-optigrab
  (package
    (name "r-optigrab")
    (version "0.9.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optigrab" version))
              (sha256
               (base32
                "1c3q4kx8rkgpjsy0hy2w2dd9kv51avnw1ab82hzmjgngfnvaig0n"))))
    (properties `((upstream-name . "optigrab")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/decisionpatterns/optigrab")
    (synopsis "Command-Line Parsing for an R World")
    (description
     "Parse options from the command-line using a simple, clean syntax.  It requires
little or no specification and supports short and long options, GNU-, Java- or
Microsoft- style syntaxes, verb commands and more.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-optifunset
  (package
    (name "r-optifunset")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optifunset" version))
              (sha256
               (base32
                "18pvdl04ln1i0w30ljdb3k86j27zg2nvrn3ws54c1g6zg9haqhbg"))))
    (properties `((upstream-name . "optifunset")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=optifunset")
    (synopsis "Set Options if Unset")
    (description
     "This package provides a single function options.ifunset(...) is contained
herewith, which allows the user to set a global option ONLY if it is not already
set.  By this token, for package maintainers this function can be used in
preference to the standard options(...) function, making provision for THEIR end
user to place options(...) directives within their .Rprofile file, which will
not be overridden at the point when a package is loaded.")
    (license license:gpl2)))

(define-public r-opticut
  (package
    (name "r-opticut")
    (version "0.1-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opticut" version))
              (sha256
               (base32
                "1j479wa7mlp62c2y7shha1w7ybhfy8wvjfaz27kmwd1f61ma1g0l"))))
    (properties `((upstream-name . "opticut")))
    (build-system r-build-system)
    (propagated-inputs (list r-resourceselection
                             r-pscl
                             r-pbapply
                             r-mefa4
                             r-mass
                             r-betareg))
    (home-page "https://github.com/psolymos/opticut")
    (synopsis
     "Likelihood Based Optimal Partitioning and Indicator Species Analysis")
    (description
     "Likelihood based optimal partitioning and indicator species analysis.  Finding
the best binary partition for each species based on model selection, with the
possibility to take into account modifying/confounding variables as described in
Kemencei et al. (2014) <doi:10.1556/ComEc.15.2014.2.6>.  The package implements
binary and multi-level response models, various measures of uncertainty,
Lorenz-curve based thresholding, with native support for parallel computations.")
    (license license:gpl2)))

(define-public r-opticskxi
  (package
    (name "r-opticskxi")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opticskxi" version))
              (sha256
               (base32
                "1vdz5sgjgyh2nj034w87d2yxcbbg97f1b0vijlwzwjkrfz5knfhl"))))
    (properties `((upstream-name . "opticskxi")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=opticskxi")
    (synopsis "OPTICS K-Xi Density-Based Clustering")
    (description
     "This package provides a novel density-based cluster extraction method, OPTICS
k-Xi, and a framework to compare k-Xi models using distance-based metrics to
investigate datasets with unknown number of clusters.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-optholdoutsize
  (package
    (name "r-optholdoutsize")
    (version "0.1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptHoldoutSize" version))
              (sha256
               (base32
                "0ab0vvbg1nmpbbhq5a5nkwv7ap0fq4542l5da7g8qlwc23h6sfs5"))))
    (properties `((upstream-name . "OptHoldoutSize")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger r-mvtnorm r-mnormt r-mle-tools
                             r-matrixstats))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OptHoldoutSize")
    (synopsis
     "Estimation of Optimal Size for a Holdout Set for Updating a Predictive Score")
    (description
     "Predictive scores must be updated with care, because actions taken on the basis
of existing risk scores causes bias in risk estimates from the updated score.  A
holdout set is a straightforward way to manage this problem: a proportion of the
population is held-out from computation of the previous risk score.  This
package provides tools to estimate a size for this holdout set and associated
errors.  Comprehensive vignettes are included.  Please see: Haidar-Wehbe S,
Emerson SR, Aslett LJM, Liley J (2022) <arXiv:2202.06374> for details of
methods.")
    (license license:gpl3+)))

(define-public r-opthedging
  (package
    (name "r-opthedging")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptHedging" version))
              (sha256
               (base32
                "0g7qaf5abvbcqv2h1dciwn3gwpz084ryqjjk0yabdm4ym0y38ddm"))))
    (properties `((upstream-name . "OptHedging")))
    (build-system r-build-system)
    (home-page "http://www.r-project.org")
    (synopsis
     "Estimation of value and hedging strategy of call and put options")
    (description
     "Estimation of value and hedging strategy of call and put options, based on
optimal hedging and Monte Carlo method, from Chapter 3 of Statistical Methods
for Financial Engineering', by Bruno Remillard, CRC Press, (2013).")
    (license license:gpl2+)))

(define-public r-optgs
  (package
    (name "r-optgs")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptGS" version))
              (sha256
               (base32
                "1acwwjng5ri5vganv7b5pagp7524ifr0q8h1pbfb5g6z3x6w08kh"))))
    (properties `((upstream-name . "OptGS")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OptGS")
    (synopsis
     "Near-Optimal and Balanced Group-Sequential Designs for Clinical Trials with Continuous Outcomes")
    (description
     "This package provides functions to find near-optimal multi-stage designs for
continuous outcomes.")
    (license license:gpl2)))

(define-public r-optextras
  (package
    (name "r-optextras")
    (version "2019-12.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optextras" version))
              (sha256
               (base32
                "1sqkid6h13h8i8wzri26s828ycwlxlwpwxd85r8bw9h8hs1n602r"))))
    (properties `((upstream-name . "optextras")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=optextras")
    (synopsis "Tools to Support Optimization Possibly with Bounds and Masks")
    (description
     "Tools to assist in safely applying user generated objective and derivative
function to optimization programs.  These are primarily function minimization
methods with at most bounds and masks on the parameters.  Provides a way to
check the basic computation of objective functions that the user provides, along
with proposed gradient and Hessian functions, as well as to wrap such functions
to avoid failures when inadmissible parameters are provided.  Check bounds and
masks.  Check scaling or optimality conditions.  Perform an axial search to seek
lower points on the objective function surface.  Includes forward, central and
backward gradient approximation codes.")
    (license license:gpl2)))

(define-public r-optedr
  (package
    (name "r-optedr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optedr" version))
              (sha256
               (base32
                "0ywq5s3y30r0il2vsd99qgd8m7c1xsk59fgzz8zs5ips3xsjmnwg"))))
    (properties `((upstream-name . "optedr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyjs
                             r-shinydashboard
                             r-shinyalert
                             r-shiny
                             r-rlang
                             r-purrr
                             r-plotly
                             r-orthopolynom
                             r-nleqslv
                             r-magrittr
                             r-hrbrthemes
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-crayon
                             r-cli))
    (home-page "https://github.com/kezrael/optedr")
    (synopsis "Calculating Optimal and D-Augmented Designs")
    (description
     "Calculates D-, Ds-, A- and I-optimal designs for non-linear models, via an
implementation of the cocktail algorithm (Yu, 2011,
<doi:10.1007/s11222-010-9183-2>).  Compares designs via their efficiency, and
D-augments any design with a controlled efficiency.  An efficient rounding
function has been provided to transform approximate designs to exact designs.")
    (license license:gpl3)))

(define-public r-optcirclust
  (package
    (name "r-optcirclust")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OptCirClust" version))
              (sha256
               (base32
                "0g34kn2gmvy9r4ph0vbssc9gl8bcpw6d72b8zpf38iml4zh52b0n"))))
    (properties `((upstream-name . "OptCirClust")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-rdpack r-rcpp r-plotrix
                             r-ckmeans-1d-dp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OptCirClust")
    (synopsis
     "Circular, Periodic, or Framed Data Clustering: Fast, Optimal, and Reproducible")
    (description
     "Fast, optimal, and reproducible clustering algorithms for circular, periodic, or
framed data.  The algorithms introduced here are based on a core algorithm for
optimal framed clustering the authors have developed (Debnath & Song 2021)
<doi:10.1109/TCBB.2021.3077573>.  The runtime of these algorithms is O(K N log^2
N), where K is the number of clusters and N is the number of circular data
points.  On a desktop computer using a single processor core, millions of data
points can be grouped into a few clusters within seconds.  One can apply the
algorithms to characterize events along circular DNA molecules, circular RNA
molecules, and circular genomes of bacteria, chloroplast, and mitochondria.  One
can also cluster climate data along any given longitude or latitude.  Periodic
data clustering can be formulated as circular clustering.  The algorithms offer
a general high-performance solution to circular, periodic, or framed data
clustering.")
    (license license:lgpl3+)))

(define-public r-optbiomarker
  (package
    (name "r-optbiomarker")
    (version "1.0-28")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optBiomarker" version))
              (sha256
               (base32
                "10i9ir0056qxyiayg10v6v25m1b94m1wd7c8ssigiqjhjncpddw5"))))
    (properties `((upstream-name . "optBiomarker")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpanel
                             r-rgl
                             r-randomforest
                             r-msm
                             r-matrix
                             r-mass
                             r-ipred
                             r-e1071))
    (home-page "https://cran.r-project.org/package=optBiomarker")
    (synopsis
     "Estimation of Optimal Number of Biomarkers for Two-Group Microarray Based Classifications at a Given Error Tolerance Level for Various Classification Rules")
    (description
     "Estimates optimal number of biomarkers for two-group classification based on
microarray data.")
    (license license:gpl2+)))

(define-public r-optbin
  (package
    (name "r-optbin")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optbin" version))
              (sha256
               (base32
                "08v8dn3jn75p1f04lc963gasyszjf57j7kajwpqv4w20lwjsw17w"))))
    (properties `((upstream-name . "optbin")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=optbin")
    (synopsis "Optimal Binning of Data")
    (description
     "Defines thresholds for breaking data into a number of discrete levels,
minimizing the (mean) squared error within all bins.")
    (license license:bsd-3)))

(define-public r-optbdmaeat
  (package
    (name "r-optbdmaeat")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "optbdmaeAT" version))
              (sha256
               (base32
                "1y1mvcyjihpj1wgjmifhmd10717wr1srp7h87azs4gfypgsiqchn"))))
    (properties `((upstream-name . "optbdmaeAT")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass r-igraph))
    (home-page "https://cran.r-project.org/package=optbdmaeAT")
    (synopsis
     "Optimal Block Designs for Two-Colour cDNA Microarray Experiments")
    (description
     "Computes A-, MV-, D- and E-optimal or near-optimal block designs for two-colour
cDNA microarray experiments using the linear fixed effects and mixed effects
models where the interest is in a comparison of all possible elementary
treatment contrasts.  The algorithms used in this package are based on the
treatment exchange and array exchange algorithms of Debusho, Gemechu and Haines
(2016, unpublished).  The package also provides an optional method of using the
graphical user interface (GUI) R package tcltk to ensure that it is user
friendly.")
    (license license:gpl2)))

(define-public r-opt5pl
  (package
    (name "r-opt5pl")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Opt5PL" version))
              (sha256
               (base32
                "0v3ibfzmkfnkhxylhaqcd3yqygsk7027ga12vb6gj4h4zcccf17f"))))
    (properties `((upstream-name . "Opt5PL")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-matrixcalc))
    (home-page "https://cran.r-project.org/package=Opt5PL")
    (synopsis "Optimal Designs for the 5-Parameter Logistic Model")
    (description
     "Obtain and evaluate various optimal designs for the 3, 4, and 5-parameter
logistic models.  The optimal designs are obtained based on the numerical
algorithm in Hyun, Wong, Yang (2018) <doi:10.18637/jss.v083.i05>.")
    (license license:gpl2)))

(define-public r-oppr
  (package
    (name "r-oppr")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oppr" version))
              (sha256
               (base32
                "1kyzrpr09fmx7rhbgwy5d1s8ggl7avcrs4vjb9s6m03w756zbb3a"))))
    (properties `((upstream-name . "oppr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-viridislite
                             r-uuid
                             r-tidytree
                             r-tibble
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-proto
                             r-matrix
                             r-magrittr
                             r-lpsolveapi
                             r-ggplot2
                             r-cli
                             r-assertthat
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://prioritizr.github.io/oppr/")
    (synopsis "Optimal Project Prioritization")
    (description
     "This package provides a decision support tool for prioritizing conservation
projects.  Prioritizations can be developed by maximizing expected feature
richness, expected phylogenetic diversity, the number of features that meet
persistence targets, or identifying a set of projects that meet persistence
targets for minimal cost.  Constraints (e.g. lock in specific actions) and
feature weights can also be specified to further customize prioritizations.
After defining a project prioritization problem, solutions can be obtained using
exact algorithms, heuristic algorithms, or random processes.  In particular, it
is recommended to install the Gurobi optimizer (available from
<https://www.gurobi.com>) because it can identify optimal solutions very
quickly.  Finally, methods are provided for comparing different prioritizations
and evaluating their benefits.  For more information, see Hanson et al. (2019)
<doi:10.1111/2041-210X.13264>.")
    (license license:gpl3)))

(define-public r-opportunistic
  (package
    (name "r-opportunistic")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Opportunistic" version))
              (sha256
               (base32
                "0kaj11ziij1v65l972x4kbr7vzkx4dwa27ymabiip4dg57a976wr"))))
    (properties `((upstream-name . "Opportunistic")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Opportunistic")
    (synopsis
     "Routing Distribution, Broadcasts, Transmissions and Receptions in an Opportunistic Network")
    (description
     "Computes the routing distribution, the expectation of the number of broadcasts,
transmissions and receptions considering an Opportunistic transport model.  It
provides theoretical results and also estimated values based on Monte Carlo
simulations.")
    (license license:gpl2+)))

(define-public r-opitools
  (package
    (name "r-opitools")
    (version "1.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opitools" version))
              (sha256
               (base32
                "1w5s78dxz03asxc46mn5vy9y21dr6km12ms563cgcaf9g9rw9dqc"))))
    (properties `((upstream-name . "opitools")))
    (build-system r-build-system)
    (propagated-inputs (list r-wordcloud2
                             r-tm
                             r-tidytext
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-likert
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MAnalytics/opitools")
    (synopsis "Analyzing the Opinions in a Big Text Document")
    (description
     "Designed for performing impact analysis of opinions in a digital text document
(DTD).  The package allows a user to assess the extent to which a theme or
subject within a document impacts the overall opinion expressed in the document.
 The package can be applied to a wide range of opinion-based DTD, including
commentaries on social media platforms (such as Facebook', Twitter and
Youtube'), online products reviews, and so on.  The utility of opitools was
originally demonstrated in Adepeju and Jimoh (2021) <doi:10.31235/osf.io/c32qh>
in the assessment of COVID-19 impacts on neighbourhood policing using Twitter
data.  Further examples can be found in the vignette of the package.")
    (license license:gpl3)))

(define-public r-opi
  (package
    (name "r-opi")
    (version "2.10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OPI" version))
              (sha256
               (base32
                "0yzl3s0bkygwh1mg2fshf370k7hr0iw091k1jpwf92fvym1a68ia"))))
    (properties `((upstream-name . "OPI")))
    (build-system r-build-system)
    (home-page "https://people.eng.unimelb.edu.au/aturpin/opi/index.html")
    (synopsis "Open Perimetry Interface")
    (description
     "Implementation of the Open Perimetry Interface (OPI) for simulating and
controlling visual field machines using R. The OPI is a standard for interfacing
with visual field testing machines (perimeters) first started as an open source
project with support of Haag-Streit in 2010.  It specifies basic functions that
allow many visual field tests to be constructed.  As of February 2022 it is
fully implemented on the Haag-Streit Octopus 900 with partial implementations on
the Centervue Compass, Kowa AP 7000, Android phones and the CrewT IMO. It also
has a cousin: the R package visualFields', which has tools for analysing and
manipulating visual field data.")
    (license license:gpl3)))

(define-public r-opgmmassessment
  (package
    (name "r-opgmmassessment")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opGMMassessment" version))
              (sha256
               (base32
                "0b57hkd7h0l5xdcg196dc2la67aslrrg30qzhaj33nirgy8cig81"))))
    (properties `((upstream-name . "opGMMassessment")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-nbclust
                             r-multimode
                             r-mixtools
                             r-mixak
                             r-mclust
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-distributionoptimization
                             r-datavisualizations
                             r-clusterr
                             r-cluster
                             r-catools
                             r-adaptgauss))
    (home-page "https://cran.r-project.org/package=opGMMassessment")
    (synopsis "Optimized Automated Gaussian Mixture Assessment")
    (description
     "Necessary functions for optimized automated evaluation of the number and
parameters of Gaussian mixtures in one-dimensional data.  Various methods are
available for parameter estimation and for determining the number of modes in
the mixture.")
    (license license:gpl3)))

(define-public r-operators
  (package
    (name "r-operators")
    (version "0.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "operators" version))
              (sha256
               (base32
                "0zgcv2q46qyqv4dhbd33s4044zjw38w8dqfpzs0c1lxjpkil3dnx"))))
    (properties `((upstream-name . "operators")))
    (build-system r-build-system)
    (home-page "https://github.com/romainfrancois/operators")
    (synopsis "Additional Binary Operators")
    (description
     "This package provides a set of binary operators for common tasks such as regex
manipulation.")
    (license license:expat)))

(define-public r-operator-tools
  (package
    (name "r-operator-tools")
    (version "1.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "operator.tools" version))
              (sha256
               (base32
                "1v4dg7xhz24dnp0zxn815x1405ig64ibii6y40la1gvmzcc41dz5"))))
    (properties `((upstream-name . "operator.tools")))
    (build-system r-build-system)
    (home-page "https://github.com/decisionpatterns/operator.tools")
    (synopsis "Utilities for Working with R's Operators")
    (description
     "This package provides a collection of utilities that allow programming with R's
operators.  Routines allow classifying operators, translating to and from an
operator and its underlying function, and inverting some operators (e.g.
comparison operators), etc.  All methods can be extended to custom infix
operators.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-opera
  (package
    (name "r-opera")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opera" version))
              (sha256
               (base32
                "09gh0c74y3n25f9p1rya8ybql5mfaqkcnr8i8wwwzfm67vqdfrnh"))))
    (properties `((upstream-name . "opera")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack
                             r-rcppeigen
                             r-rcpp
                             r-ramcharts
                             r-piper
                             r-htmlwidgets
                             r-htmltools
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "http://pierre.gaillard.me/opera.html")
    (synopsis "Online Prediction by Expert Aggregation")
    (description
     "Misc methods to form online predictions, for regression-oriented time-series, by
combining a finite set of forecasts provided by the user.  See Cesa-Bianchi and
Lugosi (2006) <doi:10.1017/CBO9780511546921> for an overview.")
    (license license:lgpl2.0+)))

(define-public r-openxlsx2
  (package
    (name "r-openxlsx2")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openxlsx2" version))
              (sha256
               (base32
                "1hxz98nn09y86whx2z0dr0hxgg7cz8h10jz75ri4xpgcmlfxhhw6"))))
    (properties `((upstream-name . "openxlsx2")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip r-stringi r-rcpp r-r6 r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JanMarvin/openxlsx2")
    (synopsis "Read, Write and Edit 'xlsx' Files")
    (description
     "Simplifies the creation of xlsx files by providing a high level interface to
writing, styling and editing worksheets.")
    (license license:expat)))

(define-public r-openva
  (package
    (name "r-openva")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openVA" version))
              (sha256
               (base32
                "0j4lz66wcx20n0sdjrp06a6zwcz8jvcihmdaj1jr1rnrb5sags0z"))))
    (properties `((upstream-name . "openVA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tariff
                             r-interva5
                             r-interva4
                             r-insilicova
                             r-ggplot2
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/verbal-autopsy-software/openVA")
    (synopsis "Automated Method for Verbal Autopsy")
    (description
     "This package implements multiple existing open-source algorithms for coding
cause of death from verbal autopsies.  The methods implemented include InterVA4
by Byass et al (2012) <doi:10.3402/gha.v5i0.19281>, InterVA5 by Byass at al
(2019) <doi:10.1186/s12916-019-1333-6>, InSilicoVA by McCormick et al (2016)
<doi:10.1080/01621459.2016.1152191>, NBC by Miasnikof et al (2015)
<doi:10.1186/s12916-015-0521-2>, and a replication of Tariff method by James et
al (2011) <doi:10.1186/1478-7954-9-31> and Serina, et al. (2015)
<doi:10.1186/s12916-015-0527-9>.  It also provides tools for data manipulation
tasks commonly used in Verbal Autopsy analysis and implements easy graphical
visualization of individual and population level statistics.  The NBC method is
implemented by the nbc4va package that can be installed from
<https://github.com/rrwen/nbc4va>.  Note that this package was not developed by
authors affiliated with the Institute for Health Metrics and Evaluation and thus
unintentional discrepancies may exist in the implementation of the Tariff
method.")
    (license license:gpl2)))

(define-public r-opentripplanner
  (package
    (name "r-opentripplanner")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opentripplanner" version))
              (sha256
               (base32
                "1q0szrbgcjzc7ny08gilv2q0v1x81i626mzsahkii79qqb7capr1"))))
    (properties `((upstream-name . "opentripplanner")))
    (build-system r-build-system)
    (propagated-inputs (list r-sfheaders
                             r-sf
                             r-rjson
                             r-pbapply
                             r-lubridate
                             r-googlepolylines
                             r-geodist
                             r-data-table
                             r-curl
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/opentripplanner")
    (synopsis "Setup and connect to 'OpenTripPlanner'")
    (description
     "Setup and connect to OpenTripPlanner (OTP) <http://www.opentripplanner.org/>.
OTP is an open source platform for multi-modal and multi-agency journey planning
written in Java'.  The package allows you to manage a local version or connect
to remote OTP server to find walking, cycling, driving, or transit routes.  This
package has been peer-reviewed by rOpenSci (v.  0.2.0.0).")
    (license license:gpl3)))

(define-public r-opentreechronograms
  (package
    (name "r-opentreechronograms")
    (version "2022.1.28")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenTreeChronograms" version))
              (sha256
               (base32
                "0si5aaami2x705fmzp9357h1nwhdm3sb829cbvf7zfyicqyaihkg"))))
    (properties `((upstream-name . "OpenTreeChronograms")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-treebase
                             r-taxize
                             r-stringr
                             r-rotl
                             r-plyr
                             r-paleotree
                             r-knitcitations
                             r-geiger
                             r-ape))
    (home-page "https://cran.r-project.org/package=OpenTreeChronograms")
    (synopsis "Open Tree of Life Chronograms")
    (description
     "Chronogram database constructed from Open Tree of Life's phylogenetic store.")
    (license license:gpl2+)))

(define-public r-opentimsr
  (package
    (name "r-opentimsr")
    (version "1.0.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opentimsr" version))
              (sha256
               (base32
                "0m4xp70cq4h76r4qk7krn5p9w3xv44z5lrkpys7kbvxr38g5y0il"))))
    (properties `((upstream-name . "opentimsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-rcpp r-dbi))
    (home-page "https://github.com/michalsta/opentims")
    (synopsis "An Open-Source Loader for Bruker's timsTOF Data Files")
    (description
     "This package provides a free, open-source package designed for handling .tdf
data files produced by Bruker's timsTOF mass spectrometers.  Fast, free,
crossplatform, with no reading through EULAs or messing with binary .dll files
involved.")
    (license license:gpl3)))

(define-public r-openstreetmap
  (package
    (name "r-openstreetmap")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenStreetMap" version))
              (sha256
               (base32
                "0kyv14lxi86n6aba4jqmsfpmn075k0ki34q6gkkvhq8yv48wg831"))))
    (properties `((upstream-name . "OpenStreetMap")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-sp r-rjava r-rgdal r-raster r-ggplot2))
    (home-page "https://cran.r-project.org/package=OpenStreetMap")
    (synopsis "Access to Open Street Map Raster Images")
    (description
     "Accesses high resolution raster maps using the OpenStreetMap protocol.  Dozens
of road, satellite, and topographic map servers are directly supported,
including Apple, Mapnik, Bing, and stamen.  Additionally raster maps may be
constructed using custom tile servers.  Maps can be plotted using either base
graphics, or ggplot2.  This package is not affiliated with the OpenStreetMap.org
mapping project.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file LICENCE")))))

(define-public r-openstars
  (package
    (name "r-openstars")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openSTARS" version))
              (sha256
               (base32
                "1xpba5bagq16n1k94izshdizqyx99mad1nx2w77ljznmx5qrpqa6"))))
    (properties `((upstream-name . "openSTARS")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssn
                             r-sp
                             r-rgrass7
                             r-rgdal
                             r-raster
                             r-progress
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/MiKatt/openSTARS")
    (synopsis "An Open Source Implementation of the 'ArcGIS' Toolbox 'STARS'")
    (description
     "An open source implementation of the STARS toolbox (Peterson & Ver Hoef, 2014,
<doi:10.18637/jss.v056.i02>) using R and GRASS GIS'.  It prepares the *.ssn
object needed for the SSN package.  A Digital Elevation Model (DEM) is used to
derive stream networks (in contrast to STARS that can clean an existing stream
network).")
    (license license:expat)))

(define-public r-openspecy
  (package
    (name "r-openspecy")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenSpecy" version))
              (sha256
               (base32
                "1m163jyzad6i70d7h98rwdziq9swilj4kwr1mhis2nk8k30ksk4v"))))
    (properties `((upstream-name . "OpenSpecy")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal
                             r-shiny
                             r-rlang
                             r-osfr
                             r-hyperspec
                             r-hexview
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wincowgerDEV/OpenSpecy-package/")
    (synopsis "Analyze, Process, Identify, and Share Raman and (FT)IR Spectra")
    (description
     "Raman and (FT)IR spectral analysis tool for plastic particles and other
environmental samples (Cowger et al.  2021, <doi:10.1021/acs.analchem.1c00123>).
 Supported features include reading spectral data files (.asp, .csv, .jdx, .spc,
.spa, .0), Savitzky-Golay smoothing of spectral intensities with
smooth_intens(), correcting background noise with subtr_bg() in accordance with
Zhao et al. (2007) <doi:10.1366/000370207782597003>, and identifying spectra
using an onboard reference library (Cowger et al.  2020,
<doi:10.1177/0003702820929064>).  Analyzed spectra can be shared with the Open
Specy community.  A Shiny app is available via run_app() or online at
<https://openanalysis.org/openspecy/>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-openskies
  (package
    (name "r-openskies")
    (version "1.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openSkies" version))
              (sha256
               (base32
                "03nlbmxp36z82myrbamwl1zngsnfxfw80niisapv53n605p4lrg1"))))
    (properties `((upstream-name . "openSkies")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-ssh
                             r-r6
                             r-magick
                             r-httr
                             r-ggplot2
                             r-ggmap
                             r-dbscan
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=openSkies")
    (synopsis "Retrieval, Analysis and Visualization of Air Traffic Data")
    (description
     "This package provides functionalities and data structures to retrieve, analyze
and visualize aviation data.  It includes a client interface to the OpenSky API
<https://opensky-network.org>.  It allows retrieval of flight information, as
well as aircraft state vectors.")
    (license (license:fsdg-compatible "CC BY-NC 4.0"))))

(define-public r-openrepgrid-ic
  (package
    (name "r-openrepgrid-ic")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenRepGrid.ic" version))
              (sha256
               (base32
                "1h6n44szm5fa04fsnq0yvqp3m8djxsh5v3y409hzjgvb90vjzmyz"))))
    (properties `((upstream-name . "OpenRepGrid.ic")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyverse
                             r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinyfeedback
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shinybs
                             r-shiny
                             r-scales
                             r-rintrojs
                             r-reshape2
                             r-rcolorbrewer
                             r-openxlsx
                             r-magrittr
                             r-igraph
                             r-formattable
                             r-dt
                             r-dplyr))
    (home-page "https://github.com/markheckmann/OpenRepGrid.ic")
    (synopsis "Interpretive Clustering for Repertory Grids")
    (description
     "Shiny UI to identify cliques of related constructs in repertory grid data.  See
Burr, King, & Heckmann (2020) <doi:10.1080/14780887.2020.1794088> for a
description of the interpretive clustering (IC) method.")
    (license license:expat)))

(define-public r-openrepgrid
  (package
    (name "r-openrepgrid")
    (version "0.1.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenRepGrid" version))
              (sha256
               (base32
                "02p9b2y99z9yrrm2pl86p0yqwah0yjic2wdcd4k0mhccimmmkaip"))))
    (properties `((upstream-name . "OpenRepGrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-rgl
                             r-pvclust
                             r-psych
                             r-plyr
                             r-openxlsx
                             r-gparotation
                             r-colorspace
                             r-abind))
    (home-page "http://openrepgrid.org")
    (synopsis "Tools to Analyze Repertory Grid Data")
    (description
     "Analyze repertory grids, a qualitative-quantitative data collection technique
devised by George A. Kelly in the 1950s.  Today, grids are used across various
domains ranging from clinical psychology to marketing.  The package contains
functions to quantitatively analyze and visualize repertory grid data (see e.g.
Bell, 2005, <doi:10.1002/0470013370.ch9>; Fransella, Bell, & Bannister, 2004,
ISBN: 978-0-470-09080-0).")
    (license license:gpl2+)))

(define-public r-opennlpdata
  (package
    (name "r-opennlpdata")
    (version "1.5.3-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openNLPdata" version))
              (sha256
               (base32
                "0j45rh9qki8r5wavaysrfsvb3wc3x8jjicqff2yi0r34j58xvlv8"))))
    (properties `((upstream-name . "openNLPdata")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava))
    (home-page "https://opennlp.apache.org/")
    (synopsis "Apache OpenNLP Jars and Basic English Language Models")
    (description "Apache OpenNLP jars and basic English language models.")
    (license license:gpl3)))

(define-public r-opennlp
  (package
    (name "r-opennlp")
    (version "0.2-7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openNLP" version))
              (sha256
               (base32
                "15yl74wv6w1d2wwpn1xlkkpam3c62977gnqal651fv623v29gg35"))))
    (properties `((upstream-name . "openNLP")))
    (build-system r-build-system)
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-opennlpdata r-nlp))
    (home-page "https://cran.r-project.org/package=openNLP")
    (synopsis "Apache OpenNLP Tools Interface")
    (description
     "An interface to the Apache OpenNLP tools (version 1.5.3).  The Apache OpenNLP
library is a machine learning based toolkit for the processing of natural
language text written in Java.  It supports the most common NLP tasks, such as
tokenization, sentence segmentation, part-of-speech tagging, named entity
extraction, chunking, parsing, and coreference resolution.  See
<https://opennlp.apache.org/> for more information.")
    (license license:gpl3)))

(define-public r-openmse
  (package
    (name "r-openmse")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openMSE" version))
              (sha256
               (base32
                "15jp9hybnkwmnkcqawhpd3y3imq6wfxxzxzh90yx4cvzky36hf89"))))
    (properties `((upstream-name . "openMSE")))
    (build-system r-build-system)
    (propagated-inputs (list r-samtool r-msetool r-dlmtool r-crayon))
    (home-page "https://openmse.com/")
    (synopsis "Easily Install and Load the 'openMSE' Packages")
    (description
     "The openMSE package is designed for building operating models, doing simulation
modelling and management strategy evaluation for fisheries.  openMSE is an
umbrella package for the MSEtool (Management Strategy Evaluation toolkit),
DLMtool (Data-Limited Methods toolkit), and SAMtool (Stock Assessment Methods
toolkit) packages.  By loading and installing openMSE', users have access to the
full functionality contained within these packages.  Learn more about openMSE at
<https://openmse.com/>.")
    (license license:gpl3)))

(define-public r-openml
  (package
    (name "r-openml")
    (version "1.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenML" version))
              (sha256
               (base32
                "0ij4mnbfkckidv9f414fclyhrbbkgmpz5zsjiqa3zlckr3pfaxg7"))))
    (properties `((upstream-name . "OpenML")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringi
                             r-memoise
                             r-jsonlite
                             r-httr
                             r-digest
                             r-data-table
                             r-curl
                             r-checkmate
                             r-bbmisc
                             r-backports))
    (home-page "https://github.com/openml/openml-r")
    (synopsis "Open Machine Learning and Open Data Platform")
    (description
     "We provide an R interface to OpenML.org which is an online machine learning
platform where researchers can access open data, download and upload data sets,
share their machine learning tasks and experiments and organize them online to
work and collaborate with other researchers.  The R interface allows to query
for data sets with specific properties, and allows the downloading and uploading
of data sets, tasks, flows and runs.  See <https://www.openml.org/guide/api> for
more information.")
    (license license:bsd-3)))

(define-public r-openmetrics
  (package
    (name "r-openmetrics")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openmetrics" version))
              (sha256
               (base32
                "0bcljsirlkxn0h87j2g2jb6spcik84h7nms06mcj40ckx188yr82"))))
    (properties `((upstream-name . "openmetrics")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (home-page "https://github.com/atheriel/openmetrics")
    (synopsis "'Prometheus' Client for R Using the 'OpenMetrics' Format")
    (description
     "This package provides a client for the open-source monitoring and alerting
toolkit, Prometheus', that emits metrics in the OpenMetrics format.  Allows
users to automatically instrument Plumber and Shiny applications, collect
standard process metrics, as well as define custom counter, gauge, and histogram
metrics of their own.")
    (license license:expat)))

(define-public r-openland
  (package
    (name "r-openland")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenLand" version))
              (sha256
               (base32
                "02d1dflcbjvm9hgvsm5gpc3s0n0njf4w3224yqk9nc0i49nw01fi"))))
    (properties `((upstream-name . "OpenLand")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-raster
                             r-networkd3
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/reginalexavier/OpenLand")
    (synopsis "Quantitative Analysis and Visualization of LUCC")
    (description
     "Tools for the analysis of land use and cover (LUC) time series.  It includes
support for loading spatiotemporal raster data and synthesized spatial plotting.
 Several LUC change (LUCC) metrics in regular or irregular time intervals can be
extracted and visualized through one- and multistep sankey and chord diagrams.
A complete intensity analysis according to Aldwaik and Pontius (2012)
<doi:10.1016/j.landurbplan.2012.02.010> is implemented, including tools for the
generation of standardized multilevel output graphics.")
    (license license:gpl3)))

(define-public r-openintro
  (package
    (name "r-openintro")
    (version "2.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openintro" version))
              (sha256
               (base32
                "1svvlhdnv8dvqwphsn83asfd5xzvvar2bz334aqndqx76dv9j88j"))))
    (properties `((upstream-name . "openintro")))
    (build-system r-build-system)
    (propagated-inputs (list r-usdata
                             r-tibble
                             r-rmarkdown
                             r-readr
                             r-ggplot2
                             r-cherryblossom
                             r-airports))
    (native-inputs (list r-knitr))
    (home-page "http://openintrostat.github.io/openintro/")
    (synopsis
     "Data Sets and Supplemental Functions from 'OpenIntro' Textbooks and Labs")
    (description
     "Supplemental functions and data for OpenIntro resources, which includes
open-source textbooks and resources for introductory statistics
(<https://www.openintro.org/>).  The package contains data sets used in our
open-source textbooks along with custom plotting functions for reproducing book
figures.  Note that many functions and examples include color transparency; some
plotting elements may not show up properly (or at all) when run in some versions
of Windows operating system.")
    (license license:gpl3)))

(define-public r-openimager
  (package
    (name "r-openimager")
    (version "1.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenImageR" version))
              (sha256
               (base32
                "0a8n5kjrq1l0wfyi95ak3gl0z8m2nfg5wa0gj7fm8vwikqx448kq"))))
    (properties `((upstream-name . "OpenImageR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiff
                             r-shiny
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-png
                             r-lifecycle
                             r-jpeg))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/OpenImageR")
    (synopsis "An Image Processing Toolkit")
    (description
     "Incorporates functions for image preprocessing, filtering and image recognition.
 The package takes advantage of RcppArmadillo to speed up computationally
intensive functions.  The histogram of oriented gradients descriptor is a
modification of the findHOGFeatures function of the SimpleCV computer vision
platform, the average_hash(), dhash() and phash() functions are based on the
ImageHash python library.  The Gabor Feature Extraction functions are based on
Matlab code of the paper, \"CloudID: Trustworthy cloud-based and cross-enterprise
biometric identification\" by M. Haghighat, S. Zonouz, M. Abdel-Mottaleb, Expert
Systems with Applications, vol.  42, no.  21, pp.  7905-7916, 2015,
<doi:10.1016/j.eswa.2015.06.025>.  The SLIC and SLICO superpixel algorithms were
explained in detail in (i) \"SLIC Superpixels Compared to State-of-the-art
Superpixel Methods\", Radhakrishna Achanta, Appu Shaji, Kevin Smith, Aurelien
Lucchi, Pascal Fua, and Sabine Suesstrunk, IEEE Transactions on Pattern Analysis
and Machine Intelligence, vol.  34, num.  11, p.  2274-2282, May 2012,
<doi:10.1109/TPAMI.2012.120> and (ii) \"SLIC Superpixels\", Radhakrishna Achanta,
Appu Shaji, Kevin Smith, Aurelien Lucchi, Pascal Fua, and Sabine Suesstrunk,
EPFL Technical Report no.  149300, June 2010.")
    (license license:gpl3)))

(define-public r-openeo
  (package
    (name "r-openeo")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openeo" version))
              (sha256
               (base32
                "10lmkga3pm6h0sv0jccazi3xkda3fzqfk5nv5xf8hkm3g3kccs40"))))
    (properties `((upstream-name . "openeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-rlang
                             r-r6
                             r-lubridate
                             r-jsonlite
                             r-irdisplay
                             r-httr2
                             r-htmltools
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Open-EO/openeo-r-client")
    (synopsis "Client Interface for 'openEO' Servers")
    (description
     "Access data and processing functionalities of openEO compliant back-ends in R.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-openebgm
  (package
    (name "r-openebgm")
    (version "0.8.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openEBGM" version))
              (sha256
               (base32
                "120lp7fy6abj6f8g6naq4018d0dfzz6bq3dlh0xdhd4iclb7pplv"))))
    (properties `((upstream-name . "openEBGM")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-data-table))
    (native-inputs (list r-knitr))
    (home-page
     "https://journal.r-project.org/archive/2017/RJ-2017-063/index.html")
    (synopsis "EBGM Disproportionality Scores for Adverse Event Data Mining")
    (description
     "An implementation of DuMouchel's (1999) <doi:10.1080/00031305.1999.10474456>
Bayesian data mining method for the market basket problem.  Calculates Empirical
Bayes Geometric Mean (EBGM) and quantile scores from the posterior distribution
using the Gamma-Poisson Shrinker (GPS) model to find unusually large cell counts
in large, sparse contingency tables.  Can be used to find unusually high
reporting rates of adverse events associated with products.  In general, can be
used to mine any database where the co-occurrence of two variables or items is
of interest.  Also calculates relative and proportional reporting ratios.
Builds on the work of the PhViD package, from which much of the code is derived.
 Some of the added features include stratification to adjust for confounding
variables and data squashing to improve computational efficiency.  Now includes
an implementation of the EM algorithm for hyperparameter estimation loosely
derived from the mederrRank package.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-opendotar
  (package
    (name "r-opendotar")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opendotaR" version))
              (sha256
               (base32
                "17cygsw3nkg6zincfrcdh1509rlz3n5zrv9wvv7mjngm61sn79nf"))))
    (properties `((upstream-name . "opendotaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate r-jsonlite r-dplyr))
    (home-page "https://cran.r-project.org/package=opendotaR")
    (synopsis "Interface for OpenDota API")
    (description
     "Enables the usage of the OpenDota API from <https://www.opendota.com/>, get game
lists, and download JSON's of parsed replays from the OpenDota API. Also has
functionality to execute own code to extract the specific parts of the JSON
file.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-opendatatoronto
  (package
    (name "r-opendatatoronto")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opendatatoronto" version))
              (sha256
               (base32
                "1fiviazs0ydxvmsqaayhwnxf4wl4sx1psn8i5mpis7218d9ihagy"))))
    (properties `((upstream-name . "opendatatoronto")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-sf
                             r-readxl
                             r-magrittr
                             r-curl
                             r-ckanr))
    (native-inputs (list r-knitr))
    (home-page "https://sharlagelfand.github.io/opendatatoronto/")
    (synopsis "Access the City of Toronto Open Data Portal")
    (description "Access data from the \"City of Toronto Open Data Portal\"
(<https://open.toronto.ca>) directly from R.")
    (license license:expat)))

(define-public r-opencv
  (package
    (name "r-opencv")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opencv" version))
              (sha256
               (base32
                "1kpkw3wkvfs2g9pdkk0s9q7a3pq3vq7n9hw55bz0v9c2mmdcz92b"))))
    (properties `((upstream-name . "opencv")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-rcpp r-magrittr))
    (native-inputs (list pkg-config))
    (home-page "https://cran.r-project.org/package=opencv")
    (synopsis "Bindings to 'OpenCV' Computer Vision Library")
    (description
     "Exposes some of the available OpenCV <https://opencv.org/> algorithms, such as
edge, body or face detection.  These can either be applied to analyze static
images, or to filter live video footage from a camera device.")
    (license license:expat)))

(define-public r-opencr
  (package
    (name "r-opencr")
    (version "2.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openCR" version))
              (sha256
               (base32
                "003xhwskxjh0m9mvp8sdkbjmcb0i0wya1s8d8frnzgsbim2ymi22"))))
    (properties `((upstream-name . "openCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-secr
                             r-rcppparallel
                             r-rcpp
                             r-plyr
                             r-nlme
                             r-mass
                             r-bh
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://www.otago.ac.nz/density/")
    (synopsis "Open Population Capture-Recapture")
    (description
     "Non-spatial and spatial open-population capture-recapture analysis.")
    (license license:gpl2+)))

(define-public r-opencl
  (package
    (name "r-opencl")
    (version "0.2-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OpenCL" version))
              (sha256
               (base32
                "0gxzda615f67nbljancb8kixzdzkjsy8i0345mlnmlr8kqv4qyhw"))))
    (properties `((upstream-name . "OpenCL")))
    (build-system r-build-system)
    (home-page "http://www.rforge.net/OpenCL/")
    (synopsis "Interface allowing R to use OpenCL")
    (description
     "This package provides an interface to OpenCL, allowing R to leverage computing
power of GPUs and other HPC accelerator devices.")
    (license license:bsd-3)))

(define-public r-opencage
  (package
    (name "r-opencage")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opencage" version))
              (sha256
               (base32
                "1sjkpp6cj6ivd68p6ql6vwgdvy0fwfkjv84wgwgb4i7f4mnxgnff"))))
    (properties `((upstream-name . "opencage")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-ratelimitr
                             r-purrr
                             r-progress
                             r-memoise
                             r-lifecycle
                             r-jsonlite
                             r-dplyr
                             r-crul))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/opencage/")
    (synopsis "Geocode with the OpenCage API")
    (description
     "Geocode with the OpenCage API, either from place name to longitude and latitude
(forward geocoding) or from longitude and latitude to the name and address of a
location (reverse geocoding), see <https://opencagedata.com/>.")
    (license license:gpl2+)))

(define-public r-openblender
  (package
    (name "r-openblender")
    (version "0.5.81")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openblender" version))
              (sha256
               (base32
                "01akixxj04kgrxhv04icrivfpnipnpg9j62i3y19q3jkl9846lh1"))))
    (properties `((upstream-name . "openblender")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (home-page "https://cran.r-project.org/package=openblender")
    (synopsis "Request <https://openblender.io> API Services")
    (description
     "Interface to make HTTP requests to OpenBlender API services.  Go to
<https://openblender.io> for more information.")
    (license license:expat)))

(define-public r-openbanker
  (package
    (name "r-openbanker")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openbankeR" version))
              (sha256
               (base32
                "04jh3nnp53dzbk96dcz0xi67jqmp66mzbj81cy8mhhd2rl5ry9cj"))))
    (properties `((upstream-name . "openbankeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-httpcode
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nik01010/openbankeR")
    (synopsis "R Client for Querying the UK 'Open Banking' ('Open Data') API")
    (description
     "This package creates a client with queries for the UK Open Banking ('Open Data')
API.")
    (license license:gpl3)))

(define-public r-openalexr
  (package
    (name "r-openalexr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openalexR" version))
              (sha256
               (base32
                "0xyzlg3cyhbndnhc864g8447nffc2gg5si7s4h5l1jygyz3c8bki"))))
    (properties `((upstream-name . "openalexR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-progress r-jsonlite r-httr r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/massimoaria/openalexR")
    (synopsis
     "Getting Bibliographic Records from 'OpenAlex' Database Using 'DSL' API")
    (description
     "This package provides a set of tools to extract bibliographic content from
OpenAlex database using API <https://docs.openalex.org/api/>.")
    (license license:expat)))

(define-public r-openairmaps
  (package
    (name "r-openairmaps")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openairmaps" version))
              (sha256
               (base32
                "0b6ibb4846wnmv6pwl83j7544iyma2b0mxjkx6jic0g82m9r7f7a"))))
    (properties `((upstream-name . "openairmaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-openair
                             r-magrittr
                             r-lubridate
                             r-leaflet
                             r-forcats
                             r-dplyr
                             r-cli))
    (home-page "https://cran.r-project.org/package=openairmaps")
    (synopsis "Create Interactive Web Maps of Air Pollution Data")
    (description
     "Combine the air quality data analysis methods of openair with the JavaScript
Leaflet (<https://leafletjs.com/>) library.  Functionality includes plotting
site maps, \"directional analysis\" figures such as polar plots, and air mass
trajectories.")
    (license license:gpl3+)))

(define-public r-openair
  (package
    (name "r-openair")
    (version "2.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openair" version))
              (sha256
               (base32
                "0yak0n9ay7ikbmm8fchb2zpzk1sq9hnrrhjhcd5ak839k91lhj7c"))))
    (properties `((upstream-name . "openair")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-readr
                             r-rcpp
                             r-purrr
                             r-mgcv
                             r-mass
                             r-mapproj
                             r-lubridate
                             r-latticeextra
                             r-lattice
                             r-hexbin
                             r-dplyr
                             r-cluster))
    (home-page "https://davidcarslaw.github.io/openair/")
    (synopsis "Tools for the Analysis of Air Pollution Data")
    (description
     "Tools to analyse, interpret and understand air pollution data.  Data are
typically regular time series and air quality measurement, meteorological data
and dispersion model output can be analysed.  The package is described in
Carslaw and Ropkins (2012, <doi:10.1016/j.envsoft.2011.09.008>) and subsequent
papers.")
    (license license:gpl2+)))

(define-public r-openai
  (package
    (name "r-openai")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openai" version))
              (sha256
               (base32
                "19h6sbsgqa81dq23whxxymp97f83x2bfyl2a5brim6l809xv5w1v"))))
    (properties `((upstream-name . "openai")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr
                             r-lifecycle
                             r-jsonlite
                             r-httr
                             r-glue
                             r-assertthat))
    (home-page "https://github.com/irudnyts/openai")
    (synopsis "R Wrapper for OpenAI API")
    (description
     "An R wrapper of OpenAI API endpoints (see
<https://beta.openai.com/docs/introduction> for details).  This package covers
Engines, Completions, Edits, Files, Fine-tunes, Embeddings and legacy Searches,
Classifications, and Answers endpoints.")
    (license license:expat)))

(define-public r-openadds
  (package
    (name "r-openadds")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "openadds" version))
              (sha256
               (base32
                "1jb8zd3rpxfkjkg895iab6m4cfi53p5vy3nnpjkgq7ym6499qjcv"))))
    (properties `((upstream-name . "openadds")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-readr
                             r-rappdirs
                             r-maptools
                             r-jsonlite
                             r-dplyr
                             r-crul))
    (home-page "https://github.com/sckott/openadds")
    (synopsis "Client to Access 'Openaddresses' Data")
    (description
     "Openaddresses (<https://openaddresses.io/>) client.  Search, fetch data, and
combine datasets'.  Outputs are easy to visualize with base plots, ggplot2', or
leaflet'.")
    (license license:expat)))

(define-public r-opdoe
  (package
    (name "r-opdoe")
    (version "1.0-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OPDOE" version))
              (sha256
               (base32
                "04z944i4f3i0cjnxh32wf7n2dfyynnvkz4lxdkn90flam2np58yv"))))
    (properties `((upstream-name . "OPDOE")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom
                             r-orthopolynom
                             r-nlme
                             r-mvtnorm
                             r-gmp
                             r-crossdes))
    (home-page "https://cran.r-project.org/package=OPDOE")
    (synopsis "Optimal Design of Experiments")
    (description
     "Several function related to Experimental Design are implemented here, see
\"Optimal Experimental Design with R\" by Rasch D. et.  al (ISBN 9781439816974).")
    (license license:gpl2+)))

(define-public r-opdisdownsampling
  (package
    (name "r-opdisdownsampling")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opdisDownsampling" version))
              (sha256
               (base32
                "0laf24x2h6xwhd5wwcwi1iqg5gni29bmlfr86yrvpdrdgr7f4cha"))))
    (properties `((upstream-name . "opdisDownsampling")))
    (build-system r-build-system)
    (propagated-inputs (list r-twosamples
                             r-pracma
                             r-memuse
                             r-foreach
                             r-doparallel
                             r-catools
                             r-benchmarkme))
    (home-page "https://cran.r-project.org/package=opdisDownsampling")
    (synopsis
     "Optimal Distribution Preserving Down-Sampling of Bio-Medical Data")
    (description
     "An optimized method for distribution-preserving class-proportional down-sampling
of bio-medical data.")
    (license license:gpl3)))

(define-public r-opc
  (package
    (name "r-opc")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OPC" version))
              (sha256
               (base32
                "0m7yqk3drj0zz4184bsvzhqzjxl0smfqdkkr7rpg8z3jk8qkvah1"))))
    (properties `((upstream-name . "OPC")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=OPC")
    (synopsis "The Online Principal Component Estimation Method")
    (description
     "The online principal component method can process the online data set.  The
philosophy of the package is described in Guo G. (2018)
<doi:10.1080/10485252.2018.1531130>.")
    (license license:expat)))

(define-public r-opalr
  (package
    (name "r-opalr")
    (version "3.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opalr" version))
              (sha256
               (base32
                "1k4qm25gs4gkk9ixxz89dqnz6wkidly13iv9r437fdwsm6m9bzyr"))))
    (properties `((upstream-name . "opalr")))
    (build-system r-build-system)
    (propagated-inputs (list r-progress r-mime r-labelled r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/obiba/opalr/")
    (synopsis "'Opal' Data Repository Client and 'DataSHIELD' Utils")
    (description
     "Data integration Web application for biobanks by OBiBa'.  Opal is the core
database application for biobanks.  Participant data, once collected from any
data source, must be integrated and stored in a central data repository under a
uniform model.  Opal is such a central repository.  It can import, process,
validate, query, analyze, report, and export data.  Opal is typically used in a
research center to analyze the data acquired at assessment centres.  Its
ultimate purpose is to achieve seamless data-sharing among biobanks.  This Opal
client allows to interact with Opal web services and to perform operations on
the R server side.  DataSHIELD administration tools are also provided.")
    (license license:gpl3)))

(define-public r-opa
  (package
    (name "r-opa")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "opa" version))
              (sha256
               (base32
                "14y3q7mblxc65lpsndsij1wgwd29wfzfc58g666dgs5fz7vdqf72"))))
    (properties `((upstream-name . "opa")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-cpp11))
    (home-page "https://github.com/timbeechey/opa")
    (synopsis "An Implementation of Ordinal Pattern Analysis")
    (description
     "Quantifies hypothesis to data fit for repeated measures and longitudinal data,
as described by Thorngate (1987) <doi:10.1016/S0166-4115(08)60083-7> and Grice
et al., (2015) <doi:10.1177/2158244015604192>.  Hypothesis and data are encoded
as pairwise relative orderings which are then compared to determine the
percentage of orderings in the data that are matched by the hypothesis.")
    (license license:gpl3+)))

(define-public r-oottest
  (package
    (name "r-oottest")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oottest" version))
              (sha256
               (base32
                "1y0k0jcncjkcgfxybs2yyfcc7ywa49jnalrw8mn7m04h58gqg77x"))))
    (properties `((upstream-name . "oottest")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PhilippKuelpmann/oottest")
    (synopsis "Out-of-Treatment Testing")
    (description
     "This package implements the out-of-treatment testing from Kuelpmann and Kuzmics
(2020) <doi:10.2139/ssrn.3441675> based on the Vuong Test introduced in Vuong
(1989) <doi:10.2307/1912557>.  Out-of treatment testing allows for a direct,
pairwise likelihood comparison of theories, calibrated with pre-existing data.")
    (license license:expat)))

(define-public r-oos
  (package
    (name "r-oos")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OOS" version))
              (sha256
               (base32
                "0jnj5y26rv0i2561mywcxb7aavmpq16ippq6rblb8jiqjd05nhib"))))
    (properties `((upstream-name . "OOS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-vars
                             r-tidyr
                             r-sandwich
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-lmtest
                             r-imputets
                             r-glmnet
                             r-ggplot2
                             r-future
                             r-furrr
                             r-forecast
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tylerJPike/OOS")
    (synopsis "Out-of-Sample Time Series Forecasting")
    (description
     "This package provides a comprehensive and cohesive API for the out-of-sample
forecasting workflow: data preparation, forecasting - including both traditional
econometric time series models and modern machine learning techniques - forecast
combination, model and error analysis, and forecast visualization.")
    (license license:gpl3)))

(define-public r-oor
  (package
    (name "r-oor")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OOR" version))
              (sha256
               (base32
                "13v04rx2q6pbiq7dyd29wvimkr4sbq2f5rnn3a0lcbwr3x35r7h9"))))
    (properties `((upstream-name . "OOR")))
    (build-system r-build-system)
    (home-page "http://github.com/mbinois/OOR")
    (synopsis "Optimistic Optimization in R")
    (description
     "Implementation of optimistic optimization methods for global optimization of
deterministic or stochastic functions.  The algorithms feature guarantees of the
convergence to a global optimum.  They require minimal assumptions on the (only
local) smoothness, where the smoothness parameter does not need to be known.
They are expected to be useful for the most difficult functions when we have no
information on smoothness and the gradients are unknown or do not exist.  Due to
the weak assumptions, however, they can be mostly effective only in small
dimensions, for example, for hyperparameter tuning.")
    (license license:lgpl2.0+)))

(define-public r-oops
  (package
    (name "r-oops")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oops" version))
              (sha256
               (base32
                "0xg69riqphvsqqa953v4mlcakvl0invf29678nrljibg31n4wak5"))))
    (properties `((upstream-name . "oops")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=oops")
    (synopsis "S3 Style Object Oriented Programming")
    (description
     "Create simple, hassle-free classes with reference semantics similar to RefClass
or R6 but relying on S3 methods. \"oops\" class instances tend to be lighter
weight and faster to create.  Creating a class is as easy creating a list, while
generating an instance is a simple function call.  Support for inheritance and
fixed field classes.")
    (license license:expat)))

(define-public r-ooplah
  (package
    (name "r-ooplah")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ooplah" version))
              (sha256
               (base32
                "1p74jh9g62yicrw0lhpbn0diqi2myl24z28kpd2b3mglyffadr0b"))))
    (properties `((upstream-name . "ooplah")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6))
    (home-page "https://xoopR.github.io/ooplah/")
    (synopsis "Helper Functions for Class Object-Oriented Programming")
    (description
     "Helper functions for coding object-oriented programming with a focus on R6.
Includes functions for assertions and testing, looping, and re-usable design
patterns including Abstract and Decorator classes.")
    (license license:expat)))

(define-public r-oompadata
  (package
    (name "r-oompadata")
    (version "3.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oompaData" version))
              (sha256
               (base32
                "11c5h55xjvbavyqy9z2ch03ngy739zs61r8r4lc2gijscc7wn1s4"))))
    (properties `((upstream-name . "oompaData")))
    (build-system r-build-system)
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Data to Illustrate OOMPA Algorithms")
    (description
     "This is a data-only package to provide example data for other packages that are
part of the \"Object-Oriented Microrray and Proteomics Analysis\" suite of
packages.  These are described in more detail at the package URL.")
    (license license:asl2.0)))

(define-public r-oompabase
  (package
    (name "r-oompabase")
    (version "3.2.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oompaBase" version))
              (sha256
               (base32
                "1cmw2s5dznmv675484jgvkzgvi6vhg0zbxsq6zhpqsisf672pjhl"))))
    (properties `((upstream-name . "oompaBase")))
    (build-system r-build-system)
    (propagated-inputs (list r-cluster))
    (home-page "http://oompa.r-forge.r-project.org/")
    (synopsis "Class Unions, Matrix Operations, and Color Schemes for OOMPA")
    (description
     "This package provides the class unions that must be preloaded in order for the
basic tools in the OOMPA (Object-Oriented Microarray and Proteomics Analysis)
project to be defined and loaded.  It also includes vectorized operations for
row-by-row means, variances, and t-tests.  Finally, it provides new color
schemes.  Details on the packages in the OOMPA project can be found at
<http://oompa.r-forge.r-project.org/>.")
    (license license:asl2.0)))

(define-public r-oolong
  (package
    (name "r-oolong")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oolong" version))
              (sha256
               (base32
                "16f5r2z9p87k3pi643s63nxxnh7gn4x70m5jpk48hwb2s1rdar9h"))))
    (properties `((upstream-name . "oolong")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-shiny
                             r-r6
                             r-quanteda
                             r-purrr
                             r-keyatm
                             r-irr
                             r-ggplot2
                             r-digest
                             r-cowplot
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chainsawriot/oolong")
    (synopsis "Create Validation Tests for Automated Content Analysis")
    (description
     "Intended to create standard human-in-the-loop validity tests for typical
automated content analysis such as topic modeling and dictionary-based methods.
This package offers a standard workflow with functions to prepare, administer
and evaluate a human-in-the-loop validity test.  This package provides functions
for validating topic models using word intrusion, topic intrusion (Chang et al.
2009,
<https://papers.nips.cc/paper/3700-reading-tea-leaves-how-humans-interpret-topic-models>)
and word set intrusion (Ying et al.  2021) <doi:10.1017/pan.2021.33> tests.
This package also provides functions for generating gold-standard data which are
useful for validating dictionary-based methods.  The default settings of all
generated tests match those suggested in Chang et al. (2009) and Song et al.
(2020) <doi:10.1080/10584609.2020.1723752>.")
    (license license:lgpl2.1+)))

(define-public r-ooi
  (package
    (name "r-ooi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OOI" version))
              (sha256
               (base32
                "0ivxgq539v68kak3zzakywppba0grzh7qn1h404s4ag30cxv0g8p"))))
    (properties `((upstream-name . "OOI")))
    (build-system r-build-system)
    (propagated-inputs (list r-modi))
    (home-page "https://cran.r-project.org/package=OOI")
    (synopsis "Outside Option Index")
    (description
     "Calculates the Outside Option Index proposed by Caldwell and Danieli (2018)
<https://drive.google.com/file/d/1j-uwD19S4gqgXIXeYch9jGBCaDhWZlRQ/view>.  This
index uses the cross- sectional concentration of similar workers across job
types to quantify the availability of outside options as a function of
workersâ characteristics (e.g. commuting costs, preferences, and skills.)")
    (license license:gpl3)))

(define-public r-oobcurve
  (package
    (name "r-oobcurve")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OOBCurve" version))
              (sha256
               (base32
                "1i7prybs3b60ipl34zrq6mcr6w9kc1d44b14mxcd752k42k6xs2r"))))
    (properties `((upstream-name . "OOBCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-ranger r-randomforest r-mlr))
    (home-page "https://github.com/PhilippPro/OOBCurve")
    (synopsis "Out of Bag Learning Curve")
    (description
     "This package provides functions to calculate the out-of-bag learning curve for
random forests for any measure that is available in the mlr package.  Supported
random forest packages are randomForest and ranger and trained models of these
packages with the train function of mlr'.  The main function is OOBCurve() that
calculates the out-of-bag curve depending on the number of trees.  With the
OOBCurvePars() function out-of-bag curves can also be calculated for mtry',
sample.fraction and min.node.size for the ranger package.")
    (license license:gpl3)))

(define-public r-ontologysimilarity
  (package
    (name "r-ontologysimilarity")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ontologySimilarity" version))
              (sha256
               (base32
                "035z572lbsfcnr9c0hl8gir1kgk0dw8dxzr3v8dqd93k6jr6kaxb"))))
    (properties `((upstream-name . "ontologySimilarity")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-ontologyindex))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ontologySimilarity")
    (synopsis "Calculating Ontological Similarities")
    (description
     "Calculate similarity between ontological terms and sets of ontological terms
based on term information content and assess statistical significance of
similarity in the context of a collection of terms sets - Greene et al.  2017
<doi:10.1093/bioinformatics/btw763>.")
    (license license:gpl2+)))

(define-public r-ontologyplot
  (package
    (name "r-ontologyplot")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ontologyPlot" version))
              (sha256
               (base32
                "0n51x2im134wq3a54wrv02j1pgkpm1qcgb9hd0y6fchz43i039j1"))))
    (properties `((upstream-name . "ontologyPlot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgraphviz r-paintmap r-ontologyindex))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ontologyPlot")
    (synopsis "Visualising Sets of Ontological Terms")
    (description
     "Create R plots visualising ontological terms and the relationships between them
with various graphical options - Greene et al.  2017
<doi:10.1093/bioinformatics/btw763>.")
    (license license:gpl2+)))

(define-public r-ontologics
  (package
    (name "r-ontologics")
    (version "0.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ontologics" version))
              (sha256
               (base32
                "074pqjfm24gd332xja6mgdy8grbbwa6r3yhclcpm1d7hx8dhy2g9"))))
    (properties `((upstream-name . "ontologics")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-rdflib
                             r-purrr
                             r-magrittr
                             r-httr
                             r-dplyr
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/luckinet/ontologics")
    (synopsis "Code-Logics to Handle Ontologies")
    (description
     "This package provides tools to build and work with an ontology of linked (open)
data in a tidy workflow.  It is inspired by the Food and Agrilculture
Organizations (FAO) caliper platform
<https://www.fao.org/statistics/caliper/web/> and makes use of the Simple
Knowledge Organisation System (SKOS).")
    (license license:gpl3+)))

(define-public r-ontofast
  (package
    (name "r-ontofast")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ontoFAST" version))
              (sha256
               (base32
                "0l3d8bp86849rp0qrs1dfv7bjmrfdqvahb1x656vk69fi20722ma"))))
    (properties `((upstream-name . "ontoFAST")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-usethis
                             r-sunburstr
                             r-stringr
                             r-shinydashboard
                             r-shiny
                             r-plyr
                             r-pbapply
                             r-ontologyindex
                             r-dplyr))
    (home-page "https://github.com/sergeitarasov/ontoFAST")
    (synopsis
     "Interactive Annotation of Characters with Biological Ontologies")
    (description
     "Tools for annotating characters (character matrices) with anatomical and
phenotype ontologies.  Includes functions for visualising character annotations
and creating simple queries using ontological relationships.")
    (license license:gpl2+)))

(define-public r-onsr
  (package
    (name "r-onsr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onsr" version))
              (sha256
               (base32
                "0qazwqdbbinsrimn7rf7xcjz5l5zp372i5j54rp87xy098q7c0l3"))))
    (properties `((upstream-name . "onsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-readr r-jsonlite r-httr))
    (home-page "https://kvasilopoulos.github.io/onsr/")
    (synopsis "Client for the 'ONS' API")
    (description "Client for the Office of National Statistics ('ONS') API
<https://api.beta.ons.gov.uk/v1>.")
    (license license:gpl3+)))

(define-public r-onpoint
  (package
    (name "r-onpoint")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onpoint" version))
              (sha256
               (base32
                "0l1dblj6cr2qagxmgx5ma455qazg1br5y0zpl2dv7jcdb24f7pnq"))))
    (properties `((upstream-name . "onpoint")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random r-spatstat-geom r-spatstat-core
                             r-ggplot2))
    (home-page "https://r-spatialecology.github.io/onpoint/")
    (synopsis "Helper Functions for Point Pattern Analysis")
    (description
     "Growing collection of helper functions for point pattern analysis.  Most
functions are designed to work with the spatstat (<http://spatstat.org>)
package.  The focus of most functions are either null models or summary
functions for spatial point patterns.  For a detailed description of all null
models and summary functions, see Wiegand and Moloney (2014,
ISBN:9781420082548).")
    (license license:gpl3+)))

(define-public r-onnx
  (package
    (name "r-onnx")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onnx" version))
              (sha256
               (base32
                "1s0swrcff9v9ffbjkraahmb398gh2jrca2wf5k6gs8037frnl8wd"))))
    (properties `((upstream-name . "onnx")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/onnx/onnx-r")
    (synopsis "R Interface to 'ONNX'")
    (description
     "R Interface to ONNX - Open Neural Network Exchange <https://onnx.ai/>.  ONNX
provides an open source format for machine learning models.  It defines an
extensible computation graph model, as well as definitions of built-in operators
and standard data types.")
    (license (license:fsdg-compatible "MIT License + file LICENSE"))))

(define-public r-onmarg
  (package
    (name "r-onmarg")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onmaRg" version))
              (sha256
               (base32
                "1gvxnw53r5yan5dsp379psz3mnxpnc0wqmwmb2s5qf8ldq688zi1"))))
    (properties `((upstream-name . "onmaRg")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-sf r-readxl r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=onmaRg")
    (synopsis "Import Public Health Ontario's Ontario Marginalization Index")
    (description
     "The Ontario Marginalization Index is a socioeconomic model that is built on
Statistics Canada census data.  The model consists of four dimensions:
Residential Instability, Material Deprivation, Dependency and Ethnic
Concentration.  Each of these dimensions are imported for a variety of
geographic levels (DA, CD, etc.) for both the 2011 and 2016 administrations of
the census (2021 pending).  These data sets contribute to community analysis of
equity with respect to Ontario's Anti-Racism Act.  The Ontario Marginalization
Index data is retrieved from the Public Health Ontario website:
<https://www.publichealthontario.ca/en/data-and-analysis/health-equity/ontario-marginalization-index>.
 The shapefile data is retrieved from the Statistics Canada website:
<https://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/bound-limit-eng.cfm>.")
    (license license:gpl3)))

(define-public r-onlineretail
  (package
    (name "r-onlineretail")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onlineretail" version))
              (sha256
               (base32
                "0lid3g4v51c664304cxgjm209qxv88hqglv89frmj4afc0y6k7sc"))))
    (properties `((upstream-name . "onlineretail")))
    (build-system r-build-system)
    (home-page "https://github.com/allanvc/onlineretail/")
    (synopsis "Online Retail Dataset")
    (description
     "Transactions occurring for a UK-based and registered, non-store online retail
between 01/12/2010 and 09/12/2011 (Chen et.  al., 2012,
<doi:10.1145/1835804.1835882>).  This dataset is included in this package with
the donor's permission, Dr. Daqing Chen.")
    (license license:cc0)))

(define-public r-onlinepca
  (package
    (name "r-onlinepca")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onlinePCA" version))
              (sha256
               (base32
                "08qivsfnwz5vp089lv9czsaz3nfi42kn9yhgzf27dji18y2xscic"))))
    (properties `((upstream-name . "onlinePCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rspectra r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=onlinePCA")
    (synopsis "Online Principal Component Analysis")
    (description
     "Online PCA for multivariate and functional data using perturbation methods,
low-rank incremental methods, and stochastic optimization methods.")
    (license license:gpl3)))

(define-public r-onlineforecast
  (package
    (name "r-onlineforecast")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onlineforecast" version))
              (sha256
               (base32
                "0cpwb6bx1qcf05rbi5ycdpgmfb0c5lvhki1c77kzhds5bn3gw5k4"))))
    (properties `((upstream-name . "onlineforecast")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-r6 r-pbs r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://onlineforecasting.org")
    (synopsis "Forecast Modelling for Online Applications")
    (description
     "This package provides a framework for fitting adaptive forecasting models.
Provides a way to use forecasts as input to models, e.g. weather forecasts for
energy related forecasting.  The models can be fitted recursively and can easily
be setup for updating parameters when new data arrives.  See the included
vignettes, the website <https://onlineforecasting.org> and the pre-print paper
\"onlineforecast: An R package for adaptive and recursive forecasting\"
<arXiv:2109.12915>.")
    (license license:gpl3)))

(define-public r-onlinecov
  (package
    (name "r-onlinecov")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onlineCOV" version))
              (sha256
               (base32
                "04ikvsd76f6xhja7djyv433m88lfj2vf0y9qi6x1s4i9kh8xkbz9"))))
    (properties `((upstream-name . "onlineCOV")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=onlineCOV")
    (synopsis
     "Online Change Point Detection in High-Dimensional Covariance Structure")
    (description
     "Implement a new stopping rule to detect anomaly in the covariance structure of
high-dimensional online data.  The detection procedure can be applied to
Gaussian or non-Gaussian data with a large number of components.  Moreover, it
allows both spatial and temporal dependence in data.  The dependence can be
estimated by a data-driven procedure.  The level of threshold in the stopping
rule can be determined at a pre-selected average run length.  More detail can be
seen in Li, L. and Li, J. (2020) \"Online Change-Point Detection in
High-Dimensional Covariance Structure with Application to Dynamic Networks.\"
<arXiv:1911.07762>.")
    (license license:gpl2+)))

(define-public r-onlinebcp
  (package
    (name "r-onlinebcp")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onlineBcp" version))
              (sha256
               (base32
                "1pwpnmpgh3hl8mv1pbn577dn832nxbsfaxn3hqghvs4dn06lwngf"))))
    (properties `((upstream-name . "onlineBcp")))
    (build-system r-build-system)
    (propagated-inputs (list r-vim))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=onlineBcp")
    (synopsis "Online Bayesian Methods for Change Point Analysis")
    (description
     "It implements the online Bayesian methods for change point analysis.  It can
also perform missing data imputation with methods from VIM'.  The reference is
Yigiter A, Chen J, An L, Danacioglu N (2015)
<doi:10.1080/02664763.2014.1001330>.  The link to the package is
<https://CRAN.R-project.org/package=onlineBcp>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-onion
  (package
    (name "r-onion")
    (version "1.5-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onion" version))
              (sha256
               (base32
                "07q5wwphb6jsk7ya7hgsf5782yalvhyc7h43hsd9rg4rhpmy8in9"))))
    (properties `((upstream-name . "onion")))
    (build-system r-build-system)
    (propagated-inputs (list r-emulator))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/onion")
    (synopsis "Octonions and Quaternions")
    (description
     "Quaternions and Octonions are four- and eight- dimensional extensions of the
complex numbers.  They are normed division algebras over the real numbers and
find applications in spatial rotations (quaternions), and string theory and
relativity (octonions).  The quaternions are noncommutative and the octonions
nonassociative.  See the package vignette for more details.")
    (license license:gpl2)))

(define-public r-onewaytests
  (package
    (name "r-onewaytests")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onewaytests" version))
              (sha256
               (base32
                "05q2ir65x9pvsiim4l029hjhm12niiqjgk5rsx47i6vx23ffg8ir"))))
    (properties `((upstream-name . "onewaytests")))
    (build-system r-build-system)
    (propagated-inputs (list r-nortest r-moments r-ggplot2 r-car))
    (home-page "https://cran.r-project.org/package=onewaytests")
    (synopsis "One-Way Tests in Independent Groups Designs")
    (description
     "This package performs one-way tests in independent groups designs including
homoscedastic and heteroscedastic tests.  These are one-way analysis of variance
(ANOVA), Welch's heteroscedastic F test, Welch's heteroscedastic F test with
trimmed means and Winsorized variances, Brown-Forsythe test, Alexander-Govern
test, James second order test, Kruskal-Wallis test, Scott-Smith test, Box F test
and Johansen F test, Generalized tests equivalent to Parametric Bootstrap and
Fiducial tests.  The package performs pairwise comparisons and graphical
approaches.  Also, the package includes Student's t test, Welch's t test and
Mann-Whitney U test for two samples.  Moreover, it assesses variance homogeneity
and normality of data in each group via tests and plots (Dag et al., 2018,
<https://journal.r-project.org/archive/2018/RJ-2018-022/RJ-2018-022.pdf>).")
    (license license:gpl2+)))

(define-public r-onetr
  (package
    (name "r-onetr")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ONETr" version))
              (sha256
               (base32
                "14l56qcmyyk2ivcfkfv7j2k4i1mfrngpi9zcc88w6xfhz5qlb548"))))
    (properties `((upstream-name . "ONETr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcurl r-plyr))
    (home-page "https://cran.r-project.org/package=ONETr")
    (synopsis "Efficient Authenticated Interaction with the O*NET API")
    (description
     "This package provides a series of functions designed to enable users to easily
search and interact with occupational data from the O*NET API
<www.onetonline.org>.  The package produces parsed and listed XML data for
custom interactions, or pre-packaged functions for easy extraction of specific
data (e.g., Knowledge, Skills, Abilities, Work Styles, etc.).")
    (license license:gpl3)))

(define-public r-onestep
  (package
    (name "r-onestep")
    (version "0.9.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OneStep" version))
              (sha256
               (base32
                "06gnw364p74nnb9rx3ghyfavd02xmnvzy94hzdwgxqs86z30b2gz"))))
    (properties `((upstream-name . "OneStep")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-fitdistrplus))
    (home-page "https://cran.r-project.org/package=OneStep")
    (synopsis "One-Step Estimation")
    (description
     "Provide principally an eponymic function that numerically computes the Le Cam
one-step estimator which is asymptotically efficient (see e.g. L. Le Cam (1956)
<https://projecteuclid.org/euclid.bsmsp/1200501652>) and can be computed faster
than the maximum likelihood estimator for large observation samples.")
    (license license:gpl2+)))

(define-public r-onest
  (package
    (name "r-onest")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ONEST" version))
              (sha256
               (base32
                "07mfykpkcgcqafw1w3qr9x83zpy2p0q7v1zkgwpd69g79j0r3yap"))))
    (properties `((upstream-name . "ONEST")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hangangtrue/ONEST")
    (synopsis "Observers Needed to Evaluate Subjective Tests")
    (description
     "This ONEST software implements the method of assessing the pathologist agreement
in reading PD-L1 assays (Reisenbichler et al. (2020
<doi:10.1038/s41379-020-0544-x>)), to determine the minimum number of evaluators
needed to estimate agreement involving a large number of raters.  Input to the
program should be binary(1/0) pathology data, where â0â may stand for
negative and â1â for positive.  Additional examples were given using the
data from Rimm et al. (2017 <doi:10.1001/jamaoncol.2017.0013>).")
    (license license:gpl3)))

(define-public r-onesamplemr
  (package
    (name "r-onesamplemr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OneSampleMR" version))
              (sha256
               (base32
                "1g2ia06450xy6mbkn13r9wzap1jxz1iw36jiy3699zm9azndd002"))))
    (properties `((upstream-name . "OneSampleMR")))
    (build-system r-build-system)
    (propagated-inputs (list r-msm r-lmtest r-ivreg r-gmm r-formula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/remlapmot/OneSampleMR")
    (synopsis
     "One Sample Mendelian Randomization and Instrumental Variable Analyses")
    (description
     "Useful functions for one-sample (individual level data) Mendelian randomization
and instrumental variable analyses.  The package includes implementations of;
the Sanderson and Windmeijer (2016) <doi:10.1016/j.jeconom.2015.06.004>
conditional F-statistic, the multiplicative structural mean model HernÃ¡n and
Robins (2006) <doi:10.1097/01.ede.0000222409.00878.37>, and two-stage predictor
substitution and two-stage residual inclusion estimators explained by Terza et
al. (2008) <doi:10.1016/j.jhealeco.2007.09.009>.")
    (license license:gpl3+)))

(define-public r-oner
  (package
    (name "r-oner")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OneR" version))
              (sha256
               (base32
                "1k7rzhcwq5b2yi4zfsc1r0yb6w65gxj9835d2a1dclallja3zav2"))))
    (properties `((upstream-name . "OneR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vonjd/OneR")
    (synopsis
     "One Rule Machine Learning Classification Algorithm with Enhancements")
    (description
     "This package implements the One Rule (OneR) Machine Learning classification
algorithm (Holte, R.C. (1993) <doi:10.1023/A:1022631118932>) with enhancements
for sophisticated handling of numeric data and missing values together with
extensive diagnostic functions.  It is useful as a baseline for machine learning
models and the rules are often helpful heuristics.")
    (license license:expat)))

(define-public r-onepass
  (package
    (name "r-onepass")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onepass" version))
              (sha256
               (base32
                "1r8wk00aqc0sc7l6mmy1k4hkijfikynysrx5vvahbd6mlcdb3bmp"))))
    (properties `((upstream-name . "onepass")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://jonlinca.github.io/onepass/")
    (synopsis "1password Credential Retrieval")
    (description
     "Interaction with 1Password via the command-line tool
<https://1password.com/downloads/command-line/> to read vault contents and
download credentials.")
    (license license:gpl3)))

(define-public r-onemapsgapi
  (package
    (name "r-onemapsgapi")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onemapsgapi" version))
              (sha256
               (base32
                "11w3xkjxhjf0b78hfjxjk650giswaf1js471backz4pcb97gaigl"))))
    (properties `((upstream-name . "onemapsgapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-httr
                             r-future
                             r-furrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=onemapsgapi")
    (synopsis "R Wrapper for the 'OneMap.Sg API'")
    (description
     "An R wrapper for the OneMap.Sg API <https://docs.onemap.sg/>.  Functions help
users query data from the API and return raw JSON data in \"tidy\" formats.
Support is also available for users to retrieve data from multiple API calls and
integrate results into single dataframes, without needing to clean and merge the
data themselves.  This package is best suited for users who would like to
perform analyses with Singapore's spatial data without having to perform
excessive data cleaning.")
    (license license:expat)))

(define-public r-onemap
  (package
    (name "r-onemap")
    (version "2.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onemap" version))
              (sha256
               (base32
                "14p3p3bvcgl63fk8sivwgqdcm7cydyh106rz26zk30gcjgvn91rm"))))
    (properties `((upstream-name . "onemap")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcfr
                             r-tidyr
                             r-stringi
                             r-smacof
                             r-reshape2
                             r-rebus
                             r-rcpp
                             r-rcolorbrewer
                             r-princurve
                             r-plotly
                             r-htmlwidgets
                             r-ggpubr
                             r-ggplot2
                             r-dplyr
                             r-dendextend))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/augusto-garcia/onemap")
    (synopsis "Construction of Genetic Maps in Experimental Crosses")
    (description
     "Analysis of molecular marker data from model (backcrosses, F2 and recombinant
inbred lines) and non-model systems (i.  e.  outcrossing species).  For the
later, it allows statistical analysis by simultaneously estimating linkage and
linkage phases (genetic map construction) according to Wu et al. (2002)
<doi:10.1006/tpbi.2002.1577>.  All analysis are based on multipoint approaches
using hidden Markov models.")
    (license license:gpl3)))

(define-public r-onelogin
  (package
    (name "r-onelogin")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onelogin" version))
              (sha256
               (base32
                "06p3a8kaxmvsj8nn7dy8w6wv1jjw67is991hqg9q0fa20ifym3dl"))))
    (properties `((upstream-name . "onelogin")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-safer
                             r-r6
                             r-magrittr
                             r-jsonlite
                             r-glue))
    (home-page "https://cran.r-project.org/package=onelogin")
    (synopsis "Interact with the 'OneLogin' API")
    (description
     "The identity provider ['OneLogin']<http://onelogin.com> is used for
authentication via Single Sign On (SSO).  This package provides an R interface
to their API.")
    (license license:expat)))

(define-public r-onehot
  (package
    (name "r-onehot")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onehot" version))
              (sha256
               (base32
                "1cdsz007wr054k5phvihhg4qx0fc039k2s6484m92kws8mb2ziix"))))
    (properties `((upstream-name . "onehot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=onehot")
    (synopsis "Fast Onehot Encoding for Data.frames")
    (description
     "Quickly create numeric matrices for machine learning algorithms that require
them.  It converts factor columns into onehot vectors.")
    (license license:expat)))

(define-public r-oneclust
  (package
    (name "r-oneclust")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oneclust" version))
              (sha256
               (base32
                "0qbwnfv5lk93nfwwzfjwla6lv6imfcvcvmlb9h7ij32zpqg1fzwk"))))
    (properties `((upstream-name . "oneclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://nanx.me/oneclust/")
    (synopsis "Maximum Homogeneity Clustering for Univariate Data")
    (description
     "Maximum homogeneity clustering algorithm for one-dimensional data described in
W. D. Fisher (1958) <doi:10.1080/01621459.1958.10501479> via dynamic
programming.")
    (license license:gpl3)))

(define-public r-onearmtte
  (package
    (name "r-onearmtte")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OneArmTTE" version))
              (sha256
               (base32
                "186386pjjvlfq38950n1sdx0wq31q8ggjlqlrn07v68bcqjl70y6"))))
    (properties `((upstream-name . "OneArmTTE")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-survival r-dplyr))
    (home-page "https://cran.r-project.org/package=OneArmTTE")
    (synopsis "One-Arm Clinical Trial Designs for Time-to-Event Endpoint")
    (description
     "Get operating characteristics of one-arm clinical trial designs for
time-to-event endpoint through simulation and perform analysis with
time-to-event data.")
    (license license:gpl3)))

(define-public r-onearm2stage
  (package
    (name "r-onearm2stage")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OneArm2stage" version))
              (sha256
               (base32
                "0c014kr46rzgcpjq3n2lr2i66gvkqd60m2l5hfc7i5956ia7fvxq"))))
    (properties `((upstream-name . "OneArm2stage")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-ipdfromkm r-flexsurv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OneArm2stage")
    (synopsis
     "Optimal One-Arm Two-Stage Phase II Design with Survival Endpoint")
    (description
     "The proposed two-stage design can be used for single-arm phase II trial designs
with time-to-event endpoints, which is desirable for clinical trials on
immunotherapies among cancer patients.  There're two advantages of the proposed
approach: 1) It provides flexible choices of four underlying survival
distributions and 2) the power of the design is more accurately calculated using
exact variance in one-sample log-rank test.  The package can be used for 1)
planning the sample size; 2) conducting the interim and final analyses for the
Go/No-go decisions.  More details about the design method can be found in the
paper: Wu, J, Chen L, Wei J, Weiss H, Chauhan A. (2020). <doi:10.1002/pst.1983>.")
    (license license:gpl3+)))

(define-public r-ondisc
  (package
    (name "r-ondisc")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ondisc" version))
              (sha256
               (base32
                "071jrldclkaz5lfp3k5fh1ilpgvvcnakh2vvnr69n3pri9dl3fls"))))
    (properties `((upstream-name . "ondisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rhdf5lib
                             r-rhdf5
                             r-readr
                             r-rcpp
                             r-matrix
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://timothy-barry.github.io/ondisc/")
    (synopsis
     "Fast, Universal, and Intuitive Computing on Large-Scale Single-Cell Data")
    (description
     "Single-cell datasets are growing in size, posing challenges as well as
opportunities for biology researchers.  ondisc (short for \"on-disk single cell\")
enables users to easily and efficiently analyze large-scale single-cell data.
ondisc makes computing on large-scale single-cell data FUN: Fast, Universal, and
iNtuitive.")
    (license license:expat)))

(define-public r-oncrawlr
  (package
    (name "r-oncrawlr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oncrawlR" version))
              (sha256
               (base32
                "0cm26diaf3jlzfrpgh13q0hakakmj6vy41wk9z0w81az4jcg9sn9"))))
    (properties `((upstream-name . "oncrawlR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-webshot
                             r-tidyr
                             r-sparkline
                             r-scales
                             r-rlist
                             r-rlang
                             r-rjson
                             r-readr
                             r-rcurl
                             r-proc
                             r-pdp
                             r-jsonlite
                             r-htmltools
                             r-ggplot2
                             r-fs
                             r-formattable
                             r-e1071
                             r-dplyr
                             r-dalex
                             r-caret))
    (home-page "https://cran.r-project.org/package=oncrawlR")
    (synopsis "Machine Learning for S.E.O")
    (description
     "Measures different aspects of page content, structure and performance for SEO
(Search Engine Optimization).  Aspects covered include HTML tags used in SEO,
duplicate and near-duplicate content, structured data, on-site linking structure
and popularity transfer, and many other amazing things.  This package can be
used to generate a real, full SEO audit report, which serves to detect errors or
inefficiencies on a page that can be corrected in order to optimise its
performance on search engines.")
    (license license:expat)))

(define-public r-oncotree
  (package
    (name "r-oncotree")
    (version "0.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Oncotree" version))
              (sha256
               (base32
                "11pn50zshv1rl2mvars5iwzqfzlm9i8rd1rlz3pn1nn94051d8ab"))))
    (properties `((upstream-name . "Oncotree")))
    (build-system r-build-system)
    (propagated-inputs (list r-boot))
    (home-page "https://cran.r-project.org/package=Oncotree")
    (synopsis "Estimating Oncogenetic Trees")
    (description
     "This package contains functions to construct and evaluate directed tree
structures that model the process of occurrence of genetic alterations during
carcinogenesis.")
    (license license:gpl2+)))

(define-public r-oncopredict
  (package
    (name "r-oncopredict")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oncoPredict" version))
              (sha256
               (base32
                "1slq5vp78n5hcq24vlg35r6xansdgriyjw8y9iyb0lj3cdaq38c3"))))
    (properties `((upstream-name . "oncoPredict")))
    (build-system r-build-system)
    (propagated-inputs (list r-txdb-hsapiens-ucsc-hg19-knowngene
                             r-tidyverse
                             r-sva
                             r-s4vectors
                             r-ridge
                             r-readxl
                             r-preprocesscore
                             r-pls
                             r-org-hs-eg-db
                             r-maftools
                             r-iranges
                             r-glmnet
                             r-genomicranges
                             r-genomicfeatures
                             r-genefilter
                             r-gdata
                             r-car
                             r-biocgenerics))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=oncoPredict")
    (synopsis "Drug and Biomarker Discovery")
    (description
     "Bridges in vitro drug screening with in vivo drug and biomarker discovery.
Specifically, predicts in vivo or cancer patient drug response and biomarkers to
enrich for response from cell line screening data.  Builds model using ridge
regression, and enables biomarker discovery by imputing drug response in large
cancer molecular datasets.  It also enables drug specific biomarker
identification by correcting for general level of drug sensitivity shared among
the population.")
    (license license:gpl2)))

(define-public r-oncobayes2
  (package
    (name "r-oncobayes2")
    (version "0.8-7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OncoBayes2" version))
              (sha256
               (base32
                "0psw7hily07xz61x25mg7iirr8aic32ny0770ks8ldy5rq2qjg86"))))
    (properties `((upstream-name . "OncoBayes2")))
    (build-system r-build-system)
    (inputs (list pandoc pandoc))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stanheaders
                             r-scales
                             r-rstantools
                             r-rstan
                             r-rlang
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-posterior
                             r-matrixstats
                             r-ggplot2
                             r-formula
                             r-dplyr
                             r-checkmate
                             r-bh
                             r-bayesplot
                             r-assertthat
                             r-abind))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OncoBayes2")
    (synopsis
     "Bayesian Logistic Regression for Oncology Dose-Escalation Trials")
    (description
     "Bayesian logistic regression model with optional
EXchangeability-NonEXchangeability parameter modelling for flexible borrowing
from historical or concurrent data-sources.  The safety model can guide
dose-escalation decisions for adaptive oncology Phase I dose-escalation trials
which involve an arbitrary number of drugs.  Please refer to Neuenschwander et
al. (2008) <doi:10.1002/sim.3230> and Neuenschwander et al. (2016)
<doi:10.1080/19466315.2016.1174149> for details on the methodology.")
    (license license:gpl3+)))

(define-public r-once
  (package
    (name "r-once")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "once" version))
              (sha256
               (base32
                "0yshpww3rq68m0qx7kid3zlcxi1nf81vmziclyvpg61aikj8fhx5"))))
    (properties `((upstream-name . "once")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (home-page "https://gdmcdonald.github.io/once/")
    (synopsis "Execute Expensive Operations Only Once")
    (description
     "Allows you to easily execute expensive compute operations only once, and save
the resulting object to disk.")
    (license license:expat)))

(define-public r-onc-api
  (package
    (name "r-onc-api")
    (version "2.0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onc.api" version))
              (sha256
               (base32
                "10scbhg6aniqzrbkblhfhz9ni710xzppbzfrr4wrhsy1z5y2nfwc"))))
    (properties `((upstream-name . "onc.api")))
    (build-system r-build-system)
    (propagated-inputs (list r-tictoc
                             r-testthat
                             r-stringi
                             r-lubridate
                             r-humanize
                             r-httr
                             r-crayon
                             r-anytime))
    (home-page "https://wiki.oceannetworks.ca/display/O2A/Oceans+2.0+API+Home")
    (synopsis "Oceans 2.0 API Client Library")
    (description
     "Allows users to discover and retrieve Ocean Networks Canada's oceanographic data
in raw, text, image, audio, video or any other format available.  Provides a
class that wraps web service calls and business logic so that users can download
data with a single line of code.")
    (license license:expat)))

(define-public r-onbrand
  (package
    (name "r-onbrand")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onbrand" version))
              (sha256
               (base32
                "1dxwxf0jy0cvizwdk0429x4bgzrk99mr1frfrf8hdw18ysjqwcfz"))))
    (properties `((upstream-name . "onbrand")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-stringr
                             r-rlang
                             r-officer
                             r-magrittr
                             r-ggplot2
                             r-flextable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://onbrand.ubiquity.tools/")
    (synopsis "Templated Reporting Workflows in Word and PowerPoint")
    (description
     "Automated reporting in Word and PowerPoint can require customization for each
organizational template.  This package works around this by adding standard
reporting functions and an abstraction layer to facilitate automated reporting
workflows that can be replicated across different organizational templates.")
    (license license:bsd-2)))

(define-public r-onbabynames
  (package
    (name "r-onbabynames")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onbabynames" version))
              (sha256
               (base32
                "13sp9gnqnsx2b8dq13qnkin813clnanh6hzv3vi7bxy514pvmisj"))))
    (properties `((upstream-name . "onbabynames")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "<https://github.com/desautm/onbabynames>")
    (synopsis "Names Given to Babies in Ontario Between 1917 and 2018")
    (description
     "This package provides a database containing the names of the babies born in
Ontario between 1917 and 2018.  Counts of fewer than 5 names were suppressed for
privacy.")
    (license license:expat)))

(define-public r-onage
  (package
    (name "r-onage")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OnAge" version))
              (sha256
               (base32
                "1zby5sf92c185b5m19jv4ndgbv6mz107nc47zn1d6bijrypzpc20"))))
    (properties `((upstream-name . "OnAge")))
    (build-system r-build-system)
    (home-page "https://lbbe.univ-lyon1.fr/OnAge.html")
    (synopsis "Test of Between-Group Differences in the Onset of Senescence")
    (description
     "Implementation of a likelihood ratio test of differential onset of senescence
between two groups.  Given two groups with measures of age and of an individual
trait likely to be subjected to senescence (e.g. body mass), OnAge provides an
asymptotic p-value for the null hypothesis that senescence starts at the same
age in both groups.  The package implements the procedure used in Douhard et al.
(2017) <doi:10.1111/oik.04421>.")
    (license license:gpl3)))

(define-public r-onadata
  (package
    (name "r-onadata")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "onadata" version))
              (sha256
               (base32
                "0l7fqskgqm421mcijmbbb1xgi99y1j673qil5r9whwfdxk78xgqc"))))
    (properties `((upstream-name . "onadata")))
    (build-system r-build-system)
    (home-page "https://ona-book.org")
    (synopsis
     "Data Sets for Keith McNulty's Handbook of Graphs and Networks in People Analytics")
    (description
     "Data sets for network analysis related to People Analytics.  Contains various
data sets from the book Handbook of Graphs and Networks in People Analytics by
Keith McNulty (2021).")
    (license license:expat)))

(define-public r-omu
  (package
    (name "r-omu")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omu" version))
              (sha256
               (base32
                "1vsvs2nizp1vj9qcjhhiqyvymmyka5d6m8fcx44qfrhny3p4w83d"))))
    (properties `((upstream-name . "omu")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rstatix
                             r-randomforest
                             r-plyr
                             r-magrittr
                             r-httr
                             r-ggplot2
                             r-ggfortify
                             r-fsa
                             r-dplyr
                             r-caret
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/connor-reid-tiffany/Omu")
    (synopsis
     "Metabolomics Analysis Tool for Intuitive Figures and Convenient Metadata Collection")
    (description
     "Facilitates the creation of intuitive figures to describe metabolomics data by
utilizing Kyoto Encyclopedia of Genes and Genomes (KEGG) hierarchy data, and
gathers functional orthology and gene data from the KEGG-REST API.")
    (license license:gpl2)))

(define-public r-omsvg
  (package
    (name "r-omsvg")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omsvg" version))
              (sha256
               (base32
                "018sphpmmgpq5alag0il83q51f3r3jx3pnnzjrvg4gn6691nkwvz"))))
    (properties `((upstream-name . "omsvg")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-sass
                             r-rlang
                             r-magrittr
                             r-htmltools
                             r-gt
                             r-dplyr))
    (home-page "https://github.com/rich-iannone/omsvg")
    (synopsis "Build and Transform 'SVG' Objects")
    (description
     "Build SVG components using element-based functions.  With an svg object, we can
modify its graphical elements with a suite of transform functions.")
    (license license:expat)))

(define-public r-ompr-roi
  (package
    (name "r-ompr-roi")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ompr.roi" version))
              (sha256
               (base32
                "0hgqanpijc31vlj3cnwx2fkr6i5y5wrl0ib7nxcz2pz1yb3gxwbg"))))
    (properties `((upstream-name . "ompr.roi")))
    (build-system r-build-system)
    (propagated-inputs (list r-slam r-roi r-ompr r-matrix))
    (home-page "https://github.com/dirkschumacher/ompr.roi")
    (synopsis
     "Solver for 'ompr' that Uses the R Optimization Infrastructure ('ROI')")
    (description
     "This package provides a solver for ompr based on the R Optimization
Infrastructure ('ROI').  The package makes all solvers in ROI available to solve
ompr models.  Please see the ompr website
<https://dirkschumacher.github.io/ompr/> and package docs for more information
and examples on how to use it.")
    (license license:expat)))

(define-public r-ompr
  (package
    (name "r-ompr")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ompr" version))
              (sha256
               (base32
                "01ph26d4lxvmzmb9lhc8rn235crpcc4xcag8wfrsxcv7r0jz6wka"))))
    (properties `((upstream-name . "ompr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-matrix
                             r-listcomp
                             r-lazyeval
                             r-fastmap
                             r-data-table))
    (home-page "https://github.com/dirkschumacher/ompr")
    (synopsis "Model and Solve Mixed Integer Linear Programs")
    (description
     "Model mixed integer linear programs in an algebraic way directly in R. The model
is solver-independent and thus offers the possibility to solve a model with
different solvers.  It currently only supports linear constraints and objective
functions.  See the ompr website <https://dirkschumacher.github.io/ompr/> for
more information, documentation and examples.")
    (license license:expat)))

(define-public r-omopr
  (package
    (name "r-omopr")
    (version "0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omopr" version))
              (sha256
               (base32
                "1ng94jnarj7pszxzvdlnrr2dbcvv5p5yrscjw6ihqkskpraw9f7w"))))
    (properties `((upstream-name . "omopr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-dplyr r-dbplyr r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=omopr")
    (synopsis "OMOP CDM Databases using the Tidyverse")
    (description
     "Utility functions for querying electronic health record (EHR) data in OMOP
Common Data Model
<https://www.ohdsi.org/data-standardization/the-common-data-model/> databases
using a tidyverse approach based on dbplyr lazy queries.  This allows efficient
in-database querying and data wrangling without explicit writing of SQL queries.")
    (license license:lgpl3)))

(define-public r-omnibusfisher
  (package
    (name "r-omnibusfisher")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OmnibusFisher" version))
              (sha256
               (base32
                "0x3q04g45nixgsrl4biqqi6bk4kx79spq5whm3n4ppr0nkv8dw4h"))))
    (properties `((upstream-name . "OmnibusFisher")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey r-stringr r-compquadform))
    (home-page "https://cran.r-project.org/package=OmnibusFisher")
    (synopsis "Modified Fisherâs Method to Test Overall Gene-Level Effect")
    (description
     "The separate p-values of SNPs, RNA expressions and DNA methylations are
calculated by KM regression.  The correlation between different omics data are
taken into account.  This method can be applied to either samples with all three
types of omics data or samples with two types.")
    (license license:gpl2+)))

(define-public r-omnibus
  (package
    (name "r-omnibus")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omnibus" version))
              (sha256
               (base32
                "12fv9hlffxfs1b86gbq994yq4ha10yakrs8b44j11ncqjk1n16dk"))))
    (properties `((upstream-name . "omnibus")))
    (build-system r-build-system)
    (home-page "https://github.com/adamlilith/omnibus")
    (synopsis
     "Helper Tools for Managing Data, Dates, Missing Values, and Text")
    (description
     "An assortment of helper functions for managing data (e.g., rotating values in
matrices by a user-defined angle, switching from row- to column-indexing), dates
(e.g., intuiting year from messy date strings), handling missing values (e.g.,
removing elements/rows across multiple vectors or matrices if any have an NA),
and text (e.g., flushing reports to the console in real-time).")
    (license license:gpl3+)))

(define-public r-omisc
  (package
    (name "r-omisc")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Omisc" version))
              (sha256
               (base32
                "0p0iraascyx16y05rpc2c9k25s4crc0wrxy58dpj7jd47g2360ar"))))
    (properties `((upstream-name . "Omisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-mass r-copula))
    (home-page "https://cran.r-project.org/package=Omisc")
    (synopsis "Univariate Bootstrapping and Other Things")
    (description
     "Primarily devoted to implementing the Univariate Bootstrap (as well as the
Traditional Bootstrap).  In addition there are multiple functions for
DeFries-Fulker behavioral genetics models.  The univariate bootstrapping
functions, DeFries-Fulker functions, regression and traditional bootstrapping
functions form the original core.  Additional features may come online later,
however this software is a work in progress.  For more information about
univariate bootstrapping see: Lee and Rodgers (1998) and Beasley et al (2007)
<doi:10.1037/1082-989X.12.4.414>.")
    (license license:gpl3)))

(define-public r-omicwas
  (package
    (name "r-omicwas")
    (version "0.8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omicwas" version))
              (sha256
               (base32
                "03l53vbsard0hpaffcaa9l1aa3nh3w16j00k2jz2jqrrg02z0d7h"))))
    (properties `((upstream-name . "omicwas")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-matrixstats
                             r-mass
                             r-magrittr
                             r-glmnet
                             r-ff
                             r-dplyr
                             r-data-table
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fumi-github/omicwas")
    (synopsis
     "Cell-Type-Specific Association Testing in Bulk Omics Experiments")
    (description
     "In bulk epigenome/transcriptome experiments, molecular expression is measured in
a tissue, which is a mixture of multiple types of cells.  This package tests
association of a disease/phenotype with a molecular marker for each cell type.
The proportion of cell types in each sample needs to be given as input.  The
package is applicable to epigenome-wide association study (EWAS) and
differential gene expression analysis.  Takeuchi and Kato (submitted) \"omicwas:
cell-type-specific epigenome-wide and transcriptome association study\".")
    (license license:gpl3)))

(define-public r-omicspls
  (package
    (name "r-omicspls")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OmicsPLS" version))
              (sha256
               (base32
                "08vx4925j5ln366h7nzhf1ra5ciplrqw911258chi9di7gpm8g50"))))
    (properties `((upstream-name . "OmicsPLS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-softimpute r-magrittr r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OmicsPLS")
    (synopsis "Data Integration with Two-Way Orthogonal Partial Least Squares")
    (description
     "This package performs the O2PLS data integration method for two datasets,
yielding joint and data-specific parts for each dataset.  The algorithm
automatically switches to a memory-efficient approach to fit O2PLS to high
dimensional data.  It provides a rigorous and a faster alternative
cross-validation method to select the number of components, as well as functions
to report proportions of explained variation and to construct plots of the
results.  See the software article by el Bouhaddani et al (2018)
<doi:10.1186/s12859-018-2371-3>, and Trygg and Wold (2003)
<doi:10.1002/cem.775>.  It also performs Sparse Group (Penalized) O2PLS, see Gu
et al (2020) <doi:10.1186/s12859-021-03958-3> and cross-validation for the
degree of sparsity.")
    (license license:gpl3)))

(define-public r-omics
  (package
    (name "r-omics")
    (version "0.1-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "omics" version))
              (sha256
               (base32
                "1y2x33mfgq98nglhvpr1wq1v6nfiq4njy2yac47x72rpwxsj9vb1"))))
    (properties `((upstream-name . "omics")))
    (build-system r-build-system)
    (propagated-inputs (list r-pheatmap r-lme4))
    (home-page "https://cran.r-project.org/package=omics")
    (synopsis "'--omics' Data Analysis Toolbox")
    (description
     "This package provides a collection of functions to analyse --omics datasets such
as DNA methylation and gene expression profiles.")
    (license license:gpl2+)))

(define-public r-omicnavigator
  (package
    (name "r-omicnavigator")
    (version "1.11.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OmicNavigator" version))
              (sha256
               (base32
                "0c34gcwwqsl1sxsq54i4lx6ih19jqcfxqbq948rknxz3l5f00jm6"))))
    (properties `((upstream-name . "OmicNavigator")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-data-table))
    (home-page "https://github.com/abbvie-external/OmicNavigator")
    (synopsis
     "Open-Source Software for 'Omic' Data Analysis and Visualization")
    (description
     "This package provides a tool for interactive exploration of the results from
omics experiments to facilitate novel discoveries from high-throughput biology.
The software includes R functions for the bioinformatician to deposit study
metadata and the outputs from statistical analyses (e.g. differential
expression, enrichment).  These results are then exported to an interactive
JavaScript dashboard that can be interrogated on the user's local machine or
deployed online to be explored by collaborators.  The dashboard includes
sortable tables, interactive plots including network visualization, and
fine-grained filtering based on statistical significance.")
    (license license:expat)))

(define-public r-omickriging
  (package
    (name "r-omickriging")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OmicKriging" version))
              (sha256
               (base32
                "08frr38yf5d0l3zwkbq9465xrbyzsn8sx9icqc3yvfnxrkhrpzig"))))
    (properties `((upstream-name . "OmicKriging")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr r-irlba r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=OmicKriging")
    (synopsis "Poly-Omic Prediction of Complex TRaits")
    (description
     "It provides functions to generate a correlation matrix from a genetic dataset
and to use this matrix to predict the phenotype of an individual by using the
phenotypes of the remaining individuals through kriging.  Kriging is a
geostatistical method for optimal prediction or best unbiased linear prediction.
 It consists of predicting the value of a variable at an unobserved location as
a weighted sum of the variable at observed locations.  Intuitively, it works as
a reverse linear regression: instead of computing correlation (univariate
regression coefficients are simply scaled correlation) between a dependent
variable Y and independent variables X, it uses known correlation between X and
Y to predict Y.")
    (license license:gpl3+)))

(define-public r-omegag
  (package
    (name "r-omegag")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OmegaG" version))
              (sha256
               (base32
                "1aihcrgml67rvnx9vpnq2nnbc79kicw4ks1fradsa36ykkdz6b1g"))))
    (properties `((upstream-name . "OmegaG")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OmegaG")
    (synopsis
     "Omega-Generic: Composite Reliability of Multidimensional Measures")
    (description
     "It is a computer tool to estimate the item-sum score's reliability (composite
reliability, CR) in multidimensional scales with overlapping items.  An item
that measures more than one domain construct is called an overlapping item.  The
estimation is based on factor models allowing unlimited cross-factor loadings
such as exploratory structural equation modeling (ESEM) and Bayesian structural
equation modeling (BSEM).  The factor models include correlated-factor models
and bi-factor models.  Specifically for bi-factor models, a type of hierarchical
factor model, the package estimates the CR hierarchical subscale/hierarchy and
CR subscale/scale total.  The CR estimator Omega-generic was proposed by Mai,
Srivastava, and Krull (2021)
<https://whova.com/embedded/subsession/enars_202103/1450751/1452993/>.  The
current version can only handle continuous data.  Yujiao Mai contributes to the
algorithms, R programming, and application example.  Deo Kumar Srivastava
contributes to the algorithms and the application example.  Kevin R. Krull
contributes to the application example.  The package OmegaG was sponsored by
American Lebanese Syrian Associated Charities (ALSAC).  However, the contents of
OmegaG do not necessarily represent the policy of the ALSAC.")
    (license license:gpl2)))

(define-public r-olsrr
  (package
    (name "r-olsrr")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "olsrr" version))
              (sha256
               (base32
                "0rh1jb0z0ypspzcp4vbpzjz960yj76myk2j4zb1vi9gnnj3clw8y"))))
    (properties `((upstream-name . "olsrr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp
                             r-nortest
                             r-gridextra
                             r-goftest
                             r-ggplot2
                             r-data-table
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://olsrr.rsquaredacademy.com/")
    (synopsis "Tools for Building OLS Regression Models")
    (description
     "Tools designed to make it easier for users, particularly beginner/intermediate R
users to build ordinary least squares regression models.  Includes comprehensive
regression output, heteroskedasticity tests, collinearity diagnostics, residual
diagnostics, measures of influence, model fit assessment and variable selection
procedures.")
    (license license:expat)))

(define-public r-olr
  (package
    (name "r-olr")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "olr" version))
              (sha256
               (base32
                "1l6m2gbglh8idy4k2q23qgfb7in1a6pnwiji1gbygfan6paw4xza"))))
    (properties `((upstream-name . "olr")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr))
    (home-page "https://github.com/MatHatter")
    (synopsis "Optimal Linear Regression")
    (description
     "The optimal linear regression olr(), runs all the possible combinations of
linear regression equations.  The olr() returns the equation which has the
greatest adjusted R-squared term or the greatest R-squared term based on the
user's discretion.  Essentially, the olr() returns the best fit equation out of
all the possible equations.  R-squared increases with the addition of an
explanatory variable whether it is significant or not, thus this was developed
to eliminate that conundrum.  Adjusted R-squared is preferred to overcome this
phenomenon, but each combination will still produce different results and this
will return the best one.  Complimentary functions are included which list all
of the equations, all of the equations in ascending order, a function to give
the user a specific model's summary, and the list of adjusted R-squared terms &
R-squared terms.  A Python version is available at:
<https://pypi.org/project/olr/>.")
    (license license:gpl3)))

(define-public r-ollggamma
  (package
    (name "r-ollggamma")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ollggamma" version))
              (sha256
               (base32
                "1990hr9gww636xr4gkvc816hd0pc78nw3ypbzflkh5g3pmsn7bc2"))))
    (properties `((upstream-name . "ollggamma")))
    (build-system r-build-system)
    (home-page "https://mjsaldanha.com/posts/ollggamma")
    (synopsis "Odd Log-Logistic Generalized Gamma Probability Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
Odd Log-Logistic Generalized Gamma proposed in Prataviera, F. et al (2017)
<doi:10.1080/00949655.2016.1238088>.")
    (license license:expat)))

(define-public r-ollg
  (package
    (name "r-ollg")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ollg" version))
              (sha256
               (base32
                "1xjfn3hlmmx65kphchhxqa9fx6qmkiyx24lp19si1y3v92wdv2i9"))))
    (properties `((upstream-name . "ollg")))
    (build-system r-build-system)
    (home-page "https://github.com/dmazarei/ollg")
    (synopsis "Computes some Measures of OLL-G Family of Distributions")
    (description
     "Computes the pdf, cdf, quantile function, hazard function and generating random
numbers for Odd log-logistic family (OLL-G).  This family have been developed by
different authors in the recent years.  See Alizadeh (2019)
<doi:10.31801/cfsuasmas.542988> for example.")
    (license license:gpl2+)))

(define-public r-olinkanalyze
  (package
    (name "r-olinkanalyze")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OlinkAnalyze" version))
              (sha256
               (base32
                "0cmd6clj18ix64iax6j93ydgbr8gad4pn8cwh401sbbilsc9yi31"))))
    (properties `((upstream-name . "OlinkAnalyze")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rstatix
                             r-rlang
                             r-readxl
                             r-magrittr
                             r-lmertest
                             r-lme4
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-generics
                             r-forcats
                             r-emmeans
                             r-dplyr
                             r-car
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OlinkAnalyze")
    (synopsis "Facilitate Analysis of Proteomic Data from Olink")
    (description
     "This package provides a collection of functions to facilitate analysis of
proteomic data from Olink, primarily NPX data that has been exported from Olink
NPX Manager or MyData.  The functions also work on QUANT data from Olink by log-
transforming the QUANT data.  The functions are focused on reading data,
facilitating data wrangling and quality control analysis, performing statistical
analysis and generating figures to visualize the results of the statistical
analysis.  The goal of this package is to help users extract biological insights
from proteomic data run on the Olink platform.")
    (license license:agpl3+)))

(define-public r-olctools
  (package
    (name "r-olctools")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "olctools" version))
              (sha256
               (base32
                "1gbchwynvmryarz32f24v56kj57h7x6nrrm878fkjkpq140cqwzz"))))
    (properties `((upstream-name . "olctools")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Ironholds/olctools")
    (synopsis "Open Location Code Handling in R")
    (description
     "Open Location Codes <http://openlocationcode.com/> are a Google-created standard
for identifying geographic locations.  olctools provides utilities for
validating, encoding and decoding entries that follow this standard.")
    (license license:expat)))

(define-public r-oknne
  (package
    (name "r-oknne")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OkNNE" version))
              (sha256
               (base32
                "0ggx508cqkqc51qw10cajm8r3k5h474n7y8dgck2fr4db047zmcm"))))
    (properties `((upstream-name . "OkNNE")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (home-page "https://cran.r-project.org/package=OkNNE")
    (synopsis
     "k-Nearest Neighbours Ensemble via Optimal Model Selection for Regression")
    (description
     "Optimal k Nearest Neighbours Ensemble is an ensemble of base k nearest neighbour
models each constructed on a bootstrap sample with a random subset of features.
k closest observations are identified for a test point \"x\" (say), in each base k
nearest neighbour model to fit a stepwise regression to predict the output value
of \"x\".  The final predicted value of \"x\" is the mean of estimates given by all
the models.  The implemented model takes training and test datasets and trains
the model on training data to predict the test data.  Ali, A., Hamraz, M.,
Kumam, P., Khan, D.M., Khalil, U., Sulaiman, M. and Khan, Z. (2020)
<DOI:10.1109/ACCESS.2020.3010099>.")
    (license license:gpl3+)))

(define-public r-ojsr
  (package
    (name "r-ojsr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ojsr" version))
              (sha256
               (base32
                "0nwdws9kqnya9qjc939b7ksrf7ri6d25zzcdxhyhabirhnrqdg7m"))))
    (properties `((upstream-name . "ojsr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-urltools
                             r-tidyr
                             r-rvest
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ojsr")
    (synopsis "Crawler and Data Scraper for Open Journal System ('OJS')")
    (description
     "Crawler for OJS pages and scraper for meta-data from articles.  You can crawl
OJS archives, issues, articles, galleys, and search results.  You can scrape
articles metadata from their head tag in html, or from Open Archives Initiative
('OAI') records.  Most of these functions rely on OJS routing conventions
(<https://docs.pkp.sfu.ca/dev/documentation/en/architecture-routes>).")
    (license license:gpl3)))

(define-public r-oii
  (package
    (name "r-oii")
    (version "1.0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oii" version))
              (sha256
               (base32
                "1n41hikn53ikyynsravg127cw5csa8s0s1l63w5hym7c6j625ya5"))))
    (properties `((upstream-name . "oii")))
    (build-system r-build-system)
    (propagated-inputs (list r-rapportools r-gmodels r-deducer))
    (home-page "https://cran.r-project.org/package=oii")
    (synopsis "Crosstab and Statistical Tests for OII MSc Stats Course")
    (description
     "This package provides simple crosstab output with optional statistics (e.g.,
Goodman-Kruskal Gamma, Somers d, and Kendall's tau-b) as well as two-way and
one-way tables.  The package is used within the statistics component of the
Masters of Science (MSc) in Social Science of the Internet at the Oxford
Internet Institute (OII), University of Oxford, but the functions should be
useful for general data analysis and especially for analysis of categorical and
ordinal data.")
    (license license:expat)))

(define-public r-ohtadstats
  (package
    (name "r-ohtadstats")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ohtadstats" version))
              (sha256
               (base32
                "0hkjs322vii1dsminlkwpwi12sc9pd88jag7p4dmy6nfw2hh2d69"))))
    (properties `((upstream-name . "ohtadstats")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://github.com/pfpetrowski/OhtaDStats")
    (synopsis "Tomoka Ohta D Statistics")
    (description
     "Calculate's Tomoka Ohta's partitioning of linkage disequilibrium, deemed
D-statistics, for pairs of loci.  Petrowski et al. (2019)
<doi:10.5334/jors.250>.")
    (license license:expat)))

(define-public r-ohpl
  (package
    (name "r-ohpl")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OHPL" version))
              (sha256
               (base32
                "0svim112khdymdj1bsj8vri6r0zph5312y148mlh5h98rah40i08"))))
    (properties `((upstream-name . "OHPL")))
    (build-system r-build-system)
    (propagated-inputs (list r-pls r-mvtnorm r-glmnet))
    (home-page "https://ohpl.io")
    (synopsis "Ordered Homogeneity Pursuit Lasso for Group Variable Selection")
    (description
     "Ordered homogeneity pursuit lasso (OHPL) algorithm for group variable selection
proposed in Lin et al. (2017) <DOI:10.1016/j.chemolab.2017.07.004>.  The OHPL
method exploits the homogeneity structure in high-dimensional data and enjoys
the grouping effect to select groups of important variables automatically.  This
feature makes it particularly useful for high-dimensional datasets with strongly
correlated variables, such as spectroscopic data.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ohoegdm
  (package
    (name "r-ohoegdm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ohoegdm" version))
              (sha256
               (base32
                "1p1jica3fr4a5ilz1m2gxyzbapxjvgiw4v5rn90d5qgsmbp1hj42"))))
    (properties `((upstream-name . "ohoegdm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/tmsalab/ohoegdm")
    (synopsis
     "Ordinal Higher-Order Exploratory General Diagnostic Model for Polytomous Data")
    (description
     "Perform a Bayesian estimation of the ordinal exploratory Higher-order General
Diagnostic Model (OHOEGDM) for Polytomous Data described by Culpepper, S. A. and
Balamuta, J. J. (In Press) <doi:10.1080/00273171.2021.1985949>.")
    (license license:gpl2+)))

(define-public r-ohit
  (package
    (name "r-ohit")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ohit" version))
              (sha256
               (base32
                "132d4drc2phw9ppxnczb1ycdg3dv085k8p6bcaj3v866j0hfxjgb"))))
    (properties `((upstream-name . "Ohit")))
    (build-system r-build-system)
    (home-page "http://mx.nthu.edu.tw/~cking/pdf/IngLai2011.pdf")
    (synopsis "OGA+HDIC+Trim and High-Dimensional Linear Regression Models")
    (description
     "Ing and Lai (2011) <doi:10.5705/ss.2010.081> proposed a high-dimensional model
selection procedure that comprises three steps: orthogonal greedy algorithm
(OGA), high-dimensional information criterion (HDIC), and Trim.  The first two
steps, OGA and HDIC, are used to sequentially select input variables and
determine stopping rules, respectively.  The third step, Trim, is used to delete
irrelevant variables remaining in the second step.  This package aims at fitting
a high-dimensional linear regression model via OGA+HDIC+Trim.")
    (license license:gpl2)))

(define-public r-ohenery
  (package
    (name "r-ohenery")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ohenery" version))
              (sha256
               (base32
                "0i7cc110c30y7dm86srh2xkikkmlr28mvy0kkjxywxmiwnrsmzjq"))))
    (properties `((upstream-name . "ohenery")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-maxlik r-magrittr r-dplyr))
    (home-page "https://github.com/shabbychef/ohenery")
    (synopsis "Modeling of Ordinal Random Variables via Softmax Regression")
    (description
     "Supports the modeling of ordinal random variables, like the outcomes of races,
via Softmax regression, under the Harville <doi:10.1080/01621459.1973.10482425>
and Henery <doi:10.1111/j.2517-6161.1981.tb01153.x> models.")
    (license license:lgpl3)))

(define-public r-oglmx
  (package
    (name "r-oglmx")
    (version "3.0.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oglmx" version))
              (sha256
               (base32
                "13axmhbqhv4kkcdsdmp9r7p0d0kyqlsaqgyyllbkxlxb4hfz79b6"))))
    (properties `((upstream-name . "oglmx")))
    (build-system r-build-system)
    (propagated-inputs (list r-maxlik))
    (home-page "https://cran.r-project.org/package=oglmx")
    (synopsis "Estimation of Ordered Generalized Linear Models")
    (description
     "Ordered models such as ordered probit and ordered logit presume that the error
variance is constant across observations.  In the case that this assumption does
not hold estimates of marginal effects are typically biased (Weiss (1997)).
This package allows for generalization of ordered probit and ordered logit
models by allowing the user to specify a model for the variance.  Furthermore,
the package includes functions to calculate the marginal effects.  Wrapper
functions to estimate the standard limited dependent variable models are also
included.")
    (license license:gpl2)))

(define-public r-ogi
  (package
    (name "r-ogi")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OGI" version))
              (sha256
               (base32
                "0qw55jamkvdf3vfa5c0ygbymbs4d9q15dihiqz691hdfnyjvc2mk"))))
    (properties `((upstream-name . "OGI")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=OGI")
    (synopsis "Objective General Index")
    (description
     "Consider a data matrix of n individuals with p variates.  The objective general
index (OGI) is a general index that combines the p variates into a univariate
index in order to rank the n individuals.  The OGI is always positively
correlated with each of the variates.  More details can be found in Sei (2016)
<doi:10.1016/j.jmva.2016.02.005>.")
    (license license:gpl3)))

(define-public r-ofgem
  (package
    (name "r-ofgem")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ofGEM" version))
              (sha256
               (base32
                "0xdkl8k12an9pdy6i5nay4m2iakrwsp0lr3zl8gphii75j0ywz7k"))))
    (properties `((upstream-name . "ofGEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-forestplot r-compquadform))
    (home-page "https://github.com/randel/ofGEM")
    (synopsis
     "Meta-Analysis Approach with Filtering for Identifying Gene-Level Gene-Environment Interactions with Genetic Association Data")
    (description
     "Offers a gene-based meta-analysis test with filtering to detect gene-environment
interactions (GxE) with association data, proposed by Wang et al. (2018)
<doi:10.1002/gepi.22115>.  It first conducts a meta-filtering test to filter out
unpromising SNPs by combining all samples in the consortia data.  It then runs a
test of omnibus-filtering-based GxE meta-analysis (ofGEM) that combines the
strengths of the fixed- and random-effects meta-analysis with meta-filtering.
It can also analyze data from multiple ethnic groups.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-offlinechange
  (package
    (name "r-offlinechange")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "offlineChange" version))
              (sha256
               (base32
                "005afrm4ki4zz3zkgrf8c1v9gf5cjhc5g50mjkqya3r8npaccwq2"))))
    (properties `((upstream-name . "offlineChange")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=offlineChange")
    (synopsis "Detect Multiple Change Points from Time Series")
    (description
     "Detect the number and locations of change points.  The locations can be either
exact or in terms of ranges, depending on the available computational resource.
The method is based on Jie Ding, Yu Xiang, Lu Shen, Vahid Tarokh (2017)
<doi:10.1109/TSP.2017.2711558>.")
    (license license:gpl3)))

(define-public r-officedown
  (package
    (name "r-officedown")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "officedown" version))
              (sha256
               (base32
                "0h2zd7dzg63chakxsdb9n1w3sz684p63r6g1fphh4jcdmsbs5z2n"))))
    (properties `((upstream-name . "officedown")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-xml2
                             r-uuid
                             r-rvg
                             r-rmarkdown
                             r-rlang
                             r-officer
                             r-memoise
                             r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://ardata-fr.github.io/officeverse/")
    (synopsis "Enhanced 'R Markdown' Format for 'Word' and 'PowerPoint'")
    (description
     "Allows production of Microsoft corporate documents from R Markdown by reusing
formatting defined in Microsoft Word documents.  You can reuse table styles,
list styles but also add column sections, landscape oriented pages.  Table and
image captions as well as cross-references are transformed into Microsoft Word
fields, allowing documents edition and merging without issue with references;
the syntax conforms to the bookdown cross-reference definition.  Objects
generated by the officer package are also supported in the knitr chunks.
Microsoft PowerPoint presentations also benefit from this as well as the ability
to produce editable vector graphics in PowerPoint and also to define placeholder
where content is to be added.")
    (license license:expat)))

(define-public r-oews2021
  (package
    (name "r-oews2021")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oews2021" version))
              (sha256
               (base32
                "0b03jqn7bz528qky6h35h3kxr6pnfqpllc4h2lgpf790slsfc054"))))
    (properties `((upstream-name . "oews2021")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=oews2021")
    (synopsis "May 2021 Occupational Employment and Wage Statistics")
    (description
     "This package contains data from the May 2021 Occupational Employment and Wage
Statistics data release from the U.S. Bureau of Labor Statistics.  The dataset
covers employment and wages across occupations, industries, states, and at the
national level.  Metropolitan data is not included.")
    (license license:expat)))

(define-public r-oews2020
  (package
    (name "r-oews2020")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oews2020" version))
              (sha256
               (base32
                "0qan0dw6v25219xxij8ra36ccdvz21n4c1025dnb36rgb63wa3kg"))))
    (properties `((upstream-name . "oews2020")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=oews2020")
    (synopsis "May 2020 Occupational Employment and Wage Statistics")
    (description
     "This package contains data from the May 2020 Occupational Employment and Wage
Statistics data release from the U.S. Bureau of Labor Statistics.  The dataset
covers employment and wages across occupations, industries, states, and at the
national level.  Metropolitan data is not included.")
    (license license:expat)))

(define-public r-oenokpm
  (package
    (name "r-oenokpm")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OenoKPM" version))
              (sha256
               (base32
                "1rw740zw38k3q9kl89rvn740d5v4k1hhmlz4bp9ynhnq34g9p9rq"))))
    (properties `((upstream-name . "OenoKPM")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-minpack-lm r-ggtext r-ggplot2
                             r-extrafont))
    (home-page "https://cran.r-project.org/package=OenoKPM")
    (synopsis
     "Modeling the Kinetics of CO2 Production in Alcoholic Fermentation")
    (description
     "Developed to help researchers who need to model the kinetics of carbon dioxide
(CO2) production in alcoholic fermentation of wines, beers and other fermented
products.  The following models are available for modeling the CO2 production
curve as a function of time: 5PL, Gompertz and 4PL. This package has different
functions, which applied can: perform the modeling of the data obtained in the
fermentation and return the coefficients, analyze the model fit and return
different statistical metrics, and calculate the kinetic parameters: Maximum
production of carbon dioxide; Maximum rate of production of CO2; Moment in which
maximum fermentation rate occurs; Duration of the latency phase for CO2
production; CO2 Produced until Maximum fermentation rate occurs.  In addition, a
function that generates graphs with the observed and predicted data from the
models, isolated and combined, is available.  Gava, A., Borsato, D., & Ficagna,
E. (2020). \"Effect of mixture of fining agents on the fermentation kinetics of
base wine for sparkling wine production: Use of methodology for modeling\".
<doi:10.1016/j.lwt.2020.109660>.")
    (license license:gpl3)))

(define-public r-oem
  (package
    (name "r-oem")
    (version "2.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oem" version))
              (sha256
               (base32
                "0p9s68zgma9mcjnz0xg6h07yp38rqj209asg18hji8528iazbv8g"))))
    (properties `((upstream-name . "oem")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-matrix
                             r-foreach
                             r-bigmemory
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://arxiv.org/abs/1801.09661")
    (synopsis "Orthogonalizing EM: Penalized Regression for Big Tall Data")
    (description
     "Solves penalized least squares problems for big tall data using the
orthogonalizing EM algorithm of Xiong et al. (2016)
<doi:10.1080/00401706.2015.1054436>.  The main fitting function is oem() and the
functions cv.oem() and xval.oem() are for cross validation, the latter being an
accelerated cross validation function for linear models.  The big.oem() function
allows for out of memory fitting.  A description of the underlying methods and
code interface is described in Huling and Chien (2022)
<doi:10.18637/jss.v104.i06>.")
    (license license:gpl2+)))

(define-public r-oefpil
  (package
    (name "r-oefpil")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OEFPIL" version))
              (sha256
               (base32
                "0gnbbz2spaqlqqn7978l15jv7xiqpfrh8k9girrpdqih02x95rfw"))))
    (properties `((upstream-name . "OEFPIL")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr
                             r-minpack-lm
                             r-matrixcalc
                             r-mass
                             r-ggplot2
                             r-deriv))
    (home-page "https://cran.r-project.org/package=OEFPIL")
    (synopsis
     "Optimal Estimation of Function Parameters by Iterated Linearization")
    (description
     "Package for estimating the parameters of a nonlinear function using iterated
linearization via Taylor series.  Method is based on KubÃ¡Äek (2000) ISBN:
80-244-0093-6.  The algorithm is a generalization of the procedure given in
KÃ¶ning, R., Wimmer, G. and WitkovskÃ½, V. (2014)
<doi:10.1088/0957-0233/25/11/115001>.")
    (license license:gpl2+)))

(define-public r-oecd
  (package
    (name "r-oecd")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OECD" version))
              (sha256
               (base32
                "13f185xvjlhxbg94vmnzvyddidxsbkvffjabp7jkg1zjl4x680s1"))))
    (properties `((upstream-name . "OECD")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-readsdmx r-httr))
    (home-page "https://github.com/expersso/OECD")
    (synopsis "Search and Extract Data from the OECD")
    (description
     "Search and extract data from the Organization for Economic Cooperation and
Development (OECD).")
    (license license:cc0)))

(define-public r-ods
  (package
    (name "r-ods")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODS" version))
              (sha256
               (base32
                "0i7giibass7hadvv6mb7k9xrykgfss57jmm6gpbym8qcywhzq4ny"))))
    (properties `((upstream-name . "ODS")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-cubature))
    (home-page "https://github.com/Yinghao-Pan/ODS")
    (synopsis "Statistical Methods for Outcome-Dependent Sampling Designs")
    (description
     "Outcome-dependent sampling (ODS) schemes are cost-effective ways to enhance
study efficiency.  In ODS designs, one observes the exposure/covariates with a
probability that depends on the outcome variable.  Popular ODS designs include
case-control for binary outcome, case-cohort for time-to-event outcome, and
continuous outcome ODS design (Zhou et al.  2002) <doi:
10.1111/j.0006-341X.2002.00413.x>.  Because ODS data has biased sampling nature,
standard statistical analysis such as linear regression will lead to biases
estimates of the population parameters.  This package implements four
statistical methods related to ODS designs: (1) An empirical likelihood method
analyzing the primary continuous outcome with respect to exposure variables in
continuous ODS design (Zhou et al., 2002). (2) A partial linear model analyzing
the primary outcome in continuous ODS design (Zhou, Qin and Longnecker, 2011)
<doi: 10.1111/j.1541-0420.2010.01500.x>. (3) Analyze a secondary outcome in
continuous ODS design (Pan et al.  2018) <doi: 10.1002/sim.7672>. (4) An
estimated likelihood method analyzing a secondary outcome in case-cohort data
(Pan et al.  2017) <doi: 10.1111/biom.12838>.")
    (license license:gpl2+)))

(define-public r-odr
  (package
    (name "r-odr")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odr" version))
              (sha256
               (base32
                "185i81ixrm1mby5ryaymi4ixwxnx84g8f1zv6qbb1aj0wf1rxsng"))))
    (properties `((upstream-name . "odr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=odr")
    (synopsis
     "Optimal Design and Statistical Power for Multilevel Experiments")
    (description
     "Calculate the optimal sample allocation that produces the highest statistical
power for experimental studies under a budget constraint, perform power analyses
with and without accommodating cost structures of sampling, and calculate the
relative efficiency between two sample allocations.  The references for the
proposed methods include: (1) Shen, Z., & Kelcey, B. (2020).  Optimal sample
allocation under unequal costs in cluster-randomized trials.  Journal of
Educational and Behavioral Statistics, 45(4): 446-474.
<doi:10.3102/1076998620912418>. (2) Shen, Z., & Kelcey, B. (2022).  Optimal
sampling ratios in three-level multisite experiments.  Journal of Research on
Educational Effectiveness, 15 (1), 130-150. <doi:10.1080/19345747.2021.1953200>.
(3) Shen, Z., & Kelcey, B. (in press).  Optimal sample allocation in multisite
randomized trials.  The Journal of Experimental Education.
<doi:10.1080/00220973.2020.1830361>. (4) Champely, S. (2020).  pwr: Basic
functions for power analysis (Version 1.3-0) [Software].  Available from
<https://CRAN.R-project.org/package=pwr>.")
    (license license:gpl3)))

(define-public r-odpc
  (package
    (name "r-odpc")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odpc" version))
              (sha256
               (base32
                "0cbkq8parb8br1j386xk5mgwz8gkmwvp79f9sjvzhs7z6wlbp0pv"))))
    (properties `((upstream-name . "odpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-forecast
                             r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=odpc")
    (synopsis "One-Sided Dynamic Principal Components")
    (description
     "This package provides functions to compute the one-sided dynamic principal
components ('odpc') introduced in PeÃ±a, Smucler and Yohai (2019)
<DOI:10.1080/01621459.2018.1520117>.  odpc is a novel dimension reduction
technique for multivariate time series, that is useful for forecasting.  These
dynamic principal components are defined as the linear combinations of the
present and past values of the series that minimize the reconstruction mean
squared error.")
    (license license:gpl2+)))

(define-public r-odns
  (package
    (name "r-odns")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odns" version))
              (sha256
               (base32
                "00ihccylkn7q70f5c4qw19i82a80c5akwr7wh6whmqcmgj6bdq4i"))))
    (properties `((upstream-name . "odns")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-glue r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jrh-dev/odns")
    (synopsis "Access Scottish Health and Social Care Open Data")
    (description
     "Allows potential users of Scottish Health and Social Care Open Data
(<https://www.opendata.nhs.scot/>) to easily explore and extract the available
data.")
    (license license:gpl3+)))

(define-public r-odmeans
  (package
    (name "r-odmeans")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODMeans" version))
              (sha256
               (base32
                "1f8difw0npidsnn9sis8pf73i8p4p5cl63g4v02jaxmlmm184wvf"))))
    (properties `((upstream-name . "ODMeans")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-geosphere))
    (home-page "https://cran.r-project.org/package=ODMeans")
    (synopsis "OD-Means: k-Means for Origin-Destination")
    (description
     "OD-means is a hierarchical adaptive k-means algorithm based on
origin-destination pairs.  In the first layer of the hierarchy, the clusters are
separated automatically based on the variation of the within-cluster distance of
each cluster until convergence.  The second layer of the hierarchy corresponds
to the sub clustering process of small clusters based on the distance between
the origin and destination of each cluster.")
    (license license:gpl3+)))

(define-public r-odk
  (package
    (name "r-odk")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odk" version))
              (sha256
               (base32
                "0fcnr4c1clwx1sk6fgg4cx506gdi90n2h05g0i47p4s5bra0qwwl"))))
    (properties `((upstream-name . "odk")))
    (build-system r-build-system)
    (propagated-inputs (list r-openxlsx r-gsheet))
    (home-page "https://cran.r-project.org/package=odk")
    (synopsis "Convert 'ODK' or 'XLSForm' to 'SPSS' Data Frame")
    (description
     "After develop a ODK <https://opendatakit.org/> frame, we can link the frame to
Google Sheets <https://www.google.com/sheets/about/> and collect data through
Android <https://www.android.com/>.  This data uploaded to a Google sheets'.
odk2spss() function help to convert the odk frame into SPSS
<https://www.ibm.com/analytics/us/en/technology/spss/> frame.  Also able to add
downloaded Google sheets data or read data from Google sheets by using ODK frame
submission_url'.")
    (license license:gpl3)))

(define-public r-odin
  (package
    (name "r-odin")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odin" version))
              (sha256
               (base32
                "0m8afhbpjdcdscgw7ngsdr7n8qpxicn3pqjrsjbwi4hrk5aii7ry"))))
    (properties `((upstream-name . "odin")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-ring
                             r-r6
                             r-jsonlite
                             r-glue
                             r-digest
                             r-desolve
                             r-cinterpolate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mrc-ide/odin")
    (synopsis "ODE Generation and Integration")
    (description
     "Generate systems of ordinary differential equations (ODE) and integrate them,
using a domain specific language (DSL).  The DSL uses R's syntax, but compiles
to C in order to efficiently solve the system.  A solver is not provided, but
instead interfaces to the packages deSolve and dde are generated.  With these,
while solving the differential equations, no allocations are done and the
calculations remain entirely in compiled code.  Alternatively, a model can be
transpiled to R for use in contexts where a C compiler is not present.  After
compilation, models can be inspected to return information about parameters and
outputs, or intermediate values after calculations.  odin is not targeted at any
particular domain and is suitable for any system that can be expressed primarily
as mathematical expressions.  Additional support is provided for working with
delays (delay differential equations, DDE), using interpolated functions during
interpolation, and for integrating quantities that represent arrays.")
    (license license:expat)))

(define-public r-odetector
  (package
    (name "r-odetector")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odetector" version))
              (sha256
               (base32
                "041diyzap14gfj73pi4qrfnmikm8xchyii9vrz8y411dgi17aiqg"))))
    (properties `((upstream-name . "odetector")))
    (build-system r-build-system)
    (propagated-inputs (list r-ppclust))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zcebeci/odetector")
    (synopsis "Outlier Detection Using Partitioning Clustering Algorithms")
    (description
     "An object is called \"outlier\" if it remarkably deviates from the other objects
in a data set.  Outlier detection is the process to find outliers by using the
methods that are based on distance measures, clustering and spatial methods
(Ben-Gal, 2005 <ISBN 0-387-24435-2>).  It is one of the intensively studied
research topics for identification of novelties, frauds, anomalies, deviations
or exceptions in addition to its use for outlier removing in data processing.
This package provides the implementations of some novel approaches to detect the
outliers based on typicality degrees that are obtained with the soft
partitioning clustering algorithms such as Fuzzy C-means and its variants.")
    (license license:gpl2+)))

(define-public r-odesensitivity
  (package
    (name "r-odesensitivity")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODEsensitivity" version))
              (sha256
               (base32
                "0yddv5h3y0xfviqjgrbixawd00jc1rh9ngckfqka5j855vhchh66"))))
    (properties `((upstream-name . "ODEsensitivity")))
    (build-system r-build-system)
    (propagated-inputs (list r-sensitivity r-odenetwork r-desolve r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/surmann/ODEsensitivity")
    (synopsis "Sensitivity Analysis of Ordinary Differential Equations")
    (description
     "This package performs sensitivity analysis in ordinary differential equation
(ode) models.  The package utilize the ode interface from deSolve and connects
it with the sensitivity analysis from sensitivity'.  Additionally we add a
method to run the sensitivity analysis on variables with class ODEnetwork'.  A
detailed plotting function provides outputs on the calculations.  The method is
described by Weber, Theers, Surmann, Ligges, and Weihs (2018)
<doi:10.17877/DE290R-18874>.")
    (license license:lgpl3)))

(define-public r-odenetwork
  (package
    (name "r-odenetwork")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODEnetwork" version))
              (sha256
               (base32
                "0wicp0xxqq3jl0kjhc26iqpk8rwa9nv2aiwf18pkgnqxbyw6lgnp"))))
    (properties `((upstream-name . "ODEnetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-desolve r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/surmann/ODEnetwork")
    (synopsis "Network of Differential Equations")
    (description
     "Simulates a network of ordinary differential equations of order two.  The
package provides an easy interface to construct networks.  In addition you are
able to define different external triggers to manipulate the trajectory.  The
method is described by Surmann, Ligges, and Weihs (2014)
<doi:10.1109/ENERGYCON.2014.6850482>.")
    (license license:lgpl3)))

(define-public r-odeintr
  (package
    (name "r-odeintr")
    (version "1.7.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odeintr" version))
              (sha256
               (base32
                "0wfb5lgv10p0qyfbn9hdg14bda37v43lpgbwv6nbw63zzbsbazqi"))))
    (properties `((upstream-name . "odeintr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-bh))
    (home-page "https://github.com/thk686/odeintr")
    (synopsis "C++ ODE Solvers Compiled on-Demand")
    (description
     "Wraps the Boost odeint library for integration of differential equations.")
    (license license:gpl2+)))

(define-public r-odeguts
  (package
    (name "r-odeguts")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odeGUTS" version))
              (sha256
               (base32
                "1c3w934dwh5jsh5z169isv9kqh8xbfgp4rk7k1sp8mj0kvy8nqc4"))))
    (properties `((upstream-name . "odeGUTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-tidyr r-magrittr r-dplyr r-desolve))
    (home-page "https://github.com/bgoussen/odeGUTS")
    (synopsis "Solve ODE for GUTS-RED-SD and GUTS-RED-IT Using Compiled Code")
    (description
     "Allows performing forwards prediction for the General Unified Threshold model of
Survival using compiled ode code.  This package was created to avoid dependency
with the morse package that requires the installation of JAGS'.  This package is
based on functions from the morse package v3.3.1: Virgile Baudrot, Sandrine
Charles, Marie Laure Delignette-Muller, Wandrille Duchemin, Benoit Goussen, Nils
Kehrein, Guillaume Kon-Kam-King, Christelle Lopes, Philippe Ruiz, Alexander
Singer and Philippe Veber (2021) <https://CRAN.R-project.org/package=morse>.")
    (license license:gpl3+)))

(define-public r-oddstream
  (package
    (name "r-oddstream")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oddstream" version))
              (sha256
               (base32
                "1nwjw7fq6b4jdq4m2w0a7xgmzjg5a6pbma1d3r9msiz8rnhb0c54"))))
    (properties `((upstream-name . "oddstream")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-reshape
                             r-rcpproll
                             r-rcolorbrewer
                             r-pcapp
                             r-mvtsplot
                             r-moments
                             r-mgcv
                             r-mass
                             r-magrittr
                             r-ks
                             r-kernlab
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=oddstream")
    (synopsis "Outlier Detection in Data Streams")
    (description
     "We proposes a framework that provides real time support for early detection of
anomalous series within a large collection of streaming time series data.  By
definition, anomalies are rare in comparison to a system's typical behaviour.
We define an anomaly as an observation that is very unlikely given the forecast
distribution.  The algorithm first forecasts a boundary for the system's typical
behaviour using a representative sample of the typical behaviour of the system.
An approach based on extreme value theory is used for this boundary prediction
process.  Then a sliding window is used to test for anomalous series within the
newly arrived collection of series.  Feature based representation of time series
is used as the input to the model.  To cope with concept drift, the forecast
boundary for the system's typical behaviour is updated periodically.  More
details regarding the algorithm can be found in Talagala, P. D., Hyndman, R. J.,
Smith-Miles, K., et al. (2019) <doi:10.1080/10618600.2019.1617160>.")
    (license license:gpl3)))

(define-public r-oddsratio
  (package
    (name "r-oddsratio")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oddsratio" version))
              (sha256
               (base32
                "1db0pxi5j18rvi8dyc2xx1im3l269775vpjjavapjcv2pylfg5r0"))))
    (properties `((upstream-name . "oddsratio")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pat-s/oddsratio")
    (synopsis "Odds Ratio Calculation for GAM(M)s & GLM(M)s")
    (description
     "Simplified odds ratio calculation of GAM(M)s & GLM(M)s.  Provides structured
output (data frame) of all predictors and their corresponding odds ratios and
confident intervals for further analyses.  It helps to avoid false references of
predictors and increments by specifying these parameters in a list instead of
using exp(coef(model)) (standard approach of odds ratio calculation for GLMs)
which just returns a plain numeric output.  For GAM(M)s, odds ratio calculation
is highly simplified with this package since it takes care of the multiple
predict() calls of the chosen predictor while holding other predictors constant.
 Also, this package allows odds ratio calculation of percentage steps across the
whole predictor distribution range for GAM(M)s.  In both cases, confident
intervals are returned additionally.  Calculated odds ratio of GAM(M)s can be
inserted into the smooth function plot.")
    (license license:expat)))

(define-public r-oddsplotty
  (package
    (name "r-oddsplotty")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OddsPlotty" version))
              (sha256
               (base32
                "0adgbrni7yrarybh0djmq68hifwqzn2rn9mfqgwqma1d7mg3ai93"))))
    (properties `((upstream-name . "OddsPlotty")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidymodels
                             r-tibble
                             r-rmarkdown
                             r-mlbench
                             r-magrittr
                             r-ggthemes
                             r-ggplot2
                             r-e1071
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/StatsGary/OddsPlotty")
    (synopsis "Odds Plot to Visualise a Logistic Regression Model")
    (description
     "Uses the outputs of a logistic regression model, from caret
<https://CRAN.R-project.org/package=caret>, to build an odds plot.  This allows
for the rapid visualisation of odds plot ratios and works best with the outputs
of CARET's GLM model class, by returning the final trained model.")
    (license license:gpl3+)))

(define-public r-oddsapir
  (package
    (name "r-oddsapir")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oddsapiR" version))
              (sha256
               (base32
                "1w48gldbnckbm61ci67b8sdxq9dcm6mxl30gcwkm9n3dqnmdf7n7"))))
    (properties `((upstream-name . "oddsapiR")))
    (build-system r-build-system)
    (inputs (list pandoc pandoc))
    (propagated-inputs (list r-tidyr
                             r-rvest
                             r-rlang
                             r-magrittr
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-glue
                             r-dplyr
                             r-data-table
                             r-cli))
    (home-page "https://oddsapiR.sportsdataverse.org/")
    (synopsis "Access Live Sports Odds from the Odds API")
    (description
     "This package provides a utility to quickly obtain clean and tidy sports odds
from The Odds API <https://the-odds-api.com>.")
    (license license:expat)))

(define-public r-odds-n-ends
  (package
    (name "r-odds-n-ends")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odds.n.ends" version))
              (sha256
               (base32
                "1md0m1z8a6jnmkjj2njngpqpasnvgngdxj57r3jc7jq356qzg707"))))
    (properties `((upstream-name . "odds.n.ends")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=odds.n.ends")
    (synopsis
     "Odds Ratios, Contingency Table, and Model Significance from a Generalized Linear Model Object")
    (description
     "Computes odds ratios and 95% confidence intervals from a generalized linear
model object.  It also computes model significance with the chi-squared
statistic and p-value and it computes model fit using a contingency table to
determine the percent of observations for which the model correctly predicts the
value of the outcome.  Calculates model sensitivity and specificity.")
    (license license:cc0)))

(define-public r-odds-converter
  (package
    (name "r-odds-converter")
    (version "1.4.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odds.converter" version))
              (sha256
               (base32
                "09s8pg55gpsxmrbimzg5rsr1n07la93781sar6vab5p9zn9zxgx4"))))
    (properties `((upstream-name . "odds.converter")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=odds.converter")
    (synopsis "Betting Odds Conversion")
    (description
     "Conversion between the most common odds types for sports betting.  Hong Kong
odds, US odds, Decimal odds, Indonesian odds, Malaysian odds, and raw
Probability are covered in this package.")
    (license license:gpl3)))

(define-public r-odbc
  (package
    (name "r-odbc")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "odbc" version))
              (sha256
               (base32
                "1a5npspq91ksqp99nxicmdrm1703jk0gd9x6gl12i2rqf4qvwgwa"))))
    (properties `((upstream-name . "odbc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-rcpp
                             r-hms
                             r-dbi
                             r-blob
                             r-bit64))
    (native-inputs (list pkg-config))
    (home-page "https://github.com/r-dbi/odbc")
    (synopsis "Connect to ODBC Compatible Databases (using the DBI Interface)")
    (description
     "This package provides a DBI-compatible interface to ODBC databases.")
    (license license:expat)))

(define-public r-odb
  (package
    (name "r-odb")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODB" version))
              (sha256
               (base32
                "0frkbl99ilpmppm4fm97lbkqhmjgcwlz9j5vh5nzzcsxrh8qwicn"))))
    (properties `((upstream-name . "ODB")))
    (build-system r-build-system)
    (inputs (list zip))
    (propagated-inputs (list r-rjdbc r-dbi))
    (home-page "http://bioinformatics.ovsa.fr/ODB")
    (synopsis "Open Document Databases (.odb) Management")
    (description
     "This package provides functions to create, connect, update and query HSQL
databases embedded in Open Document Databases files, as OpenOffice and
LibreOffice do.")
    (license license:gpl3+)))

(define-public r-odataquery
  (package
    (name "r-odataquery")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ODataQuery" version))
              (sha256
               (base32
                "058j3rc5kh134ndsxn5gck2xh6llrs73cyxpa5z8zkmsw9am22qj"))))
    (properties `((upstream-name . "ODataQuery")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-r6 r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ODataQuery")
    (synopsis "Querying on 'OData'")
    (description
     "Make querying on OData easier.  It exposes an ODataQuery object that can be
manipulated and provides features such as selection, filtering and ordering.")
    (license license:gpl3)))

(define-public r-od
  (package
    (name "r-od")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "od" version))
              (sha256
               (base32
                "1mnf2dl3zj7zamibnv8ai0z2wbbwplzvjbzq3mswj6jc7386ja43"))))
    (properties `((upstream-name . "od")))
    (build-system r-build-system)
    (propagated-inputs (list r-sfheaders))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/itsleeds/od")
    (synopsis "Manipulate and Map Origin-Destination Data")
    (description
     "The aim of od is to provide tools and example datasets for working with
origin-destination ('OD') datasets of the type used to describe aggregate urban
mobility patterns (Carey et al.  1981) <doi:10.1287/trsc.15.1.32>.  The package
builds on functions for working with OD data in the package stplanr', (Lovelace
and Ellison 2018) <doi:10.32614/RJ-2018-053> with a focus on computational
efficiency and support for the sf class system (Pebesma 2018)
<doi:10.32614/RJ-2018-009>.  With few dependencies and a simple class system
based on data frames, the package is intended to facilitate efficient analysis
of OD datasets and to provide a place for developing new functions.  The package
enables the creation and analysis of geographic entities representing large
scale mobility patterns, from daily travel between zones in cities to migration
between countries.")
    (license license:gpl3)))

(define-public r-ocsdata
  (package
    (name "r-ocsdata")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OCSdata" version))
              (sha256
               (base32
                "0119c2i9k63mbz40lbbf7x59nf4yyhrmaynn0m0sh1h3jjbsiazc"))))
    (properties `((upstream-name . "OCSdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis r-purrr r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/opencasestudies/OCSdata")
    (synopsis "Download Data from the 'Open Case Studies' Repository")
    (description
     "This package provides functions to access and download data from the Open Case
Studies <https://www.opencasestudies.org/> repositories on GitHub
<https://github.com/opencasestudies>.  Different functions enable users to grab
the data they need at different sections in the case study, as well as download
the whole case study repository.  All the user needs to do is input the name of
the case study being worked on.  The package relies on the httr::GET() function
to access files through the GitHub API. The functions usethis::use_zip() and
usethis::create_from_github() are used to clone and/or download the case study
repositories.  To cite an individual case study, please see the respective
README file at <https://github.com/opencasestudies/>.
<https://github.com/opencasestudies/ocs-bp-rural-and-urban-obesity>
<https://github.com/opencasestudies/ocs-bp-air-pollution>
<https://github.com/opencasestudies/ocs-bp-vaping-case-study>
<https://github.com/opencasestudies/ocs-bp-opioid-rural-urban>
<https://github.com/opencasestudies/ocs-bp-RTC-wrangling>
<https://github.com/opencasestudies/ocs-bp-RTC-analysis>
<https://github.com/opencasestudies/ocs-bp-youth-disconnection>
<https://github.com/opencasestudies/ocs-bp-youth-mental-health>
<https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard>
<https://github.com/opencasestudies/ocs-bp-co2-emissions>
<https://github.com/opencasestudies/ocs-bp-diet>.")
    (license license:expat)))

(define-public r-ocs4r
  (package
    (name "r-ocs4r")
    (version "0.2-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ocs4R" version))
              (sha256
               (base32
                "09zl9jl1kzvyq0wccp41j32pr3as93qh250iaawhwkpcswjpyl89"))))
    (properties `((upstream-name . "ocs4R")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-r6
                             r-openssl
                             r-keyring
                             r-jsonlite
                             r-httr
                             r-curl))
    (home-page "https://github.com/eblondel/ocs4R")
    (synopsis "Interface to Open Collaboration Services (OCS) REST API")
    (description
     "This package provides an Interface to Open Collaboration Services OCS
(<https://www.open-collaboration-services.org/>) REST API.")
    (license license:expat)))

(define-public r-ocp
  (package
    (name "r-ocp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ocp" version))
              (sha256
               (base32
                "0q52s8j3z3xwnma3sxx6019qxid66bf0a43w4g8xjagplwps57dx"))))
    (properties `((upstream-name . "ocp")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ocp")
    (synopsis "Bayesian Online Changepoint Detection")
    (description
     "This package implements the Bayesian online changepoint detection method by
Adams and MacKay (2007) <arXiv:0710.3742> for univariate or multivariate data.
Gaussian and Poisson probability models are implemented.  Provides
post-processing functions with alternative ways to extract changepoints.")
    (license license:gpl3)))

(define-public r-ocomposition
  (package
    (name "r-ocomposition")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ocomposition" version))
              (sha256
               (base32
                "0fk8ia95yjlvyvmjw7qg72piqa40kcqq9wlb3flc6a81pys1ycb5"))))
    (properties `((upstream-name . "ocomposition")))
    (build-system r-build-system)
    (propagated-inputs (list r-coda r-bayesm))
    (home-page "https://cran.r-project.org/package=ocomposition")
    (synopsis "Regression for Rank-Indexed Compositional Data")
    (description
     "Regression model where the response variable is a rank-indexed compositional
vector (non-negative values that sum up to one and are ordered from the largest
to the smallest).  Parameters are estimated in the Bayesian framework using MCMC
methods.")
    (license license:gpl2+)))

(define-public r-ocnet
  (package
    (name "r-ocnet")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OCNet" version))
              (sha256
               (base32
                "111sk662a3qrkknlvw1x605gg5rskyayd1scafbswp6zjgrczgh4"))))
    (properties `((upstream-name . "OCNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssn
                             r-spam
                             r-sp
                             r-rgl
                             r-rgdal
                             r-igraph
                             r-fields))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=OCNet")
    (synopsis "Optimal Channel Networks")
    (description
     "Generate and analyze Optimal Channel Networks (OCNs): oriented spanning trees
reproducing all scaling features characteristic of real, natural river networks.
 As such, they can be used in a variety of numerical experiments in the fields
of hydrology, ecology and epidemiology.  See Carraro et al. (2020)
<doi:10.1002/ece3.6479> for a presentation of the package; Rinaldo et al. (2014)
<doi:10.1073/pnas.1322700111> for a theoretical overview on the OCN concept;
Furrer and Sain (2010) <doi:10.18637/jss.v036.i10> for the construct used.")
    (license license:gpl3)))

(define-public r-oclust
  (package
    (name "r-oclust")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oclust" version))
              (sha256
               (base32
                "005ml6vhi9rw6js2v4f1dc2ci8kcd7iwrkgbs4c1qxc836ygq0yx"))))
    (properties `((upstream-name . "oclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-mclust r-entropy))
    (home-page "https://cran.r-project.org/package=oclust")
    (synopsis "Gaussian Model-Based Clustering with Outliers")
    (description
     "This package provides a function to detect and trim outliers in Gaussian mixture
model-based clustering using methods described in Clark and McNicholas (2019)
<arXiv:1907.01136>.")
    (license license:gpl2+)))

(define-public r-ockc
  (package
    (name "r-ockc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ockc" version))
              (sha256
               (base32
                "0chzrs3ipa2518r4d35z4fxffgq12p1mwj0hzkxw19gdgq6aa8s7"))))
    (properties `((upstream-name . "ockc")))
    (build-system r-build-system)
    (propagated-inputs (list r-modeltools r-flexclust))
    (home-page "https://cran.r-project.org/package=ockc")
    (synopsis "Order Constrained Solutions in k-Means Clustering")
    (description
     "Extends flexclust with an R implementation of order constrained solutions in
k-means clustering (Steinley and Hubert, 2008, <doi:10.1007/s11336-008-9058-z>).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ocedata
  (package
    (name "r-ocedata")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ocedata" version))
              (sha256
               (base32
                "0yj90gaaacq6d53di2vz23za5sz9wy2j626ib3cbdhvxg731pizk"))))
    (properties `((upstream-name . "ocedata")))
    (build-system r-build-system)
    (home-page "https://dankelley.github.io/ocedata/")
    (synopsis "Oceanographic Data Sets for 'oce' Package")
    (description
     "Several Oceanographic data sets are provided for use by the oce package and for
other purposes.")
    (license license:gpl2+)))

(define-public r-ocecens
  (package
    (name "r-ocecens")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceCens" version))
              (sha256
               (base32
                "03rk7lw8bkd0z0hiwvh5akbvw54bjay84989rznkgcmiljxbxpr4"))))
    (properties `((upstream-name . "oceCens")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=oceCens")
    (synopsis "Ordered Composite Endpoints with Censoring")
    (description
     "Estimates win ratio or Mann-Whitney parameter for two group comparisons using
ordered composite endpoints with right censoring as described in Follmann, Fay,
Hamasaki, and Evans (2020)<doi:10.1002/sim.7890>.")
    (license license:gpl3)))

(define-public r-oceanwaves
  (package
    (name "r-oceanwaves")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceanwaves" version))
              (sha256
               (base32
                "1v4gj4ippv1l3r77z2ic19x5zi5lpsh5wihaqay3264zhpb3kv9a"))))
    (properties `((upstream-name . "oceanwaves")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-ggplot2 r-bspec))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/millerlp/oceanwaves")
    (synopsis "Ocean Wave Statistics")
    (description
     "Calculate ocean wave height summary statistics and process data from
bottom-mounted pressure sensor data loggers.  Derived primarily from MATLAB
functions provided by U. Neumeier at
<http://neumeier.perso.ch/matlab/waves.html>.  Wave number calculation based on
the algorithm in Hunt, J. N. (1979, ISSN:0148-9895) \"Direct Solution of Wave
Dispersion Equation\", American Society of Civil Engineers Journal of the
Waterway, Port, Coastal, and Ocean Division, Vol 105, pp 457-459.")
    (license license:gpl3)))

(define-public r-oceanview
  (package
    (name "r-oceanview")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OceanView" version))
              (sha256
               (base32
                "1ww6xhpvs3y0zx7pgj8083a8v4l4cm0b0b497b4gsjbcbnbnal9c"))))
    (properties `((upstream-name . "OceanView")))
    (build-system r-build-system)
    (propagated-inputs (list r-shape r-rgl r-plot3drgl r-plot3d))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=OceanView")
    (synopsis "Visualisation of Oceanographic Data and Model Output")
    (description
     "This package provides functions for transforming and viewing 2-D and 3-D
(oceanographic) data and model output.")
    (license license:gpl3+)))

(define-public r-oceanmap
  (package
    (name "r-oceanmap")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceanmap" version))
              (sha256
               (base32
                "06h4yxqcn3rjr3m2n82w128z110a4k5rg6msrbd0gcqksxc4vd2v"))))
    (properties `((upstream-name . "oceanmap")))
    (build-system r-build-system)
    (inputs (list imagemagick))
    (propagated-inputs (list r-sp
                             r-raster
                             r-plotrix
                             r-ncdf4
                             r-maptools
                             r-maps
                             r-mapdata
                             r-lubridate
                             r-fields
                             r-extrafont
                             r-abind))
    (home-page "https://cran.r-project.org/package=oceanmap")
    (synopsis "Plotting Toolbox for 2D Oceanographic Data")
    (description
     "Plotting toolbox for 2D oceanographic data (satellite data, sea surface
temperature, chlorophyll, ocean fronts & bathymetry).  Recognized classes and
formats include netcdf, Raster, .nc and .gz files.")
    (license license:gpl3+)))

(define-public r-oceanis
  (package
    (name "r-oceanis")
    (version "1.8.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceanis" version))
              (sha256
               (base32
                "13zdzqjlf5pihji6np9a3m2j5ycy4jvfl75knzry2ir78zr9ngj7"))))
    (properties `((upstream-name . "oceanis")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-webshot
                             r-stringr
                             r-shinythemes
                             r-shinyjs
                             r-shinybs
                             r-shiny
                             r-sf
                             r-lwgeom
                             r-leaflet-extras
                             r-leaflet
                             r-htmlwidgets
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-classint))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/insee-psar-at/oceanis-package/")
    (synopsis "Cartography for Statistical Analysis")
    (description
     "Creating maps for statistical analysis such as proportional circles, choropleth,
typology and flows.  Some functions use shiny or leaflet technologies for
dynamism and interactivity.  The great features are : - Create maps in a web
environment where the parameters are modifiable on the fly ('shiny and leaflet
technologies). - Create interactive maps through zoom and pop-up ('leaflet
technology). - Create frozen maps with the possibility to add labels.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-oceanic
  (package
    (name "r-oceanic")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceanic" version))
              (sha256
               (base32
                "06yfqyxs190b2c15z737y4nw2k7l4486rg9syv5wwdxl25rcxc1k"))))
    (properties `((upstream-name . "oceanic")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdata
                             r-sp
                             r-sf
                             r-rgeos
                             r-rgdal
                             r-maps
                             r-ggplot2
                             r-broom))
    (home-page "https://cran.r-project.org/package=oceanic")
    (synopsis "Location Identify Tool")
    (description
     "Determine the sea area where the fishing boat operates.  The latitude and
longitude of geographic coordinates are used to match oceanic areas and economic
sea areas.  You can plot the distribution map with dotplot() function.  Please
refer to Flanders Marine Institute (2020) <doi:10.14284/403>.")
    (license license:gpl2+)))

(define-public r-oceanexplorer
  (package
    (name "r-oceanexplorer")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oceanexplorer" version))
              (sha256
               (base32
                "1n8lxhnq7asfjlpgjs3xwngnc9dyk4q5yb2jn0kpb87i214z68hs"))))
    (properties `((upstream-name . "oceanexplorer")))
    (build-system r-build-system)
    (propagated-inputs (list r-waiter
                             r-thematic
                             r-stars
                             r-shinyjs
                             r-shinyfeedback
                             r-shiny
                             r-sf
                             r-rstudioapi
                             r-rnetcdf
                             r-rlang
                             r-purrr
                             r-ncmeta
                             r-miniui
                             r-maps
                             r-glue
                             r-ggplot2
                             r-fs
                             r-dt
                             r-dplyr
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://utrechtuniversity.github.io/oceanexplorer/")
    (synopsis "Explore Our Planet's Oceans with NOAA")
    (description
     "This package provides tools for easy exploration of the world ocean atlas of the
US agency National Oceanic and Atmospheric Administration (NOAA).  It includes
functions to extract NetCDF data from the repository and code to visualize
several physical and chemical parameters of the ocean.  A Shiny app further
allows interactive exploration of the data.  The methods for data collecting and
quality checks are described in several papers, which can be found here:
<https://www.ncei.noaa.gov/products/world-ocean-atlas>.")
    (license license:expat)))

(define-public r-oce
  (package
    (name "r-oce")
    (version "1.7-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oce" version))
              (sha256
               (base32
                "1zv8jpnmfwq59plsqzjjj0hi0bbg5zfm5w7hcl7m5xkkmsvyx6dq"))))
    (properties `((upstream-name . "oce")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-gsw))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://dankelley.github.io/oce/")
    (synopsis "Analysis of Oceanographic Data")
    (description
     "Supports the analysis of Oceanographic data, including ADCP measurements,
measurements made with argo floats, CTD measurements, sectional data, sea-level
time series, coastline and topographic data, etc.  Provides specialized
functions for calculating seawater properties such as potential temperature in
either the UNESCO or TEOS-10 equation of state.  Produces graphical displays
that conform to the conventions of the Oceanographic literature.  This package
is discussed extensively by Kelley (2018) \"Oceanographic Analysis with R\"
<doi:10.1007/978-1-4939-8844-0>.")
    (license license:gpl2+)))

(define-public r-ocd
  (package
    (name "r-ocd")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ocd" version))
              (sha256
               (base32
                "06pyc352pvn85k76z9797gwk0ksbb3snvh6krysp68k3lcygq872"))))
    (properties `((upstream-name . "ocd")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ocd")
    (synopsis "High-Dimensional Multiscale Online Changepoint Detection")
    (description
     "This package implements the algorithm in Chen, Wang and Samworth (2020)
<arxiv:2003.03668> for online detection of sudden mean changes in a sequence of
high-dimensional observations.  It also implements methods by Mei (2010)
<doi:10.1093/biomet/asq010>, Xie and Siegmund (2013) <doi:10.1214/13-AOS1094>
and Chan (2017) <doi:10.1214/17-AOS1546>.")
    (license license:gpl3)))

(define-public r-occupancy
  (package
    (name "r-occupancy")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "occupancy" version))
              (sha256
               (base32
                "0j50vg1405n1hp72xqsq1hp3gdbfx5yq9w1zdv6dzjc6vjhbx00d"))))
    (properties `((upstream-name . "occupancy")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats))
    (home-page "https://cran.r-project.org/package=occupancy")
    (synopsis "Probability Functions for Occupancy Distributions")
    (description
     "The classical and extended occupancy distributions occur in cases where balls
are randomly allocated to bins.  The PDF, CDF, quantile functions, generation of
random variates, and calculating the first four central moments of the
distributions are implemented as described in OâNeill (2019)
<doi:10.1080/00031305.2019.1699445>.")
    (license license:expat)))

(define-public r-occtest
  (package
    (name "r-occtest")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "occTest" version))
              (sha256
               (base32
                "1ligcwdwjq7hix7xn6k0ykvlnnsh3v7cx33xz52zrpbz2ljy29jr"))))
    (properties `((upstream-name . "occTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tictoc
                             r-svmisc
                             r-stringr
                             r-spocc
                             r-sp
                             r-sf
                             r-rnaturalearthdata
                             r-rnaturalearth
                             r-rgeos
                             r-rgdal
                             r-rgbif
                             r-raster
                             r-plyr
                             r-pingr
                             r-outliers
                             r-matrix
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-datapreparation
                             r-data-table
                             r-countrycode
                             r-coordinatecleaner
                             r-biogeo
                             r-alphahull))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=occTest")
    (synopsis "Characterizing and Filtering Species Occurrence Data")
    (description
     "Perform multiple tests for potential errors in species occurrence data and
filter, and filter data according to users specifications.")
    (license license:expat)))

(define-public r-occcite
  (package
    (name "r-occcite")
    (version "0.5.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "occCite" version))
              (sha256
               (base32
                "08bc0pi2i2fmc9fcmir150b7g8jnd58q3qaakw2gk25yjy14rp7j"))))
    (properties `((upstream-name . "occCite")))
    (build-system r-build-system)
    (propagated-inputs (list r-waffle
                             r-viridis
                             r-tidyr
                             r-taxize
                             r-stringr
                             r-rpostgresql
                             r-rlang
                             r-rgbif
                             r-rcolorbrewer
                             r-lubridate
                             r-leaflet
                             r-httr
                             r-htmltools
                             r-ggplot2
                             r-dplyr
                             r-dbi
                             r-curl
                             r-bien
                             r-bib2df))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/occCite/")
    (synopsis "Querying and Managing Large Biodiversity Occurrence Datasets")
    (description
     "Facilitates the gathering of biodiversity occurrence data from disparate
sources.  Metadata is managed throughout the process to facilitate reporting and
enhanced ability to repeat analyses.")
    (license license:gpl3)))

(define-public r-occ
  (package
    (name "r-occ")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "occ" version))
              (sha256
               (base32
                "1aka29qqwbd494kvi15yyyqkb9hks4ky2gcvykxhx2drm2fnsn4g"))))
    (properties `((upstream-name . "occ")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=occ")
    (synopsis "Estimates PET Neuroreceptor Occupancies")
    (description
     "Generic function for estimating positron emission tomography (PET) neuroreceptor
occupancies from the total volumes of distribution of a set of regions of
interest.  Fittings methods include the simple reference region and ordinary
least squares (sometimes known as occupancy plot) methods, as well as the more
efficient restricted maximum likelihood estimation'.")
    (license license:gpl3)))

(define-public r-obssens
  (package
    (name "r-obssens")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "obsSens" version))
              (sha256
               (base32
                "07dvz3v580yliwqvfisgvzvg8ly9nw3r4y5bmwkmgphbfmh88635"))))
    (properties `((upstream-name . "obsSens")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=obsSens")
    (synopsis "Sensitivity Analysis for Observational Studies")
    (description
     "Observational studies are limited in that there could be an unmeasured variable
related to both the response variable and the primary predictor.  If this
unmeasured variable were included in the analysis it would change the
relationship (possibly changing the conclusions).  Sensitivity analysis is a way
to see how much of a relationship needs to exist with the unmeasured variable
before the conclusions change.  This package provides tools for doing a
sensitivity analysis for regression (linear, logistic, and cox) style models.")
    (license license:gpl2)))

(define-public r-obsmd
  (package
    (name "r-obsmd")
    (version "6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OBsMD" version))
              (sha256
               (base32
                "0jvvcx2lc39rdnlbhykam6cf94lbci9zc1vshwfhvygblnmjgrzr"))))
    (properties `((upstream-name . "OBsMD")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=OBsMD")
    (synopsis "Objective Bayesian Model Discrimination in Follow-Up Designs")
    (description
     "This package implements the objective Bayesian methodology proposed in Consonni
and Deldossi in order to choose the optimal experiment that better discriminate
between competing models, see Deldossi and Nai Ruscone (2020)
<doi:10.18637/jss.v094.i02>.")
    (license license:gpl2+)))

(define-public r-observer
  (package
    (name "r-observer")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "observer" version))
              (sha256
               (base32
                "1027827k57qb4xppx0xxxffd1s3n7pz754irdx3v1v3piix8xi8m"))))
    (properties `((upstream-name . "observer")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-magrittr
                             r-lazyeval
                             r-dplyr
                             r-bit
                             r-bazar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulponcet/observer")
    (synopsis "Observe and Check your Data")
    (description
     "Checks that a given dataset passes user-specified rules.  The main functions are
observe_if() and inspect().")
    (license license:expat)))

(define-public r-observation
  (package
    (name "r-observation")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Observation" version))
              (sha256
               (base32
                "1z9ldp050f7jy76s8yk509nwjx1ymvk5k9d19i67brd7xcawxnr3"))))
    (properties `((upstream-name . "Observation")))
    (build-system r-build-system)
    (propagated-inputs (list r-svdialogs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulhibbing/Observation")
    (synopsis "Collect and Process Physical Activity Direct Observation Data")
    (description
     "Two-part system for first collecting then managing direct observation data, as
described by Hibbing PR, Ellingson LD, Dixon PM, & Welk GJ (2018)
<doi:10.1249/MSS.0000000000001486>.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-obmbpkg
  (package
    (name "r-obmbpkg")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OBMbpkg" version))
              (sha256
               (base32
                "01wch8wwij3fd0jambk0hpkhlnp4ryrq8qnnr2w1iad9zssjyii5"))))
    (properties `((upstream-name . "OBMbpkg")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=OBMbpkg")
    (synopsis
     "Estimate the Population Size for the Mb Capture-Recapture Model")
    (description
     "Applies an objective Bayesian method to the Mb capture-recapture model to
estimate the population size N. The Mb model is a class of capture-recapture
methods used to account for variations in capture probability due to animal
behavior.  Under the Mb formulation, the initial capture of an animal may effect
the probability of subsequent captures due to their becoming \"trap happy\" or
\"trap shy.\"")
    (license license:gpl3)))

(define-public r-obliquersf
  (package
    (name "r-obliquersf")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "obliqueRSF" version))
              (sha256
               (base32
                "1y9bkhwlb9aabfvnz62cg128c242hd1qdrwmmf6i76yfg0b0w10k"))))
    (properties `((upstream-name . "obliqueRSF")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-scales
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-prodlim
                             r-pec
                             r-missforest
                             r-glmnet
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=obliqueRSF")
    (synopsis "Oblique Random Forests for Right-Censored Time-to-Event Data")
    (description
     "Oblique random survival forests incorporate linear combinations of input
variables into random survival forests (Ishwaran, 2008
<DOI:10.1214/08-AOAS169>).  Regularized Cox proportional hazard models (Simon,
2016 <DOI:10.18637/jss.v039.i05>) are used to identify optimal linear
combinations of input variables.")
    (license license:gpl3)))

(define-public r-oblicubes
  (package
    (name "r-oblicubes")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oblicubes" version))
              (sha256
               (base32
                "0656dfaz19bmcaiqh988lryj5gql39q8pwnl6c9fab07wwd85w3k"))))
    (properties `((upstream-name . "oblicubes")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://trevorldavis.com/R/oblicubes/")
    (synopsis "3D Rendering Using Obliquely Projected Cubes and Cuboids")
    (description
     "Three-dimensional rendering for grid and ggplot2 graphics using cubes and
cuboids drawn with an oblique projection.  As a special case also supports
primary view orthographic projections.  Can be viewed as an extension to the
isocubes package <https://github.com/coolbutuseless/isocubes>.")
    (license license:expat)))

(define-public r-obl
  (package
    (name "r-obl")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OBL" version))
              (sha256
               (base32
                "03a8xk7gakziw9bd25izpsby0r7b28wyhd785p22m4dfl46663pg"))))
    (properties `((upstream-name . "OBL")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-ggplot2
                             r-forecast
                             r-foreach
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=OBL")
    (synopsis "Optimum Block Length")
    (description
     "Obtain optimum block from Non-overlapping Block Bootstrap method.")
    (license license:gpl2+)))

(define-public r-objectsignals
  (package
    (name "r-objectsignals")
    (version "0.10.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "objectSignals" version))
              (sha256
               (base32
                "087hknxhw3zqxrzdazbqw9zxi01dvrzcgm6k1i7r231vvvm6nxid"))))
    (properties `((upstream-name . "objectSignals")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=objectSignals")
    (synopsis "Observer Pattern for S4")
    (description
     "This package provides a mutable Signal object can report changes to its state,
clients could register functions so that they are called whenever the signal is
emitted.  The signal could be emitted, disconnected, blocked, unblocked, and
buffered.")
    (license license:gpl2+)))

(define-public r-objectremover
  (package
    (name "r-objectremover")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "objectremover" version))
              (sha256
               (base32
                "0qywigwb6r5lzvw8ylgriwignk4ayfkvfnmc6cb1yxsg0hrc4hiv"))))
    (properties `((upstream-name . "objectremover")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-miniui))
    (home-page "https://github.com/alan-y/objectremover")
    (synopsis
     "'RStudio' Addin for Removing Objects from the Global Environment Based on Patterns and Object Type")
    (description
     "An RStudio addin to assist with removing objects from the global environment.
Features include removing objects according to name patterns and object type.
During the course of an analysis, temporary objects are often created and this
tool assists with removing them quickly.  This can be useful when memory
management within R is important.")
    (license license:expat)))

(define-public r-objectproperties
  (package
    (name "r-objectproperties")
    (version "0.6.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "objectProperties" version))
              (sha256
               (base32
                "02rbxp2w0q6sr3zvgj99a4hi8dldn57isvimfhqjm1j8yc8p3afz"))))
    (properties `((upstream-name . "objectProperties")))
    (build-system r-build-system)
    (propagated-inputs (list r-objectsignals))
    (home-page "https://cran.r-project.org/package=objectProperties")
    (synopsis "Factory of Self-Describing Properties")
    (description
     "Supports the definition of sets of properties on objects.  Observers can listen
to changes on individual properties or the set as a whole.  The properties are
meant to be fully self-describing.  In support of this, there is a framework for
defining enumerated types, as well as other bounded types, as S4 classes.")
    (license license:gpl2+)))

(define-public r-obic
  (package
    (name "r-obic")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OBIC" version))
              (sha256
               (base32
                "0yrgnrhxn5nv0gbhzj2psskr12yaygv7bns64al1cgk18dlrsgb0"))))
    (properties `((upstream-name . "OBIC")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AgroCares/Open-Bodem-Index-Calculator")
    (synopsis "Calculate the Open Bodem Index (OBI) Score")
    (description
     "The Open Bodem Index (OBI) is a method to evaluate the quality of soils of
agricultural fields in The Netherlands and the sustainability of the current
agricultural practices.  The OBI score is based on four main criteria: chemical,
physical, biological and management, which consist of more than 21 indicators.
By providing results of a soil analysis and management info the OBIC package can
be use to calculate he scores, indicators and derivatives that are used by the
OBI. More information about the Open Bodem Index can be found at
<https://www.openbodemindex.nl/>.")
    (license license:gpl3)))

(define-public r-obfuscator
  (package
    (name "r-obfuscator")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "obfuscatoR" version))
              (sha256
               (base32
                "1pnlbfsp5fjvhwn2yl495v38g1wjg5l4ry79i1a2jznq2l91hn4p"))))
    (properties `((upstream-name . "obfuscatoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-rfast
                             r-readr
                             r-matrixstats
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://obfuscator.edsandorf.me")
    (synopsis "Obfuscation Game Designs")
    (description
     "When people make decisions, they may do so using a wide variety of decision
rules.  The package allows users to easily create obfuscation games to test the
obfuscation hypothesis.  It provides an easy to use interface and multiple
options designed to vary the difficulty of the game and tailor it to the user's
needs.  For more detail: Chorus et al., 2021, Obfuscation maximization-based
decision-making: Theory, methodology and first empirical evidence, Mathematical
Social Sciences, 109, 28-44.")
    (license license:gpl3)))

(define-public r-obaspatial
  (package
    (name "r-obaspatial")
    (version "1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OBASpatial" version))
              (sha256
               (base32
                "13jx5f5piii9cys7xyhfwilyg87zsi632fscy8902mlhbgg7abkp"))))
    (properties `((upstream-name . "OBASpatial")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncdist
                             r-mvtnorm
                             r-modeest
                             r-laplacesdemon
                             r-invgamma
                             r-hdinterval
                             r-cubature))
    (home-page "https://cran.r-project.org/package=OBASpatial")
    (synopsis "Objective Bayesian Analysis for Spatial Regression Models")
    (description
     "It makes an objective Bayesian analysis of the spatial regression model using
both the normal (NSR) and student-T (TSR) distributions.  The functions provided
give prior and posterior objective densities and allow default Bayesian
estimation of the model regression parameters.  Details can be found in Ordonez
et al. (2020) <arXiv:2004.04341>.")
    (license license:gpl2+)))

(define-public r-obanalytics
  (package
    (name "r-obanalytics")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "obAnalytics" version))
              (sha256
               (base32
                "1l4ld120qk0adycmvqrkzada10kb7z03lj2njzqagmacl1z8598f"))))
    (properties `((upstream-name . "obAnalytics")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-reshape2 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/phil8192/ob-analytics")
    (synopsis "Limit Order Book Analytics")
    (description
     "Data processing, visualisation and analysis of Limit Order Book event data.")
    (license license:gpl2+)))

(define-public r-oaxaca
  (package
    (name "r-oaxaca")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oaxaca" version))
              (sha256
               (base32
                "1z3sbkgzaqq6n1bz0f17gqrbfjbm8bp20384ryx3jq2v50b6gbry"))))
    (properties `((upstream-name . "oaxaca")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2 r-formula))
    (home-page "https://cran.r-project.org/package=oaxaca")
    (synopsis "Blinder-Oaxaca Decomposition")
    (description
     "An implementation of the Blinder-Oaxaca decomposition for linear regression
models.")
    (license license:gpl2+)))

(define-public r-oasisr
  (package
    (name "r-oasisr")
    (version "3.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OasisR" version))
              (sha256
               (base32
                "1388ld2nws3ppnkavg8s59q3inqf365c5cf9qvzbj6icmwqs9rdd"))))
    (properties `((upstream-name . "OasisR")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdep
                             r-seg
                             r-rgeos
                             r-rgdal
                             r-outliers
                             r-measurements))
    (home-page "https://cran.r-project.org/package=OasisR")
    (synopsis
     "Outright Tool for the Analysis of Spatial Inequalities and Segregation")
    (description
     "This package provides a set of indexes and tests for the analysis of social
segregation.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-oarray
  (package
    (name "r-oarray")
    (version "1.4-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Oarray" version))
              (sha256
               (base32
                "04jng89s19rd8lbjm76wm4p4ggkffwnsa5qa60c4lwn2rj89a8a1"))))
    (properties `((upstream-name . "Oarray")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Oarray")
    (synopsis "Arrays with Arbitrary Offsets")
    (description "Generalise the starting point of the array index.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-oaqc
  (package
    (name "r-oaqc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oaqc" version))
              (sha256
               (base32
                "1rc0l79xygmr2rp5sjadzigbj65a13z5xlvrxzy26cl0wsxwhmjf"))))
    (properties `((upstream-name . "oaqc")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=oaqc")
    (synopsis "Computation of the Orbit-Aware Quad Census")
    (description
     "This package implements the efficient algorithm by Ortmann and Brandes (2017)
<doi:10.1007/s41109-017-0027-2> to compute the orbit-aware frequency
distribution of induced and non-induced quads, i.e.  subgraphs of size four.
Given an edge matrix, data frame, or a graph object (e.g., igraph'), the
orbit-aware counts are computed respective each of the edges and nodes.")
    (license license:gpl3)))

(define-public r-oaplots
  (package
    (name "r-oaplots")
    (version "0.0.25")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oaPlots" version))
              (sha256
               (base32
                "0c5ig1ar02vg38pjjmp3gd53ij1j7pzajs0zrlfajz141qkv2ysr"))))
    (properties `((upstream-name . "oaPlots")))
    (build-system r-build-system)
    (propagated-inputs (list r-oacolors r-ggplot2))
    (home-page "http://www.openanalytics.eu")
    (synopsis "OpenAnalytics Plots Package")
    (description "Offers a suite of functions for enhancing R plots.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-oaiharvester
  (package
    (name "r-oaiharvester")
    (version "0.3-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "OAIHarvester" version))
              (sha256
               (base32
                "00j5f6kw67qr83cmds9y5rzwiv2sb2b2bfbr5cclpr3wcsw278fs"))))
    (properties `((upstream-name . "OAIHarvester")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-curl))
    (home-page "https://cran.r-project.org/package=OAIHarvester")
    (synopsis "Harvest Metadata Using OAI-PMH Version 2.0")
    (description
     "Harvest metadata using the Open Archives Initiative Protocol for Metadata
Harvesting (OAI-PMH) version 2.0 (for more information, see
<https://www.openarchives.org/OAI/openarchivesprotocol.html>).")
    (license license:gpl2)))

(define-public r-oacolors
  (package
    (name "r-oacolors")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "oaColors" version))
              (sha256
               (base32
                "040sdqrk9dciylnnrrshlj06s9qhvngii9shx1p8412ip7mk8r1m"))))
    (properties `((upstream-name . "oaColors")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-mass))
    (home-page "http://www.openanalytics.eu")
    (synopsis "OpenAnalytics Colors Package")
    (description
     "This package provides carefully chosen color palettes as used a.o.  at
OpenAnalytics <http://www.openanalytics.eu>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-o2plsda
  (package
    (name "r-o2plsda")
    (version "0.0.18")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "o2plsda" version))
              (sha256
               (base32
                "17dmb82q4g7lspvrvrz9324qinkr07vlhxsr2vd5ikj7cqxivgmv"))))
    (properties `((upstream-name . "o2plsda")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=o2plsda")
    (synopsis "Multiomics Data Integration")
    (description
     "This package provides functions to do O2PLS-DA analysis for multiple omics data
integration.  The algorithm came from \"O2-PLS, a two-block (XÂ±Y) latent
variable regression (LVR) method with an integral OSC filter\" which published by
Johan Trygg and Svante Wold at 2003 <doi:10.1002/cem.775>.  O2PLS is a
bidirectional multivariate regression method that aims to separate the
covariance between two data sets (it was recently extended to multiple data
sets) (LÃ¶fstedt and Trygg, 2011 <doi:10.1002/cem.1388>; LÃ¶fstedt et al., 2012
<doi:10.1016/j.aca.2013.06.026>) from the systematic sources of variance being
specific for each data set separately.")
    (license license:gpl3)))

(define-public r-o2geosocial
  (package
    (name "r-o2geosocial")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "o2geosocial" version))
              (sha256
               (base32
                "158nbc45h4k677lgx9n976d9kz7hy8fb7z5s2v6pmkmh521jdn2a"))))
    (properties `((upstream-name . "o2geosocial")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-rcpp
                             r-outbreaker2
                             r-ggplot2
                             r-geosphere
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alxsrobert/o2geosocial")
    (synopsis "Reconstruction of Transmission Chains from Surveillance Data")
    (description
     "Bayesian reconstruction of who infected whom during past outbreaks using
routinely-collected surveillance data.  Inference of transmission trees using
genotype, age specific social contacts, distance between cases and onset dates
of the reported cases. (Robert A, Kucharski AJ, Gastanaduy PA, Paul P, Funk S.
2020 <doi:10.1098/rsif.2020.0084>).")
    (license license:expat)))

