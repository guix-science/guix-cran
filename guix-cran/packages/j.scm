(define-module (guix-cran packages j)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages compression)
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
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages e)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-jwileymisc
  (package
    (name "r-jwileymisc")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JWileymisc" version))
              (sha256
               (base32
                "1g1mpdxdl27y5ixyfa0fr0zzs0wmvkc2ddnc1bmjyk8xbf2kpd7y"))))
    (properties `((upstream-name . "JWileymisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-robustbase
                             r-rms
                             r-quantreg
                             r-psych
                             r-multcompview
                             r-mice
                             r-mgcv
                             r-mass
                             r-lme4
                             r-lavaan
                             r-ggthemes
                             r-ggpubr
                             r-ggplot2
                             r-fst
                             r-extraoperators
                             r-emmeans
                             r-digest
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://joshuawiley.com/JWileymisc/")
    (synopsis "Miscellaneous Utilities and Functions")
    (description
     "Miscellaneous tools and functions, including: generate descriptive statistics
tables, format output, visualize relations among variables or check
distributions, and generic functions for residual and model diagnostics.")
    (license license:gpl3+)))

(define-public r-jvnvar
  (package
    (name "r-jvnvar")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jvnVaR" version))
              (sha256
               (base32
                "0zh0dc6wqlrxn5r2yv9vkpyfb8xsbdidkjv9g6qr94fyxlbs4yci"))))
    (properties `((upstream-name . "jvnVaR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jvnVaR")
    (synopsis "Value at Risk")
    (description
     "Many method to compute, predict and back-test VaR. For more detail, see the
report: Value at Risk <researchgate.net>.")
    (license license:gpl3)))

(define-public r-jvcoords
  (package
    (name "r-jvcoords")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jvcoords" version))
              (sha256
               (base32
                "1ixmz3pj18zddgah59iqd4zbm5praw0dvn6c93dn5mrwx92pa65c"))))
    (properties `((upstream-name . "jvcoords")))
    (build-system r-build-system)
    (home-page "https://github.com/seehuhn/jvcoords")
    (synopsis "Principal Component Analysis (PCA) and Whitening")
    (description
     "This package provides functions to standardize and whiten data, and to perform
Principal Component Analysis (PCA).  The main advantage of this package over
alternatives like prcomp() is, that jvcoords makes it easy to convert
(additional) data between the original and the transformed coordinates.  The
package also provides a class coords, which can represent affine coordinate
transformations.  This class forms the basis of the transformations provided by
the package, but can also be used independently.  The implementation has been
optimized to be of comparable speed (and sometimes even faster) than existing
alternatives.")
    (license license:gpl3)))

(define-public r-justifyalpha
  (package
    (name "r-justifyalpha")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JustifyAlpha" version))
              (sha256
               (base32
                "0bd7sn4sn95kal5q2x1q78fsk1mhakr5fax3z6ny2yda2h266af9"))))
    (properties `((upstream-name . "JustifyAlpha")))
    (build-system r-build-system)
    (propagated-inputs (list r-superpower
                             r-stringr
                             r-shinydashboard
                             r-shiny
                             r-qpdf
                             r-pwr
                             r-ggplot2
                             r-bayesfactor))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JustifyAlpha")
    (synopsis "Justifying Alpha Levels for Hypothesis Tests")
    (description
     "This package provides functions to justify alpha levels for statistical
hypothesis tests by avoiding Lindley's paradox, or by minimizing or balancing
error rates.  For more information about the package please read the following:
Maier & Lakens (2021) <doi:10.31234/osf.io/ts4r6>).")
    (license license:expat)))

(define-public r-justifier
  (package
    (name "r-justifier")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "justifier" version))
              (sha256
               (base32
                "0a9liqxsaf4y02x40bancz5vvqhjzy99gaknmfvw5ngzg0svy55r"))))
    (properties `((upstream-name . "justifier")))
    (build-system r-build-system)
    (propagated-inputs (list r-yum
                             r-yaml
                             r-purrr
                             r-diagrammersvg
                             r-diagrammer
                             r-data-tree))
    (native-inputs (list r-knitr))
    (home-page "https://r-packages.gitlab.io/justifier")
    (synopsis
     "Human and Machine-Readable Justifications and Justified Decisions Based on 'YAML'")
    (description
     "Leverages the yum package to implement a YAML ('YAML Ain't Markup Language', a
human friendly standard for data serialization; see <https:yaml.org>) standard
for documenting justifications, such as for decisions taken during the planning,
execution and analysis of a study or during the development of a behavior change
intervention as illustrated by Marques & Peters (2019)
<doi:10.17605/osf.io/ndxha>.  These justifications are both human- and
machine-readable, facilitating efficient extraction and organisation.")
    (license license:gpl2+)))

(define-public r-just-install
  (package
    (name "r-just-install")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "just.install" version))
              (sha256
               (base32
                "1g82g4lhdk8mf1v4j47y2pgdrryz4175djx42kmg85vw7mlpvlcj"))))
    (properties `((upstream-name . "just.install")))
    (build-system r-build-system)
    (propagated-inputs (list r-remotes r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=just.install")
    (synopsis "Very Simple Function to Install Packages without Attaching")
    (description
     "Install packages without attaching them.  If a package it is already installed,
it will be skipped.")
    (license license:gpl3+)))

(define-public r-junctions
  (package
    (name "r-junctions")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "junctions" version))
              (sha256
               (base32
                "0lm3n8n9dfi9nsdazj74pd57kxm2kzrd1gxdzd0izzwgkjnsrsqc"))))
    (properties `((upstream-name . "junctions")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-rcppparallel r-rcpp r-nloptr))
    (native-inputs (list r-knitr))
    (home-page "https//github.com/thijsjanzen/junctions")
    (synopsis "The Breakdown of Genomic Ancestry Blocks in Hybrid Lineages")
    (description
     "Individual based simulations of hybridizing populations, where the accumulation
of junctions is tracked.  Furthermore, mathematical equations are provided to
verify simulation outcomes.  Both simulations and mathematical equations are
based on Janzen (2018, <doi:10.1101/058107>) and Janzen (2020,
<doi:10.1101/2020.09.10.292441>).")
    (license license:gpl2+)))

(define-public r-jumper
  (package
    (name "r-jumper")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JumpeR" version))
              (sha256
               (base32
                "1bh2448462xgiv4k19qgm3dc4wa00ad8v3l6v22pg0l5kpmlx5i2"))))
    (properties `((upstream-name . "JumpeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-swimmer
                             r-stringr
                             r-rvest
                             r-purrr
                             r-pdftools
                             r-magrittr
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=JumpeR")
    (synopsis "Importing and Working with Track and Field Data")
    (description
     "Primarily used to convert human readable track and field results into dataframes
for further analysis.  Results can come from central repositories like
<https://www.flashresults.com/> or <http://www.deltatiming.com/>, or from
individual team sites, like those for colleges.  Also contains functions useful
for working with track and field data.")
    (license license:expat)))

(define-public r-juliaconnector
  (package
    (name "r-juliaconnector")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JuliaConnectoR" version))
              (sha256
               (base32
                "0chbax02l1p3qr0skvnxw1b8g7kf6s7sk2f3gj0ddl5kj6ls1p5n"))))
    (properties `((upstream-name . "JuliaConnectoR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=JuliaConnectoR")
    (synopsis "Functionally Oriented Interface for Integrating 'Julia' with R")
    (description
     "Allows to import functions and whole packages from Julia in R. Imported Julia
functions can directly be called as R functions.  Data structures can be
translated between Julia and R. More details can also be found in the
corresponding article <doi:10.18637/jss.v101.i06>.")
    (license (license:fsdg-compatible "MIT + file LICENCE"))))

(define-public r-juliacall
  (package
    (name "r-juliacall")
    (version "0.17.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JuliaCall" version))
              (sha256
               (base32
                "036rxp2lygvpxpykpxx2lqyyzidzzi95lv6g30n70hzy0agjym4j"))))
    (properties `((upstream-name . "JuliaCall")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-rjson r-rcpp r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Non-Contradiction/JuliaCall")
    (synopsis "Seamless Integration Between R and 'Julia'")
    (description
     "This package provides an R interface to Julia', which is a high-level,
high-performance dynamic programming language for numerical computing, see
<https://julialang.org/> for more information.  It provides a high-level
interface as well as a low-level interface.  Using the high level interface, you
could call any Julia function just like any R function with automatic type
conversion.  Using the low level interface, you could deal with C-level SEXP
directly while enjoying the convenience of using a high-level programming
language like Julia'.")
    (license license:expat)))

(define-public r-julia
  (package
    (name "r-julia")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Julia" version))
              (sha256
               (base32
                "0fv2qdxn0nqr6i7y3q8kjqnyb66k63k4jcdrs0xq2h2rw5gxpfir"))))
    (properties `((upstream-name . "Julia")))
    (build-system r-build-system)
    (home-page "https://github.com/msuzen/Julia")
    (synopsis "Fractal Image Data Generator")
    (description
     "Generates image data for fractals (Julia and Mandelbrot sets) on the complex
plane in the given region and resolution.  Benoit B Mandelbrot (1982).")
    (license license:gpl3)))

(define-public r-juicyjuice
  (package
    (name "r-juicyjuice")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "juicyjuice" version))
              (sha256
               (base32
                "0ap1nsyihlagc1yqvwr2x9s16kzb3c8azfi50mzv95275a5l3xb4"))))
    (properties `((upstream-name . "juicyjuice")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (home-page "https://github.com/rich-iannone/juicyjuice")
    (synopsis "Inline CSS Properties into HTML Tags Using 'juice'")
    (description
     "There are occasions where you need a piece of HTML with integrated styles.  A
prime example of this is HTML email.  This transformation involves moving the
CSS and associated formatting instructions from the style block in the head of
your document into the body of the HTML. Many prominent email clients require
integrated styles in HTML email; otherwise a received HTML email will be
displayed without any styling.  This package will quickly and precisely perform
these CSS transformations when given HTML text and it does so by using the
JavaScript juice library.")
    (license license:expat)))

(define-public r-juicr
  (package
    (name "r-juicr")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "juicr" version))
              (sha256
               (base32
                "0vkbgbagcgaxj6k62b033ik85jnkzvshg8dm9cz7vq4yjqj3icip"))))
    (properties `((upstream-name . "juicr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-rcurl))
    (home-page "https://cran.r-project.org/package=juicr")
    (synopsis
     "Automated and Manual Extraction of Numerical Data from Scientific Images")
    (description
     "This package provides a GUI interface for automating data extraction from
multiple images containing scatter and bar plots, semi-automated tools to tinker
with extraction attempts, and a fully-loaded point-and-click manual extractor
with image zoom, calibrator, and classifier.  Also provides detailed and
R-independent extraction reports as fully-embedded .html records.")
    (license license:gpl2+)))

(define-public r-jubilee
  (package
    (name "r-jubilee")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jubilee" version))
              (sha256
               (base32
                "1j2y44pfx9z2k169lh42b4dnfrrnk8jqsjn3wz4l9iscr6r91lx7"))))
    (properties `((upstream-name . "jubilee")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xts
                             r-readxl
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=jubilee")
    (synopsis
     "Forecasting Long-Term Growth of the U.S. Stock Market and Business Cycles")
    (description
     "This package provides a long-term forecast model called \"Jubilee-Tectonic model\"
is implemented to forecast future returns of the U.S. stock market, Treasury
yield, and gold price.  The five-factor model forecasts the 10-year and 20-year
future equity returns with high R-squared above 80 percent.  It is based on
linear growth and mean reversion characteristics in the U.S. stock market.  This
model also enhances the CAPE model by introducing the hypothesis that there are
fault lines in the historical CAPE, which can be calibrated and corrected
through statistical learning.  In addition, it contains a module for business
cycles, optimal interest rate, and recession forecasts.")
    (license license:artistic2.0)))

(define-public r-jtools
  (package
    (name "r-jtools")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jtools" version))
              (sha256
               (base32
                "1aafnjmldg01c25psi47xnqrf5p7kjfcffjknghgw6dczjpn500f"))))
    (properties `((upstream-name . "jtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-pkgconfig
                             r-pander
                             r-magrittr
                             r-ggplot2
                             r-generics
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://jtools.jacob-long.com")
    (synopsis "Analysis and Presentation of Social Scientific Data")
    (description
     "This is a collection of tools for more efficiently understanding and sharing the
results of (primarily) regression analyses.  There are also a number of
miscellaneous functions for statistical and programming purposes.  Support for
models produced by the survey and lme4 packages are points of emphasis.")
    (license license:gpl3+)))

(define-public r-jti
  (package
    (name "r-jti")
    (version "0.8.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jti" version))
              (sha256
               (base32
                "0jxqv3xa9yyzizx1rhxjv65c8b253shridy57skrd5kya701n460"))))
    (properties `((upstream-name . "jti")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparta r-rcpparmadillo r-rcpp r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlindsk/jti")
    (synopsis "Junction Tree Inference")
    (description
     "Minimal and memory efficient implementation of the junction tree algorithm using
the Lauritzen-Spiegelhalter scheme; S. L. Lauritzen and D. J. Spiegelhalter
(1988) <https://www.jstor.org/stable/2345762?seq=1>.")
    (license license:gpl3)))

(define-public r-jsuparameters
  (package
    (name "r-jsuparameters")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JSUparameters" version))
              (sha256
               (base32
                "0jikzazdp6id72d5csplhsa2yrm9cb02f00bfzriyhgfl43v09mh"))))
    (properties `((upstream-name . "JSUparameters")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=JSUparameters")
    (synopsis "Estimate Parameters of the Best-Fitting JohnsonSU Distribution")
    (description
     "Uses least squares optimisation to estimate the parameters of the best-fitting
JohnsonSU distribution for a given dataset, with the possibility of the
distributions corresponding to the limiting cases of the JohnsonSU distribution.
 The code for the Golden Section Search used in the optimisation has been
adapted from E. Cai.  This package has been created as an extension of my
Master's thesis.  E. Cai (2013, \"Scripts and Functions: Using R to Implement the
Golden Section Search Method for Numerical Optimization\",
<https://chemicalstatistician.wordpress.com/2013/04/22/using-r-to-implement-the-golden-bisection-method/>).")
    (license license:gpl3+)))

(define-public r-jstreer
  (package
    (name "r-jstreer")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsTreeR" version))
              (sha256
               (base32
                "0k6qxncvnq2377g83cclf7al0150m4226ilw2h9wrd7m8ciz7wdi"))))
    (properties `((upstream-name . "jsTreeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinyace
                             r-shiny
                             r-rstudioapi
                             r-r-utils
                             r-miniui
                             r-jquerylib
                             r-htmlwidgets
                             r-htmltools
                             r-fontawesome
                             r-base64enc))
    (home-page "https://github.com/stla/jsTreeR")
    (synopsis "Wrapper of the JavaScript Library 'jsTree'")
    (description
     "This package creates interactive trees that can be included in Shiny apps and R
markdown documents.  A tree allows to represent hierarchical data (e.g. the
contents of a directory).  Similar to the shinyTree package but offers more
features and options, such as the grid extension, restricting the drag-and-drop
behavior, and settings for the search functionality.  It is possible to attach
some data to the nodes of a tree and then to get these data in Shiny when a node
is selected.  Also provides a Shiny gadget allowing to manipulate one or more
folders, and a Shiny module allowing to navigate in the server side file system.")
    (license license:gpl3)))

(define-public r-jstree
  (package
    (name "r-jstree")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsTree" version))
              (sha256
               (base32
                "06mmz55brm6w19vnlk1w8qaz0n3czlyl4fs62nzgdlsdjn8pad1h"))))
    (properties `((upstream-name . "jsTree")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-htmlwidgets r-htmltools r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yonicd/jsTree")
    (synopsis "Create Interactive Trees with the 'jQuery' 'jsTree' Plugin")
    (description
     "Create and customize interactive trees using the jQuery jsTree
<https://www.jstree.com/> plugin library and the htmlwidgets package.  These
trees can be used directly from the R console, from RStudio', in Shiny apps and
R Markdown documents.")
    (license license:expat)))

(define-public r-jstor
  (package
    (name "r-jstor")
    (version "0.3.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jstor" version))
              (sha256
               (base32
                "0k2y3h01yra8yns97j4yyxa1jmclrd6z5xxiv4m8da5q5cgkc970"))))
    (properties `((upstream-name . "jstor")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-pryr
                             r-magrittr
                             r-furrr
                             r-dplyr
                             r-crayon
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/jstor")
    (synopsis "Read Data from JSTOR/DfR")
    (description
     "This package provides functions and helpers to import metadata, ngrams and
full-texts delivered by Data for Research by JSTOR.")
    (license license:gpl3)))

(define-public r-jstable
  (package
    (name "r-jstable")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jstable" version))
              (sha256
               (base32
                "1hs202z49aazsadr0jb67wk43i18y3h1aw0xflfmvirxjxr63xm8"))))
    (properties `((upstream-name . "jstable")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-tableone
                             r-survival
                             r-survey
                             r-purrr
                             r-magrittr
                             r-lme4
                             r-labelled
                             r-geepack
                             r-dplyr
                             r-data-table
                             r-coxme))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jinseob2kim/jstable")
    (synopsis "Create Tables from Different Types of Regression")
    (description
     "Create regression tables from generalized linear model(GLM), generalized
estimating equation(GEE), generalized linear mixed-effects model(GLMM), Cox
proportional hazards model, survey-weighted generalized linear model(svyglm) and
survey-weighted Cox model results for publication.")
    (license license:asl2.0)))

(define-public r-jsparo
  (package
    (name "r-jsparo")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JSparO" version))
              (sha256
               (base32
                "0n13arzf063x0sw0kmm86bny440jpijan4lh1ikxayrz2skg8zbz"))))
    (properties `((upstream-name . "JSparO")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=JSparO")
    (synopsis
     "Joint Sparse Optimization via Proximal Gradient Method for Cell Fate Conversion")
    (description
     "Implementation of joint sparse optimization (JSparO) to infer the gene
regulatory network for cell fate conversion.  The proximal gradient method is
implemented to solve different low-order regularization models for JSparO.")
    (license license:gpl3+)))

(define-public r-jsonvalidate
  (package
    (name "r-jsonvalidate")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsonvalidate" version))
              (sha256
               (base32
                "0myvm93azl6mj60l8fp91qa3ln3nnwj4p48xli8k215sm6zhhv1b"))))
    (properties `((upstream-name . "jsonvalidate")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/jsonvalidate/")
    (synopsis "Validate 'JSON' Schema")
    (description
     "Uses the node library is-my-json-valid or ajv to validate JSON against a JSON
schema.  Drafts 04, 06 and 07 of JSON schema are supported.")
    (license license:expat)))

(define-public r-jsontools
  (package
    (name "r-jsontools")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsontools" version))
              (sha256
               (base32
                "13i1g8lmzgs7hd0xay4gm8z2myzbjzi73fwp9x4f4f9mywj7zl5s"))))
    (properties `((upstream-name . "jsontools")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rsqlite
                             r-rlang
                             r-purrr
                             r-pillar
                             r-magrittr
                             r-jsonlite
                             r-glue
                             r-dbi
                             r-bit64))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jsontools")
    (synopsis "Working with JSON Vectors")
    (description
     "This package provides a toolbox for working with JSON vectors similar to the
functions Postgres provides to work with JSON columns.  It supports in parsing
and formatting JSON, extracting data from JSON, and modifying JSON data.")
    (license license:gpl3)))

(define-public r-jsonstrings
  (package
    (name "r-jsonstrings")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsonStrings" version))
              (sha256
               (base32
                "0agpkshnqijivvi042f2wkdy34g3z7849rp2p3z0y72bk6a5b2jg"))))
    (properties `((upstream-name . "jsonStrings")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-r6))
    (home-page "https://github.com/stla/jsonStrings")
    (synopsis "Manipulation of JSON Strings")
    (description
     "Fast manipulation of JSON strings.  Allows to extract or delete an element in a
JSON string, merge two JSON strings, and more.")
    (license license:gpl2+)))

(define-public r-jsonstat
  (package
    (name "r-jsonstat")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsonstat" version))
              (sha256
               (base32
                "0p0d3snl1971p5ikrkmwqrjjh4fy0b89qk3rnd1dayfb0r80xnnj"))))
    (properties `((upstream-name . "jsonstat")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-jsonlite r-dplyr r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zedoul/jsonstat")
    (synopsis "Interface to 'JSON-stat'")
    (description
     "Interface to JSON-stat <https://json-stat.org/>, a simple lightweight JSON
format for data dissemination.")
    (license license:expat)))

(define-public r-jsonld
  (package
    (name "r-jsonld")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsonld" version))
              (sha256
               (base32
                "0bplz2s97wl9yp383jazykh5647iw6kbr1zanqai2s0sxp1xbwn8"))))
    (properties `((upstream-name . "jsonld")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8 r-jsonlite r-curl))
    (home-page "https://docs.ropensci.org/jsonld")
    (synopsis "JSON for Linking Data")
    (description
     "JSON-LD is a light-weight syntax for expressing linked data.  It is primarily
intended for web-based programming environments, interoperable web services and
for storing linked data in JSON-based databases.  This package provides bindings
to the JavaScript library for converting, expanding and compacting JSON-LD
documents.")
    (license license:bsd-3)))

(define-public r-jsonify
  (package
    (name "r-jsonify")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsonify" version))
              (sha256
               (base32
                "0bxgyj5b1hnijq5315g050giixy4k5mjz2zdx8yil0igb5ifji9p"))))
    (properties `((upstream-name . "jsonify")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-rapidjsonr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jsonify")
    (synopsis
     "Convert Between 'R' Objects and Javascript Object Notation (JSON)")
    (description
     "Conversions between R objects and Javascript Object Notation (JSON) using the
rapidjsonr library <https://CRAN.R-project.org/package=rapidjsonr>.")
    (license license:expat)))

(define-public r-json64
  (package
    (name "r-json64")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "json64" version))
              (sha256
               (base32
                "19q8qgf4wnd3np12ajy180klpjy0g2csw5micwb4sl7qfzl6wc7j"))))
    (properties `((upstream-name . "json64")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://cran.r-project.org/package=json64")
    (synopsis
     "'Base64' Encode/Decode Package with Support for JSON Output/Input and UTF-8")
    (description
     "Encode/Decode base64', with support for JSON format, using two functions:
j_encode() and j_decode().  Base64 is a group of similar binary-to-text encoding
schemes that represent binary data in an ASCII string format by translating it
into a radix-64 representation, used when there is a need to encode binary data
that needs to be stored and transferred over media that are designed to deal
with textual data, ensuring that the data will remain intact and without
modification during transport.
<https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64/Base64_encoding_and_decoding>
On the other side, JSON (JavaScript Object Notation) is a lightweight
data-interchange format.  Easy to read, write, parse and generate.  It is based
on a subset of the JavaScript Programming Language.  JSON is a text format that
is completely language independent but uses conventions that are familiar to
programmers of the C-family of languages, including C, C++, C#, Java,
JavaScript, Perl, Python, and many others.  JSON structure is built around
name:value pairs and ordered list of values. <https://www.json.org> The first
function, j_encode(), let you transform a data.frame or list to a base64 encoded
JSON (or JSON string).  The j_decode() function takes a base64 string (could be
an encoded JSON) and transform it to a data.frame (or list, depending of the
JSON structure).")
    (license license:expat)))

(define-public r-jsmodule
  (package
    (name "r-jsmodule")
    (version "1.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jsmodule" version))
              (sha256
               (base32
                "1n7kl0jmk3dg2vj4fnl85had2flyz16hynwzyzkankn417m25n2z"))))
    (properties `((upstream-name . "jsmodule")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeroc
                             r-survival
                             r-survidinri
                             r-survey
                             r-shinywidgets
                             r-shinycustomloader
                             r-shiny
                             r-see
                             r-rvg
                             r-rstudioapi
                             r-readxl
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-proc
                             r-officer
                             r-maxstat
                             r-matchit
                             r-labelled
                             r-jstable
                             r-jskm
                             r-hmisc
                             r-haven
                             r-ggpubr
                             r-ggplot2
                             r-ggally
                             r-geepack
                             r-epidisplay
                             r-dt
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jinseob2kim/jsmodule")
    (synopsis "'RStudio' Addins and 'Shiny' Modules for Medical Research")
    (description
     "RStudio addins and Shiny modules for descriptive statistics, regression and
survival analysis.")
    (license license:asl2.0)))

(define-public r-jsmediation
  (package
    (name "r-jsmediation")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JSmediation" version))
              (sha256
               (base32
                "1js9qhjfycwwipaxf64zpgwbbqyccj9zv4kipd6r82l3rx9ck8mh"))))
    (properties `((upstream-name . "JSmediation")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-purrr
                             r-mass
                             r-magrittr
                             r-knitr
                             r-glue
                             r-dplyr
                             r-data-table
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://jsmediation.cedricbatailler.me/")
    (synopsis "Mediation Analysis Using Joint Significance")
    (description
     "This package provides a set of helper functions to conduct joint-significance
tests for mediation analysis, as recommended by Yzerbyt, Muller, Batailler, &
Judd. (2018) <doi:10.1037/pspa0000132>.")
    (license license:expat)))

(define-public r-jsm
  (package
    (name "r-jsm")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JSM" version))
              (sha256
               (base32
                "0vcsay1jpjlfdwykad4hp319swr9lv1ajlcyhmiizwr1ph3f1az9"))))
    (properties `((upstream-name . "JSM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod r-rcppeigen r-rcpp r-nlme))
    (home-page "https://cran.r-project.org/package=JSM")
    (synopsis
     "Semiparametric Joint Modeling of Survival and Longitudinal Data")
    (description
     "Maximum likelihood estimation for the semiparametric joint modeling of survival
and longitudinal data.  Refer to the Journal of Statistical Software article:
<doi:10.18637/jss.v093.i02>.")
    (license license:bsd-3)))

(define-public r-jskm
  (package
    (name "r-jskm")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jskm" version))
              (sha256
               (base32
                "04bm4haylhjj5wf09jmpznav7shnlnhag7kxl4yqp3z5572dvj1g"))))
    (properties `((upstream-name . "jskm")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-survey r-scales r-gridextra
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jinseob2kim/jskm")
    (synopsis "Kaplan-Meier Plot with 'ggplot2'")
    (description
     "The function jskm() creates publication quality Kaplan-Meier plot with at risk
tables below.  svyjskm() provides plot for weighted Kaplan-Meier estimator.")
    (license license:asl2.0)))

(define-public r-jshintr
  (package
    (name "r-jshintr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jshintr" version))
              (sha256
               (base32
                "08j28c2ab9fh6g7qp2vl8j5hz5kkikvl2id979kv92ach9vranyd"))))
    (properties `((upstream-name . "jshintr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-htmlwidgets r-htmltools))
    (home-page "https://github.com/stla/jshintr")
    (synopsis "Lint 'JavaScript' Files")
    (description
     "Allow to run jshint on JavaScript files with a R command or a RStudio addin.
The report appears in the RStudio viewer pane.")
    (license license:gpl3)))

(define-public r-jsdm
  (package
    (name "r-jsdm")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jSDM" version))
              (sha256
               (base32
                "0i54gsvs63705cmn7bzna1f5nrnyr40ffbkjk202dl689lp05fb3"))))
    (properties `((upstream-name . "jSDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi
                             r-rcppgsl
                             r-rcpparmadillo
                             r-rcpp
                             r-mass
                             r-foreach
                             r-doparallel
                             r-corrplot
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://ecology.ghislainv.fr/jSDM/")
    (synopsis "Joint Species Distribution Models")
    (description
     "Fits joint species distribution models ('jSDM') in a hierarchical Bayesian
framework (Warton et al.  2015 <doi:10.1016/j.tree.2015.09.007>).  The Gibbs
sampler is written in C++.  It uses Rcpp', Armadillo and GSL to maximize
computation efficiency.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-jscore
  (package
    (name "r-jscore")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jScore" version))
              (sha256
               (base32
                "0hb63l10cwvpvix155d16v35lp1v88lp69f6q1s09njc6qdsg212"))))
    (properties `((upstream-name . "jScore")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/liliulab/jscore")
    (synopsis "Calculates the j-Score Between Two Clustering Assignments")
    (description
     "The jscore() function in the package calculates the J-Score metric between two
clustering assignments.  The score is designed to address some problems with
existing common metrics such as problem of matching.  The details of J-score is
described in Ahmadinejad and Liu. (2021) <arXiv:2109.01306>.")
    (license license:expat)))

(define-public r-jsconsole
  (package
    (name "r-jsconsole")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JSconsole" version))
              (sha256
               (base32
                "1jpa48xb7hh4ap25sqrl67rzqra53qhcfwpfgs6hmpjnrld8n3ha"))))
    (properties `((upstream-name . "JSconsole")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8 r-rstudioapi))
    (home-page "https://github.com/stla/JSconsole")
    (synopsis "'RStudio' Addin to Send 'JavaScript' Code to the 'V8' Console")
    (description
     "This package provides a RStudio addin to send some JavaScript code to the V8
console.  The user can send an entire JavaScript file or only some selected
lines.  This is useful to test the code.")
    (license license:gpl3)))

(define-public r-js
  (package
    (name "r-js")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "js" version))
              (sha256
               (base32
                "0s5rj845255a4fzv4h76gcnnqyl5cg3c03r2ay3f00jxnxvvigcg"))))
    (properties `((upstream-name . "js")))
    (build-system r-build-system)
    (propagated-inputs (list r-v8))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jeroen/js")
    (synopsis "Tools for Working with JavaScript in R")
    (description
     "This package provides a set of utilities for working with JavaScript syntax in
R. Includes tools to parse, tokenize, compile, validate, reformat, optimize and
analyze JavaScript code.")
    (license license:expat)))

(define-public r-jrvfinance
  (package
    (name "r-jrvfinance")
    (version "1.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jrvFinance" version))
              (sha256
               (base32
                "0g3w65avys5chni0zlahzwqgv09z9na08yhay385ax33ddwrcrjv"))))
    (properties `((upstream-name . "jrvFinance")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jrvarma/jrvFinance")
    (synopsis "Basic Finance; NPV/IRR/Annuities/Bond-Pricing; Black Scholes")
    (description
     "This package implements the basic financial analysis functions similar to (but
not identical to) what is available in most spreadsheet software.  This includes
finding the IRR and NPV of regularly spaced cash flows and annuities.  Bond
pricing and YTM calculations are included.  In addition, Black Scholes option
pricing and Greeks are also provided.")
    (license license:gpl2+)))

(define-public r-jrt
  (package
    (name "r-jrt")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jrt" version))
              (sha256
               (base32
                "0hgcl8ddrhha6jpi3rlp68i7z0avz3q7iaslvcnblmcg9qrrqpfx"))))
    (properties `((upstream-name . "jrt")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-psych
                             r-mirt
                             r-irr
                             r-ggsci
                             r-ggplot2
                             r-dplyr
                             r-directlabels))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jrt")
    (synopsis "Item Response Theory Modeling and Scoring for Judgment Data")
    (description
     "Psychometric analysis and scoring of judgment data using polytomous
Item-Response Theory (IRT) models, as described in Myszkowski and Storme (2019)
<doi:10.1037/aca0000225> and Myszkowski (2021) <doi:10.1037/aca0000287>.  A
function is used to automatically compare and select models, as well as to
present a variety of model-based statistics.  Plotting functions are used to
present category curves, as well as information, reliability and standard error
functions.")
    (license license:gpl3)))

(define-public r-jrich
  (package
    (name "r-jrich")
    (version "0.60-35")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jrich" version))
              (sha256
               (base32
                "1y486bfqmfg3f22wm0lfk3lh20ljgi8qrgn5jji0f417wh48nf0x"))))
    (properties `((upstream-name . "jrich")))
    (build-system r-build-system)
    (propagated-inputs (list r-ape))
    (home-page "https://github.com/Dmirandae/jrich")
    (synopsis
     "Jack-Knife Support for Evolutionary Distinctiveness Indices I and W")
    (description
     "These functions calculate the taxonomic measures presented in Miranda-Esquivel
(2016).  The package introduces Jack-knife resampling in evolutionary
distinctiveness prioritization analysis, as a way to evaluate the support of the
ranking in area prioritization, and the persistence of a given area in a
conservation analysis.  The algorithm is described in: Miranda-Esquivel, D
(2016) <DOI:10.1007/978-3-319-22461-9_11>.")
    (license license:gpl3)))

(define-public r-jrf
  (package
    (name "r-jrf")
    (version "0.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JRF" version))
              (sha256
               (base32
                "1xpvscn9iawwa0vfh3kfwzdni436bf42nvm18b8abh033ljvqpij"))))
    (properties `((upstream-name . "JRF")))
    (build-system r-build-system)
    (home-page "https://www.r-project.org")
    (synopsis
     "Joint Random Forest (JRF) for the Simultaneous Estimation of Multiple Related Networks")
    (description "Simultaneous estimation of multiple related networks.")
    (license license:gpl2+)))

(define-public r-jrc
  (package
    (name "r-jrc")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jrc" version))
              (sha256
               (base32
                "0lg647nfijj6grlmwkasd6di5h6286dxmw1373k6n5gwym1g1l36"))))
    (properties `((upstream-name . "jrc")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-r6
                             r-r-utils
                             r-mime
                             r-jsonlite
                             r-httpuv))
    (home-page "https://github.com/anders-biostat/jrc")
    (synopsis "Exchange Commands Between R and 'JavaScript'")
    (description
     "An httpuv based bridge between R and JavaScript'.  Provides an easy way to
exchange commands and data between a web page and a currently running R session.")
    (license license:gpl3)))

(define-public r-jqr
  (package
    (name "r-jqr")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jqr" version))
              (sha256
               (base32
                "1a91zcjxdilhqdyr2lipnwc35f90h0wyqlbg0vw9ay7sq6llxgs9"))))
    (properties `((upstream-name . "jqr")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-lazyeval))
    (native-inputs (list pkg-config))
    (home-page "https://docs.ropensci.org/jqr/")
    (synopsis "Client for 'jq', a 'JSON' Processor")
    (description
     "Client for jq', a JSON processor (<https://stedolan.github.io/jq/>), written in
C. jq allows the following with JSON data: index into, parse, do calculations,
cut up and filter, change key names and values, perform conditionals and
comparisons, and more.")
    (license license:expat)))

(define-public r-jql
  (package
    (name "r-jql")
    (version "3.6.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JQL" version))
              (sha256
               (base32
                "0d926hngv4r6zl5f6yai3jwhl9hql2hv6ja3yjgplglkns66g4lh"))))
    (properties `((upstream-name . "JQL")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest r-pdist r-caret))
    (home-page "https://cran.r-project.org/package=JQL")
    (synopsis "Jump Q-Learning for Individualized Interval-Valued Dose Rule")
    (description
     "We provide tools to estimate the individualized interval-valued dose rule (I2DR)
that maximizes the expected beneficial clinical outcome for each individual and
returns an optimal interval-valued dose, by using the jump Q-learning (JQL)
method.  The jump Q-learning method directly models the conditional mean of the
response given the dose level and the baseline covariates via jump penalized
least squares regression under the framework of Q learning.  We develop a
searching algorithm by dynamic programming in order to find the optimal I2DR
with the time complexity O(n2) and spatial complexity O(n).  To alleviate the
effects of misspecification of the Q-function, a residual jump Q-learning is
further proposed to estimate the optimal I2DR. The outcome of interest includes
the best partition of the entire dosage of interest, the regression coefficients
of each partition, and the value function under the estimated I2DR as well as
the Wald-type confidence interval of value function constructed through the
Bootstrap.")
    (license license:lgpl3)))

(define-public r-jpstat
  (package
    (name "r-jpstat")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jpstat" version))
              (sha256
               (base32
                "1z7j5q081gs0qh7x0dcb4mrqmvnzymhmrbw3m0xs85sx5v88akca"))))
    (properties `((upstream-name . "jpstat")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rlang
                             r-purrr
                             r-progress
                             r-pillar
                             r-navigatr
                             r-lubridate
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/UchidaMizuki/jpstat")
    (synopsis "Tools for Easy Use of 'e-Stat' API")
    (description
     "This package provides tools for using the API of e-Stat
(<https://www.e-stat.go.jp/>), a portal site for Japanese government statistics.
 Includes functions for automatic query generation, data collection and
formatting.")
    (license license:expat)))

(define-public r-jpmesh
  (package
    (name "r-jpmesh")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jpmesh" version))
              (sha256
               (base32
                "0q8adf582h92qwdwgh4dk53s8rixrrh96r8vzy6bwxvizqf0i3y8"))))
    (properties `((upstream-name . "jpmesh")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-units
                             r-tibble
                             r-shiny
                             r-sf
                             r-rlang
                             r-purrr
                             r-miniui
                             r-memoise
                             r-magrittr
                             r-leaflet))
    (native-inputs (list r-knitr))
    (home-page "https://uribo.github.io/jpmesh/")
    (synopsis "Utilities for Japanese Mesh Code")
    (description
     "Helpful functions for using mesh code (80km to 100m) data in Japan.  Visualize
mesh code using ggplot2 and leaflet', etc.")
    (license license:expat)))

(define-public r-jpgrid
  (package
    (name "r-jpgrid")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jpgrid" version))
              (sha256
               (base32
                "15a5gv3jw3r320rnvi5dpwp3psfq08v7im95jnwvk1b53pmabc87"))))
    (properties `((upstream-name . "jpgrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-units
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stars
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-geosphere
                             r-dplyr))
    (home-page "https://github.com/UchidaMizuki/jpgrid")
    (synopsis "Functions for the Grid Square Codes in Japan")
    (description
     "This package provides functions for grid square codes in Japan
(<https://www.stat.go.jp/english/data/mesh/index.html>).  Generates the grid
square codes from longitude/latitude, geometries, and the grid square codes of
different scales, and vice versa.")
    (license license:expat)))

(define-public r-jpen
  (package
    (name "r-jpen")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JPEN" version))
              (sha256
               (base32
                "12rvp5bmlkwyr1gg336k655hp09gym0d2wwry70c1rz30x1sf2zs"))))
    (properties `((upstream-name . "JPEN")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=JPEN")
    (synopsis
     "Covariance and Inverse Covariance Matrix Estimation Using Joint Penalty")
    (description
     "This package provides a Joint PENalty Estimation of Covariance and Inverse
Covariance Matrices.")
    (license license:gpl2)))

(define-public r-joyn
  (package
    (name "r-joyn")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joyn" version))
              (sha256
               (base32
                "17x9rwcrqv7qx9w0cfyshjsij9cdl0fk13cfqbv0ibnc2nfycw87"))))
    (properties `((upstream-name . "joyn")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-glue r-data-table r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/randrescastaneda/joyn")
    (synopsis
     "Tool for Diagnosis of Tables Joins and Complementary Join Features")
    (description
     "Tool for diagnosing table joins.  It combines the speed `data.table`, the
flexibility of `dplyr`, and the diagnosis and features of the `merge` command in
`Stata`.")
    (license license:expat)))

(define-public r-jousboost
  (package
    (name "r-jousboost")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JOUSBoost" version))
              (sha256
               (base32
                "0f3rr7aw20nvmlpqrq3wzgmr55lqdqhk3wphpqq7msgvaf1zrcl7"))))
    (properties `((upstream-name . "JOUSBoost")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart r-rcpp r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=JOUSBoost")
    (synopsis "Implements Under/Oversampling for Probability Estimation")
    (description
     "This package implements under/oversampling for probability estimation.  To be
used with machine learning methods such as AdaBoost, random forests, etc.")
    (license license:expat)))

(define-public r-journalabbr
  (package
    (name "r-journalabbr")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "journalabbr" version))
              (sha256
               (base32
                "17b9igqnd9f9pp1wkpg9zvkmvzhhhnr4nrkgzpvlb0f9hihaj60s"))))
    (properties `((upstream-name . "journalabbr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidytable
                             r-stringr
                             r-stringi
                             r-shiny
                             r-purrr
                             r-httr
                             r-data-table))
    (home-page "https://github.com/zoushucai/journalabbr")
    (synopsis "Journal Abbreviations for BibTeX Documents")
    (description
     "Since the reference management software (such as Zotero', Mendeley') exports Bib
file journal abbreviation is not detailed enough, the journalabbr package only
abbreviates the journal field of Bib file, and then outputs a new Bib file for
generating reference format with journal abbreviation on other software (such as
texstudio').  The abbreviation table is from JabRef'.  At the same time, Shiny
application is provided to generate thebibliography', a reference format that
can be directly used for latex paper writing based on Rmd files.")
    (license license:gpl3+)))

(define-public r-jot
  (package
    (name "r-jot")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jot" version))
              (sha256
               (base32
                "0pzlj9vcz7p3zcg2y32cir593x193cxswkc3y9d1xh58vamrgs60"))))
    (properties `((upstream-name . "jot")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-cli))
    (home-page "http://christophertkenny.com/jot/")
    (synopsis "Jot Down Values for Later")
    (description
     "Reproducible work requires a record of where every statistic originated.  When
writing reports, some data is too big to load in the same environment and some
statistics take a while to compute.  This package offers a way to keep notes on
statistics, simple functions, and small objects.  Notepads can be locked to
avoid accidental updates.  Notepads keep track of who added the notes and when
the notes were added.  A simple text representation is used to allow for clear
version histories.")
    (license license:expat)))

(define-public r-jose
  (package
    (name "r-jose")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jose" version))
              (sha256
               (base32
                "09k6wnnqlsbmlag4156rcsnavph52grqagkax9kd1sxgpknril3v"))))
    (properties `((upstream-name . "jose")))
    (build-system r-build-system)
    (propagated-inputs (list r-openssl r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jose")
    (synopsis "JavaScript Object Signing and Encryption")
    (description
     "Read and write JSON Web Keys (JWK, rfc7517), generate and verify JSON Web
Signatures (JWS, rfc7515) and encode/decode JSON Web Tokens (JWT, rfc7519).
These standards provide modern signing and encryption formats that are natively
supported by browsers via the JavaScript WebCryptoAPI, and used by services like
OAuth 2.0, LetsEncrypt, and Github Apps.")
    (license license:expat)))

(define-public r-josaplay
  (package
    (name "r-josaplay")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "josaplay" version))
              (sha256
               (base32
                "0q6kjk3mjxwbqvq3zz0ylpi1viznp9pxzngqpjzv5sibv0ndh0lf"))))
    (properties `((upstream-name . "josaplay")))
    (build-system r-build-system)
    (propagated-inputs (list r-utf8 r-magrittr))
    (home-page "https://github.com/mrchypark/josaplay")
    (synopsis "Add Josa Based on Previous Letter in Korean")
    (description
     "Josa in Korean is often determined by judging the previous word.  When writing
reports using Rmd, a function that prints the appropriate investigation for each
case is helpful.  The josaplay package then evaluates the previous word to
determine which josa is appropriate.")
    (license license:expat)))

(define-public r-josae
  (package
    (name "r-josae")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JoSAE" version))
              (sha256
               (base32
                "1vjxzbfs8a7kpmn2lb9dca67d4njmzjr3pl16s0r9ihmmxxwwili"))))
    (properties `((upstream-name . "JoSAE")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=JoSAE")
    (synopsis "Unit-Level and Area-Level Small Area Estimation")
    (description
     "Implementation of some unit and area level EBLUP estimators as well as the
estimators of their MSE also under heteroscedasticity.  The package further
documents the publications Breidenbach and Astrup (2012)
<DOI:10.1007/s10342-012-0596-7>, Breidenbach et al. (2016)
<DOI:10.1016/j.rse.2015.07.026> and Breidenbach et al. (2018 in press).  The
vignette further explains the use of the implemented functions.")
    (license license:gpl2)))

(define-public r-jordan
  (package
    (name "r-jordan")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jordan" version))
              (sha256
               (base32
                "1d0my0lf8bmlmygz9f23skywzsrhy4xaykyrblbmhb00l0vxpa5s"))))
    (properties `((upstream-name . "jordan")))
    (build-system r-build-system)
    (propagated-inputs (list r-onion r-mathjaxr r-emulator))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/jordan")
    (synopsis "Suite of Routines for Working with Jordan Algebras")
    (description
     "This package provides a Jordan algebra is an algebraic object originally
designed to study observables in quantum mechanics.  Jordan algebras are
commutative but non-associative; they satisfy the Jordan identity.  The package
follows the ideas and notation of K. McCrimmon (2004, ISBN:0-387-95447-3) \"A
Taste of Jordan Algebras\".")
    (license license:gpl2+)))

(define-public r-jops
  (package
    (name "r-jops")
    (version "0.1.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JOPS" version))
              (sha256
               (base32
                "01yaw657826vfsfdscv3aqgswb5s2054s755agfxqm7g6sswpa13"))))
    (properties `((upstream-name . "JOPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-spats
                             r-spam
                             r-semipar
                             r-rpart
                             r-mass
                             r-ggplot2
                             r-fields
                             r-fds
                             r-colorspace
                             r-boot))
    (home-page "https://cran.r-project.org/package=JOPS")
    (synopsis "Practical Smoothing with P-Splines")
    (description
     "This package provides functions and data to reproduce all plots in the book
\"Practical Smoothing.  The Joys of P-splines\" by Paul H.C. Eilers and Brian D.
Marx (2021, ISBN:978-1108482950).")
    (license (list license:gpl2 license:gpl3))))

(define-public r-joinxl
  (package
    (name "r-joinxl")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joinXL" version))
              (sha256
               (base32
                "1l76bckjz5r1kdsh0s10i0gpca12rkfkp14346fn7avdcw73v23i"))))
    (properties `((upstream-name . "joinXL")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeseries
                             r-timedate
                             r-rjava
                             r-readxl
                             r-rcpp
                             r-rchoicedialogs
                             r-r-utils
                             r-openxlsx
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/yvonneglanville/joinXL")
    (synopsis "Perform Joins or Minus Queries on 'Excel' Files")
    (description
     "This package performs Joins and Minus Queries on Excel Files fulljoinXL() Merges
all rows of 2 Excel files based upon a common column in the files.
innerjoinXL() Merges all rows from base file and join file when the join
condition is met.  leftjoinXL() Merges all rows from the base file, and all rows
from the join file if the join condition is met.  rightjoinXL() Merges all rows
from the join file, and all rows from the base file if the join condition is
met.  minusXL() Performs 2 operations source-minus-target and
target-minus-source If the files are identical all output files will be empty.
Choose two Excel files via a dialog box, and then follow prompts at the console
to choose a base or source file and columns to merge or minus on.")
    (license license:gpl3)))

(define-public r-jointseg
  (package
    (name "r-jointseg")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jointseg" version))
              (sha256
               (base32
                "0zilkxk30w3l9mwikmsgvpy5misjggs98c3bjrjy1pfc4b0is943"))))
    (properties `((upstream-name . "jointseg")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats r-dnacopy r-acnr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mpierrejean/jointseg")
    (synopsis "Joint Segmentation of Multivariate (Copy Number) Signals")
    (description
     "This package provides methods for fast segmentation of multivariate signals into
piecewise constant profiles and for generating realistic copy-number profiles.
A typical application is the joint segmentation of total DNA copy numbers and
allelic ratios obtained from Single Nucleotide Polymorphism (SNP) microarrays in
cancer studies.  The methods are described in Pierre-Jean, Rigaill and Neuvial
(2015) <doi:10.1093/bib/bbu026>.")
    (license license:lgpl2.1+)))

(define-public r-jointnmix
  (package
    (name "r-jointnmix")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jointNmix" version))
              (sha256
               (base32
                "0ibh7hqkpzlfk3bk4d2dd64jhr8cvw563k082vwnljiam7k5nj4b"))))
    (properties `((upstream-name . "jointNmix")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jointNmix")
    (synopsis "Joint N-Mixture Models for Site-Associated Species")
    (description
     "Fits univariate and joint N-mixture models for data on two unmarked
site-associated species.  Includes functions to estimate latent abundances
through empirical Bayes methods.")
    (license license:gpl2+)))

(define-public r-jointnets
  (package
    (name "r-jointnets")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JointNets" version))
              (sha256
               (base32
                "18n9dsy0w0nh7dznp6gw6g5fhhjhf5y589nb49hri0721kq1h3rb"))))
    (properties `((upstream-name . "JointNets")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-rgl
                             r-pcapp
                             r-oro-nifti
                             r-misc3d
                             r-mass
                             r-lpsolve
                             r-jgl
                             r-igraph
                             r-brainr))
    (home-page "https://github.com/QData/JointNets")
    (synopsis
     "End-to-End Sparse Gaussian Graphical Model Simulation, Estimation, Visualization, Evaluation and Application")
    (description
     "An end-to-end package for learning multiple sparse Gaussian graphical models and
nonparanormal models from Heterogeneous Data with Additional Knowledge.  It is
able to simulate multiple related graphs as well as produce samples drawn from
them.  Multiple state-of-the-art sparse Gaussian graphical model estimators are
included to both multiple and difference estimation.  Graph visualization is
available in 2D as well as 3D, designed specifically for brain.  Moreover, a set
of evaluation metrics are integrated for easy exploration with model validity.
Finally, classification using graphical model is achieved with Quadratic
Discriminant Analysis.  The package comes with multiple demos with datasets from
various fields.  Methods references: SIMULE (Wang B et al. (2017)
<doi:10.1007/s10994-017-5635-7>), WSIMULE (Singh C et al. (2017)
<arXiv:1709.04090v2>), DIFFEE (Wang B et al. (2018) <arXiv:1710.11223>), JEEK
(Wang B et al. (2018) <arXiv:1806.00548>), JGL(Danaher P et al. (2012)
<arXiv:1111.0324>) and kdiffnet (Sekhon A et al, preprint for publication).")
    (license license:gpl2)))

(define-public r-jointmodel
  (package
    (name "r-jointmodel")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JointModel" version))
              (sha256
               (base32
                "1zgs5c7saqyqxvxmhw5sxy5w67abq344aid6igw1da05bfy2az6h"))))
    (properties `((upstream-name . "JointModel")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod r-lme4))
    (home-page "https://cran.r-project.org/package=JointModel")
    (synopsis
     "Semiparametric Joint Models for Longitudinal and Counting Processes")
    (description
     "Joint fit of a semiparametric regression model for longitudinal responses and a
semiparametric transformation model for time-to-event data.")
    (license license:gpl3)))

(define-public r-jointmeancov
  (package
    (name "r-jointmeancov")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jointMeanCov" version))
              (sha256
               (base32
                "1cai5g63n11dirn9fldzkqxcnkxc20ndr9ygrr9rk0s1qz8x63pb"))))
    (properties `((upstream-name . "jointMeanCov")))
    (build-system r-build-system)
    (propagated-inputs (list r-glasso))
    (home-page "https://cran.r-project.org/package=jointMeanCov")
    (synopsis "Joint Mean and Covariance Estimation for Matrix-Variate Data")
    (description
     "Jointly estimates two-group means and covariances for matrix-variate data and
calculates test statistics.  This package implements the algorithms defined in
Hornstein, Fan, Shedden, and Zhou (2018) <doi:10.1080/01621459.2018.1429275>.")
    (license license:gpl2)))

(define-public r-jointdiag
  (package
    (name "r-jointdiag")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jointDiag" version))
              (sha256
               (base32
                "18x6rxaxhz9hcp6rfmjlanbfsc5q61p6xcxixnc8ayyxbdq7q6rf"))))
    (properties `((upstream-name . "jointDiag")))
    (build-system r-build-system)
    (home-page "https://github.com/gouypailler/jointDiag")
    (synopsis "Joint Approximate Diagonalization of a Set of Square Matrices")
    (description
     "Different algorithms to perform approximate joint diagonalization of a finite
set of square matrices.  Depending on the algorithm, orthogonal or
non-orthogonal diagonalizer is found.  These algorithms are particularly useful
in the context of blind source separation.  Original publications of the
algorithms can be found in Ziehe et al. (2004), Pham and Cardoso (2001)
<doi:10.1109/78.942614>, Souloumiac (2009) <doi:10.1109/TSP.2009.2016997>,
Vollgraff and Obermayer <doi:10.1109/TSP.2006.877673>.  An example of
application in the context of Brain-Computer Interfaces EEG denoising can be
found in Gouy-Pailler et al (2010) <doi:10.1109/TBME.2009.2032162>.")
    (license license:gpl2+)))

(define-public r-jointai
  (package
    (name "r-jointai")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JointAI" version))
              (sha256
               (base32
                "1h92bkay1mjjmrjs0kjpxgz4swh3la7h5jir7d53cx7ghvk2zsgd"))))
    (properties `((upstream-name . "JointAI")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-survival
                             r-rlang
                             r-rjags
                             r-mcmcse
                             r-mathjaxr
                             r-mass
                             r-future
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://nerler.github.io/JointAI/")
    (synopsis "Joint Analysis and Imputation of Incomplete Data")
    (description
     "Joint analysis and imputation of incomplete data in the Bayesian framework,
using (generalized) linear (mixed) models and extensions there of, survival
models, or joint models for longitudinal and survival data, as described in
Erler, Rizopoulos and Lesaffre (2021) <doi:10.18637/jss.v100.i20>.  Incomplete
covariates, if present, are automatically imputed.  The package performs some
preprocessing of the data and creates a JAGS model, which will then
automatically be passed to JAGS <https://mcmc-jags.sourceforge.io/> with the
help of the package rjags'.")
    (license license:gpl2+)))

(define-public r-joint-cox
  (package
    (name "r-joint-cox")
    (version "3.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joint.Cox" version))
              (sha256
               (base32
                "0i2lf4q5w3893wppcig85r3ljr84j0d2m2id9kw9g194c8qgaqmm"))))
    (properties `((upstream-name . "joint.Cox")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=joint.Cox")
    (synopsis
     "Joint Frailty-Copula Models for Tumour Progression and Death in Meta-Analysis")
    (description
     "Fit survival data and perform dynamic prediction under joint frailty-copula
models for tumour progression and death.  Likelihood-based methods are employed
for estimating model parameters, where the baseline hazard functions are modeled
by the cubic M-spline or the Weibull model.  The methods are applicable for
meta-analytic data containing individual-patient information from several
studies.  Survival outcomes need information on both terminal event time (e.g.,
time-to-death) and non-terminal event time (e.g., time-to-tumour progression).
Methodologies were published in Emura et al. (2017)
<doi:10.1177/0962280215604510>, Emura et al. (2018)
<doi:10.1177/0962280216688032>, Emura et al. (2020)
<doi:10.1177/0962280219892295>, Shinohara et al. (2020)
<doi:10.1080/03610918.2020.1855449>, Wu et al. (2020)
<doi:10.1007/s00180-020-00977-1>, and Emura et al. (2021)
<doi:10.1177/09622802211046390>.  See also the book of Emura et al. (2019)
<doi:10.1007/978-981-13-3516-7>.  Survival data from ovarian cancer patients are
also available.")
    (license license:gpl2)))

(define-public r-joinet
  (package
    (name "r-joinet")
    (version "0.0.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joinet" version))
              (sha256
               (base32
                "1jjx1rvg2x9zdfdqsjk04hcn7qsf8g7pq8q0x9q83kd8sb1ikjk5"))))
    (properties `((upstream-name . "joinet")))
    (build-system r-build-system)
    (propagated-inputs (list r-palasso r-glmnet r-cornet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rauschenberger/joinet")
    (synopsis "Multivariate Elastic Net Regression")
    (description
     "This package implements high-dimensional multivariate regression by stacked
generalisation (Rauschenberger 2021 <doi:10.1093/bioinformatics/btab576>).  For
positively correlated outcomes, a single multivariate regression is typically
more predictive than multiple univariate regressions.  Includes functions for
model fitting, extracting coefficients, outcome prediction, and performance
measurement.  If required, install MRCE or remMap from GitHub
(<https://github.com/cran/MRCE>, <https://github.com/cran/remMap>).")
    (license license:gpl3)))

(define-public r-joinerml
  (package
    (name "r-joinerml")
    (version "0.4.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joineRML" version))
              (sha256
               (base32
                "0rj6ag1qlz1iyia89pkxw8l2aj8msph17g7qkgc3g99v4i9rj2pp"))))
    (properties `((upstream-name . "joineRML")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-randtoolbox
                             r-nlme
                             r-mvtnorm
                             r-matrix
                             r-mass
                             r-lme4
                             r-ggplot2
                             r-generics
                             r-foreach
                             r-doparallel
                             r-cobs))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/graemeleehickey/joineRML")
    (synopsis
     "Joint Modelling of Multivariate Longitudinal Data and Time-to-Event Outcomes")
    (description
     "Fits the joint model proposed by Henderson and colleagues (2000)
<doi:10.1093/biostatistics/1.4.465>, but extended to the case of multiple
continuous longitudinal measures.  The time-to-event data is modelled using a
Cox proportional hazards regression model with time-varying covariates.  The
multiple longitudinal outcomes are modelled using a multivariate version of the
Laird and Ware linear mixed model.  The association is captured by a
multivariate latent Gaussian process.  The model is estimated using a Monte
Carlo Expectation Maximization algorithm.  This project was funded by the
Medical Research Council (Grant number MR/M013227/1).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-joiner
  (package
    (name "r-joiner")
    (version "1.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "joineR" version))
              (sha256
               (base32
                "11pdpivqrbx9zp43yrj52r40n5pql99zhlsazh8pk61zca93gmbm"))))
    (properties `((upstream-name . "joineR")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-statmod r-nlme r-mass r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/graemeleehickey/joineR/")
    (synopsis
     "Joint Modelling of Repeated Measurements and Time-to-Event Data")
    (description
     "Analysis of repeated measurements and time-to-event data via random effects
joint models.  Fits the joint models proposed by Henderson and colleagues
<doi:10.1093/biostatistics/1.4.465> (single event time) and by Williamson and
colleagues (2008) <doi:10.1002/sim.3451> (competing risks events time) to a
single continuous repeated measure.  The time-to-event data is modelled using a
(cause-specific) Cox proportional hazards regression model with time-varying
covariates.  The longitudinal outcome is modelled using a linear mixed effects
model.  The association is captured by a latent Gaussian process.  The model is
estimated using am Expectation Maximization algorithm.  Some plotting functions
and the variogram are also included.  This project is funded by the Medical
Research Council (Grant numbers G0400615 and MR/M013227/1).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-jof
  (package
    (name "r-jof")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JoF" version))
              (sha256
               (base32
                "1my6fc4awrc822ibsvx3hiz4l49vp8dx0j05v56r7d27xizy8j0j"))))
    (properties `((upstream-name . "JoF")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JoF")
    (synopsis "Modelling and Simulating Judgments of Frequency")
    (description
     "In a typical experiment for the intuitive judgment of frequencies (JoF)
different stimuli with different frequencies are presented.  The participants
consider these stimuli with a constant duration and give a judgment of
frequency.  These judgments can be simulated by formal models: PASS 1 and PASS 2
based on Sedlmeier (2002, ISBN:978-0198508632), MINERVA 2 baesd on Hintzman
(1984) <doi:10.3758/BF03202365> and TODAM 2 based on Murdock, Smith & Bai (2001)
<doi:10.1006/jmps.2000.1339>.  The package provides an assessment of the
frequency by determining the core aspects of these four models (attention,
decay, and presented frequency) that can be compared to empirical results.")
    (license license:gpl3)))

(define-public r-jocre
  (package
    (name "r-jocre")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jocre" version))
              (sha256
               (base32
                "1i9n3r16pq6r4sy3fc1rxpil5ws8v2is0xdxafinvwr1hzkv1gz6"))))
    (properties `((upstream-name . "jocre")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsp r-plyr r-kernsmooth r-boot))
    (home-page "https://cran.r-project.org/package=jocre")
    (synopsis "Joint Confidence Regions")
    (description
     "Computing and plotting joint confidence regions and intervals.  Regions include
classical ellipsoids, minimum-volume or minimum-length regions, and an empirical
Bayes region.  Intervals include the TOST procedure with ordinary or expanded
intervals and a fixed-sequence procedure.  Such regions and intervals are useful
e.g., for the assessment of multi-parameter (bio-)equivalence.  Joint confidence
regions for the mean and variance of a normal distribution are available as
well.")
    (license license:gpl2)))

(define-public r-job
  (package
    (name "r-job")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "job" version))
              (sha256
               (base32
                "0d7pw3q5lqlgmav1vx63y8l6gdav96656bg378wj001rx5gx052h"))))
    (properties `((upstream-name . "job")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstudioapi r-digest))
    (home-page "https://cran.r-project.org/package=job")
    (synopsis "Run Code as an RStudio Job - Free Your Console")
    (description
     "Call job::job({<code here>}) to run R code as an RStudio job and keep your
console free in the meantime.  This allows for a productive workflow while
testing (multiple) long-running chunks of code.  It can also be used to organize
results using the RStudio Jobs GUI or to test code in a clean environment.  Two
RStudio Addins can be used to run selected code as a job.")
    (license license:expat)))

(define-public r-jmvreadwrite
  (package
    (name "r-jmvreadwrite")
    (version "0.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmvReadWrite" version))
              (sha256
               (base32
                "0jyrilrh85x5qrkmwp7fvwa9mg8p769qcfnrlj3chv1q2ddfn69j"))))
    (properties `((upstream-name . "jmvReadWrite")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip r-rjson))
    (native-inputs (list r-knitr))
    (home-page "https://sjentsch.github.io/jmvReadWrite/")
    (synopsis "Read and Write 'jamovi' Files ('.omv')")
    (description
     "The free and open a statistical spreadsheet jamovi (<https://www.jamovi.org>)
aims to make statistical analyses easy and intuitive.  jamovi produces syntax
that can directly be used in R (in connection with the R-package jmv').  Having
import / export routines for the data files jamovi produces ('.omv') permits an
easy transfer of analyses between jamovi and R.")
    (license license:agpl3)))

(define-public r-jmvcore
  (package
    (name "r-jmvcore")
    (version "2.3.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmvcore" version))
              (sha256
               (base32
                "1vmjf9sszskf767n92rzpg8lai2g1qgkncgn96j39mgck92vrnqn"))))
    (properties `((upstream-name . "jmvcore")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-rlang r-r6 r-jsonlite r-base64enc))
    (home-page "https://www.jamovi.org")
    (synopsis "Dependencies for the 'jamovi' Framework")
    (description
     "This package provides a framework for creating rich interactive analyses for the
jamovi platform (see <https://www.jamovi.org> for more information).")
    (license license:gpl2+)))

(define-public r-jmvconnect
  (package
    (name "r-jmvconnect")
    (version "2.3.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmvconnect" version))
              (sha256
               (base32
                "0b5klfn4986haw3hhy3aarf88g08s1d46b8xrpxxqnwqw8yd7l88"))))
    (properties `((upstream-name . "jmvconnect")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-rcpp
                             r-rappdirs
                             r-jmvcore
                             r-httr
                             r-evaluate
                             r-bh))
    (home-page "https://cran.r-project.org/package=jmvconnect")
    (synopsis "Connect to the 'jamovi' Statistical Spreadsheet")
    (description
     "This package provides methods to access data sets from the jamovi statistical
spreadsheet (see <https://www.jamovi.org> for more information) from R.")
    (license license:gpl2+)))

(define-public r-jmv
  (package
    (name "r-jmv")
    (version "2.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmv" version))
              (sha256
               (base32
                "0mhai7kvc6fpsybpgj6adnbqsg3nlx16zfjdg6lxkhzjdv0s4gpm"))))
    (properties `((upstream-name . "jmv")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcdextra
                             r-vcd
                             r-rocr
                             r-r6
                             r-psych
                             r-pmcmr
                             r-nnet
                             r-mvnormtest
                             r-multcomp
                             r-mass
                             r-magrittr
                             r-lavaan
                             r-jmvcore
                             r-gparotation
                             r-ggridges
                             r-ggrepel
                             r-ggplot2
                             r-ggally
                             r-emmeans
                             r-dplyr
                             r-car
                             r-bayesfactor
                             r-afex))
    (home-page "https://cran.r-project.org/package=jmv")
    (synopsis "The 'jamovi' Analyses")
    (description
     "This package provides a suite of common statistical methods such as
descriptives, t-tests, ANOVAs, regression, correlation matrices, proportion
tests, contingency tables, and factor analysis.  This package is also useable
from the jamovi statistical spreadsheet (see <https://www.jamovi.org> for more
information).")
    (license license:gpl2+)))

(define-public r-jmuoutlier
  (package
    (name "r-jmuoutlier")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmuOutlier" version))
              (sha256
               (base32
                "1vj9n1hsf780f7l0a22kmi3qm84j4dzjybjkh5zwh6bhwfjnjws3"))))
    (properties `((upstream-name . "jmuOutlier")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jmuOutlier")
    (synopsis "Permutation Tests for Nonparametric Statistics")
    (description
     "This package performs a permutation test on the difference between two location
parameters, a permutation correlation test, a permutation F-test, the
Siegel-Tukey test, a ratio mean deviance test.  Also performs some graphing
techniques, such as for confidence intervals, vector addition, and Fourier
analysis; and includes functions related to the Laplace (double exponential) and
triangular distributions.  Performs power calculations for the binomial test.")
    (license license:gpl3)))

(define-public r-jmotif
  (package
    (name "r-jmotif")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmotif" version))
              (sha256
               (base32
                "0b2qllpfgs6q5fwfhxl5b4xdyzbvnja7ld766akf0xxznxvglkrg"))))
    (properties `((upstream-name . "jmotif")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/jMotif/jmotif-R")
    (synopsis
     "Time Series Analysis Toolkit Based on Symbolic Aggregate Discretization, i.e. SAX")
    (description
     "This package implements time series z-normalization, SAX, HOT-SAX, VSM, SAX-VSM,
RePair, and RRA algorithms facilitating time series motif (i.e., recurrent
pattern), discord (i.e., anomaly), and characteristic pattern discovery along
with interpretable time series classification.")
    (license license:gpl2)))

(define-public r-jmisc
  (package
    (name "r-jmisc")
    (version "0.3.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Jmisc" version))
              (sha256
               (base32
                "0fcch7rg8gn92855smd7h2andr33h9dnccjy12w2bx0px8rnqa0s"))))
    (properties `((upstream-name . "Jmisc")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Jmisc")
    (synopsis "Julian Miscellaneous Function")
    (description "Some handy function in R.")
    (license license:gpl2+)))

(define-public r-jmi
  (package
    (name "r-jmi")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JMI" version))
              (sha256
               (base32
                "05phkwfb9v4g9jixlvbj6br7sbi64zvrgjwfr0v87ijddkxc9si9"))))
    (properties `((upstream-name . "JMI")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=JMI")
    (synopsis "Jackknife Mutual Information")
    (description
     "Computes the Jackknife Mutual Information (JMI) between two random vectors and
provides the p-value for dependence tests.  See Zeng, X., Xia, Y. and Tong, H.
(2018) <doi:10.1073/pnas.1715593115>.")
    (license license:gpl2+)))

(define-public r-jmetrik
  (package
    (name "r-jmetrik")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmetrik" version))
              (sha256
               (base32
                "1if1kxx8apgkbxpkjnlj2lpsfnyj2splsg1p3j5vxa7q6wx70f9j"))))
    (properties `((upstream-name . "jmetrik")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jmetrik")
    (synopsis "Tools for Interacting with 'jMetrik'")
    (description
     "The main purpose of this package is to make it easy for userR's to interact with
jMetrik an open source application for psychometric analysis.  For example it
allows useR's to write data frames to file in a format that can be used by
jMetrik'.  It also allows useR's to read *.jmetrik files (e.g. output from an
analysis) for follow-up analysis in R. The *.jmetrik format is a flat file that
includes a multiline header and the data as comma separated values.  The header
includes metadata about the file and one row per variable with the following
information in each row: variable name, data type, item scoring, special data
codes, and variable label.")
    (license license:gpl3+)))

(define-public r-jmdesign
  (package
    (name "r-jmdesign")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JMdesign" version))
              (sha256
               (base32
                "0pa0j4hw5r3j94p2hhlb0qnsh1mvr1fdllqpkr50gci607ckv0g3"))))
    (properties `((upstream-name . "JMdesign")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=JMdesign")
    (synopsis
     "Joint Modeling of Longitudinal and Survival Data - Power Calculation")
    (description
     "This package performs power calculations for joint modeling of longitudinal and
survival data with k-th order trajectories when the variance-covariance matrix,
Sigma_theta, is unknown.")
    (license license:gpl2)))

(define-public r-jmdem
  (package
    (name "r-jmdem")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmdem" version))
              (sha256
               (base32
                "15zrxgd5fgi4wzp4s963pnwj3vkgxs4ygqrcpncy9b6j2cxrivdc"))))
    (properties `((upstream-name . "jmdem")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-statmod))
    (home-page "https://cran.r-project.org/package=jmdem")
    (synopsis "Fitting Joint Mean and Dispersion Effects Models")
    (description
     "Joint mean and dispersion effects models fit the mean and dispersion parameters
of a response variable by two separate linear models, the mean and dispersion
submodels, simultaneously.  It also allows the users to choose either the
deviance or the Pearson residuals as the response variable of the dispersion
submodel.  Furthermore, the package provides the possibility to nest the
submodels in one another, if one of the parameters has significant explanatory
power on the other.  Wu & Li (2016) <doi:10.1016/j.csda.2016.04.015>.")
    (license license:gpl2)))

(define-public r-jmcm
  (package
    (name "r-jmcm")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmcm" version))
              (sha256
               (base32
                "1dpm94k2s2vx3dvd5rk7xrsq786phl0hq7xi9fjjxbr8qfmxhsck"))))
    (properties `((upstream-name . "jmcm")))
    (build-system r-build-system)
    (propagated-inputs (list r-roptim r-rcpparmadillo r-rcpp r-formula))
    (home-page "https://github.com/ypan1988/jmcm/")
    (synopsis "Joint Mean-Covariance Models using 'Armadillo' and S4")
    (description
     "Fit joint mean-covariance models for longitudinal data.  The models and their
components are represented using S4 classes and methods.  The core computational
algorithms are implemented using the Armadillo C++ library for numerical linear
algebra and RcppArmadillo glue.")
    (license license:gpl2+)))

(define-public r-jmbayes2
  (package
    (name "r-jmbayes2")
    (version "0.3-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JMbayes2" version))
              (sha256
               (base32
                "0m8q13k9k7ksrddpmbphmn62d658pz3r5a673sv0yg3ilsmi7259"))))
    (properties `((upstream-name . "JMbayes2")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rcpparmadillo
                             r-rcpp
                             r-nlme
                             r-matrixstats
                             r-gridextra
                             r-glmmadaptive
                             r-ggplot2
                             r-coda))
    (home-page "https://drizopoulos.github.io/JMbayes2/")
    (synopsis "Extended Joint Models for Longitudinal and Time-to-Event Data")
    (description
     "Fit joint models for longitudinal and time-to-event data under the Bayesian
approach.  Multiple longitudinal outcomes of mixed type (continuous/categorical)
and multiple event times (competing risks and multi-state processes) are
accommodated.  Rizopoulos (2012, ISBN:9781439872864).")
    (license license:gpl3+)))

(define-public r-jmbayes
  (package
    (name "r-jmbayes")
    (version "0.8-85")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JMbayes" version))
              (sha256
               (base32
                "0s11jpzflc2zg60g4ffcw23c2f4zz3mzddrc2cl5y43xl2v304lb"))))
    (properties `((upstream-name . "JMbayes")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-xtable
                             r-survival
                             r-shiny
                             r-rstan
                             r-rcpparmadillo
                             r-rcpp
                             r-nlme
                             r-mass
                             r-jagsui
                             r-hmisc
                             r-foreach
                             r-doparallel))
    (home-page "https://github.com/drizopoulos/JMbayes")
    (synopsis
     "Joint Modeling of Longitudinal and Time-to-Event Data under a Bayesian Approach")
    (description
     "Shared parameter models for the joint modeling of longitudinal and time-to-event
data using MCMC; Dimitris Rizopoulos (2016) <doi:10.18637/jss.v072.i07>.")
    (license license:gpl2+)))

(define-public r-jmatrix
  (package
    (name "r-jmatrix")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jmatrix" version))
              (sha256
               (base32
                "1wagyc3kzgmab7z885vcgp94xn3inap6284hcghv1937yjbwr57m"))))
    (properties `((upstream-name . "jmatrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-memuse))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jmatrix")
    (synopsis
     "Read from/Write to Disk Matrices with any Data Type in a Binary Format")
    (description
     "This package provides a mainly instrumental package meant to allow other
packages whose core is written in C++ to read, write and manipulate matrices in
a binary format so that the memory used for them is no more than strictly
needed.  Its functionality is already inside parallelpam and scellpam', so if
you have installed any of these, you do not need to install jmatrix'.  Using
just the needed memory is not always true with R matrices or vectors, since by
default they are of double type.  Trials like the float package have been done,
but to use them you have to coerce a matrix already loaded in R memory to a
float matrix, and then you can delete it.  The problem comes when your computer
has not memory enough to hold the matrix in the first place, so you are forced
to load it by chunks.  This is the problem this package tries to address (with
partial success, but this is a difficult problem since R is not a strictly typed
language, which is anyway quite hard to get in an interpreted language).  This
package allows the creation and manipulation of full, sparse and symmetric
matrices of any standard data type.")
    (license license:gpl2+)))

(define-public r-jm
  (package
    (name "r-jm")
    (version "1.5-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JM" version))
              (sha256
               (base32
                "133s565gp18ddnbawhzix978p4yj11lp4vlaqs0dq52ww46f3byj"))))
    (properties `((upstream-name . "JM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-nlme r-mass))
    (home-page "http://jmr.r-forge.r-project.org/")
    (synopsis "Joint Modeling of Longitudinal and Survival Data")
    (description
     "Shared parameter models for the joint modeling of longitudinal and time-to-event
data.")
    (license license:gpl2+)))

(define-public r-jlsm
  (package
    (name "r-jlsm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jlsm" version))
              (sha256
               (base32
                "01wmm7555v31kbmy6lcv9j0rr0cav5vsyhl09l7zh0qm6m3ddw7p"))))
    (properties `((upstream-name . "jlsm")))
    (build-system r-build-system)
    (propagated-inputs (list r-proc
                             r-network
                             r-mvtnorm
                             r-matrixcalc
                             r-matrix
                             r-mass
                             r-lvm4net
                             r-expm
                             r-ellipse
                             r-boot))
    (home-page "https://cran.r-project.org/package=jlsm")
    (synopsis
     "Joint Latent Space Model for Social Networks with Multivariate Attributes")
    (description
     "Joint latent space models for social networks and multivariate attributes using
a fast inference approach (Wang et al. (2019) <arXiv:1910.12128>).")
    (license license:gpl2+)))

(define-public r-jlpm
  (package
    (name "r-jlpm")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JLPM" version))
              (sha256
               (base32
                "0k63vi44vfb0k9nkqyhh3iymrca7p47xf2h4x2c4fi50v6bs3v2l"))))
    (properties `((upstream-name . "JLPM")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-stringr r-randtoolbox r-marqlevalg))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=JLPM")
    (synopsis "Joint Latent Process Models")
    (description
     "Estimation of extended joint models with shared random effects.  Longitudinal
data are handled in latent process models for continuous (Gaussian or
curvilinear) and ordinal outcomes while proportional hazard models are used for
the survival part.  We propose a frequentist approach using maximum likelihood
estimation.  See Saulnier et al, 2021 <arXiv:2110.02612>.")
    (license license:gpl2+)))

(define-public r-jlctree
  (package
    (name "r-jlctree")
    (version "0.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jlctree" version))
              (sha256
               (base32
                "0l8piz0m9iv9lbw35yx1ww0db0pv0qhbvkz4l36fwjsgnjlh8f6a"))))
    (properties `((upstream-name . "jlctree")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rpart r-lme4))
    (home-page "https://cran.r-project.org/package=jlctree")
    (synopsis
     "Joint Latent Class Trees for Joint Modeling of Time-to-Event and Longitudinal Data")
    (description
     "This package implements the tree-based approach to joint modeling of
time-to-event and longitudinal data.  This approach looks for a tree-based
partitioning such that within each estimated latent class defined by a terminal
node, the time-to-event and longitudinal responses display a lack of
association.  See Zhang and Simonoff (2018) <arXiv:1812.01774>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-jjb
  (package
    (name "r-jjb")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jjb" version))
              (sha256
               (base32
                "0y9yvnzg6xngz1fvzl5jm4yb1pg6wrp3id0gysv214wcznf3gna9"))))
    (properties `((upstream-name . "jjb")))
    (build-system r-build-system)
    (home-page "https://github.com/coatless/jjb")
    (synopsis "Balamuta Miscellaneous")
    (description
     "Set of common functions used for manipulating colors, detecting and interacting
with RStudio', modeling, formatting, determining users operating system, feature
scaling, and more!")
    (license license:gpl2+)))

(define-public r-jjanno
  (package
    (name "r-jjanno")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jjAnno" version))
              (sha256
               (base32
                "1xqkkqzdalpzc9d9kibc7b2lfmpzxn84f9y8pl1wjs7ins4dhsck"))))
    (properties `((upstream-name . "jjAnno")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-magick r-ggplot2 r-ggiraphextra
                             r-dplyr))
    (home-page "https://github.com/junjunlab/jjAnno")
    (synopsis "An Annotation Package for 'ggplot2' Output")
    (description
     "To make the plot more elegant with some multiple type annotations including
rect', text', point', image and segment elements.")
    (license license:expat)))

(define-public r-jipapprox
  (package
    (name "r-jipapprox")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jipApprox" version))
              (sha256
               (base32
                "18ga798iafkqvjmra1xw3fpqzhd7c9qjcvklsifs2s6p8czy06v7"))))
    (properties `((upstream-name . "jipApprox")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampling))
    (home-page "https://cran.r-project.org/package=jipApprox")
    (synopsis "Approximate Inclusion Probabilities for Survey Sampling")
    (description
     "Approximate joint-inclusion probabilities in Unequal Probability Sampling, or
compute Monte Carlo approximations of the first and second-order inclusion
probabilities of a general sampling design as in Fattorini (2006)
<doi:10.1093/biomet/93.2.269>.")
    (license license:gpl3)))

(define-public r-jinjar
  (package
    (name "r-jinjar")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jinjar" version))
              (sha256
               (base32
                "10lilj98ppy3cpimn5pzsfkvm5chz4bw1rx3a3frgy56nmapnmsv"))))
    (properties `((upstream-name . "jinjar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-jsonlite r-fs r-cpp11 r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://davidchall.github.io/jinjar/")
    (synopsis "Template Engine Inspired by 'Jinja'")
    (description
     "Template engine powered by the inja C++ library.  Users write a template
document, using syntax inspired by the Jinja Python package, and then render the
final document by passing data from R. The template syntax supports features
such as variables, loops, conditions and inheritance.")
    (license license:expat)))

(define-public r-jiebard
  (package
    (name "r-jiebard")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jiebaRD" version))
              (sha256
               (base32
                "1wadpcdca4pm56r8q22y4axmqdbb2dazsh2vlhjy73rpymqfcph4"))))
    (properties `((upstream-name . "jiebaRD")))
    (build-system r-build-system)
    (home-page "https://github.com/qinwf/jiebaRD/")
    (synopsis "Chinese Text Segmentation Data for jiebaR Package")
    (description
     "jiebaR is a package for Chinese text segmentation, keyword extraction and speech
tagging.  This package provides the data files required by jiebaR.")
    (license license:expat)))

(define-public r-jiebar
  (package
    (name "r-jiebar")
    (version "0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jiebaR" version))
              (sha256
               (base32
                "08v64xwr9jp4vh88x7y935khh4cmj8rwsjaxfd2c67n0445qppmd"))))
    (properties `((upstream-name . "jiebaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-jiebard))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/qinwf/jiebaR/")
    (synopsis "Chinese Text Segmentation")
    (description
     "Chinese text segmentation, keyword extraction and speech tagging For R.")
    (license license:expat)))

(define-public r-jgsbook
  (package
    (name "r-jgsbook")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jgsbook" version))
              (sha256
               (base32
                "0n03qfi101ln5bp1fzck2dik5zwscl7lq4yxngqnx6rwpfyx8mlk"))))
    (properties `((upstream-name . "jgsbook")))
    (build-system r-build-system)
    (propagated-inputs (list r-statip))
    (home-page "https://cran.r-project.org/package=jgsbook")
    (synopsis
     "Package of the German Book \"Statistik mit R und RStudio\" by Joerg grosse Schlarmann")
    (description
     "All datasets and functions used in the german book \"Statistik mit R und RStudio\"
by Joerg grosse Schlarmann.  You can read it online at
<https://www.produnis.de/R/> .")
    (license license:gpl2+)))

(define-public r-jgr
  (package
    (name "r-jgr")
    (version "1.9-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JGR" version))
              (sha256
               (base32
                "0zh9v16ymq68xv1canfh0hafizb722632pv7r5xb1fsc230hbcc7"))))
    (properties `((upstream-name . "JGR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava r-javagd))
    (home-page "http://rforge.net/JGR/")
    (synopsis "Java GUI for R")
    (description
     "Java GUI for R - cross-platform, universal and unified Graphical User Interface
for R. For full functionality on Windows and Mac OS X JGR requires a start
application which depends on your OS.")
    (license license:gpl2)))

(define-public r-jgl
  (package
    (name "r-jgl")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JGL" version))
              (sha256
               (base32
                "02p9z32f8j60wnh1szkjr2zfa9zwyw0gqinpsvll4dymf8cjawpw"))))
    (properties `((upstream-name . "JGL")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://cran.r-project.org/package=JGL")
    (synopsis
     "Performs the Joint Graphical Lasso for Sparse Inverse Covariance Estimation on Multiple Classes")
    (description
     "The Joint Graphical Lasso is a generalized method for estimating Gaussian
graphical models/ sparse inverse covariance matrices/ biological networks on
multiple classes of data.  We solve JGL under two penalty functions: The Fused
Graphical Lasso (FGL), which employs a fused penalty to encourage inverse
covariance matrices to be similar across classes, and the Group Graphical Lasso
(GGL), which encourages similar network structure between classes.  FGL is
recommended over GGL for most applications.  Reference: Danaher P, Wang P,
Witten DM. (2013) <doi:10.1111/rssb.12033>.")
    (license license:gpl2)))

(define-public r-jgee
  (package
    (name "r-jgee")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JGEE" version))
              (sha256
               (base32
                "078348n623hlyc3n9yh67vv5acsnxapmbwybvrb1i7kawmqw5msi"))))
    (properties `((upstream-name . "JGEE")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-gee))
    (home-page "https://cran.r-project.org/package=JGEE")
    (synopsis "Joint Generalized Estimating Equation Solver")
    (description
     "Fits two different joint generalized estimating equation models to multivariate
longitudinal data.")
    (license license:gpl2+)))

(define-public r-jgcricolors
  (package
    (name "r-jgcricolors")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jgcricolors" version))
              (sha256
               (base32
                "1lg6yzqly5y2cf396b6rvfqplnfyz9v9ay2g4q9m110mng5ln96l"))))
    (properties `((upstream-name . "jgcricolors")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcolorbrewer r-markdown r-knitr
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/JGCRI/jgcricolors")
    (synopsis "Manage 'JGCRI' Color Palettes")
    (description
     "Color palettes used by the Pacific Northwest National Laboratory - Joint Global
Change Research Institute for maps and charts.")
    (license license:bsd-2)))

(define-public r-jfm
  (package
    (name "r-jfm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JFM" version))
              (sha256
               (base32
                "08655vgfb2ll8hwjsj5lsw4849rahn3blisdqn8bwfhclrwd24xn"))))
    (properties `((upstream-name . "JFM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvcg
                             r-rockfab
                             r-rgl
                             r-rcpparmadillo
                             r-rcpp
                             r-randomcolor
                             r-mass))
    (home-page "https://cran.r-project.org/package=JFM")
    (synopsis "Rock Mass Structural Analysis from 3D Mesh of Point Cloud")
    (description
     "This package provides functions to extract joint planes from 3D triangular mesh
derived from point cloud and makes data available for structural analysis.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-jfe
  (package
    (name "r-jfe")
    (version "2.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JFE" version))
              (sha256
               (base32
                "1k9z6jq07gpq25imk8fx0wyh69z626mipc1fb7z67h4iygyznwjv"))))
    (properties `((upstream-name . "JFE")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-tcltk2 r-fportfolio))
    (home-page "https://cran.r-project.org/package=JFE")
    (synopsis
     "Tools and GUI for Analyzing Time Series Data of Just Finance and Econometrics")
    (description
     "Support the analysis of financial and econometric time series, including data
download.")
    (license license:gpl2+)))

(define-public r-jfa
  (package
    (name "r-jfa")
    (version "0.6.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jfa" version))
              (sha256
               (base32
                "1ksp4jrch9rhjh1bdscim92sj29j2xn3q4nrddlp2jmhvzaa0dw2"))))
    (properties `((upstream-name . "jfa")))
    (build-system r-build-system)
    (propagated-inputs (list r-extradistr))
    (native-inputs (list r-knitr))
    (home-page "https://koenderks.github.io/jfa/")
    (synopsis "Bayesian and Classical Audit Sampling")
    (description
     "This package provides statistical audit sampling methods as implemented in JASP
for Audit (Derks et al., 2021 <doi:10.21105/joss.02733>).  The package makes it
easy for an auditor to plan a statistical sample, select the sample from the
population, and evaluate the misstatement in the sample compliant with the
International Standards on Auditing.  Next to classical audit sampling
methodology, the package implements Bayesian equivalents of these methods whose
statistical underpinnings are described in Derks et al. (2021)
<doi:10.1111/ijau.12240>, Derks et al. (2021) <doi:10.31234/osf.io/kzqp5>, and
Derks et al. (2022) <doi:10.31234/osf.io/8nf3e>.")
    (license license:gpl3+)))

(define-public r-jetpack
  (package
    (name "r-jetpack")
    (version "0.5.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jetpack" version))
              (sha256
               (base32
                "0c2vvayci7jm1p97ccgb5nccrgvdyid4fgh12cab18xwrwx1hzxx"))))
    (properties `((upstream-name . "jetpack")))
    (build-system r-build-system)
    (propagated-inputs (list r-renv r-remotes r-docopt r-desc))
    (home-page "https://github.com/ankane/jetpack")
    (synopsis "Friendly Package Manager")
    (description
     "Manage project dependencies from your DESCRIPTION file.  Create a reproducible
virtual environment with minimal additional files in your project.  Provides
tools to add, remove, and update dependencies as well as install existing
dependencies with a single function.")
    (license license:expat)))

(define-public r-jenga
  (package
    (name "r-jenga")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jenga" version))
              (sha256
               (base32
                "0yq1nkaakzajjdk3w6hzikl6pwqx0546mcb1ik688b0l55vmwphc"))))
    (properties `((upstream-name . "jenga")))
    (build-system r-build-system)
    (propagated-inputs (list r-tictoc
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
                             r-dplyr
                             r-abind))
    (home-page "https://rpubs.com/giancarlo_vercellino/jenga")
    (synopsis "Fast Extrapolation of Time Features using K-Nearest Neighbors")
    (description
     "Fast extrapolation of univariate and multivariate time features using K-Nearest
Neighbors.  The compact set of hyper-parameters is tuned via grid or random
search.")
    (license license:gpl3)))

(define-public r-jeek
  (package
    (name "r-jeek")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jeek" version))
              (sha256
               (base32
                "15n0k0i1wwp72g8zqrjmglnckab3p65q3rnpg6d6h8hjcpv82i7g"))))
    (properties `((upstream-name . "jeek")))
    (build-system r-build-system)
    (propagated-inputs (list r-pcapp r-lpsolve r-igraph))
    (home-page "https://github.com/QData/jeek")
    (synopsis
     "Fast and Scalable Joint Estimator for Integrating Additional Knowledge in Learning Multiple Related Sparse Gaussian Graphical Models")
    (description
     "This package provides a fast and scalable joint estimator for integrating
additional knowledge in learning multiple related sparse Gaussian Graphical
Models (JEEK).  The JEEK algorithm can be used to fast estimate multiple related
precision matrices in a large-scale.  For instance, it can identify multiple
gene networks from multi-context gene expression datasets.  By performing
data-driven network inference from high-dimensional and heterogeneous data sets,
this tool can help users effectively translate aggregated data into knowledge
that take the form of graphs among entities.  Please run demo(jeek) to learn the
basic functions provided by this package.  For further details, please read the
original paper: Beilun Wang, Arshdeep Sekhon, Yanjun Qi \"A Fast and Scalable
Joint Estimator for Integrating Additional Knowledge in Learning Multiple
Related Sparse Gaussian Graphical Models\" (ICML 2018) <arXiv:1806.00548>.")
    (license license:gpl2)))

(define-public r-jds-rmd
  (package
    (name "r-jds-rmd")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jds.rmd" version))
              (sha256
               (base32
                "0mrldh031s5xirmpxr7dpjbz3ylcs7cavs3khhc0q5hhgq2zxydy"))))
    (properties `((upstream-name . "jds.rmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-bookdown))
    (home-page "https://github.com/wenjie2wang/jds.rmd")
    (synopsis "R Markdown Templates for Journal of Data Science")
    (description
     "Customized R Markdown templates for authoring articles for Journal of Data
Science.")
    (license license:gpl3+)))

(define-public r-jdmbs
  (package
    (name "r-jdmbs")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Jdmbs" version))
              (sha256
               (base32
                "14wprvxjyx1da1642z11wkzjiyxd5rbpaw1mzq4x6aw53dvh1kgv"))))
    (properties `((upstream-name . "Jdmbs")))
    (build-system r-build-system)
    (propagated-inputs (list r-png r-igraph r-ggplot2))
    (home-page "https://cran.r-project.org/package=Jdmbs")
    (synopsis
     "Monte Carlo Option Pricing Algorithms for Jump Diffusion Models with Correlational Companies")
    (description
     "Option is a one of the financial derivatives and its pricing is an important
problem in practice.  The process of stock prices are represented as Geometric
Brownian motion [Black (1973) <doi:10.1086/260062>] or jump diffusion processes
[Kou (2002) <doi:10.1287/mnsc.48.8.1086.166>].  In this package, algorithms and
visualizations are implemented by Monte Carlo method in order to calculate
European option price for three equations by Geometric Brownian motion and jump
diffusion processes and furthermore a model that presents jumps among companies
affect each other.")
    (license license:gpl2+)))

(define-public r-jcrimpactfactor
  (package
    (name "r-jcrimpactfactor")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JCRImpactFactor" version))
              (sha256
               (base32
                "1i7853i8k03nq7ax9rypm9qcl5qgyddblgbfjp3yxi1s3a6bkwk1"))))
    (properties `((upstream-name . "JCRImpactFactor")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr))
    (home-page "https://cran.r-project.org/package=JCRImpactFactor")
    (synopsis
     "Journal Citation Reports ('JCR') Impact Factor by 'Clarivate' 'Analytics'")
    (description
     "The Impact Factor of a journal reported by Journal Citation Reports ('JCR') of
Clarivate Analytics is provided.  The impact factor is available for those
journals only that were included Journal Citation Reports JCR'.")
    (license license:gpl3)))

(define-public r-jcp
  (package
    (name "r-jcp")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jcp" version))
              (sha256
               (base32
                "120hhysgnb5992ss2ays7ksyy0xb251lsxgnxihc11h2rqg6wqv8"))))
    (properties `((upstream-name . "jcp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jcp")
    (synopsis "Joint Change Point Detection")
    (description
     "Procedures for joint detection of changes in both expectation and variance in
univariate sequences.  Performs a statistical test of the null hypothesis of the
absence of change points.  In case of rejection performs an algorithm for change
point detection.  Reference - Bivariate change point detection - joint detection
of changes in expectation and variance, Scandinavian Journal of Statistics, DOI
10.1111/sjos.12547.")
    (license license:gpl3)))

(define-public r-jcolors
  (package
    (name "r-jcolors")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jcolors" version))
              (sha256
               (base32
                "18dmjcrci0z1xy2kglrarzm0idr9g3nhbbw7f1ijls3i0piqdri6"))))
    (properties `((upstream-name . "jcolors")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://jaredhuling.github.io/jcolors/")
    (synopsis
     "Colors Palettes for R and 'ggplot2', Additional Themes for 'ggplot2'")
    (description
     "This package contains a selection of color palettes and ggplot2 themes designed
by the package author.")
    (license license:gpl2)))

(define-public r-jcext
  (package
    (name "r-jcext")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jcext" version))
              (sha256
               (base32
                "02zppiyq3gy551zi1g00gam1w4y1wgzn5zi9wrcz8yw915dla0ix"))))
    (properties `((upstream-name . "jcext")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-sp
                             r-rworldmap
                             r-rcolorbrewer
                             r-maps
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=jcext")
    (synopsis "Extended Classification of Weather Types")
    (description
     "This package provides a gridded classification of weather types by applying the
Jenkinson and Collison classification.  For a given region (it can be either
local region or the whole map),it computes at each grid the 11 weather types
during the period considered for the analysis.  See Otero et al., (2017)
<doi:10.1007/s00382-017-3705-y> for more information.")
    (license license:gpl2+)))

(define-public r-jbrowser
  (package
    (name "r-jbrowser")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JBrowseR" version))
              (sha256
               (base32
                "08dqgi40l230cn0mp38zfcwv9fd5rawc8zmphf3klq5fkv861l7f"))))
    (properties `((upstream-name . "JBrowseR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-readr
                             r-reactr
                             r-mime
                             r-magrittr
                             r-jsonlite
                             r-ids
                             r-httpuv
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JBrowseR")
    (synopsis "An R Interface to the JBrowse 2 Genome Browser")
    (description
     "This package provides an R interface to the JBrowse 2 genome browser.  Enables
embedding a JB2 genome browser in a Shiny app or R Markdown document.  The
browser can also be launched from an interactive R console.  The browser can be
loaded with a variety of common genomics data types, and can be used with a
custom theme.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-jaya
  (package
    (name "r-jaya")
    (version "0.1.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Jaya" version))
              (sha256
               (base32
                "0b23l7xp4waxjy1vkk09xaali5axr5900v9hkki4f75wh4gb1l53"))))
    (properties `((upstream-name . "Jaya")))
    (build-system r-build-system)
    (propagated-inputs (list r-ga))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Jaya")
    (synopsis "Jaya, a Gradient-Free Optimization Algorithm")
    (description
     "Maximization or Minimization of a fitness function using Jaya Algorithm (JA).  A
population based method which repeatedly modifies a population of individual
solutions.  Capable of solving both constrained and unconstrained optimization
problems.  It does not contain any hyperparameters.  For further details: R.V.
Rao (2016) <doi:10.5267/j.ijiec.2015.8.004> .")
    (license license:gpl2+)))

(define-public r-javagd
  (package
    (name "r-javagd")
    (version "0.6-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JavaGD" version))
              (sha256
               (base32
                "1q48iykjzy22avmx0yy03vv9c7h87qsphg5hsrzfmx5gvck61m06"))))
    (properties `((upstream-name . "JavaGD")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjava))
    (home-page "http://www.rforge.net/JavaGD/")
    (synopsis "Java Graphics Device")
    (description
     "Graphics device routing all graphics commands to a Java program.  The actual
functionality of the JavaGD depends on the Java-side implementation.  Simple AWT
and Swing implementations are included.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-jatsdecoder
  (package
    (name "r-jatsdecoder")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JATSdecoder" version))
              (sha256
               (base32
                "1zvsx3970kr7ihmal5wsscwl9lqplknvx3pzgw1n89bc354xg140"))))
    (properties `((upstream-name . "JATSdecoder")))
    (build-system r-build-system)
    (propagated-inputs (list r-opennlp r-nlp))
    (home-page "https://github.com/ingmarboeschen/JATSdecoder")
    (synopsis "Metadata and Text Extraction and Manipulation Tool Set")
    (description
     "This package provides a function collection to extract metadata, sectioned text
and study characteristics from scientific articles in NISO-JATS format.
Articles in PDF format can be converted to NISO-JATS with the Content ExtRactor
and MINEr ('CERMINE', <https://github.com/CeON/CERMINE>).  For convenience, two
functions bundle the extraction heuristics: JATSdecoder() converts
NISO-JATS'-tagged XML files to a structured list with elements title, author,
journal, history, DOI', abstract, sectioned text and reference list.
study.character() extracts multiple study characteristics like number of
included studies, statistical methods used, alpha error, power, statistical
results, correction method for multiple testing, software used.  An estimation
of the involved sample size is performed based on reports within the abstract
and the reported degrees of freedom within statistical results.  In addition,
the package contains some useful functions to process text (text2sentences(),
text2num(), ngram(), strsplit2(), grep2()).  See BÃ¶schen, I. (2021)
<doi:10.1007/s11192-021-04162-z> and BÃ¶schen, I. (2021)
<doi:10.1038/s41598-021-98782-3>.")
    (license license:gpl3)))

(define-public r-jarbes
  (package
    (name "r-jarbes")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jarbes" version))
              (sha256
               (base32
                "0lx565m9abvai47ndpryxbhpsdnh76sbaf0mixpd58raqnysc26b"))))
    (properties `((upstream-name . "jarbes")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-rjags
                             r-r2jags
                             r-mcmcplots
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-ggextra))
    (home-page "https://cran.r-project.org/package=jarbes")
    (synopsis "Just a Rather Bayesian Evidence Synthesis")
    (description
     "This package provides a new class of Bayesian meta-analysis models that
incorporates a model for internal and external validity bias.  In this way, it
is possible to combine studies of diverse quality and different types.  For
example, we can combine the results of randomized control trials (RCTs) with the
results of observational studies (OS).")
    (license license:gpl2+)))

(define-public r-japanstat
  (package
    (name "r-japanstat")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "japanstat" version))
              (sha256
               (base32
                "0rd2q23s9r075ns47ccmr8fjvdcv2jncjs9w1c668s597cwkf6lb"))))
    (properties `((upstream-name . "japanstat")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-rlang
                             r-purrr
                             r-progress
                             r-pillar
                             r-httr
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/UchidaMizuki/japanstat")
    (synopsis "Tools for Easy Use of 'e-Stat' API")
    (description
     "This package provides tools for using the API of e-Stat
(<https://www.e-stat.go.jp/>), a portal site for Japanese government statistics.
 Includes functions for automatic query generation, data collection and
formatting.")
    (license license:expat)))

(define-public r-japanmesh
  (package
    (name "r-japanmesh")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "japanmesh" version))
              (sha256
               (base32
                "1p6kssz0q2zjx7yd4x7jf56n62nx4g8gmbc8v2din1mgks4rm614"))))
    (properties `((upstream-name . "japanmesh")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-units
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-lifecycle
                             r-geosphere
                             r-dplyr))
    (home-page "https://github.com/UchidaMizuki/japanmesh")
    (synopsis "Functions for the Japanese Regional Mesh Codes ('JIS X 0410')")
    (description
     "This package provides functions for the Japanese regional mesh codes defined in
JIS X 0410
(<https://www.jisc.go.jp/app/jis/general/GnrJISNumberNameSearchList?show&jisStdNo=X0410>).
 Conversion between regional mesh codes and longitude/latitude, and between mesh
codes of different scales.")
    (license license:expat)))

(define-public r-jaod
  (package
    (name "r-jaod")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jaod" version))
              (sha256
               (base32
                "071j3xqk7gzsic1sk8v0pwmqv6pav0nj9vvbskss3l1gczy80dfr"))))
    (properties `((upstream-name . "jaod")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-jsonlite r-crul))
    (home-page "https://docs.ropensci.org/jaod/")
    (synopsis "Directory of Open Access Journals Client")
    (description
     "Client for the Directory of Open Access Journals ('DOAJ') (<https://doaj.org/>).
 API documentation at <https://doaj.org/api/v1/docs>.  Methods included for
working with all DOAJ API routes: fetch article information by identifier,
search for articles, fetch journal information by identifier, and search for
journals.")
    (license license:expat)))

(define-public r-jamendor
  (package
    (name "r-jamendor")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JamendoR" version))
              (sha256
               (base32
                "0rrfbci413mqq53p5fyj8rjangdx21iyin6hzqkxyrxrv3n5mfbx"))))
    (properties `((upstream-name . "JamendoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/MaxGreil/JamendoR")
    (synopsis "Access to 'Jamendo' API")
    (description
     "This package provides an interface to Jamendo API
<https://developer.jamendo.com/v3.0>.  Pull audio, features and other
information for a given Jamendo user (including yourself!) or enter an artist's
-, album's -, or track's name and retrieve the available information in seconds.")
    (license license:expat)))

(define-public r-jalcal
  (package
    (name "r-jalcal")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jalcal" version))
              (sha256
               (base32
                "19smqrhvab8f2xb8pa8x6gmvr0r2lwvqisfahixs7aa8lxi708jw"))))
    (properties `((upstream-name . "jalcal")))
    (build-system r-build-system)
    (home-page "https://github.com/jalilian/jalcal")
    (synopsis
     "Conversion Between Jalali (Persian or Solar Hijri) and Gregorian Calendar Dates")
    (description
     "Jalali, also known as Persian, Solar Hijri and Hijri Shamsi calendar is the
official calendar of Iran and Afghanistan.  It begins on Nowruz, the March
equinox, as determined by astronomical calculation and has years of 365 or 366
days.  Adapting the algorithms in <https://jdf.scr.ir/>, this package provides
tools for converting the Jalali and Gregorian dates.")
    (license license:gpl2+)))

(define-public r-jagsui
  (package
    (name "r-jagsui")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jagsUI" version))
              (sha256
               (base32
                "1ig2v5k1xjggh694azr96cv80qapq8al7dhsjhvkx0dihp8kgad2"))))
    (properties `((upstream-name . "jagsUI")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-rjags r-coda))
    (home-page "https://github.com/kenkellner/jagsUI")
    (synopsis "Wrapper Around 'rjags' to Streamline 'JAGS' Analyses")
    (description
     "This package provides a set of wrappers around rjags functions to run Bayesian
analyses in JAGS (specifically, via libjags').  A single function call can
control adaptive, burn-in, and sampling MCMC phases, with MCMC chains run in
sequence or in parallel.  Posterior distributions are automatically summarized
(with the ability to exclude some monitored nodes if desired) and functions are
available to generate figures based on the posteriors (e.g., predictive check
plots, traceplots).  Function inputs, argument syntax, and output format are
nearly identical to the R2WinBUGS'/'R2OpenBUGS packages to allow easy switching
between MCMC samplers.")
    (license license:gpl3)))

(define-public r-jagstargets
  (package
    (name "r-jagstargets")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jagstargets" version))
              (sha256
               (base32
                "08940ki6rfs014kkwsdsnvp45zd52j217n8y0z6mch8kpyawyial"))))
    (properties `((upstream-name . "jagstargets")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-targets
                             r-tarchetypes
                             r-rlang
                             r-rjags
                             r-r2jags
                             r-qs
                             r-purrr
                             r-posterior
                             r-fst
                             r-digest
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/jagstargets/")
    (synopsis "Targets for JAGS Workflows")
    (description
     "Bayesian data analysis usually incurs long runtimes and cumbersome custom code.
A pipeline toolkit tailored to Bayesian statisticians, the jagstargets R package
is leverages targets and R2jags to ease this burden.  jagstargets makes it super
easy to set up scalable JAGS pipelines that automatically parallelize the
computation and skip expensive steps when the results are already up to date.
Minimal custom code is required, and there is no need to manually configure
branching, so usage is much easier than targets alone.  For the underlying
methodology, please refer to the documentation of targets
<doi:10.21105/joss.02959> and JAGS (Plummer 2003)
<https://www.r-project.org/conferences/DSC-2003/Proceedings/Plummer.pdf>.")
    (license license:expat)))

(define-public r-jagshelper
  (package
    (name "r-jagshelper")
    (version "0.1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jagshelper" version))
              (sha256
               (base32
                "0n8jzzqy4zpzqx461dkma5sg4hvdr15hz2xg1jy7dhf6gz4yljls"))))
    (properties `((upstream-name . "jagshelper")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-jagsui))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jagshelper")
    (synopsis "Extracting and Visualizing Output from 'jagsUI'")
    (description
     "Tools are provided to streamline Bayesian analyses in JAGS using the jagsUI
package.  Included are functions for extracting output in simpler format,
functions for streamlining assessment of convergence, and functions for
producing summary plots of output.  Also included is a function that provides a
simple template for running JAGS from R'.  Referenced materials can be found at
<DOI:10.1214/ss/1177011136>.")
    (license license:gpl2)))

(define-public r-jaggr
  (package
    (name "r-jaggr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jaggR" version))
              (sha256
               (base32
                "0qd4kwcc8zcvg2p1njcv7z4y5ssg77zsylph5bcaqdjxq996q7rv"))))
    (properties `((upstream-name . "jaggR")))
    (build-system r-build-system)
    (propagated-inputs (list r-glue r-formatr))
    (home-page "https://cran.r-project.org/package=jaggR")
    (synopsis
     "Supporting Files and Functions for the Book Bayesian Modelling with 'JAGS'")
    (description
     "All the data and functions used to produce the book.  We do not expect most
people to use the package for any other reason than to get simple access to the
JAGS model files, the data, and perhaps run some of the simple examples.  The
authors of the book are David Lucy (now sadly deceased) and James Curran.  It is
anticipated that a manuscript will be provided to Taylor and Francis around
February 2020, with bibliographic details to follow at that point.  Until such
time, further information can be obtained by emailing James Curran.")
    (license license:gpl2+)))

(define-public r-jadelizardoptions
  (package
    (name "r-jadelizardoptions")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jadeLizardOptions" version))
              (sha256
               (base32
                "1919qm9b5nb6bjwbqhsnimgn5lhcrrhd90ndnsc9kj3z3khw9mkd"))))
    (properties `((upstream-name . "jadeLizardOptions")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-magrittr r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=jadeLizardOptions")
    (synopsis "Trading Jade Lizard Option Strategies")
    (description
     "Jade Lizard and Reverse Jade Lizard Option Strategies are presented here through
their Graphs.  The graphic indicators, strategies, calculations, functions and
all the discussions are for academic, research, and educational purposes only
and should not be construed as investment advice and come with absolutely no
Liability.  Russell A. Stultz (âThe option strategy desk reference: an
essential reference for option traders (First edition.)â, 2019, ISBN:
9781949443912).")
    (license license:gpl3)))

(define-public r-jade
  (package
    (name "r-jade")
    (version "2.0-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JADE" version))
              (sha256
               (base32
                "1fj2wawx5ac1fvlp28naqha0i17f1sb47j2qqzgccvx17ycqmmjn"))))
    (properties `((upstream-name . "JADE")))
    (build-system r-build-system)
    (propagated-inputs (list r-clue))
    (home-page "https://cran.r-project.org/package=JADE")
    (synopsis
     "Blind Source Separation Methods Based on Joint Diagonalization and Some BSS Performance Criteria")
    (description
     "Cardoso's JADE algorithm as well as his functions for joint diagonalization are
ported to R. Also several other blind source separation (BSS) methods, like
AMUSE and SOBI, and some criteria for performance evaluation of BSS algorithms,
are given.  The package is described in Miettinen, Nordhausen and Taskinen
(2017) <doi:10.18637/jss.v076.i02>.")
    (license license:gpl2+)))

(define-public r-jacpop
  (package
    (name "r-jacpop")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jacpop" version))
              (sha256
               (base32
                "0kq6rn33civ2g6i5nwfqvcgmnn5k2dwmw60lkmz4ywm0y4xxlkai"))))
    (properties `((upstream-name . "jacpop")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=jacpop")
    (synopsis "Jaccard Index for Population Structure Identification")
    (description
     "Uses the Jaccard similarity index to account for population structure in
sequencing studies.  This method was specifically designed to detect population
stratification based on rare variants, hence it will be especially useful in
rare variant analysis.")
    (license license:gpl3)))

(define-public r-jacobieigen
  (package
    (name "r-jacobieigen")
    (version "0.3-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "JacobiEigen" version))
              (sha256
               (base32
                "1jm63w2jn89pk725x3d9myq010mb0g5ir8vhv29mkiwgrqig6iw1"))))
    (properties `((upstream-name . "JacobiEigen")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JacobiEigen")
    (synopsis "Classical Jacobi Eigenvalue Algorithm")
    (description
     "This package implements the classical Jacobi algorithm for the eigenvalues and
eigenvectors of a real symmetric matrix, both in pure R and in C++ using Rcpp'.
Mainly as a programming example for teaching purposes.")
    (license license:gpl2+)))

(define-public r-jacobi
  (package
    (name "r-jacobi")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jacobi" version))
              (sha256
               (base32
                "14nd9bq09674jqbq20q8j7mphw68x2clnh7am1nwfghbjgv2l60c"))))
    (properties `((upstream-name . "jacobi")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvcg r-rgl r-rcpp r-carlson))
    (home-page "https://github.com/stla/jacobi")
    (synopsis "Jacobi Theta Functions and Related Functions")
    (description
     "Evaluation of the Jacobi theta functions and related functions: Weierstrass
elliptic function, Weierstrass sigma function, Weierstrass zeta function, Klein
j-function, Dedekind eta function, lambda modular function, Jacobi elliptic
functions, Neville theta functions, and Eisenstein series.  Complex values of
the variable are supported.")
    (license license:gpl3)))

(define-public r-jackstrap
  (package
    (name "r-jackstrap")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jackstrap" version))
              (sha256
               (base32
                "09y9pgb920lnbzlgm6j188q8lw1air83kx383a2f89zz7hhgg7jr"))))
    (properties `((upstream-name . "jackstrap")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rlang
                             r-reshape
                             r-plyr
                             r-ggplot2
                             r-foreach
                             r-fbasics
                             r-dplyr
                             r-doparallel
                             r-benchmarking))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jackstrap")
    (synopsis "Correcting Nonparametric Frontier Measurements for Outliers")
    (description
     "This package provides method used to check whether data have outlier in
efficiency measurement of big samples with data envelopment analysis (DEA).  In
this jackstrap method, the package provides two criteria to define outliers:
heaviside and k-s test.  The technique was developed by Sousa and Stosic (2005)
\"Technical Efficiency of the Brazilian Municipalities: Correcting Nonparametric
Frontier Measurements for Outliers.\" <doi:10.1007/s11123-005-4702-4>.")
    (license license:gpl3)))

(define-public r-jackknifekme
  (package
    (name "r-jackknifekme")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jackknifeKME" version))
              (sha256
               (base32
                "0c5shl6s46kz7a623gccqk2plrrf2g29nwr6vbny6009pq3jvzam"))))
    (properties `((upstream-name . "jackknifeKME")))
    (build-system r-build-system)
    (propagated-inputs (list r-imputeyn))
    (home-page "https://cran.r-project.org/package=jackknifeKME")
    (synopsis "Jackknife Estimates of Kaplan-Meier Estimators or Integrals")
    (description
     "Computing the original and modified jackknife estimates of Kaplan-Meier
estimators.")
    (license license:gpl2)))

(define-public r-jackalope
  (package
    (name "r-jackalope")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jackalope" version))
              (sha256
               (base32
                "1cslrl2cvcpi2kisb2plkz8c3wfxkbkf816nnyb06k4mv3gy4r5d"))))
    (properties `((upstream-name . "jackalope")))
    (build-system r-build-system)
    (inputs (list zlib))
    (propagated-inputs (list r-zlibbioc
                             r-rhtslib
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-r6
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lucasnell/jackalope")
    (synopsis
     "Swift, Versatile Phylogenomic and High-Throughput Sequencing Simulator")
    (description
     "Simply and efficiently simulates (i) variants from reference genomes and (ii)
reads from both Illumina <https://www.illumina.com/> and Pacific Biosciences
(PacBio) <https://www.pacb.com/> platforms.  It can either read reference
genomes from FASTA files or simulate new ones.  Genomic variants can be
simulated using summary statistics, phylogenies, Variant Call Format (VCF)
files, and coalescent simulationsâthe latter of which can include selection,
recombination, and demographic fluctuations.  jackalope can simulate single,
paired-end, or mate-pair Illumina reads, as well as PacBio reads.  These
simulations include sequencing errors, mapping qualities, multiplexing, and
optical/polymerase chain reaction (PCR) duplicates.  Simulating Illumina
sequencing is based on ART by Huang et al. (2012)
<doi:10.1093/bioinformatics/btr708>.  PacBio sequencing simulation is based on
SimLoRD by StÃ¶cker et al. (2016) <doi:10.1093/bioinformatics/btw286>.  All
outputs can be written to standard file formats.")
    (license license:expat)))

(define-public r-jack
  (package
    (name "r-jack")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jack" version))
              (sha256
               (base32
                "191daxlkkz4494nvnqq6rdk8gkm6ial39cp63dfmkhhd021ay9ld"))))
    (properties `((upstream-name . "jack")))
    (build-system r-build-system)
    (propagated-inputs (list r-ryacas
                             r-partitions
                             r-mvp
                             r-multicool
                             r-juliaconnector
                             r-gmpoly
                             r-gmp
                             r-desctools))
    (home-page "https://github.com/stla/jackR")
    (synopsis "Jack, Zonal, and Schur Polynomials")
    (description
     "Symbolic calculation and evaluation of the Jack polynomials, zonal polynomials,
and Schur polynomials.  Mainly based on Demmel & Koev's paper (2006)
<doi:10.1090/S0025-5718-05-01780-1>.  Zonal polynomials and Schur polynomials
are particular cases of Jack polynomials.  Zonal polynomials appear in random
matrix theory.  Schur polynomials appear in the field of combinatorics.")
    (license license:gpl3)))

(define-public r-jaccard
  (package
    (name "r-jaccard")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jaccard" version))
              (sha256
               (base32
                "1dmla6qc1k8iw2d7zfjqhf13gqd2lpsrj09yh47ljf994fpab936"))))
    (properties `((upstream-name . "jaccard")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-qvalue r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=jaccard")
    (synopsis
     "Test Similarity Between Binary Data using Jaccard/Tanimoto Coefficients")
    (description
     "Calculate statistical significance of Jaccard/Tanimoto similarity coefficients
for binary data.")
    (license license:gpl2)))

(define-public r-jab-adverse-reactions
  (package
    (name "r-jab-adverse-reactions")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jab.adverse.reactions" version))
              (sha256
               (base32
                "0z7i6ni1bhih5yxwng1xxf8cgg3bb1il3p32rp5vfz2hfdm68vag"))))
    (properties `((upstream-name . "jab.adverse.reactions")))
    (build-system r-build-system)
    (home-page "https://gitlab.com/iembry/jab.adverse.reactions")
    (synopsis
     "Possible Adverse Events/Reactions from the Vaccinations/Experimental Gene Therapies")
    (description
     "This package provides data about the possible adverse events/reactions resulting
from being injected with a vaccine/experimental gene therapy.  Currently, this
data set only includes information from six reference sources.  Refer to the
CITATION.cff file for the complete citations of the reference sources.  For
information about vaccination$/immunization$ hazards, visit
<https://www.questionuniverse.com/rethink.html#vaccine>,
<https://www.ecoccs.com/healing.html#vaccines>,
<https://www.questionuniverse.com/rethink_current_crisis.html#cov_vaccin>, and
<https://www.questionuniverse.com/vaccination.html>.")
    (license (list license:gpl3+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-jaatha
  (package
    (name "r-jaatha")
    (version "3.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "jaatha" version))
              (sha256
               (base32
                "1if21hlbf0gz6p6f9h21cxdxcqxv3b54wx5zl4hmiaq9i6zrf8rr"))))
    (properties `((upstream-name . "jaatha")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statgenlmu/jaatha")
    (synopsis "Simulation-Based Maximum Likelihood Parameter Estimation")
    (description
     "An estimation method that can use computer simulations to approximate
maximum-likelihood estimates even when the likelihood function can not be
evaluated directly.  It can be applied whenever it is feasible to conduct many
simulations, but works best when the data is approximately Poisson distributed.
It was originally designed for demographic inference in evolutionary biology
(Naduvilezhath et al., 2011 <doi:10.1111/j.1365-294X.2011.05131.x>, Mathew et
al., 2013 <doi:10.1002/ece3.722>).  It has optional support for conducting
coalescent simulation using the coala package.")
    (license license:gpl3+)))

