(define-module (guix-cran packages j)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages web)
  #:use-module (gnu packages maths)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages julia)
  #:use-module (gnu packages java)
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
    (version "1.4.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JWileymisc" version))
       (sha256
        (base32 "18ikbbfvpgsm7diwp4w4qf3r6iyxdcyylgqbzdr39b18rdnv4z5l"))))
    (properties `((upstream-name . "JWileymisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vgam
                             r-scales
                             r-robustbase
                             r-rlang
                             r-psych
                             r-multcompview
                             r-mice
                             r-mgcv
                             r-mass
                             r-lme4
                             r-lavaan
                             r-ggpubr
                             r-ggplot2
                             r-gamlss
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

(define-public r-jvcoords
  (package
    (name "r-jvcoords")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jvcoords" version))
       (sha256
        (base32 "1ixmz3pj18zddgah59iqd4zbm5praw0dvn6c93dn5mrwx92pa65c"))))
    (properties `((upstream-name . "jvcoords")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/seehuhn/jvcoords")
    (synopsis "Principal Component Analysis (PCA) and Whitening")
    (description
     "This package provides functions to standardize and whiten data, and to perform
Principal Component Analysis (PCA).  The main advantage of this package over
alternatives like @code{prcomp()} is, that jvcoords makes it easy to convert
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
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JustifyAlpha" version))
       (sha256
        (base32 "176bawmq9bi0qlzdqxkws7iaspd9p1818z8snx4yf8y9id5q0fd6"))))
    (properties `((upstream-name . "JustifyAlpha")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-shiny r-qpdf r-ggplot2 r-bayesfactor))
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
    (version "0.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "justifier" version))
       (sha256
        (base32 "1skj6dxflfv4fap62xzvidrrhgl55cc8r6gg9kp1acmq9bwzzxy8"))))
    (properties `((upstream-name . "justifier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yum
                             r-yaml
                             r-purrr
                             r-diagrammersvg
                             r-diagrammer
                             r-data-tree))
    (native-inputs (list r-knitr))
    (home-page "https://justifier.opens.science")
    (synopsis
     "Human and Machine-Readable Justifications and Justified Decisions Based on 'YAML'")
    (description
     "Leverages the yum package to implement a YAML ('YAML Ain't Markup Language', a
human friendly standard for data serialization; see <https://yaml.org>) standard
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "just.install" version))
       (sha256
        (base32 "1g82g4lhdk8mf1v4j47y2pgdrryz4175djx42kmg85vw7mlpvlcj"))))
    (properties `((upstream-name . "just.install")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "junctions" version))
       (sha256
        (base32 "0pmh7993fh8f7f6q1g5djcpv1b6mmhigk1k2222rzh46m4zp1ciq"))))
    (properties `((upstream-name . "junctions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-rcppparallel r-rcpp r-nloptr))
    (native-inputs (list r-knitr))
    (home-page "https://thijsjanzen.github.io/junctions/")
    (synopsis "The Breakdown of Genomic Ancestry Blocks in Hybrid Lineages")
    (description
     "Individual based simulations of hybridizing populations, where the accumulation
of junctions is tracked.  Furthermore, mathematical equations are provided to
verify simulation outcomes.  Both simulations and mathematical equations are
based on Janzen (2018, <doi:10.1101/058107>) and Janzen (2022,
<doi:10.1111/1755-0998.13519>).")
    (license license:gpl2+)))

(define-public r-junco
  (package
    (name "r-junco")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "junco" version))
       (sha256
        (base32 "0rjzgkhqrw869av1bdsilmiyvdw64dh0h2alydybx4mmpp3aygbp"))))
    (properties `((upstream-name . "junco")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-vcdextra
                             r-tidytlg
                             r-tibble
                             r-tern
                             r-systemfonts
                             r-survival
                             r-stringi
                             r-rtables-officer
                             r-rtables
                             r-rlistings
                             r-rbmi
                             r-officer
                             r-mmrm
                             r-ggplot2
                             r-generics
                             r-formatters
                             r-flextable
                             r-emmeans
                             r-dplyr
                             r-checkmate
                             r-broom
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/johnsonandjohnson/junco")
    (synopsis "Create Common Tables and Listings Used in Clinical Trials")
    (description
     "Structure and formatting requirements for clinical trial table and listing
outputs vary between pharmaceutical companies.  junco provides additional
tooling for use alongside the rtables', rlistings and tern packages when
creating table and listing outputs.  While motivated by the specifics of Johnson
and Johnson Clinical and Statistical Programming's table and listing shells,
junco provides functionality that is general and reusable.  Major features
include a) alternative and extended statistical analyses beyond what tern
supports for use in standard safety and efficacy tables, b) a robust
production-grade Rich Text Format (RTF) exporter for both tables and listings,
c) structural support for spanning column headers and risk difference columns in
tables, and d) robust font-aware automatic column width algorithms for both
listings and tables.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-jumps
  (package
    (name "r-jumps")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jumps" version))
       (sha256
        (base32 "14gczjxfs7m3kn4smxl8l66c1m4iz9d710hx8gn167g0hr1kijv6"))))
    (properties `((upstream-name . "jumps")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp r-nloptr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jumps")
    (synopsis "Hodrick-Prescott Filter with Jumps")
    (description
     "This package provides a set of functions to compute the Hodrick-Prescott (HP)
filter with automatically selected jumps.  The original HP filter extracts a
smooth trend from a time series, and our version allows for a small number of
automatically identified jumps.  See Maranzano and Pelagatti (2024)
<doi:10.2139/ssrn.4896170> for details.")
    (license license:gpl3)))

(define-public r-jump
  (package
    (name "r-jump")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JUMP" version))
       (sha256
        (base32 "0gpp464xiv08k7q4zvszlpkpnrxjd1d2ha660qf0jy6dcqiy5ib9"))))
    (properties `((upstream-name . "JUMP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=JUMP")
    (synopsis "Replicability Analysis of High-Throughput Experiments")
    (description
     "Implementing a computationally scalable false discovery rate control procedure
for replicability analysis based on maximum of p-values.  Please cite the
manuscript corresponding to this package [Lyu, P. et al., (2023),
<doi:10.1093/bioinformatics/btad366>].")
    (license license:gpl3)))

(define-public r-juliaformulae
  (package
    (name "r-juliaformulae")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JuliaFormulae" version))
       (sha256
        (base32 "0m1rn9ix66p5qgzhvlw1a7j91k21pc6kmfjr3p1c62fq6jdrzgip"))))
    (properties `((upstream-name . "JuliaFormulae")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rrapply))
    (home-page "https://cran.r-project.org/package=JuliaFormulae")
    (synopsis "Translate R Regression Model Formulae to 'Julia' Syntax")
    (description
     "Metaprogramming utilities for converting R regression model formulae to
equivalents in Julia <doi:10.1137/141000671>, via modifications to the abstract
syntax tree.  Supports translations in zero correlation random effects syntax,
protection of expressions to be evaluated as-is, interaction terms, and more.
Accepts strings or R formula objects and returns modified R formula objects
where possible (or a modified string, if not a valid formula in R).")
    (license license:expat)))

(define-public r-juliaconnector
  (package
    (name "r-juliaconnector")
    (version "1.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JuliaConnectoR" version))
       (sha256
        (base32 "0ql1qwkcc7gyaj0knmsyzr1lnxsk7n2wdfpam56fwmpaidkv1drv"))))
    (properties `((upstream-name . "JuliaConnectoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.17.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JuliaCall" version))
       (sha256
        (base32 "0qws98k7byqk3cq041pbnnhxywf35vy4ldv9v5zyykfgq2g0v061"))))
    (properties `((upstream-name . "JuliaCall")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-rjson r-rcpp r-knitr))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/JuliaInterop/JuliaCall")
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
    (version "1.3.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Julia" version))
       (sha256
        (base32 "0ynzxflz92y38z7bl9g8nhrgvz2ay716izpya398b29h4qfb1w4r"))))
    (properties `((upstream-name . "Julia")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "juicyjuice" version))
       (sha256
        (base32 "0ap1nsyihlagc1yqvwr2x9s16kzb3c8azfi50mzv95275a5l3xb4"))))
    (properties `((upstream-name . "juicyjuice")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
@code{JavaScript} juice library.")
    (license license:expat)))

(define-public r-juicr
  (package
    (name "r-juicr")
    (version "0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "juicr" version))
       (sha256
        (base32 "13iwyc5jmpa6djchxm83fvhqpz9b1m6jmczh8wic7d4ifncjfmw1"))))
    (properties `((upstream-name . "juicr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-xml r-rcurl))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/mjlajeunesse/")
    (synopsis
     "Automated and Manual Extraction of Numerical Data from Scientific Images")
    (description
     "This package provides a GUI interface for automating data extraction from
multiple images containing scatter and bar plots, semi-automated tools to tinker
with extraction attempts, and a fully-loaded point-and-click manual extractor
with image zoom, calibrator, and classifier.  Also provides detailed and
R-independent extraction reports as fully-embedded .html records.")
    (license license:gpl2+)))

(define-public r-juicedown
  (package
    (name "r-juicedown")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "juicedown" version))
       (sha256
        (base32 "03wvsq3h29xbmxvyf68wfs292dzqwnwqs4jd541l0d3fvi8kq8lw"))))
    (properties `((upstream-name . "juicedown")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-xfun
                             r-stringr
                             r-sass
                             r-rvest
                             r-rlang
                             r-markdown
                             r-knitr
                             r-juicyjuice
                             r-glue
                             r-dplyr
                             r-clipr))
    (home-page "https://kenjisato.github.io/juicedown/")
    (synopsis
     "'juice' + 'markdown': Convert 'R Markdown' into 'HTML' with Inline Styles")
    (description
     "This package provides a convenience tool to create HTML with inline styles using
juicyjuice and markdown packages.  It is particularly useful when working on a
content management system (CMS) whose code editor eliminates style and link
tags.  The main use case of the package is the learning management system,
Moodle'.  Additional helper functions for teaching purposes are provided.  Learn
more about juicedown at <https://kenjisato.github.io/juicedown/>.")
    (license license:expat)))

(define-public r-jubilee
  (package
    (name "r-jubilee")
    (version "0.3.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jubilee" version))
       (sha256
        (base32 "1j2y44pfx9z2k169lh42b4dnfrrnk8jqsjn3wz4l9iscr6r91lx7"))))
    (properties `((upstream-name . "jubilee")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xts
                             r-readxl
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-r-rsp))
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
    (version "2.3.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jtools" version))
       (sha256
        (base32 "05bh9rjqnvqczxi35lsyjy4j6caw7s0yjafc2nl19rz89z1hpfzc"))))
    (properties `((upstream-name . "jtools")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-sandwich
                             r-rlang
                             r-pkgconfig
                             r-pander
                             r-magrittr
                             r-ggplot2
                             r-generics
                             r-cli
                             r-broom-mixed
                             r-broom))
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
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jti" version))
       (sha256
        (base32 "1m7c0b4n9l8nbqgi4xgqkdxrn2k3zl0l2gi2gba03bgd6kdphq6j"))))
    (properties `((upstream-name . "jti")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-sparta r-rcpparmadillo r-rcpp r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlindsk/jti")
    (synopsis "Junction Tree Inference")
    (description
     "Minimal and memory efficient implementation of the junction tree algorithm using
the Lauritzen-Spiegelhalter scheme; S. L. Lauritzen and D. J. Spiegelhalter
(1988) <https://www.jstor.org/stable/2345762?seq=1>.  The jti package is part of
the paper <doi:10.18637/jss.v111.i02>.")
    (license license:gpl3)))

(define-public r-jtdm
  (package
    (name "r-jtdm")
    (version "0.1-3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jtdm" version))
       (sha256
        (base32 "14v0nvrfvxqf1lxcshk2apfkksnqgjvyg8kiybksnb1kpzrsnwm6"))))
    (properties `((upstream-name . "jtdm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-reshape2
                             r-mvtnorm
                             r-mniw
                             r-gridextra
                             r-ggplot2
                             r-ggforce))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/giopogg/jtdm")
    (synopsis "Joint Modelling of Functional Traits")
    (description
     "Fitting and analyzing a Joint Trait Distribution Model.  The Joint Trait
Distribution Model is implemented in the Bayesian framework using conjugate
priors and posteriors, thus guaranteeing fast inference.  In particular the
package computes joint probabilities and multivariate confidence intervals, and
enables the investigation of how they depend on the environment through partial
response curves.  The method implemented by the package is described in Poggiato
et al. (2023) <doi:10.1111/geb.13706>.")
    (license license:gpl3)))

(define-public r-jsutils
  (package
    (name "r-jsutils")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsutils" version))
       (sha256
        (base32 "0la268d5ysb5c668bbyi25k28nrfwjjsqhrq7xmzm9lafqx1r4zl"))))
    (properties `((upstream-name . "jsutils")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quickjsr))
    (home-page "https://github.com/andrjohns/QuickJSR")
    (synopsis "'JavaScript' Utilities for 'R'")
    (description
     "This package provides a collection of popular/useful @code{JavaScript}
utilities, including the terser minifier, sass compiler, typescript transpiler,
and more.")
    (license license:expat)))

(define-public r-jsuparameters
  (package
    (name "r-jsuparameters")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSUparameters" version))
       (sha256
        (base32 "0jikzazdp6id72d5csplhsa2yrm9cb02f00bfzriyhgfl43v09mh"))))
    (properties `((upstream-name . "JSUparameters")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=JSUparameters")
    (synopsis "Estimate Parameters of the Best-Fitting JohnsonSU Distribution")
    (description
     "Uses least squares optimisation to estimate the parameters of the best-fitting
@code{JohnsonSU} distribution for a given dataset, with the possibility of the
distributions corresponding to the limiting cases of the @code{JohnsonSU}
distribution.  The code for the Golden Section Search used in the optimisation
has been adapted from E. Cai.  This package has been created as an extension of
my Master's thesis.  E. Cai (2013, \"Scripts and Functions: Using R to Implement
the Golden Section Search Method for Numerical Optimization\",
<https://chemicalstatistician.wordpress.com/2013/04/22/using-r-to-implement-the-golden-bisection-method/>).")
    (license license:gpl3+)))

(define-public r-jstreer
  (package
    (name "r-jstreer")
    (version "2.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsTreeR" version))
       (sha256
        (base32 "1wck0wnj41qs3cjjmp4b8bnjy7l736k5xqq89al40am0ixnf86bs"))))
    (properties `((upstream-name . "jsTreeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (native-inputs (list esbuild))
    (home-page "https://github.com/stla/jsTreeR")
    (synopsis "Wrapper of the JavaScript Library 'jsTree'")
    (description
     "This package creates interactive trees that can be included in Shiny apps and R
markdown documents.  A tree allows to represent hierarchical data (e.g. the
contents of a directory).  Similar to the @code{shinyTree} package but offers
more features and options, such as the grid extension, restricting the
drag-and-drop behavior, and settings for the search functionality.  It is
possible to attach some data to the nodes of a tree and then to get these data
in Shiny when a node is selected.  Also provides a Shiny gadget allowing to
manipulate one or more folders, and a Shiny module allowing to navigate in the
server side file system.")
    (license license:gpl3)))

(define-public r-jstree
  (package
    (name "r-jstree")
    (version "1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsTree" version))
       (sha256
        (base32 "06mmz55brm6w19vnlk1w8qaz0n3czlyl4fs62nzgdlsdjn8pad1h"))))
    (properties `((upstream-name . "jsTree")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-jsonlite r-htmlwidgets r-htmltools r-data-table))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://github.com/yonicd/jsTree")
    (synopsis "Create Interactive Trees with the 'jQuery' 'jsTree' Plugin")
    (description
     "Create and customize interactive trees using the @code{jQuery} @code{jsTree}
<https://www.jstree.com/> plugin library and the htmlwidgets package.  These
trees can be used directly from the R console, from RStudio', in Shiny apps and
R Markdown documents.")
    (license license:expat)))

(define-public r-jstager
  (package
    (name "r-jstager")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jstager" version))
       (sha256
        (base32 "136qzh5ymag7m6vyn9qq7yc9i3i4izlx6780ysvkkxclwamvc7rg"))))
    (properties `((upstream-name . "jstager")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-tibble
                             r-rvest
                             r-purrr
                             r-openxlsx
                             r-httr
                             r-dplyr
                             r-chromote))
    (home-page "https://github.com/takeshinishimura/jstager")
    (synopsis "Retrieve Information Published on J-STAGE")
    (description
     "This package provides tools to access the J-STAGE @code{WebAPI} and retrieve
information published on J-STAGE <https://www.jstage.jst.go.jp/browse/-char/ja>.")
    (license license:expat)))

(define-public r-jstable
  (package
    (name "r-jstable")
    (version "1.3.23")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jstable" version))
       (sha256
        (base32 "05rw8zpv42k24nmpf4913gm6az13yd43qz7pwr1l48kxmx3sbhqh"))))
    (properties `((upstream-name . "jstable")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble
                             r-tableone
                             r-survival
                             r-survey
                             r-rlang
                             r-purrr
                             r-nortest
                             r-magrittr
                             r-lmertest
                             r-lme4
                             r-labelled
                             r-geepack
                             r-dplyr
                             r-data-table
                             r-coxme
                             r-car))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSparO" version))
       (sha256
        (base32 "0n13arzf063x0sw0kmm86bny440jpijan4lh1ikxayrz2skg8zbz"))))
    (properties `((upstream-name . "JSparO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma))
    (home-page "https://cran.r-project.org/package=JSparO")
    (synopsis
     "Joint Sparse Optimization via Proximal Gradient Method for Cell Fate Conversion")
    (description
     "Implementation of joint sparse optimization (J@code{SparO}) to infer the gene
regulatory network for cell fate conversion.  The proximal gradient method is
implemented to solve different low-order regularization models for
J@code{SparO}.")
    (license license:gpl3+)))

(define-public r-jsonstat
  (package
    (name "r-jsonstat")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsonstat" version))
       (sha256
        (base32 "0p0d3snl1971p5ikrkmwqrjjh4fy0b89qk3rnd1dayfb0r80xnnj"))))
    (properties `((upstream-name . "jsonstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-jsonlite r-dplyr r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zedoul/jsonstat")
    (synopsis "Interface to 'JSON-stat'")
    (description
     "Interface to JSON-stat <https://json-stat.org/>, a simple lightweight JSON
format for data dissemination.")
    (license license:expat)))

(define-public r-jsonnormalize
  (package
    (name "r-jsonnormalize")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsonNormalize" version))
       (sha256
        (base32 "1szvi8c0r75jv7y2y1jsampb783svvx04x4rvyw8v9qkiw0qpfis"))))
    (properties `((upstream-name . "jsonNormalize")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-v8 r-rstudioapi))
    (home-page "https://github.com/stla/jsonNormalize")
    (synopsis "Normalization of 'JSON' Strings")
    (description
     "This package provides a function allowing to normalize a JSON string, for
example by adding double quotes around the keys when they are missing.  Also
provides RStudio addins for the same purpose.")
    (license license:gpl3)))

(define-public r-jsonld
  (package
    (name "r-jsonld")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsonld" version))
       (sha256
        (base32 "1jjshi7bb2sxs6is5130ayqz6k1adn5w2yi7pnbjbvlpnpx2hdgx"))))
    (properties `((upstream-name . "jsonld")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-v8 r-jsonlite r-curl))
    (native-inputs (list esbuild))
    (home-page "https://docs.ropensci.org/jsonld/")
    (synopsis "JSON for Linking Data")
    (description
     "JSON-LD <https://www.w3.org/TR/json-ld/> is a light-weight syntax for expressing
linked data.  It is primarily intended for web-based programming environments,
interoperable web services and for storing linked data in JSON-based databases.
This package provides bindings to the @code{JavaScript} library for converting,
expanding and compacting JSON-LD documents.")
    (license license:bsd-3)))

(define-public r-json64
  (package
    (name "r-json64")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "json64" version))
       (sha256
        (base32 "19q8qgf4wnd3np12ajy180klpjy0g2csw5micwb4sl7qfzl6wc7j"))))
    (properties `((upstream-name . "json64")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite))
    (home-page "https://cran.r-project.org/package=json64")
    (synopsis
     "'Base64' Encode/Decode Package with Support for JSON Output/Input and UTF-8")
    (description
     "Encode/Decode base64', with support for JSON format, using two functions:
@code{j_encode()} and @code{j_decode()}.  Base64 is a group of similar
binary-to-text encoding schemes that represent binary data in an ASCII string
format by translating it into a radix-64 representation, used when there is a
need to encode binary data that needs to be stored and transferred over media
that are designed to deal with textual data, ensuring that the data will remain
intact and without modification during transport.
<https://developer.mozilla.org/en-US/docs/Web/API/@code{WindowBase64/Base64_encoding_and_decoding>}
On the other side, JSON (@code{JavaScript} Object Notation) is a lightweight
data-interchange format.  Easy to read, write, parse and generate.  It is based
on a subset of the @code{JavaScript} Programming Language.  JSON is a text
format that is completely language independent but uses conventions that are
familiar to programmers of the C-family of languages, including C, C++, C#,
Java, @code{JavaScript}, Perl, Python, and many others.  JSON structure is built
around name:value pairs and ordered list of values. <https://www.json.org> The
first function, @code{j_encode()}, let you transform a data.frame or list to a
base64 encoded JSON (or JSON string).  The @code{j_decode()} function takes a
base64 string (could be an encoded JSON) and transform it to a data.frame (or
list, depending of the JSON structure).")
    (license license:expat)))

(define-public r-json2args
  (package
    (name "r-json2args")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "json2aRgs" version))
       (sha256
        (base32 "0n1kj1kll6x7ar00y32pf8z38z7z1bnj29nlv9dx068n4kmy89v7"))))
    (properties `((upstream-name . "json2aRgs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yaml r-jsonlite))
    (home-page "https://github.com/VForWaTer/json2aRgs")
    (synopsis "Parse Parameters Inside a Docker Container")
    (description
     "The function @code{get_parameters()} is intended to be used within a docker
container to read keyword arguments from a .json file automagically.  A
tool.yaml file contains specifications on these keyword arguments, which are
then passed as input to containerized R tools in the [tool-runner
framework](<https://github.com/hydrocode-de/tool-runner>).  A template for a
containerized R tool, which can be used as a basis for developing new tools, is
available at the following URL:
<https://github.com/V@code{ForWaTer/tool_template_r>}.")
    (license license:gpl3)))

(define-public r-jsmodule
  (package
    (name "r-jsmodule")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jsmodule" version))
       (sha256
        (base32 "196qapyvx6ma7klqkbx1nvy19xdirrsjxbbgw8dyfbinw2sa9h1w"))))
    (properties `((upstream-name . "jsmodule")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-timeroc
                             r-survival
                             r-survidinri
                             r-survey
                             r-shinywidgets
                             r-shinyjs
                             r-shinycustomloader
                             r-shinyace
                             r-shiny
                             r-see
                             r-scales
                             r-rvg
                             r-rstudioapi
                             r-riskregression
                             r-readxl
                             r-readr
                             r-r6
                             r-purrr
                             r-proc
                             r-openxlsx
                             r-officer
                             r-maxstat
                             r-matchit
                             r-labelled
                             r-jstable
                             r-jsonlite
                             r-jskm
                             r-httr
                             r-htmltools
                             r-hmisc
                             r-haven
                             r-gridextra
                             r-ggrepel
                             r-ggpubr
                             r-ggplot2
                             r-ggally
                             r-geepack
                             r-forestploter
                             r-flextable
                             r-epidisplay
                             r-dt
                             r-data-table
                             r-bslib))
    (native-inputs (list r-knitr))
    (home-page "https://jinseob2kim.github.io/jsmodule/")
    (synopsis "'RStudio' Addins and 'Shiny' Modules for Medical Research")
    (description
     "RStudio addins and Shiny modules for descriptive statistics, regression and
survival analysis.")
    (license license:asl2.0)))

(define-public r-jsmediation
  (package
    (name "r-jsmediation")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSmediation" version))
       (sha256
        (base32 "1wfqhi5mjlqx57lw4zspls2xpf3ccl61wqzs997v633an11q0fzv"))))
    (properties `((upstream-name . "JSmediation")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tibble
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
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSM" version))
       (sha256
        (base32 "08pa5ljihdjgx4vw290bk98f2lyxybwlw0rf6dbfxnxwwp7smzv2"))))
    (properties `((upstream-name . "JSM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jskm" version))
       (sha256
        (base32 "00yqj7fxbv0rhvq5zna6xv2f866jc2d15as9dmlylwhcafkgc966"))))
    (properties `((upstream-name . "jskm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-survey
                             r-patchwork
                             r-ggsci
                             r-ggpubr
                             r-ggplot2
                             r-cmprsk))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jinseob2kim/jskm")
    (synopsis "Kaplan-Meier Plot with 'ggplot2'")
    (description
     "The function @code{jskm()} creates publication quality Kaplan-Meier plot with at
risk tables below. @code{svyjskm()} provides plot for weighted Kaplan-Meier
estimator.")
    (license license:asl2.0)))

(define-public r-jshintr
  (package
    (name "r-jshintr")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jshintr" version))
       (sha256
        (base32 "08j28c2ab9fh6g7qp2vl8j5hz5kkikvl2id979kv92ach9vranyd"))))
    (properties `((upstream-name . "jshintr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstudioapi r-htmlwidgets r-htmltools))
    (home-page "https://github.com/stla/jshintr")
    (synopsis "Lint 'JavaScript' Files")
    (description
     "Allow to run jshint on @code{JavaScript} files with a R command or a RStudio
addin.  The report appears in the RStudio viewer pane.")
    (license license:gpl3)))

(define-public r-jsdne
  (package
    (name "r-jsdne")
    (version "4.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSDNE" version))
       (sha256
        (base32 "142ihfs5c8mzsllxdis8ss6ygb003qabj6rw674waxz5hxppkdr5"))))
    (properties `((upstream-name . "JSDNE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rvcg r-nnet r-molar r-mass r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JSDNE")
    (synopsis "Estimating the Age using Auricular Surface by DNE")
    (description
     "The age is estimated by calculating the Dirichlet Normal Energy (DNE) on the
whole auricular surface and the apex of the auricular surface.  It involves
three estimation methods: principal component discriminant analysis (PCQDA), and
principal component logistic regression analysis (PCLR) methods, principal
component regression analysis with Southeast Asian (A_PCR), and principal
component regression analysis with multipopulation (M_PCR).  The package is
created with the data from the Louis Lopes Collection in Lisbon, the 21st
Century Identified Human Remains Collection in Coimbra, and the CAL Milano
Cemetery Skeletal Collection in Milan, and the skeletal collection at Khon Kaen
University (KKU) Human Skeletal Research Centre (HSRC), housed in the Department
of Anatomy in the Faculty of Medicine at KKU in Khon Kaen.")
    (license license:gpl3)))

(define-public r-jsdm
  (package
    (name "r-jsdm")
    (version "0.2.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jSDM" version))
       (sha256
        (base32 "0bri27gsdabi1im6bf4811hjqrvxx105mli2clyn0q4ry4rhkd33"))))
    (properties `((upstream-name . "jSDM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list gsl))
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
     "Fits joint species distribution models ('@code{jSDM}') in a hierarchical
Bayesian framework (Warton and al.  2015 <doi:10.1016/j.tree.2015.09.007>).  The
Gibbs sampler is written in C++'.  It uses Rcpp', Armadillo and GSL to maximize
computation efficiency.")
    (license license:gpl3)))

(define-public r-jscore
  (package
    (name "r-jscore")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jScore" version))
       (sha256
        (base32 "0hb63l10cwvpvix155d16v35lp1v88lp69f6q1s09njc6qdsg212"))))
    (properties `((upstream-name . "jScore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/liliulab/jscore")
    (synopsis "Calculates the j-Score Between Two Clustering Assignments")
    (description
     "The @code{jscore()} function in the package calculates the J-Score metric
between two clustering assignments.  The score is designed to address some
problems with existing common metrics such as problem of matching.  The details
of J-score is described in Ahmadinejad and Liu. (2021)
<@code{arXiv:2109.01306>}.")
    (license license:expat)))

(define-public r-jsconsole
  (package
    (name "r-jsconsole")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JSconsole" version))
       (sha256
        (base32 "1jpa48xb7hh4ap25sqrl67rzqra53qhcfwpfgs6hmpjnrld8n3ha"))))
    (properties `((upstream-name . "JSconsole")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-v8 r-rstudioapi))
    (home-page "https://github.com/stla/JSconsole")
    (synopsis "'RStudio' Addin to Send 'JavaScript' Code to the 'V8' Console")
    (description
     "This package provides a RStudio addin to send some @code{JavaScript} code to the
V8 console.  The user can send an entire @code{JavaScript} file or only some
selected lines.  This is useful to test the code.")
    (license license:gpl3)))

(define-public r-js
  (package
    (name "r-js")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "js" version))
       (sha256
        (base32 "1k4linb8r0a5wqm66qy8xiw465yl4558sj3nk77g9dq5prjkps2w"))))
    (properties `((upstream-name . "js")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-v8))
    (native-inputs (list r-knitr esbuild))
    (home-page "https://jeroen.r-universe.dev/js")
    (synopsis "Tools for Working with JavaScript in R")
    (description
     "This package provides a set of utilities for working with @code{JavaScript}
syntax in R. Includes tools to parse, tokenize, compile, validate, reformat,
optimize and analyze @code{JavaScript} code.")
    (license license:expat)))

(define-public r-jrvfinance
  (package
    (name "r-jrvfinance")
    (version "1.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jrvFinance" version))
       (sha256
        (base32 "0g3w65avys5chni0zlahzwqgv09z9na08yhay385ax33ddwrcrjv"))))
    (properties `((upstream-name . "jrvFinance")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jrt" version))
       (sha256
        (base32 "0k6jxjpvscc0yw0dhk33fcd5k6al8fbai7zwf9cbkwaxjr65wc4m"))))
    (properties `((upstream-name . "jrt")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jrsicklsnmf
  (package
    (name "r-jrsicklsnmf")
    (version "1.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jrSiCKLSNMF" version))
       (sha256
        (base32 "1fiw72mk70fh4mnsmzq0a08ahxl9hl9da0wj48f4b18j512jhjvl"))))
    (properties `((upstream-name . "jrSiCKLSNMF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-umap
                             r-scran
                             r-rlang
                             r-rdpack
                             r-rcppprogress
                             r-rcpparmadillo
                             r-rcpp
                             r-pbapply
                             r-matrix
                             r-mass
                             r-kknn
                             r-irlba
                             r-igraph
                             r-ggrepel
                             r-ggplot2
                             r-foreach
                             r-factoextra
                             r-data-table
                             r-clvalid
                             r-cluster))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jrSiCKLSNMF")
    (synopsis "Multimodal Single-Cell Omics Dimensionality Reduction")
    (description
     "This package provides methods to perform Joint graph Regularized Single-Cell
Kullback-Leibler Sparse Non-negative Matrix Factorization ('@code{jrSiCKLSNMF}',
pronounced \"junior sickles NMF\") on quality controlled single-cell multimodal
omics count data. @code{jrSiCKLSNMF} specifically deals with dual-assay
@code{scRNA-seq} and @code{scATAC-seq} data.  This package contains functions to
extract meaningful latent factors that are shared across omics modalities.
These factors enable accurate cell-type clustering and facilitate
visualizations.  Methods for pre-processing, clustering, and mini-batch updates
and other adaptations for larger datasets are also included.  For further
details on the methods used in this package please see Ellis, Roy, and Datta
(2023) <doi:10.3389/fgene.2023.1179439>.")
    (license license:gpl3)))

(define-public r-jrich
  (package
    (name "r-jrich")
    (version "0.60-35")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jrich" version))
       (sha256
        (base32 "1y486bfqmfg3f22wm0lfk3lh20ljgi8qrgn5jji0f417wh48nf0x"))))
    (properties `((upstream-name . "jrich")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jrc
  (package
    (name "r-jrc")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jrc" version))
       (sha256
        (base32 "0zqif6csh4r5vbcw1dl12x2psb27r5lv0k5z0vv8bk3xk5r6vwlq"))))
    (properties `((upstream-name . "jrc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
     "An httpuv based bridge between R and @code{JavaScript}'.  Provides an easy way
to exchange commands and data between a web page and a currently running R
session.")
    (license license:gpl3)))

(define-public r-jql
  (package
    (name "r-jql")
    (version "3.6.9")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JQL" version))
       (sha256
        (base32 "0d926hngv4r6zl5f6yai3jwhl9hql2hv6ja3yjgplglkns66g4lh"))))
    (properties `((upstream-name . "JQL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jqbr
  (package
    (name "r-jqbr")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jqbr" version))
       (sha256
        (base32 "09hgp3vr5xwvd72kibim708fxymkdmq2yszmhyp6hi90sxkq51ic"))))
    (properties `((upstream-name . "jqbr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:modules '((guix build r-build-system)
                  ((guix build minify-build-system)
                   #:select (minify))
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
    (propagated-inputs (list r-shiny r-jsonlite r-htmltools))
    (native-inputs (list esbuild))
    (home-page "https://github.com/hfshr/jqbr")
    (synopsis "'jQuery QueryBuilder' Input for 'Shiny'")
    (description
     "This package provides a highly configurable @code{jQuery} plugin offering a
simple interface to create complex queries/filters in Shiny'.  The outputted
rules can easily be parsed into a set of R and/or SQL queries and used to filter
data.  Custom parsing of the rules is also supported.  For more information
about @code{jQuery} @code{QueryBuilder} see <https://querybuilder.js.org/>.")
    (license license:expat)))

(define-public r-jpsurv
  (package
    (name "r-jpsurv")
    (version "3.0.20")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JPSurv" version))
       (sha256
        (base32 "0jishmvvk6b142p6yqnbvv9sgrhvgbsphb86pjg2dng39qvj0v1x"))))
    (properties `((upstream-name . "JPSurv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggrepel r-ggplot2))
    (home-page "https://cran.r-project.org/package=JPSurv")
    (synopsis "Joinpoint Model for Relative and Cause-Specific Survival")
    (description
     "This package contains functions for fitting a joinpoint proportional hazards
model to relative survival or cause-specific survival data, including estimates
of joinpoint years at which survival trends have changed and trend measures in
the hazard and cumulative survival scale.  See Yu et al.(2009)
<doi:10.1111/j.1467-985X.2009.00580.x>.")
    (license license:gpl2+)))

(define-public r-jpstat
  (package
    (name "r-jpstat")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jpstat" version))
       (sha256
        (base32 "1vzqipxk019f9chm9nxcsifiv3i2cmqvwgyx45zrh2cxsrn8bhvk"))))
    (properties `((upstream-name . "jpstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-stickyr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-navigatr
                             r-lifecycle
                             r-httr
                             r-dplyr))
    (home-page "https://github.com/UchidaMizuki/jpstat")
    (synopsis "Tools for Easy Use of 'e-Stat', 'RESAS' API, Etc")
    (description
     "This package provides tools to use API such as e-Stat
(<https://www.e-stat.go.jp/>), the portal site for Japanese government
statistics, and RESAS (Regional Economy and Society Analyzing System,
<https://resas.go.jp>).")
    (license license:expat)))

(define-public r-jpmesh
  (package
    (name "r-jpmesh")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jpmesh" version))
       (sha256
        (base32 "0q8adf582h92qwdwgh4dk53s8rixrrh96r8vzy6bwxvizqf0i3y8"))))
    (properties `((upstream-name . "jpmesh")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jpinfect
  (package
    (name "r-jpinfect")
    (version "2023.2026.02")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jpinfect" version))
       (sha256
        (base32 "13q3igrqafd7d6fykj3wbmc5dw23f678fkp4a76g3ybzy0fnc7nq"))))
    (properties `((upstream-name . "jpinfect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-readxl
                             r-readr
                             r-magrittr
                             r-isoweek
                             r-httr
                             r-future-apply
                             r-future
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/TomonoriHoshi/jpinfect")
    (synopsis
     "Acquiring and Processing Data from Japan Institute for Health Security")
    (description
     "Download and post process the infectious disease case data from Japan Institute
for Health Security.  Also the package included ready-to-analyse datasets.  See
the data source website for further details <https://id-info.jihs.go.jp/>.")
    (license license:gpl3+)))

(define-public r-jpgrid
  (package
    (name "r-jpgrid")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jpgrid" version))
       (sha256
        (base32 "01x2iyc37pfd1rz4avgiv1ng1d5g4hpi4viv8y0pcb9rpv3dymw1"))))
    (properties `((upstream-name . "jpgrid")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-units
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-stringr
                             r-stars
                             r-sf
                             r-rlang
                             r-purrr
                             r-pillar
                             r-lifecycle
                             r-dplyr
                             r-cli))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JPEN" version))
       (sha256
        (base32 "12rvp5bmlkwyr1gg336k655hp09gym0d2wwry70c1rz30x1sf2zs"))))
    (properties `((upstream-name . "JPEN")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=JPEN")
    (synopsis
     "Covariance and Inverse Covariance Matrix Estimation Using Joint Penalty")
    (description
     "This package provides a Joint PENalty Estimation of Covariance and Inverse
Covariance Matrices.")
    (license license:gpl2)))

(define-public r-jpcity
  (package
    (name "r-jpcity")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jpcity" version))
       (sha256
        (base32 "0lm748kch50k9fh87z9r4pv0rcgb98hgshknm4wv3gmb4bm9zmlz"))))
    (properties `((upstream-name . "jpcity")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vctrs
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-lubridate
                             r-lifecycle
                             r-dplyr
                             r-cli))
    (home-page "https://uchidamizuki.github.io/jpcity/")
    (synopsis "Read and Convert Japanese Municipality Codes")
    (description
     "Read Japanese city codes (<https://www.e-stat.go.jp/municipalities/cities>) to
get city and prefecture names, or convert to city codes at different points in
time.  In addition, it merges or splits wards of designated cities and gets all
city codes at a specific point in time.")
    (license license:expat)))

(define-public r-joyn
  (package
    (name "r-joyn")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joyn" version))
       (sha256
        (base32 "147n8ql9dvnga8bbq6pvxvsm1vmpzjs4a0f8dfxznccgplv699c7"))))
    (properties `((upstream-name . "joyn")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-lifecycle
                             r-glue
                             r-data-table
                             r-collapse
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/randrescastaneda/joyn")
    (synopsis
     "Tool for Diagnosis of Tables Joins and Complementary Join Features")
    (description
     "Tool for diagnosing table joins.  It combines the speed of `collapse` and
`data.table`, the flexibility of `dplyr`, and the diagnosis and features of the
`merge` command in `Stata`.")
    (license license:expat)))

(define-public r-jousboost
  (package
    (name "r-jousboost")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JOUSBoost" version))
       (sha256
        (base32 "0f3rr7aw20nvmlpqrq3wzgmr55lqdqhk3wphpqq7msgvaf1zrcl7"))))
    (properties `((upstream-name . "JOUSBoost")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rpart r-rcpp r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=JOUSBoost")
    (synopsis "Implements Under/Oversampling for Probability Estimation")
    (description
     "This package implements under/oversampling for probability estimation.  To be
used with machine learning methods such as @code{AdaBoost}, random forests, etc.")
    (license license:expat)))

(define-public r-journalr
  (package
    (name "r-journalr")
    (version "0.6.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "journalR" version))
       (sha256
        (base32 "1jgf19ggh9wp46b9k5vwh46g2cjar524lk1yv0q5hfh9nm2aq8rs"))))
    (properties `((upstream-name . "journalR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-glue r-data-table r-checkmate))
    (home-page "https://github.com/epi-sam/journalR")
    (synopsis "Formatting Tools for Scientific Journal Writing")
    (description
     "Scientific journal numeric formatting policies implemented in code.  Emphasis on
formatting mean/upper/lower sets of values to pasteable text for journal
submission.  For example c(2e6, 1e6, 3e6) becomes \"2.00 million (1.00--3.00)\".
Lancet and Nature have built-in styles for rounding and punctuation marks.
Users may extend journal styles arbitrarily.  Four metrics are supported;
proportions, percentage points, counts and rates.  Magnitudes for all metrics
are discovered automatically.")
    (license license:expat)))

(define-public r-journalabbr
  (package
    (name "r-journalabbr")
    (version "0.4.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "journalabbr" version))
       (sha256
        (base32 "0cp319v6r70kralxblfwvii8glx040fxwiqbfrdq50cpyvf7vv5k"))))
    (properties `((upstream-name . "journalabbr")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
texstudio').  The abbreviation table is from @code{JabRef}'.  At the same time,
Shiny application is provided to generate thebibliography', a reference format
that can be directly used for latex paper writing based on Rmd files.")
    (license license:gpl3+)))

(define-public r-jot
  (package
    (name "r-jot")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jot" version))
       (sha256
        (base32 "0bbzkylcgdp34lj692b9c2xpdh1pxkxb4yiwjx0vdilj3naqqbny"))))
    (properties `((upstream-name . "jot")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-josaplay
  (package
    (name "r-josaplay")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "josaplay" version))
       (sha256
        (base32 "0q6kjk3mjxwbqvq3zz0ylpi1viznp9pxzngqpjzv5sibv0ndh0lf"))))
    (properties `((upstream-name . "josaplay")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JoSAE" version))
       (sha256
        (base32 "1vjxzbfs8a7kpmn2lb9dca67d4njmzjr3pl16s0r9ihmmxxwwili"))))
    (properties `((upstream-name . "JoSAE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.0-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jordan" version))
       (sha256
        (base32 "1c5s12s3qbffk5rlmigmy5hhqd6ln43z5scn5vl4cc05ix64zh15"))))
    (properties `((upstream-name . "jordan")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-quadform r-onion r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/jordan")
    (synopsis "Suite of Routines for Working with Jordan Algebras")
    (description
     "This package provides a Jordan algebra is an algebraic object originally
designed to study observables in quantum mechanics.  Jordan algebras are
commutative but non-associative; they satisfy the Jordan identity.  The package
follows the ideas and notation of K. @code{McCrimmon} (2004, ISBN:0-387-95447-3)
\"A Taste of Jordan Algebras\".  To cite the package in publications, please use
Hankin (2023) <doi:10.48550/@code{arXiv.2303.06062>}.")
    (license license:gpl2+)))

(define-public r-jops
  (package
    (name "r-jops")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JOPS" version))
       (sha256
        (base32 "0sb3ha0f4gz3nlni2mlhwh9663pl2zw517gxhn6ys4iap4v1jxd4"))))
    (properties `((upstream-name . "JOPS")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-spats
                             r-spam
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

(define-public r-jollofr
  (package
    (name "r-jollofr")
    (version "0.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jollofR" version))
       (sha256
        (base32 "17g21cm8dl5rpzs8kbfbpjrl8hy4jaj9pwvrwn13hzz5nk0pq1km"))))
    (properties `((upstream-name . "jollofR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tidyr
                             r-terra
                             r-sf
                             r-reshape2
                             r-raster
                             r-ggpubr
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/wpgp/jollofR/")
    (synopsis "Small Area Population Estimation by Demographics")
    (description
     "Automatic disaggregation of small-area population estimates by demographic
groups (e.g., age, sex, race, marital status, educational level, etc) along with
the estimates of uncertainty, using advanced Bayesian statistical modelling
approaches based on integrated nested Laplace approximation (INLA) Rue et al.
(2009) <doi:10.1111/j.1467-9868.2008.00700.x> and stochastic partial
differential equation (SPDE) methods Lindgren et al. (2011)
<doi:10.1111/j.1467-9868.2011.00777.x>.  The package implements hierarchical
Bayesian modeling frameworks for small area estimation as described in Leasure
et al. (2020) <doi:10.1073/pnas.1913050117> and Nnanatu et al. (2025)
<doi:10.1038/s41467-025-59862-4>.")
    (license license:expat)))

(define-public r-joker
  (package
    (name "r-joker")
    (version "0.14.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joker" version))
       (sha256
        (base32 "0ixcdg614hlz1sr23xnhpsavq37qxbfhq7g6vnj4m8kqs2fi2hyp"))))
    (properties `((upstream-name . "joker")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-matrix r-ggplot2 r-ggh4x))
    (native-inputs (list r-knitr))
    (home-page "https://thechibo.github.io/joker/")
    (synopsis "Probability Distributions and Parameter Estimation")
    (description
     "This package implements an S4 distribution system and estimation methods for
parameters of common distribution families.  The common d, p, q, r function
family for each distribution is enriched with the ll, e, and v counterparts,
computing the log-likelihood, performing estimation, and calculating the
asymptotic variance - covariance matrix, respectively.  Parameter estimation is
performed analytically whenever possible.")
    (license license:gpl3+)))

(define-public r-joinxl
  (package
    (name "r-joinxl")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joinXL" version))
       (sha256
        (base32 "1l76bckjz5r1kdsh0s10i0gpca12rkfkp14346fn7avdcw73v23i"))))
    (properties `((upstream-name . "joinXL")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
     "This package performs Joins and Minus Queries on Excel Files @code{fulljoinXL()}
Merges all rows of 2 Excel files based upon a common column in the files.
@code{innerjoinXL()} Merges all rows from base file and join file when the join
condition is met. @code{leftjoinXL()} Merges all rows from the base file, and
all rows from the join file if the join condition is met. @code{rightjoinXL()}
Merges all rows from the join file, and all rows from the base file if the join
condition is met. @code{minusXL()} Performs 2 operations source-minus-target and
target-minus-source If the files are identical all output files will be empty.
Choose two Excel files via a dialog box, and then follow prompts at the console
to choose a base or source file and columns to merge or minus on.")
    (license license:gpl3)))

(define-public r-jointvip
  (package
    (name "r-jointvip")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointVIP" version))
       (sha256
        (base32 "08nz7f4rn4sjx2gyd20i100rq48qnh8g97zjmc33ryxg9g4bhg7q"))))
    (properties `((upstream-name . "jointVIP")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-ggrepel r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ldliao/jointVIP")
    (synopsis
     "Prioritize Variables with Joint Variable Importance Plot in Observational Study Design")
    (description
     "In the observational study design stage, matching/weighting methods are
conducted.  However, when many background variables are present, the decision as
to which variables to prioritize for matching/weighting is not trivial.  Thus,
the joint treatment-outcome variable importance plots are created to guide
variable selection.  The joint variable importance plots enhance variable
comparisons via unadjusted bias curves derived under the omitted variable bias
framework.  The plots translate variable importance into recommended values for
tuning parameters in existing methods.  Post-matching and/or weighting plots can
also be used to visualize and assess the quality of the observational study
design.  The method motivation and derivation is presented in \"Prioritizing
Variables for Observational Study Design using the Joint Variable Importance
Plot\" by Liao et al. (2024) <doi:10.1080/00031305.2024.2303419>.  See the
package paper by Liao and Pimentel (2024) <doi:10.21105/joss.06093> for a
beginner friendly user introduction.")
    (license license:expat)))

(define-public r-jointseg
  (package
    (name "r-jointseg")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointseg" version))
       (sha256
        (base32 "1dswk3dqqi34m7v7p3skzgbmg2c0mv6sys6kdriw62hkjzqla98f"))))
    (properties `((upstream-name . "jointseg")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jointpm
  (package
    (name "r-jointpm")
    (version "2.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointPm" version))
       (sha256
        (base32 "0z3icbmgz0j3a2gg4gsw9h6wr0gd54kh36q57a7z71hlsrniwyfn"))))
    (properties `((upstream-name . "jointPm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=jointPm")
    (synopsis "Risk Estimation Using the Joint Probability Method")
    (description
     "Estimate risk caused by two extreme and dependent forcing variables using
bivariate extreme value models as described in Zheng, Westra, and Sisson (2013)
<doi:10.1016/j.jhydrol.2013.09.054>; Zheng, Westra and Leonard (2014)
<doi:10.1002/2013WR014616>; Zheng, Leonard and Westra (2015)
<doi:10.2166/hydro.2015.052>.")
    (license license:gpl2+)))

(define-public r-jointnmix
  (package
    (name "r-jointnmix")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointNmix" version))
       (sha256
        (base32 "0ibh7hqkpzlfk3bk4d2dd64jhr8cvw563k082vwnljiam7k5nj4b"))))
    (properties `((upstream-name . "jointNmix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=jointNmix")
    (synopsis "Joint N-Mixture Models for Site-Associated Species")
    (description
     "Fits univariate and joint N-mixture models for data on two unmarked
site-associated species.  Includes functions to estimate latent abundances
through empirical Bayes methods.")
    (license license:gpl2+)))

(define-public r-jointmeancov
  (package
    (name "r-jointmeancov")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointMeanCov" version))
       (sha256
        (base32 "1cai5g63n11dirn9fldzkqxcnkxc20ndr9ygrr9rk0s1qz8x63pb"))))
    (properties `((upstream-name . "jointMeanCov")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-glasso))
    (home-page "https://cran.r-project.org/package=jointMeanCov")
    (synopsis "Joint Mean and Covariance Estimation for Matrix-Variate Data")
    (description
     "Jointly estimates two-group means and covariances for matrix-variate data and
calculates test statistics.  This package implements the algorithms defined in
Hornstein, Fan, Shedden, and Zhou (2018) <doi:10.1080/01621459.2018.1429275>.")
    (license license:gpl2)))

(define-public r-jointfpm
  (package
    (name "r-jointfpm")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JointFPM" version))
       (sha256
        (base32 "124ibpbddyv0fg3yq1is1q1hv49wdmbdpfams1iyqkndspg3narz"))))
    (properties `((upstream-name . "JointFPM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-statmod
                             r-rstpm2
                             r-rmutil
                             r-rlang
                             r-matrixstats
                             r-lifecycle
                             r-data-table
                             r-cli))
    (home-page "https://github.com/entjos/JointFPM")
    (synopsis "Parametric Model for Estimating the Mean Number of Events")
    (description
     "Implementation of a parametric joint model for modelling recurrent and competing
event processes using generalised survival models as described in Entrop et al.,
(2025) <doi:10.1002/bimj.70038>.  The joint model can subsequently be used to
predict the mean number of events in the presence of competing risks at
different time points.  Comparisons of the mean number of event functions, e.g.
the differences in mean number of events between two exposure groups, are also
available.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-jointest
  (package
    (name "r-jointest")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointest" version))
       (sha256
        (base32 "13pzg4g2ajfx9dnnjn6fgw4zcicdxqrp95mxx1ramk887wym4pls"))))
    (properties `((upstream-name . "jointest")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-flipscores r-flip))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=jointest")
    (synopsis "Multivariate Testing Through Joint Resampling-Based Tests")
    (description
     "Runs resampling-based tests jointly, e.g., sign-flip score tests from Hemerik et
al., (2020) <doi:10.1111/rssb.12369>, to allow for multivariate testing, i.e.,
weak and strong control of the Familywise Error Rate or True Discovery
Proportion.")
    (license license:gpl2)))

(define-public r-jointdiag
  (package
    (name "r-jointdiag")
    (version "0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointDiag" version))
       (sha256
        (base32 "18x6rxaxhz9hcp6rfmjlanbfsc5q61p6xcxixnc8ayyxbdq7q6rf"))))
    (properties `((upstream-name . "jointDiag")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jointcomprisk
  (package
    (name "r-jointcomprisk")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointCompRisk" version))
       (sha256
        (base32 "09j2j9ljr7cb9xc1zxmckz1apxmqrail29zqcwi9vr4f690k0d9g"))))
    (properties `((upstream-name . "jointCompRisk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-rlang r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cathyzzzhang/jointCompRisk")
    (synopsis
     "Joint Inference for Competing Risks Data Using Multiple Endpoints")
    (description
     "This package provides tools for competing risks trials that allow simultaneous
inference on recovery and mortality endpoints.  Provides data preparation
helpers, standard cumulative incidence estimators (restricted mean time
gained/lost), and severity weighted extensions that integrate longitudinal
ordinal outcomes to summarise treatment benefit.  Methods follow Wen, Hu, and
Wang (2023) Biometrics 79(3):1635-1645 <doi:10.1111/biom.13752>.")
    (license license:expat)))

(define-public r-jointcalib
  (package
    (name "r-jointcalib")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jointCalib" version))
       (sha256
        (base32 "0md4rmb7f3k6zy1y8s43p14wwrx2bv3j5j03sn7qh9mhpyssl8hn"))))
    (properties `((upstream-name . "jointCalib")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survey
                             r-sampling
                             r-mathjaxr
                             r-mass
                             r-laeken
                             r-ebal))
    (home-page "https://github.com/ncn-foreigners/jointCalib")
    (synopsis "Joint Calibration of Totals and Quantiles")
    (description
     "This package provides a small package containing functions to perform a joint
calibration of totals and quantiles.  The calibration for totals is based on
Deville and SÃ¤rndal (1992) <doi:10.1080/01621459.1992.10475217>, the
calibration for quantiles is based on Harms and Duchesne (2006)
<https://www150.statcan.gc.ca/n1/en/catalogue/12-001-X20060019255>.  The package
uses standard calibration via the survey', sampling or laeken packages.  In
addition, entropy balancing via the ebal package and empirical likelihood based
on codes from Wu (2005)
<https://www150.statcan.gc.ca/n1/pub/12-001-x/2005002/article/9051-eng.pdf> can
be used.  See the paper by BerÄsewicz and Szymkowiak (2023) for details
<@code{arXiv:2308.13281>}.")
    (license license:gpl3)))

(define-public r-jointai
  (package
    (name "r-jointai")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JointAI" version))
       (sha256
        (base32 "1mlnfynn5nm0znh99y5pnjxi7ks4vxnvchlhf8cv82g2vmpback4"))))
    (properties `((upstream-name . "JointAI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joint.Cox" version))
       (sha256
        (base32 "0i2lf4q5w3893wppcig85r3ljr84j0d2m2id9kw9g194c8qgaqmm"))))
    (properties `((upstream-name . "joint.Cox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-joinspy
  (package
    (name "r-joinspy")
    (version "0.7.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joinspy" version))
       (sha256
        (base32 "1yw730r9gs4519dlxffcw3kvph6cwysh4h3c4n5wc6xz31zkwdrs"))))
    (properties `((upstream-name . "joinspy")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://gillescolling.com/joinspy/")
    (synopsis "Diagnostic Tools for Data Frame Joins")
    (description
     "This package provides diagnostic tools for understanding and debugging data
frame joins.  Analyzes key columns before joining to detect duplicates,
mismatches, encoding issues, and other common problems.  Explains unexpected row
count changes and provides safe join wrappers with cardinality enforcement.
Concepts and diagnostics build on tidy data principles as described in Wickham
(2014) <doi:10.18637/jss.v059.i10>.")
    (license license:expat)))

(define-public r-joinless
  (package
    (name "r-joinless")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joinless" version))
       (sha256
        (base32 "07gwh2mnva11yf6m9f8dcbwj78133szy6hrdx1nnslkyf8ibpnc9"))))
    (properties `((upstream-name . "joinless")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=joinless")
    (synopsis "Exploratory Analysis of Relationships Between Variables")
    (description
     "This package provides tools to explore and summarize relationship patterns
between variables across one or multiple datasets.  The package relies on
efficient sampling strategies to estimate pairwise associations and supports
quick exploratory data analysis for large or heterogeneous data sources.")
    (license license:gpl3+)))

(define-public r-joinet
  (package
    (name "r-joinet")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joinet" version))
       (sha256
        (base32 "1r285jymjqqpzfj8cw7p6pc8fp33wih4y9i4zqc9w8517zx54agr"))))
    (properties `((upstream-name . "joinet")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-palasso r-glmnet r-cornet))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rauschenberger/joinet")
    (synopsis "Penalised Multivariate Regression ('Multi-Target Learning')")
    (description
     "This package implements penalised multivariate regression (i.e., for multiple
outcomes and many features) by stacked generalisation
(<doi:10.1093/bioinformatics/btab576>).  For positively correlated outcomes, a
single multivariate regression is typically more predictive than multiple
univariate regressions.  Includes functions for model fitting, extracting
coefficients, outcome prediction, and performance measurement.  For optional
comparisons, install @code{remMap} from @code{GitHub}
(<https://github.com/cran/@code{remMap>}).")
    (license license:gpl3)))

(define-public r-joinerml
  (package
    (name "r-joinerml")
    (version "0.4.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joineRML" version))
       (sha256
        (base32 "15kj34czlgbwcykf6zmfvpmb9iyy1h2x6r18nbvf53n6hbx4ggan"))))
    (properties `((upstream-name . "joineRML")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.2.8")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "joineR" version))
       (sha256
        (base32 "0hf83115g5m0m1wv9yji2wvyzb5j4wrzbzkspdcswk9i4hkmp4h7"))))
    (properties `((upstream-name . "joineR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JoF" version))
       (sha256
        (base32 "1my6fc4awrc822ibsvx3hiz4l49vp8dx0j05v56r7d27xizy8j0j"))))
    (properties `((upstream-name . "JoF")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=JoF")
    (synopsis "Modelling and Simulating Judgments of Frequency")
    (description
     "In a typical experiment for the intuitive judgment of frequencies (@code{JoF})
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jocre" version))
       (sha256
        (base32 "1i9n3r16pq6r4sy3fc1rxpil5ws8v2is0xdxafinvwr1hzkv1gz6"))))
    (properties `((upstream-name . "jocre")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jobqueue
  (package
    (name "r-jobqueue")
    (version "1.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jobqueue" version))
       (sha256
        (base32 "01mz1rf9chffc99ff5d9k8dr1fhkp681687ar8xr10m96z0803m0"))))
    (properties `((upstream-name . "jobqueue")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang
                             r-r6
                             r-ps
                             r-promises
                             r-parallelly
                             r-magrittr
                             r-later
                             r-interprocess
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://cmmr.github.io/jobqueue/")
    (synopsis "Run Interruptible Code Asynchronously")
    (description
     "Takes an R expression and returns a job object with a @code{$stop()} method
which can be called to terminate the background job.  Also provides timeouts and
other mechanisms for automatically terminating a background job.  The result of
the expression is available synchronously via $result or asynchronously with
callbacks or through the promises package framework.")
    (license license:expat)))

(define-public r-jnplots
  (package
    (name "r-jnplots")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JNplots" version))
       (sha256
        (base32 "1hcrv38qhfcap10rnm70sbd3gxxxsv1032swjv1nc9ww490x08w9"))))
    (properties `((upstream-name . "JNplots")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-nlme r-ape))
    (home-page "https://github.com/kenstoyama/JNplots")
    (synopsis "Visualize Outputs from the 'Johnson-Neyman' Technique")
    (description
     "Aids in the calculation and visualization of regions of non-significance using
the Johnson-Neyman technique and its extensions as described by Bauer and Curran
(2005) <doi:10.1207/s15327906mbr4003_5> to assess the influence of categorical
and continuous moderators.  Allows correcting for phylogenetic relatedness.")
    (license license:expat)))

(define-public r-jmvreadwrite
  (package
    (name "r-jmvreadwrite")
    (version "0.4.12")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmvReadWrite" version))
       (sha256
        (base32 "07wklvg318v75ki4kz60hvw3afl4c0yh7jj7q0f8c0m6h7dv1z2p"))))
    (properties `((upstream-name . "jmvReadWrite")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-zip r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://sjentsch.github.io/jmvReadWrite/")
    (synopsis "Read and Write 'jamovi' Files ('.omv')")
    (description
     "The free and open a statistical spreadsheet jamovi (<https://www.jamovi.org>)
aims to make statistical analyses easy and intuitive.  jamovi produces syntax
that can directly be used in R (in connection with the R-package jmv').  Having
import / export routines for the data files jamovi produces ('.omv') permits an
easy transfer of data and analyses between jamovi and R.")
    (license license:agpl3)))

(define-public r-jmvcore
  (package
    (name "r-jmvcore")
    (version "2.7.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmvcore" version))
       (sha256
        (base32 "08bhhpx2f046cz09xwhlhlzhfki2y4rnwvwiw4bqkgldnw7lm5iv"))))
    (properties `((upstream-name . "jmvcore")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-r6 r-jsonlite r-base64enc))
    (home-page "https://www.jamovi.org")
    (synopsis "Dependencies for the 'jamovi' Framework")
    (description
     "This package provides a framework for creating rich interactive analyses for the
jamovi platform (see <https://www.jamovi.org> for more information).")
    (license license:gpl2+)))

(define-public r-jmvconnect
  (package
    (name "r-jmvconnect")
    (version "2.5.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmvconnect" version))
       (sha256
        (base32 "17zyl1cdkain0l1sl8i1ajysmhm60585w4bjrwjjafz2r0rpydxg"))))
    (properties `((upstream-name . "jmvconnect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.7.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmv" version))
       (sha256
        (base32 "07z6lzd4n06zav8msml6zwiqqz0wpqzdfcb5qhdjbwfw03ajzq0l"))))
    (properties `((upstream-name . "jmv")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-vcdextra
                             r-vcd
                             r-rocr
                             r-r6
                             r-psych
                             r-pmcmr
                             r-nnet
                             r-mvnormtest
                             r-multcomp
                             r-matrixstats
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmuOutlier" version))
       (sha256
        (base32 "1vj9n1hsf780f7l0a22kmi3qm84j4dzjybjkh5zwh6bhwfjnjws3"))))
    (properties `((upstream-name . "jmuOutlier")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmotif" version))
       (sha256
        (base32 "17l92hf32n2cjwf09blzibz3v8xzfx8i6jwb1cvsb7g0j9v6b8hp"))))
    (properties `((upstream-name . "jmotif")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/jMotif/jmotif-R")
    (synopsis
     "Time Series Analysis Toolkit Based on Symbolic Aggregate Discretization, i.e. SAX")
    (description
     "This package implements time series z-normalization, SAX, HOT-SAX, VSM, SAX-VSM,
@code{RePair}, and RRA algorithms facilitating time series motif (i.e.,
recurrent pattern), discord (i.e., anomaly), and characteristic pattern
discovery along with interpretable time series classification.")
    (license license:gpl2)))

(define-public r-jmisc
  (package
    (name "r-jmisc")
    (version "0.3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Jmisc" version))
       (sha256
        (base32 "0fcch7rg8gn92855smd7h2andr33h9dnccjy12w2bx0px8rnqa0s"))))
    (properties `((upstream-name . "Jmisc")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Jmisc")
    (synopsis "Julian Miscellaneous Function")
    (description "Some handy function in R.")
    (license license:gpl2+)))

(define-public r-jmi
  (package
    (name "r-jmi")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMI" version))
       (sha256
        (base32 "05phkwfb9v4g9jixlvbj6br7sbi64zvrgjwfr0v87ijddkxc9si9"))))
    (properties `((upstream-name . "JMI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=JMI")
    (synopsis "Jackknife Mutual Information")
    (description
     "Computes the Jackknife Mutual Information (JMI) between two random vectors and
provides the p-value for dependence tests.  See Zeng, X., Xia, Y. and Tong, H.
(2018) <doi:10.1073/pnas.1715593115>.")
    (license license:gpl2+)))

(define-public r-jmh
  (package
    (name "r-jmh")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMH" version))
       (sha256
        (base32 "1n41vhr07ylqb393bsw8lrv1h77a10qshwfxrkyx2y1hsq1bh3iy"))))
    (properties `((upstream-name . "JMH")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-timeroc
                             r-survival
                             r-statmod
                             r-rcppeigen
                             r-rcpp
                             r-nlme
                             r-mass
                             r-dplyr
                             r-caret))
    (home-page "https://cran.r-project.org/package=JMH")
    (synopsis
     "Joint Model of Heterogeneous Repeated Measures and Survival Data")
    (description
     "Maximum likelihood estimation for the semi-parametric joint modeling of
competing risks and longitudinal data in the presence of heterogeneous
within-subject variability, proposed by Li and colleagues (2023)
<@code{arXiv:2301.06584>}.  The proposed method models the within-subject
variability of the biomarker and associates it with the risk of the competing
risks event.  The time-to-event data is modeled using a (cause-specific) Cox
proportional hazards regression model with time-fixed covariates.  The
longitudinal outcome is modeled using a mixed-effects location and scale model.
The association is captured by shared random effects.  The model is estimated
using an Expectation Maximization algorithm.")
    (license license:gpl3+)))

(define-public r-jmetrik
  (package
    (name "r-jmetrik")
    (version "1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmetrik" version))
       (sha256
        (base32 "1if1kxx8apgkbxpkjnlj2lpsfnyj2splsg1p3j5vxa7q6wx70f9j"))))
    (properties `((upstream-name . "jmetrik")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=jmetrik")
    (synopsis "Tools for Interacting with 'jMetrik'")
    (description
     "The main purpose of this package is to make it easy for @code{userR's} to
interact with @code{jMetrik} an open source application for psychometric
analysis.  For example it allows @code{useR's} to write data frames to file in a
format that can be used by @code{jMetrik}'.  It also allows @code{useR's} to
read *.jmetrik files (e.g. output from an analysis) for follow-up analysis in R.
The *.jmetrik format is a flat file that includes a multiline header and the
data as comma separated values.  The header includes metadata about the file and
one row per variable with the following information in each row: variable name,
data type, item scoring, special data codes, and variable label.")
    (license license:gpl3+)))

(define-public r-jmdesign
  (package
    (name "r-jmdesign")
    (version "1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMdesign" version))
       (sha256
        (base32 "1vzxpqznn628j5qdhmb2g0bskaq0vpkd3w0d40slrr4naw33irrv"))))
    (properties `((upstream-name . "JMdesign")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmdem" version))
       (sha256
        (base32 "15zrxgd5fgi4wzp4s963pnwj3vkgxs4ygqrcpncy9b6j2cxrivdc"))))
    (properties `((upstream-name . "jmdem")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmcm" version))
       (sha256
        (base32 "1rylkman0ryrq2s2aa7zlhnxg0i8y9lkvx4qnms00hlgkxvjhp1b"))))
    (properties `((upstream-name . "jmcm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-roptim r-rcpparmadillo r-rcpp r-formula))
    (native-inputs (list r-r-rsp))
    (home-page "https://github.com/ypan1988/jmcm/")
    (synopsis "Joint Mean-Covariance Models using 'Armadillo' and S4")
    (description
     "Fit joint mean-covariance models for longitudinal data.  The models and their
components are represented using S4 classes and methods.  The core computational
algorithms are implemented using the Armadillo C++ library for numerical linear
algebra and @code{RcppArmadillo} glue.")
    (license license:gpl2+)))

(define-public r-jmbig
  (package
    (name "r-jmbig")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmBIG" version))
       (sha256
        (base32 "0kxs0mi9yyj1hf2896ph7c6q8ji2bbraak7bvfxfn6im98w2g63i"))))
    (properties `((upstream-name . "jmBIG")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-rstanarm
                             r-nlme
                             r-joinerml
                             r-jmbayes2
                             r-ggplot2
                             r-fastjm
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=jmBIG")
    (synopsis "Joint Longitudinal and Survival Model for Big Data")
    (description
     "This package provides analysis tools for big data where the sample size is very
large.  It offers a suite of functions for fitting and predicting joint models,
which allow for the simultaneous analysis of longitudinal and time-to-event
data.  This statistical methodology is particularly useful in medical research
where there is often interest in understanding the relationship between a
longitudinal biomarker and a clinical outcome, such as survival or disease
progression.  This can be particularly useful in a clinical setting where it is
important to be able to predict how a patient's health status may change over
time.  Overall, this package provides a comprehensive set of tools for joint
modeling of BIG data obtained as survival and longitudinal outcomes with both
Bayesian and non-Bayesian approaches.  Its versatility and flexibility make it a
valuable resource for researchers in many different fields, particularly in the
medical and health sciences.")
    (license license:gpl3)))

(define-public r-jmbdirect
  (package
    (name "r-jmbdirect")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMbdirect" version))
       (sha256
        (base32 "03fa4jx66k1fkyjx3brxz30yrrc9mgrhlcna8qzxd8rswplz7zfi"))))
    (properties `((upstream-name . "JMbdirect")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rstanarm
                             r-joinerml
                             r-jmbig
                             r-jmbayes2
                             r-fastjm
                             r-dplyr))
    (home-page "https://cran.r-project.org/package=JMbdirect")
    (synopsis "Joint Model for Longitudinal and Multiple Time to Events Data")
    (description
     "This package provides model fitting, prediction, and plotting for joint models
of longitudinal and multiple time-to-event data, including methods from
Rizopoulos (2012) <doi:10.1201/b12208>.  Useful for handling complex survival
and longitudinal data in clinical research.")
    (license license:gpl3)))

(define-public r-jmbayes2
  (package
    (name "r-jmbayes2")
    (version "0.6-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMbayes2" version))
       (sha256
        (base32 "16098dh35ngaic0clc709isjdyhfcchqkiimwri3rg84r2h4lm1m"))))
    (properties `((upstream-name . "JMbayes2")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival
                             r-survc1
                             r-rcpparmadillo
                             r-rcpp
                             r-parallelly
                             r-nlme
                             r-matrixstats
                             r-mass
                             r-gridextra
                             r-glmmadaptive
                             r-ggplot2
                             r-coda
                             r-abind))
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
    (version "0.9-0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JMbayes" version))
       (sha256
        (base32 "17jsaaz6kqr2ba9bq3xrwldpn4s6hb6wmhgjywndxpr6vsba5s3g"))))
    (properties `((upstream-name . "JMbayes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmatrix" version))
       (sha256
        (base32 "1na1jqm9ck6qwlk09f9ab34sf0kamgcay5a7rxclz5skrxzjffci"))))
    (properties `((upstream-name . "jmatrix")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jmastats
  (package
    (name "r-jmastats")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jmastats" version))
       (sha256
        (base32 "13109rz5nlcmh789y1w1lxy8zl6ym62kf6n73iz4kly026mggyn0"))))
    (properties `((upstream-name . "jmastats")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xml2
                             r-units
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-sf
                             r-rvest
                             r-rlang
                             r-readr
                             r-rappdirs
                             r-purrr
                             r-lubridate
                             r-lifecycle
                             r-ggplot2
                             r-forcats
                             r-dplyr
                             r-crayon
                             r-cli))
    (home-page "https://uribo.github.io/jmastats/")
    (synopsis "Download Weather Data from Japan Meteorological Agency Website")
    (description
     "This package provides features that allow users to download weather data
published by the Japan Meteorological Agency (JMA) website
(<https://www.jma.go.jp/jma/index.html>).  The data includes information dating
back to 1976 and aligns with the categories available on the website.
Additionally, users can process the best track data of typhoons and easily
handle earthquake record files.")
    (license license:expat)))

(define-public r-jm
  (package
    (name "r-jm")
    (version "1.5-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JM" version))
       (sha256
        (base32 "133s565gp18ddnbawhzix978p4yj11lp4vlaqs0dq52ww46f3byj"))))
    (properties `((upstream-name . "JM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-nlme r-mass))
    (home-page "http://jmr.r-forge.r-project.org/")
    (synopsis "Joint Modeling of Longitudinal and Survival Data")
    (description
     "Shared parameter models for the joint modeling of longitudinal and time-to-event
data.")
    (license license:gpl2+)))

(define-public r-jlpm
  (package
    (name "r-jlpm")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JLPM" version))
       (sha256
        (base32 "0xagw84mgbqrdyz9h8d9fw2yibx7k9cp5y1pd8v835n4s10m8wx2"))))
    (properties `((upstream-name . "JLPM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-survival r-stringr r-randtoolbox r-marqlevalg
                             r-lcmm))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=JLPM")
    (synopsis "Joint Latent Process Models")
    (description
     "Estimation of extended joint models with shared random effects.  Longitudinal
data are handled in latent process models for continuous (Gaussian or
curvilinear) and ordinal outcomes while proportional hazard models are used for
the survival part.  We propose a frequentist approach using maximum likelihood
estimation.  See Saulnier et al, 2022 <doi:10.1016/j.ymeth.2022.03.003>.")
    (license license:gpl2+)))

(define-public r-jlmerclusterperm
  (package
    (name "r-jlmerclusterperm")
    (version "1.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jlmerclusterperm" version))
       (sha256
        (base32 "16k325cpsnvd4j97r8j2i8fwwd5mabizg7dbqnwxq5j8l2qr8b9w"))))
    (properties `((upstream-name . "jlmerclusterperm")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list julia))
    (propagated-inputs (list r-lme4
                             r-juliaformulae
                             r-juliaconnector
                             r-generics
                             r-cli
                             r-backports))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yjunechoe/jlmerclusterperm")
    (synopsis
     "Cluster-Based Permutation Analysis for Densely Sampled Time Data")
    (description
     "An implementation of fast cluster-based permutation analysis (CPA) for
densely-sampled time data developed in Maris & Oostenveld, 2007
<doi:10.1016/j.jneumeth.2007.03.024>.  Supports (generalized, mixed-effects)
regression models for the calculation of timewise statistics.  Provides both a
wholesale and a piecemeal interface to the CPA procedure with an emphasis on
interpretability and diagnostics.  Integrates Julia libraries
@code{MixedModels.jl} and GLM.jl for performance improvements, with additional
functionalities for interfacing with Julia from R powered by the
@code{JuliaConnectoR} package.")
    (license license:expat)))

(define-public r-jjb
  (package
    (name "r-jjb")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jjb" version))
       (sha256
        (base32 "0y9yvnzg6xngz1fvzl5jm4yb1pg6wrp3id0gysv214wcznf3gna9"))))
    (properties `((upstream-name . "jjb")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/coatless/jjb")
    (synopsis "Balamuta Miscellaneous")
    (description
     "Set of common functions used for manipulating colors, detecting and interacting
with RStudio', modeling, formatting, determining users operating system, feature
scaling, and more!")
    (license license:gpl2+)))

(define-public r-jipapprox
  (package
    (name "r-jipapprox")
    (version "0.1.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jipApprox" version))
       (sha256
        (base32 "0pi85gl0knyi5r32bdmy2x0w805kczs41nx3r45bq0zs66g14fix"))))
    (properties `((upstream-name . "jipApprox")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jinjar" version))
       (sha256
        (base32 "07m63qxvl62p5rs3rzyljvyfkj6ivxhxchvqk4679msmnbyfhy00"))))
    (properties `((upstream-name . "jinjar")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jico
  (package
    (name "r-jico")
    (version "0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JICO" version))
       (sha256
        (base32 "1q8z14ws071n9r197wn4kfg9ca78pwps33s6r8sblkh6079693w0"))))
    (properties `((upstream-name . "JICO")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlist r-nleqslv r-matrix r-mass))
    (home-page "https://cran.r-project.org/package=JICO")
    (synopsis "Joint and Individual Regression")
    (description
     "An R package that implements the JICO algorithm [Wang, P., Wang, H., Li, Q.,
Shen, D., & Liu, Y. (2024). <Journal of Computational and Graphical Statistics,
33(3), 763-773>].  It aims at solving the multi-group regression problem.  The
algorithm decomposes the responses from multiple groups into shared and
group-specific components, which are driven by low-rank approximations of joint
and individual structures from the covariates respectively.")
    (license license:gpl3+)))

(define-public r-jgsbook
  (package
    (name "r-jgsbook")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jgsbook" version))
       (sha256
        (base32 "1k0jcfjxn5qf67533br3p6zj464knnakxvr563lvgvqxjv4j8sh2"))))
    (properties `((upstream-name . "jgsbook")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-statip r-jsonlite r-httr r-curl))
    (home-page "https://cran.r-project.org/package=jgsbook")
    (synopsis
     "Package of the German Book \"Statistik mit R und RStudio\" by Joerg grosse Schlarmann")
    (description
     "All datasets and functions used in the german book \"Statistik mit R und RStudio\"
by grosse Schlarmann (2010-2024) <https://www.produnis.de/R/>.")
    (license license:gpl2+)))

(define-public r-jgr
  (package
    (name "r-jgr")
    (version "1.9-2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JGR" version))
       (sha256
        (base32 "1rcmbgxwzwhzh5fa0lghjdllcfkpirdavdghvxx5fjysn7a38mjv"))))
    (properties `((upstream-name . "JGR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list openjdk))
    (propagated-inputs (list r-rjava r-javagd))
    (home-page "https://rforge.net/JGR/")
    (synopsis "Java GUI for R")
    (description
     "Java GUI for R - cross-platform, universal and unified Graphical User Interface
for R. For full functionality on Windows and Mac OS X JGR requires a start
application which depends on your OS.")
    (license license:gpl2)))

(define-public r-jfm
  (package
    (name "r-jfm")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JFM" version))
       (sha256
        (base32 "0z34xf62hjyn6ipmw7xv8zrf9jvv7k817dj6x721w7wsvj68g6pq"))))
    (properties `((upstream-name . "JFM")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "2.5.11")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JFE" version))
       (sha256
        (base32 "1jzr9a9pmkxqgasszjqqqxsk0lf8b9g09jk3m5jxm9c2smkrhlrp"))))
    (properties `((upstream-name . "JFE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-xts))
    (home-page "https://cran.r-project.org/package=JFE")
    (synopsis
     "Tools for Analyzing Time Series Data of Just Finance and Econometrics")
    (description
     "Offer procedures to download financial-economic time series data and enhanced
procedures for computing the investment performance indices of Bacon (2004)
<DOI:10.1002/9781119206309>.")
    (license license:gpl2+)))

(define-public r-jfa
  (package
    (name "r-jfa")
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jfa" version))
       (sha256
        (base32 "0fyl2jqv6iywb1w504l1v9pbmmh7m35ba1ln1ypyhprzfagrlk03"))))
    (properties `((upstream-name . "jfa")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-truncdist
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-ggplot2
                             r-extradistr
                             r-bh
                             r-bde))
    (native-inputs (list r-knitr))
    (home-page "https://koenderks.github.io/jfa/")
    (synopsis "Statistical Methods for Auditing")
    (description
     "This package provides statistical methods for auditing as implemented in JASP
for Audit (Derks et al., 2021 <doi:10.21105/joss.02733>).  First, the package
makes it easy for an auditor to plan a statistical sample, select the sample
from the population, and evaluate the misstatement in the sample compliant with
international auditing standards.  Second, the package provides statistical
methods for auditing data, including tests of digit distributions and repeated
values.  Finally, the package includes methods for auditing algorithms on the
aspect of fairness and bias.  Next to classical statistical methodology, the
package implements Bayesian equivalents of these methods whose statistical
underpinnings are described in Derks et al. (2021) <doi:10.1111/ijau.12240>,
Derks et al. (2024) <doi:10.2308/AJPT-2021-086>, Derks et al. (2022)
<doi:10.31234/osf.io/8nf3e> Derks et al. (2024) <doi:10.31234/osf.io/tgq5z>, and
Derks et al. (2025) <doi:10.31234/osf.io/b8tu2>.")
    (license license:gpl3+)))

(define-public r-jewel
  (package
    (name "r-jewel")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jewel" version))
       (sha256
        (base32 "100lj4ydw7gx93lmnckxivb65yzjwi0cn5l070ss8532wrm297r3"))))
    (properties `((upstream-name . "jewel")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-smut
                             r-purrr
                             r-matrixcalc
                             r-matrix
                             r-mass
                             r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/annaplaksienko/jewel")
    (synopsis "Graphical Models Estimation from Multiple Sources")
    (description
     "Estimates networks of conditional dependencies (Gaussian graphical models) from
multiple classes of data (similar but not exactly, i.e.  measurements on
different equipment, in different locations or for various sub-types).  Package
also allows to generate simulation data and evaluate the performance.
Implementation of the method described in Angelini, De Canditiis and Plaksienko
(2022) <doi:10.3390/math10213983>.")
    (license license:gpl2)))

(define-public r-jetty
  (package
    (name "r-jetty")
    (version "0.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jetty" version))
       (sha256
        (base32 "136dfwiz5858z8q5x9x5z2wa9gip5cs1qp73h6ynhcm09dlg8w6k"))))
    (properties `((upstream-name . "jetty")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rlang r-renv))
    (home-page "https://github.com/dmolitor/jetty")
    (synopsis "Execute R in a 'Docker' Context")
    (description
     "The goal of jetty is to execute R functions and code snippets in an isolated R
subprocess within a Docker container and return the evaluated results to the
local R session.  jetty can install necessary packages at runtime and seamlessly
propagates errors and outputs from the Docker subprocess back to the main
session.  jetty is primarily designed for sandboxed testing and quick execution
of example code.")
    (license license:gpl3+)))

(define-public r-jetpack
  (package
    (name "r-jetpack")
    (version "0.5.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jetpack" version))
       (sha256
        (base32 "0c2vvayci7jm1p97ccgb5nccrgvdyid4fgh12cab18xwrwx1hzxx"))))
    (properties `((upstream-name . "jetpack")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jenga" version))
       (sha256
        (base32 "0yq1nkaakzajjdk3w6hzikl6pwqx0546mcb1ik688b0l55vmwphc"))))
    (properties `((upstream-name . "jenga")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jellyfisher
  (package
    (name "r-jellyfisher")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jellyfisher" version))
       (sha256
        (base32 "010kwvb63zb6hy6vql9rai179y2kgh6z59fhanh9q78r8y1m9w55"))))
    (properties `((upstream-name . "jellyfisher")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringr r-htmlwidgets r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/HautaniemiLab/jellyfisher")
    (synopsis "Visualize Spatiotemporal Tumor Evolution with Jellyfish Plots")
    (description
     "Generates interactive Jellyfish plots to visualize spatiotemporal tumor
evolution by integrating sample and phylogenetic trees into a unified plot.
This approach provides an intuitive way to analyze tumor heterogeneity and
evolution over time and across anatomical locations.  The Jellyfish plot
visualization design was first introduced by Lahtinen, Lavikka, et al. (2023,
<doi:10.1016/j.ccell.2023.04.017>).  This package also supports visualizing
@code{ClonEvol} results, a tool developed by Dang, et al. (2017,
<doi:10.1093/annonc/mdx517>), for analyzing clonal evolution from multi-sample
sequencing data.  The clonevol package is not available on CRAN but can be
installed from its @code{GitHub} repository
(<https://github.com/hdng/clonevol>).")
    (license license:expat)))

(define-public r-jeek
  (package
    (name "r-jeek")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jeek" version))
       (sha256
        (base32 "15n0k0i1wwp72g8zqrjmglnckab3p65q3rnpg6d6h8hjcpv82i7g"))))
    (properties `((upstream-name . "jeek")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
Related Sparse Gaussian Graphical Models\" (ICML 2018) <@code{arXiv:1806.00548>}.")
    (license license:gpl2)))

(define-public r-jds-rmd
  (package
    (name "r-jds-rmd")
    (version "0.3.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jds.rmd" version))
       (sha256
        (base32 "0xhwcm9iphlcq4zbm16212r4gxjjq0ii4cgzz98265vj0zq7ysc1"))))
    (properties `((upstream-name . "jds.rmd")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Jdmbs" version))
       (sha256
        (base32 "14wprvxjyx1da1642z11wkzjiyxd5rbpaw1mzq4x6aw53dvh1kgv"))))
    (properties `((upstream-name . "Jdmbs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases '(modify-phases %standard-phases
                  (add-after 'unpack 'set-HOME
                    (lambda _
                      (setenv "HOME" "/tmp"))))))
    (propagated-inputs (list r-png r-igraph r-ggplot2))
    (native-inputs (list r-r-rsp))
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

(define-public r-jdenticon
  (package
    (name "r-jdenticon")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jdenticon" version))
       (sha256
        (base32 "19gczsf3b00rm1hbqf2azsxh698h0xbbdn3fx3nj5hr7ka24chzr"))))
    (properties `((upstream-name . "jdenticon")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-yesno
                             r-processx
                             r-magick
                             r-jsonlite
                             r-glue
                             r-fs))
    (home-page "https://cran.r-project.org/package=jdenticon")
    (synopsis "Wrapper for the Node.js 'Jdenticon' Library")
    (description
     "This package provides a Wrapper for the Node.js Jdenticon
<https://jdenticon.com/> Library.  Uses esbuild <https://esbuild.github.io/> to
reduce user dependencies.")
    (license license:expat)))

(define-public r-jdcruncher
  (package
    (name "r-jdcruncher")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JDCruncheR" version))
       (sha256
        (base32 "011lx1pwp3mrnzx7psg2chmlxhk4nak09w3nf154q5g5dvgjxhxa"))))
    (properties `((upstream-name . "JDCruncheR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-openxlsx))
    (home-page "https://github.com/InseeFr/JDCruncheR")
    (synopsis
     "Interface Between the 'JDemetra+' Cruncher and R, and Quality Report Generator")
    (description
     "Tool for generating quality reports from cruncher outputs (and calculating
series scores).  The latest version of the cruncher can be downloaded here:
<https://github.com/jdemetra/jwsacruncher/releases>.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-jcvrisk
  (package
    (name "r-jcvrisk")
    (version "0.1.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Jcvrisk" version))
       (sha256
        (base32 "07a8vlw47pknlnbw888xzpcw16g0fd8vyl2p22r3js3dash947hf"))))
    (properties `((upstream-name . "Jcvrisk")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=Jcvrisk")
    (synopsis "Risk Calculator for Cardiovascular Disease in Japan")
    (description
     "This package provides a calculation tool to obtain the 5-year or 10-year risk of
cardiovascular disease from various risk models.")
    (license license:expat)))

(define-public r-jcrimpactfactor
  (package
    (name "r-jcrimpactfactor")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JCRImpactFactor" version))
       (sha256
        (base32 "1i7853i8k03nq7ax9rypm9qcl5qgyddblgbfjp3yxi1s3a6bkwk1"))))
    (properties `((upstream-name . "JCRImpactFactor")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jcp" version))
       (sha256
        (base32 "120hhysgnb5992ss2ays7ksyy0xb251lsxgnxihc11h2rqg6wqv8"))))
    (properties `((upstream-name . "jcp")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jcolors" version))
       (sha256
        (base32 "13rwxavq6zrzq9k6x436ydl1rr98qz7ab6npkg82hwqvx3k30n57"))))
    (properties `((upstream-name . "jcolors")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-scales r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://jaredhuling.org/jcolors/")
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jcext" version))
       (sha256
        (base32 "02zppiyq3gy551zi1g00gam1w4y1wgzn5zi9wrcz8yw915dla0ix"))))
    (properties `((upstream-name . "jcext")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jcalendar
  (package
    (name "r-jcalendar")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jcalendaR" version))
       (sha256
        (base32 "1b8khcdxz77rd7k87462vwwykr2gi5lv0lzj7nm9famid3q7gh1l"))))
    (properties `((upstream-name . "jcalendaR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/indenkun/jcalendaR")
    (synopsis
     "Interconversion Between the Japanese Calendar System and the Western Calendar")
    (description
     "This is a set of simple utility functions to perform mutual conversion between
the current Japanese calendar system that Wareki, the old Japanese calendar
system that the Kyureki calendar and the Julian and Gregorian calendar.  To
calculate each calendar method, it converts to the Julian Day Number.")
    (license license:expat)))

(define-public r-jbrowser
  (package
    (name "r-jbrowser")
    (version "0.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JBrowseR" version))
       (sha256
        (base32 "1v90lzp3md56r4mjskipq4kjvi3szv0qqcdya1hmbjklgmkygvvl"))))
    (properties `((upstream-name . "JBrowseR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Jaya" version))
       (sha256
        (base32 "0qyszpw9bvz29dgf3wqx61h4rzpp0v7y63k214dz53jbrcd2wak0"))))
    (properties `((upstream-name . "Jaya")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/neerajdhanraj/Jaya")
    (synopsis
     "Gradient-Free Optimization Algorithm for Single and Multi-Objective Problems")
    (description
     "An implementation of the Jaya optimization algorithm for both single-objective
and multi-objective problems.  Jaya is a population-based, gradient-free
optimization algorithm capable of solving constrained and unconstrained
optimization problems without hyperparameters.  This package includes features
such as multi-objective Pareto optimization, adaptive population adjustment, and
early stopping.  For further details, see R.V. Rao (2016)
<doi:10.5267/j.ijiec.2015.8.004>.")
    (license license:expat)))

(define-public r-javateak
  (package
    (name "r-javateak")
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "javateak" version))
       (sha256
        (base32 "0f1lr5zqccf9sgr59j8nlg6l6dhsdr35lryjcq3ck6vrlf9s5rm5"))))
    (properties `((upstream-name . "javateak")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://cran.r-project.org/package=javateak")
    (synopsis "Javanese Teak Above Ground Biomass Estimation")
    (description
     "Simplifies the process of estimating above ground biomass components for teak
trees using a few basic inputs, based on the equations taken from the journal
\"Allometric equations for estimating above ground biomass and leaf area of
planted teak (Tectona grandis) forests under agroforestry management in East
Java, Indonesia\" (Purwanto & Shiba, 2006) <doi:10.60409/forestresearch.76.0_1>.
This function is most reliable when applied to trees from the same region where
the equations were developed, specifically East Java, Indonesia.  This function
help to estimate the stem diameter at the lowest major living branch (DB) using
the stem diameter at breast height with R^2 = 0.969.  Estimate the branch dry
weight (WB) using the stem diameter at breast height and tree height (R^2 =
0.979).  Estimate the stem weight (WS) using the stem diameter at breast height
and tree height (R^2 = 0.997.  Also estimate the leaf dry weight (WL) using the
stem diameter at the lowest major living branch (R^2 = 0.996).")
    (license license:expat)))

(define-public r-javagd
  (package
    (name "r-javagd")
    (version "0.6-6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JavaGD" version))
       (sha256
        (base32 "1w4wcwazkkgbkc6mn30sdv9w51hm4chb8w5nfsmpfg0rmpa97c2g"))))
    (properties `((upstream-name . "JavaGD")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rjava))
    (home-page "https://www.rforge.net/JavaGD/")
    (synopsis "Java Graphics Device")
    (description
     "Graphics device routing all graphics commands to a Java program.  The actual
functionality of the @code{JavaGD} depends on the Java-side implementation.
Simple AWT and Swing implementations are included.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-jatsdecoder
  (package
    (name "r-jatsdecoder")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JATSdecoder" version))
       (sha256
        (base32 "1inacnbzspvcqlp5xblvaj3zxdapxzcc7wii763lwj9cpmn018cg"))))
    (properties `((upstream-name . "JATSdecoder")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-opennlp r-nlp))
    (home-page "https://github.com/ingmarboeschen/JATSdecoder")
    (synopsis "Metadata and Text Extraction and Manipulation Tool Set")
    (description
     "This package provides a function collection to extract metadata, sectioned text
and study characteristics from scientific articles in NISO-JATS format.
Articles in PDF format can be converted to NISO-JATS with the Content
@code{ExtRactor} and MINEr ('CERMINE',
<https://github.com/@code{CeON/CERMINE>}).  For convenience, two functions
bundle the extraction heuristics: @code{JATSdecoder()} converts
NISO-JATS'-tagged XML files to a structured list with elements title, author,
journal, history, DOI', abstract, sectioned text and reference list.
@code{study.character()} extracts multiple study characteristics like number of
included studies, statistical methods used, alpha error, power, statistical
results, correction method for multiple testing, software used.  The function
@code{get.stats()} extracts all statistical results from text and recomputes
p-values for many standard test statistics.  It performs a consistency check of
the reported with the recalculated p-values.  An estimation of the involved
sample size is performed based on textual reports within the abstract and the
reported degrees of freedom within statistical results.  In addition, the
package contains some useful functions to process text @code{(text2sentences()},
@code{text2num()}, @code{ngram()}, @code{strsplit2()}, @code{grep2()}).  See
BÃ¶schen, I. (2021) <doi:10.1007/s11192-021-04162-z> BÃ¶schen, I. (2021)
<doi:10.1038/s41598-021-98782-3>, BÃ¶schen, I. (2023)
<doi:10.1038/s41598-022-27085-y>, and BÃ¶schen, I. (2024)
<doi:10.48550/@code{arXiv.2408.07948>}.")
    (license license:gpl3)))

(define-public r-jarbes
  (package
    (name "r-jarbes")
    (version "2.4.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jarbes" version))
       (sha256
        (base32 "0d5hkmfhm1d6x17s7lm0skw1416mcac0l0i6cq9wpdrg4blpj6q4"))))
    (properties `((upstream-name . "jarbes")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list jags))
    (propagated-inputs (list r-tidyr
                             r-rjags
                             r-r2jags
                             r-qpdf
                             r-mass
                             r-kableextra
                             r-gridextra
                             r-ggplot2
                             r-ggextra
                             r-ggally
                             r-bookdown))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "japanstat" version))
       (sha256
        (base32 "0rd2q23s9r075ns47ccmr8fjvdcv2jncjs9w1c668s597cwkf6lb"))))
    (properties `((upstream-name . "japanstat")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-japanapis
  (package
    (name "r-japanapis")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JapanAPIs" version))
       (sha256
        (base32 "1ins6xyxml7jwmia211bh84bzcyb1a2kcfrlsnx5slczvjdfzfih"))))
    (properties `((upstream-name . "JapanAPIs")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tibble r-scales r-jsonlite r-httr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lightbluetitan/japanapis")
    (synopsis "Access Japanese Data via Public APIs and Curated Datasets")
    (description
     "This package provides functions to access data from public RESTful APIs
including Nager.Date', World Bank API', and REST Countries API', retrieving
real-time or historical data related to Japan, such as holidays, economic
indicators, and international demographic and geopolitical indicators.
Additionally, the package includes one of the largest curated collections of
open datasets focused on Japan, covering topics such as natural disasters,
economic production, vehicle industry, air quality, demographics, and
administrative divisions.  The package supports reproducible research and
teaching by integrating reliable international APIs and structured datasets from
public, academic, and government sources.  For more information on the APIs,
see: Nager.Date <https://date.nager.at/Api>, World Bank API
<https://datahelpdesk.worldbank.org/knowledgebase/articles/889392>, and REST
Countries API <https://restcountries.com/>.")
    (license license:expat)))

(define-public r-janus
  (package
    (name "r-janus")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "janus" version))
       (sha256
        (base32 "0dpd24qxwlnrrjyx2gffsmfbsf1schfnq9ck75k9935gmwy2ig04"))))
    (properties `((upstream-name . "janus")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-tictoc
                             r-tensorflow
                             r-statrank
                             r-rmpfr
                             r-reticulate
                             r-readr
                             r-rcppalgos
                             r-purrr
                             r-narray
                             r-metrics
                             r-lubridate
                             r-keras
                             r-hash
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (home-page "https://rpubs.com/giancarlo_vercellino/janus")
    (synopsis "Optimized Recommending System Based on 'tensorflow'")
    (description
     "Proposes a coarse-to-fine optimization of a recommending system based on
deep-neural networks using tensorflow'.")
    (license license:gpl3)))

(define-public r-jane
  (package
    (name "r-jane")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JANE" version))
       (sha256
        (base32 "1mgcndi427rjyy81idwhxnb9ql1y10vahz3n1qdz37fkimp37gjp"))))
    (properties `((upstream-name . "JANE")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-stringdist
                             r-scales
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-progressr
                             r-progress
                             r-mclust
                             r-matrix
                             r-igraph
                             r-future-apply
                             r-future
                             r-extradistr
                             r-aricode))
    (native-inputs (list r-knitr))
    (home-page "https://a1arakkal.github.io/JANE/")
    (synopsis "Just Another Latent Space Network Clustering Algorithm")
    (description
     "Fit latent space network cluster models using an expectation-maximization
algorithm.  Enables flexible modeling of unweighted or weighted network data
(with or without noise edges), supporting both directed and undirected networks
(with or without degree and strength heterogeneity).  Designed to handle large
networks efficiently, it allows users to explore network structure through
latent space representations, identify clusters (i.e., community detection)
within network data, and simulate networks with varying clustering, connectivity
patterns, and noise edges.  Methodology for the implementation is described in
Arakkal and Sewell (2025) <doi:10.1016/j.csda.2025.108228>.")
    (license license:gpl3+)))

(define-public r-jamendor
  (package
    (name "r-jamendor")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JamendoR" version))
       (sha256
        (base32 "0rrfbci413mqq53p5fyj8rjangdx21iyin6hzqkxyrxrv3n5mfbx"))))
    (properties `((upstream-name . "JamendoR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-jsonlite r-httr r-dplyr))
    (home-page "https://github.com/MaxGreil/JamendoR")
    (synopsis "Access to 'Jamendo' API")
    (description
     "This package provides an interface to Jamendo API
<https://developer.jamendo.com/v3.0>.  Pull audio, features and other
information for a given Jamendo user (including yourself!) or enter an artist's
-, album's -, or track's name and retrieve the available information in seconds.")
    (license license:expat)))

(define-public r-jamba
  (package
    (name "r-jamba")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jamba" version))
       (sha256
        (base32 "0j4vcs63hg0yjymz9i7lhkyndq0b18xdyw8bs764zrz4pdmgad80"))))
    (properties `((upstream-name . "jamba")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr r-rcolorbrewer r-kernsmooth r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://jmw86069.github.io/jamba/")
    (synopsis "Just Analysis Methods Base")
    (description
     "Just analysis methods ('jam') base functions focused on bioinformatics.
Version- and gene-centric alphanumeric sort, unique name and version assignment,
colorized console and HTML output, color ramp and palette manipulation,
Rmarkdown cache import, styled Excel worksheet import and export, interpolated
raster output from smooth scatter and image plots, list to delimited vector,
efficient list tools.")
    (license license:expat)))

(define-public r-jalcal
  (package
    (name "r-jalcal")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jalcal" version))
       (sha256
        (base32 "0cay6skvpxb9whi44p6j8wmqib1s2a6lr9qchaqvsngpbfkjas55"))))
    (properties `((upstream-name . "jalcal")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (home-page "https://github.com/jalilian/jalcal")
    (synopsis
     "Convert Between Jalaali (Persian or Solar Hijri) and Gregorian Calendar Dates")
    (description
     "The Jalaali calendar, also known as the Persian or Solar Hijri calendar, is the
official calendar of Iran and Afghanistan.  It starts on Nowruz, the spring
equinox, and follows an astronomical system for determining leap years.  Each
year consists of 365 or 366 days, divided into 12 months.  This package provides
functions for converting dates between the Jalaali and Gregorian calendars.  The
conversion calculations are based on the work of Kazimierz M. Borkowski (1996)
(<doi:10.1007/BF00055188>), who used an analytical model of Earth's motion to
compute equinoxes from AD 550 to 3800 and determine leap years based on Tehran
time.")
    (license license:gpl2+)))

(define-public r-jagsui
  (package
    (name "r-jagsui")
    (version "1.6.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jagsUI" version))
       (sha256
        (base32 "1xacfj580s5p3q03z079zvmpbjccl5pd25dsz6blg145yk1f9xqp"))))
    (properties `((upstream-name . "jagsUI")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list jags))
    (propagated-inputs (list r-rjags r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://kenkellner.com/jagsUI/")
    (synopsis "Wrapper Around 'rjags' to Streamline 'JAGS' Analyses")
    (description
     "This package provides a set of wrappers around rjags functions to run Bayesian
analyses in JAGS (specifically, via libjags').  A single function call can
control adaptive, burn-in, and sampling MCMC phases, with MCMC chains run in
sequence or in parallel.  Posterior distributions are automatically summarized
(with the ability to exclude some monitored nodes if desired) and functions are
available to generate figures based on the posteriors (e.g., predictive check
plots, traceplots).  Function inputs, argument syntax, and output format are
nearly identical to the R2@code{WinBUGS'/'R2OpenBUGS} packages to allow easy
switching between MCMC samplers.")
    (license license:gpl3)))

(define-public r-jagstargets
  (package
    (name "r-jagstargets")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jagstargets" version))
       (sha256
        (base32 "1nhlqn30p2hzpvr9wspccmd68fkc192pcfanvi059ry1zn31iwvh"))))
    (properties `((upstream-name . "jagstargets")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-withr
                             r-tidyselect
                             r-tibble
                             r-targets
                             r-tarchetypes
                             r-secretbase
                             r-rlang
                             r-rjags
                             r-r2jags
                             r-qs2
                             r-purrr
                             r-posterior
                             r-fst
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/jagstargets/")
    (synopsis "Targets for JAGS Pipelines")
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
    (version "0.4.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jagshelper" version))
       (sha256
        (base32 "1i214hkg0g2zbln5cy9s175w1jf3akz3jpzf9wydd9wcbl9j0qa2"))))
    (properties `((upstream-name . "jagshelper")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-mass r-jagsui))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mbtyers/jagshelper")
    (synopsis "Extracting and Visualizing Output from 'jagsUI'")
    (description
     "This package provides tools are provided to streamline Bayesian analyses in JAGS
using the @code{jagsUI} package.  Included are functions for extracting output
in simpler format, functions for streamlining assessment of convergence, and
functions for producing summary plots of output.  Also included is a function
that provides a simple template for running JAGS from R'.  Referenced materials
can be found at <DOI:10.1214/ss/1177011136>.")
    (license license:gpl2)))

(define-public r-jaggr
  (package
    (name "r-jaggr")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jaggR" version))
       (sha256
        (base32 "0qd4kwcc8zcvg2p1njcv7z4y5ssg77zsylph5bcaqdjxq996q7rv"))))
    (properties `((upstream-name . "jaggR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jage
  (package
    (name "r-jage")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jage" version))
       (sha256
        (base32 "159qgsj0syk6vg4sn4y2kk18hsm1xcp5i2cfjq8srgq14cdh91bd"))))
    (properties `((upstream-name . "jage")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-pracma r-mvtnorm r-data-table))
    (home-page "https://cran.r-project.org/package=jage")
    (synopsis "Estimation of Developmental Age")
    (description
     "Bayesian methods for estimating developmental age from ordinal dental data.  For
an explanation of the model used, see Konigsberg (2015)
<doi:10.3109/03014460.2015.1045430>.  For details on the conditional correlation
correction, see Sgheiza (2022) <doi:10.1016/j.forsciint.2021.111135>.  Dental
scoring is based on Moorrees, Fanning, and Hunt (1963)
<doi:10.1177/00220345630420062701>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-jadelizardoptions
  (package
    (name "r-jadelizardoptions")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jadeLizardOptions" version))
       (sha256
        (base32 "1919qm9b5nb6bjwbqhsnimgn5lhcrrhd90ndnsc9kj3z3khw9mkd"))))
    (properties `((upstream-name . "jadeLizardOptions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jacquard
  (package
    (name "r-jacquard")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "Jacquard" version))
       (sha256
        (base32 "12v7vpis5gw9gqainmk15gkk15fqp7wak20bzcjx1rnshg5xngrp"))))
    (properties `((upstream-name . "Jacquard")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsolnp))
    (native-inputs (list r-rmarkdown r-knitr))
    (home-page "https://www.r-project.org")
    (synopsis "Estimation of Jacquard's Genetic Identity Coefficients")
    (description
     "This package contains procedures to estimate the nine condensed Jacquard genetic
identity coefficients (Jacquard, 1974) <doi:10.1007/978-3-642-88415-3> by
constrained least squares (Graffelman et al., 2024)
<doi:10.1101/2024.03.25.586682> and by the method of moments (Csuros, 2014)
<doi:10.1016/j.tpb.2013.11.001>.  These procedures require previous estimation
of the allele frequencies.  Functions are supplied that estimate relationship
parameters that derive from the Jacquard coefficients, such as individual
inbreeding coefficients and kinship coefficients.")
    (license license:gpl2+)))

(define-public r-jacpop
  (package
    (name "r-jacpop")
    (version "0.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jacpop" version))
       (sha256
        (base32 "0kq6rn33civ2g6i5nwfqvcgmnn5k2dwmw60lkmz4ywm0y4xxlkai"))))
    (properties `((upstream-name . "jacpop")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "JacobiEigen" version))
       (sha256
        (base32 "1jm63w2jn89pk725x3d9myq010mb0g5ir8vhv29mkiwgrqig6iw1"))))
    (properties `((upstream-name . "JacobiEigen")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (version "3.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jacobi" version))
       (sha256
        (base32 "1i2v5sgwlbihavrj46g4mkni2b8p6qb7alrnaab30c8lwblsc8g8"))))
    (properties `((upstream-name . "jacobi")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rvcg r-rgl r-rcpp r-carlson))
    (home-page "https://github.com/stla/jacobi")
    (synopsis "Jacobi Theta Functions and Related Functions")
    (description
     "Evaluation of the Jacobi theta functions and related functions: Weierstrass
elliptic function, Weierstrass sigma function, Weierstrass zeta function, Klein
j-function, Dedekind eta function, lambda modular function, Jacobi elliptic
functions, Neville theta functions, Eisenstein series, lemniscate elliptic
functions, elliptic alpha function, Rogers-Ramanujan continued fractions, and
Dixon elliptic functions.  Complex values of the variable are supported.")
    (license license:gpl3)))

(define-public r-jackstraw
  (package
    (name "r-jackstraw")
    (version "1.3.17")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jackstraw" version))
       (sha256
        (base32 "12n3n759wb1p51y27hx7rnw5qy1apbakc2aphgbn68hsy9vvlnw6"))))
    (properties `((upstream-name . "jackstraw")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-rsvd
                             r-irlba
                             r-genio
                             r-corpcor
                             r-clusterr
                             r-cluster
                             r-bedmatrix))
    (home-page "https://cran.r-project.org/package=jackstraw")
    (synopsis "Statistical Inference for Unsupervised Learning")
    (description
     "Test for association between the observed data and their estimated latent
variables.  The jackstraw package provides a resampling strategy and testing
scheme to estimate statistical significance of association between the observed
data and their latent variables.  Depending on the data type and the analysis
aim, the latent variables may be estimated by principal component analysis
(PCA), factor analysis (FA), K-means clustering, and related unsupervised
learning algorithms.  The jackstraw methods learn over-fitting characteristics
inherent in this circular analysis, where the observed data are used to estimate
the latent variables and used again to test against that estimated latent
variables.  When latent variables are estimated by PCA, the jackstraw enables
statistical testing for association between observed variables and latent
variables, as estimated by low-dimensional principal components (PCs).  This
essentially leads to identifying variables that are significantly associated
with PCs.  Similarly, unsupervised clustering, such as K-means clustering,
partition around medoids (PAM), and others, finds coherent groups in
high-dimensional data.  The jackstraw estimates statistical significance of
cluster membership, by testing association between data and cluster centers.
Clustering membership can be improved by using the resulting jackstraw p-values
and posterior inclusion probabilities (PIPs), with an application to
unsupervised evaluation of cell identities in single cell RNA-seq
(@code{scRNA-seq}).")
    (license license:gpl2)))

(define-public r-jackstrap
  (package
    (name "r-jackstrap")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jackstrap" version))
       (sha256
        (base32 "09y9pgb920lnbzlgm6j188q8lw1air83kx383a2f89zz7hhgg7jr"))))
    (properties `((upstream-name . "jackstrap")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

(define-public r-jackknifer
  (package
    (name "r-jackknifer")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jackknifeR" version))
       (sha256
        (base32 "0s6lqvmjr7ndgnarjlm4ffdkzx42si2wsxildg4b2rwh17hsjwvi"))))
    (properties `((upstream-name . "jackknifeR")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-future-apply r-future r-foreach r-dofuture))
    (home-page "https://cran.r-project.org/package=jackknifeR")
    (synopsis "Delete-d Jackknife for Point and Interval Estimation")
    (description
     "This package implements delete-d jackknife resampling for robust statistical
estimation.  The package provides both weighted (HC3-adjusted) and unweighted
versions of jackknife estimation, with parallel computation support.  Suitable
for biomedical research and other fields requiring robust variance estimation.")
    (license license:gpl3+)))

(define-public r-jackalope
  (package
    (name "r-jackalope")
    (version "1.1.6")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jackalope" version))
       (sha256
        (base32 "0hws3w8fq7vdi9bwnky5zcyrl4rrlapzwcq7v2dn8mjjq3cpnba5"))))
    (properties `((upstream-name . "jackalope")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (inputs (list zlib))
    (propagated-inputs (list r-rhtslib
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
(@code{PacBio}) <https://www.pacb.com/> platforms.  It can either read reference
genomes from FASTA files or simulate new ones.  Genomic variants can be
simulated using summary statistics, phylogenies, Variant Call Format (VCF)
files, and coalescent simulationsâthe latter of which can include selection,
recombination, and demographic fluctuations.  jackalope can simulate single,
paired-end, or mate-pair Illumina reads, as well as @code{PacBio} reads.  These
simulations include sequencing errors, mapping qualities, multiplexing, and
optical/polymerase chain reaction (PCR) duplicates.  Simulating Illumina
sequencing is based on ART by Huang et al. (2012)
<doi:10.1093/bioinformatics/btr708>. @code{PacBio} sequencing simulation is
based on @code{SimLoRD} by StÃ¶cker et al. (2016)
<doi:10.1093/bioinformatics/btw286>.  All outputs can be written to standard
file formats.")
    (license license:expat)))

(define-public r-jaccard
  (package
    (name "r-jaccard")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jaccard" version))
       (sha256
        (base32 "10fjm3fpil4mb8jis9h4jhwhd5myh9l2646jf3xw1y7rmjjghyk7"))))
    (properties `((upstream-name . "jaccard")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
    (propagated-inputs (list r-shiny r-rcpp r-qvalue))
    (home-page "https://cran.r-project.org/package=jaccard")
    (synopsis
     "Testing Similarity Between Binary Datasets using Jaccard/Tanimoto Coefficients")
    (description
     "Calculate statistical significance of Jaccard/Tanimoto similarity coefficients.")
    (license license:gpl2)))

(define-public r-jab-adverse-reactions
  (package
    (name "r-jab-adverse-reactions")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jab.adverse.reactions" version))
       (sha256
        (base32 "18rfaiv2w7lvd5psj6qkyfdc363y3xfrrg5fhmcv4s4n0cj8kbsv"))))
    (properties `((upstream-name . "jab.adverse.reactions")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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
    (license license:gpl3+)))

(define-public r-jaatha
  (package
    (name "r-jaatha")
    (version "3.2.5")
    (source
     (origin
       (method url-fetch)
       (uri (cran-uri "jaatha" version))
       (sha256
        (base32 "0npqpb6p4ap64mn5x2y424ayz1gy9s2b1ls4f4bs9l9mhr60z4jy"))))
    (properties `((upstream-name . "jaatha")))
    (build-system r-build-system)
    (arguments
     (list
      #:tests? #f))
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

