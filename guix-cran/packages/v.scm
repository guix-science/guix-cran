(define-module (guix-cran packages v)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages web)
  #:use-module (gnu packages algebra)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages curl)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages ssh)
  #:use-module (gnu packages tls)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages python)
  #:use-module (gnu packages image-processing)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages bioinformatics)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages pcre)
  #:use-module (guix-cran packages z)
  #:use-module (guix-cran packages y)
  #:use-module (guix-cran packages x)
  #:use-module (guix-cran packages w)
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

(define-public r-vwpre
  (package
    (name "r-vwpre")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VWPre" version))
       (sha256
        (base32 "1hhpqxzh9h5dy45r04l1fa1k4a14s0m6z6fhfg22kpwpryszbc44"))))
    (properties `((upstream-name . "VWPre")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-rlang
                             r-mgcv
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VWPre")
    (synopsis "Tools for Preprocessing Visual World Data")
    (description
     "Gaze data from the Visual World Paradigm requires significant preprocessing
prior to plotting and analyzing the data.  This package provides functions for
preparing visual world eye-tracking data for statistical analysis and plotting.
It can prepare data for linear analyses (e.g., ANOVA, Gaussian-family LMER,
Gaussian-family GAMM) as well as logistic analyses (e.g., binomial-family LMER
and binomial-family GAMM).  Additionally, it contains various plotting functions
for creating grand average and conditional average plots.  See the vignette for
samples of the functionality.  Currently, the functions in this package are
designed for handling data collected with SR Research Eyelink eye trackers using
Sample Reports created in SR Research Data Viewer.  While we would like to add
functionality for data collected with other systems in the future, the current
package is considered to be feature-complete; further updates will mainly entail
maintenance and the addition of minor functionality.")
    (license license:gpl3)))

(define-public r-vwline
  (package
    (name "r-vwline")
    (version "0.2-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vwline" version))
       (sha256
        (base32 "0cyv3kn6wza7bh7nzzq74s08b4ifr7cs6kkmqpdxqbh2yabim207"))))
    (properties `((upstream-name . "vwline")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-polyclip r-gridbezier))
    (home-page "https://github.com/pmur002/vwline")
    (synopsis "Draw Variable-Width Lines")
    (description
     "This package provides R functions to draw lines and curves with the width of the
curve allowed to vary along the length of the curve.")
    (license license:gpl2+)))

(define-public r-vvtermtime
  (package
    (name "r-vvtermtime")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvtermtime" version))
       (sha256
        (base32 "0c7cry87wgk86wydrw0l8icc25lx5fcxzm1wyfs2ls8ppmpkz3l7"))))
    (properties `((upstream-name . "vvtermtime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vusaverse/vvtermtime")
    (synopsis "Interface for 'Semestry TermTime' Services")
    (description
     "This package provides an R interface for interacting with the Semestry
@code{TermTime} services.  It allows users to retrieve scheduling data from the
API. see <https://github.com/vusaverse/vvtermtime/blob/main/openapi_7.7.0.pdf>
for details.")
    (license license:expat)))

(define-public r-vvtableau
  (package
    (name "r-vvtableau")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvtableau" version))
       (sha256
        (base32 "1d2d8zd6zp9dsmmzjrslhjkm41312g7dl0a333yrs57cwzxarc5l"))))
    (properties `((upstream-name . "vvtableau")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xml
                             r-tidyr
                             r-stringr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vusaverse/vvtableau")
    (synopsis "R Interface for 'Tableau' Services")
    (description
     "This package provides an R interface for interacting with the Tableau Server.
It allows users to perform various operations such as publishing workbooks,
refreshing data extracts, and managing users using the Tableau REST API (see
<https://help.tableau.com/current/api/rest_api/en-us/REST/rest_api_ref.htm> for
details).  Additionally, it includes functions to perform manipulations on local
Tableau workbooks.")
    (license license:expat)))

(define-public r-vvshiny
  (package
    (name "r-vvshiny")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvshiny" version))
       (sha256
        (base32 "015rac6hz6k5wrg75abiyicjpljfs3cxibrala4dm5jxnwrm79sa"))))
    (properties `((upstream-name . "vvshiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-shinywidgets
                             r-shinydashboardplus
                             r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-rlang
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-htmlwidgets
                             r-htmltools
                             r-ggpubr
                             r-ggplot2
                             r-ggalluvial
                             r-forcats
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vvshiny")
    (synopsis "Create Complex Shiny Apps More Easily")
    (description
     "Helper and Wrapper functions for making shiny dashboards more easily.  Functions
are made modular and lower level functions are exported as well, so many
use-cases are supported.")
    (license license:expat)))

(define-public r-vvsculptor
  (package
    (name "r-vvsculptor")
    (version "0.4.10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvsculptor" version))
       (sha256
        (base32 "076fdzhr5b39k1vavj3jf7897vpdjgfbf8fxxqi6y4cy0pz4iisi"))))
    (properties `((upstream-name . "vvsculptor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=vvsculptor")
    (synopsis "Apply Manipulations to Data Frames")
    (description
     "This package provides a set of functions for manipulating data frames in
accordance with specific business rules.  In addition, it includes wrapper
functions for commonly used functions from the popular tidyverse package, making
it easy to integrate these functions into data analysis workflows.  The package
is designed to streamline data preprocessing and help users quickly and
efficiently perform data transformations that are specific to their business
needs.")
    (license license:expat)))

(define-public r-vvmover
  (package
    (name "r-vvmover")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvmover" version))
       (sha256
        (base32 "0bg7mc8wz3d9ibp2kbc8lc0zdbbf8i2rj3hxsrnk0yrzxbb6czdg"))))
    (properties `((upstream-name . "vvmover")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readxl r-readr r-magrittr r-dplyr))
    (home-page "https://vusaverse.github.io/vvmover/")
    (synopsis "Read and Write Data")
    (description
     "Offers a wide range of functions for reading and writing data in various file
formats, including CSV, RDS, Excel and ZIP files.  Additionally, it provides
functions for retrieving metadata associated with files, such as file size and
creation date, making it easy to manage and organize large data sets.  This
package is designed to simplify data import and export tasks, and provide users
with a comprehensive set of tools to work with different types of data files.")
    (license license:expat)))

(define-public r-vvfiller
  (package
    (name "r-vvfiller")
    (version "0.6.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvfiller" version))
       (sha256
        (base32 "0kknnnkfdw9h4wxs215pgmg1j0mbl5lqfw4xl0il8rw6n0yy7vsn"))))
    (properties `((upstream-name . "vvfiller")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-purrr r-dplyr))
    (home-page "https://github.com/vusaverse/vvfiller")
    (synopsis "Fill Data Points")
    (description
     "This package provides numerous functions to fill data.  These can be applied
either to missing or skewed data.  The functions are designed within the scope
of Student Analytics.")
    (license license:expat)))

(define-public r-vvdoctor
  (package
    (name "r-vvdoctor")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvdoctor" version))
       (sha256
        (base32 "1sxj7a6pg1kynwsb1fc28l3ipj3jf5azn4cyck0489hsxqnyjn5p"))))
    (properties `((upstream-name . "vvdoctor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shinywidgets
                             r-shinyjs
                             r-shiny
                             r-rstatix
                             r-rintrojs
                             r-magrittr
                             r-irr
                             r-exact2x2
                             r-dt
                             r-desctools
                             r-datamods))
    (home-page "https://github.com/vusaverse/vvdoctor")
    (synopsis "Statistical Test App with R 'shiny'")
    (description
     "This package provides a user-friendly R shiny app for performing various
statistical tests on datasets.  It allows users to upload data in numerous
formats and perform statistical analyses.  The app dynamically adapts its
options based on the selected columns and supports both single and multiple
column comparisons.  The app's user interface is designed to streamline the
process of selecting datasets, columns, and test options, making it easy for
users to explore and interpret their data.  The underlying functions for
statistical tests are well-organized and can be used independently within other
R scripts.")
    (license license:expat)))

(define-public r-vvconverter
  (package
    (name "r-vvconverter")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvconverter" version))
       (sha256
        (base32 "0brb108ygha6v12w9h0b8302qv1yd63bgwkmrwma0crabsdsx9c0"))))
    (properties `((upstream-name . "vvconverter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-polyglotr
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-checkmate))
    (home-page "https://vusaverse.github.io/vvconverter/")
    (synopsis "Apply Transformations to Data")
    (description
     "This package provides a set of functions for data transformations.
Transformations are performed on character and numeric data.  As the scope of
the package is within Student Analytics, there are functions focused around the
academic year.")
    (license license:expat)))

(define-public r-vvcanvas
  (package
    (name "r-vvcanvas")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvcanvas" version))
       (sha256
        (base32 "0yksqkpvvzz8dgq6fgfh804agarn3n5anz0qf9l9frmr9z3lhdsw"))))
    (properties `((upstream-name . "vvcanvas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-mime
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-htm2txt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vusaverse/vvcanvas")
    (synopsis "'Canvas' LMS API Integration")
    (description
     "Allow R users to interact with the Canvas Learning Management System (LMS) API
(see <https://canvas.instructure.com/doc/api/all_resources.html> for details).
It provides a set of functions to access and manipulate course data,
assignments, grades, users, and other resources available through the Canvas
API.")
    (license license:expat)))

(define-public r-vvbitwarden
  (package
    (name "r-vvbitwarden")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvbitwarden" version))
       (sha256
        (base32 "0zg5sxbvi3zrhw8nw8dzk91d6gl9p7xga5qwhsw98cikffhh7ajv"))))
    (properties `((upstream-name . "vvbitwarden")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-processx r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vvbitwarden")
    (synopsis "Interacts with 'Bitwarden Secrets Manager'")
    (description
     "This package provides functions to securely retrieve secrets from a Bitwarden
Secrets Manager vault using the Bitwarden CLI', enabling secret and
configuration management within R packages and workflows.  For more information
visit <https://bitwarden.com/products/secrets-manager/>.")
    (license license:expat)))

(define-public r-vvauditor
  (package
    (name "r-vvauditor")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vvauditor" version))
       (sha256
        (base32 "164vjd9rf0hxx3r8wjf3vyqdfm3fp3zzq2pqvirykpxjrr7j1bic"))))
    (properties `((upstream-name . "vvauditor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-readr
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-kit
                             r-janitor
                             r-findr
                             r-dplyr
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vvauditor")
    (synopsis "Creates Assertion Tests")
    (description
     "Offers a comprehensive set of assertion tests to help users validate the
integrity of their data.  These tests can be used to check for specific
conditions or properties within a dataset and help ensure that data is accurate
and reliable.  The package is designed to make it easy to add quality control
checks to data analysis workflows and to aid in identifying and correcting any
errors or inconsistencies in data.")
    (license license:expat)))

(define-public r-vurocs
  (package
    (name "r-vurocs")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VUROCS" version))
       (sha256
        (base32 "1r4hq7az50v7lbyx5w6b4zs2kwi5cypqn9k6ac4kr8jr3jlyanr3"))))
    (properties `((upstream-name . "VUROCS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=VUROCS")
    (synopsis "Volume under the ROC Surface for Multi-Class ROC Analysis")
    (description
     "Calculates the volume under the ROC surface and its (co)variance for ordered
multi-class ROC analysis as well as certain bivariate ordinal measures of
association.")
    (license license:gpl3)))

(define-public r-vulntoolkit
  (package
    (name "r-vulntoolkit")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VulnToolkit" version))
       (sha256
        (base32 "01m8spmd4na7mxgnplnnq3n4pab9349z2dk44b455vcadll0fsdi"))))
    (properties `((upstream-name . "VulnToolkit")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/troyhill/VulnToolkit")
    (synopsis "Analysis of Tidal Datasets")
    (description
     "This package contains functions for analysis and summary of tidal datasets.
Also provides access to tidal data collected by the National Oceanic and
Atmospheric Administration's Center for Operational Oceanographic Products and
Services and the Permanent Service for Mean Sea Level.  For detailed description
and application examples, see Hill, T.D. and S.C. Anisfeld (2021)
<doi:10.6084/m9.figshare.14161202.v1> and Hill, T.D. and S.C. Anisfeld (2015)
<doi:10.1016/j.ecss.2015.06.004>.")
    (license license:gpl3)))

(define-public r-vuer
  (package
    (name "r-vuer")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vueR" version))
       (sha256
        (base32 "07l1q5dgwplcfcp1ipbcx2i4d54f7fn4rclb71yb7ms2g98lq1gw"))))
    (properties `((upstream-name . "vueR")))
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
    (propagated-inputs (list r-htmlwidgets r-htmltools))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/vue-r/vueR")
    (synopsis "'Vuejs' Helpers and 'Htmlwidget'")
    (description
     "Make it easy to use vue in R with helper dependency functions and examples.")
    (license license:expat)))

(define-public r-vudc
  (package
    (name "r-vudc")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vudc" version))
       (sha256
        (base32 "0zxz6n3ixa3xjzcinky8ymqjx9w8y8z65mz8d84dl00mxzkmkz4h"))))
    (properties `((upstream-name . "vudc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vudc")
    (synopsis "Visualization of Univariate Data for Comparison")
    (description
     "This package contains functions for visualization univariate data: ccdplot and
qddplot.")
    (license license:gpl2+)))

(define-public r-vtype
  (package
    (name "r-vtype")
    (version "0.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vtype" version))
       (sha256
        (base32 "0j070bn86a6hlg99h2qaf0dlbnjjsmx1zdcmvl3acymr31bqyvrj"))))
    (properties `((upstream-name . "vtype")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randomforest))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vtype")
    (synopsis "Estimates the Variable Type in Error Afflicted Data")
    (description
     "Estimates the type of variables in non-quality controlled data.  The prediction
is based on a random forest model, trained on over 5000 medical variables with
accuracy of 99%.  The accuracy can hardy depend on type and coding style of
data.")
    (license license:gpl3+)))

(define-public r-vtshiny
  (package
    (name "r-vtshiny")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VTShiny" version))
       (sha256
        (base32 "1zq6irla3q7hqs8jpjdya7vy3frqrj72rwmd1sgxwrkgpmpxw6x7"))))
    (properties `((upstream-name . "VTShiny")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rmarkdown r-envstats))
    (home-page "https://cran.r-project.org/package=VTShiny")
    (synopsis "Interactive Document for Working with Variance Analysis")
    (description
     "An interactive document on the topic of variance analysis using rmarkdown and
shiny packages.  Runtime examples are provided in the package function as well
as at
<https://predanalyticssessions1.shinyapps.io/@code{chisquareVarianceTest/>}.")
    (license license:gpl2)))

(define-public r-vtree
  (package
    (name "r-vtree")
    (version "5.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vtree" version))
       (sha256
        (base32 "0qszya11qh2xzq1blbrcli3l8hhf0dannhh2hn3gi59c9dn3jr16"))))
    (properties `((upstream-name . "vtree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-utf8
                             r-shiny
                             r-rsvg
                             r-htmlwidgets
                             r-diagrammersvg
                             r-diagrammer))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/nbarrowman/vtree")
    (synopsis "Display Information About Nested Subsets of a Data Frame")
    (description
     "This package provides a tool for calculating and drawing \"variable trees\".
Variable trees display information about nested subsets of a data frame.")
    (license license:gpl3)))

(define-public r-vtreat
  (package
    (name "r-vtreat")
    (version "1.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vtreat" version))
       (sha256
        (base32 "04ymyv7ybahs4k6yc2dbmhhnxnjsa09h8cbfayslr655rzlgyqx5"))))
    (properties `((upstream-name . "vtreat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-wrapr r-digest))
    (native-inputs (list r-r-rsp r-knitr))
    (home-page "https://github.com/WinVector/vtreat/")
    (synopsis "Statistically Sound 'data.frame' Processor/Conditioner")
    (description
     "This package provides a data.frame processor/conditioner that prepares
real-world data for predictive modeling in a statistically sound manner.  vtreat
prepares variables so that data has fewer exceptional cases, making it easier to
safely use models in production.  Common problems vtreat defends against: Inf',
NA', too many categorical levels, rare categorical levels, and new categorical
levels (levels seen during application, but not during training).  Reference:
\"'vtreat': a data.frame Processor for Predictive Modeling\", Zumel, Mount, 2016,
<DOI:10.5281/zenodo.1173313>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-vtable
  (package
    (name "r-vtable")
    (version "1.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vtable" version))
       (sha256
        (base32 "0n96r41i5w778z4ljg2rn99q96j60fp04h9g15awxj15g3n45xrj"))))
    (properties `((upstream-name . "vtable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sjlabelled r-rstudioapi r-knitr r-kableextra
                             r-haven))
    (native-inputs (list r-knitr))
    (home-page "https://nickch-k.github.io/vtable/")
    (synopsis "Variable Table for Variable Documentation")
    (description
     "Automatically generates HTML variable documentation including variable names,
labels, classes, value labels (if applicable), value ranges, and summary
statistics.  See the vignette \"vtable\" for a package overview.")
    (license license:expat)))

(define-public r-vsusp
  (package
    (name "r-vsusp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VsusP" version))
       (sha256
        (base32 "1nrs94gyxc2ldihnn28wijigfs13ipigcvkycnxnzd60hg5j8c7i"))))
    (properties `((upstream-name . "VsusP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-bayesreg))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/nilson01/VsusP-variable-selection-using-shrinkage-priors")
    (synopsis "Variable Selection using Shrinkage Priors")
    (description
     "Bayesian variable selection using shrinkage priors to identify significant
variables in high-dimensional datasets.  The package includes methods for
determining the number of significant variables through innovative clustering
techniques of posterior distributions, specifically utilizing the 2-Means and
Sequential 2-Means (S2M) approaches.  The package aims to simplify the variable
selection process with minimal tuning required in statistical analysis.")
    (license license:gpl3+)))

(define-public r-vsurf
  (package
    (name "r-vsurf")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VSURF" version))
       (sha256
        (base32 "14rkd1n7ffy7hz3xgqqysbphy89h6lpmkhjrlpsfmwb2jzhv29y0"))))
    (properties `((upstream-name . "VSURF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-randomforest r-foreach r-doparallel))
    (home-page "https://github.com/robingenuer/VSURF")
    (synopsis "Variable Selection Using Random Forests")
    (description
     "Three steps variable selection procedure based on random forests.  Initially
developed to handle high dimensional data (for which number of variables largely
exceeds number of observations), the package is very versatile and can treat
most dimensions of data, for regression and supervised classification problems.
First step is dedicated to eliminate irrelevant variables from the dataset.
Second step aims to select all variables related to the response for
interpretation purpose.  Third step refines the selection by eliminating
redundancy in the set of variables selected by the second step, for prediction
purpose.  Genuer, R. Poggi, J.-M. and Tuleau-Malot, C. (2015)
<https://journal.r-project.org/archive/2015-2/genuer-poggi-tuleaumalot.pdf>.")
    (license license:gpl2+)))

(define-public r-vstsr
  (package
    (name "r-vstsr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vstsr" version))
       (sha256
        (base32 "071nfxkwwpbp2d8khxq7d1pp268pa1fcfj619bs6xwg4wk9srr3k"))))
    (properties `((upstream-name . "vstsr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcurl r-r6 r-jsonlite r-httr))
    (home-page "https://github.com/ashbaldry/vstsr")
    (synopsis "Access to 'Azure DevOps' API via R")
    (description
     "Implementation of Azure @code{DevOps} <https://azure.microsoft.com/> API calls.
It enables the extraction of information about repositories, build and release
definitions and individual releases.  It also helps create repositories and work
items within a project without logging into Azure @code{DevOps}'.  There is the
ability to use any API service with a shell for any non-predefined call.")
    (license license:gpl2)))

(define-public r-vstdct
  (package
    (name "r-vstdct")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vstdct" version))
       (sha256
        (base32 "0g26cplp5vjppyw8w37vdy3wah3i9wi14j64vl7i8d2fjbhqhqxp"))))
    (properties `((upstream-name . "vstdct")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-mass r-dtt))
    (home-page "https://cran.r-project.org/package=vstdct")
    (synopsis "Nonparametric Estimation of Toeplitz Covariance Matrices")
    (description
     "This package provides a nonparametric method to estimate Toeplitz covariance
matrices from a sample of n independently and identically distributed
p-dimensional vectors with mean zero.  The data is preprocessed with the
discrete cosine matrix and a variance stabilization transformation to obtain an
approximate Gaussian regression setting for the log-spectral density function.
Estimates of the spectral density function and the inverse of the covariance
matrix are provided as well.  Functions for simulating data and a protein data
example are included.  For details see (Klockmann, Krivobokova; 2023),
<@code{arXiv:2303.10018>}.")
    (license license:gpl2)))

(define-public r-vsp
  (package
    (name "r-vsp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vsp" version))
       (sha256
        (base32 "0i1syjh64v0wwdr9r2rp853spvxq79rqlv6j9bdhd9ldpys103aw"))))
    (properties `((upstream-name . "vsp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rspectra
                             r-rlang
                             r-matrix
                             r-magrittr
                             r-lrmf3
                             r-invertiforms
                             r-glue
                             r-ggplot2
                             r-clue))
    (native-inputs (list r-knitr))
    (home-page "https://rohelab.github.io/vsp/")
    (synopsis "Vintage Sparse PCA for Semi-Parametric Factor Analysis")
    (description
     "This package provides fast spectral estimation of latent factors in random dot
product graphs using the vsp estimator.  Under mild assumptions, the vsp
estimator is consistent for (degree-corrected) stochastic blockmodels,
(degree-corrected) mixed-membership stochastic blockmodels, and degree-corrected
overlapping stochastic blockmodels.")
    (license license:expat)))

(define-public r-vsolassobag
  (package
    (name "r-vsolassobag")
    (version "0.99.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VSOLassoBag" version))
       (sha256
        (base32 "1jmnm435x36jlhbzl7kgjiby7kb7yjhh013zdnnvf9pcjaallqn9"))))
    (properties `((upstream-name . "VSOLassoBag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-summarizedexperiment
                             r-pot
                             r-pbapply
                             r-glmnet
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VSOLassoBag")
    (synopsis "Variable Selection Oriented LASSO Bagging Algorithm")
    (description
     "This package provides a wrapped LASSO approach by integrating an ensemble
learning strategy to help select efficient, stable, and high confidential
variables from omics-based data.  Using a bagging strategy in combination of a
parametric method or inflection point search method for cut-off threshold
determination.  This package can integrate and vote variables generated from
multiple LASSO models to determine the optimal candidates.  Luo H, Zhao Q, et al
(2020) <doi:10.1126/scitranslmed.aax7533> for more details.")
    (license license:gpl3)))

(define-public r-vsmi
  (package
    (name "r-vsmi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vsmi" version))
       (sha256
        (base32 "1slyz8ldd3vqqqcpjccr0qsfy664m4zjczgr5qh0d4pcy0yg5f4x"))))
    (properties `((upstream-name . "vsmi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-qif r-mice r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=vsmi")
    (synopsis "Variable Selection for Multiple Imputed Data")
    (description
     "Penalized weighted least-squares estimate for variable selection on correlated
multiply imputed data and penalized estimating equations for generalized linear
models with multiple imputation.  Reference: Li, Y., Yang, H., Yu, H., Huang,
H., Shen, Y*. (2023) \"Penalized estimating equations for generalized linear
models with multiple imputation\", <doi:10.1214/22-AOAS1721>.  Li, Y., Yang, H.,
Yu, H., Huang, H., Shen, Y*. (2023) \"Penalized weighted least-squares estimate
for variable selection on correlated multiply imputed data\",
<doi:10.1093/jrsssc/qlad028>.")
    (license license:expat)))

(define-public r-vsgoftest
  (package
    (name "r-vsgoftest")
    (version "1.0-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vsgoftest" version))
       (sha256
        (base32 "0vypi4cf04bljmx3jwq3ixs86ivd6p7a825ik189y71fyqg9g70v"))))
    (properties `((upstream-name . "vsgoftest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-fitdistrplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vsgoftest")
    (synopsis "Goodness-of-Fit Tests Based on Kullback-Leibler Divergence")
    (description
     "An implementation of Vasicek and Song goodness-of-fit tests.  Several functions
are provided to estimate differential Shannon entropy, i.e., estimate Shannon
entropy of real random variables with density, and test the goodness-of-fit of
some family of distributions, including uniform, Gaussian, log-normal,
exponential, gamma, Weibull, Pareto, Fisher, Laplace and beta distributions; see
Lequesne and Regnault (2020) <doi:10.18637/jss.v096.c01>.")
    (license license:gpl2+)))

(define-public r-vse4ts
  (package
    (name "r-vse4ts")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vse4ts" version))
       (sha256
        (base32 "1js4iawg3c3hcflc7xmy8iif95l545mgg4cc5cmkp8jlfcdmbrig"))))
    (properties `((upstream-name . "vse4ts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://z-my-cn.github.io/vse4ts/")
    (synopsis
     "Identify Memory Patterns in Time Series Using Variance Scale Exponent")
    (description
     "This package provides methods for calculating the variance scale exponent to
identify memory patterns in time series data.  Includes tests for white noise,
short memory, and long memory.  See Fu, H. et al. (2018)
<doi:10.1016/j.physa.2018.06.092>.")
    (license license:expat)))

(define-public r-vscc
  (package
    (name "r-vscc")
    (version "0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vscc" version))
       (sha256
        (base32 "082jxk8fw4rplal9672bi6rr1jwpb5h6clrdlv9jj4ffvlbg6vaz"))))
    (properties `((upstream-name . "vscc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-teigen r-mixghd r-mclust r-manlymix))
    (home-page "https://cran.r-project.org/package=vscc")
    (synopsis "Variable Selection for Clustering and Classification")
    (description
     "This package performs variable selection/feature reduction under a clustering or
classification framework.  In particular, it can be used in an automated fashion
using mixture model-based methods ('teigen and mclust are currently supported).
Can account for mixtures of non-Gaussian distributions via Manly transform (via
@code{ManlyMix}').  See Andrews and @code{McNicholas} (2014)
<doi:10.1007/s00357-013-9139-2> and Neal and @code{McNicholas} (2023)
<doi:10.48550/@code{arXiv.2305.16464>}.")
    (license license:gpl2+)))

(define-public r-vrtest
  (package
    (name "r-vrtest")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vrtest" version))
       (sha256
        (base32 "1ln1ayh18q5lxiavznq19ccwb90dviw5ncbwpbghiawa1i0q42d2"))))
    (properties `((upstream-name . "vrtest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vrtest")
    (synopsis
     "Variance Ratio Tests and Other Tests for Martingale Difference Hypothesis")
    (description
     "This package provides a collection of statistical tests for martingale
difference hypothesis, including automatic portmanteau test (Escansiano and
Lobato, 2009) <doi:10.1016/j.jeconom.2009.03.001> and automatic variance ratio
test (Kim, 2009) <doi:10.1016/j.frl.2009.04.003>.")
    (license license:gpl2)))

(define-public r-vrnmf
  (package
    (name "r-vrnmf")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vrnmf" version))
       (sha256
        (base32 "0n0kmzhygaii9kipcmr943s0vcf8brxgsk25m9illd4fij6nwpp2"))))
    (properties `((upstream-name . "vrnmf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quadprog r-nnls r-matrix r-lpsolveapi r-ica))
    (home-page "https://github.com/kharchenkolab/vrnmf")
    (synopsis "Volume-Regularized Structured Matrix Factorization")
    (description
     "This package implements a set of routines to perform structured matrix
factorization with minimum volume constraints.  The NMF procedure decomposes a
matrix X into a product C * D. Given conditions such that the matrix C is
non-negative and has sufficiently spread columns, then volume minimization of a
matrix D delivers a correct and unique, up to a scale and permutation, solution
(C, D).  This package provides both an implementation of volume-regularized NMF
and \"anchor-free\" NMF, whereby the standard NMF problem is reformulated in the
covariance domain.  This algorithm was applied in Vladimir B. Seplyarskiy Ruslan
A. Soldatov, et al. \"Population sequencing data reveal a compendium of
mutational processes in the human germ line\".  Science, 12 Aug 2021.
<doi:10.1126/science.aba7408>.  This package interacts with data available
through the @code{simulatedNMF} package, which is available in a drat
repository.  To access this data package, see the instructions at
<https://github.com/kharchenkolab/vrnmf>.  The size of the @code{simulatedNMF}
package is approximately 8 MB.")
    (license license:gpl3)))

(define-public r-vprr
  (package
    (name "r-vprr")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vprr" version))
       (sha256
        (base32 "02hx3wbj921fsir8yldkgcygci01w1171bxsxi2khplck4gkqn9i"))))
    (properties `((upstream-name . "vprr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-usethis
                             r-tidyr
                             r-stringr
                             r-oce
                             r-metr
                             r-magick
                             r-lubridate
                             r-interp
                             r-gsw
                             r-gridextra
                             r-ggplot2
                             r-dplyr
                             r-cmocean))
    (native-inputs (list r-knitr))
    (home-page "https://eogrady21.github.io/vprr/")
    (synopsis "Processing and Visualization of Video Plankton Recorder Data")
    (description
     "An oceanographic data processing package for analyzing and visualizing Video
Plankton Recorder data.  This package was developed at Bedford Institute of
Oceanography'.  Functions are designed to process automated image classification
output and create organized and easily portable data products.")
    (license license:expat)))

(define-public r-vprint
  (package
    (name "r-vprint")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vprint" version))
       (sha256
        (base32 "1dwig33zdy4m4nqjimbxiqz1xhk7am41j8r54539d5h8sw0sxayf"))))
    (properties `((upstream-name . "vprint")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vprint")
    (synopsis "More Flexible Form of Boolean Verbose")
    (description
     "R functions are not supposed to print text without giving the user the option to
turn the printing off or on using a Boolean verbose in a construct like
if(verbose) print(...)'.  But this black/white approach is rather rigid, and an
approach with shades of gray might be more appropriate in many circumstances.")
    (license license:gpl2+)))

(define-public r-vpdtw
  (package
    (name "r-vpdtw")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VPdtw" version))
       (sha256
        (base32 "0ya9wa0wzv8z9cc8gyrwdvk7vsil45j37xjz46p04c0cgzr0l7mb"))))
    (properties `((upstream-name . "VPdtw")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/ethanbass/VPdtw/")
    (synopsis "Variable Penalty Dynamic Time Warping")
    (description
     "Variable Penalty Dynamic Time Warping (VPdtw) for aligning chromatographic
signals.  With an appropriate penalty this method performs good alignment of
chromatographic data without deforming the peaks (Clifford, D., Stone, G.,
Montoliu, I., Rezzi S., Martin F., Guy P., Bruce S., and Kochhar S.(2009)
<doi:10.1021/ac802041e>; Clifford, D. and Stone, G. (2012)
<doi:10.18637/jss.v047.i08>).")
    (license license:gpl2)))

(define-public r-vpc
  (package
    (name "r-vpc")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vpc" version))
       (sha256
        (base32 "15s9f6hmqawv2594xqv58hnqg2wm1fm8qaj8h9k4m55cx4sf1hik"))))
    (properties `((upstream-name . "vpc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-survival
                             r-stringr
                             r-readr
                             r-mass
                             r-ggplot2
                             r-dplyr
                             r-classint))
    (home-page "https://github.com/ronkeizer/vpc")
    (synopsis "Create Visual Predictive Checks")
    (description
     "Visual predictive checks are a commonly used diagnostic plot in pharmacometrics,
showing how certain statistics (percentiles) for observed data compare to those
same statistics for data simulated from a model.  The package can generate VPCs
for continuous, categorical, censored, and (repeated) time-to-event data.")
    (license license:expat)))

(define-public r-voxr
  (package
    (name "r-voxr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VoxR" version))
       (sha256
        (base32 "16r9ggc5x889g8rjqvp1q2kgf5asjzhykd1ldjy3ny9m48p501ad"))))
    (properties `((upstream-name . "VoxR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rgl
                             r-rfast
                             r-raster
                             r-geometry
                             r-fnn
                             r-fastcluster
                             r-dplyr
                             r-data-table
                             r-circular))
    (home-page "https://github.com/Blecigne/VoxR")
    (synopsis "Trees Geometry and Morphology from Unstructured TLS Data")
    (description
     "This package provides tools for 3D point cloud voxelisation, projection,
geometrical and morphological description of trees (DBH, height, volume, crown
diameter), analyses of temporal changes between different measurement times,
distance based clustering and visualisation of 3D voxel clouds and 2D
projection.  Most analyses and algorithms provided in the package are based on
the concept of space exploration and are described in Lecigne et al. (2018,
<doi:10.1093/aob/mcx095>).")
    (license license:gpl3)))

(define-public r-voxel
  (package
    (name "r-voxel")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voxel" version))
       (sha256
        (base32 "1xlym8xc22dq67h0lylrr16z7b4zdidpgrkvbs7n9fnkh6vijw2j"))))
    (properties `((upstream-name . "voxel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr
                             r-oro-nifti
                             r-mgcv
                             r-lmertest
                             r-ggplot2
                             r-gamm4))
    (home-page "https://github.com/angelgar/voxel")
    (synopsis "Mass-Univariate Voxelwise Analysis of Medical Imaging Data")
    (description
     "This package provides functions for the mass-univariate voxelwise analysis of
medical imaging data that follows the N@code{IfTI} <http://nifti.nimh.nih.gov>
format.")
    (license license:gpl2)))

(define-public r-vowels
  (package
    (name "r-vowels")
    (version "1.2-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vowels" version))
       (sha256
        (base32 "0xhfn3avx9h6kg3jwd47n2x7w8q8c9h13wsxd74hhbbn2gkjrs84"))))
    (properties `((upstream-name . "vowels")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://blogs.uoregon.edu/vowels/")
    (synopsis "Vowel Manipulation, Normalization, and Plotting")
    (description
     "Procedures for the manipulation, normalization, and plotting of phonetic and
sociophonetic vowel formant data.  vowels is the backend for the NORM website.")
    (license license:gpl3)))

(define-public r-vov
  (package
    (name "r-vov")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vov" version))
       (sha256
        (base32 "0hbb9zj33a98rv4grm644k650pq6kgmm6l01mkd4p0ic0mxa9fyh"))))
    (properties `((upstream-name . "vov")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-htmltools r-glue))
    (home-page "https://github.com/tyluRp/vov")
    (synopsis "CSS Animations for 'shiny' Elements")
    (description
     "This package provides a wrapper around a CSS library called vov.css', intended
for use in shiny applications.  Simply wrap a UI element in one of the animation
functions to see it move.")
    (license license:expat)))

(define-public r-vottrans
  (package
    (name "r-vottrans")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vottrans" version))
       (sha256
        (base32 "1fp7jrw072ws39bqsg88bm2qndcv68aa2vdqwgnza58p1dfq3x9f"))))
    (properties `((upstream-name . "vottrans")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quadprog))
    (home-page "https://cran.r-project.org/package=vottrans")
    (synopsis "Voter Transition Analysis")
    (description
     "Calculates voter transitions comparing two elections, using the function
@code{solve.QP()} in package quadprog'.")
    (license license:gpl3)))

(define-public r-votesys
  (package
    (name "r-votesys")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "votesys" version))
       (sha256
        (base32 "1z7cx3rj3bfrkb6jkmf1m1wad5ff46zrab5vhk69wf3jbwd9h920"))))
    (properties `((upstream-name . "votesys")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-gtools r-data-table))
    (home-page "https://cran.r-project.org/package=votesys")
    (synopsis
     "Voting Systems, Instant-Runoff Voting, Borda Method, Various Condorcet Methods")
    (description
     "Various methods to count ballots in voting systems are provided.  Functions to
check validity of ballots are also provided to ensure flexibility.")
    (license license:gpl3)))

(define-public r-votesmart
  (package
    (name "r-votesmart")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "votesmart" version))
       (sha256
        (base32 "184q553p8n76jch4xiyfsqbczbjza3v9s8xsd8zwckxq5j2cgyvp"))))
    (properties `((upstream-name . "votesmart")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-snakecase
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/decktools/votesmart/")
    (synopsis "Wrapper for the Project 'VoteSmart' API")
    (description "An R interface to the Project
@code{VoteSmart'<https://justfacts.votesmart.org/>} API.")
    (license license:expat)))

(define-public r-voteogram
  (package
    (name "r-voteogram")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voteogram" version))
       (sha256
        (base32 "16bhnf9p2sanbcsdmdjb4iqca7hx4ghd40psxavndv1vkhw3cv0r"))))
    (properties `((upstream-name . "voteogram")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-scales r-jsonlite r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hrbrmstr/voteogram")
    (synopsis "United States House and Senate Voting Cartogram Generators")
    (description
     "@code{ProPublica} <https://projects.propublica.org/represent/> makes United
States Congress member votes available and has developed their own unique
cartogram to visually represent this data.  Tools are provided to retrieve
voting data, prepare voting data for plotting with ggplot2', create vote
cartograms and theme them.")
    (license (license:fsdg-compatible "AGPL"))))

(define-public r-vote
  (package
    (name "r-vote")
    (version "2.4-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vote" version))
       (sha256
        (base32 "18jj38dva2bvz7gl7hm3qrlycmds9glnln0w9pvjnbj800147ddw"))))
    (properties `((upstream-name . "vote")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-knitr r-formattable r-fields r-data-table))
    (home-page "https://cran.r-project.org/package=vote")
    (synopsis "Election Vote Counting")
    (description
     "Counting election votes and determining election results by different methods,
including the single transferable vote or ranked choice, approval, score,
plurality, condorcet and two-round runoff methods (Raftery et al., 2021
<doi:10.32614/RJ-2021-086>).")
    (license license:gpl2+)))

(define-public r-voss
  (package
    (name "r-voss")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Voss" version))
       (sha256
        (base32 "00f3ljm85z8gr1qyc6nj9g35ywzm78khy8r82wb5ys8fx68n0vwl"))))
    (properties `((upstream-name . "Voss")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-fields))
    (home-page "https://cran.r-project.org/package=Voss")
    (synopsis "Generic Voss Algorithm (Random Sequential Additions)")
    (description
     "Generating realizations of a fractal Brownian function on uniform 1D & 2D grid
with classic and generic versions of the Voss algorithm (random sequential
additions).")
    (license license:gpl3)))

(define-public r-vosonsml
  (package
    (name "r-vosonsml")
    (version "0.32.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vosonSML" version))
       (sha256
        (base32 "1fs939zq2vnilc3fp6cplsqk0iz71i8xjdcbvspsccw7rsdp2qs8"))))
    (properties `((upstream-name . "vosonSML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-textutils
                             r-stringr
                             r-rlang
                             r-purrr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vosonlab/vosonSML")
    (synopsis
     "Collecting Social Media Data and Generating Networks for Analysis")
    (description
     "This package provides a suite of easy to use functions for collecting social
media data and generating networks for analysis.  Supports Twitter,
@code{YouTube}, Reddit and web site data sources.")
    (license license:gpl3+)))

(define-public r-vosondash
  (package
    (name "r-vosondash")
    (version "0.5.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VOSONDash" version))
       (sha256
        (base32 "1qivx5ddl9jsn6q6ic2w8jrczxlx23z087k5arfz2rixgj7rndyg"))))
    (properties `((upstream-name . "VOSONDash")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wordcloud
                             r-vosonsml
                             r-tm
                             r-textutils
                             r-syuzhet
                             r-systemfonts
                             r-snowballc
                             r-shiny
                             r-rcolorbrewer
                             r-magrittr
                             r-lattice
                             r-igraph
                             r-httr
                             r-httpuv
                             r-data-table))
    (home-page "https://github.com/vosonlab/VOSONDash")
    (synopsis "User Interface for Collecting and Analysing Social Networks")
    (description
     "This package provides a Shiny application for the interactive visualisation and
analysis of networks that also provides a web interface for collecting social
media data using @code{vosonSML}'.")
    (license license:gpl3+)))

(define-public r-voson-tcn
  (package
    (name "r-voson-tcn")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voson.tcn" version))
       (sha256
        (base32 "1fylp5770by5ybpda6n8c3y8n7zsmc62f5q11k0ndh5kp7ka11cb"))))
    (properties `((upstream-name . "voson.tcn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-progress
                             r-openssl
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/vosonlab/voson.tcn")
    (synopsis "Twitter Conversation Networks and Analysis")
    (description
     "Collects tweets and metadata for threaded conversations and generates networks.")
    (license license:gpl3+)))

(define-public r-vortexrdata
  (package
    (name "r-vortexrdata")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vortexRdata" version))
       (sha256
        (base32 "0b47q3aslz4110a1bfaa103i098y2ngzrjh01rwasq3gd6xbif9n"))))
    (properties `((upstream-name . "vortexRdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/carlopacioni/vortexRdata/")
    (synopsis "Example Data for R Package 'vortexR'")
    (description
     "This package contains selected data from two publications, Campbell et al'.
(2016) <DOI:10.1080/14486563.2015.1028486> and Pacioni et al'. (2017)
<DOI:10.1071/PC17002>.  The data is provided both as raw outputs from the
population viability analysis software Vortex and packaged as R objects.  The R
package @code{vortexR} uses the raw data provided here to illustrate its
functionality of parsing raw Vortex output into R objects.")
    (license license:gpl3)))

(define-public r-vorteksexport
  (package
    (name "r-vorteksexport")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VorteksExport" version))
       (sha256
        (base32 "0r9wmd9bdarjkqmpwp85xz27nbyhjkcpxm8qb8bqjmxq4nds6nxx"))))
    (properties `((upstream-name . "VorteksExport")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VorteksExport")
    (synopsis "Export Dataframes to 'Vorteks' Software")
    (description
     "Export dataframes and automatically start importing into Vorteks'.  Vorteks
Visualization Environment (VVE) and Vorteks Data Manager (VDM) will start an
import.  Vorteks Processing Environment (VPE) will start a new project and add a
file reader with the dataframe file already set.  Warning: WINDOWS ONLY.
Requires installation of Vorteks software.")
    (license license:gpl3)))

(define-public r-voronoitreemap
  (package
    (name "r-voronoitreemap")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voronoiTreemap" version))
       (sha256
        (base32 "1wvnqdrvba4ss4f3k8gzb720irdq2brv2aaq16ywifv8fnjf02r3"))))
    (properties `((upstream-name . "voronoiTreemap")))
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
    (propagated-inputs (list r-shinyjs
                             r-shiny
                             r-rlang
                             r-htmlwidgets
                             r-dt
                             r-data-tree))
    (native-inputs (list esbuild))
    (home-page "https://github.com/uRosConf/voronoiTreemap")
    (synopsis "Voronoi Treemaps with Added Interactivity by Shiny")
    (description
     "The d3.js framework with the plugins d3-voronoi-map, d3-voronoi-treemap and
d3-weighted-voronoi are used to generate Voronoi treemaps in R and in a shiny
application.  The computation of the Voronoi treemaps are based on Nocaj and
Brandes (2012) <doi:10.1111/j.1467-8659.2012.03078.x>.")
    (license license:gpl3)))

(define-public r-voronoifortune
  (package
    (name "r-voronoifortune")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voronoifortune" version))
       (sha256
        (base32 "1birs9wv2if7c9cxn0lr12ks7mh2vmxhbwicbcswiy359psjcb6a"))))
    (properties `((upstream-name . "voronoifortune")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/emmanuelparadis/voronoifortune")
    (synopsis "Voronoi Tessellation by Fortune Algorithm")
    (description
     "Fortune's (1987, <doi:10.1007/BF01840357>) algorithm is a very efficient method
to perform Voronoi tessellation and Delaunay triangulation.  This package is a
port of the original code published in the early 1990's by Steven Fortune.")
    (license license:gpl3)))

(define-public r-voronoibiomedplot
  (package
    (name "r-voronoibiomedplot")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VoronoiBiomedPlot" version))
       (sha256
        (base32 "1v4m673i5kbi5p742v4wky5m48dgc66qzpyhyz81gh3098l99wqb"))))
    (properties `((upstream-name . "VoronoiBiomedPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggrepel r-ggplot2 r-deldir))
    (home-page "https://cran.r-project.org/package=VoronoiBiomedPlot")
    (synopsis "Projection Visualization Plots for Dimensionally Reduced Data")
    (description
     "This package creates visualization plots for 2D projected data including ellipse
plots, Voronoi diagram plots, and combined ellipse-Voronoi plots.  Designed to
visualize class separation in dimensionally reduced data from techniques like
principal component analysis (PCA), partial least squares discriminant analysis
(PLS-DA) or others.  For more details see LÃ¶tsch and Ultsch (2024)
<doi:10.1016/j.imu.2024.101573>.")
    (license license:gpl3)))

(define-public r-volumodel
  (package
    (name "r-volumodel")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voluModel" version))
       (sha256
        (base32 "1pl4rxqpsh2kvnqph53nbcv4kj9zj7i3krn7y0h1mcvp0pzz1yva"))))
    (properties `((upstream-name . "voluModel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridislite
                             r-terra
                             r-sf
                             r-rangebuilder
                             r-modeva
                             r-metr
                             r-ggtext
                             r-ggplot2
                             r-fields
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://hannahlowens.github.io/voluModel/")
    (synopsis "Modeling Species Distributions in Three Dimensions")
    (description
     "Facilitates modeling species ecological niches and geographic distributions
based on occurrences and environments that have a vertical as well as horizontal
component, and projecting models into three-dimensional geographic space.
Working in three dimensions is useful in an aquatic context when the organisms
one wishes to model can be found across a wide range of depths in the water
column.  The package also contains functions to automatically generate marine
training model training regions using machine learning, and interpolate and
smooth patchily sampled environmental rasters using thin plate splines.  Davis
Rabosky AR, Cox CL, Rabosky DL, Title PO, Holmes IA, Feldman A, @code{McGuire}
JA (2016) <doi:10.1038/ncomms11484>.  Nychka D, Furrer R, Paige J, Sain S (2021)
<doi:10.5065/D6W957CT>.  Pateiro-Lopez B, Rodriguez-Casal A (2022)
<https://CRAN.R-project.org/package=alphahull>.")
    (license license:gpl3)))

(define-public r-volrisk
  (package
    (name "r-volrisk")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volrisk" version))
       (sha256
        (base32 "0w3lnlry8chw526r2k3v1fvkdv0ylq2ca27jy1rj0v0aa18dx12g"))))
    (properties `((upstream-name . "volrisk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rstudioapi
                             r-progress
                             r-magrittr
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-data-table
                             r-arrow))
    (home-page "https://github.com/taku1094/volrisk")
    (synopsis "Simulation of Life Reinsurance with Profit Commission")
    (description
     "Simulates and evaluates stochastic scenarios of death and lapse events in life
reinsurance contracts with profit commissions.  The methodology builds on
materials published by the Institute of Actuaries of Japan
<https://www.actuaries.jp/examin/textbook/pdf/modeling.pdf>.  A paper describing
the detailed algorithms will be published by the author within a few months
after the initial release of this package.")
    (license license:expat)))

(define-public r-volleystat
  (package
    (name "r-volleystat")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volleystat" version))
       (sha256
        (base32 "0n1r0bvvmba21cs3qgpnw9jxpgl2n82fhxa40sa1w2gav5rch5i6"))))
    (properties `((upstream-name . "volleystat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/bozhinvi/volleystat")
    (synopsis "Detailed Statistics on Volleyball Matches")
    (description
     "Volleyball match statistics of the German volleyball first division league
(seasons 2013/2014 to 2018/2019).  The data has been collected from the official
volleyball first division homepage (<www.volleyball-bundesliga.de>) and contains
information on teams, staff, sets, matches, and player-in-match statistics
(extracted automatically from the official match reports).")
    (license license:cc0)))

(define-public r-volker
  (package
    (name "r-volker")
    (version "3.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volker" version))
       (sha256
        (base32 "0l8wg5ra2dmmb0j7swpfq5qimd1m7plw3ixs8g1r6vjw8dcw0bcs"))))
    (properties `((upstream-name . "volker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-skimr
                             r-scales
                             r-rmarkdown
                             r-rlang
                             r-purrr
                             r-psych
                             r-magrittr
                             r-lifecycle
                             r-knitr
                             r-kableextra
                             r-heplots
                             r-ggplot2
                             r-effectsize
                             r-dplyr
                             r-car
                             r-broom
                             r-base64enc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/strohne/volker")
    (synopsis
     "High-Level Functions for Tabulating, Charting and Reporting Survey Data")
    (description
     "Craft polished tables and plots in Markdown reports.  Simply choose whether to
treat your data as counts or metrics, and the package will automatically
generate well-designed default tables and plots for you.  Boiled down to the
basics, with labeling features and simple interactive reports.  All functions
are tidyverse compatible.")
    (license license:expat)))

(define-public r-volesti
  (package
    (name "r-volesti")
    (version "1.1.2-9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volesti" version))
       (sha256
        (base32 "1m4k07038z6096j3k38pyd12v5ayq1snggj3prh2agigz88i03qy"))))
    (properties `((upstream-name . "volesti")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp r-bh))
    (home-page "https://cran.r-project.org/package=volesti")
    (synopsis "Volume Approximation and Sampling of Convex Polytopes")
    (description
     "This package provides an R interface for volesti C++ package.  volesti computes
estimations of volume of polytopes given by (i) a set of points, (ii) linear
inequalities or (iii) Minkowski sum of segments (a.k.a.  zonotopes).  There are
three algorithms for volume estimation as well as algorithms for sampling,
rounding and rotating polytopes.  Moreover, volesti provides algorithms for
estimating copulas useful in computational finance.  Methods implemented in
volesti are described in A. Chalkis and V. Fisikopoulos (2022)
<doi:10.32614/RJ-2021-077> and references therein.")
    (license license:lgpl3)))

(define-public r-volcanoplot
  (package
    (name "r-volcanoplot")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volcanoPlot" version))
       (sha256
        (base32 "06nkv56c36wgnb7s6gkpp14syzhm5zm2wdfjx9wamxp5cf0wk3mk"))))
    (properties `((upstream-name . "volcanoPlot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-purrr
                             r-ggplot2
                             r-fmsb
                             r-dt
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=volcanoPlot")
    (synopsis "Volcano Plot for Clinical Trial Adverse Events")
    (description
     "Interactive adverse event (AE) volcano plot for monitoring clinical trial
safety.  This tool allows users to view the overall distribution of AEs in a
clinical trial using standard (e.g. @code{MedDRA} preferred term) or custom
(e.g. Gender) categories using a volcano plot similar to proposal by Zink et al.
(2013) <doi:10.1177/1740774513485311>.  This tool provides a stand-along shiny
application and flexible shiny modules allowing this tool to be used as a part
of more robust safety monitoring framework like the Shiny app from the
@code{safetyGraphics} R package.")
    (license license:expat)))

(define-public r-volcano3d
  (package
    (name "r-volcano3d")
    (version "2.0.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volcano3D" version))
       (sha256
        (base32 "1k1n49pzsdkwia09mf9ra75cbnx49q99ygn5c92kyq8kqv83d1w8"))))
    (properties `((upstream-name . "volcano3D")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rfast
                             r-plotly
                             r-matrixtests
                             r-magrittr
                             r-htmlwidgets
                             r-ggpubr
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://katrionagoldmann.github.io/volcano3D/index.html")
    (synopsis "3D Volcano Plots and Polar Plots for Three-Class Data")
    (description
     "Generates interactive plots for analysing and visualising three-class high
dimensional data.  It is particularly suited to visualising differences in
continuous attributes such as gene/protein/biomarker expression levels between
three groups.  Differential gene/biomarker expression analysis between two
classes is typically shown as a volcano plot.  However, with three groups this
type of visualisation is particularly difficult to interpret.  This package
generates 3D volcano plots and 3-way polar plots for easier interpretation of
three-class data.")
    (license license:gpl2)))

(define-public r-volatilitytrader
  (package
    (name "r-volatilitytrader")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "volatilityTrader" version))
       (sha256
        (base32 "1zz6286kmzcj8k66mpj9nidsf86dkw2ms75ck6rrvnl5h1idcacj"))))
    (properties `((upstream-name . "volatilityTrader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-magrittr r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=volatilityTrader")
    (synopsis "High Volatility Environment Option Trading Strategies Graphs")
    (description
     "Trading Strategies for high Option Volatility environment are represented here
through their Graphs.  The graphic indicators, strategies, calculations,
functions and all the discussions are for academic, research, and educational
purposes only and should not be construed as investment advice and come with
absolutely no Liability.  Guy Cohen (âThe Bible of Options Strategies (2nd
ed.)â, 2015, ISBN: 9780133964028).  Zura Kakushadze, Juan A. Serur (â151
Trading Strategiesâ, 2018, ISBN: 9783030027919).  John C. Hull (âOptions,
Futures, and Other Derivatives (11th ed.)â, 2022, ISBN: 9780136939979).")
    (license license:gpl3)))

(define-public r-vol2birdr
  (package
    (name "r-vol2birdr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vol2birdR" version))
       (sha256
        (base32 "0xqfr3w39ywdf02jx6pms5srvwhav2gkbkqg34kca75mlyhcsqja"))))
    (properties `((upstream-name . "vol2birdR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib
                  proj
                  openssl
                  openssh
                  hdf5
                  gsl
                  curl))
    (propagated-inputs (list r-withr
                             r-rlang
                             r-rcppgsl
                             r-rcpp
                             r-pkgbuild
                             r-assertthat))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/adokter/vol2birdR/")
    (synopsis "Vertical Profiles of Biological Signals in Weather Radar Data")
    (description
     "R implementation of the vol2bird software for generating vertical profiles of
birds and other biological signals in weather radar data.  See Dokter et al.
(2011) <doi:10.1098/rsif.2010.0116> for a paper describing the methodology.")
    (license license:lgpl3+)))

(define-public r-voicer
  (package
    (name "r-voicer")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voiceR" version))
       (sha256
        (base32 "1bc2h04i9l76wqrw93brg5ivpgd0pq20zq2nq8x7p851jfxz84p4"))))
    (properties `((upstream-name . "voiceR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xfun
                             r-tuner
                             r-stringr
                             r-soundgen
                             r-shinyjs
                             r-shinyfiles
                             r-shiny
                             r-seewave
                             r-rmarkdown
                             r-rlang
                             r-rcompanion
                             r-plotly
                             r-phia
                             r-mass
                             r-knitr
                             r-kableextra
                             r-gtable
                             r-gridextra
                             r-ggthemes
                             r-ggpubr
                             r-ggplot2
                             r-fsa
                             r-foreach
                             r-dt
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=voiceR")
    (synopsis "Voice Analytics for Social Scientists")
    (description
     "Simplifies and largely automates practical voice analytics for social science
research.  This package offers an accessible and easy-to-use interface,
including an interactive Shiny app, that simplifies the processing, extraction,
analysis, and reporting of voice recording data in the behavioral and social
sciences.  The package includes batch processing capabilities to read and
analyze multiple voice files in parallel, automates the extraction of key vocal
features for further analysis, and automatically generates APA formatted reports
for typical between-group comparisons in experimental social science research.
A more extensive methodological introduction that inspired the development of
the @code{voiceR} package is provided in Hildebrand et al.  2020
<doi:10.1016/j.jbusres.2020.09.020>.")
    (license license:gpl2)))

(define-public r-voice
  (package
    (name "r-voice")
    (version "0.4.21")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voice" version))
       (sha256
        (base32 "0fh1k0596npm6yah992g3hc79g6lh12b7k97nnxlm1pgpdbb503v"))))
    (properties `((upstream-name . "voice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-wrassp
                             r-tuner
                             r-tidyselect
                             r-tibble
                             r-seewave
                             r-reticulate
                             r-r-utils
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/filipezabala/voice")
    (synopsis
     "Tools for Voice Analysis, Speaker Recognition and Mood Inference")
    (description
     "This package provides tools for voice analysis, speaker recognition and mood
inference.  Gathers R and Python tools to solve problems concerning voice and
audio in general.")
    (license license:gpl3)))

(define-public r-voi
  (package
    (name "r-voi")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "voi" version))
       (sha256
        (base32 "1d72g5wpyfq92gc7bp42xbiafbl4q769bxq8awifsc93haawrwqm"))))
    (properties `((upstream-name . "voi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-progress
                             r-posterior
                             r-mvtnorm
                             r-mgcv
                             r-matrix
                             r-gridextra
                             r-ggplot2
                             r-earth
                             r-dbarts))
    (native-inputs (list r-knitr))
    (home-page "https://chjackson.github.io/voi/")
    (synopsis "Expected Value of Information")
    (description
     "This package provides methods to calculate the expected value of information
from a decision-analytic model.  This includes the expected value of perfect
information (EVPI), partial perfect information (EVPPI) and sample information
(EVSI), and the expected net benefit of sampling (ENBS).  A range of alternative
computational methods are provided under the same user interface.  See Heath et
al. (2024) <doi:10.1201/9781003156109>, Jackson et al. (2022)
<doi:10.1146/annurev-statistics-040120-010730>.")
    (license license:gpl3)))

(define-public r-vocaldia
  (package
    (name "r-vocaldia")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vocaldia" version))
       (sha256
        (base32 "1nr1w85m4xhk6777iqww94mb82c3smfhr96mybpi9m1kk7f6rv0i"))))
    (properties `((upstream-name . "vocaldia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://git.ecdf.ed.ac.uk/sluzfil/vocaldia")
    (synopsis "Create and Manipulate Vocalisation Diagrams")
    (description
     "Create adjacency matrices of vocalisation graphs from dataframes containing
sequences of speech and silence intervals, transforming these matrices into
Markov diagrams, and generating datasets for classification of these diagrams by
flattening them and adding global properties (functionals) etc.  Vocalisation
diagrams date back to early work in psychiatry (Jaffe and Feldstein, 1970) and
social psychology (Dabbs and Ruback, 1987) but have only recently been employed
as a data representation method for machine learning tasks including meeting
segmentation (Luz, 2012) <doi:10.1145/2328967.2328970> and classification (Luz,
2013) <doi:10.1145/2522848.2533788>.")
    (license license:gpl3)))

(define-public r-vntrs
  (package
    (name "r-vntrs")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vntrs" version))
       (sha256
        (base32 "1068l5p7qqjp69yzp72zp975cr2zpnfbnik6h109lhw554m4ckll"))))
    (properties `((upstream-name . "vntrs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trust))
    (home-page "https://loelschlaeger.de/vntrs/")
    (synopsis "Variable Neighborhood Trust Region Search")
    (description
     "An implementation of the variable neighborhood trust region algorithm Bierlaire
et al. (2009) \"A Heuristic for Nonlinear Global Optimization\"
<doi:10.1287/ijoc.1090.0343>.")
    (license license:gpl3)))

(define-public r-vmsae
  (package
    (name "r-vmsae")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vmsae" version))
       (sha256
        (base32 "17rv6xvhdkglyldk69kva84fk2fs99qvmv5r5m0vyw623mc3cd2s"))))
    (properties `((upstream-name . "vmsae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-sf
                             r-rlang
                             r-reticulate
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/zhenhua-wang/vmsae")
    (synopsis "Variational Multivariate Spatial Small Area Estimation")
    (description
     "Variational Autoencoded Multivariate Spatial Fay-Herriot models are designed to
efficiently estimate population parameters in small area estimation.  This
package implements the variational generalized multivariate spatial Fay-Herriot
model (VGMSFH) using @code{NumPyro} and @code{PyTorch} backends, as demonstrated
by Wang, Parker, and Holan (2025) <doi:10.48550/@code{arXiv.2503.14710>}.  The
vmsae package provides utility functions to load weights of the pretrained
variational autoencoders (VAEs) as well as tools to train custom VAEs tailored
to users specific applications.")
    (license license:expat)))

(define-public r-vmr
  (package
    (name "r-vmr")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vmr" version))
       (sha256
        (base32 "0vm4wxf9zb2xgjd9xam3gy6mqr621x922ldshrxs4cibaag3lq5x"))))
    (properties `((upstream-name . "vmr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://gitlab.com/rstuff/vmr")
    (synopsis "Virtual Machines for R")
    (description
     "Manage, provision and use Virtual Machines pre-configured for R. Develop, test
and build package in a clean environment.  Vagrant tool and a provider (such as
Virtualbox') have to be installed.")
    (license license:gpl3+)))

(define-public r-vmf
  (package
    (name "r-vmf")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vMF" version))
       (sha256
        (base32 "1vzg9plrly7xqaahqxl3w2z2kf1wa5w0c25xjld2ksnpb4sb3r4d"))))
    (properties `((upstream-name . "vMF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ahoundetoungan/vMF")
    (synopsis "Sampling from the von Mises-Fisher Distribution")
    (description
     "This package provides fast sampling from von Mises-Fisher distribution using the
method proposed by Andrew T.A Wood (1994) <doi:10.1080/03610919408813161>.")
    (license license:gpl3)))

(define-public r-vmeasur
  (package
    (name "r-vmeasur")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vmeasur" version))
       (sha256
        (base32 "17rqr8zpfnq3f0d3yi9w09wvrbq79g4w7rkqf4l2wyd8ic5npwb0"))))
    (properties `((upstream-name . "vmeasur")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-svdialogs
                             r-stringr
                             r-scales
                             r-rlang
                             r-readr
                             r-purrr
                             r-progressr
                             r-pracma
                             r-pdftools
                             r-magrittr
                             r-imager
                             r-ggpubr
                             r-ggplot2
                             r-future
                             r-foreach
                             r-dplyr
                             r-dofuture
                             r-crayon
                             r-av))
    (home-page "https://cran.r-project.org/package=vmeasur")
    (synopsis
     "Quantify the Contractile Nature of Vessels Monitored under an Operating Microscope")
    (description
     "This package provides a variety of tools to allow the quantification of videos
of the lymphatic vasculature taken under an operating microscope.  Lymphatic
vessels that have been injected with a variety of blue dyes can be tracked
throughout the video to determine their width over time.  Code is optimised for
efficient processing of multiple large video files.  Functions to calculate
physiologically relevant parameters and generate graphs from these values are
also included.")
    (license (license:fsdg-compatible "CC BY-NC-SA 4.0"))))

(define-public r-vmdtdnn
  (package
    (name "r-vmdtdnn")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vmdTDNN" version))
       (sha256
        (base32 "08bdihlf2lj1wfxilshxww3sav7c35qiqzs468mdahbn4vnzbngr"))))
    (properties `((upstream-name . "vmdTDNN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vmdecomp r-nnfor r-forecast))
    (home-page "https://cran.r-project.org/package=vmdTDNN")
    (synopsis "VMD Based Time Delay Neural Network Model")
    (description
     "Forecasting univariate time series with Variational Mode Decomposition (VMD)
based time delay neural network models.For method details see Konstantin, D.and
Dominique, Z. (2014). <doi:10.1109/TSP.2013.2288675>.")
    (license license:gpl3)))

(define-public r-vmdml
  (package
    (name "r-vmdml")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VMDML" version))
       (sha256
        (base32 "12n32wx3hcvw55rrcwkv501cjl4zrpgh4d7y4m1irgrpjfqk77x2"))))
    (properties `((upstream-name . "VMDML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vmdecomp r-randomforest r-nnfor r-forecast
                             r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VMDML")
    (synopsis "Variational Mode Decomposition Based Machine Learning Models")
    (description
     "Application of Variational Mode Decomposition based different Machine Learning
models for univariate time series forecasting.  For method details see (i) K.
Dragomiretskiy and D. Zosso (2014) <doi:10.1109/TSP.2013.2288675>; (ii) Pankaj
Das (2020) <http://krishi.icar.gov.in/jspui/handle/123456789/44138>.")
    (license license:expat)))

(define-public r-vmdecomp
  (package
    (name "r-vmdecomp")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VMDecomp" version))
       (sha256
        (base32 "0iq2lj7n77qmryf95cjl2y869bhy6i0mx44qls7xc07g0qplwqx3"))))
    (properties `((upstream-name . "VMDecomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-glue r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/VMDecomp")
    (synopsis "Variational Mode Decomposition")
    (description
     "@code{RcppArmadillo} implementation for the Matlab code of the Variational Mode
Decomposition and Two-Dimensional Variational Mode Decomposition'.  For more
information, see (i) Variational Mode Decomposition by K. Dragomiretskiy and D.
Zosso in IEEE Transactions on Signal Processing, vol.  62, no.  3, pp.  531-544,
Feb.1, 2014, <doi:10.1109/TSP.2013.2288675>; (ii) Two-Dimensional Variational
Mode Decomposition by Dragomiretskiy, K., Zosso, D. (2015), In: Tai, XC., Bae,
E., Chan, T.F., Lysaker, M. (eds) Energy Minimization Methods in Computer Vision
and Pattern Recognition.  EMMCVPR 2015.  Lecture Notes in Computer Science, vol
8932.  Springer, <doi:10.1007/978-3-319-14612-6_15>.")
    (license license:gpl3)))

(define-public r-vltimecausality
  (package
    (name "r-vltimecausality")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VLTimeCausality" version))
       (sha256
        (base32 "0pfgpl9xkwi0v0z1l58gb8s4gzz7r4k38270x8ifyk41l5vq8iwd"))))
    (properties `((upstream-name . "VLTimeCausality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tseries r-rtransferentropy r-ggplot2 r-dtw))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DarkEyes/VLTimeSeriesCausality")
    (synopsis "Variable-Lag Time Series Causality Inference Framework")
    (description
     "This package provides a framework to infer causality on a pair of time series of
real numbers based on variable-lag Granger causality and transfer entropy.
Typically, Granger causality and transfer entropy have an assumption of a fixed
and constant time delay between the cause and effect.  However, for a
non-stationary time series, this assumption is not true.  For example,
considering two time series of velocity of person A and person B where B follows
A. At some time, B stops tying his shoes, then running to catch up A. The
fixed-lag assumption is not true in this case.  We propose a framework that
allows variable-lags between cause and effect in Granger causality and transfer
entropy to allow them to deal with variable-lag non-stationary time series.
Please see Chainarong Amornbunchornvej, Elena Zheleva, and Tanya Berger-Wolf
(2021) <doi:10.1145/3441452> when referring to this package in publications.")
    (license license:gpl3)))

(define-public r-vlmcx
  (package
    (name "r-vlmcx")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VLMCX" version))
       (sha256
        (base32 "1kwwg158556v4685j2dji4xjf1v9v5d9qdp4xhki022f5dv8h61h"))))
    (properties `((upstream-name . "VLMCX")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nnet r-berryfunctions))
    (home-page "https://cran.r-project.org/package=VLMCX")
    (synopsis "Variable Length Markov Chain with Exogenous Covariates")
    (description
     "Models categorical time series through a Markov Chain when a) covariates are
predictors for transitioning into the next state/symbol and b) when the
dependence in the past states has variable length.  The probability of
transitioning to the next state in the Markov Chain is defined by a multinomial
regression whose parameters depend on the past states of the chain and,
moreover, the number of states in the past needed to predict the next state also
depends on the observed states themselves.  See Zambom, Kim, and Garcia (2022)
<doi:10.1111/jtsa.12615>.")
    (license license:gpl2+)))

(define-public r-vlmc
  (package
    (name "r-vlmc")
    (version "1.4-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VLMC" version))
       (sha256
        (base32 "1mcypnr956jfq0iyfak6bhfv99p0zzal9r0bd10py5qwzal0n6i8"))))
    (properties `((upstream-name . "VLMC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=VLMC")
    (synopsis "Variable Length Markov Chains ('VLMC') Models")
    (description
     "Functions, Classes & Methods for estimation, prediction, and simulation
(bootstrap) of Variable Length Markov Chain ('VLMC') Models.")
    (license license:gpl2+)))

(define-public r-vlf
  (package
    (name "r-vlf")
    (version "1.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VLF" version))
       (sha256
        (base32 "0lc1hrmmkjy7zp4pl4vnqyflp77rcic8k2gf44wxvfm62x2gs4lw"))))
    (properties `((upstream-name . "VLF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VLF")
    (synopsis
     "Frequency Matrix Approach for Assessing Very Low Frequency Variants in Sequence Records")
    (description
     "Using frequency matrices, very low frequency variants (VLFs) are assessed for
amino acid and nucleotide sequences.  The VLFs are then compared to see if they
occur in only one member of a species, singleton VLFs, or if they occur in
multiple members of a species, shared VLFs.  The amino acid and nucleotide VLFs
are then compared to see if they are concordant with one another.  Amino acid
VLFs are also assessed to determine if they lead to a change in amino acid
residue type, and potential changes to protein structures.  Based on Stoeckle
and Kerr (2012) <doi:10.1371/journal.pone.0043992> and Phillips et al. (2023)
<doi:10.3897/BDJ.11.e96480>.")
    (license license:gpl3+)))

(define-public r-vkr
  (package
    (name "r-vkr")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vkR" version))
       (sha256
        (base32 "1pk444fcw4yyv2dnfrw9vynbpc4gwr5yv9jd41djp9yipdf6d53l"))))
    (properties `((upstream-name . "vkR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml r-purrr r-jsonlite r-httr))
    (home-page "https://github.com/Dementiy/vkR")
    (synopsis "Access to VK API via R")
    (description
     "This package provides an interface to the VK API <https://vk.com/dev/methods>.
VK <https://vk.com/> is the largest European online social networking service,
based in Russia.")
    (license license:gpl3)))

(define-public r-viztest
  (package
    (name "r-viztest")
    (version "0.3-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VizTest" version))
       (sha256
        (base32 "08c47wnz64f3cf0zz9ak8jbay27sx9g5zwml29kzh2sqmhdrl8rh"))))
    (properties `((upstream-name . "VizTest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-hdinterval r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VizTest")
    (synopsis "Optimal Confidence Intervals for Visual Testing")
    (description
     "Identifies the optimal confidence level to represent the results of a set of
pairwise tests as suggested by Armstrong and Poirier (2025)
<doi:10.1017/pan.2024.24>.")
    (license license:expat)))

(define-public r-vizdraws
  (package
    (name "r-vizdraws")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vizdraws" version))
       (sha256
        (base32 "1swf1xk6l086my4gknb9q4gyc3a37vs9z2p2484zf5ba9inzwix1"))))
    (properties `((upstream-name . "vizdraws")))
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
    (propagated-inputs (list r-stringr r-magrittr r-htmlwidgets r-dplyr))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ignacio82/vizdraws")
    (synopsis "Visualize Draws from the Prior and Posterior Distributions")
    (description
     "Interactive visualization for Bayesian prior and posterior distributions.  This
package facilitates an animated transition between prior and posterior
distributions.  Additionally, it splits the distribution into bars based on the
provided breaks, displaying the probability for each region.  If no breaks are
provided, it defaults to zero.")
    (license license:gpl3)))

(define-public r-vivo
  (package
    (name "r-vivo")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vivo" version))
       (sha256
        (base32 "1cfval06byviw7himr5nql34h4jaway9gb6dzya3v994p7v851cg"))))
    (properties `((upstream-name . "vivo")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2 r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/vivo")
    (synopsis "Variable Importance via Oscillations")
    (description
     "This package provides an easy to calculate local variable importance measure
based on Ceteris Paribus profile and global variable importance measure based on
Partial Dependence Profiles.")
    (license license:gpl2)))

(define-public r-vivid
  (package
    (name "r-vivid")
    (version "0.2.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vivid" version))
       (sha256
        (base32 "13iagv585a5z7pggzlcgc8h17r5lx4nq2gljy58238nsi0xc9549"))))
    (properties `((upstream-name . "vivid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp
                             r-rcolorbrewer
                             r-igraph
                             r-ggplot2
                             r-ggnewscale
                             r-ggalt
                             r-ggally
                             r-flashlight
                             r-dplyr
                             r-dendser
                             r-condvis2
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://alaninglis.github.io/vivid/")
    (synopsis "Variable Importance and Variable Interaction Displays")
    (description
     "This package provides a suite of plots for displaying variable importance and
two-way variable interaction jointly.  Can also display partial dependence plots
laid out in a pairs plot or zenplots style.")
    (license license:gpl2+)))

(define-public r-vivaldi
  (package
    (name "r-vivaldi")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vivaldi" version))
       (sha256
        (base32 "1dvihjc6vjzg2w1j0q6vjhlhpwkknwsd97lpbqbfpacpp337mvx8"))))
    (properties `((upstream-name . "vivaldi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vcfr
                             r-tidyselect
                             r-tidyr
                             r-seqinr
                             r-plotly
                             r-magrittr
                             r-glue
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/GreshamLab/vivaldi")
    (synopsis "Viral Variant Location and Diversity")
    (description
     "Analysis of minor alleles in Illumina sequencing data of viral genomes.
Functions in vivaldi primarily operate on vcf files.")
    (license license:expat)))

(define-public r-vivainsights
  (package
    (name "r-vivainsights")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vivainsights" version))
       (sha256
        (base32 "1xmffacid9lpy65r52bz9b06wmdvzmhcd94w6yavp2z2sadyvrba"))))
    (properties `((upstream-name . "vivainsights")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wpa
                             r-tidytext
                             r-tidyselect
                             r-tidyr
                             r-scales
                             r-rmarkdown
                             r-reshape2
                             r-purrr
                             r-networkd3
                             r-markdown
                             r-magrittr
                             r-lifecycle
                             r-igraph
                             r-htmltools
                             r-glue
                             r-ggwordcloud
                             r-ggrepel
                             r-ggraph
                             r-ggplot2
                             r-dplyr
                             r-data-table))
    (home-page "https://microsoft.github.io/vivainsights/")
    (synopsis "Analyze and Visualize Data from 'Microsoft Viva Insights'")
    (description
     "This package provides a versatile range of functions, including exploratory data
analysis, time-series analysis, organizational network analysis, and data
validation, whilst at the same time implements a set of best practices in
analyzing and visualizing data specific to Microsoft Viva Insights'.")
    (license license:expat)))

(define-public r-vitality
  (package
    (name "r-vitality")
    (version "1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vitality" version))
       (sha256
        (base32 "17micfmlksnw167vavvhlk431fm20k74y5ggs47pgz5fwpm854zp"))))
    (properties `((upstream-name . "vitality")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vitality")
    (synopsis "Fitting Routines for the Vitality Family of Mortality Models")
    (description
     "This package provides fitting routines for four versions of the Vitality family
of mortality models.")
    (license license:gpl2+)))

(define-public r-vital
  (package
    (name "r-vital")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vital" version))
       (sha256
        (base32 "0qmqalqzqzzsc8fvzrqj5wzwaw90lf161524wibjzc89knz6z0g4"))))
    (properties `((upstream-name . "vital")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tsibble
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-purrr
                             r-progressr
                             r-patchwork
                             r-mgcv
                             r-hmdhfdplus
                             r-ggplot2
                             r-generics
                             r-future-apply
                             r-fabletools
                             r-fable
                             r-dplyr
                             r-distributional
                             r-cobs))
    (home-page "https://pkg.robjhyndman.com/vital/")
    (synopsis
     "Tidy Analysis Tools for Mortality, Fertility, Migration and Population Data")
    (description
     "Analysing vital statistics based on tools consistent with the tidyverse.  Tools
are provided for data visualization, lifetable calculations, computing net
migration numbers, Lee-Carter modelling; functional data modelling and
forecasting.")
    (license license:gpl3)))

(define-public r-vitae
  (package
    (name "r-vitae")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vitae" version))
       (sha256
        (base32 "0mb6kps08za2sma2d5xw441kpri425arlbwznygifd7g3c5zyvhv"))))
    (properties `((upstream-name . "vitae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml
                             r-xfun
                             r-vctrs
                             r-tibble
                             r-rmarkdown
                             r-rlang
                             r-pillar
                             r-knitr
                             r-jsonlite
                             r-glue
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://pkg.mitchelloharawild.com/vitae/")
    (synopsis "Curriculum Vitae for R Markdown")
    (description
     "This package provides templates and functions to simplify the production and
maintenance of curriculum vitae.")
    (license license:gpl3)))

(define-public r-vita
  (package
    (name "r-vita")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vita" version))
       (sha256
        (base32 "114p2lzcr8rn68f0z4kmjdnragqlmi18axda9ma4sbqh8mrmjs9v"))))
    (properties `((upstream-name . "vita")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-randomforest))
    (home-page "https://cran.r-project.org/package=vita")
    (synopsis "Variable Importance Testing Approaches")
    (description
     "This package implements the novel testing approach by Janitza et al.(2015)
<http://nbn-resolving.de/urn/resolver.pl?urn=nbn:de:bvb:19-epub-25587-4> for the
permutation variable importance measure in a random forest and the
PIMP-algorithm by Altmann et al.(2010) <doi:10.1093/bioinformatics/btq134>.
Janitza et al.(2015)
<http://nbn-resolving.de/urn/resolver.pl?urn=nbn:de:bvb:19-epub-25587-4> do not
use the \"standard\" permutation variable importance but the cross-validated
permutation variable importance for the novel test approach.  The
cross-validated permutation variable importance is not based on the out-of-bag
observations but uses a similar strategy which is inspired by the
cross-validation procedure.  The novel test approach can be applied for
classification trees as well as for regression trees.  However, the use of the
novel testing approach has not been tested for regression trees so far, so this
routine is meant for the expert user only and its current state is rather
experimental.")
    (license license:gpl2+)))

(define-public r-visxhclust
  (package
    (name "r-visxhclust")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visxhclust" version))
       (sha256
        (base32 "1wx16mg5g58p4mgf5y776i5ahgpqqjy4wbfqhfjph36mrhs6qr22"))))
    (properties `((upstream-name . "visxhclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shinyhelper
                             r-shinycssloaders
                             r-shiny
                             r-readr
                             r-rcolorbrewer
                             r-patchwork
                             r-knitr
                             r-kableextra
                             r-ggplot2
                             r-fastcluster
                             r-dunn-test
                             r-dt
                             r-dplyr
                             r-dendextend
                             r-complexheatmap
                             r-clvalid
                             r-cluster
                             r-circlize
                             r-bsplus))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rhenkin/visxhclust")
    (synopsis "Shiny App for Visual Exploration of Hierarchical Clustering")
    (description
     "This package provides a Shiny application and functions for visual exploration
of hierarchical clustering with numeric datasets.  Allows users to iterative set
hyperparameters, select features and evaluate results through various plots and
computation of evaluation criteria.")
    (license license:gpl3)))

(define-public r-visvow
  (package
    (name "r-visvow")
    (version "1.3.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visvow" version))
       (sha256
        (base32 "1my0gvp63lri56hkqrs7xsr5i6ji9w17xm94mrrc9lgwy5sj3vf0"))))
    (properties `((upstream-name . "visvow")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-writexls
                             r-vegan
                             r-tikzdevice
                             r-tidyr
                             r-svglite
                             r-splitstackshape
                             r-shinybusy
                             r-shinybs
                             r-shiny
                             r-rtsne
                             r-readxl
                             r-rdpack
                             r-psych
                             r-pracma
                             r-plyr
                             r-plot3d
                             r-pbsmapping
                             r-mass
                             r-ggrepel
                             r-ggplot2
                             r-ggdendro
                             r-formattable
                             r-effectsize
                             r-dt
                             r-dplyr
                             r-cairo))
    (native-inputs (list r-r-rsp))
    (home-page "https://www.visiblevowels.org/")
    (synopsis "Visible Vowels: Visualization of Vowel Variation")
    (description "Visualizes vowel variation in f0, F1, F2, F3 and duration.")
    (license (license:fsdg-compatible "GNU General Public License (>= 2)"))))

(define-public r-visvar
  (package
    (name "r-visvar")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visvaR" version))
       (sha256
        (base32 "1kxydr8inciq7285xrhwzi8hxim0bg4ckpzh8dhzp9q3iwd2jp0d"))))
    (properties `((upstream-name . "visvaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-shiny
                             r-rlang
                             r-readxl
                             r-patchwork
                             r-officer
                             r-htmltools
                             r-ggplot2
                             r-ggcorrplot
                             r-flextable
                             r-dt
                             r-dplyr
                             r-corrplot
                             r-bslib
                             r-agricolae))
    (home-page "https://github.com/rameshram96/visvaR")
    (synopsis "Shiny-Based Statistical Solutions for Agricultural Research")
    (description
     "Visualize Variance is an intuitive shiny applications tailored for agricultural
research data analysis, including one-way and two-way analysis of variance,
correlation, and other essential statistical tools.  Users can easily upload
their datasets, perform analyses, and download the results as a well-formatted
document, streamlining the process of data analysis and reporting in
agricultural research.The experimental design methods are based on classical
work by Fisher (1925) and Scheffe (1959).  The correlation visualization
approaches follow methods developed by Wei & Simko (2021) and Friendly (2002)
<doi:10.1198/000313002533>.")
    (license license:agpl3+)))

(define-public r-visualpred
  (package
    (name "r-visualpred")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visualpred" version))
       (sha256
        (base32 "03vdy0rpfw84jwgp48xws30vxbb9zaly1da298ffyk94knpdf5yg"))))
    (properties `((upstream-name . "visualpred")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-randomforest
                             r-proc
                             r-nnet
                             r-mltools
                             r-mba
                             r-mass
                             r-magrittr
                             r-ggrepel
                             r-ggplot2
                             r-gbm
                             r-factominer
                             r-e1071
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visualpred")
    (synopsis "Visualization 2D of Binary Classification Models")
    (description
     "Visual contour and 2D point and contour plots for binary classification modeling
under algorithms such as glm', rf', gbm', nnet and svm', presented over two
dimensions generated by famd and mca methods.  Package @code{FactoMineR} for
multivariate reduction functions and package MBA for interpolation functions are
used.  The package can be used to visualize the discriminant power of input
variables and algorithmic modeling, explore outliers, compare algorithm
behaviour, etc.  It has been created initially for teaching purposes, but it has
also many practical uses under the XAI paradigm.")
    (license license:gpl3+)))

(define-public r-visualizesimon2stage
  (package
    (name "r-visualizesimon2stage")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VisualizeSimon2Stage" version))
       (sha256
        (base32 "10bls9xibb6iv3cghizxi1clfjclvikmsrfjvamnaw3pjv93h2wb"))))
    (properties `((upstream-name . "VisualizeSimon2Stage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-officer r-ggplot2 r-geomtextpath
                             r-flextable))
    (native-inputs (list r-quarto))
    (home-page "https://cran.r-project.org/package=VisualizeSimon2Stage")
    (synopsis "Visualize Simon's Two-Stage Design")
    (description
     "To visualize the probabilities of early termination, fail and success of Simon's
two-stage design.  To evaluate and visualize the operating characteristics of
Simon's two-stage design.")
    (license license:gpl2)))

(define-public r-visualize-cran-downloads
  (package
    (name "r-visualize-cran-downloads")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Visualize.CRAN.Downloads" version))
       (sha256
        (base32 "1jfj0qp4a6jxw423d6ik18r7gy6zzcxlp71mfhpam256xay0sq8f"))))
    (properties `((upstream-name . "Visualize.CRAN.Downloads")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plotly r-htmlwidgets r-cranlogs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mponce0/Visualize.CRAN.Downloads")
    (synopsis "Visualize Downloads from 'CRAN' Packages")
    (description
     "Visualize the trends and historical downloads from packages in the CRAN
repository.  Data is obtained by using the API to query the database from the
RStudio CRAN mirror.")
    (license license:gpl2+)))

(define-public r-visualize
  (package
    (name "r-visualize")
    (version "4.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visualize" version))
       (sha256
        (base32 "0bsdyqakidgdgxhzyl6w0pg3mnkj84550c4s7dwcwjjqqjsr9bj1"))))
    (properties `((upstream-name . "visualize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/coatless-rpkg/visualize")
    (synopsis
     "Graph Probability Distributions with User Supplied Parameters and Statistics")
    (description
     "Graphs the pdf or pmf and highlights what area or probability is present in user
defined locations.  Visualize is able to provide lower tail, bounded, upper
tail, and two tail calculations.  Supports strict and equal to inequalities.
Also provided on the graph is the mean and variance of the distribution.")
    (license license:expat)))

(define-public r-visualfields
  (package
    (name "r-visualfields")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visualFields" version))
       (sha256
        (base32 "0s03b7r9i3y0kksq2raqcn77icrar4jkpdxg5zybzzlw86nhkzpc"))))
    (properties `((upstream-name . "visualFields")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml
                             r-shinyjs
                             r-shiny
                             r-rlang
                             r-pracma
                             r-polyclip
                             r-plotrix
                             r-oro-dicom
                             r-htmltable
                             r-hmisc
                             r-gtools
                             r-dt
                             r-dplyr
                             r-deldir
                             r-combinat
                             r-boot))
    (home-page "https://www.optocom.es")
    (synopsis "Statistical Methods for Visual Fields")
    (description
     "This package provides a collection of tools for analyzing the field of vision.
It provides a framework for development and use of innovative methods for
visualization, statistical analysis, and clinical interpretation of visual-field
loss and its change over time.  It is intended to be a tool for collaborative
research.  The package is described in Marin-Franch and Swanson (2013)
<doi:10.1167/13.4.10> and is part of the Open Perimetry Initiative (OPI)
[Turpin, Artes, and @code{McKendrick} (2012) <doi:10.1167/12.11.22>].")
    (license license:asl2.0)))

(define-public r-visualdom
  (package
    (name "r-visualdom")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VisualDom" version))
       (sha256
        (base32 "14qg44sivfhnvjac5yq4n5llhwq669m3j7a2z84rlz0737x7x5xd"))))
    (properties `((upstream-name . "VisualDom")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-waveslim r-wavemulcor r-plot3d))
    (home-page "https://cran.r-project.org/package=VisualDom")
    (synopsis "Visualize Dominant Variables in Wavelet Multiple Correlation")
    (description
     "Estimates and plots as a heat map the correlation coefficients obtained via the
wavelet local multiple correlation WLMC (FernÃ¡ndez-Macho 2018) and the dominant
variable/s, i.e., the variable/s that maximizes the multiple correlation through
time and scale (Polanco-MartÃ­nez et al.  2020, Polanco-MartÃ­nez 2022).  We
improve the graphical outputs of WLMC proposing a didactic and useful way to
visualize the dominant variable(s) for a set of time series.  The WLMC was
designed for financial time series, but other kinds of data (e.g., climatic,
ecological, etc.) can be used.  The functions contained in @code{VisualDom} are
highly flexible since these contains several parameters to personalize the time
series under analysis and the heat maps.  In addition, we have also included two
data sets (named rdata_climate and rdata_Lorenz') to exemplify the use of the
functions contained in @code{VisualDom}'.  Methods derived from FernÃ¡ndez-Macho
(2018) <doi:10.1016/j.physa.2017.11.050>, Polanco-MartÃ­nez et al. (2020)
<doi:10.1038/s41598-020-77767-8> and Polanco-MartÃ­nez (2023, in press).")
    (license license:gpl2+)))

(define-public r-vistributions
  (package
    (name "r-vistributions")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vistributions" version))
       (sha256
        (base32 "012ccs5wy8mll0qnqp0qbcqbjmm7kw5d48yyi8xkxym5qffms9w3"))))
    (properties `((upstream-name . "vistributions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rsquaredacademy/vistributions")
    (synopsis "Visualize Probability Distributions")
    (description
     "Visualize and compute percentiles/probabilities of normal, t, f, chi square and
binomial distributions.")
    (license license:expat)))

(define-public r-vistree
  (package
    (name "r-vistree")
    (version "0.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visTree" version))
       (sha256
        (base32 "1l07zfr2hagjpdxfw5290wa3ki4bl7iqxrrhda0d1bp3wmwfz0ai"))))
    (properties `((upstream-name . "visTree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-partykit r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visTree")
    (synopsis "Visualization of Subgroups for Decision Trees")
    (description
     "This package provides a visualization for characterizing subgroups defined by a
decision tree structure.  The visualization simplifies the ability to interpret
individual pathways to subgroups; each sub-plot describes the distribution of
observations within individual terminal nodes and percentile ranges for the
associated inner nodes.")
    (license license:gpl3)))

(define-public r-vistla
  (package
    (name "r-vistla")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vistla" version))
       (sha256
        (base32 "1r5i5h6hq59xk19j8is2w7qr0myh3mnx0i33iq2vkqb21vg96hm8"))))
    (properties `((upstream-name . "vistla")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://gitlab.com/mbq/vistla")
    (synopsis "Detecting Influence Paths with Information Theory")
    (description
     "Traces information spread through interactions between features, utilising
information theory measures and a higher-order generalisation of the concept of
widest paths in graphs.  In particular, vistla can be used to better understand
the results of high-throughput biomedical experiments, by organising the effects
of the investigated intervention in a tree-like hierarchy from direct to
indirect ones, following the plausible information relay circuits.  Due to its
higher-order nature, vistla can handle multi-modality and assign multiple roles
to a single feature.")
    (license license:gpl3+)))

(define-public r-vistime
  (package
    (name "r-vistime")
    (version "1.2.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vistime" version))
       (sha256
        (base32 "14nm2p8yyl0zcf4al31cvnji4a9fi6zs1hvcjpa7dcyjdxd6yfyi"))))
    (properties `((upstream-name . "vistime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-rcolorbrewer
                             r-plotly
                             r-ggrepel
                             r-ggplot2
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://shosaco.github.io/vistime/")
    (synopsis "Pretty Timelines in R")
    (description
     "This package provides a library for creating time based charts, like Gantt or
timelines.  Possible outputs include ggplot2 diagrams, plotly.js graphs,
Highcharts.js widgets and data.frames.  Results can be used in the RStudio
viewer pane, in RMarkdown documents or in Shiny apps.  In the interactive
outputs created by @code{vistime()} and @code{hc_vistime()}, you can interact
with the plot using mouse hover or zoom.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-visstatistics
  (package
    (name "r-visstatistics")
    (version "0.1.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visStatistics" version))
       (sha256
        (base32 "0fjqyfgjvrnmcj1w0pjkkhsn876iip49yzmr3647g9bksvwn88g1"))))
    (properties `((upstream-name . "visStatistics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vcd r-nortest r-multcompview r-cairo))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/shhschilling/visStatistics")
    (synopsis
     "Automated Selection and Visualisation of Statistical Hypothesis Tests")
    (description
     "Automatically selects and visualises statistical hypothesis tests between two
vectors, based on their class, distribution, sample size, and a user-defined
confidence level (conf.level).  Visual outputs - including box plots, bar
charts, regression lines with confidence bands, mosaic plots, residual plots,
and Q-Q plots - are annotated with relevant test statistics, assumption checks,
and post-hoc analyses where applicable.  The algorithmic workflow helps the user
focus on the interpretation of test results rather than test selection.  It is
particularly suited for quick data analysis, e.g., in statistical consulting
projects or educational settings.  The test selection algorithm proceeds as
follows: Input vectors of class numeric or integer are considered numerical;
those of class factor are considered categorical.  Assumptions of residual
normality and homogeneity of variances are considered met if the corresponding
test yields a p-value greater than the significance level alpha = 1 -
conf.level. (1) When the response vector is numerical and the predictor vector
is categorical, a test of central tendencies is selected.  If the categorical
predictor has exactly two levels, @code{t.test()} is applied when group sizes
exceed 30 (Lumley et al. (2002)
<doi:10.1146/annurev.publhealth.23.100901.140546>).  For smaller samples,
normality of residuals is tested using @code{shapiro.test()}; if met,
@code{t.test()} is used; otherwise, @code{wilcox.test()}.  If the predictor is
categorical with more than two levels, an @code{aov()} is initially fitted.
Residual normality is evaluated using both @code{shapiro.test()} and
@code{ad.test()}; residuals are considered approximately normal if at least one
test yields a p-value above alpha.  If this assumption is met,
@code{bartlett.test()} assesses variance homogeneity.  If variances are
homogeneous, @code{aov()} is used; otherwise @code{oneway.test()}.  Both tests
are followed by @code{TukeyHSD()}.  If residual normality cannot be assumed,
@code{kruskal.test()} is followed by @code{pairwise.wilcox.test()}. (2) When
both the response and predictor vectors are numerical, a simple linear
regression model is fitted using @code{lm()}. (3) When both vectors are
categorical, Cochran's rule (Cochran (1954) <doi:10.2307/3001666>) is applied to
test independence either by @code{chisq.test()} or @code{fisher.test()}.")
    (license license:expat)))

(define-public r-visreg
  (package
    (name "r-visreg")
    (version "2.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visreg" version))
       (sha256
        (base32 "070yhyxxh3w16i54k790n47bgcjn4b10b6g1z553x6afjc3l3a6d"))))
    (properties `((upstream-name . "visreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lattice))
    (native-inputs (list r-knitr))
    (home-page "http://pbreheny.github.io/visreg")
    (synopsis "Visualization of Regression Models")
    (description
     "This package provides a convenient interface for constructing plots to visualize
the fit of regression models arising from a wide variety of models in R ('lm',
glm', coxph', rlm', gam', locfit', lmer', @code{randomForest}', etc.).")
    (license license:gpl3)))

(define-public r-visor
  (package
    (name "r-visor")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visor" version))
       (sha256
        (base32 "1f05za1p7nfiyn5av6a1iahc7hax1xjmvsx9bsqplrwjka5f8mjh"))))
    (properties `((upstream-name . "visor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sfheaders r-sf))
    (native-inputs (list r-knitr))
    (home-page "https://cityriverspaces.github.io/visor/")
    (synopsis "Geospatial Tools for Visibility Analysis")
    (description
     "This package provides tools for visibility analysis in geospatial data.  It
offers functionality to perform isovist calculations, using arbitrary geometries
as both viewpoints and occluders.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-visomopresults
  (package
    (name "r-visomopresults")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visOmopResults" version))
       (sha256
        (base32 "15b3akvq5d0mqqki4cylai6fr34f1kz1mwx8a14glda3xs20mwcr"))))
    (properties `((upstream-name . "visOmopResults")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-reactable
                             r-purrr
                             r-omopgenerics
                             r-glue
                             r-generics
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://darwin-eu.github.io/visOmopResults/")
    (synopsis "Graphs and Tables for OMOP Results")
    (description
     "This package provides methods to transform omop_result objects into formatted
tables and figures, facilitating the visualisation of study results working with
the Observational Medical Outcomes Partnership (OMOP) Common Data Model.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-vismeteor
  (package
    (name "r-vismeteor")
    (version "1.8.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vismeteor" version))
       (sha256
        (base32 "059v7qxpkhir066rrw9kxnb8wnyjgwi2fj9mkb7wl0zrqbknhglb"))))
    (properties `((upstream-name . "vismeteor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jankorichter/vismeteor")
    (synopsis "Analysis of Visual Meteor Data")
    (description
     "This package provides a suite of analytical functionalities to process and
analyze visual meteor observations from the Visual Meteor Database of the
International Meteor Organization <https://www.imo.net/>.")
    (license license:expat)))

(define-public r-visitorcounts
  (package
    (name "r-visitorcounts")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VisitorCounts" version))
       (sha256
        (base32 "19gqksyipmzhd0ck350kgpv4m3cm46qzqx5cy6hscr0zsk2y7n4g"))))
    (properties `((upstream-name . "VisitorCounts")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo r-rssa r-ggplot2 r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VisitorCounts")
    (synopsis "Modeling and Forecasting Visitor Counts Using Social Media")
    (description
     "This package performs modeling and forecasting of park visitor counts using
social media data and (partial) on-site visitor counts.  Specifically, the model
is built based on an automatic decomposition of the trend and seasonal
components of the social media-based park visitor counts, from which short-term
forecasts of the visitor counts and percent changes in the visitor counts can be
made.  A reference for the underlying model that @code{VisitorCounts} uses can
be found at Russell Goebel, Austin Schmaltz, Beth Ann Brackett, Spencer A. Wood,
Kimihiro Noguchi (2023) <doi:10.1002/for.2965> .")
    (license license:gpl3)))

(define-public r-visielse
  (package
    (name "r-visielse")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ViSiElse" version))
       (sha256
        (base32 "1ay09dahlqnfrgf4gl4s45a4ahrk2xliagxqz5h826w2vzsawqcc"))))
    (properties `((upstream-name . "ViSiElse")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-reshape2
                             r-matrix
                             r-ggplot2
                             r-colorspace
                             r-chron))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Re2SimLab/ViSiElse")
    (synopsis "Visual Tool for Behavior Analysis over Time")
    (description
     "This package provides a graphical R package designed to visualize behavioral
observations over time.  Based on raw time data extracted from video recorded
sessions of experimental observations, @code{ViSiElse} grants a global overview
of a process by combining the visualization of multiple actions timestamps for
all participants in a single graph.  Individuals and/or group behavior can
easily be assessed.  Supplementary features allow users to further inspect their
data by adding summary statistics (mean, standard deviation, quantile or
statistical test) and/or time constraints to assess the accuracy of the realized
actions.")
    (license license:agpl3)))

(define-public r-vise
  (package
    (name "r-vise")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ViSe" version))
       (sha256
        (base32 "1xiim4cj4cx885fidp0xy2bgy7wv9scak0v64v9agkifhvdhx05f"))))
    (properties `((upstream-name . "ViSe")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-scales
                             r-ggplot2
                             r-dplyr
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "http://www.aggieerin.com/ViSe/")
    (synopsis "Visualizing Sensitivity")
    (description
     "Designed to help the user to determine the sensitivity of an proposed causal
effect to unconsidered common causes.  Users can create visualizations of
sensitivity, effect sizes, and determine which pattern of effects would support
a causal claim for between group differences.  Number needed to treat formula
from Kraemer H.C. & Kupfer D.J. (2006) <doi:10.1016/j.biopsych.2005.09.014>.")
    (license license:lgpl3)))

(define-public r-viscov
  (package
    (name "r-viscov")
    (version "1.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VisCov" version))
       (sha256
        (base32 "1sd2p2d4v7qwpziy61588b6q44rypri1qhm1l2mkpb0h9za9a977"))))
    (properties `((upstream-name . "VisCov")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-trialr r-scatterplot3d r-kernsmooth
                             r-clustergeneration r-bayesm))
    (home-page "https://cran.r-project.org/package=VisCov")
    (synopsis "Visualizing of Distributions of Covariance Matrices")
    (description
     "Visualizing of distributions of covariance matrices.  The package implements the
methodology described in Tokuda, T., Goodrich, B., Van Mechelen, I., Gelman, A.,
& Tuerlinckx, F. (2012)
<https://sites.stat.columbia.edu/gelman/research/unpublished/Visualization.pdf>.")
    (license license:gpl3+)))

(define-public r-viscomplexr
  (package
    (name "r-viscomplexr")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viscomplexr" version))
       (sha256
        (base32 "03v49zhqfv2ifzyqhjhagvjk65hz0vzn61ax9w1lhgd751kpazha"))))
    (properties `((upstream-name . "viscomplexr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-rdpack
                             r-rcpp
                             r-plotrix
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://peterbiber.github.io/viscomplexr/")
    (synopsis "Phase Portraits of Functions in the Complex Number Plane")
    (description
     "Functionality for creating phase portraits of functions in the complex number
plane.  Works with R base graphics, whose full functionality is available.
Parallel processing is used for optimum performance.")
    (license license:gpl3)))

(define-public r-viscomp
  (package
    (name "r-viscomp")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viscomp" version))
       (sha256
        (base32 "18s9qapznc50xwjr3lx48nsn9prji8n13byqzvhy151wm4anak7k"))))
    (properties `((upstream-name . "viscomp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-reshape2
                             r-qgraph
                             r-plyr
                             r-netmeta
                             r-mass
                             r-hmisc
                             r-ggplot2
                             r-ggnewscale
                             r-ggextra
                             r-dplyr
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/georgiosseitidis/viscomp")
    (synopsis
     "Visualize Multi-Component Interventions in Network Meta-Analysis")
    (description
     "This package provides a set of functions providing several visualization tools
for exploring the behavior of the components in a network meta-analysis of
multi-component (complex) interventions: - components descriptive analysis -
heat plot of the two-by-two component combinations - leaving one component
combination out scatter plot - violin plot for specific component combinations
effects - density plot for components effects - waterfall plot for the
interventions effects that differ by a certain component combination - network
graph of components - rank heat plot of components for multiple outcomes.  The
implemented tools are described by Seitidis et al. (2023)
<doi:10.1002/jrsm.1617>.")
    (license license:gpl3+)))

(define-public r-viscollin
  (package
    (name "r-viscollin")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VisCollin" version))
       (sha256
        (base32 "1pcd7b14a2qnq1jlk63fascdb8hkys8cg4jw4rx6xk9xmvpvyhlb"))))
    (properties `((upstream-name . "VisCollin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/friendly/VisCollin")
    (synopsis "Visualizing Collinearity Diagnostics")
    (description
     "This package provides methods to calculate diagnostics for multicollinearity
among predictors in a linear or generalized linear model.  It also provides
methods to visualize those diagnostics following Friendly & Kwan (2009),
\"Whereâs Waldo: Visualizing Collinearity Diagnostics\",
<doi:10.1198/tast.2009.0012>.  These include better tabular presentation of
collinearity diagnostics that highlight the important numbers, a semi-graphic
tableplot of the diagnostics to make warning and danger levels more salient, and
a \"collinearity biplot\" of the smallest dimensions of predictor space, where
collinearity is most apparent.")
    (license license:gpl3+)))

(define-public r-visaotr
  (package
    (name "r-visaotr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visaOTR" version))
       (sha256
        (base32 "12ix8ljbykwf493hw6npli2ad665jip2mzb8p25j5v10f8ij88qm"))))
    (properties `((upstream-name . "visaOTR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xgboost
                             r-rglpk
                             r-randomforest
                             r-mboost
                             r-matrix
                             r-kernlab
                             r-e1071))
    (home-page "https://cran.r-project.org/package=visaOTR")
    (synopsis
     "Valid Improved Sparsity A-Learning for Optimal Treatment Decision")
    (description
     "Valid Improved Sparsity A-Learning (VISA) provides a new method for selecting
important variables involved in optimal treatment regime from a multiply robust
perspective.  The VISA estimator achieves its success by borrowing the strengths
of both model averaging (ARM, Yuhong Yang, 2001)
<doi:10.1198/016214501753168262> and variable selection (PAL, Chengchun Shi,
Ailin Fan, Rui Song and Wenbin Lu, 2018) <doi:10.1214/17-AOS1570>.  The package
is an implementation of Zishu Zhan and Jingxiao Zhang. (2022+).")
    (license license:gpl3)))

(define-public r-visae
  (package
    (name "r-visae")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visae" version))
       (sha256
        (base32 "0ds8jq4dxz134hccyhh20l57si82f3srfm1y044g24p6cmxaficx"))))
    (properties `((upstream-name . "visae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-shinyjs
                             r-shiny
                             r-rlang
                             r-ggrepel
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-ca))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=visae")
    (synopsis "Visualization of Adverse Events")
    (description
     "Implementation of shiny app to visualize adverse events based on the Common
Terminology Criteria for Adverse Events (CTCAE) using stacked correspondence
analysis as described in Diniz et.  al (2021)<doi:10.1186/s12874-021-01368-w>.")
    (license license:gpl2+)))

(define-public r-visachartr
  (package
    (name "r-visachartr")
    (version "4.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visachartR" version))
       (sha256
        (base32 "1a0jvdkmkk86p7xl16mpwibkrxbk4zsas6yrmjg9zwincsf3xx81"))))
    (properties `((upstream-name . "visachartR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-htmlwidgets))
    (home-page
     "https://github.com/visa/visa-chart-components/tree/master/packages/charts-R")
    (synopsis "Wrapper for 'Visa Chart Components'")
    (description
     "This package provides a set of wrapper functions for Visa Chart Components'.
Visa Chart Components <https://github.com/visa/visa-chart-components> is an
accessibility focused, framework agnostic set of data experience design systems
components for the web.")
    (license license:expat)))

(define-public r-visa
  (package
    (name "r-visa")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "visa" version))
       (sha256
        (base32 "1iz8aylfkp6zhb51hk65s7rywwl1nm9ypcci06bz2mkx2j068r0l"))))
    (properties `((upstream-name . "visa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-rcolorbrewer
                             r-plotly
                             r-plot3d
                             r-matrix
                             r-magrittr
                             r-ggpmisc
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kang-yu/visa")
    (synopsis "Vegetation Imaging Spectroscopy Analyzer")
    (description
     "This package provides easy-to-use tools for data analysis and visualization for
hyperspectral remote sensing (also known as imaging spectroscopy), with a
particular focus on vegetation hyperspectral data analysis.  It consists of a
set of functions, ranging from the organization of hyperspectral data in the
proper data structure for spectral feature selection, calculation of vegetation
index, multivariate analysis, as well as to the visualization of spectra and
results of analysis in the ggplot2 style.")
    (license license:gpl3)))

(define-public r-virustotal
  (package
    (name "r-virustotal")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "virustotal" version))
       (sha256
        (base32 "020kwhki5740857zd24xm18dg3whzhf527qhmfx1cxyqyld404wy"))))
    (properties `((upstream-name . "virustotal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-plyr r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/themains/virustotal")
    (synopsis "R Client for the VirusTotal API")
    (description
     "Use @code{VirusTotal}, a Google service that analyzes files and URLs for
viruses, worms, trojans etc., provides category of the content hosted by a
domain from a variety of prominent services, provides passive DNS information,
among other things.  See <http://www.virustotal.com> for more information.")
    (license license:expat)))

(define-public r-virusparies
  (package
    (name "r-virusparies")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Virusparies" version))
       (sha256
        (base32 "1jy2fab9lskf18sr2vz2gmqs36ws249vdwl936zhjnc8gn2igr84"))))
    (properties `((upstream-name . "Virusparies")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-scales
                             r-rlang
                             r-readr
                             r-gt
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-chromote))
    (home-page "https://github.com/SergejRuff/Virusparies")
    (synopsis "Visualize and Process Output from 'VirusHunterGatherer'")
    (description
     "This package provides a collection of tools for downstream analysis of
@code{VirusHunterGatherer} output.  Processing of hittables and plotting of
results, enabling better interpretation, is made easier with the provided
functions.")
    (license license:gpl3+)))

(define-public r-virtuoso
  (package
    (name "r-virtuoso")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "virtuoso" version))
       (sha256
        (base32 "1smb8sjfqcp3jflplgf92swasxzrp72fnnqwyisf87pjknm91qsc"))))
    (properties `((upstream-name . "virtuoso")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rappdirs
                             r-ps
                             r-processx
                             r-odbc
                             r-ini
                             r-fs
                             r-digest
                             r-dbi
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/virtuoso")
    (synopsis "Interface to 'Virtuoso' using 'ODBC'")
    (description
     "This package provides users with a simple and convenient mechanism to manage and
query a Virtuoso database using the DBI (Data-Base Interface) compatible ODBC
(Open Database Connectivity) interface.  Virtuoso is a high-performance
\"universal server,\" which can act as both a relational database, supporting
standard Structured Query Language ('SQL') queries, while also supporting data
following the Resource Description Framework ('RDF') model for Linked Data.  RDF
data can be queried using SPARQL ('SPARQL Protocol and RDF Query Language)
queries, a graph-based query that supports semantic reasoning.  This allows
users to leverage the performance of local or remote Virtuoso servers using
popular R packages such as DBI and dplyr', while also providing a
high-performance solution for working with large RDF triplestores from R. The
package also provides helper routines to install, launch, and manage a Virtuoso
server locally on Mac', Windows and Linux platforms using the standard
interactive installers from the R command-line.  By automatically handling these
setup steps, the package can make using Virtuoso considerably faster and easier
for a most users to deploy in a local environment.  Managing the bulk import of
triples from common serializations with a single intuitive command is another
key feature of this package.  Bulk import performance can be tens to hundreds of
times faster than the comparable imports using existing R tools, including
rdflib and redland packages.")
    (license license:expat)))

(define-public r-virtualspecies
  (package
    (name "r-virtualspecies")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "virtualspecies" version))
       (sha256
        (base32 "1bqrh17fcskklsdkwkg9lvlki67jigr0c32mq4bfl16iisrc1342"))))
    (properties `((upstream-name . "virtualspecies")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis r-terra r-rnaturalearth r-raster r-ade4))
    (home-page "https://borisleroy.com/virtualspecies/")
    (synopsis "Generation of Virtual Species Distributions")
    (description
     "This package provides a framework for generating virtual species distributions,
a procedure increasingly used in ecology to improve species distribution models.
 This package integrates the existing methodological approaches with the
objective of generating virtual species distributions with increased ecological
realism.")
    (license license:gpl2+)))

(define-public r-virtualpop
  (package
    (name "r-virtualpop")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VirtualPop" version))
       (sha256
        (base32 "19wv6mxl8p9rcs85nj993hz4pdm8clyqbv13kkmvsyps33bbnm9q"))))
    (properties `((upstream-name . "VirtualPop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-msm r-hmdhfdplus))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VirtualPop")
    (synopsis
     "Simulation of Populations by Sampling Waiting-Time Distributions")
    (description
     "Constructs a virtual population from fertility and mortality rates for any
country, calendar year and birth cohort in the Human Mortality Database
<https://www.mortality.org> and the Human Fertility Database
<https://www.humanfertility.org>.  Fertility histories are simulated for every
individual and their offspring, producing a multi-generation virtual population.")
    (license license:gpl2)))

(define-public r-virtualpollen
  (package
    (name "r-virtualpollen")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "virtualPollen" version))
       (sha256
        (base32 "0caiyl7h9qn3nv34dafv5rs4v7n4avyjpng0rkz6aw3ri1zn8sa0"))))
    (properties `((upstream-name . "virtualPollen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-tidyr
                             r-plyr
                             r-mgcv
                             r-ggplot2
                             r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/BlasBenito/virtualPollen")
    (synopsis
     "Simulating Pollen Curves from Virtual Taxa with Different Life and Niche Traits")
    (description
     "This package provides tools to generate virtual environmental drivers with a
given temporal autocorrelation, and to simulate pollen curves at annual
resolution over millennial time-scales based on these drivers and virtual taxa
with different life traits and niche features.  It also provides the means to
simulate quasi-realistic pollen-data conditions by applying simulated
accumulation rates and given depth intervals between consecutive samples.")
    (license license:gpl2+)))

(define-public r-virf
  (package
    (name "r-virf")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIRF" version))
       (sha256
        (base32 "0bdkmbmkmmj78h9x025qsdzjzcx8xr2s98wlspcsghlz4hxkzcas"))))
    (properties `((upstream-name . "VIRF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmgarch
                             r-mgarchbekk
                             r-matrixcalc
                             r-matlib
                             r-ks
                             r-gnm
                             r-expm
                             r-bigvar))
    (home-page "https://cran.r-project.org/package=VIRF")
    (synopsis
     "Computation of Volatility Impulse Response Function of Multivariate Time Series")
    (description
     "Computation of volatility impulse response function for multivariate time series
model using algorithm by Jin, Lin and Tamvakis (2012)
<doi.org/10.1016/j.eneco.2012.03.003>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-viralmodels
  (package
    (name "r-viralmodels")
    (version "1.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viralmodels" version))
       (sha256
        (base32 "1xkgbf4l0ca8dgpzcsb94fxnv8vwz8rhs99i33zdwy14nqcjxcj5"))))
    (properties `((upstream-name . "viralmodels")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-workflowsets
                             r-workflows
                             r-viraldomain
                             r-tune
                             r-tidyselect
                             r-rules
                             r-rsample
                             r-recipes
                             r-ranger
                             r-purrr
                             r-parsnip
                             r-magrittr
                             r-kknn
                             r-kernlab
                             r-hardhat
                             r-glmnet
                             r-dplyr
                             r-dials
                             r-cubist
                             r-baguette))
    (home-page "https://cran.r-project.org/package=viralmodels")
    (synopsis "Viral Load and CD4 Lymphocytes Regression Models")
    (description
     "This package provides a comprehensive framework for building, evaluating, and
visualizing regression models for analyzing viral load and CD4 (Cluster of
Differentiation 4) lymphocytes data.  It leverages the principles of the
tidymodels ecosystem of Max Kuhn and Hadley Wickham (2020)
<https://www.tidymodels.org> to offer a user-friendly experience in model
development.  This package includes functions for data preprocessing, feature
engineering, model training, tuning, and evaluation, along with visualization
tools to enhance the interpretation of model results.  It is specifically
designed for researchers in biostatistics, computational biology, and HIV
research who aim to perform reproducible and rigorous analyses to gain insights
into disease dynamics.  The main focus is on improving the understanding of the
relationships between viral load, CD4 lymphocytes, and other relevant covariates
to contribute to HIV research and the visibility of vulnerable seropositive
populations.")
    (license license:expat)))

(define-public r-viraldomain
  (package
    (name "r-viraldomain")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viraldomain" version))
       (sha256
        (base32 "1jjyaxvamw054vzcfwb05admm9facbrsnscbxwxpqc9pdarkxw4m"))))
    (properties `((upstream-name . "viraldomain")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-workflows
                             r-tidyselect
                             r-recipes
                             r-ranger
                             r-parsnip
                             r-magrittr
                             r-kknn
                             r-earth
                             r-dplyr
                             r-applicable))
    (home-page "https://cran.r-project.org/package=viraldomain")
    (synopsis "Applicability Domain Methods of Viral Load and CD4 Lymphocytes")
    (description
     "This package provides methods for assessing the applicability domain of models
that predict viral load and CD4 (Cluster of Differentiation 4) lymphocyte
counts.  These methods help determine the extent of extrapolation when making
predictions.")
    (license license:expat)))

(define-public r-viprodesign
  (package
    (name "r-viprodesign")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIProDesign" version))
       (sha256
        (base32 "16m9y9sq04q6c7adnx5w6a4qqgzisdvn2jn2bp58xcaf95sbcjnp"))))
    (properties `((upstream-name . "VIProDesign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pathviewr
                             r-decipher
                             r-dbscan
                             r-cluster
                             r-biostrings
                             r-ape))
    (home-page "https://cran.r-project.org/package=VIProDesign")
    (synopsis "Comprehensive Tool for Protein Design")
    (description
     "This package provides tools for designing virus protein panels through sequence
clustering and protein sequence analysis.  The package includes functionality
for filtering sequences, removing redundancy, identifying outliers, clustering
sequences, and calculating entropy to evaluate clustering quality.  A
publication describing these methods is in preparation and will be added once
available.")
    (license license:asl2.0)))

(define-public r-vip
  (package
    (name "r-vip")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vip" version))
       (sha256
        (base32 "0n87g2z354az0scsf7w7n144p77yv1mk96w5vacn25p7jlldsram"))))
    (properties `((upstream-name . "vip")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yardstick r-tibble r-ggplot2 r-foreach))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/koalaverse/vip/")
    (synopsis "Variable Importance Plots")
    (description
     "This package provides a general framework for constructing variable importance
plots from various types of machine learning models in R. Aside from some
standard model- specific variable importance measures, this package also
provides model- agnostic approaches that can be applied to any supervised
learning algorithm.  These include 1) an efficient permutation-based variable
importance measure, 2) variable importance based on Shapley values (Strumbelj
and Kononenko, 2014) <doi:10.1007/s10115-013-0679-x>, and 3) the variance-based
approach described in Greenwell et al. (2018) <@code{arXiv:1805.04755>}.  A
variance-based method for quantifying the relative strength of interaction
effects is also included (see the previous reference for details).")
    (license license:gpl2+)))

(define-public r-violinplotter
  (package
    (name "r-violinplotter")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "violinplotter" version))
       (sha256
        (base32 "1xy57mycdsr9qr48n1jrw0nzwz848r0xcns864d8gyc8zikp3x6a"))))
    (properties `((upstream-name . "violinplotter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=violinplotter")
    (synopsis "Plotting and Comparing Means with Violin Plots")
    (description
     "This package produces violin plots with optional nonparametric (Mann-Whitney
test) and parametric (Tukey's honest significant difference) mean comparison and
linear regression.  This package aims to be a simple and quick visualization
tool for comparing means and assessing trends of categorical factors.")
    (license license:gpl3)))

(define-public r-vinereg
  (package
    (name "r-vinereg")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vinereg" version))
       (sha256
        (base32 "0a6sh34fn9p1lnb9qwzy6iwz5mm5x25zgsj5fscc8d5l8kspxdcx"))))
    (properties `((upstream-name . "vinereg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-wdm
                             r-rvinecopulib
                             r-rcppthread
                             r-rcppeigen
                             r-rcpp
                             r-kde1d
                             r-bh
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://tnagler.github.io/vinereg/")
    (synopsis "D-Vine Quantile Regression")
    (description
     "This package implements D-vine quantile regression models with parametric or
nonparametric pair-copulas.  See Kraus and Czado (2017)
<doi:10.1016/j.csda.2016.12.009> and Schallhorn et al. (2017)
<doi:10.48550/@code{arXiv.1705.08310>}.")
    (license license:gpl3)))

(define-public r-vinecopula
  (package
    (name "r-vinecopula")
    (version "2.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VineCopula" version))
       (sha256
        (base32 "1hvwqvbph3gcvrvjxm3s3fhv3c3dxjq3rc1insic1bl7prg90292"))))
    (properties `((upstream-name . "VineCopula")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm r-mass r-lattice r-adgoftest))
    (home-page "https://github.com/tnagler/VineCopula")
    (synopsis "Statistical Inference of Vine Copulas")
    (description
     "This package provides tools for the statistical analysis of regular vine copula
models, see Aas et al. (2009) <doi:10.1016/j.insmatheco.2007.02.001> and Dissman
et al. (2013) <doi:10.1016/j.csda.2012.08.010>.  The package includes tools for
parameter estimation, model selection, simulation, goodness-of-fit tests, and
visualization.  Tools for estimation, selection and exploratory data analysis of
bivariate copula models are also provided.")
    (license license:gpl2+)))

(define-public r-vindecodr
  (package
    (name "r-vindecodr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vindecodr" version))
       (sha256
        (base32 "0yvchdf90l8lkzyba5wrpma6vjcgf19li159s8s79y8sgp5pyx7p"))))
    (properties `((upstream-name . "vindecodr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-httr))
    (home-page "https://cran.r-project.org/package=vindecodr")
    (synopsis
     "Provides an Interface to the Department of Transportation VIN Decoder")
    (description
     "This package provides a programmatic interface in R for the US Department of
Transportation (DOT) National Highway Transportation Safety Administration
(NHTSA) vehicle identification number (VIN) API, located at
<https://vpic.nhtsa.dot.gov/api/>.  The API can decode up to 50 vehicle
identification numbers in one call, and provides manufacturer information about
the vehicles, including make, model, model year, and gross vehicle weight rating
(GVWR).")
    (license license:expat)))

(define-public r-vimps
  (package
    (name "r-vimps")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIMPS" version))
       (sha256
        (base32 "13r8g9k216fjsnw4ymqdsrx08z6rr2i3cwafrv1j93lgl0d3lnj4"))))
    (properties `((upstream-name . "VIMPS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rocr r-ranger r-knockoff r-ggplot2 r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VIMPS")
    (synopsis "Calculate Variable Importance with Knock Off Variables")
    (description
     "The variable importance is calculated using knock off variables.  Then output
can be provided in numerical and graphical form.  Meredith L Wallace (2023)
<doi:10.1186/s12874-023-01965-x>.")
    (license license:expat)))

(define-public r-vimpclust
  (package
    (name "r-vimpclust")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vimpclust" version))
       (sha256
        (base32 "0ly7piz7q88sh2g7zq5b2pqph9467b4fclgq9amm0m7xc8vrv4f9"))))
    (properties `((upstream-name . "vimpclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-polychrome r-pcamixdata r-mclust
                             r-ggplot2))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=vimpclust")
    (synopsis "Variable Importance in Clustering")
    (description
     "An implementation of methods related to sparse clustering and variable
importance in clustering.  The package currently allows to perform sparse
k-means clustering with a group penalty, so that it automatically selects groups
of numerical features.  It also allows to perform sparse clustering and variable
selection on mixed data (categorical and numerical features), by preprocessing
each categorical feature as a group of numerical features.  Several methods for
visualizing and exploring the results are also provided.  M. Chavent, J.
Lacaille, A. Mourer and M. Olteanu
(2020)<https://www.esann.org/sites/default/files/proceedings/2020/ES2020-103.pdf>.")
    (license license:gpl3)))

(define-public r-vimp
  (package
    (name "r-vimp")
    (version "2.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vimp" version))
       (sha256
        (base32 "069pcxzavi213idpslnc1skylsb1wn6xldajnn54prlwq9hkfb19"))))
    (properties `((upstream-name . "vimp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-superlearner
                             r-rocr
                             r-rlang
                             r-mass
                             r-magrittr
                             r-dplyr
                             r-data-table
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://bdwilliamson.github.io/vimp/")
    (synopsis "Perform Inference on Algorithm-Agnostic Variable Importance")
    (description
     "Calculate point estimates of and valid confidence intervals for nonparametric,
algorithm-agnostic variable importance measures in high and low dimensions,
using flexible estimators of the underlying regression functions.  For more
information about the methods, please see Williamson et al. (Biometrics, 2020),
Williamson et al. (JASA, 2021), and Williamson and Feng (ICML, 2020).")
    (license license:expat)))

(define-public r-vimean
  (package
    (name "r-vimean")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIMean" version))
       (sha256
        (base32 "0kxrcigp94h2j1vx5pj24sp73iqxldc1ygm5bak4jrld66r0nb5b"))))
    (properties `((upstream-name . "VIMean")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VIMean")
    (synopsis "Variability Independent of Mean")
    (description
     "To computed the variability independent of mean (VIM) or variation independent
of mean (VIM).  The methodology can be found at Peter M Rothwell et al. (2010)
<doi:10.1016/S1474-4422(10)70067-3>.")
    (license license:gpl3)))

(define-public r-villager
  (package
    (name "r-villager")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "villager" version))
       (sha256
        (base32 "1jcgjz6sn5izn3bqi6g45f40nw921vvqj74apb2i44h6a3qnxqjg"))))
    (properties `((upstream-name . "villager")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-uuid r-readr r-r6))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zizroc/villager/")
    (synopsis "Framework for Designing and Running Agent Based Models")
    (description
     "This is a package for creating and running Agent Based Models (ABM).  It
provides a set of base classes with core functionality to allow bootstrapped
models.  For more intensive modeling, the supplied classes can be extended to
fit researcher needs.")
    (license license:expat)))

(define-public r-viking
  (package
    (name "r-viking")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viking" version))
       (sha256
        (base32 "145xrfifdqnzclzx2c7aj89yw5sd8f34jijpia595dy30lssywwi"))))
    (properties `((upstream-name . "viking")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=viking")
    (synopsis "State-Space Models Inference by Kalman or Viking")
    (description
     "Inference methods for state-space models, relying on the Kalman Filter or on
Viking (Variational Bayesian @code{VarIance} @code{tracKING}).  See J. de
Vilmarest (2022) <https://theses.hal.science/tel-03716104/>.")
    (license license:lgpl3)))

(define-public r-vigor
  (package
    (name "r-vigor")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIGoR" version))
       (sha256
        (base32 "13xxzlpznxvvvflqrhyh5m8v6x3q5ifrwx8dmm9hl0h8sr6i0lvp"))))
    (properties `((upstream-name . "VIGoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VIGoR")
    (synopsis "Variational Bayesian Inference for Genome-Wide Regression")
    (description
     "Conducts linear regression using variational Bayesian inference, particularly
optimized for genome-wide association mapping and whole-genome prediction which
use a number of DNA markers as the explanatory variables.  Provides seven
regression models which select the important variables (i.e., the variables
related to response variables) among the given explanatory variables in
different ways (i.e., model structures).")
    (license license:expat)))

(define-public r-vigicaen
  (package
    (name "r-vigicaen")
    (version "0.15.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vigicaen" version))
       (sha256
        (base32 "1frc1qzzs2xfhlmsiqdvl9y6y77r4aa5bfb9vdjh3zhmfnjihkbj"))))
    (properties `((upstream-name . "vigicaen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-purrr
                             r-lifecycle
                             r-gridextra
                             r-glue
                             r-ggplot2
                             r-fst
                             r-dplyr
                             r-data-table
                             r-cli
                             r-arrow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pharmacologie-caen/vigicaen")
    (synopsis "'VigiBase' Pharmacovigilance Database Toolbox")
    (description
     "Perform the analysis of the World Health Organization (WHO) Pharmacovigilance
database @code{VigiBase} (Extract Case Level version), <https://who-umc.org/>
e.g., load data, perform data management, disproportionality analysis, and
descriptive statistics.  Intended for pharmacovigilance routine use or studies.
This package is NOT supported nor reflect the opinion of the WHO, or the Uppsala
Monitoring Centre.  Disproportionality methods are described by NorÃ©n et al
(2013) <doi:10.1177/0962280211403604>.")
    (license (license:fsdg-compatible "CeCILL-2.1"))))

(define-public r-viewscape
  (package
    (name "r-viewscape")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viewscape" version))
       (sha256
        (base32 "1647masd0bb3lmpya119m3dvy7fpbv8g2zybk1wgd06q2y1g6k16"))))
    (properties `((upstream-name . "viewscape")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-terra
                             r-sp
                             r-sf
                             r-rlang
                             r-rcpp
                             r-pbmcapply
                             r-foresttools
                             r-dplyr))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://github.com/land-info-lab/viewscape")
    (synopsis "Viewscape Analysis")
    (description
     "This package provides a collection of functions to make R a more effective
viewscape analysis tool for calculating viewscape metrics based on computing the
viewable area for given a point/multiple viewpoints and a digital elevation
model.The method of calculating viewscape metrics implemented in this package
are based on the work of Tabrizian et al. (2020)
<doi:10.1016/j.landurbplan.2019.103704>.  The algorithm of computing viewshed is
based on the work of Franklin & Ray. (1994)
<https://citeseerx.ist.psu.edu/document?repid=rep1&type=pdf&doi=555780f6f5d7e537eb1edb28862c86d1519af2be>.")
    (license license:gpl3)))

(define-public r-viewpoly
  (package
    (name "r-viewpoly")
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viewpoly" version))
       (sha256
        (base32 "1c97khxsfnml21wh8np4qp7w2w31zxw72dl5vy25jjpx06dbp814"))))
    (properties `((upstream-name . "viewpoly")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vroom
                             r-tidyr
                             r-shinywidgets
                             r-shinythemes
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-reshape2
                             r-purrr
                             r-plotly
                             r-markdown
                             r-jbrowser
                             r-hidecan
                             r-golem
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-config
                             r-abind))
    (home-page "https://github.com/mmollina/viewpoly")
    (synopsis
     "Shiny App to Visualize Genetic Maps and QTL Analysis in Polyploid Species")
    (description
     "This package provides a graphical user interface to integrate, visualize and
explore results from linkage and quantitative trait loci analysis, together with
genomic information for autopolyploid species.  The app is meant for interactive
use and allows users to optionally upload different sources of information,
including gene annotation and alignment files, enabling the exploitation and
search for candidate genes in a genome browser.  In its current version,
VIEWpoly supports inputs from MAPpoly', @code{polymapR}', @code{diaQTL}',
QTLpoly', @code{polyqtlR}', GWASpoly', and HIDECAN packages.")
    (license license:gpl3+)))

(define-public r-viewpipesteps
  (package
    (name "r-viewpipesteps")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "ViewPipeSteps" version))
       (sha256
        (base32 "0lcm7zzflbbjpb1mdy6pppdmg9gvlcn7hg42a4fgm0kxhniwnmyg"))))
    (properties `((upstream-name . "ViewPipeSteps")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rstudioapi r-dplyr))
    (home-page "https://cran.r-project.org/package=ViewPipeSteps")
    (synopsis "Create View Tabs of Pipe Chains")
    (description
     "Debugging pipe chains often consists of viewing the output after each step.
This package adds RStudio addins and two functions that allow outputing each or
select steps in a convenient way.")
    (license license:expat)))

(define-public r-vietnameseconverter
  (package
    (name "r-vietnameseconverter")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vietnameseConverter" version))
       (sha256
        (base32 "1bnscv1yz4hr6cvpavdj2gjn6dqy96rbagxl9280a2xxav09mps3"))))
    (properties `((upstream-name . "vietnameseConverter")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-utf8 r-sf r-gsubfn))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/jniedballa/vietnameseConverter")
    (synopsis "Convert Vietnamese Encodings")
    (description
     "Conversion of characters from unsupported Vietnamese character encodings to
Unicode characters.  These Vietnamese encodings (TCVN3, VISCII, VPS) are not
natively supported in R and lead to printing of wrong characters and garbled
text (mojibake).  This package fixes that problem and provides readable output
with the correct Unicode characters (with or without diacritics).")
    (license license:gpl2+)))

(define-public r-vietnamcode
  (package
    (name "r-vietnamcode")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vietnamcode" version))
       (sha256
        (base32 "0vc0c1fg30afar2dkch5h27b8jbglcd9ja6d5hcypnibqz4c68vz"))))
    (properties `((upstream-name . "vietnamcode")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vietnamcode")
    (synopsis "Convert Vietnam Provincial Codes")
    (description
     "Converts Vietnam's provinces names and ID across different formats.  Handles
diacritics and different spellings.")
    (license license:gpl3)))

(define-public r-video
  (package
    (name "r-video")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "video" version))
       (sha256
        (base32 "0h500mpbjiwggx1m8zfydhr9n4v27is9s46ay9856d2lgv2srlfg"))))
    (properties `((upstream-name . "video")))
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
    (propagated-inputs (list r-shiny r-jsonlite r-htmlwidgets))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/ashbaldry/video")
    (synopsis "'Shiny' Extension of 'video.js'")
    (description
     "Video interactivity within shiny applications using video.js'.  Enables the
status of the video to be sent from the UI to the server, and allows events such
as playing and pausing the video to be triggered from the server.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-vicus
  (package
    (name "r-vicus")
    (version "0.99.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Vicus" version))
       (sha256
        (base32 "1f4vmz34gms0vbvpn94rgdhbbvxbqmjxzhd9n4fxfm0dizmba004"))))
    (properties `((upstream-name . "Vicus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rspectra r-rann r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rikenbit/Vicus")
    (synopsis
     "Exploiting Local Structures to Improve Network-Based Analysis of Biological Data")
    (description
     "Compared with the similar graph embedding method such as Laplacian Eigenmaps,
Vicus can exploit more local structures of graph data.  For the details of the
methods, see the reference section of @code{GitHub} README.md
<https://github.com/rikenbit/Vicus>.")
    (license license:expat)))

(define-public r-vici
  (package
    (name "r-vici")
    (version "0.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vici" version))
       (sha256
        (base32 "0gghmn7bs4wr2r24s794ljvz2r3qv0clvgj54b6hxmgn1b48bxg0"))))
    (properties `((upstream-name . "vici")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-shinywidgets
                             r-shiny
                             r-scales
                             r-rcolorbrewer
                             r-numderiv
                             r-nlme
                             r-ggpubr
                             r-ggplot2
                             r-dt
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=vici")
    (synopsis
     "Vaccine Induced Cellular Immunogenicity with Bivariate Modeling")
    (description
     "This package provides a shiny app for accurate estimation of vaccine induced
immunogenicity with bivariate linear modeling.  Method is detailed in: Lhomme,
Hejblum, Lacabaratz, Wiedemann, Lelievre, Levy, Thiebaut & Richert (2020).
Journal of Immunological Methods, 477:112711. <doi:10.1016/j.jim.2019.112711>.")
    (license license:gpl3)))

(define-public r-vicc
  (package
    (name "r-vicc")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vICC" version))
       (sha256
        (base32 "13lcs7wwj1xfbjf3q7r8ssf00jg5hr1vjp2pyw0r42iz7mx47xjv"))))
    (properties `((upstream-name . "vICC")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjags r-rdpack r-nlme r-ggplot2 r-coda))
    (home-page "https://cran.r-project.org/package=vICC")
    (synopsis "Varying Intraclass Correlation Coefficients")
    (description
     "Compute group-specific intraclass correlation coefficients, Bayesian testing of
homogenous within-group variance, and spike-and-slab model selection to
determine which groups share a common within-group variance in a one-way random
effects model <10.31234/osf.io/hpq7w>.")
    (license license:gpl2)))

(define-public r-vicatmix
  (package
    (name "r-vicatmix")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VICatMix" version))
       (sha256
        (base32 "0wkzl7km9sm26m95ngd58vlsfwpzbvx3wjaw66lmzapjjxn9801s"))))
    (properties `((upstream-name . "VICatMix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-mcclust
                             r-matrixstats
                             r-klar
                             r-gtools))
    (home-page "https://github.com/j-ackierao/VICatMix")
    (synopsis "Variational Mixture Models for Clustering Categorical Data")
    (description
     "This package provides a variational Bayesian finite mixture model for the
clustering of categorical data, and can implement variable selection and
semi-supervised outcome guiding if desired.  Incorporates an option to perform
model averaging over multiple initialisations to reduce the effects of local
optima and improve the automatic estimation of the true number of clusters.  For
further details, see the paper by Rao and Kirk (2024)
<doi:10.48550/@code{arXiv.2406.16227>}.")
    (license license:gpl3+)))

(define-public r-vic5
  (package
    (name "r-vic5")
    (version "0.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VIC5" version))
       (sha256
        (base32 "1zkvzkras94gyc43b9j4bq4mpyg9l1idx2pdd8a728gmq1daky0k"))))
    (properties `((upstream-name . "VIC5")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-lubridate r-foreach))
    (home-page "https://github.com/rpkgs/VIC5")
    (synopsis "The Variable Infiltration Capacity (VIC) Hydrological Model")
    (description
     "The Variable Infiltration Capacity (VIC) model is a macroscale hydrologic model
that solves full water and energy balances, originally developed by Xu Liang at
the University of Washington (UW).  The version of VIC source code used is of
5.0.1 on <https://github.com/UW-Hydro/VIC/>, see Hamman et al. (2018).
Development and maintenance of the current official version of the VIC model at
present is led by the UW Hydro (Computational Hydrology group) in the Department
of Civil and Environmental Engineering at UW. VIC is a research model and in its
various forms it has been applied to most of the major river basins around the
world, as well as globally
<http://vic.readthedocs.io/en/master/Documentation/References/>.  References:
\"Liang, X., D. P. Lettenmaier, E. F. Wood, and S. J. Burges (1994), A simple
hydrologically based model of land surface water and energy fluxes for general
circulation models, J. Geophys.  Res., 99(D7), 14415-14428,
<doi:10.1029/94JD00483>\"; \"Hamman, J. J., Nijssen, B., Bohn, T. J., Gergel, D.
R., and Mao, Y. (2018), The Variable Infiltration Capacity model version 5
(VIC-5): infrastructure improvements for new applications and reproducibility,
Geosci.  Model Dev., 11, 3481-3496, <doi:10.5194/gmd-11-3481-2018>\".")
    (license license:gpl3)))

(define-public r-viafr
  (package
    (name "r-viafr")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viafr" version))
       (sha256
        (base32 "0fq7dqpsnrfnf03dvz2zpxysj0qjapvpvclzl9ch1j5g06jpbdmg"))))
    (properties `((upstream-name . "viafr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-utf8
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-dplyr
                             r-crul
                             r-assertthat))
    (home-page "https://github.com/stefanieschneider/viafr")
    (synopsis
     "Interface to the 'VIAF' ('Virtual International Authority File') API")
    (description
     "This package provides direct access to linked names for the same entity across
the world's major name authority files, including national and regional
variations in language, character set, and spelling.  For more information go to
<https://viaf.org/>.")
    (license license:gpl3)))

(define-public r-viafoundry
  (package
    (name "r-viafoundry")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "viafoundry" version))
       (sha256
        (base32 "06lli76b0abixczfajk11byc5gwygxbgmik90rmarmcj9wca4mxw"))))
    (properties `((upstream-name . "viafoundry")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-purrr r-jsonlite r-httr r-dplyr r-askpass))
    (home-page "https://github.com/ViaScientific/viafoundry-R-SDK")
    (synopsis "R Client for 'Via Foundry' API")
    (description
     "Via Foundry API provides streamlined tools for interacting with and extracting
data from structured responses, particularly for use cases involving
hierarchical data from Foundry's API. It includes functions to fetch and parse
process-level and file-level metadata, allowing users to efficiently query and
manipulate nested data structures.  Key features include the ability to list all
unique process names, retrieve file metadata for specific or all processes, and
dynamically load or download files based on their type.  With built-in support
for handling various file formats (e.g., tabular and non-tabular files) and
seamless integration with API through authentication, this package is designed
to enhance workflows involving large-scale data management and analysis.  Robust
error handling and flexible configuration ensure reliable performance across
diverse data environments.  Please consult the documentation for the API
endpoint for your installation.")
    (license license:asl2.0)))

(define-public r-via
  (package
    (name "r-via")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "via" version))
       (sha256
        (base32 "0mk6zrirf38a6qym15w9w76gw813mc7p265mcach90asrzfglb6q"))))
    (properties `((upstream-name . "via")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=via")
    (synopsis "Virtual Arrays")
    (description
     "The base class @code{VirtualArray} is defined, which acts as a wrapper around
lists allowing users to fold arbitrary sequential data into n-dimensional,
R-style virtual arrays.  The derived XArray class is defined to be used for
homogeneous lists that contain a single class of objects.  The
@code{RasterArray} and @code{SfArray} classes enable the use of stacked spatial
data instead of lists.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-vhica
  (package
    (name "r-vhica")
    (version "0.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vhica" version))
       (sha256
        (base32 "10785bx2wcnrfg77914r93fzlixhjpqz22sj3gfrh5n4qswzs91g"))))
    (properties `((upstream-name . "vhica")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vhica")
    (synopsis "Vertical and Horizontal Inheritance Consistence Analysis")
    (description
     "The \"Vertical and Horizontal Inheritance Consistence Analysis\" method is
described in the following publication: \"VHICA: a new method to discriminate
between vertical and horizontal transposon transfer: application to the mariner
family within Drosophila\" by G. Wallau.  et al. (2016)
<DOI:10.1093/molbev/msv341>.  The purpose of the method is to detect horizontal
transfers of transposable elements, by contrasting the divergence of
transposable element sequences with that of regular genes.")
    (license license:gpl2)))

(define-public r-vhcub
  (package
    (name "r-vhcub")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vhcub" version))
       (sha256
        (base32 "04a8hdm4pxl8fzwy9q2wqc9q0dl5r49xwbid70yj9qlflh683id0"))))
    (properties `((upstream-name . "vhcub")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-seqinr r-ggplot2 r-biostrings))
    (home-page "https://cran.r-project.org/package=vhcub")
    (synopsis "Virus-Host Codon Usage Co-Adaptation Analysis")
    (description
     "Analyze the co-adaptation of codon usage between a virus and its host, calculate
various codon usage bias measurements as: effective number of codons (ENc)
Novembre (2002) <doi:10.1093/oxfordjournals.molbev.a004201>, codon adaptation
index (CAI) Sharp and Li (1987) <doi:10.1093/nar/15.3.1281>, relative codon
deoptimization index (RCDI) PuigbÃ² et al (2010) <doi:10.1186/1756-0500-3-87>,
similarity index (@code{SiD}) Zhou et al (2013)
<doi:10.1371/journal.pone.0077239>, synonymous codon usage orderliness (SCUO)
Wan et al (2004) <doi:10.1186/1471-2148-4-19> and, relative synonymous codon
usage (RSCU) Sharp et al (1986) <doi:10.1093/nar/14.13.5125>.  Also, it provides
a statistical dinucleotide over- and underrepresentation with three different
models.  Implement several methods for visualization of codon usage as
@code{ENc.GC3plot()} and @code{PR2.plot()}.")
    (license license:gpl3)))

(define-public r-vglmer
  (package
    (name "r-vglmer")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vglmer" version))
       (sha256
        (base32 "1xcz1h6wr0ipvhny5ay2kxqh75fdd8k1xv6aywn1jfbyf1mcw20q"))))
    (properties `((upstream-name . "vglmer")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-mvtnorm
                             r-mgcv
                             r-matrix
                             r-lmtest
                             r-lme4
                             r-cholwishart))
    (home-page "https://github.com/mgoplerud/vglmer")
    (synopsis
     "Variational Inference for Hierarchical Generalized Linear Models")
    (description
     "Estimates hierarchical models using variational inference.  At present, it can
estimate logistic, linear, and negative binomial models.  It can accommodate
models with an arbitrary number of random effects and requires no integration to
estimate.  It also provides the ability to improve the quality of the
approximation using marginal augmentation.  Goplerud (2022)
<doi:10.1214/21-BA1266> and Goplerud (2024) <doi:10.1017/S0003055423000035>
provide details on the variational algorithms.")
    (license license:gpl2+)))

(define-public r-vgamextra
  (package
    (name "r-vgamextra")
    (version "0.0-7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VGAMextra" version))
       (sha256
        (base32 "131f3kfsacfcqiv4h1xrg0n97d2f3yp4kkh4l7hx62l4zpqlfbrn"))))
    (properties `((upstream-name . "VGAMextra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam))
    (home-page "https://cran.r-project.org/package=VGAMextra")
    (synopsis "Additions and Extensions of the 'VGAM' Package")
    (description
     "Extending the functionalities of the VGAM package with additional functions and
datasets.  At present, VGAMextra comprises new family functions (ffs) to
estimate several time series models by maximum likelihood using Fisher scoring,
unlike popular packages in CRAN relying on @code{optim()}, including
ARMA-GARCH-like models, the Order-(p, d, q) ARIMAX model (non- seasonal), the
Order-(p) VAR model, error correction models for cointegrated time series, and
ARMA-structures with Student-t errors.  For independent data, new ffs to
estimate the inverse- Weibull, the inverse-gamma, the generalized beta of the
second kind and the general multivariate normal distributions are available.  In
addition, VGAMextra incorporates new VGLM-links for the mean-function, and the
quantile-function (as an alternative to ordinary quantile modelling) of several
1-parameter distributions, that are compatible with the class of VGLM/VGAM
family functions.  Currently, only fixed-effects models are implemented.  All
functions are subject to change; see the NEWS for further details on the latest
changes.")
    (license license:gpl2)))

(define-public r-vgamdata
  (package
    (name "r-vgamdata")
    (version "1.1-13")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VGAMdata" version))
       (sha256
        (base32 "132kg8qg5y7mvfqpva6pg63lm0857izkjw7d2ir4l51d5wl1pn9k"))))
    (properties `((upstream-name . "VGAMdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam))
    (home-page "https://www.stat.auckland.ac.nz/~yee/VGAMdata/")
    (synopsis "Data Supporting the 'VGAM' Package")
    (description
     "Mainly data sets to accompany the VGAM package and the book \"Vector Generalized
Linear and Additive Models: With an Implementation in R\" (Yee, 2015)
<DOI:10.1007/978-1-4939-2818-7>.  These are used to illustrate vector
generalized linear and additive models (VGLMs/VGAMs), and associated models
(Reduced-Rank VGLMs, Quadratic RR-VGLMs, Row-Column Interaction Models, and
constrained and unconstrained ordination models in ecology).  This package now
contains some old VGAM family functions which have been replaced by newer ones
(often because they are now special cases).")
    (license license:gpl2)))

(define-public r-vfs
  (package
    (name "r-vfs")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VFS" version))
       (sha256
        (base32 "1b8sl8id2gj4iqkpjzd3giybbix2jvskwsbw1kqj3zqr77hygxwg"))))
    (properties `((upstream-name . "VFS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nleqslv r-e1071))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VFS")
    (synopsis "Vegetated Filter Strip and Erosion Model")
    (description
     "Empirical models for runoff, erosion, and phosphorus loss across a vegetated
filter strip, given slope, soils, climate, and vegetation (Gall et al., 2018)
<doi:10.1007/s00477-017-1505-x>.  It also includes functions for deriving
climate parameters from measured daily weather data, and for simulating
rainfall.  Models implemented include MUSLE (Williams, 1975) and APLE (Vadas et
al., 2009 <doi:10.2134/jeq2008.0337>).")
    (license license:gpl3)))

(define-public r-vfprogression
  (package
    (name "r-vfprogression")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vfprogression" version))
       (sha256
        (base32 "0kgw1jx0rl9v8qy8qg7zjzdgvwqdi7k1lsvsx3lnpw4sfpkzsq23"))))
    (properties `((upstream-name . "vfprogression")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vfprogression")
    (synopsis "Visual Field (VF) Progression Analysis and Plotting Methods")
    (description
     "Realization of published methods to analyze visual field (VF) progression.
Introduction to the plotting methods (designed by author TE) for VF output
visualization.  A sample dataset for two eyes, each with 10 follow-ups is
included.  The VF analysis methods could be found in -- Musch et al. (1999)
<doi:10.1016/S0161-6420(99)90147-1>, Nouri-Mahdavi et at. (2012)
<doi:10.1167/iovs.11-9021>, Schell et at. (2014)
<doi:10.1016/j.ophtha.2014.02.021>, Aptel et al. (2015) <doi:10.1111/aos.12788>.")
    (license license:gpl2+)))

(define-public r-vfp
  (package
    (name "r-vfp")
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VFP" version))
       (sha256
        (base32 "01varrrd2x2m7mbsc22hz7mdfp9s72qaxj4ns5zviy5mjjpmhgsn"))))
    (properties `((upstream-name . "VFP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vca r-mass r-gnm))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://cran.r-project.org/package=VFP")
    (synopsis "Variance Function Program")
    (description
     "Variance function estimation for models proposed by W. Sadler in his variance
function program ('VFP',
www.aacb.asn.au/AACB/Resources/Variance-Function-Program).  Here, the idea is to
fit multiple variance functions to a data set and consequently assess which
function reflects the relationship Var ~ Mean best.  For in-vitro diagnostic
('IVD') assays modeling this relationship is of great importance when individual
test-results are used for defining follow-up treatment of patients.")
    (license license:gpl2+)))

(define-public r-vfinputs
  (package
    (name "r-vfinputs")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vfinputs" version))
       (sha256
        (base32 "10fh6ybsqy9xm7gwl0kska0pgk810sgq9kvf86gmnm0pmrcqzsdh"))))
    (properties `((upstream-name . "vfinputs")))
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
    (propagated-inputs (list r-shiny r-scales r-jsonlite r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/rhenkin/vfinputs")
    (synopsis "Visual Filter Inputs for Shiny")
    (description
     "This package provides a set of visual input controls for Shiny apps to
facilitate filtering across multiple outputs.")
    (license license:gpl3)))

(define-public r-vewaningvariant
  (package
    (name "r-vewaningvariant")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VEwaningVariant" version))
       (sha256
        (base32 "1fg44cy2i138b21y610bj64xjwwp96wilngy3rq89vsvkj40rird"))))
    (properties `((upstream-name . "VEwaningVariant")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rcpparmadillo r-rcpp r-ggplot2))
    (home-page "https://cran.r-project.org/package=VEwaningVariant")
    (synopsis "Vaccine Efficacy Over Time - Variant Aware")
    (description
     "This package implements methods for inference on potential waning of vaccine
efficacy and for estimation of vaccine efficacy at a user-specified time after
vaccination based on data from a randomized, double-blind, placebo-controlled
vaccine trial in which participants may be unblinded and placebo subjects may be
crossed over to the study vaccine.  The methods also for variant stratification
and allow adjustment for possible confounding via inverse probability weighting
through specification of models for the trial entry process, unblinding
mechanisms, and the probability an unblinded placebo participant accepts study
vaccine.")
    (license license:gpl2)))

(define-public r-vewaning
  (package
    (name "r-vewaning")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VEwaning" version))
       (sha256
        (base32 "0s2i5rkx04d6zv3yyk3gf9vkcp74650ldyv9bbynik6xmyl5rfw2"))))
    (properties `((upstream-name . "VEwaning")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-ggplot2))
    (home-page "https://cran.r-project.org/package=VEwaning")
    (synopsis "Vaccine Efficacy Over Time")
    (description
     "This package implements methods for inference on potential waning of vaccine
efficacy and for estimation of vaccine efficacy at a user-specified time after
vaccination based on data from a randomized, double-blind, placebo-controlled
vaccine trial in which participants may be unblinded and placebo subjects may be
crossed over to the study vaccine.  The methods also allow adjustment for
possible confounding via inverse probability weighting through specification of
models for the trial entry process, unblinding mechanisms, and the probability
an unblinded placebo participant accepts study vaccine: Tsiatis, A. A. and
Davidian, M. (2022) <doi:10.1111/biom.13509>.")
    (license license:gpl2)))

(define-public r-vetresearchlmm
  (package
    (name "r-vetresearchlmm")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VetResearchLMM" version))
       (sha256
        (base32 "1a7wm04bsr5shak7l8ypxlhlnx3qkq1jdpjnji1n05p6b00ih9h1"))))
    (properties `((upstream-name . "VetResearchLMM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-nlme r-multcomp r-lmertest r-lme4 r-ggplot2))
    (home-page "https://github.com/MYaseen208/VetResearchLMM")
    (synopsis
     "Linear Mixed Models - An Introduction with Applications in Veterinary Research")
    (description
     "R Codes and Datasets for Duchateau, L. and Janssen, P. and Rowlands, G. J.
(1998).  Linear Mixed Models.  An Introduction with applications in Veterinary
Research.  International Livestock Research Institute.")
    (license license:gpl2)))

(define-public r-vetr
  (package
    (name "r-vetr")
    (version "0.2.18")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vetr" version))
       (sha256
        (base32 "0ymbv6d1xvsnpvhn6pniiwxw9fjyxy8bahkwfh56rxqlv9qx3pi0"))))
    (properties `((upstream-name . "vetr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brodieG/vetr")
    (synopsis "Trust, but Verify")
    (description
     "Declarative template-based framework for verifying that objects meet structural
requirements, and auto-composing error messages when they do not.")
    (license license:gpl2+)))

(define-public r-vetiver
  (package
    (name "r-vetiver")
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vetiver" version))
       (sha256
        (base32 "04gpr4h4vzr0xkgf4x8drpkg1j8f1w84h4ndc4ry15n7ayim4s0b"))))
    (properties `((upstream-name . "vetiver")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tibble
                             r-rlang
                             r-readr
                             r-rapidoc
                             r-purrr
                             r-pins
                             r-magrittr
                             r-lifecycle
                             r-hardhat
                             r-glue
                             r-generics
                             r-fs
                             r-ellipsis
                             r-cli
                             r-cereal
                             r-butcher
                             r-bundle))
    (native-inputs (list r-knitr))
    (home-page "https://vetiver.rstudio.com")
    (synopsis "Version, Share, Deploy, and Monitor Models")
    (description
     "The goal of vetiver is to provide fluent tooling to version, share, deploy, and
monitor a trained model.  Functions handle both recording and checking the
model's input data prototype, and predicting from a remote API endpoint.  The
vetiver package is extensible, with generics that can support many kinds of
models.")
    (license license:expat)))

(define-public r-verylargeintegers
  (package
    (name "r-verylargeintegers")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VeryLargeIntegers" version))
       (sha256
        (base32 "1a6hyipn9522zj69amlxmqip45gflml5kcyjlxi4vf4y1givb7qs"))))
    (properties `((upstream-name . "VeryLargeIntegers")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=VeryLargeIntegers")
    (synopsis "Store and Operate with Arbitrarily Large Integers")
    (description
     "Multi-precision library that allows to store and operate with arbitrarily big
integers without loss of precision.  It includes a large list of tools to work
with them, like: - Arithmetic and logic operators - Modular-arithmetic operators
- Computer Number Theory utilities - Probabilistic primality tests -
Factorization algorithms - Random generators of diferent types of integers.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-vertexwiser
  (package
    (name "r-vertexwiser")
    (version "1.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VertexWiseR" version))
       (sha256
        (base32 "05vp96vvgh54c0rj4ixx6nyykkvrsni9y9qrb91r4xr42fahk6yq"))))
    (properties `((upstream-name . "VertexWiseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (inputs (list vtk python))
    (propagated-inputs (list r-stringr
                             r-reticulate
                             r-rappdirs
                             r-png
                             r-plotly
                             r-igraph
                             r-gifti
                             r-fs
                             r-freesurferformats
                             r-foreach
                             r-dosnow
                             r-doparallel
                             r-ciftitools))
    (native-inputs (list r-r-rsp))
    (home-page "https://cogbrainhealthlab.github.io/VertexWiseR/")
    (synopsis
     "Simplified Vertex-Wise Analyses of Whole-Brain and Hippocampal Surface")
    (description
     "This package provides functions to run statistical analyses on surface-based
neuroimaging data, computing measures including cortical thickness and surface
area of the whole-brain and of the hippocampi.  It can make use of
@code{FreeSurfer}', @code{fMRIprep}', XCP-D', HCP and CAT12 preprocessed
datasets and @code{HippUnfold} hippocampal segmentation outputs for a given
sample by restructuring the data values into a single file.  The single file can
then be used by the package for analyses independently from its base dataset and
without need for its access.")
    (license license:gpl3)))

(define-public r-vertexsimilarity
  (package
    (name "r-vertexsimilarity")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VertexSimilarity" version))
       (sha256
        (base32 "0f638y272dbmz5747wxqy9pxasxk3a9f9wf31gf297qx7268ab1m"))))
    (properties `((upstream-name . "VertexSimilarity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=VertexSimilarity")
    (synopsis "Creates Vertex Similarity Matrix for an Undirected Graph")
    (description
     "This package creates Vertex Similarity matrix of an undirected graph based on
the method stated by E. A. Leicht, Petter Holme, AND M. E. J. Newman in their
paper <DOI:10.1103/@code{PhysRevE.73.026120>}.")
    (license license:gpl2)))

(define-public r-versus
  (package
    (name "r-versus")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "versus" version))
       (sha256
        (base32 "1g382ig1lw1jn50ijw4nmcy5xbcdcci2f8h4vs53f8256arj0ky7"))))
    (properties `((upstream-name . "versus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-purrr
                             r-pillar
                             r-glue
                             r-dplyr
                             r-data-table
                             r-collapse
                             r-cli))
    (home-page "https://eutwt.github.io/versus/")
    (synopsis "Compare Data Frames")
    (description
     "This package provides a toolset for interactively exploring the differences
between two data frames.")
    (license license:expat)))

(define-public r-versionsort
  (package
    (name "r-versionsort")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "versionsort" version))
       (sha256
        (base32 "00r0h2iqlfq0nidqbhx4fv29rlppfx43jv2n2zp38lpx5vbqjhnj"))))
    (properties `((upstream-name . "versionsort")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=versionsort")
    (synopsis "Sort and Order Version Codes")
    (description
     "This package provides a lightweight package for sorting version codes in various
forms.  No strong dependencies guaranteed.")
    (license license:gpl3+)))

(define-public r-versioning
  (package
    (name "r-versioning")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "versioning" version))
       (sha256
        (base32 "1xrlwcqcaapg4m9sf28i1zzbzkfcisxa4xy5n5rsrqz884zkpig6"))))
    (properties `((upstream-name . "versioning")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-r6 r-glue r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=versioning")
    (synopsis "Settings and File I/O using a Configuration YAML File")
    (description
     "R data pipelines commonly require reading and writing data to versioned
directories.  Each directory might correspond to one step of a multi-step
process, where that version corresponds to particular settings for that step and
a chain of previous steps that each have their own versions.  This package
creates a configuration object that makes it easy to read and write versioned
data, based on YAML configuration files loaded and saved to each versioned
folder.")
    (license license:expat)))

(define-public r-vermeulen
  (package
    (name "r-vermeulen")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vermeulen" version))
       (sha256
        (base32 "0wy7ml7z09n3hr4xma8nblv83bqpnsd6hmh9cqhqbndcrm3nbfby"))))
    (properties `((upstream-name . "vermeulen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-memoise))
    (home-page "https://github.com/ramiromagno/vermeulen")
    (synopsis "Biomarker Data Set by Vermeulen et al. (2009)")
    (description
     "The biomarker data set by Vermeulen et al. (2009)
<doi:10.1016/S1470-2045(09)70154-8> is provided.  The data source, however, is
by Ruijter et al. (2013) <doi:10.1016/j.ymeth.2012.08.011>.  The original data
set may be downloaded from
<https://medischebiologie.nl/wp-content/uploads/2019/02/qpcrdatamethods.zip>.
This data set is for a real-time quantitative polymerase chain reaction (PCR)
experiment that comprises the raw fluorescence data of 24,576 amplification
curves.  This data set comprises 59 genes of interest and 5 reference genes.
Each gene was assessed on 366 neuroblastoma complementary DNA (@code{cDNA})
samples and on 18 standard dilution series samples (10-fold 5-point dilution
series x 3 replicates + no template controls (NTC) x 3 replicates).")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-verification
  (package
    (name "r-verification")
    (version "1.44")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "verification" version))
       (sha256
        (base32 "095b0s2i2j655xfwjrddlz9pia0a1njzh7r3cjnfk84dp43a03hl"))))
    (properties `((upstream-name . "verification")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-fields r-dtw r-circstats r-boot))
    (home-page "https://cran.r-project.org/package=verification")
    (synopsis "Weather Forecast Verification Utilities")
    (description
     "Utilities for verifying discrete, continuous and probabilistic forecasts, and
forecasts expressed as parametric distributions are included.")
    (license license:gpl2+)))

(define-public r-verhoeff
  (package
    (name "r-verhoeff")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "verhoeff" version))
       (sha256
        (base32 "0kpxpl5s5342ajg22cwb7y9ks240drp37q1g67n19krdy6ih14kz"))))
    (properties `((upstream-name . "verhoeff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=verhoeff")
    (synopsis "Implementation of the 'Verhoeff' Check Digit Algorithm")
    (description
     "An implementation of the Verhoeff algorithm for calculating check digits
(Verhoeff, J. (1969) <doi:10.1002/zamm.19710510323>).  Functions are provided to
calculate a check digit given an input number, calculate and append a check
digit to an input number, and validate that a check digit is correct given an
input number.")
    (license license:gpl3)))

(define-public r-verdata
  (package
    (name "r-verdata")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "verdata" version))
       (sha256
        (base32 "1i5qzwsjn01mrh57xhkmq97hlwwjglf3j11ynjpdsjvqwqwwv16y"))))
    (properties `((upstream-name . "verdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rjson
                             r-readr
                             r-rdpack
                             r-purrr
                             r-magrittr
                             r-logger
                             r-lcmcr
                             r-glue
                             r-dplyr
                             r-digest
                             r-assertr
                             r-arrow))
    (home-page "https://github.com/HRDAG/verdata")
    (synopsis "Analyze Data from the Truth Commission in Colombia")
    (description
     "Facilitates use and analysis of data about the armed conflict in Colombia
resulting from the joint project between La JurisdicciÃ³n Especial para la Paz
(JEP), La ComisiÃ³n para el Esclarecimiento de la Verdad, la Convivencia y la No
repeticiÃ³n (CEV), and the Human Rights Data Analysis Group (HRDAG).  The data
are 100 replicates from a multiple imputation through chained equations as
described in Van Buuren and Groothuis-Oudshoorn (2011)
<doi:10.18637/jss.v045.i03>.  With the replicates the user can examine four
human rights violations that occurred in the Colombian conflict accounting for
the impact of missing fields and fully missing observations.")
    (license license:gpl2)))

(define-public r-verbalisr
  (package
    (name "r-verbalisr")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "verbalisr" version))
       (sha256
        (base32 "05qclq6ng72fif1kymyys247cpb837mc7hy9h6k3h9p04h8l0r1q"))))
    (properties `((upstream-name . "verbalisr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ribd r-pedtools))
    (home-page "https://github.com/magnusdv/verbalisr")
    (synopsis "Describe Pedigree Relationships in Words")
    (description
     "Describe in words the genealogical relationship between two members of a given
pedigree, using the algorithm in Vigeland (2022)
<doi:10.1186/s12859-022-04759-y>.  verbalisr is part of the pedsuite collection
of packages for pedigree analysis.  For a demonstration of verbalisr', see the
online app @code{QuickPed} at <https://magnusdv.shinyapps.io/quickped>.")
    (license license:gpl3)))

(define-public r-verbaliser
  (package
    (name "r-verbaliser")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "verbaliseR" version))
       (sha256
        (base32 "16ndjpsfp700h5wz3y7hram6x8lp4piykcrz7y4ybrkgwyaik851"))))
    (properties `((upstream-name . "verbaliseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr))
    (home-page "https://github.com/cararthompson/verbaliseR")
    (synopsis "Make your Text Mighty Fine")
    (description
     "Turn R analysis outputs into full sentences, by writing vectors into in-sentence
lists, pluralising words conditionally, spelling out numbers if they are at the
start of sentences, writing out dates in full following US or UK style, and
managing capitalisations in tidy data.")
    (license license:expat)))

(define-public r-vennplot
  (package
    (name "r-vennplot")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vennplot" version))
       (sha256
        (base32 "0x59awa1zsjwk5qb1jzv6d2mn2fm4aq1lq8zlbnf1da0h4837yab"))))
    (properties `((upstream-name . "vennplot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-rgl r-rcpp))
    (home-page "https://cran.r-project.org/package=vennplot")
    (synopsis "Venn Diagrams in 2D and 3D")
    (description "Calculate and plot Venn diagrams in 2D and 3D.")
    (license license:gpl3+)))

(define-public r-venneuler
  (package
    (name "r-venneuler")
    (version "1.1-4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "venneuler" version))
       (sha256
        (base32 "1ga9ckhpd6my0xjf6xarhn3b98d88075fa0zkad4sxca7k6v7hbd"))))
    (properties `((upstream-name . "venneuler")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava))
    (home-page "https://www.rforge.net/venneuler/")
    (synopsis "Venn and Euler Diagrams")
    (description "Calculates and displays Venn and Euler Diagrams.")
    (license (license:fsdg-compatible "MPL-1.1"))))

(define-public r-vembedr
  (package
    (name "r-vembedr")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vembedr" version))
       (sha256
        (base32 "1hmwgrp9vj7qwmsvnvgry8h707kj53wp5chpxqsbgxi9jryabpc0"))))
    (properties `((upstream-name . "vembedr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-magrittr
                             r-lifecycle
                             r-httr
                             r-htmltools
                             r-glue
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ijlyttle/vembedr")
    (synopsis "Embed Video in HTML")
    (description
     "This package provides a set of functions for generating HTML to embed hosted
video in your R Markdown documents or Shiny applications.")
    (license license:expat)))

(define-public r-velociraptr
  (package
    (name "r-velociraptr")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "velociraptr" version))
       (sha256
        (base32 "0a67vmv05cxc9f27aqzr6nkgy2mj3fhykwj5nb23qwfqa669a5hi"))))
    (properties `((upstream-name . "velociraptr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf))
    (home-page "https://cran.r-project.org/package=velociraptr")
    (synopsis "Fossil Analysis")
    (description
     "This package provides functions for downloading, reshaping, culling, cleaning,
and analyzing fossil data from the Paleobiology Database
<https://paleobiodb.org>.")
    (license license:gpl3)))

(define-public r-vek
  (package
    (name "r-vek")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vek" version))
       (sha256
        (base32 "0ph67wfbs9r0fam79lmikbf0j0zbk0qqip7maxrxiy2zdbbf6xg2"))))
    (properties `((upstream-name . "vek")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/samsemegne/vek")
    (synopsis "Predicate Helper Functions for Testing Simple Atomic Vectors")
    (description
     "Predicate helper functions for testing atomic vectors in R. All functions take a
single argument x and check whether it's of the target type of base-R atomic
vector (i.e.  no class extensions nor attributes other than names'), returning
TRUE or FALSE. Some additionally check for value (e.g. absence of missing
values, infinities, blank characters, or names attribute; or having length 1).")
    (license license:gpl3)))

(define-public r-vein
  (package
    (name "r-vein")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vein" version))
       (sha256
        (base32 "0iv841b3lpggfi84877cfd885pz7zkx43djl3yvsabc677pysbp7"))))
    (properties `((upstream-name . "vein")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-units r-sf r-dotcall64 r-data-table r-cptcity))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://github.com/atmoschem/vein")
    (synopsis "Vehicular Emissions Inventories")
    (description
     "Elaboration of vehicular emissions inventories, consisting in four stages,
pre-processing activity data, preparing emissions factors, estimating the
emissions and post-processing of emissions in maps and databases.  More details
in Ibarra-Espinosa et al (2018) <doi:10.5194/gmd-11-2209-2018>.  Before using
VEIN you need to know the vehicular composition of your study area, in other
words, the combination of of type of vehicles, size and fuel of the fleet.
Then, it is recommended to start with the project to download a template to
create a structure of directories and scripts.")
    (license license:expat)))

(define-public r-vegtable
  (package
    (name "r-vegtable")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegtable" version))
       (sha256
        (base32 "0q854isd0bm53xxj45h64cxnvkck0hm43vrxizyxxgqwqf0syg3z"))))
    (properties `((upstream-name . "vegtable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegdata
                             r-taxlist
                             r-stringi
                             r-sp
                             r-qdapregex
                             r-foreign))
    (home-page "https://github.com/kamapu/vegtable")
    (synopsis "Handling Vegetation Data Sets")
    (description
     "Import and handling data from vegetation-plot databases, especially data stored
in Turboveg 2 (<https://www.synbiosys.alterra.nl/turboveg/>).  Also
import/export routines for exchange of data with Juice
(<https://www.sci.muni.cz/botany/juice/>) are implemented.")
    (license license:gpl2+)))

(define-public r-vegspecindex
  (package
    (name "r-vegspecindex")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VegSpecIndex" version))
       (sha256
        (base32 "0s4dnh4c98masr0x706jfqawwl04cjpf2wz42dnkl99a149yislc"))))
    (properties `((upstream-name . "VegSpecIndex")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VegSpecIndex")
    (synopsis "Vegetation and Spectral Indices for Environmental Assessment")
    (description
     "Earth system dynamics, such as plant dynamics, water bodies, and fire regimes,
are widely monitored using spectral indicators obtained from multispectral
remote sensing products.  There is a great need for spectral index catalogues
and computing tools as a result of the quick rise of suggested spectral indices.
 Unfortunately, the majority of these resources lack a standard Application
Programming Interface, are out-of-date, closed-source, or are not linked to a
catalogue.  We now introduce @code{VegSpecIndex}', a standardised list of
spectral indices for studies of the earth system.  A thorough inventory of
spectral indices is offered by @code{VegSpecIndex} and is connected to an R
library.  For every spectral index, @code{VegSpecIndex} provides a comprehensive
collection of information, such as names, formulae, and source references.  The
user community may add more items to the catalogue, which will keep
@code{VegSpecIndex} up to date and allow for further scientific uses.
Additionally, the R library makes it possible to apply the catalogue to actual
data, which makes it easier to employ remote sensing resources effectively
across a variety of Earth system domains.")
    (license license:gpl3)))

(define-public r-vegperiod
  (package
    (name "r-vegperiod")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegperiod" version))
       (sha256
        (base32 "0m10m85cf0qk2q2ln1qziqicv79rbjqqi9py18r412j7m43pn013"))))
    (properties `((upstream-name . "vegperiod")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://rnuske.github.io/vegperiod/")
    (synopsis "Determine Thermal Vegetation Periods")
    (description
     "Collection of common methods to determine growing season length in a simple
manner.  Start and end dates of the vegetation periods are calculated solely
based on daily mean temperatures and the day of the year.")
    (license license:gpl3+)))

(define-public r-vegindexcalc
  (package
    (name "r-vegindexcalc")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegIndexCalc" version))
       (sha256
        (base32 "1wcns71sw91d643p5mk2vyy4iq8a0v5sa0g1a6x4yx25zlqpxgic"))))
    (properties `((upstream-name . "vegIndexCalc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vegIndexCalc")
    (synopsis
     "Vegetation Indices (VIs) Calculation for Remote Sensing Analysis")
    (description
     "It provides a comprehensive toolkit for calculating a suite of common vegetation
indices (VIs) derived from remote sensing imagery.  VIs are essential tools used
to quantify vegetation characteristics, such as biomass, leaf area index (LAI)
and photosynthetic activity, which are essential parameters in various
ecological, agricultural, and environmental studies.  Applications of this
package include biomass estimation, crop monitoring, forest management, land use
and land cover change analysis and climate change studies.  For method details
see, Deb,D.,Deb,S.,Chakraborty,D.,Singh,J.P.,Singh,A.K.,Dutta,P.and
Choudhury,A.(2020)<doi:10.1080/10106049.2020.1756461>.  Utilizing this R
package, users can effectively extract and analyze critical information from
remote sensing imagery, enhancing their comprehension of vegetation dynamics and
their importance in global ecosystems.  The package includes the function
@code{vegetation_indices()}.")
    (license license:gpl3)))

(define-public r-vegdata
  (package
    (name "r-vegdata")
    (version "0.9.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegdata" version))
       (sha256
        (base32 "1fgha0sxgymiqnr6gwa3pjmbvb76iwxnpxs666zifscch4fz3z99"))))
    (properties `((upstream-name . "vegdata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-rsqlite
                             r-plyr
                             r-magrittr
                             r-indicspecies
                             r-httr
                             r-hoardr
                             r-foreign
                             r-dplyr
                             r-dbplyr
                             r-dbi
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://germansl.infinitenature.org")
    (synopsis "Access Vegetation Databases and Treat Taxonomy")
    (description
     "Handling of vegetation data from different sources ( Turboveg 2.0
<https://www.synbiosys.alterra.nl/turboveg/>; the German national repository
<https://www.vegetweb.de> and others.  Taxonomic harmonization (given
appropriate taxonomic lists, e.g. the German taxonomic standard list
\"@code{GermanSL}\", <https://germansl.infinitenature.org>).")
    (license license:gpl2+)))

(define-public r-vegclust
  (package
    (name "r-vegclust")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegclust" version))
       (sha256
        (base32 "1499anyjaq6kpjp1y8lpd6qha0qybr72f2fd6svf47dl1vdc8g2v"))))
    (properties `((upstream-name . "vegclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan))
    (native-inputs (list r-knitr))
    (home-page "https://emf-creaf.github.io/vegclust/")
    (synopsis "Fuzzy Clustering of Vegetation Data")
    (description
     "This package provides a set of functions to: (1) perform fuzzy clustering of
vegetation data (De Caceres et al, 2010) <doi:10.1111/j.1654-1103.2010.01211.x>;
(2) to assess ecological community similarity on the basis of structure and
composition (De Caceres et al, 2013) <doi:10.1111/2041-210X.12116>.")
    (license license:gpl2+)))

(define-public r-vegawidget
  (package
    (name "r-vegawidget")
    (version "0.5.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegawidget" version))
       (sha256
        (base32 "1rar2a4rwzw3qvcazjvxqa0bmcrssqkxyqymdsyghl6kds8kx604"))))
    (properties `((upstream-name . "vegawidget")))
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
    (propagated-inputs (list r-rlang
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-glue
                             r-digest
                             r-assertthat))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://vegawidget.github.io/vegawidget/")
    (synopsis "'Htmlwidget' for 'Vega' and 'Vega-Lite'")
    (description
     "Vega and Vega-Lite parse text in JSON notation to render chart-specifications
into HTML'.  This package is used to facilitate the rendering.  It also provides
a means to interact with signals, events, and datasets in a Vega chart using
@code{JavaScript} or Shiny'.")
    (license license:expat)))

(define-public r-vegan3d
  (package
    (name "r-vegan3d")
    (version "1.4-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegan3d" version))
       (sha256
        (base32 "031cgbixrlaqv6gwyhwxpn0vyr6dgc0lyqwimna4gam8j3qnw4wm"))))
    (properties `((upstream-name . "vegan3d")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vegan r-scatterplot3d r-rgl r-lattice r-cluster))
    (home-page "https://cran.r-project.org/")
    (synopsis
     "Static and Dynamic 3D and Editable Interactive Plots for the 'vegan' Package")
    (description
     "Static and dynamic 3D plots to be used with ordination results and in diversity
analysis, especially with the vegan package.")
    (license license:gpl2)))

(define-public r-vegalite
  (package
    (name "r-vegalite")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vegalite" version))
       (sha256
        (base32 "0dlzhvrg3nj6knyycdgg3d1vzq3dn9vxb34fjin9hzilszqmarbk"))))
    (properties `((upstream-name . "vegalite")))
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
    (propagated-inputs (list r-webshot
                             r-magrittr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-digest
                             r-clipr
                             r-base64))
    (native-inputs (list r-knitr esbuild))
    (home-page "http://github.com/hrbrmstr/vegalite")
    (synopsis
     "Tools to Encode Visualizations with the 'Grammar of Graphics'-Like 'Vega-Lite' 'Spec'")
    (description
     "The Vega-Lite @code{JavaScript} framework provides a higher-level grammar for
visual analysis, akin to ggplot or Tableau', that generates complete Vega
specifications.  Functions exist which enable building a valid spec from scratch
or importing a previously created spec file.  Functions also exist to export
spec files and to generate code which will enable plots to be embedded in
properly configured web pages.  The default behavior is to generate an
htmlwidget'.")
    (license (license:fsdg-compatible "AGPL + file LICENSE"))))

(define-public r-veesa
  (package
    (name "r-veesa")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "veesa" version))
       (sha256
        (base32 "07f6pcd76cy1bxbfmbkmvhrlbhwg15qj9lk4z5bfqqnsmzqb9y7b"))))
    (properties `((upstream-name . "veesa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-purrr
                             r-ggplot2
                             r-forcats
                             r-fdasrvf
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=veesa")
    (synopsis "Pipeline for Explainable Machine Learning with Functional Data")
    (description
     "This package implements the Variable importance Explainable Elastic Shape
Analysis pipeline for explainable machine learning with functional data inputs.
Converts training and testing data functional inputs to elastic shape analysis
principal components that account for vertical and/or horizontal variability.
Computes feature importance to identify important principal components and
visualizes variability captured by functional principal components.  See Goode
et al. (2025) <doi:10.48550/@code{arXiv.2501.07602>} for technical details about
the methodology.")
    (license license:expat)))

(define-public r-vedicdatetime
  (package
    (name "r-vedicdatetime")
    (version "0.1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VedicDateTime" version))
       (sha256
        (base32 "08kkwb5k0n4hjy9rw7bdgpls14a8xdnw3v0g56hhhxnwxf6whmly"))))
    (properties `((upstream-name . "VedicDateTime")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-swephr))
    (native-inputs (list r-knitr))
    (home-page "https://www.neerajbokde.in/viggnette/2022-09-05-VedicDateTime")
    (synopsis "Vedic Calendar System")
    (description
     "This package provides platform for Vedic calendar system having several
functionalities to facilitate conversion between Gregorian and Vedic calendar
systems, and helpful in examining its impact in the time series analysis domain.")
    (license license:gpl3+)))

(define-public r-vectorwavelet
  (package
    (name "r-vectorwavelet")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vectorwavelet" version))
       (sha256
        (base32 "1z0gl28hgrqgx0ynv248a80fh190pm15c9cg1l1665acrw62kqs7"))))
    (properties `((upstream-name . "vectorwavelet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spam
                             r-rcpp
                             r-maps
                             r-iterators
                             r-foreach
                             r-fields
                             r-biwavelet))
    (home-page "https://github.com/toygur/vectorwavelet")
    (synopsis "Vector Wavelet Coherence for Multiple Time Series")
    (description
     "New wavelet methodology (vector wavelet coherence) (Oygur, T., Unal, G, 2020
<doi:10.1007/s40435-020-00706-y>) to handle dynamic co-movements of multivariate
time series via extending multiple and quadruple wavelet coherence
methodologies.  This package can be used to perform multiple wavelet coherence,
quadruple wavelet coherence, and n-dimensional vector wavelet coherence
analyses.")
    (license license:gpl2+)))

(define-public r-vectorsurvr
  (package
    (name "r-vectorsurvr")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vectorsurvR" version))
       (sha256
        (base32 "1s8j09q7zscyd2jyy57ikwqms733g1dxvsqldwbmwf7s0376xb1q"))))
    (properties `((upstream-name . "vectorsurvR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-sf
                             r-rstudioapi
                             r-purrr
                             r-magrittr
                             r-lubridate
                             r-knitr
                             r-kableextra
                             r-jsonlite
                             r-httr2
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vectorsurvR")
    (synopsis "Data Access and Analytical Tools for 'VectorSurv' Users")
    (description
     "Allows registered @code{VectorSurv} <https://vectorsurv.org/> users access to
data through the @code{VectorSurv} API <https://api.vectorsurv.org/>.
Additionally provides functions for analysis and visualization.")
    (license license:gpl3)))

(define-public r-vectorcoder
  (package
    (name "r-vectorcoder")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VectorCodeR" version))
       (sha256
        (base32 "005nd55syn2f2a54ilbw3mi8r51gn5qfw4rdnkygpbgfngza01f8"))))
    (properties `((upstream-name . "VectorCodeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyverse r-tidyr r-readxl r-ggplot2 r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VectorCodeR")
    (synopsis
     "Easily Analyze Your Gait Patterns Using Vector Coding Technique")
    (description
     "Facilitate the analysis of inter-limb and intra-limb coordination in human
movement.  It provides functions for calculating the phase angle between two
segments, enabling researchers and practitioners to quantify the coordination
patterns within and between limbs during various motor tasks.  Needham, R.,
Naemi, R., & Chockalingam, N. (2014) <doi:10.1016/j.jbiomech.2013.12.032>.
Needham, R., Naemi, R., & Chockalingam, N. (2015)
<doi:10.1016/j.jbiomech.2015.07.023>.  Tepavac, D., & Field-Fote, E. C. (2001)
<doi:10.1123/jab.17.3.259>.  Park, J.H., Lee, H., Cho, Js.  et al. (2021)
<doi:10.1038/s41598-020-80237-w>.")
    (license license:gpl3)))

(define-public r-vectorbitops
  (package
    (name "r-vectorbitops")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vectorbitops" version))
       (sha256
        (base32 "1hgygcmyfaib72j9ck88312f4nqk0s5m01jqyizsy1j3ss8jaqi6"))))
    (properties `((upstream-name . "vectorbitops")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vectorbitops")
    (synopsis "Vector Bitwise Operations")
    (description
     "This package provides a tool for fast, efficient bitwise operations along the
elements within a vector.  Provides such functionality for AND, OR and XOR, as
well as infix operators for all of the binary bitwise operations.")
    (license license:expat)))

(define-public r-vecsets
  (package
    (name "r-vecsets")
    (version "1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vecsets" version))
       (sha256
        (base32 "0v6l8kmshb6ipcvjx9i26mwrc810z7lv4ys8qqyzzpz0wwnlii7m"))))
    (properties `((upstream-name . "vecsets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=vecsets")
    (synopsis "Like Set Tools in 'Base' Package but Keeps Duplicate Elements")
    (description
     "The base tools @code{union()} @code{intersect()}, etc., follow the algebraic
definition that each element of a set must be unique.  Since it's often helpful
to compare all elements of two vectors, this toolset treats every element as
unique for counting purposes.  For ease of use, all functions in vecsets have an
argument multiple which, when set to FALSE, reverts them to the base::sets
(alias for all the items) tools functionality.")
    (license license:lgpl3)))

(define-public r-vecmatch
  (package
    (name "r-vecmatch")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vecmatch" version))
       (sha256
        (base32 "0sawas9ysahmdvwrcyjwcn8866q1m1qqzspjjjzcc195xfdrck2s"))))
    (properties `((upstream-name . "vecmatch")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-vgam
                             r-rstatix
                             r-rlang
                             r-productplots
                             r-optmatch
                             r-nnet
                             r-mclogit
                             r-matching
                             r-mass
                             r-ggpubr
                             r-ggpp
                             r-ggplot2
                             r-cli
                             r-chk
                             r-brglm2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Polymerase3/vecmatch")
    (synopsis
     "Generalized Propensity Score Estimation and Matching for Multiple Groups")
    (description
     "This package implements the Vector Matching algorithm to match multiple
treatment groups based on previously estimated generalized propensity scores.
The package includes tools for visualizing initial confounder imbalances,
estimating treatment assignment probabilities using various methods, defining
the common support region, performing matching across multiple groups, and
evaluating matching quality.  For more details, see Lopez and Gutman (2017)
<doi:10.1214/17-STS612>.")
    (license license:gpl3+)))

(define-public r-vecdep
  (package
    (name "r-vecdep")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VecDep" version))
       (sha256
        (base32 "1zm1ri2lmh5qxi4lnla7xgrj0vjihv6nkvhbzf63x20gh4c1sw0v"))))
    (properties `((upstream-name . "VecDep")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sets
                             r-rmpfr
                             r-reticulate
                             r-pbapply
                             r-magic
                             r-hash
                             r-hac
                             r-gtools
                             r-expm
                             r-elliptcopulas
                             r-covglasso))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/StevenDeKeyser98/VecDep")
    (synopsis "Measuring Copula-Based Dependence Between Random Vectors")
    (description
     "This package provides functions for estimation (parametric, semi-parametric and
non-parametric) of copula-based dependence coefficients between a finite
collection of random vectors, including phi-dependence measures and
Bures-Wasserstein dependence measures.  An algorithm for agglomerative
hierarchical variable clustering is also implemented.  Following the articles De
Keyser & Gijbels (2024) <doi:10.1016/j.jmva.2024.105336>, De Keyser & Gijbels
(2024) <doi:10.1016/j.ijar.2023.109090>, and De Keyser & Gijbels (2024)
<doi:10.48550/@code{arXiv.2404.07141>}.")
    (license license:gpl3)))

(define-public r-vecctmvn
  (package
    (name "r-vecctmvn")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VeccTMVN" version))
       (sha256
        (base32 "0ylpzdbq5c3cpmyciss9y60b5pg6fg7svv54ilb9ml589320zmax"))))
    (properties `((upstream-name . "VeccTMVN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-truncatednormal
                             r-rcpparmadillo
                             r-rcpp
                             r-nleqslv
                             r-matrix
                             r-gpvecchia
                             r-gpgp))
    (native-inputs (list gfortran))
    (home-page "https://github.com/JCatwood/VeccTMVN")
    (synopsis "Multivariate Normal Probabilities using Vecchia Approximation")
    (description
     "Under a different representation of the multivariate normal (MVN) probability,
we can use the Vecchia approximation to sample the integrand at a linear
complexity with respect to n.  Additionally, both the SOV algorithm from Genz
(92) and the exponential-tilting method from Botev (2017) can be adapted to
linear complexity.  The reference for the method implemented in this package is
Jian Cao and Matthias Katzfuss (2024) \"Linear-Cost Vecchia Approximation of
Multivariate Normal Probabilities\" <doi:10.48550/@code{arXiv.2311.09426>}.  Two
major references for the development of our method are Alan Genz (1992)
\"Numerical Computation of Multivariate Normal Probabilities\"
<doi:10.1080/10618600.1992.10477010> and Z. I. Botev (2017) \"The Normal Law
Under Linear Restrictions: Simulation and Estimation via Minimax Tilting\"
<doi:10.48550/@code{arXiv.1603.04166>}.")
    (license license:gpl2+)))

(define-public r-veccompare
  (package
    (name "r-veccompare")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "veccompare" version))
       (sha256
        (base32 "03nyyxvhhwfxxg5w6qflk7q234ipbhj9fd4abcp50sxz3diabch1"))))
    (properties `((upstream-name . "veccompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-venndiagram
                             r-reshape2
                             r-qgraph
                             r-purrr
                             r-pander
                             r-gtools
                             r-corrplot))
    (home-page "https://github.com/publicus/r-veccompare")
    (synopsis
     "Perform Set Operations on Vectors, Automatically Generating All n-Wise Comparisons, and Create Markdown Output")
    (description
     "Automates set operations (i.e., comparisons of overlap) between multiple
vectors.  It also contains a function for automating reporting in RMarkdown', by
generating markdown output for easy analysis, as well as an RMarkdown template
for use with RStudio'.")
    (license license:bsd-3)))

(define-public r-vec2dtransf
  (package
    (name "r-vec2dtransf")
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vec2dtransf" version))
       (sha256
        (base32 "0sxsbm1q7v58b907xvpppwfljmqm2pyrch2zc82nmb10wfiha8k8"))))
    (properties `((upstream-name . "vec2dtransf")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sp))
    (home-page "https://github.com/gacarrillor/vec2dtransf")
    (synopsis "2D Cartesian Coordinate Transformation")
    (description
     "Applies affine and similarity transformations on vector spatial data (sp
objects).  Transformations can be defined from control points or directly from
parameters.  If redundant control points are provided Least Squares is applied
allowing to obtain residuals and RMSE.")
    (license license:gpl2+)))

(define-public r-vdspcalibration
  (package
    (name "r-vdspcalibration")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VDSPCalibration" version))
       (sha256
        (base32 "1hrmmhvk3mhd3bdl0msnm5shcj4cjgd3pn1rkfkv8fh4llqvz7w8"))))
    (properties `((upstream-name . "VDSPCalibration")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VDSPCalibration")
    (synopsis
     "Statistical Methods for Designing and Analyzing a Calibration Study")
    (description
     "This package provides statistical methods for the design and analysis of a
calibration study, which aims for calibrating measurements using two different
methods.  The package includes sample size calculation, sample selection,
regression analysis with error-in measurements and change-point regression.  The
method is described in Tian, Durazo-Arvizu, Myers, et al. (2014)
<DOI:10.1002/sim.6235>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-vdsm
  (package
    (name "r-vdsm")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VDSM" version))
       (sha256
        (base32 "09h09av2yydq1vwd77lgfjjk87432sas60905sxkw0mjixf6hq22"))))
    (properties `((upstream-name . "VDSM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-viridis
                             r-plyr
                             r-knitr
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=VDSM")
    (synopsis "Visualization of Distribution of Selected Model")
    (description
     "Although model selection is ubiquitous in scientific discovery, the stability
and uncertainty of the selected model is often hard to evaluate.  How to
characterize the random behavior of the model selection procedure is the key to
understand and quantify the model selection uncertainty.  This R package offers
several graphical tools to visualize the distribution of the selected model.
For example, @code{Gplot()}, @code{Hplot()}, @code{VDSM_scatterplot()} and
@code{VDSM_heatmap()}.  To the best of our knowledge, this is the first attempt
to visualize such a distribution.  About what distribution of selected model is
and how it work please see Qin,Y.and Wang,L. (2021) \"Visualization of Model
Selection Uncertainty\" <https://homepages.uc.edu/~qinyn/VDSM/VDSM.html>.")
    (license license:gpl2+)))

(define-public r-vdpo
  (package
    (name "r-vdpo")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VDPO" version))
       (sha256
        (base32 "0x3sv4f4v2wnnhs02dq3fw9lrqif4qkq9bl16rs804vlmw8npb47"))))
    (properties `((upstream-name . "VDPO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sop r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://pavel-hernadez-amaro.github.io/VDPO/")
    (synopsis "Working with and Analyzing Functional Data of Varying Lengths")
    (description
     "Comprehensive set of tools for analyzing and manipulating functional data with
non-uniform lengths.  This package addresses two common scenarios in functional
data analysis: Variable Domain Data, where the observation domain differs across
samples, and Partially Observed Data, where observations are incomplete over the
domain of interest.  VDPO enhances the flexibility and applicability of
functional data analysis in R'.  See Amaro et al. (2024)
<doi:10.48550/@code{arXiv.2401.05839>}.")
    (license license:expat)))

(define-public r-vdjgermlines
  (package
    (name "r-vdjgermlines")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VDJgermlines" version))
       (sha256
        (base32 "1aqjhkcj3bd5hk7iz0f2cy5nfp23gvhqsmg6nzlxd9klwc6xpq2h"))))
    (properties `((upstream-name . "VDJgermlines")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringdist r-ape))
    (home-page "https://cran.r-project.org/package=VDJgermlines")
    (synopsis "Variable, Diversity and Joining Sequences from Various Species")
    (description
     "This package contains variable, diversity, and joining sequences and
accompanying functions that enable both the extraction of and comparison between
immune V-D-J genomic segments from a variety of species.  Sources include IMGT
from MP Lefranc (2009) <doi:10.1093/nar/gkn838> and Vgenerepertoire from
publication DN Olivieri (2014) <doi:10.1007/s00251-014-0784-3>.")
    (license license:gpl2)))

(define-public r-vdiver
  (package
    (name "r-vdiver")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vDiveR" version))
       (sha256
        (base32 "0xgazc1appn9z1qj7kqaydknskvcphz4y822sryygmngl9608xgz"))))
    (properties `((upstream-name . "vDiveR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-stringdist
                             r-scales
                             r-rlang
                             r-rentrez
                             r-maps
                             r-magrittr
                             r-ggtext
                             r-ggpubr
                             r-ggplot2
                             r-gghalves
                             r-dplyr
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=vDiveR")
    (synopsis "Visualization of Viral Protein Sequence Diversity Dynamics")
    (description
     "To ease the visualization of outputs from Diversity Motif Analyser
('@code{DiMA}'; <https://github.com/BVU-BILSAB/@code{DiMA>}). @code{vDiveR}
allows visualization of the diversity motifs (index and its variants â major,
minor and unique) for elucidation of the underlying inherent dynamics.  Please
refer <https://vdiver-manual.readthedocs.io/en/latest/> for more information.")
    (license license:expat)))

(define-public r-vdg
  (package
    (name "r-vdg")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vdg" version))
       (sha256
        (base32 "00c7ayc791h0lr124a3l1cxrc5wsnbdm47jf5d7ws02xvd1p8fbq"))))
    (properties `((upstream-name . "vdg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quantreg r-proxy r-gridextra r-ggplot2))
    (native-inputs (list r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=vdg")
    (synopsis "Variance Dispersion Graphs and Fraction of Design Space Plots")
    (description
     "Facilities for constructing variance dispersion graphs, fraction-
of-design-space plots and similar graphics for exploring the properties of
experimental designs.  The design region is explored via random sampling, which
allows for more flexibility than traditional variance dispersion graphs.  A
formula interface is leveraged to provide access to complex model formulae.
Graphics can be constructed simultaneously for multiple experimental designs
and/or multiple model formulae.  Instead of using pointwise optimization to find
the minimum and maximum scaled prediction variance curves, which can be
inaccurate and time consuming, this package uses quantile regression as an
alternative.")
    (license license:gpl2+)))

(define-public r-vdar
  (package
    (name "r-vdar")
    (version "0.1.3-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vdar" version))
       (sha256
        (base32 "061ahwf8gyjqs5j9mkqnpn7899mivn4qbygnnzihmv065xj5vpd9"))))
    (properties `((upstream-name . "vdar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-compositions))
    (home-page "https://cran.r-project.org/package=vdar")
    (synopsis "Discriminant Analysis Incorporating Individual Uncertainties")
    (description
     "The @code{qda()} function from package MASS is extended to calculate a weighted
linear (LDA) and quadratic discriminant analysis (QDA) by changing the group
variances and group means based on cell-wise uncertainties.  The uncertainties
can be derived e.g. through relative errors for each individual measurement
(cell), not only row-wise or column-wise uncertainties.  The method can be
applied compositional data (e.g. portions of substances, concentrations) and
non-compositional data.")
    (license license:gpl3)))

(define-public r-vdap
  (package
    (name "r-vdap")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VDAP" version))
       (sha256
        (base32 "134x4aisaim72xkyzb1vb8vhl2m4i12yzh6cj858a1ag7b0ing3n"))))
    (properties `((upstream-name . "VDAP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-reshape2 r-ggplot2 r-drc))
    (home-page "https://cran.r-project.org/package=VDAP")
    (synopsis "Peptide Array Analysis Tools")
    (description
     "Analyze Peptide Array Data and characterize peptide sequence space.  Allows for
high level visualization of global signal, Quality control based on replicate
correlation and/or relative Kd, calculation of peptide Length/Charge/Kd
parameters, Hits selection based on RFU Signal, and amino acid composition/basic
motif recognition with RFU signal weighting.  Basic signal trends can be used to
generate peptides that follow the observed compositional trends.")
    (license license:gpl2)))

(define-public r-vcvcomp
  (package
    (name "r-vcvcomp")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcvComp" version))
       (sha256
        (base32 "0mip0v8gv358aadc3b4913dcz27kscx3dv15nwns20pan5jvyhv2"))))
    (properties `((upstream-name . "vcvComp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vcvComp")
    (synopsis "Comparison of Variance - Covariance Patterns")
    (description
     "Comparison of variance - covariance patterns using relative principal component
analysis (relative eigenanalysis), as described in Le Maitre and Mitteroecker
(2019) <doi:10.1111/2041-210X.13253>.  Also provides functions to compute group
covariance matrices, distance matrices, and perform proportionality tests.  A
worked sample on the body shape of cichlid fishes is included, based on the
dataset from Kerschbaumer et al. (2013) <doi:10.5061/dryad.fc02f>.")
    (license license:gpl3)))

(define-public r-vctsfr
  (package
    (name "r-vctsfr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vctsfr" version))
       (sha256
        (base32 "048bkayjhgy6h47pmy0cld9yzmrg93mk3rv5afpn518c42gjsc69"))))
    (properties `((upstream-name . "vctsfr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/franciscomartinezdelrio/vctsfr")
    (synopsis "Visualizing Collections of Time Series Forecasts")
    (description
     "This package provides a way of visualizing collections of time series and,
optionally their future values, forecasts for their future values and prediction
intervals for the forecasts.  A web-based GUI can be used to display the
information in a collection of time series.")
    (license license:expat)))

(define-public r-vcrpart
  (package
    (name "r-vcrpart")
    (version "1.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcrpart" version))
       (sha256
        (base32 "0vz8wss290q6m0234syqwxnrk6c3jm64r2rccsj44sypbf887db5"))))
    (properties `((upstream-name . "vcrpart")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zoo
                             r-ucminf
                             r-strucchange
                             r-sandwich
                             r-rpart
                             r-partykit
                             r-numderiv
                             r-nlme
                             r-formula-tools))
    (home-page "https://cran.r-project.org/package=vcrpart")
    (synopsis
     "Tree-Based Varying Coefficient Regression for Generalized Linear and Ordinal Mixed Models")
    (description
     "Recursive partitioning for varying coefficient generalized linear models and
ordinal linear mixed models.  Special features are coefficient-wise
partitioning, non-varying coefficients and partitioning of time-varying
variables in longitudinal regression.  A description of a part of this package
was published by Burgin and Ritschard (2017) <doi:10.18637/jss.v080.i06>.")
    (license license:gpl2+)))

(define-public r-vcpen
  (package
    (name "r-vcpen")
    (version "1.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcpen" version))
       (sha256
        (base32 "0gg5ln9r7i8rh91pf7789fic4aah22jc259qyg606bax2w57qmi5"))))
    (properties `((upstream-name . "vcpen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vcpen")
    (synopsis "Penalized Variance Components Analysis")
    (description "Method to perform penalized variance component analysis.")
    (license license:gpl3+)))

(define-public r-vcpb
  (package
    (name "r-vcpb")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcPB" version))
       (sha256
        (base32 "11dn0l1w46shw4dqkwad5y91hfs9crkwrj6d1l4n9sc3f71b3zxq"))))
    (properties `((upstream-name . "vcPB")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlist r-lme4 r-kernsmooth))
    (home-page "https://github.com/SangkyuStat/vcPB")
    (synopsis "Longitudinal PB Varying-Coefficient Groupwise Disparity Model")
    (description
     "Estimating the disparity between two groups based on the extended model of the
Peters-Belson (PB) method.  Our model is the first work on the longitudinal
data, and also can set a varying variable to find the complicated association
between other variables and the varying variable.  Our work is an extension of
the Peters-Belson method which was originally published in Peters
(1941)<doi:10.1080/00220671.1941.10881036> and Belson
(1956)<doi:10.2307/2985420>.")
    (license license:gpl3)))

(define-public r-vcov
  (package
    (name "r-vcov")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcov" version))
       (sha256
        (base32 "1w89mr8dk6436bxap28rszajgm9k7sjfqsr1i4p68dlhw8zk4yq1"))))
    (properties `((upstream-name . "vcov")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/MichaelChirico/vcov")
    (synopsis "Variance-Covariance Matrices and Standard Errors")
    (description
     "This package provides methods for faster extraction (about 5x faster in a few
test cases) of variance-covariance matrices and standard errors from models.
Methods in the stats package tend to rely on the summary method, which may waste
time computing other summary statistics which are summarily ignored.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-vcmeta
  (package
    (name "r-vcmeta")
    (version "1.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcmeta" version))
       (sha256
        (base32 "0122xzfwsvxv0rwdaf331nwlikcwm409lya9wm8k037dk46gx2w3"))))
    (properties `((upstream-name . "vcmeta")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack r-mathjaxr r-ggplot2))
    (home-page "https://github.com/dgbonett/vcmeta")
    (synopsis "Varying Coefficient Meta-Analysis")
    (description
     "This package implements functions for varying coefficient meta-analysis methods.
 These methods do not assume effect size homogeneity.  Subgroup effect size
comparisons, general linear effect size contrasts, and linear models of effect
sizes based on varying coefficient methods can be used to describe effect size
heterogeneity.  Varying coefficient meta-analysis methods do not require the
unrealistic assumptions of the traditional fixed-effect and random-effects
meta-analysis methods.  For details see: Statistical Methods for Psychologists,
Volume 5, <https://dgbonett.sites.ucsc.edu/>.")
    (license license:gpl3)))

(define-public r-vchartr
  (package
    (name "r-vchartr")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vchartr" version))
       (sha256
        (base32 "0v1py0qib4gsn5cr6002p6r9j2sbh8k7wzyszac6f4njpp7yl6ks"))))
    (properties `((upstream-name . "vchartr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-rlang r-magrittr r-htmlwidgets
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://dreamrs.github.io/vchartr/")
    (synopsis "Interactive Charts with the 'JavaScript' 'VChart' Library")
    (description
     "This package provides an htmlwidgets interface to VChart.js'.  VChart', more
than just a cross-platform charting library, but also an expressive data
storyteller.  VChart examples and documentation are available here:
<https://www.visactor.io/vchart>.")
    (license license:expat)))

(define-public r-vcfppr
  (package
    (name "r-vcfppr")
    (version "0.7.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcfppR" version))
       (sha256
        (base32 "0i3q8zc946hibq5dp0xzz5h56gqm33245sm56vh9jh847ivkayh9"))))
    (properties `((upstream-name . "vcfppR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib openssl openssh curl))
    (propagated-inputs (list r-rcpp))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/Zilong-Li/vcfppR")
    (synopsis "Rapid Manipulation of the Variant Call Format (VCF)")
    (description
     "The vcfpp.h (<https://github.com/Zilong-Li/vcfpp>) provides an easy-to-use C++
API of htslib', offering full functionality for manipulating Variant Call Format
(VCF) files.  The @code{vcfppR} package serves as the R bindings of the vcfpp.h
library, enabling rapid processing of both compressed and uncompressed VCF
files.  Explore a range of powerful features for efficient VCF data
manipulation.")
    (license license:expat)))

(define-public r-vcdextra
  (package
    (name "r-vcdextra")
    (version "0.8-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcdExtra" version))
       (sha256
        (base32 "09kpfnyi6q7xn4x6f7i3k8g6f2fdnm7kk81lxjmlhhn36jxc2p2i"))))
    (properties `((upstream-name . "vcdExtra")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vcd
                             r-tidyr
                             r-stringr
                             r-readxl
                             r-purrr
                             r-mass
                             r-here
                             r-gnm
                             r-glue
                             r-dplyr
                             r-ca))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://friendly.github.io/vcdExtra/")
    (synopsis "'vcd' Extensions and Additions")
    (description
     "This package provides additional data sets, methods and documentation to
complement the vcd package for Visualizing Categorical Data and the gnm package
for Generalized Nonlinear Models.  In particular, @code{vcdExtra} extends
mosaic, assoc and sieve plots from vcd to handle @code{glm()} and @code{gnm()}
models and adds a 3D version in mosaic3d'.  Additionally, methods are provided
for comparing and visualizing lists of glm and loglm objects.  This package is
now a support package for the book, \"Discrete Data Analysis with R\" by Michael
Friendly and David Meyer.")
    (license license:gpl2+)))

(define-public r-vcd2df
  (package
    (name "r-vcd2df")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vcd2df" version))
       (sha256
        (base32 "1l0a5v4khijcf41pf8pxdc8x3z5q13ay7mqx57r0zjvv4lilbv8a"))))
    (properties `((upstream-name . "vcd2df")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-quarto))
    (home-page "https://github.com/vcd2df/r")
    (synopsis "Value Change Dump to Data Frame")
    (description
     "This package provides the vcd2df function, which loads a IEEE 1364-1995/2001 VCD
(.vcd) file, specified as a parameter of type string containing exactly a file
path, and returns an R dataframe containing values over time.  A VCD file
captures the register values at discrete timepoints from a simulated trace of
execution of a hardware design in Verilog or VHDL. The returned dataframe
contains a row for each register, by name, and a column for each time point,
specified VCD-style using octothorpe-prefixed multiples of the timescale as
strings.  The only non-trivial implementation details are that (1) VCD x and z
non-numerical values are encoded as negative value -1 (as otherwise all bit
values are positive) and (2) registers with repeated names in distinct modules
are ignored, rather than duplicated, as we anticipate these registers to have
the same values.  Read more in @code{arXiv} preprint: vcd2df -- Leveraging Data
Science Insights for Hardware Security Research
<doi:10.48550/@code{arXiv.2505.06470>}.")
    (license license:gpl3)))

(define-public r-vccp
  (package
    (name "r-vccp")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vccp" version))
       (sha256
        (base32 "1c0mk46c74kj5y9rfniywbxxmwb2z16szzpq6b2sw8q0qi1cf5ji"))))
    (properties `((upstream-name . "vccp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vinecopula r-mvtnorm r-mosum))
    (home-page "https://cran.r-project.org/package=vccp")
    (synopsis "Vine Copula Change Point Detection in Multivariate Time Series")
    (description
     "This package implements the Vine Copula Change Point (VCCP) methodology for the
estimation of the number and location of multiple change points in the vine
copula structure of multivariate time series.  The method uses vine copulas,
various state-of-the-art segmentation methods to identify multiple change
points, and a likelihood ratio test or the stationary bootstrap for inference.
The vine copulas allow for various forms of dependence between time series
including tail, symmetric and asymmetric dependence.  The functions have been
extensively tested on simulated multivariate time series data and @code{fMRI}
data.  For details on the VCCP methodology, please see Xiong & Cribben (2021).")
    (license license:expat)))

(define-public r-vca
  (package
    (name "r-vca")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VCA" version))
       (sha256
        (base32 "0bw951rkbxg6ccy1iqmaamx5fwa41c3pp8zyzk2njkcgi4w5b90m"))))
    (properties `((upstream-name . "VCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-numderiv r-matrix r-lme4))
    (native-inputs (list r-rmarkdown r-knitr gfortran))
    (home-page "https://cran.r-project.org/package=VCA")
    (synopsis "Variance Component Analysis")
    (description
     "ANOVA and REML estimation of linear mixed models is implemented, once following
Searle et al. (1991, ANOVA for unbalanced data), once making use of the lme4
package.  The primary objective of this package is to perform a variance
component analysis (VCA) according to CLSI EP05-A3 guideline \"Evaluation of
Precision of Quantitative Measurement Procedures\" (2014).  There are plotting
methods for visualization of an experimental design, plotting random effects and
residuals.  For ANOVA type estimation two methods for computing ANOVA mean
squares are implemented (SWEEP and quadratic forms).  The covariance matrix of
variance components can be derived, which is used in estimating confidence
intervals.  Linear hypotheses of fixed effects and LS means can be computed.  LS
means can be computed at specific values of covariables and with custom
weighting schemes for factor variables.  See ?VCA for a more comprehensive
description of the features.")
    (license license:gpl3+)))

(define-public r-vc2copula
  (package
    (name "r-vc2copula")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VC2copula" version))
       (sha256
        (base32 "1kadz36cw12qipf25dqykm58hh775wk3aq793ckphl7y9vqpvl36"))))
    (properties `((upstream-name . "VC2copula")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vinecopula r-copula))
    (home-page "https://github.com/tnagler/VC2copula")
    (synopsis
     "Extend the 'copula' Package with Families and Models from 'VineCopula'")
    (description
     "This package provides new classes for (rotated) BB1, BB6, BB7, BB8, and Tawn
copulas, extends the existing Gumbel and Clayton families with rotations, and
allows to set up a vine copula model using the copula API. Corresponding objects
from the @code{VineCopula} API can easily be converted.")
    (license license:gpl3)))

(define-public r-vbv
  (package
    (name "r-vbv")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBV" version))
       (sha256
        (base32 "1nrdcvkdv38xl67qi9igcp3l5j4hckiyg3klg7z0rfj6zzpszm71"))))
    (properties `((upstream-name . "VBV")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VBV")
    (synopsis "The Generalized Berlin Method for Time Series Decomposition")
    (description
     "Time series decomposition for univariate time series using the \"Verallgemeinerte
Berliner Verfahren\" (Generalized Berlin Method) as described in Kontinuierliche
MessgrÃ¶Ãen und Stichprobenstrategien in Raum und Zeit mit Anwendungen in den
Natur-, Umwelt-, Wirtschafts- und Finanzwissenschaften', by Hebbel and Steuer,
Springer Berlin Heidelberg, 2022 <doi:10.1007/978-3-662-65638-9>, or
Decomposition of Time Series using the Generalised Berlin Method (VBV) by Hebbel
and Steuer, in Jan Beran, Yuanhua Feng, Hartmut Hebbel (Eds.): Empirical
Economic and Financial Research - Theory, Methods and Practice, Festschrift in
Honour of Prof. Siegfried Heiler.  Series: Advanced Studies in Theoretical and
Applied Econometrics.  Springer 2014, p.  9-40.")
    (license license:gpl3+)))

(define-public r-vbtree
  (package
    (name "r-vbtree")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBTree" version))
       (sha256
        (base32 "052d4vykm87z3d9rmh8bfx7qkcyx6gkrnsyb79ag1z9lb0gpky17"))))
    (properties `((upstream-name . "VBTree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tensora))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CubicZebra/VBTree")
    (synopsis "Vector Binary Tree to Make Your Data Management More Efficient")
    (description
     "Vector binary tree provides a new data structure, to make your data visiting and
management more efficient.  If the data has structured column names, it can read
these names and factorize them through specific split pattern, then build the
mappings within double list, vector binary tree, array and tensor mutually,
through which the batched data processing is achievable easily.  The methods of
array and tensor are also applicable.  Detailed methods are described in Chen
Zhang et al. (2020) <doi:10.35566/isdsa2019c8>.")
    (license license:gpl3)))

(define-public r-vbsparsepca
  (package
    (name "r-vbsparsepca")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBsparsePCA" version))
       (sha256
        (base32 "0h1kzz7rjh4wn4nbq1v3r4f6nrmlh0lscww2vwfz886x1w2c9sys"))))
    (properties `((upstream-name . "VBsparsePCA")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-mass))
    (home-page "https://cran.r-project.org/package=VBsparsePCA")
    (synopsis "The Variational Bayesian Method for Sparse PCA")
    (description
     "This package contains functions for a variational Bayesian method for sparse PCA
proposed by Ning (2020) <@code{arXiv:2102.00305>}.  There are two algorithms:
the PX-CAVI algorithm (if assuming the loadings matrix is jointly row-sparse)
and the batch PX-CAVI algorithm (if without this assumption).  The outputs of
the main function, @code{VBsparsePCA()}, include the mean and covariance of the
loadings matrix, the score functions, the variable selection results, and the
estimated variance of the random noise.")
    (license license:gpl3)))

(define-public r-vblpcm
  (package
    (name "r-vblpcm")
    (version "2.4.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBLPCM" version))
       (sha256
        (base32 "13qwqpnhdxd5lriz5p4w1dcng7msxbm4z2lfj93w7wcwidl93jw9"))))
    (properties `((upstream-name . "VBLPCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
    (propagated-inputs (list r-sna r-network r-mclust r-ergm))
    (home-page "https://www.r-project.org")
    (synopsis "Variational Bayes Latent Position Cluster Model for Networks")
    (description
     "Fit and simulate latent position and cluster models for network data, using a
fast Variational Bayes approximation developed in Salter-Townshend and Murphy
(2013) <doi:10.1016/j.csda.2012.08.004>.")
    (license license:gpl2+)))

(define-public r-vbjm
  (package
    (name "r-vbjm")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBJM" version))
       (sha256
        (base32 "0g7mmjba8pyfz92p7fgp9shpm9pclymacm45y3h6hlmsbpc7sh3p"))))
    (properties `((upstream-name . "VBJM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-statmod
                             r-rcppensmallen
                             r-rcpparmadillo
                             r-rcpp
                             r-pracma
                             r-matrix))
    (home-page "https://cran.r-project.org/package=VBJM")
    (synopsis "Variational Inference for Joint Model")
    (description
     "The shared random effects joint model is one of the most widely used approaches
to study the associations between longitudinal biomarkers and a survival outcome
and make dynamic risk predictions using the longitudinally measured biomarkers.
One major limitation of joint models is that they could be computationally
expensive for complex models where the number of the shared random effects is
large.  This package can be used to fit complex multivariate joint models using
our newly developed algorithm Jieqi Tu and Jiehuan Sun (2023)
<doi:10.1002/sim.9619>, which is based on Gaussian variational approximate
inference and is computationally efficient.")
    (license license:gpl2)))

(define-public r-vbel
  (package
    (name "r-vbel")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VBel" version))
       (sha256
        (base32 "0jdr0r6m6lza884lx4khv8rbh960h113rvicxr9apg8lyh7fbqaw"))))
    (properties `((upstream-name . "VBel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (home-page "https://github.com/jlimrasc/VBel")
    (synopsis
     "Variational Bayes for Fast and Accurate Empirical Likelihood Inference")
    (description
     "Computes the Gaussian variational approximation of the Bayesian empirical
likelihood posterior.  This is an implementation of the function found in Yu,
W., & Bondell, H. D. (2023) <doi:10.1080/01621459.2023.2169701>.")
    (license license:gpl3+)))

(define-public r-vayr
  (package
    (name "r-vayr")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vayr" version))
       (sha256
        (base32 "1555n42jvvcybhwmcgsgv1zby7innsvxa8r3f75mypvx68pk8qcv"))))
    (properties `((upstream-name . "vayr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr r-packcircles r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://alexandercoppock.com/vayr/index.html")
    (synopsis "Extensions for 'ggplot2' to Visualize as You Randomize")
    (description
     "Position adjustments for ggplot2 to implement \"visualize as you randomize\"
principles, which can be especially useful when plotting experimental data.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-vaxpmx
  (package
    (name "r-vaxpmx")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaxpmx" version))
       (sha256
        (base32 "1vjc2bm3i41di1nxjplgb347cghnv9ymv43c83dydkywa3wzqx1d"))))
    (properties `((upstream-name . "vaxpmx")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-mass r-dplyr))
    (home-page "https://cran.r-project.org/package=vaxpmx")
    (synopsis "Vaccines Pharmacometrics")
    (description
     "Estimate vaccine efficacy (VE) using immunogenicity data.  The inclusion of
immunogenicity data in regression models can increase precision in VE. The
methods are described in the publications \"Elucidating vaccine efficacy using a
correlate of protection, demographics, and logistic regression\" and \"Improving
precision of vaccine efficacy evaluation using immune correlate data in
time-to-event models\" by Julie Dudasova, Zdenek Valenta, and Jeffrey R. Sachs
(2024).")
    (license license:gpl3)))

(define-public r-vaultr
  (package
    (name "r-vaultr")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaultr" version))
       (sha256
        (base32 "1dbwr50jsx8m615wdlk437ac23y4dk9iqcihlbnail470hfdq5gw"))))
    (properties `((upstream-name . "vaultr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list))
    (propagated-inputs (list r-r6 r-jsonlite r-httr r-getpass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/vimc/vaultr")
    (synopsis "Vault Client for Secrets and Sensitive Data")
    (description
     "This package provides an interface to a @code{HashiCorp} vault server over its
http API (typically these are self-hosted; see <https://www.vaultproject.io>).
This allows for secure storage and retrieval of secrets over a network, such as
tokens, passwords and certificates.  Authentication with vault is supported
through several backends including user name/password and authentication via
@code{GitHub}'.")
    (license license:expat)))

(define-public r-vatcheckapi
  (package
    (name "r-vatcheckapi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vatcheckapi" version))
       (sha256
        (base32 "1jmfd6qksvw1dnlp4dyb33mr7y9phq9yw0k9qjla0z1jqc0gsnps"))))
    (properties `((upstream-name . "vatcheckapi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://vatcheckapi.com")
    (synopsis "Client for the 'vatcheckapi.com' VAT Validation API")
    (description
     "An R client for the vatcheckapi.com VAT number validation API. The API requires
registration of an API key.  Basic features are free, some require a paid
subscription.  You can find the full API documentation at
<https://vatcheckapi.com/docs> .")
    (license license:expat)))

(define-public r-vasicekreg
  (package
    (name "r-vasicekreg")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vasicekreg" version))
       (sha256
        (base32 "0hlac3p6mm7x88wdlqc93byx1s2a287kvhwzhz01pz4anap30683"))))
    (properties `((upstream-name . "vasicekreg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-mvtnorm r-gamlss-dist r-gamlss))
    (home-page "https://cran.r-project.org/package=vasicekreg")
    (synopsis "Regression Modeling Using Vasicek Distribution")
    (description
     "Vasicek density, cumulative distribution, quantile functions and random deviate
generation of Vasicek distribution.  In addition, there are two functions for
fitting the Generalized Additive Models for Location Scale and Shape introduced
by Rigby and Stasinopoulos (2005, <doi:10.1111/j.1467-9876.2005.00510.x>).  Some
functions are written in C++ using Rcpp', developed by Eddelbuettel and Francois
(2011, <doi:10.18637/jss.v040.i08>).")
    (license license:expat)))

(define-public r-vasicek
  (package
    (name "r-vasicek")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vasicek" version))
       (sha256
        (base32 "04g5dfn8zlm8n8sxmdq9xgkf0qbvvznqx27nyan268s5wlnnabd6"))))
    (properties `((upstream-name . "vasicek")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://github.com/statcompute/vasicek")
    (synopsis "Miscellaneous Functions for Vasicek Distribution")
    (description
     "Provide a collection of miscellaneous R functions related to the Vasicek
distribution with the intent to make the lives of risk modelers easier.")
    (license license:gpl2+)))

(define-public r-varycoef
  (package
    (name "r-varycoef")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varycoef" version))
       (sha256
        (base32 "1xldwxx20vvfl9nsk2fr8ql58idd1rwmbmb85zwbbrfn80qis1z2"))))
    (properties `((upstream-name . "varycoef")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spam
                             r-smoof
                             r-pbapply
                             r-paramhelpers
                             r-optimparallel
                             r-mlrmbo
                             r-mlr
                             r-lhs
                             r-glmnet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jakobdambon/varycoef")
    (synopsis "Modeling Spatially Varying Coefficients")
    (description
     "This package implements a maximum likelihood estimation (MLE) method for
estimation and prediction of Gaussian process-based spatially varying
coefficient (SVC) models (Dambon et al. (2021a)
<doi:10.1016/j.spasta.2020.100470>).  Covariance tapering (Furrer et al. (2006)
<doi:10.1198/106186006X132178>) can be applied such that the method scales to
large data.  Further, it implements a joint variable selection of the fixed and
random effects (Dambon et al. (2021b) <doi:10.1080/13658816.2022.2097684>).  The
package and its capabilities are described in (Dambon et al. (2021c)
<doi:10.48550/@code{arXiv.2106.02364>}).")
    (license license:gpl2)))

(define-public r-vartestnlme
  (package
    (name "r-vartestnlme")
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varTestnlme" version))
       (sha256
        (base32 "1qxbx1hwylybm4nza6a7bqgck0krvbcvwabp1710dhkk7skfgk8x"))))
    (properties `((upstream-name . "varTestnlme")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-saemix
                             r-quadprog
                             r-nlme
                             r-mvtnorm
                             r-msm
                             r-merderiv
                             r-matrix
                             r-lmeresampler
                             r-lme4
                             r-foreach
                             r-doparallel
                             r-corpcor
                             r-anocva
                             r-alabama))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/baeyc/varTestnlme/")
    (synopsis
     "Variance Components Testing for Linear and Nonlinear Mixed Effects Models")
    (description
     "An implementation of the Likelihood ratio Test (LRT) for testing that, in a
(non)linear mixed effects model, the variances of a subset of the random effects
are equal to zero.  There is no restriction on the subset of variances that can
be tested: for example, it is possible to test that all the variances are equal
to zero.  Note that the implemented test is asymptotic.  This package should be
used on model fits from packages nlme', lmer', and saemix'.  Charlotte Baey and
Estelle Kuhn (2019) <doi:10.18637/jss.v107.i06>.")
    (license license:gpl2+)))

(define-public r-vartest
  (package
    (name "r-vartest")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vartest" version))
       (sha256
        (base32 "0bnfyp6qh19nxsl9hzkz7ib9jgbv00vywzqwz6jvvcrxlii7023z"))))
    (properties `((upstream-name . "vartest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-suppdists r-psych))
    (home-page "https://cran.r-project.org/package=vartest")
    (synopsis "Tests for Variance Homogeneity")
    (description
     "This package performs 20 omnibus tests for testing the composite hypothesis of
variance homogeneity.")
    (license license:gpl2+)))

(define-public r-varshrink
  (package
    (name "r-varshrink")
    (version "0.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VARshrink" version))
       (sha256
        (base32 "09hysmxxawcbyfx6bia546aqydryl2r5p3ai7bvl6ghdckw5mnpl"))))
    (properties `((upstream-name . "VARshrink")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vars
                             r-strucchange
                             r-mvtnorm
                             r-mass
                             r-corpcor
                             r-ars))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/namgillee/VARshrink/")
    (synopsis "Shrinkage Estimation Methods for Vector Autoregressive Models")
    (description
     "Vector autoregressive (VAR) model is a fundamental and effective approach for
multivariate time series analysis.  Shrinkage estimation methods can be applied
to high-dimensional VAR models with dimensionality greater than the number of
observations, contrary to the standard ordinary least squares method.  This
package is an integrative package delivering nonparametric, parametric, and
semiparametric methods in a unified and consistent manner, such as the
multivariate ridge regression in Golub, Heath, and Wahba (1979)
<doi:10.2307/1268518>, a James-Stein type nonparametric shrinkage method in
Opgen-Rhein and Strimmer (2007) <doi:10.1186/1471-2105-8-S2-S3>, and Bayesian
estimation methods using noninformative and informative priors in Lee, Choi, and
S.-H. Kim (2016) <doi:10.1016/j.csda.2016.03.007> and Ni and Sun (2005)
<doi:10.1198/073500104000000622>.")
    (license license:gpl3)))

(define-public r-varsellcm
  (package
    (name "r-varsellcm")
    (version "2.1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VarSelLCM" version))
       (sha256
        (base32 "03rg7zh1cq55vfc0ak6j7crs4n7fnbsxz8nllmplklx8wm47krf5"))))
    (properties `((upstream-name . "VarSelLCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rcpparmadillo r-rcpp r-mgcv r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "http://varsellcm.r-forge.r-project.org/")
    (synopsis
     "Variable Selection for Model-Based Clustering of Mixed-Type Data Set with Missing Values")
    (description
     "Full model selection (detection of the relevant features and estimation of the
number of clusters) for model-based clustering (see reference here
<doi:10.1007/s11222-016-9670-1>).  Data to analyze can be continuous,
categorical, integer or mixed.  Moreover, missing values can occur and do not
necessitate any pre-processing.  Shiny application permits an easy
interpretation of the results.")
    (license license:gpl2+)))

(define-public r-varselectexposure
  (package
    (name "r-varselectexposure")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VARSELECTEXPOSURE" version))
       (sha256
        (base32 "0hfcy00zynrg2vfqym17zfs3ggm4wvsvjf2qib4pbd53qfhzabwa"))))
    (properties `((upstream-name . "VARSELECTEXPOSURE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=VARSELECTEXPOSURE")
    (synopsis "Variable Selection Methods Including an Exposure Variable")
    (description
     "Utilizes multiple variable selection methods to estimate Average Treatment
Effect.")
    (license license:gpl2)))

(define-public r-varsel
  (package
    (name "r-varsel")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varSel" version))
       (sha256
        (base32 "05dk2s4lzd4sxrwsfs2yqsj08qrdrfwx1fs07nb9a8sd0in6vlpj"))))
    (properties `((upstream-name . "varSel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=varSel")
    (synopsis
     "Sequential Forward Floating Selection using Jeffries-Matusita Distance")
    (description
     "Feature selection using Sequential Forward Floating feature Selection and
Jeffries-Matusita distance.  It returns a suboptimal set of features to use for
image classification.  Reference: Dalponte, M., Oerka, H.O., Gobakken, T.,
Gianelle, D. & Naesset, E. (2013).  Tree Species Classification in Boreal
Forests With Hyperspectral Data.  IEEE Transactions on Geoscience and Remote
Sensing, 51, 2632-2645, <DOI:10.1109/TGRS.2012.2216272>.")
    (license license:gpl3)))

(define-public r-vars
  (package
    (name "r-vars")
    (version "1.6-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vars" version))
       (sha256
        (base32 "1i8ldzb44wnlaww8a0k6sgfj1khgah5v445gi45d7vgv68rg0gcv"))))
    (properties `((upstream-name . "vars")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-urca r-strucchange r-sandwich r-mass r-lmtest))
    (home-page "https://www.pfaffikus.de")
    (synopsis "VAR Modelling")
    (description
     "Estimation, lag selection, diagnostic testing, forecasting, causality analysis,
forecast error variance decomposition and impulse response functions of VAR
models and estimation of SVAR and SVEC models.")
    (license license:gpl2+)))

(define-public r-varreg
  (package
    (name "r-varreg")
    (version "2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VarReg" version))
       (sha256
        (base32 "06n8bb4h722k1d83hbzgjasl9jrcj7pwj895zdkkdalw7crim88m"))))
    (properties `((upstream-name . "VarReg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-sn))
    (home-page "https://cran.r-project.org/package=VarReg")
    (synopsis "Semi-Parametric Variance Regression")
    (description
     "This package provides methods for fitting semi-parametric mean and variance
models, with normal or censored data.  Extended to allow a regression in the
location, scale and shape parameters, and further for multiple regression in
each.")
    (license license:gpl3)))

(define-public r-varredopt
  (package
    (name "r-varredopt")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VarRedOpt" version))
       (sha256
        (base32 "0h44m8850q4aksrqj11yr2a2qj37w8fhv0plpvdzcl087ifyj0g9"))))
    (properties `((upstream-name . "VarRedOpt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VarRedOpt")
    (synopsis "Framework for Variance Reduction")
    (description
     "In order to make it easy to use variance reduction algorithms for any
simulation, this framework can help you.  We propose user friendly and easy to
extend framework.  Antithetic Variates, Inner Control Variates, Outer Control
Variates and Importance Sampling algorithms are available in the framework.
User can write its own simulation function and use the Variance Reduction
techniques in this package to obtain more efficient simulations.  An
implementation of Asian Option simulation is already available within the
package.  See Kemal DinÃ§er DingeÃ§ & Wolfgang HÃ¶rmann (2012)
<doi:10.1016/j.ejor.2012.03.046>.")
    (license license:gpl2)))

(define-public r-varoc
  (package
    (name "r-varoc")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varoc" version))
       (sha256
        (base32 "034bycqwlz23rm2hm4i1qpqs1s74mk5axv965h09xj7yzvy9qjkm"))))
    (properties `((upstream-name . "varoc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-proc r-corrplot))
    (home-page "https://cran.r-project.org/package=varoc")
    (synopsis "Value Added Receiver Operating Characteristics Curve")
    (description
     "This package provides a continuous version of the receiver operating
characteristics (ROC) curve to visualize and assess the classification and
continuity performances of biomarkers, diagnostic tests, or risk prediction
models.")
    (license license:gpl2+)))

(define-public r-varjmcm
  (package
    (name "r-varjmcm")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varjmcm" version))
       (sha256
        (base32 "1xgy3n57pxhv6wrsw9h4dranxbw6hdpm1f9ra3kwlzrpz5c3289x"))))
    (properties `((upstream-name . "varjmcm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass r-jmcm r-expm))
    (home-page "https://cran.r-project.org/package=varjmcm")
    (synopsis
     "Estimations for the Covariance of Estimated Parameters in Joint Mean-Covariance Models")
    (description
     "The goal of the package is to equip the jmcm package (current version 0.2.1)
with estimations of the covariance of estimated parameters.  Two methods are
provided.  The first method is to use the inverse of estimated Fisher's
information matrix, see M. Pourahmadi (2000) <doi:10.1093/biomet/87.2.425>, M.
Maadooliat, M. Pourahmadi and J. Z. Huang (2013)
<doi:10.1007/s11222-011-9284-6>, and W. Zhang, C. Leng, C. Tang (2015)
<doi:10.1111/rssb.12065>.  The second method is bootstrap based, see Liu, R.Y.
(1988) <doi:10.1214/aos/1176351062> for reference.")
    (license license:gpl2+)))

(define-public r-varitas
  (package
    (name "r-varitas")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varitas" version))
       (sha256
        (base32 "16y0fcisdf4pypwqshy9c45v57axa25k8cpp1pr2ij95zycs3g1k"))))
    (properties `((upstream-name . "varitas")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list perl bwa bedtools))
    (propagated-inputs (list r-yaml
                             r-venndiagram
                             r-tidyr
                             r-stringr
                             r-openxlsx
                             r-magrittr
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=varitas")
    (synopsis "Variant Calling in Targeted Analysis Sequencing Data")
    (description
     "Multi-caller variant analysis pipeline for targeted analysis sequencing (TAS)
data.  Features a modular, automated workflow that can start with raw reads and
produces a user-friendly PDF summary and a spreadsheet containing consensus
variant information.")
    (license license:gpl2)))

(define-public r-variskscore
  (package
    (name "r-variskscore")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaRiskScore" version))
       (sha256
        (base32 "031k19ric26xvrva3rs9894n7ak87h96d2c4ip1lrr0lhhbk3awv"))))
    (properties `((upstream-name . "vaRiskScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=vaRiskScore")
    (synopsis "VA CVD Risk Score")
    (description
     "Estimates the predicted 10-year cardiovascular (CVD) risk score (in probability)
for women military service members and veterans by inputting patient profiles.
The proposed women CVD risk score improves the accuracy of the existing American
College of Cardiology/American Heart Association CVD risk assessment tool in
predicting longâterm CVD risk for VA women, particularly in young and
racial/ethnic minority women.  See the reference: JeonâSlaughter, H., Chen,
X., Tsai, S., Ramanan, B., & Ebrahimi, R. (2021) <doi:10.1161/JAHA.120.019217>.")
    (license license:gpl3)))

(define-public r-variosig
  (package
    (name "r-variosig")
    (version "0.3-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "variosig" version))
       (sha256
        (base32 "09cxigii0sj78yqd18p4mm9jjqvd1k2cgjy43pxpmqdhia0q2pmv"))))
    (properties `((upstream-name . "variosig")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat r-sp r-gstat))
    (home-page "https://cran.r-project.org/package=variosig")
    (synopsis "Testing Spatial Dependence Using Empirical Variogram")
    (description
     "Applying Monte Carlo permutation to generate pointwise variogram envelope and
checking for spatial dependence at different scales using permutation test.
Empirical Brown's method and Fisher's method are used to compute overall p-value
for hypothesis test.")
    (license license:gpl3+)))

(define-public r-varimp
  (package
    (name "r-varimp")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varImp" version))
       (sha256
        (base32 "1bxlfqxi8iiv6raawl9668yhlmbak96ahd0ljzwrilnciqbclc2b"))))
    (properties `((upstream-name . "varImp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-party r-measures))
    (home-page "https://cran.r-project.org/package=varImp")
    (synopsis "RF Variable Importance for Arbitrary Measures")
    (description
     "Computes the random forest variable importance (VIMP) for the conditional
inference random forest (cforest) of the party package.  Includes a function
(@code{varImp}) that computes the VIMP for arbitrary measures from the measures
package.  For calculating the VIMP regarding the measures accuracy and AUC two
extra functions exist (@code{varImpACC} and @code{varImpAUC}).")
    (license license:gpl3)))

(define-public r-variationaldcm
  (package
    (name "r-variationaldcm")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "variationalDCM" version))
       (sha256
        (base32 "1qdbl72a251q3l72d6zjd2ins2q924yvmj394qa7yvb7q2wkw5sw"))))
    (properties `((upstream-name . "variationalDCM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/khijikata/variationalDCM")
    (synopsis
     "Variational Bayesian Estimation for Diagnostic Classification Models")
    (description
     "Enables computationally efficient parameters-estimation by variational Bayesian
methods for various diagnostic classification models (DCMs).  DCMs are a class
of discrete latent variable models for classifying respondents into latent
classes that typically represent distinct combinations of skills they possess.
Recently, to meet the growing need of large-scale diagnostic measurement in the
field of educational, psychological, and psychiatric measurements, variational
Bayesian inference has been developed as a computationally efficient alternative
to the Markov chain Monte Carlo methods, e.g., Yamaguchi and Okada (2020a)
<doi:10.1007/s11336-020-09739-w>, Yamaguchi and Okada (2020b)
<doi:10.3102/1076998620911934>, Yamaguchi (2020)
<doi:10.1007/s41237-020-00104-w>, Oka and Okada (2023)
<doi:10.1007/s11336-022-09884-4>, and Yamaguchi and Martinez (2023)
<doi:10.1111/bmsp.12308>.  To facilitate their applications,
@code{variationalDCM} is developed to provide a collection of recently-proposed
variational Bayesian estimation methods for various DCMs.")
    (license license:gpl3)))

(define-public r-variantspark
  (package
    (name "r-variantspark")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "variantspark" version))
       (sha256
        (base32 "13hkp6l64hi7xlll09gin7kdlkqrkn0lggrw8147zy9ivhknhk59"))))
    (properties `((upstream-name . "variantspark")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparklyr))
    (home-page "https://cran.r-project.org/package=variantspark")
    (synopsis "'Sparklyr' Extension for 'VariantSpark'")
    (description
     "This is a sparklyr extension integrating @code{VariantSpark} and R.
@code{VariantSpark} is a framework based on scala and spark to analyze genome
datasets, see <https://bioinformatics.csiro.au/>.  It was tested on datasets
with 3000 samples each one containing 80 million features in either unsupervised
clustering approaches and supervised applications, like classification and
regression.  The genome datasets are usually writing in VCF, a specific text
file format used in bioinformatics for storing gene sequence variations.  So,
@code{VariantSpark} is a great tool for genome research, because it is able to
read VCF files, run analyses and return the output in a spark data frame.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-variancegamma
  (package
    (name "r-variancegamma")
    (version "0.4-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VarianceGamma" version))
       (sha256
        (base32 "1ihzwr8g7cmasicjw79fyksfm6kl9qzx04611a73ql0gp0pmq62y"))))
    (properties `((upstream-name . "VarianceGamma")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-generalizedhyperbolic r-distributionutils))
    (home-page "https://cran.r-project.org/package=VarianceGamma")
    (synopsis "The Variance Gamma Distribution")
    (description
     "This package provides functions for the variance gamma distribution.  Density,
distribution and quantile functions.  Functions for random number generation and
fitting of the variance gamma to data.  Also, functions for computing moments of
the variance gamma distribution of any order about any location.  In addition,
there are functions for checking the validity of parameters and to interchange
different sets of parameterizations for the variance gamma distribution.")
    (license license:gpl2+)))

(define-public r-varian
  (package
    (name "r-varian")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varian" version))
       (sha256
        (base32 "0jyw46qx2w19h02mrwv3w3n8qc1n4b3ckm38qly1y4a4w9ib6c2i"))))
    (properties `((upstream-name . "varian")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstan r-mass r-gridextra r-ggplot2 r-formula))
    (home-page "https://github.com/ElkhartGroup/varian")
    (synopsis "Variability Analysis in R")
    (description
     "Uses a Bayesian model to estimate the variability in a repeated measure outcome
and use that as an outcome or a predictor in a second stage model.")
    (license license:expat)))

(define-public r-variablescreening
  (package
    (name "r-variablescreening")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VariableScreening" version))
       (sha256
        (base32 "0djfpv46fhc3x4jvmjr93lyh4fxfzzvyrs3wjncx3h0z0s9n6w45"))))
    (properties `((upstream-name . "VariableScreening")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-gee r-expm r-energy))
    (home-page "https://cran.r-project.org/package=VariableScreening")
    (synopsis
     "High-Dimensional Screening for Semiparametric Longitudinal Regression")
    (description
     "This package implements variable screening techniques for ultra-high dimensional
regression settings.  Techniques for independent (iid) data, varying-coefficient
models, and longitudinal data are implemented.  The package currently contains
three screen functions: @code{screenIID()}, @code{screenLD()} and
@code{screenVCM()}, and six methods for simulating dataset:
@code{simulateDCSIS()}, @code{simulateLD}, @code{simulateMVSIS()},
@code{simulateMVSISNY()}, @code{simulateSIRS()} and @code{simulateVCM()}.  The
package is based on the work of Li-Ping ZHU, Lexin LI, Runze LI, and Li-Xing ZHU
(2011) <DOI:10.1198/jasa.2011.tm10563>, Runze LI, Wei ZHONG, & Liping ZHU (2012)
<DOI:10.1080/01621459.2012.695654>, Jingyuan LIU, Runze LI, & Rongling WU (2014)
<DOI:10.1080/01621459.2013.850086> Hengjian CUI, Runze LI, & Wei ZHONG (2015)
<DOI:10.1080/01621459.2014.920256>, and Wanghuan CHU, Runze LI and Matthew
REIMHERR (2016) <DOI:10.1214/16-AOAS912>.")
    (license license:gpl2+)))

(define-public r-variables
  (package
    (name "r-variables")
    (version "1.1-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "variables" version))
       (sha256
        (base32 "0a7c6ndx155f5v2jj4fy1baji1mb0d6in21rjdj82hzgkrg47bkp"))))
    (properties `((upstream-name . "variables")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "http://ctm.R-forge.R-project.org")
    (synopsis "Variable Descriptions")
    (description "Abstract descriptions of (yet) unobserved variables.")
    (license license:gpl2)))

(define-public r-variability
  (package
    (name "r-variability")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "variability" version))
       (sha256
        (base32 "1nwb6jlkgzmnhkfcfww3gci5p9g21wwg4z78n8xiq6r760byaz67"))))
    (properties `((upstream-name . "variability")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=variability")
    (synopsis "Genetic Variability Analysis for Plant Breeding Research")
    (description
     "This package performs analysis of various genetic parameters like genotypic and
phenotypic coefficient of variance, heritability, genetic advance, genetic
advance as a percentage of mean.  The package also has functions for genotypic
and phenotypic covariance, correlation and path analysis.  Dataset has been
added to facilitate example.  For more information refer Singh, R.K. and
Chaudhary, B.D. (1977, ISBN:81766330709788176633079).")
    (license license:gpl3)))

(define-public r-varest
  (package
    (name "r-varest")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varEst" version))
       (sha256
        (base32 "0i6nsxl5w4zipzrmdvx8plmxr33n405w2qhks3s7zzs3kcys32v6"))))
    (properties `((upstream-name . "varEst")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sam r-lm-beta r-glmnet r-caret))
    (home-page "https://cran.r-project.org/package=varEst")
    (synopsis "Variance Estimation")
    (description
     "Error variance estimation in ultrahigh dimensional datasets with four different
methods, viz.  Refitted cross validation, k-fold refitted cross validation,
Bootstrap-refitted cross validation, Ensemble method.")
    (license license:gpl3)))

(define-public r-vares
  (package
    (name "r-vares")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VaRES" version))
       (sha256
        (base32 "0k65ip5q4zgyklvn8mbc1ykz7kpfr5xvz041g1pq88f43g2sgv4b"))))
    (properties `((upstream-name . "VaRES")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VaRES")
    (synopsis
     "Computes Value at Risk and Expected Shortfall for over 100 Parametric Distributions")
    (description
     "Computes Value at risk and expected shortfall, two most popular measures of
financial risk, for over one hundred parametric distributions, including all
commonly known distributions.  Also computed are the corresponding probability
density function and cumulative distribution function.  See Chan, Nadarajah and
Afuecheta (2015) <doi:10.1080/03610918.2014.944658> for more details.")
    (license license:gpl2+)))

(define-public r-vared
  (package
    (name "r-vared")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VarED" version))
       (sha256
        (base32 "16j9p2a143y4hqclsv1mig0fccrzjx2r0lll0wz8isjp9x1wzjv8"))))
    (properties `((upstream-name . "VarED")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VarED")
    (synopsis "Variance Estimation using Difference-Based Methods")
    (description
     "Generating functions for both optimal and ordinary difference sequences, and the
difference-based estimation functions.")
    (license license:gpl2)))

(define-public r-vardpoor
  (package
    (name "r-vardpoor")
    (version "0.20.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vardpoor" version))
       (sha256
        (base32 "0jqls76xhhxc5hppy3pq5wkj9gjx3g3pzfbhnis7k10ysn76a1qj"))))
    (properties `((upstream-name . "vardpoor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-surveyplanning
                             r-stringr
                             r-mass
                             r-laeken
                             r-foreach
                             r-data-table))
    (home-page "https://csblatvia.github.io/vardpoor/")
    (synopsis
     "Variance Estimation for Sample Surveys by the Ultimate Cluster Method")
    (description
     "Generation of domain variables, linearization of several non-linear population
statistics (the ratio of two totals, weighted income percentile, relative median
income ratio, at-risk-of-poverty rate, at-risk-of-poverty threshold, Gini
coefficient, gender pay gap, the aggregate replacement ratio, the relative
median income ratio, median income below at-risk-of-poverty gap, income quintile
share ratio, relative median at-risk-of-poverty gap), computation of regression
residuals in case of weight calibration, variance estimation of sample surveys
by the ultimate cluster method (Hansen, Hurwitz and Madow, Sample Survey Methods
And Theory, vol.  I: Methods and Applications; vol.  II: Theory.  1953, New
York: John Wiley and Sons), variance estimation for longitudinal,
cross-sectional measures and measures of change for single and multistage stage
cluster sampling designs (Berger, Y. G., 2015, <doi:10.1111/rssa.12116>).
Several other precision measures are derived - standard error, the coefficient
of variation, the margin of error, confidence interval, design effect.")
    (license (list (license:fsdg-compatible "EUPL")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-vardiag
  (package
    (name "r-vardiag")
    (version "0.2-1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vardiag" version))
       (sha256
        (base32 "07i0wv84sw035bpjil3cfw69fdgbcf2j8wq4k22narkrz83iyi2z"))))
    (properties `((upstream-name . "vardiag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/edzer/vardiag/")
    (synopsis "Variogram Diagnostics")
    (description "Interactive variogram diagnostics.")
    (license license:gpl2+)))

(define-public r-varcpdetectonline
  (package
    (name "r-varcpdetectonline")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VARcpDetectOnline" version))
       (sha256
        (base32 "0lakcxmsxxakdnrcddwwi44a27iyv4606gdnsm44584nwccai4yl"))))
    (properties `((upstream-name . "VARcpDetectOnline")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass r-glmnet r-doparallel r-corpcor))
    (home-page "https://github.com/Helloworld9293/VARcpDetectOnline")
    (synopsis
     "Sequential Change Point Detection for High-Dimensional VAR Models")
    (description
     "This package implements the algorithm introduced in Tian, Y., and Safikhani, A.
(2024) <doi:10.5705/ss.202024.0182>, \"Sequential Change Point Detection in
High-dimensional Vector Auto-regressive Models\".  This package provides tools
for detecting change points in the transition matrices of VAR models,
effectively identifying shifts in temporal and cross-correlations within
high-dimensional time series data.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-varclust
  (package
    (name "r-varclust")
    (version "0.9.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varclust" version))
       (sha256
        (base32 "0knmfq3pn38j8p29j6sqapdv3g5335si3gwiw932ml5z49a8ga5m"))))
    (properties `((upstream-name . "varclust")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcppeigen r-pesel r-foreach r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=varclust")
    (synopsis "Variables Clustering")
    (description
     "This package performs clustering of quantitative variables, assuming that
clusters lie in low-dimensional subspaces.  Segmentation of variables, number of
clusters and their dimensions are selected based on BIC. Candidate models are
identified based on many runs of K-means algorithm with different random
initializations of cluster centers.")
    (license license:gpl3)))

(define-public r-varbvs
  (package
    (name "r-varbvs")
    (version "2.6-10")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varbvs" version))
       (sha256
        (base32 "0sjna51mz433s24dkjcq2aal6ss41gx6xlm2l45rm6s1q1k4m87f"))))
    (properties `((upstream-name . "varbvs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-nor1mix r-matrix r-latticeextra
                             r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pcarbo/varbvs")
    (synopsis
     "Large-Scale Bayesian Variable Selection Using Variational Methods")
    (description
     "Fast algorithms for fitting Bayesian variable selection models and computing
Bayes factors, in which the outcome (or response variable) is modeled using a
linear regression or a logistic regression.  The algorithms are based on the
variational approximations described in \"Scalable variational inference for
Bayesian variable selection in regression, and its accuracy in genetic
association studies\" (P. Carbonetto & M. Stephens, 2012,
<DOI:10.1214/12-BA703>).  This software has been applied to large data sets with
over a million variables and thousands of samples.")
    (license license:gpl3+)))

(define-public r-varbin
  (package
    (name "r-varbin")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varbin" version))
       (sha256
        (base32 "0gcynwc0vx7qlp3z0pcc4i7mjlnxkwy8ydxz2wr244fw32qgp4kq"))))
    (properties `((upstream-name . "varbin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart))
    (home-page "https://cran.r-project.org/package=varbin")
    (synopsis "Optimal Binning of Continuous and Categorical Variables")
    (description
     "Tool for easy and efficient discretization of continuous and categorical data.
The package calculates the most optimal binning of a given explanatory variable
with respect to a user-specified target variable.  The purpose is to assign a
unique Weight-of-Evidence value to each of the calculated binpoints in order to
recode the original variable.  The package allows users to impose certain
restrictions on the functional form on the resulting binning while maximizing
the overall information value in the original data.  The package is well suited
for logistic scoring models where input variables may be subject to restrictions
such as linearity by e.g. regulatory authorities.  An excellent source
describing in detail the development of scorecards, and the role of
Weight-of-Evidence coding in credit scoring is (Siddiqi 2006, ISBN:
978â0-471â75451â0).  The package utilizes the discrete nature of decision
trees and Isotonic Regression to accommodate the trade-off between flexible
functional forms and maximum information value.")
    (license license:gpl2+)))

(define-public r-varband
  (package
    (name "r-varband")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "varband" version))
       (sha256
        (base32 "16z66rx7xq5zan8pnw100c9r5syw1ml4hgzi9mch52aia23v21p9"))))
    (properties `((upstream-name . "varband")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/hugogogo/varband")
    (synopsis "Variable Banding of Large Precision Matrices")
    (description
     "Implementation of the variable banding procedure for modeling local dependence
and estimating precision matrices that is introduced in Yu & Bien (2016) and is
available at <https://arxiv.org/abs/1604.07451>.")
    (license license:gpl3)))

(define-public r-var-spec
  (package
    (name "r-var-spec")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VAR.spec" version))
       (sha256
        (base32 "0sz4r4c9zzz1p77v7vcsl8w5gldy9mlipf64fjiwdrddgwrv4rwd"))))
    (properties `((upstream-name . "VAR.spec")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VAR.spec")
    (synopsis
     "Allows Specifying a Bivariate VAR (Vector Autoregression) with Desired Spectral Characteristics")
    (description
     "The spectral characteristics of a bivariate series (Marginal Spectra, Coherency-
and Phase-Spectrum) determine whether there is a strong presence of short-,
medium-, or long-term fluctuations (components of certain frequencies in the
spectral representation of the series) in each one of them.  These are induced
by strong peaks of the marginal spectra of each series at the corresponding
frequencies.  The spectral characteristics also determine how strongly these
short-, medium-, or long-term fluctuations of the two series are correlated
between the two series.  Information on this is provided by the Coherency
spectrum at the corresponding frequencies.  Finally, certain fluctuations of the
two series may be lagged to each other.  Information on this is provided by the
Phase spectrum at the corresponding frequencies.  The idea in this package is to
define a VAR (Vector autoregression) model with desired spectral characteristics
by specifying a number of polynomials, required to define the VAR. See
Ioannidis(2007) <doi:10.1016/j.jspi.2005.12.013>.  These are specified via their
roots, instead of via their coefficients.  This is an idea borrowed from the
Time Series Library of R. Dahlhaus, where it is used for defining ARMA models
for univariate time series.  This way, one may e.g. specify a VAR inducing a
strong presence of long-term fluctuations in series 1 and in series 2, which are
weakly correlated, but lagged by a number of time units to each other, while
short-term fluctuations in series 1 and in series 2, are strongly present only
in one of the two series, while they are strongly correlated to each other
between the two series.  Simulation from such models allows studying the
behavior of data-analysis tools, such as estimation of the spectra, under
different circumstances, as e.g. peaks in the spectra, generating bias, induced
by leakage.")
    (license license:gpl2)))

(define-public r-var-etp
  (package
    (name "r-var-etp")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VAR.etp" version))
       (sha256
        (base32 "03zybsn28r6jz8rshmifgqavx4kmfvj92wbqjf5fvfj4fypis8kx"))))
    (properties `((upstream-name . "VAR.etp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=VAR.etp")
    (synopsis "VAR Modelling: Estimation, Testing, and Prediction")
    (description
     "This package provides a collection of the functions for estimation, hypothesis
testing, prediction for stationary vector autoregressive models.")
    (license license:gpl2)))

(define-public r-vapour
  (package
    (name "r-vapour")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vapour" version))
       (sha256
        (base32 "0cl51zij80pjmrsnpgryl4piqcffnm0s9vppwzyq9mmyk8hfybn6"))))
    (properties `((upstream-name . "vapour")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib
                  proj
                  pcre2
                  openssl
                  openssh
                  gdal
                  curl))
    (propagated-inputs (list r-wk r-rcpp r-nanoarrow r-jsonlite))
    (native-inputs (list pkg-config r-knitr))
    (home-page "https://github.com/hypertidy/vapour")
    (synopsis
     "Lightweight Access to the 'Geospatial Data Abstraction Library' ('GDAL')")
    (description
     "This package provides low-level access to GDAL functionality.  GDAL is the
Geospatial Data Abstraction Library a translator for raster and vector
geospatial data formats that presents a single raster abstract data model and
single vector abstract data model to the calling application for all supported
formats <https://gdal.org/>.  This package is focussed on providing exactly and
only what GDAL does, to enable developing further tools.")
    (license license:gpl3)))

(define-public r-vanquish
  (package
    (name "r-vanquish")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vanquish" version))
       (sha256
        (base32 "01di1j36npl7vnyhgsagvyf6j8bxcw867dwf9dgi7l1328s7lf0l"))))
    (properties `((upstream-name . "vanquish")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam r-ggplot2 r-e1071 r-changepoint))
    (home-page "https://cran.r-project.org/package=vanquish")
    (synopsis "Variant Quality Investigation Helper")
    (description
     "Imports Variant Calling Format file into R. It can detect whether a sample
contains contaminant from the same species.  In the first stage of the approach,
a change-point detection method is used to identify copy number variations for
filtering.  Next, features are extracted from the data for a support vector
machine model.  For log-likelihood calculation, the deviation parameter is
estimated by maximum likelihood method.  Using a radial basis function kernel
support vector machine, the contamination of a sample can be detected.")
    (license license:gpl2)))

(define-public r-vannstats
  (package
    (name "r-vannstats")
    (version "1.5.4.07")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vannstats" version))
       (sha256
        (base32 "1gzmigzg39m03njahyxvvlvc8wljra4qgfw21f20pxnqa91rh4bx"))))
    (properties `((upstream-name . "vannstats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-rstatix
                             r-rlang
                             r-purrr
                             r-plm
                             r-gplots
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-gdata
                             r-formula-tools
                             r-dplyr
                             r-desctools))
    (home-page "https://cran.r-project.org/package=vannstats")
    (synopsis "Simplified Statistical Procedures for Social Sciences")
    (description
     "Simplifies functions assess normality for bivariate and multivariate statistical
techniques.  Includes functions designed to replicate plots and tables that
would result from similar calls in SPSS', including @code{hst()}, @code{box()},
@code{qq()}, @code{tab()}, @code{cormat()}, and @code{residplot()}.  Also
includes simplified formulae, such as @code{mode()}, @code{scatter()},
@code{p.corr()}, @code{ow.anova()}, and @code{rm.anova()}.")
    (license license:gpl3)))

(define-public r-vangogh
  (package
    (name "r-vangogh")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vangogh" version))
       (sha256
        (base32 "1ny4dgwkk54pgwgg3lwcv8vcdnizlajdck68ihpzh2s1yz4n38bm"))))
    (properties `((upstream-name . "vangogh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cherylisabella/vangogh")
    (synopsis "Vincent Van Gogh Color Palette Generator")
    (description "Palettes generated from Vincent van Gogh's paintings.")
    (license license:expat)))

(define-public r-vandalico
  (package
    (name "r-vandalico")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vandalico" version))
       (sha256
        (base32 "06lfxcn5f042vkxprkagfcwp0dlm5pgw82k63a89ya9yfq71xhsw"))))
    (properties `((upstream-name . "vandalico")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rocr))
    (home-page "https://cran.r-project.org/package=vandalico")
    (synopsis "Evaluation of Presence-Absence Models")
    (description
     "Collection of functions to evaluate presence-absence models.  It comprises
functions to adjust discrimination statistics for the representativeness effect
through case-weighting, along with functions for visualizing the outcomes.
Originally outlined in: JimÃ©nez-Valverde (2022) The uniform AUC: dealing with
the representativeness effect in presence-absence models.  Methods Ecol.  Evol,
13, 1224-1236.")
    (license license:gpl3)))

(define-public r-vancouvr
  (package
    (name "r-vancouvr")
    (version "0.1.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VancouvR" version))
       (sha256
        (base32 "1dc6vcszck1kk4kc910kvvcgzva5f35hcqs69mllws8bs899la58"))))
    (properties `((upstream-name . "VancouvR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-urltools
                             r-tibble
                             r-sf
                             r-rlang
                             r-readr
                             r-purrr
                             r-httr
                             r-geojsonsf
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mountainMath/VancouvR")
    (synopsis "Access the 'City of Vancouver' Open Data API")
    (description
     "Wrapper around the City of Vancouver Open Data API
<https://opendata.vancouver.ca/api/v2/console> to simplify and standardize
access to City of Vancouver open data.  Functionality to list the data catalogue
and access data and geographic records.")
    (license license:expat)))

(define-public r-vamc
  (package
    (name "r-vamc")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vamc" version))
       (sha256
        (base32 "04kkli4xzf3gzvs215lzch8bl877cdq3awh3mz1k321zhsa1d0jn"))))
    (properties `((upstream-name . "vamc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rdpack))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=vamc")
    (synopsis "Monte Carlo Valuation Framework for Variable Annuities")
    (description
     "Implementation of a Monte Carlo simulation engine for valuing synthetic
portfolios of variable annuities, which reflect realistic features of common
annuity contracts in practice.  It aims to facilitate the development and
dissemination of research related to the efficient valuation of a portfolio of
large variable annuities.  The main valuation methodology was proposed by Gan
(2017) <doi:10.1515/demo-2017-0021>.")
    (license license:gpl2)))

(define-public r-vam
  (package
    (name "r-vam")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VAM" version))
       (sha256
        (base32 "1nl4kzp3j424cy6m5p8n9lf742vls2aw60ywy6dig4963nl4jdkh"))))
    (properties `((upstream-name . "VAM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=VAM")
    (synopsis "Variance-Adjusted Mahalanobis")
    (description
     "This package contains logic for cell-specific gene set scoring of single cell
RNA sequencing data.")
    (license license:gpl2+)))

(define-public r-valuesetcompare
  (package
    (name "r-valuesetcompare")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valueSetCompare" version))
       (sha256
        (base32 "06cb1hz1gp5gzbxbnv7306fyvvczggnaclab9llsbvfnmacbc2k5"))))
    (properties `((upstream-name . "valueSetCompare")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-ggplot2 r-eq5dsuite r-dplyr))
    (home-page "https://cran.r-project.org/package=valueSetCompare")
    (synopsis "Comparing HRQoL Instrument Value Sets")
    (description
     "The number of countries with multiple Health Related Quality of Life (HRQL)
value sets is growing, and this trend is expected to continue.  Each instrument
and value set characterizes and values health differently.  Identical health
states can yield different utility values when valued using different value
sets.  The @code{valueSetCompare} package facilitates comparisons of
HR@code{QoL} value sets, enabling both theoretical and empirical comparisons.
For empirical comparisons, it employs a novel simulation-based method by Jiang
et al. (2022) <doi:10.1186/s12955-022-02031-8>, allowing users to investigate
the responsiveness of HR@code{QoL} instruments across the entire health spectrum
using cross-sectional data with external health anchors.")
    (license license:gpl2+)))

(define-public r-valuemap
  (package
    (name "r-valuemap")
    (version "2.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valuemap" version))
       (sha256
        (base32 "1mmk60njwbylgp3nn5lkbkvyw6xkq4gg9k18smjlr47ys6bn6k4p"))))
    (properties `((upstream-name . "valuemap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf
                             r-leaflet
                             r-htmltools
                             r-h3jsr
                             r-dplyr
                             r-devtools))
    (home-page "https://github.com/Curycu/valuemap")
    (synopsis "Making Choropleth Map")
    (description
     "You can easily visualize your sf polygons or data.frame with h3 address.  While
leaflet package is too raw for data analysis, this package can save data
analysts efforts & time with pre-set visualize options.")
    (license license:gpl3+)))

(define-public r-valueeq5d
  (package
    (name "r-valueeq5d")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valueEQ5D" version))
       (sha256
        (base32 "1w1l07s1rfxc1ba6kdq0l1vmb2qib6gmdm91706cmy1azfa92n4d"))))
    (properties `((upstream-name . "valueEQ5D")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=valueEQ5D")
    (synopsis "Scoring EQ-5d Descriptive System")
    (description
     "EQ-5D is a standard instrument (<https://euroqol.org/eq-5d-instruments/>) that
measures the quality of life often used in clinical and economic evaluations of
health care technologies.  Both adult versions of EQ-5D (EQ-5D-3L and EQ-5D-5L)
contain a descriptive system and visual analog scale.  The descriptive system
measures the patient's health in 5 dimensions: the 5L versions has 5 levels and
3L version has 3 levels.  The descriptive system scores are usually converted to
index values using country specific values sets (that incorporates the country
preferences).  This package allows the calculation of both descriptive system
scores to the index value scores.  The value sets for EQ-5D-3L are from the
references mentioned in the website
<https://euroqol.org/eq-5d-instruments/eq-5d-3l-about/valuation/> The value sets
for EQ-5D-3L for a total of 31 countries are used for the valuation (see the
user guide for a complete list of references).  The value sets for EQ-5D-5L are
obtained from references mentioned in the
<https://euroqol.org/eq-5d-instruments/eq-5d-5l-about/valuation-standard-value-sets/>
and other sources.  The value sets for EQ-5D-5L for a total of 17 countries are
used for the valuation (see the user guide for a complete list of references).
The package can also be used to map 5L scores to 3L index values for 10
countries: Denmark, France, Germany, Japan, Netherlands, Spain, Thailand, UK,
USA, and Zimbabwe.  The value set and method for mapping are obtained from Van
Hout et al (2012) <doi: 10.1016/j.jval.2012.02.008>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-valottery
  (package
    (name "r-valottery")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valottery" version))
       (sha256
        (base32 "0rlv8agm9ng4jcb9ixqifh7kjczvkx7047brq8yf9kg7rb8mzgpz"))))
    (properties `((upstream-name . "valottery")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=valottery")
    (synopsis "Results from the Virginia Lottery Draw Games")
    (description
     "Historical results for the state of Virginia lottery draw games.  Data were
downloaded from https://www.valottery.com/.")
    (license license:cc0)))

(define-public r-valorate
  (package
    (name "r-valorate")
    (version "1.0-5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valorate" version))
       (sha256
        (base32 "0qmp5pd56sfgclj5x0fw0id0vy2i2rk3a18i1y3ifh7w6djf8ga7"))))
    (properties `((upstream-name . "valorate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival))
    (home-page "https://bioinformatics.mx/index.php/bioinfo-tools/")
    (synopsis "Velocity and Accuracy of the LOg-RAnk TEst")
    (description
     "The algorithm implemented in this package was designed to quickly estimates the
distribution of the log-rank especially for heavy unbalanced groups.  VALORATE
estimates the null distribution and the p-value of the log-rank test based on a
recent formulation.  For a given number of alterations that define the size of
survival groups, the estimation involves a weighted sum of distributions that
are conditional on a co-occurrence term where mutations and events are both
present.  The estimation of conditional distributions is quite fast allowing the
analysis of large datasets in few minutes
<https://bioinformatics.mx/index.php/bioinfo-tools/>.")
    (license license:gpl2+)))

(define-public r-valmetrics
  (package
    (name "r-valmetrics")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valmetrics" version))
       (sha256
        (base32 "1fdaljdfvfmqarxdyjs9pcd8ji2z9i379vcxf65jvnhiaqlsms57"))))
    (properties `((upstream-name . "valmetrics")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=valmetrics")
    (synopsis "Metrics and Plots for Model Evaluation")
    (description
     "This package provides functions for metrics and plots for model evaluation.
Based on vectors of observed and predicted values.  Method: Kristin Piikki,
Johanna Wetterlind, Mats Soderstrom and Bo Stenberg (2021).
<doi:10.1111/SUM.12694>.")
    (license license:expat)))

(define-public r-validmind
  (package
    (name "r-validmind")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validmind" version))
       (sha256
        (base32 "04kcisl7xwxzinqi0rzm3ixf814l2wihhpinnncna6sffzd9g3xd"))))
    (properties `((upstream-name . "validmind")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rmarkdown
                             r-reticulate
                             r-plotly
                             r-htmltools
                             r-glue
                             r-dt
                             r-dplyr
                             r-base64enc))
    (home-page "https://github.com/validmind/developer-framework")
    (synopsis "Interface to the 'ValidMind' Platform")
    (description
     "Deploy, execute, and analyze the results of models hosted on the
@code{ValidMind} platform <https://validmind.com>.  This package interfaces with
the Python client library in order to allow advanced diagnostics and insight
into trained models all from an R environment.")
    (license license:agpl3)))

(define-public r-validiclust
  (package
    (name "r-validiclust")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VALIDICLUST" version))
       (sha256
        (base32 "1glcvzrbc7glxmbmas3zzb114a5cfl7gsf7xlxaifrrgvcahrvnx"))))
    (properties `((upstream-name . "VALIDICLUST")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-dplyr r-diptest))
    (home-page "https://cran.r-project.org/package=VALIDICLUST")
    (synopsis "VALID Inference for Clusters Separation Testing")
    (description
     "Given a partition resulting from any clustering algorithm, the implemented tests
allow valid post-clustering inference by testing if a given variable
significantly separates two of the estimated clusters.  Methods are detailed in:
Hivert B, Agniel D, Thiebaut R & Hejblum BP (2022). \"Post-clustering difference
testing: valid inference and practical considerations\",
<@code{arXiv:2210.13172>}.")
    (license license:expat)))

(define-public r-validatetools
  (package
    (name "r-validatetools")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validatetools" version))
       (sha256
        (base32 "16pgqk96daz0dgsq2r9kfl6mkc4fffkai0ir1sh2js9v6d5c74k0"))))
    (properties `((upstream-name . "validatetools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-validate r-lpsolveapi))
    (home-page "https://github.com/data-cleaning/validatetools")
    (synopsis "Checking and Simplifying Validation Rule Sets")
    (description
     "Rule sets with validation rules may contain redundancies or contradictions.
Functions for finding redundancies and problematic rules are provided, given a
set a rules formulated with validate'.")
    (license license:expat)))

(define-public r-validatesuggest
  (package
    (name "r-validatesuggest")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validatesuggest" version))
       (sha256
        (base32 "0pp2zan5ri3bh4ianqdzgylwbq53n7zcd3pxk85rrqx0jxyj3fy9"))))
    (properties `((upstream-name . "validatesuggest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-whisker r-validate r-rpart))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/data-cleaning/validatesuggest")
    (synopsis "Generate Suggestions for Validation Rules")
    (description
     "Generate suggestions for validation rules from a reference data set, which can
be used as a starting point for domain specific rules to be checked with package
validate'.")
    (license license:expat)))

(define-public r-validateit
  (package
    (name "r-validateit")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validateIt" version))
       (sha256
        (base32 "16lcbn853rfnyh8hlvjdxh4abx6wkzsn876fh4mlfkpbcrnmp0ps"))))
    (properties `((upstream-name . "validateIt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tm r-snowballc r-rlang r-pymturkr r-here))
    (home-page "https://cran.r-project.org/package=validateIt")
    (synopsis "Validating Topic Coherence and Topic Labels")
    (description
     "By creating crowd-sourcing tasks that can be easily posted and results retrieved
using Amazon's Mechanical Turk (MTurk) API, researchers can use this solution to
validate the quality of topics obtained from unsupervised or semi-supervised
learning methods, and the relevance of topic labels assigned.  This helps ensure
that the topic modeling results are accurate and useful for research purposes.
See Ying and others (2022) <doi:10.1101/2023.05.02.538599>.  For more
information, please visit
<https://github.com/Triads-Developer/Topic_Model_Validation>.")
    (license license:gpl2+)))

(define-public r-validate
  (package
    (name "r-validate")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validate" version))
       (sha256
        (base32 "0c7f33cm6v0rngbpgdkkqzjf3v024lzk6fjn6xd5sbnlbfrrkiqz"))))
    (properties `((upstream-name . "validate")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-settings))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/data-cleaning/validate")
    (synopsis "Data Validation Infrastructure")
    (description
     "Declare data validation rules and data quality indicators; confront data with
them and analyze or visualize the results.  The package supports rules that are
per-field, in-record, cross-record or cross-dataset.  Rules can be automatically
analyzed for rule type and connectivity.  Supports checks implied by an SDMX DSD
file as well.  See also Van der Loo and De Jonge (2018)
<doi:10.1002/9781118897126>, Chapter 6 and the JSS paper (2021)
<doi:10.18637/jss.v097.i10>.")
    (license license:gpl3)))

(define-public r-validata
  (package
    (name "r-validata")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validata" version))
       (sha256
        (base32 "01ghnkkhqgjllpwdvphcqymps7jq3wd919rplk092iiwwq1mpb9m"))))
    (properties `((upstream-name . "validata")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlist
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-listviewer
                             r-janitor
                             r-gtools
                             r-framecleaner
                             r-dplyr
                             r-data-table
                             r-bbmisc
                             r-badger))
    (native-inputs (list r-knitr))
    (home-page "https://harrison4192.github.io/validata/")
    (synopsis "Validate Data Frames")
    (description
     "This package provides functions for validating the structure and properties of
data frames.  Answers essential questions about a data set after initial import
or modification.  What are the unique or missing values? What columns form a
primary key? What are the properties of the numeric or categorical columns? What
kind of overlap or mapping exists between 2 columns?")
    (license license:expat)))

(define-public r-validann
  (package
    (name "r-validann")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "validann" version))
       (sha256
        (base32 "00c0hkjiv8n7mksx6sknb4xkkivxr1ml31k697csv4imwrk09dy5"))))
    (properties `((upstream-name . "validann")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-moments))
    (home-page "http://github.com/gbhumphrey1/validann")
    (synopsis "Validation Tools for Artificial Neural Networks")
    (description
     "This package provides methods and tools for analysing and validating the outputs
and modelled functions of artificial neural networks (ANNs) in terms of
predictive, replicative and structural validity.  Also provides a method for
fitting feed-forward ANNs with a single hidden layer.")
    (license license:gpl2+)))

(define-public r-valhallr
  (package
    (name "r-valhallr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valhallr" version))
       (sha256
        (base32 "1lgdcvbk5g8xq9b18aqfq434cvdcshl3b6s28sx4r3jb8fxkia26"))))
    (properties `((upstream-name . "valhallr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-leaflet
                             r-jsonlite
                             r-httr
                             r-htmltools
                             r-ggspatial
                             r-ggplot2
                             r-geojsonio
                             r-dplyr
                             r-cairo))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chris31415926535/valhallr")
    (synopsis "Tidy Interface to the 'Valhalla' Routing Engine")
    (description
     "An interface to the Valhalla routing engineâs application programming
interfaces (APIs) for turn-by-turn routing, isochrones, and origin-destination
analyses.  Also includes several user-friendly functions for plotting outputs,
and strives to follow \"tidy\" design principles.  Please note that this package
requires access to a running instance of Valhalla', which is open source and can
be downloaded from <https://github.com/valhalla/valhalla>.")
    (license license:gpl3+)))

(define-public r-valh
  (package
    (name "r-valh")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valh" version))
       (sha256
        (base32 "0y91hvln9d8wgs5i1hn977k98wdsk5qn137l1nfdvw1xhij0rc7j"))))
    (properties `((upstream-name . "valh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sf r-jsonlite r-googlepolylines r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/riatelab/valh")
    (synopsis
     "Interface Between R and the OpenStreetMap-Based Routing Service Valhalla")
    (description
     "An interface between R and the Valhalla API. Valhalla is a routing service based
on @code{OpenStreetMap} data.  See <https://valhalla.github.io/valhalla/> for
more information.  This package enables the computation of routes, trips,
isochrones and travel distances matrices (travel time and kilometer distance).")
    (license license:gpl3+)))

(define-public r-valet
  (package
    (name "r-valet")
    (version "0.9.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valet" version))
       (sha256
        (base32 "1vmkb421l5xjdnlcnpz1zw1m4fvmmx4f3xxkf5js495ay9g07xys"))))
    (properties `((upstream-name . "valet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-readr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/runkelcorey/valet")
    (synopsis "Provide R Client to the Bank of Canada's Valet API")
    (description
     "The Bank of Canada updated their Valet API
<https://www.bankofcanada.ca/valet/docs>, and no R client currently exists.
This provides access to all of Valet's endpoints and serves responses in wide
format easy for researchers to handle but also provides tools to access API
responses as a list.")
    (license license:expat)))

(define-public r-valerie
  (package
    (name "r-valerie")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VALERIE" version))
       (sha256
        (base32 "15z8234jhh7hv3gijrvy8hap6gdgvm6qll9b00qbji7vyc3dg4pg"))))
    (properties `((upstream-name . "VALERIE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales
                             r-rsamtools
                             r-plyr
                             r-pheatmap
                             r-iranges
                             r-ggpubr
                             r-ggplotify
                             r-ggplot2
                             r-genomicranges
                             r-genomicalignments))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=VALERIE")
    (synopsis "Visualising Splicing at Single-Cell Resolution")
    (description
     "Alternative splicing produces a variety of different protein products from a
given gene.  VALERIE enables visualisation of alternative splicing events from
high-throughput single-cell RNA-sequencing experiments.  VALERIE computes
percent spliced-in (PSI) values for user-specified genomic coordinates
corresponding to alternative splicing events.  PSI is the proportion of
sequencing reads supporting the included exon/intron as defined by Shiozawa
(2018) <doi:10.1038/s41467-018-06063-x>.  PSI are inferred from sequencing reads
data based on specialised infrastructures for representing and computing
annotated genomic ranges by Lawrence (2013) <doi:10.1371/journal.pcbi.1003118>.
Computed PSI for each single cell are subsequently presented in the form of a
heatmap implemented using the pheatmap package by Kolde (2010)
<https://CRAN.R-project.org/package=pheatmap>.  Board overview of the mean PSI
difference and associated p-values across different user-defined groups of
single cells are presented in the form of a line graph using the ggplot2 package
by Wickham (2007) <https://CRAN.R-project.org/package=ggplot2>.")
    (license license:gpl3)))

(define-public r-valentine
  (package
    (name "r-valentine")
    (version "2025.2.14")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valentine" version))
       (sha256
        (base32 "1h7hq2kasbvydwwi4m54744qm1kq97gdr44jd1fv4ypa5vnxxgpw"))))
    (properties `((upstream-name . "valentine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-glue r-ellmer r-cli))
    (home-page "https://github.com/tadascience/valentine")
    (synopsis "Spread the Love for R Packages with Poetry")
    (description
     "Uses large language models to create poems about R packages.  Currently contains
the @code{roses()} function to make \"roses are red, ...\" style poems and the
@code{prompt()} function to only assemble the prompt without submitting it to
the model.")
    (license license:expat)))

(define-public r-valection
  (package
    (name "r-valection")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valection" version))
       (sha256
        (base32 "0104zcg3cw57ksgmb321hnyv095mn3frxci9vikj1smwarpnrpzc"))))
    (properties `((upstream-name . "valection")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-testthat))
    (home-page "http://labs.oicr.on.ca/boutros-lab/software/valection")
    (synopsis "Sampler for Verification Studies")
    (description
     "This package provides a binding for the valection program which offers various
ways to sample the outputs of competing algorithms or parameterizations, and
fairly assess their performance against each other.  The valection C library is
required to use this package and can be downloaded from:
<http://labs.oicr.on.ca/boutros-lab/software/valection>.  Cooper CI, et al;
Valection: Design Optimization for Validation and Verification Studies; Biorxiv
2018; <doi:10.1101/254839>.")
    (license license:gpl3)))

(define-public r-valaddin
  (package
    (name "r-valaddin")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "valaddin" version))
       (sha256
        (base32 "03l4c6vbzaxcrzc0ykx52h420r8cp3vrqxzl8jzxq8c8a9ms1xsi"))))
    (properties `((upstream-name . "valaddin")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-lazyeval))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/egnha/valaddin")
    (synopsis "Functional Input Validation")
    (description
     "This package provides a set of basic tools to transform functions into functions
with input validation checks, in a manner suitable for both programmatic and
interactive use.")
    (license license:expat)))

(define-public r-vajointsurv
  (package
    (name "r-vajointsurv")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "VAJointSurv" version))
       (sha256
        (base32 "00v1h7gxphhyp6601dix5jwigay76lf5spqgjhjlv6n14lwgdfxl"))))
    (properties `((upstream-name . "VAJointSurv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-testthat
                             r-survival
                             r-simsurvnmarker
                             r-rcppeigen
                             r-rcpparmadillo
                             r-rcpp
                             r-psqn
                             r-matrix
                             r-lme4))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/boennecd/VAJointSurv")
    (synopsis "Variational Approximation for Joint Survival and Marker Models")
    (description
     "Estimates joint marker (longitudinal) and survival (time-to-event) outcomes
using variational approximations.  The package supports multivariate markers
allowing for correlated error terms and multiple types of survival outcomes
which may be left-truncated, right-censored, and recurrent.  Time-varying fixed
and random covariate effects are supported along with non-proportional hazards.")
    (license license:expat)))

(define-public r-vagam
  (package
    (name "r-vagam")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vagam" version))
       (sha256
        (base32 "1bgpf0z23yqyaz7dfmqilyqvr5v4w891027xrlr0mk9grj4srmiq"))))
    (properties `((upstream-name . "vagam")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm r-mvtnorm r-mgcv r-matrix r-gamm4))
    (home-page "https://cran.r-project.org/package=vagam")
    (synopsis "Variational Approximations for Generalized Additive Models")
    (description
     "Fits generalized additive models (GAMs) using a variational approximations (VA)
framework.  In brief, the VA framework provides a fully or at least closed to
fully tractable lower bound approximation to the marginal likelihood of a GAM
when it is parameterized as a mixed model (using penalized splines, say).  In
doing so, the VA framework aims offers both the stability and natural inference
tools available in the mixed model approach to GAMs, while achieving computation
times comparable to that of using the penalized likelihood approach to GAMs. See
Hui et al. (2018) <doi:10.1080/01621459.2018.1518235>.")
    (license license:gpl3)))

(define-public r-vagalumer
  (package
    (name "r-vagalumer")
    (version "0.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vagalumeR" version))
       (sha256
        (base32 "0zakpg5p9kif61d35as08f2dac3wncyvhpc83rqjp96g99wjf701"))))
    (properties `((upstream-name . "vagalumeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/r-music/vagalumeR")
    (synopsis "Access to the 'Vagalume' API")
    (description
     "This package provides access to the Vagalume API <https://api.vagalume.com.br>.
The data extracted is basically lyrics of songs and information about
artists/bands.")
    (license license:gpl2)))

(define-public r-vaersvax
  (package
    (name "r-vaersvax")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaersvax" version))
       (sha256
        (base32 "0bfbpdjnykvb9r0p28bz8lrqxksy4jvwnd28y6gdlprpisiipiic"))))
    (properties `((upstream-name . "vaersvax")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://gitlab.com/iembry/vaers")
    (synopsis
     "US Vaccine Adverse Event Reporting System (VAERS) Vaccine Data for Present")
    (description
     "US VAERS vaccine data for 01/01/2018 - 06/14/2018.  If you want to explore the
full VAERS data for 1990 - Present (data, symptoms, and vaccines), then check
out the vaers package from the URL below.  The URL and @code{BugReports} below
correspond to the vaers package, of which vaersvax is a small subset (2018
only).  vaers is not hosted on CRAN due to the large size of the data set.  To
install the Suggested vaers and @code{vaersND} packages, use the following R
code: devtools::install_git(\"<https://gitlab.com/iembry/vaers.git>\",
build_vignettes = TRUE) and
devtools::install_git(\"<https://gitlab.com/iembry/@code{vaersND.git>}\",
build_vignettes = TRUE)'. \"The Vaccine Adverse Event Reporting System (VAERS) is
a national early warning system to detect possible safety problems in
U.S.-licensed vaccines.  VAERS is co-managed by the Centers for Disease Control
and Prevention (CDC) and the U.S. Food and Drug Administration (FDA).\" For more
information about the data, visit <https://vaers.hhs.gov/>.  For information
about vaccination/immunization hazards, visit
<http://www.questionuniverse.com/rethink.html#vaccine>.")
    (license license:cc0)))

(define-public r-vaersndvax
  (package
    (name "r-vaersndvax")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaersNDvax" version))
       (sha256
        (base32 "0hvw7vbxs87c9xkdv3617fkjwz2dbawscbd7dgaixhdhcr3k823a"))))
    (properties `((upstream-name . "vaersNDvax")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://gitlab.com/iembry/vaersND")
    (synopsis
     "Non-Domestic Vaccine Adverse Event Reporting System (VAERS) Vaccine Data for Present")
    (description
     "Non-Domestic VAERS vaccine data for 01/01/2016 - 06/14/2016.  If you want to
explore the full VAERS data for 1990 - Present (data, symptoms, and vaccines),
then check out the @code{vaersND} package from the URL below.  The URL and
@code{BugReports} below correspond to the @code{vaersND} package, of which
@code{vaersNDvax} is a small subset (2016 only). @code{vaersND} is not hosted on
CRAN due to the large size of the data set.  To install the Suggested vaers and
@code{vaersND} packages, use the following R code:
devtools::install_git(\"https://gitlab.com/iembry/vaers.git\", build_vignettes =
TRUE) and devtools::install_git(\"https://gitlab.com/iembry/@code{vaersND.git}\",
build_vignettes = TRUE)'. \"VAERS is a national vaccine safety surveillance
program co-sponsored by the US Centers for Disease Control and Prevention (CDC)
and the US Food and Drug Administration (FDA).  VAERS is a post-marketing safety
surveillance program, collecting information about adverse events (possible side
effects) that occur after the administration of vaccines licensed for use in the
United States.\" For more information about the data, visit
<https://vaers.hhs.gov/index>.  For information about vaccination/immunization
hazards, visit <http://www.questionuniverse.com/rethink.html/#vaccine>.")
    (license license:cc0)))

(define-public r-vader
  (package
    (name "r-vader")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vader" version))
       (sha256
        (base32 "1xjak5xlgpk0ds4l825kq90dg6kk5i5al5zmjqjqn8b7xdgix8mf"))))
    (properties `((upstream-name . "vader")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tm))
    (home-page "https://cran.r-project.org/package=vader")
    (synopsis "Valence Aware Dictionary and sEntiment Reasoner (VADER)")
    (description
     "This package provides a lexicon and rule-based sentiment analysis tool that is
specifically attuned to sentiments expressed in social media, and works well on
texts from other domains.  Hutto & Gilbert (2014)
<https://www.aaai.org/ocs/index.php/ICWSM/ICWSM14/paper/view/8109/8122>.")
    (license license:expat)))

(define-public r-vacuum
  (package
    (name "r-vacuum")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vacuum" version))
       (sha256
        (base32 "0cmlvlz83gyga05g71hrnq4kpck9flq0qlhjviqqz9zrmljzin0x"))))
    (properties `((upstream-name . "vacuum")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Sielinski/vacuum")
    (synopsis "Tukey's Vacuum Cleaner")
    (description
     "An implementation of three procedures developed by John Tukey: FUNOP (FUll
NOrmal Plot), FUNOR-FUNOM (FUll NOrmal Rejection-FUll NOrmal Modification), and
vacuum cleaner.  Combined, they provide a way to identify, treat, and analyze
outliers in two-way (i.e., contingency) tables, as described in his landmark
paper \"The Future of Data Analysis\", Tukey, John W. (1962)
<https://www.jstor.org/stable/2237638>.")
    (license license:expat)))

(define-public r-vachette
  (package
    (name "r-vachette")
    (version "0.40.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vachette" version))
       (sha256
        (base32 "1w8nc8rmp6d2553dc4gflqzh2cksd437daqcm5hzzs4w1vzp95qa"))))
    (properties `((upstream-name . "vachette")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-prospectr
                             r-progress
                             r-photobiology
                             r-minpack-lm
                             r-magrittr
                             r-hmisc
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/certara/vachette")
    (synopsis "Method for Visualization of Pharmacometric Models")
    (description
     "This package provides a method to visualize pharmacometric analyses which are
impacted by covariate effects.  Variability-aligned covariate harmonized-effects
and time-transformation equivalent ('vachette') facilitates intuitive overlays
of data and model predictions, allowing for comprehensive comparison without
dilution effects.  vachette improves upon previous methods Lommerse et al.
(2021) <doi:10.1002/psp4.12679>, enabling its application to all pharmacometric
models and enhancing Visual Predictive Checks (VPC) by integrating data into
cohesive plots that can highlight model misspecification.")
    (license license:lgpl3)))

(define-public r-vaccineff
  (package
    (name "r-vaccineff")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaccineff" version))
       (sha256
        (base32 "1cvcfp8a229i3i1s725i9g5qgbaj22h9k69yyfpwmbjbp14lmgm7"))))
    (properties `((upstream-name . "vaccineff")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-scales
                             r-rlang
                             r-matchit
                             r-linelist
                             r-ggplot2
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/epiverse-trace/vaccineff")
    (synopsis
     "Estimate Vaccine Effectiveness Based on Different Study Designs")
    (description
     "This package provides tools for estimating vaccine effectiveness and related
metrics.  The vaccineff_data class manages key features for preparing,
visualizing, and organizing cohort data, as well as estimating vaccine
effectiveness.  The results and model performance are assessed using the
vaccineff class.")
    (license license:expat)))

(define-public r-vaccine
  (package
    (name "r-vaccine")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "vaccine" version))
       (sha256
        (base32 "0w7rqhd6ik5bknv56i2vnz2zh1r6bvaygqf2az065ypjjfmpdj3m"))))
    (properties `((upstream-name . "vaccine")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncnorm
                             r-survml
                             r-survival
                             r-superlearner
                             r-rsolnp
                             r-rlang
                             r-ranger
                             r-ggpubr
                             r-ggplot2
                             r-gam
                             r-fdrtool
                             r-e1071
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://avi-kenny.github.io/vaccine/")
    (synopsis
     "Statistical Tools for Immune Correlates Analysis of Vaccine Clinical Trial Data")
    (description
     "Various semiparametric and nonparametric statistical tools for immune correlates
analysis of vaccine clinical trial data.  This includes calculation of summary
statistics and estimation of risk, vaccine efficacy, controlled effects
(controlled risk and controlled vaccine efficacy), and mediation effects
(natural direct effect, natural indirect effect, proportion mediated).  See
Gilbert P, Fong Y, Kenny A, and Carone, M (2022)
<doi:10.1093/biostatistics/kxac024> and Fay MP and Follmann DA (2023)
<doi:10.48550/@code{arXiv.2208.06465>}.")
    (license license:gpl3)))

