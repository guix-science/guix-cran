(define-module (guix-cran packages e)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system r)
  #:use-module ((guix licenses)
                #:prefix license:)
  #:use-module (gnu packages statistics)
  #:use-module (gnu packages cran)
  #:use-module (gnu packages bioconductor)
  #:use-module (gnu packages gcc)
  #:use-module (gnu packages geo)
  #:use-module (gnu packages perl)
  #:use-module (gnu packages haskell-xyz)
  #:use-module (gnu packages mpi)
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
  #:use-module (guix-cran packages j)
  #:use-module (guix-cran packages i)
  #:use-module (guix-cran packages h)
  #:use-module (guix-cran packages g)
  #:use-module (guix-cran packages f)
  #:use-module (guix-cran packages d)
  #:use-module (guix-cran packages c)
  #:use-module (guix-cran packages b)
  #:use-module (guix-cran packages a))

(define-public r-eztune
  (package
    (name "r-eztune")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EZtune" version))
              (sha256
               (base32
                "0scslbgbbwma7sr0w9awg58ly5jwn877xsk6q1gq0ss3rd17pmfk"))))
    (properties `((upstream-name . "EZtune")))
    (build-system r-build-system)
    (propagated-inputs (list r-rpart
                             r-rocr
                             r-optimx
                             r-glmnet
                             r-gbm
                             r-ga
                             r-e1071
                             r-biocstyle
                             r-ada))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EZtune")
    (synopsis
     "Tunes AdaBoost, Elastic Net, Support Vector Machines, and Gradient Boosting Machines")
    (description
     "This package contains two functions that are intended to make tuning supervised
learning methods easy.  The eztune function uses a genetic algorithm or
Hooke-Jeeves optimizer to find the best set of tuning parameters.  The user can
choose the optimizer, the learning method, and if optimization will be based on
accuracy obtained through validation error, cross validation, or resubstitution.
 The function eztune.cv will compute a cross validated error rate.  The purpose
of eztune_cv is to provide a cross validated accuracy or MSE when resubstitution
or validation data are used for optimization because error measures from both
approaches can be misleading.")
    (license license:gpl3)))

(define-public r-ezr
  (package
    (name "r-ezr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezr" version))
              (sha256
               (base32
                "0r4zq0864xpnmczg1zpaasi348j1fllrn0rqfa5fmjh245chcpd4"))))
    (properties `((upstream-name . "ezr")))
    (build-system r-build-system)
    (propagated-inputs (list r-weights
                             r-shinydashboard
                             r-shiny
                             r-moments
                             r-ggridges
                             r-ggplot2
                             r-dt
                             r-data-table))
    (home-page "https://github.com/jinkim3/ezr")
    (synopsis
     "Easy Use of R via Shiny App for Basic Analyses of Experimental Data")
    (description
     "Runs a Shiny App in the local machine for basic statistical and graphical
analyses.  The point-and-click interface of Shiny App enables obtaining the same
analysis outputs (e.g., plots and tables) more quickly, as compared with typing
the required code in R, especially for users without much experience or
expertise with coding.  Examples of possible analyses include tabulating
descriptive statistics for a variable, creating histograms by experimental
groups, and creating a scatter plot and calculating the correlation between two
variables.")
    (license license:gpl3)))

(define-public r-ezplot
  (package
    (name "r-ezplot")
    (version "0.7.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezplot" version))
              (sha256
               (base32
                "1706cb52pl9v7r3mrlcjvybb2b2r5x92sw7dmk1hk34w7wp4sifx"))))
    (properties `((upstream-name . "ezplot")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-lubridate r-ggplot2 r-forcats r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ezplot")
    (synopsis "Functions for Common Chart Types")
    (description
     "Wrapper for the ggplot2 package that creates a variety of common charts (e.g.
bar, line, area, ROC, waterfall, pie) while aiming to reduce typing.")
    (license license:expat)))

(define-public r-ezmmek
  (package
    (name "r-ezmmek")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezmmek" version))
              (sha256
               (base32
                "0x62nzs1kayv95a6ldav732v79gahrri2khy1w678rxbzfx5wkqy"))))
    (properties `((upstream-name . "ezmmek")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-purrr
                             r-nls2
                             r-magrittr
                             r-ggplot2
                             r-dplyr
                             r-assertable))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ezmmek")
    (synopsis "Easy Michaelis-Menten Enzyme Kinetics")
    (description
     "Serves as a platform for published fluorometric enzyme assay protocols.  ezmmek
calibrates, calculates, and plots enzyme activities as they relate to the
transformation of synthetic substrates.  At present, ezmmek implements two
common protocols found in the literature, and is modular to accommodate
additional protocols.  Here, these protocols are referred to as the In-Sample
Calibration (Hoppe, 1983; <doi:10.3354/meps011299>) and In-Buffer Calibration
(German et al., 2011; <doi:10.1016/j.soilbio.2011.03.017>).  protocols.  By
containing multiple protocols, ezmmek aims to stimulate discussion about how to
best optimize fluorometric enzyme assays.  A standardized approach would make
studies more comparable and reproducible.")
    (license license:agpl3)))

(define-public r-ezknitr
  (package
    (name "r-ezknitr")
    (version "0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezknitr" version))
              (sha256
               (base32
                "060a2175zh1nhzmqgz1mpj2c6721n5w5bv695jj4rbl2s2b2h4qj"))))
    (properties `((upstream-name . "ezknitr")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils r-markdown r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropenscilabs/ezknitr")
    (synopsis "Avoid the Typical Working Directory Pain When Using 'knitr'")
    (description
     "An extension of knitr that adds flexibility in several ways.  One common source
of frustration with knitr is that it assumes the directory where the source file
lives should be the working directory, which is often not true.  ezknitr
addresses this problem by giving you complete control over where all the inputs
and outputs are, and adds several other convenient features to make rendering
markdown/HTML documents easier.")
    (license license:expat)))

(define-public r-ezglm
  (package
    (name "r-ezglm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezglm" version))
              (sha256
               (base32
                "0x7ffk3ipzbdr9ddqzv0skmpj5zwazkabibhs74faxnld7pcxhps"))))
    (properties `((upstream-name . "ezglm")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "http://code.google.com/p/ezglm/")
    (synopsis
     "selects significant non-additive interaction between two variables using fast GLM implementation")
    (description
     "This package implements a simplified version of least squares, and logistic
regression for efficiently selecting the significant non-additive interactions
between two variables.")
    (license license:gpl2)))

(define-public r-ezeda
  (package
    (name "r-ezeda")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezEDA" version))
              (sha256
               (base32
                "1qcgvcjksdajn2rhv52bgqz3n0lnxynjdx4gwhkgsy29ffa0sq2c"))))
    (properties `((upstream-name . "ezEDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-ggally
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kviswana/ezEDA")
    (synopsis "Task Oriented Interface for Exploratory Data Analysis")
    (description
     "Enables users to create visualizations using functions based on the data
analysis task rather than on plotting mechanics.  It hides the details of the
individual ggplot2 function calls and allows the user to focus on the end goal.
Useful for quick preliminary explorations.  Provides functions for common
exploration patterns.  Some of the ideas in this package are motivated by Fox
(2015, ISBN:1938377052).")
    (license license:expat)))

(define-public r-ezec
  (package
    (name "r-ezec")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezec" version))
              (sha256
               (base32
                "0lpx55a8fhy6fqdv3zvzx9mh75q34r71v5kp96hkm9jzl4yvrpd2"))))
    (properties `((upstream-name . "ezec")))
    (build-system r-build-system)
    (propagated-inputs (list r-drc r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/grunwaldlab/ezec")
    (synopsis "Easy Interface to Effective Concentration Calculations")
    (description
     "Because fungicide resistance is an important phenotypic trait for fungi and
oomycetes, it is necessary to have a standardized method of statistically
analyzing the Effective Concentration (EC) values.  This package is designed for
those who are not terribly familiar with R to be able to analyze and plot an
entire set of isolates using the drc package.")
    (license license:gpl3)))

(define-public r-ezcutoffs
  (package
    (name "r-ezcutoffs")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezCutoffs" version))
              (sha256
               (base32
                "04ah9dbfwl89xi0di0dslaf8a39nynxymm8lbacgd88al5dg7y1n"))))
    (properties `((upstream-name . "ezCutoffs")))
    (build-system r-build-system)
    (propagated-inputs (list r-progress
                             r-moments
                             r-lavaan
                             r-ggplot2
                             r-foreach
                             r-dosnow))
    (home-page "https://cran.r-project.org/package=ezCutoffs")
    (synopsis "Fit Measure Cutoffs in SEM")
    (description
     "Calculate cutoff values for model fit measures used in structural equation
modeling (SEM) by simulating and testing data sets (cf.  Hu & Bentler, 1999
<doi:10.1080/10705519909540118>) with the same parameters (population model,
number of observations, etc.) as the model under consideration.")
    (license license:gpl3)))

(define-public r-ezcox
  (package
    (name "r-ezcox")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ezcox" version))
              (sha256
               (base32
                "0mikrdmi3q7qc2fvh1hk6fwy2y9xafwggyvx0cgnzzqi5gjjfki7"))))
    (properties `((upstream-name . "ezcox")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survival
                             r-scales
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-ggplot2
                             r-forestmodel
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ShixiangWang/ezcox")
    (synopsis "Easily Process a Batch of Cox Models")
    (description
     "This package provides a tool to operate a batch of univariate or multivariate
Cox models and return tidy result.")
    (license license:gpl3)))

(define-public r-ez-combat
  (package
    (name "r-ez-combat")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ez.combat" version))
              (sha256
               (base32
                "1vpycf6gambwg8218wwjc9h3rhsin7qrhh0mpd3r6n9fp03y634f"))))
    (properties `((upstream-name . "ez.combat")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ez.combat")
    (synopsis "Easy ComBat Harmonization")
    (description
     "This package provides a dataframe-friendly implementation of ComBat
Harmonization which uses an empirical Bayesian framework to remove batch
effects.  Johnson WE & Li C (2007) <doi:10.1093/biostatistics/kxj037> \"Adjusting
batch effects in microarray expression data using empirical Bayes methods.\"
Fortin J-P, Cullen N, Sheline YI, Taylor WD, Aselcioglu I, Cook PA, Adams P,
Cooper C, Fava M, McGrath PJ, McInnes M, Phillips ML, Trivedi MH, Weissman MM, &
Shinohara RT (2017) <doi:10.1016/j.neuroimage.2017.11.024> \"Harmonization of
cortical thickness measurements across scanners and sites.\" Fortin J-P, Parker
D, Tun<e7> B, Watanabe T, Elliott MA, Ruparel K, Roalf DR, Satterthwaite TD, Gur
RC, Gur RE, Schultz RT, Verma R, & Shinohara RT (2017)
<doi:10.1016/j.neuroimage.2017.08.047> \"Harmonization of multi-site diffusion
tensor imaging data.\"")
    (license license:artistic2.0)))

(define-public r-eyetrackr
  (package
    (name "r-eyetrackr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eyeTrackR" version))
              (sha256
               (base32
                "14m7l8v0ry1ami1jl0xjp743m1ycklgfwi06vk5amppdp5w3w3qr"))))
    (properties `((upstream-name . "eyeTrackR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-plyr r-data-table))
    (home-page "https://cran.r-project.org/package=eyeTrackR")
    (synopsis "Organising and Analysing Eye-Tracking Data")
    (description
     "This package provides a set of functions for organising and analysing datasets
from experiments run using Eyelink eye-trackers.  Organising functions help to
clean and prepare eye-tracking datasets for analysis, and mark up key events
such as display changes and responses made by participants.  Analysing functions
help to create means for a wide range of standard measures (such as mean
fixation durations'), which can then be fed into the appropriate statistical
analyses and graphing packages as necessary.")
    (license license:gpl3)))

(define-public r-eyetrackingr
  (package
    (name "r-eyetrackingr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eyetrackingR" version))
              (sha256
               (base32
                "1hpiy84zzsvqqlrw8c7wrcmdggncwf3jq7q6m961lp62d2hhs576"))))
    (properties `((upstream-name . "eyetrackingR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-rlang
                             r-purrr
                             r-lazyeval
                             r-ggplot2
                             r-dplyr
                             r-broom-mixed
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "http://www.eyetracking-r.com/")
    (synopsis "Eye-Tracking Data Analysis")
    (description
     "Addresses tasks along the pipeline from raw data to analysis and visualization
for eye-tracking data.  Offers several popular types of analyses, including
linear and growth curve time analyses, onset-contingent reaction time analyses,
as well as several non-parametric bootstrapping approaches.  For references to
the approach see Mirman, Dixon & Magnuson (2008)
<doi:10.1016/j.jml.2007.11.006>, and Barr (2008)
<doi:10.1016/j.jml.2007.09.002>.")
    (license license:expat)))

(define-public r-eyeread
  (package
    (name "r-eyeread")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eyeRead" version))
              (sha256
               (base32
                "0f6knzr4fdipbrvcsk0q9yjvkjjyc4wc252lq2s41gdvj3hv575d"))))
    (properties `((upstream-name . "eyeRead")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-data-table))
    (home-page "https://github.com/SanVerhavert/eyeRead")
    (synopsis "Prepare/Analyse Eye Tracking Data for Reading")
    (description
     "This package provides functions to prepare and analyse eye tracking data of
reading exercises.  The functions allow some basic data preparations and code
fixations as first and second pass.  First passes can be further devided into
forward and reading.  The package further allows for aggregating fixation times
per AOI or per AOI and per type of pass (first forward, first rereading,
second).  These methods are based on HyÃ¶nÃ¤, Lorch, and Rinck (2003)
<doi:10.1016/B978-044451020-4/50018-9> and HyÃ¶nÃ¤, and Lorch (2004)
<doi:10.1016/j.learninstruc.2004.01.001>.  It is also possible to convert
between metric length and visual degrees.")
    (license license:gpl3)))

(define-public r-eyelinkreader
  (package
    (name "r-eyelinkreader")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eyelinkReader" version))
              (sha256
               (base32
                "0nx2sc3r3mhz13f2xd00h6kd98nv2dyywslxi6l20riss5k6k671"))))
    (properties `((upstream-name . "eyelinkReader")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-stringr
                             r-rlang
                             r-rcppprogress
                             r-rcpp
                             r-ggplot2
                             r-fs
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alexander-pastukhov/eyelinkReader/")
    (synopsis "Import Gaze Data for EyeLink Eye Tracker")
    (description
     "Import gaze data from edf files generated by the SR Research
<https://www.sr-research.com/> EyeLink eye tracker.  Gaze data, both recorded
events and samples, is imported per trial.  The package allows to extract events
of interest, such as saccades, blinks, etc.  as well as recorded variables and
custom events (areas of interest, triggers) into separate tables.  The package
requires EDF API library that can be obtained at <https://www.sr-support.com/>.")
    (license license:gpl3+)))

(define-public r-eyedata
  (package
    (name "r-eyedata")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eyedata" version))
              (sha256
               (base32
                "1xnll3x1sm0rv6hq2w22wa9n5qm8r827m7sr3dj54xb1i8j75gj3"))))
    (properties `((upstream-name . "eyedata")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://github.com/tjebo/eyedata")
    (synopsis "Open Source Ophthalmic Data Sets Curated for R")
    (description
     "Open source data allows for reproducible research and helps advance our
knowledge.  The purpose of this package is to collate open source ophthalmic
data sets curated for direct use.  This is real life data of people with
intravitreal injections with anti-vascular endothelial growth factor
(anti-VEGF), due to age-related macular degeneration or diabetic macular edema.
Associated publications of the data sets: Fu et al. (2020)
<doi:10.1001/jamaophthalmol.2020.5044>, Moraes et al (2020)
<doi:10.1016/j.ophtha.2020.09.025>, Fasler et al. (2019)
<doi:10.1136/bmjopen-2018-027441>, Arpa et al. (2020)
<doi:10.1136/bjophthalmol-2020-317161>, Kern et al.  2020,
<doi:10.1038/s41433-020-1048-0>.")
    (license license:expat)))

(define-public r-eye
  (package
    (name "r-eye")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eye" version))
              (sha256
               (base32
                "0la9hlpryqczi6v6pyjx2hdhhdgm3aijs45v1nj76a867zmf77k9"))))
    (properties `((upstream-name . "eye")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-magrittr
                             r-lubridate
                             r-english
                             r-dplyr
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tjebo/eye")
    (synopsis "Analysis of Eye Data")
    (description
     "There is no ophthalmic researcher who has not had headaches from the handling of
visual acuity entries.  Different notations, untidy entries.  This shall now be
a matter of the past.  Eye makes it as easy as pie to work with VA data - easy
cleaning, easy conversion between Snellen, logMAR, ETDRS letters, and
qualitative visual acuity shall never pester you again.  The eye package
automates the pesky task to count number of patients and eyes, and can help to
clean data with easy re-coding for right and left eyes.  It also contains
functions to help reshaping eye side specific variables between wide and long
format.  Visual acuity conversion is based on Schulze-Bonsel et al. (2006)
<doi:10.1167/iovs.05-0981>, Gregori et al. (2010)
<doi:10.1097/iae.0b013e3181d87e04>, Beck et al. (2003)
<doi:10.1016/s0002-9394(02)01825-1> and Bach (2007)
<http:michaelbach.de/sci/acuity.html>.")
    (license license:expat)))

(define-public r-exuber
  (package
    (name "r-exuber")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exuber" version))
              (sha256
               (base32
                "05p6izwcw3qr6rl9f0qj96g4inn1hlacy7mmnr1mh0vz9x4b2mig"))))
    (properties `((upstream-name . "exuber")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-purrr
                             r-progress
                             r-lubridate
                             r-glue
                             r-ggplot2
                             r-generics
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-dorng
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kvasilopoulos/exuber")
    (synopsis "Econometric Analysis of Explosive Time Series")
    (description
     "Testing for and dating periods of explosive dynamics (exuberance) in time series
using the univariate and panel recursive unit root tests proposed by Phillips et
al. (2015) <doi:10.1111/iere.12132> and Pavlidis et al. (2016)
<doi:10.1007/s11146-015-9531-2>.The recursive least-squares algorithm utilizes
the matrix inversion lemma to avoid matrix inversion which results in
significant speed improvements.  Simulation of a variety of
periodically-collapsing bubble processes.  Details can be found in Vasilopoulos
et al. (2022) <doi:10.18637/jss.v103.i10>.")
    (license license:gpl3)))

(define-public r-extremogram
  (package
    (name "r-extremogram")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremogram" version))
              (sha256
               (base32
                "13k869v6j4ik9p8w0gf1absvb45xbd3nnwghsz0ix7y0vyvry358"))))
    (properties `((upstream-name . "extremogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-boot))
    (home-page "https://cran.r-project.org/package=extremogram")
    (synopsis "Estimation of Extreme Value Dependence for Time Series Data")
    (description
     "Estimation of the sample univariate, cross and return time extremograms.  The
package can also adds empirical confidence bands to each of the extremogram
plots via a permutation procedure under the assumption that the data are
independent.  Finally, the stationary bootstrap allows us to construct credible
confidence bands for the extremograms.")
    (license license:gpl3)))

(define-public r-extremis
  (package
    (name "r-extremis")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremis" version))
              (sha256
               (base32
                "11y3cb5z6vsrpdffdr44afz3is0ikxvpb81a8pwc7p8q63rxq4a2"))))
    (properties `((upstream-name . "extremis")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-evd r-emplik))
    (home-page "https://cran.r-project.org/package=extremis")
    (synopsis "Statistics of Extremes")
    (description
     "Conducts inference in statistical models for extreme values (de Carvalho et al
(2012), <doi:10.1080/03610926.2012.709905>; de Carvalho and Davison (2014),
<doi:10.1080/01621459.2013.872651>; Einmahl et al (2016),
<doi:10.1111/rssb.12099>).")
    (license license:gpl3+)))

(define-public r-extremevalues
  (package
    (name "r-extremevalues")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremevalues" version))
              (sha256
               (base32
                "0ijha5zzmv3qr0czm4qxk28kg3ql5jh3nk9fr0flzl8d9n3z0jx6"))))
    (properties `((upstream-name . "extremevalues")))
    (build-system r-build-system)
    (propagated-inputs (list r-gwidgets2tcltk r-gwidgets2))
    (home-page "https://www.github.com/markvanderloo/extremevalues")
    (synopsis "Univariate Outlier Detection")
    (description "Detect outliers in one-dimensional data.")
    (license license:gpl2)))

(define-public r-extremestat
  (package
    (name "r-extremestat")
    (version "1.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremeStat" version))
              (sha256
               (base32
                "17l7ccnyg09dg9a3204b51axmj46gghmlqkd4kq6fsldmwic1zv6"))))
    (properties `((upstream-name . "extremeStat")))
    (build-system r-build-system)
    (propagated-inputs (list r-renext
                             r-rcolorbrewer
                             r-pbapply
                             r-lmomco
                             r-ismev
                             r-fextremes
                             r-extremes
                             r-evir
                             r-evd
                             r-berryfunctions))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brry/extremeStat")
    (synopsis "Extreme Value Statistics and Quantile Estimation")
    (description
     "Fit, plot and compare several (extreme value) distribution functions.  Compute
(truncated) distribution quantile estimates and plot return periods on a linear
scale.  On the fitting method, see Asquith (2011): Distributional Analysis with
L-moment Statistics [...] ISBN 1463508417.")
    (license license:gpl2+)))

(define-public r-extremerisks
  (package
    (name "r-extremerisks")
    (version "0.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtremeRisks" version))
              (sha256
               (base32
                "1mvkrwyj9kwg35dzm9jzx311qqd4v3nnbrr6d64x476ni4pnrbl8"))))
    (properties `((upstream-name . "ExtremeRisks")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm
                             r-pracma
                             r-plot3d
                             r-mvtnorm
                             r-evd
                             r-copula))
    (home-page "mypage.unibocconi.it/simonepadoan/")
    (synopsis "Extreme Risk Measures")
    (description
     "This package provides a set of procedures for estimating risks related to
extreme events via risk measures such as Expectile, Value-at-Risk, etc.  is
provided.  Estimation methods for univariate independent observations and
temporal dependent observations are available.  The methodology is extended to
the case of independent multidimensional observations.  The statistical
inference is performed through parametric and non-parametric estimators.
Inferential procedures such as confidence intervals, confidence regions and
hypothesis testing are obtained by exploiting the asymptotic theory.  Adapts the
methodologies derived in Padoan and Stupfler (2020) <arxiv:2004.04078>, Padoan
and Stupfler (2020) <arxiv:2007.08944>, Daouia et al. (2018)
<doi:10.1111/rssb.12254>, Drees (2000) <doi:10.1214/aoap/1019487617>, Drees
(2003) <doi:10.3150/bj/1066223272>, de Haan and Ferreira (2006)
<doi:10.1007/0-387-34471-3>, de Haan et al. (2016)
<doi:10.1007/s00780-015-0287-6>.")
    (license license:gpl2+)))

(define-public r-extremeindex
  (package
    (name "r-extremeindex")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremeIndex" version))
              (sha256
               (base32
                "19zkqabk7n5v4nnwlkxbrym4rf1ljbpblggiqd9s9f6ylir417pv"))))
    (properties `((upstream-name . "extremeIndex")))
    (build-system r-build-system)
    (propagated-inputs (list r-gmm r-evir r-evd r-boot))
    (home-page "https://cran.r-project.org/package=extremeIndex")
    (synopsis "Forecast Verification for Extreme Events")
    (description
     "An index measuring the amount of information brought by forecasts for extreme
events, subject to calibration, is computed.  This index is originally designed
for weather or climate forecasts, but it may be used in other forecasting
contexts.  This is the implementation of the index in Taillardat et al. (2019)
<arXiv:1905.04022>.")
    (license license:gpl3)))

(define-public r-extremefit
  (package
    (name "r-extremefit")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extremefit" version))
              (sha256
               (base32
                "07gx6dp0kz4y1jn90hsfvkhn6k7i4flh7ghdz9v5nwda86f55q2s"))))
    (properties `((upstream-name . "extremefit")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=extremefit")
    (synopsis "Estimation of Extreme Conditional Quantiles and Probabilities")
    (description
     "Extreme value theory, nonparametric kernel estimation, tail conditional
probabilities, extreme conditional quantile, adaptive estimation, quantile
regression, survival probabilities.")
    (license license:gpl2)))

(define-public r-extremebounds
  (package
    (name "r-extremebounds")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtremeBounds" version))
              (sha256
               (base32
                "12bc4mmkmggvk3kfmz6nq13fa2470z0bx8smnvq9vf1ypdiiw85y"))))
    (properties `((upstream-name . "ExtremeBounds")))
    (build-system r-build-system)
    (propagated-inputs (list r-formula))
    (home-page "https://cran.r-project.org/package=ExtremeBounds")
    (synopsis "Extreme Bounds Analysis (EBA)")
    (description
     "An implementation of Extreme Bounds Analysis (EBA), a global sensitivity
analysis that examines the robustness of determinants in regression models.  The
package supports both Leamer's and Sala-i-Martin's versions of EBA, and allows
users to customize all aspects of the analysis.")
    (license license:gpl2+)))

(define-public r-extremaldep
  (package
    (name "r-extremaldep")
    (version "0.0.3-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtremalDep" version))
              (sha256
               (base32
                "1zfgd2n4by85r39gwdnnng2ns5wv8h64vd1j9g4x4ffqhcdbxj3d"))))
    (properties `((upstream-name . "ExtremalDep")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn
                             r-quadprog
                             r-numderiv
                             r-nloptr
                             r-mvtnorm
                             r-gtools
                             r-fda
                             r-evd
                             r-copula))
    (home-page "https://mypage.unibocconi.it/simonepadoan/")
    (synopsis "Extremal Dependence Models")
    (description
     "This package provides a set of procedures for modelling parametrically and
non-parametrically the dependence structure of multivariate extreme-values is
provided.  The statistical inference is performed with non-parametric
estimators, likelihood-based estimators and Bayesian techniques.  Adapts the
methodologies derived in Beranger et al. (2019) <arxiv:1904.08251>, Beranger et
al. (2017) <doi:10.1111/sjos.12240>, Beranger and Padoan (2015)
<arxiv:1508.05561>, Marcon et al. (2017) <doi:10.1002/sta4.145>, Marcon et al.
(2017) <doi:10.1016/j.jspi.2016.10.004> and Marcon et al. (2016)
<doi:10.1214/16-EJS1162>.  It also refers to the works of Bortot (2010)
<https://www.semanticscholar.org/paper/Tail-dependence-in-bivariate-skew-Normal-and-skew-t-Bortot/b0dc1cb608d35bf515c76e39aacc14b4de82e281?p2df>,
Padoan (2011) <doi:10.1016/j.jmva.2011.01.014>, Cooley et al. (2010)
<doi:10.1016/j.jmva.2010.04.007>, Husler and Reiss (1989)
<doi:10.1016/0167-7152(89)90106-5>, Engelke et al. (2015)
<doi:10.1111/rssb.12074>, Coles and Tawn (1991)
<doi:10.1111/j.2517-6161.1991.tb01830.x>, Nikoloulopoulos et al. (2011)
<doi:10.1007/s10687-008-0072-4>, Opitz (2013) <doi:10.1016/j.jmva.2013.08.008>,
Tawn (1990) <doi:10.2307/2336802>, Azzalini and Capitanio (2014)
<doi:10.1017/CBO9781139248891>, Azzalini (2003) <doi:10.1111/1467-9469.00322>,
Azzalini and Capitanio (1999) <doi:10.1111/1467-9868.00194>, Azzalini and Dalla
Valle (1996) <doi:10.1093/biomet/83.4.715>, Einmahl et al. (2013)
<doi:10.1007/s10687-012-0156-z>, Naveau et al (2009) <doi:10.1093/biomet/asp001>
and Heffernan and Tawn (2004) <doi:10.1111/j.1467-9868.2004.02050.x>.")
    (license license:gpl2+)))

(define-public r-extrc
  (package
    (name "r-extrc")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extRC" version))
              (sha256
               (base32
                "0mkvic9nr0asd0g04nlfiy81d7am9a3i65ibxyvbdwsxnf92p8ya"))))
    (properties `((upstream-name . "extRC")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=extRC")
    (synopsis "Extended RC Models for Contingency Tables")
    (description
     "Maximum likelihood estimation of an extended class of row-column (RC)
association models for two-dimensional contingency tables, which are formulated
by a condition of reduced rank on a matrix of extended association parameters;
see Forcina (2019) <arXiv:1910.13848>.  These parameters are defined by choosing
the logit type for the row and column variables among four different options and
a transformation derived from suitable divergence measures.")
    (license license:gpl2+)))

(define-public r-extratum
  (package
    (name "r-extratum")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extRatum" version))
              (sha256
               (base32
                "1w4xfr7ps565xczmn6pr7g4551rj28df1j0y9vckvxdbb4dk1p11"))))
    (properties `((upstream-name . "extRatum")))
    (build-system r-build-system)
    (inputs (list proj geos gdal))
    (propagated-inputs (list r-tidyr r-sf r-dplyr))
    (home-page "https://cran.r-project.org/package=extRatum")
    (synopsis "Summary Statistics for Geospatial Features")
    (description
     "This package provides summary statistics of local geospatial features within a
given geographic area.  It does so by calculating the area covered by a target
geospatial feature (i.e.  buildings, parks, lakes, etc.).  The geospatial
features can be of any type of geospatial data, including point, polygon or line
data.")
    (license license:expat)))

(define-public r-extraterrestrial
  (package
    (name "r-extraterrestrial")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extraterrestrial" version))
              (sha256
               (base32
                "0clss1zwgw1497n2xif82kplr1w1ajs4xs02041ads3l8craj7y1"))))
    (properties `((upstream-name . "extraterrestrial")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=extraterrestrial")
    (synopsis "Astrobiology Equations Estimating Extraterrestrial Life")
    (description
     "Finding life outside the planet Earth several is the ultimate goal of an
astrobiologist.  Using known astronomical measurements and assumptions the
probability of extraterrestrial life existence could be estimated.  Equations
such as the Drake equation (1961) as stated in the paper of Molina (2019)
<arXiv:1912.01783>, Seager (2013)
<https://www.space.com/22648-drake-equation-alien-life-seager.html> and Foucher
et al, (2017) <doi:10.3390/life7040040> are included in the extraterrestrial
package.")
    (license license:gpl3)))

(define-public r-extras
  (package
    (name "r-extras")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extras" version))
              (sha256
               (base32
                "1y9i2vxp06yy0p26n8l4ky9i5zwdhdny1nw62lk6h3yk4rn63qca"))))
    (properties `((upstream-name . "extras")))
    (build-system r-build-system)
    (propagated-inputs (list r-lifecycle r-chk))
    (native-inputs (list r-knitr))
    (home-page "https://poissonconsulting.github.io/extras/")
    (synopsis "Helper Functions for Bayesian Analyses")
    (description
     "This package provides functions to numericise R objects (coerce to numeric
objects), summarise MCMC (Monte Carlo Markov Chain) samples and calculate
deviance residuals as well as R translations of some BUGS (Bayesian Using Gibbs
Sampling), JAGS (Just Another Gibbs Sampler), STAN and TMB (Template Model
Builder) functions.")
    (license license:expat)))

(define-public r-extraoperators
  (package
    (name "r-extraoperators")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extraoperators" version))
              (sha256
               (base32
                "1clyp97ssmdq9ggbv3w5yskx7khnlm4ji7ym3k3b4bx1pazcw4q4"))))
    (properties `((upstream-name . "extraoperators")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://joshuawiley.com/extraoperators")
    (synopsis "Extra Binary Relational and Logical Operators")
    (description
     "Speed up common tasks, particularly logical or relational comparisons and
routine follow up tasks such as finding the indices and subsetting.  Inspired by
mathematics, where something like: 3 < x < 6 is a standard, elegant and clear
way to assert that x is both greater than 3 and less than 6 (see for example
<https://en.wikipedia.org/wiki/Relational_operator>), a chaining operator is
implemented.  The chaining operator, %c%, allows multiple relational operations
to be used in quotes on the right hand side for the same object, on the left
hand side.  The %e% operator allows something like set-builder notation (see for
example <https://en.wikipedia.org/wiki/Set-builder_notation>) to be used on the
right hand side.  All operators have built in prefixes defined for all, subset,
and which to reduce the amount of code needed for common tasks, such as return
those values that are true.")
    (license license:gpl3)))

(define-public r-extrafrail
  (package
    (name "r-extrafrail")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extrafrail" version))
              (sha256
               (base32
                "1yzbpzfqf1l0530m1qyw0c781rvyj3czfv5jxg0s4ss4srj2kzzb"))))
    (properties `((upstream-name . "extrafrail")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-pracma r-expint))
    (home-page "https://cran.r-project.org/package=extrafrail")
    (synopsis
     "Estimation and Additional Tools for Alternative Shared Frailty Models")
    (description
     "Provide estimation and data generation tools for some new multivariate frailty
models.  This version includes the gamma, inverse Gaussian and weighted Lindley
as the distribution for the frailty terms.  For the basal model, it is
considered a parametric approach based on the Weibull distribution and a
semiparametric approach.  For details, see Gallardo and Bourguignon (2022)
<arXiv:2206.12973>.")
    (license license:gpl2+)))

(define-public r-extracttraindata
  (package
    (name "r-extracttraindata")
    (version "9.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtractTrainData" version))
              (sha256
               (base32
                "132f43mk2mjsfv9pfhj1371b4vxnqmnj5lf8xvfznf57xjna7wp1"))))
    (properties `((upstream-name . "ExtractTrainData")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-rgeos r-rgdal r-raster))
    (home-page "https://cran.r-project.org/package=ExtractTrainData")
    (synopsis "Extract Values from Raster")
    (description
     "By using a multispectral image and ESRI shapefile (Point/ Line/ Polygon), a data
table will be generated for classification, regression or other processing.  The
data table will be contained by band wise raster values and shapefile ids (User
Defined).")
    (license license:gpl3)))

(define-public r-extmallows
  (package
    (name "r-extmallows")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtMallows" version))
              (sha256
               (base32
                "0903jslp74s1vzbklq88y2dm0dgkhd6g77b7aipxam98933k0hzz"))))
    (properties `((upstream-name . "ExtMallows")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ExtMallows")
    (synopsis
     "An Extended Mallows Model and Its Hierarchical Version for Ranked Data Aggregation")
    (description
     "For multiple full/partial ranking lists, R package ExtMallows can (1) detect
whether the input ranking lists are over-correlated, and (2) use the Mallows
model or extended Mallows model to integrate the ranking lists, and (3) use
hierarchical extended Mallows model for rank integration if there are groups of
over-correlated ranking lists.")
    (license license:gpl2+)))

(define-public r-extlasso
  (package
    (name "r-extlasso")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extlasso" version))
              (sha256
               (base32
                "01vmnajxc52gk7kj20x8b80lh8qi932g8213mkvvixzsz3ipf689"))))
    (properties `((upstream-name . "extlasso")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=extlasso")
    (synopsis
     "Maximum Penalized Likelihood Estimation with Extended Lasso Penalty")
    (description
     "Estimates coefficients of extended LASSO penalized linear regression and
generalized linear models.  Currently lasso and elastic net penalized linear
regression and generalized linear models are considered.  This package currently
utilizes an accurate approximation of L1 penalty and then a modified Jacobi
algorithm to estimate the coefficients.  There is provision for plotting of the
solutions and predictions of coefficients at given values of lambda.  This
package also contains functions for cross validation to select a suitable lambda
value given the data.  Also provides a function for estimation in fused lasso
penalized linear regression.  For more details, see Mandal, B. N.(2014).
Computational methods for L1 penalized GLM model fitting, unpublished report
submitted to Macquarie University, NSW, Australia.")
    (license license:gpl2+)))

(define-public r-exteriormatch
  (package
    (name "r-exteriormatch")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exteriorMatch" version))
              (sha256
               (base32
                "0cdfj1n502iws1g03rk7x0c18zyazqf3vci9kjm6lrv4j2qwrvip"))))
    (properties `((upstream-name . "exteriorMatch")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=exteriorMatch")
    (synopsis "Constructs the Exterior Match from Two Matched Control Groups")
    (description
     "If one treated group is matched to one control reservoir in two different ways
to produce two sets of treated-control matched pairs, then the two control
groups may be entwined, in the sense that some control individuals are in both
control groups.  The exterior match is used to compare the two control groups.")
    (license license:gpl2)))

(define-public r-extendedfamily
  (package
    (name "r-extendedfamily")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extendedFamily" version))
              (sha256
               (base32
                "0h1wply55cjclhblxmb4pd9qmiwk8vha7vk0i00ab46n7dc1yqa0"))))
    (properties `((upstream-name . "extendedFamily")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv r-assertthat))
    (home-page "https://cran.r-project.org/package=extendedFamily")
    (synopsis "Additional Families for Generalized Linear Models")
    (description
     "This package creates family objects identical to stats family but for new links.")
    (license license:gpl3)))

(define-public r-extdplyr
  (package
    (name "r-extdplyr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "extdplyr" version))
              (sha256
               (base32
                "1zbnp0h0lv1dr40dhdw6ii8rmc5lxcq4wjsm83xpd3y8x9xpglnl"))))
    (properties `((upstream-name . "extdplyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-lazyeval r-dplyr))
    (home-page "https://cran.r-project.org/package=extdplyr")
    (synopsis "Data Manipulation Extensions of 'Dplyr' and 'Tidyr'")
    (description
     "If dplyr is a grammar for data manipulation, extdplyr is like a short paragraph
written in dplyr'.  extdplyr extends dplyr and tidyr verbs to some common
\"routines\" that manipulate data sets.  It uses the same interface and preserves
all the features from dplyr', has good performance, and supports various data
sources.")
    (license license:expat)))

(define-public r-extdist
  (package
    (name "r-extdist")
    (version "0.6-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExtDist" version))
              (sha256
               (base32
                "006q9xahq5zk7s6yc44ihjkr6cnjzp10pgw47zyk1rk81pjblzp3"))))
    (properties `((upstream-name . "ExtDist")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimx r-numderiv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ExtDist")
    (synopsis "Extending the Range of Functions for Probability Distributions")
    (description
     "This package provides a consistent, unified and extensible framework for
estimation of parameters for probability distributions, including parameter
estimation procedures that allow for weighted samples; the current set of
distributions included are: the standard beta, The four-parameter beta, Burr,
gamma, Gumbel, Johnson SB and SU, Laplace, logistic, normal, symmetric truncated
normal, truncated normal, symmetric-reflected truncated beta, standard
symmetric-reflected truncated beta, triangular, uniform, and Weibull
distributions; decision criteria and selections based on these decision
criteria.")
    (license license:gpl2+)))

(define-public r-exrq
  (package
    (name "r-exrq")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EXRQ" version))
              (sha256
               (base32
                "1iqsr52sl2j5q03122a7rsp6n6a2bkysk2r908c89l36gk4sj2i5"))))
    (properties `((upstream-name . "EXRQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-quantreg r-mnormt))
    (home-page "https://cran.r-project.org/package=EXRQ")
    (synopsis "Extreme Regression of Quantiles")
    (description
     "Estimation for high conditional quantiles based on quantile regression.")
    (license license:gpl3)))

(define-public r-exreport
  (package
    (name "r-exreport")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exreport" version))
              (sha256
               (base32
                "0vj60rchhrc5q6x1kv7b95fcmh2a5qynli2w54rrrw1nx54xm8c2"))))
    (properties `((upstream-name . "exreport")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2))
    (home-page "https://cran.r-project.org/package=exreport")
    (synopsis "Fast, Reliable and Elegant Reproducible Research")
    (description
     "Analysis of experimental results and automatic report generation in both
interactive HTML and LaTeX. This package ships with a rich interface for data
modeling and built in functions for the rapid application of statistical tests
and generation of common plots and tables with publish-ready quality.")
    (license license:gpl2)))

(define-public r-expstudy
  (package
    (name "r-expstudy")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expstudy" version))
              (sha256
               (base32
                "0xvrwhgfwddgn943shpmh8ifsa7hyandrpgp1yg9n9iqwmmddg77"))))
    (properties `((upstream-name . "expstudy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-purrr
                             r-pillar
                             r-magrittr
                             r-lifecycle
                             r-glue
                             r-dtplyr
                             r-dplyr
                             r-data-table
                             r-checkmate
                             r-assertthat))
    (home-page "https://github.com/cb12991/expstudy")
    (synopsis "Experience Study Tools for Analytics and Communications")
    (description
     "This package provides a data class of tbl_es to help aid in the formation and
analyses of recurrent or novel experience studies.  A tbl_es has attributes
which identify the key variables used for calculating metrics under an actuarial
perspective.  Common metrics (such as actual-to-expected analysis) can be
quickly generated in aggregate or according to different qualitative factors.
If multiple factors are of interest, grouped metrics can be automatically
computed for each factor individually as well as for all possible combinations.
All resulting output can then be formatted for presentations or left unformatted
for subsequent analyses.  Ultimately, this package aims to reduce time spent
completing repetitive code therefore increasing time for analysis and insight.")
    (license license:expat)))

(define-public r-expss
  (package
    (name "r-expss")
    (version "0.11.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expss" version))
              (sha256
               (base32
                "1c7a50dv265872ng891jcipa5anrq5c5xpx81rix85l95mzwfzix"))))
    (properties `((upstream-name . "expss")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrixstats r-maditr r-htmltable r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://gdemin.github.io/expss/")
    (synopsis
     "Tables, Labels and Some Useful Functions from Spreadsheets and 'SPSS' Statistics")
    (description
     "Package computes and displays tables with support for SPSS'-style labels,
multiple and nested banners, weights, multiple-response variables and
significance testing.  There are facilities for nice output of tables in knitr',
Shiny', *.xlsx files, R and Jupyter notebooks.  Methods for labelled variables
add value labels support to base R functions and to some functions from other
packages.  Additionally, the package brings popular data transformation
functions from SPSS Statistics and Excel': RECODE', COUNT', COUNTIF', VLOOKUP
and etc.  These functions are very useful for data processing in marketing
research surveys.  Package intended to help people to move data processing from
Excel and SPSS to R.")
    (license license:gpl2+)))

(define-public r-expsmooth
  (package
    (name "r-expsmooth")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expsmooth" version))
              (sha256
               (base32
                "0alqg777g7zzbjbg86f00p2jzzlp4zyswpbif7ndd0zr8xis6zdc"))))
    (properties `((upstream-name . "expsmooth")))
    (build-system r-build-system)
    (propagated-inputs (list r-forecast))
    (home-page "https://github.com/robjhyndman/expsmooth")
    (synopsis "Data Sets from \"Forecasting with Exponential Smoothing\"")
    (description
     "Data sets from the book \"Forecasting with exponential smoothing: the state space
approach\" by Hyndman, Koehler, Ord and Snyder (Springer, 2008).")
    (license license:gpl2+)))

(define-public r-expsbm
  (package
    (name "r-expsbm")
    (version "1.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expSBM" version))
              (sha256
               (base32
                "0k8nkwqrcmmhv0x8a2np1rm5cyc9glyvndwdbnp03v0wrg8121sw"))))
    (properties `((upstream-name . "expSBM")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mclust r-gtools
                             r-blockmodels))
    (home-page "https://cran.r-project.org/package=expSBM")
    (synopsis "An Exponential Stochastic Block Model for Interaction Lengths")
    (description
     "Given a continuous-time dynamic network, this package allows one to fit a
stochastic blockmodel where nodes belonging to the same group create
interactions and non-interactions of similar lengths.  This package implements
the methodology described by R. Rastelli and M. Fop (2019) <arXiv:1901.09828>.")
    (license license:gpl3)))

(define-public r-exprep
  (package
    (name "r-exprep")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpRep" version))
              (sha256
               (base32
                "0spv3wd9c8sr338n5kdzrs28yh7s90fl70wsdnkibmlxhnh3ay3g"))))
    (properties `((upstream-name . "ExpRep")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ExpRep")
    (synopsis "Experiment Repetitions")
    (description
     "Allows to calculate the probabilities of occurrences of an event in a great
number of repetitions of Bernoulli experiment, through the application of the
local and the integral theorem of De Moivre Laplace, and the theorem of Poisson.
 Gives the possibility to show the results graphically and analytically, and to
compare the results obtained by the application of the above theorems with those
calculated by the direct application of the Binomial formula.  Is basically
useful for educational purposes.")
    (license (license:fsdg-compatible "Unlimited"))))

(define-public r-expperm
  (package
    (name "r-expperm")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expperm" version))
              (sha256
               (base32
                "0cybna0q3qn3slyc4lv5rby4pr0xkwq0h6n7hl1zhsaqv4c2zc5b"))))
    (properties `((upstream-name . "expperm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=expperm")
    (synopsis
     "Computing Expectations and Marginal Likelihoods for Permutations")
    (description
     "This package provides a set of functions for computing expected permutation
matrices given a matrix of likelihoods for each individual assignment.  It has
been written to accompany the forthcoming paper Computing expectations and
marginal likelihoods for permutations'.  Publication details will be updated as
soon as they are finalized.")
    (license license:gpl3)))

(define-public r-expp
  (package
    (name "r-expp")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expp" version))
              (sha256
               (base32
                "0hb4392biyy85gs7af4p9m7r51ijmqr7wp7c7b0i7lzdf1bnd7fz"))))
    (properties `((upstream-name . "expp")))
    (build-system r-build-system)
    (propagated-inputs (list r-spdep r-spatstat-geom r-sp r-rgeos r-deldir))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=expp")
    (synopsis "Spatial Analysis of Extra-Pair Paternity")
    (description
     "Tools and data to accompany Schlicht, L., Valcu, M., & Kempenaers, B. (2015)
<doi:10.1111/1365-2656.12293>.  Spatial patterns of extra-pair paternity: beyond
paternity gains and losses.  Journal of Animal Ecology, 84(2), 518-531.")
    (license license:gpl3)))

(define-public r-exposr
  (package
    (name "r-exposr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExposR" version))
              (sha256
               (base32
                "090mc6v67lmrpsf3lwrxs8ipyn8a3j03jcvfmz0iiidknp7swbgp"))))
    (properties `((upstream-name . "ExposR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgdal r-raster))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/expos-model/ExposR")
    (synopsis "Models Topographic Exposure to Hurricane Winds")
    (description
     "The EXPOS model uses a digital elevation model (DEM) to estimate exposed and
protected areas for a given hurricane wind direction and inflection angle.  The
resulting topographic exposure maps can be combined with output from the
HURRECON model to estimate hurricane wind damage across a region.  For details
on the original version of the EXPOS model written in Borland Pascal', see:
Boose, Foster, and Fluet (1994) <doi:10.2307/2937142>, Boose, Chamberlin, and
Foster (2001) <doi:10.1890/0012-9615(2001)071[0027:LARIOH]2.0.CO;2>, and Boose,
Serrano, and Foster (2004) <doi:10.1890/02-4057>.")
    (license license:gpl3)))

(define-public r-export
  (package
    (name "r-export")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "export" version))
              (sha256
               (base32
                "1b238d6aa1m2pcg7vdjbrvjj748j3fim5zvhng7lgkag2rzjqa56"))))
    (properties `((upstream-name . "export")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xml2
                             r-stargazer
                             r-rvg
                             r-rgl
                             r-openxlsx
                             r-officer
                             r-flextable
                             r-devemf
                             r-broom))
    (home-page "https://cran.r-project.org/package=export")
    (synopsis "Streamlined Export of Graphs and Data Tables")
    (description
     "Easily export R graphs and statistical output to Microsoft Office /
LibreOffice', Latex and HTML Documents, using sensible defaults that result in
publication-quality output with simple, straightforward commands.  Output to
Microsoft Office is in editable DrawingML vector format for graphs, and can use
corporate template documents for styling.  This enables the production of
standardized reports and also allows for manual tidy-up of the layout of R
graphs in Powerpoint before final publication.  Export of graphs is flexible,
and functions enable the currently showing R graph or the currently showing R
stats object to be exported, but also allow the graphical or tabular output to
be passed as objects.  The package relies on package officer for export to
Office documents,and output files are also fully compatible with LibreOffice'.
Base R', ggplot2 and lattice plots are supported, as well as a wide variety of R
stats objects, via wrappers to xtable(), broom::tidy() and stargazer(),
including aov(), lm(), glm(), lme(), glmnet() and coxph() as well as matrices
and data frames and many more...")
    (license license:gpl2)))

(define-public r-explorer
  (package
    (name "r-explorer")
    (version "0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exploreR" version))
              (sha256
               (base32
                "154j5wiiy9vqdvh1qvdkz2fdp2phcygbbjl7nj5nkn07xwxbsc77"))))
    (properties `((upstream-name . "exploreR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=exploreR")
    (synopsis "Tools for Quickly Exploring Data")
    (description
     "Simplifies some complicated and labor intensive processes involved in exploring
and explaining data.  Allows you to quickly and efficiently visualize the
interaction between variables and simplifies the process of discovering
covariation in your data.  Also includes some convenience features designed to
remove as much redundant typing as possible.")
    (license license:gpl3)))

(define-public r-explore
  (package
    (name "r-explore")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "explore" version))
              (sha256
               (base32
                "0ihg4yd9k979aidjmcnvy65zlwqpyssw1d7p8i0d8z7aim7g2kqd"))))
    (properties `((upstream-name . "explore")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-shiny
                             r-rpart-plot
                             r-rpart
                             r-rmarkdown
                             r-rlang
                             r-mass
                             r-magrittr
                             r-gridextra
                             r-ggplot2
                             r-forcats
                             r-dt
                             r-dplyr
                             r-broom
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rolkra/explore/")
    (synopsis "Simplifies Exploratory Data Analysis")
    (description
     "Interactive data exploration with one line of code or use an easy to remember
set of tidy functions for exploratory data analysis.  Introduces three main
verbs.  explore() to graphically explore a variable or table, describe() to
describe a variable or table and report() to create an automated report.")
    (license license:gpl3)))

(define-public r-exploratory
  (package
    (name "r-exploratory")
    (version "0.3.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exploratory" version))
              (sha256
               (base32
                "164ykw514gfj185ckg3p8jfn7y5al12iab34fqyrkrqpj84gf1qd"))))
    (properties `((upstream-name . "exploratory")))
    (build-system r-build-system)
    (propagated-inputs (list r-weights
                             r-shinydashboard
                             r-shiny
                             r-remotes
                             r-mediation
                             r-lm-beta
                             r-lemon
                             r-ggridges
                             r-ggplot2
                             r-dt
                             r-data-table))
    (home-page "https://exploratoryonly.com")
    (synopsis "Tool for Large-Scale Exploratory Analyses")
    (description
     "Conduct numerous exploratory analyses in an instant with a point-and-click
interface.  With one simple command, this tool launches a Shiny App on the local
machine.  Drag and drop variables in a data set to categorize them as possible
independent, dependent, moderating, or mediating variables.  Then run dozens (or
hundreds) of analyses instantly to uncover any statistically significant
relationships among variables.  Any relationship thus uncovered should be tested
in follow-up studies.  This tool is designed only to facilitate exploratory
analyses and should NEVER be used for p-hacking.  Many of the functions used in
this package are direct copies of functions in the R Package kim and ezr'.
Selected References: Chang et al. (2021)
<https://CRAN.R-project.org/package=shiny>.  Chang et al. (2018)
<https://CRAN.R-project.org/package=shinydashboard>.  Cohen (1988)
<doi:10.4324/9780203771587>.  Dowle et al. (2021)
<https://CRAN.R-project.org/package=data.table>.  Ioannidis (2005)
<doi:10.1371/journal.pmed.0020124> Kim (2021) <doi:10.5281/zenodo.4619237>.  Kim
(2020) <https://CRAN.R-project.org/package=ezr>.  Simmons et al. (2011)
<doi:10.1177/0956797611417632> Tingley et al. (2019)
<https://CRAN.R-project.org/package=mediation>.  Wickham et al. (2020)
<https://CRAN.R-project.org/package=ggplot2>.")
    (license license:gpl3)))

(define-public r-explor
  (package
    (name "r-explor")
    (version "0.3.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "explor" version))
              (sha256
               (base32
                "0sfpw9lgpr9hyn93jwxhijbfqnj466wc5ilszki2r7ziik3nb79i"))))
    (properties `((upstream-name . "explor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-scatterd3
                             r-rcolorbrewer
                             r-highr
                             r-ggplot2
                             r-formatr
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://juba.github.io/explor/")
    (synopsis "Interactive Interfaces for Results Exploration")
    (description
     "Shiny interfaces and graphical functions for multivariate analysis results
exploration.")
    (license license:gpl3+)))

(define-public r-explodelayout
  (package
    (name "r-explodelayout")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExplodeLayout" version))
              (sha256
               (base32
                "0yxf12hv4ypbyxnj1x4wrmj0l52nrx9ss79szl7j4bk9nc98qmli"))))
    (properties `((upstream-name . "ExplodeLayout")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=ExplodeLayout")
    (synopsis
     "Calculate Exploded Coordinates Based on Original Node Coordinates and Node Clustering Membership")
    (description
     "Current layout algorithms such as Kamada Kawai do not take into consideration
disjoint clusters in a network, often resulting in a high overlap among the
clusters, resulting in a visual âhairballâ that often is uninterpretable.
The ExplodeLayout algorithm takes as input (1) an edge list of a unipartite or
bipartite network, (2) node layout coordinates (x, y) generated by a layout
algorithm such as Kamada Kawai, (3) node cluster membership generated from a
clustering algorithm such as modularity maximization, and (4) a radius to enable
the node clusters to be âexplodedâ to reduce their overlap.  The algorithm
uses these inputs to generate new layout coordinates of the nodes which
âexplodesâ the clusters apart, such that the edge lengths within the
clusters are preserved, while the edge lengths between clusters are
recalculated.  The modified network layout with nodes and edges are displayed in
two dimensions.  The user can experiment with different explode radii to
generate a layout which has sufficient separation of clusters, while reducing
the overall layout size of the network.  This package is a basic version of an
earlier version called [epl]<https://github.com/UTMB-DIVA-Lab/epl> that searched
for an optimal explode radius, and offered multiple ways to separate clusters in
a network (Bhavnani et al(2017) <PMID: 28815099>).  The example dataset is for a
bipartite network, but the algorithm can work also for unipartite networks.")
    (license license:expat)))

(define-public r-explainprediction
  (package
    (name "r-explainprediction")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExplainPrediction" version))
              (sha256
               (base32
                "14m3b9fsrpfpr8avsnhl8b3bzk2xlhwgkwag5iq8bj7bzvv4yck1"))))
    (properties `((upstream-name . "ExplainPrediction")))
    (build-system r-build-system)
    (propagated-inputs (list r-semiartificial r-corelearn))
    (home-page "http://lkm.fri.uni-lj.si/rmarko/software/")
    (synopsis
     "Explanation of Predictions for Classification and Regression Models")
    (description
     "Generates explanations for classification and regression models and visualizes
them.  Explanations are generated for individual predictions as well as for
models as a whole.  Two explanation methods are included, EXPLAIN and IME. The
EXPLAIN method is fast but might miss explanations expressed redundantly in the
model.  The IME method is slower as it samples from all feature subsets.  For
the EXPLAIN method see Robnik-Sikonja and Kononenko (2008)
<doi:10.1109/TKDE.2007.190734>, and the IME method is described in Strumbelj and
Kononenko (2010, JMLR, vol.  11:1-18).  All models in package CORElearn are
natively supported, for other prediction models a wrapper function is provided
and illustrated for models from packages randomForest', nnet', and e1071'.")
    (license license:gpl3)))

(define-public r-expirest
  (package
    (name "r-expirest")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expirest" version))
              (sha256
               (base32
                "08gwy1fikj7kg7h6fc7w15621jc0prdqdhzx14ad6dvdi5rd33gv"))))
    (properties `((upstream-name . "expirest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2))
    (home-page "https://github.com/piusdahinden/expirest")
    (synopsis "Expiry Estimation Procedures")
    (description
     "The Australian Regulatory Guidelines for Prescription Medicines (ARGPM),
guidance on \"Stability testing for prescription medicines\", recommends to
predict the shelf life of chemically derived medicines from stability data by
taking the worst case situation at batch release into account.  Consequently, if
a change over time is observed, a release limit needs to be specified.  Finding
a release limit and the associated shelf life is supported, as well as the
standard approach that is recommended by guidance Q1E \"Evaluation of stability
data\" from the International Council for Harmonisation (ICH).")
    (license license:gpl2+)))

(define-public r-expimage
  (package
    (name "r-expimage")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpImage" version))
              (sha256
               (base32
                "0wzq10qv6m3r65g8gzv4ikpwmymmf5rspba5slrqrclmpl1wgvn5"))))
    (properties `((upstream-name . "ExpImage")))
    (build-system r-build-system)
    (propagated-inputs (list r-schemr
                             r-rstudioapi
                             r-raster
                             r-progress
                             r-ggplot2
                             r-foreach
                             r-doparallel
                             r-crayon))
    (native-inputs (list r-knitr))
    (home-page "https://www.youtube.com/channel/UCDGyvLCJnv9RtTY1YMBMVNQ")
    (synopsis "Tool For Analysis of Images in Experiments")
    (description
     "Tools created for image analysis in researches.  There are functions associated
with image editing, segmentation, and obtaining biometric measurements (Este
pacote foi idealizado para para a analise de imagens em pesquisas.  Ha funcoes
associadas a edicao de imagens, segmentacao, e obtencao de medidas biometricas).")
    (license license:gpl3)))

(define-public r-expgenetic
  (package
    (name "r-expgenetic")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpGenetic" version))
              (sha256
               (base32
                "096cxaqbc9y0bnj70fxk94585c880020pqqcx0dwwj839qkry4ha"))))
    (properties `((upstream-name . "ExpGenetic")))
    (build-system r-build-system)
    (propagated-inputs (list r-venndiagram
                             r-plyr
                             r-ggsci
                             r-ggplot2
                             r-futile-logger
                             r-deseq2))
    (home-page "https://cran.r-project.org/package=ExpGenetic")
    (synopsis "Non-Additive Expression Analysis of Hybrid Offspring")
    (description
     "Three functional modules, including genetic features, differential expression
analysis and non-additive expression analysis were integrated into the package.
And the package is suitable for RNA-seq and small RNA sequencing data.  Besides,
two methods of non-additive expression analysis were provided.  One is the
calculation of the additive (a) and dominant (d), the other is the evaluation of
expression level dominance by comparing the total expression of the gene in
hybrid offspring with the expression level in parents.  For non-additive
expression analysis of RNA-seq data, it is only applicable to hybrid offspring
(including two sub-genomes) species for the time being.")
    (license license:agpl3+)))

(define-public r-expertchoice
  (package
    (name "r-expertchoice")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpertChoice" version))
              (sha256
               (base32
                "1pd4v240ywc4wzh249axxb4kz5dccizc08jdjnaygz35hjdg5hvj"))))
    (properties `((upstream-name . "ExpertChoice")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlist r-purrr r-far r-dplyr r-doe-base))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ExpertChoice")
    (synopsis "Design of Discrete Choice and Conjoint Analysis")
    (description
     "Supports designing efficient discrete choice experiments (DCEs).  Experimental
designs can be formed on the basis of orthogonal arrays or search methods for
optimal designs (Federov or mixed integer programs).  Various methods for
converting these experimental designs into a discrete choice experiment.  Many
efficiency measures! Draws from literature of Kuhfeld (2010) and Street et.  al
(2005) <doi:10.1016/j.ijresmar.2005.09.003>.")
    (license license:expat)))

(define-public r-experimentr
  (package
    (name "r-experimentr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "experimentr" version))
              (sha256
               (base32
                "0ji2031r108rzna00zhsh70kfcnhcscz0an0jv0vvj00hrakl0yr"))))
    (properties `((upstream-name . "experimentr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=experimentr")
    (synopsis
     "Datasets Used in Social Science Experiments: A Hands-on Introduction")
    (description
     "This package contains all the datasets that were used in Social Science
Experiments: A Hands-On Introduction and in its R Companion.  Relevant materials
can be found at <https://osf.io/b78je>.")
    (license license:expat)))

(define-public r-experiment
  (package
    (name "r-experiment")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "experiment" version))
              (sha256
               (base32
                "0lzxwpcz7m4wngfw0wyazkhh4icn9zjd8jmgf6ym2zzk3xc4dji1"))))
    (properties `((upstream-name . "experiment")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-boot))
    (home-page "https://github.com/kosukeimai/experiment")
    (synopsis "R Package for Designing and Analyzing Randomized Experiments")
    (description
     "This package provides various statistical methods for designing and analyzing
randomized experiments.  One functionality of the package is the implementation
of randomized-block and matched-pair designs based on possibly multivariate
pre-treatment covariates.  The package also provides the tools to analyze
various randomized experiments including cluster randomized experiments,
two-stage randomized experiments, randomized experiments with noncompliance, and
randomized experiments with missing data.")
    (license license:gpl2+)))

(define-public r-experiences
  (package
    (name "r-experiences")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "experiences" version))
              (sha256
               (base32
                "1fqcq9jaw79nafm4qqbwm9qg2xlscjcyx3rmk7677xxrz7kywn94"))))
    (properties `((upstream-name . "experiences")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringr
                             r-scales
                             r-magrittr
                             r-huxtable
                             r-dplyr
                             r-cli))
    (home-page "https://cran.r-project.org/package=experiences")
    (synopsis "Experience Research")
    (description
     "This package provides convenience functions for researching experiences
including user, customer, patient, employee, and other human experiences.  It
provides a suite of tools to simplify data exploration such as benchmarking,
comparing groups, and checking for differences.  The outputs translate
statistical approaches in applied experience research to human readable output.")
    (license license:expat)))

(define-public r-experdesign
  (package
    (name "r-experdesign")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "experDesign" version))
              (sha256
               (base32
                "1v2j3jyxyzwkzc3y5n6pzd31yigkfwcmf12df3104m3kn86iq81r"))))
    (properties `((upstream-name . "experDesign")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://experdesign.llrs.dev")
    (synopsis "Design Experiments for Batches")
    (description
     "Distributes samples in batches while making batches homogeneous according to
their description.  Allows for an arbitrary number of variables, both numeric
and categorical.  For quality control it provides functions to subset a
representative sample.")
    (license license:expat)))

(define-public r-expectreg
  (package
    (name "r-expectreg")
    (version "0.52")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expectreg" version))
              (sha256
               (base32
                "1cb2k3ndzxw9sd9znmmd0f2pfpa1lvvvm9vvj3z44b4vcb2lf9vl"))))
    (properties `((upstream-name . "expectreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen
                             r-rcpp
                             r-quadprog
                             r-mboost
                             r-matrix
                             r-fields
                             r-colorspace
                             r-bayesx))
    (home-page "https://cran.r-project.org/package=expectreg")
    (synopsis "Expectile and Quantile Regression")
    (description
     "Expectile and quantile regression of models with nonlinear effects e.g. spatial,
random, ridge using least asymmetric weighed squares / absolutes as well as
boosting; also supplies expectiles for common distributions.")
    (license license:gpl2)))

(define-public r-expdes-pt
  (package
    (name "r-expdes-pt")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpDes.pt" version))
              (sha256
               (base32
                "05s7j3afs97x0k4w9rsjic1519ilzri250x5rl6l6smqivjaplci"))))
    (properties `((upstream-name . "ExpDes.pt")))
    (build-system r-build-system)
    (propagated-inputs (list r-stargazer))
    (home-page "https://cran.r-project.org/package=ExpDes.pt")
    (synopsis "Pacote Experimental Designs (Portugues)")
    (description
     "Pacote para anÃ¡lise de delineamentos experimentais (DIC, DBC e DQL),
experimentos em esquema fatorial duplo (em DIC e DBC), experimentos em parcelas
subdivididas (em DIC e DBC), experimentos em esquema fatorial duplo com um
tratamento adicional (em DIC e DBC), experimentos em fatorial triplo (em DIC e
DBC) e experimentos em esquema fatorial triplo com um tratamento adicional (em
DIC e DBC), fazendo analise de variancia e comparacao de multiplas medias (para
tratamentos qualitativos), ou ajustando modelos de regressao ate a terceira
potencia (para tratamentos quantitativos); analise de residuos (Ferreira,
Cavalcanti and Nogueira, 2014) <doi:10.4236/am.2014.519280>.")
    (license license:gpl2+)))

(define-public r-expdes
  (package
    (name "r-expdes")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpDes" version))
              (sha256
               (base32
                "145x7zzhgs7rqbamsfwcxlhppxmy9l6v4a1wximac8qgp7i0wdpi"))))
    (properties `((upstream-name . "ExpDes")))
    (build-system r-build-system)
    (propagated-inputs (list r-stargazer))
    (home-page "https://cran.r-project.org/package=ExpDes")
    (synopsis "Experimental Designs Package")
    (description
     "Package for analysis of simple experimental designs (CRD, RBD and LSD),
experiments in double factorial schemes (in CRD and RBD), experiments in a split
plot in time schemes (in CRD and RBD), experiments in double factorial schemes
with an additional treatment (in CRD and RBD), experiments in triple factorial
scheme (in CRD and RBD) and experiments in triple factorial schemes with an
additional treatment (in CRD and RBD), performing the analysis of variance and
means comparison by fitting regression models until the third power
(quantitative treatments) or by a multiple comparison test, Tukey test, test of
Student-Newman-Keuls (SNK), Scott-Knott, Duncan test, t test (LSD) and
Bonferroni t test (protected LSD) - for qualitative treatments; residual
analysis (Ferreira, Cavalcanti and Nogueira, 2014) <doi:10.4236/am.2014.519280>.")
    (license license:gpl2+)))

(define-public r-expde
  (package
    (name "r-expde")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpDE" version))
              (sha256
               (base32
                "0yjsap92dd1sb23fhw69i0ddk3lyj5f4kwp9rvz4k0vxry10hx7g"))))
    (properties `((upstream-name . "ExpDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-assertthat))
    (home-page "http://github.com/fcampelo/ExpDE")
    (synopsis
     "Modular Differential Evolution for Experimenting with Operators")
    (description
     "Modular implementation of the Differential Evolution algorithm for experimenting
with different types of operators.")
    (license license:gpl2)))

(define-public r-expdb
  (package
    (name "r-expdb")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expDB" version))
              (sha256
               (base32
                "0h7f9127vrd45lg7k0bkgq3cghxwv2z11p4pak20pakk13g82hj4"))))
    (properties `((upstream-name . "expDB")))
    (build-system r-build-system)
    (propagated-inputs (list r-weaana
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rsqlite
                             r-rlang
                             r-reshape2
                             r-readxl
                             r-png
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-dbi))
    (home-page "https://expdb.bangyou.me/")
    (synopsis "Database for Experiment Dataset")
    (description
     "This package provides a SQLite database is designed to store all information of
experiment-based data including metadata, experiment design, managements,
phenotypic values and climate records.  The dataset can be imported from an
excel file.")
    (license license:expat)))

(define-public r-expandfunctions
  (package
    (name "r-expandfunctions")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "expandFunctions" version))
              (sha256
               (base32
                "0661l4ab0xhjidmh8ycvymhp3wgxafm7nd1c59bfpxhyhz76n1p4"))))
    (properties `((upstream-name . "expandFunctions")))
    (build-system r-build-system)
    (propagated-inputs (list r-polynom r-plyr r-orthopolynom r-glmnet))
    (home-page "https://cran.r-project.org/package=expandFunctions")
    (synopsis "Feature Matrix Builder")
    (description
     "Generates feature matrix outputs from R object inputs using a variety of
expansion functions.  The generated feature matrices have applications as inputs
for a variety of machine learning algorithms.  The expansion functions are based
on coercing the input to a matrix, treating the columns as features and
converting individual columns or combinations into blocks of columns.  Currently
these include expansion of columns by efficient sparse embedding by vectors of
lags, quadratic expansion into squares and unique products, powers by vectors of
degree, vectors of orthogonal polynomials functions, and block random affine
projection transformations (RAPTs).  The transformations are magrittr- and
cbind-friendly, and can be used in a building block fashion.  For instance,
taking the cos() of the output of the RAPT transformation generates a stationary
kernel expansion via Bochner's theorem, and this expansion can then be cbind-ed
with other features.  Additionally, there are utilities for replacing features,
removing rows with NAs, creating matrix samples of a given distribution, a
simple wrapper for LASSO with CV, a Freeman-Tukey transform, generalizations of
the outer function, matrix size-preserving discrete difference by row, plotting,
etc.")
    (license license:gpl2)))

(define-public r-expandar
  (package
    (name "r-expandar")
    (version "0.5.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExPanDaR" version))
              (sha256
               (base32
                "1y4ccyvlvdx9lcgpyns6k2npc0rzwk8db4bmbi3pq9xmv7ycgmcz"))))
    (properties `((upstream-name . "ExPanDaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zip
                             r-tidyr
                             r-tictoc
                             r-stargazer
                             r-shinycssloaders
                             r-shiny
                             r-scales
                             r-rlang
                             r-rio
                             r-plm
                             r-openssl
                             r-multiwayvcov
                             r-lmtest
                             r-kableextra
                             r-ggplot2
                             r-dt
                             r-dplyr
                             r-corrplot))
    (native-inputs (list r-knitr))
    (home-page "https://joachim-gassen.github.io/ExPanDaR/")
    (synopsis "Explore Your Data Interactively")
    (description
     "This package provides a shiny-based front end (the ExPanD app) and a set of
functions for exploratory data analysis.  Run as a web-based app, ExPanD enables
users to assess the robustness of empirical evidence without providing them
access to the underlying data.  You can export a notebook containing the
analysis of ExPanD and/or use the functions of the package to support your
exploratory data analysis workflow.  Refer to the vignettes of the package for
more information on how to use ExPanD and/or the functions of this package.")
    (license license:expat)))

(define-public r-expanalysis3d
  (package
    (name "r-expanalysis3d")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExpAnalysis3d" version))
              (sha256
               (base32
                "0gch9q19l3lqb35vfq1kcrga9jzqvrxr7d6x9lk7nzb78y735wa2"))))
    (properties `((upstream-name . "ExpAnalysis3d")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotly r-magrittr r-fields r-crayon))
    (home-page "https://cran.r-project.org/package=ExpAnalysis3d")
    (synopsis
     "Pacote Para Analise De Experimentos Com Graficos De Superficie Resposta")
    (description
     "Pacote para a analise de experimentos havendo duas variaveis explicativas
quantitativas e uma variavel dependente quantitativa.  Os experimentos podem ser
sem repeticoes ou com delineamento estatistico.  Sao ajustados 12 modelos de
regressao multipla e plotados graficos de superficie resposta (Hair JF, 2016)
<ISBN:13:978-0138132637>.(Package for the analysis of experiments having two
explanatory quantitative variables and one quantitative dependent variable.  The
experiments can be without repetitions or with a statistical design.  Twelve
multiple regression models are fitted and response surface graphs are plotted
(Hair JF, 2016) <ISBN:13:978-0138132637>).")
    (license license:gpl3)))

(define-public r-exomedepth
  (package
    (name "r-exomedepth")
    (version "1.1.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExomeDepth" version))
              (sha256
               (base32
                "1r7b9h5i562fa67ghisyw6ciwawfyjwrpn95kdws4dd4gqgbb9kv"))))
    (properties `((upstream-name . "ExomeDepth")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam
                             r-rsamtools
                             r-magrittr
                             r-iranges
                             r-genomicranges
                             r-genomicalignments
                             r-dplyr
                             r-biostrings
                             r-aod))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ExomeDepth")
    (synopsis "Calls Copy Number Variants from Targeted Sequence Data")
    (description
     "Calls copy number variants (CNVs) from targeted sequence data, typically exome
sequencing experiments designed to identify the genetic basis of Mendelian
disorders.  The method is presented in details in Plagnol et al (2012)
<https://pubmed.ncbi.nlm.nih.gov/22942019/>.")
    (license license:gpl3)))

(define-public r-exnruleensemble
  (package
    (name "r-exnruleensemble")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExNRuleEnsemble" version))
              (sha256
               (base32
                "1w2p71if27z8r3pdj4fryd6r2gnv4zs608kg0qrw3nsi6lylf7kh"))))
    (properties `((upstream-name . "ExNRuleEnsemble")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (home-page "https://cran.r-project.org/package=ExNRuleEnsemble")
    (synopsis
     "k Nearest Neibour Ensemble Based on Extended Neighbourhood Rule")
    (description
     "The extended neighbourhood rule for the k nearest neighbour ensemble where the
neighbours are determined in k steps.  Starting from the first nearest
observation of the test point, the algorithm identifies a single observation
that is closest to the observation at the previous step.  At each base learner
in the ensemble, this search is extended to k steps on a random bootstrap sample
with a random subset of features selected from the feature space.  The final
predicted class of the test point is determined by using a majority vote in the
predicted classes given by all base models.  Amjad Ali, Muhammad Hamraz, Naz
Gul, Dost Muhammad Khan, Saeed Aldahmani, Zardad Khan (2022)
<doi:10.48550/arXiv.2205.15111>.")
    (license license:gpl3+)))

(define-public r-exiftoolr
  (package
    (name "r-exiftoolr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exiftoolr" version))
              (sha256
               (base32
                "17s4rk3fn4lh1hqnayya32rcb28j59hpq4rqfb8w6m96zxx8l44n"))))
    (properties `((upstream-name . "exiftoolr")))
    (build-system r-build-system)
    (inputs (list perl))
    (propagated-inputs (list r-zip r-jsonlite r-data-table r-curl r-backports))
    (home-page "https://github.com/JoshOBrien/exiftoolr#readme")
    (synopsis "ExifTool Functionality from R")
    (description
     "Reads, writes, and edits EXIF and other file metadata using ExifTool
<https://exiftool.org/>, returning read results as a data frame.  ExifTool
supports many different metadata formats including EXIF, GPS, IPTC, XMP, JFIF,
GeoTIFF, ICC Profile, Photoshop IRB, FlashPix, AFCP and ID3, Lyrics3, as well as
the maker notes of many digital cameras by Canon, Casio, DJI, FLIR, FujiFilm,
GE, GoPro, HP, JVC/Victor, Kodak, Leaf, Minolta/Konica-Minolta, Motorola, Nikon,
Nintendo, Olympus/Epson, Panasonic/Leica, Pentax/Asahi, Phase One, Reconyx,
Ricoh, Samsung, Sanyo, Sigma/Foveon and Sony.")
    (license license:gpl2)))

(define-public r-exifr
  (package
    (name "r-exifr")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exifr" version))
              (sha256
               (base32
                "0iqm513h7951q3hg8maf2hbprqmsm93cb3mbg3g91qawpx77494c"))))
    (properties `((upstream-name . "exifr")))
    (build-system r-build-system)
    (inputs (list perl))
    (propagated-inputs (list r-tibble r-rappdirs r-plyr r-jsonlite r-curl))
    (home-page "https://github.com/paleolimbot/exifr")
    (synopsis "EXIF Image Data in R")
    (description
     "Reads EXIF data using ExifTool <https://exiftool.org> and returns results as a
data frame.  ExifTool is a platform-independent Perl library plus a command-line
application for reading, writing and editing meta information in a wide variety
of files.  ExifTool supports many different metadata formats including EXIF,
GPS, IPTC, XMP, JFIF, GeoTIFF, ICC Profile, Photoshop IRB, FlashPix, AFCP and
ID3, as well as the maker notes of many digital cameras by Canon, Casio, FLIR,
FujiFilm, GE, HP, JVC/Victor, Kodak, Leaf, Minolta/Konica-Minolta, Motorola,
Nikon, Nintendo, Olympus/Epson, Panasonic/Leica, Pentax/Asahi, Phase One,
Reconyx, Ricoh, Samsung, Sanyo, Sigma/Foveon and Sony.")
    (license license:gpl2)))

(define-public r-exif
  (package
    (name "r-exif")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exif" version))
              (sha256
               (base32
                "12phqn5x1x0xs2xczl3064q983dalm261vqpyafhdcndm1y3gwbc"))))
    (properties `((upstream-name . "exif")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/Ironholds/exif")
    (synopsis "Read EXIF Metadata from JPEGs")
    (description
     "Extracts Exchangeable Image File Format (EXIF) metadata, such as camera make and
model, ISO speed and the date-time the picture was taken on, from JPEG images.
Incorporates the easyexif (https://github.com/mayanklahiri/easyexif) library.")
    (license license:bsd-2)))

(define-public r-exhaustivesearch
  (package
    (name "r-exhaustivesearch")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExhaustiveSearch" version))
              (sha256
               (base32
                "1wb3bf1ilml5cilm740rh8ngiybxhxg6h6nzh1rlqd6wgfp17mzh"))))
    (properties `((upstream-name . "ExhaustiveSearch")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/RudolfJagdhuber/ExhaustiveSearch")
    (synopsis "Fast and Scalable Exhaustive Feature Selection Framework")
    (description
     "The goal of this package is to provide an easy to use, fast and scalable
exhaustive search framework.  Exhaustive feature selections typically require a
very large number of models to be fitted and evaluated.  Execution speed and
memory management are crucial factors here.  This package provides solutions for
both.  Execution speed is optimized by using a multi-threaded C++ backend, and
memory issues are solved by by only storing the best results during execution
and thus keeping memory usage constant.")
    (license license:gpl3+)))

(define-public r-exdex
  (package
    (name "r-exdex")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exdex" version))
              (sha256
               (base32
                "1j3ljbqv1cvxf95yva0ml7dwr8yy98ch697adbvwl8w8l3sjnv3l"))))
    (properties `((upstream-name . "exdex")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpproll r-rcpparmadillo r-rcpp r-chandwich))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulnorthrop/exdex")
    (synopsis "Estimation of the Extremal Index")
    (description
     "This package performs frequentist inference for the extremal index of a
stationary time series.  Two types of methodology are used.  One type is based
on a model that relates the distribution of block maxima to the marginal
distribution of series and leads to the semiparametric maxima estimators
described in Northrop (2015) <doi:10.1007/s10687-015-0221-5> and Berghaus and
Bucher (2018) <doi:10.1214/17-AOS1621>.  Sliding block maxima are used to
increase precision of estimation.  A graphical block size diagnostic is
provided.  The other type of methodology uses a model for the distribution of
threshold inter-exceedance times (Ferro and Segers (2003)
<doi:10.1111/1467-9868.00401>).  Three versions of this type of approach are
provided: the iterated weight least squares approach of Suveges (2007)
<doi:10.1007/s10687-007-0034-2>, the K-gaps model of Suveges and Davison (2010)
<doi:10.1214/09-AOAS292> and a similar approach of Holesovsky, J. and Fusek, M.
(2020) <doi:10.1007/s10687-020-00374-3> that we refer to as D-gaps.  For the
K-gaps and D-gaps models this package allows missing values in the data, can
accommodate independent subsets of data, such as monthly or seasonal time series
from different years, and can incorporate information from right-censored
inter-exceedance times.  Graphical diagnostics for the threshold level and the
respective tuning parameters K and D are provided.")
    (license license:gpl2+)))

(define-public r-exde
  (package
    (name "r-exde")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exDE" version))
              (sha256
               (base32
                "15z1gdbpnps9idlw8bw3n0wsayjpvv0f5mb8hihi0kvbys8q4sfa"))))
    (properties `((upstream-name . "exDE")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-expm r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://dd-harp.github.io/exDE/")
    (synopsis
     "Extensible Differential Equations for Mosquito-Borne Pathogen Modeling")
    (description
     "This package provides tools to set up modular ordinary and delay differential
equation models for mosquito-borne pathogens, focusing on malaria.  Modular
design is achieved by S3 dispatch on parameter lists for each component which is
used to compute the full set of differential equations which may be solved using
any of the packages for numerical simulation of differential equations in R. The
methods implemented by this package are described in Wu et al. (2022)
<doi:10.1101/2022.11.07.22282044>.")
    (license license:expat)))

(define-public r-excursions
  (package
    (name "r-excursions")
    (version "2.5.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "excursions" version))
              (sha256
               (base32
                "1f6pv8p0l3jz02bd4gqr28h2iyg34n2ys888qpdwx5dp31mmq7cd"))))
    (properties `((upstream-name . "excursions")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr r-sp r-matrix))
    (home-page "https://github.com/davidbolin/excursions")
    (synopsis
     "Excursion Sets and Contour Credibility Regions for Random Fields")
    (description
     "This package provides functions that compute probabilistic excursion sets,
contour credibility regions, contour avoiding regions, and simultaneous
confidence bands for latent Gaussian random processes and fields.  The package
also contains functions that calculate these quantities for models estimated
with the INLA package.  The main references for excursions are Bolin and
Lindgren (2015) <doi:10.1111/rssb.12055>, Bolin and Lindgren (2017)
<doi:10.1080/10618600.2016.1228537>, and Bolin and Lindgren (2018)
<doi:10.18637/jss.v086.i05>.  These can be generated by the citation function in
R.")
    (license license:gpl3+)))

(define-public r-excon
  (package
    (name "r-excon")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exCon" version))
              (sha256
               (base32
                "0gqnv01dw4ncf3x3p74pc6f14a1ixq7icl2p18hsmvxdqqg7kgy7"))))
    (properties `((upstream-name . "exCon")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite))
    (home-page "https://github.com/bryanhanson/exCon")
    (synopsis "Interactive Exploration of Contour Data")
    (description
     "Interactive tools to explore topographic-like data sets.  Such data sets take
the form of a matrix in which the rows and columns provide location/frequency
information, and the matrix elements contain altitude/response information.
Such data is found in cartography, 2D spectroscopy and chemometrics.  The
functions in this package create interactive web pages showing the contoured
data, possibly with slices from the original matrix parallel to each dimension.
The interactive behavior is created using the D3.js JavaScript library by Mike
Bostock.")
    (license license:gpl3)))

(define-public r-exclusiontable
  (package
    (name "r-exclusiontable")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExclusionTable" version))
              (sha256
               (base32
                "1adanj3rnk9vhz89rgl25w10ghm2xn1rl99ilnmpkq5jdblcifkx"))))
    (properties `((upstream-name . "ExclusionTable")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/entjos/ExclusionTable/")
    (synopsis "Creating Tables of Excluded Observations")
    (description
     "Instead of counting observations before and after a subset() call, the
ExclusionTable() function reports the number before and after each subset() call
together with the number of observations that have been excluded.  This is
especially useful in observational studies for keeping track how many
observations have been excluded for each in-/ or exclusion criteria.  You just
need to provide ExclusionTable() with a dataset and a list of logical filter
statements.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-excluder
  (package
    (name "r-excluder")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "excluder" version))
              (sha256
               (base32
                "1wc9bybbv6vdxi88ziblhsc5wif631bf8sp0wmp72qn9zjzsgvmz"))))
    (properties `((upstream-name . "excluder")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-maps
                             r-magrittr
                             r-lubridate
                             r-janitor
                             r-iptools
                             r-dplyr
                             r-curl
                             r-cli))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/excluder/")
    (synopsis "Checks for Exclusion Criteria in Online Data")
    (description
     "Data that are collected through online sources such as Mechanical Turk may
require excluding rows because of IP address duplication, geolocation, or
completion duration.  This package facilitates exclusion of these data for
Qualtrics datasets.")
    (license license:gpl3+)))

(define-public r-excessmort
  (package
    (name "r-excessmort")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "excessmort" version))
              (sha256
               (base32
                "0qkj30csq96qg7r8vdl79n31dhz69vh49qz4gpb3r2fr32pn497k"))))
    (properties `((upstream-name . "excessmort")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-scales
                             r-rlang
                             r-lubridate
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=excessmort")
    (synopsis "Excess Mortality")
    (description
     "Implementation of method for estimating excess mortality and other health
related outcomes from weekly or daily count data described in Acosta and
Irizarry (2021) \"A Flexible Statistical Framework for Estimating Excess
Mortality\".")
    (license license:artistic2.0)))

(define-public r-excessmass
  (package
    (name "r-excessmass")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExcessMass" version))
              (sha256
               (base32
                "1ycvv3bm9qq11imc09jhwhb1vb2cbngckmb3ibj4hfl697gaby5v"))))
    (properties `((upstream-name . "ExcessMass")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ExcessMass")
    (synopsis "Excess Mass Calculation and Plots")
    (description
     "Implementation of a function which calculates the empirical excess mass for
given \\eqn{\\lambda} and given maximal number of modes (excessm()).  Offering
powerful plot features to visualize empirical excess mass (exmplot()).  This
includes the possibility of drawing several plots (with different maximal number
of modes / cut off values) in a single graph.")
    (license license:lgpl2.0+)))

(define-public r-excelstrippr
  (package
    (name "r-excelstrippr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "excelstrippr" version))
              (sha256
               (base32
                "1ly76qja9b5l3xwfhigm1apd114y2iq5wdl27sd2h1y80n8xxf2v"))))
    (properties `((upstream-name . "excelstrippr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-readxl r-dplyr))
    (home-page "https://cran.r-project.org/package=excelstrippr")
    (synopsis "Extracts Tabular Data from Excel Reports")
    (description
     "Removes metadata and summary formatting from Excel reports, so that data from
those reports can more easily be loaded into R. Currently works with .xlsx and
.xls format files.")
    (license license:expat)))

(define-public r-excelfunctionsr
  (package
    (name "r-excelfunctionsr")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExcelFunctionsR" version))
              (sha256
               (base32
                "1j3vfvfk8lp46zb6fwvq9lafk7r2qrnx4vxyhaih71c0a8g6dz9n"))))
    (properties `((upstream-name . "ExcelFunctionsR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-stringr r-roperators r-plyr r-lubridate))
    (home-page "https://cran.r-project.org/package=ExcelFunctionsR")
    (synopsis "Imports Excel Functions to R")
    (description
     "This package implements Excel functions in R for your calculation simplicity.You
can use most of the aggregate functions, addressing functions,logical functions
and text functions.  Helps you a ton in learning how R works as some Excel users
might be struggling with the program.")
    (license license:gpl3)))

(define-public r-exceldata
  (package
    (name "r-exceldata")
    (version "0.1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exceldata" version))
              (sha256
               (base32
                "00vc4bc9nxkfzrzafh3fjvkmwglvbcbzbnj5inf5y1zzan4ppf8q"))))
    (properties `((upstream-name . "exceldata")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-readxl r-lubridate r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=exceldata")
    (synopsis "Streamline Data Import, Cleaning and Recoding from 'Excel'")
    (description
     "This package provides a small group of functions to read in a data dictionary
and the corresponding data table from Excel and to automate the cleaning,
re-coding and creation of simple calculated variables.  This package was
designed to be a companion to the macro-enabled Excel template available on the
GitHub site, but works with any similarly-formatted Excel data.")
    (license license:expat)))

(define-public r-excel-link
  (package
    (name "r-excel-link")
    (version "0.9.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "excel.link" version))
              (sha256
               (base32
                "1sxsrrxpmh99jic7mlnpqgj86c2sy2pblr9j42w4yaf7d4xaa7hh"))))
    (properties `((upstream-name . "excel.link")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gdemin/excel.link")
    (synopsis "Convenient Data Exchange with Microsoft Excel")
    (description
     "Allows access to data in running instance of Microsoft Excel (e.  g.  xl[a1] =
xl[b2]*3 and so on).  Graphics can be transferred with xl[a1] =
current.graphics()'.  Additionally there are function for reading/writing Excel
files - xl.read.file'/'xl.save.file'.  They are not fast but able to read/write
*.xlsb'-files and password-protected files.  There is an Excel workbook with
examples of calling R from Excel in the doc folder.  It tries to keep things as
simple as possible - there are no needs in any additional installations besides
R, only VBA code in the Excel workbook.  Microsoft Excel is required for this
package.")
    (license license:gpl2+)))

(define-public r-exceedprob
  (package
    (name "r-exceedprob")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exceedProb" version))
              (sha256
               (base32
                "02pb8b0rxygbv6501rcr2hb0bhz1r78k5znav161kk25fb9bxs5v"))))
    (properties `((upstream-name . "exceedProb")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-bh))
    (home-page "https://github.com/bdsegal/exceedProb")
    (synopsis "Confidence Intervals for Exceedance Probability")
    (description
     "Computes confidence intervals for the exceedance probability of normally
distributed estimators.  Currently only supports general linear models.  Please
see Segal (2019) <arXiv:1803.03356> for more information.")
    (license license:gpl3+)))

(define-public r-exceedancetools
  (package
    (name "r-exceedancetools")
    (version "1.3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExceedanceTools" version))
              (sha256
               (base32
                "1vcyla5rgz8ivqzq4qq4bnw4qghkqww6zziwp0374ik86r2f6krb"))))
    (properties `((upstream-name . "ExceedanceTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-splancs r-spatialtools r-matrixstats))
    (home-page "https://cran.r-project.org/package=ExceedanceTools")
    (synopsis
     "Confidence/Credible Regions for Exceedance Sets and Contour Lines")
    (description
     "This package provides methods for constructing confidence or credible regions
for exceedance sets and contour lines.")
    (license license:gpl2+)))

(define-public r-exams2sakai
  (package
    (name "r-exams2sakai")
    (version "0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exams2sakai" version))
              (sha256
               (base32
                "0lgnk2g4q0vbkvcrhb815lah24rhaknnmsbhhkgbdkl0c5mx1yjg"))))
    (properties `((upstream-name . "exams2sakai")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-stringr r-stringi r-glue r-exams))
    (home-page "https://github.com/jesusmmp/exams2sakai")
    (synopsis "Automatic Generation of Exams in R for 'Sakai'")
    (description
     "Automatic Generation of Exams in R for Sakai'.  Question templates in the form
of the exams package (see <http://www.r-exams.org/>) are transformed into XML
format required by Sakai'.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-exams2learnr
  (package
    (name "r-exams2learnr")
    (version "0.1-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exams2learnr" version))
              (sha256
               (base32
                "0laimld71p3w2r01d0xm7ly7brvahhagmx4972amv4xvn66y3xv4"))))
    (properties `((upstream-name . "exams2learnr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmarkdown r-learnr r-knitr r-exams))
    (native-inputs (list r-knitr))
    (home-page "https://www.R-exams.org/")
    (synopsis "Interface for 'exams' Exercises in 'learnr' Tutorials")
    (description
     "Automatic generation of quizzes or individual questions for learnr tutorials
based on R/exams exercises.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-exams-mylearn
  (package
    (name "r-exams-mylearn")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exams.mylearn" version))
              (sha256
               (base32
                "0cswbynd1acrvdwhgg3vlgl80v0qk22kg2hacbc6y08s4367srly"))))
    (properties `((upstream-name . "exams.mylearn")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringr
                             r-stringi
                             r-pkgbuild
                             r-glue
                             r-exams))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hdarjus/exams.mylearn")
    (synopsis "Question Generation in the 'MyLearn' XML Format")
    (description
     "Randomized multiple-select and single-select question generation for the MyLearn
teaching and learning platform.  Question templates in the form of the R/exams
package (see <http://www.r-exams.org/>) are transformed into XML format required
by MyLearn'.")
    (license license:gpl3)))

(define-public r-exams
  (package
    (name "r-exams")
    (version "2.4-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exams" version))
              (sha256
               (base32
                "0g2m51i7lf62hy4v9ns3l7bv3jh367fwi6hgz94iw7n8pjhkh47v"))))
    (properties `((upstream-name . "exams")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-rmarkdown r-knitr r-base64enc))
    (home-page "https://www.R-exams.org/")
    (synopsis "Automatic Generation of Exams in R")
    (description
     "Automatic generation of exams based on exercises in Markdown or LaTeX format,
possibly including R code for dynamic generation of exercise elements.  Exercise
types include single-choice and multiple-choice questions, arithmetic problems,
string questions, and combinations thereof (cloze).  Output formats include
standalone files (PDF, HTML, Docx, ODT, ...), Moodle XML, QTI 1.2, QTI 2.1,
Blackboard, Canvas, OpenOlat, ILIAS, TestVision, Particify, ARSnova, Kahoot!,
Grasple, and TCExam.  In addition to fully customizable PDF exams, a
standardized PDF format (NOPS) is provided that can be printed, scanned, and
automatically evaluated.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-exampletestr
  (package
    (name "r-exampletestr")
    (version "1.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exampletestr" version))
              (sha256
               (base32
                "0853p0w4qcd76h964bxvmlnzbhgxp7cv057lczgw0y4h73hk85fq"))))
    (properties `((upstream-name . "exampletestr")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-usethis
                             r-styler
                             r-stringr
                             r-strex
                             r-rstudioapi
                             r-roxygen2
                             r-rlang
                             r-readr
                             r-purrr
                             r-magrittr
                             r-fs
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://rorynolan.github.io/exampletestr/")
    (synopsis "Help for Writing Unit Tests Based on Function Examples")
    (description
     "Take the examples written in your documentation of functions and use them to
create shells (skeletons which must be manually completed by the user) of test
files to be tested with the testthat package.  Sort of like python doctests for
R.")
    (license license:gpl3)))

(define-public r-exampadata
  (package
    (name "r-exampadata")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExamPAData" version))
              (sha256
               (base32
                "1wjzg5b3xcl5njk95h2c8xz4k727d62182nbf49qrvd3nbd3bscj"))))
    (properties `((upstream-name . "ExamPAData")))
    (build-system r-build-system)
    (home-page "https://github.com/sdcastillo/ExamPAData")
    (synopsis "Data Sets for Predictive Analytics Exam")
    (description
     "This package contains all data sets for Exam PA: Predictive Analytics at
<https://exampa.net/>.")
    (license license:expat)))

(define-public r-exactmultinom
  (package
    (name "r-exactmultinom")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExactMultinom" version))
              (sha256
               (base32
                "1ygsiwcsmda0pbp7lzr03sb461mr9fff7hxp1lil40y9z0xgdmmb"))))
    (properties `((upstream-name . "ExactMultinom")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=ExactMultinom")
    (synopsis "Multinomial Goodness-of-Fit Tests")
    (description
     "Computes exact p-values for multinomial goodness-of-fit tests based on multiple
test statistics, namely, Pearson's chi-square, the log-likelihood ratio and the
probability mass statistic.  Implements the algorithm detailed in Resin (2020)
<arXiv:2008.12682>.  Estimates based on the classical asymptotic chi-square
approximation or Monte-Carlo simulation can also be computed.")
    (license license:gpl2+)))

(define-public r-exactmed
  (package
    (name "r-exactmed")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExactMed" version))
              (sha256
               (base32
                "0mnmlfnpqkz82iphga3b3xd85xh7jb211m6ahx4jf6y6y4rv5isj"))))
    (properties `((upstream-name . "ExactMed")))
    (build-system r-build-system)
    (propagated-inputs (list r-logistf))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ExactMed")
    (synopsis "Exact Mediation Analysis for Binary Outcomes")
    (description
     "This package provides a tool for conducting exact parametric regression-based
causal mediation analysis of binary outcomes as described in Samoilenko, Blais
and Lefebvre (2018) <doi:10.1353/obs.2018.0013> and Samoilenko, Lefebvre (2021)
<doi:10.1093/aje/kwab055>.")
    (license license:gpl3)))

(define-public r-exactltre
  (package
    (name "r-exactltre")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exactLTRE" version))
              (sha256
               (base32
                "0fhzymvsmp1hcq32nwka745jhbf51iyb9hp6ix9rm88kyclcwhrl"))))
    (properties `((upstream-name . "exactLTRE")))
    (build-system r-build-system)
    (propagated-inputs (list r-popdemo r-matrixcalc))
    (home-page "https://cran.r-project.org/package=exactLTRE")
    (synopsis
     "An Exact Method for Life Table Response Experiment (LTRE) Analysis")
    (description
     "Life Table Response Experiments (LTREs) are a method of comparative demographic
analysis.  The purpose is to quantify how the difference or variance in vital
rates (stage-specific survival, growth, and fertility) among populations
contributes to difference or variance in the population growth rate, \"lambda.\"
We provide functions for one-way fixed design and random design LTRE, using
either the classical methods that have been in use for several decades, or an
fANOVA-based exact method that directly calculates the impact on lambda of
changes in matrix elements, for matrix elements and their interactions.  The
equations and descriptions for the classical methods of LTRE analysis can be
found in \"Matrix Population Models: Construction, Analysis, and Interpretation
(2nd edition)\" Caswell (2001, ISBN: 0878930965), and the fANOVA-based exact
methods will be published in a forthcoming paper.  We also provide some
demographic functions, including generation time from Bienvenu and Legendre
(2015) <doi:10.1086/681104>.  For implementation of exactLTRE where all possible
interactions are calculated, we use an operator matrix presented in Poelwijk,
Krishna, and Ranganathan (2016) <doi:10.1371/journal.pcbi.1004771>.")
    (license license:expat)))

(define-public r-exactcidiff
  (package
    (name "r-exactcidiff")
    (version "2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ExactCIdiff" version))
              (sha256
               (base32
                "1rhwdhgj3d6m4x75v5m03y6l2sf7ndgb15qc8k7kx7vr6c03zl8v"))))
    (properties `((upstream-name . "ExactCIdiff")))
    (build-system r-build-system)
    (home-page
     "https://urldefense.proofpoint.com/v2/url?u=http-3A__www.R-2Dproject.org&d=DwICaQ&c=sJ6xIWYx-zLMB3EPkvcnVg&r=u5749-0kOlGR1AfizUVmaw&m=qjJHLdipM5gUyXllZWH5kL0wENGFef6KuJ57hW5lHx14eZasfdmgFN_1geUbxk5J&s=VFf9h_9FOlJBpRMIjim8tGuVnJ7GlWc5qZkrA9kmoMM&e=")
    (synopsis
     "Inductive Confidence Intervals for the Difference Between Two Proportions")
    (description
     "This is a package for exact Confidence Intervals for the difference between two
independent or dependent proportions.")
    (license license:gpl2+)))

(define-public r-exactci
  (package
    (name "r-exactci")
    (version "1.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exactci" version))
              (sha256
               (base32
                "08phqmpj7f6mjbwfnykqmfmg7g9h6ksj3hyryn79d7kwxyh994i7"))))
    (properties `((upstream-name . "exactci")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-ssanv))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=exactci")
    (synopsis
     "Exact P-Values and Matching Confidence Intervals for Simple Discrete Parametric Cases")
    (description
     "Calculates exact tests and confidence intervals for one-sample binomial and one-
or two-sample Poisson cases (see Fay (2010) <doi:10.32614/rj-2010-008>).")
    (license license:gpl3)))

(define-public r-exact2x2
  (package
    (name "r-exact2x2")
    (version "1.6.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exact2x2" version))
              (sha256
               (base32
                "1c7lsl2zvnighzylp7z3w74rl7p8zfg0fphw5fxv2i0m8sslzq73"))))
    (properties `((upstream-name . "exact2x2")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssanv r-exactci))
    (home-page "https://cran.r-project.org/package=exact2x2")
    (synopsis "Exact Tests and Confidence Intervals for 2x2 Tables")
    (description
     "Calculates conditional exact tests (Fisher's exact test, Blaker's exact test, or
exact McNemar's test) and unconditional exact tests (including score-based tests
on differences in proportions, ratios of proportions, and odds ratios, and
Boshcloo's test) with appropriate matching confidence intervals, and provides
power and sample size calculations.  Gives melded confidence intervals for the
binomial case (Fay, et al, 2015, <DOI:10.1111/biom.12231>).  Gives
boundary-optimized rejection region test (Gabriel, et al, 2018,
<DOI:10.1002/sim.7579>), an unconditional exact test for the situation where the
controls are all expected to fail.  Gives confidence intervals compatible with
exact McNemar's or sign tests (Fay and Lumbard, 2021, <DOI:10.1002/sim.8829>).
For review of these kinds of exact tests see Fay and Hunsberger (2021,
<DOI:10.1214/21-SS131>).")
    (license license:gpl3)))

(define-public r-exact-n
  (package
    (name "r-exact-n")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "exact.n" version))
              (sha256
               (base32
                "0sjiv55455274d2gfhkkdwbpq15wka947ajn9gyypfyc4fmzbqcn"))))
    (properties `((upstream-name . "exact.n")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=exact.n")
    (synopsis
     "Exact Samples Sizes and Inference for Clinical Trials with Binary Endpoint")
    (description
     "Allows the user to determine minimum sample sizes that achieve target size and
power at a specified alternative.  For more information, see âExact samples
sizes for clinical trials subject to size and power constraintsâ by Lloyd,
C.J. (2022) Preprint <doi:10.13140/RG.2.2.11828.94085>.")
    (license license:gpl2)))

(define-public r-ews
  (package
    (name "r-ews")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EWS" version))
              (sha256
               (base32
                "0rkxnc5pwrjgm2j201rg0z4nqb75rpkqh3hff4lvw1zmnr9flm6r"))))
    (properties `((upstream-name . "EWS")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=EWS")
    (synopsis "Early Warning System")
    (description
     "The purpose of Early Warning Systems (EWS) is to detect accurately the
occurrence of a crisis, which is represented by a binary variable which takes
the value of one when the event occurs, and the value of zero otherwise.  EWS
are a toolbox for policymakers to prevent or attenuate the impact of economic
downturns.  Modern EWS are based on the econometric framework of Kauppi and
Saikkonen (2008) <doi:10.1162/rest.90.4.777>.  Specifically, this framework
includes four dichotomous models, relying on a logit approach to model the
relationship between yield spreads and future recessions, controlling for
recession risk factors.  These models can be estimated in a univariate or a
balanced panel framework as in Candelon, Dumitrescu and Hurlin (2014)
<doi:10.1016/j.ijforecast.2014.03.015>.  This package provides both methods for
estimating these models and a dataset covering 13 OECD countries over a period
of 45 years.  In addition, this package also provides methods for the analysis
of the propagation mechanisms of an exogenous shock, as well as robust
confidence intervals for these response functions using a block-bootstrap method
as in Lajaunie (2021).  This package constitutes a useful toolbox (data and
functions) for scholars as well as policymakers.")
    (license license:gpl3)))

(define-public r-ewr
  (package
    (name "r-ewr")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EwR" version))
              (sha256
               (base32
                "1i0cwyylr1lqilykn1q2y1ad2gawfqkw9c51g04yn061c623pkam"))))
    (properties `((upstream-name . "EwR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EwR")
    (synopsis "Econometrics with R")
    (description
     "Function and data sets in the book entitled \"R ile Temel Ekonometri\", S.Guris,
E.C.Akay, B. Guris(2020).  The book published in Turkish.  It is possible to
makes Durbin two stage method for autocorrelation, generalized differencing
method for correction autocorrelation, Hausman Test for identification and
computes LM, LR and Wald test statistics for redundant variable by using the
functions written in this package.")
    (license license:gpl2+)))

(define-public r-ewoc
  (package
    (name "r-ewoc")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ewoc" version))
              (sha256
               (base32
                "0r8b5vq0qzp3f0dasxmrngldqlymca90sj019rzs1a0qf28wlgbr"))))
    (properties `((upstream-name . "ewoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rjags
                             r-ggplot2
                             r-formula
                             r-foreach
                             r-dorng
                             r-doparallel
                             r-coda))
    (home-page "https://github.com/dnzmarcio/ewoc/")
    (synopsis "Escalation with Overdose Control")
    (description
     "An implementation of a variety of escalation with overdose control designs
introduced by Babb, Rogatko and Zacks (1998)
<doi:10.1002/(SICI)1097-0258(19980530)17:10%3C1103::AID-SIM793%3E3.0.CO;2-9>.
It calculates the next dose as a clinical trial proceeds and performs
simulations to obtain operating characteristics.")
    (license license:gpl2+)))

(define-public r-ewgof
  (package
    (name "r-ewgof")
    (version "2.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EWGoF" version))
              (sha256
               (base32
                "19gd9grjjdv6hilqj41g5qhz7m0ga40q88clwggbp5f0f1yd5sym"))))
    (properties `((upstream-name . "EWGoF")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=EWGoF")
    (synopsis
     "Goodness-of-Fit Tests for the Exponential and Two-Parameter Weibull Distributions")
    (description
     "This package contains a large number of the goodness-of-fit tests for the
Exponential and Weibull distributions classified into families: the tests based
on the empirical distribution function, the tests based on the probability plot,
the tests based on the normalized spacings, the tests based on the Laplace
transform and the likelihood based tests.")
    (license license:gpl2+)))

(define-public r-evtree
  (package
    (name "r-evtree")
    (version "1.0-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evtree" version))
              (sha256
               (base32
                "1dmzbsyrg8wwzzqcxzqmgm7yai37lh9lkjhizhr2h0k03s5xdv1k"))))
    (properties `((upstream-name . "evtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-partykit))
    (home-page "https://cran.r-project.org/package=evtree")
    (synopsis "Evolutionary Learning of Globally Optimal Trees")
    (description
     "Commonly used classification and regression tree methods like the CART algorithm
are recursive partitioning methods that build the model in a forward stepwise
search.  Although this approach is known to be an efficient heuristic, the
results of recursive tree methods are only locally optimal, as splits are chosen
to maximize homogeneity at the next step only.  An alternative way to search
over the parameter space of trees is to use global optimization methods like
evolutionary algorithms.  The evtree package implements an evolutionary
algorithm for learning globally optimal classification and regression trees in
R. CPU and memory-intensive tasks are fully computed in C++ while the partykit
package is leveraged to represent the resulting trees in R, providing unified
infrastructure for summaries, visualizations, and predictions.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-evtclass
  (package
    (name "r-evtclass")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evtclass" version))
              (sha256
               (base32
                "1ny43sry257cxlg56f0lj1szv9ci3ymskj6l5sn43l5a2pq62g4l"))))
    (properties `((upstream-name . "evtclass")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-fitdistrplus r-evd))
    (home-page "https://cran.r-project.org/package=evtclass")
    (synopsis
     "Extreme Value Theory for Open Set Classification - GPD and GEV Classifiers")
    (description
     "Two classifiers for open set recognition and novelty detection based on extreme
value theory.  The first classifier is based on the generalized Pareto
distribution (GPD) and the second classifier is based on the generalized extreme
value (GEV) distribution.  For details, see Vignotto, E., & Engelke, S. (2018)
<arXiv:1808.09902>.")
    (license license:gpl3)))

(define-public r-evophylo
  (package
    (name "r-evophylo")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvoPhylo" version))
              (sha256
               (base32
                "1jgvvi355dxrjqniwcga7gzfj0jw3hgwbii2cv055rq9z5f442mr"))))
    (properties `((upstream-name . "EvoPhylo")))
    (build-system r-build-system)
    (propagated-inputs (list r-unglue
                             r-treeio
                             r-rtsne
                             r-patchwork
                             r-ggtree
                             r-ggrepel
                             r-ggplot2
                             r-dplyr
                             r-devtools
                             r-deeptime
                             r-cluster
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tiago-simoes/EvoPhylo")
    (synopsis
     "Pre- And Postprocessing of Morphological Data from Relaxed Clock Bayesian Phylogenetics")
    (description
     "This package performs automated morphological character partitioning for
phylogenetic analyses and analyze macroevolutionary parameter outputs from clock
(time-calibrated) Bayesian inference analyses, following concepts introduced by
SimÃµes and Pierce (2021) <doi:10.1038/s41559-021-01532-x>.")
    (license license:gpl2+)))

(define-public r-evoper
  (package
    (name "r-evoper")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evoper" version))
              (sha256
               (base32
                "064fcpd04ws8v6sl0bakiw34jmmfpg1w5pkq94y2gh1c576x4vwz"))))
    (properties `((upstream-name . "evoper")))
    (build-system r-build-system)
    (propagated-inputs (list r-rrepast
                             r-rnetlogo
                             r-reshape
                             r-plyr
                             r-plot3d
                             r-ggplot2
                             r-futile-logger
                             r-desolve
                             r-data-table
                             r-boot))
    (home-page "https://github.com/antonio-pgarcia/evoper")
    (synopsis "Evolutionary Parameter Estimation for 'Repast Simphony' Models")
    (description
     "The EvoPER, Evolutionary Parameter Estimation for Individual-based Models is an
extensible package providing optimization driven parameter estimation methods
using metaheuristics and evolutionary computation techniques (Particle Swarm
Optimization, Simulated Annealing, Ant Colony Optimization for continuous
domains, Tabu Search, Evolutionary Strategies, ...) which could be more
efficient and require, in some cases, fewer model evaluations than alternatives
relying on experimental design.  Currently there are built in support for models
developed with Repast Simphony Agent-Based framework
(<https://repast.github.io/>) and with NetLogo
(<https://ccl.northwestern.edu/netlogo/>) which are the most used frameworks for
Agent-based modeling.")
    (license license:expat)))

(define-public r-evomorph
  (package
    (name "r-evomorph")
    (version "0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Evomorph" version))
              (sha256
               (base32
                "1br2fyggwz2mxpic8sk384xq1lpbpv0j5gf6xyzhkn2n7kfpf6d5"))))
    (properties `((upstream-name . "Evomorph")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-reshape2 r-ggplot2 r-geomorph))
    (home-page "https://cran.r-project.org/package=Evomorph")
    (synopsis "Evolutionary Morphometric Simulation")
    (description
     "Evolutionary process simulation using geometric morphometric data.  Manipulation
of landmark data files (TPS), shape plotting and distances plotting functions.")
    (license license:gpl2+)))

(define-public r-evolvability
  (package
    (name "r-evolvability")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evolvability" version))
              (sha256
               (base32
                "0l81d48zvvnbxlx1mj4qwga1kdzk05pzdvsp4ghi93pzzynfqn9s"))))
    (properties `((upstream-name . "evolvability")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-lme4 r-coda r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=evolvability")
    (synopsis "Calculation of Evolvability Parameters")
    (description
     "This package provides tools for calculating evolvability parameters from
estimated G-matrices as defined in Hansen and Houle (2008)
<doi:10.1111/j.1420-9101.2008.01573.x> and fits phylogenetic comparative models
that link the rate of evolution of a trait to the state of another evolving
trait (see Hansen et al.  2021 Systematic Biology <doi:10.1093/sysbio/syab079>).
 The package was released with Bolstad et al. (2014)
<doi:10.1098/rstb.2013.0255>, which contains some examples of use.")
    (license license:gpl2+)))

(define-public r-evolutionarygames
  (package
    (name "r-evolutionarygames")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvolutionaryGames" version))
              (sha256
               (base32
                "0aaqd4q8imm2wgkgdpwwdl6nxgr3apgb3l24f2lwxgv2y045309d"))))
    (properties `((upstream-name . "EvolutionaryGames")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-mass
                             r-interp
                             r-ggplot2
                             r-geometry
                             r-desolve))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EvolutionaryGames")
    (synopsis "Important Concepts of Evolutionary Game Theory")
    (description
     "Evolutionary game theory applies game theory to evolving populations in biology,
see e.g. one of the books by Weibull (1994, ISBN:978-0262731218) or by Sandholm
(2010, ISBN:978-0262195874) for more details.  A comprehensive set of tools to
illustrate the core concepts of evolutionary game theory, such as evolutionary
stability or various evolutionary dynamics, for teaching and academic research
is provided.")
    (license license:gpl2)))

(define-public r-evobir
  (package
    (name "r-evobir")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evobiR" version))
              (sha256
               (base32
                "0502xj1gv2g943vfqyllz4sr5z4mixf5vqlqi2v96mymnv9iwsr8"))))
    (properties `((upstream-name . "evobiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-seqinr r-phytools r-geiger r-ape))
    (home-page "http://www.uta.edu/karyodb/evobiR/")
    (synopsis "Comparative and Population Genetic Analyses")
    (description
     "Comparative analysis of continuous traits influencing discrete states, and
utility tools to facilitate comparative analyses.  Implementations of ABBA/BABA
type statistics to test for introgression in genomic data.  Wright-Fisher,
phylogenetic tree, and statistical distribution Shiny interactive simulations
for use in teaching.")
    (license license:gpl2+)))

(define-public r-evmix
  (package
    (name "r-evmix")
    (version "2.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evmix" version))
              (sha256
               (base32
                "02rabc9snci00s1x7h0svfr66lmw1wjcdg0149wc52mnccsdaivf"))))
    (properties `((upstream-name . "evmix")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparsem r-mass r-gsl))
    (home-page "http://www.math.canterbury.ac.nz/~c.scarrott/evmix")
    (synopsis
     "Extreme Value Mixture Modelling, Threshold Estimation and Boundary Corrected Kernel Density Estimation")
    (description
     "The usual distribution functions, maximum likelihood inference and model
diagnostics for univariate stationary extreme value mixture models are provided.
 Kernel density estimation including various boundary corrected kernel density
estimation methods and a wide choice of kernels, with cross-validation
likelihood based bandwidth estimator.  Reasonable consistency with the base
functions in the evd package is provided, so that users can safely interchange
most code.")
    (license license:gpl3)))

(define-public r-evir
  (package
    (name "r-evir")
    (version "1.7-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evir" version))
              (sha256
               (base32
                "1h7a7z7v5k33y5hsdfczsri3vpbwspfgazhv4saknv2h11rgfpki"))))
    (properties `((upstream-name . "evir")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=evir")
    (synopsis "Extreme Values in R")
    (description
     "This package provides functions for extreme value theory, which may be divided
into the following groups; exploratory data analysis, block maxima, peaks over
thresholds (univariate and bivariate), point processes, gev/gpd distributions.")
    (license license:gpl2+)))

(define-public r-eviewsr
  (package
    (name "r-eviewsr")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EviewsR" version))
              (sha256
               (base32
                "0dybfkpg5zr6bh84dh7v4vyxk4xv09v9hv8ijxj0h41mi5zpqap9"))))
    (properties `((upstream-name . "EviewsR")))
    (build-system r-build-system)
    (inputs (list))
    (propagated-inputs (list r-zoo r-xts r-magrittr r-knitr))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=EviewsR")
    (synopsis "Seamless Integration of 'EViews' and R")
    (description
     "It allows running EViews'(<https://eviews.com>) program from R, R Markdown and
Quarto documents.  EViews (Econometric Views) is a statistical software for
Econometric analysis.  This package integrates EViews and R and also serves as
an EViews Knit-Engine for knitr package.  Write all your EViews commands in R, R
Markdown or Quarto documents.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-evident
  (package
    (name "r-evident")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evident" version))
              (sha256
               (base32
                "1nffcfkny79d3f776p8j4g71cc3n991v56jwjyrg3vkgs05w13cn"))))
    (properties `((upstream-name . "evident")))
    (build-system r-build-system)
    (propagated-inputs (list r-senstrat
                             r-sensitivitymv
                             r-sensitivitymult
                             r-sensitivity2x2xk
                             r-mass
                             r-dos2))
    (home-page "https://cran.r-project.org/package=evident")
    (synopsis "Evidence Factors in Observational Studies")
    (description
     "This package contains a collection of examples of evidence factors in
observational studies from the book Replication and Evidence Factors in
Observational Studies by Paul R. Rosenbaum (2021) <doi:10.1201/9781003039648>.")
    (license license:gpl2)))

(define-public r-evidencesynthesis
  (package
    (name "r-evidencesynthesis")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvidenceSynthesis" version))
              (sha256
               (base32
                "1qpvbs8a1xbm6vim82xxarhmbj999f4wangav5hcnmbwbrvxihxx"))))
    (properties `((upstream-name . "EvidenceSynthesis")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-rlang
                             r-rjava
                             r-meta
                             r-hdinterval
                             r-gridextra
                             r-ggplot2
                             r-empiricalcalibration
                             r-cyclops
                             r-coda
                             r-beastjar))
    (native-inputs (list r-knitr))
    (home-page "https://ohdsi.github.io/EvidenceSynthesis/")
    (synopsis "Synthesizing Causal Evidence in a Distributed Research Network")
    (description
     "Routines for combining causal effect estimates and study diagnostics across
multiple data sites in a distributed study, without sharing patient-level data.
Allows for normal and non-normal approximations of the data-site likelihood of
the effect parameter.")
    (license license:asl2.0)))

(define-public r-evidencefactors
  (package
    (name "r-evidencefactors")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evidenceFactors" version))
              (sha256
               (base32
                "0g9w1q8ir6qmvk5vvbpipiyias7nj74ks2h94ja7al8sz68gralx"))))
    (properties `((upstream-name . "evidenceFactors")))
    (build-system r-build-system)
    (propagated-inputs (list r-sensitivitymv))
    (home-page "https://cran.r-project.org/package=evidenceFactors")
    (synopsis
     "Reporting Tools for Sensitivity Analysis of Evidence Factors in Observational Studies")
    (description
     "This package provides tools for integrated sensitivity analysis of evidence
factors in observational studies.  When an observational study allows for
multiple independent or nearly independent inferences which, if vulnerable, are
vulnerable to different biases, we have multiple evidence factors.  This package
provides methods that respect type I error rate control.  Examples are provided
of integrated evidence factors analysis in a longitudinal study with continuous
outcome and in a case-control study.  Karmakar, B., French, B., and Small, D. S.
(2019)<DOI:10.1093/biomet/asz003>.")
    (license license:expat)))

(define-public r-evidence
  (package
    (name "r-evidence")
    (version "0.8.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evidence" version))
              (sha256
               (base32
                "02kqk95kx4nv13fg6z55a5rv6sq6lv8azg0jjxbkg1j6hg15p7ai"))))
    (properties `((upstream-name . "evidence")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstanarm
                             r-rstan
                             r-loo
                             r-learnbayes
                             r-lattice
                             r-laplacesdemon))
    (home-page "https://cran.r-project.org/package=evidence")
    (synopsis
     "Analysis of Scientific Evidence Using Bayesian and Likelihood Methods")
    (description
     "Bayesian (and some likelihoodist) functions as alternatives to
hypothesis-testing functions in R base using a user interface patterned after
those of R's hypothesis testing functions.  See McElreath (2016, ISBN:
978-1-4822-5344-3), Gelman and Hill (2007, ISBN: 0-521-68689-X) (new edition in
preparation) and Albert (2009, ISBN: 978-0-387-71384-7) for good introductions
to Bayesian analysis and Pawitan (2002, ISBN: 0-19-850765-8) for the Likelihood
approach.  The functions in the package also make extensive use of graphical
displays for data exploration and model comparison.")
    (license license:gpl2+)))

(define-public r-evian
  (package
    (name "r-evian")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evian" version))
              (sha256
               (base32
                "1slnzq55gg3p16fs22v69mafiggiy5f70sj8fh65lc0hphybh6w2"))))
    (properties `((upstream-name . "evian")))
    (build-system r-build-system)
    (propagated-inputs (list r-sandwich r-profilelikelihood r-foreach
                             r-doparallel))
    (home-page "https://cran.r-project.org/package=evian")
    (synopsis "Evidential Analysis of Genetic Association Data")
    (description
     "Evidential regression analysis for dichotomous and quantitative outcome data.
The following references described the methods in this package: Strug, L. J.,
Hodge, S. E., Chiang, T., Pal, D. K., Corey, P. N., & Rohde, C. (2010)
<doi:10.1038/ejhg.2010.47>.  Strug, L. J., & Hodge, S. E. (2006)
<doi:10.1159/000094709>.  Royall, R. (1997) <ISBN:0-412-04411-0>.")
    (license license:gpl2+)))

(define-public r-evi
  (package
    (name "r-evi")
    (version "0.1.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EVI" version))
              (sha256
               (base32
                "1lmcz8k88aahqdjw5nw3pgns9nn1dy30hkm505c1ilaiziwpdi6d"))))
    (properties `((upstream-name . "EVI")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-cowplot))
    (native-inputs (list r-knitr))
    (home-page "https://www.nature.com/articles/s41598-021-02622-3")
    (synopsis "Epidemic Volatility Index as an Early-Warning Tool")
    (description
     "Implementation of the epidemic volatility index (EVI), as discussed by Kostoulas
et.  al. (2021).  EVI is a new, conceptually simple, early warning tool for
oncoming epidemic waves.  EVI is based on the volatility of newly reported cases
per unit of time, ideally per day, and issues an early warning when the
volatility change rate exceeds a threshold.")
    (license license:gpl3+)))

(define-public r-evgam
  (package
    (name "r-evgam")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evgam" version))
              (sha256
               (base32
                "0f8a29c2qxlzqadq694j6gwrj8rdq7x1kqwn79di7ycxfi7ifdbq"))))
    (properties `((upstream-name . "evgam")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mgcv))
    (home-page "https://cran.r-project.org/package=evgam")
    (synopsis "Generalised Additive Extreme Value Models")
    (description
     "This package provides methods for fitting various extreme value distributions
with parameters of generalised additive model (GAM) form are provided.  For
details of distributions see Coles, S.G. (2001) <doi:10.1007/978-1-4471-3675-0>,
GAMs see Wood, S.N. (2017) <doi:10.1201/9781315370279>, and the fitting approach
see Wood, S.N., Pya, N. & Safken, B. (2016) <doi:10.1080/01621459.2016.1180986>.
 Details of how evgam works and various examples are given in Youngman, B.D.
(2022) <doi:10.18637/jss.v103.i03>.")
    (license license:gpl3)))

(define-public r-eventwinratios
  (package
    (name "r-eventwinratios")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EventWinRatios" version))
              (sha256
               (base32
                "1hsq4g7hh71lzxzkmhm15mk3xpxaq75rqhgslf4qif6x7pm0p859"))))
    (properties `((upstream-name . "EventWinRatios")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EventWinRatios")
    (synopsis "Event-Specific Win Ratios for Terminal and Non-Terminal Events")
    (description
     "This package provides several confidence interval and testing procedures using
event-specific win ratios for semi-competing risks data with non-terminal and
terminal events, as developed in Yang et al. (2021<doi:10.1002/sim.9266>).
Compared with conventional methods for survival data, these procedures are
designed to utilize more data for improved inference procedures with
semi-competing risks data.  The event-specific win ratios were introduced in
Yang and Troendle (2021<doi:10.1177/1740774520972408>).  In this package, the
event-specific win ratios and confidence intervals are obtained for each event
type, and several testing procedures are developed for the global null of no
treatment effect on either terminal or non-terminal events.  Furthermore, a test
of proportional hazard assumptions, under which the event-specific win ratios
converge to the hazard ratios, and a test of equal hazard ratios are provided.
For summarizing the treatment effect on all events, confidence intervals for
linear combinations of the event-specific win ratios are available using
pre-determined or data-driven weights.  Asymptotic properties of these inference
procedures are discussed in Yang et al (2021<doi:10.1002/sim.9266>).  Also,
transformations are used to yield better control of the type one error rates for
moderately sized data sets.")
    (license license:gpl3+)))

(define-public r-eventtrack
  (package
    (name "r-eventtrack")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventTrack" version))
              (sha256
               (base32
                "0rndd86yz8xhb35pi7j1zrcapb3ny51v2y4cvld94avpwbvg5m0r"))))
    (properties `((upstream-name . "eventTrack")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-muhaz))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eventTrack")
    (synopsis "Event Prediction for Time-to-Event Endpoints")
    (description
     "This package implements the hybrid framework for event prediction described in
Fang & Zheng (2011, <doi:10.1016/j.cct.2011.05.013>).  To estimate the survival
function the event prediction is based on, a piecewise exponential hazard
function is fit to the time-to-event data to infer the potential change points.
Prior to the last identified change point, the survival function is estimated
using Kaplan-Meier, and the tail after the change point is fit using piecewise
exponential.")
    (license license:gpl2+)))

(define-public r-eventstudy
  (package
    (name "r-eventstudy")
    (version "0.39")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EventStudy" version))
              (sha256
               (base32
                "0xy4xiwmm6an93n8k1413n52qpjfl4z9hhw5wgj2qidg0k50ylal"))))
    (properties `((upstream-name . "EventStudy")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidyquant
                             r-testthat
                             r-stringr
                             r-shiny
                             r-scales
                             r-rstudioapi
                             r-rlang
                             r-readr
                             r-rcolorbrewer
                             r-purrr
                             r-miniui
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https:://data-zoo.de")
    (synopsis "Event Study Analysis")
    (description
     "Perform Event Studies from through our <https://EventStudyTools.com> Application
Programming Interface, parse the results, visualize it, and / or use the results
in further analysis.")
    (license license:expat)))

(define-public r-eventstream
  (package
    (name "r-eventstream")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventstream" version))
              (sha256
               (base32
                "10dngj6xzf072gyz8wcs3g30ihqvxdmg9h3q8m3d3lf17v3a75d6"))))
    (properties `((upstream-name . "eventstream")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensora
                             r-mass
                             r-glmnet
                             r-dplyr
                             r-dbscan
                             r-changepoint
                             r-abind))
    (home-page "https://sevvandi.github.io/eventstream/index.html")
    (synopsis "Streaming Events and their Early Classification")
    (description
     "This package implements event extraction and early classification of events in
data streams in R. It has the functionality to generate 2-dimensional data
streams with events belonging to 2 classes.  These events can be extracted and
features computed.  The event features extracted from incomplete-events can be
classified using a partial-observations-classifier (Kandanaarachchi et al.
2018) <doi:10.1371/journal.pone.0236331>.")
    (license license:expat)))

(define-public r-eventr
  (package
    (name "r-eventr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventr" version))
              (sha256
               (base32
                "08ljjvfrnfmi49b9bgizvvswxydln8ny901grn5j288pq0djjqyk"))))
    (properties `((upstream-name . "eventr")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=eventr")
    (synopsis "Create Event Based Data Architectures")
    (description
     "Event-driven programming is a programming paradigm where the flow of execution
is defined by event.  In this paradigm an event can be defined as \"a change in
the state\" of an object.  This package offers a set of functions for creating
event-based architectures using three basic functions: events, dispatchers, and
handlers.  The handlers manage the events, the dispatchers are in charge of
redirecting the events to each of the handlers, finally the events are the
objects that carry the information about the change of state.")
    (license license:gpl3)))

(define-public r-eventinterval
  (package
    (name "r-eventinterval")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventInterval" version))
              (sha256
               (base32
                "0nybzy2mpmazcvz06mkv7l9741mjm3i2q2sindq0777vb2k4504v"))))
    (properties `((upstream-name . "eventInterval")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=eventInterval")
    (synopsis "Sequential Event Interval Analysis")
    (description
     "This package provides functions for analysis of rate changes in sequential
events.")
    (license license:gpl2+)))

(define-public r-eventglm
  (package
    (name "r-eventglm")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventglm" version))
              (sha256
               (base32
                "0f9vmm47g6cfvspil44zki2isd49zy6hx4cvl3vqksj57pbw8g0p"))))
    (properties `((upstream-name . "eventglm")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-sandwich r-geepack))
    (native-inputs (list r-knitr))
    (home-page "https://sachsmc.github.io/eventglm/")
    (synopsis "Regression Models for Event History Outcomes")
    (description
     "This package provides a user friendly, easy to understand way of doing event
history regression for marginal estimands of interest, including the cumulative
incidence and the restricted mean survival, using the pseudo observation
framework for estimation.  For a review of the methodology, see Andersen and
Pohar Perme (2010) <doi:10.1177/0962280209105020> or Sachs and Gabriel (2022)
<doi:10.18637/jss.v102.i09>.  The interface uses the well known formulation of a
generalized linear model and allows for features including plotting of
residuals, the use of sampling weights, and corrected variance estimation.")
    (license license:gpl3)))

(define-public r-eventdetectr
  (package
    (name "r-eventdetectr")
    (version "0.3.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EventDetectR" version))
              (sha256
               (base32
                "0wx3bcs8n95fmyc5vnlrwd75bzqqvy6czb9bsbp04g3770c5ja0r"))))
    (properties `((upstream-name . "EventDetectR")))
    (build-system r-build-system)
    (propagated-inputs (list r-neuralnet r-imputets r-gridextra r-ggplot2
                             r-forecast))
    (home-page "https://github.com/frehbach/EventDetectR")
    (synopsis "Event Detection Framework")
    (description
     "Detect events in time-series data.  Combines multiple well-known R packages like
forecast and neuralnet to deliver an easily configurable tool for multivariate
event detection.")
    (license license:gpl3)))

(define-public r-eventdetectgui
  (package
    (name "r-eventdetectgui")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EventDetectGUI" version))
              (sha256
               (base32
                "02gwgbp692cfmf933jg1f7h4gghhc1v2cswz7rpcazm8h39mc4wh"))))
    (properties `((upstream-name . "EventDetectGUI")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-shinyjs
                             r-shinydashboard
                             r-shinybs
                             r-shiny
                             r-plotly
                             r-ggplot2
                             r-eventdetectr
                             r-dt))
    (home-page "https://cran.r-project.org/package=EventDetectGUI")
    (synopsis "Graphical User Interface for the 'EventDetectR' Package")
    (description
     "This package provides a graphical user interface for open source event
detection.")
    (license license:gpl3)))

(define-public r-eventdatar
  (package
    (name "r-eventdatar")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eventdataR" version))
              (sha256
               (base32
                "04hji0s5vglq60mv4kf368ny749rfr3hqlm78ch1dqh0f0nknk8q"))))
    (properties `((upstream-name . "eventdataR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://bupar.net/")
    (synopsis "Event Data Repository")
    (description
     "Event dataset repository including both real-life and artificial event logs.
They can be used in combination with functionalities provided by the bupaR
packages.  Janssenswillen et al. (2020)
<http://ceur-ws.org/Vol-2703/paperTD7.pdf>.")
    (license license:expat)))

(define-public r-event
  (package
    (name "r-event")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "event" version))
              (sha256
               (base32
                "0w3v8j61y7vr0cjl8a1rkvi4pyjlfhmzzn1n4dgkivac4iafzqjj"))))
    (properties `((upstream-name . "event")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmutil))
    (home-page "http://www.commanster.eu/rcode.html")
    (synopsis "Event History Procedures and Models")
    (description
     "This package provides functions for setting up and analyzing event history data.")
    (license license:gpl2)))

(define-public r-evd
  (package
    (name "r-evd")
    (version "2.3-6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evd" version))
              (sha256
               (base32
                "0wc95hfj0gwkyghipdrhwd3s6q2agh9x2wy6y7dr6mjw7wnmjb36"))))
    (properties `((upstream-name . "evd")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=evd")
    (synopsis "Functions for Extreme Value Distributions")
    (description
     "Extends simulation, distribution, quantile and density functions to univariate
and multivariate parametric extreme value distributions, and provides fitting
functions which calculate maximum likelihood estimates for univariate and
bivariate maxima models, and for univariate and bivariate threshold models.")
    (license license:gpl3)))

(define-public r-evcombr
  (package
    (name "r-evcombr")
    (version "0.1-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvCombR" version))
              (sha256
               (base32
                "038crxa3a7h8zxjmcy98pq1zlc6gnlqjy39srh8mai9ksalx672x"))))
    (properties `((upstream-name . "EvCombR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EvCombR")
    (synopsis "Evidence Combination in R")
    (description
     "Combine pieces of evidence in the form of uncertainty representations.")
    (license license:gpl3+)))

(define-public r-evclust
  (package
    (name "r-evclust")
    (version "2.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evclust" version))
              (sha256
               (base32
                "107x61vmkfmy3bmcaywz96qj35bmz4nydd0zn9amm2xnbb37lg31"))))
    (properties `((upstream-name . "evclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-r-utils
                             r-quadprog
                             r-plyr
                             r-mclust
                             r-matrix
                             r-limsolve
                             r-fnn))
    (home-page "https://cran.r-project.org/package=evclust")
    (synopsis "Evidential Clustering")
    (description
     "Various clustering algorithms that produce a credal partition, i.e., a set of
Dempster-Shafer mass functions representing the membership of objects to
clusters.  The mass functions quantify the cluster-membership uncertainty of the
objects.  The algorithms are: Evidential c-Means, Relational Evidential c-Means,
Constrained Evidential c-Means, Evidential Clustering, Constrained Evidential
Clustering, Evidential K-nearest-neighbor-based Clustering, Bootstrap
Model-Based Evidential Clustering, Belief Peak Evidential Clustering,
Neural-Network-based Evidential Clustering.")
    (license license:gpl3)))

(define-public r-evclass
  (package
    (name "r-evclass")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evclass" version))
              (sha256
               (base32
                "00lbhcgswpv0amz0mb93kx9p91sf0d7zvxfw9i8x1zpmpfd6nhcj"))))
    (properties `((upstream-name . "evclass")))
    (build-system r-build-system)
    (propagated-inputs (list r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=evclass")
    (synopsis "Evidential Distance-Based Classification")
    (description
     "Different evidential distance-based classifiers, which provide outputs in the
form of Dempster-Shafer mass functions.  The methods are: the evidential
K-nearest neighbor rule and the evidential neural network.")
    (license license:gpl3)))

(define-public r-evapotranspiration
  (package
    (name "r-evapotranspiration")
    (version "1.16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Evapotranspiration" version))
              (sha256
               (base32
                "0mdy9f20fwhak1a830mq2dnvkal0whgfdr8bqkkg2hb9351ahl15"))))
    (properties `((upstream-name . "Evapotranspiration")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo))
    (home-page "https://cran.r-project.org/package=Evapotranspiration")
    (synopsis
     "Modelling Actual, Potential and Reference Crop Evapotranspiration")
    (description
     "Uses data and constants to calculate potential evapotranspiration (PET) and
actual evapotranspiration (AET) from 21 different formulations including Penman,
Penman-Monteith FAO 56, Priestley-Taylor and Morton formulations.")
    (license license:gpl2+)))

(define-public r-evalue
  (package
    (name "r-evalue")
    (version "4.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EValue" version))
              (sha256
               (base32
                "0ip4cyipbs6g0znrdh5zs4xizmqgdznq8riggkgyv06wipgx9a2j"))))
    (properties `((upstream-name . "EValue")))
    (build-system r-build-system)
    (propagated-inputs (list r-metautility
                             r-metafor
                             r-metadat
                             r-ggplot2
                             r-dplyr
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EValue")
    (synopsis
     "Sensitivity Analyses for Unmeasured Confounding and Other Biases in Observational Studies and Meta-Analyses")
    (description
     "Conducts sensitivity analyses for unmeasured confounding, selection bias, and
measurement error (individually or in combination; VanderWeele & Ding (2017)
<doi:10.7326/M16-2607>; Smith & VanderWeele (2019)
<doi:10.1097/EDE.0000000000001032>; VanderWeele & Li (2019)
<doi:10.1093/aje/kwz133>; Smith & VanderWeele (2021) <arXiv:2005.02908>).  Also
conducts sensitivity analyses for unmeasured confounding in meta-analyses
(Mathur & VanderWeele (2020a) <doi:10.1080/01621459.2018.1529598>; Mathur &
VanderWeele (2020b) <doi:10.1097/EDE.0000000000001180>) and for additive
measures of effect modification (Mathur et al., under review).")
    (license license:gpl2)))

(define-public r-evaluationmeasures
  (package
    (name "r-evaluationmeasures")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvaluationMeasures" version))
              (sha256
               (base32
                "0b65y4rb650hhlgc18z0sm0danrrawqkazzdl9krl877djrgx87g"))))
    (properties `((upstream-name . "EvaluationMeasures")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EvaluationMeasures")
    (synopsis "Collection of Model Evaluation Measure Functions")
    (description
     "This package provides Some of the most important evaluation measures for
evaluating a model.  Just by giving the real and predicted class, measures such
as accuracy, sensitivity, specificity, ppv, npv, fmeasure, mcc and ...  will be
returned.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-evaluatecore
  (package
    (name "r-evaluatecore")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvaluateCore" version))
              (sha256
               (base32
                "1cmway61p2cfl9101x30hvvvmzvg2asnf6378dkinr7dr5ymnkxm"))))
    (properties `((upstream-name . "EvaluateCore")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-reshape2
                             r-rdpack
                             r-psych
                             r-mathjaxr
                             r-ksamples
                             r-gridextra
                             r-ggplot2
                             r-ggcorrplot
                             r-entropy
                             r-dplyr
                             r-cluster
                             r-car
                             r-boot
                             r-agricolae))
    (home-page "https://cran.r-project.org/package=EvaluateCore")
    (synopsis "Quality Evaluation of Core Collections")
    (description
     "This package implements various quality evaluation statistics to assess the
value of plant germplasm core collections using qualitative and quantitative
phenotypic trait data according to Odong et al. (2015)
<doi:10.1007/s00122-012-1971-y>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-evalr
  (package
    (name "r-evalr")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evalR" version))
              (sha256
               (base32
                "0gb9bi9kfpqv0asbrcz2kdf1grxbjipdq97jmlgbzr5rn9jski01"))))
    (properties `((upstream-name . "evalR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=evalR")
    (synopsis "Evaluation of Unverified Code")
    (description
     "The purpose of this package is to generate trees and validate unverified code.
Trees are made by parsing a statement into a verification tree data structure.
This will make it easy to port the statement into another language.  Safe
statement evaluations are done by executing the verification trees.")
    (license license:expat)))

(define-public r-evalitr
  (package
    (name "r-evalitr")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evalITR" version))
              (sha256
               (base32
                "16xx6blq51hck04zxvya4iyv9d6i1zkrqyfg10vc0kc3626vnlrn"))))
    (properties `((upstream-name . "evalITR")))
    (build-system r-build-system)
    (propagated-inputs (list r-quadprog r-matrix r-mass r-dplyr))
    (home-page "https://github.com/MichaelLLi/evalITR")
    (synopsis "Evaluating Individualized Treatment Rules")
    (description
     "This package provides various statistical methods for evaluating Individualized
Treatment Rules under randomized data.  The provided metrics include Population
Average Value (PAV), Population Average Prescription Effect (PAPE), Area Under
Prescription Effect Curve (AUPEC).  It also provides the tools to analyze
Individualized Treatment Rules under budget constraints.  Detailed reference in
Imai and Li (2019) <arXiv:1905.05389>.")
    (license license:gpl2+)))

(define-public r-evalest
  (package
    (name "r-evalest")
    (version "2021.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EvalEst" version))
              (sha256
               (base32
                "0ws7x0dkzb3h2m801dkzx2as146whm63mcipy4iia90jd9944zir"))))
    (properties `((upstream-name . "EvalEst")))
    (build-system r-build-system)
    (propagated-inputs (list r-tframe r-tfplot r-setrng r-dse))
    (home-page "http://tsanalysis.r-forge.r-project.org/")
    (synopsis "Dynamic Systems Estimation - Extensions")
    (description
     "This package provides functions for evaluating (time series) model estimation
methods.  These facilitate Monte Carlo experiments of repeated simulations and
estimations.  Also provides methods for looking at the distribution of the
results from these experiments, including model roots (which are an equivalence
class invariant).")
    (license license:gpl2)))

(define-public r-evacluster
  (package
    (name "r-evacluster")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Evacluster" version))
              (sha256
               (base32
                "01nxclrp90qhlnxl0yf2srppglic6m3f7pl35h62r6kxic0lrzhs"))))
    (properties `((upstream-name . "Evacluster")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Evacluster")
    (synopsis "Evaluation Clustering Methods for Disease Subtypes Diagnosis")
    (description
     "This package contains a set of clustering methods and evaluation metrics to
select the best number of the clusters based on clustering stability.  Two
references describe the methodology: Fahimeh Nezhadmoghadam, and Jose Tamez-Pena
(2021)<doi:10.1016/j.compbiomed.2021.104753>, and Fahimeh Nezhadmoghadam, et
al.(2021)<doi:10.2174/1567205018666210831145825>.")
    (license license:lgpl2.0+)))

(define-public r-evabic
  (package
    (name "r-evabic")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "evabic" version))
              (sha256
               (base32
                "0f34shsacf9lyb2hlp2f0nhqy2ihy1zqg52npx8ap2li0s4y0x24"))))
    (properties `((upstream-name . "evabic")))
    (build-system r-build-system)
    (home-page "https://abichat.github.io/evabic/")
    (synopsis "Evaluation of Binary Classifiers")
    (description
     "Evaluates the performance of binary classifiers.  Computes confusion measures
(TP, TN, FP, FN), derived measures (TPR, FDR, accuracy, F1, DOR, ..), and area
under the curve.  Outputs are well suited for nested dataframes.")
    (license license:gpl3)))

(define-public r-eva
  (package
    (name "r-eva")
    (version "0.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eva" version))
              (sha256
               (base32
                "1b5hrwgdbw19c63ywhkvxlz3843c0mgvsxlmab6zv6r2lrrdkf62"))))
    (properties `((upstream-name . "eva")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-envstats))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/brianbader/eva_package")
    (synopsis "Extreme Value Analysis with Goodness-of-Fit Testing")
    (description
     "Goodness-of-fit tests for selection of r in the r-largest order statistics
(GEVr) model.  Goodness-of-fit tests for threshold selection in the Generalized
Pareto distribution (GPD).  Random number generation and density functions for
the GEVr distribution.  Profile likelihood for return level estimation using the
GEVr and Generalized Pareto distributions.  P-value adjustments for sequential,
multiple testing error control.  Non-stationary fitting of GEVr and GPD. Bader,
B., Yan, J. & Zhang, X. (2016) <doi:10.1007/s11222-016-9697-3>.  Bader, B., Yan,
J. & Zhang, X. (2018) <doi:10.1214/17-AOAS1092>.")
    (license license:gpl2+)))

(define-public r-eurostat
  (package
    (name "r-eurostat")
    (version "3.7.10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eurostat" version))
              (sha256
               (base32
                "05132pid3gjp9qgksvz087vy323dp1s31w46q7a9553kxsqkgkw5"))))
    (properties `((upstream-name . "eurostat")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-stringi
                             r-regions
                             r-refmanager
                             r-readr
                             r-rappdirs
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr
                             r-curl
                             r-countrycode
                             r-classint
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://ropengov.github.io/eurostat/")
    (synopsis "Tools for Eurostat Open Data")
    (description
     "Tools to download data from the Eurostat database
<https://ec.europa.eu/eurostat> together with search and manipulation utilities.")
    (license license:bsd-2)))

(define-public r-eurosarcbayes
  (package
    (name "r-eurosarcbayes")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EurosarcBayes" version))
              (sha256
               (base32
                "12311s6ibw9q6kykhh689r93r7mwjhwrhkzdpc75grvw6ilgjmpm"))))
    (properties `((upstream-name . "EurosarcBayes")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-shiny r-plyr r-data-table r-clinfun))
    (home-page "https://cran.r-project.org/package=EurosarcBayes")
    (synopsis "Bayesian Single Arm Sample Size Calculation Software")
    (description
     "Bayesian sample size calculation software and examples for EuroSARC clinical
trials which utilise Bayesian methodology.  These trials rely on binomial based
endpoints so the majority of programs found here relate to this sort of
endpoint.  Developed as part of the EuroSARC FP7 grant.")
    (license license:gpl2)))

(define-public r-europop
  (package
    (name "r-europop")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "europop" version))
              (sha256
               (base32
                "1ym257bxr4a0dmln1j8x3pf87wrryzgqyzhvk61whc6n2bj62x1s"))))
    (properties `((upstream-name . "europop")))
    (build-system r-build-system)
    (home-page "https://github.com/mdlincoln/europop")
    (synopsis "Historical Populations of European Cities, 1500-1800")
    (description
     "This dataset contains population estimates of all European cities with at least
10,000 inhabitants during the period 1500-1800.  These data are adapted from Jan
De Vries, \"European Urbanization, 1500-1800\" (1984).")
    (license license:cc0)))

(define-public r-europeanar
  (package
    (name "r-europeanar")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "europeanaR" version))
              (sha256
               (base32
                "11cr8n64yv50zwib9wkvk1j43p9a1cmxmzznxykczv43l193kjg7"))))
    (properties `((upstream-name . "europeanaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-magrittr r-jsonlite r-httr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AleKoure/europeanaR")
    (synopsis
     "Interact with Metadata Records and Media on the Europeana Repository")
    (description
     "Interact with the Europeana Data Model via a variety of API endpoints that
contains digital collections from thousands of institutions around Europe.  This
translates to millions of Cultural Heritage Objects in the form of image, text,
video, sound and 3D, accompanied by rich metadata.  The Data Model design
principles are based on the core principles and best practices of the Semantic
Web and Linked Data efforts to which Europeana contributes (see, e.g., Doerr,
Martin, et al.  The europeana data model (edm).  World Library and Information
Congress: 76th IFLA general conference and assembly.  Vol.  10.  2010.).  The
package also provides methods for bulk downloads of specific subsets of items,
including both their metadata and their associated media files.")
    (license license:expat)))

(define-public r-eurodata
  (package
    (name "r-eurodata")
    (version "1.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eurodata" version))
              (sha256
               (base32
                "1g9ykm0v0rlszv1i6xhppf95j339x3ms6sji5fg46dig9pmn09i7"))))
    (properties `((upstream-name . "eurodata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xml2
                             r-stringr
                             r-rcpp
                             r-r-utils
                             r-memoise
                             r-magrittr
                             r-data-table))
    (home-page "https://github.com/alekrutkowski/eurodata/")
    (synopsis "Fast and Easy Eurostat Data Import and Search")
    (description
     "Interface to Eurostatâs Bulk Download Facility with fast data.table-based
import of data, labels, and metadata.  On top of the core functionality, data
search and data description/comparison functions are also provided.")
    (license license:gpl2)))

(define-public r-eurocordexr
  (package
    (name "r-eurocordexr")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eurocordexr" version))
              (sha256
               (base32
                "081p9qs09xif2cck0gmmqgzaly1r2p77kla2nhcvjgxgdylbsdkd"))))
    (properties `((upstream-name . "eurocordexr")))
    (build-system r-build-system)
    (propagated-inputs (list r-pcict
                             r-ncdf4-helpers
                             r-ncdf4
                             r-magrittr
                             r-lubridate
                             r-fs
                             r-data-table))
    (home-page "https://github.com/mitmat/eurocordexr")
    (synopsis
     "Makes it Easier to Work with Daily 'netCDF' from EURO-CORDEX RCMs")
    (description
     "Daily netCDF data from e.g. regional climate models (RCMs) are not trivial to
work with.  This package, which relies on data.table', makes it easier to deal
with large data from RCMs, such as from EURO-CORDEX
(<https://www.euro-cordex.net/>, <https://cordex.org/data-access/>).  It has
functions to extract single grid cells from rotated pole grids as well as the
whole array in long format.  Can handle non-standard calendars (360, noleap) and
interpolate them to a standard one.  Potentially works with many CF-conform
netCDF files.")
    (license license:gpl3)))

(define-public r-eurlex
  (package
    (name "r-eurlex")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eurlex" version))
              (sha256
               (base32
                "0ncbzixrr0fxjgyhwjwa2y8aqpq7c9m9v3g733n2zg88jpkqqr0q"))))
    (properties `((upstream-name . "eurlex")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tidyr
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readr
                             r-pdftools
                             r-magrittr
                             r-httr
                             r-dplyr
                             r-curl
                             r-antiword))
    (native-inputs (list r-knitr))
    (home-page "https://michalovadek.github.io/eurlex/")
    (synopsis "Retrieve Data on European Union Law")
    (description
     "Access to data on European Union laws and court decisions made easy with
pre-defined SPARQL queries and GET requests.  See Ovadek (2021)
<doi:10.1080/2474736X.2020.1870150> .")
    (license license:gpl3)))

(define-public r-eulerian
  (package
    (name "r-eulerian")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eulerian" version))
              (sha256
               (base32
                "0yhpnx9vnfly14vn1c2z009m7yipv0j59j3s826vgpczax6b48m0"))))
    (properties `((upstream-name . "eulerian")))
    (build-system r-build-system)
    (propagated-inputs (list r-graph))
    (home-page "https://cran.r-project.org/package=eulerian")
    (synopsis "eulerian: A package to find eulerian paths from graphs")
    (description
     "An eulerian path is a path in a graph which visits every edge exactly once.
This package provides methods to handle eulerian paths or cycles.")
    (license license:gpl2)))

(define-public r-eufootball
  (package
    (name "r-eufootball")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EUfootball" version))
              (sha256
               (base32
                "0h36cqi752zs32gs55rdniabldr8jph7gc1y2yb9983cl4mfrjv0"))))
    (properties `((upstream-name . "EUfootball")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EUfootball")
    (synopsis "Football Match Data of European Leagues")
    (description
     "This package contains match results from seven European men's football leagues,
namely Premier League (England), Ligue 1 (France), Bundesliga (Germany), Serie A
(Italy), Primera Division (Spain), Eredivisie (The Netherlands), Super Lig
(Turkey).  Includes Seasons 2010/2011 until 2019/2020 and a set of interesting
covariates.  Can be used all purposes.")
    (license license:gpl3+)))

(define-public r-eudract
  (package
    (name "r-eudract")
    (version "0.10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eudract" version))
              (sha256
               (base32
                "0qznnfflmxgx6ic5lfw0vcv1jm6hs7g3srly90vj70adjcb49sbd"))))
    (properties `((upstream-name . "eudract")))
    (build-system r-build-system)
    (propagated-inputs (list r-xslt
                             r-xml2
                             r-tidyr
                             r-magrittr
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://eudract-tool.medschl.cam.ac.uk/")
    (synopsis
     "Creates Safety Results Summary in XML to Upload to EudraCT, or ClinicalTrials.gov")
    (description
     "The remit of the European Clinical Trials Data Base (EudraCT
<https://eudract.ema.europa.eu/> ), or ClinicalTrials.gov
<https://clinicaltrials.gov/>, is to provide open access to summaries of all
registered clinical trial results; thus aiming to prevent non-reporting of
negative results and provide open-access to results to inform future research.
The amount of information required and the format of the results, however,
imposes a large extra workload at the end of studies on clinical trial units.
In particular, the adverse-event-reporting component requires entering: each
unique combination of treatment group and safety event; for every such event
above, a further 4 pieces of information (body system, number of occurrences,
number of subjects, number exposed) for non-serious events, plus an extra three
pieces of data for serious adverse events (numbers of causally related events,
deaths, causally related deaths).  This package prepares the required statistics
needed by EudraCT and formats them into the precise requirements to directly
upload an XML file into the web portal, with no further data entry by hand.")
    (license license:gpl2)))

(define-public r-euclideansd
  (package
    (name "r-euclideansd")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EuclideanSD" version))
              (sha256
               (base32
                "1w5s1zkb81v150nvaygvyla2x0vh4c99vd5jw53jcq68sv9hby3i"))))
    (properties `((upstream-name . "EuclideanSD")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny))
    (home-page "https://cran.r-project.org/package=EuclideanSD")
    (synopsis "An Euclidean View of Center and Spread")
    (description
     "Illustrates the concepts developed in Sarkar and Rashid (2019, ISSN:0025-5742)
<http://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwiH4deL3q3xAhWX73MBHR_wDaYQFnoECAUQAw&url=https%3A%2F%2Fwww.indianmathsociety.org.in%2Fmathstudent-part-2-2019.pdf&usg=AOvVaw3SY--3T6UAWUnH5-Nj6bSc>.
 This package helps a user guess four things (mean, MD, scaled MSD, and RMSD)
before they get the SD. 1) The package displays the Empirical Cumulative
Distribution Function (ECDF) of the given data.  The user must choose the value
of the mean by equating the areas of two colored (blue and green) regions.  The
package gives feedback to improve the choice until it is correct.
Alternatively, the reader may continue with a different guess for the center
(not necessarily the mean).  2) The user chooses the values of the Mean
Deviation (MD) based on the ECDF of the deviations by equating the areas of two
newly colored (blue and green) regions, with feedback from the package until the
user guesses correctly.  3) The user chooses the Scaled Mean Squared Deviation
(MSD) based on the ECDF of the scaled square deviations by equating the areas of
two newly colored (blue and green) regions, with feedback from the package until
the user guesses correctly.  4) The user chooses the Root Mean Squared Deviation
(RMSD) by ensuring that its intersection with the ECDF of the deviations is at
the same height as the intersection between the scaled MSD and the ECDF of the
scaled squared deviations.  Additionally, the intersection of two blue lines
(the green dot) should fall on the vertical line at the maximum deviation.  5)
Finally, if the mean is chosen correctly, only then the user can view the
population SD (the same as the RMSD) and the sample SD (sqrt(n/(n-1))*RMSD) by
clicking the respective buttons.  If the mean is chosen incorrectly, the user is
asked to correct it.")
    (license license:gpl3)))

(define-public r-etwfe
  (package
    (name "r-etwfe")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etwfe" version))
              (sha256
               (base32
                "0wyfpnh2pcziiikjr58wbfid085c0ack6mn5n4m97pk4lg9sh6sw"))))
    (properties `((upstream-name . "etwfe")))
    (build-system r-build-system)
    (propagated-inputs (list r-marginaleffects r-formula r-fixest))
    (native-inputs (list r-knitr))
    (home-page "https://grantmcdermott.com/etwfe/")
    (synopsis "Extended Two-Way Fixed Effects")
    (description
     "Convenience functions for implementing extended two-way fixed effect regressions
a la Wooldridge (2021, 2022) <doi:10.2139/ssrn.3906345>,
<doi:10.2139/ssrn.4183726>.")
    (license license:expat)))

(define-public r-etrm
  (package
    (name "r-etrm")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etrm" version))
              (sha256
               (base32
                "0jzwvz2ddh3w4y1kgqwdj7py376w6dwbvqhjmiiikr7qsgap23fk"))))
    (properties `((upstream-name . "etrm")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=etrm")
    (synopsis "Energy Trading and Risk Management")
    (description
     "This package provides a collection of functions to perform core tasks within
Energy Trading and Risk Management (ETRM).  Calculation of maximum smoothness
forward price curves for electricity and natural gas contracts with flow
delivery, as presented in F. E. Benth, S. Koekebakker, and F. Ollmar (2007)
<doi:10.3905/jod.2007.694791> and F. E. Benth, J. S. Benth, and S. Koekebakker
(2008) <doi:10.1142/6811>.  Portfolio insurance trading strategies for price
risk management in the forward market, see F. Black (1976)
<doi:10.1016/0304-405X(76)90024-6>, T. Bjork (2009)
<https://EconPapers.repec.org/RePEc:oxp:obooks:9780199574742>, F. Black and R.
W. Jones (1987) <doi:10.3905/jpm.1987.409131> and H. E. Leland (1980)
<http://www.jstor.org/stable/2327419>.")
    (license license:expat)))

(define-public r-etree
  (package
    (name "r-etree")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etree" version))
              (sha256
               (base32
                "1qnky9jqcfbq60s4h3igyq77r7f559i714i5g7ss14zcx86zkpdi"))))
    (properties `((upstream-name . "etree")))
    (build-system r-build-system)
    (propagated-inputs (list r-usedist
                             r-tda
                             r-survival
                             r-partykit
                             r-networkdistance
                             r-igraph
                             r-fda-usc
                             r-energy
                             r-cluster
                             r-braingraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ricgbl/etree")
    (synopsis
     "Classification and Regression with Structured and Mixed-Type Data")
    (description
     "Implementation of Energy Trees, a statistical model to perform classification
and regression with structured and mixed-type data.  The model has a similar
structure to Conditional Trees, but brings in Energy Statistics to test
independence between variables that are possibly structured and of different
nature.  Currently, the package covers functions and graphs as structured
covariates.  It builds upon partykit to provide functionalities for fitting,
printing, plotting, and predicting with Energy Trees.  Energy Trees are
described in Giubilei et al. (2022) <arXiv:2207.04430>.")
    (license license:gpl3)))

(define-public r-etrader
  (package
    (name "r-etrader")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etrader" version))
              (sha256
               (base32
                "1iq80vn7j2sywlla01f6vrfyjjs4lk606kc8z4xlfqj8d27r9r9w"))))
    (properties `((upstream-name . "etrader")))
    (build-system r-build-system)
    (propagated-inputs (list r-urltools
                             r-rvest
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://exploringfinance.github.io/etrader/")
    (synopsis "'ETRADE' API Interface for R")
    (description
     "Use R to interface with the ETRADE API <https://developer.etrade.com/home>.
Functions include authentication, trading, quote requests, account information,
and option chains.  A user will need an ETRADE brokerage account and ETRADE API
approval.  See README for authentication process and examples.")
    (license license:gpl3)))

(define-public r-etma
  (package
    (name "r-etma")
    (version "1.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etma" version))
              (sha256
               (base32
                "0g9244yx50y1gw0f37hskbcgyv4nldmzr86v3rmf3afabmjbyzjj"))))
    (properties `((upstream-name . "etma")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=etma")
    (synopsis "Epistasis Test in Meta-Analysis")
    (description
     "Traditional meta-regression based method has been developed for using
meta-analysis data, but it faced the challenge of inconsistent estimates.  This
package purpose a new statistical method to detect epistasis using incomplete
information summary, and have proven it not only successfully let consistency of
evidence, but also increase the power compared with traditional method (Detailed
tutorial is shown in website).")
    (license license:gpl3+)))

(define-public r-etlutils
  (package
    (name "r-etlutils")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ETLUtils" version))
              (sha256
               (base32
                "0s0q4f3wzpdd87l3pnzysa8aq7zgz29589xnm65a6xfy9znbpzs3"))))
    (properties `((upstream-name . "ETLUtils")))
    (build-system r-build-system)
    (propagated-inputs (list r-ff r-bit))
    (home-page "https://github.com/jwijffels/ETLUtils")
    (synopsis
     "Utility Functions to Execute Standard Extract/Transform/Load Operations (using Package 'ff') on Large Data")
    (description
     "This package provides functions to facilitate the use of the ff package in
interaction with big data in SQL databases (e.g. in Oracle', MySQL',
PostgreSQL', Hive') by allowing easy importing directly into ffdf objects using
DBI', RODBC and RJDBC'.  Also contains some basic utility functions to do fast
left outer join merging based on match', factorisation of data and a basic
function for re-coding vectors.")
    (license license:gpl2)))

(define-public r-etl
  (package
    (name "r-etl")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etl" version))
              (sha256
               (base32
                "0ccixl881kxljnz47c78r96wrj2l7mdxs2rxqf0psbkfwybd1pb4"))))
    (properties `((upstream-name . "etl")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-usethis
                             r-tibble
                             r-rvest
                             r-rlang
                             r-readr
                             r-lubridate
                             r-janitor
                             r-fs
                             r-dplyr
                             r-downloader
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/beanumber/etl")
    (synopsis "Extract-Transform-Load Framework for Medium Data")
    (description
     "This package provides a predictable and pipeable framework for performing ETL
(extract-transform-load) operations on publicly-accessible medium-sized data
set.  This package sets up the method structure and implements generic
functions.  Packages that depend on this package download specific data sets
from the Internet, clean them up, and import them into a local or remote
relational database management system.")
    (license license:cc0)))

(define-public r-ethseq
  (package
    (name "r-ethseq")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EthSEQ" version))
              (sha256
               (base32
                "1gmyf0qsixc8nsl9zzk7rb230zjv0p9vvp2zhr5q3xsic594mf1v"))))
    (properties `((upstream-name . "EthSEQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp
                             r-plot3d
                             r-mass
                             r-geometry
                             r-gdsfmt
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EthSEQ")
    (synopsis
     "Ethnicity Annotation from Whole-Exome and Targeted Sequencing Data")
    (description
     "Reliable and rapid ethnicity annotation from whole exome and targeted sequencing
data.")
    (license license:gpl3)))

(define-public r-ethnobotanyr
  (package
    (name "r-ethnobotanyr")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ethnobotanyR" version))
              (sha256
               (base32
                "1ipwh4kxraa7rx6kvjpwq3b6jb7b4aa9kwcj7vrd4xhj4yxymqzb"))))
    (properties `((upstream-name . "ethnobotanyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-magrittr
                             r-ggridges
                             r-ggplot2
                             r-ggalluvial
                             r-dplyr
                             r-cowplot
                             r-circlize))
    (native-inputs (list r-knitr))
    (home-page "https://CRAN.R-project.org/package=ethnobotanyR")
    (synopsis "Calculate Quantitative Ethnobotany Indices")
    (description
     "An implementation of the quantitative ethnobotany indices in R. The goal is to
provide an easy-to-use platform for ethnobotanists to assess the cultural
significance of plant species based on informant consensus.  The package closely
follows the paper by Tardio and Pardo-de-Santayana (2008).  Tardio, J., and M.
Pardo-de-Santayana, 2008.  Cultural Importance Indices: A Comparative Analysis
Based on the Useful Wild Plants of Southern Cantabria (Northern Spain) 1.
Economic Botany, 62(1), 24-39. <doi:10.1007/s12231-007-9004-5>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ether
  (package
    (name "r-ether")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ether" version))
              (sha256
               (base32
                "1f3phh5vdfvlxqrpzsn6ysz0q3mbhr862fzsd3sp8m8qhry86cbx"))))
    (properties `((upstream-name . "ether")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmpfr r-jsonlite r-httr r-dplyr))
    (home-page "https://cran.r-project.org/package=ether")
    (synopsis "Interaction with the 'Ethereum' Blockchain")
    (description
     "Interacts with the open-source, public Ethereum <https://www.ethereum.org/>
blockchain.  It provides a distributed computing platform via smart contracts.
This package provides functions which interrogate blocks and transactions in the
Ethereum blockchain.")
    (license license:gpl2)))

(define-public r-etc
  (package
    (name "r-etc")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ETC" version))
              (sha256
               (base32
                "16ciff8bf2p56941r83y7405sp5pfms63dwjd232ih3mnznjpc0f"))))
    (properties `((upstream-name . "ETC")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=ETC")
    (synopsis "Equivalence to Control")
    (description
     "Treatments of a one-way layout, being equivalent to a control, can be selected
with this package.  Bonferroni adjusted \"two one-sided t-tests\" (TOST) and
related simultaneous confidence intervals are given for both differences or
ratios of means of normally distributed data.  For the case of equal variances
and balanced sample sizes for the treatment groups, the single-step procedure of
Bofinger and Bofinger (1995) <doi:10.1111/j.2517-6161.1995.tb02058.x> can be
chosen.  For non-normal data, the Wilcoxon test is applied.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-etasflp
  (package
    (name "r-etasflp")
    (version "2.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etasFLP" version))
              (sha256
               (base32
                "1030l3g6hghgcmji934g5pc01p2hld09mv3zna58xzzb4wsmz167"))))
    (properties `((upstream-name . "etasFLP")))
    (build-system r-build-system)
    (propagated-inputs (list r-maps r-mapdata r-fields))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=etasFLP")
    (synopsis
     "Mixed FLP and ML Estimation of ETAS Space-Time Point Processes for Earthquake Description")
    (description
     "Estimation of the components of an ETAS (Epidemic Type Aftershock Sequence)
model for earthquake description.  Non-parametric background seismicity can be
estimated through FLP (Forward Likelihood Predictive).  New version 2.0.0:
covariates have been introduced to explain the effects of external factors on
the induced seismicity; the parametrization has been changed; Chiodi, Adelfio
(2017)<doi:10.18637/jss.v076.i03>.")
    (license license:gpl2+)))

(define-public r-etas
  (package
    (name "r-etas")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ETAS" version))
              (sha256
               (base32
                "03721z7fsbkqv5wiybm01nxbl99x8wf2214y3w139k0zr42xk94s"))))
    (properties `((upstream-name . "ETAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random
                             r-spatstat-geom
                             r-spatstat-explore
                             r-rcpp
                             r-maps
                             r-lattice
                             r-goftest
                             r-fields))
    (home-page "https://github.com/jalilian/ETAS")
    (synopsis "Modeling Earthquake Data Using 'ETAS' Model")
    (description
     "Fits the space-time Epidemic Type Aftershock Sequence ('ETAS') model to
earthquake catalogs using a stochastic declustering approach.  The ETAS model is
a spatio-temporal marked point process model and a special case of the Hawkes
process.  The package is based on a Fortran program by Jiancang Zhuang
(available at <http://bemlar.ism.ac.jp/zhuang/software.html>), which is modified
and translated into C++ and C such that it can be called from R. Parallel
computing with OpenMP is possible on supported platforms.")
    (license license:gpl2+)))

(define-public r-etable
  (package
    (name "r-etable")
    (version "1.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "etable" version))
              (sha256
               (base32
                "17dga1hz29jjdclhhwn1hrvlkdfbcbqmk233vc00s59pbmgsav06"))))
    (properties `((upstream-name . "etable")))
    (build-system r-build-system)
    (propagated-inputs (list r-hmisc))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=etable")
    (synopsis "Easy Table")
    (description
     "This package creates simple to highly customized tables for a wide selection of
descriptive statistics, with or without weighting the data.")
    (license license:gpl3+)))

(define-public r-et-nwfva
  (package
    (name "r-et-nwfva")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "et.nwfva" version))
              (sha256
               (base32
                "01jhy5043axgmv51ri2k3gl1shvsh569h9xy4y1ya1qjpdlbv0ky"))))
    (properties `((upstream-name . "et.nwfva")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rnuske/et.nwfva")
    (synopsis
     "Forest Yield Tables for Northwest Germany and their Application")
    (description
     "The new yield tables developed by the Northwest German Forest Research Institute
(NW-FVA) provide a forest management tool for the five main commercial tree
species oak, beech, spruce, Douglas-fir and pine for northwestern Germany.  The
new method applied for deriving yield tables combines measurements of growth and
yield trials with growth simulations using a state-of-the-art single-tree growth
simulator.  By doing so, the new yield tables reflect the current increment
level and the recommended graduated thinning from above is the underlying
management concept.  The yield tables are provided along with methods for
deriving the site index and for interpolating between age and site indices and
extrapolating beyond age and site index ranges.  The inter-/extrapolations are
performed traditionally by the rule of proportion or with a functional approach.")
    (license license:gpl2+)))

(define-public r-esvis
  (package
    (name "r-esvis")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esvis" version))
              (sha256
               (base32
                "0bb91khnrn8v3d6hbbin72032w7w8p0jchbr0bzwyfq5f6l4hwka"))))
    (properties `((upstream-name . "esvis")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-sfsmisc
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-hmisc
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/datalorax/esvis")
    (synopsis "Visualization and Estimation of Effect Sizes")
    (description
     "This package provides a variety of methods are provided to estimate and
visualize distributional differences in terms of effect sizes.  Particular
emphasis is upon evaluating differences between two or more distributions across
the entire scale, rather than at a single point (e.g., differences in means).
For example, Probability-Probability (PP) plots display the difference between
two or more distributions, matched by their empirical CDFs (see Ho and Reardon,
2012; <doi:10.3102/1076998611411918>), allowing for examinations of where on the
scale distributional differences are largest or smallest.  The area under the PP
curve (AUC) is an effect-size metric, corresponding to the probability that a
randomly selected observation from the x-axis distribution will have a higher
value than a randomly selected observation from the y-axis distribution.  Binned
effect size plots are also available, in which the distributions are split into
bins (set by the user) and separate effect sizes (Cohen's d) are produced for
each bin - again providing a means to evaluate the consistency (or lack thereof)
of the difference between two or more distributions at different points on the
scale.  Evaluation of empirical CDFs is also provided, with built-in arguments
for providing annotations to help evaluate distributional differences at
specific points (e.g., semi-transparent shading).  All function take a
consistent argument structure.  Calculation of specific effect sizes is also
possible.  The following effect sizes are estimable: (a) Cohen's d, (b) Hedges
g, (c) percentage above a cut, (d) transformed (normalized) percentage above a
cut, (e) area under the PP curve, and (f) the V statistic (see Ho, 2009;
<doi:10.3102/1076998609332755>), which essentially transforms the area under the
curve to standard deviation units.  By default, effect sizes are calculated for
all possible pairwise comparisons, but a reference group (distribution) can be
specified.")
    (license license:expat)))

(define-public r-estprod
  (package
    (name "r-estprod")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estprod" version))
              (sha256
               (base32
                "0pnpg8w6i1dmkcn6afj2jsm5mzvbxka80np1bldcxgmylrp5s35p"))))
    (properties `((upstream-name . "estprod")))
    (build-system r-build-system)
    (propagated-inputs (list r-minpack-lm r-lazyeval r-gmm r-formula r-boot))
    (home-page "https://cran.r-project.org/package=estprod")
    (synopsis "Estimation of Production Functions")
    (description
     "Estimation of production functions by the Olley-Pakes, Levinsohn-Petrin and
Wooldridge methodologies.  The package aims to reproduce the results obtained
with the Stata's user written opreg
<http://www.stata-journal.com/article.html?article=st0145> and levpet
<http://www.stata-journal.com/article.html?article=st0060> commands.  The first
was originally proposed by Olley, G.S. and Pakes, A. (1996)
<doi:10.2307/2171831>.  The second by Levinsohn, J. and Petrin, A. (2003)
<doi:10.1111/1467-937X.00246>.  And the third by Wooldridge (2009)
<doi:10.1016/j.econlet.2009.04.026>.")
    (license license:gpl3)))

(define-public r-estmix
  (package
    (name "r-estmix")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstMix" version))
              (sha256
               (base32
                "13zwhxm0qm83c8k5k4slvq2snkmbq1zz3i5cqvxxwhvkb4b8aja4"))))
    (properties `((upstream-name . "EstMix")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-pscbs))
    (home-page "https://cran.r-project.org/package=EstMix")
    (synopsis "Tumor Clones Percentage Estimations")
    (description
     "Includes R functions for the estimation of tumor clones percentages for both snp
data and (whole) genome sequencing data.  See Cheng, Y., Dai, J. Y., Paulson, T.
G., Wang, X., Li, X., Reid, B. J., & Kooperberg, C. (2017).  Quantification of
multiple tumor clones using gene array and sequencing data.  The Annals of
Applied Statistics, 11(2), 967-991, <doi:10.1214/17-AOAS1026> for more details.")
    (license license:gpl2+)))

(define-public r-estmeansd
  (package
    (name "r-estmeansd")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estmeansd" version))
              (sha256
               (base32
                "1jmi78gmddhqpg3n7jywkbsq8amxa641s8rhzzg6jmmh4w09dg9s"))))
    (properties `((upstream-name . "estmeansd")))
    (build-system r-build-system)
    (propagated-inputs (list r-metablue))
    (home-page "https://github.com/stmcg/estmeansd")
    (synopsis
     "Estimating the Sample Mean and Standard Deviation from Commonly Reported Quantiles in Meta-Analysis")
    (description
     "This package implements the methods of McGrath et al. (2020)
<doi:10.1177/0962280219889080> and Cai et al. (2021)
<doi:10.1177/09622802211047348> for estimating the sample mean and standard
deviation from commonly reported quantiles in meta-analysis.  These methods can
be applied to studies that report the sample median, sample size, and one or
both of (i) the sample minimum and maximum values and (ii) the first and third
quartiles.")
    (license license:gpl3+)))

(define-public r-estimraw
  (package
    (name "r-estimraw")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estimraw" version))
              (sha256
               (base32
                "0z591mblbzc3qv9pyv8zn0r5r3d8f1l02sxdc649gl1lb40kalz0"))))
    (properties `((upstream-name . "estimraw")))
    (build-system r-build-system)
    (propagated-inputs (list r-dplyr))
    (home-page "https://cran.r-project.org/package=estimraw")
    (synopsis
     "Estimation of Four-Fold Table Cell Frequencies (Raw Data) from Effect Size Measures")
    (description
     "Estimation of four-fold table cell frequencies (raw data) from risk ratios
(relative risks), risk differences and odds ratios.  While raw data can be
useful for doing meta-analysis, such data is often not provided by primary
studies (with summary statistics being solely presented).  Therefore, based on
summary statistics (namely, risk ratios, risk differences and odds ratios), this
package estimates the value of each cell in a 2x2 table according to the
equations described in Di Pietrantonj C (2006) <doi:10.1002/sim.2287>.")
    (license license:gpl2)))

(define-public r-estimdiagnostics
  (package
    (name "r-estimdiagnostics")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstimDiagnostics" version))
              (sha256
               (base32
                "036kz4zdrgqab2mbzxmbknr9314ap5b2dp75syqhg2mmzw3zf3li"))))
    (properties `((upstream-name . "EstimDiagnostics")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat
                             r-rlang
                             r-reshape2
                             r-goftest
                             r-ggplot2
                             r-foreach))
    (native-inputs (list r-knitr))
    (home-page
     "https://gitlab.com/Dmitry_Otryakhin/diagnostics-and-tests-for-statistical-estimators")
    (synopsis "Diagnostic Tools and Unit Tests for Statistical Estimators")
    (description
     "Extension of testthat package to make unit tests on empirical distributions of
estimators and functions for diagnostics of their finite-sample performance.")
    (license license:gpl3)))

(define-public r-estimatr
  (package
    (name "r-estimatr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estimatr" version))
              (sha256
               (base32
                "1px9j7nlxgx5g7fi57hpx0fsjxhkwjcxbkic0lqf1m3pgxxcxj59"))))
    (properties `((upstream-name . "estimatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcppeigen r-rcpp r-generics r-formula))
    (home-page "https://declaredesign.org/r/estimatr/")
    (synopsis "Fast Estimators for Design-Based Inference")
    (description
     "Fast procedures for small set of commonly-used, design-appropriate estimators
with robust standard errors and confidence intervals.  Includes estimators for
linear regression, instrumental variables regression, difference-in-means,
Horvitz-Thompson estimation, and regression improving precision of experimental
estimates by interacting treatment with centered pre-treatment covariates
introduced by Lin (2013) <doi:10.1214/12-AOAS583>.")
    (license license:expat)))

(define-public r-estimationtools
  (package
    (name "r-estimationtools")
    (version "4.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstimationTools" version))
              (sha256
               (base32
                "1hwlrsxl42n4i25f1izhccj755aydl2r98w1jn12z9a62wk9nnzy"))))
    (properties `((upstream-name . "EstimationTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-stringr
                             r-rdpack
                             r-numderiv
                             r-gaussquad
                             r-ga
                             r-deoptim
                             r-boot
                             r-bbmisc
                             r-autoimage))
    (native-inputs (list r-knitr))
    (home-page "https://jaimemosg.github.io/EstimationTools/")
    (synopsis
     "Maximum Likelihood Estimation for Probability Functions from Data Sets")
    (description
     "Total Time on Test plot and routines for parameter estimation of any lifetime
distribution implemented in R via maximum likelihood (ML) given a data set.  It
is implemented thinking on parametric survival analysis, but it feasible to use
in parameter estimation of probability density or mass functions in any field.
The main routines maxlogL and maxlogLreg are wrapper functions specifically
developed for ML estimation.  There are included optimization procedures such as
nlminb and optim from base package, and DEoptim Mullen (2011) <doi:
10.18637/jss.v040.i06>.  Standard errors are estimated with numDeriv Gilbert
(2011) <https://CRAN.R-project.org/package=numDeriv> or the option Hessian =
TRUE of optim function.")
    (license license:gpl3)))

(define-public r-estimatew
  (package
    (name "r-estimatew")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estimateW" version))
              (sha256
               (base32
                "0fgbyfnxxs6kp9p17ljvj72q5vd4xn7kwh4zbmzjx45cdq101bjv"))))
    (properties `((upstream-name . "estimateW")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-plot-matrix r-matrixcalc r-matrix))
    (home-page "https://cran.r-project.org/package=estimateW")
    (synopsis "Estimation of Spatial Weight Matrices")
    (description
     "Bayesian estimation of spatial weight matrices in spatial econometric panel
models.  Allows for estimation of spatial autoregressive (SAR), spatial Durbin
(SDM), and spatially lagged explanatory variable (SLX) type specifications
featuring an unknown spatial weight matrix.  Methodological details are given in
Krisztin and Piribauer (2022) <doi:10.1080/17421772.2022.2095426>.")
    (license license:gpl3+)))

(define-public r-estimategroupnetwork
  (package
    (name "r-estimategroupnetwork")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstimateGroupNetwork" version))
              (sha256
               (base32
                "06ihyiq9dw7yg8qpq3yckpd0jk4gjajgvavbj302sj0qssrxgyzh"))))
    (properties `((upstream-name . "EstimateGroupNetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-qgraph r-igraph r-ggplot2 r-dplyr))
    (home-page "https://cran.r-project.org/package=EstimateGroupNetwork")
    (synopsis
     "Perform the Joint Graphical Lasso and Selects Tuning Parameters")
    (description
     "Can be used to simultaneously estimate networks (Gaussian Graphical Models) in
data from different groups or classes via Joint Graphical Lasso.  Tuning
parameters are selected via information criteria (AIC / BIC / extended BIC) or
cross validation.")
    (license license:gpl2+)))

(define-public r-esther
  (package
    (name "r-esther")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstHer" version))
              (sha256
               (base32
                "1j8sczwfzil16j85mw5d1c7cxy7wimh0qq7zhmkh7mfnr36m9phr"))))
    (properties `((upstream-name . "EstHer")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-mass r-glmnet))
    (home-page "https://cran.r-project.org/package=EstHer")
    (synopsis
     "Estimation of Heritability in High Dimensional Sparse Linear Mixed Models using Variable Selection")
    (description
     "Our method is a variable selection method to select active components in sparse
linear mixed models in order to estimate the heritability.  The selection allows
us to reduce the size of the data sets which improves the accuracy of the
estimations.  Our package also provides a confidence interval for the estimated
heritability.")
    (license license:gpl2)))

(define-public r-ester
  (package
    (name "r-ester")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ESTER" version))
              (sha256
               (base32
                "1jiyqq5hgqc754r434sik9jnlpw66xz56cjdf5ig95qkffzsg224"))))
    (properties `((upstream-name . "ESTER")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-magrittr
                             r-lme4
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-cowplot
                             r-brms))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/lnalborczyk/ESTER")
    (synopsis "Efficient Sequential Testing with Evidence Ratios")
    (description
     "An implementation of sequential testing that uses evidence ratios computed from
the weights of a set of models.  These weights correspond either to Akaike
weights computed from the Akaike Information Criterion (AIC) or the Bayesian
Information Criterion (BIC) and following Burnham & Anderson (2004,
<doi:10.1177/0049124104268644>) recommendations, or to pseudo-BMA weights
computed from the WAIC or the LOO-IC of models fitted with brms and following
Yao et al. (2017, <arXiv:1704.02030v3>).")
    (license license:expat)))

(define-public r-estcrm
  (package
    (name "r-estcrm")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EstCRM" version))
              (sha256
               (base32
                "110imzvcbkql3dk1pb8ys1rqykkghd73k3v0l2sppny70fw8b24q"))))
    (properties `((upstream-name . "EstCRM")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice r-hmisc))
    (home-page "https://cengiz.me/")
    (synopsis "Calibrating Parameters for the Samejima's Continuous IRT Model")
    (description
     "Estimates item and person parameters for the Continuous Response Model (CRM;
Samejima, 1973, <doi:10.1007/BF02291114>), computes item fit residual
statistics, draws empirical 3D item category response curves, draws theoretical
3D item category response curves, and generates data under the CRM for
simulation studies.")
    (license license:gpl2+)))

(define-public r-estatapi
  (package
    (name "r-estatapi")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estatapi" version))
              (sha256
               (base32
                "0wp5w9w0b832fnl7kchjqmychnf5896q50grw8hwdc1km14dfzkg"))))
    (properties `((upstream-name . "estatapi")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-rlang
                             r-readr
                             r-purrr
                             r-httr
                             r-dplyr))
    (home-page "https://yutannihilation.github.io/estatapi/")
    (synopsis "R Interface to e-Stat API")
    (description
     "This package provides an interface to e-Stat API, the one-stop service for
official statistics of the Japanese government.")
    (license license:expat)))

(define-public r-estadistica
  (package
    (name "r-estadistica")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "estadistica" version))
              (sha256
               (base32
                "05ad1wfy4682icprp7jgx09p8azjnk8wlxhpzjdkm6mz0ix7zqp5"))))
    (properties `((upstream-name . "estadistica")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tidyr
                             r-shinydashboard
                             r-shiny
                             r-rio
                             r-plotly
                             r-knitr
                             r-gridextra
                             r-ggplot2
                             r-forecast
                             r-dplyr
                             r-data-table))
    (home-page "https://www.uv.es/estadistic/")
    (synopsis "Fundamentos De Estadistica Descriptiva e Inferencial")
    (description
     "Este paquete pretende apoyar el proceso enseÃ±anza-aprendizaje de estadÃ­stica
descriptiva e inferencial.  Las funciones contenidas en el paquete estadistica
cubren los conceptos bÃ¡sicos estudiados en un curso introductorio.  Muchos
conceptos son ilustrados con grÃ¡ficos dinÃ¡micos o web apps para facilitar su
comprensiÃ³n.  This package aims to help the teaching-learning process of
descriptive and inferential statistics.  The functions contained in the package
estadistica cover the basic concepts studied in a statistics introductory
course.  Many concepts are illustrated with dynamic graphs or web apps to make
the understanding easier.  See: Esteban et al. (2005, ISBN: 9788497323741),
Newbold et al.(2019, ISBN:9781292315034 ), Murgui et al. (2002,
ISBN:9788484424673) .")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-essurvey
  (package
    (name "r-essurvey")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "essurvey" version))
              (sha256
               (base32
                "1b78am4vnyg3k2hjjkjyhnjgm6rsmjwvqys030qybkgfplsbgra3"))))
    (properties `((upstream-name . "essurvey")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-tibble r-rvest r-httr r-haven))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/essurvey/")
    (synopsis "Download Data from the European Social Survey on the Fly")
    (description
     "Download data from the European Social Survey directly from their website
<http://www.europeansocialsurvey.org/>.  There are two families of functions
that allow you to download and interactively check all countries and rounds
available.")
    (license license:expat)))

(define-public r-esshist
  (package
    (name "r-esshist")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "essHist" version))
              (sha256
               (base32
                "0rvlxfcl42h4pjqf37mx7bc4k21iwvnys6l5rf2jsl7yk1b9hmbn"))))
    (properties `((upstream-name . "essHist")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=essHist")
    (synopsis "The Essential Histogram")
    (description
     "Provide an optimal histogram, in the sense of probability density estimation and
features detection, by means of multiscale variational inference.  In other
words, the resulting histogram servers as an optimal density estimator, and
meanwhile recovers the features, such as increases or modes, with both false
positive and false negative controls.  Moreover, it provides a parsimonious
representation in terms of the number of blocks, which simplifies data
interpretation.  The only assumption for the method is that data points are
independent and identically distributed, so it applies to fairly general
situations, including continuous distributions, discrete distributions, and
mixtures of both.  For details see Li, Munk, Sieling and Walther (2016)
<arXiv:1612.07216>.")
    (license license:gpl3)))

(define-public r-essentials
  (package
    (name "r-essentials")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "essentials" version))
              (sha256
               (base32
                "163wv4szfanbpiw5f6lhw1dnns5prql43iz27zgcp5z2rsxlb894"))))
    (properties `((upstream-name . "essentials")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=essentials")
    (synopsis "Essential Functions not Included in Base R")
    (description
     "This package provides functions for converting objects to scalars (vectors of
length 1) and a more inclusive definition of data that can be interpreted as
numbers (numeric and complex alike).")
    (license license:expat)))

(define-public r-ess
  (package
    (name "r-ess")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ess" version))
              (sha256
               (base32
                "1cmw20nn39ssyqiyn50w0ws28mq4cd26yhzr7mv97haaqjjjkv5h"))))
    (properties `((upstream-name . "ess")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-igraph))
    (home-page "https://github.com/mlindsk/ess")
    (synopsis "Efficient Stepwise Selection in Decomposable Models")
    (description
     "An implementation of the ESS algorithm following Amol Deshpande, Minos
Garofalakis, Michael I Jordan (2013) <arXiv:1301.2267>.  The ESS algorithm is
used for model selection in decomposable graphical models.")
    (license license:gpl3)))

(define-public r-esreg
  (package
    (name "r-esreg")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esreg" version))
              (sha256
               (base32
                "0q8na05dq1gacpijv005bzan8skyzzhj8z00fzx46d27xdz7qisw"))))
    (properties `((upstream-name . "esreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-quantreg r-formula))
    (home-page "https://cran.r-project.org/package=esreg")
    (synopsis "Joint Quantile and Expected Shortfall Regression")
    (description
     "Simultaneous modeling of the quantile and the expected shortfall of a response
variable given a set of covariates, see Dimitriadis and Bayer (2019)
<doi:10.1214/19-EJS1560>.")
    (license license:gpl3)))

(define-public r-esquisse
  (package
    (name "r-esquisse")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esquisse" version))
              (sha256
               (base32
                "180kdcqf93rkfzmjlysi53646ypkqi1r383n8p9jmj6xh9aag8rl"))))
    (properties `((upstream-name . "esquisse")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shiny
                             r-scales
                             r-rstudioapi
                             r-rlang
                             r-phosphoricons
                             r-jsonlite
                             r-htmltools
                             r-ggplot2
                             r-datamods))
    (native-inputs (list r-knitr))
    (home-page "https://dreamrs.github.io/esquisse/")
    (synopsis "Explore and Visualize Your Data Interactively")
    (description
     "This package provides a shiny gadget to create ggplot2 figures interactively
with drag-and-drop to map your variables to different aesthetics.  You can
quickly visualize your data accordingly to their type, export in various
formats, and retrieve the code to reproduce the plot.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-espadon
  (package
    (name "r-espadon")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "espadon" version))
              (sha256
               (base32
                "06lri62bpv4hspvwwxq5r1qypj63jw9kshz4wplmywazf8bpif61"))))
    (properties `((upstream-name . "espadon")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-shinywidgets
                             r-shiny
                             r-rvcg
                             r-rgl
                             r-rdpack
                             r-rcpp
                             r-qs
                             r-progress
                             r-openxlsx
                             r-misc3d
                             r-matrix
                             r-mathjaxr
                             r-js
                             r-igraph
                             r-dt
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://espadon.cnrs.fr")
    (synopsis "Easy Study of Patient DICOM Data in Oncology")
    (description
     "Exploitation, processing and 2D-3D visualization of DICOM-RT files (structures,
dosimetry, imagery) for medical physics and clinical research, in a
patient-oriented perspective.")
    (license license:gpl3)))

(define-public r-esmprep
  (package
    (name "r-esmprep")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esmprep" version))
              (sha256
               (base32
                "076sm26mkkvig2g04k32z2dlp2h9gnqgzckhirl4pqm01siknl61"))))
    (properties `((upstream-name . "esmprep")))
    (build-system r-build-system)
    (propagated-inputs (list r-lubridate))
    (home-page "https://github.com/mmiche/esmprep")
    (synopsis
     "Data Preparation During and After the Use of the Experience Sampling Methodology (ESM)")
    (description
     "Support in preparing a raw ESM dataset for statistical analysis.  Preparation
includes the handling of errors (mostly due to technological reasons) and the
generating of new variables that are necessary and/or helpful in meeting the
conditions when statistically analyzing ESM data.  The functions in esmprep are
meant to hierarchically lead from bottom, i.e.  the raw (separated) ESM
dataset(s), to top, i.e.  a single ESM dataset ready for statistical analysis.
This hierarchy evolved out of my personal experience in working with ESM data.")
    (license license:gpl2+)))

(define-public r-esmisc
  (package
    (name "r-esmisc")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esmisc" version))
              (sha256
               (base32
                "1d6xrdxwn85c8s60s7vzaymh7wa9f7fzd79hq5spzd12fr3zisvj"))))
    (properties `((upstream-name . "esmisc")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-raster r-ggplot2))
    (home-page "https://github.com/EDiLD/esmisc")
    (synopsis "Misc Functions of Eduard SzÃ¶cs")
    (description
     "Misc functions programmed by Eduard SzÃ¶cs.  Provides read_regnie() to read
gridded precipitation data from German Weather Service (DWD, see
<http://www.dwd.de/> for more information).")
    (license license:expat)))

(define-public r-esir
  (package
    (name "r-esir")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eSIR" version))
              (sha256
               (base32
                "05gpskdzjdm3kp7skqvy7dmj8sgh4jhpkm6akmxlfxn8b627zvg1"))))
    (properties `((upstream-name . "eSIR")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-rjags
                             r-reshape2
                             r-gtools
                             r-ggplot2
                             r-data-table
                             r-coda
                             r-chron))
    (home-page "https://cran.r-project.org/package=eSIR")
    (synopsis "Extended State-Space SIR Models")
    (description
     "An implementation of extended state-space SIR models developed by Song Lab at UM
school of Public Health.  There are several functions available by 1) including
a time-varying transmission modifier, 2) adding a time-dependent quarantine
compartment, 3) adding a time-dependent antibody-immunization compartment.  Wang
L. (2020) <doi:10.6339/JDS.202007_18(3).0003>.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-eshrink
  (package
    (name "r-eshrink")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eshrink" version))
              (sha256
               (base32
                "0min4j1dyd08i0fyn9a4iasjlhq08bn74bjz8vj1gq9l114v795k"))))
    (properties `((upstream-name . "eshrink")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-glmnet))
    (home-page "https://cran.r-project.org/package=eshrink")
    (synopsis "Shrinkage for Effect Estimation")
    (description
     "Computes shrinkage estimators for regression problems.  Selects penalty
parameter by minimizing bias and variance in the effect estimate, where bias and
variance are estimated from the posterior predictive distribution.  See Keller
and Rice (2017) <doi:10.1093/aje/kwx225> for more details.")
    (license license:gpl2+)))

(define-public r-esg
  (package
    (name "r-esg")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ESG" version))
              (sha256
               (base32
                "17kw82dikcibqsdb1fvbx2x2f3shzbqggygabprcvwki8bg9hgni"))))
    (properties `((upstream-name . "ESG")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ESG")
    (synopsis "Package for Asset Projection")
    (description
     "Presents a \"Scenarios\" class containing general parameters, risk parameters and
projection results.  Risk parameters are gathered together into a
ParamsScenarios sub-object.  The general process for using this package is to
set all needed parameters in a Scenarios object, use the customPathsGeneration
method to proceed to the projection, then use xxx_PriceDistribution() methods to
get asset prices.")
    (license license:gpl2+)))

(define-public r-esemifar
  (package
    (name "r-esemifar")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esemifar" version))
              (sha256
               (base32
                "1fj6hdz4kvign9whxclgriafqc8m1yibvwqprvyn861v31kmlc55"))))
    (properties `((upstream-name . "esemifar")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoots r-fracdiff))
    (home-page "https://wiwi.uni-paderborn.de/en/dep4/feng/")
    (synopsis "Smoothing Long-Memory Time Series")
    (description
     "The nonparametric trend and its derivatives in equidistant time series (TS) with
long-memory errors can be estimated.  The estimation is conducted via local
polynomial regression using an automatically selected bandwidth obtained by a
built-in iterative plug-in algorithm or a bandwidth fixed by the user.  The
smoothing methods of the package are described in Letmathe, S., Beran, J. and
Feng, Y., (2021) <https://ideas.repec.org/p/pdn/ciepap/145.html>.")
    (license license:gpl3)))

(define-public r-eseis
  (package
    (name "r-eseis")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eseis" version))
              (sha256
               (base32
                "13sr7drqw8gzrhgz1anvnxpypr8m85sb2s8zhi074z4yhqxh9jw6"))))
    (properties `((upstream-name . "eseis")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-sp
                             r-signal
                             r-shinyfiles
                             r-shiny
                             r-rmarkdown
                             r-rgdal
                             r-reticulate
                             r-rcpp
                             r-raster
                             r-multitaper
                             r-minpack-lm
                             r-matrixstats
                             r-limsolve
                             r-irisseismic
                             r-fftw
                             r-extradistr
                             r-emmageo
                             r-catools))
    (home-page "https://cran.r-project.org/package=eseis")
    (synopsis "Environmental Seismology Toolbox")
    (description
     "Environmental seismology is a scientific field that studies the seismic signals,
emitted by Earth surface processes.  This package provides all relevant
functions to read/write seismic data files, prepare, analyse and visualise
seismic data, and generate reports of the processing history.")
    (license license:gpl3)))

(define-public r-esdm
  (package
    (name "r-esdm")
    (version "0.3.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eSDM" version))
              (sha256
               (base32
                "0rv5hhjsdkq0837822d52xfvfbj9qx1kjmqj8wyny335gv631205"))))
    (properties `((upstream-name . "eSDM")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-shiny
                             r-sf
                             r-rocr
                             r-rlang
                             r-purrr
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://smwoodman.github.io/eSDM/")
    (synopsis "Ensemble Tool for Predictions from Species Distribution Models")
    (description
     "This package provides a tool which allows users to create and evaluate ensembles
of species distribution model (SDM) predictions.  Functionality is offered
through R functions or a GUI (R Shiny app).  This tool can assist users in
identifying spatial uncertainties and making informed conservation and
management decisions.  The package is further described in Woodman et al (2019)
<doi:10.1111/2041-210X.13283>.")
    (license license:gpl3)))

(define-public r-esdesign
  (package
    (name "r-esdesign")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esDesign" version))
              (sha256
               (base32
                "0lnz40d8s9pmxccsbd9g80n0k454xgicjfdpbfrq7rnyb4pdk9l2"))))
    (properties `((upstream-name . "esDesign")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=esDesign")
    (synopsis "Adaptive Enrichment Designs with Sample Size Re-Estimation")
    (description
     "Software of esDesign is developed to implement the adaptive enrichment designs
with sample size re-estimation presented in Lin et al. (2021) <doi:
10.1016/j.cct.2020.106216>.  In details, three-proposed trial designs are
provided, including the AED1-SSR (or ES1-SSR), AED2-SSR (or ES2-SSR) and
AED3-SSR (or ES3-SSR).  In addition, this package also contains several widely
used adaptive designs, such as the Marker Sequential Test (MaST) design proposed
Freidlin et al. (2014) <doi:10.1177/1740774513503739>, the adaptive enrichment
designs without early stopping (AED or ES), the sample size re-estimation
procedure (SSR) based on the conditional power proposed by Proschan and
Hunsberger (1995), and some useful functions.  In details, we can calculate the
futility and/or efficacy stopping boundaries, the sample size required,
calibrate the value of the threshold of the difference between subgroup-specific
test statistics, conduct the simulation studies in AED, SSR, AED1-SSR, AED2-SSR
and AED3-SSR.")
    (license license:gpl2)))

(define-public r-escvtmle
  (package
    (name "r-escvtmle")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EScvtmle" version))
              (sha256
               (base32
                "09sh9njnrv8bh6xlni3jmhwrp3yb6xxfx6di2ykam6mi50djknbf"))))
    (properties `((upstream-name . "EScvtmle")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-superlearner
                             r-stringr
                             r-origami
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-dplyr))
    (home-page "https://github.com/Lauren-EylerDang/EScvtmle/tree/main")
    (synopsis
     "Experiment-Selector CV-TMLE for Integration of Observational and RCT Data")
    (description
     "The experiment selector cross-validated targeted maximum likelihood estimator
(ES-CVTMLE) aims to select the experiment that optimizes the bias-variance
tradeoff for estimating a causal average treatment effect (ATE) where different
experiments may include a randomized controlled trial (RCT) alone or an RCT
combined with real-world data.  Using cross-validation, the ES-CVTMLE separates
the selection of the optimal experiment from the estimation of the ATE for the
chosen experiment.  The estimated bias term in the selector is a function of the
difference in conditional mean outcome under control for the RCT compared to the
combined experiment.  In order to help include truly unbiased external data in
the analysis, the estimated average treatment effect on a negative control
outcome may be added to the bias term in the selector.  For more details about
this method, please see Dang et al. (2022) <arXiv:2210.05802>.")
    (license license:gpl3)))

(define-public r-escalation
  (package
    (name "r-escalation")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "escalation" version))
              (sha256
               (base32
                "1iyjp20rzz3lrgn183jvjcf7vvmk66f3rgyv22s2ja4b98598ha4"))))
    (properties `((upstream-name . "escalation")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-trialr
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rcolorbrewer
                             r-purrr
                             r-magrittr
                             r-gtools
                             r-dplyr
                             r-diagrammer
                             r-dfcrm
                             r-boin
                             r-binom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=escalation")
    (synopsis "Modular Approach to Dose Finding Clinical Trials")
    (description
     "This package provides methods for working with dose-finding clinical trials.  We
provide implementations of many dose-finding clinical trial designs, including
the continual reassessment method (CRM) by O'Quigley et al. (1990)
<doi:10.2307/2531628>, the toxicity probability interval (TPI) design by Ji et
al. (2007) <doi:10.1177/1740774507079442>, the modified TPI (mTPI) design by Ji
et al. (2010) <doi:10.1177/1740774510382799>, the Bayesian optimal interval
design (BOIN) by Liu & Yuan (2015) <doi:10.1111/rssc.12089>, EffTox by Thall &
Cook (2004) <doi:10.1111/j.0006-341X.2004.00218.x>; the design of Wages & Tait
(2015) <doi:10.1080/10543406.2014.920873>, and the 3+3 described by Korn et al.
(1994) <doi:10.1002/sim.4780131802>.  All designs are implemented with a common
interface.  We also offer optional additional classes to tailor the behaviour of
all designs, including avoiding skipping doses, stopping after n patients have
been treated at the recommended dose, stopping when a toxicity condition is met,
or demanding that n patients are treated before stopping is allowed.  By
daisy-chaining together these classes using the pipe operator from magrittr', it
is simple to tailor the behaviour of a dose-finding design so it behaves how the
trialist wants.  Having provided a flexible interface for specifying designs, we
then provide functions to run simulations and calculate dose-paths for future
cohorts of patients.")
    (license license:gpl3+)))

(define-public r-esback
  (package
    (name "r-esback")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esback" version))
              (sha256
               (base32
                "09k895028hqa62m8fhbg5b33ry0in6kbrw0lnphn0rgjhlifxp4z"))))
    (properties `((upstream-name . "esback")))
    (build-system r-build-system)
    (propagated-inputs (list r-esreg))
    (home-page "https://cran.r-project.org/package=esback")
    (synopsis "Expected Shortfall Backtesting")
    (description
     "Implementations of the expected shortfall backtests of Bayer and Dimitriadis
(2020) <doi:10.1093/jjfinec/nbaa013> as well as other well known backtests from
the literature.  Can be used to assess the correctness of forecasts of the
expected shortfall risk measure which is e.g. used in the banking and finance
industry for quantifying the market risk of investments.  A special feature of
the backtests of Bayer and Dimitriadis (2020) <doi:10.1093/jjfinec/nbaa013> is
that they only require forecasts of the expected shortfall, which is in striking
contrast to all other existing backtests, making them particularly attractive
for practitioners.")
    (license license:gpl3)))

(define-public r-esaps
  (package
    (name "r-esaps")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esaps" version))
              (sha256
               (base32
                "0yys40ki5dy62fds4kfwji6qzq5mbmvqps85maqgsimal7p7gx3n"))))
    (properties `((upstream-name . "esaps")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-readxl r-readods r-plyr r-dplyr))
    (home-page "https://github.com/Nicolas-Schmidt/esaps")
    (synopsis "Indicators of Electoral Systems and Party Systems")
    (description
     "It allows structuring electoral data of different size and structure to
calculate various indicators frequently used in the studies of electoral systems
and party systems.  Indicators of electoral volatility, electoral
disproportionality, party nationalization and the effective number of parties
are included.")
    (license license:gpl2)))

(define-public r-esaddle
  (package
    (name "r-esaddle")
    (version "0.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esaddle" version))
              (sha256
               (base32
                "1r79qcirlx7g9w523nz81f5f22paid5dhag2lqj7jf33w0ggaknn"))))
    (properties `((upstream-name . "esaddle")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-plyr r-mvnfast
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mfasiolo/esaddle")
    (synopsis "Extended Empirical Saddlepoint Density Approximations")
    (description
     "Tools for fitting the Extended Empirical Saddlepoint (EES) density of Fasiolo et
al. (2018) <doi:10.1214/18-EJS1433>.")
    (license license:gpl2+)))

(define-public r-esabcv
  (package
    (name "r-esabcv")
    (version "1.2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "esaBcv" version))
              (sha256
               (base32
                "0d2z03jab1c59v9x0qfwbipf0zbdz7zqj96ndbs0wnpjpgrvcp1d"))))
    (properties `((upstream-name . "esaBcv")))
    (build-system r-build-system)
    (propagated-inputs (list r-svd r-corpcor))
    (home-page "https://cran.r-project.org/package=esaBcv")
    (synopsis
     "Estimate Number of Latent Factors and Factor Matrix for Factor Analysis")
    (description
     "These functions estimate the latent factors of a given matrix, no matter it is
high-dimensional or not.  It tries to first estimate the number of factors using
bi-cross-validation and then estimate the latent factor matrix and the noise
variances.  For more information about the method, see Art B. Owen and Jingshu
Wang 2015 archived article on factor model (<arXiv:1503.03515>).")
    (license license:gpl2+)))

(define-public r-es-dif
  (package
    (name "r-es-dif")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "es.dif" version))
              (sha256
               (base32
                "1swxg8mdp9jj9f0x0cawhhbx8gmmpsgqlbifx2v04a2vkgdkigqf"))))
    (properties `((upstream-name . "es.dif")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=es.dif")
    (synopsis "Compute Effect Sizes of the Difference")
    (description
     "Computes various effect sizes of the difference, their variance, and confidence
interval.  This package treats Cohen's d, Hedges d, biased/unbiased c (an effect
size between a mean and a constant) and e (an effect size between means without
assuming the variance equality).")
    (license license:expat)))

(define-public r-ertg3d
  (package
    (name "r-ertg3d")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eRTG3D" version))
              (sha256
               (base32
                "1d559p1z73zqd5ym0bs7lpp1w1di7sxpryq41hvkj7azrlijy0ry"))))
    (properties `((upstream-name . "eRTG3D")))
    (build-system r-build-system)
    (propagated-inputs (list r-tiff
                             r-rastervis
                             r-raster
                             r-plotly
                             r-pbapply
                             r-ggplot2
                             r-circstats))
    (native-inputs (list r-knitr))
    (home-page "https://munterfi.github.io/eRTG3D/")
    (synopsis "Empirically Informed Random Trajectory Generation in 3-D")
    (description
     "This package creates realistic random trajectories in a 3-D space between two
given fix points, so-called conditional empirical random walks (CERWs).  The
trajectory generation is based on empirical distribution functions extracted
from observed trajectories (training data) and thus reflects the geometrical
movement characteristics of the mover.  A digital elevation model (DEM),
representing the Earth's surface, and a background layer of probabilities (e.g.
food sources, uplift potential, waterbodies, etc.) can be used to influence the
trajectories.  Unterfinger M (2018). \"3-D Trajectory Simulation in Movement
Ecology: Conditional Empirical Random Walk\".  Master's thesis, University of
Zurich.
<https://www.geo.uzh.ch/dam/jcr:6194e41e-055c-4635-9807-53c5a54a3be7/MasterThesis_Unterfinger_2018.pdf>.
 Technitis G, Weibel R, Kranstauber B, Safi K (2016). \"An algorithm for
empirically informed random trajectory generation between two endpoints\".
GIScience 2016: Ninth International Conference on Geographic Information
Science, 9, online. <doi:10.5167/uzh-130652>.")
    (license license:gpl3)))

(define-public r-ersa
  (package
    (name "r-ersa")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ERSA" version))
              (sha256
               (base32
                "0djh633vmc89vl4bp7p4bazlb0pshpd2yckfj0yjk6vc9lrbql69"))))
    (properties `((upstream-name . "ERSA")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shiny
                             r-rcolorbrewer
                             r-purrr
                             r-miniui
                             r-leaps
                             r-ggplot2
                             r-dplyr
                             r-combinat
                             r-car
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ERSA")
    (synopsis "Exploratory Regression 'Shiny' App")
    (description
     "Constructs a shiny app function with interactive displays for summary and
analysis of variance regression tables, and parallel coordinate plots of data
and residuals.")
    (license license:gpl2+)))

(define-public r-errum
  (package
    (name "r-errum")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "errum" version))
              (sha256
               (base32
                "18frrfnhnmg4fjlpfwj8aklzfwafpwqvagm0aschkqc8mz6wnjbz"))))
    (properties `((upstream-name . "errum")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://github.com/tmsalab/errum")
    (synopsis "Exploratory Reduced Reparameterized Unified Model Estimation")
    (description
     "Perform a Bayesian estimation of the exploratory reduced reparameterized unified
model (ErRUM) described by Culpepper and Chen (2018)
<doi:10.3102/1076998618791306>.")
    (license license:gpl2+)))

(define-public r-errors
  (package
    (name "r-errors")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "errors" version))
              (sha256
               (base32
                "15hmsyfcsjy33601a7v2r7sfk2kxbm4a8xwkgjppmf84vhpqplbx"))))
    (properties `((upstream-name . "errors")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-quantities/errors")
    (synopsis "Uncertainty Propagation for R Vectors")
    (description
     "Support for measurement errors in R vectors, matrices and arrays: automatic
uncertainty propagation and reporting.  Documentation about errors is provided
in the paper by Ucar, Pebesma & Azcorra (2018, <doi:10.32614/RJ-2018-075>),
included in this package as a vignette; see citation(\"errors\") for details.")
    (license license:expat)))

(define-public r-errorlocate
  (package
    (name "r-errorlocate")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "errorlocate" version))
              (sha256
               (base32
                "1p9a5nc0ckbdapahf5nkxnsgwvqh2llv3kc2wzwawn131rdaj1qi"))))
    (properties `((upstream-name . "errorlocate")))
    (build-system r-build-system)
    (propagated-inputs (list r-validate r-lpsolveapi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/data-cleaning/errorlocate")
    (synopsis "Locate Errors with Validation Rules")
    (description
     "Errors in data can be located and removed using validation rules from package
validate'.  See also Van der Loo and De Jonge (2018)
<doi:10.1002/9781118897126>, chapter 7.")
    (license license:gpl3)))

(define-public r-errorist
  (package
    (name "r-errorist")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "errorist" version))
              (sha256
               (base32
                "0zq5h2wffn9d3f3blzh736478k91smlvz5hxy55hcjqffpxcp4ah"))))
    (properties `((upstream-name . "errorist")))
    (build-system r-build-system)
    (propagated-inputs (list r-searcher))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/r-assist/errorist")
    (synopsis "Automatically Search Errors or Warnings")
    (description
     "This package provides environment hooks that obtain errors and warnings which
occur during the execution of code to automatically search for solutions.")
    (license license:gpl2+)))

(define-public r-errint
  (package
    (name "r-errint")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "errint" version))
              (sha256
               (base32
                "1ya7fsvwhmgxw87r32m4345n8pw2pbpv026xvml03s1kiam8qwbw"))))
    (properties `((upstream-name . "errint")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-rootsolve))
    (home-page "http://link.springer.com/chapter/10.1007/978-3-319-19222-2_47")
    (synopsis "Builds Error Intervals")
    (description
     "Builds and analyzes error intervals for a particular model predictions assuming
different distributions for noise in the data.")
    (license license:gpl2)))

(define-public r-err
  (package
    (name "r-err")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "err" version))
              (sha256
               (base32
                "1915b0vmqdd8whwdrqjphld1jaxawh5b7di6wf7q3sx779lblsrs"))))
    (properties `((upstream-name . "err")))
    (build-system r-build-system)
    (home-page "https://github.com/poissonconsulting/err")
    (synopsis "Customizable Object Sensitive Messages")
    (description
     "Messages should provide users with readable information about R objects without
flooding their console.  cc() concatenates vector and data frame values into a
grammatically correct string using commas, an ellipsis and conjunction.  cn()
allows the user to define a string which varies based on a count.  co() combines
the two to produce a customizable object aware string.  The package further
facilitates this process by providing five sprintf'-like types such as %n for
the length of an object and %o for its name as well as wrappers for pasting
objects and issuing errors, warnings and messages.")
    (license license:expat)))

(define-public r-erp-easy
  (package
    (name "r-erp-easy")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "erp.easy" version))
              (sha256
               (base32
                "193n45w0rq3cy0nmxvv0h6s3yr8kfjlg90nd4dnqlsq85zlsizij"))))
    (properties `((upstream-name . "erp.easy")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-plyr r-gtools))
    (home-page "https://github.com/mooretm/erp.easy")
    (synopsis "Event-Related Potential (ERP) Data Exploration Made Easy")
    (description
     "This package provides a set of user-friendly functions to aid in organizing,
plotting and analyzing event-related potential (ERP) data.  Provides an
easy-to-learn method to explore ERP data.  Should be useful to those without a
background in computer programming, and to those who are new to ERPs (or new to
the more advanced ERP software available).  Emphasis has been placed on highly
automated processes using functions with as few arguments as possible.  Expects
processed (cleaned) data.")
    (license license:gpl3)))

(define-public r-erp
  (package
    (name "r-erp")
    (version "2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ERP" version))
              (sha256
               (base32
                "17i04rgfj9crnvpi7mf2spwmaw9jgw4kn5fx6x9xbl9cvwwx6q4k"))))
    (properties `((upstream-name . "ERP")))
    (build-system r-build-system)
    (propagated-inputs (list r-pacman r-mnormt r-irlba r-fdrtool r-corpcor))
    (native-inputs (list r-knitr))
    (home-page "http://erpinr.org")
    (synopsis "Significance Analysis of Event-Related Potentials Data")
    (description
     "This package provides functions for signal detection and identification designed
for Event-Related Potentials (ERP) data in a linear model framework.  The
functional F-test proposed in Causeur, Sheu, Perthame, Rufini (2018, submitted)
for analysis of variance issues in ERP designs is implemented for signal
detection (tests for mean difference among groups of curves in One-way ANOVA
designs for example).  Once an experimental effect is declared significant,
identification of significant intervals is achieved by the multiple testing
procedures reviewed and compared in Sheu, Perthame, Lee and Causeur (2016,
<DOI:10.1214/15-AOAS888>).  Some of the methods gathered in the package are the
classical FDR- and FWER-controlling procedures, also available using function
p.adjust.  The package also implements the Guthrie-Buchwald procedure (Guthrie
and Buchwald, 1991 <DOI:10.1111/j.1469-8986.1991.tb00417.x>), which accounts for
the auto-correlation among t-tests to control erroneous detection of short
intervals.  The Adaptive Factor-Adjustment method is an extension of the method
described in Causeur, Chu, Hsieh and Sheu (2012,
<DOI:10.3758/s13428-012-0230-0>).  It assumes a factor model for the correlation
among tests and combines adaptively the estimation of the signal and the
updating of the dependence modelling (see Sheu et al., 2016,
<DOI:10.1214/15-AOAS888> for further details).")
    (license license:gpl2+)))

(define-public r-erify
  (package
    (name "r-erify")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "erify" version))
              (sha256
               (base32
                "014q4crfa92i4fb4mrbl68ai0l8asjwwnv3l2m11gfnny41p4bks"))))
    (properties `((upstream-name . "erify")))
    (build-system r-build-system)
    (propagated-inputs (list r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/flujoo/erify")
    (synopsis "Check Arguments and Generate Readable Error Messages")
    (description
     "This package provides several validator functions for checking if arguments
passed by users have valid types, lengths, etc.  and for generating informative
and well-formatted error messages in a consistent style.  Also provides tools
for users to create their own validator functions.  The error message style used
is adopted from <https://style.tidyverse.org/error-messages.html>.")
    (license license:expat)))

(define-public r-ergmharris
  (package
    (name "r-ergmharris")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergmharris" version))
              (sha256
               (base32
                "1bfijhsljlykb94wi25lbpv35zkmgqpmgzmxcq98gjvzbn5j9pdq"))))
    (properties `((upstream-name . "ergmharris")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ergmharris")
    (synopsis "Local Health Department network data set")
    (description
     "Data for use with the Sage Introduction to Exponential Random Graph Modeling
text by Jenine K. Harris.  Network data set consists of 1283 local health
departments and the communication links among them along with several
attributes.")
    (license license:gpl3)))

(define-public r-ergmargins
  (package
    (name "r-ergmargins")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergMargins" version))
              (sha256
               (base32
                "0liq64qjd3b0v5pcsvfmvmv7dr0ak4ld2mbin8w2wcdnvpfajjy5"))))
    (properties `((upstream-name . "ergMargins")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common
                             r-sna
                             r-numderiv
                             r-network
                             r-matrix
                             r-ergm
                             r-btergm))
    (home-page "https://cran.r-project.org/package=ergMargins")
    (synopsis "Process Analysis for Exponential Random Graph Models")
    (description
     "Calculates marginal effects and conducts process analysis in exponential family
random graph models (ERGM).  Includes functions to conduct mediation and
moderation analyses and to diagnose multicollinearity.  URL:
<https://github.com/sduxbury/ergMargins>.  BugReports:
<https://github.com/sduxbury/ergMargins/issues>.  Duxbury, Scott W (2021)
<doi:10.1177/0049124120986178>.  Long, J. Scott, and Sarah Mustillo (2018)
<doi:10.1177/0049124118799374>.  Mize, Trenton D. (2019) <doi:10.15195/v6.a4>.
Karlson, Kristian Bernt, Anders Holm, and Richard Breen (2012)
<doi:10.1177/0081175012444861>.  Duxbury, Scott W (2018)
<doi:10.1177/0049124118782543>.")
    (license license:gpl2+)))

(define-public r-ergm-rank
  (package
    (name "r-ergm-rank")
    (version "4.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergm.rank" version))
              (sha256
               (base32
                "1ivwqlyx48smm9dmam9z0x6yqhmy1ypmmhzfhs5j3pq5vfwfc87c"))))
    (properties `((upstream-name . "ergm.rank")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common r-network r-ergm))
    (native-inputs (list r-knitr))
    (home-page "https://statnet.org")
    (synopsis
     "Fit, Simulate and Diagnose Exponential-Family Models for Rank-Order Relational Data")
    (description
     "This package provides a set of extensions for the ergm package to fit weighted
networks whose edge weights are ranks.  See Krivitsky and Butts (2017)
<doi:10.1177/0081175017692623> and Krivitsky, Hunter, Morris, and Klumb (2021)
<arXiv:2106.04997>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ergm-ego
  (package
    (name "r-ergm-ego")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergm.ego" version))
              (sha256
               (base32
                "153xdry9y2wyqkq2hacy3gh4h6jwwyn0p0dakxmrrpfsa1my5h9f"))))
    (properties `((upstream-name . "ergm.ego")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-survey
                             r-statnet-common
                             r-rcolorbrewer
                             r-purrr
                             r-network
                             r-ergm
                             r-egor
                             r-dplyr))
    (home-page "https://statnet.org")
    (synopsis
     "Fit, Simulate and Diagnose Exponential-Family Random Graph Models to Egocentrically Sampled Network Data")
    (description
     "Utilities for managing egocentrically sampled network data and a wrapper around
the ergm package to facilitate ERGM inference and simulation from such data.
See Krivitsky and Morris (2017) <doi:10.1214/16-AOAS1010>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ergm-count
  (package
    (name "r-ergm-count")
    (version "4.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergm.count" version))
              (sha256
               (base32
                "0cj9jdxxpkgvs658nxxndd9pbxb7l52vzhipkjiimd6q99hr6s24"))))
    (properties `((upstream-name . "ergm.count")))
    (build-system r-build-system)
    (propagated-inputs (list r-statnet-common r-network r-ergm))
    (native-inputs (list r-knitr))
    (home-page "https://statnet.org")
    (synopsis
     "Fit, Simulate and Diagnose Exponential-Family Models for Networks with Count Edges")
    (description
     "This package provides a set of extensions for the ergm package to fit weighted
networks whose edge weights are counts.  See Krivitsky (2012)
<doi:10.1214/12-EJS696> and Krivitsky, Hunter, Morris, and Klumb (2021)
<arXiv:2106.04997>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-ergm
  (package
    (name "r-ergm")
    (version "4.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ergm" version))
              (sha256
               (base32
                "0dghylkwy7acwjpydkbxgfp4sfs9gcgl9l038rm0393cbyfs1phq"))))
    (properties `((upstream-name . "ergm")))
    (build-system r-build-system)
    (inputs (list openmpi))
    (propagated-inputs (list r-trust
                             r-tibble
                             r-stringr
                             r-statnet-common
                             r-robustbase
                             r-rle
                             r-rlang
                             r-purrr
                             r-network
                             r-memoise
                             r-matrix
                             r-mass
                             r-magrittr
                             r-lpsolveapi
                             r-knitr
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://statnet.org")
    (synopsis
     "Fit, Simulate and Diagnose Exponential-Family Models for Networks")
    (description
     "An integrated set of tools to analyze and simulate networks based on
exponential-family random graph models (ERGMs).  ergm is a part of the Statnet
suite of packages for network analysis.  See Hunter, Handcock, Butts, Goodreau,
and Morris (2008) <doi:10.18637/jss.v024.i03> and Krivitsky, Hunter, Morris, and
Klumb (2021) <arXiv:2106.04997>.")
    (license (license:fsdg-compatible "GPL-3 + file LICENSE"))))

(define-public r-erfe
  (package
    (name "r-erfe")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "erfe" version))
              (sha256
               (base32
                "1v6xca2zwdg494mdb97dwg2xlqsr51919plylnl04d8dgg5adhz9"))))
    (properties `((upstream-name . "erfe")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-matrix))
    (home-page "https://arxiv.org/abs/2108.04737")
    (synopsis "Fits Expectile Regression for Panel Fixed Effect Model")
    (description
     "Fits the Expectile Regression for Fixed Effect (ERFE) estimator.  The ERFE model
extends the within-transformation strategy to solve the incidental parameter
problem within the expectile regression framework.  The ERFE model estimates the
regressor effects on the expectiles of the response distribution.  The ERFE
estimate corresponds to the classical fixed-effect within-estimator when the
asymmetric point is 0.5.  The paper by Barry, Oualkacha, and Charpentier (2021,
<arXiv:2108.04737>) gives more details about the ERFE model.")
    (license license:gpl3)))

(define-public r-erer
  (package
    (name "r-erer")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "erer" version))
              (sha256
               (base32
                "03pdq3p5c5f20959hgk5q2cx5x10bpgf0qg4z1nvsf31vc5ni77v"))))
    (properties `((upstream-name . "erer")))
    (build-system r-build-system)
    (propagated-inputs (list r-urca r-tseries r-systemfit r-lmtest))
    (home-page "https://cran.r-project.org/package=erer")
    (synopsis "Empirical Research in Economics with R")
    (description
     "Functions, datasets, and sample codes related to the book of Empirical Research
in Economics: Growing up with R by Dr. Changyou Sun are included.  Marginal
effects for binary or ordered choice models can be calculated.  Static and
dynamic Almost Ideal Demand System (AIDS) models can be estimated.  A typical
event analysis in finance can be conducted with several functions included.")
    (license license:gpl2+)))

(define-public r-ercv
  (package
    (name "r-ercv")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ercv" version))
              (sha256
               (base32
                "0rs4yhm9sjnqkrgqqy6b8wj9fgk910hxc8d7zi4qwql0v1gid27l"))))
    (properties `((upstream-name . "ercv")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ercv")
    (synopsis
     "Fitting Tails by the Empirical Residual Coefficient of Variation")
    (description
     "This package provides a methodology simple and trustworthy for the analysis of
extreme values and multiple threshold tests for a generalized Pareto
distribution, together with an automatic threshold selection algorithm.  See del
Castillo, J, Daoudi, J and Lockhart, R (2014) <doi:10.1111/sjos.12037>.")
    (license license:gpl2+)))

(define-public r-erah
  (package
    (name "r-erah")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "erah" version))
              (sha256
               (base32
                "0dyjb2ja5199z8is11in11a95l2dbhaa2qj42pikh0ydk47qhd6v"))))
    (properties `((upstream-name . "erah")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-signal
                             r-rcpp
                             r-quantreg
                             r-nnls
                             r-ncdf4
                             r-igraph))
    (home-page "https://scholar.google.es/citations?user=i-0XFxkAAAAJ&hl=en")
    (synopsis
     "Automated Spectral Deconvolution, Alignment, and Metabolite Identification in GC/MS-Based Untargeted Metabolomics")
    (description
     "Automated compound deconvolution, alignment across samples, and identification
of metabolites by spectral library matching in Gas Chromatography - Mass
spectrometry (GC-MS) untargeted metabolomics.  Outputs a table with compound
names, matching scores and the integrated area of the compound for each sample.
Package implementation is described in Domingo-Almenara et al. (2016)
<doi:10.1021/acs.analchem.6b02927>.")
    (license license:gpl2+)))

(define-public r-era
  (package
    (name "r-era")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "era" version))
              (sha256
               (base32
                "10hrbdxdvfgz8namczzfwwdhzwf5gsfv6jp9ikiasmjdlyn9jpps"))))
    (properties `((upstream-name . "era")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs r-rlang r-pillar))
    (native-inputs (list r-knitr))
    (home-page "https://era.joeroe.io")
    (synopsis "Year-Based Time Scales")
    (description
     "This package provides a consistent representation of year-based time scales as a
numeric vector with an associated era'.  There are built-in era definitions for
many year numbering systems used in contemporary and historic calendars (e.g.
Common Era, Islamic Hijri years); year-based time scales used in archaeology,
astronomy, geology, and other palaeosciences (e.g. Before Present, SI-prefixed
annus'); and support for arbitrary user-defined eras.  Years can converted from
any one era to another using a generalised transformation function.  Methods are
also provided for robust casting and coercion between years and other numeric
types, type-stable arithmetic with years, and pretty-printing in tables.")
    (license license:expat)))

(define-public r-er
  (package
    (name "r-er")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ER" version))
              (sha256
               (base32
                "1hsp5sqhnsz175nc2cq2w4g6dgld1429ib7w58piw6982b7m6zn6"))))
    (properties `((upstream-name . "ER")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-plsvarsel
                             r-pls
                             r-gridextra
                             r-glmnet
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=ER")
    (synopsis "Effect + Residual Modelling")
    (description
     "Multivariate modeling of data after deflation of interfering effects.  EF
Mosleth et al. (2021) <doi:10.1038/s41598-021-82388-w> and EF Mosleth et al.
(2020) <doi:10.1016/B978-0-12-409547-2.14882-6>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-equivump
  (package
    (name "r-equivump")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equivUMP" version))
              (sha256
               (base32
                "05ihbr6dd9qv89ll90ynk4g3d3xy2w5q0m696djfa63f1x92c01w"))))
    (properties `((upstream-name . "equivUMP")))
    (build-system r-build-system)
    (home-page "https://github.com/thmild/equivUMP")
    (synopsis "Uniformly Most Powerful Invariant Tests of Equivalence")
    (description
     "Implementation of uniformly most powerful invariant equivalence tests for one-
and two-sample problems (paired and unpaired) as described in Wellek (2010,
ISBN:978-1-4398-0818-4).  Also one-sided alternatives (non-inferiority and
non-superiority tests) are supported.  Basically a variant of a t-test with
(relaxed) null and alternative hypotheses exchanged.")
    (license license:gpl2+)))

(define-public r-equivnoninf
  (package
    (name "r-equivnoninf")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EQUIVNONINF" version))
              (sha256
               (base32
                "08d74jm9my2p9r491v1hya7w2m9b4mf3vk812jsmrdfzdw3x47ab"))))
    (properties `((upstream-name . "EQUIVNONINF")))
    (build-system r-build-system)
    (propagated-inputs (list r-biasedurn))
    (home-page "https://cran.r-project.org/package=EQUIVNONINF")
    (synopsis "Testing for Equivalence and Noninferiority")
    (description
     "Making available in R the complete set of programs accompanying S. Wellek's
(2010) monograph Testing Statistical Hypotheses of Equivalence and
Noninferiority.  Second Edition (Chapman&Hall/CRC).")
    (license license:cc0)))

(define-public r-equivalencetest
  (package
    (name "r-equivalencetest")
    (version "0.0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equivalenceTest" version))
              (sha256
               (base32
                "1lr1qc4mv8f9hwqidj1rwhxqm1fb8cf1hnb1k32xpdqwzsxbfa47"))))
    (properties `((upstream-name . "equivalenceTest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-rdpack r-polynom r-cubature))
    (home-page "https://cran.r-project.org/package=equivalenceTest")
    (synopsis "Equivalence Test for the Means of Two Normal Distributions")
    (description
     "Two methods for performing equivalence test for the means of two (test and
reference) normal distributions are implemented.  The null hypothesis of the
equivalence test is that the absolute difference between the two means are
greater than or equal to the equivalence margin and the alternative is that the
absolute difference is less than the margin.  Given that the margin is often
difficult to obtain a priori, it is assumed to be a constant multiple of the
standard deviation of the reference distribution.  The first method assumes a
fixed margin which is a constant multiple of the estimated standard deviation of
the reference data and whose variability is ignored.  The second method takes
into account the margin variability.  In addition, some tools to summarize and
illustrate the data and test results are included to facilitate the evaluation
of the data and interpretation of the results.")
    (license license:gpl3)))

(define-public r-equivalence
  (package
    (name "r-equivalence")
    (version "0.7.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equivalence" version))
              (sha256
               (base32
                "170l5gnk0dkjkfsx7qyrw56ircwsjzz9cvhakgyrqh7bj5734i79"))))
    (properties `((upstream-name . "equivalence")))
    (build-system r-build-system)
    (propagated-inputs (list r-paireddata r-lattice r-boot))
    (home-page "https://cran.r-project.org/package=equivalence")
    (synopsis "Provides Tests and Graphics for Assessing Tests of Equivalence")
    (description
     "This package provides statistical tests and graphics for assessing tests of
equivalence.  Such tests have similarity as the alternative hypothesis instead
of the null.  Sample data sets are included.")
    (license license:gpl2)))

(define-public r-equisurv
  (package
    (name "r-equisurv")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EquiSurv" version))
              (sha256
               (base32
                "1yml5s3rswayxlxqsqknpwa2i55pj9q1p233kj9xsm8f1zmzk1mf"))))
    (properties `((upstream-name . "EquiSurv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-eha))
    (home-page "https://cran.r-project.org/package=EquiSurv")
    (synopsis
     "Modeling, Confidence Intervals and Equivalence of Survival Curves")
    (description
     "We provide a non-parametric and a parametric approach to investigate the
equivalence (or non-inferiority) of two survival curves, obtained from two given
datasets.  The test is based on the creation of confidence intervals at
pre-specified time points.  For the non-parametric approach, the curves are
given by Kaplan-Meier curves and the variance for calculating the confidence
intervals is obtained by Greenwood's formula.  The parametric approach is based
on estimating the underlying distribution, where the user can choose between a
Weibull, Exponential, Gaussian, Logistic, Log-normal or a Log-logistic
distribution.  Estimates for the variance for calculating the confidence bands
are obtained by a (parametric) bootstrap approach.  For this bootstrap censoring
is assumed to be exponentially distributed and estimates are obtained from the
datasets under consideration.  All details can be found in K.Moellenhoff and
A.Tresch: Survival analysis under non-proportional hazards: investigating
non-inferiority or equivalence in time-to-event data <arXiv:2009.06699>.")
    (license license:gpl2+)))

(define-public r-equatiomatic
  (package
    (name "r-equatiomatic")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equatiomatic" version))
              (sha256
               (base32
                "0gy1wy10zc7h7h1s0hwd545iv4af5x2g8pqsgzyryydd6426g2gj"))))
    (properties `((upstream-name . "equatiomatic")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-knitr r-broom-mixed r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/datalorax/equatiomatic")
    (synopsis "Transform Models into 'LaTeX' Equations")
    (description
     "The goal of equatiomatic is to reduce the pain associated with writing LaTeX
formulas from fitted models.  The primary function of the package, extract_eq(),
takes a fitted model object as its input and returns the corresponding LaTeX
code for the model.")
    (license (license:fsdg-compatible "CC BY 4.0"))))

(define-public r-equatemultiple
  (package
    (name "r-equatemultiple")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equateMultiple" version))
              (sha256
               (base32
                "0daj3dnxh383kk86bxwgmnxg1pfx996080k59nyl5ryb8wcbqc85"))))
    (properties `((upstream-name . "equateMultiple")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod r-rcpparmadillo r-rcpp r-numderiv
                             r-equateirt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=equateMultiple")
    (synopsis "Equating of Multiple Forms")
    (description
     "Equating of multiple forms using Item Response Theory (IRT) methods (Battauz M.
(2017) <doi:10.1007/s11336-016-9517-x> and Haberman S. J. (2009)
<doi:10.1002/j.2333-8504.2009.tb02197.x>).")
    (license license:gpl3)))

(define-public r-equateirt
  (package
    (name "r-equateirt")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equateIRT" version))
              (sha256
               (base32
                "18rs6n4kgbiikkljppnacd1zkv2wp8xc8ibk9xslrhshxwwr0576"))))
    (properties `((upstream-name . "equateIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod r-mirt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=equateIRT")
    (synopsis "IRT Equating Methods")
    (description
     "Computation of direct, chain and average (bisector) equating coefficients with
standard errors using Item Response Theory (IRT) methods for dichotomous items
(Battauz (2013) <doi:10.1007/s11336-012-9316-y>, Battauz (2015)
<doi:10.18637/jss.v068.i07>).  Test scoring can be performed by true score
equating and observed score equating methods.  DIF detection can be performed
using a Wald-type test (Battauz (2019) <doi:10.1007/s10260-018-00442-w>).  The
package includes tests to access the stability of the equating transformations
(Battauz(2022) <doi:10.1111/stan.12277>).")
    (license license:gpl3)))

(define-public r-equate
  (package
    (name "r-equate")
    (version "2.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equate" version))
              (sha256
               (base32
                "0yjgnhn1hj5rs68qn51caia4zb78hh7vipm4411ng28cn9cxzdm4"))))
    (properties `((upstream-name . "equate")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/talbano/equate")
    (synopsis "Observed-Score Linking and Equating")
    (description
     "This package contains methods for observed-score linking and equating under the
single-group, equivalent-groups, and nonequivalent-groups with anchor test(s)
designs.  Equating types include identity, mean, linear, general linear,
equipercentile, circle-arc, and composites of these.  Equating methods include
synthetic, nominal weights, Tucker, Levine observed score, Levine true score,
Braun/Holland, frequency estimation, and chained equating.  Plotting and summary
methods, and methods for multivariate presmoothing and bootstrap error
estimation are also provided.")
    (license license:gpl3)))

(define-public r-equatags
  (package
    (name "r-equatags")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equatags" version))
              (sha256
               (base32
                "039v1lj8ydw3lji8ycklbprd569f7g0lc11sb2ij262wlr0prm1m"))))
    (properties `((upstream-name . "equatags")))
    (build-system r-build-system)
    (propagated-inputs (list r-xslt r-xml2 r-katex))
    (home-page "https://cran.r-project.org/package=equatags")
    (synopsis "Equations to 'XML'")
    (description
     "This package provides function to transform latex math expressions into format
HTML or Office Open XML Math'.  The XML result can then be included in HTML',
Microsoft Word documents or Microsoft PowerPoint presentations by using a
Markdown document or the R package officer'.")
    (license license:expat)))

(define-public r-equaltestmi
  (package
    (name "r-equaltestmi")
    (version "0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equaltestMI" version))
              (sha256
               (base32
                "09wh4907vf54z3g2a1i1j4m5vkaz97jp3qyrmxbg0bbbq0c68ffg"))))
    (properties `((upstream-name . "equaltestMI")))
    (build-system r-build-system)
    (propagated-inputs (list r-lavaan))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=equaltestMI")
    (synopsis
     "Examine Measurement Invariance via Equivalence Testing and Projection Method")
    (description
     "This package provides functions for examining measurement invariance via
equivalence testing are included in this package.  The traditionally used RMSEA
(Root Mean Square Error of Approximation) cutoff values are adjusted based on
simulation results.  In addition, a projection-based method is implemented to
test the equality of latent factor means across groups without assuming the
equality of intercepts.  For more information, see Yuan, K. H., & Chan, W.
(2016) <doi:10.1037/met0000080>, Deng, L., & Yuan, K. H. (2016)
<doi:10.1007/s11336-015-9491-8>, and Jiang, G., Mai, Y., & Yuan, K. H. (2017)
<doi:10.3389/fpsyg.2017.01823>.")
    (license license:gpl3)))

(define-public r-equalden-hd
  (package
    (name "r-equalden-hd")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Equalden.HD" version))
              (sha256
               (base32
                "1lwqnm2xg7x79xajjb4fx5b5yaqs0rn8myb2h52pfgm0v37lzvmb"))))
    (properties `((upstream-name . "Equalden.HD")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Equalden.HD")
    (synopsis "Testing the Equality of a High Dimensional Set of Densities")
    (description
     "The equality of a large number k of densities is tested by measuring the L2
distance between the corresponding kernel density estimators and the one based
on the pooled sample.  The test even works for sample sizes as small as 2.")
    (license license:gpl2)))

(define-public r-equalcovs
  (package
    (name "r-equalcovs")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "equalCovs" version))
              (sha256
               (base32
                "18w7panyd6mhdr3x1iz9fkrw7min22rishs4xhkxgxs3nnyglkrn"))))
    (properties `((upstream-name . "equalCovs")))
    (build-system r-build-system)
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=equalCovs")
    (synopsis "Testing the Equality of Two Covariance Matrices")
    (description
     "Tests the equality of two covariance matrices, used in paper \"Two sample tests
for high dimensional covariance matrices.\" Li and Chen (2012) <arXiv:1206.0917>.")
    (license license:gpl2)))

(define-public r-eql
  (package
    (name "r-eql")
    (version "1.0-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EQL" version))
              (sha256
               (base32
                "0pa33h0f30l352m6ix296l55lvqxdaib666x2dwy9zx0lmk23w8m"))))
    (properties `((upstream-name . "EQL")))
    (build-system r-build-system)
    (propagated-inputs (list r-ttutils r-lattice))
    (home-page "https://cran.r-project.org/package=EQL")
    (synopsis "Extended-Quasi-Likelihood-Function (EQL)")
    (description
     "Computation of the EQL for a given family of variance functions,
Saddlepoint-approximations and related auxiliary functions (e.g. Hermite
polynomials).")
    (license license:gpl2)))

(define-public r-eq5d
  (package
    (name "r-eq5d")
    (version "0.13.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eq5d" version))
              (sha256
               (base32
                "1l4867x00iz6wq1w7glcpbmsyxy881wpng3hjf3pmr5yb8lhqmxm"))))
    (properties `((upstream-name . "eq5d")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fragla/eq5d")
    (synopsis
     "Methods for Analysing 'EQ-5D' Data and Calculating 'EQ-5D' Index Scores")
    (description
     "EQ-5D is a popular health related quality of life instrument used in the
clinical and economic evaluation of health care.  Developed by the EuroQol group
<https://euroqol.org/>, the instrument consists of two components: health state
description and evaluation.  For the description component a subject self-rates
their health in terms of five dimensions; mobility, self-care, usual activities,
pain/discomfort, and anxiety/depression using either a three-level (EQ-5D-3L,
<https://euroqol.org/eq-5d-instruments/eq-5d-3l-about/>) or a five-level
(EQ-5D-5L, <https://euroqol.org/eq-5d-instruments/eq-5d-5l-about/>) scale.
Frequently the scores on these five dimensions are converted to a single utility
index using country specific value sets, which can be used in the clinical and
economic evaluation of health care as well as in population health surveys.  The
eq5d package provides methods to calculate index scores from a subject's
dimension scores.  29 TTO and 11 VAS EQ-5D-3L value sets including those for
countries in Szende et al (2007) <doi:10.1007/1-4020-5511-0> and Szende et al
(2014) <doi:10.1007/978-94-007-7596-1>, 36 EQ-5D-5L EQ-VT value sets, the
EQ-5D-5L crosswalk value sets developed by van Hout et al. (2012)
<doi:10.1016/j.jval.2012.02.008>, the crosswalk value set for Russia and reverse
crosswalk value sets.  Seven EQ-5D-Y value sets are also included as are the
NICE DSU age-sex based EQ-5D-3L to EQ-5D-5L and EQ-5D-5L to EQ-5D-3L mappings.
Methods are also included for the analysis of EQ-5D profiles along with a shiny
web tool to enable the calculation, visualisation and automated statistical
analysis of EQ-5D data via a web browser using EQ-5D dimension scores stored in
CSV or Excel files.")
    (license license:expat)))

(define-public r-epxtor
  (package
    (name "r-epxtor")
    (version "0.4-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epxToR" version))
              (sha256
               (base32
                "00m64ham9fd9dsw37ic2m62fy4pvmwfwmjx8cg6n4rwbgq9q49sg"))))
    (properties `((upstream-name . "epxToR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml r-httr))
    (home-page "https://cran.r-project.org/package=epxToR")
    (synopsis "Import 'Epidata' XML Files '.epx'")
    (description
     "Import data from Epidata XML files .epx and convert it to R data structures.")
    (license license:gpl3)))

(define-public r-epx
  (package
    (name "r-epx")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EPX" version))
              (sha256
               (base32
                "0d0qddk4c835gkh4lydaypxzakjz3qw9ai7y35kbaflj08fismc6"))))
    (properties `((upstream-name . "EPX")))
    (build-system r-build-system)
    (propagated-inputs (list r-rngtools
                             r-randomforest
                             r-nnet
                             r-foreach
                             r-dorng
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EPX")
    (synopsis "Ensemble of Phalanxes")
    (description
     "An ensemble method for the statistical detection of a rare class in two-class
classification problems.  The method uses an ensemble of classifiers where the
constituent models of the ensemble use disjoint subsets (phalanxes) of
explanatory variables.  We provide an implementation of the phalanx-formation
algorithm.  Please see Tomal et al. (2015) <doi:10.1214/14-AOAS778>, Tomal et
al. (2016) <doi:10.1021/acs.jcim.5b00663>, and Tomal et al. (2019)
<arXiv:1706.06971> for more details.")
    (license license:gpl3)))

(define-public r-epwshiftr
  (package
    (name "r-epwshiftr")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epwshiftr" version))
              (sha256
               (base32
                "11vfs2r2fzbdd3r0s8ikafgq9ins06ym73wqxyijz60h75py4ic7"))))
    (properties `((upstream-name . "epwshiftr")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-rnetcdf
                             r-rappdirs
                             r-psychrolib
                             r-progressr
                             r-jsonlite
                             r-future-apply
                             r-fst
                             r-eplusr
                             r-data-table
                             r-checkmate))
    (home-page "https://github.com/ideas-lab-nus/epwshiftr")
    (synopsis "Create Future 'EnergyPlus' Weather Files using 'CMIP6' Data")
    (description
     "Query, download climate change projection data from the CMIP6 (Coupled Model
Intercomparison Project Phase 6) project <https://pcmdi.llnl.gov/CMIP6/> in the
ESGF (Earth System Grid Federation) platform <https://esgf.llnl.gov>, and create
future EnergyPlus <https://energyplus.net> Weather ('EPW') files adjusted from
climate changes using data from Global Climate Models ('GCM').")
    (license license:expat)))

(define-public r-epubr
  (package
    (name "r-epubr")
    (version "0.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epubr" version))
              (sha256
               (base32
                "1cpsxx02qcj3brr3ddy8dbnaf6wxf42s9y3kx8fq5ki3pmlwry7g"))))
    (properties `((upstream-name . "epubr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xslt
                             r-xml2
                             r-tidyr
                             r-tibble
                             r-magrittr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page
     "https://docs.ropensci.org/epubr/https://github.com/ropensci/epubr")
    (synopsis "Read EPUB File Metadata and Text")
    (description
     "This package provides functions supporting the reading and parsing of internal
e-book content from EPUB files.  The epubr package provides functions supporting
the reading and parsing of internal e-book content from EPUB files.  E-book
metadata and text content are parsed separately and joined together in a tidy,
nested tibble data frame.  E-book formatting is not completely standardized
across all literature.  It can be challenging to curate parsed e-book content
across an arbitrary collection of e-books perfectly and in completely general
form, to yield a singular, consistently formatted output.  Many EPUB files do
not even contain all the same pieces of information in their respective
metadata.  EPUB file parsing functionality in this package is intended for
relatively general application to arbitrary EPUB e-books.  However, poorly
formatted e-books or e-books with highly uncommon formatting may not work with
this package.  There may even be cases where an EPUB file has DRM or some other
property that makes it impossible to read with epubr'.  Text is read as is for
the most part.  The only nominal changes are minor substitutions, for example
curly quotes changed to straight quotes.  Substantive changes are expected to be
performed subsequently by the user as part of their text analysis.  Additional
text cleaning can be performed at the user's discretion, such as with functions
from packages like tm or qdap'.")
    (license license:expat)))

(define-public r-ept
  (package
    (name "r-ept")
    (version "0.7.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EPT" version))
              (sha256
               (base32
                "1hkisfisi63dd9lai662y387av1g77fkbai0p2a346n8zgahysji"))))
    (properties `((upstream-name . "EPT")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EPT")
    (synopsis "Ensemble Patch Transform, Visualization and Decomposition")
    (description
     "For multiscale analysis, this package carries out ensemble patch transform, its
visualization and multiscale decomposition.  The detailed procedure is described
in Kim et al. (2020), and Oh and Kim (2020).  D. Kim, G. Choi, H.-S. Oh,
Ensemble patch transformation: a flexible framework for decomposition and
filtering of signal, EURASIP Journal on Advances in Signal Processing 30 (2020)
1-27 <doi:10.1186/s13634-020-00690-7>.  H.-S. Oh, D. Kim, Image decomposition by
bidimensional ensemble patch transform, Pattern Recognition Letters 135 (2020)
173-179 <doi:10.1016/j.patrec.2020.03.029>.")
    (license license:gpl3+)))

(define-public r-epsiwal
  (package
    (name "r-epsiwal")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epsiwal" version))
              (sha256
               (base32
                "0lmcmiqcc1pjj1d0zyn0hc23if1lkm85p6vcjqbddpnv9ags2mbh"))))
    (properties `((upstream-name . "epsiwal")))
    (build-system r-build-system)
    (home-page "https://github.com/shabbychef/epsiwal")
    (synopsis "Exact Post Selection Inference with Applications to the Lasso")
    (description
     "This package implements the conditional estimation procedure of Lee, Sun, Sun
and Taylor (2016) <doi:10.1214/15-AOS1371>.  This procedure allows hypothesis
testing on the mean of a normal random vector subject to linear constraints.")
    (license license:lgpl3)))

(define-public r-epr
  (package
    (name "r-epr")
    (version "3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epr" version))
              (sha256
               (base32
                "0czfz6qkcpa2qqs3pqii27hgpdvdzfrvxl0ip67v58hamq7kvjfv"))))
    (properties `((upstream-name . "epr")))
    (build-system r-build-system)
    (propagated-inputs (list r-lme4 r-car))
    (home-page "https://cran.r-project.org/package=epr")
    (synopsis "Easy Polynomial Regression")
    (description
     "This package performs analysis of polynomial regression in simple designs with
quantitative treatments.")
    (license license:gpl2)))

(define-public r-epos
  (package
    (name "r-epos")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epos" version))
              (sha256
               (base32
                "0z3r0128ql1jd8nkadia9w97g4nr3w4azvhpj7bjcaf3smh733d8"))))
    (properties `((upstream-name . "epos")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-venndiagram
                             r-topklists
                             r-testthat
                             r-stringr
                             r-mongolite
                             r-hash
                             r-gridextra
                             r-ggplot2
                             r-cowplot))
    (home-page "https://cran.r-project.org/package=epos")
    (synopsis "Epilepsy Ontologies' Similarities")
    (description
     "Analysis and visualization of similarities between epilepsy ontologies based on
text mining results by comparing ranked lists of co-occurring drug terms in the
BioASQ corpus.  The ranked result lists of neurological drug terms co-occurring
with terms from the epilepsy ontologies EpSO, ESSO, EPILONT, EPISEM and FENICS
undergo further analysis.  The source data to create the ranked lists of drug
names is produced using the text mining workflows described in Mueller, Bernd
and Hagelstein, Alexandra (2016) <doi:10.4126/FRL01-006408558>, Mueller, Bernd
et al. (2017) <doi:10.1007/978-3-319-58694-6_22> and Mueller, Bernd and
Rebholz-Schuhmann, Dietrich (2020) <doi:10.1007/978-3-030-43887-6_52>.")
    (license license:expat)))

(define-public r-eponge
  (package
    (name "r-eponge")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eponge" version))
              (sha256
               (base32
                "19wd80l35acij793spxglcwz346i2iivk6n0q2304wjcca6qzds7"))))
    (properties `((upstream-name . "eponge")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang))
    (home-page "https://github.com/krzjoa/eponge")
    (synopsis "Keep Your Environment Clean")
    (description
     "This package provides a set of functions, which facilitates removing objects
from an environment.  It allows to delete objects specified with regular
expression or with other conditions (e.g. if object is numeric), using one
function call.")
    (license license:expat)))

(define-public r-epocakir
  (package
    (name "r-epocakir")
    (version "0.9.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epocakir" version))
              (sha256
               (base32
                "0zid17100gj50dfb6l305jvsnzaixlr5w482f061gl50bxaplgg2"))))
    (properties `((upstream-name . "epocakir")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-tidyr
                             r-tibble
                             r-rlang
                             r-magrittr
                             r-lubridate
                             r-ellipsis
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/alwinw/epocakir")
    (synopsis "Clinical Coding of Patients with Kidney Disease")
    (description
     "Clinical coding and diagnosis of patients with kidney using clinical practice
guidelines.  The guidelines used are the evidence-based KDIGO guidelines, see
<https://kdigo.org/guidelines/> for more information.  This package covers acute
kidney injury (AKI), anemia, and chronic kidney disease (CKD).")
    (license license:expat)))

(define-public r-epoc
  (package
    (name "r-epoc")
    (version "0.2.6-1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epoc" version))
              (sha256
               (base32
                "1qlj4cl7mh5k52v2ippfs3cish5iadnix5w46p25hjqiriksclna"))))
    (properties `((upstream-name . "epoc")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-matrix r-lassoshooting r-irr
                             r-elasticnet))
    (home-page "https://cran.r-project.org/package=epoc")
    (synopsis "Endogenous Perturbation Analysis of Cancer")
    (description
     "Estimates sparse matrices A or G using fast lasso regression from mRNA
transcript levels Y and CNA profiles U. Two models are provided, EPoC A where AY
+ U + R = 0 and EPoC G where Y = GU + E, the matrices R and E are so far treated
as noise.  For details see the manual page of lassoshooting and the article
Rebecka JÃ¶rnsten, Tobias Abenius, Teresia Kling, LinnÃ©a Schmidt, Erik
Johansson, TorbjÃ¶rn E M Nordling, Bodil Nordlander, Chris Sander, Peter
Gennemark, Keiko Funa, BjÃ¶rn Nilsson, Linda Lindahl, Sven Nelander (2011)
<doi:10.1038/msb.2011.17>.")
    (license license:lgpl3)))

(define-public r-epm
  (package
    (name "r-epm")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epm" version))
              (sha256
               (base32
                "0vr1qydafkj0xlm395alpjkck6ahspi89pjk3zp31f2i6cx71hcx"))))
    (properties `((upstream-name . "epm")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-terra
                             r-sf
                             r-rcppprogress
                             r-rcpp
                             r-pbapply
                             r-ape))
    (home-page "https://github.com/ptitle/epm")
    (synopsis "EcoPhyloMapper")
    (description
     "Facilitates the aggregation of species geographic ranges from vector or raster
spatial data, and that enables the calculation of various morphological and
phylogenetic community metrics across geography.  Citation: Title, PO, DL
Swiderski and ML Zelditch (2022) <doi:10.1111/2041-210X.13914>.")
    (license license:gpl3+)))

(define-public r-eply
  (package
    (name "r-eply")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eply" version))
              (sha256
               (base32
                "0al44pvqf6ls3dh129vlv3g56hk1nbql09rj0qsb04d9kaz9anrp"))))
    (properties `((upstream-name . "eply")))
    (build-system r-build-system)
    (propagated-inputs (list r-magrittr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/wlandau/eply")
    (synopsis "Apply a Function Over Expressions")
    (description "Evaluate a function over a data frame of expressions.")
    (license license:gpl3)))

(define-public r-eplusr
  (package
    (name "r-eplusr")
    (version "0.15.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eplusr" version))
              (sha256
               (base32
                "04qbvawxzily2cd76lahi3nba49c2j4skjvqk8xy2rin7p0w6fxs"))))
    (properties `((upstream-name . "eplusr")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-stringi
                             r-rsqlite
                             r-r6
                             r-progress
                             r-processx
                             r-lubridate
                             r-hms
                             r-data-table
                             r-crayon
                             r-cli
                             r-checkmate
                             r-callr))
    (home-page "https://hongyuanjia.github.io/eplusr/")
    (synopsis
     "Toolkit for Using Whole Building Simulation Program 'EnergyPlus'")
    (description
     "This package provides a rich toolkit of using the whole building simulation
program EnergyPlus'(<https://energyplus.net>), which enables programmatic
navigation, modification of EnergyPlus models and makes it less painful to do
parametric simulations and analysis.")
    (license license:expat)))

(define-public r-epitweetr
  (package
    (name "r-epitweetr")
    (version "2.2.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epitweetr" version))
              (sha256
               (base32
                "0vv4y1c8nfcdv2hmv6vvi5jh6ykrbvna2p2gwpcl9q4j7b4wp9jc"))))
    (properties `((upstream-name . "epitweetr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-xml2
                             r-tokenizers
                             r-tidyverse
                             r-tidytext
                             r-tibble
                             r-stringr
                             r-sp
                             r-shiny
                             r-rtweet
                             r-rnaturalearthdata
                             r-rmarkdown
                             r-rlang
                             r-rgdal
                             r-readxl
                             r-processx
                             r-plyr
                             r-plotly
                             r-openxlsx
                             r-magrittr
                             r-lifecycle
                             r-knitr
                             r-keyring
                             r-jsonlite
                             r-janitor
                             r-httr
                             r-httpuv
                             r-htmltools
                             r-ggplot2
                             r-future
                             r-emayili
                             r-dt
                             r-dplyr
                             r-curl
                             r-crul
                             r-bit64))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EU-ECDC/epitweetr")
    (synopsis "Early Detection of Public Health Threats from 'Twitter' Data")
    (description
     "It allows you to automatically monitor trends of tweets by time, place and topic
aiming at detecting public health threats early through the detection of signals
(e.g. an unusual increase in the number of tweets).  It was designed to focus on
infectious diseases, and it can be extended to all hazards or other fields of
study by modifying the topics and keywords.  More information is available in
the epitweetr peer-review publication
(<https://www.eurosurveillance.org/content/10.2807/1560-7917.ES.2022.27.39.2200177>).")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-epitrix
  (package
    (name "r-epitrix")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epitrix" version))
              (sha256
               (base32
                "1rqpvdky002h6mz636b77l4kd0im16pww62l6vnwh83si1m9pkki"))))
    (properties `((upstream-name . "epitrix")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-sodium r-distcrete))
    (native-inputs (list r-knitr))
    (home-page "http://www.repidemicsconsortium.org/epitrix")
    (synopsis "Small Helpers and Tricks for Epidemics Analysis")
    (description
     "This package provides a collection of small functions useful for epidemics
analysis and infectious disease modelling.  This includes computation of basic
reproduction numbers from growth rates, generation of hashed labels to anonymise
data, and fitting discretised Gamma distributions.")
    (license license:expat)))

(define-public r-epitopr
  (package
    (name "r-epitopr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epitopR" version))
              (sha256
               (base32
                "0bqj62jl48pql7dbmq96fgs0pza3krycd9i6fj0sjz7yxg4i46q6"))))
    (properties `((upstream-name . "epitopR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tibble
                             r-stringr
                             r-seqinr
                             r-readr
                             r-purrr
                             r-janitor
                             r-httr
                             r-here
                             r-fs
                             r-dplyr
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=epitopR")
    (synopsis "Predict Peptide-MHC Binding")
    (description
     "This package provides a suite of tools to predict peptide MHC (major
histocompatibility complex) presentation in the context of both human and mouse.
 Polymorphic peptides between self and foreign proteins are identified.  The
ability of peptides to bind self MHC is assessed and scored.  Based on half
maximal inhibitory concentration as queried through the immune epitope database
API <http://tools.iedb.org/mhcii/> using user defined methods, the foreign
peptides most likely to be presented are output along with their predicted
binding strength, amino acid position, the protein from which each peptide was
derived, and the presenting allele. \"References:\" Vita R, Mahajan S, Overton JA,
Dhanda SK, Martini S, Cantrell JR, Wheeler DK, Sette A, Peters B.
<doi:10.1093/nar/gky1006>.")
    (license license:expat)))

(define-public r-epitools
  (package
    (name "r-epitools")
    (version "0.5-10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epitools" version))
              (sha256
               (base32
                "0jqn3pas4lsans50jwakmvpyc7m7x0kxq6dzyckd3vgww56qa65l"))))
    (properties `((upstream-name . "epitools")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=epitools")
    (synopsis "Epidemiology Tools")
    (description
     "Tools for training and practicing epidemiologists including methods for two-way
and multi-way contingency tables.")
    (license license:gpl2+)))

(define-public r-epitab
  (package
    (name "r-epitab")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epitab" version))
              (sha256
               (base32
                "0yi65bblsikwsa9i7wys1mqf6pp6j01kyc8xkyrhs5n62y1k68nc"))))
    (properties `((upstream-name . "epitab")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-survival r-mass r-knitr r-kableextra))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stulacy/epitab")
    (synopsis "Flexible Contingency Tables for Epidemiology")
    (description
     "Builds contingency tables that cross-tabulate multiple categorical variables and
also calculates various summary measures.  Export to a variety of formats is
supported, including: HTML', LaTeX', and Excel'.")
    (license license:gpl2)))

(define-public r-epistemicgametheory
  (package
    (name "r-epistemicgametheory")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpistemicGameTheory" version))
              (sha256
               (base32
                "0b2gnrvhlsw85qv63ib32pj55l7w63wgvbrj5rb209g6h46fby8m"))))
    (properties `((upstream-name . "EpistemicGameTheory")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolve))
    (home-page "https://cran.r-project.org/package=EpistemicGameTheory")
    (synopsis "Constructing an Epistemic Model for the Games with Two Players")
    (description
     "Constructing an epistemic model such that, for every player i and for every
choice c(i) which is optimal, there is one type that expresses common belief in
rationality.")
    (license license:gpl3)))

(define-public r-epistats
  (package
    (name "r-epistats")
    (version "1.5-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiStats" version))
              (sha256
               (base32
                "0swxww4x0qqlby4m8xw58jr5x2ml5z896m8w0f1v0mr7kf1v6fpi"))))
    (properties `((upstream-name . "EpiStats")))
    (build-system r-build-system)
    (propagated-inputs (list r-epir r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EpiStats")
    (synopsis "Tools for Epidemiologists")
    (description
     "This package provides set of functions aimed at epidemiologists.  They include
commands for measures of association and impact for case control studies and
cohort studies.  They may be particularly useful for outbreak investigations and
include univariate and stratified analyses.  The functions for cohort studies
include the CS(), CSTable() and CSInter() commands.  The functions for case
control studies include the CC(), CCTable() and CCInter() commands.")
    (license license:lgpl3)))

(define-public r-epistasis
  (package
    (name "r-epistasis")
    (version "0.0.1-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epistasis" version))
              (sha256
               (base32
                "0dfh26bs72i01hpxpgpgyiwpmg9mjpib8zynhc5ssxa0skm518wz"))))
    (properties `((upstream-name . "epistasis")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmvtnorm r-matrix r-igraph r-glasso))
    (home-page "https://cran.r-project.org/package=epistasis")
    (synopsis
     "Detecting Epistatic Selection with Partially Observed Genotype Data")
    (description
     "An efficient multi-core package to reconstruct an underlying network of genomic
signatures of high-dimensional epistatic selection from partially observed
genotype data.  The phenotype that we consider is viability.  The network
captures the conditional dependent short- and long-range linkage disequilibrium
structure of genomes and thus reveals aberrant marker-marker associations that
are due to epistatic selection.  We target on high-dimensional genotype data
where number of variables (markers) is larger than number of sample sizes (p >>
n).  The computations is memory-optimized using the sparse matrix output.")
    (license license:gpl3)))

(define-public r-episignaldetection
  (package
    (name "r-episignaldetection")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiSignalDetection" version))
              (sha256
               (base32
                "17mawnx3c87kgfa7aj42a7db9c1ciyxdfgka9sgx6lc0yw5249as"))))
    (properties `((upstream-name . "EpiSignalDetection")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-surveillance r-shiny r-rmarkdown r-isoweek
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EU-ECDC/EpiSignalDetection")
    (synopsis "Signal Detection Analysis")
    (description
     "Exploring time series for signal detection.  It is specifically designed to
detect possible outbreaks using infectious disease surveillance data at the
European Union / European Economic Area or country level.  Automatic detection
tools used are presented in the paper \"Monitoring count time series in R:
aberration detection in public health surveillance\", by Salmon (2016)
<doi:10.18637/jss.v070.i10>.  The package includes: - Signal Detection tool, an
interactive shiny application in which the user can import external data and
perform basic signal detection analyses; - An automated report in HTML format,
presenting the results of the time series analysis in tables and graphs.  This
report can also be stratified by population characteristics (see Population
variable).  This project was funded by the European Centre for Disease
Prevention and Control.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-episensr
  (package
    (name "r-episensr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "episensr" version))
              (sha256
               (base32
                "0670h2x8mcd4g7m17k0zascq5yb3llsvpp9qwzghiha0f9ai8xw0"))))
    (properties `((upstream-name . "episensr")))
    (build-system r-build-system)
    (propagated-inputs (list r-triangle
                             r-trapezoid
                             r-magrittr
                             r-ggplot2
                             r-ggdag
                             r-dagitty
                             r-boot
                             r-actuar))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dhaine/episensr")
    (synopsis "Basic Sensitivity Analysis of Epidemiological Results")
    (description
     "Basic sensitivity analysis of the observed relative risks adjusting for
unmeasured confounding and misclassification of the exposure/outcome, or both.
It follows the bias analysis methods and examples from the book by Lash T.L, Fox
M.P, and Fink A.K. \"Applying Quantitative Bias Analysis to Epidemiologic Data\",
('Springer', 2009).")
    (license license:gpl2)))

(define-public r-episemble
  (package
    (name "r-episemble")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiSemble" version))
              (sha256
               (base32
                "1m0a6lxd47vv8m9q5j2fxabakhmxw2srknxkccxig2r9glizlsfi"))))
    (properties `((upstream-name . "EpiSemble")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-tibble
                             r-stringr
                             r-splitstackshape
                             r-seqinr
                             r-randomforest
                             r-party
                             r-iterators
                             r-gbm
                             r-ftrcool
                             r-foreach
                             r-entropy
                             r-e1071
                             r-doparallel
                             r-devtools
                             r-caret
                             r-biostrings))
    (home-page "https://cran.r-project.org/package=EpiSemble")
    (synopsis
     "Ensemble Based Machine Learning Approach for Predicting Methylation States")
    (description
     "DNA methylation (6mA) is a major epigenetic process by which alteration in gene
expression took place without changing the DNA sequence.  Predicting these sites
in-vitro is laborious, time consuming as well as costly.  This EpiSemble package
is an in-silico pipeline for predicting DNA sequences containing the 6mA sites.
It uses an ensemble-based machine learning approach by combining Support Vector
Machine (SVM), Random Forest (RF) and Gradient Boosting approach to predict the
sequences with 6mA sites in it.  This package has been developed by using the
concept of Chen et al. (2019) <doi:10.1093/bioinformatics/btz015>.")
    (license license:gpl3)))

(define-public r-episcan
  (package
    (name "r-episcan")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "episcan" version))
              (sha256
               (base32
                "02687f8gpc2czn19lapvazd6mnm8902ay0lhgi3wdrzfhir42m4r"))))
    (properties `((upstream-name . "episcan")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=episcan")
    (synopsis "Scan Pairwise Epistasis")
    (description
     "Searching genomic interactions with linear/logistic regression in a
high-dimensional dataset is a time-consuming task.  This package provides some
efficient ways to scan epistasis in genome-wide interaction studies (GWIS).
Both case-control status (binary outcome) and quantitative phenotype (continuous
outcome) are supported (the main references: 1.  Kam-Thong, T., D. Czamara, K.
Tsuda, K. Borgwardt, C. M. Lewis, A. Erhardt-Lehmann, B. Hemmer, et al. (2011).
<doi:10.1038/ejhg.2010.196>.  2.  Kam-Thong, T., B. PÃ¼tz, N. Karbalai, B.
MÃ¼ller-Myhsok, and K. Borgwardt. (2011). <doi:10.1093/bioinformatics/btr218>.)")
    (license license:gpl2+)))

(define-public r-epireport
  (package
    (name "r-epireport")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiReport" version))
              (sha256
               (base32
                "1dh9rjdjgmwzvfslzgnmd37ipj7ydbn4pnngz4sw7nknqy7r4dpx"))))
    (properties `((upstream-name . "EpiReport")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyselect
                             r-tidyr
                             r-png
                             r-officer
                             r-ggplot2
                             r-flextable
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page
     "https://www.ecdc.europa.eu/en/all-topics-z/surveillance-and-disease-data/annual-epidemiological-reports-aers")
    (synopsis "Epidemiological Report")
    (description
     "Drafting an epidemiological report in Microsoft Word format for a given disease,
similar to the Annual Epidemiological Reports published by the European Centre
for Disease Prevention and Control.  Through standalone functions, it is
specifically designed to generate each disease specific output presented in
these reports and includes: - Table with the distribution of cases by Member
State over the last five years; - Seasonality plot with the distribution of
cases at the European Union / European Economic Area level, by month, over the
past five years; - Trend plot with the trend and number of cases at the European
Union / European Economic Area level, by month, over the past five years; - Age
and gender bar graph with the distribution of cases at the European Union /
European Economic Area level.  Two types of datasets can be used: - The default
dataset of dengue 2015-2019 data; - Any dataset specified as described in the
vignette.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-epir
  (package
    (name "r-epir")
    (version "2.0.54")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epiR" version))
              (sha256
               (base32
                "0x8h4ry4dx01s0rvihv7qjdyhdgncjip10xi13iac6ra910znzdr"))))
    (properties `((upstream-name . "epiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-survival
                             r-sf
                             r-pander
                             r-officer
                             r-lubridate
                             r-flextable
                             r-biasedurn))
    (native-inputs (list r-knitr))
    (home-page
     "https://fvas.unimelb.edu.au/research/groups/veterinary-epidemiology-melbourne")
    (synopsis "Tools for the Analysis of Epidemiological Data")
    (description
     "Tools for the analysis of epidemiological and surveillance data.  Contains
functions for directly and indirectly adjusting measures of disease frequency,
quantifying measures of association on the basis of single or multiple strata of
count data presented in a contingency table, computation of confidence intervals
around incidence risk and incidence rate estimates and sample size calculations
for cross-sectional, case-control and cohort studies.  Surveillance tools
include functions to calculate an appropriate sample size for 1- and 2-stage
representative freedom surveys, functions to estimate surveillance system
sensitivity and functions to support scenario tree modelling analyses.")
    (license license:gpl2+)))

(define-public r-epinetr
  (package
    (name "r-epinetr")
    (version "0.96")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epinetr" version))
              (sha256
               (base32
                "0jg8pwbxlgrk7mqawsrifk724pi5qn0amh6x2fq54a0hmqdpdjns"))))
    (properties `((upstream-name . "epinetr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcfr
                             r-reshape2
                             r-rcppalgos
                             r-rcpp
                             r-igraph
                             r-ggplot2
                             r-ga))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/diondetterer/epinetr")
    (synopsis "Epistatic Network Modelling with Forward-Time Simulation")
    (description
     "Allows for forward-in-time simulation of epistatic networks with associated
phenotypic output.")
    (license license:gpl3+)))

(define-public r-epinet
  (package
    (name "r-epinet")
    (version "2.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epinet" version))
              (sha256
               (base32
                "10bgq66n99kkz0nhmsz508aypxk57zk19p5l3xrb28n72k4rfgrf"))))
    (properties `((upstream-name . "epinet")))
    (build-system r-build-system)
    (propagated-inputs (list r-network))
    (home-page "https://cran.r-project.org/package=epinet")
    (synopsis "Epidemic/Network-Related Tools")
    (description
     "This package provides a collection of epidemic/network-related tools.  Simulates
transmission of diseases through contact networks.  Performs Bayesian inference
on network and epidemic parameters, given epidemic data.")
    (license license:gpl2)))

(define-public r-epimodel
  (package
    (name "r-epimodel")
    (version "2.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiModel" version))
              (sha256
               (base32
                "1fwk6wkqy2z3cv0jhi6mz077qjwlcqhd57lpiv6i6iajizcf4bas"))))
    (properties `((upstream-name . "EpiModel")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-tergm
                             r-statnet-common
                             r-rlang
                             r-rcpp
                             r-rcolorbrewer
                             r-networkdynamic
                             r-network
                             r-lazyeval
                             r-ggplot2
                             r-foreach
                             r-ergm
                             r-dplyr
                             r-doparallel
                             r-desolve
                             r-coda
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "http://www.epimodel.org/")
    (synopsis "Mathematical Modeling of Infectious Disease Dynamics")
    (description
     "Tools for simulating mathematical models of infectious disease dynamics.
Epidemic model classes include deterministic compartmental models, stochastic
individual-contact models, and stochastic network models.  Network models use
the robust statistical methods of exponential-family random graph models (ERGMs)
from the Statnet suite of software packages in R. Standard templates for
epidemic modeling include SI, SIR, and SIS disease types.  EpiModel features an
API for extending these templates to address novel scientific research aims.
Full methods for EpiModel are detailed in Jenness et al. (2018,
<doi:10.18637/jss.v084.i08>).")
    (license license:gpl3)))

(define-public r-epimdr2
  (package
    (name "r-epimdr2")
    (version "1.0-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epimdr2" version))
              (sha256
               (base32
                "1lx1zibp2ziwdyj180jf9y5xczfs2xfkb5bw7q4f7i9p70jlqcrz"))))
    (properties `((upstream-name . "epimdr2")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-polspline
                             r-plotly
                             r-phaser
                             r-ggplot2
                             r-desolve))
    (home-page "<https://github.com/objornstad/epimdr2>")
    (synopsis
     "Functions and Data for \"Epidemics: Models and Data in R (2nd Edition)\"")
    (description
     "Functions, data sets and shiny apps for \"Epidemics: Models and Data in R (2nd
edition)\" by Ottar N. Bjornstad (2022, ISBN: 978-3-031-12055-8)
<https://link.springer.com/book/10.1007/978-3-319-97487-3>.  The package
contains functions to study the Susceptible-Exposed-Infected-Removed SEIR model,
spatial and age-structured Susceptible-Infected-Removed SIR models; time-series
SIR and chain-binomial stochastic models; catalytic disease models; coupled map
lattice models of spatial transmission and network models for social spread of
infection.  The package is also an advanced quantitative companion to the
Coursera Epidemics Massive Online Open Course
<https://www.coursera.org/learn/epidemics>.")
    (license license:gpl3)))

(define-public r-epimdr
  (package
    (name "r-epimdr")
    (version "0.6-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epimdr" version))
              (sha256
               (base32
                "1nxdlz7gl9vrha9iw92y0s9dmm101gkz0rsqxqg1rdxanr6hs6sh"))))
    (properties `((upstream-name . "epimdr")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-polspline r-desolve))
    (home-page "https://github.com/objornstad/epimdr")
    (synopsis "Functions and Data for \"Epidemics: Models and Data in R\"")
    (description
     "Functions, data sets and shiny apps for \"Epidemics: Models and Data in R\" by
Ottar N. Bjornstad (ISBN 978-3-319-97487-3)
<https://www.springer.com/gp/book/9783319974866>.  The package contains
functions to study the S(E)IR model, spatial and age-structured SIR models;
time-series SIR and chain-binomial stochastic models; catalytic disease models;
coupled map lattice models of spatial transmission and network models for social
spread of infection.  The package is also an advanced quantitative companion to
the coursera Epidemics Massive Online Open Course
<https://www.coursera.org/learn/epidemics>.")
    (license license:gpl3)))

(define-public r-epilps
  (package
    (name "r-epilps")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiLPS" version))
              (sha256
               (base32
                "0453vi4h988syd9jab0xmy19vl2m8z30jcymc1a1hcfpnw88hl8z"))))
    (properties `((upstream-name . "EpiLPS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-progress
                             r-mass
                             r-gridextra
                             r-ggplot2
                             r-epiestim
                             r-crayon
                             r-coda))
    (native-inputs (list r-knitr))
    (home-page "<https://github.com/oswaldogressani/EpiLPS>")
    (synopsis
     "Bayesian Tool for Fast and Flexible Estimation of the Reproduction Number")
    (description
     "Estimation of the instantaneous reproduction number with Laplacian-P-splines
following the methodology of Gressani et al.(2021)
<doi:10.1101/2021.12.02.21267189>.  The negative Binomial distribution is used
to model the time series of case counts.  Two methods are available for
inference : (1) a sampling-free approach based on a maximum a posteriori
calibration of the hyperparameter vector and (2) a fully stochastic approach
with a Metropolis-within-Gibbs algorithm and Langevin diffusions for efficient
sampling of the posterior distribution.")
    (license license:gpl3)))

(define-public r-epikit
  (package
    (name "r-epikit")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epikit" version))
              (sha256
               (base32
                "0b9kc7qr7nkafmak60pyj7hln19w4zp33pk5y48qmfsxgarl6pv3"))))
    (properties `((upstream-name . "epikit")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-scales
                             r-rlang
                             r-glue
                             r-forcats
                             r-dplyr
                             r-binom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/R4EPI/epikit")
    (synopsis "Miscellaneous Tools for the 'R4Epis' Project")
    (description
     "This package contains tools for formatting inline code, renaming redundant
columns, aggregating age categories, and calculating proportions with confidence
intervals.  This is part of the R4Epis project <https://r4epis.netlify.com>.")
    (license license:gpl3)))

(define-public r-epiinvert
  (package
    (name "r-epiinvert")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiInvert" version))
              (sha256
               (base32
                "0afmgzx7ryvwb8ajkm0v077lrnahac8g3jqkk86imx4101dfg70q"))))
    (properties `((upstream-name . "EpiInvert")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/lalvarezmat/EpiInvert")
    (synopsis "Variational Techniques in Epidemiology")
    (description
     "Using variational techniques we address some epidemiological problems as the
incidence curve decomposition by inverting the renewal equation as described in
Alvarez et al. (2021) <doi:10.1073/pnas.2105112118> and Alvarez et al. (2022)
<doi:10.3390/biology11040540> or the estimation of the functional relationship
between epidemiological indicators.  We also propose a learning method for the
short time forecast of the trend incidence curve as described in Morel et al.
(2022) <doi:10.1101/2022.11.05.22281904>.")
    (license license:gpl2+)))

(define-public r-epiilmct
  (package
    (name "r-epiilmct")
    (version "1.1.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiILMCT" version))
              (sha256
               (base32
                "1yjcjxf5m1qbb6p09g34wkr4q13g65ly11kxh95r22cdl85jmlq3"))))
    (properties `((upstream-name . "EpiILMCT")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-coda))
    (native-inputs (list gfortran))
    (home-page "https://github.com/waleedalmutiry/EpiILMCT/")
    (synopsis
     "Continuous Time Distance-Based and Network-Based Individual Level Models for Epidemics")
    (description
     "This package provides tools for simulating from continuous-time individual level
models of disease transmission, and carrying out infectious disease data
analyses with the same models.  The epidemic models considered are
distance-based and/or contact network-based models within
Susceptible-Infectious-Removed (SIR) or Susceptible-Infectious-Notified-Removed
(SINR) compartmental frameworks. <doi:10.18637/jss.v098.i10>.")
    (license license:gpl2+)))

(define-public r-epiilm
  (package
    (name "r-epiilm")
    (version "1.5.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiILM" version))
              (sha256
               (base32
                "0drs4qywx9axs7k5qk7sp5r3g8pykn4lqqbm0hxyl24r6b5l3d6b"))))
    (properties `((upstream-name . "EpiILM")))
    (build-system r-build-system)
    (propagated-inputs (list r-laplacesdemon r-coda r-adaptmcmc))
    (native-inputs (list gfortran))
    (home-page "https://github.com/waleedalmutiry/EpiILM")
    (synopsis
     "Spatial and Network Based Individual Level Models for Epidemics")
    (description
     "This package provides tools for simulating from discrete-time individual level
models for infectious disease data analysis.  This epidemic model class contains
spatial and contact-network based models with two disease types:
Susceptible-Infectious (SI) and Susceptible-Infectious-Removed (SIR).")
    (license license:gpl2+)))

(define-public r-epigraphdb
  (package
    (name "r-epigraphdb")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epigraphdb" version))
              (sha256
               (base32
                "11ja2r024a4sfk6xjhwn2mj4fz2msf6jx85w3cxr2hvp9sl3zgc9"))))
    (properties `((upstream-name . "epigraphdb")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-purrr
                             r-magrittr
                             r-jsonlite
                             r-httr
                             r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://mrcieu.github.io/epigraphdb-r/")
    (synopsis "Interface Package for the 'EpiGraphDB' Platform")
    (description
     "The interface package to access data from the EpiGraphDB
<https://epigraphdb.org> platform.  It provides easy access to the EpiGraphDB
platform with functions that query the corresponding REST endpoints on the API
<https://api.epigraphdb.org> and return the response data in the tibble data
frame format.")
    (license license:gpl3)))

(define-public r-epiflows
  (package
    (name "r-epiflows")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epiflows" version))
              (sha256
               (base32
                "09ri1p73ih0i08irc06ff169hi5vcl8bdi63b056kzxgmv17yqkp"))))
    (properties `((upstream-name . "epiflows")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-tibble
                             r-sp
                             r-leaflet
                             r-htmlwidgets
                             r-htmltools
                             r-ggplot2
                             r-ggmap
                             r-geosphere
                             r-epicontacts))
    (native-inputs (list r-knitr))
    (home-page "https://www.repidemicsconsortium.org/epiflows")
    (synopsis "Predicting Disease Spread from Flow Data")
    (description
     "This package provides functions and classes designed to handle and visualise
epidemiological flows between locations.  Also contains a statistical method for
predicting disease spread from flow data initially described in Dorigatti et al.
(2017) <doi:10.2807/1560-7917.ES.2017.22.28.30572>.  This package is part of the
RECON (<http://www.repidemicsconsortium.org/>) toolkit for outbreak analysis.")
    (license license:expat)))

(define-public r-epifitter
  (package
    (name "r-epifitter")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epifitter" version))
              (sha256
               (base32
                "104hl3b3951psi023hv95486ygcv9ilmqkzw96yygym7rhkaww9m"))))
    (properties `((upstream-name . "epifitter")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-minpack-lm
                             r-magrittr
                             r-knitr
                             r-ggplot2
                             r-dplyr
                             r-desolve
                             r-desctools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AlvesKS/epifitter")
    (synopsis "Analysis and Simulation of Plant Disease Progress Curves")
    (description
     "Analysis and visualization of plant disease progress curve data.  Functions for
fitting two-parameter population dynamics models (exponential, monomolecular,
logistic and Gompertz) to proportion data for single or multiple epidemics using
either linear or no-linear regression.  Statistical and visual outputs are
provided to aid in model selection.  Synthetic curves can be simulated for any
of the models given the parameters.  See Laurence V. Madden, Gareth Hughes, and
Frank van den Bosch (2007) <doi:10.1094/9780890545058> for further information
on the methods.")
    (license license:expat)))

(define-public r-epiestim
  (package
    (name "r-epiestim")
    (version "2.2-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiEstim" version))
              (sha256
               (base32
                "12zv1mlb0gqsvff1s0fvqgxqk42c7y9gz3h94mjmf1wbmhsjcqnf"))))
    (properties `((upstream-name . "EpiEstim")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape2
                             r-incidence
                             r-gridextra
                             r-ggplot2
                             r-fitdistrplus
                             r-coda
                             r-coarsedatatools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mrc-ide/EpiEstim")
    (synopsis
     "Estimate Time Varying Reproduction Numbers from Epidemic Curves")
    (description
     "Tools to quantify transmissibility throughout an epidemic from the analysis of
time series of incidence as described in Cori et al. (2013)
<doi:10.1093/aje/kwt133> and Wallinga and Teunis (2004)
<doi:10.1093/aje/kwh255>.")
    (license license:gpl2+)))

(define-public r-epidynamics
  (package
    (name "r-epidynamics")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiDynamics" version))
              (sha256
               (base32
                "0m6yay3r7dqih19f76wxwgq6dh9p1zmp5d9ilj9nd262q61jcy53"))))
    (properties `((upstream-name . "EpiDynamics")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-ggplot2 r-desolve))
    (home-page "https://github.com/oswaldosantos/EpiDynamics")
    (synopsis "Dynamic Models in Epidemiology")
    (description
     "Mathematical models of infectious diseases in humans and animals.  Both,
deterministic and stochastic models can be simulated and plotted.")
    (license license:gpl2+)))

(define-public r-epidm
  (package
    (name "r-epidm")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epidm" version))
              (sha256
               (base32
                "0ncjfhq45gs1w0kpkpdwfs43iccl6pq8yrc2999g3r5dsiw06lyq"))))
    (properties `((upstream-name . "epidm")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-stringi
                             r-readr
                             r-purrr
                             r-phonics
                             r-odbc
                             r-dbi
                             r-data-table))
    (home-page "https://github.com/alexbhatt/epidm")
    (synopsis "UK Epidemiological Data Management")
    (description
     "This package contains utilities and functions for the cleaning, processing and
management of patient level public health data for surveillance and analysis
held by the UK Health Security Agency, UKHSA.")
    (license license:gpl3+)))

(define-public r-epidisplay
  (package
    (name "r-epidisplay")
    (version "3.5.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epiDisplay" version))
              (sha256
               (base32
                "0430mwnaa0qamdyvmwkh37ic0kp4hq8mr5nxkc97mhhl7djw0y92"))))
    (properties `((upstream-name . "epiDisplay")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-nnet r-mass r-foreign))
    (home-page "https://cran.r-project.org/package=epiDisplay")
    (synopsis "Epidemiological Data Display Package")
    (description
     "Package for data exploration and result presentation.  Full epicalc package with
data management functions is available at <https://medipe.psu.ac.th/epicalc/>'.")
    (license license:gpl2+)))

(define-public r-epidata
  (package
    (name "r-epidata")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epidata" version))
              (sha256
               (base32
                "0v3s1vrf2iqh03rkkwrlz6mhpbsbjxkayrqdx04vrnja4i9ljshk"))))
    (properties `((upstream-name . "epidata")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tinytest
                             r-tidyr
                             r-stringi
                             r-rvest
                             r-readr
                             r-purrr
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (home-page "https://gitlab.com/hrbrmstr/epidata")
    (synopsis
     "Tools to Retrieve Economic Policy Institute Data Library Extracts")
    (description
     "The Economic Policy Institute (<https://www.epi.org/>) provides researchers,
media, and the public with easily accessible, up-to-date, and comprehensive
historical data on the American labor force.  It is compiled from Economic
Policy Institute analysis of government data sources.  Use it to research wages,
inequality, and other economic indicators over time and among demographic
groups.  Data is usually updated monthly.")
    (license (license:fsdg-compatible "AGPL"))))

(define-public r-epicurve
  (package
    (name "r-epicurve")
    (version "2.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiCurve" version))
              (sha256
               (base32
                "1z81zrg96hmgj2j37vwwg0bd84bq80ck3f704w9j6v0drckzh03j"))))
    (properties `((upstream-name . "EpiCurve")))
    (build-system r-build-system)
    (propagated-inputs (list r-timedate
                             r-tibble
                             r-scales
                             r-rcolorbrewer
                             r-isoweek
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/IamKDO/EpiCurve")
    (synopsis "Plot an Epidemic Curve")
    (description
     "This package creates simple or stacked epidemic curves for hourly, daily, weekly
or monthly outcome data.")
    (license license:lgpl3)))

(define-public r-epicontacttrace
  (package
    (name "r-epicontacttrace")
    (version "0.16.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EpiContactTrace" version))
              (sha256
               (base32
                "025zv1mskd3s71bn0fbaf88b36a5rmbpplv6lmiyp8rxrfk05vs9"))))
    (properties `((upstream-name . "EpiContactTrace")))
    (build-system r-build-system)
    (home-page "https://github.com/stewid/EpiContactTrace")
    (synopsis "Epidemiological Tool for Contact Tracing")
    (description
     "Routines for epidemiological contact tracing and visualisation of network of
contacts.")
    (license (license:fsdg-compatible "EUPL"))))

(define-public r-epicontacts
  (package
    (name "r-epicontacts")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epicontacts" version))
              (sha256
               (base32
                "07vnvfqm9vghmrjy3g1x3mz6qsf09qi04xq2nm9n4cgxjmbr0gia"))))
    (properties `((upstream-name . "epicontacts")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork r-threejs r-igraph r-dplyr
                             r-colorspace))
    (native-inputs (list r-knitr))
    (home-page "https://www.repidemicsconsortium.org/epicontacts/")
    (synopsis
     "Handling, Visualisation and Analysis of Epidemiological Contacts")
    (description
     "This package provides a collection of tools for representing epidemiological
contact data, composed of case line lists and contacts between cases.  Also
contains procedures for data handling, interactive graphics, and statistics.")
    (license license:gpl2+)))

(define-public r-epibasix
  (package
    (name "r-epibasix")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epibasix" version))
              (sha256
               (base32
                "0ivr51x37cbdryli9b4p4iq9v2c90zwmywrwdmg7ryq5vprvvbp0"))))
    (properties `((upstream-name . "epibasix")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=epibasix")
    (synopsis
     "Elementary Epidemiological Functions for Epidemiology and Biostatistics")
    (description
     "This package contains elementary tools for analysis of common epidemiological
problems, ranging from sample size estimation, through 2x2 contingency table
analysis and basic measures of agreement (kappa, sensitivity/specificity).
Appropriate print and summary statements are also written to facilitate
interpretation wherever possible.  Source code is 	commented throughout to
facilitate modification.  The target audience includes advanced undergraduate
and graduate students in epidemiology or biostatistics courses, and clinical
researchers.")
    (license license:gpl2+)))

(define-public r-eph
  (package
    (name "r-eph")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eph" version))
              (sha256
               (base32
                "12j8qmscsz381i9fs3slva2wl7pk7zxa38shaj4m595lswsixvi8"))))
    (properties `((upstream-name . "eph")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xml2
                             r-tidyverse
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rlang
                             r-readxl
                             r-readr
                             r-purrr
                             r-magrittr
                             r-leaflet
                             r-janitor
                             r-htmltools
                             r-glue
                             r-expss
                             r-dplyr
                             r-curl
                             r-attempt
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/holatam/eph")
    (synopsis
     "Argentina's Permanent Household Survey Data and Manipulation Utilities")
    (description
     "Tools to download and manipulate the Permanent Household Survey from Argentina
(EPH is the Spanish acronym for Permanent Household Survey).  e.g:
get_microdata() for downloading the datasets, get_poverty_lines() for
downloading the official poverty baskets, calculate_poverty() for the
calculation of stating if a household is in poverty or not, following the
official methodology.  organize_panels() is used to concatenate observations
from different periods, and organize_labels() adds the official labels to the
data.  The implemented methods are based on INDEC (2016)
<http://www.estadistica.ec.gba.gov.ar/dpe/images/SOCIEDAD/EPH_metodologia_22_pobreza.pdf>.
 As this package works with the argentinian Permanent Household Survey and its
main audience is from this country, the documentation was written in Spanish.")
    (license license:expat)))

(define-public r-epgmr
  (package
    (name "r-epgmr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EPGMr" version))
              (sha256
               (base32
                "1ii4lccv4hyydy3sd5l7c22pgx27x3mdml20sfbdj85pmpyab6q9"))))
    (properties `((upstream-name . "EPGMr")))
    (build-system r-build-system)
    (home-page "https://github.com/swampthingpaul/EPGMr")
    (synopsis "Implementation of the Everglades Phosphorus Gradient Model")
    (description
     "Everglades Phosphorus Gradient Model predicts variations in water-column P
concentration, peat accretion rate, and soil P concentration along a horizontal
gradient imposed by an external phosphorus load and sheet-flow conditions.
Potential biological responses are expressed in terms of marsh surface area
exceeding threshold criteria for water-column and soil phosphorus
concentrations.  More information of the model can be found at
<http://www.wwwalker.net/epgm/>.")
    (license license:gpl3)))

(define-public r-epcr
  (package
    (name "r-epcr")
    (version "0.9.9-11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ePCR" version))
              (sha256
               (base32
                "0bkvjvygdnzcc23sslgkcrx11mzwgsqss37lwnbr7rq0jp1sw46s"))))
    (properties `((upstream-name . "ePCR")))
    (build-system r-build-system)
    (propagated-inputs (list r-timeroc
                             r-survival
                             r-pracma
                             r-impute
                             r-hamlet
                             r-glmnet
                             r-bolstad2))
    (home-page "https://cran.r-project.org/package=ePCR")
    (synopsis "Ensemble Penalized Cox Regression for Survival Prediction")
    (description
     "The top-performing ensemble-based Penalized Cox Regression (ePCR) framework
developed during the DREAM 9.5 mCRPC Prostate Cancer Challenge
<https://www.synapse.org/ProstateCancerChallenge> presented in Guinney J, Wang
T, Laajala TD, et al. (2017) <doi:10.1016/S1470-2045(16)30560-5> is provided
here-in, together with the corresponding follow-up work.  While initially aimed
at modeling the most advanced stage of prostate cancer, metastatic
Castration-Resistant Prostate Cancer (mCRPC), the modeling framework has
subsequently been extended to cover also the non-metastatic form of advanced
prostate cancer (CRPC).  Readily fitted ensemble-based model S4-objects are
provided, and a simulated example dataset based on a real-life cohort is
provided from the Turku University Hospital, to illustrate the use of the
package.  Functionality of the ePCR methodology relies on constructing ensembles
of strata in patient cohorts and averaging over them, with each ensemble member
consisting of a highly optimized penalized/regularized Cox regression model.
Various cross-validation and other modeling schema are provided for constructing
novel model objects.")
    (license license:gpl2+)))

(define-public r-epcc
  (package
    (name "r-epcc")
    (version "1.4.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epcc" version))
              (sha256
               (base32
                "0j4cb17gvwsaacmhvm8qp5chr384kl7gj6089gjrc2hqi6kjr0rx"))))
    (properties `((upstream-name . "epcc")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rlang
                             r-rgdal
                             r-readxl
                             r-raster
                             r-proto
                             r-nls2
                             r-httr
                             r-ggplot2
                             r-formattable
                             r-desolve
                             r-cowplot))
    (home-page "https://github.com/Victor-Saldana/epcc")
    (synopsis "Simulating Populations of Ectotherms under Global Warming")
    (description
     "This package provides several functions that allow model and simulate the
effects of thermal sensitivity and the exposition to different trends in
environmental temperature on the abundance dynamics of ectotherms populations.
It allows an easy implementation of the possible consequences of warming at
global and local scales, constituting a useful tool for understanding the
extinction risk of populations. (VÃ­ctor SaldaÃ±a-NÃºÃ±ez, Fernando
CÃ³rdova-Lepe, & Felipe N. Moreno-GÃ³mez, 2021) <doi:10.5281/zenodo.5034087>.")
    (license license:gpl3)))

(define-public r-epanetreader
  (package
    (name "r-epanetreader")
    (version "0.7.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epanetReader" version))
              (sha256
               (base32
                "05pwa6z03qsjwr9pxpbxycsd21p7mf5j5ajyg4yaas5g100s1k8c"))))
    (properties `((upstream-name . "epanetReader")))
    (build-system r-build-system)
    (home-page "https://github.com/bradleyjeck/epanetReader")
    (synopsis "Read Epanet Files into R")
    (description
     "Reads water network simulation data in Epanet text-based .inp and .rpt formats
into R. Also reads results from Epanet-msx'.  Provides basic summary information
and plots.  The README file has a quick introduction.  See
<http://www2.epa.gov/water-research/epanet> for more information on the Epanet
software for modeling hydraulic and water quality behavior of water piping
systems.")
    (license license:expat)))

(define-public r-epanet2toolkit
  (package
    (name "r-epanet2toolkit")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epanet2toolkit" version))
              (sha256
               (base32
                "0ksb1cmjykmp0diic7xz5240d9n0sl6byp8rac3jpk3hb1p46r4d"))))
    (properties `((upstream-name . "epanet2toolkit")))
    (build-system r-build-system)
    (home-page "https://github.com/bradleyjeck/epanet2toolkit")
    (synopsis "Call 'EPANET' Functions to Simulate Pipe Networks")
    (description
     "Enables simulation of water piping networks using EPANET'.  The package provides
functions from the EPANET programmer's toolkit as R functions so that basic or
customized simulations can be carried out from R. The package uses EPANET
version 2.2 from Open Water Analytics
<https://github.com/OpenWaterAnalytics/EPANET/releases/tag/v2.2>.")
    (license license:expat)))

(define-public r-epandist
  (package
    (name "r-epandist")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epandist" version))
              (sha256
               (base32
                "0hxgbjns5bk82rgcmykxifnnxcnqdzmkimkkmpdif64zr5g3gjdg"))))
    (properties `((upstream-name . "epandist")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=epandist")
    (synopsis
     "Statistical Functions for the Censored and Uncensored Epanechnikov Distribution")
    (description
     "Analyzing censored variables usually requires the use of optimization
algorithms.  This package provides an alternative algebraic approach to the task
of determining the expected value of a random censored variable with a known
censoring point.  Likewise this approach allows for the determination of the
censoring point if the expected value is known.  These results are derived under
the assumption that the variable follows an Epanechnikov kernel distribution
with known mean and range prior to censoring.  Statistical functions related to
the uncensored Epanechnikov distribution are also provided by this package.")
    (license license:lgpl2.0+)))

(define-public r-epade
  (package
    (name "r-epade")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "epade" version))
              (sha256
               (base32
                "05g41lslw77v8r2914vpf92348hcyfx7xqbbwknfhl1xld9rk2iz"))))
    (properties `((upstream-name . "epade")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-plotrix r-hmisc))
    (home-page "https://cran.r-project.org/package=epade")
    (synopsis "Easy Plots")
    (description
     "This package provides a collection of nice plotting functions directly from a
data.frame with limited customisation possibilities.")
    (license license:gpl2+)))

(define-public r-eor
  (package
    (name "r-eor")
    (version "0.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eoR" version))
              (sha256
               (base32
                "0vn4s4af94n9h6x7z14qwpz94rgsd5m3mv55wva7x3h99ryhm83s"))))
    (properties `((upstream-name . "eoR")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.molgen.mpg.de/walke/eoR")
    (synopsis "Data Management Package (Exposure and Occurrence Data in R)")
    (description
     "This data management package provides some helper classes for publicly available
data sources (HMD, DESTATIS) in Demography.  Similar to ideas developed in the
Bioconductor project <https://bioconductor.org> we strive to encapsulate data in
easy to use S4 objects.  If original data is provided in a text file, the
resulting S4 object contains all information from that text file.  But the
information is somehow structured (header, footer, etc).  Further the classes
provide methods to make a subset for selected calendar years or selected
regions.  The resulting subset objects still contain the original header and
footer information.")
    (license license:gpl3)))

(define-public r-eoffice
  (package
    (name "r-eoffice")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eoffice" version))
              (sha256
               (base32
                "0nxyllragxn5bq28x37vkx16vi4y9af5nly1pslqrvvarl21ics4"))))
    (properties `((upstream-name . "eoffice")))
    (build-system r-build-system)
    (propagated-inputs (list r-rvg
                             r-r-devices
                             r-plotly
                             r-officer
                             r-magrittr
                             r-magick
                             r-htmlwidgets
                             r-ggplotify
                             r-ggplot2
                             r-flextable
                             r-dplyr
                             r-devemf
                             r-broom))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eoffice")
    (synopsis
     "Export or Graph and Tables to 'Microsoft' Office and Import Figures and Tables")
    (description
     "This package provides wrap functions to export and import graphics and data
frames in R to microsoft office.  And This package also provide write out
figures with lots of different formats.  Since people may work on the platform
without GUI support, the package also provide function to easily write out
figures to lots of different type of formats.  Now this package provide function
to extract colors from all types of figures and pdf files.")
    (license license:gpl2)))

(define-public r-envstats
  (package
    (name "r-envstats")
    (version "2.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnvStats" version))
              (sha256
               (base32
                "10axzd4458lwvjibkk3i1szpmnx1hnhair3ihclwfmh8nvaz19h9"))))
    (properties `((upstream-name . "EnvStats")))
    (build-system r-build-system)
    (propagated-inputs (list r-nortest r-mass r-ggplot2))
    (home-page "https://github.com/alexkowa/EnvStats")
    (synopsis
     "Package for Environmental Statistics, Including US EPA Guidance")
    (description
     "Graphical and statistical analyses of environmental data, with focus on
analyzing chemical concentrations and physical parameters, usually in the
context of mandated environmental monitoring.  Major environmental statistical
methods found in the literature and regulatory guidance documents, with
extensive help that explains what these methods do, how to use them, and where
to find them in the literature.  Numerous built-in data sets from regulatory
guidance documents and environmental statistics literature.  Includes scripts
reproducing analyses presented in the book \"EnvStats: An R Package for
Environmental Statistics\" (Millard, 2013, Springer, ISBN 978-1-4614-8455-4,
<https://link.springer.com/book/9781461484554>).")
    (license license:gpl3+)))

(define-public r-envstat
  (package
    (name "r-envstat")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envstat" version))
              (sha256
               (base32
                "07y4bprb9mi37d8pg6xr1x4rkgjza2iq5hpr8a1iv584sgbjl4ah"))))
    (properties `((upstream-name . "envstat")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-rstudioapi r-httr2 r-cli))
    (home-page "https://envstat.sellorm.com")
    (synopsis "Configurable Reporting on your External Compute Environment")
    (description
     "Runs a series of configurable tests against a user's compute environment.  This
can be used for checking that things like a specific directory or an environment
variable is available before you start an analysis.  Alternatively, you can use
the package's situation report when filing error reports with your compute
infrastructure.")
    (license license:expat)))

(define-public r-envoutliers
  (package
    (name "r-envoutliers")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envoutliers" version))
              (sha256
               (base32
                "1wgrrkkpkmf300qb56mq6nxigwnpq551sjxlk05lk3ckawx66srf"))))
    (properties `((upstream-name . "envoutliers")))
    (build-system r-build-system)
    (propagated-inputs (list r-robustbase
                             r-mass
                             r-lokern
                             r-ismev
                             r-ecp
                             r-changepoint
                             r-car))
    (home-page "https://cran.r-project.org/package=envoutliers")
    (synopsis "Methods for Identification of Outliers in Environmental Data")
    (description
     "Three semi-parametric methods for detection of outliers in environmental data
based on kernel regression and subsequent analysis of smoothing residuals.  The
first method (Campulova, Michalek, Mikuska and Bokal (2018) <DOI:
10.1002/cem.2997>) analyzes the residuals using changepoint analysis, the second
method is based on control charts (Campulova, Veselik and Michalek (2017) <DOI:
10.1016/j.apr.2017.01.004>) and the third method (Holesovsky, Campulova and
Michalek (2018) <DOI: 10.1016/j.apr.2017.06.005>) analyzes the residuals using
extreme value theory (Holesovsky, Campulova and Michalek (2018) <DOI:
10.1016/j.apr.2017.06.005>).")
    (license license:gpl2)))

(define-public r-envnj
  (package
    (name "r-envnj")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnvNJ" version))
              (sha256
               (base32
                "1wxb4zhhn7iahgsi7rg1vmfaa3vypifqx7kkcvmmgk0263z4sj5v"))))
    (properties `((upstream-name . "EnvNJ")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-seqinr
                             r-philentropy
                             r-phangorn
                             r-bio3d
                             r-ape))
    (home-page "https://cran.r-project.org/package=EnvNJ")
    (synopsis "Whole Genome Phylogenies Using Sequence Environments")
    (description
     "This package contains utilities for the analysis of protein sequences in a
phylogenetic context.  Allows the generation of phylogenetic trees base on
protein sequences in an alignment-independent way.  Two different methods have
been implemented.  One approach is based on the frequency analysis of n-grams,
previously described in Stuart et al. (2002)
<doi:10.1093/bioinformatics/18.1.100>.  The other approach is based on the
species-specific neighborhood preference around amino acids.  Features include
the conversion of a protein set into a vector reflecting these neighborhood
preferences, pairwise distances (dissimilarity) between these vectors, and the
generation of trees based on these distance matrices.")
    (license license:gpl2+)))

(define-public r-envnicher
  (package
    (name "r-envnicher")
    (version "1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnvNicheR" version))
              (sha256
               (base32
                "0hxx9wmzlw0clvdgdsy8msc78nvm81j3naxr57i7lqqa360sjy3a"))))
    (properties `((upstream-name . "EnvNicheR")))
    (build-system r-build-system)
    (propagated-inputs (list r-idpmisc))
    (home-page "https://cran.r-project.org/package=EnvNicheR")
    (synopsis "Niche Estimation")
    (description
     "This package provides a plot overlying the niche of multiple species is
obtained: 1) to determine the niche conditions which favor a higher species
richness, 2) to create a box plot with the range of environmental variables of
the species, 3) to obtain a list of species in an area of the niche selected by
the user and, 4) to estimate niche overlap among the species.")
    (license license:gpl2+)))

(define-public r-envnames
  (package
    (name "r-envnames")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envnames" version))
              (sha256
               (base32
                "1fkbid2x60m63dnrxrdq7im49spn8m70g1gd8nqjq3xlv642ianm"))))
    (properties `((upstream-name . "envnames")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mastropi/envnames")
    (synopsis "Keep Track of User-Defined Environment Names")
    (description
     "Set of functions to keep track and find objects in user-defined environments by
identifying environments by name --which cannot be retrieved with the built-in
function environmentName().  The package also provides functionality to obtain
simplified information about function calling chains and to get an object's
memory address.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-enviropra
  (package
    (name "r-enviropra")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnviroPRA" version))
              (sha256
               (base32
                "0yirh3vy7wap0qmm3kvjz9y68gcvp9i8qshv80wh8aijxwklpr8n"))))
    (properties `((upstream-name . "EnviroPRA")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncdist r-mass r-ksamples r-fitdistrplus))
    (home-page "https://cran.r-project.org/package=EnviroPRA")
    (synopsis "Environmental Probabilistic Risk Assessment Tools")
    (description
     "This package provides methods to perform a Probabilistic Environmental Risk
assessment from exposure to toxic substances - i.e.  USEPA (1997)
<https://www.epa.gov/risk/guiding-principles-monte-carlo-analysis> -.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-envirem
  (package
    (name "r-envirem")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envirem" version))
              (sha256
               (base32
                "0gffdj7jz61dlkznlk5a4w8fh72phfj3s9gnssb1z73jx82j34cw"))))
    (properties `((upstream-name . "envirem")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf r-rsaga r-raster r-palinsol r-knitr))
    (home-page "http://envirem.github.io")
    (synopsis "Generation of ENVIREM Variables")
    (description
     "Generation of bioclimatic rasters that are complementary to the typical 19
bioclim variables.")
    (license license:gpl2+)))

(define-public r-envir
  (package
    (name "r-envir")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envir" version))
              (sha256
               (base32
                "090s0idsdvg09gd8mjkbbfw6fvxj0mmfy3135wp5n7cjdf2qgp7n"))))
    (properties `((upstream-name . "envir")))
    (build-system r-build-system)
    (home-page "https://t-kalinowski.github.io/envir/")
    (synopsis "Manage R Environments Better")
    (description
     "This package provides a small set of functions for managing R environments, with
defaults designed to encourage usage patterns that scale well to larger code
bases.  It provides: import_from(), a flexible way to assign bindings that
defaults to the current environment; include(), a vectorized alternative to
base::source() that also default to the current environment; and attach_eval()
and attach_source(), a way to evaluate expressions in attached environments.
Together, these (and other) functions pair to provide a robust alternative to
base::library() and base::source().")
    (license license:gpl3)))

(define-public r-envipat
  (package
    (name "r-envipat")
    (version "2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enviPat" version))
              (sha256
               (base32
                "17qrly8fb6d7gk1xcg3273mykpwc9i7ghnvipp63fwx4cp25crzw"))))
    (properties `((upstream-name . "enviPat")))
    (build-system r-build-system)
    (home-page "https://www.envipat.eawag.ch/")
    (synopsis
     "Isotope Pattern, Profile and Centroid Calculation for Mass Spectrometry")
    (description
     "Fast and very memory-efficient calculation of isotope patterns, subsequent
convolution to theoretical envelopes (profiles) plus valley detection and
centroidization or intensoid calculation.  Batch processing, resolution
interpolation, wrapper, adduct calculations and molecular formula parsing.
Loos, M., Gerber, C., Corona, F., Hollender, J., Singer, H. (2015)
<doi:10.1021/acs.analchem.5b00941>.")
    (license license:gpl2)))

(define-public r-envigcms
  (package
    (name "r-envigcms")
    (version "0.6.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enviGCMS" version))
              (sha256
               (base32
                "01y3qqh99aclarglpdg8mb9iikzkm1w62mv93m22lm8ami25a372"))))
    (properties `((upstream-name . "enviGCMS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcolorbrewer r-mixtools r-data-table
                             r-biocparallel r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/yufree/enviGCMS")
    (synopsis "GC/LC-MS Data Analysis for Environmental Science")
    (description
     "Gas/Liquid Chromatography-Mass Spectrometer(GC/LC-MS) Data Analysis for
Environmental Science.  This package covered topics such molecular isotope
ratio, matrix effects and Short-Chain Chlorinated Paraffins analysis etc.  in
environmental analysis.")
    (license license:gpl2)))

(define-public r-envi
  (package
    (name "r-envi")
    (version "0.1.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envi" version))
              (sha256
               (base32
                "0j7mgqza3kf2bk1sia3f7rzqcig28r341nbqdji8nm4h2ijx0d57"))))
    (properties `((upstream-name . "envi")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-geom
                             r-sparr
                             r-sp
                             r-rocr
                             r-rgeos
                             r-raster
                             r-pls
                             r-iterators
                             r-future
                             r-foreach
                             r-fields
                             r-dorng
                             r-dofuture
                             r-cvauc
                             r-concaveman))
    (home-page "https://github.com/lance-waller-lab/envi")
    (synopsis
     "Environmental Interpolation using Spatial Kernel Density Estimation")
    (description
     "Estimates an ecological niche using occurrence data, covariates, and kernel
density-based estimation methods.  For a single species with presence and
absence data, the envi package uses the spatial relative risk function that is
estimated using the sparr package.  Details about the sparr package methods can
be found in the tutorial: Davies et al. (2018) <doi:10.1002/sim.7577>.  Details
about kernel density estimation can be found in J. F. Bithell (1990)
<doi:10.1002/sim.4780090616>.  More information about relative risk functions
using kernel density estimation can be found in J. F. Bithell (1991)
<doi:10.1002/sim.4780101112>.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-envexpind
  (package
    (name "r-envexpind")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnvExpInd" version))
              (sha256
               (base32
                "063f3c10a7k9j3f85xilj1s6dd9ky5sw8sbvhzkhg5hg92c9dpns"))))
    (properties `((upstream-name . "EnvExpInd")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-stringi
                             r-sp
                             r-rcurl
                             r-maptools
                             r-gstat
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/Spatial-R/EnvExpInd")
    (synopsis "Environmental Exposure on the Individual Level")
    (description
     "Tools for the assessment of the environmental exposure.  The package provides
three methods (nearest monitoring site, inverse distance weighted as described
in Li Wu (2017) <doi:10.1016/j.envint.2016.11.013>,and ordinary kriging) to
calculate the environmental exposure (e.g. air pollution) on the individual
level.")
    (license license:gpl3)))

(define-public r-enveomics-r
  (package
    (name "r-enveomics-r")
    (version "1.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enveomics.R" version))
              (sha256
               (base32
                "16c6w3nhv53yp72w8hss3s1lhhlbaiylcvkc93a83zzcpx37i23b"))))
    (properties `((upstream-name . "enveomics.R")))
    (build-system r-build-system)
    (propagated-inputs (list r-sn r-investr r-fitdistrplus))
    (home-page "http://enve-omics.ce.gatech.edu/enveomics/")
    (synopsis "Various Utilities for Microbial Genomics and Metagenomics")
    (description
     "This package provides a collection of functions for microbial ecology and other
applications of genomics and metagenomics.  Companion package for the Enveomics
Collection (Rodriguez-R, L.M. and Konstantinidis, K.T., 2016
<DOI:10.7287/peerj.preprints.1900v1>).")
    (license license:artistic2.0)))

(define-public r-envdocument
  (package
    (name "r-envdocument")
    (version "2.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envDocument" version))
              (sha256
               (base32
                "074m7adnasvys28kjdgj9071fi90vsl4yv5zvpxik4crlx098dlw"))))
    (properties `((upstream-name . "envDocument")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dgJacks0n/envDocument")
    (synopsis "Document the R Working Environment")
    (description
     "Prints out information about the R working environment (system, R version,loaded
and attached packages and versions) from a single function \"env_doc()\".
Optionally adds information on git repository, tags, commits and remotes (if
available).")
    (license license:gpl3+)))

(define-public r-envcpt
  (package
    (name "r-envcpt")
    (version "1.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnvCpt" version))
              (sha256
               (base32
                "1zv2x3svlqrfchr9j4bk2w2sx75zl4886pqk1c1sx5glqrkdbfki"))))
    (properties `((upstream-name . "EnvCpt")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-mass r-changepoint))
    (home-page "https://github.com/rkillick/EnvCpt/")
    (synopsis
     "Detection of Structural Changes in Climate and Environment Time Series")
    (description
     "Tools for automatic model selection and diagnostics for Climate and
Environmental data.  In particular the envcpt() function does automatic model
selection between a variety of trend, changepoint and autocorrelation models.
The envcpt() function should be your first port of call.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-envalysis
  (package
    (name "r-envalysis")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "envalysis" version))
              (sha256
               (base32
                "0xn98ffcr3106yzr6c1bkwyzc506n9d01bjm77x76a405k36x0az"))))
    (properties `((upstream-name . "envalysis")))
    (build-system r-build-system)
    (propagated-inputs (list r-lmtest r-ggplot2 r-drc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/zsteinmetz/envalysis")
    (synopsis "Miscellaneous Functions for Environmental Analyses")
    (description
     "Small toolbox for data analyses in environmental chemistry and ecotoxicology.
Provides, for example, calibration() to calculate calibration curves and
corresponding limits of detection (LODs) and limits of quantification (LOQs)
according to German DIN 32645 (2008).  texture() makes it easy to estimate soil
particle size distributions from hydrometer measurements (ASTM D422-63, 2007).")
    (license license:gpl3+)))

(define-public r-entrymodels
  (package
    (name "r-entrymodels")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "entrymodels" version))
              (sha256
               (base32
                "0fz7jzax12pzw47iry4amgg9z4z3z94kig6r5dhcqa84kq02294v"))))
    (properties `((upstream-name . "entrymodels")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=entrymodels")
    (synopsis "Estimate Entry Models")
    (description
     "Tools for measuring empirically the effects of entry in concentrated markets,
based in Bresnahan and Reiss (1991) <https://www.jstor.org/stable/2937655>.")
    (license license:expat)))

(define-public r-entropymcmc
  (package
    (name "r-entropymcmc")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EntropyMCMC" version))
              (sha256
               (base32
                "065djml9dmn5ahbgaljnshvhziwg61xciq6fzh76449x3wy6bg65"))))
    (properties `((upstream-name . "EntropyMCMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-rann r-mixtools))
    (home-page "https://cran.r-project.org/package=EntropyMCMC")
    (synopsis
     "MCMC Simulation and Convergence Evaluation using Entropy and Kullback-Leibler Divergence Estimation")
    (description
     "Tools for Markov Chain Monte Carlo (MCMC) simulation and performance analysis.
Simulate MCMC algorithms including adaptive MCMC, evaluate their convergence
rate, and compare candidate MCMC algorithms for a same target density, based on
entropy and Kullback-Leibler divergence criteria.  MCMC algorithms can be
simulated using provided functions, or imported from external codes.  This
package is based upon work starting with Chauveau, D. and Vandekerkhove, P.
(2013) <doi:10.1051/ps/2012004> and next articles.")
    (license license:gpl3+)))

(define-public r-entropyestimation
  (package
    (name "r-entropyestimation")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EntropyEstimation" version))
              (sha256
               (base32
                "13kb83lfpkw6yq687j0ci23yn5c9dqjibybyyaplk6jixy08lrvy"))))
    (properties `((upstream-name . "EntropyEstimation")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EntropyEstimation")
    (synopsis "Estimation of Entropy and Related Quantities")
    (description
     "This package contains methods for the estimation of Shannon's entropy, variants
of Renyi's entropy, mutual information, Kullback-Leibler divergence, and
generalized Simpson's indices.  The estimators used have a bias that decays
exponentially fast.")
    (license license:gpl3+)))

(define-public r-entropart
  (package
    (name "r-entropart")
    (version "1.6-11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "entropart" version))
              (sha256
               (base32
                "1ihxry6lbc1krcg9yf3qj3pp2ryj1kxrv5z4m3wapdkjn0nr9v1f"))))
    (properties `((upstream-name . "entropart")))
    (build-system r-build-system)
    (inputs (list pandoc))
    (propagated-inputs (list r-vegan
                             r-tibble
                             r-rlang
                             r-reshape2
                             r-ggpubr
                             r-ggplot2
                             r-entropyestimation
                             r-ape))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EricMarcon/entropart")
    (synopsis "Entropy Partitioning to Measure Diversity")
    (description
     "Measurement and partitioning of diversity, based on Tsallis entropy, following
Marcon and Herault (2015) <doi:10.18637/jss.v067.i08>.  entropart provides
functions to calculate alpha, beta and gamma diversity of communities, including
phylogenetic and functional diversity.  Estimation-bias corrections are
available.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ensurer
  (package
    (name "r-ensurer")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensurer" version))
              (sha256
               (base32
                "1gbbni73ayzcmzhxb88pz6xx418lqjbp37sdkggbrxcyhsxpdkid"))))
    (properties `((upstream-name . "ensurer")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/smbache/ensurer")
    (synopsis "Ensure Values at Runtime")
    (description
     "Add simple runtime contracts to R values.  These ensure that values fulfil
certain conditions and will raise appropriate errors if they do not.")
    (license license:expat)))

(define-public r-ensr
  (package
    (name "r-ensr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensr" version))
              (sha256
               (base32
                "18b81iswvby7k5akbfdyc6a8j1621d4d35hxmgjip5kyvf5cb3p8"))))
    (properties `((upstream-name . "ensr")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-ggplot2 r-data-table))
    (home-page "https://github.com/dewittpe/ensr")
    (synopsis "Elastic Net SearcheR")
    (description
     "Elastic net regression models are controlled by two parameters, lambda, a
measure of shrinkage, and alpha, a metric defining the model's location on the
spectrum between ridge and lasso regression.  glmnet provides tools for
selecting lambda via cross validation but no automated methods for selection of
alpha.  Elastic Net SearcheR automates the simultaneous selection of both lambda
and alpha.  Developed, in part, with support by NICHD R03 HD094912.")
    (license license:gpl2)))

(define-public r-ensmodelvis
  (package
    (name "r-ensmodelvis")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensModelVis" version))
              (sha256
               (base32
                "06nhk616h32225p65ms4k9ia5qwd7kngpa4z6hxzn9nzmiirma60"))))
    (properties `((upstream-name . "ensModelVis")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-rlang
                             r-magrittr
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/domijan/ensModelVis")
    (synopsis "Visualisations for Model Ensembles")
    (description
     "Displays for model fits of multiple models and their ensembles.  For
classification models, the plots are heatmaps, for regression, scatterplots.")
    (license license:expat)))

(define-public r-ensembletax
  (package
    (name "r-ensembletax")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensembleTax" version))
              (sha256
               (base32
                "1kxkv8b6qgrbylp16hlh53h3sr079jqhypv1fk4g5fr349zrjgv3"))))
    (properties `((upstream-name . "ensembleTax")))
    (build-system r-build-system)
    (propagated-inputs (list r-usethis
                             r-stringr
                             r-reshape2
                             r-ggplot2
                             r-dplyr
                             r-decipher
                             r-biostrings))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ensembleTax")
    (synopsis "Ensemble Taxonomic Assignments of Amplicon Sequencing Data")
    (description
     "This package creates ensemble taxonomic assignments of amplicon sequencing data
in R using outputs of multiple taxonomic assignment algorithms and/or reference
databases.  Includes flexible algorithms for mapping taxonomic nomenclatures
onto one another and for computing ensemble taxonomic assignments.")
    (license license:expat)))

(define-public r-ensembler
  (package
    (name "r-ensembler")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensembleR" version))
              (sha256
               (base32
                "0xvq1jlsp7gsk46i847nfvadxwlh09gi2rgwss2wf2xmh1855ray"))))
    (properties `((upstream-name . "ensembleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ensembleR")
    (synopsis "Ensemble Models in R")
    (description
     "This package provides functions to use ensembles of several machine learning
models specified in caret package.")
    (license license:gpl2)))

(define-public r-ensemblepp
  (package
    (name "r-ensemblepp")
    (version "1.0-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensemblepp" version))
              (sha256
               (base32
                "08k7v61p2sgr07dklabl0g7apsn9da60sfb14gfrwipwi8bsd4pv"))))
    (properties `((upstream-name . "ensemblepp")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ensemblepp")
    (synopsis "Ensemble Postprocessing Data Sets")
    (description
     "Data sets for the chapter \"Ensemble Postprocessing with R\" of the book Stephane
Vannitsem, Daniel S. Wilks, and Jakob W. Messner (2018) \"Statistical
Postprocessing of Ensemble Forecasts\", Elsevier, 362pp.  These data sets contain
temperature and precipitation ensemble weather forecasts and corresponding
observations at Innsbruck/Austria.  Additionally, a demo with the full code of
the book chapter is provided.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ensemblepenreg
  (package
    (name "r-ensemblepenreg")
    (version "0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnsemblePenReg" version))
              (sha256
               (base32
                "00218yh0vzlb5g94asq5nz4i8blppskdzz9fl4c0v3fld3kxz2md"))))
    (properties `((upstream-name . "EnsemblePenReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-glmnet r-ensemblebase))
    (home-page "https://cran.r-project.org/package=EnsemblePenReg")
    (synopsis
     "Extensible Classes and Methods for Penalized-Regression-Based Integration of Base Learners")
    (description
     "Extending the base classes and methods of EnsembleBase package for
Penalized-Regression-based (Ridge and Lasso) integration of base learners.
Default implementation uses cross-validation error to choose the optimal lambda
(shrinkage parameter) for the final predictor.  The package takes advantage of
the file method provided in EnsembleBase package for writing estimation objects
to disk in order to circumvent RAM bottleneck.  Special save and load methods
are provided to allow estimation objects to be saved to permanent files on disk,
and to be loaded again into temporary files in a later R session.  Users and
developers can extend the package by extending the generic methods and classes
provided in EnsembleBase package as well as this package.")
    (license license:gpl2+)))

(define-public r-ensemblepcreg
  (package
    (name "r-ensemblepcreg")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnsemblePCReg" version))
              (sha256
               (base32
                "0pii3w9dyv1505s92b03i42yiwq5vwa051674yzqxijj2mz7pvdh"))))
    (properties `((upstream-name . "EnsemblePCReg")))
    (build-system r-build-system)
    (propagated-inputs (list r-ensemblebase))
    (home-page "https://cran.r-project.org/package=EnsemblePCReg")
    (synopsis
     "Extensible Package for Principal-Component-Regression-Based Heterogeneous Ensemble Meta-Learning")
    (description
     "Extends the base classes and methods of EnsembleBase package for
Principal-Components-Regression-based (PCR) integration of base learners.
Default implementation uses cross-validation error to choose the optimal number
of PC components for the final predictor.  The package takes advantage of the
file method provided in EnsembleBase package for writing estimation objects to
disk in order to circumvent RAM bottleneck.  Special save and load methods are
provided to allow estimation objects to be saved to permanent files on disk, and
to be loaded again into temporary files in a later R session.  Users and
developers can extend the package by extending the generic methods and classes
provided in EnsembleBase package as well as this package.")
    (license license:gpl2+)))

(define-public r-ensemblemos
  (package
    (name "r-ensemblemos")
    (version "0.8.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensembleMOS" version))
              (sha256
               (base32
                "16d8030zfdwifqrh45vz3gf5n0bix0mhsmsnydgjq1fghdklcmyx"))))
    (properties `((upstream-name . "ensembleMOS")))
    (build-system r-build-system)
    (propagated-inputs (list r-evd r-ensemblebma r-chron))
    (home-page "https://cran.r-project.org/package=ensembleMOS")
    (synopsis "Ensemble Model Output Statistics")
    (description
     "Ensemble Model Output Statistics to create probabilistic forecasts from ensemble
forecasts and weather observations.")
    (license license:gpl2+)))

(define-public r-ensemblecv
  (package
    (name "r-ensemblecv")
    (version "0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnsembleCV" version))
              (sha256
               (base32
                "1r9nmi2278lrwp5lpxhi78k10x8a5f5rh9xf1z5gfkc0bmpkhkvz"))))
    (properties `((upstream-name . "EnsembleCV")))
    (build-system r-build-system)
    (propagated-inputs (list r-ensemblebase))
    (home-page "https://cran.r-project.org/package=EnsembleCV")
    (synopsis
     "Extensible Package for Cross-Validation-Based Integration of Base Learners")
    (description
     "Extends the base classes and methods of EnsembleBase package for
cross-validation-based integration of base learners.  Default implementation
calculates average of repeated CV errors, and selects the base learner /
configuration with minimum average error.  The package takes advantage of the
file method provided in EnsembleBase package for writing estimation objects to
disk in order to circumvent RAM bottleneck.  Special save and load methods are
provided to allow estimation objects to be saved to permanent files on disk, and
to be loaded again into temporary files in a later R session.  The package can
be extended, e.g. by adding variants of the current implementation.")
    (license license:gpl2+)))

(define-public r-ensemblebma
  (package
    (name "r-ensemblebma")
    (version "5.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ensembleBMA" version))
              (sha256
               (base32
                "1bb2f7pkwq4dza8fkag3802yflzcsfma4cnwhfw1qgg227sfy8d9"))))
    (properties `((upstream-name . "ensembleBMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-chron))
    (home-page "https://cran.r-project.org/package=ensembleBMA")
    (synopsis
     "Probabilistic Forecasting using Ensembles and Bayesian Model Averaging")
    (description
     "Bayesian Model Averaging to create probabilistic forecasts from ensemble
forecasts and weather observations
<https://stat.uw.edu/sites/default/files/files/reports/2007/tr516.pdf>.")
    (license license:gpl2+)))

(define-public r-ensemblebase
  (package
    (name "r-ensemblebase")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnsembleBase" version))
              (sha256
               (base32
                "1wbkh89gz6m2m9hxbcymsymz3b7pynhdwfyq4qg3h4wn8409anxy"))))
    (properties `((upstream-name . "EnsembleBase")))
    (build-system r-build-system)
    (propagated-inputs (list r-randomforest
                             r-nnet
                             r-kknn
                             r-glmnet
                             r-gbm
                             r-foreach
                             r-e1071
                             r-doparallel
                             r-bartmachine))
    (home-page "https://cran.r-project.org/package=EnsembleBase")
    (synopsis
     "Extensible Package for Parallel, Batch Training of Base Learners for Ensemble Modeling")
    (description
     "Extensible S4 classes and methods for batch training of regression and
classification algorithms such as Random Forest, Gradient Boosting Machine,
Neural Network, Support Vector Machines, K-Nearest Neighbors, Penalized
Regression (L1/L2), and Bayesian Additive Regression Trees.  These algorithms
constitute a set of base learners', which can subsequently be combined together
to form ensemble predictions.  This package provides cross-validation wrappers
to allow for downstream application of ensemble integration techniques,
including best-error selection.  All base learner estimation objects are
retained, allowing for repeated prediction calls without the need for
re-training.  For large problems, an option is provided to save estimation
objects to disk, along with prediction methods that utilize these objects.  This
allows users to train and predict with large ensembles of base learners without
being constrained by system RAM.")
    (license license:gpl2+)))

(define-public r-enscat
  (package
    (name "r-enscat")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnsCat" version))
              (sha256
               (base32
                "1rp354fqq2ihjrmqw9j1qdy86md80xml5sgh2zbyabw3zddmgyn2"))))
    (properties `((upstream-name . "EnsCat")))
    (build-system r-build-system)
    (propagated-inputs (list r-seqinr r-ggplot2 r-ggdendro r-dendextend))
    (home-page "https://github.com/jlp2duke/EnsCat/wiki/How-To-with-Examples")
    (synopsis "Clustering of Categorical Data")
    (description
     "An implementation of the clustering methods of categorical data discussed in
Amiri, S., Clarke, B., and Clarke, J. (2015).  Clustering categorical data via
ensembling dissimilarity matrices.  Preprint <arXiv:1506.07930>.")
    (license license:gpl2+)))

(define-public r-enrichwith
  (package
    (name "r-enrichwith")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enrichwith" version))
              (sha256
               (base32
                "05fhx323ani86wdxbjp8dgw4d1iq4kr1887646w072a6iq93bwhm"))))
    (properties `((upstream-name . "enrichwith")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ikosmidis/enrichwith")
    (synopsis "Methods to Enrich R Objects with Extra Components")
    (description
     "This package provides the \"enrich\" method to enrich list-like R objects with
new, relevant components.  The current version has methods for enriching objects
of class family', link-glm', lm', glm and betareg'.  The resulting objects
preserve their class, so all methods associated with them still apply.  The
package also provides the enriched_glm function that has the same interface as
glm but results in objects of class enriched_glm'.  In addition to the usual
components in a `glm` object, enriched_glm objects carry an object-specific
simulate method and functions to compute the scores, the observed and expected
information matrix, the first-order bias, as well as model densities,
probabilities, and quantiles at arbitrary parameter values.  The package can
also be used to produce customizable source code templates for the structured
implementation of methods to compute new components and enrich arbitrary
objects.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-enrichintersect
  (package
    (name "r-enrichintersect")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnrichIntersect" version))
              (sha256
               (base32
                "0kh7r7bn0bqcyn5z396mxqgz2qxd4hg44bx7vq4ja233wda2g3wa"))))
    (properties `((upstream-name . "EnrichIntersect")))
    (build-system r-build-system)
    (propagated-inputs (list r-webshot2
                             r-networkd3
                             r-jsonlite
                             r-htmlwidgets
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ocbe-uio/EnrichIntersect")
    (synopsis "Enrichment Analysis and Intersecting Sankey Diagram")
    (description
     "This package provides a flexible tool for enrichment analysis based on
user-defined sets.  It allows users to perform over-representation analysis of
the custom sets among any specified ranked feature list, hence making enrichment
analysis applicable to various types of data from different scientific fields.
EnrichIntersect also enables an interactive means to visualize identified
associations based on, for example, the mix-lasso model (Zhao et al. (2022)
<doi:10.1016/j.isci.2022.104767>) or similar methods.")
    (license license:expat)))

(define-public r-enpls
  (package
    (name "r-enpls")
    (version "6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enpls" version))
              (sha256
               (base32
                "12088v9xnj5b3dlakqz1hbzxz4mdai7xi7s2fpx8lj3y3lx7znmb"))))
    (properties `((upstream-name . "enpls")))
    (build-system r-build-system)
    (propagated-inputs (list r-spls
                             r-reshape2
                             r-pls
                             r-plotly
                             r-ggplot2
                             r-foreach
                             r-doparallel))
    (native-inputs (list r-knitr))
    (home-page "https://nanx.me/enpls/")
    (synopsis "Ensemble Partial Least Squares Regression")
    (description
     "An algorithmic framework for measuring feature importance, outlier detection,
model applicability domain evaluation, and ensemble predictive modeling with
(sparse) partial least squares regressions.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-enmtools
  (package
    (name "r-enmtools")
    (version "1.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ENMTools" version))
              (sha256
               (base32
                "1sm64c9d5ph8sp5lzkzkd93iy8hls73xfshvjgnmqmd6zh4xp70g"))))
    (properties `((upstream-name . "ENMTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random
                             r-spatstat-geom
                             r-sp
                             r-rgeos
                             r-rgdal
                             r-raster
                             r-magrittr
                             r-lhs
                             r-knitr
                             r-gridextra
                             r-ggpubr
                             r-ggplot2
                             r-forcats
                             r-enmeval
                             r-dismo))
    (home-page "https://cran.r-project.org/package=ENMTools")
    (synopsis
     "Analysis of Niche Evolution using Niche and Distribution Models")
    (description
     "Constructing niche models and analyzing patterns of niche evolution.  Acts as an
interface for many popular modeling algorithms, and allows users to conduct
Monte Carlo tests to address basic questions in evolutionary ecology and
biogeography.  Warren, D.L., R.E. Glor, and M. Turelli (2008)
<doi:10.1111/j.1558-5646.2008.00482.x> Glor, R.E., and D.L. Warren (2011)
<doi:10.1111/j.1558-5646.2010.01177.x> Warren, D.L., R.E. Glor, and M. Turelli
(2010) <doi:10.1111/j.1600-0587.2009.06142.x> Cardillo, M., and D.L. Warren
(2016) <doi:10.1111/geb.12455> D.L. Warren, L.J. Beaumont, R. Dinnage, and J.B.
Baumgartner (2019) <doi:10.1111/ecog.03900>.")
    (license license:gpl2)))

(define-public r-enmsdmx
  (package
    (name "r-enmsdmx")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enmSdmX" version))
              (sha256
               (base32
                "1j0yz5s7c7sk8sk6scb389py64r6f3fqbxq0a1bi1z4ddzmiaviw"))))
    (properties `((upstream-name . "enmSdmX")))
    (build-system r-build-system)
    (propagated-inputs (list r-terra
                             r-sf
                             r-scales
                             r-randomforest
                             r-omnibus
                             r-mumin
                             r-mgcv
                             r-maxnet
                             r-ks
                             r-gbm
                             r-foreach
                             r-doparallel
                             r-dismo
                             r-boot))
    (home-page "https://github.com/adamlilith/enmSdmX")
    (synopsis "Species Distribution Modeling and Ecological Niche Modeling")
    (description
     "This package implements species distribution modeling and ecological niche
modeling, including: bias correction, spatial cross-validation, model
evaluation, raster interpolation, biotic \"velocity\" (speed and direction of
movement of a \"mass\" represented by a raster), interpolating across a time
series of rasters, and use of spatially imprecise records.  The heart of the
package is a set of \"training\" functions which automatically optimize model
complexity based number of available occurrences.  These algorithms include
MaxEnt, MaxNet, boosted regression trees/gradient boosting machines, generalized
additive models, generalized linear models, natural splines, and random forests.
 To enhance interoperability with other modeling packages, no new classes are
created.  The package works with PROJ6 geodetic objects and coordinate reference
systems.")
    (license license:expat)))

(define-public r-enmeval
  (package
    (name "r-enmeval")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ENMeval" version))
              (sha256
               (base32
                "0h9wikxs01xhpkp1khhxnnqvg4fgmdvh37jh15nz7i4xilx1ffab"))))
    (properties `((upstream-name . "ENMeval")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-testthat
                             r-sp
                             r-rlang
                             r-raster
                             r-rangemodelmetadata
                             r-maxnet
                             r-magrittr
                             r-glmnet
                             r-ggplot2
                             r-foreach
                             r-dplyr
                             r-dosnow
                             r-doparallel
                             r-dismo))
    (home-page "https://cran.r-project.org/package=ENMeval")
    (synopsis "Automated Tuning and Evaluations of Ecological Niche Models")
    (description
     "Runs ecological niche models over all combinations of user-defined settings
(i.e., tuning), performs cross validation to evaluate models, and returns data
tables to aid in selection of optimal model settings that balance
goodness-of-fit and model complexity.  Also has functions to partition data
spatially (or not) for cross validation, to plot multiple visualizations of
results, to run null models to estimate significance and effect sizes of
performance metrics, and to calculate niche overlap between model predictions,
among others.  The package was originally built for Maxent models (Phillips et
al.  2006, Phillips et al.  2017), but the current version allows possible
extensions for any modeling algorithm.  The extensive vignette, which guides
users through most package functionality but unfortunately has a file size too
big for CRAN, can be found here on the package's Github Pages website:
<https://jamiemkass.github.io/ENMeval/articles/ENMeval-2.0.0-vignette.html>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-engsoccerdata
  (package
    (name "r-engsoccerdata")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "engsoccerdata" version))
              (sha256
               (base32
                "06fdgjgnk4lwshrkd0jad411x5nz9sxlri9fdhxrf2dr2hik4l8q"))))
    (properties `((upstream-name . "engsoccerdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-magrittr r-dplyr))
    (home-page "https://cran.r-project.org/package=engsoccerdata")
    (synopsis "English and European Soccer Results 1871-2016")
    (description
     "Analyzing English & European soccer results data from 1871-2016.")
    (license license:gpl2+)))

(define-public r-engrexpt
  (package
    (name "r-engrexpt")
    (version "0.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EngrExpt" version))
              (sha256
               (base32
                "0zclvckj2i7j4kfs58hcjcl722vl2y6dcnjz238cjfgwv279gqhp"))))
    (properties `((upstream-name . "EngrExpt")))
    (build-system r-build-system)
    (propagated-inputs (list r-lattice))
    (home-page "https://cran.r-project.org/package=EngrExpt")
    (synopsis
     "Data sets from \"Introductory Statistics for Engineering Experimentation\"")
    (description
     "Datasets from Nelson, Coffin and Copeland \"Introductory Statistics for
Engineering Experimentation\" (Elsevier, 2003) with sample code.")
    (license license:gpl2+)))

(define-public r-enetlts
  (package
    (name "r-enetlts")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enetLTS" version))
              (sha256
               (base32
                "1lah9ai9skshz0rq3r1smvy69j443m22h1dihl42gy2568998q4v"))))
    (properties `((upstream-name . "enetLTS")))
    (build-system r-build-system)
    (propagated-inputs (list r-robusthd
                             r-robustbase
                             r-reshape
                             r-glmnet
                             r-ggplot2
                             r-cvtools))
    (home-page "https://cran.r-project.org/package=enetLTS")
    (synopsis
     "Robust and Sparse Methods for High Dimensional Linear and Binary and Multinomial Regression")
    (description
     "Fully robust versions of the elastic net estimator are introduced for linear and
binary and multinomial regression, in particular high dimensional data.  The
algorithm searches for outlier free subsets on which the classical elastic net
estimators can be applied.  A reweighting step is added to improve the
statistical efficiency of the proposed estimators.  Selecting appropriate tuning
parameters for elastic net penalties are done via cross-validation.")
    (license license:gpl3+)))

(define-public r-enerscape
  (package
    (name "r-enerscape")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enerscape" version))
              (sha256
               (base32
                "0m4dalrm11pyxxbcfsq9mcblm35v77vxyryal4p9mnv7pc4fc352"))))
    (properties `((upstream-name . "enerscape")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rgeos
                             r-rgdal
                             r-raster
                             r-matrix
                             r-gdistance))
    (home-page "https://cran.r-project.org/package=enerscape")
    (synopsis "Compute Energy Landscapes")
    (description
     "Compute energy landscapes using a digital elevation model raster and body mass
of animals.  Vignette available at:
<https://emilio-berti.github.io/enerscape.html>.")
    (license license:gpl3)))

(define-public r-energyr
  (package
    (name "r-energyr")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "energyr" version))
              (sha256
               (base32
                "0gjw2cvpvhyywxlx3vfkhlh7zjwig46z1zwdc01zxwflvdx3z40n"))))
    (properties `((upstream-name . "energyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgooglemaps))
    (home-page "https://github.com/paulgovan/energyr")
    (synopsis
     "Data Published by the United States Federal Energy Regulatory Commission")
    (description
     "Data published by the United States Federal Energy Regulatory Commission
including electric company financial data, natural gas company financial data,
hydropower plant data, liquified natural gas plant data, oil company financial
data natural gas company financial data, and natural gas storage field data.")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-energyonlinecpm
  (package
    (name "r-energyonlinecpm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EnergyOnlineCPM" version))
              (sha256
               (base32
                "1a3wvclqdwcvq5inhliwjnd7xzqbjvzs8h8ncy6qlhjq6s5n7nm8"))))
    (properties `((upstream-name . "EnergyOnlineCPM")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-energy))
    (home-page "https://sites.google.com/site/EnergyOnlineCPM/")
    (synopsis
     "Distribution Free Multivariate Control Chart Based on Energy Test")
    (description
     "This package provides a function for distribution free control chart based on
the change point model, for multivariate statistical process control.  The main
constituent of the chart is the energy test that focuses on the discrepancy
between empirical characteristic functions of two random vectors.  This new
control chart highlights in three aspects.  Firstly, it is distribution free,
requiring no knowledge of the random processes.  Secondly, this control chart
can monitor mean and variance simultaneously.  Thirdly it is devised for
multivariate time series which is more practical in real data application.
Fourthly, it is designed for online detection (Phase II), which is central for
real time surveillance of stream data.  For more information please refer to O.
Okhrin and Y.F. Xu (2017)
<https://github.com/YafeiXu/working_paper/raw/master/CPM102.pdf>.")
    (license license:gpl3+)))

(define-public r-endtoend
  (package
    (name "r-endtoend")
    (version "2.29")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "endtoend" version))
              (sha256
               (base32
                "0dqzh2blb2h8ngchvfvnzx0gmilvx9ydvzqwfy4d9f58ixybn4d9"))))
    (properties `((upstream-name . "endtoend")))
    (build-system r-build-system)
    (propagated-inputs (list r-pastecs r-ggplot2))
    (home-page "https://cran.r-project.org/package=endtoend")
    (synopsis "Transmissions and Receptions in an End to End Network")
    (description
     "Computes the expectation of the number of transmissions and receptions
considering an End-to-End transport model with limited number of retransmissions
per packet.  It provides theoretical results and also estimated values based on
Monte Carlo simulations.  It is also possible to consider random data and ACK
probabilities.")
    (license license:gpl2+)))

(define-public r-endoswitch
  (package
    (name "r-endoswitch")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "endoSwitch" version))
              (sha256
               (base32
                "1cj4skk317ppnayk1ph63vll49vs74fljc25cn1iviwgjq64ly0k"))))
    (properties `((upstream-name . "endoSwitch")))
    (build-system r-build-system)
    (propagated-inputs (list r-msm r-maxlik r-data-table))
    (home-page "https://github.com/cbw1243/endoSwitch")
    (synopsis "Endogenous Switching Regression Models")
    (description
     "Maximum likelihood estimation of endogenous switching regression models from
Heckman (1979) <doi:10.2307/1912352> and estimation of treatment effects.")
    (license license:gpl2+)))

(define-public r-endorse
  (package
    (name "r-endorse")
    (version "1.6.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "endorse" version))
              (sha256
               (base32
                "16cbqg3z71c36j2zzw3xr09p6kpjwim7610sss1ayjh3xs0isa2l"))))
    (properties `((upstream-name . "endorse")))
    (build-system r-build-system)
    (propagated-inputs (list r-coda))
    (home-page "https://github.com/SensitiveQuestions/endorse/")
    (synopsis
     "Bayesian Measurement Models for Analyzing Endorsement Experiments")
    (description
     "Fit the hierarchical and non-hierarchical Bayesian measurement models proposed
by Bullock, Imai, and Shapiro (2011) <DOI:10.1093/pan/mpr031> to analyze
endorsement experiments.  Endorsement experiments are a survey methodology for
eliciting truthful responses to sensitive questions.  This methodology is
helpful when measuring support for socially sensitive political actors such as
militant groups.  The model is fitted with a Markov chain Monte Carlo algorithm
and produces the output containing draws from the posterior distribution.")
    (license license:gpl2+)))

(define-public r-endogenous
  (package
    (name "r-endogenous")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "endogenous" version))
              (sha256
               (base32
                "079fmfxl9gf080zq5m1ixmgry9dawg2y6ixbfyc5da5jxf3zk9h8"))))
    (properties `((upstream-name . "endogenous")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=endogenous")
    (synopsis "Classical Simultaneous Equation Models")
    (description
     "Likelihood-based approaches to estimate linear regression parameters and
treatment effects in the presence of endogeneity.  Specifically, this package
includes James Heckman's classical simultaneous equation models-the sample
selection model for outcome selection bias and hybrid model with structural
shift for endogenous treatment.  For more information, see the seminal paper of
Heckman (1978) <DOI:10.3386/w0177> in which the details of these models are
provided.  This package accommodates repeated measures on subjects with a
working independence approach.  The hybrid model further accommodates treatment
effect modification.")
    (license license:gpl2)))

(define-public r-endogeneity
  (package
    (name "r-endogeneity")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "endogeneity" version))
              (sha256
               (base32
                "1dmb3gnkb6nxvcyzh7vhh0ra8164b337ir7higc5d3dmmssn81yy"))))
    (properties `((upstream-name . "endogeneity")))
    (build-system r-build-system)
    (propagated-inputs (list r-statmod
                             r-rcpparmadillo
                             r-rcpp
                             r-pbivnorm
                             r-maxlik
                             r-mass
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=endogeneity")
    (synopsis "Recursive Two-Stage Models to Address Endogeneity")
    (description
     "Various recursive two-stage models to address the endogeneity issue of treatment
variables in observational study or mediators in experiments.  The details of
the models are discussed in Peng (2022) <doi:10.1287/isre.2022.1113>.")
    (license license:gpl3+)))

(define-public r-encryptr
  (package
    (name "r-encryptr")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "encryptr" version))
              (sha256
               (base32
                "01gsimhrb9c7k5d9h5dbvm4h9i7fc9vzi8wgqb5f191ki27fsw9w"))))
    (properties `((upstream-name . "encryptr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-readr
                             r-purrr
                             r-openssl
                             r-knitr
                             r-dplyr))
    (home-page "https://github.com/SurgicalInformatics/encryptr")
    (synopsis
     "Easily Encrypt and Decrypt Data Frame/Tibble Columns or Files using RSA Public/Private Keys")
    (description
     "It is important to ensure that sensitive data is protected.  This
straightforward package is aimed at the end-user.  Strong RSA encryption using a
public/private key pair is used to encrypt data frame or tibble columns.  A
public key can be shared to allow others to encrypt data to be sent to you.
This is particularly aimed a healthcare settings so patient data can be
pseudonymised.")
    (license license:expat)))

(define-public r-encryptedrmd
  (package
    (name "r-encryptedrmd")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "encryptedRmd" version))
              (sha256
               (base32
                "0agd5lqrmdi50r9fl25njwsvg91nqsvj4h6c639vfhxx7p9y9nfk"))))
    (properties `((upstream-name . "encryptedRmd")))
    (build-system r-build-system)
    (propagated-inputs (list r-sodium r-rmarkdown r-readr))
    (home-page "https://github.com/dirkschumacher/encryptedRmd")
    (synopsis "Encrypt Html Reports Using 'Libsodium'")
    (description
     "Create encrypted html files that are fully self contained and do not require any
additional software.  Using the package you can encrypt arbitrary html files and
also directly create encrypted rmarkdown html reports.")
    (license license:expat)))

(define-public r-encode
  (package
    (name "r-encode")
    (version "0.3.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "encode" version))
              (sha256
               (base32
                "04zwclmqasbx54m77wqfr9jg4axhkkqnykaxv3if8lnr46fl3zyc"))))
    (properties `((upstream-name . "encode")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=encode")
    (synopsis "Represent Ordered Lists and Pairs as Strings")
    (description
     "Interconverts between ordered lists and compact string notation.  Useful for
capturing code lists, and pair-wise codes and decodes, for text storage.
Analogous to factor levels and labels.  Generics encode() and decode() perform
interconversion, while codes() and decodes() extract components of an encoding.
The function encoded() checks whether something is interpretable as an encoding.
 If a vector has an encoded guide attribute, as_factor() uses it to coerce to
factor.")
    (license license:gpl3)))

(define-public r-enchange
  (package
    (name "r-enchange")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eNchange" version))
              (sha256
               (base32
                "07vdi05fr6mynb86haas21izdcjiagw14p1h8n0qr1hb3klvs8n5"))))
    (properties `((upstream-name . "eNchange")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp
                             r-iterators
                             r-hawkes
                             r-foreach
                             r-doparallel
                             r-acdm))
    (home-page "https://cran.r-project.org/package=eNchange")
    (synopsis "Ensemble Methods for Multiple Change-Point Detection")
    (description
     "This package implements a segmentation algorithm for multiple change-point
detection in univariate time series using the Ensemble Binary Segmentation of
Korkas (2020) <arXiv:2003.03649>.")
    (license license:gpl2+)))

(define-public r-encdna
  (package
    (name "r-encdna")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EncDNA" version))
              (sha256
               (base32
                "0wy2cmcvyqjhg5mqbvdzmihfv8swx7ym2n9mjdqgx0kgnc7k614y"))))
    (properties `((upstream-name . "EncDNA")))
    (build-system r-build-system)
    (propagated-inputs (list r-biostrings))
    (home-page "https://cran.r-project.org/package=EncDNA")
    (synopsis "Encoding of Nucleotide Sequences into Numeric Feature Vectors")
    (description
     "We describe fifteen different splice site sequence encoding schemes that have
been used in earlier studies for mapping of splice site sequences into numeric
feature vectors.  These encoding schemes will also be helpful for transforming
other nucleotide sequences into numeric forms, provided they are of equal
length.  These encoding schemes will help the computational biologist working in
the field of classification (binary or multiclass) or prediction involving
nucleic acid sequences of equal length.")
    (license license:gpl2+)))

(define-public r-enc
  (package
    (name "r-enc")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "enc" version))
              (sha256
               (base32
                "16x8cckw0ah2yfczvv4j1jy4f8m23fkac38fz068964sv4l8z645"))))
    (properties `((upstream-name . "enc")))
    (build-system r-build-system)
    (home-page "https://github.com/krlmlr/enc")
    (synopsis "Portable Tools for 'UTF-8' Character Data")
    (description
     "This package implements an S3 class for storing UTF-8 strings, based on regular
character vectors.  Also contains routines to portably read and write UTF-8
encoded text files, to convert all strings in an object to UTF-8', and to create
character vectors with various encodings.")
    (license license:gpl3)))

(define-public r-emur
  (package
    (name "r-emur")
    (version "2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emuR" version))
              (sha256
               (base32
                "1i133lnjn5yjy26r25xfhny6410lp8jj23jpn54znbyc560w2c9r"))))
    (properties `((upstream-name . "emuR")))
    (build-system r-build-system)
    (propagated-inputs (list r-wrassp
                             r-v8
                             r-uuid
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shiny
                             r-rstudioapi
                             r-rsqlite
                             r-rlang
                             r-readr
                             r-purrr
                             r-mime
                             r-jsonlite
                             r-httr
                             r-httpuv
                             r-dplyr
                             r-dbi
                             r-cli
                             r-base64enc))
    (home-page "https://github.com/IPS-LMU/emuR")
    (synopsis "Main Package of the EMU Speech Database Management System")
    (description
     "An R package that provides the EMU Speech Database Management System (EMU-SDMS)
with database management, data extraction, data preparation and data
visualization facilities.  See <https://ips-lmu.github.io/The-EMU-SDMS-Manual/>
for more details.")
    (license license:gpl2+)))

(define-public r-emulator
  (package
    (name "r-emulator")
    (version "1.2-21")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emulator" version))
              (sha256
               (base32
                "0iikf6yinkqcgdnxx6v5kzfllhq3ppl75ym48vlcbnvkwv0v4l4v"))))
    (properties `((upstream-name . "emulator")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/RobinHankin/emulator")
    (synopsis "Bayesian Emulation of Computer Programs")
    (description
     "Allows one to estimate the output of a computer program, as a function of the
input parameters, without actually running it.  The computer program is assumed
to be a Gaussian process, whose parameters are estimated using Bayesian
techniques that give a PDF of expected program output.  This PDF is conditional
on a training set of runs, each consisting of a point in parameter space and the
model output at that point.  The emphasis is on complex codes that take weeks or
months to run, and that have a large number of undetermined input parameters;
many climate prediction models fall into this class.  The emulator essentially
determines Bayesian posterior estimates of the PDF of the output of a model,
conditioned on results from previous runs and a user-specified prior linear
model.  The package includes functionality to evaluate quadratic forms
efficiently.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-emt
  (package
    (name "r-emt")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMT" version))
              (sha256
               (base32
                "07c25nw8n6294f7q1axwraqp4x2p5dprgd8f9sldn2w6jslzvvc8"))))
    (properties `((upstream-name . "EMT")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EMT")
    (synopsis
     "Exact Multinomial Test: Goodness-of-Fit Test for Discrete Multivariate Data")
    (description
     "Goodness-of-fit tests for discrete multivariate data.  It is tested if a given
observation is likely to have occurred under the assumption of an ab-initio
model.  Monte Carlo methods are provided to make the package capable of solving
high-dimensional problems.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-emstreer
  (package
    (name "r-emstreer")
    (version "3.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emstreeR" version))
              (sha256
               (base32
                "1rfgw9inkxg81ky31r51a8fc5nvwalrjp2nkx4p24l5k622fwmjb"))))
    (properties `((upstream-name . "emstreeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-scatterplot3d r-mlpack r-ggplot2 r-bbmisc))
    (home-page "https://cran.r-project.org/package=emstreeR")
    (synopsis
     "Tools for Fast Computing and Plotting Euclidean Minimum Spanning Trees")
    (description
     "Fast and easily computes an Euclidean Minimum Spanning Tree (EMST) from data,
relying on the R API for mlpack - the C++ Machine Learning Library (Curtin et.
al., 2013).  emstreeR uses the Dual-Tree Boruvka (March, Ram, Gray, 2010,
<doi:10.1145/1835804.1835882>), which is theoretically and empirically the
fastest algorithm for computing an EMST. This package also provides functions
and an S3 method for readily plotting Minimum Spanning Trees (MST) using either
the style of the base', scatterplot3d', or ggplot2 libraries.")
    (license license:bsd-3)))

(define-public r-emss
  (package
    (name "r-emss")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMSS" version))
              (sha256
               (base32
                "0zkr2xfvwlqxcfj59801vm54l38agipbkd9qgq6jkmqkdbkfv3yr"))))
    (properties `((upstream-name . "EMSS")))
    (build-system r-build-system)
    (propagated-inputs (list r-sampleselection r-mvtnorm))
    (home-page "https://github.com/SangkyuStat/EMSS")
    (synopsis
     "Some EM-Type Estimation Methods for the Heckman Selection Model")
    (description
     "Some EM-type algorithms to estimate parameters for the well-known Heckman
selection model are provided in the package.  Such algorithms are as follow:
ECM(Expectation/Conditional Maximization), ECM(NR)(the Newton-Raphson method is
adapted to the ECM) and ECME(Expectation/Conditional Maximization Either).
Since the algorithms are based on the EM algorithm, they also have EMâs main
advantages, namely, stability and ease of implementation.  Further details and
explanations of the algorithms can be found in Zhao et al. (2020) <doi:
10.1016/j.csda.2020.106930>.")
    (license license:gpl2)))

(define-public r-emsnm
  (package
    (name "r-emsnm")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMSNM" version))
              (sha256
               (base32
                "0rhaadzhq9jfpnwxfqcsb3yz96rqlwkm165k5n5jxzwxpg1rg2n0"))))
    (properties `((upstream-name . "EMSNM")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EMSNM")
    (synopsis "EM Algorithm for Sigmoid Normal Model")
    (description
     "It provides a method based on EM algorithm to estimate the parameter of a
mixture model, Sigmoid-Normal Model, where the samples come from several normal
distributions (also call them subgroups) whose mean is determined by co-variable
Z and coefficient alpha while the variance are homogeneous.  Meanwhile, the
subgroup each item belongs to is determined by co-variables X and coefficient
eta through Sigmoid link function which is the extension of Logistic Link
function.  It uses bootstrap to estimate the standard error of parameters.  When
sample is indeed separable, removing estimation with abnormal sigma, the
estimation of alpha is quite well.  I used this method to explore the subgroup
structure of HIV patients and it can be used in other domains where exists
subgroup structure.")
    (license license:gpl2+)))

(define-public r-emsc
  (package
    (name "r-emsc")
    (version "0.9.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMSC" version))
              (sha256
               (base32
                "0mk7plkp1mfgi6krxn90vyah4x42960wh9v8k81wvxhyg67wc0ml"))))
    (properties `((upstream-name . "EMSC")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma))
    (home-page "https://github.com/khliland/EMSC/")
    (synopsis "Extended Multiplicative Signal Correction")
    (description
     "Background correction of spectral like data.  Handles variations in scaling,
polynomial baselines, interferents, constituents and replicate variation.
Parameters for corrections are stored for further analysis, and spectra are
corrected accordingly.")
    (license license:gpl2)))

(define-public r-emsaov
  (package
    (name "r-emsaov")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMSaov" version))
              (sha256
               (base32
                "1hpvwimhkl7za5s8j9n4a8883vy89jrxrhlh0k3cfprnndh4zz05"))))
    (properties `((upstream-name . "EMSaov")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny))
    (home-page "https://cran.r-project.org/package=EMSaov")
    (synopsis "The Analysis of Variance with EMS")
    (description
     "This package provides the analysis of variance table including the expected mean
squares (EMS) for various types of experimental design.  When some variables are
random effects or we use special experimental design such as nested design,
repeated-measures design, or split-plot design, it is not easy to find the
appropriate test, especially denominator for F-statistic which depends on EMS.")
    (license license:gpl2+)))

(define-public r-ems
  (package
    (name "r-ems")
    (version "1.3.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ems" version))
              (sha256
               (base32
                "0xg4c6yhrnq5pfz94i1ys1bdqfz12h0wcs86fz4nm4pqfdbh41cc"))))
    (properties `((upstream-name . "ems")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival r-rms r-boot))
    (home-page "https://cran.r-project.org/package=ems")
    (synopsis
     "Epimed Solutions Collection for Data Editing, Analysis, and Benchmark of Health Units")
    (description
     "Collection of functions related to benchmark with prediction models for data
analysis and editing of clinical and epidemiological data.")
    (license license:gpl2+)))

(define-public r-emplik2
  (package
    (name "r-emplik2")
    (version "1.32")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emplik2" version))
              (sha256
               (base32
                "0d4fzyxa7kynxgx8187vqxnb25kv1m1pkawxdpng6nfaiy76w67m"))))
    (properties `((upstream-name . "emplik2")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=emplik2")
    (synopsis
     "Empirical Likelihood Ratio Test for Two Samples with Censored Data")
    (description
     "Calculates the p-value for a mean-type hypothesis (or multiple mean-type
hypotheses) based on two samples with possible censored data.")
    (license license:gpl2+)))

(define-public r-empiricalcalibration
  (package
    (name "r-empiricalcalibration")
    (version "3.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EmpiricalCalibration" version))
              (sha256
               (base32
                "11kam8scb5hbp6bfk41xwjfmrwnvwaba2xksjsw1rdlrfbljs8p1"))))
    (properties `((upstream-name . "EmpiricalCalibration")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-rcpp r-gridextra r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://ohdsi.github.io/EmpiricalCalibration/")
    (synopsis
     "Routines for Performing Empirical Calibration of Observational Study Estimates")
    (description
     "Routines for performing empirical calibration of observational study estimates.
By using a set of negative control hypotheses we can estimate the empirical null
distribution of a particular observational study setup.  This empirical null
distribution can be used to compute a calibrated p-value, which reflects the
probability of observing an estimated effect size when the null hypothesis is
true taking both random and systematic error into account.  A similar approach
can be used to calibrate confidence intervals, using both negative and positive
controls.  For more details, see Schuemie et al. (2013) <doi:10.1002/sim.5925>
and Schuemie et al. (2018) <doi:10.1073/pnas.1708282114>.")
    (license license:asl2.0)))

(define-public r-empichar
  (package
    (name "r-empichar")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "empichar" version))
              (sha256
               (base32
                "1hcl6wbf4saxxp54j2w67csv6nzfgc3f3wdd9lk9grmkxsaab4rx"))))
    (properties `((upstream-name . "empichar")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=empichar")
    (synopsis
     "Evaluates the Empirical Characteristic Function for Multivariate Samples")
    (description
     "Evaluates the empirical characteristic function of univariate and multivariate
samples.  This package uses RcppArmadillo for fast evaluation.  It is also
possible to export the code to be used in other packages at C++ level.")
    (license license:expat)))

(define-public r-empeaksr
  (package
    (name "r-empeaksr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMpeaksR" version))
              (sha256
               (base32
                "1f8s6p3h5594aajrvrx8iv5x8m97xbc1pynsrk6i13aw5r73ysb1"))))
    (properties `((upstream-name . "EMpeaksR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EMpeaksR")
    (synopsis "Conducting the Peak Fitting Based on the EM Algorithm")
    (description
     "The peak fitting of spectral data is performed by using the frame work of EM
algorithm.  We adapted the EM algorithm for the peak fitting of spectral data
set by considering the weight of the intensity corresponding to the measurement
energy steps (Matsumura, T., Nagamura, N., Akaho, S., Nagata, K., & Ando, Y.
(2019 and 2021) <doi:10.1080/14686996.2019.1620123> and
<doi:10.1080/27660400.2021.1899449>.  The package efficiently estimates the
parameters of Gaussian mixture model during iterative calculation between E-step
and M-step, and the parameters are converged to a local optimal solution.  This
package can support the investigation of peak shift with two advantages: (1) a
large amount of data can be processed at high speed; and (2) stable and
automatic calculation can be easily performed.")
    (license license:expat)))

(define-public r-emp
  (package
    (name "r-emp")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMP" version))
              (sha256
               (base32
                "0piagbxk8siagmvzqv2bh12g1y0hy3c0vkxpddlmp7gm3i304rpi"))))
    (properties `((upstream-name . "EMP")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr))
    (home-page "https://cran.r-project.org/package=EMP")
    (synopsis "Expected Maximum Profit Classification Performance Measure")
    (description
     "This package provides functions for estimating EMP (Expected Maximum Profit
Measure) in Credit Risk Scoring and Customer Churn Prediction, according to
Verbraken et al (2013, 2014) <DOI:10.1109/TKDE.2012.50>,
<DOI:10.1016/j.ejor.2014.04.001>.")
    (license license:gpl3+)))

(define-public r-emov
  (package
    (name "r-emov")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emov" version))
              (sha256
               (base32
                "04w0bjyxvfb4ky573byp7j9b7x4gqycr5pgpnsl6rzag00zsf45a"))))
    (properties `((upstream-name . "emov")))
    (build-system r-build-system)
    (home-page "https://github.com/schw4b/emov")
    (synopsis
     "Eye Movement Analysis Package for Fixation and Saccade Detection")
    (description
     "Fixation and saccade detection in eye movement recordings.  This package
implements a dispersion-based algorithm (I-DT) proposed by Salvucci & Goldberg
(2000) which detects fixation duration and position.")
    (license license:gpl3)))

(define-public r-emon
  (package
    (name "r-emon")
    (version "1.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emon" version))
              (sha256
               (base32
                "19khjjpyxvzhzihqq15w02l5v5ryyvxlklz1ch2gkmqcpnvyga32"))))
    (properties `((upstream-name . "emon")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-mass))
    (home-page "https://cran.r-project.org/package=emon")
    (synopsis "Tools for Environmental and Ecological Survey Design")
    (description
     "Statistical tools for environmental and ecological surveys.  Simulation-based
power and precision analysis; detection probabilities from different survey
designs; visual fast count estimation.")
    (license license:gpl3)))

(define-public r-emoji
  (package
    (name "r-emoji")
    (version "15.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emoji" version))
              (sha256
               (base32
                "1xscypzz17a7nrajnl7isy2nrm9cyr97l0mi9vp0daqvzgyfajba"))))
    (properties `((upstream-name . "emoji")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-stringr r-glue))
    (home-page "https://emilhvitfeldt.github.io/emoji/")
    (synopsis "Data and Function to Work with Emojis")
    (description
     "This package contains data about emojis with relevant metadata, and functions to
work with emojis when they are in strings.")
    (license license:expat)))

(define-public r-emoa
  (package
    (name "r-emoa")
    (version "0.5-0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emoa" version))
              (sha256
               (base32
                "0rkr4d4fyqxmsrlbzar27z97qkw4cl1dkvfnhbdwpgg9fi1cixmz"))))
    (properties `((upstream-name . "emoa")))
    (build-system r-build-system)
    (home-page "http://www.statistik.tu-dortmund.de/~olafm/software/emoa/")
    (synopsis "Evolutionary Multiobjective Optimization Algorithms")
    (description
     "Collection of building blocks for the design and analysis of evolutionary
multiobjective optimization algorithms.")
    (license license:gpl2)))

(define-public r-emmreml
  (package
    (name "r-emmreml")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMREML" version))
              (sha256
               (base32
                "0qwj4jlfhppjxwcjldh49b6idnagazrxybaid3k2c269wvxwvddq"))))
    (properties `((upstream-name . "EMMREML")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://cran.r-project.org/package=EMMREML")
    (synopsis "Fitting Mixed Models with Known Covariance Structures")
    (description
     "The main functions are emmreml', and emmremlMultiKernel'.  emmreml solves a
mixed model with known covariance structure using the EMMA algorithm.
emmremlMultiKernel is a wrapper for emmreml to handle multiple random components
with known covariance structures.  The function emmremlMultivariate solves a
multivariate gaussian mixed model with known covariance structure using the ECM
algorithm.")
    (license license:gpl2)))

(define-public r-emmli
  (package
    (name "r-emmli")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMLi" version))
              (sha256
               (base32
                "1b36kyzvrdljmkysggv8jyaip78pj32ms0xhj2y568hd419lkh2p"))))
    (properties `((upstream-name . "EMMLi")))
    (build-system r-build-system)
    (home-page "https://github.com/timcdlucas/EMMLi")
    (synopsis "Maximum Likelihood Approach to the Analysis of Modularity")
    (description
     "Fit models of modularity to morphological landmarks.  Perform model selection on
results.  Fit models with a single within-module correlation or with separate
within-module correlations fitted to each module.")
    (license license:expat)))

(define-public r-emmixssl
  (package
    (name "r-emmixssl")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMIXSSL" version))
              (sha256
               (base32
                "1z8mqh4d0vlxhk2mvpxwypr5labra3z4xsvpm4li1v4hga791h0v"))))
    (properties `((upstream-name . "EMMIXSSL")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm))
    (home-page "https://cran.r-project.org/package=EMMIXSSL")
    (synopsis
     "Semi-Supervised Gaussian Mixture Model with a Missing-Data Mechanism")
    (description
     "The algorithm of semi-supervised learning based on finite Gaussian mixture
models with a missing-data mechanism is designed for a fitting g-class Gaussian
mixture model via maximum likelihood (ML).  It is proposed to treat the labels
of the unclassified features as missing-data and to introduce a framework for
their missing as in the pioneering work of Rubin (1976) for missing in
incomplete data analysis.  This dependency in the missingness pattern can be
leveraged to provide additional information about the optimal classifier as
specified by Bayesâ rule.")
    (license license:gpl3)))

(define-public r-emmixmfa
  (package
    (name "r-emmixmfa")
    (version "2.0.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMIXmfa" version))
              (sha256
               (base32
                "06lfmpw908chhzx512anqacixvvx3y02wm1n4wmpb890rd85n11r"))))
    (properties `((upstream-name . "EMMIXmfa")))
    (build-system r-build-system)
    (home-page "https://github.com/suren-rathnayake/EMMIXmfa")
    (synopsis "Mixture Models with Component-Wise Factor Analyzers")
    (description
     "We provide functions to fit finite mixtures of multivariate normal or
t-distributions to data with various factor analytic structures adopted for the
covariance/scale matrices.  The factor analytic structures available include
mixtures of factor analyzers and mixtures of common factor analyzers.  The
latter approach is so termed because the matrix of factor loadings is common to
components before the component-specific rotation of the component factors to
make them white noise.  Note that the component-factor loadings are not common
after this rotation.  Maximum likelihood estimators of model parameters are
obtained via the Expectation-Maximization algorithm.  See descriptions of the
algorithms used in McLachlan GJ, Peel D (2000) <doi:10.1002/0471721182.ch8>
McLachlan GJ, Peel D (2000) <ISBN:1-55860-707-2> McLachlan GJ, Peel D, Bean RW
(2003) <doi:10.1016/S0167-9473(02)00183-4> McLachlan GJ, Bean RW, Ben-Tovim
Jones L (2007) <doi:10.1016/j.csda.2006.09.015> Baek J, McLachlan GJ, Flack LK
(2010) <doi:10.1109/TPAMI.2009.149> Baek J, McLachlan GJ (2011)
<doi:10.1093/bioinformatics/btr112> McLachlan GJ, Baek J, Rathnayake SI (2011)
<doi:10.1002/9781119995678.ch9>.")
    (license license:gpl2+)))

(define-public r-emmixgene
  (package
    (name "r-emmixgene")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMIXgene" version))
              (sha256
               (base32
                "0a5q78s9y6ba1641lrv87kglg39x9wbk5xg7ihzbpl4adrb5sz4f"))))
    (properties `((upstream-name . "EMMIXgene")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales
                             r-reshape
                             r-rcpparmadillo
                             r-rcpp
                             r-mclust
                             r-ggplot2
                             r-bh))
    (home-page "https://cran.r-project.org/package=EMMIXgene")
    (synopsis
     "Mixture Model-Based Approach to the Clustering of Microarray Expression Data")
    (description
     "This package provides unsupervised selection and clustering of microarray data
using mixture models.  Following the methods described in McLachlan, Bean and
Peel (2002) <doi:10.1093/bioinformatics/18.3.413> a subset of genes are selected
based one the likelihood ratio statistic for the test of one versus two
components when fitting mixtures of t-distributions to the expression data for
each gene.  The dimensionality of this gene subset is further reduced through
the use of mixtures of factor analyzers, allowing the tissue samples to be
clustered by fitting mixtures of normal distributions.")
    (license license:gpl3+)))

(define-public r-emmageo
  (package
    (name "r-emmageo")
    (version "0.9.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMMAgeo" version))
              (sha256
               (base32
                "1wz4zw45xfqbk589cpd188j7619h2ar2czfkisil9x8ksijfixls"))))
    (properties `((upstream-name . "EMMAgeo")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-matrixstats r-limsolve r-gparotation
                             r-catools))
    (home-page "https://cran.r-project.org/package=EMMAgeo")
    (synopsis "End-Member Modelling of Grain-Size Data")
    (description
     "End-member modelling analysis of grain-size data is an approach to unmix a data
set's underlying distributions and their contribution to the data set.  EMMAgeo
provides deterministic and robust protocols for that purpose.")
    (license license:gpl3)))

(define-public r-emli
  (package
    (name "r-emli")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMLI" version))
              (sha256
               (base32
                "0zwbbxsmkyrgmva5h8l78f181nz5asc7dpdcmajvj2y3yl1rb278"))))
    (properties `((upstream-name . "EMLI")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EMLI")
    (synopsis
     "Computationally Efficient Maximum Likelihood Identification of Linear Dynamical Systems")
    (description
     "This package provides implementations of computationally efficient maximum
likelihood parameter estimation algorithms for models that represent linear
dynamical systems.  Currently, one such algorithm is implemented for the
one-dimensional cumulative structural equation model with shock-error output
measurement equation and assumptions of normality and independence.  The
corresponding scientific paper is yet to be published, therefore the relevant
reference will be provided later.")
    (license license:gpl2)))

(define-public r-emleloglin
  (package
    (name "r-emleloglin")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eMLEloglin" version))
              (sha256
               (base32
                "087zw48lykls2jcsmpqd5jkrlpr0j423snp00liszjhdpdh59saq"))))
    (properties `((upstream-name . "eMLEloglin")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolveapi))
    (home-page "https://cran.r-project.org/package=eMLEloglin")
    (synopsis "Fitting log-Linear Models in Sparse Contingency Tables")
    (description
     "Log-linear modeling is a popular method for the analysis of contingency table
data.  When the table is sparse, the data can fall on the boundary of the convex
support, and we say that \"the MLE does not exist\" in the sense that some
parameters cannot be estimated.  However, an extended MLE always exists, and a
subset of the original parameters will be estimable.  The eMLEloglin package
determines which sampling zeros contribute to the non-existence of the MLE.
These problematic zero cells can be removed from the contingency table and the
model can then be fit (as far as is possible) using the glm() function.")
    (license license:gpl2+)))

(define-public r-emld
  (package
    (name "r-emld")
    (version "0.5.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emld" version))
              (sha256
               (base32
                "0cvnfvzskvpcqzs6fwrpjcqrc6yrfciliy9jj0c9h4iyag0g0b9b"))))
    (properties `((upstream-name . "emld")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml r-xml2 r-jsonlite r-jsonld))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/emld/")
    (synopsis "Ecological Metadata as Linked Data")
    (description
     "This is a utility for transforming Ecological Metadata Language ('EML') files
into JSON-LD and back into EML. Doing so creates a list-based representation of
EML in R, so that EML data can easily be manipulated using standard R tools.
This makes this package an effective backend for other R'-based tools working
with EML. By abstracting away the complexity of XML Schema, developers can build
around native R list objects and not have to worry about satisfying many of the
additional constraints of set by the schema (such as element ordering, which is
handled automatically).  Additionally, the JSON-LD representation enables the
use of developer-friendly JSON parsing and serialization that may facilitate the
use of EML in contexts outside of R, as well as the informatics-friendly
serializations such as RDF and SPARQL queries.")
    (license license:expat)))

(define-public r-eml
  (package
    (name "r-eml")
    (version "2.0.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EML" version))
              (sha256
               (base32
                "1k2chfz6qixa6jsikqgilqp8j49mcshn725ck1h77bacfxfhf7za"))))
    (properties `((upstream-name . "EML")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-uuid
                             r-rmarkdown
                             r-jsonlite
                             r-jqr
                             r-emld
                             r-dplyr
                             r-digest))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/EML/")
    (synopsis "Read and Write Ecological Metadata Language Files")
    (description
     "Work with Ecological Metadata Language ('EML') files.  EML is a widely used
metadata standard in the ecological and environmental sciences, described in
Jones et al. (2006), <doi:10.1146/annurev.ecolsys.37.091305.110031>.")
    (license license:expat)))

(define-public r-emistatr
  (package
    (name "r-emistatr")
    (version "1.2.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EmiStatR" version))
              (sha256
               (base32
                "1cwzzkynhnpjd1slnifdmkrshfpv99ryilxj27f98kwgbnb6i81a"))))
    (properties `((upstream-name . "EmiStatR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-lattice r-foreach r-doparallel))
    (home-page "https://cran.r-project.org/package=EmiStatR")
    (synopsis
     "Emissions and Statistics in R for Wastewater and Pollutants in Combined Sewer Systems")
    (description
     "This package provides a fast and parallelised calculator to estimate combined
wastewater emissions.  It supports the planning and design of urban drainage
systems, without the requirement of extensive simulation tools.  The EmiStatR
package implements modular R methods.  This enables to add new functionalities
through the R framework.")
    (license license:gpl3+)))

(define-public r-emissv
  (package
    (name "r-emissv")
    (version "0.665.6.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EmissV" version))
              (sha256
               (base32
                "1cazd2njbiacwwkxrs0qvy6p533wal18s9cjvavxcx0c2607r725"))))
    (properties `((upstream-name . "EmissV")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-sp
                             r-sf
                             r-raster
                             r-ncdf4
                             r-data-table))
    (home-page "https://atmoschem.github.io/EmissV/")
    (synopsis "Tools for Create Emissions for Air Quality Models")
    (description
     "Processing tools to create emissions for use in numerical air quality models.
Emissions can be calculated both using emission factors and activity data
(Schuch et al 2018) <doi:10.21105/joss.00662> or using pollutant inventories
(Schuch et al., 2018) <doi:10.30564/jasr.v1i1.347>.  Functions to process
individual point emissions, line emissions and area emissions of pollutants are
available as well as methods to incorporate alternative data for Spatial
distribution of emissions such as satellite images (Martins et al, 2012)
<doi:10.3389/fenvs.2015.00009> or openstreetmap data (Andrade et al, 2015)
<doi:10.3389/fenvs.2015.00009>.")
    (license license:expat)))

(define-public r-emirt
  (package
    (name "r-emirt")
    (version "0.0.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emIRT" version))
              (sha256
               (base32
                "1z6yd9m6vggbp42qms2sg0rbxjpg15x9m8gkdz1p3q4aqrc2ncj0"))))
    (properties `((upstream-name . "emIRT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-pscl))
    (home-page "https://cran.r-project.org/package=emIRT")
    (synopsis "EM Algorithms for Estimating Item Response Theory Models")
    (description
     "Various Expectation-Maximization (EM) algorithms are implemented for item
response theory (IRT) models.  The package includes IRT models for binary and
ordinal responses, along with dynamic and hierarchical IRT models with binary
responses.  The latter two models are fitted using variational EM. The package
also includes variational network and text scaling models.  The algorithms are
described in Imai, Lo, and Olmsted (2016) <DOI:10.1017/S000305541600037X>.")
    (license license:gpl3+)))

(define-public r-emir
  (package
    (name "r-emir")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EmiR" version))
              (sha256
               (base32
                "1xhsf9n5af6z7v62vpnqjlp20s6fp7jf1wmgxgv77hxm4g5cm0q7"))))
    (properties `((upstream-name . "EmiR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tictoc
                             r-tibble
                             r-rdpack
                             r-rcppprogress
                             r-rcpp
                             r-plot3d
                             r-mathjaxr
                             r-ggplot2
                             r-gganimate
                             r-dplyr
                             r-data-table))
    (home-page "https://cran.r-project.org/package=EmiR")
    (synopsis "Evolutionary Minimizer for R")
    (description
     "This package provides a C++ implementation of the following evolutionary
algorithms: Bat Algorithm (Yang, 2010 <doi:10.1007/978-3-642-12538-6_6>), Cuckoo
Search (Yang, 2009 <doi:10.1109/nabic.2009.5393690>), Genetic Algorithms
(Holland, 1992, ISBN:978-0262581110), Gravitational Search Algorithm (Rashedi et
al., 2009 <doi:10.1016/j.ins.2009.03.004>), Grey Wolf Optimization (Mirjalili et
al., 2014 <doi:10.1016/j.advengsoft.2013.12.007>), Harmony Search (Geem et al.,
2001 <doi:10.1177/003754970107600201>), Improved Harmony Search (Mahdavi et al.,
2007 <doi:10.1016/j.amc.2006.11.033>), Moth-flame Optimization (Mirjalili, 2015
<doi:10.1016/j.knosys.2015.07.006>), Particle Swarm Optimization (Kennedy et
al., 2001 ISBN:1558605959), Simulated Annealing (Kirkpatrick et al., 1983
<doi:10.1126/science.220.4598.671>), Whale Optimization Algorithm (Mirjalili and
Lewis, 2016 <doi:10.1016/j.advengsoft.2016.01.008>).  EmiR can be used not only
for unconstrained optimization problems, but also in presence of inequality
constrains, and variables restricted to be integers.")
    (license license:gpl3)))

(define-public r-emhawkes
  (package
    (name "r-emhawkes")
    (version "0.9.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emhawkes" version))
              (sha256
               (base32
                "0b6kjwx2lsz5rj8819n71nvvchjpys90ns5n6gcgfwn5afzfdvql"))))
    (properties `((upstream-name . "emhawkes")))
    (build-system r-build-system)
    (propagated-inputs (list r-maxlik))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=emhawkes")
    (synopsis "Exponential Multivariate Hawkes Model")
    (description
     "Simulate and fitting exponential multivariate Hawkes model.  This package
simulates a multivariate Hawkes model, introduced by Hawkes (1971)
<doi:10.2307/2334319>, with an exponential kernel and fits the parameters from
the data.  Models with the constant parameters, as well as complex dependent
structures, can also be simulated and estimated.  The estimation is based on the
maximum likelihood method, introduced by introduced by Ozaki (1979)
<doi:10.1007/BF02480272>, with maxLik package.")
    (license license:gpl2+)))

(define-public r-emg
  (package
    (name "r-emg")
    (version "1.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emg" version))
              (sha256
               (base32
                "04sm05xnjns7wcvpk35ywkxy6g0mm84r060mkmzh64wq58c2q06l"))))
    (properties `((upstream-name . "emg")))
    (build-system r-build-system)
    (propagated-inputs (list r-moments))
    (home-page "https://cran.r-project.org/package=emg")
    (synopsis "Exponentially Modified Gaussian (EMG) Distribution")
    (description
     "This package provides basic distribution functions for a mixture model of a
Gaussian and exponential distribution.")
    (license (list license:gpl2
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-emdsvrhybrid
  (package
    (name "r-emdsvrhybrid")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMDSVRhybrid" version))
              (sha256
               (base32
                "0wis8dh4xd5xldrrfzfr625pix2fvp139q6kj9ff2m6p5wafiabw"))))
    (properties `((upstream-name . "EMDSVRhybrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-emd r-e1071))
    (home-page "https://cran.r-project.org/package=EMDSVRhybrid")
    (synopsis "Hybrid Machine Learning Model")
    (description
     "Researchers can fit Empirical Mode Decomposition and Support Vector Regression
based hybrid model for nonlinear and non stationary time series data using this
package.")
    (license license:gpl3)))

(define-public r-emdi
  (package
    (name "r-emdi")
    (version "2.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emdi" version))
              (sha256
               (base32
                "0s190p6zhsj2yc1xy1px5sk8aqn6q8b26g7zsnpa9rvih9h2667r"))))
    (properties `((upstream-name . "emdi")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr
                             r-spdep
                             r-saerobust
                             r-reshape2
                             r-readods
                             r-parallelmap
                             r-openxlsx
                             r-nlme
                             r-mumin
                             r-moments
                             r-mass
                             r-hlmdiag
                             r-gridextra
                             r-ggplot2
                             r-formula-tools
                             r-boot))
    (home-page "https://github.com/SoerenPannier/emdi")
    (synopsis "Estimating and Mapping Disaggregated Indicators")
    (description
     "This package provides functions that support estimating, assessing and mapping
regional disaggregated indicators.  So far, estimation methods comprise direct
estimation, the model-based unit-level approach Empirical Best Prediction (see
\"Small area estimation of poverty indicators\" by Molina and Rao (2010)
<doi:10.1002/cjs.10051>), the area-level model (see \"Estimates of income for
small places: An application of James-Stein procedures to Census Data\" by Fay
and Herriot (1979) <doi:10.1080/01621459.1979.10482505>) and various extensions
of it (adjusted variance estimation methods, log and arcsin transformation,
spatial, robust and measurement error models), as well as their precision
estimates.  The assessment of the used model is supported by a summary and
diagnostic plots.  For a suitable presentation of estimates, map plots can be
easily created.  Furthermore, results can easily be exported to excel.  For a
detailed description of the package and the methods used see \"The R Package emdi
for Estimating and Mapping Regionally Disaggregated Indicators\" by Kreutzmann et
al. (2019) <doi:10.18637/jss.v091.i07> and the second package vignette \"A
Framework for Producing Small Area Estimates Based on Area-Level Models in R\".")
    (license license:gpl2)))

(define-public r-emdannhybrid
  (package
    (name "r-emdannhybrid")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMDANNhybrid" version))
              (sha256
               (base32
                "0mm5zfkrja9pz58psp7b6r1lpixaa9y685xxv9srv9l9cl8d892j"))))
    (properties `((upstream-name . "EMDANNhybrid")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnfor r-forecast r-emd))
    (home-page "https://cran.r-project.org/package=EMDANNhybrid")
    (synopsis "Ensemble Machine Learning Hybrid Model")
    (description
     "The researchers can use this package to fit Empirical Mode Decomposition and
Artificial Neural Network based hybrid model for nonlinear and non stationary
time series data.")
    (license license:gpl3)))

(define-public r-emd
  (package
    (name "r-emd")
    (version "1.5.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMD" version))
              (sha256
               (base32
                "0lga27nl7c3h02xrbb2hcwlb9dyli340v0hb3vwwzqrhmr0fl806"))))
    (properties `((upstream-name . "EMD")))
    (build-system r-build-system)
    (propagated-inputs (list r-locfit r-fields))
    (home-page "https://cran.r-project.org/package=EMD")
    (synopsis "Empirical Mode Decomposition and Hilbert Spectral Analysis")
    (description
     "For multiscale analysis, this package carries out empirical mode decomposition
and Hilbert spectral analysis.  For usage of EMD, see Kim and Oh, 2009 (Kim, D
and Oh, H.-S. (2009) EMD: A Package for Empirical Mode Decomposition and Hilbert
Spectrum, The R Journal, 1, 40-46).")
    (license license:gpl3+)))

(define-public r-emcluster
  (package
    (name "r-emcluster")
    (version "0.2-14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMCluster" version))
              (sha256
               (base32
                "12ahgvnpqms930zzc1blpfmj97m679rns8h4nh1l0yr0y1w6lfcn"))))
    (properties `((upstream-name . "EMCluster")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix r-mass))
    (home-page "https://github.com/snoweye/EMCluster")
    (synopsis
     "EM Algorithm for Model-Based Clustering of Finite Mixture Gaussian Distribution")
    (description
     "EM algorithms and several efficient initialization methods for model-based
clustering of finite mixture Gaussian distribution with unstructured dispersion
in both of unsupervised and semi-supervised learning.")
    (license (license:fsdg-compatible "Mozilla Public License 2.0"))))

(define-public r-embryogrowth
  (package
    (name "r-embryogrowth")
    (version "8.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "embryogrowth" version))
              (sha256
               (base32
                "1fayl1wxpw9903psrjichrbf6rx38d7shnsjpxdwljw67g6pr5g7"))))
    (properties `((upstream-name . "embryogrowth")))
    (build-system r-build-system)
    (propagated-inputs (list r-optimx r-numderiv r-helpersmg r-desolve))
    (home-page "https://cran.r-project.org/package=embryogrowth")
    (synopsis "Tools to Analyze the Thermal Reaction Norm of Embryo Growth")
    (description
     "Tools to analyze the embryo growth and the sexualisation thermal reaction norms.
 See <doi:10.7717/peerj.8451> for tsd functions; see
<doi:10.1016/j.jtherbio.2014.08.005> for thermal reaction norm of embryo growth.")
    (license license:gpl2)))

(define-public r-embedsom
  (package
    (name "r-embedsom")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EmbedSOM" version))
              (sha256
               (base32
                "0k4hja5y7qd0n3gfaxzxrz4wpxc1w9d4d4xbb63rq2nfk3lj7a42"))))
    (properties `((upstream-name . "EmbedSOM")))
    (build-system r-build-system)
    (propagated-inputs (list r-uwot
                             r-umap
                             r-rtsne
                             r-matrix
                             r-igraph
                             r-ggplot2
                             r-fnn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/exaexa/EmbedSOM")
    (synopsis "Fast Embedding Guided by Self-Organizing Map")
    (description
     "This package provides a smooth mapping of multidimensional points into
low-dimensional space defined by a self-organizing map.  Designed to work with
FlowSOM and flow-cytometry use-cases.  See Kratochvil et al. (2019)
<doi:10.12688/f1000research.21642.1>.")
    (license license:gpl3+)))

(define-public r-embed
  (package
    (name "r-embed")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "embed" version))
              (sha256
               (base32
                "1yvw24yi4j1xlbm6w1g49mcp6wqnn69191sys1fr8wsvrag79gfn"))))
    (properties `((upstream-name . "embed")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-uwot
                             r-tidyr
                             r-tibble
                             r-tensorflow
                             r-rsample
                             r-rlang
                             r-recipes
                             r-purrr
                             r-lifecycle
                             r-keras
                             r-glue
                             r-generics
                             r-dplyr))
    (home-page "https://embed.tidymodels.org")
    (synopsis "Extra Recipes for Encoding Predictors")
    (description
     "Predictors can be converted to one or more numeric representations using a
variety of methods.  Effect encodings using simple generalized linear models
<arXiv:1611.09477> or nonlinear models <arXiv:1604.06737> can be used.  There
are also functions for dimension reduction and other approaches.")
    (license license:expat)))

(define-public r-embc
  (package
    (name "r-embc")
    (version "2.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMbC" version))
              (sha256
               (base32
                "0ns6jmshblf00n4harhls03q9c6h1wvgvjzn8jvr3kf4gm2iz2jd"))))
    (properties `((upstream-name . "EMbC")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-rcpparmadillo
                             r-rcpp
                             r-rcolorbrewer
                             r-mnormt
                             r-maptools))
    (native-inputs (list r-knitr))
    (home-page "<doi:10.1371/journal.pone.0151984>")
    (synopsis "Expectation-Maximization Binary Clustering")
    (description
     "Unsupervised, multivariate, binary clustering for meaningful annotation of data,
taking into account the uncertainty in the data.  A specific constructor for
trajectory analysis in movement ecology yields behavioural annotation of
trajectories based on estimated local measures of velocity and turning angle,
eventually with solar position covariate as a daytime indicator,
(\"Expectation-Maximization Binary Clustering for Behavioural Annotation\").")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-emba
  (package
    (name "r-emba")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emba" version))
              (sha256
               (base32
                "1bzp1cplr977w87bm0pvabvgai91a3j51pfjn4lc1ncjbr2v6wl0"))))
    (properties `((upstream-name . "emba")))
    (build-system r-build-system)
    (propagated-inputs (list r-visnetwork
                             r-usefun
                             r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rje
                             r-readr
                             r-purrr
                             r-igraph
                             r-dplyr
                             r-ckmeans-1d-dp))
    (native-inputs (list r-knitr))
    (home-page "https://bblodfon.github.io/emba/")
    (synopsis "Ensemble Boolean Model Biomarker Analysis")
    (description
     "Analysis and visualization of an ensemble of boolean models for biomarker
discovery in cancer cell networks.  The package allows to easily load the
simulation data results of the DrugLogics software pipeline which predicts
synergistic drug combinations in cancer cell lines (developed by the DrugLogics
research group in NTNU).  It has generic functions that can be used to split a
boolean model dataset to model groups with regards to the models predictive
performance (number of true positive predictions/Matthews correlation
coefficient score) or synergy prediction based on a given set of gold standard
synergies and find the average activity difference per network node between all
model group pairs.  Thus, given user-specific thresholds, important nodes
(biomarkers) can be accessed in the sense that they make the models predict
specific synergies (synergy biomarkers) or have better performance in general
(performance biomarkers).  Lastly, if the boolean models have a specific
equation form and differ only in their link operator, link operator biomarkers
can also be found.")
    (license license:expat)))

(define-public r-emayili
  (package
    (name "r-emayili")
    (version "0.7.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "emayili" version))
              (sha256
               (base32
                "13ndi1khnsf75xrh04jy9jpqi94rwnwlyp3jp8b8jyyd1pplhxlw"))))
    (properties `((upstream-name . "emayili")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-xfun
                             r-urltools
                             r-tidyr
                             r-stringr
                             r-stringi
                             r-rvest
                             r-rmarkdown
                             r-purrr
                             r-mime
                             r-magrittr
                             r-logger
                             r-httr
                             r-htmltools
                             r-glue
                             r-dplyr
                             r-digest
                             r-curl
                             r-commonmark
                             r-base64enc))
    (home-page "https://datawookie.github.io/emayili/")
    (synopsis "Send Email Messages")
    (description
     "This package provides a light, simple tool for sending emails with minimal
dependencies.")
    (license license:gpl3)))

(define-public r-ematools
  (package
    (name "r-ematools")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMAtools" version))
              (sha256
               (base32
                "0gx55ddw7dz1lm599i0gj15dlc3m58a8rf223hiykszb5c8bi372"))))
    (properties `((upstream-name . "EMAtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-sjstats
                             r-plyr
                             r-lmertest
                             r-ggplot2
                             r-datacombine
                             r-anytime))
    (home-page "https://cran.r-project.org/package=EMAtools")
    (synopsis
     "Data Management Tools for Real-Time Monitoring/Ecological Momentary Assessment Data")
    (description
     "Do data management functions common in real-time monitoring (also called:
ecological momentary assessment, experience sampling, micro-longitudinal) data,
including creating power curves for multilevel data, centering on participant
means and merging event-level data into momentary data sets where you need the
events to correspond to the nearest data point in the momentary data.  This is
VERY early release software, and more features will be added over time.")
    (license license:expat)))

(define-public r-emas
  (package
    (name "r-emas")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EMAS" version))
              (sha256
               (base32
                "07y15nbym69iwdy9c5gcdalign7g8qw8hkcy1v29z6j2di6qzn84"))))
    (properties `((upstream-name . "EMAS")))
    (build-system r-build-system)
    (propagated-inputs (list r-qqman
                             r-multilevel
                             r-minfi
                             r-mediation
                             r-lavaan
                             r-illuminahumanmethylation450kanno-ilmn12-hg19
                             r-ggplot2))
    (home-page "https://cran.r-project.org/package=EMAS")
    (synopsis "Epigenome-Wide Mediation Analysis Study")
    (description
     "DNA methylation is essential for human, and environment can change the DNA
methylation and affect body status.  Epigenome-Wide Mediation Analysis Study
(EMAS) can find potential mediator CpG sites between exposure (x) and outcome
(y) in epigenome-wide.  For more information on the methods we used, please see
the following references: Tingley, D. (2014) <doi:10.18637/jss.v059.i05>,
Turner, S. D. (2018) <doi:10.21105/joss.00731>, Rosseel, D. (2012)
<doi:10.18637/jss.v048.i02>.")
    (license license:gpl3)))

(define-public r-em-fuzzy
  (package
    (name "r-em-fuzzy")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EM.Fuzzy" version))
              (sha256
               (base32
                "0sz4zkjn6rdzdqmkq6j24bd4sj91y5lan31bldxdfskgz0jpzhbr"))))
    (properties `((upstream-name . "EM.Fuzzy")))
    (build-system r-build-system)
    (propagated-inputs (list r-fuzzynumbers r-distrib))
    (home-page "https://cran.r-project.org/package=EM.Fuzzy")
    (synopsis
     "EM Algorithm for Maximum Likelihood Estimation by Non-Precise Information")
    (description
     "The EM algorithm is a powerful tool for computing maximum likelihood estimates
with incomplete data.  This package will help to applying EM algorithm based on
triangular and trapezoidal fuzzy numbers (as two kinds of incomplete data).  A
method is proposed for estimating the unknown parameter in a parametric
statistical model when the observations are triangular or trapezoidal fuzzy
numbers.  This method is based on maximizing the observed-data likelihood
defined as the conditional probability of the fuzzy data; for more details and
formulas see Denoeux (2011) <doi:10.1016/j.fss.2011.05.022>.")
    (license license:lgpl3+)))

(define-public r-elyp
  (package
    (name "r-elyp")
    (version "0.7-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELYP" version))
              (sha256
               (base32
                "1j2vwcs443x3pf4zypyvbkn8fb5if9b9hf1s821jjjpgach573sc"))))
    (properties `((upstream-name . "ELYP")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "http://www.ms.uky.edu/~mai/EmpLik.html")
    (synopsis
     "Empirical Likelihood Analysis for the Cox Model and Yang-Prentice (2005) Model")
    (description
     "Empirical likelihood ratio tests for the Yang and Prentice (short/long term
hazards ratio) models.  Empirical likelihood tests within a Cox model, for
parameters defined via both baseline hazard function and regression parameters.")
    (license license:gpl2+)))

(define-public r-eltr
  (package
    (name "r-eltr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eltr" version))
              (sha256
               (base32
                "0f4sy2hhsbghasl5xcnqlgxqhb503pl73c5vdkgpcm73smrqbpbv"))))
    (properties `((upstream-name . "eltr")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://randhirbilkhu.github.io/eltr/")
    (synopsis "Utilise Catastrophe Model Event Loss Table Outputs")
    (description
     "This package provides a tool to run Monte Carlo simulation of catastrophe model
event loss tables, using a Poisson frequency and Beta severity distribution.")
    (license license:lgpl2.1+)))

(define-public r-elt
  (package
    (name "r-elt")
    (version "1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELT" version))
              (sha256
               (base32
                "0vbrf912m6f80sqyyrp0z4jhq38fnmcy6hgwy0qh8wgk3p1aqm7c"))))
    (properties `((upstream-name . "ELT")))
    (build-system r-build-system)
    (propagated-inputs (list r-xlsx r-locfit r-latticeextra r-lattice))
    (home-page "https://cran.r-project.org/package=ELT")
    (synopsis "Experience Life Tables")
    (description "Build experience life tables.")
    (license license:gpl2+)))

(define-public r-elstonstewart
  (package
    (name "r-elstonstewart")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ElstonStewart" version))
              (sha256
               (base32
                "1lsapsz8w8srdqdkxvlg5nsn157wbihxjgdaf53r5iaxzcljkzxc"))))
    (properties `((upstream-name . "ElstonStewart")))
    (build-system r-build-system)
    (propagated-inputs (list r-kinship2 r-digest))
    (home-page "https://cran.r-project.org/package=ElstonStewart")
    (synopsis "Elston-Stewart Algorithm")
    (description "Flexible implementation of Elston-Stewart algorithm.")
    (license license:gpl2+)))

(define-public r-elsa
  (package
    (name "r-elsa")
    (version "1.1-28")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elsa" version))
              (sha256
               (base32
                "01sj2a4yhv5m6qj6ih26zw4yzd8s27lll7yp0yysjjrwz79a0fbq"))))
    (properties `((upstream-name . "elsa")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-raster))
    (native-inputs (list r-knitr))
    (home-page "http://r-gis.net")
    (synopsis "Entropy-Based Local Indicator of Spatial Association")
    (description
     "This package provides a framework that provides the methods for quantifying
entropy-based local indicator of spatial association (ELSA) that can be used for
both continuous and categorical data.  In addition, this package offers other
methods to measure local indicators of spatial associations (LISA).
Furthermore, global spatial structure can be measured using a variogram-like
diagram, called entrogram.  For more information, please check that paper:
Naimi, B., Hamm, N. A., Groen, T. A., Skidmore, A. K., Toxopeus, A. G., &
Alibakhshi, S. (2019) <doi:10.1016/j.spasta.2018.10.001>.")
    (license license:gpl3+)))

(define-public r-elrm
  (package
    (name "r-elrm")
    (version "1.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elrm" version))
              (sha256
               (base32
                "1kqwr0nfmnb729h01p14a24kd9scsw7j7qj133kpg0ppcfsnygld"))))
    (properties `((upstream-name . "elrm")))
    (build-system r-build-system)
    (propagated-inputs (list r-coda))
    (home-page "https://cran.r-project.org/package=elrm")
    (synopsis "Exact Logistic Regression via MCMC")
    (description
     "This package implements a Markov Chain Monte Carlo algorithm to approximate
exact conditional inference for logistic regression models.  Exact conditional
inference is based on the distribution of the sufficient statistics for the
parameters of interest given the sufficient statistics for the remaining
nuisance parameters.  Using model formula notation, users specify a logistic
model and model terms of interest for exact inference.  See Zamar et al. (2007)
<doi:10.18637/jss.v021.i03> for more details.")
    (license license:gpl2+)))

(define-public r-elosteepness
  (package
    (name "r-elosteepness")
    (version "0.4.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EloSteepness" version))
              (sha256
               (base32
                "09rdiy50zxj61vs1pq522l36g0zkhvrdf6kgb1r11jjryxrik8zq"))))
    (properties `((upstream-name . "EloSteepness")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-elorating
                             r-bh
                             r-anidom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gobbios/EloSteepness")
    (synopsis
     "Bayesian Dominance Hierarchy Steepness via Elo Rating and David's Scores")
    (description
     "Obtain Bayesian posterior distributions of dominance hierarchy steepness
(Neumann and Fischer (2022) <doi:10.1101/2022.01.28.478016>).  Steepness
estimation is based on Bayesian implementations of either Elo-rating or David's
scores.")
    (license license:gpl2+)))

(define-public r-elorating
  (package
    (name "r-elorating")
    (version "0.46.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EloRating" version))
              (sha256
               (base32
                "09nh3ia4s3c9yjhw0f0haqb26fryfc4lf9rgfcbqqzzwgdr1invj"))))
    (properties `((upstream-name . "EloRating")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-sna
                             r-rdpack
                             r-rcpparmadillo
                             r-rcpp
                             r-network))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gobbios/EloRating")
    (synopsis "Animal Dominance Hierarchies by Elo Rating")
    (description
     "This package provides functions to quantify animal dominance hierarchies.  The
major focus is on Elo rating and its ability to deal with temporal dynamics in
dominance interaction sequences.  For static data, David's score and de Vries
I&SI are also implemented.  In addition, the package provides functions to
assess transitivity, linearity and stability of dominance networks.  See Neumann
et al (2011) <doi:10.1016/j.anbehav.2011.07.016> for an introduction.")
    (license license:gpl2+)))

(define-public r-elooptimized
  (package
    (name "r-elooptimized")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EloOptimized" version))
              (sha256
               (base32
                "09bg1gm8jhjj0r7yzdgi2zlyavrizgiljwh26mpb6ng6p5mkliid"))))
    (properties `((upstream-name . "EloOptimized")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang
                             r-reshape2
                             r-magrittr
                             r-lubridate
                             r-dplyr
                             r-bammtools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jtfeld/EloOptimized")
    (synopsis "Optimized Elo Rating Method for Obtaining Dominance Ranks")
    (description
     "This package provides an implementation of the maximum likelihood methods for
deriving Elo scores as published in Foerster, Franz et al. (2016)
<DOI:10.1038/srep35404>.")
    (license license:gpl3)))

(define-public r-elochoice
  (package
    (name "r-elochoice")
    (version "0.29.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EloChoice" version))
              (sha256
               (base32
                "1g8ivvnv16c2gniwd9xa9z89bm4rac0nrg3mcg1risgf9yk4rgm5"))))
    (properties `((upstream-name . "EloChoice")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-rcpparmadillo r-rcpp r-psychotools))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/gobbios/EloChoice")
    (synopsis "Preference Rating for Visual Stimuli Based on Elo Ratings")
    (description
     "Allows calculating global scores for characteristics of visual stimuli as
assessed by human raters.  Stimuli are presented as sequence of pairwise
comparisons ('contests'), during each of which a rater expresses preference for
one stimulus over the other (forced choice).  The algorithm for calculating
global scores is based on Elo rating, which updates individual scores after each
single pairwise contest.  Elo rating is widely used to rank chess players
according to their performance.  Its core feature is that dyadic contests with
expected outcomes lead to smaller changes of participants scores than outcomes
that were unexpected.  As such, Elo rating is an efficient tool to rate
individual stimuli when a large number of such stimuli are paired against each
other in the context of experiments where the goal is to rank stimuli according
to some characteristic of interest.  Clark et al (2018)
<doi:10.1371/journal.pone.0190393> provide details.")
    (license license:gpl3+)))

(define-public r-elo
  (package
    (name "r-elo")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elo" version))
              (sha256
               (base32
                "0cw3gcp0i4jvpmqv4595arqq3r5407gh6cy0l8jl7s9bi9mnvd9b"))))
    (properties `((upstream-name . "elo")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-proc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/eheinzen/elo")
    (synopsis "Ranking Teams by Elo Rating and Comparable Methods")
    (description
     "This package provides a flexible framework for calculating Elo ratings and
resulting rankings of any two-team-per-matchup system (chess, sports leagues,
Go', etc.).  This implementation is capable of evaluating a variety of matchups,
Elo rating updates, and win probabilities, all based on the basic Elo rating
system.  It also includes methods to benchmark performance, including logistic
regression and Markov chain models.")
    (license license:gpl2+)))

(define-public r-elmso
  (package
    (name "r-elmso")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELMSO" version))
              (sha256
               (base32
                "14wnrqrbbfb37f3wp91qib28bcanflw3asv1y0v748n36x1xbv3m"))))
    (properties `((upstream-name . "ELMSO")))
    (build-system r-build-system)
    (home-page "<https://journals.sagepub.com/doi/abs/10.1509/jmr.15.0307>")
    (synopsis
     "Implementation of the Efficient Large-Scale Online Display Advertising Algorithm")
    (description
     "An implementation of the algorithm described in \"Efficient Large- Scale Internet
Media Selection Optimization for Online Display Advertising\" by Paulson, Luo,
and James (Journal of Marketing Research 2018; see URL below for journal
text/citation and
<http://faculty.marshall.usc.edu/gareth-james/Research/ELMSO.pdf> for a
full-text version of the paper).  The algorithm here is designed to allocate
budget across a set of online advertising opportunities using a
coordinate-descent approach, but it can be used in any resource-allocation
problem with a matrix of visitation (in the case of the paper, website page-
views) and channels (in the paper, websites).  The package contains allocation
functions both in the presence of bidding, when allocation is dependent on
channel-specific cost curves, and when advertising costs are fixed at each
channel.")
    (license license:gpl3)))

(define-public r-elmr
  (package
    (name "r-elmr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELMR" version))
              (sha256
               (base32
                "0pd3drv485xbdyfwm28kjpd0nd0zv1khfwzki1gh5p1gz9ndwr2x"))))
    (properties `((upstream-name . "ELMR")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ELMR")
    (synopsis "Extreme Machine Learning (ELM)")
    (description
     "Training and prediction functions are provided for the Extreme Learning Machine
algorithm (ELM).  The ELM use a Single Hidden Layer Feedforward Neural Network
(SLFN) with random generated weights and no gradient-based backpropagation.  The
training time is very short and the online version allows to update the model
using small chunk of the training set at each iteration.  The only parameter to
tune is the hidden layer size and the learning function.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-elmnnrcpp
  (package
    (name "r-elmnnrcpp")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elmNNRcpp" version))
              (sha256
               (base32
                "1vn3c67p4kd7bs4fsyhkl350aydcqpfda4j6svkc0g4cxd5i33zj"))))
    (properties `((upstream-name . "elmNNRcpp")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp r-kernelknn))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mlampros/elmNNRcpp")
    (synopsis "The Extreme Learning Machine Algorithm")
    (description
     "Training and predict functions for Single Hidden-layer Feedforward Neural
Networks (SLFN) using the Extreme Learning Machine (ELM) algorithm.  The ELM
algorithm differs from the traditional gradient-based algorithms for very short
training times (it doesn't need any iterative tuning, this makes learning time
very fast) and there is no need to set any other parameters like learning rate,
momentum, epochs, etc.  This is a reimplementation of the elmNN package using
RcppArmadillo after the elmNN package was archived.  For more information, see
\"Extreme learning machine: Theory and applications\" by Guang-Bin Huang, Qin-Yu
Zhu, Chee-Kheong Siew (2006), Elsevier B.V, <doi:10.1016/j.neucom.2005.12.126>.")
    (license license:gpl2+)))

(define-public r-ellipticalsymmetry
  (package
    (name "r-ellipticalsymmetry")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ellipticalsymmetry" version))
              (sha256
               (base32
                "035q6zjf0lnx704q5g51bhv1xp7y0yn31ph57zydk92gfpgn468l"))))
    (properties `((upstream-name . "ellipticalsymmetry")))
    (build-system r-build-system)
    (propagated-inputs (list r-icsnp r-foreach r-dorng r-doparallel))
    (home-page "https://cran.r-project.org/package=ellipticalsymmetry")
    (synopsis "Elliptical Symmetry Tests")
    (description
     "Given the omnipresence of the assumption of elliptical symmetry, it is essential
to be able to test whether that assumption actually holds true or not for the
data at hand.  This package provides several statistical tests for elliptical
symmetry that are described in Babic et al. (2021) <arXiv:2011.12560v2>.")
    (license license:gpl3)))

(define-public r-elliptcopulas
  (package
    (name "r-elliptcopulas")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ElliptCopulas" version))
              (sha256
               (base32
                "1hnkhd9hw2550kzjyycl1hzm9pk9j11n96hka59z8x74vrz980qp"))))
    (properties `((upstream-name . "ElliptCopulas")))
    (build-system r-build-system)
    (propagated-inputs (list r-wdm r-runuran r-rmpfr r-pbapply r-matrix))
    (home-page "https://github.com/AlexisDerumigny/ElliptCopulas")
    (synopsis "Inference of Elliptical Distributions and Copulas")
    (description
     "This package provides functions for the simulation and the nonparametric
estimation of elliptical distributions, meta-elliptical copulas and
trans-elliptical distributions, following the article Derumigny and Fermanian
(2022) <doi:10.1016/j.jmva.2022.104962>.")
    (license license:gpl3)))

(define-public r-elliplot
  (package
    (name "r-elliplot")
    (version "1.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elliplot" version))
              (sha256
               (base32
                "13r16lx8hx46d3r9awki4j6lvy5p2q5d3k268h3bhd0mcsbxrml0"))))
    (properties `((upstream-name . "elliplot")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=elliplot")
    (synopsis "Ellipse Summary Plot of Quantiles")
    (description
     "Correlation chart of two set (x and y) of data.  Using Quantiles.  Visualize the
effect of factor.")
    (license license:expat)))

(define-public r-elitism
  (package
    (name "r-elitism")
    (version "1.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elitism" version))
              (sha256
               (base32
                "0n5g1nd1dd5wc76qa2va1lyxahg9p062l8wdqzq43ah6943pjzgr"))))
    (properties `((upstream-name . "elitism")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=elitism")
    (synopsis
     "Equipment for Logarithmic and Linear Time Stepwise Multiple Hypothesis Testing")
    (description
     "Recently many new p-value based multiple test procedures have been proposed, and
these new methods are more powerful than the widely used Hochberg procedure.
These procedures strongly control the familywise error rate (FWER).  This is a
comprehensive collection of p-value based FWER-control stepwise multiple test
procedures, including six procedure families and thirty multiple test
procedures.  In this collection, the conservative Hochberg procedure, linear
time Hommel procedures, asymptotic Rom procedure, Gou-Tamhane-Xi-Rom procedures,
and Quick procedures are all developed in recent five years since 2014.  The
package name \"elitism\" is an acronym of \"e\"quipment for \"l\"ogarithmic and
l\"i\"near \"ti\"me \"s\"tepwise \"m\"ultiple hypothesis testing.  Version 1.0.0 was
released on June 26, 2019.  See Gou, J., and Zhang, F. (2020).  Quick multiple
test procedures and p-value adjustments.  Technical report.")
    (license license:gpl3)))

(define-public r-elist
  (package
    (name "r-elist")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eList" version))
              (sha256
               (base32
                "1znmdksi2wzzjz0n6lrggs4ckvqq3qirdfvicxlfbm05zgnjq277"))))
    (properties `((upstream-name . "eList")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eList")
    (synopsis "List Comprehension and Tools")
    (description
     "Create list comprehensions (and other types of comprehension) similar to those
in python', haskell', and other languages.  List comprehension in R converts a
regular for() loop into a vectorized lapply() function.  Support for looping
with multiple variables, parallelization, and across non-standard objects
included.  Package also contains a variety of functions to help with list
comprehension.")
    (license license:expat)))

(define-public r-elisr
  (package
    (name "r-elisr")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elisr" version))
              (sha256
               (base32
                "1kz07fyffaqgda9rqidxzxz0bxzhyb8pyxpzqsvjsn1i9w98cb5k"))))
    (properties `((upstream-name . "elisr")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sbissantz/elisr")
    (synopsis "Exploratory Likert Scaling")
    (description
     "An alternative to Exploratory Factor Analysis (EFA) for metrical data in R.
Drawing on characteristics of classical test theory, Exploratory Likert Scaling
(ELiS) supports the user exploring multiple one-dimensional data structures.  In
common research practice, however, EFA remains the go-to method to uncover the
(underlying) structure of a data set.  Orthogonal dimensions and the potential
of overextraction are often accepted as side effects.  As described in
MÃ¼ller-Schneider (2001) <doi:10.1515/zfsoz-2001-0404>), ELiS confronts these
problems.  As a result, elisr provides the platform to fully exploit the
exploratory potential of the multiple scaling approach itself.")
    (license license:gpl3+)))

(define-public r-elisatools
  (package
    (name "r-elisatools")
    (version "0.1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELISAtools" version))
              (sha256
               (base32
                "18f2adhw85f0hsz5gb6xhi0w2phcq364xy9y1jri6ckzs8g0pny7"))))
    (properties `((upstream-name . "ELISAtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringi r-r2html r-minpack-lm))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ELISAtools")
    (synopsis "ELISA Data Analysis with Batch Correction")
    (description
     "To run data analysis for enzyme-link immunosorbent assays (ELISAs).  Either the
five- or four-parameter logistic model will be fitted for data of single ELISA.
Moreover, the batch effect correction/normalization will be carried out, when
there are more than one batches of ELISAs.  Feng (2018) <doi:10.1101/483800>.")
    (license license:expat)))

(define-public r-elhmc
  (package
    (name "r-elhmc")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elhmc" version))
              (sha256
               (base32
                "0ngva7rnfj75fq93ycsv929m9ykijp48r7cvd6sfmi0sqsjinax5"))))
    (properties `((upstream-name . "elhmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-mass r-emplik))
    (home-page "https://cran.r-project.org/package=elhmc")
    (synopsis
     "Sampling from a Empirical Likelihood Bayesian Posterior of Parameters Using Hamiltonian Monte Carlo")
    (description
     "This package provides a tool to draw samples from a Empirical Likelihood
Bayesian posterior of parameters using Hamiltonian Monte Carlo.")
    (license license:gpl2)))

(define-public r-elfgen
  (package
    (name "r-elfgen")
    (version "2.3.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elfgen" version))
              (sha256
               (base32
                "0j6m3qvgknmgc93p4629hyvxmdn6v9f54x9bbp5g2f7pfp44bkf0"))))
    (properties `((upstream-name . "elfgen")))
    (build-system r-build-system)
    (propagated-inputs (list r-testit
                             r-stringr
                             r-sqldf
                             r-scales
                             r-sbtools
                             r-quantreg
                             r-nhdplustools
                             r-ggplot2
                             r-curl))
    (home-page "https://github.com/HARPgroup/elfgen")
    (synopsis
     "Ecological Limit Function Model Generation and Analysis Toolkit")
    (description
     "This package provides a toolset for generating Ecological Limit Function (ELF)
models and evaluating potential species loss resulting from flow change, based
on the elfgen framework.  ELFs describe the relation between aquatic species
richness (fish or benthic macroinvertebrates) and stream size characteristics
(streamflow or drainage area).  Journal publications are available outlining
framework methodology (Kleiner et al. (2020) <doi:10.1111/1752-1688.12876>) and
application (Rapp et al. (2020) <doi:10.1111/1752-1688.12877>).")
    (license license:expat)))

(define-public r-elfdistr
  (package
    (name "r-elfdistr")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elfDistr" version))
              (sha256
               (base32
                "11h91mwiw2pr0c8zvyzqql275falpiajv784n2rd5xs9azprqdd0"))))
    (properties `((upstream-name . "elfDistr")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://github.com/matheushjs/elfDistr")
    (synopsis
     "Kumaraswamy Complementary Weibull Geometric (Kw-CWG) Probability Distribution")
    (description
     "Density, distribution function, quantile function and random generation for the
Kumaraswamy Complementary Weibull Geometric (Kw-CWG) lifetime probability
distribution proposed in Afify, A.Z. et al (2017) <doi:10.1214/16-BJPS322>.")
    (license license:expat)))

(define-public r-elexr
  (package
    (name "r-elexr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elexr" version))
              (sha256
               (base32
                "1xmrzlp55z6k3psdg4a3x3rsilvq3k37v9r7ydfn80ahvqjz0fqh"))))
    (properties `((upstream-name . "elexr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=elexr")
    (synopsis "Load Associated Press Election Results with Elex")
    (description
     "This package provides R access to election results data.  Wraps elex
(https://github.com/newsdev/elex/), a Python package and command line tool for
fetching and parsing Associated Press election results.")
    (license license:expat)))

(define-public r-elevatr
  (package
    (name "r-elevatr")
    (version "0.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elevatr" version))
              (sha256
               (base32
                "1a5j7hb9fsy9ybrdlywbm552kb2hj6ch1m8kvi2hybm99yw33n81"))))
    (properties `((upstream-name . "elevatr")))
    (build-system r-build-system)
    (propagated-inputs (list r-units
                             r-sp
                             r-slippymath
                             r-sf
                             r-raster
                             r-purrr
                             r-progressr
                             r-jsonlite
                             r-httr
                             r-future
                             r-furrr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jhollist/elevatr/")
    (synopsis "Access Elevation Data from Various APIs")
    (description
     "Several web services are available that provide access to elevation data.  This
package provides access to several of those services and returns elevation data
either as a SpatialPointsDataFrame from point elevation services or as a raster
object from raster elevation services.  Currently, the package supports access
to the Amazon Web Services Terrain Tiles
<https://registry.opendata.aws/terrain-tiles/>, the Open Topography Global
Datasets API <https://opentopography.org/developers/>, and the USGS Elevation
Point Query Service <https://nationalmap.gov/epqs/>.")
    (license license:cc0)))

(define-public r-elementr
  (package
    (name "r-elementr")
    (version "1.3.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elementR" version))
              (sha256
               (base32
                "01xbqargzc0bp1l5rcvxikr95ghj9w7w5byhrjbgwbia6y7zhxa2"))))
    (properties `((upstream-name . "elementR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tcltk2
                             r-stringr
                             r-shinyjs
                             r-shinydashboard
                             r-shiny
                             r-readxl
                             r-readods
                             r-reader
                             r-r6
                             r-outliers
                             r-lmtest
                             r-httpuv
                             r-gnumeric
                             r-gdata
                             r-envstats
                             r-devtools
                             r-colourpicker
                             r-abind))
    (home-page "https://github.com/charlottesirot/elementR")
    (synopsis
     "An Framework for Reducing Elemental LAICPMS Data from Solid Structures")
    (description
     "Aims to facilitate the reduction of elemental microchemistry data from
solid-phase LAICPMS analysis (laser ablation inductive coupled plasma mass
spectrometry).  The elementR package provides a reactive and user friendly
interface (based on a shiny application) and a set of R6 classes for conducting
all steps needed for an optimal data reduction while leaving maximum control for
user.  For more details about the methods used in elementR', see Sirot et al
(2017) <DOI:10.1111/2041-210X.12822>.")
    (license license:gpl2+)))

(define-public r-electoral
  (package
    (name "r-electoral")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "electoral" version))
              (sha256
               (base32
                "0r15ghnblp5f2g9hpw187clfpj1cgplqyn9mhyvlcmz5ql60glsj"))))
    (properties `((upstream-name . "electoral")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble r-ineq r-dplyr))
    (home-page "https://cran.r-project.org/package=electoral")
    (synopsis "Allocating Seats Methods and Party System Scores")
    (description
     "Highest averages & largest remainders allocating seats methods and several party
system scores.  Implemented highest averages allocating seats methods are
D'Hondt, Webster, Danish, Imperiali, Hill-Huntington, Dean, Modified
Sainte-Lague, equal proportions and Adams.  Implemented largest remainders
allocating seats methods are Hare, Droop, Hangenbach-Bischoff, Imperial,
modified Imperial and quotas & remainders.  The main advantage of this package
is that ties are always reported and not incorrectly allocated.  Party system
scores provided are competitiveness, concentration, effective number of parties,
party nationalization score, party system nationalization score and volatility.
References: Gallagher (1991) <doi:10.1016/0261-3794(91)90004-C>.  Norris (2004,
ISBN:0-521-82977-1).  Consejo Nacional Electoral del Ecuador
(2014)<http://cne.gob.ec/documents/Estadisticas/Atlas/ATLAS/CAPITULO%206%20web.pdf>.
 Laakso & Taagepera (1979)
<https://journals.sagepub.com/doi/pdf/10.1177/001041407901200101>.  Jones &
Mainwaring (2003)
<https://kellogg.nd.edu/sites/default/files/old_files/documents/304_0.pdf>.
Pedersen (1979) <https://janda.org/c24/Readings/Pedersen/Pedersen.htm>.  Golosov
(2010) <https://ppq.sagepub.com/content/16/2/171.abstract>.  Golosov (2014)
<https://ppq.sagepub.com/content/early/2014/09/08/1354068814549342.abstract>.")
    (license license:gpl3)))

(define-public r-electivity
  (package
    (name "r-electivity")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "electivity" version))
              (sha256
               (base32
                "0clxsn9zkpdlq9jgq029ag310ji0hd0l23wfyqh8gkkj0091ip5a"))))
    (properties `((upstream-name . "electivity")))
    (build-system r-build-system)
    (home-page "https://github.com/DesiQuintans/electivity")
    (synopsis "Algorithms for Electivity Indices")
    (description
     "This package provides all electivity algorithms (including Vanderploeg and
Scavia electivity) that were examined in Lechowicz (1982)
<doi:10.1007/BF00349007>, plus the example data that were provided for moth
resource utilisation.")
    (license license:expat)))

(define-public r-electionsbr
  (package
    (name "r-electionsbr")
    (version "0.3.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "electionsBR" version))
              (sha256
               (base32
                "05wxzfgh0f3n6w8ah32q2v4f67g6w4qri4dv1linmlax77clv9fn"))))
    (properties `((upstream-name . "electionsBR")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-magrittr r-haven r-dplyr r-data-table))
    (native-inputs (list r-knitr))
    (home-page "http://electionsbr.com/")
    (synopsis "R Functions to Download and Clean Brazilian Electoral Data")
    (description
     "Offers a set of functions to easily download and clean Brazilian electoral data
from the Superior Electoral Court website.  Among others, the package retrieves
data on local and federal elections for all positions (city councilor, mayor,
state deputy, federal deputy, governor, and president) aggregated by state,
city, and electoral zones.")
    (license license:gpl2+)))

(define-public r-elections-dtree
  (package
    (name "r-elections-dtree")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elections.dtree" version))
              (sha256
               (base32
                "1j0knxi2vv65pizpz8v26az9k422msn8i7d55hyzy8h1q1bbcy8y"))))
    (properties `((upstream-name . "elections.dtree")))
    (build-system r-build-system)
    (propagated-inputs (list r-testthat r-rdpack r-rcppthread r-rcpp r-r6))
    (home-page "https://fleverest.github.io/elections.dtree/")
    (synopsis "Ranked Voting Election Audits with Dirichlet-Trees")
    (description
     "Perform ballot-polling Bayesian audits for ranked voting elections using
Dirichlet-tree prior distributions.  Everest et al. (2022) <arXiv:2206.14605>,
<arXiv:2209.03881>.")
    (license license:gpl3)))

(define-public r-elections
  (package
    (name "r-elections")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elections" version))
              (sha256
               (base32
                "0ig3pd1dw978g2sg4ynzd3p15nk6hx17pxvbxfi5rm131mjdmjdm"))))
    (properties `((upstream-name . "elections")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=elections")
    (synopsis "USA Presidential Elections Data")
    (description
     "This includes a dataset on the outcomes of the USA presidential elections since
1920, and various predictors, as used in
<http://vanderwalresearch.com/blog/15-elections>.")
    (license license:gpl2+)))

(define-public r-elect
  (package
    (name "r-elect")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elect" version))
              (sha256
               (base32
                "1hjqhmdklspssa75x8xdhv2narqgw80qh259hyfwfgnvva97w2ja"))))
    (properties `((upstream-name . "elect")))
    (build-system r-build-system)
    (propagated-inputs (list r-nnet r-msm))
    (home-page "https://cran.r-project.org/package=elect")
    (synopsis "Estimation of Life Expectancies Using Multi-State Models")
    (description
     "This package provides functions to compute state-specific and marginal life
expectancies.  The computation is based on a fitted continuous-time multi-state
model that includes an absorbing death state; see Van den Hout (2017,
ISBN:9781466568402).  The fitted multi-state model model should be estimated
using the msm package using age as the time-scale.")
    (license license:gpl2)))

(define-public r-elechemr
  (package
    (name "r-elechemr")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EleChemr" version))
              (sha256
               (base32
                "1wr2lkaf56qxsnqi7mgbgzy72lhkr0xlr1w1l9hy1dpmmqcqw7l3"))))
    (properties `((upstream-name . "EleChemr")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (home-page "https://cran.r-project.org/package=EleChemr")
    (synopsis "Electrochemical Reactions Simulation")
    (description
     "Digital simulation of electrochemical processes.  Each function allows for
implicit and explicit solution of the differential equation using methods like
Euler, Backwards implicit, Runge Kutta 4, Crank Nicholson and Backward
differentiation formula as well as different number of points for derivative
approximation.  Several electrochemical processes can be simulated such as:
Chronoamperometry, Potential Step, Linear Sweep, Cyclic Voltammetry, Cyclic
Voltammetry with electrochemical reaction followed by chemical reaction (EC
mechanism) and CV with two following electrochemical reaction (EE mechanism).
In update 1.1.0 has been added a general purpose CV function that allow to
simulate up to 4 EE mechanism combined with chemical reaction for each
species.Update 1.2.0 improved the accuracy of the measurements and allow
personalized data resolution for simulation.  Bibliography regarding this
methods can be found in the following texts.  Dieter Britz, Jorg Strutwolf
(2016) <ISBN:978-3-319-30292-8>.  Allen J. Bard, Larry R. Faulkner (2000)
<ISBN:978-0-471-04372-0>.")
    (license license:gpl3)))

(define-public r-elec
  (package
    (name "r-elec")
    (version "0.1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elec" version))
              (sha256
               (base32
                "1qc2hzbkmxvk4zrmdr935klhxvvdc7rmximqybb5aammd351qh2a"))))
    (properties `((upstream-name . "elec")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=elec")
    (synopsis "Collection of Functions for Statistical Election Audits")
    (description
     "This is a (somewhat bizarre) collection of functions written to do various sorts
of statistical election audits.  There are also functions to generate simulated
voting data, including methods to simulation different types of voting errors
which allow for simulations for checking the characteristics of these methods.")
    (license license:gpl2+)))

(define-public r-elcic
  (package
    (name "r-elcic")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ELCIC" version))
              (sha256
               (base32
                "1iildkyiia2zinnfjyxvcmc1xd7chrcsdqzc0v7cl9b1jsqa8361"))))
    (properties `((upstream-name . "ELCIC")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgeesel
                             r-poisnor
                             r-mvtnorm
                             r-mass
                             r-geepack
                             r-bindata))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chencxxy28/ELCIC")
    (synopsis
     "The Empirical Likelihood-Based Consistent Information Criterion")
    (description
     "We developed a consistent and robust information criterion to conduct model
selection for semiparametric models.  It is free of distribution specification
and powerful to locate the true model given large sample size.  This package
provides several usage of ELCIC with applications in generalized linear model
(GLM), generalized estimating equation (GEE) for longitudinal data, and weighted
GEE (WGEE) for missing longitudinal data under the mechanism of missing at
random and drop-out.  Chixaing Chen, Ming Wang, Rongling Wu, Runze Li (2020)
<doi:10.5705/ss.202020.0254>.")
    (license license:artistic2.0)))

(define-public r-elbird
  (package
    (name "r-elbird")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elbird" version))
              (sha256
               (base32
                "1n9z71xii5kymrm5ar4gldz2czk8z94qzd2ms7fwk0cwynbdcc5k"))))
    (properties `((upstream-name . "elbird")))
    (build-system r-build-system)
    (propagated-inputs (list r-vroom
                             r-tibble
                             r-r6
                             r-purrr
                             r-matchr
                             r-dplyr
                             r-cpp11))
    (home-page "https://github.com/mrchypark/elbird/")
    (synopsis
     "Blazing Fast Morphological Analyzer Based on Kiwi(Korean Intelligent Word Identifier)")
    (description
     "This is the R wrapper package Kiwi(Korean Intelligent Word Identifier), a
blazing fast speed morphological analyzer for Korean.  It supports configuration
of user dictionary and detection of unregistered nouns based on frequency.")
    (license license:lgpl3+)))

(define-public r-elastic
  (package
    (name "r-elastic")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elastic" version))
              (sha256
               (base32
                "0k98ziacyxl1pyhyynmswcncqwl0a05sawypncdpdd9xr77nvgi6"))))
    (properties `((upstream-name . "elastic")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6 r-jsonlite r-curl r-crul))
    (home-page "https://docs.ropensci.org/elastic/")
    (synopsis "General Purpose Interface to 'Elasticsearch'")
    (description
     "Connect to Elasticsearch', a NoSQL database built on the Java Virtual Machine.
Interacts with the Elasticsearch HTTP API
(<https://www.elastic.co/elasticsearch/>), including functions for setting
connection details to Elasticsearch instances, loading bulk data, searching for
documents with both HTTP query variables and JSON based body requests.  In
addition, elastic provides functions for interacting with API's for indices',
documents, nodes, clusters, an interface to the cat API, and more.")
    (license license:expat)))

(define-public r-elastes
  (package
    (name "r-elastes")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elastes" version))
              (sha256
               (base32
                "1j28vqiflc6ij2yp9cniqs3vcjm597mrzdjvfg3235r9m6gf5yij"))))
    (properties `((upstream-name . "elastes")))
    (build-system r-build-system)
    (propagated-inputs (list r-sparseflmm r-orthogonalsplinebasis r-mgcv
                             r-elasdics))
    (native-inputs (list r-knitr))
    (home-page "https://mpff.github.io/elastes/")
    (synopsis
     "Elastic Full Procrustes Means for Sparse and Irregular Planar Curves")
    (description
     "This package provides functions for the computation of functional elastic shape
means over sets of open planar curves.  The package is particularly suitable for
settings where these curves are only sparsely and irregularly observed.  It uses
a novel approach for elastic shape mean estimation, where planar curves are
treated as complex functions and a full Procrustes mean is estimated from the
corresponding smoothed Hermitian covariance surface.  This is combined with the
methods for elastic mean estimation proposed in Steyer, StÃ¶cker, Greven	(2022)
<doi:10.1111/biom.13706>.  See StÃ¶cker et.  al. (2022) <arXiv:2203.10522> for
details.")
    (license license:gpl3+)))

(define-public r-elasso
  (package
    (name "r-elasso")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elasso" version))
              (sha256
               (base32
                "0nz3vw803dvk4s45zc9swyrkjwna94z84dn4vfj3j17h74a0cij2"))))
    (properties `((upstream-name . "elasso")))
    (build-system r-build-system)
    (propagated-inputs (list r-sizer r-glmnet))
    (home-page "https://cran.r-project.org/package=elasso")
    (synopsis
     "Enhanced Least Absolute Shrinkage and Selection Operator Regression Model")
    (description
     "This package performs some enhanced variable selection algorithms based on the
least absolute shrinkage and selection operator for regression model.")
    (license license:gpl2)))

(define-public r-elasdics
  (package
    (name "r-elasdics")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elasdics" version))
              (sha256
               (base32
                "1zpwkch4h463d1ad681iid668909w74xb0wyfjqshdvznb4pxp5i"))))
    (properties `((upstream-name . "elasdics")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=elasdics")
    (synopsis "Elastic Analysis of Sparse, Dense and Irregular Curves")
    (description
     "This package provides functions to align curves and to compute mean curves based
on the elastic distance defined in the square-root-velocity framework.  For more
details on this framework see Srivastava and Klassen (2016,
<doi:10.1007/978-1-4939-4020-2>).  For more theoretical details on our methods
and algorithms see Steyer et al. (2021, <arXiv:2104.11039>).")
    (license license:gpl3)))

(define-public r-elaborator
  (package
    (name "r-elaborator")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "elaborator" version))
              (sha256
               (base32
                "1kq3qqqywpzrk1ichsljvfijhsybmj7s0scmswmwi2crqi67gzp8"))))
    (properties `((upstream-name . "elaborator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-shinywidgets
                             r-shinydashboard
                             r-shiny
                             r-shape
                             r-seriation
                             r-rlang
                             r-reshape2
                             r-rcolorbrewer
                             r-purrr
                             r-haven
                             r-forcats
                             r-dplyr
                             r-dendextend
                             r-bsplus))
    (home-page "https://cran.r-project.org/package=elaborator")
    (synopsis "'shiny' Application for Exploring Laboratory Data")
    (description
     "This package provides a novel concept for generating knowledge and gaining
insights into laboratory data.  You will be able to efficiently and easily
explore your laboratory data from different perspectives.")
    (license license:gpl3)))

(define-public r-el2surv
  (package
    (name "r-el2surv")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EL2Surv" version))
              (sha256
               (base32
                "0bn2481rf61qnia468y7k95hhazjaghrv919a2y9ar5wcz5nq2kk"))))
    (properties `((upstream-name . "EL2Surv")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (home-page "https://cran.r-project.org/package=EL2Surv")
    (synopsis "Empirical Likelihood (EL) for Comparing Two Survival Functions")
    (description
     "This package provides functions for computing critical values and implementing
the one-sided/two-sided EL tests.")
    (license license:gpl2+)))

(define-public r-eks
  (package
    (name "r-eks")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eks" version))
              (sha256
               (base32
                "101dq01ngixaab7zj09bcy7jyaa27qf9rb3jsz03j1mrapzipnlv"))))
    (properties `((upstream-name . "eks")))
    (build-system r-build-system)
    (propagated-inputs (list r-sf
                             r-mapsf
                             r-ks
                             r-isoband
                             r-ggplot2
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://www.mvstat.net/mvksa/")
    (synopsis "Tidy and Geospatial Kernel Smoothing")
    (description
     "Extensions of the kernel smoothing functions from the ks package for
compatibility with the tidyverse and geospatial ecosystems
<doi:10.48550/arXiv.2203.01686>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-ekmcmc
  (package
    (name "r-ekmcmc")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EKMCMC" version))
              (sha256
               (base32
                "0filw1xikbv55h7xswlqifd30d43b9y3h2m6i0zv8v54y8mmszfg"))))
    (properties `((upstream-name . "EKMCMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-numderiv))
    (home-page "https://cran.r-project.org/package=EKMCMC")
    (synopsis "MCMC Procedures for Estimating Enzyme Kinetics Constants")
    (description
     "This package provides functions for estimating catalytic constant and
Michaelis-Menten constant for enzyme kinetics model using Metropolis-Hasting
algorithm within Gibbs sampler based on the Bayesian framework.")
    (license license:gpl3)))

(define-public r-eixport
  (package
    (name "r-eixport")
    (version "0.5.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eixport" version))
              (sha256
               (base32
                "0q6djpp6x0hzzk2sh36rfgzch3n6v4af9knvwv0fnlh72n2cj0b8"))))
    (properties `((upstream-name . "eixport")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp
                             r-sf
                             r-rgdal
                             r-raster
                             r-ncdf4
                             r-data-table
                             r-cptcity))
    (home-page "https://atmoschem.github.io/eixport/")
    (synopsis "Export Emissions to Atmospheric Models")
    (description
     "Emissions are the mass of pollutants released into the atmosphere.  Air quality
models need emissions data, with spatial and temporal distribution, to represent
air pollutant concentrations.  This package, eixport', creates inputs for the
air quality models WRF-Chem Grell et al (2005)
<doi:10.1016/j.atmosenv.2005.04.027>, MUNICH Kim et al (2018)
<doi:10.5194/gmd-11-611-2018> , BRAMS-SPM Freitas et al (2005)
<doi:10.1016/j.atmosenv.2005.07.017> and RLINE Snyder et al (2013)
<doi:10.1016/j.atmosenv.2013.05.074>.  See the eixport website
(<https://atmoschem.github.io/eixport/>) for more information, documentations
and examples.  More details in Ibarra-Espinosa et al (2018)
<doi:10.21105/joss.00607>.")
    (license license:expat)))

(define-public r-eix
  (package
    (name "r-eix")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EIX" version))
              (sha256
               (base32
                "02ry0aqqnd0zh6zbvx1dbq3sdahyqcgabhkvbbw4ig0qk70w62aj"))))
    (properties `((upstream-name . "EIX")))
    (build-system r-build-system)
    (propagated-inputs (list r-xgboost
                             r-tidyr
                             r-scales
                             r-purrr
                             r-mass
                             r-ibreakdown
                             r-ggrepel
                             r-ggplot2
                             r-ggiraphextra
                             r-data-table
                             r-dalex))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ModelOriented/EIX")
    (synopsis "Explain Interactions in 'XGBoost'")
    (description
     "Structure mining from XGBoost and LightGBM models.  Key functionalities of this
package cover: visualisation of tree-based ensembles models, identification of
interactions, measuring of variable importance, measuring of interaction
importance, explanation of single prediction with break down plots (based on
xgboostExplainer and iBreakDown packages).  To download the LightGBM use the
following link: <https://github.com/Microsoft/LightGBM>.  EIX is a part of the
DrWhy.AI universe.")
    (license license:gpl2)))

(define-public r-eivtools
  (package
    (name "r-eivtools")
    (version "0.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eivtools" version))
              (sha256
               (base32
                "0ynmrql6dv10m7cwba5mzwlbvp6ab53nzqqvk3ihwyiqzmnnmpk4"))))
    (properties `((upstream-name . "eivtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-r2jags))
    (home-page "https://cran.r-project.org/package=eivtools")
    (synopsis "Measurement Error Modeling Tools")
    (description
     "This includes functions for analysis with error-prone covariates, including
deconvolution, latent regression and errors-in-variables regression.  It
implements methods by Rabe-Hesketh et al. (2003)
<doi:10.1191/1471082x03st056oa>, Lockwood and McCaffrey (2014)
<doi:10.3102/1076998613509405>, and Lockwood and McCaffrey (2017)
<doi:10.1007/s11336-017-9556-y>, among others.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-eive
  (package
    (name "r-eive")
    (version "3.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eive" version))
              (sha256
               (base32
                "1livknaplgbw0338kz10hgxrwbm05hhggi5h9klfc2gpw62z6hhs"))))
    (properties `((upstream-name . "eive")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (home-page "https://cran.r-project.org/package=eive")
    (synopsis
     "An Algorithm for Reducing Errors-in-Variable Bias in Simple Linear Regression")
    (description
     "This package performs a compact genetic algorithm search to reduce
errors-in-variables bias in linear regression.  The algorithm estimates the
regression parameters with lower biases and higher variances but mean-square
errors (MSEs) are reduced.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-eirm
  (package
    (name "r-eirm")
    (version "0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eirm" version))
              (sha256
               (base32
                "0zs45n6xkyi9agrgv36bz2prdcplln66713xjr6sxyip52z9ksbk"))))
    (properties `((upstream-name . "eirm")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinydashboard
                             r-shinycssloaders
                             r-shiny
                             r-reshape2
                             r-readxl
                             r-optimx
                             r-magrittr
                             r-lme4
                             r-ggplot2
                             r-ggeffects
                             r-blme))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/okanbulut/eirm")
    (synopsis
     "Explanatory Item Response Modeling for Dichotomous and Polytomous Items")
    (description
     "Analysis of dichotomous and polytomous response data using the explanatory item
response modeling framework, as described in Bulut, Gorgun, & Yildirim-Erbasli
(2021) <doi:10.3390/psych3030023>, Stanke & Bulut (2019)
<doi:10.21449/ijate.515085>, and De Boeck & Wilson (2004)
<doi:10.1007/978-1-4757-3990-9>.  Generalized linear mixed modeling is used for
estimating the effects of item-related and person-related variables on
dichotomous and polytomous item responses.")
    (license license:gpl3+)))

(define-public r-eipack
  (package
    (name "r-eipack")
    (version "0.2-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eiPack" version))
              (sha256
               (base32
                "0xcgl9pr6d960zhp8fd944ba5p5ybp520lp2a4jgsj1lcvqf8xbn"))))
    (properties `((upstream-name . "eiPack")))
    (build-system r-build-system)
    (propagated-inputs (list r-msm r-mass r-coda))
    (home-page "http://www.olivialau.org/software")
    (synopsis "Ecological Inference and Higher-Dimension Data Management")
    (description
     "This package provides methods for analyzing R by C ecological contingency tables
using the extreme case analysis, ecological regression, and
Multinomial-Dirichlet ecological inference models.  Also provides tools for
manipulating higher-dimension data objects.")
    (license (list license:gpl2+
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-eiopar
  (package
    (name "r-eiopar")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eiopaR" version))
              (sha256
               (base32
                "1f8fm6ia5invskc7a7hcjvf52afdkw38y1vx7jlpqxvawswmwpv2"))))
    (properties `((upstream-name . "eiopaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr r-curl))
    (home-page "https://cran.r-project.org/package=eiopaR")
    (synopsis "Access to RFR (Risk-Free Rate) Curves Produced by the EIOPA")
    (description
     "This package provides EIOPA (European Insurance And Occupational Pensions
Authority) risk-free rates.  Please note that the author of this package is not
affiliated with EIOPA. The data is accessed through a REST API available at
<https://mehdiechchelh.com/api/>.")
    (license license:expat)))

(define-public r-einsum
  (package
    (name "r-einsum")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "einsum" version))
              (sha256
               (base32
                "01930c38hkbqhn8d5g7jfhr0mrdi077rg0kkbp5kagxcqx6jrg7w"))))
    (properties `((upstream-name . "einsum")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mathjaxr r-glue))
    (home-page "https://cran.r-project.org/package=einsum")
    (synopsis "Einstein Summation")
    (description
     "The summation notation suggested by Einstein (1916)
<doi:10.1002/andp.19163540702> is a concise mathematical notation that
implicitly sums over repeated indices of n-dimensional arrays.  Many ordinary
matrix operations (e.g. transpose, matrix multiplication, scalar product,
diag()', trace etc.) can be written using Einstein notation.  The notation is
particularly convenient for expressing operations on arrays with more than two
dimensions because the respective operators ('tensor products') might not have a
standardized name.")
    (license license:expat)))

(define-public r-einet
  (package
    (name "r-einet")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "einet" version))
              (sha256
               (base32
                "02v4k6031q2bcjkhbypzkgdj1lyvqbsi1nb0y40zb26bk2381ycq"))))
    (properties `((upstream-name . "einet")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-magrittr r-igraph r-entropy
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/travisbyrum/einet")
    (synopsis "Effective Information and Causal Emergence")
    (description
     "This package provides methods and utilities for causal emergence.  Used to
explore and compute various information theory metrics for networks, such as
effective information, effectiveness and causal emergence.")
    (license license:expat)))

(define-public r-eimpute
  (package
    (name "r-eimpute")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eimpute" version))
              (sha256
               (base32
                "11bjvzmf252m3440z5wlsx92ybay5g76j2af0xbcybhqz7wpkk0l"))))
    (properties `((upstream-name . "eimpute")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eimpute")
    (synopsis "Efficiently Impute Large Scale Incomplete Matrix")
    (description
     "Efficiently impute large scale matrix with missing values via its unbiased
low-rank matrix approximation.  Our main approach is Hard-Impute algorithm
proposed in <https://www.jmlr.org/papers/v11/mazumder10a.html>, which achieves
highly computational advantage by truncated singular-value decomposition.")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-eikosograms
  (package
    (name "r-eikosograms")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eikosograms" version))
              (sha256
               (base32
                "13s5wqcc8iwnhn3msrh9dfrvq9bwlby93p9v5wcnrm8m9iskax1s"))))
    (properties `((upstream-name . "eikosograms")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/rwoldford/eikosograms")
    (synopsis "The Picture of Probability")
    (description
     "An eikosogram (ancient Greek for probability picture) divides the unit square
into rectangular regions whose areas, sides, and widths, represent various
probabilities associated with the values of one or more categorical variates.
Rectangle areas are joint probabilities, widths are always marginal (though
possibly joint margins, i.e.  marginal joint distributions of two or more
variates), and heights of rectangles are always conditional probabilities.
Eikosograms embed the rules of probability and are useful for introducing
elementary probability theory, including axioms, marginal, conditional, and
joint probabilities, and their relationships (including Bayes theorem as a
completely trivial consequence).  They are markedly superior to Venn diagrams
for this purpose, especially in distinguishing probabilistic independence,
mutually exclusive events, coincident events, and associations.  They also are
useful for identifying and understanding conditional independence structure.  As
data analysis tools, eikosograms display categorical data in a manner similar to
Mosaic plots, especially when only two variates are involved (the only case in
which they are essentially identical, though eikosograms purposely disallow
spacing between rectangles).  Unlike Mosaic plots, eikosograms do not alternate
axes as each new categorical variate (beyond two) is introduced.  Instead, only
one categorical variate, designated the \"response\", presents on the vertical
axis and all others, designated the \"conditioning\" variates, appear on the
horizontal.  In this way, conditional probability appears only as height and
marginal probabilities as widths.  The eikosogram is therefore much better
suited to a response model analysis (e.g. logistic model) than is a Mosaic plot.
 Mosaic plots are better suited to log-linear style modelling as in discrete
multivariate analysis.  Of course, eikosograms are also suited to discrete
multivariate analysis with each variate in turn appearing as the response.  This
makes it better suited than Mosaic plots to discrete graphical models based on
conditional independence graphs (i.e. \"Bayesian Networks\" or \"BayesNets\").  The
eikosogram and its superiority to Venn diagrams in teaching probability is
described in W.H. Cherry and R.W. Oldford (2003)
<https://math.uwaterloo.ca/~rwoldfor/papers/eikosograms/paper.pdf>, its value in
exploring conditional independence structure and relation to graphical and
log-linear models is described in R.W. Oldford (2003)
<https://math.uwaterloo.ca/~rwoldfor/papers/eikosograms/independence/paper.pdf>,
and a number of problems, puzzles, and paradoxes that are easily explained with
eikosograms are given in R.W. Oldford (2003)
<https://math.uwaterloo.ca/~rwoldfor/papers/eikosograms/examples/paper.pdf>.")
    (license license:gpl3)))

(define-public r-eigenr
  (package
    (name "r-eigenr")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EigenR" version))
              (sha256
               (base32
                "0jlk4kl0rl41kgxyg2a7q0bdcl45fc8qnqqzmv80ni9fwg23203l"))))
    (properties `((upstream-name . "EigenR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppeigen r-rcpp))
    (home-page "https://github.com/stla/EigenR")
    (synopsis "Complex Matrix Algebra with 'Eigen'")
    (description
     "Matrix algebra using the Eigen C++ library: determinant, rank, inverse,
pseudo-inverse, kernel and image, QR decomposition, Cholesky decomposition,
linear least-squares problems.  Also provides matrix functions such as
exponential, logarithm, power, sine and cosine.  Complex matrices are supported.")
    (license license:gpl3)))

(define-public r-eigenmodel
  (package
    (name "r-eigenmodel")
    (version "1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eigenmodel" version))
              (sha256
               (base32
                "1l3n0z736xf3x6cyxzmmq1jb2glxi2b75z7v39y4471knh6nbb4d"))))
    (properties `((upstream-name . "eigenmodel")))
    (build-system r-build-system)
    (home-page "https://pdhoff.github.io/")
    (synopsis
     "Semiparametric Factor and Regression Models for Symmetric Relational Data")
    (description
     "Estimation of the parameters in a model for symmetric relational data (e.g., the
above-diagonal part of a square matrix), using a model-based eigenvalue
decomposition and regression.  Missing data is accommodated, and a posterior
mean for missing data is calculated under the assumption that the data are
missing at random.  The marginal distribution of the relational data can be
arbitrary, and is fit with an ordered probit specification.  See Hoff (2007)
<arXiv:0711.1146> for details on the model.")
    (license license:gpl2)))

(define-public r-eicm
  (package
    (name "r-eicm")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eicm" version))
              (sha256
               (base32
                "0gil445xrsd1hhi5l6i3mn7kf4mbfwwhfkgmyja62dj68m4akwfz"))))
    (properties `((upstream-name . "eicm")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf
                             r-snow
                             r-pso
                             r-optimparallel
                             r-iterators
                             r-ga
                             r-foreach
                             r-dosnow))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/miguel-porto/eicm")
    (synopsis "Explicit Interaction Community Models")
    (description
     "Model fitting and species biotic interaction network topology selection for
explicit interaction community models.  Explicit interaction community models
are an extension of binomial linear models for joint modelling of species
communities, that incorporate both the effects of species biotic interactions
and the effects of missing covariates.  Species interactions are modelled as
direct effects of each species on each of the others, and are estimated
alongside the effects of missing covariates, modelled as latent factors.  The
package includes a penalized maximum likelihood fitting function, and a genetic
algorithm for selecting the most parsimonious species interaction network
topology.")
    (license license:gpl2+)))

(define-public r-eiadata
  (package
    (name "r-eiadata")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EIAdata" version))
              (sha256
               (base32
                "0cx8x16jn8pfik7yd6vfqh23fqlfxnfj3ya42h5zbvsbka8rislh"))))
    (properties `((upstream-name . "EIAdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-xml r-httr))
    (home-page "https://github.com/Matt-Brigida/EIAdata")
    (synopsis "R Wrapper for the Energy Information Administration (EIA) API")
    (description
     "An R wrapper to allow the user to query categories and Series IDs, and import
data, from the EIA's API <https://www.eia.gov/opendata/>.")
    (license license:gpl2)))

(define-public r-eia
  (package
    (name "r-eia")
    (version "0.3.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eia" version))
              (sha256
               (base32
                "1af9m5qrchxcrhyasx0hkrzjr6z4vixxmq4q9q33bkscy263q9fg"))))
    (properties `((upstream-name . "eia")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-readxl
                             r-purrr
                             r-memoise
                             r-magrittr
                             r-lubridate
                             r-jsonlite
                             r-httr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://docs.ropensci.org/eia/https://github.com/ropensci/eia")
    (synopsis
     "API Wrapper for 'US Energy Information Administration' Open Data")
    (description
     "This package provides API access to data from the US Energy Information
Administration ('EIA') <https://www.eia.gov/>.  Use of the API requires a free
API key obtainable at <https://www.eia.gov/opendata/register.php>.  The package
includes functions for searching EIA data categories and importing time series
and geoset time series datasets.  Datasets returned by these functions are
provided in a tidy format or alternatively in more raw form.  It also offers
helper functions for working with EIA date strings and time formats and for
inspecting different summaries of series metadata.  The package also provides
control over API key storage and caching of API request results.")
    (license license:expat)))

(define-public r-ei-datasets
  (package
    (name "r-ei-datasets")
    (version "0.0.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ei.Datasets" version))
              (sha256
               (base32
                "1ii9dnjxbjvzp0ihg499fvwqzgdwdcp2xxnqfqz319d805hajcpr"))))
    (properties `((upstream-name . "ei.Datasets")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://cran.r-project.org/package=ei.Datasets")
    (synopsis "Real Datasets for Assessing Ecological Inference Algorithms")
    (description
     "This package provides more than 550 data sets of actual election results.  Each
of the data sets includes aggregate party and candidate outcomes at the voting
unit (polling stations) level and two-way cross-tabulated results at the
district level.  These data sets can be used to assess ecological inference
algorithms devised for estimating RxC (global) ecological contingency tables
using exclusively aggregate results from voting units.  Reference: PavÃ­a (2022)
<doi:10.1177/08944393211040808>.")
    (license (list (license:fsdg-compatible "EPL")
                   (license:fsdg-compatible "CC BY 4.0")
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ei
  (package
    (name "r-ei")
    (version "1.3-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ei" version))
              (sha256
               (base32
                "0i8pvpal23zwsqldhmm3iis4vw9s08mlydpshaig2dsd9549gn11"))))
    (properties `((upstream-name . "ei")))
    (build-system r-build-system)
    (propagated-inputs (list r-ucminf
                             r-tmvtnorm
                             r-sp
                             r-plotrix
                             r-mvtnorm
                             r-msm
                             r-mnormt
                             r-mass
                             r-foreach
                             r-ellipse
                             r-eipack
                             r-cubature))
    (home-page "http://gking.harvard.edu/eiR")
    (synopsis "Ecological Inference")
    (description
     "Software accompanying Gary King's book: A Solution to the Ecological Inference
Problem. (1997).  Princeton University Press.  ISBN 978-0691012407.")
    (license license:gpl2+)))

(define-public r-ehrtemporalvariability
  (package
    (name "r-ehrtemporalvariability")
    (version "1.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EHRtemporalVariability" version))
              (sha256
               (base32
                "02izrgl526znn4xs10c5l3gv0b5chmgr376i26nli988cypmf32h"))))
    (properties `((upstream-name . "EHRtemporalVariability")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-xts
                             r-viridis
                             r-scales
                             r-rcolorbrewer
                             r-plotly
                             r-mass
                             r-lubridate
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/hms-dbmi/EHRtemporalVariability")
    (synopsis
     "Delineating Temporal Dataset Shifts in Electronic Health Records")
    (description
     "This package provides functions to delineate temporal dataset shifts in
Electronic Health Records through the projection and visualization of
dissimilarities among data temporal batches.  This is done through the
estimation of data statistical distributions over time and their projection in
non-parametric statistical manifolds, uncovering the patterns of the data latent
temporal variability.  EHRtemporalVariability is particularly suitable for
multi-modal data and categorical variables with a high number of values, common
features of biomedical data where traditional statistical process control or
time-series methods may not be appropriate.  EHRtemporalVariability allows you
to explore and identify dataset shifts through visual analytics formats such as
Data Temporal heatmaps and Information Geometric Temporal (IGT) plots.  An
additional EHRtemporalVariability Shiny app can be used to load and explore the
package results and even to allow the use of these functions to those users
non-experienced in R coding. (SÃ¡ez et al.  2020)
<doi:10.1093/gigascience/giaa079>.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ehr
  (package
    (name "r-ehr")
    (version "0.4-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EHR" version))
              (sha256
               (base32
                "062smk24f3jv7m0833h6nygrk7pq3n85a5sq1j752i0z1j2px3np"))))
    (properties `((upstream-name . "EHR")))
    (build-system r-build-system)
    (propagated-inputs (list r-pkdata r-lubridate r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://choileena.github.io/")
    (synopsis
     "Electronic Health Record (EHR) Data Processing and Analysis Tool")
    (description
     "Process and analyze electronic health record (EHR) data.  The EHR package
provides modules to perform diverse medication-related studies using data from
EHR databases.  Especially, the package includes modules to perform
pharmacokinetic/pharmacodynamic (PK/PD) analyses using EHRs, as outlined in
Choi, Beck, McNeer, Weeks, Williams, James, Niu, Abou-Khalil, Birdwell, Roden,
Stein, Bejan, Denny, and Van Driest (2020) <doi:10.1002/cpt.1787>.  Additional
modules will be added in future.  In addition, this package provides various
functions useful to perform Phenome Wide Association Study (PheWAS) to explore
associations between drug exposure and phenotypes obtained from EHR data, as
outlined in Choi, Carroll, Beck, Mosley, Roden, Denny, and Van Driest (2018)
<doi:10.1093/bioinformatics/bty306>.")
    (license license:gpl3+)))

(define-public r-ehof
  (package
    (name "r-ehof")
    (version "1.12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eHOF" version))
              (sha256
               (base32
                "1797bf4wh8qy2qqhfmgi22a89zr39rsfmvbnvrfdvvpaf1zlrp2n"))))
    (properties `((upstream-name . "eHOF")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-lattice))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eHOF")
    (synopsis "Extended HOF (Huisman-Olff-Fresco) Models")
    (description
     "Extended and enhanced hierarchical logistic regression models (called
Huisman-Olff-Fresco in biology, see Huisman et al.  1993 Journal of Vegetation
Science <doi:10.1111/jvs.12050>) models.  Response curves along one-dimensional
gradients including no response, monotone, plateau, unimodal and bimodal models.")
    (license license:gpl2+)))

(define-public r-ehelp
  (package
    (name "r-ehelp")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ehelp" version))
              (sha256
               (base32
                "0264nx4bidrbwhlxx9llarvh4zb3xnzln8km14823q1hclkpm2fq"))))
    (properties `((upstream-name . "ehelp")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mponce0/eHelp")
    (synopsis
     "Enhanced Help to Enable \"Docstring\"-Comments in Users Functions")
    (description
     "By overloading the R help() function, this package allows users to use
\"docstring\" style comments within their own defined functions.  The package also
provides additional functions to mimic the R basic example() function and the
prototyping of packages.")
    (license license:gpl2+)))

(define-public r-ehdprep
  (package
    (name "r-ehdprep")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eHDPrep" version))
              (sha256
               (base32
                "0ff0hxwxi3gddgzayxy1l2hplh9l3a9n958wkgg9cnzpkx7mkqa3"))))
    (properties `((upstream-name . "eHDPrep")))
    (build-system r-build-system)
    (propagated-inputs (list r-tm
                             r-tidyr
                             r-tidygraph
                             r-tibble
                             r-stringr
                             r-scales
                             r-rlang
                             r-readxl
                             r-readr
                             r-quanteda
                             r-purrr
                             r-pheatmap
                             r-magrittr
                             r-knitr
                             r-kableextra
                             r-igraph
                             r-ggplot2
                             r-forcats
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eHDPrep")
    (synopsis "Quality Control and Semantic Enrichment of Datasets")
    (description
     "This package provides a tool for the preparation and enrichment of health
datasets for analysis.  Provides functionality for assessing data quality and
for improving the reliability and machine interpretability of a dataset.
eHDPrep also enables semantic enrichment of a dataset where metavariables are
discovered from the relationships between input variables determined from
user-provided ontologies.")
    (license license:gpl3)))

(define-public r-ehagof
  (package
    (name "r-ehagof")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ehaGoF" version))
              (sha256
               (base32
                "15hpzj3ridl6w3pd5z86d88cc88jw09qpqhsdwkar4dby8lgxhi0"))))
    (properties `((upstream-name . "ehaGoF")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ehaGoF")
    (synopsis "Calculates Goodness of Fit Statistics")
    (description
     "Calculates 15 different goodness of fit criteria.  These are; standard deviation
ratio (SDR), coefficient of variation (CV), relative root mean square error
(RRMSE), Pearson's correlation coefficients (PC), root mean square error (RMSE),
performance index (PI), mean error (ME), global relative approximation error
(RAE), mean relative approximation error (MRAE), mean absolute percentage error
(MAPE), mean absolute deviation (MAD), coefficient of determination (R-squared),
adjusted coefficient of determination (adjusted R-squared), Akaike's information
criterion (AIC), corrected Akaike's information criterion (CAIC), Mean Square
Error (MSE), Bayesian Information Criterion (BIC) and Normalized Mean Square
Error (NMSE).")
    (license license:gpl2)))

(define-public r-eha
  (package
    (name "r-eha")
    (version "2.10.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eha" version))
              (sha256
               (base32
                "132n988b4wpx5m2bilc9cqgpxf8j8gkhymh3xvbp88am6iy8155f"))))
    (properties `((upstream-name . "eha")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival))
    (native-inputs (list r-knitr gfortran))
    (home-page "http://ehar.se/r/eha/")
    (synopsis "Event History Analysis")
    (description
     "Parametric proportional hazards fitting with left truncation and right censoring
for common families of distributions, piecewise constant hazards, and discrete
models.  Parametric accelerated failure time models for left truncated and right
censored data.  Proportional hazards models for tabular and register data.
Sampling of risk sets in Cox regression, selections in the Lexis diagram,
bootstrapping.  BrostrÃ¶m (2012) <doi:10.1201/9781315373942>.")
    (license license:gpl2+)))

(define-public r-egst
  (package
    (name "r-egst")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eGST" version))
              (sha256
               (base32
                "0qi4vg0pwy55js9ww1cw85ssim3x7s2p98cjijxvlrvid8sns5bq"))))
    (properties `((upstream-name . "eGST")))
    (build-system r-build-system)
    (propagated-inputs (list r-purrr r-mvtnorm r-matrixstats r-mass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ArunabhaCodes/eGST")
    (synopsis
     "Leveraging eQTLs to Identify Individual-Level Tissue of Interest for a Complex Trait")
    (description
     "Genetic predisposition for complex traits is often manifested through multiple
tissues of interest at different time points in the development.  As an example,
the genetic predisposition for obesity could be manifested through inherited
variants that control metabolism through regulation of genes expressed in the
brain and/or through the control of fat storage in the adipose tissue by
dysregulation of genes expressed in adipose tissue.  We present a method eGST
(eQTL-based genetic subtyper) that integrates tissue-specific eQTLs with GWAS
data for a complex trait to probabilistically assign a tissue of interest to the
phenotype of each individual in the study.  eGST estimates the posterior
probability that an individual's phenotype can be assigned to a tissue based on
individual-level genotype data of tissue-specific eQTLs and marginal phenotype
data in a genome-wide association study (GWAS) cohort.  Under a Bayesian
framework of mixture model, eGST employs a maximum a posteriori (MAP)
expectation-maximization (EM) algorithm to estimate the tissue-specific
posterior probability across individuals.  Methodology is available from: A
Majumdar, C Giambartolomei, N Cai, MK Freund, T Haldar, T Schwarz, J Flint, B
Pasaniuc (2019) <doi:10.1101/674226>.")
    (license license:gpl3)))

(define-public r-egrni
  (package
    (name "r-egrni")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EGRNi" version))
              (sha256
               (base32
                "0wgdhlmnch6gpypqlwd5z56ia03lbbimr4ci9gcfs8f881dh92dy"))))
    (properties `((upstream-name . "EGRNi")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-mass r-gdata r-fdrtool))
    (home-page "https://cran.r-project.org/package=EGRNi")
    (synopsis "Ensemble Gene Regulatory Network Inference")
    (description
     "Gene regulatory network constructed using combined score obtained from
individual network inference method.  The combined score measures the
significance of edges in the ensemble network.  Fisher's weighted method has
been implemented to combine the outcomes of different methods based on the
probability values.  The combined score follows chi-square distribution with 2n
degrees of freedom. <doi:10.22271/09746315.2020.v16.i3.1358>.")
    (license license:gpl3)))

(define-public r-egretci
  (package
    (name "r-egretci")
    (version "2.0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EGRETci" version))
              (sha256
               (base32
                "1g01a03smn5yp261cyk3x310m1mcv4bqyh8y123wam9gpa7dxrp6"))))
    (properties `((upstream-name . "EGRETci")))
    (build-system r-build-system)
    (propagated-inputs (list r-egret r-binom))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/USGS-R/EGRETci")
    (synopsis "Exploration and Graphics for RivEr Trends Confidence Intervals")
    (description
     "Collection of functions to evaluate uncertainty of results from water quality
analysis using the Weighted Regressions on Time Discharge and Season (WRTDS)
method.  This package is an add-on to the EGRET package that performs the WRTDS
analysis.  The WRTDS modeling method was initially introduced and discussed in
Hirsch et al. (2010) <doi:10.1111/j.1752-1688.2010.00482.x>, and expanded in
Hirsch and De Cicco (2015) <doi:10.3133/tm4A10>.  The paper describing the
uncertainty and confidence interval calculations is Hirsch et al. (2015)
<doi:10.1016/j.envsoft.2015.07.017>.")
    (license license:cc0)))

(define-public r-egret
  (package
    (name "r-egret")
    (version "3.0.7")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EGRET" version))
              (sha256
               (base32
                "1fxpcdsq7njf1hjy3a4i0fx0ah9v7jzmdwg4c7009nikyhx5ri6x"))))
    (properties `((upstream-name . "EGRET")))
    (build-system r-build-system)
    (propagated-inputs (list r-truncnorm
                             r-survival
                             r-mass
                             r-foreach
                             r-fields
                             r-dataretrieval))
    (native-inputs (list r-knitr))
    (home-page "https://pubs.usgs.gov/tm/04/a10/")
    (synopsis "Exploration and Graphics for RivEr Trends")
    (description
     "Statistics and graphics for streamflow history, water quality trends, and the
statistical modeling algorithm: Weighted Regressions on Time, Discharge, and
Season (WRTDS).  The modeling method is introduced and discussed in Hirsch et
al. (2010) <doi:10.1111/j.1752-1688.2010.00482.x>, and expanded in Hirsch and De
Cicco (2015) <doi:10.3133/tm4A10>.")
    (license license:cc0)))

(define-public r-egor
  (package
    (name "r-egor")
    (version "1.22.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "egor" version))
              (sha256
               (base32
                "03bsqldkvwfxwk5hy74ilhkkyhpd6sx7x39ayl0ap354gmyfmzgg"))))
    (properties `((upstream-name . "egor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tidygraph
                             r-tibble
                             r-srvyr
                             r-rlang
                             r-purrr
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/tilltnet/egor")
    (synopsis "Import and Analyse Ego-Centered Network Data")
    (description
     "Tools for importing, analyzing and visualizing ego-centered network data.
Supports several data formats, including the export formats of EgoNet', EgoWeb
2.0 and openeddi'.  An interactive (shiny) app for the intuitive visualization
of ego-centered networks is provided.  Also included are procedures for creating
and visualizing Clustered Graphs (Lerner 2008
<DOI:10.1109/PACIFICVIS.2008.4475458>).")
    (license license:agpl3)))

(define-public r-egocor
  (package
    (name "r-egocor")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EgoCor" version))
              (sha256
               (base32
                "0d76bnx604vbwi858ihyvddn5awj1f8x5kiz0xp4incwlv7djza4"))))
    (properties `((upstream-name . "EgoCor")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatialtools r-sp r-shiny r-rdpack r-gstat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/julia-dyck/EgoCor")
    (synopsis "Simple Presentation of Estimated Exponential Semi-Variograms")
    (description
     "User friendly interface based on the R package gstat to fit exponential
parametric models to empirical semi-variograms in order to model the spatial
correlation structure of health data.  Geo-located health outcomes of survey
participants may be used to model spatial effects on health in an ego-centred
approach.  The package contains a range of functions to help explore the spatial
structure of the data as well as visualize the fit of exponential models for
various metaparameter combinations with respect to the number of lag intervals
and maximal distance.  Furthermore, the outcome of interest can be adjusted for
covariates by fitting a linear regression in a preliminary step before the
semi-variogram fitting process.")
    (license license:expat)))

(define-public r-eggcounts
  (package
    (name "r-eggcounts")
    (version "2.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eggCounts" version))
              (sha256
               (base32
                "1hb7a78db97xz5hm311d60n2kg1wdlrf57vg4ixamqihyrcs5r4v"))))
    (properties `((upstream-name . "eggCounts")))
    (build-system r-build-system)
    (propagated-inputs (list r-stanheaders
                             r-rstantools
                             r-rstan
                             r-rootsolve
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-numbers
                             r-lattice
                             r-coda
                             r-boot
                             r-bh))
    (home-page "https://www.math.uzh.ch/pages/eggcount/")
    (synopsis "Hierarchical Modelling of Faecal Egg Counts")
    (description
     "An implementation of Bayesian hierarchical models for faecal egg count data to
assess anthelmintic efficacy.  Bayesian inference is done via MCMC sampling
using Stan <https://mc-stan.org/>.")
    (license license:gpl3+)))

(define-public r-eganet
  (package
    (name "r-eganet")
    (version "1.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EGAnet" version))
              (sha256
               (base32
                "10vfv8fkk8kfcspp4p8avz16ipj58231q43rzrmwmcfx362q3g48"))))
    (properties `((upstream-name . "EGAnet")))
    (build-system r-build-system)
    (propagated-inputs (list r-semplot
                             r-qgraph
                             r-pbapply
                             r-openmx
                             r-network
                             r-matrixcalc
                             r-matrix
                             r-lavaan
                             r-igraph
                             r-glasso
                             r-ggpubr
                             r-ggplot2
                             r-ggdendro
                             r-ggally))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EGAnet")
    (synopsis
     "Exploratory Graph Analysis â a Framework for Estimating the Number of Dimensions in Multivariate Data using Network Psychometrics")
    (description
     "This package implements the Exploratory Graph Analysis (EGA) framework for
dimensionality and psychometric assessment.  EGA is part of a new area called
network psychometrics that uses undirected network models for the assessment of
psychometric properties.  EGA estimates the number of dimensions (or factors)
using graphical lasso or Triangulated Maximally Filtered Graph (TMFG) and a
weighted network community detection algorithm.  A bootstrap method for
verifying the stability of the dimensions and items in those dimensions is
available.  The fit of the structure suggested by EGA can be verified using
Entropy Fit Indices.  A novel approach called Unique Variable Analysis (UVA) can
be used to identify and reduce redundant variables in multivariate data.
Network loadings, which are roughly equivalent to factor loadings when the data
generating model is a factor model, are available.  Network scores can also be
computed using the network loadings.  Dynamic EGA (dynEGA) will estimate
dimensions from time series data for individual, group, and sample levels.
Golino, H., & Epskamp, S. (2017) <doi:10.1371/journal.pone.0174035>.  Golino,
H., Shi, D., Christensen, A. P., Garrido, L. E., Nieto, M. D., Sadana, R., &
Thiyagarajan, J. A. (2020) <doi:10.31234/osf.io/gzcre>.  Christensen, A. P., &
Golino, H. (under review) <doi:10.31234/osf.io/hz89e>.  Golino, H., Moulder, R.
G., Shi, D., Christensen, A. P., Garrido, L. E., Nieto, M. D., Nesselroade, J.,
Sadana, R., Thiyagarajan, J. A., & Boker, S. M. (2020)
<doi:10.31234/osf.io/mtka2>.  Christensen, A. P. & Golino, H. (2021)
<doi:10.3390/psych3030032>.  Christensen, A. P., Garrido, L. E., & Golino, H.
(under review) <doi:10.31234/osf.io/4kra2>.  Golino, H., Christensen, A. P.,
Moulder, R. G., Kim, S., & Boker, S. M. (under review)
<doi:10.31234/osf.io/tfs7c>.")
    (license license:gpl3+)))

(define-public r-ega
  (package
    (name "r-ega")
    (version "2.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ega" version))
              (sha256
               (base32
                "04kwh24aap22yclmcrix3vi553qb30hd43mgfzpdl0cw3ibrh7xg"))))
    (properties `((upstream-name . "ega")))
    (build-system r-build-system)
    (propagated-inputs (list r-mgcv r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ega")
    (synopsis "Error Grid Analysis")
    (description
     "This package provides functions for assigning Clarke or Parkes (Consensus) error
grid zones to blood glucose values, and for plotting both types of error grids
in both mg/mL and mmol/L units.")
    (license license:expat)))

(define-public r-efs
  (package
    (name "r-efs")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFS" version))
              (sha256
               (base32
                "1q8cf8dnxpv5s3lr9145y0wjhak4rz18dzah4xfs5qr4c8nlpl54"))))
    (properties `((upstream-name . "EFS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr r-randomforest r-proc r-party))
    (home-page "https://cran.r-project.org/package=EFS")
    (synopsis "Tool for Ensemble Feature Selection")
    (description
     "This package provides a function to check the importance of a feature based on a
dependent classification variable.  An ensemble of feature selection methods is
used to determine the normalized importance value of all features.  Combining
these methods in one function (building the cumulative importance values)
provides a stable feature selection tool.  This selection can also be viewed in
a barplot using the barplot_fs() function and proved using the evaluation
function efs_eval().")
    (license license:gpl2+)))

(define-public r-efred
  (package
    (name "r-efred")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eFRED" version))
              (sha256
               (base32
                "1sqhcwxbi2gxgznz0z3iyvllalq9qwm18bc60dr6y2wvcilagsiy"))))
    (properties `((upstream-name . "eFRED")))
    (build-system r-build-system)
    (propagated-inputs (list r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=eFRED")
    (synopsis "Fetch Data from the Federal Reserve Economic Database")
    (description
     "Interact with the FRED API, <https://fred.stlouisfed.org/docs/api/fred/>, to
fetch observations across economic series; find information about different
economic sources, releases, series, etc.; conduct searches by series name,
attributes, or tags; and determine the latest updates.  Includes functions for
creating panels of related variables with minimal effort and datasets containing
data sources, releases, and popular FRED tags.")
    (license license:expat)))

(define-public r-efreadr
  (package
    (name "r-efreadr")
    (version "0.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "efreadr" version))
              (sha256
               (base32
                "1h27by1m451wrnw017005avs5yj3fjzrm2lq5153aqm1mbbxxwvs"))))
    (properties `((upstream-name . "efreadr")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-magrittr r-ensurer r-dplyr))
    (home-page "https://cran.r-project.org/package=efreadr")
    (synopsis "Read European Eddy Fluxes CSV Files")
    (description
     "The European Eddy Fluxes Database Cluster distributes fluxes of different Green
House Gases measured mainly using the eddy covariance technique acquired in
sites involved in EU projects but also single sites in Europe, Africa and others
continents that decided to share their measurements in the database
<http://gaia.agraria.unitus.it>.  The package provides two functions to load and
row-wise bind CSV files distributed by the database.  Currently only L2, L3, and
L4 (L=Level), half-hourly and daily (aggregation) files are supported.")
    (license license:gpl3)))

(define-public r-eflm
  (package
    (name "r-eflm")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eflm" version))
              (sha256
               (base32
                "0pl1z0yy257x4yhy2m7w6xkicr2a5b37rdsrf7a5ramk7z2nvs4m"))))
    (properties `((upstream-name . "eflm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://github.com/pachadotdev/eflm/")
    (synopsis "Efficient Fitting of Linear and Generalized Linear Models")
    (description
     "Efficient Fitting of Linear and Generalized Linear Models by using just base R.
As an alternative to lm() and glm(), this package provides elm() and eglm(),
with a significant speedup when the number of observations is larger than the
number of parameters to estimate.  The speed gains are obtained by reducing the
NxP model matrix to a PxP matrix, and the best computational performance is
obtained when R is linked against OpenBLAS', Intel MKL or other optimized BLAS
library.  This implementation aims at being compatible with broom and sandwich
packages for summary statistics and clustering by providing S3 methods.")
    (license (license:fsdg-compatible "Apache License (>= 2)"))))

(define-public r-effsize
  (package
    (name "r-effsize")
    (version "0.8.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "effsize" version))
              (sha256
               (base32
                "1m5ch2g77f4ldbxhzp2ls1pga8hq7ggkz1xs8a90h0s09rj0gd7w"))))
    (properties `((upstream-name . "effsize")))
    (build-system r-build-system)
    (home-page "https://github.com/mtorchiano/effsize/")
    (synopsis "Efficient Effect Size Computation")
    (description
     "This package provides a collection of functions to compute the standardized
effect sizes for experiments (Cohen d, Hedges g, Cliff delta, Vargha-Delaney A).
 The computation algorithms have been optimized to allow efficient computation
even with very large data sets.")
    (license license:gpl2)))

(define-public r-efflog
  (package
    (name "r-efflog")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "efflog" version))
              (sha256
               (base32
                "1sfmq7xrr6psa6hwi05m44prjcpixnrl7la03k33n0bksj8r1w6b"))))
    (properties `((upstream-name . "efflog")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=efflog")
    (synopsis "The Causal Effects for a Causal Loglinear Model")
    (description
     "Fitting a causal loglinear model and calculating the causal effects for a causal
loglinear model with the multiplicative interaction or without the
multiplicative interaction, obtaining the natural direct, indirect and the total
effect.  It calculates also the cell effect, which is a new interaction effect.")
    (license license:gpl2+)))

(define-public r-efficientmaxeigenpair
  (package
    (name "r-efficientmaxeigenpair")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EfficientMaxEigenpair" version))
              (sha256
               (base32
                "1s0i9a2vk2g4f5gadsvzjfkw91hcjsrbyjg2vgnj1v17xrwgp40w"))))
    (properties `((upstream-name . "EfficientMaxEigenpair")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "http://github.com/mxjki/EfficientMaxEigenpair")
    (synopsis "Efficient Initials for Computing the Maximal Eigenpair")
    (description
     "An implementation for using efficient initials to compute the maximal eigenpair
in R. It provides three algorithms to find the efficient initials under two
cases: the tridiagonal matrix case and the general matrix case.  Besides, it
also provides two algorithms for the next to the maximal eigenpair under these
two cases.")
    (license license:expat)))

(define-public r-effecttreat
  (package
    (name "r-effecttreat")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EffectTreat" version))
              (sha256
               (base32
                "1kw1vq9y1q3xyiqsk855wjn9jqkzdh6h4xklbl9kvbqsvvhhsgkz"))))
    (properties `((upstream-name . "EffectTreat")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EffectTreat")
    (synopsis "Prediction of Therapeutic Success")
    (description
     "In personalized medicine, one wants to know, for a given patient and his or her
outcome for a predictor (pre-treatment variable), how likely it is that a
treatment will be more beneficial than an alternative treatment.  This package
allows for the quantification of the predictive causal association (i.e., the
association between the predictor variable and the individual causal effect of
the treatment) and related metrics.  Part of this software has been developed
using funding provided from the European Union's 7th Framework Programme for
research, technological development and demonstration under Grant Agreement no
602552.")
    (license license:gpl2+)))

(define-public r-effectstars2
  (package
    (name "r-effectstars2")
    (version "0.1-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EffectStars2" version))
              (sha256
               (base32
                "0yh4krqjh1jb7gjxb9z4f5bzarps0g9jfqbbva782a881dhcdl1x"))))
    (properties `((upstream-name . "EffectStars2")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam r-misctools))
    (home-page "https://cran.r-project.org/package=EffectStars2")
    (synopsis "Effect Stars")
    (description
     "This package provides functions for the method of effect stars as proposed by
Tutz and Schauberger (2013) <doi:10.1080/10618600.2012.701379>.  Effect stars
can be used to visualize estimates of parameters corresponding to different
groups, for example in multinomial logit models.  Beside the main function
effectstars there exist methods for special objects, for example for vglm
objects from the VGAM package.")
    (license license:gpl2+)))

(define-public r-effectstars
  (package
    (name "r-effectstars")
    (version "1.9-1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EffectStars" version))
              (sha256
               (base32
                "131w5bdc615gaa2czi4wyc2f96jcg24ahcmggajrvyhxmi6rag5x"))))
    (properties `((upstream-name . "EffectStars")))
    (build-system r-build-system)
    (propagated-inputs (list r-vgam))
    (home-page "https://cran.r-project.org/package=EffectStars")
    (synopsis "Visualization of Categorical Response Models")
    (description
     "Notice: The package EffectStars2 provides a more up-to-date implementation of
effect stars! EffectStars provides functions to visualize regression models with
categorical response as proposed by Tutz and Schauberger (2013)
<doi:10.1080/10618600.2012.701379>.  The effects of the variables are plotted
with star plots in order to allow for an optical impression of the fitted model.")
    (license license:gpl2)))

(define-public r-effectsizescr
  (package
    (name "r-effectsizescr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "effectsizescr" version))
              (sha256
               (base32
                "0shfjk6r3bz04jakrn5nwgymjx60lk83i0akcx7zqfxp3k8yncs5"))))
    (properties `((upstream-name . "effectsizescr")))
    (build-system r-build-system)
    (propagated-inputs (list r-kendall))
    (home-page "https://cran.r-project.org/package=effectsizescr")
    (synopsis "Indices for Single-Case Research")
    (description
     "Parametric and nonparametric statistics for single-case design.  Regarding
nonparametric statistics, the index suggested by Parker, Vannest, Davis and
Sauber (2011) <doi:10.1016/j.beth.2010.08.006> was included.  It combines both
nonoverlap and trend to estimate the effect size of a treatment in a single case
design.")
    (license license:expat)))

(define-public r-effectr
  (package
    (name "r-effectr")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "effectR" version))
              (sha256
               (base32
                "1icr1sx98x3h8rbky1agdh809arhjqcypyajl7y50yis8a5pkycb"))))
    (properties `((upstream-name . "effectR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-shiny
                             r-seqinr
                             r-rmarkdown
                             r-reshape2
                             r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=effectR")
    (synopsis "Predicts Oomycete Effectors")
    (description
     "Predicts cytoplasmic effector proteins using genomic data by searching for
motifs of interest using regular expression searches and hidden Markov models
(HMM) based in Haas et al. (2009) <doi:10.1038/nature08358>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-effectliter
  (package
    (name "r-effectliter")
    (version "0.4-5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EffectLiteR" version))
              (sha256
               (base32
                "118qddm19x2qv0zh642vfljlnd0p8lv1kz6k8jh33gf3sgl0rhd4"))))
    (properties `((upstream-name . "EffectLiteR")))
    (build-system r-build-system)
    (propagated-inputs (list r-survey
                             r-shiny
                             r-nnet
                             r-lavaan-survey
                             r-lavaan
                             r-ggplot2
                             r-foreign
                             r-car))
    (home-page "https://github.com/amayer2010/EffectLiteR")
    (synopsis "Average and Conditional Effects")
    (description
     "Use structural equation modeling to estimate average and conditional effects of
a treatment variable on an outcome variable, taking into account multiple
continuous and categorical covariates.")
    (license license:gpl2+)))

(define-public r-eff2
  (package
    (name "r-eff2")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eff2" version))
              (sha256
               (base32
                "0872xms2i8k128h3cn2n9dwa4apdyvxhb1h759cmyw63fw4wm8kx"))))
    (properties `((upstream-name . "eff2")))
    (build-system r-build-system)
    (propagated-inputs (list r-rbgl r-pcalg r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/richardkwo/eff2")
    (synopsis "Efficient Least Squares for Total Causal Effects")
    (description
     "Estimate a total causal effect from observational data under linearity and
causal sufficiency.  The observational data is supposed to be generated from a
linear structural equation model (SEM) with independent and additive noise.  The
underlying causal DAG associated the SEM is required to be known up to a
maximally oriented partially directed graph (MPDAG), which is a general class of
graphs consisting of both directed and undirected edges, including CPDAGs (i.e.,
essential graphs) and DAGs.  Such graphs are usually obtained with structure
learning algorithms with added background knowledge.  The program is able to
estimate every identified effect, including single and multiple treatment
variables.  Moreover, the resulting estimate has the minimal asymptotic
covariance (and hence shortest confidence intervals) among all estimators that
are based on the sample covariance.")
    (license license:expat)))

(define-public r-efdr
  (package
    (name "r-efdr")
    (version "1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFDR" version))
              (sha256
               (base32
                "1k6y2qxfw5py1brh25apmzqm00y3a458x0wrrmdg604g1m9zlkg5"))))
    (properties `((upstream-name . "EFDR")))
    (build-system r-build-system)
    (propagated-inputs (list r-waveslim
                             r-tidyr
                             r-sp
                             r-matrix
                             r-gstat
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-copula))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/andrewzm/EFDR/")
    (synopsis
     "Wavelet-Based Enhanced FDR for Detecting Signals from Complete or Incomplete Spatially Aggregated Data")
    (description
     "Enhanced False Discovery Rate (EFDR) is a tool to detect anomalies in an image.
The image is first transformed into the wavelet domain in order to decorrelate
any noise components, following which the coefficients at each resolution are
standardised.  Statistical tests (in a multiple hypothesis testing setting) are
then carried out to find the anomalies.  The power of EFDR exceeds that of
standard FDR, which would carry out tests on every wavelet coefficient: EFDR
choose which wavelets to test based on a criterion described in Shen et al.
(2002).  The package also provides elementary tools to interpolate spatially
irregular data onto a grid of the required size.  The work is based on Shen, X.,
Huang, H.-C., and Cressie, N. Nonparametric hypothesis testing for a spatial
signal.  Journal of the American Statistical Association 97.460 (2002):
1122-1140.")
    (license license:gpl2+)))

(define-public r-efdm
  (package
    (name "r-efdm")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "efdm" version))
              (sha256
               (base32
                "1b1ay4gssyhmgzklklx0zg424sp5jb3nmn0ry4fix8z3jaf412il"))))
    (properties `((upstream-name . "efdm")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mikkoku/efdm")
    (synopsis
     "Simulate Forest Resources with the European Forestry Dynamics Model")
    (description
     "An implementation of European Forestry Dynamics Model (EFDM) and an estimation
algorithm for the transition probabilities.  The EFDM is a large-scale forest
model that simulates the development of the forest and estimates volume of wood
harvested for any given forested area.  This estimate can be broken down by, for
example, species, site quality, management regime and ownership category.  See
Packalen et al. (2015) <doi:10.2788/153990>.")
    (license license:gpl2)))

(define-public r-efautilities
  (package
    (name "r-efautilities")
    (version "2.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFAutilities" version))
              (sha256
               (base32
                "1mrkjj6dnk2b2zd1pccnglxyxjyz6wlyy7wlaflaj747148g08a7"))))
    (properties `((upstream-name . "EFAutilities")))
    (build-system r-build-system)
    (propagated-inputs (list r-plyr r-mvtnorm r-mass r-gparotation))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EFAutilities")
    (synopsis "Utility Functions for Exploratory Factor Analysis")
    (description
     "This package provides a number of utility function for exploratory factor
analysis are included in this package.  In particular, it computes standard
errors for parameter estimates and factor correlations under a variety of
conditions.")
    (license license:gpl2)))

(define-public r-efatools
  (package
    (name "r-efatools")
    (version "0.4.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFAtools" version))
              (sha256
               (base32
                "1bs4j4d09h12yahf75r1ki18wmmvcmj5lkjsi0dw0cq7vr7swd85"))))
    (properties `((upstream-name . "EFAtools")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-rcpparmadillo
                             r-rcpp
                             r-psych
                             r-progressr
                             r-progress
                             r-magrittr
                             r-lavaan
                             r-gparotation
                             r-ggplot2
                             r-future-apply
                             r-future
                             r-dplyr
                             r-crayon
                             r-cli
                             r-checkmate))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/mdsteiner/EFAtools")
    (synopsis
     "Fast and Flexible Implementations of Exploratory Factor Analysis Tools")
    (description
     "This package provides functions to perform exploratory factor analysis (EFA)
procedures and compare their solutions.  The goal is to provide state-of-the-art
factor retention methods and a high degree of flexibility in the EFA procedures.
 This way, for example, implementations from R psych and SPSS can be compared.
Moreover, functions for Schmid-Leiman transformation and the computation of
omegas are provided.  To speed up the analyses, some of the iterative
procedures, like principal axis factoring (PAF), are implemented in C++.")
    (license license:gpl3)))

(define-public r-efa-mrfa
  (package
    (name "r-efa-mrfa")
    (version "1.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFA.MRFA" version))
              (sha256
               (base32
                "0p1zkfwjch9y39r7hjccjk7vfbnfwpdak6jfjs1sdpqkjqiw3r86"))))
    (properties `((upstream-name . "EFA.MRFA")))
    (build-system r-build-system)
    (propagated-inputs (list r-scales r-reshape2 r-psych r-pcovr r-ggplot2))
    (home-page "https://cran.r-project.org/package=EFA.MRFA")
    (synopsis "Dimensionality Assessment Using Minimum Rank Factor Analysis")
    (description
     "This package performs parallel analysis (Timmerman & Lorenzo-Seva, 2011
<doi:10.1037/a0023353>) and hull method (Lorenzo-Seva, Timmerman, & Kiers, 2011
<doi:10.1080/00273171.2011.564527>) for assessing the dimensionality of a set of
variables using minimum rank factor analysis (see ten Berge & Kiers, 1991
<doi:10.1007/BF02294464> for more information).  The package also includes the
option to compute minimum rank factor analysis by itself, as well as the greater
lower bound calculation.")
    (license license:gpl3)))

(define-public r-efa-dimensions
  (package
    (name "r-efa-dimensions")
    (version "0.1.7.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EFA.dimensions" version))
              (sha256
               (base32
                "0798kmgh1d7k389kgw31qg617vhqqgz3ychw7ji4xqkxjadvm34n"))))
    (properties `((upstream-name . "EFA.dimensions")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-polycor r-efatools))
    (home-page "https://cran.r-project.org/package=EFA.dimensions")
    (synopsis
     "Exploratory Factor Analysis Functions for Assessing Dimensionality")
    (description
     "This package provides functions for eleven procedures for determining the number
of factors, including functions for parallel analysis and the minimum average
partial test.  There are also functions for conducting principal components
analysis, principal axis factor analysis, maximum likelihood factor analysis,
image factor analysis, and extension factor analysis, all of which can take raw
data or correlation matrices as input and with options for conducting the
analyses using Pearson correlations, Kendall correlations, Spearman
correlations, gamma correlations, or polychoric correlations.  Varimax rotation,
promax rotation, and Procrustes rotations can be performed.  Additional
functions focus on the factorability of a correlation matrix, the congruences
between factors from different datasets, the assessment of local independence,
the assessment of factor solution complexity, and internal consistency.
O'Connor (2000, <doi:10.3758/bf03200807>); O'Connor (2001,
<doi:10.1177/01466216010251011>); Auerswald & Moshagen (2019,
<doi:10.1037/met0000200>); Fabrigar & Wegener (2012, ISBN:978-0-19-973417-7);
Field, Miles, & Field (2012, ISBN:978-1-4462-0045-2).")
    (license license:gpl2+)))

(define-public r-ef
  (package
    (name "r-ef")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ef" version))
              (sha256
               (base32
                "1ic26mwjv221yyjj16v9xcdxsg3pl6wsp82iaprihdcndswccvzi"))))
    (properties `((upstream-name . "ef")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmb r-rcppeigen r-mgcv r-matrix r-dplyr))
    (home-page "https://cran.r-project.org/package=ef")
    (synopsis "Modelling Framework for the Estimation of Salmonid Abundance")
    (description
     "This package provides a set of functions to estimate capture probabilities and
densities from multipass pass removal data.")
    (license license:expat)))

(define-public r-eespca
  (package
    (name "r-eespca")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EESPCA" version))
              (sha256
               (base32
                "0bj1wi1almj7rb7sad4i47mnfh4y83mbdd1x5clda6nd738adl2b"))))
    (properties `((upstream-name . "EESPCA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rifle r-pma r-mass))
    (home-page "https://cran.r-project.org/package=EESPCA")
    (synopsis
     "Eigenvectors from Eigenvalues Sparse Principal Component Analysis (EESPCA)")
    (description
     "This package contains logic for computing sparse principal components via the
EESPCA method, which is based on an approximation of the eigenvector/eigenvalue
identity.  Includes logic to support execution of the TPower and rifle sparse
PCA methods, as well as logic to estimate the sparsity parameters used by
EESPCA, TPower and rifle via cross-validation to minimize the out-of-sample
reconstruction error.  H. Robert Frost (2021)
<doi:10.1080/10618600.2021.1987254>.")
    (license license:gpl2+)))

(define-public r-eesim
  (package
    (name "r-eesim")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eesim" version))
              (sha256
               (base32
                "0ljj1jp9cl0im8k7sfjd28ggj4q9a14df3554kwxkssr1vsn1wbc"))))
    (properties `((upstream-name . "eesim")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis r-purrr r-lubridate r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "http://github.com/sakoehler7/eesim")
    (synopsis
     "Simulate and Evaluate Time Series for Environmental Epidemiology")
    (description
     "This package provides functions to create simulated time series of environmental
exposures (e.g., temperature, air pollution) and health outcomes for use in
power analysis and simulation studies in environmental epidemiology.  This
package also provides functions to evaluate the results of simulation studies
based on these simulated time series.  This work was supported by a grant from
the National Institute of Environmental Health Sciences (R00ES022631) and a
fellowship from the Colorado State University Programs for Research and
Scholarly Excellence.")
    (license license:gpl2+)))

(define-public r-eeptools
  (package
    (name "r-eeptools")
    (version "1.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eeptools" version))
              (sha256
               (base32
                "048gz26dqgfsnxhp4r99j7p4s4d5pxsjci5zw8wjvv35lizij573"))))
    (properties `((upstream-name . "eeptools")))
    (build-system r-build-system)
    (propagated-inputs (list r-vcd r-maptools r-ggplot2 r-data-table r-arm))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jknowles/eeptools")
    (synopsis "Convenience Functions for Education Data")
    (description
     "Collection of convenience functions to make working with administrative records
easier and more consistent.  Includes functions to clean strings, and identify
cut points.  Also includes three example data sets of administrative education
records for learning how to process records with errors.")
    (license license:gpl3)))

(define-public r-eemr
  (package
    (name "r-eemr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eemR" version))
              (sha256
               (base32
                "1w3nwlrbxm7z4c3acx991zk5drgs67qys7kgl0qakh5vrdsrxw3v"))))
    (properties `((upstream-name . "eemR")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis
                             r-stringr
                             r-rlist
                             r-r-matlab
                             r-purrr
                             r-pracma
                             r-dplyr
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/PMassicotte/eemR")
    (synopsis
     "Tools for Pre-Processing Emission-Excitation-Matrix (EEM) Fluorescence Data")
    (description
     "This package provides various tools for preprocessing Emission-Excitation-Matrix
(EEM) for Parallel Factor Analysis (PARAFAC).  Different methods are also
provided to calculate common metrics such as humification index and fluorescence
index.")
    (license license:gpl2+)))

(define-public r-eemdtdnn
  (package
    (name "r-eemdtdnn")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eemdTDNN" version))
              (sha256
               (base32
                "1i2xyc26644pgr45s78g44mzln3km9r5cw22niz3cd6q8ik2iva0"))))
    (properties `((upstream-name . "eemdTDNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlibeemd r-forecast))
    (home-page "https://cran.r-project.org/package=eemdTDNN")
    (synopsis "EEMD and Its Variant Based Time Delay Neural Network Model")
    (description
     "Forecasting univariate time series with different decomposition based time delay
neural network models.  For method details see Yu L, Wang S, Lai KK (2008).
<doi:10.1016/j.eneco.2008.05.003>.")
    (license license:gpl3)))

(define-public r-eemdsvr
  (package
    (name "r-eemdsvr")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EEMDSVR" version))
              (sha256
               (base32
                "0m28rrw7lg3sx2aviqphsid2rsp7zksd3fcvk7pxfw16z90y7ifd"))))
    (properties `((upstream-name . "EEMDSVR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlibeemd r-e1071))
    (home-page "https://cran.r-project.org/package=EEMDSVR")
    (synopsis
     "Ensemble Empirical Mode Decomposition and Its Variant Based Support Vector Regression Model")
    (description
     "Application of Ensemble Empirical Mode Decomposition and its variant based
Support Vector regression model for univariate time series forecasting.  For
method details see Das
(2020).<http://krishi.icar.gov.in/jspui/handle/123456789/44138>.")
    (license license:gpl3)))

(define-public r-eemdlstm
  (package
    (name "r-eemdlstm")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EEMDlstm" version))
              (sha256
               (base32
                "0cilmbk100gym5kaa7fq8bx0cdqa07xk82kxgxjf4k6gyzs39nlh"))))
    (properties `((upstream-name . "EEMDlstm")))
    (build-system r-build-system)
    (propagated-inputs (list r-tsutils
                             r-tsdeeplearning
                             r-tensorflow
                             r-rlibeemd
                             r-reticulate
                             r-magrittr
                             r-keras
                             r-biocgenerics))
    (home-page "https://cran.r-project.org/package=EEMDlstm")
    (synopsis "EEMD Based LSTM Model for Time Series Forecasting")
    (description
     "Forecasting univariate time series with ensemble empirical mode decomposition
(EEMD) with long short-term memory (LSTM).  For method details see Jaiswal, R.
et al. (2022). <doi:10.1007/s00521-021-06621-3>.")
    (license license:gpl3)))

(define-public r-eemdelm
  (package
    (name "r-eemdelm")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EEMDelm" version))
              (sha256
               (base32
                "0riz6s53daqbhy3xif0z8brb0n4swfjxxvvdnx2wwaiwl098rmwa"))))
    (properties `((upstream-name . "EEMDelm")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlibeemd r-nnfor r-forecast))
    (home-page "https://cran.r-project.org/package=EEMDelm")
    (synopsis
     "Ensemble Empirical Mode Decomposition and Its Variant Based ELM Model")
    (description
     "Forecasting univariate time series with different decomposition based Extreme
Learning Machine models.  For method details see Yu L, Wang S, Lai KK (2008).
<doi:10.1016/j.eneco.2008.05.003>, Parida M, Behera MK, Nayak N (2018).
<doi:10.1109/ICSESP.2018.8376723>.")
    (license license:gpl3)))

(define-public r-eemdarima
  (package
    (name "r-eemdarima")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eemdARIMA" version))
              (sha256
               (base32
                "0ma9h9vi19qy9a70vpdpik64r3q9hxqqcfiswczxwajncw5nvmv0"))))
    (properties `((upstream-name . "eemdARIMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlibeemd r-forecast))
    (home-page "https://cran.r-project.org/package=eemdARIMA")
    (synopsis "EEMD Based Auto Regressive Integrated Moving Average Model")
    (description
     "Forecasting time series with different decomposition based ARIMA models.  For
method details see Yu L, Wang S, Lai KK (2008).
<doi:10.1016/j.eneco.2008.05.003>.")
    (license license:gpl3)))

(define-public r-eem
  (package
    (name "r-eem")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EEM" version))
              (sha256
               (base32
                "0w20kakgcpyhfi7fcrss4w67pbaj87hi2scy7g05q3sg2ygac7gj"))))
    (properties `((upstream-name . "EEM")))
    (build-system r-build-system)
    (propagated-inputs (list r-sp r-reshape2 r-r-utils r-ggplot2 r-colorramps))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/chengvt/EEM")
    (synopsis
     "Read and Preprocess Fluorescence Excitation-Emission Matrix (EEM) Data")
    (description "Read raw EEM data and prepares them for further analysis.")
    (license license:gpl3)))

(define-public r-eel
  (package
    (name "r-eel")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eel" version))
              (sha256
               (base32
                "0cv6dhw57yy140g73z94g9x1s42fpyfliv9cm2z1alm7xwap1l0x"))))
    (properties `((upstream-name . "eel")))
    (build-system r-build-system)
    (propagated-inputs (list r-rootsolve r-emplik))
    (home-page "https://cran.r-project.org/package=eel")
    (synopsis "Extended Empirical Likelihood")
    (description
     "Compute the extended empirical log likelihood ratio (Tsao & Wu, 2014) for the
mean and parameters defined by estimating equations.")
    (license license:gpl2+)))

(define-public r-eegkitdata
  (package
    (name "r-eegkitdata")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eegkitdata" version))
              (sha256
               (base32
                "1pyxcpgkqqbzr9wbsqcxjnx6y4sxc69q7gvh3092jnnhs82kbqrc"))))
    (properties `((upstream-name . "eegkitdata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=eegkitdata")
    (synopsis "Electroencephalography Toolkit Datasets")
    (description
     "This package contains the example EEG data used in the package eegkit.  Also
contains code for easily creating larger EEG datasets from the EEG Database on
the UCI Machine Learning Repository.")
    (license license:gpl2+)))

(define-public r-eegkit
  (package
    (name "r-eegkit")
    (version "1.0-4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eegkit" version))
              (sha256
               (base32
                "1r1lack4ps9hwqq56rq37431rcxf3x79zgvda6vrmh4s0ziy6v4x"))))
    (properties `((upstream-name . "eegkit")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal r-rgl r-ica r-eegkitdata r-bigsplines))
    (home-page "https://cran.r-project.org/package=eegkit")
    (synopsis "Toolkit for Electroencephalography Data")
    (description
     "Analysis and visualization tools for electroencephalography (EEG) data.
Includes functions for (i) plotting EEG data, (ii) filtering EEG data, (iii)
smoothing EEG data; (iv) frequency domain (Fourier) analysis of EEG data, (v)
Independent Component Analysis of EEG data, and (vi) simulating event-related
potential EEG data.")
    (license license:gpl2+)))

(define-public r-eefanalytics
  (package
    (name "r-eefanalytics")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eefAnalytics" version))
              (sha256
               (base32
                "0849zsryrawwlzplxx6zymi6qnidv8w7vk7an8b9p4k3whqhyx42"))))
    (properties `((upstream-name . "eefAnalytics")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstanarm r-mvtnorm r-lme4 r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dimitris-90/eefanalytics")
    (synopsis
     "Robust Analytical Methods for Evaluating Educational Interventions using Randomised Controlled Trials Designs")
    (description
     "Analysing data from evaluations of educational interventions using a randomised
controlled trial design.  Various analytical tools to perform sensitivity
analysis using different methods are supported (e.g. frequentist models with
bootstrapping and permutations options, Bayesian models).  The included commands
can be used for simple randomised trials, cluster randomised trials and
multisite trials.  The methods can also be used more widely beyond education
trials.  This package can be used to evaluate other intervention designs using
Frequentist and Bayesian multilevel models.")
    (license license:gpl3+)))

(define-public r-eechidna
  (package
    (name "r-eechidna")
    (version "1.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eechidna" version))
              (sha256
               (base32
                "1p8vj371i7zglw7898akzj4hd5j7zk35is91jylxalldjab88v9c"))))
    (properties `((upstream-name . "eechidna")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringi
                             r-sp
                             r-shiny
                             r-rgeos
                             r-rgdal
                             r-purrr
                             r-plotly
                             r-magrittr
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-colourpicker))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jforbes14/eechidna/")
    (synopsis
     "Exploring Election and Census Highly Informative Data Nationally for Australia")
    (description
     "Data from the seven Australian Federal Elections (House of Representatives)
between 2001 and 2019, and from the four Australian Censuses over the same
period.  Includes tools for visualizing and analysing the data, as well as
imputing Census data for years in which a Census does not occur.  This package
incorporates data that is copyright Commonwealth of Australia (Australian
Electoral Commission and Australian Bureau of Statistics) 2019.")
    (license license:gpl2+)))

(define-public r-edwards97
  (package
    (name "r-edwards97")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edwards97" version))
              (sha256
               (base32
                "05g90mjxjvw9yqsp9gk50ywi7hdfwn3bgsyxpfkwkrjx9sdq5l0z"))))
    (properties `((upstream-name . "edwards97")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tibble
                             r-rlang
                             r-glue
                             r-cli
                             r-broom))
    (home-page "https://paleolimbot.github.io/edwards97/")
    (synopsis "Langmuir Semi-Empirical Coagulation Model")
    (description
     "This package implements the Edwards (1997)
<doi:10.1002/j.1551-8833.1997.tb08229.x> Langmuir-based semi-empirical
coagulation model, which predicts the concentration of organic carbon remaining
in water after treatment with an Al- or Fe-based coagulant.  Data and methods
are provided to optimise empirical coefficients.")
    (license license:gpl3)))

(define-public r-educineq
  (package
    (name "r-educineq")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "educineq" version))
              (sha256
               (base32
                "0qd6kvcy280glv3q6lcrawmnsfvp90as95chgi3hav0yj2dpakn6"))))
    (properties `((upstream-name . "educineq")))
    (build-system r-build-system)
    (propagated-inputs (list r-ineq r-flexsurv))
    (home-page "https://cran.r-project.org/package=educineq")
    (synopsis "Compute and Decompose Inequality in Education")
    (description
     "Easily compute education inequality measures and the distribution of educational
attainments for any group of countries, using the data set developed in Jorda,
V. and Alonso, JM. (2017) <DOI:10.1016/j.worlddev.2016.10.005>.  The package
offers the possibility to compute not only the Gini index, but also generalized
entropy measures for different values of the sensitivity parameter.  In
particular, the package includes functions to compute the mean log deviation,
which is more sensitive to the bottom part of the distribution; the Theilâs
entropy measure, equally sensitive to all parts of the distribution; and
finally, the GE measure when the sensitivity parameter is set equal to 2, which
gives more weight to differences in higher education.  The decomposition of
these measures in the components between-country and within-country inequality
is also provided.  Two graphical tools are also provided, to analyse the
evolution of the distribution of educational attainments: The cumulative
distribution function and the Lorenz curve.")
    (license license:gpl2+)))

(define-public r-educationdata
  (package
    (name "r-educationdata")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "educationdata" version))
              (sha256
               (base32
                "1z86v9d3qdjzk3kvxid5k0gnj3sbdr4gd4z00f55ddknfgyfarqi"))))
    (properties `((upstream-name . "educationdata")))
    (build-system r-build-system)
    (propagated-inputs (list r-readr r-jsonlite r-httr r-glue))
    (native-inputs (list r-knitr))
    (home-page "https://urbaninstitute.github.io/education-data-package-r/")
    (synopsis
     "Retrieve Records from the Urban Institute's Education Data Portal API")
    (description
     "Allows R users to retrieve and parse data from the Urban Institute's Education
Data API <https://educationdata.urban.org/> into a data.frame for analysis.")
    (license license:expat)))

(define-public r-edsurvey
  (package
    (name "r-edsurvey")
    (version "3.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EdSurvey" version))
              (sha256
               (base32
                "172ximyg96qdjkkyjj54n8mr1jj9nihhm0fhmqgxhc0xlfj24lgs"))))
    (properties `((upstream-name . "EdSurvey")))
    (build-system r-build-system)
    (propagated-inputs (list r-xtable
                             r-wemix
                             r-wcorr
                             r-tibble
                             r-readxl
                             r-quantreg
                             r-naepprimer
                             r-naepirtparams
                             r-matrix
                             r-mass
                             r-lme4
                             r-lfactors
                             r-laf
                             r-haven
                             r-glm2
                             r-formula
                             r-dire
                             r-data-table
                             r-car))
    (native-inputs (list r-knitr))
    (home-page "https://www.air.org/project/nces-data-r-project-edsurvey")
    (synopsis "Analysis of NCES Education Survey and Assessment Data")
    (description
     "Read in and analyze functions for education survey and assessment data from the
National Center for Education Statistics (NCES) <https://nces.ed.gov/>,
including National Assessment of Educational Progress (NAEP) data
<https://nces.ed.gov/nationsreportcard/> and data from the International
Assessment Database: Organisation for Economic Co-operation and Development
(OECD) <https://www.oecd.org/>, including Programme for International Student
Assessment (PISA), Teaching and Learning International Survey (TALIS), Programme
for the International Assessment of Adult Competencies (PIAAC), and
International Association for the Evaluation of Educational Achievement (IEA)
<https://www.iea.nl/>, including Trends in International Mathematics and Science
Study (TIMSS), TIMSS Advanced, Progress in International Reading Literacy Study
(PIRLS), International Civic and Citizenship Study (ICCS), International
Computer and Information Literacy Study (ICILS), and Civic Education Study
(CivEd).")
    (license license:gpl2)))

(define-public r-edstan
  (package
    (name "r-edstan")
    (version "1.0.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edstan" version))
              (sha256
               (base32
                "1gm1rxwywigyfdlcm2yj1m9qjb4s6w7chr1ck7b32x1pdxdl3ns5"))))
    (properties `((upstream-name . "edstan")))
    (build-system r-build-system)
    (propagated-inputs (list r-rstan r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=edstan")
    (synopsis "Stan Models for Item Response Theory")
    (description
     "This package provides convenience functions and pre-programmed Stan models
related to item response theory.  Its purpose is to make fitting common item
response theory models using Stan easy.")
    (license license:bsd-3)))

(define-public r-edotrans
  (package
    (name "r-edotrans")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDOtrans" version))
              (sha256
               (base32
                "0bycq28ajyvwx7h4wpk6b1cijgy12fv8f8x42sm7glwbmfx3aw3z"))))
    (properties `((upstream-name . "EDOtrans")))
    (build-system r-build-system)
    (propagated-inputs (list r-opgmmassessment r-abcanalysis))
    (home-page "https://cran.r-project.org/package=EDOtrans")
    (synopsis "Euclidean Distance-Optimized Data Transformation")
    (description
     "This package provides a data transformation method which takes into account the
special property of scale non-invariance with a breakpoint at 1 of the Euclidean
distance.")
    (license license:gpl3)))

(define-public r-edoif
  (package
    (name "r-edoif")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDOIF" version))
              (sha256
               (base32
                "1lq4j5axybhv34mdsz0rn5nz9x3rzjf6bczzfzrf75k6pwqxim1w"))))
    (properties `((upstream-name . "EDOIF")))
    (build-system r-build-system)
    (propagated-inputs (list r-simpleboot
                             r-igraph
                             r-ggplot2
                             r-ellipsis
                             r-distr
                             r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/DarkEyes/EDOIF")
    (synopsis "Empirical Distribution Ordering Inference Framework (EDOIF)")
    (description
     "This package provides a non-parametric framework based on estimation statistics
principle.  Its main purpose is to infer orders of empirical distributions from
different categories based on a probability of finding a value in one
distribution that is greater than an expectation of another distribution.  Given
a set of ordered-pair of real-category values the framework is capable of 1)
inferring orders of domination of categories and representing orders in the form
of a graph; 2) estimating magnitude of difference between a pair of categories
in forms of mean-difference confidence intervals; and 3) visualizing domination
orders and magnitudes of difference of categories.  The publication of this
package is at Chainarong Amornbunchornvej, Navaporn Surasvadi, Anon
Plangprasopchok, and Suttipong Thajchayapong (2020)
<doi:10.1016/j.heliyon.2020.e05435>.")
    (license license:bsd-3)))

(define-public r-edne-eq
  (package
    (name "r-edne-eq")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDNE.EQ" version))
              (sha256
               (base32
                "13aflnpznpzjrrdrn0r7v2mch6hjd77s6c3l7mnc2p59vq7mzmpg"))))
    (properties `((upstream-name . "EDNE.EQ")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass))
    (home-page "https://cran.r-project.org/package=EDNE.EQ")
    (synopsis "Implements the EDNE-Test for Equivalence")
    (description
     "Package implements the EDNE-test for equivalence according to Hoffelder et al.
(2015) <DOI:10.1080/10543406.2014.920344>. \"EDNE\" abbreviates \"Euclidean
Distance between the Non-standardized Expected values\".  The EDNE-test for
equivalence is a multivariate two-sample equivalence test.  Distance measure of
the test is the Euclidean distance.  The test is an asymptotically valid test
for the family of distributions fulfilling the assumptions of the multivariate
central limit theorem (see Hoffelder et al.,2015).  The function EDNE.EQ()
implements the EDNE-test for equivalence according to Hoffelder et al. (2015).
The function EDNE.EQ.dissolution.profiles() implements a variant of the
EDNE-test for equivalence analyses of dissolution profiles (see Suarez-Sharp et
al.,2020 <DOI:10.1208/s12248-020-00458-9>).  EDNE.EQ.dissolution.profiles()
checks whether the quadratic mean of the differences of the expected values of
both dissolution profile populations is statistically significantly smaller than
10 [\\% of label claim].  The current regulatory standard approach for
equivalence analyses of dissolution profiles is the similarity factor f2.  The
statistical hypotheses underlying EDNE.EQ.dissolution.profiles() coincide with
the hypotheses for f2 (see Hoffelder et al.,2015, Suarez-Sharp et al., 2020).")
    (license license:gpl3)))

(define-public r-edmeasure
  (package
    (name "r-edmeasure")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDMeasure" version))
              (sha256
               (base32
                "1gyv86vip0a3939dbbwz29xkqzncw24r68fzykdjnv3b995510iv"))))
    (properties `((upstream-name . "EDMeasure")))
    (build-system r-build-system)
    (propagated-inputs (list r-rbayesianoptimization r-energy r-dhsic))
    (home-page "https://cran.r-project.org/package=EDMeasure")
    (synopsis "Energy-Based Dependence Measures")
    (description
     "Implementations of (1) mutual dependence measures and mutual independence tests
in Jin, Z., and Matteson, D. S. (2017) <arXiv:1709.02532>; (2) independent
component analysis methods based on mutual dependence measures in Jin, Z., and
Matteson, D. S. (2017) <arXiv:1709.02532> and Pfister, N., et al. (2018)
<doi:10.1111/rssb.12235>; (3) conditional mean dependence measures and
conditional mean independence tests in Shao, X., and Zhang, J. (2014)
<doi:10.1080/01621459.2014.887012>, Park, T., et al. (2015)
<doi:10.1214/15-EJS1047>, and Lee, C. E., and Shao, X. (2017)
<doi:10.1080/01621459.2016.1240083>.")
    (license license:gpl2+)))

(define-public r-edmdata
  (package
    (name "r-edmdata")
    (version "1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edmdata" version))
              (sha256
               (base32
                "042imrnn242jzb9wb4ghjganqmx61zjwspqy9qpkxqi9nr7zxr75"))))
    (properties `((upstream-name . "edmdata")))
    (build-system r-build-system)
    (home-page "https://tmsalab.github.io/edmdata/")
    (synopsis "Data Sets for Psychometric Modeling")
    (description
     "Collection of data sets from various assessments that can be used to evaluate
psychometric models.  These data sets have been analyzed in the following papers
that introduced new methodology as part of the application section: Yinghan Chen
et al. (2021) <doi:10.1007/s11336-021-09750-9>, Yinyin Chen et al. (2020)
<doi:10.1007/s11336-019-09693-2>, Culpepper, S. A. (2019a)
<doi:10.1007/s11336-019-09683-4>, Culpepper, S. A. (2019b)
<doi:10.1007/s11336-018-9643-8>, Culpepper, S. A., & Chen, Y. (2019)
<doi:10.3102/1076998618791306>, Culpepper, S. A., & Balamuta, J. J. (2017)
<doi:10.1007/s11336-015-9484-7>, and Culpepper, S. A. (2015)
<doi:10.3102/1076998615595403>.")
    (license license:expat)))

(define-public r-edmcr
  (package
    (name "r-edmcr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edmcr" version))
              (sha256
               (base32
                "06ms8zyygkgq3divall8paiiw5blqxfgml8iy339zfyiwfxabw5a"))))
    (properties `((upstream-name . "edmcr")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-truncnorm
                             r-sdpt3r
                             r-nloptr
                             r-matrix
                             r-mass
                             r-lbfgs
                             r-igraph))
    (home-page "https://github.com/great-northern-diver/edmcr")
    (synopsis "Euclidean Distance Matrix Completion Tools")
    (description
     "This package implements various general algorithms to estimate missing elements
of a Euclidean (squared) distance matrix.  Includes optimization methods based
on semi-definite programming found in Alfakih, Khadani, and Wolkowicz
(1999)<doi:10.1023/A:1008655427845>, a non-convex position formulation by Fang
and O'Leary (2012)<doi:10.1080/10556788.2011.643888>, and a dissimilarity
parameterization formulation by Trosset (2000)<doi:10.1023/A:1008722907820>.
When the only non-missing distances are those on the minimal spanning tree, the
guided random search algorithm will complete the matrix while preserving the
minimal spanning tree following Rahman and Oldford
(2018)<doi:10.1137/16M1092350>.  Point configurations in specified dimensions
can be determined from the completions.  Special problems such as the sensor
localization problem, as for example in Krislock and Wolkowicz
(2010)<doi:10.1137/090759392>, as well as reconstructing the geometry of a
molecular structure, as for example in Hendrickson (1995)<doi:10.1137/0805040>,
can also be solved.  These and other methods are described in the thesis of Adam
Rahman(2018)<https://hdl.handle.net/10012/13365>.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-edma
  (package
    (name "r-edma")
    (version "1.5-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eDMA" version))
              (sha256
               (base32
                "0wyp81si6lcispqng4c7lii22qbyblvijgnlxvcsnkcxj5hpm76j"))))
    (properties `((upstream-name . "eDMA")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo r-xts r-rcpparmadillo r-rcpp))
    (home-page "https://cran.r-project.org/package=eDMA")
    (synopsis "Dynamic Model Averaging with Grid Search")
    (description
     "Perform dynamic model averaging with grid search as in Dangl and Halling (2012)
<doi:10.1016/j.jfineco.2012.04.003> using parallel computing.")
    (license license:gpl2+)))

(define-public r-edlibr
  (package
    (name "r-edlibr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edlibR" version))
              (sha256
               (base32
                "0ibl8zcaf2p2xb3498zbin7g4ipanyxc9m9zkcj43h2r0304xgsk"))))
    (properties `((upstream-name . "edlibR")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/evanbiederstedt/edlibR")
    (synopsis
     "R Integration for Edlib, the C/C++ Library for Exact Pairwise Sequence Alignment using Edit (Levenshtein) Distance")
    (description
     "Bindings to edlib, a lightweight performant C/C++ library for exact pairwise
sequence alignment using edit distance (Levenshtein distance).  The algorithm
computes the optimal alignment path, but also can be used to find only the start
and/or end of the alignment path for convenience.  Edlib was designed to be
ultrafast and require little memory, with the capability to handle very large
sequences.  Three alignment methods are supported: global (Needleman-Wunsch),
infix (Hybrid Wunsch), and prefix (Semi-Hybrid Wunsch).  The original C/C++
library is described in \"Edlib: a C/C++ library for fast, exact sequence
alignment using edit distance\", M. Å oÅ¡iÄ, M. Å ikiÄ,
<doi:10.1093/bioinformatics/btw753>.")
    (license license:expat)))

(define-public r-edl
  (package
    (name "r-edl")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edl" version))
              (sha256
               (base32
                "19p0qr9lm0kdinh4qnqx7bzxkbvcfpp6mbddwh0hgsgqkbw916cp"))))
    (properties `((upstream-name . "edl")))
    (build-system r-build-system)
    (propagated-inputs (list r-plotfunctions r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=edl")
    (synopsis
     "Toolbox for Error-Driven Learning Simulations with Two-Layer Networks")
    (description
     "Error-driven learning (based on the Widrow & Hoff
(1960)<https://isl.stanford.edu/~widrow/papers/c1960adaptiveswitching.pdf>
learning rule, and essentially the same as Rescorla-Wagner's learning equations
(Rescorla & Wagner, 1972, ISBN: 0390718017), which are also at the core of Naive
Discrimination Learning, (Baayen et al, 2011, <doi:10.1037/a0023851>) can be
used to explain bottom-up human learning (Hoppe et al,
<doi:10.31234/osf.io/py5kd>), but is also at the core of artificial neural
networks applications in the form of the Delta rule.  This package provides a
set of functions for building small-scale simulations to investigate the
dynamics of error-driven learning and it's interaction with the structure of the
input.  For modeling error-driven learning using the Rescorla-Wagner equations
the package ndl (Baayen et al, 2011, <doi:10.1037/a0023851>) is available on
CRAN at <https://cran.r-project.org/package=ndl>.  However, the package
currently only allows tracing of a cue-outcome combination, rather than
returning the learned networks.  To fill this gap, we implemented a new package
with a few functions that facilitate inspection of the networks for small error
driven learning simulations.  Note that our functions are not optimized for
training large data sets (no parallel processing), as they are intended for
small scale simulations and course examples. (Consider the python implementation
pyndl <https://pyndl.readthedocs.io/en/latest/> for that purpose.)")
    (license license:gpl2+)))

(define-public r-ediutils
  (package
    (name "r-ediutils")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDIutils" version))
              (sha256
               (base32
                "1yfn26js5sdr7k07s45mqxla6apzb4ykwa5pa634zgivqs6g9jry"))))
    (properties `((upstream-name . "EDIutils")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-jsonlite r-httr r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ropensci/EDIutils")
    (synopsis "An API Client for the Environmental Data Initiative Repository")
    (description
     "This package provides a client for the Environmental Data Initiative repository
REST API. The EDI data repository
<https://portal.edirepository.org/nis/home.jsp> is for publication and reuse of
ecological data with emphasis on metadata accuracy and completeness.  It is
built upon the PASTA+ software stack
<https://pastaplus-core.readthedocs.io/en/latest/index.html#> and was developed
in collaboration with the US LTER Network <https://lternet.edu/>.  EDIutils
includes functions to search and access existing data, evaluate and upload new
data, and assist other data management tasks common to repository users.")
    (license license:expat)))

(define-public r-editrules
  (package
    (name "r-editrules")
    (version "2.9.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "editrules" version))
              (sha256
               (base32
                "07j8wj0fk34irqgsz70h2wad3wdjv5xl1cl702vxbr0nvmpw2ngl"))))
    (properties `((upstream-name . "editrules")))
    (build-system r-build-system)
    (propagated-inputs (list r-lpsolveapi r-igraph))
    (home-page "https://github.com/data-cleaning/editrules")
    (synopsis "Parsing, Applying, and Manipulating Data Cleaning Rules")
    (description
     "Facilitates reading and manipulating (multivariate) data restrictions (edit
rules) on numerical and categorical data.  Rules can be defined with common R
syntax and parsed to an internal (matrix-like format).  Rules can be manipulated
with variable elimination and value substitution methods, allowing for
feasibility checks and more.  Data can be tested against the rules and erroneous
fields can be found based on Fellegi and Holt's generalized principle.  Rules
dependencies can be visualized with using the igraph package.")
    (license license:gpl3)))

(define-public r-editdata
  (package
    (name "r-editdata")
    (version "0.1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "editData" version))
              (sha256
               (base32
                "170i8p264zj716h58bb6pvgh2lnz1w5vplnrcv8vizppi0n1js6l"))))
    (properties `((upstream-name . "editData")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-shinywidgets
                             r-shiny
                             r-rstudioapi
                             r-rio
                             r-openxlsx
                             r-miniui
                             r-magrittr
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/cardiomoon/editData")
    (synopsis "'RStudio' Addin for Editing a 'data.frame'")
    (description
     "An RStudio addin for editing a data.frame or a tibble'.  You can delete, add or
update a data.frame without coding.  You can get resultant data as a
data.frame'.  In the package, modularized shiny app codes are provided.  These
modules are intended for reuse across applications.")
    (license license:gpl3)))

(define-public r-edison
  (package
    (name "r-edison")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDISON" version))
              (sha256
               (base32
                "12cc13ng5fc4nm0nvqxqplpb2ycz4cln73xqkk85dka2fnpykjc7"))))
    (properties `((upstream-name . "EDISON")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-corpcor))
    (home-page "https://cran.r-project.org/package=EDISON")
    (synopsis "Network Reconstruction and Changepoint Detection")
    (description
     "Package EDISON (Estimation of Directed Interactions from Sequences Of
Non-homogeneous gene expression) runs an MCMC simulation to reconstruct networks
from time series data, using a non-homogeneous, time-varying dynamic Bayesian
network.  Networks segments and changepoints are inferred concurrently, and
information sharing priors provide a reduction of the inference uncertainty.")
    (license license:gpl2)))

(define-public r-edina
  (package
    (name "r-edina")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edina" version))
              (sha256
               (base32
                "1lpmidyxi54byrsnwwadkh5rr454635xrwa4v2wz8mqr2hngxis3"))))
    (properties `((upstream-name . "edina")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgen
                             r-reshape2
                             r-rcpparmadillo
                             r-rcpp
                             r-jjb
                             r-ggplot2))
    (home-page "https://github.com/tmsalab/edina")
    (synopsis
     "Bayesian Estimation of an Exploratory Deterministic Input, Noisy and Gate Model")
    (description
     "Perform a Bayesian estimation of the exploratory deterministic input, noisy and
gate (EDINA) cognitive diagnostic model described by Chen et al. (2018)
<doi:10.1007/s11336-017-9579-4>.")
    (license license:gpl2+)))

(define-public r-edibble
  (package
    (name "r-edibble")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edibble" version))
              (sha256
               (base32
                "1a06p6jy7j4ml8q71s6mcpp1qm39vv7nz21ac0y0wssqmicsr5x3"))))
    (properties `((upstream-name . "edibble")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyselect
                             r-tibble
                             r-rlang
                             r-r6
                             r-pillar
                             r-nestr
                             r-magrittr
                             r-dae
                             r-cli
                             r-algdesign))
    (home-page "https://edibble.emitanaka.org/")
    (synopsis "Designing Comparative Experiments")
    (description
     "This package provides a system to facilitate designing comparative experiments
using the grammar of experimental designs <https://emitanaka.org/edibble-book/>.
 An experimental design is treated as an intermediate, mutable object that is
built progressively by fundamental experimental components like units,
treatments, and their relation.")
    (license license:expat)))

(define-public r-edgedata
  (package
    (name "r-edgedata")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgedata" version))
              (sha256
               (base32
                "11sc7x0m00yhn2c4601dpjv3brmf57i8barsl3p7bawcvka8z5lr"))))
    (properties `((upstream-name . "edgedata")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=edgedata")
    (synopsis "Datasets that Support the EDGE Server DIY Logic")
    (description
     "Datasets from most recent CCIIO DIY entry in a tidy format.  These support the
Centers for Medicare and Medicaid Services (CMS) risk adjustment Do-It-Yourself
(DIY) process, which allows health insurance issuers to calculate member risk
profiles under the Health and Human Services-Hierarchical Condition Categories
(HHS-HCC) regression model.  This regression model is used to calculate risk
adjustment transfers.  Risk adjustment is a selection mitigation program
implemented under the Patient Protection and Affordable Care Act (ACA or
Obamacare) in the USA. Under the ACA, health insurance issuers submit claims
data to CMS	in order for CMS to calculate a risk score under the HHS-HCC
regression model.  However, CMS does not inform issuers of their average risk
score until after the data submission deadline.  These data sets can be used by
issuers to calculate their average risk score mid-year.  More information about
risk adjustment and the HHS-HCC model can be found here:
<https://www.cms.gov/mmrr/Articles/A2014/MMRR2014_004_03_a03.html>.")
    (license license:gpl3)))

(define-public r-edgecorr
  (package
    (name "r-edgecorr")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgeCorr" version))
              (sha256
               (base32
                "19n67yc58ksin7xydrnfsyyw7fqawm5xli67cz4lv4wb62w6r6ld"))))
    (properties `((upstream-name . "edgeCorr")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=edgeCorr")
    (synopsis "Spatial Edge Correction")
    (description
     "Facilitates basic spatial edge correction to point pattern data.")
    (license license:gpl2)))

(define-public r-edgebundler
  (package
    (name "r-edgebundler")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgebundleR" version))
              (sha256
               (base32
                "0pajr95qqppk2m4l7rfi46rll32z8a7lmq0vmb3p8n0aks5ajn1n"))))
    (properties `((upstream-name . "edgebundleR")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-rjson r-igraph r-htmlwidgets))
    (home-page "https://github.com/garthtarr/edgebundleR")
    (synopsis "Circle Plot with Bundled Edges")
    (description
     "Generates interactive circle plots with the nodes around the circumference and
linkages between the connected nodes using hierarchical edge bundling via the D3
JavaScript library.  See <http://d3js.org/> for more information on D3.")
    (license license:gpl3+)))

(define-public r-edgebundle
  (package
    (name "r-edgebundle")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgebundle" version))
              (sha256
               (base32
                "196np22ibvj31f5f45gl5ni5byj1z2h4vyxxcqarny2zfk00qg9j"))))
    (properties `((upstream-name . "edgebundle")))
    (build-system r-build-system)
    (propagated-inputs (list r-reticulate r-rcpp r-interp r-igraph))
    (home-page "http://edgebundle.schochastics.net/")
    (synopsis
     "Algorithms for Bundling Edges in Networks and Visualizing Flow and Metro Maps")
    (description
     "This package implements several algorithms for bundling edges in networks and
flow and metro map layouts.  This includes force directed edge bundling
<doi:10.1111/j.1467-8659.2009.01450.x>, a flow algorithm based on Steiner
trees<doi:10.1080/15230406.2018.1437359> and a multicriteria optimization method
for metro map layouts <doi:10.1109/TVCG.2010.24>.")
    (license license:expat)))

(define-public r-edgarwebr
  (package
    (name "r-edgarwebr")
    (version "1.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgarWebR" version))
              (sha256
               (base32
                "1v9rdj2qdcvzz7g78pa9j6l8d6zjz1q06h09c4547r67bzfz1nxy"))))
    (properties `((upstream-name . "edgarWebR")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-jsonlite r-httr))
    (native-inputs (list r-knitr))
    (home-page "https://mwaldstein.github.io/edgarWebR/")
    (synopsis "SEC Filings Access")
    (description
     "This package provides a set of methods to access and parse live filing
information from the U.S. Securities and Exchange Commission (SEC -
<https://www.sec.gov/>) including company and fund filings along with all
associated metadata.")
    (license license:expat)))

(define-public r-edgar
  (package
    (name "r-edgar")
    (version "2.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edgar" version))
              (sha256
               (base32
                "1rm6ba4rncfsq7ndqdlkwrqqsak1n7ywsrcnxyr6ysnzgqx65y9n"))))
    (properties `((upstream-name . "edgar")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-tm
                             r-stringr
                             r-stringi
                             r-r-utils
                             r-qdapregex
                             r-httr))
    (home-page "https://cran.r-project.org/package=edgar")
    (synopsis
     "Tool for the U.S. SEC EDGAR Retrieval and Parsing of Corporate Filings")
    (description
     "In the USA, companies file different forms with the U.S. Securities and Exchange
Commission (SEC) through EDGAR (Electronic Data Gathering, Analysis, and
Retrieval system).  The EDGAR database automated system collects all the
different necessary filings and makes it publicly available.  This package
facilitates retrieving, storing, searching, and parsing of all the available
filings on the EDGAR server.  It downloads filings from SEC server in bulk with
a single query.  Additionally, it provides various useful functions: extracts
8-K triggering events, extract \"Business (Item 1)\" and \"Management's Discussion
and Analysis(Item 7)\" sections of annual statements, searches filings for
desired keywords, provides sentiment measures, parses filing header information,
and provides HTML view of SEC filings.")
    (license license:gpl2)))

(define-public r-edfun
  (package
    (name "r-edfun")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edfun" version))
              (sha256
               (base32
                "1wxx6bgy03z7c1d6556bbjl1cb49n2vn734fw2d5c1jk0zsh3fmz"))))
    (properties `((upstream-name . "edfun")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=edfun")
    (synopsis "Creating Empirical Distribution Functions")
    (description
     "Easily creating empirical distribution functions from data: dfun', pfun', qfun
and rfun'.")
    (license (list license:gpl2 license:gpl3))))

(define-public r-edftest
  (package
    (name "r-edftest")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDFtest" version))
              (sha256
               (base32
                "1z6ayi0513ibyk0gjfxcd1rybp5374xhbf9zkkm669wdmfggx26h"))))
    (properties `((upstream-name . "EDFtest")))
    (build-system r-build-system)
    (propagated-inputs (list r-rmutil r-compquadform))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EDFtest")
    (synopsis "Goodness of Fit Based on Empirical Distribution Function")
    (description
     "This repository contains software for the calculation of goodness-of-fit test
statistics and their P-values.  The three statistics computed are the Empirical
Distribution function statistics called Cramer-von Mises, Anderson-Darling, and
Watson statistics.  The statistics and their P-values can be used to assess an
assumed distribution.The following distributions are available: Uniform, Normal,
Gamma, Logistic, Laplace, Weibull, Extreme Value, and Exponential.")
    (license license:expat)))

(define-public r-edfreader
  (package
    (name "r-edfreader")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edfReader" version))
              (sha256
               (base32
                "076far4fhd6rpa6fwffad4cgchjvar135yblvlrm33s9pd5bf0hn"))))
    (properties `((upstream-name . "edfReader")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=edfReader")
    (synopsis "Reading EDF(+) and BDF(+) Files")
    (description
     "Reads European Data Format files EDF and EDF+, see <http://www.edfplus.info>,
BioSemi Data Format files BDF, see <http://www.biosemi.com/faq/file_format.htm>,
and BDF+ files, see
<http://www.teuniz.net/edfbrowser/bdfplus%20format%20description.html>.  The
files are read in two steps: first the header is read and then the signals
(using the header object as a parameter).")
    (license license:gpl3)))

(define-public r-edf
  (package
    (name "r-edf")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edf" version))
              (sha256
               (base32
                "14ikm6j0ndxrk7c7lh5mbd2aci46d4j9a30mvcgnxy3kq6046a7b"))))
    (properties `((upstream-name . "edf")))
    (build-system r-build-system)
    (home-page "https://github.com/bwrc/edf")
    (synopsis "Read Data from European Data Format (EDF and EDF+) Files")
    (description
     "Import physiologic data stored in the European Data Format (EDF and EDF+) into
R. Both EDF and EDF+ files are supported.  Discontinuous EDF+ files are not yet
supported.")
    (license license:expat)))

(define-public r-edecob
  (package
    (name "r-edecob")
    (version "1.2.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edecob" version))
              (sha256
               (base32
                "1k9790xamyw8ksfgvd8gka1f5mghfma6akdj7bqmlqv3yrlpgbxr"))))
    (properties `((upstream-name . "edecob")))
    (build-system r-build-system)
    (propagated-inputs (list r-rlang r-ggplot2))
    (home-page "https://cran.r-project.org/package=edecob")
    (synopsis "Event Detection Using Confidence Bounds")
    (description
     "Detects sustained change in digital bio-marker data using simultaneous
confidence bands.  Accounts for noise using an auto-regressive model.  Based on
Buehlmann (1998) \"Sieve bootstrap for smoothing in nonstationary time series\"
<doi:10.1214/aos/1030563978>.")
    (license license:expat)))

(define-public r-edear
  (package
    (name "r-edear")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edeaR" version))
              (sha256
               (base32
                "1zv6fr7n8arx610ccbml04gfrzm9ry3s0lw68hhyijw43xvxrd3z"))))
    (properties `((upstream-name . "edeaR")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-shinytime
                             r-shiny
                             r-rlang
                             r-purrr
                             r-miniui
                             r-lubridate
                             r-lifecycle
                             r-hms
                             r-glue
                             r-ggthemes
                             r-ggplot2
                             r-dplyr
                             r-data-table
                             r-cli
                             r-bupar))
    (native-inputs (list r-knitr))
    (home-page "https://bupar.net/")
    (synopsis "Exploratory and Descriptive Event-Based Data Analysis")
    (description
     "Exploratory and descriptive analysis of event based data.  Provides methods for
describing and selecting process data, and for preparing event log data for
process mining.  Builds on the S3-class for event logs implemented in the
package bupaR'.")
    (license license:expat)))

(define-public r-eddington
  (package
    (name "r-eddington")
    (version "2.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eddington" version))
              (sha256
               (base32
                "0v88v2xmvirnj661jsg2qh7n8afaw71mqks9csnmmz3c16agp7b6"))))
    (properties `((upstream-name . "eddington")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pegeler/eddington2")
    (synopsis "Compute a Cyclist's Eddington Number")
    (description
     "Compute a cyclist's Eddington number, including efficiently computing cumulative
E over a vector.  A cyclist's Eddington number
<https://en.wikipedia.org/wiki/Arthur_Eddington#Eddington_number_for_cycling> is
the maximum number satisfying the condition such that a cyclist has ridden E
miles or greater in E days.  The algorithm in this package is an improvement
over the conventional approach because both summary statistics and cumulative
statistics can be computed in linear time, since it does not require initial
sorting of the data.  These functions may also be used for computing h-indices
for authors, a metric described by Hirsch (2005) <doi:10.1073/pnas.0507655102>.
Both are specific applications of computing the side length of a Durfee square
<https://en.wikipedia.org/wiki/Durfee_square>.")
    (license license:gpl2+)))

(define-public r-edcpr
  (package
    (name "r-edcpr")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edcpR" version))
              (sha256
               (base32
                "02d33cd9pkcjrbl9qipcjzkhrc68j7bybg1hpnsngiz4wmf3bfik"))))
    (properties `((upstream-name . "edcpR")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=edcpR")
    (synopsis "Ecological Data Collection and Processing Package")
    (description
     "This is the course package for the exercise portion of the \"Ecological Data
Collection and Processing\" course.")
    (license license:expat)))

(define-public r-edcimport
  (package
    (name "r-edcimport")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDCimport" version))
              (sha256
               (base32
                "1d80dsfi94yg95lcnq60nnfpfd2bphqrd68k7ilcs809v95da4nx"))))
    (properties `((upstream-name . "EDCimport")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-readr
                             r-purrr
                             r-labelled
                             r-haven
                             r-glue
                             r-forcats
                             r-dplyr
                             r-cli))
    (home-page "https://github.com/DanChaltiel/EDCimport")
    (synopsis "Import Data from EDC Software")
    (description
     "This package provides a convenient toolbox to import data exported from
Electronic Data Capture (EDC) software TrialMaster and Macro'.")
    (license license:gpl3)))

(define-public r-edbuildmapr
  (package
    (name "r-edbuildmapr")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "edbuildmapr" version))
              (sha256
               (base32
                "0hc5vfpilqxva88dzgp57j9cgsq64r75vhm3hhl8lhi2wwapwk1d"))))
    (properties `((upstream-name . "edbuildmapr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tmap
                             r-tidyselect
                             r-tibble
                             r-stringr
                             r-spdep
                             r-sf
                             r-magrittr
                             r-dplyr))
    (home-page "https://github.com/EdBuild/edbuildmapr")
    (synopsis
     "Download School District Geospatial Data, Perform Spatial Analysis, and Create Formatted Exportable Maps")
    (description
     "Import US Census Bureau, Education Demographic and Geographic Estimates Program,
Composite School District Boundaries Files for 2013-2019 with the option to
attach the EdBuild master dataset of school district finance, student
demographics, and community economic indicators for every school district in the
United States.  The master dataset is built from the US Census, Annual Survey of
School System Finances (F33) and joins data from the National Center for
Education Statistics, Common Core of Data; the US Census, Small Area Income and
Poverty Estimates; and the US Census, Education Demographic and Geographic
Estimates.  Additional functions in the package create a dataset of all pairs of
school district neighbors as either a dataframe or a shapefile and create
formatted maps of selected districts at the state or neighbor level, symbolized
by a selected variable in the EdBuild master dataset.  For full details about
EdBuild data processing please see EdBuild (2020) <http://data.edbuild.org/>.")
    (license license:cc0)))

(define-public r-eda4treer
  (package
    (name "r-eda4treer")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eda4treeR" version))
              (sha256
               (base32
                "1shhajd9m9cxj9hdz34bnbs6sx20si37wh6ljw0wx5yrc9m7z9ib"))))
    (properties `((upstream-name . "eda4treeR")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyverse
                             r-pbkrtest
                             r-magrittr
                             r-lme4
                             r-ggplot2
                             r-emmeans
                             r-dplyr
                             r-dae))
    (home-page "https://github.com/MYaseen208/eda4treeR")
    (synopsis "Experimental Design and Analysis for Tree Improvement")
    (description
     "This package provides data sets and R Codes for Williams, E.R., Matheson, A.C.
and Harwood, C.E. (2002).  Experimental Design and Analysis for Tree
Improvement, CSIRO Publishing.")
    (license license:gpl3)))

(define-public r-eda
  (package
    (name "r-eda")
    (version "1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EDA" version))
              (sha256
               (base32
                "08zqykvga7w07iy00c94q03mrxmjv649ggk7lmksjzy5j3wgyb6d"))))
    (properties `((upstream-name . "EDA")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EDA")
    (synopsis "Energy Decomposition Analysis")
    (description
     "Energy decomposition analysis for measuring contributions of components and
factors on energy or carbon emission changes, as described in B.W. Ang (2005)
<doi:10.1016/j.enpol.2003.10.010>.  Includes Log Mean Devisia Index method and
multi-year energy decomposition analysis using five methods.  Please refer P. Wu
(2019) <doi:10.1016/j.jclepro.2019.02.200> to use the package.")
    (license license:gpl2)))

(define-public r-ed50simulation
  (package
    (name "r-ed50simulation")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ed50simulation" version))
              (sha256
               (base32
                "00fknpssrpin8bpjhf2lsjx3lbpinrmqa6jzmgy3nslkc51x0939"))))
    (properties `((upstream-name . "ed50simulation")))
    (build-system r-build-system)
    (propagated-inputs (list r-boot))
    (home-page "https://cran.r-project.org/package=ed50simulation")
    (synopsis "Estimate ED50 and Its Confidence Interval")
    (description
     "This package provides functions of five estimation method for ED50 (50 percent
effective dose) are provided, and they are respectively Dixon-Mood method (1948)
<doi:10.2307/2280071>, Choi's original turning point method (1990)
<doi:10.2307/2531453> and it's modified version given by us, as well as logistic
regression and isotonic regression.  Besides, the package also supports
comparison between two estimation results.")
    (license license:gpl3)))

(define-public r-ed50
  (package
    (name "r-ed50")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ed50" version))
              (sha256
               (base32
                "058p1750ba5hp4rczi26grgwjia2ny1880v1vfp6wxad13r459pq"))))
    (properties `((upstream-name . "ed50")))
    (build-system r-build-system)
    (propagated-inputs (list r-boot))
    (home-page "https://cran.r-project.org/package=ed50")
    (synopsis "Estimate ED50 and Its Confidence Interval")
    (description
     "This package provides functions of five estimation method for ED50 (50 percent
effective dose) are provided, and they are respectively Dixon-Mood method (1948)
<doi:10.2307/2280071>, Choi's original turning point method (1990)
<doi:10.2307/2531453> and it's modified version given by us, as well as logistic
regression and isotonic regression.  Besides, the package also supports
comparison between two estimation results.")
    (license license:gpl3)))

(define-public r-ecume
  (package
    (name "r-ecume")
    (version "0.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ecume" version))
              (sha256
               (base32
                "093yx24hckgwvkdjgir33lkc7hhiv4is8a4a7fdcrp46iszx0b4i"))))
    (properties `((upstream-name . "Ecume")))
    (build-system r-build-system)
    (propagated-inputs (list r-transport
                             r-spatstat-geom
                             r-spatstat
                             r-pbapply
                             r-magrittr
                             r-kernlab
                             r-e1071
                             r-dplyr
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Ecume")
    (synopsis
     "Equality of 2 (or k) Continuous Univariate and Multivariate Distributions")
    (description
     "We implement (or re-implements in R) a variety of statistical tools.  They are
focused on non-parametric two-sample (or k-sample) distribution comparisons in
the univariate or multivariate case.  See the vignette for more info.")
    (license license:expat)))

(define-public r-ecttdnn
  (package
    (name "r-ecttdnn")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECTTDNN" version))
              (sha256
               (base32
                "1ddwf040yp4c7nxvivml0xhad5qdc6jlf17c1lh4mssm5c0pp14w"))))
    (properties `((upstream-name . "ECTTDNN")))
    (build-system r-build-system)
    (propagated-inputs (list r-vars r-urca r-forecast))
    (home-page "https://cran.r-project.org/package=ECTTDNN")
    (synopsis "Cointegration Based Timedelay Neural Network Model")
    (description
     "This cointegration based Time Delay Neural Network Model hybrid model allows the
researcher to make use of the information extracted by the cointegrating vector
as an input in the neural network model.")
    (license license:gpl3)))

(define-public r-ectotemp
  (package
    (name "r-ectotemp")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ectotemp" version))
              (sha256
               (base32
                "172rij0mmk7dd10lpbsxm4yy7072nz1fh7jfiyqmagzs5hwa31jv"))))
    (properties `((upstream-name . "ectotemp")))
    (build-system r-build-system)
    (propagated-inputs (list r-psych r-dplyr))
    (home-page "https://CRAN.R-project.org/package=ectotemp")
    (synopsis
     "Quantitative Estimates of Small Ectotherm Temperature Regulation Effectiveness")
    (description
     "Easy and rapid quantitative estimation of small terrestrial ectotherm
temperature regulation effectiveness in R. ectotemp is built on classical
formulas that evaluate temperature regulation by means of various indices,
inaugurated by Hertz et al. (1993) <doi: 10.1086/285573>.  Options for
bootstrapping and permutation testing are included to test hypotheses about
divergence between organisms, species or populations.")
    (license license:expat)))

(define-public r-ecr
  (package
    (name "r-ecr")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecr" version))
              (sha256
               (base32
                "0vvkdxlcqaim9mkgwgdxrx1xhw3lshi1nxfw3kqllq14p3l6xss4"))))
    (properties `((upstream-name . "ecr")))
    (build-system r-build-system)
    (propagated-inputs (list r-smoof
                             r-reshape2
                             r-paramhelpers
                             r-parallelmap
                             r-ggplot2
                             r-checkmate
                             r-bbmisc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jakobbossek/ecr2")
    (synopsis "Evolutionary Computation in R")
    (description
     "Framework for building evolutionary algorithms for both single- and
multi-objective continuous or discrete optimization problems.  A set of
predefined evolutionary building blocks and operators is included.  Moreover,
the user can easily set up custom objective functions, operators, building
blocks and representations sticking to few conventions.  The package allows both
a black-box approach for standard tasks (plug-and-play style) and a much more
flexible white-box approach where the evolutionary cycle is written by hand.")
    (license license:gpl3)))

(define-public r-ecpc
  (package
    (name "r-ecpc")
    (version "3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecpc" version))
              (sha256
               (base32
                "0dhr71q4hwwfpzjm7vgl4ppa6441iqz1lbk9j3dvag255nv1bnpr"))))
    (properties `((upstream-name . "ecpc")))
    (build-system r-build-system)
    (propagated-inputs (list r-survival
                             r-quadprog
                             r-proc
                             r-pracma
                             r-mvtnorm
                             r-multiridge
                             r-mgcv
                             r-matrix
                             r-jops
                             r-glmnet
                             r-gglasso
                             r-cvxr
                             r-checkmate))
    (home-page "http://dx.doi.org/10.1002/sim.9162")
    (synopsis "Flexible Co-Data Learning for High-Dimensional Prediction")
    (description
     "Fit linear, logistic and Cox survival regression models penalised with adaptive
multi-group ridge penalties.  The multi-group penalties correspond to groups of
covariates defined by (multiple) co-data sources.  Group hyperparameters are
estimated with an empirical Bayes method of moments, penalised with an extra
level of hyper shrinkage.  Various types of hyper shrinkage may be used for
various co-data.  Co-data may be continuous or categorical.  The method
accommodates inclusion of unpenalised covariates, posterior selection of
covariates and multiple data types.  The model fit is used to predict for new
samples.  The name ecpc stands for Empirical Bayes, Co-data learnt, Prediction
and Covariate selection.  See Van Nee et al. (2020) <arXiv:2005.04010>.")
    (license license:gpl3+)))

(define-public r-ecovirtual
  (package
    (name "r-ecovirtual")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoVirtual" version))
              (sha256
               (base32
                "1aryl2sb5ak390lgnm427ilm6xv9lmsjhwdnapzc033zvqb099gj"))))
    (properties `((upstream-name . "EcoVirtual")))
    (build-system r-build-system)
    (home-page "http//ecovirtual.ib.usp.br")
    (synopsis "Simulation of Ecological Models")
    (description
     "Computer simulations of classical ecological models as a learning resource.")
    (license license:gpl2+)))

(define-public r-ecoval
  (package
    (name "r-ecoval")
    (version "1.2.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecoval" version))
              (sha256
               (base32
                "05a6hyjsbdp4wwhrm5fwjr7fxx4g2nffhp885q0da2jkzd0754f1"))))
    (properties `((upstream-name . "ecoval")))
    (build-system r-build-system)
    (propagated-inputs (list r-utility r-rivernet r-jpeg r-fs))
    (home-page "https://cran.r-project.org/package=ecoval")
    (synopsis "Procedures for Ecological Assessment of Surface Waters")
    (description
     "This package provides functions for evaluating and visualizing ecological
assessment procedures for surface waters containing physical, chemical and
biological assessments in the form of value functions.")
    (license license:gpl3)))

(define-public r-ecotroph
  (package
    (name "r-ecotroph")
    (version "1.6.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoTroph" version))
              (sha256
               (base32
                "0nrq6n7amz8l6rk0wfyrih7rkic96yc02rpk4szis81v7yvm7346"))))
    (properties `((upstream-name . "EcoTroph")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml))
    (home-page "http://sirs.agrocampus-ouest.fr/EcoTroph/")
    (synopsis "An Implementation of the EcoTroph Ecosystem Modelling Approach")
    (description
     "An approach and software for modelling marine and freshwater ecosystems.  It is
articulated entirely around trophic levels.  EcoTroph's key displays are
bivariate plots, with trophic levels as the abscissa, and biomass flows or
related quantities as ordinates.  Thus, trophic ecosystem functioning can be
modelled as a continuous flow of biomass surging up the food web, from lower to
higher trophic levels, due to predation and ontogenic processes.  Such an
approach, wherein species as such disappear, may be viewed as the ultimate stage
in the use of the trophic level metric for ecosystem modelling, providing a
simplified but potentially useful caricature of ecosystem functioning and
impacts of fishing.  This version contains catch trophic spectrum analysis
(CTSA) function and corrected versions of the mf.diagnosis and create.ETmain
functions.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ecotraj
  (package
    (name "r-ecotraj")
    (version "0.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecotraj" version))
              (sha256
               (base32
                "0mfvyh25xjhfd8k8b84d3vi9nf69g2lg82x6j3nsyhxy1kax9py8"))))
    (properties `((upstream-name . "ecotraj")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpp r-mass r-kendall))
    (native-inputs (list r-knitr))
    (home-page "https://emf-creaf.github.io/ecotraj/")
    (synopsis "Ecological Trajectory Analysis")
    (description
     "Assists ecologists in the analysis of temporal changes of ecosystems, defined as
trajectories on a chosen multivariate space, by providing a set of trajectory
metrics and visual representations (see De Caceres et al. (2019)
<doi:10.1002/ecm.1350> and Sturbois et al. (2021)
<doi:10.1016/j.ecolmodel.2020.109400>).  Includes functions to estimate metrics
for individual trajectories (length, directionality, angles, ...) as well as
metrics to relate pairs of trajectories (dissimilarity and convergence).")
    (license license:gpl2+)))

(define-public r-ecotoxr
  (package
    (name "r-ecotoxr")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECOTOXr" version))
              (sha256
               (base32
                "0gpzf957ya02695ga8cv3mw17jb027w10pjxq9r5ziky54wnh7qh"))))
    (properties `((upstream-name . "ECOTOXr")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyselect
                             r-tidyr
                             r-tibble
                             r-stringr
                             r-rvest
                             r-rsqlite
                             r-rlang
                             r-readr
                             r-rappdirs
                             r-purrr
                             r-httr
                             r-dplyr
                             r-dbplyr
                             r-crayon))
    (home-page "<https://github.com/pepijn-devries/ECOTOXr>")
    (synopsis "Download and Extract Data from US EPA's ECOTOX Database")
    (description
     "The US EPA ECOTOX database is a freely available database with a treasure of
aquatic and terrestrial ecotoxicological data.  As the online search interface
doesn't come with an API, this package provides the means to easily access and
search the database in R. To this end, all raw tables are downloaded from the
EPA website and stored in a local SQLite database.")
    (license license:gpl3+)))

(define-public r-ecotoxicology
  (package
    (name "r-ecotoxicology")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecotoxicology" version))
              (sha256
               (base32
                "084xkr59d7x9zxmsnsyym2x8jshz6ag6rvnmhd1i6fzar8ypwccb"))))
    (properties `((upstream-name . "ecotoxicology")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ecotoxicology")
    (synopsis "Methods for Ecotoxicology")
    (description
     "Implementation of the EPA's Ecological Exposure Research Division (EERD) tools
(discontinued in 1999) for Probit and Trimmed Spearman-Karber Analysis.  Probit
and Spearman-Karber methods from Finney's book \"Probit analysis a statistical
treatment of the sigmoid response curve\" with options for most accurate results
or identical results to the book.  Probit and all the tables from Finney's book
(code-generated, not copied) with the generating functions included.  Control
correction: Abbott, Schneider-Orelli, Henderson-Tilton, Sun-Shepard.  Toxicity
scales: Horsfall-Barratt, Archer, Gauhl-Stover, Fullerton-Olsen, etc.")
    (license license:gpl3+)))

(define-public r-ecotox
  (package
    (name "r-ecotox")
    (version "1.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecotox" version))
              (sha256
               (base32
                "01sc2lf2kca7wqqyd3gk48va39gb7ijzgs2smgb2k4xbzjqndg08"))))
    (properties `((upstream-name . "ecotox")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble))
    (home-page "https://cran.r-project.org/package=ecotox")
    (synopsis "Analysis of Ecotoxicology")
    (description
     "This package provides a simple approach to using a probit or logit analysis to
calculate lethal concentration (LC) or time (LT) and the appropriate fiducial
confidence limits desired for selected LC or LT for ecotoxicology studies
(Finney 1971; Wheeler et al.  2006; Robertson et al.  2007).  The simplicity of
ecotox comes from the syntax it implies within its functions which are similar
to functions like glm() and lm().  In addition to the simplicity of the syntax,
a comprehensive data frame is produced which gives the user a predicted LC or LT
value for the desired level and a suite of important parameters such as fiducial
confidence limits and slope.  Finney, D.J. (1971, ISBN: 052108041X); Wheeler,
M.W., Park, R.M., and Bailer, A.J. (2006) <doi:10.1897/05-320R.1>; Robertson,
J.L., Savin, N.E., Russell, R.M., and Preisler, H.K. (2007, ISBN: 0849323312).")
    (license (list license:gpl3
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-ecotonefinder
  (package
    (name "r-ecotonefinder")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcotoneFinder" version))
              (sha256
               (base32
                "1liqjakzg4c5kgjiir8i4fp4ax0737lfwriz277crh9p3jn3dgmh"))))
    (properties `((upstream-name . "EcotoneFinder")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-vegclust
                             r-vegan
                             r-rmisc
                             r-rlang
                             r-reshape
                             r-qgraph
                             r-purrr
                             r-plyr
                             r-philentropy
                             r-igraph
                             r-ggplot2
                             r-e1071
                             r-corrplot
                             r-colorspace
                             r-cluster))
    (home-page "https://cran.r-project.org/package=EcotoneFinder")
    (synopsis "Characterising and Locating Ecotones and Communities")
    (description
     "Analytical methods to locate and characterise ecotones, ecosystems and
environmental patchiness along ecological gradients.  Methods are implemented
for isolated sampling or for space/time series.  It includes Detrended
Correspondence Analysis (Hill & Gauch (1980) <doi:10.1007/BF00048870>), fuzzy
clustering (De CÃ¡ceres et al. (2010) <doi:10.1080/01621459.1963.10500845>),
biodiversity indices (Jost (2006) <doi:10.1111/j.2006.0030-1299.14714.x>), and
network analyses (Epskamp et al. (2012) <doi:10.18637/jss.v048.i04>) - as well
as tools to explore the number of clusters in the data.  Functions to produce
synthetic ecological datasets are also provided.")
    (license license:expat)))

(define-public r-ecostatscale
  (package
    (name "r-ecostatscale")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecostatscale" version))
              (sha256
               (base32
                "14i5wg5qxqn3qzycgqda6blb0imkckq23gl3c3whfa72a3a8y30q"))))
    (properties `((upstream-name . "ecostatscale")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm r-desolve))
    (home-page "https://cran.r-project.org/package=ecostatscale")
    (synopsis "Statistical Scaling Functions for Ecological Systems")
    (description
     "Implementation of the scaling functions presented in \"General statistical
scaling laws for stability in ecological systems\" by Clark et al in Ecology
Letters <DOI:10.1111/ele.13760>.  Includes functions for extrapolating
variability, resistance, and resilience across spatial and ecological scales, as
well as a basic simulation function for producing time series, and a regression
routine for generating unbiased parameter estimates.  See the main text of the
paper for more details.")
    (license license:gpl3)))

(define-public r-ecostats
  (package
    (name "r-ecostats")
    (version "1.1.11")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecostats" version))
              (sha256
               (base32
                "11h5s196aap64jch1123srbwy3907cvc4vgh0lvn5wkxbszrzypc"))))
    (properties `((upstream-name . "ecostats")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvtnorm
                             r-mvabund
                             r-mgcv
                             r-mass
                             r-get
                             r-ecocopula))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ecostats")
    (synopsis "Code and Data Accompanying the Eco-Stats Text (Warton 2022)")
    (description
     "This package provides functions and data supporting the Eco-Stats text (Warton,
2022, Springer), and solutions to exercises.  Functions include tools for using
simulation envelopes in diagnostic plots, and a function for diagnostic plots of
multivariate linear models.  Datasets mentioned in the package are included here
(where not available elsewhere) and there is a vignette for each chapter of the
text with solutions to exercises.")
    (license license:lgpl2.1+)))

(define-public r-ecospat
  (package
    (name "r-ecospat")
    (version "3.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecospat" version))
              (sha256
               (base32
                "0l93v8rbq41ll36riq6vhb22g5prp2rnlbn8i4lq85vvg1l00zfy"))))
    (properties `((upstream-name . "ecospat")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan
                             r-sp
                             r-raster
                             r-randomforest
                             r-presenceabsence
                             r-poibin
                             r-nabor
                             r-matrixstats
                             r-maptools
                             r-ks
                             r-hmisc
                             r-gtools
                             r-gbm
                             r-foreach
                             r-ecodist
                             r-dismo
                             r-classint
                             r-biomod2
                             r-ape
                             r-adehabitatma
                             r-adehabitathr
                             r-ade4))
    (native-inputs (list r-knitr))
    (home-page
     "http://www.unil.ch/ecospat/home/menuguid/ecospat-resources/tools.html")
    (synopsis "Spatial Ecology Miscellaneous Methods")
    (description
     "Collection of R functions and data sets for the support of spatial ecology
analyses with a focus on pre, core and post modelling analyses of species
distribution, niche quantification and community assembly.  Written by current
and former members and collaborators of the ecospat group of Antoine Guisan,
Department of Ecology and Evolution (DEE) and Institute of Earth Surface
Dynamics (IDYST), University of Lausanne, Switzerland.  Read Di Cola et al.
(2016) <doi:10.1111/ecog.02671> for details.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ecospace
  (package
    (name "r-ecospace")
    (version "1.4.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecospace" version))
              (sha256
               (base32
                "0vfaf27bv687ypxg5apzv63rl495rxyflqw33j17i4h0s7cjkgrm"))))
    (properties `((upstream-name . "ecospace")))
    (build-system r-build-system)
    (propagated-inputs (list r-fd))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pnovack-gottshall/ecospace")
    (synopsis
     "Simulating Community Assembly and Ecological Diversification Using Ecospace Frameworks")
    (description
     "This package implements stochastic simulations of community assembly (ecological
diversification) using customizable ecospace frameworks (functional trait
spaces).  Provides a wrapper to calculate common ecological disparity and
functional ecology statistical dynamics as a function of species richness.
Functions are written so they will work in a parallel-computing environment.")
    (license license:cc0)))

(define-public r-ecosim
  (package
    (name "r-ecosim")
    (version "1.3-3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecosim" version))
              (sha256
               (base32
                "190xf0xy1cw40qx8x6y4m9avspxh0y11ffl3s18d5d2zr7rj3ag2"))))
    (properties `((upstream-name . "ecosim")))
    (build-system r-build-system)
    (propagated-inputs (list r-stoichcalc r-desolve))
    (home-page "https://cran.r-project.org/package=ecosim")
    (synopsis "Toolbox for Aquatic Ecosystem Modeling")
    (description
     "Classes and methods for implementing aquatic ecosystem models, for running these
models, and for visualizing their results.")
    (license license:gpl2+)))

(define-public r-ecorest
  (package
    (name "r-ecorest")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecorest" version))
              (sha256
               (base32
                "13x95z99yqld1fvfgzbm6ahrnvfvcqwlb23yjr187yg83iynh79v"))))
    (properties `((upstream-name . "ecorest")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridis))
    (home-page "https://cran.r-project.org/package=ecorest")
    (synopsis "Conducts Analyses Informing Ecosystem Restoration Decisions")
    (description
     "Three sets of data and functions for informing ecosystem restoration decisions,
particularly in the context of the U.S. Army Corps of Engineers.  First, model
parameters are compiled as a data set and associated metadata for over 500
habitat suitability models developed by the U.S. Fish and Wildlife Service
(USFWS 1980) <https://www.fws.gov/policy/ESMindex.html>.  Second, functions for
conducting habitat suitability analyses both for the models described above as
well as generic user-specified model parameterizations.  Third, a suite of
decision support tools for conducting cost-effectiveness and incremental cost
analyses (Robinson et al.  1995)
<https://www.iwr.usace.army.mil/Portals/70/docs/iwrreports/95-R-1.pdf>.")
    (license license:cc0)))

(define-public r-ecoreg
  (package
    (name "r-ecoreg")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecoreg" version))
              (sha256
               (base32
                "1bhh4bnvrvgz49wim5r0b4awfsn9l23wvl4kl0vny0s4hm7cgahc"))))
    (properties `((upstream-name . "ecoreg")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ecoreg")
    (synopsis "Ecological Regression using Aggregate and Individual Data")
    (description
     "Estimating individual-level covariate-outcome associations using aggregate data
(\"ecological inference\") or a combination of aggregate and individual-level data
(\"hierarchical related regression\").")
    (license license:gpl2+)))

(define-public r-ecopower
  (package
    (name "r-ecopower")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecopower" version))
              (sha256
               (base32
                "0x9rvwiypc3as44w67fn7dfsw1rrdhfpirz069hmzbw35gw0g1qh"))))
    (properties `((upstream-name . "ecopower")))
    (build-system r-build-system)
    (propagated-inputs (list r-mvabund r-ecocopula))
    (home-page "https://cran.r-project.org/package=ecopower")
    (synopsis "Power Estimates and Equivalence Testing for Multivariate Data")
    (description
     "Estimates power by simulation for multivariate abundance data to be used for
sample size estimates.  Multivariate equivalence testing by simulation from a
Gaussian copula model.  The package also provides functions for parameterising
multivariate effect sizes and simulating multivariate abundance data jointly.
The discrete Gaussian copula approach is described in Popovic et al. (2018)
<doi:10.1016/j.jmva.2017.12.002>.")
    (license license:lgpl2.1+)))

(define-public r-econullnetr
  (package
    (name "r-econullnetr")
    (version "0.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "econullnetr" version))
              (sha256
               (base32
                "0kdzkk8mlnc71a6n80hgrclwns66zyhr183ad4ifz8b146xh5cl9"))))
    (properties `((upstream-name . "econullnetr")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2 r-gtools r-bipartite))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=econullnetr")
    (synopsis "Null Model Analysis for Ecological Networks")
    (description
     "Tools for using null models to analyse ecological networks (e.g. food webs,
flower-visitation networks, seed-dispersal networks) and detect resource
preferences or non-random interactions among network nodes.  Tools are provided
to run null models, test for and plot preferences, plot and analyse bipartite
networks, and export null model results in a form compatible with other network
analysis packages.  The underlying null model was developed by Agusti et al.
(2003) Molecular Ecology <doi:10.1046/j.1365-294X.2003.02014.x> and the full
application to ecological networks by Vaughan et al. (2018) econullnetr: an R
package using null models to analyse the structure of ecological networks and
identify resource selection.  Methods in Ecology & Evolution,
<doi:10.1111/2041-210X.12907>.")
    (license license:expat)))

(define-public r-economiccomplexity
  (package
    (name "r-economiccomplexity")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "economiccomplexity" version))
              (sha256
               (base32
                "0z3g0d843glpgqx63ci8cykb1vs04nr4cjfz4525yl0pa7mk9lmg"))))
    (properties `((upstream-name . "economiccomplexity")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-matrix r-igraph))
    (native-inputs (list r-knitr))
    (home-page "https://pacha.dev/economiccomplexity/")
    (synopsis "Computational Methods for Economic Complexity")
    (description
     "This package provides a wrapper of different methods from Linear Algebra for the
equations introduced in The Atlas of Economic Complexity and related literature.
 This package provides standard matrix and graph output that can be used
seamlessly with other packages.  See <doi:10.21105/joss.01866> for a summary of
these methods and its evolution in literature.")
    (license license:gpl3)))

(define-public r-econetwork
  (package
    (name "r-econetwork")
    (version "0.7.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "econetwork" version))
              (sha256
               (base32
                "1pn7bx3rch09ddllq9sfzm5ynz6a1mgbsy3rq0qyg19xan9xgmi6"))))
    (properties `((upstream-name . "econetwork")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdiversity
                             r-rcppgsl
                             r-rcppeigen
                             r-rcpp
                             r-igraph
                             r-blockmodels
                             r-bipartite))
    (home-page "https://plmlab.math.cnrs.fr/econetproject/econetwork")
    (synopsis "Analyzing Ecological Networks")
    (description
     "This package provides a collection of advanced tools, methods and models
specifically designed for analyzing different types of ecological networks -
especially antagonistic (food webs, host-parasite), mutualistic
(plant-pollinator, plant-fungus, etc) and competitive networks, as well as their
variability in time and space.  Statistical models are developed to describe and
understand the mechanisms that determine species interactions, and to decipher
the organization of these ecological networks (Ohlmann et al. (2019)
<doi:10.1111/ele.13221>, Gonzalez et al. (2020) <doi:10.1101/2020.04.02.021691>,
Miele et al. (2021) <doi:10.48550/arXiv.2103.10433>, Botella et al (2021)
<doi:10.1111/2041-210X.13738>).")
    (license license:gpl3)))

(define-public r-econetgen
  (package
    (name "r-econetgen")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoNetGen" version))
              (sha256
               (base32
                "05j8m9vzkwlsw1h69s5myhbg85vyhqdxcl9r5mdwsrk9f58wajmz"))))
    (properties `((upstream-name . "EcoNetGen")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph r-ggplot2))
    (native-inputs (list gfortran))
    (home-page "https://github.com/cboettig/EcoNetGen")
    (synopsis "Simulate and Sample from Ecological Interaction Networks")
    (description
     "Randomly generate a wide range of interaction networks with specified size,
average degree, modularity, and topological structure.  Sample nodes and links
from within simulated networks randomly, by degree, by module, or by abundance.
Simulations and sampling routines are implemented in FORTRAN', providing
efficient generation times even for large networks.  Basic visualization methods
also included.  Algorithms implemented here are described in de Aguiar et al.
(2017) <arXiv:1708.01242>.")
    (license license:gpl3)))

(define-public r-econet
  (package
    (name "r-econet")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "econet" version))
              (sha256
               (base32
                "1igcyhn0gzv82rm5ki59ivmr3q9ryrimyfwybnppcpvg38wdpvwj"))))
    (properties `((upstream-name . "econet")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-utils
                             r-sna
                             r-progressr
                             r-plyr
                             r-minpack-lm
                             r-matrix
                             r-mass
                             r-intergraph
                             r-igraph
                             r-formula-tools
                             r-foreach
                             r-dplyr
                             r-doparallel
                             r-bbmle))
    (home-page "https://cran.r-project.org/package=econet")
    (synopsis "Estimation of Parameter-Dependent Network Centrality Measures")
    (description
     "This package provides methods for estimating parameter-dependent network
centrality measures with linear-in-means models.  Both non linear least squares
and maximum likelihood estimators are implemented.  The methods allow for both
link and node heterogeneity in network effects, endogenous network formation and
the presence of unconnected nodes.  The routines also compare the explanatory
power of parameter-dependent network centrality measures with those of standard
measures of network centrality.  Benefits and features of the econet package are
illustrated using data from Battaglini and Patacchini (2018) and Battaglini,
Patacchini, and Leone Sciabolazza (2020).  For additional details, see the
vignette <doi:10.18637/jss.v102.i08>.")
    (license license:expat)))

(define-public r-econdemand
  (package
    (name "r-econdemand")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EconDemand" version))
              (sha256
               (base32
                "1slpwiaxj7w21zdri9myrzwbwzl62m3cnp0g4fr2rkdlzgb6j5yj"))))
    (properties `((upstream-name . "EconDemand")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EconDemand")
    (synopsis "General Analysis of Various Economics Demand Systems")
    (description
     "Tools for general properties including price, quantity, elasticity, convexity,
marginal revenue and manifold of various economics demand systems including
Linear, Translog, CES, LES and CREMR.")
    (license license:gpl2)))

(define-public r-ecoltest
  (package
    (name "r-ecoltest")
    (version "0.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecolTest" version))
              (sha256
               (base32
                "0gkhf8gdjvkys54x0qx0h5i0lz0ksba6xdy15wzblzhym43vh9wf"))))
    (properties `((upstream-name . "ecolTest")))
    (build-system r-build-system)
    (home-page "https://github.com/hugosal/ecolTest")
    (synopsis "Community Ecology Tests")
    (description
     "This package provides functions and data sets to perform and demonstrate
community ecology statistical tests, including Hutcheson's t-test (Hutcheson
(1970) <doi:10.1016/0022-5193(70)90124-4>, Zar (2010) ISBN:9780321656865).")
    (license license:expat)))

(define-public r-ecolottery
  (package
    (name "r-ecolottery")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecolottery" version))
              (sha256
               (base32
                "0w5aq1aaqzz74vlj8hgnmn60l8rdrchx022dpspqnpvpzdlh65z5"))))
    (properties `((upstream-name . "ecolottery")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-abc))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/frmunoz/ecolottery")
    (synopsis "Coalescent-Based Simulation of Ecological Communities")
    (description
     "Coalescent-Based Simulation of Ecological Communities as proposed by Munoz et
al. (2017) <doi:10.13140/RG.2.2.31737.26728>.  The package includes a tool for
estimating parameters of community assembly by using Approximate Bayesian
Computation.")
    (license license:gpl2+)))

(define-public r-ecolmod
  (package
    (name "r-ecolmod")
    (version "1.2.6.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecolMod" version))
              (sha256
               (base32
                "1kbllyh986468182q28g0hhyf2y58lcqd0wc7izi0fcw3ww2xyh6"))))
    (properties `((upstream-name . "ecolMod")))
    (build-system r-build-system)
    (propagated-inputs (list r-shape r-rootsolve r-diagram r-desolve))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=ecolMod")
    (synopsis
     "\"A Practical Guide to Ecological Modelling - Using R as a Simulation Platform\"")
    (description
     "Figures, data sets and examples from the book \"A practical guide to ecological
modelling - using R as a simulation platform\" by Karline Soetaert and Peter MJ
Herman (2009).  Springer.  All figures from chapter x can be generated by
\"demo(chapx)\", where x = 1 to 11.  The R-scripts of the model examples discussed
in the book are in subdirectory \"examples\", ordered per chapter.  Solutions to
model projects are in the same subdirectories.")
    (license license:gpl2+)))

(define-public r-ecol
  (package
    (name "r-ecol")
    (version "0.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECoL" version))
              (sha256
               (base32
                "02j4yl6hi83f6m529r6n0gaz8wsy2pi0ncy2g95fjhs8ib0kfn4f"))))
    (properties `((upstream-name . "ECoL")))
    (build-system r-build-system)
    (propagated-inputs (list r-mass r-igraph r-fnn r-e1071 r-cluster))
    (home-page "https://github.com/lpfgarcia/ECoL/")
    (synopsis "Complexity Measures for Supervised Problems")
    (description
     "This package provides measures to characterize the complexity of classification
and regression problems based on aspects that quantify the linearity of the
data, the presence of informative feature, the sparsity and dimensionality of
the datasets.  This package provides bug fixes, generalizations and
implementations of many state of the art measures.  The measures are described
in the papers: Lorena et al. (2019) <doi:10.1145/3347711> and Lorena et al.
(2018) <doi:10.1007/s10994-017-5681-1>.")
    (license license:expat)))

(define-public r-ecoindr
  (package
    (name "r-ecoindr")
    (version "1.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoIndR" version))
              (sha256
               (base32
                "008wgp9zc8a8knz9ighgavrdm0yf37m5jahnq5kndjhld0359z6h"))))
    (properties `((upstream-name . "EcoIndR")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgeos))
    (home-page "https://cran.r-project.org/package=EcoIndR")
    (synopsis "Ecological Indicators")
    (description
     "Calculates several indices, such as of diversity, fluctuation, etc., and they
are used to estimate ecological indicators.")
    (license license:gpl2+)))

(define-public r-ecohydmod
  (package
    (name "r-ecohydmod")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ecohydmod" version))
              (sha256
               (base32
                "0imkzjqp3g28l42jz5m4p85wg5rawmn9hy1wys9xndnaliv6d7r2"))))
    (properties `((upstream-name . "Ecohydmod")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=Ecohydmod")
    (synopsis "Ecohydrological Modelling")
    (description
     "Simulates the soil water balance (soil moisture, evapotranspiration, leakage and
runoff), rainfall series by using the marked Poisson process and the vegetation
growth through the normalized difference vegetation index (NDVI).  Please see
Souza et al. (2016) <doi:10.1002/hyp.10953>.")
    (license license:gpl2)))

(define-public r-ecoensemble
  (package
    (name "r-ecoensemble")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoEnsemble" version))
              (sha256
               (base32
                "1b0zm8d4dc2drdy08s5gskjdjl0i91ng78xk6aga17bjgm5hjqsi"))))
    (properties `((upstream-name . "EcoEnsemble")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stanheaders
                             r-rstantools
                             r-rstan
                             r-reshape2
                             r-rcppparallel
                             r-rcppeigen
                             r-rcpp
                             r-matrixcalc
                             r-ggplot2
                             r-dplyr
                             r-cowplot
                             r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EcoEnsemble")
    (synopsis "General Framework for Combining Ecosystem Models")
    (description
     "Fit and sample from the ensemble model described in Spence et al (2018): \"A
general framework for combining ecosystem
models\"<https://onlinelibrary.wiley.com/doi/abs/10.1111/faf.12310>.")
    (license license:gpl3+)))

(define-public r-ecodist
  (package
    (name "r-ecodist")
    (version "2.0.9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecodist" version))
              (sha256
               (base32
                "1m78bgbr7xjlc01q4n921y3aq2nkdbdkv9qpppfarw0d77pqpsdf"))))
    (properties `((upstream-name . "ecodist")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ecodist")
    (synopsis "Dissimilarity-Based Functions for Ecological Analysis")
    (description
     "Dissimilarity-based analysis functions including ordination and Mantel test
functions, intended for use with spatial and community data.  The original
package description is in Goslee and Urban (2007) <doi:10.18637/jss.v022.i07>,
with further statistical detail in Goslee (2010)
<doi:10.1007/s11258-009-9641-0>.")
    (license license:gpl2+)))

(define-public r-ecodiet
  (package
    (name "r-ecodiet")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EcoDiet" version))
              (sha256
               (base32
                "1yc120fs4bprn9ifh59n6y671wa5vi7r6k0ldp9fzy5asax00ds8"))))
    (properties `((upstream-name . "EcoDiet")))
    (build-system r-build-system)
    (inputs (list jags))
    (propagated-inputs (list r-rjags r-ggplot2 r-coda))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/pyhernvann/EcoDiet")
    (synopsis
     "Estimating a Diet Matrix from Biotracer and Stomach Content Data")
    (description
     "Biotracers and stomach content analyses are combined in a Bayesian hierarchical
model to estimate a probabilistic topology matrix (all trophic link
probabilities) and a diet matrix (all diet proportions).  The package relies on
the JAGS software and the rjags package to run a Markov chain Monte Carlo
approximation of the different variables.")
    (license license:gpl2+)))

(define-public r-ecocopula
  (package
    (name "r-ecocopula")
    (version "1.0.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecoCopula" version))
              (sha256
               (base32
                "1j3n9h7rm66r8vmzzhy5mjh36gs1qnsh7rq33ymjpkkfy698gbpm"))))
    (properties `((upstream-name . "ecoCopula")))
    (build-system r-build-system)
    (propagated-inputs (list r-tweedie
                             r-sna
                             r-plyr
                             r-ordinal
                             r-mvabund
                             r-mgcv
                             r-mass
                             r-igraph
                             r-glm2
                             r-glasso
                             r-foreach
                             r-doparallel
                             r-betareg))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ecoCopula")
    (synopsis "Graphical Modelling and Ordination using Copulas")
    (description
     "This package creates graphs of species associations (interactions) and
ordination biplots from co-occurrence data by fitting discrete gaussian copula
graphical models.  Methods described in Popovic, GC., Hui, FKC., Warton, DI.,
(2018) <doi:10.1016/j.jmva.2017.12.002>.")
    (license license:lgpl2.1+)))

(define-public r-ecocomdp
  (package
    (name "r-ecocomdp")
    (version "1.2.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecocomDP" version))
              (sha256
               (base32
                "06im6d0fx749ic6kjbxa6mk4cn98lz2q7939v627qrhwjkmmgx7a"))))
    (properties `((upstream-name . "ecocomDP")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-uuid
                             r-tidyr
                             r-stringr
                             r-rmarkdown
                             r-rlang
                             r-rcolorbrewer
                             r-neonutilities
                             r-magrittr
                             r-lubridate
                             r-httr
                             r-ggplot2
                             r-geosphere
                             r-emld
                             r-eml
                             r-dplyr
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/EDIorg/ecocomDP")
    (synopsis "Tools to Create, Use, and Convert ecocomDP Data")
    (description
     "Work with the Ecological Community Data Design Pattern.  ecocomDP is a flexible
data model for harmonizing ecological community surveys, in a research question
agnostic format, from source data published across repositories, and with
methods that keep the derived data up-to-date as the underlying sources change.
Described in O'Brien et al. (2021), <doi:10.1016/j.ecoinf.2021.101374>.")
    (license license:expat)))

(define-public r-ecochange
  (package
    (name "r-ecochange")
    (version "2.9.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecochange" version))
              (sha256
               (base32
                "1m27m0m7ccirjdr4c76lnj1ilw979i8wfc2xjja0drcnihlbspqa"))))
    (properties `((upstream-name . "ecochange")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-sp
                             r-sf
                             r-rlang
                             r-rastervis
                             r-rasterdt
                             r-raster
                             r-lattice
                             r-landscapemetrics
                             r-httr
                             r-ggplot2
                             r-getpass))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ecochange")
    (synopsis
     "Integrating Ecosystem Remote Sensing Products to Derive EBV Indicators")
    (description
     "Essential Biodiversity Variables (EBV) are state variables with dimensions on
time, space, and biological organization that document biodiversity change.
Freely available ecosystem remote sensing products (ERSP) are downloaded and
integrated with data for national or regional domains to derive indicators for
EBV in the class ecosystem structure (Pereira et al., 2013)
<doi:10.1126/science.1229931>, including horizontal ecosystem extents,
fragmentation, and information-theory indices.  To process ERSP, users must
provide a polygon or geographic administrative data map.  Downloadable ERSP
include Global Surface Water (Peckel et al., 2016) <doi:10.1038/nature20584>,
Forest Change (Hansen et al., 2013) <doi:10.1126/science.1244693>, and
Continuous Tree Cover data (Sexton et al., 2013)
<doi:10.1080/17538947.2013.786146>.")
    (license license:gpl3)))

(define-public r-ecmwfr
  (package
    (name "r-ecmwfr")
    (version "1.4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecmwfr" version))
              (sha256
               (base32
                "1l2w8rgxb8dphnfwvhxf09k8h79zy0qxlwz6rf2gbx0kyh5h7zi8"))))
    (properties `((upstream-name . "ecmwfr")))
    (build-system r-build-system)
    (propagated-inputs (list r-r6
                             r-memoise
                             r-keyring
                             r-httr
                             r-getpass
                             r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/bluegreen-labs/ecmwfr")
    (synopsis "Interface to 'ECMWF' and 'CDS' Data Web Services")
    (description
     "Programmatic interface to the European Centre for Medium-Range Weather Forecasts
dataset web services (ECMWF; <https://www.ecmwf.int/>) and Copernicus's Climate
Data Store (CDS; <https://cds.climate.copernicus.eu>).  Allows for easy
downloads of weather forecasts and climate reanalysis data in R.")
    (license license:agpl3)))

(define-public r-ecm
  (package
    (name "r-ecm")
    (version "6.3.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecm" version))
              (sha256
               (base32
                "1g8y8wks7asjyybdh4nf19w5v8kvl56n69dl0sd0mlir98i4jmr3"))))
    (properties `((upstream-name . "ecm")))
    (build-system r-build-system)
    (propagated-inputs (list r-urca r-sandwich r-lmtest r-earth r-car))
    (home-page "https://github.com/gaurbans/ecm")
    (synopsis "Build Error Correction Models")
    (description
     "This package provides functions for easy building of error correction models
(ECM) for time series regression.")
    (license license:gpl2+)))

(define-public r-eclust
  (package
    (name "r-eclust")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eclust" version))
              (sha256
               (base32
                "01x327w02m357lngmgv3drni2s67sass25xk9vni1z434n8i4428"))))
    (properties `((upstream-name . "eclust")))
    (build-system r-build-system)
    (propagated-inputs (list r-wgcna
                             r-stringr
                             r-pander
                             r-pacman
                             r-magrittr
                             r-dynamictreecut
                             r-data-table
                             r-caret))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/sahirbhatnagar/eclust/")
    (synopsis
     "Environment Based Clustering for Interpretable Predictive Models in High Dimensional Data")
    (description
     "Companion package to the paper: An analytic approach for interpretable
predictive models in high dimensional data, in the presence of interactions with
exposures.  Bhatnagar, Yang, Khundrakpam, Evans, Blanchette, Bouchard, Greenwood
(2017) <DOI:10.1101/102475>.  This package includes an algorithm for clustering
high dimensional data that can be affected by an environmental factor.")
    (license license:expat)))

(define-public r-eclrmc
  (package
    (name "r-eclrmc")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECLRMC" version))
              (sha256
               (base32
                "01z2hmbpb754s2rsvx3i5wf7kkkr2mvs2g89ih2bqrif7w5rmgyg"))))
    (properties `((upstream-name . "ECLRMC")))
    (build-system r-build-system)
    (propagated-inputs (list r-softimpute))
    (home-page "https://cran.r-project.org/package=ECLRMC")
    (synopsis "Ensemble Correlation-Based Low-Rank Matrix Completion")
    (description
     "Ensemble correlation-based low-rank matrix completion method (ECLRMC) is an
extension to the LRMC based methods.  Traditionally, the LRMC based methods give
identical importance to the whole data which results in emphasizing on the
commonality of the data and overlooking the subtle but crucial differences.
This method aims to overcome the equality assumption problem that exists in the
current LRMS based methods.  Ensemble correlation-based low-rank matrix
completion (ECLRMC) takes consideration of the specific characteristic of each
sample and performs LRMC on the set of samples with a strong correlation.  It
uses an ensemble learning method to improve the imputation performance.  Since
each sample is analyzed independently this method can be parallelized by
distributing imputation across many computation units or GPU platforms.  This
package provides three different methods (LRMC, CLRMC and ECLRMC) for data
imputation.  There is also an NRMS function for evaluating the result.  Chen,
Xiaobo, et al (2017) <doi:10.1016/j.knosys.2017.06.010>.")
    (license license:gpl2)))

(define-public r-ecipex
  (package
    (name "r-ecipex")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecipex" version))
              (sha256
               (base32
                "16iyi6n0pnyfmy47b0ranjbh3spvq8cgkmcamzhgjfj7qn0ix184"))))
    (properties `((upstream-name . "ecipex")))
    (build-system r-build-system)
    (propagated-inputs (list r-chnosz))
    (home-page "https://cran.r-project.org/package=ecipex")
    (synopsis
     "Efficient Calculation of Fine Structure Isotope Patterns via Fourier Transforms of Simplex-Based Elemental Models")
    (description
     "This package provides a function that quickly computes the fine structure
isotope patterns of a set of chemical formulas to a given degree of accuracy (up
to the limit set by errors in floating point arithmetic).  A data-set comprising
the masses and isotopic abundances of individual elements is also provided and
calculation of isotopic gross structures is also supported.")
    (license license:gpl2+)))

(define-public r-echor
  (package
    (name "r-echor")
    (version "0.1.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echor" version))
              (sha256
               (base32
                "1jkpwcx60l7nq5k6kr7qlp6qwbi2jn80asvfyhy459ikdk2s2lcy"))))
    (properties `((upstream-name . "echor")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-rlang
                             r-readr
                             r-purrr
                             r-plyr
                             r-httr
                             r-geojsonsf
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=echor")
    (synopsis "Access EPA 'ECHO' Data")
    (description
     "An R interface to United States Environmental Protection Agency (EPA)
Environmental Compliance History Online ('ECHO') Application Program Interface
(API).  ECHO provides information about EPA permitted facilities, discharges,
and other reporting info associated with permitted entities.  Data are obtained
from <https://echo.epa.gov/>.")
    (license license:expat)))

(define-public r-echogram
  (package
    (name "r-echogram")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echogram" version))
              (sha256
               (base32
                "0kir7x32fk3fc63kr3b2j0hfkmivs2pwrlxyjvdg7xqc59hjp3ma"))))
    (properties `((upstream-name . "echogram")))
    (build-system r-build-system)
    (propagated-inputs (list r-readhac r-geosphere))
    (home-page "https://github.com/hvillalo/echogram")
    (synopsis "Echogram Visualisation and Analysis")
    (description
     "Easily import multi-frequency acoustic data stored in HAC files (see
<http://biblio.uqar.ca/archives/30005500.pdf> for more information on the
format), and produce echogram visualisations with predefined or customized color
palettes.  It is also possible to merge consecutive echograms; mask or delete
unwanted echogram areas; model and subtract background noise; and more
important, develop, test and interpret different combinations of frequencies in
order to perform acoustic filtering of the echogram's data.")
    (license license:gpl3)))

(define-public r-echo-find
  (package
    (name "r-echo-find")
    (version "4.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echo.find" version))
              (sha256
               (base32
                "1nadqqpxgx2ck16nzjp5ajm6714452qzllg5cq1jpisv1yb31db2"))))
    (properties `((upstream-name . "echo.find")))
    (build-system r-build-system)
    (propagated-inputs (list r-minpack-lm r-boot))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/delosh653/ECHO")
    (synopsis
     "Finding Rhythms Using Extended Circadian Harmonic Oscillators (ECHO)")
    (description
     "This package provides a function (echo_find()) designed to find rhythms from
data using extended harmonic oscillators.  For more information, see H. De los
Santos et al. (2020) <doi:10.1093/bioinformatics/btz617> .")
    (license license:expat)))

(define-public r-echem
  (package
    (name "r-echem")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eChem" version))
              (sha256
               (base32
                "0wmf204hqd4s5har5l9bkcbrbmbqbb8m11w2aivi2gs98f3hy51p"))))
    (properties `((upstream-name . "eChem")))
    (build-system r-build-system)
    (propagated-inputs (list r-plot3d r-animation))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/dtharvey/eChem")
    (synopsis "Simulations for Electrochemistry Experiments")
    (description
     "Simulates cyclic voltammetry, linear-sweep voltammetry (both with and without
stirring of the solution), and single-pulse and double-pulse chronoamperometry
and chronocoulometry experiments using the implicit finite difference method
outlined in Gosser (1993, ISBN: 9781560810261) and in Brown (2015)
<doi:10.1021/acs.jchemed.5b00225>.  Additional functions provide ways to display
and to examine the results of these simulations.  The primary purpose of this
package is to provide tools for use in courses in analytical chemistry.")
    (license license:gpl2)))

(define-public r-echelon
  (package
    (name "r-echelon")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echelon" version))
              (sha256
               (base32
                "0dw15igx8jwgfr1f7p5pspxjiqhqmfp7shdhq8g07f4bj76irzm4"))))
    (properties `((upstream-name . "echelon")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=echelon")
    (synopsis
     "The Echelon Analysis and the Detection of Spatial Clusters using Echelon Scan Method")
    (description
     "This package provides functions for the echelon analysis developed proposed by
Myers et al. (1997) <doi:10.1023/A:1018518327329>, and the detection of spatial
clusters using echelon scan method proposed by Kurihara (2003)
<doi:10.20551/jscswabun.15.2_171>.")
    (license license:gpl3)))

(define-public r-echarty
  (package
    (name "r-echarty")
    (version "1.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echarty" version))
              (sha256
               (base32
                "0ipnci76yn8gqa5jk51aprywd54933fgqf2mdp2zfwcwirgz1642"))))
    (properties `((upstream-name . "echarty")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr
                             r-data-tree))
    (home-page "https://github.com/helgasoft/echarty")
    (synopsis "Minimal R/Shiny Interface to JavaScript Library 'ECharts'")
    (description
     "Deliver the full functionality of ECharts with minimal overhead.  echarty users
build R lists for ECharts API. Lean set of powerful commands.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-echarts4r
  (package
    (name "r-echarts4r")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "echarts4r" version))
              (sha256
               (base32
                "1xwr6282mnbg4hmljfanvdkya3hk8hix4g1pzw69w8x715p2b142"))))
    (properties `((upstream-name . "echarts4r")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny
                             r-scales
                             r-rstudioapi
                             r-purrr
                             r-jsonlite
                             r-htmlwidgets
                             r-htmltools
                             r-dplyr
                             r-countrycode
                             r-corrplot
                             r-broom))
    (home-page "https://echarts4r.john-coene.com/")
    (synopsis "Create Interactive Graphs with 'Echarts JavaScript' Version 5")
    (description
     "Easily create interactive charts by leveraging the Echarts Javascript library
which includes 36 chart types, themes, Shiny proxies and animations.")
    (license (license:fsdg-compatible "Apache License (>= 2.0)"))))

(define-public r-echarts2shiny
  (package
    (name "r-echarts2shiny")
    (version "0.2.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECharts2Shiny" version))
              (sha256
               (base32
                "0dq8ja4ydxnc7qx35qhh9ryqgi7ambwz6ka2821mmq3p994crswn"))))
    (properties `((upstream-name . "ECharts2Shiny")))
    (build-system r-build-system)
    (propagated-inputs (list r-shiny r-jsonlite))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/XD-DENG/ECharts2Shiny")
    (synopsis
     "Embedding Interactive Charts Generated with ECharts Library into Shiny Applications")
    (description
     "Embed interactive charts to their Shiny applications.  These charts will be
generated by ECharts library developed by Baidu (<http://echarts.baidu.com/>).
Current version supports line chart, bar chart, pie chart, scatter plot, gauge,
word cloud, radar chart, tree map, and heat map.")
    (license license:gpl2)))

(define-public r-ech
  (package
    (name "r-ech")
    (version "0.1.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ech" version))
              (sha256
               (base32
                "0xkgbqs6wmfp6a7dih4n850dw6ky596hlpmfrv72lnp77w03pll9"))))
    (properties `((upstream-name . "ech")))
    (build-system r-build-system)
    (inputs (list proj geos gdal))
    (propagated-inputs (list r-tidyr
                             r-survey
                             r-stringr
                             r-statar
                             r-srvyr
                             r-rlang
                             r-readxl
                             r-purrr
                             r-laeken
                             r-labelled
                             r-janitor
                             r-haven
                             r-glue
                             r-geouy
                             r-fs
                             r-dplyr
                             r-curl
                             r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=ech")
    (synopsis "Toolbox for ECH with R")
    (description
     "R toolbox for the processing of the Encuesta Continua de Hogares (ECH) from
Uruguay at <http://www.ine.gub.uy/encuesta-continua-de-hogares1> conducted by
the Instituto Nacional de Estadistica (INE).")
    (license license:gpl3)))

(define-public r-ecgoftestdx
  (package
    (name "r-ecgoftestdx")
    (version "0.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECGofTestDx" version))
              (sha256
               (base32
                "0y8bw1k9spwxyzc7vsi2iblnmjsidxbybjrzzh2j6frjmv3rk4g1"))))
    (properties `((upstream-name . "ECGofTestDx")))
    (build-system r-build-system)
    (propagated-inputs (list r-orthopolynom r-bootstrap))
    (home-page "https://cran.r-project.org/package=ECGofTestDx")
    (synopsis
     "Goodness-of-Fit Test for Elliptical Distributions with Diagnostic Capabilities")
    (description
     "This package provides a goodness-of-fit test for elliptical distributions with
diagnostic capabilities.  Gilles R. Ducharme, Pierre Lafaye de Micheaux (2019)
<arXiv:1902.03622>.")
    (license license:gpl2+)))

(define-public r-ecfun
  (package
    (name "r-ecfun")
    (version "0.3-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ecfun" version))
              (sha256
               (base32
                "1q0mx70hy18rabpabxghaixkb3r1432cxln844cac4dqxhvzcqgy"))))
    (properties `((upstream-name . "Ecfun")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-tis
                             r-teachingdemos
                             r-stringi
                             r-rvest
                             r-mvtnorm
                             r-mass
                             r-jpeg
                             r-fda
                             r-bma))
    (native-inputs (list r-knitr))
    (home-page "https://www.r-project.org")
    (synopsis "Functions for 'Ecdat'")
    (description
     "This package provides functions and vignettes to update data sets in Ecdat and
to create, manipulate, plot, and analyze those and similar data sets.")
    (license license:gpl2+)))

(define-public r-ecespa
  (package
    (name "r-ecespa")
    (version "1.1-16")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecespa" version))
              (sha256
               (base32
                "1hlfrbwy119gwqf39z81j3nsc1y6gsyh2jy7qid7hp5llbmym10k"))))
    (properties `((upstream-name . "ecespa")))
    (build-system r-build-system)
    (propagated-inputs (list r-spatstat-random r-spatstat-model
                             r-spatstat-geom r-spatstat-explore r-spatstat))
    (native-inputs (list gfortran))
    (home-page "https://cran.r-project.org/package=ecespa")
    (synopsis "Functions for Spatial Point Pattern Analysis")
    (description
     "Some wrappers, functions and data sets for for spatial point pattern analysis
(mainly based on spatstat'), used in the book \"Introduccion al Analisis Espacial
de Datos en Ecologia y Ciencias Ambientales: Metodos y Aplicaciones\" and in the
papers by De la Cruz et al. (2008) <doi:10.1111/j.0906-7590.2008.05299.x> and
Olano et al. (2009) <doi:10.1051/forest:2008074>.")
    (license license:gpl2+)))

(define-public r-ecdfht
  (package
    (name "r-ecdfht")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecdfHT" version))
              (sha256
               (base32
                "1n3n9n86pj8c54l3xvp7knvi0ajbnjmz9pi79p7wfq92a90fqx48"))))
    (properties `((upstream-name . "ecdfHT")))
    (build-system r-build-system)
    (propagated-inputs (list r-rgl))
    (home-page "https://cran.r-project.org/package=ecdfHT")
    (synopsis "Empirical CDF for Heavy Tailed Data")
    (description
     "Computes and plots a transformed empirical CDF (ecdf) as a diagnostic for heavy
tailed data, specifically data with power law decay on the tails.  Routines for
annotating the plot, comparing data to a model, fitting a nonparametric model,
and some multivariate extensions are given.")
    (license license:gpl3+)))

(define-public r-ecdat
  (package
    (name "r-ecdat")
    (version "0.4-2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ecdat" version))
              (sha256
               (base32
                "1vyc4ynkd65mng2x8wvzn47crsvaqfz97n89jxn12xv13bpsbs7c"))))
    (properties `((upstream-name . "Ecdat")))
    (build-system r-build-system)
    (propagated-inputs (list r-ecfun))
    (home-page "https://www.r-project.org")
    (synopsis "Data Sets for Econometrics")
    (description "Data sets for econometrics, including political science.")
    (license license:gpl2+)))

(define-public r-ecd
  (package
    (name "r-ecd")
    (version "0.9.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecd" version))
              (sha256
               (base32
                "0cdfdbkjjxs78bvvy5zrax0qgcc5fzhlxl3wqapfxigf5xlxlavh"))))
    (properties `((upstream-name . "ecd")))
    (build-system r-build-system)
    (propagated-inputs (list r-zoo
                             r-yaml
                             r-xts
                             r-xtable
                             r-stabledist
                             r-rsqlite
                             r-rmpfr
                             r-polynom
                             r-optimx
                             r-moments
                             r-gsl
                             r-gridextra
                             r-ggplot2
                             r-digest))
    (home-page "https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3046732")
    (synopsis "Elliptic Lambda Distribution and Option Pricing Model")
    (description
     "Elliptic lambda distribution and lambda option pricing model have been evolved
into a framework of stable-law inspired distributions, such as the extended
stable lambda distribution for asset return, stable count distribution for
volatility, and Lihn-Laplace process as a leptokurtic extension of Wiener
process.  This package contains functions for the computation of density,
probability, quantile, random variable, fitting procedures, option prices,
volatility smile.  It also comes with sample financial data, and plotting
routines.")
    (license license:artistic2.0)))

(define-public r-ecctmc
  (package
    (name "r-ecctmc")
    (version "0.2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ECctmc" version))
              (sha256
               (base32
                "0prryvc17bm1xrhzlqk2w9nj181bg99j1dph3d36h0n1vfq1d7if"))))
    (properties `((upstream-name . "ECctmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/fintzij/ECctmc")
    (synopsis
     "Simulation from Endpoint-Conditioned Continuous Time Markov Chains")
    (description
     "Draw sample paths for endpoint-conditioned continuous time Markov chains via
modified rejection sampling or uniformization.")
    (license license:gpl3)))

(define-public r-ecb
  (package
    (name "r-ecb")
    (version "0.4.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ecb" version))
              (sha256
               (base32
                "1qs3si47bpvc7gvvzaq3sna0s241p6kygvhp1xwcn4117lhjlz5j"))))
    (properties `((upstream-name . "ecb")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2 r-rsdmx r-httr r-curl))
    (native-inputs (list r-knitr))
    (home-page "https://sdw.ecb.europa.eu/")
    (synopsis
     "Programmatic Access to the European Central Bank's Statistical Data Warehouse")
    (description
     "This package provides an interface to the European Central Bank's Statistical
Data Warehouse API <https://sdw.ecb.europa.eu/>, allowing for programmatic
retrieval of a vast quantity of statistical data.")
    (license license:cc0)))

(define-public r-ecar
  (package
    (name "r-ecar")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eCAR" version))
              (sha256
               (base32
                "01yfvvp4615vj6sdz751xkmvf5j22jk5fgrj6bhblr6xv0j25xc0"))))
    (properties `((upstream-name . "eCAR")))
    (build-system r-build-system)
    (propagated-inputs (list r-matrix))
    (home-page "https://github.com/gpage2990/eCAR")
    (synopsis "Eigenvalue CAR Models")
    (description
     "Fits Leroux model in spectral domain to estimate causal spatial effect as
detailed in Guan, Y; Page, G.L.; Reich, B.J.; Ventrucci, M.; Yang, S; (2020)
<arXiv:2012.11767>.  Both the parametric and semi-parametric models are
available.  The semi-parametric model relies on INLA'.  The INLA package can be
obtained from <https://www.r-inla.org/>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-ec50estimator
  (package
    (name "r-ec50estimator")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ec50estimator" version))
              (sha256
               (base32
                "1zg4p1734q2jzifzfi2lf9wz3687s3cdn0yzkiwbc6w49mgdw877"))))
    (properties `((upstream-name . "ec50estimator")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr r-tibble r-magrittr r-drc r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/AlvesKS/ec50estimator")
    (synopsis "An Automated Way to Estimate EC50 for Stratified Datasets")
    (description
     "An implementation for estimating Effective control to 50% of growth inhibition
(EC50) for multi isolates and stratified datasets.  It implements functions from
the drc package in a way that is displayed a tidy data.frame as output.  Info
about the drc package is available in Ritz C, Baty F, Streibig JC, Gerhard D
(2015) <doi:10.1371/journal.pone.0146021>.")
    (license license:expat)))

(define-public r-ebvcube
  (package
    (name "r-ebvcube")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebvcube" version))
              (sha256
               (base32
                "02zmq4437r6d2988vwlb21x6i4hgvg3mn790qqxsz5qjivpnfz21"))))
    (properties `((upstream-name . "ebvcube")))
    (build-system r-build-system)
    (propagated-inputs (list r-withr
                             r-tidyterra
                             r-terra
                             r-stringr
                             r-rhdf5
                             r-reshape2
                             r-ncmeta
                             r-ncdf4
                             r-memuse
                             r-jsonlite
                             r-hdf5array
                             r-ggplot2
                             r-delayedarray
                             r-curl
                             r-checkmate))
    (home-page "https://cran.r-project.org/package=ebvcube")
    (synopsis "Working with netCDF for Essential Biodiversity Variables")
    (description
     "The concept of Essential Biodiversity Variables (EBV) comes with a data
structure based on the Network Common Data Form (netCDF).  The ebvcube R package
provides functionality to easily create, access and visualise this data.  The
EBV netCDFs can be downloaded from the EBV Data Portal: Christian Langer/ iDiv
(2020) <https://portal.geobon.org/>.")
    (license license:gpl3+)))

(define-public r-ebsc
  (package
    (name "r-ebsc")
    (version "4.15")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eBsc" version))
              (sha256
               (base32
                "0xw2fbkd4z0k9a65izhnirssnbnhmwbmby12x25mda9711acsmw5"))))
    (properties `((upstream-name . "eBsc")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-nlme
                             r-matrix
                             r-mass
                             r-brobdingnag))
    (home-page "https://cran.r-project.org/package=eBsc")
    (synopsis "\"Empirical Bayes Smoothing Splines with Correlated Errors\"")
    (description
     "Presents a statistical method that uses a recursive algorithm for signal
extraction.  The method handles a non-parametric estimation for the correlation
of the errors.  See \"Krivobokova\", \"Serra\", \"Rosales\" and \"Klockmann\" (2021)
<arXiv:1812.06948> for details.")
    (license license:gpl2)))

(define-public r-ebreg
  (package
    (name "r-ebreg")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebreg" version))
              (sha256
               (base32
                "1xrs9afjd5hkdmhglj3md5i5hm7awlcdlccz3y2lw4c73lx31ywz"))))
    (properties `((upstream-name . "ebreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-lars))
    (home-page "https://cran.r-project.org/package=ebreg")
    (synopsis "Implementation of the Empirical Bayes Method")
    (description
     "This package implements a Bayesian-like approach to the high-dimensional sparse
linear regression problem based on an empirical or data-dependent prior
distribution, which can be used for estimation/inference on the model
parameters, variable selection, and prediction of a future response.  The method
was first presented in Martin, Ryan and Mess, Raymond and Walker, Stephen G
(2017) <doi:10.3150/15-BEJ797>.  More details focused on the prediction problem
are given in Martin, Ryan and Tang, Yiqi (2019) <arXiv:1903.00961>.")
    (license license:gpl3)))

(define-public r-ebrank
  (package
    (name "r-ebrank")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EBrank" version))
              (sha256
               (base32
                "1qzhrr3n2zv31mjp224b35324nr9nigzazyfv11j4zhwl1ipf632"))))
    (properties `((upstream-name . "EBrank")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=EBrank")
    (synopsis "Empirical Bayes Ranking")
    (description
     "Empirical Bayes ranking applicable to parallel-estimation settings where the
estimated parameters are asymptotically unbiased and normal, with known standard
errors.  A mixture normal prior for each parameter is estimated using Empirical
Bayes methods, subsequentially ranks for each parameter are simulated from the
resulting joint posterior over all parameters (The marginal posterior densities
for each parameter are assumed independent).  Finally, experiments are ordered
by expected posterior rank, although computations minimizing other plausible
rank-loss functions are also given.")
    (license license:cc0)))

(define-public r-ebprs
  (package
    (name "r-ebprs")
    (version "2.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EBPRS" version))
              (sha256
               (base32
                "14wal81cai08xr26fpc2w4ramr5jyv7vwfyqb5hzw3kqxx76y9xx"))))
    (properties `((upstream-name . "EBPRS")))
    (build-system r-build-system)
    (propagated-inputs (list r-rocr r-data-table r-bedmatrix))
    (home-page "https://cran.r-project.org/package=EBPRS")
    (synopsis "Derive Polygenic Risk Score Based on Emprical Bayes Theory")
    (description
     "EB-PRS is a novel method that leverages information for effect sizes across all
the markers to improve the prediction accuracy.  No parameter tuning is needed
in the method, and no external information is needed.  This R-package provides
the calculation of polygenic risk scores from the given training summary
statistics and testing data.  We can use EB-PRS to extract main information,
estimate Empirical Bayes parameters, derive polygenic risk scores for each
individual in testing data, and evaluate the PRS according to AUC and predictive
r2.  See Song et al. (2020) <doi:10.1371/journal.pcbi.1007565> for a detailed
presentation of the method.")
    (license license:gpl3)))

(define-public r-ebnm
  (package
    (name "r-ebnm")
    (version "1.0-9")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebnm" version))
              (sha256
               (base32
                "0izzfylcmq6zajngjyw85kbr8jys49qcgsadqkj85v2k1hg2jw7q"))))
    (properties `((upstream-name . "ebnm")))
    (build-system r-build-system)
    (propagated-inputs (list r-trust
                             r-truncnorm
                             r-rlang
                             r-mixsqp
                             r-magrittr
                             r-horseshoe
                             r-ggplot2
                             r-dplyr
                             r-deconvolver
                             r-ashr))
    (home-page "https://github.com/stephenslab/ebnm")
    (synopsis "Solve the Empirical Bayes Normal Means Problem")
    (description
     "This package provides simple, fast, and stable functions to fit the normal means
model using empirical Bayes.  For available models and details, see function
ebnm().  A comprehensive introduction to the package is provided by
Willwerscheid and Stephens (2021) <arXiv:2110.00152>.")
    (license license:gpl3+)))

(define-public r-ebmc
  (package
    (name "r-ebmc")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebmc" version))
              (sha256
               (base32
                "1z6s1blc2b6b13pk2sd6lcczdcldgjh65cnycjcw7d2g2hnxcifh"))))
    (properties `((upstream-name . "ebmc")))
    (build-system r-build-system)
    (propagated-inputs (list r-smotefamily
                             r-rpart
                             r-randomforest
                             r-proc
                             r-e1071
                             r-c50))
    (home-page "https://cran.r-project.org/package=ebmc")
    (synopsis "Ensemble-Based Methods for Class Imbalance Problem")
    (description
     "Four ensemble-based methods (SMOTEBoost, RUSBoost, UnderBagging, and
SMOTEBagging) for class imbalance problem are implemented for binary
classification.  Such methods adopt ensemble methods and data re-sampling
techniques to improve model performance in presence of class imbalance problem.
One special feature offers the possibility to choose multiple supervised
learning algorithms to build weak learners within ensemble models.  References:
Nitesh V. Chawla, Aleksandar Lazarevic, Lawrence O. Hall, and Kevin W. Bowyer
(2003) <doi:10.1007/978-3-540-39804-2_12>, Chris Seiffert, Taghi M.
Khoshgoftaar, Jason Van Hulse, and Amri Napolitano (2010)
<doi:10.1109/TSMCA.2009.2029559>, R. Barandela, J. S. Sanchez, R. M. Valdovinos
(2003) <doi:10.1007/s10044-003-0192-z>, Shuo Wang and Xin Yao (2009)
<doi:10.1109/CIDM.2009.4938667>, Yoav Freund and Robert E. Schapire (1997)
<doi:10.1006/jcss.1997.1504>.")
    (license license:gpl3+)))

(define-public r-ebmaforecast
  (package
    (name "r-ebmaforecast")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EBMAforecast" version))
              (sha256
               (base32
                "01v7v40h7pmm5h1rl63m7n0jfbb208qvzn5w563kfhlyamh84zm2"))))
    (properties `((upstream-name . "EBMAforecast")))
    (build-system r-build-system)
    (propagated-inputs (list r-separationplot
                             r-rcpp
                             r-plyr
                             r-hmisc
                             r-gtools
                             r-abind))
    (home-page "<https://github.com/fhollenbach/EBMA/>")
    (synopsis
     "Estimate Ensemble Bayesian Model Averaging Forecasts using Gibbs Sampling or EM-Algorithms")
    (description
     "Create forecasts from multiple predictions using ensemble Bayesian model
averaging (EBMA).  EBMA models can be estimated using an expectation
maximization (EM) algorithm or as fully Bayesian models via Gibbs sampling.  The
methods in this package are Montgomery, Hollenbach, and Ward (2015)
<doi:10.1016/j.ijforecast.2014.08.001> and Montgomery, Hollenbach, and Ward
(2012) <doi:10.1093/pan/mps002>.")
    (license license:gpl2+)))

(define-public r-ebirdst
  (package
    (name "r-ebirdst")
    (version "1.2021.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebirdst" version))
              (sha256
               (base32
                "19hz86a0za72av6gdbjsxx0m0cmgrnsbqnj1kksw7zhcwsa4za6p"))))
    (properties `((upstream-name . "ebirdst")))
    (build-system r-build-system)
    (propagated-inputs (list r-viridislite
                             r-tidyr
                             r-stringr
                             r-sf
                             r-rsqlite
                             r-rlang
                             r-rgdal
                             r-raster
                             r-presenceabsence
                             r-precrec
                             r-mgcv
                             r-magrittr
                             r-jsonlite
                             r-gridextra
                             r-ggplot2
                             r-gbm
                             r-dplyr
                             r-dbi))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/CornellLabofOrnithology/ebirdst")
    (synopsis "Access and Analyze eBird Status and Trends Data")
    (description
     "Tools to download, load, plot, and analyze eBird Status and Trends Data Products
(<https://science.ebird.org/en/status-and-trends>).  eBird
(<https://ebird.org/home>) is a global database of bird observations collected
by member of the public.  eBird Status and Trends uses these data to model
global bird abundances, range boundaries, and habitat associations at a high
spatial and temporal resolution.")
    (license license:gpl3)))

(define-public r-ebgenotyping
  (package
    (name "r-ebgenotyping")
    (version "2.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebGenotyping" version))
              (sha256
               (base32
                "1jllzc7kvvckrws8qhgvwy626llyb68sp1davp7swx48sf7rwcxc"))))
    (properties `((upstream-name . "ebGenotyping")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=ebGenotyping")
    (synopsis
     "Genotyping and SNP Detection using Next Generation Sequencing Data")
    (description
     "Genotyping the population using next generation sequencing data is essentially
important for the rare variant detection.  In order to distinguish the genomic
structural variation from sequencing error, we propose a statistical model which
involves the genotype effect through a latent variable to depict the
distribution of non-reference allele frequency data among different samples and
different genome loci, while decomposing the sequencing error into sample effect
and positional effect.  An ECM algorithm is implemented to estimate the model
parameters, and then the genotypes and SNPs are inferred based on the empirical
Bayes method.")
    (license license:gpl2)))

(define-public r-ebdbnet
  (package
    (name "r-ebdbnet")
    (version "1.2.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebdbNet" version))
              (sha256
               (base32
                "1qzwpr76nwvgylqdg7vhrbvh2lb1zrxx3g120yz156hhs4awv4kz"))))
    (properties `((upstream-name . "ebdbNet")))
    (build-system r-build-system)
    (propagated-inputs (list r-igraph))
    (home-page "https://github.com/andreamrau/ebdbNet")
    (synopsis "Empirical Bayes Estimation of Dynamic Bayesian Networks")
    (description
     "Infer the adjacency matrix of a network from time course data using an empirical
Bayes estimation procedure based on Dynamic Bayesian Networks.")
    (license license:gpl3+)))

(define-public r-ebci
  (package
    (name "r-ebci")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebci" version))
              (sha256
               (base32
                "00fa2y4ha9nlbjd01qckrrn721s63ja61n5jr4wm7ac6y7xivb2i"))))
    (properties `((upstream-name . "ebci")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/kolesarm/ebci")
    (synopsis "Robust Empirical Bayes Confidence Intervals")
    (description
     "Computes empirical Bayes confidence estimators and confidence intervals in a
normal means model.  The intervals are robust in the sense that they achieve
correct coverage regardless of the distribution of the means.  If the means are
treated as fixed, the intervals have an average coverage guarantee.  The
implementation is based on Armstrong, KolesÃ¡r and Plagborg-MÃ¸ller (2020)
<arXiv:2004.03448>.")
    (license license:expat)))

(define-public r-ebchs
  (package
    (name "r-ebchs")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EBCHS" version))
              (sha256
               (base32
                "103k4y105dn8v5yb5xk520404sd7c05cxd9iwh2k2v18kbvg8pdp"))))
    (properties `((upstream-name . "EBCHS")))
    (build-system r-build-system)
    (propagated-inputs (list r-pracma r-fda))
    (home-page "https://github.com/dulilun/EBCHS")
    (synopsis "An Empirical Bayes Method for Chi-Squared Data")
    (description
     "We provide the main R functions to compute the posterior interval for the
noncentrality parameter of the chi-squared distribution.  The skewness estimate
of the posterior distribution is also available to improve the coverage rate of
posterior intervals.  Details can be found in Du and Hu (2020)
<doi:10.1080/01621459.2020.1777137>.")
    (license license:expat)))

(define-public r-ebayesthresh
  (package
    (name "r-ebayesthresh")
    (version "1.4-12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EbayesThresh" version))
              (sha256
               (base32
                "07a2dd3za2dc81n6m2xy794sclp3yw7f46lg1igaflh7m9407198"))))
    (properties `((upstream-name . "EbayesThresh")))
    (build-system r-build-system)
    (propagated-inputs (list r-wavethresh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/stephenslab/EbayesThresh")
    (synopsis "Empirical Bayes Thresholding and Related Methods")
    (description
     "Empirical Bayes thresholding using the methods developed by I. M. Johnstone and
B. W. Silverman.  The basic problem is to estimate a mean vector given a vector
of observations of the mean vector plus white noise, taking advantage of
possible sparsity in the mean vector.  Within a Bayesian formulation, the
elements of the mean vector are modelled as having, independently, a
distribution that is a mixture of an atom of probability at zero and a suitable
heavy-tailed distribution.  The mixing parameter can be estimated by a marginal
maximum likelihood approach.  This leads to an adaptive thresholding approach on
the original data.  Extensions of the basic method, in particular to wavelet
thresholding, are also implemented within the package.")
    (license license:gpl2+)))

(define-public r-ebal
  (package
    (name "r-ebal")
    (version "0.1-8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "ebal" version))
              (sha256
               (base32
                "06hkk0fargzhzqn841c406r72y7jd53mjxgi4hzb2ahnpaiq2q1l"))))
    (properties `((upstream-name . "ebal")))
    (build-system r-build-system)
    (home-page "https://web.stanford.edu/~jhain/")
    (synopsis "Entropy Reweighting to Create Balanced Samples")
    (description
     "Package implements entropy balancing, a data preprocessing procedure described
in Hainmueller (2008, <doi:10.1093/pan/mpr025>) that allows users to reweight a
dataset such that the covariate distributions in the reweighted data satisfy a
set of user specified moment conditions.  This can be useful to create balanced
samples in observational studies with a binary treatment where the control group
data can be reweighted to match the covariate moments in the treatment group.
Entropy balancing can also be used to reweight a survey sample to known
characteristics from a target population.")
    (license license:gpl2+)))

(define-public r-eba
  (package
    (name "r-eba")
    (version "1.10-0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eba" version))
              (sha256
               (base32
                "03jr54xq109x9bf8kcs8mi7am17l9ya3xdkdppd8imwd2paqrssk"))))
    (properties `((upstream-name . "eba")))
    (build-system r-build-system)
    (propagated-inputs (list r-psychotools r-nlme))
    (home-page "http://www.mathpsy.uni-tuebingen.de/wickelmaier")
    (synopsis "Elimination-by-Aspects Models")
    (description
     "Fitting and testing multi-attribute probabilistic choice models, especially the
Bradley-Terry-Luce (BTL) model (Bradley & Terry, 1952
<doi:10.1093/biomet/39.3-4.324>; Luce, 1959), elimination-by-aspects (EBA)
models (Tversky, 1972 <doi:10.1037/h0032955>), and preference tree (Pretree)
models (Tversky & Sattath, 1979 <doi:10.1037/0033-295X.86.6.542>).")
    (license license:gpl2+)))

(define-public r-eattools
  (package
    (name "r-eattools")
    (version "0.7.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eatTools" version))
              (sha256
               (base32
                "0qmbwwvqfkyd4z41hihza0996dvsvqshs3pqblfzdlbzyn7glh5b"))))
    (properties `((upstream-name . "eatTools")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/weirichs/eatTools")
    (synopsis
     "Miscellaneous Functions for the Analysis of Educational Assessments")
    (description
     "Miscellaneous functions for data cleaning and data analysis of educational
assessments.  Includes functions for descriptive analyses, character vector
manipulations and weighted statistics.  Mainly a lightweight dependency for the
packages eatRep', eatGADS', eatPrep and eatModel (which will be subsequently
submitted to CRAN').  The function for defining (weighted) contrasts in weighted
effect coding refers to te Grotenhuis et al. (2017)
<doi:10.1007/s00038-016-0901-1>.  Functions for weighted statistics refer to
Wolter (2007) <doi:10.1007/978-0-387-35099-8>.")
    (license license:gpl2+)))

(define-public r-eatrep
  (package
    (name "r-eatrep")
    (version "0.14.6")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eatRep" version))
              (sha256
               (base32
                "1pmjfz2m7z0n32cdzhxjxx3cllvhrd8nap9lqbfj8avd5sbsvfbp"))))
    (properties `((upstream-name . "eatRep")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-survey
                             r-reshape2
                             r-progress
                             r-plyr
                             r-msm
                             r-miceadds
                             r-mice
                             r-lme4
                             r-lavaan
                             r-janitor
                             r-hmisc
                             r-fmsb
                             r-estimatr
                             r-effectliter
                             r-eattools
                             r-eatgads
                             r-combinat
                             r-car
                             r-boot
                             r-bifiesurvey))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/weirichs/eatRep")
    (synopsis "Educational Assessment Tools for Replication Methods")
    (description
     "Replication methods to compute some basic statistic operations (means, standard
deviations, frequency tables, percentiles and generalized linear models) in
complex survey designs comprising multiple imputed variables and/or a clustered
sampling structure which both deserve special procedures at least in estimating
standard errors.  See the package documentation for a more detailed description
along with references.")
    (license license:gpl2+)))

(define-public r-eatme
  (package
    (name "r-eatme")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EATME" version))
              (sha256
               (base32
                "1bdiyrq1gay8mz3rkq2cwsw0x2b70i31gs79cyhxil2zh8jf25xf"))))
    (properties `((upstream-name . "EATME")))
    (build-system r-build-system)
    (propagated-inputs (list r-qcr))
    (home-page "https://cran.r-project.org/package=EATME")
    (synopsis
     "Exponentially Weighted Moving Average with Adjustments to Measurement Error")
    (description
     "The univariate statistical quality control tool aims to address measurement
error effects when constructing exponentially weighted moving average p control
charts.  The method primarily focuses on binary random variables, but it can be
applied to any continuous random variables by using sign statistic to transform
them to discrete ones.  With the correction of measurement error effects, we can
obtain the corrected control limits of exponentially weighted moving average p
control chart and reasonably adjusted exponentially weighted moving average p
control charts.  The methods in this package can be found in some relevant
references, such as Chen and Yang (2022) <arXiv: 2203.03384>; Yang et al. (2011)
<doi: 10.1016/j.eswa.2010.11.044>; Yang and Arnold (2014) <doi:
10.1155/2014/238719>; Yang (2016) <doi: 10.1080/03610918.2013.763980> and Yang
and Arnold (2016) <doi: 10.1080/00949655.2015.1125901>.")
    (license license:gpl3)))

(define-public r-eatgads
  (package
    (name "r-eatgads")
    (version "0.20.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eatGADS" version))
              (sha256
               (base32
                "1wr186fzrpi3dix27m55xvkx55rgbdzx5zgs6gngwjzljqzhwa92"))))
    (properties `((upstream-name . "eatGADS")))
    (build-system r-build-system)
    (propagated-inputs (list r-tibble
                             r-stringi
                             r-plyr
                             r-hms
                             r-haven
                             r-eattools
                             r-eatdb
                             r-data-table))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/beckerbenj/eatGADS")
    (synopsis "Data Management of Large Hierarchical Data")
    (description
     "Import SPSS data, handle and change SPSS meta data, store and access large
hierarchical data in SQLite data bases.")
    (license license:gpl2+)))

(define-public r-eatdb
  (package
    (name "r-eatdb")
    (version "0.5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eatDB" version))
              (sha256
               (base32
                "0lym1g411ykb2vzi5yr570lmyh30br667wkm5dvnvfs7bsmk05il"))))
    (properties `((upstream-name . "eatDB")))
    (build-system r-build-system)
    (propagated-inputs (list r-rsqlite r-dbi))
    (home-page "https://cran.r-project.org/package=eatDB")
    (synopsis "Spreadsheet Interface for Relational Databases")
    (description
     "Use SQLite3 as a database system via a complete SQL free R interface, treating
the data as if it was a single spreadsheet.")
    (license license:gpl2+)))

(define-public r-eatata
  (package
    (name "r-eatata")
    (version "1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eatATA" version))
              (sha256
               (base32
                "1pm66hvjqcgjbdkvfwxn3myzb6a458hkwg7cd6lhkp1mmj7anigs"))))
    (properties `((upstream-name . "eatATA")))
    (build-system r-build-system)
    (propagated-inputs (list r-rglpk r-matrix r-mathjaxr r-lpsolve))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/beckerbenj/eatATA")
    (synopsis "Create Constraints for Small Test Assembly Problems")
    (description
     "This package provides simple functions to create constraints for small test
assembly problems (e.g. van der Linden (2005, ISBN: 978-0-387-29054-6)) using
sparse matrices.  Currently, GLPK', lpSolve', Symphony', and Gurobi are
supported as solvers.  The gurobi package is not available from any mainstream
repository; see <https://www.gurobi.com/downloads/>.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-eat
  (package
    (name "r-eat")
    (version "0.1.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eat" version))
              (sha256
               (base32
                "09lbgzc6qzvgksk0gdwlldd928mdibh5w2397nnjg4qx27lvj9yq"))))
    (properties `((upstream-name . "eat")))
    (build-system r-build-system)
    (propagated-inputs (list r-reshape2
                             r-rdpack
                             r-partykit
                             r-lpsolveapi
                             r-ggrepel
                             r-ggplot2
                             r-ggparty
                             r-dplyr
                             r-conflicted))
    (native-inputs (list r-knitr))
    (home-page "https://efficiencytools.wordpress.com/")
    (synopsis "Efficiency Analysis Trees")
    (description
     "This package provides functions are provided to determine production frontiers
and technical efficiency measures through non-parametric techniques based upon
regression trees.  The package includes code for estimating radial input,
output, directional and additive measures, plotting graphical representations of
the scores and the production frontiers by means of trees, and determining
rankings of importance of input variables in the analysis.  Additionally, an
adaptation of Random Forest by a set of individual Efficiency Analysis Trees for
estimating technical efficiency is also included.  More details in:
<doi:10.1016/j.eswa.2020.113783>.")
    (license license:gpl3)))

(define-public r-easyverification
  (package
    (name "r-easyverification")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyVerification" version))
              (sha256
               (base32
                "08mih1arx01vj7cs1jsln644pcvslpyw1rgr6jmv2czr6xd8qb7d"))))
    (properties `((upstream-name . "easyVerification")))
    (build-system r-build-system)
    (propagated-inputs (list r-specsverification r-rcpp r-pbapply))
    (home-page "http://www.meteoswiss.ch")
    (synopsis "Ensemble Forecast Verification for Large Data Sets")
    (description
     "Set of tools to simplify application of atomic forecast verification metrics for
(comparative) verification of ensemble forecasts to large data sets.  The
forecast metrics are imported from the SpecsVerification package, and additional
forecast metrics are provided with this package.  Alternatively, new
user-defined forecast scores can be implemented using the example scores
provided and applied using the functionality of this package.")
    (license license:gpl3)))

(define-public r-easysvg
  (package
    (name "r-easysvg")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easySVG" version))
              (sha256
               (base32
                "03gl5gl0yqgpygd4kna79wrhflbnq3zrz3iq2i8hk9xqd83mszh3"))))
    (properties `((upstream-name . "easySVG")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://github.com/ytdai/easySVG")
    (synopsis "An Easy SVG Basic Elements Generator")
    (description
     "This SVG elements generator can easily generate SVG elements such as rect, line,
circle, ellipse, polygon, polyline, text and group.  Also, it can combine and
output SVG elements into a SVG file.")
    (license license:expat)))

(define-public r-easystats
  (package
    (name "r-easystats")
    (version "0.6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easystats" version))
              (sha256
               (base32
                "09a2gshg0h01w79g3zq66v5h0vbkrz9pgj3dijmccix28bmmqar3"))))
    (properties `((upstream-name . "easystats")))
    (build-system r-build-system)
    (propagated-inputs (list r-see
                             r-report
                             r-performance
                             r-parameters
                             r-modelbased
                             r-insight
                             r-effectsize
                             r-datawizard
                             r-correlation
                             r-bayestestr))
    (native-inputs (list r-knitr))
    (home-page "https://easystats.github.io/easystats/")
    (synopsis
     "Framework for Easy Statistical Modeling, Visualization, and Reporting")
    (description
     "This package provides a meta-package that installs and loads a set of packages
from easystats ecosystem in a single step.  This collection of packages provide
a unifying and consistent framework for statistical modeling, visualization, and
reporting.  Additionally, it provides articles targeted at instructors for
teaching easystats', and a dashboard targeted at new R users for easily
conducting statistical analysis by accessing summary results, model fit indices,
and visualizations with minimal programming.")
    (license license:gpl3)))

(define-public r-easysdctable
  (package
    (name "r-easysdctable")
    (version "1.0.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easySdcTable" version))
              (sha256
               (base32
                "05r8g9d7qp4naarpr1ipxk8vx4czg9yz3qkghj8abvkmwww838wn"))))
    (properties `((upstream-name . "easySdcTable")))
    (build-system r-build-system)
    (propagated-inputs (list r-ssbtools r-shiny r-sdctable r-matrix))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/statisticsnorway/easySdcTable")
    (synopsis
     "Easy Interface to the Statistical Disclosure Control Package 'sdcTable' Extended with the 'GaussSuppression' Method")
    (description
     "The main function, ProtectTable(), performs table suppression according to a
frequency rule with a data set as the only required input.  Within this
function, protectTable(), protect_linked_tables() or runArgusBatchFile() in
package sdcTable is called.  Lists of level-hierarchy (parameter dimList') and
other required input to these functions are created automatically.  The
suppression method Gauss (default) is an additional method that is not available
in sdcTable'.  The function, PTgui(), starts a graphical user interface based on
the shiny package.")
    (license (list license:asl2.0
                   (license:fsdg-compatible "file://LICENSE")))))

(define-public r-easyreg
  (package
    (name "r-easyreg")
    (version "4.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyreg" version))
              (sha256
               (base32
                "1w4wlhziyhdyldm0zgnm73fnxrh0fv8hwcw5j8ircxb4npx7bcgg"))))
    (properties `((upstream-name . "easyreg")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=easyreg")
    (synopsis "Easy Regression")
    (description
     "This package performs analysis of regression in simple designs with quantitative
treatments, including mixed models and non linear models.")
    (license license:gpl2)))

(define-public r-easyr
  (package
    (name "r-easyr")
    (version "0.5-10")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyr" version))
              (sha256
               (base32
                "1qiw3bvhn2zdl6gzj90zl09mqk8ba6cd5pbl917hpfa818z98z82"))))
    (properties `((upstream-name . "easyr")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml
                             r-stringr
                             r-rprojroot
                             r-rlang
                             r-readxlsb
                             r-readxl
                             r-openssl
                             r-lubridate
                             r-hmisc
                             r-glue
                             r-foreign
                             r-dplyr
                             r-digest
                             r-data-table))
    (home-page "https://github.com/oliver-wyman-actuarial/easyr")
    (synopsis "Helpful Functions from Oliver Wyman Actuarial Consulting")
    (description
     "Makes difficult operations easy.  Includes these types of functions: shorthand,
type conversion, data wrangling, and work flow.  Also includes some helpful data
objects: NA strings, U.S. state list, color blind charting colors.  Built and
shared by Oliver Wyman Actuarial Consulting.  Accepting proposed contributions
through GitHub.")
    (license license:gpl2+)))

(define-public r-easypubmed
  (package
    (name "r-easypubmed")
    (version "2.13")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyPubMed" version))
              (sha256
               (base32
                "1wd8idyqz7kgygp34mjp2abx82775ry8l07vsqdlqnc6fdnvg55d"))))
    (properties `((upstream-name . "easyPubMed")))
    (build-system r-build-system)
    (native-inputs (list r-knitr))
    (home-page "https://www.data-pulse.com/dev_site/easypubmed/")
    (synopsis "Search and Retrieve Scientific Publication Records from PubMed")
    (description
     "Query NCBI Entrez and retrieve PubMed records in XML or text format.  Process
PubMed records by extracting and aggregating data from selected fields.  A large
number of records can be easily downloaded via this simple-to-use interface to
the NCBI PubMed API.")
    (license license:gpl2)))

(define-public r-easypsid
  (package
    (name "r-easypsid")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyPSID" version))
              (sha256
               (base32
                "0npih5xpf2a5xw2iz68z9ckm8d4cpradzzdn50rdpg4gqvaq7azp"))))
    (properties `((upstream-name . "easyPSID")))
    (build-system r-build-system)
    (propagated-inputs (list r-stringr r-laf r-foreign))
    (home-page "https://cran.r-project.org/package=easyPSID")
    (synopsis
     "Reading, Formatting, and Organizing the Panel Study of Income Dynamics (PSID)")
    (description
     "This package provides various functions for reading and preparing the Panel
Study of Income Dynamics (PSID) for longitudinal analysis, including functions
that read the PSID's fixed width format files directly into R, rename all of the
PSID's longitudinal variables so that recurring variables have consistent names
across years, simplify assembling longitudinal datasets from cross sections of
the PSID Family Files, and export the resulting PSID files into file formats
common among other statistical programming languages ('SAS', STATA', and SPSS').")
    (license license:expat)))

(define-public r-easypower
  (package
    (name "r-easypower")
    (version "1.0.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easypower" version))
              (sha256
               (base32
                "1vf0zv55yf96wjxja6ifdjvgc9nw0jl0hnc1ygyjd8pmwbgdz9bl"))))
    (properties `((upstream-name . "easypower")))
    (build-system r-build-system)
    (propagated-inputs (list r-pwr))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=easypower")
    (synopsis "Sample Size Estimation for Experimental Designs")
    (description
     "Power analysis is used in the estimation of sample sizes for experimental
designs.  Most programs and R packages will only output the highest recommended
sample size to the user.  Often the user input can be complicated and computing
multiple power analyses for different treatment comparisons can be time
consuming.  This package simplifies the user input and allows the user to view
all of the sample size recommendations or just the ones they want to see.  The
calculations used to calculate the recommended sample sizes are from the pwr
package.")
    (license license:gpl3+)))

(define-public r-easypackages
  (package
    (name "r-easypackages")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easypackages" version))
              (sha256
               (base32
                "0r911lys38jr60pvifkdp6d7gspdrcq3g7dn2fqhacz8pqvg1b5f"))))
    (properties `((upstream-name . "easypackages")))
    (build-system r-build-system)
    (propagated-inputs (list r-devtools r-assertthat))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=easypackages")
    (synopsis "Easy Loading and Installing of Packages")
    (description
     "Easily load and install multiple packages from different sources, including CRAN
and GitHub.  The libraries function allows you to load or attach multiple
packages in the same function call.  The packages function will load one or more
packages, and install any packages that are not installed on your system (after
prompting you).  Also included is a from_import function that allows you to
import specific functions from a package into the global environment.")
    (license license:expat)))

(define-public r-easynls
  (package
    (name "r-easynls")
    (version "5.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easynls" version))
              (sha256
               (base32
                "1ma2q4y5dxk6q99v880vqfsgy1fha96j7pi8ch699l0pi6bx0d6c"))))
    (properties `((upstream-name . "easynls")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=easynls")
    (synopsis "Easy Nonlinear Model")
    (description "Fit and plot some nonlinear models.")
    (license license:gpl2)))

(define-public r-easyncdf
  (package
    (name "r-easyncdf")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyNCDF" version))
              (sha256
               (base32
                "1ffpl5zf9i62ifiasimv32j9s9bpmbqi9wrv520124arv4lwcyix"))))
    (properties `((upstream-name . "easyNCDF")))
    (build-system r-build-system)
    (propagated-inputs (list r-ncdf4 r-climprojdiags r-abind))
    (home-page "https://earth.bsc.es/gitlab/es/easyNCDF/-/wikis/home")
    (synopsis
     "Tools to Easily Read/Write NetCDF Files into/from Multidimensional R Arrays")
    (description
     "Set of wrappers for the ncdf4 package to simplify and extend its reading/writing
capabilities into/from multidimensional R arrays.")
    (license license:asl2.0)))

(define-public r-easymx
  (package
    (name "r-easymx")
    (version "0.2-12")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EasyMx" version))
              (sha256
               (base32
                "00wj08nwv5zi5d4a1fss40f4cms4svam1hmmxvh60hvc55ygsc3z"))))
    (properties `((upstream-name . "EasyMx")))
    (build-system r-build-system)
    (propagated-inputs (list r-openmx))
    (home-page "https://bitbucket.org/mhunter/easymx")
    (synopsis "Easy Model-Builder Functions for 'OpenMx'")
    (description
     "Utilities for building certain kinds of common matrices and models in the
extended structural equation modeling package, OpenMx'.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-easylabel
  (package
    (name "r-easylabel")
    (version "0.2.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easylabel" version))
              (sha256
               (base32
                "1pqdaymcrqjdqj0fhb1q7i1i8p7r7iwzcn08mcq5wlwr52kcpvfy"))))
    (properties `((upstream-name . "easylabel")))
    (build-system r-build-system)
    (propagated-inputs (list r-splus2r
                             r-shinycssloaders
                             r-shinybusy
                             r-shiny
                             r-rcolorbrewer
                             r-plotly
                             r-gtools
                             r-dt))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=easylabel")
    (synopsis "Interactive Scatter Plot and Volcano Plot Labels")
    (description
     "Interactive labelling of scatter plots, volcano plots and Manhattan plots using
a shiny and plotly interface.  Users can hover over points to see where specific
points are located and click points on/off to easily label them.  Labels can be
dragged around the plot to place them optimally.  Plots can be exported directly
to PDF for publication.")
    (license license:expat)))

(define-public r-easydifferentialgenecoexpression
  (package
    (name "r-easydifferentialgenecoexpression")
    (version "1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyDifferentialGeneCoexpression" version))
              (sha256
               (base32
                "1dzm01hscq8dyb2kpra3bh9hfh6pjwvxbf4dip18sjgsl8vn058r"))))
    (properties `((upstream-name . "easyDifferentialGeneCoexpression")))
    (build-system r-build-system)
    (propagated-inputs (list r-xml2
                             r-stringi
                             r-r-utils
                             r-magrittr
                             r-limma
                             r-jetset
                             r-geoquery
                             r-geneexpressionfromgeo
                             r-biobase
                             r-annotate))
    (native-inputs (list r-knitr))
    (home-page
     "https://github.com/davidechicco/easyDifferentialGeneCoexpression")
    (synopsis "Easily Performs Differential Coexpression Analysis")
    (description
     "This package provides a function that reads in the GEO code of a list of
probesets or gene symbols, a gene expression dataset GEO accession code, the
name of the dataset feature discriminating the two conditions for the
differential coexpression, and the values of the two different conditions for
the differential coexpression, and returns the significant pairs of
genes/probesets with highest differential coexpression (p-value < 0.005).  If
the input gene list is made of gene symbols, this package associates the
probesets to these gene symbols, if found.  Platforms available: GPL80, GPL8300,
GPL80, GPL96, GPL570, GPL571, GPL20115, GPL1293, GPL6102, GPL6104, GPL6883,
GPL6884, GPL13497, GPL14550, GPL17077, GPL6480.  GEO: Gene Expression Omnibus.
ID: identifier code.  The GEO datasets are downloaded from the URL
<https://ftp.ncbi.nlm.nih.gov/geo/series/>.")
    (license license:gpl3)))

(define-public r-easydescribe
  (package
    (name "r-easydescribe")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EasyDescribe" version))
              (sha256
               (base32
                "15g37m28l40w71bvj02cbhfc6x77bjvr8mjr89iipdqzndp23g1i"))))
    (properties `((upstream-name . "EasyDescribe")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcompanion
                             r-psych
                             r-nortest
                             r-multica
                             r-gmodels
                             r-fsa
                             r-fitdistrplus
                             r-catt))
    (home-page "https://cran.r-project.org/package=EasyDescribe")
    (synopsis "Convenient Way of Descriptive Statistics")
    (description
     "Descriptive Statistics is essential for publishing articles.  This package can
perform descriptive statistics according to different data types.  If the data
is a continuous variable, the mean and standard deviation or median and
quartiles are automatically output; if the data is a categorical variable, the
number and percentage are automatically output.  In addition, if you enter two
variables, the first variable will be described hierarchically based on the
second variable and the statistical differences between different groups will be
compared using appropriate statistical methods.  And for groups more than two,
the post hoc test will be applied.  For more information on the methods we used,
please see the following references: Libiseller, C. and Grimvall, A. (2002)
<doi:10.1002/env.507>, Patefield, W. M. (1981) <doi:10.2307/2346669>, Hope, A.
C. A. (1968) <doi:10.1111/J.2517-6161.1968.TB00759.X>, Mehta, C. R. and Patel,
N. R. (1983) <doi:10.1080/01621459.1983.10477989>, Mehta, C. R. and Patel, N. R.
(1986) <doi:10.1145/6497.214326>, Clarkson, D. B., Fan, Y. and Joe, H. (1993)
<doi:10.1145/168173.168412>, Cochran, W. G. (1954) <doi:10.2307/3001616>,
Armitage, P. (1955) <doi:10.2307/3001775>, Szabo, A. (2016)
<doi:10.1080/00031305.2017.1407823>, David, F. B. (1972)
<doi:10.1080/01621459.1972.10481279>, Joanes, D. N. and Gill, C. A. (1998)
<doi:10.1111/1467-9884.00122>, Dunn, O. J. (1964)
<doi:10.1080/00401706.1964.10490181>, Copenhaver, M. D. and Holland, B. S.
(1988) <doi:10.1080/00949658808811082>, Chambers, J. M., Freeny, A. and
Heiberger, R. M. (1992) <doi:10.1201/9780203738535-5>, Shaffer, J. P. (1995)
<doi:10.1146/annurev.ps.46.020195.003021>, Myles, H. and Douglas, A. W. (1973)
<doi:10.2307/2063815>, Rahman, M. and Tiwari, R. (2012)
<doi:10.4236/health.2012.410139>.  Thode, H. J. (2002)
<doi:10.1201/9780203910894>.")
    (license license:gpl3)))

(define-public r-easydes
  (package
    (name "r-easydes")
    (version "6.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyDes" version))
              (sha256
               (base32
                "12p7ls0q9srrz5h0f0996mmw33shrfbya481s0d5d509vbw8ik6d"))))
    (properties `((upstream-name . "easyDes")))
    (build-system r-build-system)
    (propagated-inputs (list r-pmcmrplus r-multcomp))
    (home-page "https://cran.r-project.org/package=easyDes")
    (synopsis "An Easy Way to Descriptive Analysis")
    (description
     "Descriptive analysis is essential for publishing medical articles.  This package
provides an easy way to conduct the descriptive analysis.  1.  Both numeric and
factor variables can be handled.  For numeric variables, normality test will be
applied to choose the parametric and nonparametric test.  2.  Both two or more
groups can be handled.  For groups more than two, the post hoc test will be
applied, Tukey for the numeric variables and FDR for the factor variables.  3.
T test, ANOVA or Fisher test can be forced to apply.  4.  Mean and standard
deviation can be forced to display.")
    (license license:gpl3)))

(define-public r-easydb
  (package
    (name "r-easydb")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easydb" version))
              (sha256
               (base32
                "0i5r0fbs1fzd7vi7xy8ss6ymkyq3gcz0kydrj100firhk0qnpnni"))))
    (properties `((upstream-name . "easydb")))
    (build-system r-build-system)
    (propagated-inputs (list r-yaml
                             r-rlang
                             r-keyring
                             r-dbi
                             r-cli
                             r-assertthat
                             r-askpass))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/selkamand/easydb")
    (synopsis "Easily Connect to Common Types of Databases")
    (description
     "This package provides a unified interface for connecting to databases ('SQLite',
MySQL', PostgreSQL').  Just provide the database name and the package will ask
you questions to help you configure the connection and setup your credentials.
Once database configuration and connection has been set up once, you won't have
to do it ever again.")
    (license license:expat)))

(define-public r-easycsv
  (package
    (name "r-easycsv")
    (version "1.0.8")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easycsv" version))
              (sha256
               (base32
                "1i2k5372b6a5pypk6m0rsvvkcy0y51pvh57a60rpgqk8q0yq8pig"))))
    (properties `((upstream-name . "easycsv")))
    (build-system r-build-system)
    (propagated-inputs (list r-data-table))
    (home-page "https://github.com/bogind/easycsv")
    (synopsis "Load Multiple 'csv' and 'txt' Tables")
    (description
     "Allows users to easily read multiple comma separated tables and create a data
frame under the same name.  Is able to read multiple comma separated tables from
a local directory, a zip file or a zip file on a remote directory.")
    (license license:gpl2)))

(define-public r-easycoda
  (package
    (name "r-easycoda")
    (version "0.34.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyCODA" version))
              (sha256
               (base32
                "1s1zjjvswl3444m84n6c5sznva4y19kcm171xkcy1zdx3wqmd2m3"))))
    (properties `((upstream-name . "easyCODA")))
    (build-system r-build-system)
    (propagated-inputs (list r-vegan r-ellipse r-ca))
    (home-page "https://github.com/michaelgreenacre/CODAinPractice/")
    (synopsis "Compositional Data Analysis in Practice")
    (description
     "Univariate and multivariate methods for compositional data analysis, based on
logratios.  The package implements the approach in the book Compositional Data
Analysis in Practice by Michael Greenacre (2018), where accent is given to
simple pairwise logratios.  Selection can be made of logratios that account for
a maximum percentage of logratio variance.  Various multivariate analyses of
logratios are included in the package.")
    (license (list license:gpl2+ license:gpl3+))))

(define-public r-easycensus
  (package
    (name "r-easycensus")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easycensus" version))
              (sha256
               (base32
                "018c8km0pr43cpqy9lpczfa5nbc7s3lx0yv4fqz2ig5nv2b2k6q7"))))
    (properties `((upstream-name . "easycensus")))
    (build-system r-build-system)
    (propagated-inputs (list r-vctrs
                             r-tidyr
                             r-stringr
                             r-rlang
                             r-pillar
                             r-dplyr
                             r-cli
                             r-censusapi))
    (home-page "https://corymccartan.com/easycensus/")
    (synopsis "Quickly Find, Extract, and Marginalize U.S. Census Tables")
    (description
     "Extracting desired data using the proper Census variable names can be
time-consuming.  This package takes the pain out of that process by providing
functions to quickly locate variables and download labeled tables from the
Census APIs (<https://www.census.gov/data/developers/data-sets.html>).")
    (license license:expat)))

(define-public r-easyanova
  (package
    (name "r-easyanova")
    (version "8.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyanova" version))
              (sha256
               (base32
                "0ih21r4hg5mq1z4hy1w1r4zb96vizlc16fpv6f727iia2k3dwmyf"))))
    (properties `((upstream-name . "easyanova")))
    (build-system r-build-system)
    (propagated-inputs (list r-nlme))
    (home-page "https://cran.r-project.org/package=easyanova")
    (synopsis
     "Analysis of Variance and Other Important Complementary Analyses")
    (description
     "Perform analysis of variance and other important complementary analyses.  The
functions are easy to use.  Performs analysis in various designs, with balanced
and unbalanced data.")
    (license license:gpl2)))

(define-public r-easyalluvial
  (package
    (name "r-easyalluvial")
    (version "0.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyalluvial" version))
              (sha256
               (base32
                "10nd1jay913jpipy0q2zl7f7pihqynpxmmccbg657jzcgnzva1rv"))))
    (properties `((upstream-name . "easyalluvial")))
    (build-system r-build-system)
    (propagated-inputs (list r-tidyr
                             r-tibble
                             r-stringr
                             r-rlang
                             r-recipes
                             r-rcolorbrewer
                             r-randomforest
                             r-purrr
                             r-progressr
                             r-progress
                             r-magrittr
                             r-gridextra
                             r-ggridges
                             r-ggplot2
                             r-ggalluvial
                             r-forcats
                             r-dplyr))
    (home-page "https://github.com/erblast/easyalluvial/")
    (synopsis "Generate Alluvial Plots with a Single Line of Code")
    (description
     "Alluvial plots are similar to sankey diagrams and visualise categorical data
over multiple dimensions as flows. (Rosvall M, Bergstrom CT (2010) Mapping
Change in Large Networks.  PLoS ONE 5(1): e8694.
<doi:10.1371/journal.pone.0008694> Their graphical grammar however is a bit more
complex then that of a regular x/y plots.  The ggalluvial package made a great
job of translating that grammar into ggplot2 syntax and gives you many options
to tweak the appearance of an alluvial plot, however there still remains a
multi-layered complexity that makes it difficult to use ggalluvial for
explorative data analysis.  easyalluvial provides a simple interface to this
package that allows you to produce a decent alluvial plot from any dataframe in
either long or wide format from a single line of code while also handling
continuous data.  It is meant to allow a quick visualisation of entire
dataframes with a focus on different colouring options that can make alluvial
plots a great tool for data exploration.")
    (license license:cc0)))

(define-public r-easyahp
  (package
    (name "r-easyahp")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "easyAHP" version))
              (sha256
               (base32
                "161mn90j9ph1p9277mj61hch8ndcv7k9izs32q93y5wp474gzynd"))))
    (properties `((upstream-name . "easyAHP")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=easyAHP")
    (synopsis "Analytic Hierarchy Process (AHP)")
    (description
     "Given the scores from decision makers, the analytic hierarchy process can be
conducted easily.")
    (license license:gpl3)))

(define-public r-easyabc
  (package
    (name "r-easyabc")
    (version "1.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EasyABC" version))
              (sha256
               (base32
                "17qv6y8sf2iwwqcv5wfg6sii259gv5jyr72dnfpir2bw78wb3mqx"))))
    (properties `((upstream-name . "EasyABC")))
    (build-system r-build-system)
    (propagated-inputs (list r-tensora
                             r-pls
                             r-mnormt
                             r-mass
                             r-lhs
                             r-abc))
    (home-page "http://easyabc.r-forge.r-project.org/")
    (synopsis "Efficient Approximate Bayesian Computation Sampling Schemes")
    (description
     "Enables launching a series of simulations of a computer code from the R session,
and to retrieve the simulation outputs in an appropriate format for
post-processing treatments.  Five sequential sampling schemes and three
coupled-to-MCMC schemes are implemented.")
    (license license:gpl3)))

(define-public r-ease
  (package
    (name "r-ease")
    (version "0.1.2")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Ease" version))
              (sha256
               (base32
                "0llx3pdpzjsw94nk62h6cif4gn97rhbq38vsqpdarx201q8qq2qx"))))
    (properties `((upstream-name . "Ease")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppprogress r-rcpp))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=Ease")
    (synopsis "Simulating Explicit Population Genetics Models")
    (description
     "Implementation in a simple and efficient way of fully customisable population
genetics simulations, considering multiple loci that have epistatic
interactions.  Specifically suited to the modelling of multilocus
nucleocytoplasmic systems (with both diploid and haploid loci), it is
nevertheless possible to simulate purely diploid (or purely haploid) genetic
models.  Examples of models that can be simulated with Ease are numerous, for
example models of genetic incompatibilities as presented by Marie-Orleach et al.
(2022) <doi:10.1101/2022.07.25.501356>.  Many others are conceivable, although
few are actually explored, Ease having been developed in particular to provide a
solution so that these kinds of models can be simulated simply.")
    (license license:expat)))

(define-public r-earthtones
  (package
    (name "r-earthtones")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earthtones" version))
              (sha256
               (base32
                "17biiw0ig8i8ihc2f8csp0bqryygg27ic2v1vrf81ax3qzhngy4l"))))
    (properties `((upstream-name . "earthtones")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggmap))
    (home-page "https://cran.r-project.org/package=earthtones")
    (synopsis "Derive a Color Palette from a Particular Location on Earth")
    (description
     "Downloads a satellite image via Google Maps/Earth (these are originally from a
variety of aerial photography sources), translates the image into a perceptually
uniform color space, runs one of a few different clustering algorithms on the
colors in the image searching for a user-supplied number of colors, and returns
the resulting color palette.")
    (license license:expat)))

(define-public r-earthtide
  (package
    (name "r-earthtide")
    (version "0.0.14")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earthtide" version))
              (sha256
               (base32
                "1p8l65w609nfcnq3b3xfzs11mi9s2ysr4k5qwsml6bbdyqbvnlpb"))))
    (properties `((upstream-name . "earthtide")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcppparallel r-rcpparmadillo r-rcpp r-r6 r-bh))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/jkennel/earthtide")
    (synopsis
     "Parallel Implementation of 'ETERNA 3.40' for Prediction and Analysis of Earth Tides")
    (description
     "This is a port of Fortran ETERNA 3.4
<http://igets.u-strasbg.fr/soft_and_tool.php> by H.G. Wenzel for calculating
synthetic Earth tides using the Hartmann and Wenzel (1994)
<doi:10.1029/95GL03324> or Kudryavtsev (2004) <doi:10.1007/s00190-003-0361-2>
tidal catalogs.")
    (license license:gpl3)))

(define-public r-earth
  (package
    (name "r-earth")
    (version "5.3.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earth" version))
              (sha256
               (base32
                "00sbki2cpdj87i8f43qkswl1hza8z59wnn8xvv2qxsscjyx0dghb"))))
    (properties `((upstream-name . "earth")))
    (build-system r-build-system)
    (propagated-inputs (list r-teachingdemos r-plotmo r-formula))
    (native-inputs (list gfortran))
    (home-page "http://www.milbo.users.sonic.net/earth/")
    (synopsis "Multivariate Adaptive Regression Splines")
    (description
     "Build regression models using the techniques in Friedman's papers \"Fast MARS\"
and \"Multivariate Adaptive Regression Splines\" <doi:10.1214/aos/1176347963>.
(The term \"MARS\" is trademarked and thus not used in the name of the package.)")
    (license license:gpl3)))

(define-public r-earlywarnings
  (package
    (name "r-earlywarnings")
    (version "1.1.29")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earlywarnings" version))
              (sha256
               (base32
                "1xa9rijqqxa5l253dg8dn1jjhdakf8krl5rflq5v9gybfyrq1885"))))
    (properties `((upstream-name . "earlywarnings")))
    (build-system r-build-system)
    (propagated-inputs (list r-tseries
                             r-tgp
                             r-spam
                             r-som
                             r-quadprog
                             r-nortest
                             r-moments
                             r-lmtest
                             r-knitr
                             r-kernsmooth
                             r-kendall
                             r-ggplot2
                             r-fields))
    (native-inputs (list r-knitr))
    (home-page "http://www.early-warning-signals.org")
    (synopsis "Early Warning Signals for Critical Transitions in Time Series")
    (description
     "The Early-Warning-Signals Toolbox provides methods for estimating statistical
changes in time series that can be used for identifying nearby critical
transitions.")
    (license license:bsd-2)))

(define-public r-earlyr
  (package
    (name "r-earlyr")
    (version "0.0.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earlyR" version))
              (sha256
               (base32
                "0978vv48sj1hs61rdb3xv02s8qz03jcm1c8q1mbb3d033x1q7k22"))))
    (properties `((upstream-name . "earlyR")))
    (build-system r-build-system)
    (propagated-inputs (list r-ggplot2 r-epitrix r-epiestim r-distcrete))
    (native-inputs (list r-knitr))
    (home-page "https://www.repidemicsconsortium.org/earlyR/")
    (synopsis
     "Estimation of Transmissibility in the Early Stages of a Disease Outbreak")
    (description
     "This package implements a simple, likelihood-based estimation of the
reproduction number (R0) using a branching process with a Poisson likelihood.
This model requires knowledge of the serial interval distribution, and dates of
symptom onsets.  Infectiousness is determined by weighting R0 by the probability
mass function of the serial interval on the corresponding day.  It is a
simplified version of the model introduced by Cori et al. (2013)
<doi:10.1093/aje/kwt133>.")
    (license license:expat)))

(define-public r-earlygating
  (package
    (name "r-earlygating")
    (version "1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "earlygating" version))
              (sha256
               (base32
                "0wwkn30kjdg0qni05l3acbgai9j3h2mqjli49afmpd2453fpyxig"))))
    (properties `((upstream-name . "earlygating")))
    (build-system r-build-system)
    (propagated-inputs (list r-foreach r-doparallel r-betareg))
    (home-page "https://cran.r-project.org/package=earlygating")
    (synopsis "Properties of Bayesian Early Gating Designs")
    (description
     "Computes the most important properties of four Bayesian early gating designs
(two single arm and two randomized controlled designs), such as minimum required
number of successes in the experimental group to make a GO decision, operating
characteristics and average operating characteristics with respect to the sample
size.  These might aid in deciding what design to use for the early phase trial.")
    (license license:gpl3)))

(define-public r-eanalytics
  (package
    (name "r-eanalytics")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eAnalytics" version))
              (sha256
               (base32
                "15hhd4q2yxzq3a3awvk81ixa43hk519ym8ap7v1ahghyr0njnyyf"))))
    (properties `((upstream-name . "eAnalytics")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinywidgets
                             r-shinytest
                             r-shinydashboard
                             r-shiny
                             r-plotly
                             r-leaflet
                             r-googlevis
                             r-energyr
                             r-dt
                             r-dplyr))
    (native-inputs (list r-knitr))
    (home-page "https://github.com/paulgovan/eanalytics")
    (synopsis "Dynamic Web-Based Analytics for the Energy Industry")
    (description
     "This package provides a Shiny web application for energy industry analytics.
Take an overview of the industry, measure Key Performance Indicators, identify
changes in the industry over time, and discover new relationships in the data.")
    (license (license:fsdg-compatible "Apache License"))))

(define-public r-eainference
  (package
    (name "r-eainference")
    (version "0.2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "EAinference" version))
              (sha256
               (base32
                "1kzcfya3z6rf1vqjn72yjymdhrn4dzgmwifh3w6k22cy5jxffzn4"))))
    (properties `((upstream-name . "EAinference")))
    (build-system r-build-system)
    (propagated-inputs (list r-rcpparmadillo
                             r-rcpp
                             r-mvtnorm
                             r-msm
                             r-mass
                             r-limsolve
                             r-hdi))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=EAinference")
    (synopsis "Estimator Augmentation and Simulation-Based Inference")
    (description
     "Estimator augmentation methods for statistical inference on high-dimensional
data, as described in Zhou, Q. (2014) <arXiv:1401.4425v2> and Zhou, Q. and Min,
S. (2017) <doi:10.1214/17-EJS1309>.  It provides several simulation-based
inference methods: (a) Gaussian and wild multiplier bootstrap for lasso, group
lasso, scaled lasso, scaled group lasso and their de-biased estimators, (b)
importance sampler for approximating p-values in these methods, (c) Markov chain
Monte Carlo lasso sampler with applications in post-selection inference.")
    (license license:gpl2+)))

(define-public r-eagle
  (package
    (name "r-eagle")
    (version "2.5")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "Eagle" version))
              (sha256
               (base32
                "18y0hc5461gh7kp095xfpwpfnl7k3v545r8w6nrhabrhwsflrrij"))))
    (properties `((upstream-name . "Eagle")))
    (build-system r-build-system)
    (propagated-inputs (list r-shinythemes
                             r-shinyjs
                             r-shinyfiles
                             r-shinybs
                             r-shiny
                             r-rcppeigen
                             r-rcpp
                             r-r-utils
                             r-plotly
                             r-mmap
                             r-ggthemes
                             r-ggplot2
                             r-fontawesome
                             r-data-table))
    (home-page "http://eagle.r-forge.r-project.org")
    (synopsis "Multiple Locus Association Mapping on a Genome-Wide Scale")
    (description
     "An implementation of multiple-locus association mapping on a genome-wide scale.
Eagle can handle inbred and outbred study populations, populations of arbitrary
unknown complexity, and data larger than the memory capacity of the computer.
Since Eagle is based on linear mixed models, it is best suited to the analysis
of data on continuous traits.  However, it can tolerate non-normal data.  Eagle
reports, as its findings, the best set of snp in strongest association with a
trait.  For users unfamiliar with R, to perform an analysis, run OpenGUI()'.
This opens a web browser to the menu-driven user interface for the input of
data, and for performing genome-wide analysis.")
    (license license:gpl3)))

(define-public r-eaf
  (package
    (name "r-eaf")
    (version "2.3")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eaf" version))
              (sha256
               (base32
                "1xn8h826fpb0ba6ihlbj5i42haylxz2q51ig7q0sas2mag2ggpap"))))
    (properties `((upstream-name . "eaf")))
    (build-system r-build-system)
    (propagated-inputs (list r-rdpack r-modeltools))
    (home-page "https://mlopez-ibanez.github.io/eaf/")
    (synopsis "Plots of the Empirical Attainment Function")
    (description
     "Computation and visualization of the empirical attainment function (EAF) for the
analysis of random sets in multi-criterion optimization.  M. LÃ³pez-IbÃ¡Ã±ez, L.
Paquete, and T. StÃ¼tzle (2010) <doi:10.1007/978-3-642-02538-9_9>.")
    (license license:gpl2+)))

(define-public r-eadrm
  (package
    (name "r-eadrm")
    (version "0.1.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "eadrm" version))
              (sha256
               (base32
                "0s9rk5iym5crlq4pr3gbgqhswjn3a7a4nclbvzhmzrxwfszqfy70"))))
    (properties `((upstream-name . "eadrm")))
    (build-system r-build-system)
    (home-page "https://cran.r-project.org/package=eadrm")
    (synopsis "Fitting Dose-Response Models Using an Evolutionary Algorithm")
    (description
     "Fits dose-response models using an evolutionary algorithm to estimate the model
parameters.  The procedure currently can fit 3-parameter, 4-parameter, and
5-parameter log-logistic models as well as exponential models.  Functions are
also provided to plot, make predictions, and calculate confidence intervals for
the resulting models.  For details see \"Nonlinear Dose-response Modeling of
High-Throughput Screening Data Using an Evolutionary Algorithm\", Ma, J., Bair,
E., Motsinger-Reif, A.; Dose-Response 18(2):1559325820926734 (2020)
<doi:10.1177/1559325820926734>.")
    (license license:gpl3)))

(define-public r-e4tools
  (package
    (name "r-e4tools")
    (version "0.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "E4tools" version))
              (sha256
               (base32
                "1kmj1fddybjia9ninhcy75kdmq152zjw7s24chpqr5wsblffr3yx"))))
    (properties `((upstream-name . "E4tools")))
    (build-system r-build-system)
    (propagated-inputs (list r-signal
                             r-scales
                             r-hms
                             r-ggplot2
                             r-foreach
                             r-dosnow
                             r-doparallel
                             r-datacombine
                             r-data-table
                             r-chron
                             r-bbmisc
                             r-anytime
                             r-accelerometry))
    (native-inputs (list r-knitr))
    (home-page "https://cran.r-project.org/package=E4tools")
    (synopsis
     "Management and Processing Tools for Data Produced by the Empatica E4")
    (description
     "Process and manage the data from the Empatica E4.  All functions operate on the
EDA data stream, but other streams will be added soon.  The Empatica E4 is a
wearable physiological monitor made by Empatica (Empatica is not associated with
any of this code).  You can find more information about the E4 at Empatica's
website <https://www.empatica.com/research/e4/>.")
    (license license:expat)))

